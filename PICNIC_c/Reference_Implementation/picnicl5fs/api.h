/*! @file api.h
 *  @brief Header for the NIST/SUPERCOP API.
 *
 *  This file is part of the reference implementation of the Picnic signature scheme.
 *  See the accompanying documentation for complete details.
 *
 *  The code is provided under the MIT license, see LICENSE for
 *  more details.
 *  SPDX-License-Identifier: MIT
 */


// Defined for the Picnic L1 FS parameter set, used as a template for other
// parameter sets by the packaging script.

#ifndef api_
#define api_h

//  Set these three values apropriately for your algorithm
#define CRYPTO_SECRETKEYBYTES 97
#define CRYPTO_PUBLICKEYBYTES 65
#define CRYPTO_BYTES 132828

// Change the algorithm name
#define CRYPTO_ALGNAME "picnicl5fs"

int
crypto_sign_keypair(unsigned char *pk, unsigned char *sk);

int
crypto_sign(unsigned char *sm, unsigned long long *smlen,
            const unsigned char *m, unsigned long long mlen,
            const unsigned char *sk);

int
crypto_sign_open(unsigned char *m, unsigned long long *mlen,
                 const unsigned char *sm, unsigned long long smlen,
                 const unsigned char *pk);

#endif /* api_h */
