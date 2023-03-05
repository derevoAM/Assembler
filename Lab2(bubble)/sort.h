void sort()
{
	asm(
        "xor %eax, %eax \n" // %eax - cycle2 counter
        "xor %edx, %edx \n" // %edx - cycle1 counter
        "xor %ecx, %ecx \n"
	"leaq a(%rip), %rbx \n"
"cycle1: \n"
        "cmpl %edx, n(%rip) \n"
        "je finish \n"
        "xor %rax, %rax \n"
        "movl n(%rip), %ecx \n" // %ecx = n - i - 1
        "subl $1, %ecx \n"
        "subl %edx, %ecx \n"
	"movl %ecx, -4(%rbp) \n"
	"movl %edx, -8(%rbp) \n"
        "cmpl %eax, %ecx \n"
        "je finish \n"
        "jmp cycle2 \n"
"cycle2: \n"
        "cltq \n"
        "movl (%rbx, %rax, 4), %ecx \n"
        "addq $1, %rax \n"
        "movl (%rbx, %rax, 4), %edx \n"
        "cmpl %edx, %ecx \n"
        "jg swap \n"
        "jmp continue \n"
"swap: \n"
        "movl %ecx, (%rbx, %rax, 4) \n"
        "subq $1, %rax \n"
        "movl %edx, (%rbx, %rax, 4) \n"
        "jmp continue \n"
"continue: \n"
        "movl -4(%rbp), %ecx \n"
        "addl $1, %eax \n"
        "cmpl %eax, %ecx \n"
        "je increment \n"
        "jmp cycle2 \n"

"increment: \n"
	"movl -8(%rbp), %edx \n"
        "addl $1, %edx \n"
        "jmp cycle1 \n"


"finish: \n");

}
