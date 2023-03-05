#include <stdio.h>
#include <xmmintrin.h>

//_mm_setcsr(_mm_getcsr() | 0x8040);

int main()
{
	_mm_setcsr(_mm_getcsr() | 0x8040);
	float a = 1.0;
	for(int i = 0; i < 130; i ++) a /= 2;
	printf("%.50f", a);
}
