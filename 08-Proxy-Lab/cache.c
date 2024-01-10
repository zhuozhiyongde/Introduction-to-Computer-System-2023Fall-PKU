/*
 * cache.c - 缓存模块
 * name:    Arthals
 * id:      2110306206
 * mail:    2110306206@stu.pku.edu.cn
 */
#include "csapp.h"
#include "cache.h"

 /* 全局变量 */
// 缓存
static cache_t cache;
// 信号量，用于实现读者优先、全局变量并发线程锁
static sem_t mutex, w;
// 线程共享变量
static int readcnt, timestamp;


/**
 * init_cache: 初始化缓存
 */
void init_cache() {
    timestamp = 0;
    readcnt = 0;
    cache.using_cache_num = 0;
    sem_init(&mutex, 0, 1);
    sem_init(&w, 0, 1);
}

/**
 * query_cache: 查询缓存
 * @param rio_p:    rio指针，用于获取客户端套接字描述符
 * @param url:  请求的url
 */
int query_cache(rio_t* rio_p, string url) {
    // 使用全局变量 readcnt，需要加锁
    P(&mutex);
    readcnt++;
    // 第一个读者需要加锁，保证不会有写者同时访问，同时允许其他读者访问
    if (readcnt == 1) {
        P(&w);
    }
    V(&mutex);

    // 查找缓存
    int hit_flag = 0;
    for (int i = 0; i < MAX_CAHCE_NUM;i++) {
        // 命中缓存
        if (!strcmp(cache.cache_files[i].url, url)) {
            // 更新时间戳，也是全局变量，需要加锁
            P(&mutex);
            cache.cache_files[i].timestamp = timestamp++;
            V(&mutex);
            // 发送缓存内容
            rio_writen(rio_p->rio_fd, cache.cache_files[i].content, cache.cache_files[i].content_size);
            hit_flag = 1;
            break;
        }
    }

    // 同上，使用全局变量 readcnt，需要加锁
    P(&mutex);
    readcnt--;
    // 最后一个读者需要解锁，允许写者访问
    if (readcnt == 0) {
        V(&w);
    }
    V(&mutex);
    if (hit_flag) {
        return 1;
    }
    return 0;
}

/**
 * add_cache: 添加缓存
 * @param url:  请求的url
 * @param content:  请求的内容
 */
int add_cache(string url, char* content, int content_size) {
    // 同一时间只允许一个写者访问，需要持有 w 锁
    P(&w);
    // 检查缓存是否已满
    // 缓存已满
    if (cache.using_cache_num == (MAX_CAHCE_NUM - 1)) {
        // 找到最旧的缓存
        int oldest_index;
        int oldest_timestamp = timestamp;
        for (int i = 0;i < MAX_CAHCE_NUM;i++) {
            if (cache.cache_files[i].timestamp < oldest_timestamp) {
                oldest_timestamp = cache.cache_files[i].timestamp;
                oldest_index = i;
            }
        }
        // 替换缓存
        strcpy(cache.cache_files[oldest_index].url, url);
        memcpy(cache.cache_files[oldest_index].content, content, content_size);
        cache.cache_files[oldest_index].content_size = content_size;
        // 更新时间戳，加锁
        P(&mutex);
        cache.cache_files[oldest_index].timestamp = timestamp++;
        V(&mutex);
    }
    // 缓存未满
    else {
        // 添加缓存
        strcpy(cache.cache_files[cache.using_cache_num].url, url);
        memcpy(cache.cache_files[cache.using_cache_num].content, content, content_size);
        cache.cache_files[cache.using_cache_num].content_size = content_size;
        // 更新时间戳，加锁
        P(&mutex);
        cache.cache_files[cache.using_cache_num].timestamp = timestamp++;
        V(&mutex);
        cache.using_cache_num++;
    }
    // 解锁
    V(&w);
    return 0;
}