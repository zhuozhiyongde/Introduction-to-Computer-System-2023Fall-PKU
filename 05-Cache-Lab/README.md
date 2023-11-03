# 更适合北大宝宝体质的 Cache Lab 踩坑记

## PartA

需要编写一个 `csim.c` 程序，来模拟缓存机制。

### 测试指令

```bash
make && ./test-csim
```

出现 `TEST_CSIM_RESULTS=27` 字样即代表成功。

### 编写细节

感觉没什么好说的，主要是从汇编回到 C 有点陌生了，注意参数读、文件读和内存分配管理的方法就行。

#### 文件读写

```c
#include <stdlib.h>

FILE* trace_file;
trace_file = fopen(optarg, "r");
fscanf(trace_file, "%s %lx,%d\n", &operation, &address, &size) == 3
```

`FILE *`：文件指针，指向文件的指针，用于读写文件。

`fopen(const char *path, const char *mode)`：打开文件，返回文件指针。用 `r` 模式打开文件，表示只读。

`fscanf(FILE *stream, const char *format, ...)`：从文件流中读取格式化输入。`%s` 表示字符串，`%lx` 表示 16 进制数，`%d` 表示十进制数。返回值为成功读取的参数个数，所以这里指定为 3 个。

#### 参数读取

```c
#include <getopt.h>

int main(int argc, char* argv[]) {
    int option;
    while ((option = getopt(argc, argv, "hvs:E:b:t:")) != -1) {
        switch (option) {
        case 'h':
            printUsage();
            exit(0);
        case 'v':
            v = 1;
            break;
        case 's':
            s = atoi(optarg); // 外部变量 optarg 指向当前选项参数的指针，stdlib::atoi将字符串转换为整数
            break;
        case 'E':
            E = atoi(optarg);
            break;
        case 'b':
            b = atoi(optarg);
            break;
        case 't':
            trace_file = fopen(optarg, "r");
            break;
        default:
            printUsage();
            exit(0);
        }
    }
}
```

`getopt(int argc, char * const argv[], const char *optstring)`：解析命令行参数。`argc` 表示参数个数，`argv` 表示参数列表，`optstring` 表示选项字符串，选项字符串中的字母表示选项，冒号表示选项后面需要参数（必填）。返回值为当前选项字母，如果没有选项了则返回 -1。

> 在本例中，选项字符串为 `hvs:E:b:t:`，表示有 5 个选项，其中 `s`、`E`、`b`、`t` 后面需要参数。`h`、`v` 后面不需要参数。

`atoi(const char *nptr)`：将字符串转换为整数。

#### 内存分配管理

```c
struct line {
    int valid;
    int tag;
    int last_used_time;
};

// 定义组，每个组有 E 个行
typedef struct line* set;

// 定义缓存，有 S 个组
set* cache;

// 初始化缓存
cache = (set*)malloc(sizeof(set) * (1 << s));
for (int i = 0; i < (1 << s); i++) {
    cache[i] = (set)malloc(sizeof(struct line) * E);
    for (int j = 0; j < E; j++) {
        cache[i][j].valid = -1;
        cache[i][j].tag = -1;
        cache[i][j].last_used_time = -1;
    }
}
```

注意结构体使用 `sizeof` 时，要加上 `struct` 关键字。

> `malloc` 和 `calloc` 都是动态分配内存的函数，`malloc` 只分配内存，`calloc` 分配内存并初始化为 0。`malloc` 的参数为分配的字节数，`calloc` 的参数为分配的个数和每个元素的字节数。

别忘了最后释放内存：

```c
free(cache);
```

### 踩坑

#### Modify 跳转技巧

Modify 修改操作 = Load 加载操作 + Store 存储操作，所以在 `M` 操作时，需要访问两次缓存。

你编写的程序不用支持 `-v` 参数，所以你可以使用如下的跳转表：

```c
switch (operation) {
case 'I':
    continue;
case 'M': // Modify = Load + Store
    useCache(address);
case 'L': // Load
case 'S': // Store
    useCache(address);
}
```

这种写法可以让 `M` 操作直接多执行一次 `useCache` 函数，而不用再写一遍。

值得一提的是，在所有的测试样例中，只有 `mem.trace` 中存在 `M` 操作，而 handout 中给出的测试命令行均没有测试它，也就没有测试 `M` 操作的正确性。你必须使用 `test-csim` 来测试 `M` 操作的正确性。

#### 地址是 64 位，而不是 32 位

在 `csim.c` 中，地址是 64 位的，而不是 32 位的。所以你需要使用 `%lx` 来读取地址。同时你不能使用 int 类型来存储地址，而应该使用 `unsigned long` 或者 `__uint64_t` 类型或者 `size_t` 类型（执行的机器是 64 位的）。

