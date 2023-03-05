#include <stdio.h>


int func(int a, int b, int c)
{
        int res;
	res = a * b + c;
        return res;
}

int main()
{
	int x = 5, y = 3, z = 7;
        int a = func(x, y, z);
        printf("%d", a);
}

