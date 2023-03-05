#include <iostream>

class My_class
{
public:
	static int Static_member;
	static void change(){Static_member = 500000;}

};

//int My_class::Static_member = 10;

int main()
{
	My_class abba;
	abba.Static_member = 10;
	abba.change();
	std::cout << abba.Static_member;
}
