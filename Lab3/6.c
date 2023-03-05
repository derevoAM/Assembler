const int n = 100000;

int recursion(int a)
{
        int arr[n];
        arr[4] = a;
        if(arr[4] < 19)
        {
                return recursion(arr[4] + 1);
        }
        else return arr[4];
}

int main()
{
        int c = recursion(0);
}

