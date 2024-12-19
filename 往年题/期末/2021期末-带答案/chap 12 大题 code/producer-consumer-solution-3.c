/* Producer–Consumer Problem (Solution 3: Spinlock Emulated by Semaphore) */

#include "csapp.h"
#include <assert.h>
#include <time.h>

#define BUF_SIZE 10
#define NUM_WORKERS 1000

#define STRONG_TEST

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

static sem_t mutex;                /* Mutual Exclusion */

static void sync_var_init()
{
    Sem_init(&mutex, 0, 1);
}

#ifndef STRONG_TEST
static void *producer(void *arg_for_worker)
{
    struct timespec sleep_nsec = {
        0, ((ArgForWorker *)arg_for_worker)->sleep_nsec};
    Nanosleep(&sleep_nsec, NULL);

    P(&mutex);
    while (items == BUF_SIZE)
    {
        V(&mutex);
        P(&mutex);
    }

    /* Critical section begins */
    rand_sleep();
    items++;
    printf("producer %d: %d\n", ((ArgForWorker *)arg_for_worker)->num, items);
    assert(items > 0 && items <= BUF_SIZE);
    /* Critical section ends */

    V(&mutex);

    return NULL;
}

static void *consumer(void *arg_for_worker)
{
    struct timespec sleep_nsec = {
        0, ((ArgForWorker *)arg_for_worker)->sleep_nsec};
    Nanosleep(&sleep_nsec, NULL);

    P(&mutex);
    while (items == 0)
    {
        V(&mutex);
        P(&mutex);
    }

    /* Critical section begins */
    rand_sleep();
    items--;
    printf("consumer %d: %d\n", ((ArgForWorker *)arg_for_worker)->num, items);
    assert(items >= 0 && items < BUF_SIZE);
    /* Critical section ends */

    V(&mutex);

    return NULL;
}
#else
static void *producer(void *arg_for_worker)
{
    struct timespec sleep_nsec = {
        0, ((ArgForWorker *)arg_for_worker)->sleep_nsec};
    Nanosleep(&sleep_nsec, NULL);

    P(&mutex);
    rand_sleep();
    while (items == BUF_SIZE)
    {
        rand_sleep();
        V(&mutex);
        rand_sleep();
        P(&mutex);
        rand_sleep();
    }

    /* Critical section begins */
    rand_sleep();
    items++;
    printf("producer %d: %d\n", ((ArgForWorker *)arg_for_worker)->num, items);
    assert(items > 0 && items <= BUF_SIZE);
    /* Critical section ends */

    rand_sleep();
    V(&mutex);

    return NULL;
}

static void *consumer(void *arg_for_worker)
{
    struct timespec sleep_nsec = {
        0, ((ArgForWorker *)arg_for_worker)->sleep_nsec};
    Nanosleep(&sleep_nsec, NULL);

    P(&mutex);
    rand_sleep();
    while (items == 0)
    {
        rand_sleep();
        V(&mutex);
        rand_sleep();
        P(&mutex);
        rand_sleep();
    }

    /* Critical section begins */
    rand_sleep();
    items--;
    printf("consumer %d: %d\n", ((ArgForWorker *)arg_for_worker)->num, items);
    assert(items >= 0 && items < BUF_SIZE);
    /* Critical section ends */

    rand_sleep();
    V(&mutex);

    return NULL;
}
#endif

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