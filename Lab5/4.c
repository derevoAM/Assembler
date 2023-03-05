#include <stdio.h>

int main()
{
	float a = 1.3, b = 0.3, c = 0.4, d = 0.6, e = 3.0;
	printf("a*(b-c)!=a*b-a*c: %.10f != ", a * (b - c));
	printf("%.10f\n", a * b - a * c);
	printf("a/e*b*c)!=a*b*c/e: %.10f != ", a / e * b * c);
        printf("%.10f\n", a * b * c / e);

}
