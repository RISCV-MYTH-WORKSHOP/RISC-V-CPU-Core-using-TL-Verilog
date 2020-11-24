#include <stdio.h>
#include <math.h>

int main()
{
	unsigned long long int max = (unsigned long long int) (pow(2,64) - 1);
	printf("The highest number that can be represented by unsigned long lomg int is: %llu\n", max);
	return 0;
}