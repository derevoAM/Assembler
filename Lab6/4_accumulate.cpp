#include <iostream>
#include <thread>
#include <chrono>
#include <fstream>
#include <random>

//float tot = 0.0f;

void sum(float *arr, int init, int n, float &tot)
{
	for(int i = 0; i < n; i ++) tot += arr[init + i];
}

void basic()
{
        std::ofstream out;
        out.open("accumulate_O2.txt");
        std::chrono::steady_clock::time_point begin, end;
        for(int i = 16; i <= 8000000; i += 2000)
        {
                float *arr = new float[i];
		        //float tot1 =  0.0f, tot2 = 0.0f, tot3 = 0.0f, tot4 = 0.0f, tot5 =  0.0f, tot6 = 0.0f, tot7 = 0.0f, tot8 = 0.0f;
                float tot = 0.0f;
                for(int j = 0; j < i; j ++)
                {
                        arr[j] = static_cast <float> (rand()) / static_cast <float> (RAND_MAX);
                }
                //std::this_thread::sleep_for(std::chrono::milliseconds(10));

		        float mean = 0.0f;

                begin = std::chrono::steady_clock::now();   // start
                mean = (std::accumulate(arr, arr+i, 0.0f)) / i;

                auto it = std::lower_bound(begin(arr), end(arr), i);

                  // compute the distance (number of items skipped)
                auto index = std::distance(begin(arr), it);

                  // do the sum
                float result = index*k + p_sums[index];
                  return result;
                end = std::chrono::steady_clock::now();     // finish

                std::cout << mean << "\n";             // строчка, чтобы все работало////////////////////////////////////////////////////////////////////
                delete [] arr;
                out << i << " " << std::chrono::duration_cast<std::chrono::microseconds>(end - begin).count() << "\n";
        }
}

int main()
{
	basic();
}
