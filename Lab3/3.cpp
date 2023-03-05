struct A{
	int a;
	double b;
	char c;
	int arr[3];
};

A func()
{	
	A s;
	s.a = 2;
	s.c = 'q';
	s.arr[2] = 90;
	return s;
}

int main()
{
	A s1 = func();	
}	
