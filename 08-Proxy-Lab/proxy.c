/*
 * proxy.c - 一个简单的 HTTP 代理服务器，实现了基于线程的并发与缓存
 *
 * name:    Arthals
 * id:      2110306206
 * mail:    2110306206@stu.pku.edu.cn
 */
#include "csapp.h"
#include "cache.h"

 /* Recommended max cache and object sizes */
#define MAX_CACHE_SIZE 1049000
#define MAX_OBJECT_SIZE 102400

/* You won't lose style points for including this long line in your code */
static const char* user_agent_hdr = "User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:10.0.3) Gecko/20120305 Firefox/10.0.3\r\n";

// 自定义类型
typedef char string[MAXLINE];
typedef struct {
    string host;
    string port;
    string path;
}url_t;

// 自定义函数签名
void* thread(void* vargp);
void do_get(rio_t* client_rio_p, string url);
int parse_url(string url, url_t* url_info);
int parse_header(rio_t* client_rio_p, string header_info, string host);

/*
 * main: 主函数
 * 创建监听套接字，循环接收请求，创建线程处理请求
 */
int main(int argc, char** argv) {
    // 忽略SIGPIPE信号
    signal(SIGPIPE, SIG_IGN);

    int listenfd, * connfd;
    socklen_t clientlen;
    struct sockaddr_storage clientaddr;

    pthread_t tid;

    // 检查参数
    if (argc != 2) {
        fprintf(stderr, "usage: %s <port>\n", argv[0]);
        exit(1);
    }

    // 创建监听套接字，此处可以使用包装函数，因为遇到错误时就应当调用exit(0)退出进程
    listenfd = Open_listenfd(argv[1]);

    init_cache();
    // 循环接收请求
    while (1) {
        clientlen = sizeof(clientaddr);
        // 每次循环使用 malloc 从而实现基于线程的并发服务器
        // 不使用局部变量，因为局部变量会导致线程间共享同一块内存，从而导致竞争
        connfd = (int*)malloc(sizeof(int));
        // 不使用 Accept 包装函数，因为其在遇到错误时会调用unix_error，从而使用exit(0)退出进程
        *connfd = accept(listenfd, (SA*)&clientaddr, &clientlen);
        if (*connfd < 0) {
            fprintf(stderr, "Accept Error: %s\n", strerror(errno));
            continue;
        }
        // 创建线程处理请求
        pthread_create(&tid, NULL, thread, connfd);
    }
    close(listenfd);
}

/**
 * thread: 使用线程处理请求，实现并发
 * @param vargp，指向客户端套接字描述符的指针
 */
void* thread(void* vargp) {
    // 不使用任何的包装函数，因为若错误处理函数导致线程调用exit(0)，会终止整个进程
    // 分离自身线程
    pthread_detach(pthread_self());

    // 把局部变量存储线程栈，释放动态分配的参数，防止内存泄漏
    int client_fd = *((int*)vargp);
    free(vargp);

    // 初始化客户端缓冲区 rio
    rio_t client_rio;
    string buf;
    rio_readinitb(&client_rio, client_fd);

    // 读取客户端内容到 buf
    if (rio_readlineb(&client_rio, buf, MAXLINE) <= 0) {
        fprintf(stderr, "Read request line error: %s\n", strerror(errno));
        close(client_fd);
        return NULL;
    }

    // 解析请求行
    string method, url, http_version;
    if (sscanf(buf, "%s %s %s", method, url, http_version) != 3) {
        fprintf(stderr, "Parse request line error: %s\n", strerror(errno));
        close(client_fd);
        return NULL;
    }
    // 检查是否为 GET 方法
    if (!strcasecmp(method, "GET")) {
        do_get(&client_rio, url);
    }
    close(client_fd);
    return NULL;
}

/**
 * do_get - 处理 GET 请求
 * @param client_rio_p，指向客户端rio的指针
 * @param url，请求的url
 */
