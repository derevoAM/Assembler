#include <iostream>

class Animal
{
public:
	int animal_var = 0;
	virtual void print(int a) {animal_var = a;}
};

class Predator: public Animal
{
public:
	int predator_var = 0;
	virtual	void print(int a) {predator_var = 2 * a;}
};

int main()
{
	Animal *animal_predator = new Predator();
	Predator predator;
	animal_predator->print(10);
	predator.print(10);
}