#### LRU（Least Recently Used）算法

初始化一个 line 的时候，也许将 `last_used_time` 初始化为 -1 会更好（区别于初始的 timestamp = 0）。因为这样可以判断这个 line 是否被使用过（即判断是否为冷不命中，决定是否要给 eviction 加一）。

在每次执行 `useCache` 的时候，让 `timestamp` 加一，即可维护一个时间戳（而不用使用什么标准库的时间戳）。

同时，在遍历一个组的时候，你可以合并遍历和查找最小时间戳的操作，这样可以减少一次遍历。

#### 其他

`printSummary()` 函数定义在 `cachelab.h` 中，所以你需要在 `csim.c` 中引入 `cachelab.h` 头文件。

```c
#include "cachelab.h"

printSummary(hit, miss, eviction);
```

### 成品代码

```c
// Arthals 2110306206@stu.pku.edu.cn
// File    : csim.c
// Time    : 2023-11-03 09:06:08
// Author  : Arthals
// Software: Visual Studio Code

#include <stdio.h>
#include <getopt.h>
#include <stdlib.h>
#include "cachelab.h"

struct line {
    int valid;
    int tag;
    int last_used_time;
};

// 定义组，每个组有 E 个行
typedef struct line* set;

// 定义缓存，有 S 个组
set* cache;

// 定义全局缓存参数
int v = 0, s, E, b, t, timestamp = 0;

// 定义全局返回参数
unsigned hit = 0, miss = 0, eviction = 0;

void printUsage() {
    puts("Usage: ./csim [-hv] -s <num> -E <num> -b <num> -t <file>");
    puts("Options:");
    puts("  -h         Print this help message.");
    puts("  -v         Optional verbose flag.");
    puts("  -s <num>   Number of set index bits.");
    puts("  -E <num>   Number of lines per set.");
    puts("  -b <num>   Number of block offset bits.");
    puts("  -t <file>  Trace file.");
    puts("");
    puts("Examples:");
    puts("  linux>  ./csim -s 4 -E 1 -b 4 -t traces/yi.trace");
    puts("  linux>  ./csim -v -s 8 -E 2 -b 4 -t traces/yi.trace");
}

void useCache(size_t address, int is_modify) {
    int set_pos = address >> b & ((1 << s) - 1);
    int tag = address >> (b + s);

    set cur_set = cache[set_pos];
    int lru_pos = 0, lru_time = cur_set[0].last_used_time;


    for (int i = 0;i < E;++i) {
        if (cur_set[i].tag == tag) {
            ++hit;
            // 如果是修改操作，那么还有一次写，会加一次命中（已被加载）
            hit += is_modify;
            cur_set[i].last_used_time = timestamp;
            if (v) {
                printf("hit\n");
            }
            return;
        }
        if (cur_set[i].last_used_time < lru_time) {
            lru_time = cur_set[i].last_used_time;
            lru_pos = i;
        }
    }
    ++miss;
    // 修改操作时，还有写的一次命中（已驱逐后加载）
    hit += is_modify;
    // 冷不命中
    eviction += (lru_time != -1);
    if (v) {
        if (lru_time != -1) {
            if (is_modify)
                printf("miss eviction hit\n");
            else
                printf("miss eviction\n");
        }
        else {
            printf("miss\n");
        }
    }
    // 驱逐
    cur_set[lru_pos].last_used_time = timestamp;
    cur_set[lru_pos].tag = tag;
    return;
}

int main(int argc, char* argv[]) {
    int option;
    FILE* trace_file;
    // 获取参数
    if (argc == 1) {
        printUsage();
        exit(0);
    }
    while ((option = getopt(argc, argv, "hvs:E:b:t:")) != -1) {
        switch (option) {
        case 'h':
            printUsage();
            exit(0);
        case 'v':
            v = 1;
            break;
        case 's':
            s = atoi(optarg); // 外部变量 optarg 指向当前选项参数的指针，stdlib::atoi将字符串转换为整数
            break;
        case 'E':
            E = atoi(optarg);
            break;
        case 'b':
            b = atoi(optarg);
            break;
        case 't':
            trace_file = fopen(optarg, "r");
            break;
        default:
            printUsage();
            exit(0);
        }
    }

    // 校验参数
    if (s <= 0 || E <= 0 || b <= 0 || s + b > 64 || trace_file == NULL) {
        printUsage();
        exit(1);
    }

    // 设置校验位数，发现没用到，遂注释
    // t = 64 - s - b;

    // 初始化缓存
    cache = (set*)malloc(sizeof(set) * (1 << s));
    for (int i = 0; i < (1 << s); i++) {
        cache[i] = (set)malloc(sizeof(struct line) * E);
        for (int j = 0; j < E; j++) {
            cache[i][j].valid = -1;
            cache[i][j].tag = -1;
            cache[i][j].last_used_time = -1;
        }
    }

    // S 38c08c, 1
    // L 30c080, 4
    // M 30c080, 4

    int size;
    char operation;
    size_t address;

    while (fscanf(trace_file, "%s %lx,%d\n", &operation, &address, &size) == 3) {
        ++timestamp;
        if (v) {
            printf("%c %lx,%d ", operation, address, size);
        }
        switch (operation) {
        case 'I':
            continue;
        case 'M': // Modify = Load + Store
            useCache(address, 1);
            break;
        case 'L': // Load
        case 'S': // Store
            useCache(address, 0);
        }
    }

    free(cache);
    printSummary(hit, miss, eviction);
}

```