void do_get(rio_t* client_rio_p, string url) {
    // 检查是否在缓存中，如果命中缓存，直接返回
    if (query_cache(client_rio_p, url)) {
        return;
    }
    // 解析 url
    url_t url_info;
    if (parse_url(url, &url_info) < 0) {
        fprintf(stderr, "Parse url error\n");
        return;
    }
    // 解析 header
    string header_info;
    parse_header(client_rio_p, header_info, url_info.host);

    // 启动与 host 的链接，不使用包装函数（以防exit退出进程）
    int server_fd = open_clientfd(url_info.host, url_info.port);
    if (server_fd < 0) {
        fprintf(stderr, "Open connect to %s:%s error\n", url_info.host, url_info.port);
        return;
    }

    // 初始化服务端缓冲区 rio
    rio_t server_rio;
    rio_readinitb(&server_rio, server_fd);

    // 准备请求行和请求头
    string buf;
    sprintf(buf, "GET %s HTTP/1.0\r\n%s", url_info.path, header_info);

    // 发送请求行和请求头
    if (rio_writen(server_fd, buf, strlen(buf)) != strlen(buf)) {
        fprintf(stderr, "Send request line and header error\n");
        close(server_fd);
        return;
    }

    // 接收响应行
    int resp_total = 0, resp_current = 0;
    char file_cache[MAX_OBJECT_SIZE];
    int client_fd = client_rio_p->rio_fd;

    // 从服务端读取响应
    // server可能会写多次，所以需要循环读取直至遇到 EOF（即 resp_current == 0）
    while ((resp_current = rio_readnb(&server_rio, buf, MAXLINE))) {
        if (resp_current < 0) {
            fprintf(stderr, "Read server response error\n");
            close(server_fd);
            return;
        }
        // 缓存到局部变量 file_cache 中，准备供缓存使用
        if (resp_total + resp_current < MAX_OBJECT_SIZE) {
            memcpy(file_cache + resp_total, buf, resp_current);
        }
        resp_total += resp_current;
        // 发送给客户端
        if (rio_writen(client_fd, buf, resp_current) != resp_current) {
            fprintf(stderr, "Send response to client error\n");
            close(server_fd);
            return;
        }
    }
    // 如果响应小于 MAX_OBJECT_SIZE，缓存到本地
    if (resp_total < MAX_OBJECT_SIZE) {
        add_cache(url, file_cache, resp_total);
    }
    close(server_fd);
    return;
}

/**
 * parse_url - 解析 url
 * @param url，请求的url
 * @param url_info，解析结果的存储位置
 */
int parse_url(string url, url_t* url_info) {
    // 检查是否为 HTTP 协议
    const int http_prefix_len = strlen("http://");
    if (strncasecmp(url, "http://", http_prefix_len)) {
        fprintf(stderr, "Not http protocol: %s\n", url);
        return -1;
    }
    // 检查是否为合法的url
    char* host_start = url + http_prefix_len;
    char* port_start = strchr(host_start, ':');
    char* path_start = strchr(host_start, '/');

    // 非法url
    if (path_start == NULL) {
        return -1;
    }

    // 没有端口号，设置默认端口为 80
    if (port_start == NULL) {
        *path_start = '\0';
        strcpy(url_info->host, host_start);
        strcpy(url_info->port, "80");
        *path_start = '/';
        strcpy(url_info->path, path_start);
    }

    // 有端口号
    else {
        *port_start = '\0';
        strcpy(url_info->host, host_start);
        *port_start = ':';
        *path_start = '\0';
        strcpy(url_info->port, port_start + 1);
        *path_start = '/';
        strcpy(url_info->path, path_start);
    }

    return 0;
}

/**
 * parse_header - 解析请求头
 * @param client_rio_p，指向客户端rio的指针
 * @param header_info，解析结果的存储位置
 * @param host，先前解析出的请求的host，作为Host头的默认值
 */
int parse_header(rio_t* client_rio_p, string header_info, string host) {
    string buf;
    int has_host_flag = 0;
    while (1) {
        rio_readlineb(client_rio_p, buf, MAXLINE);
        // 遇到结束行
        if (strcmp(buf, "\r\n") == 0) {
            break;
        }
        // 如果遇到 Host 头，记录之，后续不再添加 Host 头
        if (!strncasecmp(buf, "Host:", strlen("Host:"))) {
            has_host_flag = 1;
        }
        // 如果遇到 Connection 头、Proxy-Connection 头、User-Agent 头，直接跳过，后续替换为默认值
        if (!strncasecmp(buf, "Connection:", strlen("Connection:"))) {
            continue;
        }
        if (!strncasecmp(buf, "Proxy-Connection:", strlen("Proxy-Connection:"))) {
            continue;
        }
        if (!strncasecmp(buf, "User-Agent:", strlen("User-Agent:"))) {
            continue;
        }
        // 其他头与 Host 头直接添加
        strcat(header_info, buf);
    }
    // 如果没有 Host 头，添加 Host 头
    if (!has_host_flag) {
        sprintf(buf, "Host: %s\r\n", host);
        strcpy(header_info, buf);
    }
    // 添加 Connection 头、Proxy-Connection 头、User-Agent 头
    strcat(header_info, "Connection: close\r\n");
    strcat(header_info, "Proxy-Connection: close\r\n");
    strcat(header_info, user_agent_hdr);
    // 添加结束行
    strcat(header_info, "\r\n");
    return 0;
}