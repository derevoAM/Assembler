#include <iostream>
#include <chrono>
#include <fstream>
#include <random>

void basic()
{
	std::ofstream out;
	out.open("basic_O3.txt");
	std::chrono::steady_clock::time_point begin, end;
	for(int i = 16; i <= 8000000; i += 2000)
	{
		float *arr = new float[i];
		for(int j = 0; j < i; j ++) 
		{
			arr[j] = static_cast <float> (rand()) / static_cast <float> (RAND_MAX);
			//std::cout << arr[j] << "\n";
		}
		float sum = 0.0f, mean = 0.0f;
		begin = std::chrono::steady_clock::now();   // start
		for(int j = 0; j < i; j ++) sum += arr[j];
		mean = sum / i;
		end = std::chrono::steady_clock::now();     // finish
		std::cout << mean << "\n";             // строчка, чтобы все работало////////////////////////////////////////////////////////////////////
		delete [] arr;
		out << i << " " << std::chrono::duration_cast<std::chrono::microseconds>(end - begin).count() << "\n";
	}
}

float supporting[4];
float result[4] = {0.0f};
float x = 3.0f;

/*
void SSE()
{
	std::ofstream out;
        out.open("sse.txt");
        std::chrono::steady_clock::time_point begin, end;
        for(int i = 16; i <= 8000000; i += 16)
        {
                float *arr = new float[i];
		asm("movq %rax, %r15 \n");
                for(int j = 0; j < i; j ++) arr[j] = 0.7f;
		//std::cout << arr[0] << "\n";
                float sum = 0.0f, mean = 0.0f;
                begin = std::chrono::steady_clock::now();   // start
		asm("movq %r15, %r12 \n");
                for(int j = 0; j < i; j += 4)
		{
			//std::cout << "norm\n";
			asm(
			"movq %r12, %rax \n"
			"movss (%rax), %xmm0 \n"
			"movss %xmm0, supporting(%rip) \n"
			"addq $4, %rax \n"
			"movss (%rax), %xmm0 \n"
			"movss %xmm0, 4+supporting(%rip) \n"
                        "addq $4, %rax \n"
			"movss (%rax), %xmm0 \n"
			"movss %xmm0, 8+supporting(%rip) \n"
                        "addq $4, %rax \n"
			"movss (%rax), %xmm0 \n"
			"movss %xmm0, 12+supporting(%rip) \n"
			"addq $4, %rax \n"
                        "movq %rax, %r12 \n"
			"movups supporting(%rip), %xmm0 \n"
			"movups result(%rip), %xmm1 \n"
			"addps %xmm1, %xmm0 \n"
			"movups %xmm0, result(%rip) \n"
			);
			//std::cout << result[0] << "\n";	
		}
		mean = (result[0] + result[1] + result[2] + result[3]) / i;
                end = std::chrono::steady_clock::now();     // finish
		//std::cout << mean << "\n";
                delete [] arr;
                out << i << " " << std::chrono::duration_cast<std::chrono::microseconds>(end - begin).count() << "\n";
        }

}
*/

int main()
{
	basic();
	//SSE();
}
