#include <iostream>

class Animal
{
public:
	int animal_legs = -10;
	int animal_tail = -10;	
};

class Predator: public Animal
{
public:
	int predator_legs = -20;
	int predator_tail = -20;
};

class Bear: public Predator
{
public:
	int bear_legs = -30;
	int bear_tail = -30;
};

int main()
{
	Bear bear;
	bear.animal_legs = 4;
	bear.predator_legs = 10;
	bear.bear_legs = 100;

}
