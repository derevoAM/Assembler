#include <stdio.h>


int arr[10] = {20, 8, 7, 6, 5, 4, 3, 2, 1, 0};
int n = 10;
int x = 0, a = 2, b = 9, c = 0;

void sort()
{
//	printf("%d", arr[0]);
  //      printf(" %d", arr[1]);
	asm(
	"xor %eax, %eax \n" // %eax - cycle2 counter
	"xor %edx, %edx \n" // %edx - cycle1 counter
	"xor %ecx, %ecx \n"
"cycle1: \n"
//	"cmpl %edx, n(%rip) \n"
	"cmpl %edx, n(%rip) \n"
	"je finish \n"
	"xor %rax, %rax \n"
	"movl n(%rip), %ecx \n" // %ecx = n - i - 1
        "subl $1, %ecx \n"
	"subl %edx, %ecx \n"
	"cmpl %eax, %ecx \n"
	"je finish \n"
	"jmp cycle2 \n"
"cycle2: \n"
	"movl %ecx, -4(%rbp) \n"
	"xor %ecx, %ecx \n"
	"movl %edx, -8(%rbp) \n"
//	"cmpl %edx, b(%rip) \n" // costyl
//        "je finish \n"
	"xor %edx, %edx \n"
	"leaq arr(%rip), %rbx \n"
	"cltq \n"
	"movl (%rbx, %rax, 4), %ecx \n"
	"addq $1, %rax \n"
	"movl (%rbx, %rax, 4), %edx \n"
	"cmpl %edx, %ecx \n"
	"jg swap \n"
	"jmp continue \n"
"swap: \n"
	"movl %ecx, (%rbx, %rax, 4) \n"
	"subq $1, %rax \n"
	"movl %edx, (%rbx, %rax, 4) \n"
	"xor %rbx, %rbx \n"
	"jmp continue \n"
"continue: \n"
	"xor %ecx, %ecx \n"
	"xor %edx, %edx \n"
	"movl -4(%rbp), %ecx \n"
	"movl -8(%rbp), %edx \n"
	"addl $1, %eax \n"
	"cmpl %eax, %ecx \n"
	"je increment \n"
	"jmp cycle2 \n"

"increment: \n"
	"addl $1, %edx \n"
	"jmp cycle1 \n"


"finish: \n"	
	);
	printf("%d\n", n);
	printf("c: %d\n", c);	
	for(int i = 0; i < n; i ++)
	{
		printf(" %d", arr[i]);
	}
	
}

int main()
{
	sort();
}
