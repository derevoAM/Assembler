#include <cstdlib>
#include <math.h>
#include <stdio.h>
#include <time.h>
#include <fstream>
using namespace std;

int main(int argc, char** argv)
{
    //std::ofstream ofs ("num21.txt", std::ofstream::out);
    float x, y;
    //unsigned long long int count = 0;

    srand(time(NULL));
    for(int j = 1000000; j < 100000000; j += 1000000)
    {
        unsigned long long int count = 0;
        for(int i = 0; i < j; i ++)
        {
            x = rand() / (float) RAND_MAX;
            x = x * 2 - 1;
            y = rand() / (float) RAND_MAX;
            y = y * 2 - 1;
            if((x * x + y * y) < 1) count ++;
        }
        //printf("%f", j);
        /*ofs << */printf ("%f\n", (float)count / ((float) j) * 4.0);
    }
}
