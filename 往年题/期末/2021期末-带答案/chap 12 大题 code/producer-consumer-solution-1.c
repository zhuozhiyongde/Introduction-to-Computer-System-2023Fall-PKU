/* Producer–Consumer Problem (Solution 1: Semaphore) */

#include "csapp.h"
#include <assert.h>
#include <time.h>

#define SWAP_V
#define STRONG_TEST

#define BUF_SIZE 5
#define NUM_WORKERS 1000

typedef struct
{
    int num;
    int sleep_nsec;
} ArgForWorker;

static int gen_sleep_nsec()
{
    const int MAX_SLEEP_GAP_MICROSEC = 1 << 15;
    const int MIN_SLEEP_MICROSEC = 1 << 15;
    const int MICROSEC = (int)1e3;
    return (rand() % MAX_SLEEP_GAP_MICROSEC + MIN_SLEEP_MICROSEC) * MICROSEC;
}

unsigned int Nanosleep(const struct timespec *req, struct timespec *rem)
{
    unsigned int rc;

    if ((rc = nanosleep(req, rem)) < 0)
        unix_error("Nanosleep error");
    return rc;
}

void rand_sleep()
{
    struct timespec rand_sleep_nsec = {0, gen_sleep_nsec()};
    Nanosleep(&rand_sleep_nsec, NULL);
}

static int items = 0; /* How many items are there in the buffer */

static sem_t mutex; /* Mutual Exclusion */
static sem_t empty; /* How many empty slots are there in the buffer */
static sem_t full;  /* How many items are there in the buffer */

static void sync_var_init()
{
    Sem_init(&mutex, 0, 1);

    /* Initially, there is no item in the buffer */
    Sem_init(&empty, 0, BUF_SIZE);
    Sem_init(&full, 0, 0);
}

static void *producer(void *arg_for_worker)
{
    struct timespec sleep_nsec = {
        0, ((ArgForWorker *)arg_for_worker)->sleep_nsec};
    Nanosleep(&sleep_nsec, NULL);

    P(&empty);
#ifdef STRONG_TEST
    rand_sleep();
#endif
    P(&mutex);

    /* Critical section begins */
    rand_sleep();
    items++;
    printf("producer %d: %d\n", ((ArgForWorker *)arg_for_worker)->num, items);
    assert(items > 0 && items <= BUF_SIZE);
    /* Critical section ends */

#ifndef SWAP_V
    V(&mutex);
#ifdef STRONG_TEST
    rand_sleep();
#endif
    V(&full);

#else
    V(&full);
#ifdef STRONG_TEST
    rand_sleep();
#endif
    V(&mutex);
#endif

    return NULL;
}

static void *consumer(void *arg_for_worker)
{
    struct timespec sleep_nsec = {
        0, ((ArgForWorker *)arg_for_worker)->sleep_nsec};
    Nanosleep(&sleep_nsec, NULL);

    P(&full);
#ifdef STRONG_TEST
    rand_sleep();
#endif
    P(&mutex);

    /* Critical section begins */
    rand_sleep();
    items--;
    printf("consumer %d: %d\n", ((ArgForWorker *)arg_for_worker)->num, items);
    assert(items >= 0 && items < BUF_SIZE);
    /* Critical section ends */

#ifndef SWAP_V
    V(&mutex);
#ifdef STRONG_TEST
    rand_sleep();
#endif
    V(&empty);

#else
    V(&empty);
#ifdef STRONG_TEST
    rand_sleep();
#endif
    V(&mutex);
#endif

    return NULL;
}

int main()
{
    sync_var_init();

    pthread_t pid_producer[NUM_WORKERS];
    pthread_t pid_consumer[NUM_WORKERS];

    ArgForWorker arg_producer[NUM_WORKERS];
    ArgForWorker arg_consumer[NUM_WORKERS];

    for (int i = 0; i < NUM_WORKERS; i++)
    {
        arg_producer[i].num = i;
        arg_producer[i].sleep_nsec = gen_sleep_nsec();

        arg_consumer[i].num = i;
        arg_consumer[i].sleep_nsec = gen_sleep_nsec();
    }

    for (int i = 0; i < NUM_WORKERS; i++)
    {
        Pthread_create(&pid_producer[i], NULL, producer, (void *)&arg_producer[i]);
        Pthread_create(&pid_consumer[i], NULL, consumer, (void *)&arg_consumer[i]);
    }

    for (int i = 0; i < NUM_WORKERS; i++)
    {
        Pthread_join(pid_producer[i], NULL);
        Pthread_join(pid_consumer[i], NULL);
    }

    printf("final: %d\n", items);
    assert(items == 0);
}