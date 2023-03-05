#include <iostream>

enum planes{Boeing, Airbus, Embraer, Bombardier};

int main()
{
	planes plane_1 = Airbus;
	planes plane_2 = Boeing;
	std::cout << plane_2;
}
