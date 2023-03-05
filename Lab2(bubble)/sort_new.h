//
// Created by ilya on 15.09.22.
//

#ifndef PROFILER_SORT_H
#define PROFILER_SORT_H

void sort(){
    asm(
            "movl $-4, %ecx \n"  //-1 i
            "movl $1, %ebx \n" //bool t
            "while:\n"
            "cmpl $0, %ebx\n"
            "je continue\n"
            "addl $4, %ecx\n"  //i ++
            "xor %ebx, %ebx \n" // t = false
            "movl $-4, %edx \n" // j
            "movl n(%rip), %edi\n"
            "subl $2, %edi\n"
            "imul $4, %edi \n" // max j //(size - 2)*4 в данном случае
            "subl %ecx, %edi\n"
            "for:\n"
            "addl $4, %edx \n" // j++
            "cmpl %edi, %edx\n" //if j>max j
            "jg while\n"
            "movslq %edx, %r11 \n"
            "leaq a(%rip), %r10 \n"
            "addq %r11, %r10 \n"
            "movl (%r10), %r8d \n"
            "movl 4(%r10), %r9d \n"
            "cmpl %r8d, %r9d\n" // if a[j]> a[j+1]
            "jg for\n"
            "movl %r8d, 4(%r10) \n " //swap
            "movl %r9d, (%r10) \n"
            "addl $1, %ebx\n" //t+=1
            "jmp for\n"
            "continue:\n"
            );
}

#endif //PROFILER_SORT_H
