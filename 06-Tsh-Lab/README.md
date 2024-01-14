# 更适合北大宝宝体质的 Tsh Lab 踩坑记

**因医学牲期中季完全重叠此 Lab 的时间，导致我最后是赶着 Grace Day 的 ddl 完成的 Lab，所以此文并不同以前一样是边做边写，而是在 Lab 完成提交后，回忆整理的，所以可能会有一些细节遗漏。**

本 Lab 的主要目的是实现一个 Tiny Shell (Tsh)，即一个可以执行简单命令的 Shell，支持 I/O 重定向、前后台调度执行等功能。

具体来讲，我们需要在 `tsh.c` 中完成如下部分：

-   `sigchld_handler`：处理子进程发出的 SIGCHLD 信号。
-   `sigint_handler`：处理 Ctrl-C 发出的 SIGINT （中断）信号。
-   `sigstp_handler`：处理 Ctrl-Z 发出的 SIGTSTP （挂起）信号。
-   `eval`：解析并执行命令。

注意，我将 handler 写在了 eval 前面，这是因为从第二个 trace 开始，都会涉及到 handler 的调用，所以如果你先写完 eval，发现跑不起来，或许就可能是因为你的 handler 没有写好。

然而不幸的是，我就踩了这个坑，按照 writeup 的顺序，首先实现了 eval，再实现了 handler，所以本文的阐述顺序也是按照这个顺序的。

做本 lab 前，我推荐大家先阅读：CSAPP 8.4.6。

## 写在前面的小技巧

### VS Code 报错：未定义标识符 "sigset_t"

`cmd+shift+p` 按出命令面板，搜索 `C/C++ 编辑配置(json)`，然后把
`cStandard` 改为 `gnu11` 即可。

```json
{
    "configurations": [
        {
            "name": "Linux",
            "includePath": ["${workspaceFolder}/**"],
            "defines": [],
            "compilerPath": "/usr/bin/gcc",
            "cStandard": "gnu11",
            "intelliSenseMode": "linux-gcc-x64"
        }
    ],
    "version": 4
}
```

### 写错代码，tsh 跑起来断不掉了

