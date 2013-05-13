#include <stdio.h>

void fizzBuzz(int start, int end) {
	/* -std=c99 FTW! */
	for (int i=start; i <= end; i++) {
		if (i % 3 == 0)
			printf("Fizz");
		if (!(i % 5))
			printf("Buzz");
		if ((i%3) && (i%5))
			printf("%d", i);
		printf("\n");
	}	
}
