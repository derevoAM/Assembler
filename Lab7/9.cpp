#include<iostream>

class Complex {
private:
	int real, imag;
public:
	Complex(int r, int i): real(r), imag(i){};
	Complex operator+(Complex const &obj) {
		Complex res(0, 0);
		res.real = real + obj.real;
		res.imag = imag + obj.imag;
		return res;
	}
	void print() { std::cout << real << " + i" << imag << '\n'; }
};

int main()
{
	Complex c1(10, 5);
	Complex c2(2, 4);
	Complex c3 = c1 + c2;
	c3.print();
}

