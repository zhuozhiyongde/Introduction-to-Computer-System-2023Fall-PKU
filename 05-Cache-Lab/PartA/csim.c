// 卓致用 2110306206
// mail    : 2110306206@stu.pku.edu.cn
// File    : csim.c
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
