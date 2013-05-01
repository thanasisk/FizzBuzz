all: fizzbuzz
CC=gcc
CFLAGS=-std=c99 -Wall -c
fizzbuzz: compile 
	$(CC) fizzBuzz.o -o FizzBuzz

compile: fizzBuzz.c
	$(CC) $(CFLAGS) fizzBuzz.c
clean:
	rm -rf *.o FizzBuzz 
