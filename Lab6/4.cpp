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
        out.open("threads_O2.txt");
        std::chrono::steady_clock::time_point begin, end;
        for(int i = 16; i <= 2000000; i += 10000)
        {
                float *arr = new float[i];
		        float tot1 =  0.0f;
                for(int j = 0; j < i; j ++)
                {
                        arr[j] = static_cast <float> (rand()) / static_cast <float> (RAND_MAX);
                }

                float mean = 0.0f;
                begin = std::chrono::steady_clock::now();


		        //std::thread first (sum, arr, 0, i, std::ref(tot1));
                //std::this_thread::sleep_for(std::chrono::milliseconds(10));
		        sum(arr, 0, i, tot1);

                //first.join();

                mean = tot1 / i;
                end = std::chrono::steady_clock::now();     // finish
                std::cout << mean << "\n";             // строчка, чтобы все работало////////////////////////////////////////////////////////////////////
                delete [] arr;
                out << i << " " << std::chrono::duration_cast<std::chrono::microseconds>(end - begin).count() << "\n";
        }

        /*for(int i = 2000000; i <= 4000000; i += 10000)
        {
                float *arr = new float[i];
		        float tot1 =  0.0f, tot2 = 0.0f;
                for(int j = 0; j < i; j ++)
                {
                        arr[j] = static_cast <float> (rand()) / static_cast <float> (RAND_MAX);
                }

                float mean = 0.0f;
                begin = std::chrono::steady_clock::now();


		        std::thread first (sum, arr, 0, i / 2, std::ref(tot1));
                std::thread second (sum, arr, i / 2, i / 2, std::ref(tot2));
                //std::this_thread::sleep_for(std::chrono::milliseconds(10));


                first.join();
                second.join();

                mean = (tot1 + tot2) / i;
                end = std::chrono::steady_clock::now();     // finish
                std::cout << mean << "\n";             // строчка, чтобы все работало////////////////////////////////////////////////////////////////////
                delete [] arr;
                out << i << " " << std::chrono::duration_cast<std::chrono::microseconds>(end - begin).count() << "\n";
        }*/

        for(int i = 2000000; i <= 6000000; i += 10000)
        {
                float *arr = new float[i];
		        float tot1 =  0.0f, tot2 = 0.0f, tot3 = 0.0f, tot4 = 0.0f;
                for(int j = 0; j < i; j ++)
                {
                        arr[j] = static_cast <float> (rand()) / static_cast <float> (RAND_MAX);
                }

                float mean = 0.0f;
                begin = std::chrono::steady_clock::now();

		        std::thread first (sum, arr, 0, i / 8, std::ref(tot1));
                std::thread second (sum, arr, i / 8, i / 8, std::ref(tot2));
                std::thread third (sum, arr, i / 4, i / 8, std::ref(tot3));
                std::thread fourth (sum, arr, 3 * i / 8, i / 8, std::ref(tot4));
                //std::this_thread::sleep_for(std::chrono::milliseconds(10));


                first.join();
                second.join();
                third.join();
                fourth.join();

                mean = (tot1 + tot2 + tot3 + tot4) / i;
                end = std::chrono::steady_clock::now();     // finish
                std::cout << mean << "\n";             // строчка, чтобы все работало////////////////////////////////////////////////////////////////////
                delete [] arr;
                out << i << " " << std::chrono::duration_cast<std::chrono::microseconds>(end - begin).count() << "\n";
        }

        for(int i = 6000000; i <= 8000000; i += 10000)
        {
                float *arr = new float[i];
		        float tot1 =  0.0f, tot2 = 0.0f, tot3 = 0.0f, tot4 = 0.0f, tot5 =  0.0f, tot6 = 0.0f, tot7 = 0.0f, tot8 = 0.0f;
                for(int j = 0; j < i; j ++)
                {
                        arr[j] = static_cast <float> (rand()) / static_cast <float> (RAND_MAX);
                }

                float mean = 0.0f;
                begin = std::chrono::steady_clock::now();

		        std::thread first (sum, arr, 0, i / 8, std::ref(tot1));
                std::thread second (sum, arr, i / 8, i / 8, std::ref(tot2));
                std::thread third (sum, arr, i / 4, i / 8, std::ref(tot3));
                std::thread fourth (sum, arr, 3 * i / 8, i / 8, std::ref(tot4));
                std::thread five (sum, arr, i / 2, i / 8, std::ref(tot5));
                std::thread six (sum, arr, 5 * i / 8, i / 8, std::ref(tot6));
                std::thread seven (sum, arr, 6 * i / 8, i / 8, std::ref(tot7));
                std::thread eight (sum, arr, 7 * i / 8, i / 8, std::ref(tot8));
                //std::this_thread::sleep_for(std::chrono::milliseconds(10));


                first.join();
                second.join();
                third.join();
                fourth.join();
                five.join();
                six.join();
                seven.join();
                eight.join();

                mean = (tot1 + tot2 + tot3 + tot4 + tot5 + tot6 + tot7 + tot8) / i;
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
