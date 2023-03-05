#include <cstdlib>
#include <math.h>
#include <stdio.h>
#include <time.h>
#include <fstream>
#include <iostream>
#include <chrono>


int main(int argc, char** argv)
{
    //std::ofstream ofs ("num21.txt", std::ofstream::out);
    int z = 0;
    int n1 = 0, n2 = 0, n3 = 0, n4 = 0, n5 = 0, n6 = 0, n7 = 0, n8 = 0, n9 = 0, n10 = 0;
    unsigned long long count = 0;
    double pi = 2.0;
    std::chrono::steady_clock::time_point begin, end;
    begin = std::chrono::steady_clock::now();
    int pow = 2;
    double x, y;
    for(unsigned long long int j = 1; j < 100000000000; j ++)
    {
        srand(time(NULL));
        x = rand() / (double) RAND_MAX;
        x = x * 2 - 1;
        y = rand() / (double) RAND_MAX;
        y = y * 2 - 1;
        pi = (double)count / ((double) j) * 4.0;
        if((x * x + y * y) < 1) count ++;
        if(abs(pi - 3.1) < 0.1)
        {
            if(abs(pi - 3.14) < 0.01)
            {
                if(abs(pi - 3.141) < 0.001)
                {
                    if(abs(pi - 3.1415) < 0.0001)
                    {
                        if(abs(pi - 3.14159) < 0.00001)
                        {
                            if(abs(pi - 3.141592) < 0.000001)
                            {
                                if(abs(pi - 3.1415926) < 0.0000001)
                                {

                                    if(abs(pi - 3.14159265) < 0.00000001)
                                    {
                                        if(abs(pi - 3.141592653) < 0.000000001)
                                        {
                                            if(abs(pi - 3.1415926535) < 0.0000000001)
                                            {
                                                if(abs(pi - 3.14159265355) < 0.00000000001)
                                                {

                                                }
                                                else if(n10 == 0)
                                                {
                                                        n10 = 1;
                                                        end = std::chrono::steady_clock::now();
                                                        printf("10 sign%ld\n", std::chrono::duration_cast<std::chrono::microseconds>(end - begin).count());
                                                }
                                            }
                                            else if(n9 == 0)
                                            {
                                                    n9 = 1;
                                                    end = std::chrono::steady_clock::now();
                                                    printf("9 sign%ld\n", std::chrono::duration_cast<std::chrono::microseconds>(end - begin).count());
                                            }
                                        }
                                        else if(n8 == 0)
                                        {
                                                n8 = 1;
                                                end = std::chrono::steady_clock::now();
                                                printf("8 sign%ld\n", std::chrono::duration_cast<std::chrono::microseconds>(end - begin).count());
                                        }
                                    }
                                    else if(n7 == 0)
                                    {
                                            n7 = 1;
                                            end = std::chrono::steady_clock::now();
                                            printf("7 sign%ld\n", std::chrono::duration_cast<std::chrono::microseconds>(end - begin).count());
                                    }
                                }
                                else if(n6 == 0)
                                {
                                        n6 = 1;
                                        end = std::chrono::steady_clock::now();
                                        printf("6 sign%ld\n", std::chrono::duration_cast<std::chrono::microseconds>(end - begin).count());
                                }
                            }
                            else if(n5 == 0)
                            {
                                    n5 = 1;
                                    end = std::chrono::steady_clock::now();
                                    printf("5 sign%ld\n", std::chrono::duration_cast<std::chrono::microseconds>(end - begin).count());
                            }
                        }
                        else if(n4 == 0)
                        {
                            n4 = 1;
                            end = std::chrono::steady_clock::now();
                            printf("4 sign%ld\n", std::chrono::duration_cast<std::chrono::microseconds>(end - begin).count());
                        }
                    }
                    else if(n3 == 0)
                    {
                            n3 = 1;
                            end = std::chrono::steady_clock::now();
                            printf("3 sign%ld\n", std::chrono::duration_cast<std::chrono::microseconds>(end - begin).count());
                    }
                }
                else if(n2 == 0)
                {
                        n2 = 1;
                        end = std::chrono::steady_clock::now();
                        printf("2 sign%ld\n", std::chrono::duration_cast<std::chrono::microseconds>(end - begin).count());
                }
            }
            else if(n1 == 0)
            {
                n1 = 1;
                end = std::chrono::steady_clock::now();
                printf("1 sign%ld\n", std::chrono::duration_cast<std::chrono::microseconds>(end - begin).count());
            }
        }
	//printf("%.15f\n", pi);
    }
}
