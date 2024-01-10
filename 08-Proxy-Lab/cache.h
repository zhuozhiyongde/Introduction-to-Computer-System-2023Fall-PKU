/*
 * cache.h - 缓存模块头文件
 *
 * name:    Arthals
 * id:      2110306206
 * mail:    2110306206@stu.pku.edu.cn
 */
#include "csapp.h"

#define MAX_CACHE_SIZE 1049000
#define MAX_OBJECT_SIZE 102400
#define MAX_CAHCE_NUM 10

typedef char string[MAXLINE];

typedef struct {
    string url;
    char content[MAX_OBJECT_SIZE];
    int content_size;
    int timestamp;
} cache_file_t;

typedef struct {
    int using_cache_num;
    cache_file_t cache_files[MAX_CAHCE_NUM];
} cache_t;

void init_cache();
int query_cache(rio_t* rio_p, string url);
int add_cache(string url, char* content, int content_size);