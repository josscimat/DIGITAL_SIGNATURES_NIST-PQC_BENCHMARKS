CC = /usr/bin/gcc
CFLAGS = -O3 -march=native -fomit-frame-pointer #-Wall -Wextra 
LDFLAGS=-lm -L/usr/lib/ -lssl -lcrypto 

SOURCE = sign.c cpucycles.c rng.c consts.c sample.c oracle.c poly.c 
SOURCE += sha3/fips202.c

HEADER = api.h rng.h params.h sample.h oracle.h sha3/fips202.h

all: benchmarks 

benchmarks: $(SOURCE) $(HEADER) benchmarks.c rng.c 
	$(CC) $(CFLAGS) $(SOURCE) benchmarks.c $(LDFLAGS) -o $@

.PHONY: clean

clean:
	-rm benchmarks
