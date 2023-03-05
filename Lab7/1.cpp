#include <iostream>

class My_Class {
public:         
	int var_a = 53455345;
	void func(){ var_a = 9999999;}
};

int main() {
	My_Class obj_1;
	//std::cout << obj.a << "\n";
	obj_1.func();
	int b = obj_1.var_a;
	//std::cout << obj.a << "\n";
}
