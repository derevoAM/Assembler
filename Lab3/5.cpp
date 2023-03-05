#include <stdio.h>

const int n = 500000;
struct A{
        int arr1[n];
	int arr2[n];
};

int func(int k)
{
	A s;
        for(int i = 0; i < n; i ++)
	{
		s.arr1[i] = i - 1;
		s.arr2[i] = i;
	}
	return s.arr1[k];
}

int main()
{
        A s1;
        int n = func(348);
	printf("%d",n);
}

