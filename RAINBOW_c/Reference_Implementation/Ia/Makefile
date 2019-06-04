CC=    gcc
CXX=   g++
LD=    gcc


#PROJ = amd64
#PROJ = Ia



CFLAGS= -O2 -Wall -Wextra 
INCPATH= -I/usr/local/include -I/opt/local/include -I/usr/include
LDFLAGS=
LIBPATH= -L/usr/local/lib -L/opt/local/lib -L/usr/lib
LIBS=    -lcrypto


SRCS = $(wildcard *.c)
SRCS_O = $(SRCS:.c=.o)

OBJ = $(SRCS_O) utils.o

EXE= benchmarks












.PHONY: all tests tables clean

all: $(OBJ) $(EXE)


#%-test: $(OBJ) %-test.o
#	$(LD) $(LDFLAGS) $(LIBPATH) -o $@ $^ $(LIBS)

#%-benchmark: $(OBJ) %-benchmark.o
#	$(LD) $(LDFLAGS) $(LIBPATH) -o $@ $^ $(LIBS)

benchmarks: $(OBJ) benchmarks.o
	$(LD) $(LDFLAGS) $(LIBPATH) -o $@ $^ $(LIBS)

%.o: %.c
	$(CC) $(CFLAGS) $(INCPATH) -c $<

%.o: common/%.c
	$(CC) $(CFLAGS) $(INCPATH) -c $<


%.o: %.cpp
	$(CXX) $(CXXFLAGS) $(INCPATH) -c $<

tests:
	cd tests; make

tables:
	cd supplement; make

clean:
#	rm *.o *-test *-benchmark rainbow-genkey rainbow-sign rainbow-verify PQCgenKAT_sign;
	rm *.o benchmarks


