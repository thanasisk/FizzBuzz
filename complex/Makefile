all: lib
CC=gcc
CFLAGS=-std=c99 -Wall -fpic -c
SHFLAGS=-shared -Wl,-soname,fizzbuzz.so.1 -o fizzbuzz.so.1.0 *.o
lib: compile 
	$(CC) $(SHFLAGS)

compile: fizzBuzz.c
	$(CC) $(CFLAGS) fizzBuzz.c
clean:
	rm -rf *.o fizzbuzz.so.1.0 