## PartB

缓存参数：`s = 5, E = 1, b = 5`

### 32x32

测试指令：

```bash
make && ./test-trans -M 32 -N 32
```

观察到示例转置函数的结果：`hits:869, misses:1184, evictions:1152`

显然这是极差的，因为 A 和 B 的大小一致，而且存储的地址偏差正好使得其对应位置的数据都在同一个组（行 / 块）中，所以从读第二行开始，每次读 / 写，即使是临近的元素，也会发生冲突，导致大量的 miss。

调用 `csim-ref` 来查看 trace：

```bash
./csim-ref -v -s 5 -E 1 -b 5 -t trace.f1 > trace.f1.v
```

果不其然，有大量的 miss：

```md
L 10e0c0,4 miss
S 14e4a0,4 miss eviction
L 10e0c4,4 hit
S 14e520,4 miss eviction
L 10e0c8,4 hit
S 14e5a0,4 miss eviction
L 10e0cc,4 hit
S 14e620,4 miss eviction
L 10e0d0,4 hit
S 14e6a0,4 miss eviction
L 10e0d4,4 hit
S 14e720,4 miss eviction
L 10e0d8,4 hit
S 14e7a0,4 miss eviction
L 10e0dc,4 hit
S 14e820,4 miss eviction
L 10e0e0,4 miss eviction
S 14e8a0,4 miss eviction
```

于是，我们要利用书上讲过的分块技巧，将 32x32 的矩阵分成 8x8 的小块，这样就可以充分利用局部性，读 A 一次连续读入 8 个元素，然后转置，再连续写入 B。

同时我们使用多个局部变量来存储从 A 读出来的数据，这样可以避免 `读A->写B->读A->写B` 的冲突。

```c
void transpose_submit(int M, int N, int A[N][M], int B[M][N]) {
    REQUIRES(M > 0);
    REQUIRES(N > 0);
    // s = 5, E = 1, b = 5
    // 总变量：4 个循环变量 + 8 个临时变量 = 12 个变量
    int a, b, c, d, e, f, g, h;

    if (M == 32) {
        // 先把 A 复制 B，再转置 B，避免因为 A 的下一次读驱逐 B 的同一行，导致 B 的下一次写 MISS
        // 8*8 分块
        // 总 MISS：16(块数)*[8(读)+8(写)] = 256
        // 显示 MISS =  260，但是通过添加 trans() 的代码并清空缓存，然后对比测试差异，可知实际只有 256 个 MISS
        // 故猜测那 4 个多的 MISS 可能是别的函数调用所致，也可通过观察 trace.f0 发现确实开头多了 1 个 S 和 3 个 L
        for (int i = 0; i < N; i += 8) { // 当前行
            for (int j = 0; j < M; j += 8) { // 当前列
                // 首先将 A[i][j]~A[i+7][j+7] 复制到 B[j][i]~B[j+7][i+7]
                for (int k = 0;k < 8;++k) {
                    a = A[i + k][j];
                    b = A[i + k][j + 1];
                    c = A[i + k][j + 2];
                    d = A[i + k][j + 3];
                    e = A[i + k][j + 4];
                    f = A[i + k][j + 5];
                    g = A[i + k][j + 6];
                    h = A[i + k][j + 7];
                    B[j][i + k] = a;
                    B[j + 1][i + k] = b;
                    B[j + 2][i + k] = c;
                    B[j + 3][i + k] = d;
                    B[j + 4][i + k] = e;
                    B[j + 5][i + k] = f;
                    B[j + 6][i + k] = g;
                    B[j + 7][i + k] = h;
                }
            }
        }
    }
    ENSURES(is_transpose(M, N, A, B));
}
```

运行：

```bash
make && ./test-trans -M 32 -N 32
```

得到：

```md
func 0 (Transpose submission): hits:1765, misses:288, evictions:256
```

