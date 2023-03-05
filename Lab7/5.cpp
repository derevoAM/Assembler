#include <iostream>

class My_Class {
private:
	int private_ = 1111111;
protected:
	int protected_ = 2222222;
public:
        int public_ = 333333;

	void my_print()
	{
		private_ = 10;
		protected_ = 20;
		public_ = 30;
	}
};

int main() {
        My_Class obj_1;
        //std::cout << obj.a << "\n";
        obj_1.my_print();
	//int a = obj_1.public_;
        //int b = obj_1.var_a;
        //std::cout << obj.a << "\n";
}
