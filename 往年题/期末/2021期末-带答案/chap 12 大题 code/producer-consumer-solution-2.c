/* Producer–Consumer Problem (Solution 2: Condition Variable Emulated by Semaphore) */

#include "csapp.h"
#include <assert.h>
#include <time.h>

#define BUF_SIZE 10
#define NUM_PRODUCERS 10
#define NUM_CONSUMERS 1000

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
static sem_t sem_waiting_producer; /* Wait for empty slots */
static sem_t sem_waiting_consumer; /* Wait for available items */

static int num_waiting_producer = 0;
static int num_waiting_consumer = 0;

static void sync_var_init()
{
    Sem_init(&mutex, 0, 1);

    Sem_init(&sem_waiting_producer, 0, 0);
    Sem_init(&sem_waiting_consumer, 0, 0);
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
        num_waiting_producer++;
        V(&mutex);
        P(&sem_waiting_producer);
        Sleep(1);
        P(&mutex);
    }

    /* Critical section begins */
    rand_sleep();
    items++;
    printf("producer %d: %d\n", ((ArgForWorker *)arg_for_worker)->num, items);
    assert(items > 0 && items <= BUF_SIZE);
    /* Critical section ends */

    if (num_waiting_consumer > 0)
    {
        num_waiting_consumer--;
        V(&sem_waiting_consumer);
    }
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
        num_waiting_consumer++;
        V(&mutex);
        P(&sem_waiting_consumer);
        Sleep(1);
        P(&mutex);
    }

    /* Critical section begins */
    rand_sleep();
    items--;
    printf("consumer %d: %d\n", ((ArgForWorker *)arg_for_worker)->num, items);
    assert(items >= 0 && items < BUF_SIZE);
    /* Critical section ends */

    if (num_waiting_producer > 0)
    {
        num_waiting_producer--;
        V(&sem_waiting_producer);
    }
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
        num_waiting_producer++;
        rand_sleep();
        V(&mutex);
        rand_sleep();
        P(&sem_waiting_producer);
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
    if (num_waiting_consumer > 0)
    {
        rand_sleep();
        num_waiting_consumer--;
        rand_sleep();
        V(&sem_waiting_consumer);
        rand_sleep();
    }
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
        num_waiting_consumer++;
        rand_sleep();
        V(&mutex);
        rand_sleep();
        P(&sem_waiting_consumer);
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
    if (num_waiting_producer > 0)
    {
        rand_sleep();
        num_waiting_producer--;
        rand_sleep();
        V(&sem_waiting_producer);
        rand_sleep();
    }
    rand_sleep();
    V(&mutex);

    return NULL;
}
#endif

int main()
{
    sync_var_init();

    pthread_t pid_producer[NUM_PRODUCERS];
    pthread_t pid_consumer[NUM_CONSUMERS];

    ArgForWorker arg_producer[NUM_PRODUCERS];
    ArgForWorker arg_consumer[NUM_CONSUMERS];

    for (int i = 0; i < NUM_PRODUCERS; i++)
    {
        arg_producer[i].num = i;
        arg_producer[i].sleep_nsec = gen_sleep_nsec();
    }
    for (int i = 0; i < NUM_CONSUMERS; i++)
    {
        arg_consumer[i].num = i;
        arg_consumer[i].sleep_nsec = gen_sleep_nsec();
    }

    for (int i = 0; i < NUM_PRODUCERS; i++)
    {
        Pthread_create(&pid_producer[i], NULL, producer, (void *)&arg_producer[i]);
    }
    for (int i = 0; i < NUM_CONSUMERS; i++)
    {
        Pthread_create(&pid_consumer[i], NULL, consumer, (void *)&arg_consumer[i]);
    }

    if (NUM_PRODUCERS <= NUM_CONSUMERS)
    {
        for (int i = 0; i < NUM_PRODUCERS; i++)
        {
            Pthread_join(pid_producer[i], NULL);
        }
    }
    else
    {
        for (int i = 0; i < NUM_CONSUMERS; i++)
        {
            Pthread_join(pid_consumer[i], NULL);
        }
    }

    if (NUM_PRODUCERS == NUM_CONSUMERS)
    {
        printf("final: %d\n", items);
        assert(items == 0);
    }
}