可以发现我们已经将 miss 降低到了 288，小于 300 的满分限，收获满分！

但是，这就是完美无缺的吗？显然不是，我们可以继续优化。

注意到理论 MISS 数应当是 `16(块数) * [8(读A)+8(写B)] = 256` 次，为什么会多出来 32 次呢？

这是因为当 i=j 时，A[i][j] 和 B[i][j] 的组数是一样的，所以每次对角线上会额外出现 8 次 MISS：

-   写 B 的第 i 列，导致 A 的第 i+1 行被驱逐
-   读 A 的第 i+1 行，导致 B 的第 i+1 列被驱逐
-   写 B 的第 i+1 列，冲突不命中
-   ...

有没有什么优化方法呢？当然是有的，我们可以先将 A 的一个块完整、不转置地复制到 B，然后再转置 B，这样对 B 的写因为 B 已经完全加载到了缓存中，所以不会出现任何的不命中

```c
void transpose_submit(int M, int N, int A[N][M], int B[M][N]) {
    REQUIRES(M > 0);
    REQUIRES(N > 0);
    // s = 5, E = 1, b = 5
    // 总变量：4 个循环变量 + 8 个临时变量 = 12 个变量
    int a, b, c, d, e, f, g, h;

    if (M == 32) {
        // 先把 A 复制 B，再转置 B，避免因为 A 的下一次读驱逐 B 的同一行，导致 B 的下一次写 MISS
        // 8*8 分块
        // 总 MISS：16(块数)*[8(读)+8(写)] = 256
        // 显示 MISS =  260，但是通过添加 trans() 的代码并清空缓存，然后对比测试差异，可知实际只有 256 个 MISS
        // 故猜测那 4 个多的 MISS 可能是别的函数调用所致，也可通过观察 trace.f0 发现确实开头多了 1 个 S 和 3 个 L
        for (int i = 0; i < N; i += 8) { // 当前行
            for (int j = 0; j < M; j += 8) { // 当前列
                // 首先将 A[i][j]~A[i+7][j+7] 复制到 B[j][i]~B[j+7][i+7]
                for (int k = 0;k < 8;++k) {
                    a = A[i + k][j];
                    b = A[i + k][j + 1];
                    c = A[i + k][j + 2];
                    d = A[i + k][j + 3];
                    e = A[i + k][j + 4];
                    f = A[i + k][j + 5];
                    g = A[i + k][j + 6];
                    h = A[i + k][j + 7];
                    B[j + k][i] = a;
                    B[j + k][i + 1] = b;
                    B[j + k][i + 2] = c;
                    B[j + k][i + 3] = d;
                    B[j + k][i + 4] = e;
                    B[j + k][i + 5] = f;
                    B[j + k][i + 6] = g;
                    B[j + k][i + 7] = h;
                }
                // 转置 B
                for (int k = 0;k < 8;++k) {
                    // 对角线不用交换
                    for (int l = 0;l < k;++l) {
                        a = B[j + k][i + l];
                        B[j + k][i + l] = B[j + l][i + k];
                        B[j + l][i + k] = a;
                    }
                }
            }
        }
    }
    ENSURES(is_transpose(M, N, A, B));
}
```

运行：

```bash
make && ./test-trans -M 32 -N 32
```

得到：

```md
Summary for official submission (func 0): correctness=1 misses=260
```

可以发现我们已经将 miss 降低到了 260，非常接近理论值 256 了，而经过测试，这 4 个多出来的 MISS 其实别的函数调用所致。

### 64x64

测试指令：

```bash
make && ./test-trans -M 64 -N 64
```

首先，我们直接使用 32x32 中的代码：

```c
if (M == 32 || M==64){...}
```

得到输出：

```bash
Summary for official submission (func 0): correctness=1 misses=3332
```

发现 miss 过多，这是为什么呢？

回忆一下我们的 cache 参数：`s = 5, E = 1, b = 5`，即 block 有 32 个字节（存 4 个 int） ，32 个组，每个组只有 1 个行。所以我们的总容量是 256 个 int，而 64x64 的矩阵 4 行即可占用 256 个 int，所以我们 8x8 分块后，上半块和下半块的数据会发生冲突不命中。

如果直接修改代码改成 4x4 分块，我们的确就可以解决这个问题：

