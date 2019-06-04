CC=gcc
CFLAGS+=-g -O3
CPPFLAGS+=-I. -Isha3 -DMUL_M4RI

SOURCES=$(filter-out randomness.c benchmarks.c, $(wildcard *.c)) $(wildcard sha3/*.c)

EXECUTABLE_BENCHMARKS= benchmarks

LIBPICNIC= libpicnic.a

all: $(LIBPICNIC) $(SOURCES) $(EXECUTABLE_BENCHMARKS)

$(EXECUTABLE_BENCHMARKS): $(EXECUTABLE_BENCHMARKS).c $(LIBPICNIC) randomness.c
	$(CC) $(CPPFLAGS) $(CFLAGS) $(LDFLAGS) $^ -o $@

.c.o:
	$(CC) -c $(CPPFLAGS) $(CFLAGS) $< -o $@

$(LIBPICNIC): $(SOURCES:.c=.o)
	ar rcs $@ $^

clean:
	rm -f $(wildcard *.o) $(wildcard sha3/*.o) $(LIBPICNIC) $(EXECUTABLE_BENCHMARKS)
