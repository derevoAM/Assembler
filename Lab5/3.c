#include <stdio.h>

float a = 300000000000000000000000000000000000000.0;
//double a = 1.5;
int c;
int b[sizeof(a) * 8];

void bit()
{
        printf("%.30f \n", a);
        for(int i = 0; i < sizeof(a) * 8; i ++)
        {
                asm(
                "movq $1, %rax \n"
                "andq a(%rip), %rax \n"
                "movq %rax, c(%rip) \n"
                "shrq $1, a(%rip) \n"
                );
                b[sizeof(a) * 8 - i - 1] = c;
        }
        for(int i = 0; i < sizeof(a) * 8; i ++)
        {
                if(sizeof(a) == 4 && (i == 0 || i == 8)) printf("%d ", b[i]);
                else if(sizeof(a) == 8 && (i == 0 || i == 11)) printf("%d ", b[i]);
                else printf("%d", b[i]);
        }
}

int main()
{
       float d = 1073741824.0;
       d += 1.0;
       printf("%f", d);
       //bit();
}