```c
if (M == 64) {
    for (int i = 0; i < N; i += 4) { // 当前行
        for (int j = 0; j < M; j += 4) { // 当前列
            // 首先将 A[i][j]~A[i+3][j+3] 复制到 B[j][i]~B[j+3][i+3]
            for (int k = 0;k < 4;++k) {
                a = A[i + k][j];
                b = A[i + k][j + 1];
                c = A[i + k][j + 2];
                d = A[i + k][j + 3];
                B[j + k][i] = a;
                B[j + k][i + 1] = b;
                B[j + k][i + 2] = c;
                B[j + k][i + 3] = d;
            }
            // 转置 B
            for (int k = 0;k < 4;++k) {
                // 对角线不用交换
                for (int l = 0;l < k;++l) {
                    a = B[j + k][i + l];
                    B[j + k][i + l] = B[j + l][i + k];
                    B[j + l][i + k] = a;
                }
            }
        }
    }
}
```

运行：

```bash
make && ./test-trans -M 64 -N 64
```

得到：

```md
Summary for official submission (func 0): correctness=1 misses=1604
```

收获了 4.5 分，但是仍然不够理想。

那么如何优化呢？既然直接 8x8 分块不行，那我们就先 8x8 分大块，再在每个大块内 4x4 分小块，然后注意，读完 A 的第一行（8 个 int）后，我们将前 4 个正常转置并写入 B，然后将后 4 个先放到一个暂时存储块中，这样就可以避免写下半块时的冲突不命中了。

```c
for (int i = 0; i < N; i += 8) { // 当前行
    for (int j = 0; j < M; j += 8) { // 当前列
        // 先复制
        for (int k = 0;k < 4;++k) {
            // 从 A 中取 A_Sub_Block[0][0] 的第 k 行，执行 4 次，若 i=j 还会出现 3 次 EVICTION
            a = A[i + k][j];
            b = A[i + k][j + 1];
            c = A[i + k][j + 2];
            d = A[i + k][j + 3];
            e = A[i + k][j + 4];
            f = A[i + k][j + 5];
            g = A[i + k][j + 6];
            h = A[i + k][j + 7];
            // 转置前四个到 B_Sub_Block[0][0] 的第 k 列，4 次 MISS
            B[j][i + k] = a;
            B[j + 1][i + k] = b;
            B[j + 2][i + k] = c;
            B[j + 3][i + k] = d;
            // 将后四个先复制到 B_Sub_Block[0][1] 的第 k 列
            // 可以避免写 B_Sub_Block[0][0] 和 B_Sub_Block[1][0] 时的冲突不命中
            B[j][i + k + 4] = e;
            B[j + 1][i + k + 4] = f;
            B[j + 2][i + k + 4] = g;
            B[j + 3][i + k + 4] = h;
        }
    }
}
```

注：Sub_Block 说的是分完后的 2x2 的矩阵（每个元素是一个 4x4 的矩阵）。

此时，已经转置完毕 B_Sub_Block[0][0]，而转置好的 B_Sub_Block[1][0] 暂时位于 B_Sub_Block[0][1]。

同时，A 的前四行已经完全被读完并用完了。所以我们可以放心的开始读 A 的后四行了。

```c
// 此时，已经转置完毕 B_Sub_Block[0][0]
// 转置好的 B_Sub_Block[1][0] 位于 B_Sub_Block[0][1]

// 移动 B_Sub_Block[0][1] 到 B_Sub_Block[1][0]
// 同时将 A_Sub_Block[1][0] 复制并转置到 B_Sub_Block[0][1]
for (int k = 0;k < 4;++k) {
    // 先读 A 再读 B，然后写 B 可以减少 MISS
    // 读 A_Sub_Block[1][0] 的第 k 列，4 次 MISS
    e = A[i + 4][j + k];
    f = A[i + 5][j + k];
    g = A[i + 6][j + k];
    h = A[i + 7][j + k];
    // 复制 B_Sub_Block[0][1] 的第 k 行
    // 若 i=j，出现 4 次 EVICTION
    a = B[j + k][i + 4];
    b = B[j + k][i + 5];
    c = B[j + k][i + 6];
    d = B[j + k][i + 7];
    // 将 A_Sub_Block[1][0] 的第 k 列复制到 B_Sub_Block[0][1] 的第 k 行
    B[j + k][i + 4] = e;
    B[j + k][i + 5] = f;
    B[j + k][i + 6] = g;
    B[j + k][i + 7] = h;
    // 将 B_Sub_Block[0][1] 的第 k 列复制到 B_Sub_Block[1][0] 的第 k 行
    // 若 i=j，出现 4 次 EVICTION
    B[j + k + 4][i] = a;
    B[j + k + 4][i + 1] = b;
    B[j + k + 4][i + 2] = c;
    B[j + k + 4][i + 3] = d;
}
```

这里我们已经将 B_Sub_Block[1][0] 交换回正确的位置，以及转置了 B_Sub_Block[0][1]。

