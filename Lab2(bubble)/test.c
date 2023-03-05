#include <stdio.h>

int arr[10] = {1, 2, 3, 4, 5, 6, 7, 8, 9, 0};
int n = 10;
int x = 0;
void sort()
{
//	printf("%d", x);
	for(int i = 0; i < n; i ++)
	{
		int b = i;
		arr[i] = b;
		printf(" %d", arr[i]);
	}
}

int main()
{
	sort();	
}
