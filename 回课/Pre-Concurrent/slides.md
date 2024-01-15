---
theme: seriph
background: https://cdn.arthals.ink/pre-concurrent/cover.jpg
class: text-center
colorSchema: light
highlighter: shiki
lineNumbers: true
info: |
    ## Concurrent Programming
    ICS 2023 Fall Re-teaching
    Made by Arthals with ❤️ and hair
drawings:
    presenterOnly: true
    persist: false
presenter: false
transition: fade-out
title: 'Concurrent Programming'
mdc: true
---

# Concurrent Programming

## 并发编程

<p class="text-gray-300">
  Arthals 2110306206
</p>

<div class="pt-12">
  <span @click="$slidev.nav.next" class="px-2 py-1 rounded cursor-pointer" hover="bg-white bg-opacity-10">
    gkd <carbon:arrow-right class="inline"/>
  </span>
</div>

<div class="abs-br m-6 flex gap-2">
  <a href="https://github.com/zhuozhiyongde" target="_blank" alt="GitHub" title="Open in GitHub"
    class="text-xl slidev-icon-btn opacity-50 !border-none !hover:text-white">
    <carbon-logo-github />
  </a>
</div>

---
layout: image-right
image: https://cdn.arthals.ink/pre-concurrent/cp.jpg
---

# 什么是并发编程

Concurrent Programming

逻辑控制流在时间上重叠，就是 **并发**。

-   内核级并发：进程切换
-   应用级并发：线程切换

本质：**时间片轮转**，“不要让核闲下来。”

并发程序：使用应用级并发的程序。

<br>

**并行**：物理上在同一时刻执行多个并发任务，依赖多核处理器等物理设备。


<PageNumber/>
---
layout: two-cols-header
---

# 顺序 vs 并发
<PageNumber/>

::left::
## 顺序

* 多个操作“依次处理”
* 一个操作“处理完毕”后，才能处理下一个操作
* 会导致 **阻塞**
* 为什么网络编程 ~~Proxy lab~~ 中需要使用并发？
  > 为了提高效率，减少阻塞。
  > 顺序服务器在一个请求处理完毕后，才能处理下一个请求，这样会导致大量的阻塞，而且无法应对 ~~来自助教的~~ 恶意长请求。

::right::
## 并发

* 将一个操作分割成多个部分并允许无序处理
* **并行**：多个操作“同时”处理，要求多核处理器等物理设备
* 我的理解：单核情况下，并发的效率提升主要来源于减少阻塞，让核的利用率更高，类似于之前 Arch 中的“戳气泡”


<style scoped>
div[layout="two-cols-header"]{
  grid-template-rows: repeat(5, 1fr);
}
</style>
---
---

# 并发编程的实现方法
<PageNumber/>

* 基于进程的并发编程：
  - 多进程
* 基于 I/O 多路复用的并发编程：
  - 单进程
  - 状态机
* 基于线程的并发编程：
  - 单进程
  - 多线程
---
---

# 基于进程的并发编程
<PageNumber/>

* 使用`fork`、`exec`、`waitpid`等函数，实现简单
* 内核（Kernal）自动交错运行多个逻辑流：**并发的本质**，不需要我们干预，但是进程切换 **非常耗费资源**
* 每个逻辑流都有自己的私有地址空间：共享信息困难
* 逻辑流之间的通信需要使用 **进程间通信** （IPC）机制：管道、信号、共享内存、甚至是套接字