注意我们先读 A 再读 B，经测试这样比先读 B 再读 A 要好。因为这样的话，读 B_Sub_Block[0][1]（实际上存的是 B_Sub_Block[1][0]） 接写 B_Sub_Block[0][1] 可以避免 MISS。

而 B_Sub_Block[1][1] 仍然没做操作，我们使用类似 32x32 中的先复制再转置的方法，将 B_Sub_Block[1][1] 转置好。

```c
// 复制 A_Sub_Block[1][1] 到 B_Sub_Block[1][1]
// 依旧是先复制再转置以避免冲突不命中
// 若 i≠j，完全没有 MISS
// 若 i=j，出现 4 次 EVICTION
for (int k = 4;k < 8;++k) {
    a = A[i + k][j + 4];
    b = A[i + k][j + 5];
    c = A[i + k][j + 6];
    d = A[i + k][j + 7];
    B[j + k][i + 4] = a;
    B[j + k][i + 5] = b;
    B[j + k][i + 6] = c;
    B[j + k][i + 7] = d;
}
// 转置 B_Sub_Block[1][1]
// 全部 HIT
for (int k = 4;k < 8;++k) {
    // 对角线不用交换
    for (int l = 4;l < k;++l) {
        a = B[j + k][i + l];
        B[j + k][i + l] = B[j + l][i + k];
        B[j + l][i + k] = a;
    }
}
```

最终，我们得到了满分的代码：

```c
if (M == 64) {
    // 因为每个 8*8 分块中，上半块和下半块会冲突不命中，所以再把每个 8*8 分块分成 4 个 4*4 分块
    // 然后通过暂时性存储 B_Sub_Block[1][0] 到 B_Sub_Block[0][1] 来避免冲突不命中
    // 若直接写到 B_Sub_Block[1][0]，则会写 B 的上半块（4*8) 和下半块（4*8) 时出现冲突不命中
    // 特别的，对于 i=j 的情况，还是会出现冲突不命中，因为 A 本身和 B 就是冲突的
    // 计算出的总 MISS 数为 16*56+31*8 = 1144 次，但是实际是 1148 次，不知道哪里算错了还是又是程序调用的问题
    for (int i = 0; i < N; i += 8) { // 当前行
        for (int j = 0; j < M; j += 8) { // 当前列
            // 先复制
            for (int k = 0;k < 4;++k) {
                // 从 A 中取 A_Sub_Block[0][0] 的第 k 行，执行 4 次，若 i=j 还会出现 3 次 EVICTION
                a = A[i + k][j];
                b = A[i + k][j + 1];
                c = A[i + k][j + 2];
                d = A[i + k][j + 3];
                e = A[i + k][j + 4];
                f = A[i + k][j + 5];
                g = A[i + k][j + 6];
                h = A[i + k][j + 7];
                // 转置前四个到 B_Sub_Block[0][0] 的第 k 列，4 次 MISS
                B[j][i + k] = a;
                B[j + 1][i + k] = b;
                B[j + 2][i + k] = c;
                B[j + 3][i + k] = d;
                // 将后四个先复制到 B_Sub_Block[0][1] 的第 k 列
                // 可以避免写 B_Sub_Block[0][0] 和 B_Sub_Block[1][0] 时的冲突不命中
                B[j][i + k + 4] = e;
                B[j + 1][i + k + 4] = f;
                B[j + 2][i + k + 4] = g;
                B[j + 3][i + k + 4] = h;
            }
            // 此时，已经转置完毕 B_Sub_Block[0][0]
            // 转置好的 B_Sub_Block[1][0] 位于 B_Sub_Block[0][1]

            // 移动 B_Sub_Block[0][1] 到 B_Sub_Block[1][0]
            // 同时将 A_Sub_Block[1][0] 复制并转置到 B_Sub_Block[0][1]
            for (int k = 0;k < 4;++k) {
                // 先读 A 再读 B，然后写 B 可以减少 MISS
                // 读 A_Sub_Block[1][0] 的第 k 列，4 次 MISS
                e = A[i + 4][j + k];
                f = A[i + 5][j + k];
                g = A[i + 6][j + k];
                h = A[i + 7][j + k];
                // 复制 B_Sub_Block[0][1] 的第 k 行
                // 若 i=j，出现 4 次 EVICTION
                a = B[j + k][i + 4];
                b = B[j + k][i + 5];
                c = B[j + k][i + 6];
                d = B[j + k][i + 7];
                // 将 A_Sub_Block[1][0] 的第 k 列复制到 B_Sub_Block[0][1] 的第 k 行
                B[j + k][i + 4] = e;
                B[j + k][i + 5] = f;
                B[j + k][i + 6] = g;
                B[j + k][i + 7] = h;
                // 将 B_Sub_Block[0][1] 的第 k 列复制到 B_Sub_Block[1][0] 的第 k 行
                // 若 i=j，出现 4 次 EVICTION
                B[j + k + 4][i] = a;
                B[j + k + 4][i + 1] = b;
                B[j + k + 4][i + 2] = c;
                B[j + k + 4][i + 3] = d;
            }
            // 复制 A_Sub_Block[1][1] 到 B_Sub_Block[1][1]
            // 依旧是先复制再转置以避免冲突不命中
            // 若 i≠j，完全没有 MISS
            // 若 i=j，出现 4 次 EVICTION
            for (int k = 4;k < 8;++k) {
                a = A[i + k][j + 4];
                b = A[i + k][j + 5];
                c = A[i + k][j + 6];
                d = A[i + k][j + 7];
                B[j + k][i + 4] = a;
                B[j + k][i + 5] = b;
                B[j + k][i + 6] = c;
                B[j + k][i + 7] = d;
            }
            // 转置 B_Sub_Block[1][1]
            // 全部 HIT
            for (int k = 4;k < 8;++k) {
                // 对角线不用交换
                for (int l = 4;l < k;++l) {
                    a = B[j + k][i + l];
                    B[j + k][i + l] = B[j + l][i + k];
                    B[j + l][i + k] = a;
                }
            }
        }
    }
}
```

