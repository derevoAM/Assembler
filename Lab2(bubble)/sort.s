	.file	"sort.c"
	.text
	.globl	arr
	.data
	.align 32
	.type	arr, @object
	.size	arr, 40
arr:
	.long	20
	.long	8
	.long	7
	.long	6
	.long	5
	.long	4
	.long	3
	.long	2
	.long	1
	.long	0
	.globl	n
	.align 4
	.type	n, @object
	.size	n, 4
n:
	.long	10
	.globl	x
	.bss
	.align 4
	.type	x, @object
	.size	x, 4
x:
	.zero	4
	.globl	a
	.data
	.align 4
	.type	a, @object
	.size	a, 4
a:
	.long	3
	.globl	b
	.align 4
	.type	b, @object
	.size	b, 4
b:
	.long	2
	.globl	c
	.bss
	.align 4
	.type	c, @object
	.size	c, 4
c:
	.zero	4
	.text
	.globl	sort
	.type	sort, @function
sort:
.LFB0:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
#APP
# 12 "sort.c" 1
	xor %eax, %eax 
xor %edx, %edx 
xor %ecx, %ecx 
subl $1, %ecx 
cycle1: 
addl $1, %edx 
cmpl %edx, a(%rip) 
je finish 
xor %rax, %rax 
movl n(%rip), %ecx 
subl $1, %ecx 
subl %edx, %ecx 
cycle2: 
movl %ecx, -4(%rbp) 
xor %ecx, %ecx 
movl %edx, -8(%rbp) 
xor %edx, %edx 
leaq arr(%rip), %rbx 
cltq 
movq (%rbx, %rax, 4), %rcx 
addq $1, %rax 
movq (%rbx, %rax, 4), %rdx 
cmpq %rdx, %rcx 
jg swap 
jmp continue 
swap: 
movl %ecx, (%rbx, %rax, 4) 
subq $1, %rax 
movl %edx, (%rbx, %rax, 4) 
xor %rbx, %rbx 
continue: 
xor %ecx, %ecx 
xor %edx, %edx 
movl -4(%rbp), %ecx 
movl -8(%rbp), %edx 
addl $1, %eax 
cmpl %eax, %ecx 
je cycle1 
jmp cycle2 
finish: 

# 0 "" 2
#NO_APP
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE0:
	.size	sort, .-sort
	.globl	main
	.type	main, @function
main:
.LFB1:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	$0, %eax
	call	sort
	movl	$0, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1:
	.size	main, .-main
	.ident	"GCC: (Ubuntu 9.4.0-1ubuntu1~20.04.1) 9.4.0"
	.section	.note.GNU-stack,"",@progbits
	.section	.note.gnu.property,"a"
	.align 8
	.long	 1f - 0f
	.long	 4f - 1f
	.long	 5
0:
	.string	 "GNU"
1:
	.align 8
	.long	 0xc0000002
	.long	 3f - 2f
2:
	.long	 0x3
3:
	.align 8
4:
