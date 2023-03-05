#include <iostream>
#include <chrono>
#include <xmmintrin.h>

int main()
{
	double a = 1, b = 0.25;
	for(int i = 0; i < 1050; i ++)
	{
		a /= 2;
		b /= 2;
	}
	double c;
	std::cout << a << " " << b << "\n";
	std::chrono::steady_clock::time_point begin = std::chrono::steady_clock::now();
	for(int i = 0; i < 100000; i ++) a += b;
	std::cout << a << "\n";
	std::chrono::steady_clock::time_point end = std::chrono::steady_clock::now();
	std::cout << "Time difference for denormaized numbers = " << std::chrono::duration_cast<std::chrono::nanoseconds> (end - begin).count() << "[ns]" << std::endl;

	_mm_setcsr(_mm_getcsr() | 0x8040);	
	double d = 0.15, f = 3.24, e;
	std::chrono::steady_clock::time_point begin2 = std::chrono::steady_clock::now();
        for(int i = 0; i < 100000; i ++) d += f;
        std::chrono::steady_clock::time_point end2 = std::chrono::steady_clock::now();
        std::cout << "Time difference for normalized numbers = " << std::chrono::duration_cast<std::chrono::nanoseconds> (end2 - begin2).count() << "[ns]" << std::endl;
}