使用 `cmd+\` 或者按钮新开一个终端，输入：

```bash
ps -ef | grep tsh && pkill -f tsh
```

这段命令前两个可以帮你列出是否有 tsh 进程，最后一个可以帮你杀掉所有 tsh 进程。

注意：

```bash
ubuntu   3521853 3472016  0 17:07 pts/3    00:00:00 grep --color=auto --exclude-dir=.bzr --exclude-dir=CVS --exclude-dir=.git --exclude-dir=.hg --exclude-dir=.svn --exclude-dir=.idea --exclude-dir=.tox tsh
```

这种的是因为你用 ps 去查找 tsh 进程所以会出现的，不用管它。

## tsh.c

在正式编写我们的代码之前，我们需要先了解一下 tsh.c 中的一些数据结构和函数。

### 作业（job）

```c
struct job_t {              /* The job struct */
    pid_t pid;              /* job PID */
    int jid;                /* job ID [1, 2, ...] */
    int state;              /* UNDEF, BG, FG, or ST */
    char cmdline[MAXLINE];  /* command line */
};
```

首先，我们回忆一下，什么是 job？

在书上，job（作业）是对一条命令行求值而创建的进程的集合，比如：

```bash
ls | grep tsh
```

这条命令行会创建两个进程，一个是 ls，一个是 grep，两者合起来称为一个 job。

按照这个理解，这个结构体实际写的有问题：一个 job 不应该只有一个 pid，而应该是一个 pid 的集合，因为一个 job 可能会创建多个进程。

实际上，这是因为我们的 tsh 只需要支持单进程的命令（即不用支持管道符 `|`），所以这个结构体的设计上做了简化。

所以，在我们的 tsh 内，**可以认为一个 job 唯一地对应一个 process（进程）。**

请务必注意这一点，因为这在我们编写 `sigint_handler` 和 `sigstp_handler` 的时候会有用。

`state` 字段表示 job 的状态，包括：

-   `UNDEF`：未定义
-   `BG`：后台运行
-   `FG`：前台运行
-   `ST`：挂起，即 Ctrl-Z（发送 SIGINT）之后的状态

所有的 job 都会被存储在一个全局变量 `job_list` 中，这是一个数组，其中每个元素都是一个 `job_t` 结构体。

### 命令行参数（cmdline_tokens）

```c
struct cmdline_tokens {
    int argc;               /* Number of arguments */
    char* argv[MAXARGS];    /* The arguments list */
    char* infile;           /* The input file */
    char* outfile;          /* The output file */
    enum builtins_t {       /* Indicates if argv[0] is a builtin command */
        BUILTIN_NONE,
        BUILTIN_QUIT,
        BUILTIN_JOBS,
        BUILTIN_BG,
        BUILTIN_FG,
        BUILTIN_KILL,
        BUILTIN_NOHUP
    } builtins;
};
```

这个结构体用于存储一行 / 条指令的命令行参数，其中：

-   `argc`：参数个数
-   `argv`：参数列表，每个元素都是一个字符串（字符数组首元素指针），其中 `argv[0]` 是命令名，后面的是参数
-   `infile`：输入重定向文件名
-   `outfile`：输出重定向文件名
-   `builtins`：内建命令，包括：
    -   `BUILTIN_NONE`：无内建命令，通常是外部命令
    -   `BUILTIN_QUIT`：退出
    -   `BUILTIN_JOBS`：列出所有 job
    -   `BUILTIN_BG`：将 job 转为后台运行
    -   `BUILTIN_FG`：将 job 转为前台运行
    -   `BUILTIN_KILL`：杀死 job
    -   `BUILTIN_NOHUP`：忽略 SIGHUP 信号，启动一个新的进程。

从一行命令（字符数组）中解析出这整个结构体的过程，并不需要我们自己实现，而是使用了一个叫做 `parseline` 的函数，这个函数在 eval 的开头就已经给出了默认调用了，不需要我们手动实现。

值得一提的是，`nohup` 这个指令实际上在 Linux 系统中很常用到，试想你正在通过 ssh 连接到一台远程服务器上，然后你在服务器上运行了一个程序，但是你突然因为某些原因关掉了 ssh 连接（比如在图书馆自习完了得回宿舍了），这时候你就可以使用 `nohup` 指令，这样你就可以安全地关闭 ssh 连接，而不会影响到你在服务器上运行的程序（比如某个要爬一个小时的爬虫，没错，说的就是你， PKU News 北大热榜）。

### 包装函数（wrapper functions）

书上提到，为了实现在遇到错误时打印信息，我们可以自行实现一些包装函数，这些函数会在发生错误时打印错误信息，然后终止程序。通用格式如下：

```c
pid_t Fork(void) {
    pid_t pid;
    if ((pid = fork()) < 0)
        unix_error("Fork error");
    return pid;
}
```

其中，`Fork` 称为包装函数，它是对 `fork` 的包装。他的函数签名（参数和返回值）和 `fork` 完全一致，只是在内部多了一些错误处理的代码。

注意，如果你在 `eval` 中调用了任何一个包装函数，你都需要将之定义在 `eval` 的前面（实现可以放在后面），否则你的代码可能会无法编译。

下文中，我可能会不加区分地混用 “包装函数” 和 “函数”，忽略即可。

### 其他辅助函数

tsh 中还提供了一些其他的函数，往往根据函数名就可以知道其功能，这里就不再赘述了。可以在 `tsh.c` 中的开头顺序查看。

## eval

`eval` 是我们的核心函数，它的作用是解析并执行命令。

```c
void
eval(char* cmdline) {
    int bg; /* should the job run in bg or fg? */
    struct cmdline_tokens tok;

    /* Parse command line */
    bg = parseline(cmdline, &tok);

    if (bg == -1) /* parsing error */
        return;
    if (tok.argv[0] == NULL) /* ignore empty lines */
        return;

    // 这里是我们需要实现的部分
    return;
}
```

查看 `eval` 的源码，我们可以发现，它已经调用了 `parseline` 函数，将命令行解析成了 `cmdline_tokens` 结构体，存储在了 `tok` 这个局部变量中，并将其返回值（代表是否后台运行）存储在了 `bg` 中。

我们需要做的，就是在这个函数中，根据 `tok` 中的信息，执行命令。

根据 writeup，我们需要实现的功能有：

-   内建命令
-   外部命令
-   I/O 重定向
-   前后台调度

思考一下，我们首先应该做什么？显然把 I/O 重定向放在具体执行命令之前是更合适的，这样我们就不必在执行命令的时候额外为之编写代码。同时，你也可能想到了，我们在编写 `eval` 的时候，很可能会调用一些我们在其之外定义的函数，如果我们不首先执行 I/O 重定向，那么我们或许在调用这些函数的时候都会需要传入 `tok`，并在函数内部进行判断，这样显然是十分麻烦的。

所以，我们首先应该做的，就是执行 I/O 重定向。

### I/O 重定向

I/O 重定向的实现，其实就是将 `stdin` 和 `stdout` 重定向到指定的文件中。

> 这部分内容实际上在 CS:APP 第十章系统级 I/O 中，但因为我复习医学部期中落后了很多正课进度，所以我在写这个 Lab 的时候，还没有学到这一章，所以我的后续内容可能会有一些错误，欢迎指正。

什么是 `stdin` 和 `stdout`？这两个都是文件描述符（file_descripter），分别对应标准输入（0）和标准输出（1）。

> GPT-4-Turbo：文件描述符是一个用于访问文件的抽象指标。在操作系统中，当程序打开一个现有文件或者创建一个新文件时，操作系统会提供一个文件描述符，它通常是一个非负整数。文件描述符用于标识被打开文件的控制信息，使得程序可以进行如读取、写入和关闭等操作。

我们可以通过 `dup` 和 `dup2` 函数来实现重定向：

-   `int dup(int fd)`：复制文件描述符，返回一个新的文件描述符，指向与原文件描述符相同的文件。
-   `int dup2(int fd1, int fd2)`：将文件描述符 `fd1` 复制到 `fd2`，如果 `fd2` 已经打开，则先将其关闭。即将 fd2 改为指向 fd1 所指向的文件。返回值为 fd2。

我们可以通过 `open` 函数来打开文件，然后通过 `dup2` 函数将 `stdin` 或 `stdout` 重定向到这个文件中。

```c
// unistd.h
#define	 STDIN_FILENO	0	/* standard input file descriptor */
#define	STDOUT_FILENO	1	/* standard output file descriptor */
```

```c
// tsh.c
int fd = open("file.txt", O_RDONLY，0); // 打开文件
dup2(fd, STDIN_FILENO); // 将 stdin 重定向到 file.txt
```

`open` 函数的签名为 `int open(const char *pathname, int flags, mode_t mode)`，其中：

-   `pathname`：文件路径
-   `flags`：打开方式，包括：
    -   `O_RDONLY`：只读
    -   `O_WRONLY`：只写
    -   `O_RDWR`：读写
    -   `O_CREAT`：如果文件不存在则创建
    -   `O_TRUNC`：如果文件存在则清空
    -   `O_APPEND`：追加
-   `mode`：文件权限。当 `flags` 中包含 `O_CREAT` 时，需要指定文件权限。

在 tshlab 中，我们实际上只涉及到了 `O_RDONLY` 和 `O_WRONLY`，也就不需要指定 `mode`。

所以我们得到了一个简单的 I/O 重定向的实现：

```c
// tsh.c
// 输入输出文件
int input_file = STDIN_FILENO;
int output_file = STDOUT_FILENO;

