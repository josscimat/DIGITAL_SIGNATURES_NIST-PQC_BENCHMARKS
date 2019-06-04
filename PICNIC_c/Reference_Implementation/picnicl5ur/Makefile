
CC=gcc
WARNING_FLAGS=-Wall -Wextra -Wpedantic
CFLAGS= -O2 -march=native $(WARNING_FLAGS) -std=gnu99 -D__LINUX__ -D__X64__ -I./sha3
CFLAGS_DEBUG= -g -march=native $(WARNING_FLAGS) -std=gnu99 -D__LINUX__ -D__X64__ -I./sha3
NISTKATFLAGS = -Wno-sign-compare -Wno-unused-but-set-variable -Wno-unused-parameter -Wno-unused-result
SHA3LIB=libshake.a
SHA3_PATH=sha3
LDFLAGS= $(SHA3_PATH)/$(SHA3LIB) 

SOURCES= picnic_impl.c picnic.c lowmc_constants.c
PICNIC_OBJECTS= picnic_impl.o picnic.o lowmc_constants.o hash.o picnic_types.o api.o 
PICNIC_LIB= libpicnic.a
EXECUTABLE_BENCHMARKS= benchmarks
RNG_NISTKAT= rng.o

all: $(SHA3LIB) $(SOURCES) $(PICNIC_LIB) $(EXECUTABLE_BENCHMARKS) 

$(SHA3LIB):
		$(MAKE) -C $(SHA3_PATH) 

# debug build
debug: CFLAGS = $(CFLAGS_DEBUG)
debug: all

$(EXECUTABLE_BENCHMARKS): $(RNG_NISTKAT) $(PICNIC_LIB)
		$(CC) $@.c $(CFLAGS) $(NISTKATFLAGS) -I. $(PICNIC_LIB) -o $@ $(LDFLAGS) -lssl -lcrypto

.c.o: 
	    $(CC) -c $(CFLAGS) $< -o $@

$(PICNIC_LIB): $(PICNIC_OBJECTS)
	ar rcs $@ $^


docs:
	doxygen docs/doxygen.cfg

.PHONY: docs

clean:
	    rm *.o 2>/dev/null || true
	    rm *.exe 2>/dev/null || true
	    rm $(EXECUTABLE_BENCHMARKS) 2>/dev/null || true
		rm $(PICNIC_LIB) 2>/dev/null || true
		$(MAKE) -C $(SHA3_PATH) clean

	
