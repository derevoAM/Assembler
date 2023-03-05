        .globl  sum
        .type   sum, @function
sum:
        endbr32
        pushl   %ebp
        movl    %esp, %ebp
        call    __x86.get_pc_thunk.ax
        addl    $_GLOBAL_OFFSET_TABLE_, %eax
        movl    8(%ebp), %edx
        movl    12(%ebp), %eax
        addl    %edx, %eax
        popl    %ebp
        ret