if (tok.infile) {
    input_file = Open(tok.infile, O_RDONLY, 0);
}
if (tok.outfile) {
    output_file = Open(tok.outfile, O_WRONLY, 0);
}

// 备份以供恢复
int std_input = Dup(STDIN_FILENO);
int std_output = Dup(STDOUT_FILENO);
// 重定向输入输出
Dup2(input_file, STDIN_FILENO);
Dup2(output_file, STDOUT_FILENO);

// 执行命令
// ...

// 恢复输入输出
Dup2(std_input, STDIN_FILENO);
Dup2(std_output, STDOUT_FILENO);
```

完成了 I/O 重定向，我们就可以开始执行命令了。我们按照 token 结构体内的枚举类型 `builtins` 来分类讨论。

### 外部命令 BUILTIN_NONE

```c
/* tsh.c/eval */
switch (tok.builtins) {
    case BUILTIN_NONE:
        eval_none(tok, bg, cmdline);
        break;
}
```

`eval_none` 函数的作用是执行外部命令，即不是内建命令的命令。

```c
/* tsh.c/eval_none */
void eval_none(struct cmdline_tokens tok, int bg, char* cmdline);
```

为什么需要这三个参数？

-   `tok`：创建新的子进程并执行时，我们需要解析出的命令行参数，如执行文件地址、参数列表等。显然我们没必要再次解析一遍，所以我们直接将 `tok` 传入即可。
-   `bg`：是否后台运行。这会决定是否要等待子进程结束。
-   `cmdline`：原始命令行，用于添加到 job_list 中。

参照书上的讲解，我们首先得到一个含有许多 bug 的粗略实现：

```c
/* tsh.c/eval_none */
void eval_none(struct cmdline_tokens tok, int bg, char* cmdline) {
    pid_t pid;

    // 子进程
    if ((pid = fork()) == 0) {
        // 执行命令
        setpgid(0, 0);
        if (execve(tok.argv[0], tok.argv, environ) < 0) {
            printf("%s: Command not found.\n", tok.argv[0]);
            exit(0);
        }
    }

    // 父进程
    else {
        addjob(job_list, pid, bg ? BG : FG, cmdline);
        // 前台运行
        if (!bg) {
            int status;
            waitpid(pid, &status, 0);
        }
        // 后台运行
        else {
            printf("[%d] (%d) %s\n", pid2jid(pid), pid, cmdline);
        }
    }

    return;
}
```

首先说下我们做了什么，我们使用 `fork` 创建了一个子进程，并通过判断其返回值是否为 0 来判断当前进程是子进程还是父进程。

若是子进程，则使用 `execve` 执行命令：

```c
int execve(const char *__file, char *const *__argv, char *const *__envp)
```

执行的参数包括 `文件名`、`参数列表`、`环境变量`，其中环境变量是外部全局变量 `environ`，直接传入即可。

若是父进程，则判断子进程是否为前台进程。若是前台进程，则调用 `waitpid` 等待。若是后台进程，就直接打印相关信息后返回。

这段代码存在许多的问题，接下来我们逐一修复他们。

首先，在父进程添加 job 的时候，存在书上所说的 **竞争** 的情况，由于父子进程的执行是并发的，所以可能会出现这样的情况：

-   父进程分叉出子进程
-   子进程执行，并很快执行完毕，调用 `exit` 退出
-   父进程开始执行，调用 `addjob` 添加 job

此时，父进程添加的 job 实际上是一个已经退出的进程，这显然是不对的。

所以我们需要在分叉出子进程前，使用 `sigprocmask` 将 `SIGCHLD` 信号阻塞，然后在父进程中，当添加完 job 后，再解除阻塞。除此之外，为了保证 job 一定被成功添加，我们至少还需要阻塞 `SIGINT` 和 `SIGTSTP` 信号。

经测试，直接阻塞所有信号也是可以的。

而在后续的过程中：

-   对于子进程，我们需要首先解除阻塞，然后再执行命令。
-   对于父进程，我们要在调用 addjob 添加完 job 后，再解除阻塞。

于是我们得到了一个改进版：

```c
void eval_none(struct cmdline_tokens tok, int bg, char* cmdline) {
    // 至少要阻断以下信号，防止子进程返回或者父进程被挂起，防止竞争：
    // 阻断子进程终止、停止信号 SIGCHLD
    // 阻断键盘终断信号 SIGINT
    // 阻断终端停止信号 SIGTSTP
    // 此处为简便直接阻断所有信号
    sigset_t mask_all, mask_prev;
    Sigfillset(&mask_all);
    Sigprocmask(SIG_BLOCK, &mask_all, &mask_prev);
    pid_t pid;
    // 子进程
    if ((pid = Fork()) == 0) {
        // 创建新进程组
        setpgid(0, 0);
        Sigprocmask(SIG_SETMASK, &mask_prev, NULL);
        if (Execve(tok.argv[0], tok.argv, environ) < 0) {
            printf("%s: Command not found\n", tok.argv[0]);
            exit(0);
        }
    }
    // 父进程
    else {
        // 因为要修改全局数据结构，所以先阻断所有的信号后，再使用 addjob，然后再重置 mask
        addjob(job_list, pid, bg ? BG : FG, cmdline);
        Sigprocmask(SIG_SETMASK, &mask_prev, NULL);
        // 前台进程
        if (!bg) {
            int status;
            waitpid(pid, &status, 0);
        }
        // 后台进程
        else {
            printf("[%d] (%d) %s\n", pid2jid(pid), pid, cmdline);
        }
    }
};
```

然而，对于这个函数，在父进程等待一个前台子进程时，还是存在一个严重的问题：由于 `waitpid` 是一个阻塞函数，所以父进程会一直等待，直到子进程结束。所以，如果父进程在此时接受到了一个其他信号（如 SIGINT），那么就可能造成永久阻塞。

所以正确的做法是，我们需要在父进程中，使用 `sigsuspend` 函数来挂起父进程，直到子进程结束。

有关此处更进一步的讨论，可以参照 CSAPP 8.5.7 的内容。

同时，我们不能使用 if 进行判断，而是要使用 while 循环，因为如果使用 if 的话，可能会因为被挂起，而导致 sigsuspend 跳出。所以必须使用 while 一直判断子进程是否为前台进程。

```c
while (pid == fgpid(job_list)) {
    sigsuspend(&mask_prev);
}
```

这样，我们就可以得到一个完整的 `eval_none` 函数了：

```c
void eval_none(struct cmdline_tokens tok, int bg, char* cmdline) {
    // 至少要阻断以下信号，防止子进程返回或者父进程被挂起，防止竞争：
    // 阻断子进程终止、停止信号 SIGCHLD
    // 阻断键盘终断信号 SIGINT
    // 阻断终端停止信号 SIGTSTP
    // 此处为简便直接阻断所有信号
    sigset_t mask_all, mask_prev;
    Sigfillset(&mask_all);
    Sigprocmask(SIG_BLOCK, &mask_all, &mask_prev);
    pid_t pid;
    // 子进程
    if ((pid = Fork()) == 0) {
        // 创建新进程组
        setpgid(0, 0);
        Sigprocmask(SIG_SETMASK, &mask_prev, NULL);
        if (Execve(tok.argv[0], tok.argv, environ) < 0) {
            printf("%s: Command not found\n", tok.argv[0]);
            exit(0);
        }
    }
    // 父进程
    else {
        // 因为要修改全局数据结构，所以先阻断所有的信号后，再使用 addjob，然后再重置 mask
        addjob(job_list, pid, bg ? BG : FG, cmdline);
        Sigprocmask(SIG_SETMASK, &mask_prev, NULL);
        // 前台进程
        if (!bg) {
            // 用 while 循环等待前台进程结束，不能用 if
            // 因为如果用 if 的话，可能会因为被挂起，而导致跳过。必须一直判断子进程是否为前台进程
            // 也不能用 waitpid，因为 waitpid 会存在类似因为其他信号而永久阻塞的问题
            while (pid == fgpid(job_list)) {
                sigsuspend(&mask_prev);
            }
        }
        // 后台进程
        else {
            printf("[%d] (%d) %s\n", pid2jid(pid), pid, cmdline);
        }
    }
};
```

从而，我们就完成了对于外部命令的执行。

### 退出 QUIT

```c
/* tsh.c/eval */
switch (tok.builtins) {
    case BUILTIN_QUIT:
        exit(0);
}
```

`exit` 函数的作用是退出当前进程，其签名为 `void exit(int status)`，其中 `status` 为进程的退出状态，通常为 0。

此处直接退出即可，连 break 都不需要。

### 列出所有作业 JOBS

```c
/* tsh.c/eval */
switch (tok.builtins) {
    case BUILTIN_JOBS:
        listjobs(job_list, output_file);
        break;
}
```

调用默认函数直接秒了，有什么好说的（逃）。

### 转为后台运行 BG

```c
/* tsh.c/eval */
switch (tok.builtins) {
    case BUILTIN_BG:
        eval_bg(tok);
        break;
}
```

`eval_bg` 函数的作用是将 job 转为后台运行。

```c
/* tsh.c/eval_bg */
void eval_bg(struct cmdline_tokens tok) {
    struct job_t* job;
    int jid;
    pid_t pid;
    // 通过jid找到job
    if (tok.argv[1][0] == '%') {
        jid = atoi(tok.argv[1] + 1);
        job = getjobjid(job_list, jid);
    }
    // 通过pid找到job
    else {
        pid = atoi(tok.argv[1]);
        job = getjobpid(job_list, pid);
    }
    pid = job->pid;
    Kill(pid, SIGCONT);
    job->state = BG;
    printf("[%d] (%d) %s\n", job->jid, job->pid, job->cmdline);
}
```

也没啥好说的，直接通过给定的 jid 或 pid 找到 job，然后发送 `SIGCONT` 信号即可。

注意我们之前说过，我们的 tsh 只支持单进程命令。所以不存在一个 job 有多个进程的情况，所以我们可以直接通过 `job->pid` 来找到进程。

由于我们的 `job` 是一个指向 `job_t` 的指针，所以我们需要使用 `->` 来访问其成员，而不能使用 `.`。

### 转为前台运行 FG

```c
/* tsh.c/eval */
switch (tok.builtins) {
    case BUILTIN_FG:
        eval_fg(tok);
        break;
}
```

`eval_fg` 函数的作用是将 job 转为前台运行。

```c
/* tsh.c/eval_fg */
void eval_fg(struct cmdline_tokens tok) {
    struct job_t* job;
    int jid;
    pid_t pid;
    // 通过jid找到job
    if (tok.argv[1][0] == '%') {
        jid = atoi(tok.argv[1] + 1);
        job = getjobjid(job_list, jid);
    }
    // 通过pid找到job
    else {
        pid = atoi(tok.argv[1]);
        job = getjobpid(job_list, pid);
    }
    pid = job->pid;
    Kill(pid, SIGCONT);
    job->state = FG;
    // 等待前台进程结束
    sigset_t mask_none;
    Sigemptyset(&mask_none);
    // 同先前，只能用 while
    while (pid == fgpid(job_list)) {
        sigsuspend(&mask_none);
    }
}
```

也没啥好说的，仿照 `eval_bg` ，结合之前的 `eval_none` 中提到的等待前台进程结束的方法即可。

### 杀死进程 KILL

```c
/* tsh.c/eval */
switch (tok.builtins) {
    case BUILTIN_KILL:
        eval_kill(tok);
        break;
}
```

`eval_kill` 函数的作用是根据 pid 或者 jid 杀死 job。

```c
void eval_kill(struct cmdline_tokens tok) {
    struct job_t* job;
    int jid;
    pid_t pid;
    // 通过jid找到job
    if (tok.argv[1][0] == '%') {
        jid = atoi(tok.argv[1] + 1);
        // 后续不再考虑是否是正负，直接取绝对值
        jid = jid > 0 ? jid : -jid;
        job = getjobjid(job_list, jid);
        if (job == NULL) {
            printf("%%%d: No such job\n", jid);
            return;
        }
    }
    // 通过pid找到job
    else {
        pid = atoi(tok.argv[1]);
        // 后续不再考虑是否是正负，直接取绝对值
        pid = pid > 0 ? pid : -pid;
        job = getjobpid(job_list, pid);
        // pid 必有 job，不需要判断是否不存在
    }
    pid = job->pid;
    Kill(pid, SIGTERM);
}
```

还是仿照先前的方法，拿到 job，因为一个 job 只有一个 processs，所以无所谓正负号其实，直接全改为正数就完了。

所以拿到 job 后，直接再反向找到 pid，然后发送 `SIGTERM` 信号即可。

需要注意的是，其中对于 job 不存在的情况是有检查的，所以我们需要进行额外的一行格式化打印，由于每个 pid 都一定有对应的 job，所以不需要检查 pid 不存在的情况。

### 忽略 SIGHUP 信号，启动一个新的进程 NOHUP

```c
/* tsh.c/eval */
switch (tok.builtins) {
    case BUILTIN_NOHUP:
        sigset_t mask_hup, mask_prev;
        // 阻塞 SIGHUP 信号
        Sigemptyset(&mask_hup);
        Sigaddset(&mask_hup, SIGHUP);
        Sigprocmask(SIG_BLOCK, &mask_hup, &mask_prev);
        // 执行命令，但是移除"nohup "前缀
        eval(cmdline + 6);
        // 解除阻塞
        Sigprocmask(SIG_SETMASK, &mask_prev, NULL);
        break;
}
```

这一步就不用额外抽离函数了，直接在 `eval` 中完成一个对于 `SIGHUP` 信号的阻塞，然后 “递归调用”，执行命令即可。

### SUMMARY 总结

综上，我们就完成了对于 `eval` 的实现，最终的代码如下：

```c
/* tsh.c/eval */
void eval(char* cmdline) {
    int bg; /* should the job run in bg or fg? */
    struct cmdline_tokens tok;

    /* Parse command line */
    bg = parseline(cmdline, &tok);

    if (bg == -1) /* parsing error */
        return;
    if (tok.argv[0] == NULL) /* ignore empty lines */
        return;

    // 输入输出文件
    int input_file = STDIN_FILENO;
    int output_file = STDOUT_FILENO;

    if (tok.infile) {
        input_file = Open(tok.infile, O_RDONLY, 0);
    }
    if (tok.outfile) {
        output_file = Open(tok.outfile, O_WRONLY, 0);
    }

    // 备份以供恢复
    int std_input = Dup(STDIN_FILENO);
    int std_output = Dup(STDOUT_FILENO);
    // 重定向输入输出
    Dup2(input_file, STDIN_FILENO);
    Dup2(output_file, STDOUT_FILENO);

    switch (tok.builtins) {

    case BUILTIN_NONE:
        eval_none(tok, bg, cmdline);
        break;

    case BUILTIN_QUIT:
        exit(0);

    case BUILTIN_JOBS:
        listjobs(job_list, output_file);
        break;

    case BUILTIN_BG:
        eval_bg(tok);
        break;

    case BUILTIN_FG:
        eval_fg(tok);
        break;

    case BUILTIN_KILL:
        eval_kill(tok);
        break;

    case BUILTIN_NOHUP:
        sigset_t mask_hup, mask_prev;
        // 阻塞 SIGHUP 信号
        Sigemptyset(&mask_hup);
        Sigaddset(&mask_hup, SIGHUP);
        Sigprocmask(SIG_BLOCK, &mask_hup, &mask_prev);
        // 执行命令，但是移除"nohup "前缀
        eval(cmdline + 6);
        // 解除阻塞
        Sigprocmask(SIG_SETMASK, &mask_prev, NULL);
        break;

    default:
        break;
    }

    // 重置输入输出文件，先关闭，再把标准输入输出重定向回去
    if (tok.infile) {
        Close(input_file);
        Dup2(std_input, STDIN_FILENO);
    }
    if (tok.outfile) {
        Close(output_file);
        Dup2(std_output, STDOUT_FILENO);
    }

    return;
}
```

至于各个调用的函数的实现，请参照前文，此处就不再赘述了。

## signal_handlers

### sigchld_handler

```c
void sigchld_handler(int sig) {
    // 保存 errno
    int olderrno = errno;
    int status;
    pid_t pid;
    struct job_t* job;
    sigset_t mask_all, mask_prev;

    Sigfillset(&mask_all);

    // 只要有一个子进程返回就执行，不等待全部子进程返回
    while ((pid = waitpid(-1, &status, WNOHANG | WUNTRACED | WCONTINUED)) > 0) {
        job = getjobpid(job_list, pid);

        // 若正常终止，直接删除返回
        if (WIFEXITED(status)) {
            // 阻塞信号，保护全局数据结构
            Sigprocmask(SIG_SETMASK, &mask_all, &mask_prev);
            deletejob(job_list, pid);
            Sigprocmask(SIG_SETMASK, &mask_prev, NULL);
        }
        // 若由信号终止，则打印终止的信号，并删除
        if (WIFSIGNALED(status)) {
            sio_put("Job [%d] (%d) terminated by signal %d\n", job->jid, pid, WTERMSIG(status));
            Sigprocmask(SIG_SETMASK, &mask_all, &mask_prev);
            deletejob(job_list, pid);
            Sigprocmask(SIG_SETMASK, &mask_prev, NULL);
        }
        // 若由信号停止，则更新信号状态即可
        if (WIFSTOPPED(status)) {
            sio_put("Job [%d] (%d) stopped by signal %d\n", job->jid, pid, WSTOPSIG(status));
            Sigprocmask(SIG_SETMASK, &mask_all, &mask_prev);
            job->state = ST;
            Sigprocmask(SIG_SETMASK, &mask_prev, NULL);
        }
        // 若由信号继续，且当前进程为停止状态，则恢复，且改为后台运行
        if (WIFCONTINUED(status) && job->state == ST) {
            Sigprocmask(SIG_SETMASK, &mask_all, &mask_prev);
            job->state = BG;
            Sigprocmask(SIG_SETMASK, &mask_prev, NULL);
        }
    }

    // 若没有子进程返回，且 errno 不是 ECHILD（代表没有子进程了），也即非正常退出，则报错
    if (pid < 0 && errno != ECHILD)
        unix_error("waitpid error");

    // 恢复 errno
    errno = olderrno;

    return;
}
```

这部分主要是要注意，在 handler 内我们必须使用异步信号安全的函数，所以我们不能使用 `printf`，而是要使用 `sio_put`。

同时，按照书上所讲，如果我们在 handler 内部修改了全局数据结构，那么我们必须需要在修改前后，使用 `sigprocmask` 来阻塞所有信号，以保证数据结构的完整性。

关于为何要恢复 `errno`，请参照书上 8.3 章（P512）。

### sigint_handler

```c
void sigint_handler(int sig) {
    // 保存 errno
    int olderrno = errno;
    pid_t pid = fgpid(job_list);
    if (pid) {
        Kill(pid, SIGINT);
    }
    // 恢复 errno
    errno = olderrno;
    return;
}
```

这部分比较简单，直接获取当前前台进程的 pid，然后发送 `SIGINT` 信号即可。

### sigtstp_handler

```c
void sigtstp_handler(int sig) {
    // 保存 errno
    int olderrno = errno;
    pid_t pid = fgpid(job_list);
    if (pid) {
        Kill(pid, SIGTSTP);
    }
    // 恢复 errno
    errno = olderrno;
    return;
}
```

同上文。
