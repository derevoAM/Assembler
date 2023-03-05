#include <iostream>

float result[4] = {0.0f};
float test[3] = {1, 2, 3};

int main()
{
	float *arr = new float[7];
	for(int i = 0; i < 7; i ++) arr[i] = 1;
	/*
	for(int i = 0; i < 2; i ++){
	asm(
	"movss (%rax), %xmm0 \n"

	"movups , %xmm0 \n"
	"movups result(%rip), %xmm1 \n"
	"addps %xmm1, %xmm0 \n"
	"movups %xmm0, result(%rip) \n"
	"movq $4, %r10 \n"
	"leaq (,%r10,4), %rdx \n"
	"addq %rdx, %rax \n"
	);
	for(int j = 0; j < 4; j ++)
	{
		std::cout << result[j] << " ";
	}
	std::cout << "\n";
	}*/
	asm(
	"movl (%rax), %edx \n"
//	"shl $32, %rdx \n"
//	"addq $4, %rax \n"
//	"movl (%rax), %edx \n"
	"movss $3, %xmm0 \n"
	"movups %xmm0, result(%rip) \n"
	);
	for(int i = 0; i < 4; i ++) std::cout << result[i] << " ";
}
