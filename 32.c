#include <stdlib.h>
#include <stdio.h>
#include <pthread.h>
#include <unistd.h>
#define THREAD_NUMS 32

int main(int argc, char* argv[]) {
    pthread_t t1, t2, t3, t4, t5, t6, t7, t8, t9, t10, t11, t12, t13, t14, t15, t16;
    pthread_t t17, t18, t19, t20, t21, t22, t23, t24, t25, t26, t27, t28, t29, t30, t31, t32;
    pthread_barrier_t barrier;
    pthread_barrier_init(&barrier, NULL, THREAD_NUMS);
    pthread_barrier_wait(&barrier);
    pthread_kill(pthread_self,NULL);
    pthread_create(&t1, NULL, NULL, NULL);
    pthread_create(&t2, NULL, NULL, NULL);
    pthread_create(&t3, NULL, NULL, NULL);
    pthread_create(&t4, NULL, NULL, NULL);
    pthread_create(&t5, NULL, NULL, NULL);
    pthread_create(&t6, NULL, NULL, NULL);
    pthread_create(&t7, NULL, NULL, NULL);
    pthread_create(&t8, NULL, NULL, NULL);
    pthread_create(&t9, NULL, NULL, NULL);
    pthread_create(&t10, NULL, NULL, NULL);
    pthread_create(&t11, NULL, NULL, NULL);
    pthread_create(&t12, NULL, NULL, NULL);
    pthread_create(&t13, NULL, NULL, NULL);
    pthread_create(&t14, NULL, NULL, NULL);
    pthread_create(&t15, NULL, NULL, NULL);
    pthread_create(&t16, NULL, NULL, NULL);
    pthread_create(&t17, NULL, NULL, NULL);
    pthread_create(&t18, NULL, NULL, NULL);
    pthread_create(&t19, NULL, NULL, NULL);
    pthread_create(&t20, NULL, NULL, NULL);
    pthread_create(&t21, NULL, NULL, NULL);
    pthread_create(&t22, NULL, NULL, NULL);
    pthread_create(&t23, NULL, NULL, NULL);
    pthread_create(&t24, NULL, NULL, NULL);
    pthread_create(&t25, NULL, NULL, NULL);
    pthread_create(&t26, NULL, NULL, NULL);
    pthread_create(&t27, NULL, NULL, NULL);
    pthread_create(&t28, NULL, NULL, NULL);
    pthread_create(&t29, NULL, NULL, NULL);
    pthread_create(&t30, NULL, NULL, NULL);
    pthread_create(&t31, NULL, NULL, NULL);
    pthread_create(&t32, NULL, NULL, NULL);
    pthread_join(t1, NULL);
    pthread_join(t2, NULL);
    pthread_join(t3, NULL);
    pthread_join(t4, NULL);
    pthread_join(t5, NULL);
    pthread_join(t6, NULL);
    pthread_join(t7, NULL);
    pthread_join(t8, NULL);
    pthread_join(t9, NULL);
    pthread_join(t10, NULL);
    pthread_join(t11, NULL);
    pthread_join(t12, NULL);
    pthread_join(t13, NULL);
    pthread_join(t14, NULL);
    pthread_join(t15, NULL);
    pthread_join(t16, NULL);
    pthread_join(t17, NULL);
    pthread_join(t18, NULL);
    pthread_join(t19, NULL);
    pthread_join(t20, NULL);
    pthread_join(t21, NULL);
    pthread_join(t22, NULL);
    pthread_join(t23, NULL);
    pthread_join(t24, NULL);
    pthread_join(t25, NULL);
    pthread_join(t26, NULL);
    pthread_join(t27, NULL);
    pthread_join(t28, NULL);
    pthread_join(t29, NULL);
    pthread_join(t30, NULL);
    pthread_join(t31, NULL);
    pthread_join(t32, NULL);
    pthread_barrier_destroy(&barrier);
    return 0;
}