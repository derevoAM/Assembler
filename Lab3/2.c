#include <stdio.h>
#include <stdlib.h>

int main()
{
	int* p = (int*)malloc(sizeof(int)*10);
	p[9] = 15;
	free(p);
}
