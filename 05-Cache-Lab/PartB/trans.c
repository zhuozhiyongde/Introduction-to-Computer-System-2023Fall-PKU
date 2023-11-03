// Arthals 2110306206
// mail    : 2110306206@stu.pku.edu.cn
// File    : trans.c
// Author  : Arthals
// Software: Visual Studio Code

/*
 * trans.c - Matrix transpose B = A^T
 *
 * Each transpose function must have a prototype of the form:
 * void trans(int M, int N, int A[N][M], int B[M][N]);
 *
 * A transpose function is evaluated by counting the number of misses
 * on a 1KB direct mapped cache with a block size of 32 bytes.
 */
#include <stdio.h>
#include "cachelab.h"
#include "contracts.h"

int is_transpose(int M, int N, int A[N][M], int B[M][N]);

/*
 * transpose_submit - This is the solution transpose function that you
 *     will be graded on for Part B of the assignment. Do not change
 *     the description string "Transpose submission", as the driver
 *     searches for that string to identify the transpose function to
 *     be graded. The REQUIRES and ENSURES from 15-122 are included
 *     for your convenience. They can be removed if you like.
 */
char transpose_submit_desc[] = "Transpose submission";
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
    ENSURES(is_transpose(M, N, A, B));
}

/*
 * You can define additional transpose functions below. We've defined
 * a simple one below to help you get started.
 */

 /*
  * trans - A simple baseline transpose function, not optimized for the cache.
  */
char trans_desc[] = "Simple row-wise scan transpose";
void trans(int M, int N, int A[N][M], int B[M][N]) {
    int i, j, tmp;

    REQUIRES(M > 0);
    REQUIRES(N > 0);

    for (i = 0; i < N; i++) {
        for (j = 0; j < M; j++) {
            tmp = A[i][j];
            B[j][i] = tmp;
        }
    }

    ENSURES(is_transpose(M, N, A, B));
}

/*
 * registerFunctions - This function registers your transpose
 *     functions with the driver.  At runtime, the driver will
 *     evaluate each of the registered functions and summarize their
 *     performance. This is a handy way to experiment with different
 *     transpose strategies.
 */
void registerFunctions() {
    /* Register your solution function */
    registerTransFunction(transpose_submit, transpose_submit_desc);

    /* Register any additional transpose functions */
    registerTransFunction(trans, trans_desc);

}

/*
 * is_transpose - This helper function checks if B is the transpose of
 *     A. You can check the correctness of your transpose by calling
 *     it before returning from the transpose function.
 */
int is_transpose(int M, int N, int A[N][M], int B[M][N]) {
    int i, j;

    for (i = 0; i < N; i++) {
        for (j = 0; j < M; ++j) {
            if (A[i][j] != B[j][i]) {
                return 0;
            }
        }
    }
    return 1;
}

