#include <iostream>

#include <xmmintrin.h>

int main()
{
	_mm_setcsr(_mm_getcsr() | 0x8040);
	double a = 1;
	int i = 0;
	while(a > 0)
	{
		a /= 2;
		i += 1;
		std::cout << a << "\n";
	}
	printf("%d", i);	
}
