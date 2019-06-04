LOCAL="/usr/local"

HEAD=$(wildcard include/*.h*)
SRC=$(wildcard src/*.c*)
OBJS=$(SRC:.c*=.o)

CC=g++
LDFLAGS=-lntl -lgmp -lgf2x -lkeccak -lcrypto -ldl -lpthread
CFLAGS=-ansi -Wall -O4 -mavx2 -mpclmul -Iinclude/ -I$(LOCAL)/include -L$(LOCAL)/lib -L$(LOCAL)/lib/XKCP -I$(LOCAL)/lib/XKCP

all : benchmarks


benchmarks : $(OBJS)
	$(CC) $(CFLAGS) -o $@ $^ $(LDFLAGS)
%.o : %.c*
	$(CC) $(CFLAGS) -o $@ -c $<


clean:
	rm -f benchmarks *.int
