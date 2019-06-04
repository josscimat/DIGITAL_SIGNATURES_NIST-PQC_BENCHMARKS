#include <stdio.h>
#include <stdlib.h>
#include <stdint.h>
#include <string.h>
#include <ctype.h>
#include "rng.h"
#include "api.h"

// Assembler rdtsc Function to Measure Clock Cycles
static inline uint64_t rdtsc(void)
{
    unsigned int eax, edx;
    asm volatile("rdtsc" : "=a" (eax), "=d" (edx));
    return ((uint64_t) edx << 32) | eax;
}

int main()
{
    unsigned char       *m = (unsigned char *) "lasquinceletrasmascuarentaycuatroletrascincuentaynuevebytes"; // 59 Bytes Message like SUPERCOP Project 
    unsigned char       *m1 = NULL, *sm = NULL;
    unsigned long long  mlen = 0, mlen1 = 0, smlen = 0;
    unsigned char       pk[CRYPTO_PUBLICKEYBYTES], sk[CRYPTO_SECRETKEYBYTES];
    uint64_t            tmp1 = 0, tmp2 = 0, tiempo1 = 0, tiempo2 = 0, tiempo3 = 0, tiempo4 = 0;
    double              tiempos = 0, tiempov = 0;
    long long int       ciclosign = 0, cicloverify = 0;
    long long int       totalsign = 0, totalverify = 0;
    int                 ret_valg = -9, ret_vals = -9, ret_valv = -9; 
    
    m = (unsigned char *) calloc(mlen, sizeof(unsigned char));
    m1 = (unsigned char *) calloc(mlen+CRYPTO_BYTES, sizeof(unsigned char));
    sm = (unsigned char *) calloc(mlen+CRYPTO_BYTES, sizeof(unsigned char));
        
    // Keypair Block
    ret_valg = crypto_sign_keypair(pk, sk);  
    //printf("crypto_sign_keypair status: <%d>\n", ret_valg);
        
    // CPU Warming Block
    for (int i = 0; i < 1000000000; i++)
    {
        int a = rand(), b = rand(); 
        double c = 0, d = 0, e = 0;
        c = a * b;
        d = c / i;
        e = a ^ b;
    }

    for (int i = 0; i < 10000; i++)
    {
        // Sign Block
        tiempo1 = rdtsc();
        // START MEASURING
        ret_vals = crypto_sign(sm, &smlen, m, mlen, sk);
        //printf("crypto_sign status: <%d>\n", ret_vals);
        // END MEASURING
        tiempo2 = rdtsc();

        // Verify Block
        tiempo3 = rdtsc();
        // START MEASURING
        ret_valv = crypto_sign_open(m1, &mlen1, sm, smlen, pk);
        //printf("crypto_sign_open status: <%d>\n", ret_valv);
        // END MEASURING
        tiempo4 = rdtsc();

        tmp1 = tiempo2 - tiempo1;
        tmp2 = tiempo4 - tiempo3;
        ciclosign = ciclosign + tmp1;
        cicloverify = cicloverify + tmp2;
    }

    totalsign = ciclosign / 10000;
    totalverify = cicloverify / 10000;
    tiempos = (double) totalsign / 1895000000; // clock cycles of the testing CPU
    tiempov = (double) totalverify / 1895000000; // clock cycles of the testing CPU
    printf("MQDSS: ref-48 sk-32-bytes pk-62-bytes\n"); 
    printf("Sign Clock Cycles: %llu\n", totalsign);
    printf("Sign Time Seconds: %f\n", tiempos);
    printf("Verify Clock Cycles: %llu\n", totalverify);
    printf("Verify Time Seconds: %f\n", tiempov);
    //printf("sk: %i\n", CRYPTO_SECRETKEYBYTES);
    //printf("pk: %i\n", CRYPTO_PUBLICKEYBYTES);

    free(m);
    free(sm);
    return 0;
}



