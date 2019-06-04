
#include "prng_utils.h"

#include <openssl/rand.h>
#include <openssl/crypto.h>

#include <stdio.h>
#include <stdlib.h>

#include <string.h>

#include "rng.h"

#define NDEBUG
#include <assert.h>

//////////////////////////////////

#define _BUFFER_SIZE 4096*128

static unsigned n_generated = 0;
static unsigned char _generated[_BUFFER_SIZE];

static unsigned user_source = 0;
static unsigned char _source[_BUFFER_SIZE];


/////////////////////////////////

static unsigned prng_record = 0;

static unsigned prng_n_gen = 0;

static unsigned prng_buffer_size = 0;

static unsigned char * prng_generated = NULL;

void prng_expand_buffer()
{
	prng_buffer_size += _BUFFER_SIZE;
	prng_generated = realloc(prng_generated, prng_buffer_size);
	if( NULL == prng_generated ) {
		printf("alloc for recording randomness fail.\n");
		exit(-1);
	}
}

void prng_dump_set( unsigned is_record )
{
	prng_record = is_record;
}

unsigned prng_dump( unsigned char ** ptr_rnd_generated )
{
	ptr_rnd_generated[0] = prng_generated;
	return prng_n_gen;
}



//////////////////////////////////

static int fips_mode_on = 0;


static inline
void openssl_prng_bytes( unsigned char * a , unsigned _num_byte )
{
	if( 0 == fips_mode_on ) {
		fips_mode_on = FIPS_mode_set(1);
		assert( fips_mode_on );
	}
	RAND_bytes( a , _num_byte );
}


void prng_bytes( unsigned char * a , unsigned _num_byte )
{
	if( 1 == user_source ) userrand_bytes( a , _num_byte );
	else if( 2 == user_source ) openssl_prng_bytes( a , _num_byte );
	else randombytes( a , _num_byte );

	if( prng_record ) {
		while( (prng_n_gen + _num_byte) > prng_buffer_size ) prng_expand_buffer();
		memcpy( prng_generated + prng_n_gen , a , _num_byte );
		prng_n_gen += _num_byte;
	}
}

void prng_seed( const unsigned char * a , unsigned _num_byte )
{
	unsigned char entropy_input[48] = {0};

	if( 2 == user_source ) RAND_seed( a , _num_byte );
	else {
		memcpy( entropy_input , a , (_num_byte > 48 )? 48 : _num_byte );
		randombytes_init( entropy_input, NULL , 256);
	}
}


int prng_seed_file( const char * file_name )
{
	unsigned char seed[32] = {0};
	unsigned r = 0;
	if( (0 == strcmp( "/dev/random" , file_name )) && RAND_status() ) {
		RAND_bytes( seed , 32 );
		r = 32;
	} else {
		FILE * fp = fopen( file_name , "rb" );
		if( NULL == fp ) return -1;
		r = fread( seed , 1 , 32 , fp );
		fclose( fp );
	}

	prng_seed( seed , r );

	return 0;
}


///////////////////////////////////////////////////////


void userrand_bytes( unsigned char * a , unsigned _num_byte )
{
	if( user_source ) {
		for(unsigned i=0;i < _num_byte;i++) a[i] = _source[(n_generated+i)%user_source];
	}
	else RAND_bytes( a , _num_byte );

	/// record generated.
	for(unsigned i=0;i<_num_byte;i++) {
		_generated[((n_generated+i)%((unsigned)_BUFFER_SIZE))] = a[i];
	}
	n_generated = ((n_generated+_num_byte)%((unsigned)_BUFFER_SIZE));
}

int userrand_source_file( const char * file_name )
{
	FILE * fp = fopen( file_name , "rb" );
	if( NULL == fp ) return -1;

	if( 0 != strcmp( "/dev/random" , file_name ) ) {
		printf("reading randomness %d bytes from: %s", _BUFFER_SIZE , file_name );
		user_source = fread( _source , 1 , _BUFFER_SIZE , fp );
		printf(" .... %d bytes read.\n", user_source );
	}

	fclose( fp );
	return 0;
}


unsigned userrand_dump_generated( unsigned char * buffer , unsigned size_buffer )
{
	unsigned r = 0;
	for(unsigned i=0;i<n_generated;i++) {
		if( size_buffer == i ) break;
		buffer[i] = _generated[i];
		r++;
	}
	return r;
}