运行：

```bash
make && ./test-trans -M 64 -N 64
```

得到：

```md
Summary for official submission (func 0): correctness=1 misses=1148
```

距离理论最优值 1024 仍然有一定差距，但是已经很接近了，而且已经收获了满分。

如果你想继续优化，显然是要特别处理对角线上的块的，因为他们每次都会出现冲突不命中，所以可以通过先复制到一个临时块这样的方法来避免，这里就不展开了 **（才不是懒得卷了）**。

### 60x68

测试指令：

```bash
make && ./test-trans -M 60 -N 68
```

首先尝试 4x4 分块：

```c
if (M == 60) {
    for (int i = 0; i < N; i += 4) { // 当前行
        for (int j = 0; j < M; j += 4) { // 当前列
            // 首先将 A[i][j]~A[i+3][j+3] 复制到 B[j][i]~B[j+3][i+3]
            for (int k = 0;k < 4;++k) {
                a = A[i + k][j];
                b = A[i + k][j + 1];
                c = A[i + k][j + 2];
                d = A[i + k][j + 3];
                B[j + k][i] = a;
                B[j + k][i + 1] = b;
                B[j + k][i + 2] = c;
                B[j + k][i + 3] = d;
            }
            // 转置 B
            for (int k = 0;k < 4;++k) {
                // 对角线不用交换
                for (int l = 0;l < k;++l) {
                    a = B[j + k][i + l];
                    B[j + k][i + l] = B[j + l][i + k];
                    B[j + l][i + k] = a;
                }
            }
        }
    }
}
```

运行：

```bash
make && ./test-trans -M 60 -N 68
```

得到：

```md
Summary for official submission (func 0): correctness=1 misses=1623
```

发现似乎已经接近满分了啊？那我们只需要贪心地对大部分地方用 8x8 分块，再用 4x4 分块处理余下的部分就行了：

```c
if (M == 60) {
    // 行列都不整除 8，但正好可以避免冲突不命中
    // 如果直接使用 4x4 分块，总 MISS 数为 1623，已经很接近满分
    // 再次基础上，再贪心拆出一个 8x8 分块，然后用 4x4 解决剩余部分，即可拿到满分
    // 总 MISS：1567
    // 8x8 分块处理 64x56 的部分
    for (int i = 0; i < 64; i += 8) {
        for (int j = 0; j < 56; j += 8) {
            for (int k = 0;k < 8;++k) {
                a = A[i + k][j];
                b = A[i + k][j + 1];
                c = A[i + k][j + 2];
                d = A[i + k][j + 3];
                e = A[i + k][j + 4];
                f = A[i + k][j + 5];
                g = A[i + k][j + 6];
                h = A[i + k][j + 7];
                B[j + k][i] = a;
                B[j + k][i + 1] = b;
                B[j + k][i + 2] = c;
                B[j + k][i + 3] = d;
                B[j + k][i + 4] = e;
                B[j + k][i + 5] = f;
                B[j + k][i + 6] = g;
                B[j + k][i + 7] = h;
            }
            // 转置 B
            for (int k = 0;k < 8;++k) {
                // 对角线不用交换
                for (int l = 0;l < k;++l) {
                    a = B[j + k][i + l];
                    B[j + k][i + l] = B[j + l][i + k];
                    B[j + l][i + k] = a;
                }
            }
        }
    }
    // 4x4 处理剩余部分
    for (int i = 0; i < N; i += 4) {
        for (int j = 56; j < M; j += 4) {
            for (int k = 0;k < 4;++k) {
                a = A[i + k][j];
                b = A[i + k][j + 1];
                c = A[i + k][j + 2];
                d = A[i + k][j + 3];
                B[j + k][i] = a;
                B[j + k][i + 1] = b;
                B[j + k][i + 2] = c;
                B[j + k][i + 3] = d;
            }
            // 转置 B
            for (int k = 0;k < 4;++k) {
                // 对角线不用交换
                for (int l = 0;l < k;++l) {
                    a = B[j + k][i + l];
                    B[j + k][i + l] = B[j + l][i + k];
                    B[j + l][i + k] = a;
                }
            }
        }
    }
    for (int i = 64; i < N; i += 4) {
        for (int j = 0; j < 56; j += 4) {
            for (int k = 0;k < 4;++k) {
                a = A[i + k][j];
                b = A[i + k][j + 1];
                c = A[i + k][j + 2];
                d = A[i + k][j + 3];
                B[j + k][i] = a;
                B[j + k][i + 1] = b;
                B[j + k][i + 2] = c;
                B[j + k][i + 3] = d;
            }
            // 转置 B
            for (int k = 0;k < 4;++k) {
                // 对角线不用交换
                for (int l = 0;l < k;++l) {
                    a = B[j + k][i + l];
                    B[j + k][i + l] = B[j + l][i + k];
                    B[j + l][i + k] = a;
                }
            }
        }
    }
}
```

