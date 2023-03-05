#include <stdio.h>

unsigned int a = 4294967298;
//int a = 2147483647;
int b[32];
int c;

void bit()
{	
	printf("%u \n", a);	
	for(int i = 0; i < 32; i ++)
	{
		asm(
		"movq $1, %rax \n"
		"andq a(%rip), %rax \n"
		"movq %rax, c(%rip) \n"
		"shrq $1, a(%rip) \n"
		);
		b[31 - i] = c;
	}
	for(int i = 0; i < 32; i ++)
	{
		printf("%d", b[i]);
	}	
}

int main()
{
	bit();
}
