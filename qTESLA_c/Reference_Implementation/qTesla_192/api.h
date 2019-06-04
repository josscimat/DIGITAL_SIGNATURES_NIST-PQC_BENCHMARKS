#include "params.h"
#include <stdint.h>

//Contains S and E
#define CRYPTO_SECRETKEYBYTES (sizeof(int16_t)*PARAM_N+sizeof(int16_t)*PARAM_N*PARAM_K+32+32)

//Contains T
#define CRYPTO_PUBLICKEYBYTES (sizeof(int32_t)*PARAM_K*PARAM_N+32)

//Contains z (bounded by B) and a hash
#define CRYPTO_BYTES (3*PARAM_N+32)

#define CRYPTO_RANDOMBYTES 32

#define CRYPTO_ALGNAME "qTesla-192"

int crypto_sign_keypair(
    unsigned char *,
    unsigned char *
    );

int crypto_sign(
    unsigned char *,unsigned long long *,
    const unsigned char *,unsigned long long,
    const unsigned char *
    );

int crypto_sign_open(
    unsigned char *,unsigned long long *,
    const unsigned char *,unsigned long long,
    const unsigned char *
    );