运行：

```bash
make && ./test-trans -M 60 -N 68
```

得到：

```md
Summary for official submission (func 0): correctness=1 misses=1567
```

完美！下播！

### Handin

首先运行：
```bash
python driver.py
```

得到结果：
```md
Part A: Testing cache simulator
Running ./test-csim
                        Your simulator     Reference simulator
Points (s,E,b)    Hits  Misses  Evicts    Hits  Misses  Evicts
     3 (1,1,1)       9       8       6       9       8       6  traces/yi2.trace
     3 (4,2,4)       4       5       2       4       5       2  traces/yi.trace
     3 (2,1,4)       2       3       1       2       3       1  traces/dave.trace
     3 (2,1,3)     694     453     449     694     453     449  traces/mem.trace
     3 (2,2,3)     201      37      29     201      37      29  traces/trans.trace
     3 (2,4,3)     212      26      10     212      26      10  traces/trans.trace
     3 (5,1,5)     231       7       0     231       7       0  traces/trans.trace
     6 (5,1,5)  265189   21777   21745  265189   21777   21745  traces/long.trace
    27

TEST_CSIM_RESULTS=27

                        Your simulator     Reference simulator
Points (s,E,b)    Hits  Misses  Evicts    Hits  Misses  Evicts
     3 (1,1,1)       9       8       6       9       8       6  traces/yi2.trace
     3 (4,2,4)       4       5       2       4       5       2  traces/yi.trace
     3 (2,1,4)       2       3       1       2       3       1  traces/dave.trace
     3 (2,1,3)     694     453     449     694     453     449  traces/mem.trace
     3 (2,2,3)     201      37      29     201      37      29  traces/trans.trace
     3 (2,4,3)     212      26      10     212      26      10  traces/trans.trace
     3 (5,1,5)     231       7       0     231       7       0  traces/trans.trace
     6 (5,1,5)  265189   21777   21745  265189   21777   21745  traces/long.trace
    27


Part B: Testing transpose function
Running ./test-trans -M 32 -N 32 -t
Running ./test-trans -M 64 -N 64 -t
Running ./test-trans -M 60 -N 68 -t

Cache Lab summary:
                        Points   Max pts      Misses
Csim correctness          27.0        27
Trans perf 32x32           8.0         8         260
Trans perf 64x64           8.0         8        1148
Trans perf 60x68          10.0        10        1567
          Total points    53.0        53
```

注意，这会自动 `make` 并生成 `handin.tar`，改个名交了就行啦！

## Other

一些别的我觉得可能有用的教程：

[ NFLS-CHINA / CSAPP - Cache Lab的更(最)优秀的解法 ](https://zhuanlan.zhihu.com/p/387662272)：暂存想法的来源，很生动的图示。
[ 孟永康 / 《深入理解计算机系统》配套实验：Cache Lab ](https://zhuanlan.zhihu.com/p/33846811)：很好的解析了为什么尺寸变化会出现冲突。配有测试程序。
[ CS-icez / introduction-to-computer-systems ](https://github.com/CS-icez/introduction-to-computer-systems/blob/main/Handin/4%20archlab/ncopy.ys)：21 级卷王王中王，PartB 260/1148/1467 的成绩。
