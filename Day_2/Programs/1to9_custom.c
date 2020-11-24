#include <stdio.h>

extern int load (int x, int y);

int main()
{
	int result = 0;
	int count = 9;
	result = load(0x0, count+1);  // These are the two numbers which we are going to pass to the assembly language program through this particular function - Function call
	printf("Sum of number from 1 to %d is %d\n", count, result);
}