	.file	"5.cpp"
	.text
	.section	.rodata
	.align 4
	.type	_ZL1n, @object
	.size	_ZL1n, 4
_ZL1n:
	.long	10000000
	.text
	.globl	_Z4func1A
	.type	_Z4func1A, @function
_Z4func1A:
.LFB0:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	$0, -4(%rbp)
.L3:
	cmpl	$9999999, -4(%rbp)
	jg	.L4
	movl	-4(%rbp), %eax
	leal	-1(%rax), %edx
	movl	-4(%rbp), %eax
	cltq
	movl	%edx, 16(%rbp,%rax,4)
	movl	-4(%rbp), %eax
	cltq
	leaq	10000000(%rax), %rdx
	movl	-4(%rbp), %eax
	movl	%eax, 16(%rbp,%rdx,4)
	addl	$1, -4(%rbp)
	jmp	.L3
.L4:
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE0:
	.size	_Z4func1A, .-_Z4func1A
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
	leaq	-79998976(%rsp), %r11
.LPSRL0:
	subq	$4096, %rsp
	orq	$0, (%rsp)
	cmpq	%r11, %rsp
	jne	.LPSRL0
	subq	$1024, %rsp
	subq	$80000000, %rsp
	movq	%rsp, %rax
	movq	%rax, %rcx
	leaq	-80000000(%rbp), %rax
	movl	$80000000, %edx
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	memcpy@PLT
	call	_Z4func1A
	addq	$80000000, %rsp
	movl	$0, %eax
	leave
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
