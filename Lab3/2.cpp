int main()
{
	int *p = new int[14];
	p[1] = 15;
	delete[] p;
}
