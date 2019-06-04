LDFLAGS =  -L/usr/local/lib -L/usr/local/lib/XKCP
CFLAGS = -I/usr/local/include
LIBFLAGS = -lcrypto -lkeccak -lm
CC = gcc
CFILES := $(shell find . -name '*.c' | sed -e 's/\.c/\.o/')

OBJS = ${CFILES}

benchmarks: ${OBJS}
	$(CC) $(LDFLAGS) $(CFLAGS) -o $@ $^ $(LIBFLAGS)

%.o : %.c
	$(CC) $(CFLAGS) -o $@ -c $< 

rng.o : rng.h
api.o : api.h

clean:
	rm -f benchmarks *.o