![conc-process](https://cdn.arthals.ink/pre-concurrent/conc-process.png){.h-70.m-auto}

---
---

# 基于进程的并发编程 - 编程实现注意事项
<PageNumber/>

* 必须在父子进程中都适当关闭套接字/描述符（减少引用计数），否则会导致文件描述符泄露
  - 父进程中关闭 `connfd`：不再需要同客户端通信
  - 子进程中关闭 `listenfd`：不再需要监听新的连接
  - 复习：`fork` 之后，父子进程的文件描述符是共享的
* 父进程必须适当使用 `waitpid` 回收子进程，否则会导致僵尸进程
  - 修改 `sigchld_handler`，在其中调用 `waitpid` 回收子进程，每次尽可能回收多个子进程

```c
void sigchld_handler(int sig) {
  while (waitpid(-1, 0, WNOHANG) > 0){}; // NOHANG: 不阻塞，立即返回；没有子进程退出则返回 0，有则返回子进程 pid
  return; 
}

int main() {
  Signal(SIGCHLD, sigchld_handler); // 绑定信号处理函数
  // ...
}
```

---
---

# 基于 I/O 多路复用的并发编程
<PageNumber/>

* IO 多路复用是一种同步IO模型，实现同时监视多个文件句柄（套接字/文件描述符）的状态
  - 多路：指的是多个网络连接或文件描述符
  - 复用：指的是通过一个单一的阻塞对象（如`select` 系统调用）来监视多个文件描述符的状态变化
* **一旦某个文件句柄就绪，就能够通知应用程序进行相应的读写操作**
* 没有文件句柄就绪就会阻塞应用程序，交出CPU，直到有文件句柄就绪
  - 复习：进程间切换
* 并发原理：“事件驱动”
  1. 原有状况（顺序）：食堂排队排到你，你却迟迟不点餐（充饭卡，选择困难症...），让后面人一直等
  2. 多路复用后：类似小程序点餐，谁先准备好点餐就先处理

---
---

# 基于 I/O 多路复用的并发编程 - 编程实现注意事项
<PageNumber/>

```c
#include <sys/select.h>

int select(int n, fd_set *fdset, NULL, NULL, NULL);
/* 返回：如果有准备好的描述符，则返回非 0 值标记准备好的描述符个数；返回 -1 如果出现错误 */
/* 宏 */
FD_ZERO(fd_set *fdset); /* 全部置零（清除） */
FD_CLR(int fd, fd_set *fdset); /* 单个置零（移除对一个文件描述符的监听） */
FD_SET(int fd, fd_set *fdset); /* 设置对于一个文件描述符的监听 */
FD_ISSET(int fd, fd_set *fdset); /* 检查是否在文件描述符内 */
```
<div class="text-[0.9rem]">

* `select` 会 **阻塞**，直到有文件描述符就绪
* `select` 会修改 `fdset`（以供后续调用 `FD_ISSET` 宏），因此每次调用 `select` 之前都需要重新设置 `fdset`
</div>

<div class="text-[0.8rem]">

`select`函数的参数如下（后三个参数常设为NULL）：

1. `int nfds`: 指定被监听的文件描述符的范围，它的值是要监控的所有文件描述符中 **最大值加1。**（提示：实现是基于位向量、掩码的）
2. `fd_set *readfds`: 用来检查可读性的文件描述符集合。
3. `fd_set *writefds`: 用来检查可写性的文件描述符集合。
4. `fd_set *exceptfds`: 用来检查异常条件的文件描述符集合。
5. `struct timeval *timeout`: 指定等待的最长时间，它可以是一个固定的时间段，或者NULL，表示无限等待。

</div>

---
---

# 基于 I/O 多路复用的并发编程 - 性能优势
<PageNumber/>

为什么 I/O 多路复用更具有性能优势？我推测的原因：

1. 无论线程切换还是进程切换，都会涉及到 **上下文切换**，而上下文切换是非常耗费资源的。
2. I/O 多路复用的并发编程，只需要一个进程，因此不存在进程切换，也就不存在上下文切换。
3. 内存使用更高效：线程和进程切换涉及到更多的内存分配和管理（栈、堆等），而I/O多路复用只需要为多个 I/O 操作维护少量的数据结构，**内存使用效率更高**。
    - 进程/线程数过多可能会导致内存不足

<br>

* 有关池（pool）的理解：本质是维护一个 **文件描述符位向量**，记录哪些文件描述符正在被监听，哪些文件描述符已经准备好了，哪些文件描述符已经被移除监听。

---
layout: two-cols-header
---

# 基于 I/O 多路复用的并发编程 - 优劣分析
<PageNumber/>

::left::
## 优点

* 同一进程内，上下文共享，每个逻辑流都可以访问同一地址空间，共享信息方便
* 事件驱动，可以更好的控制程序行为

> 譬如，指定事件的处理优先级，而这对于基于进程的多路复用无法实现

::right::
## 缺点

* 编码复杂
* 如果想要获得更好的并发性能，则需要进行细粒度的事件处理


> 如何理解“细粒度”？
> 
> 更精细的事件处理，使得阻塞/等待的时间更短，从而提高并发性能
> 
> 如：将等待客户端写入改为等待客户端写入 1 行，而不是等待直到 EOF



<style scoped>
div[layout="two-cols-header"]{
  grid-template-rows: repeat(5, 1fr);
  /* 间隙 */
  gap: 2rem;
}
</style>

---
layout: two-cols-header
---

# 基于线程的并发编程
<PageNumber/>

## 线程

* 定义：运行在进程上下文中的逻辑流。类似于轻量化的进程
* 线程上下文：唯一的线程 ID（TID，进程内唯一）、栈、栈指针、程序计数器、通用目的寄存器、条件码
* 同一进程内的线程共享整个进程的地址空间，因此共享信息方便

<br>

::left::
### 子概念

* 主线程：进程生命周期内的第一个线程
* 对等线程：由同一进程创建的线程，包括主线程
  > 对等线程可以互相杀死、互相访问对方的栈（共享在同一进程的地址空间中）
* 对等线程池：无父子关系的对等线程的集合
* 线程例程：线程的执行体，包括线程的代码和本地数据，类似于进程的 `main` 函数

::right::

<div class="grid grid-cols-2 gap-1">

![thread-stack](https://cdn.arthals.ink/pre-concurrent/thread-stack.png)

![thread-concurrent](https://cdn.arthals.ink/pre-concurrent/thread-concurrent.png)

</div>
---
layout: two-cols-header
---

# 基于线程的并发编程 - 编程实现
<PageNumber/>

### POSIX 线程（Pthreads）

POSIX 线程是一种线程 API，定义了线程的创建、同步、调度、终止等操作

::left::
```c{all|4|5|6|11}
#include "csapp.h" void *thread(void *vargp);

int main() {
  pthread_t tid;
  pthread_create(&tid, NULL, thread, NULL);
  pthread_join(tid, NULL);
  exit(0); 
}

void *thread(void *vargp) {
  pthread_detach(pthread_self());
  printf("Hello, world!\n");
  return NULL;
}
```

::right::

* `pthread_t`：线程 ID
* `pthread_create`：创建线程

<div class="text-[0.8rem] pl-6">

1. `pthread_t *tidp`：线程 ID
2. `const pthread_attr_t *attr`：线程属性，通常为 `NULL`
3. `void *(*start_routine)(void *)`：线程例程
4. `void *arg`：线程例程的参数

</div>

* `pthread_join`：等待线程 `tid` 终止，回收资源
* `pthread_detach`：分离线程 `tid`

<div class="text-[0.8rem] pl-8 -mt-4">

分离线程不需要被其他线程回收，线程终止后 **自动回收资源**

</div>

<style scoped>
div[layout="two-cols-header"]{
  grid-template-rows: repeat(6, 1fr);
  gap: 1rem;
}
</style>

---
layout: two-cols-header
---

# 基于线程的并发编程 - 编程实现
<PageNumber/>

### POSIX 线程（Pthreads）

POSIX 线程是一种线程 API，定义了线程的创建、同步、调度、终止等操作

::left::
```c
#include "csapp.h" void *thread(void *vargp);

int main() {
  pthread_t tid;
  pthread_create(&tid, NULL, thread, NULL);
  pthread_join(tid, NULL);
  exit(0); 
}

void *thread(void *vargp) {
  pthread_detach(pthread_self());
  printf("Hello, world!\n");
  return NULL;
}
```

::right::


* `pthread_exit`：终止当前线程（显式终止）

<div class="text-[0.8rem] pl-8 -mt-4">

对于主线程，等价于 `exit`，会等待其他线程终止后再终止


</div>

* `pthread_once`：保证函数只被执行一次

<div class="text-[0.8rem] pl-8 -mt-4">

需要先初始化：

```c
pthread_once_t once_control = PTHREAD_ONCE_INIT;
```

</div>

<style scoped>
div[layout="two-cols-header"]{
  grid-template-rows: repeat(6, 1fr);
  gap: 1rem;
}
</style>

---
layout: two-cols-header
---

# 基于线程的并发编程 - 并发服务器实现
<PageNumber/>

::left::

<div class="overflow-scroll h-90">

```c{all|18,22,28,31|30,33}
#include "csapp.h"

// 函数声明
void echo(int connfd);
void *thread(void *vargp);

int main(int argc, char **argv) {
    int listenfd, *connfdp;
    socklen_t clientlen;
    struct sockaddr_storage clientaddr; // 客户端地址结构
    pthread_t tid; // 线程ID

    // 开启监听指定端口
    listenfd = Open_listenfd(argv[1]);

    while (1) {
        clientlen = sizeof(struct sockaddr_storage);
        connfdp = Malloc(sizeof(int)); // 分配空间存储连接文件描述符
        // 接受客户端连接
        *connfdp = Accept(listenfd, (SA *)&clientaddr, &clientlen);
        // 创建新线程处理连接
        Pthread_create(&tid, NULL, thread, connfdp);
    }
}

/* 线程处理函数 */
void *thread(void *vargp) {
    int connfd = *((int *)vargp); // 获取连接文件描述符

    Pthread_detach(pthread_self()); // 分离线程，使线程结束时自动回收资源
    Free(vargp); // 释放传入的参数内存
    echo(connfd); // 调用echo函数处理客户端请求
    Close(connfd); // 关闭连接
    return NULL; // 线程结束
}
```

</div>

::right::

**为什么要用 Malloc？**

<div class=text-3>

* 如果直接使用 `int connfd`，则会导致所有线程共享同一个 `connfd`（位于主线程栈上）
* 会导致线程之间的 **竞争**：

<div class="text-3 pl-8">

1. 主线程执行 `Accept`，将 `connfd` 设置为 3，进入 `线程 A` 创建，但还没执行 28 行赋值
2. 由于 `pthread_create` 是非阻塞的，所以它会立即返回，主线程继续执行
3. 主线程又一次循环，执行 `Accept`，将 `connfd` 设置为 4，进入 `线程 B` 创建
4. `线程 A` 继续执行，将 `connfd` 设置为 4

</div>

* 为了避免这种竞争，需要为每个线程分配独立的内存空间，因此使用 `Malloc` 分配内存，在对等线程中调用 `Free` 释放内存

</div>

<style scoped>
div[layout="two-cols-header"]{
  grid-template-rows: repeat(6, 1fr);
  gap: 1rem;
}
</style>

---
---
# 基于线程的并发编程 - 注意事项
<PageNumber/>

* 线程不一定是并发的
* 不能假定线程的执行顺序
* 对于共享变量，需要使用互斥量（`mutex`）进行同步（加锁与解锁）

![thread-parallel](https://cdn.arthals.ink/pre-concurrent/thread-parallel.png){.h-80.m-auto}

---
---
# 往年题

又是和 Arch 一样的情况，属于一章的开篇，所以往年题较少且难度较低。
<PageNumber/>

下列关于C语言中进程模型和线程模型的说法中， **错误** 的是：

A.每个线程都有它自己独立的线程上下文，包括线程ID、程序计数器、条件码、通用目的寄存器值等

B.每个线程都有自己独立的线程栈，任何线程都不能访问其他对等线程的栈空间

C.不同进程之间的虚拟地址空间是独立的，但同一个进程的不同线程共享同一个虚拟地址空间

D.一个线程的上下文比一个进程的上下文小得多，因此线程上下文切换要比进程上下文切换快得多

<div v-click text-sky-600>

B：线程可以访问同一进程的地址空间，因此可以访问其他对等线程的栈空间

</div>

---
---
# 往年题

又是和 Arch 一样的情况，属于一章的开篇，所以往年题较少且难度较低。
<PageNumber/>

下列关于进程与线程的描述中，哪一个是 **不正确** 的？

A.一个进程可以包含多个线程

B.进程中的各个线程共享进程的代码、数据、堆和栈

C.进程中的各个线程拥有自己的线程上下文

D.线程的上下文切换比进程的上下文切换快答案

<div v-click text-sky-600>

B: 线程确实共享进程的代码段、数据段和堆，但是每个线程有自己的栈空间（用于存放函数调用的局部变量、返回地址等），以及线程上下文（包括线程的寄存器状态和程序计数器等）。这就是所谓的线程栈和线程的独立执行环境。因此，线程之间的栈是独立的，不是共享的。（虽然可以通过指针等方式访问其他线程的栈）

</div>

---
---
# 参考
<PageNumber/>

### Credit

* [Slidev](https://sli.dev/) - 开发者的演示文稿
* [GPT 4](https://chat.openai.com/) - LLM by OpenAI
* [Copilot](https://copilot.github.com/) - GitHub 的代码助手

<br>

### Reference

* [一文搞懂异步、并发、协程原理](https://zhuanlan.zhihu.com/p/625099551)
* [彻底理解 IO 多路复用实现机制](https://juejin.cn/post/6882984260672847879)


---
layout: image-right
image: https://cdn.arthals.ink/pre/pku-art.jpeg
---

# 广告
<PageNumber/>

### PKU Art
北京大学课程网美化样式

* [Blog](https://arthals.ink/posts/web/pku-art)
* [Github](https://github.com/zhuozhiyongde/PKU-Art)
* [Docs](https://docs.arthals.ink/pku-art)

<br>

### 更适合北大宝宝的 ICS Lab 踩坑记

欢迎大家阅读指正~

* [Malloc Lab](https://arthals.ink/posts/experience/malloc-lab)
* [Tsh Lab](https://arthals.ink/posts/experience/tsh-lab)
* [Cache Lab](https://arthals.ink/posts/experience/cache-lab)

<PageNumber/>
---
layout: center
---


<div flex="~ gap-16"  mt-2 justify-center items-center>


<div  w-fit h-fit mb-2>

# THANKS

Made by Arthals with ❤️ ~~and hair~~ {.mb-4}

[Blog](https://arthals.ink/) · [GitHub](https://github.com/zhuozhiyongde) · [Bilibili](https://space.bilibili.com/203396427)

</div>

![wechat](https://cdn.arthals.ink/pre/wechat.jpg){.w-40.rounded-md}

</div>