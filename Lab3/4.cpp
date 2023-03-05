#include <stdio.h>

struct A{
        int a;
        double b;
        char c;
        int arr[3];
};

void func(A &s)
{
        s.a += 2;
        s.c = 'q';
        s.arr[0] = 90;
        s.arr[1] += 1;
}

int main()
{
        A s1;
        s1.a = 4;
        s1.c = 'w';
        s1.arr[1] = 9;
	func(s1);
	printf("%d", s1.a);
}

