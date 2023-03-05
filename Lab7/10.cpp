#include <iostream>

template <typename T>
T sum(T a, T b)
{
	return a + b;
}

int main()
{
	int a = sum(2, 3);
	float b = sum(1.2, 3.4);
}
