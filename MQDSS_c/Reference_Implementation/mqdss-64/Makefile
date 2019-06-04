CC=/usr/bin/gcc
LDFLAGS=-lcrypto

SOURCES= fips202.c gf31.c mq.c benchmarks.c rng.c sign.c
HEADERS= api.h fips202.h gf31.h mq.h params.h rng.h

benchmarks: $(HEADERS) $(SOURCES)
	$(CC) -o $@ $(SOURCES) $(LDFLAGS)

.PHONY: clean

clean:
	-rm benchmarks

