CC=gcc
CFLAGS= -I/usr/local/include/ -I/usr/local/lib/ -I/usr/local/lib/XKCP/ -I/usr/local/lib/XKCP/libkeccak.a.headers/ # point this and the one below to wherever the keccak code package is located
LFLAGS= -L/usr/local/include/ -L/usr/local/lib/ -L/usr/local/lib/XKCP/ -lkeccak -lcrypto    

IMPLEMENTATION_SOURCE = Bitcontainer.c F8Field.c F16Field.c F32Field.c F48Field.c F64Field.c F80Field.c LUOV.c LinearAlgebra.c buffer.c keccakrng.c rng.c intermediateValues.c sign.c
IMPLEMENTATION_HEADERS= Bitcontainer.h F8Field.h F16Field.h F32Field.h F48Field.h F64Field.h F80Field.h LUOV.h LinearAlgebra.h buffer.h keccakrng.h rng.h intermediateValues.h api.h parameters.h 

kat: $(KAT_HEADERS) $(KAT_SOURCES) benchmarks.c
	gcc -o benchmarks $(IMPLEMENTATION_SOURCE) benchmarks.c $(CFLAGS) $(LFLAGS) -DKAT

.PHONY: clean
clean:
	rm -f test benchmarks *.txt
