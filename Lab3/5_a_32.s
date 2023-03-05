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
	endbr32
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$16, %esp
	call	__x86.get_pc_thunk.ax
	addl	$_GLOBAL_OFFSET_TABLE_, %eax
	movl	$0, -4(%ebp)
.L3:
	cmpl	$9999999, -4(%ebp)
	jg	.L4
	movl	-4(%ebp), %eax
	leal	-1(%eax), %edx
	movl	-4(%ebp), %eax
	movl	%edx, 8(%ebp,%eax,4)
	movl	-4(%ebp), %eax
	leal	10000000(%eax), %edx
	movl	-4(%ebp), %eax
	movl	%eax, 8(%ebp,%edx,4)
	addl	$1, -4(%ebp)
	jmp	.L3
.L4:
	nop
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE0:
	.size	_Z4func1A, .-_Z4func1A
	.globl	main
	.type	main, @function
main:
.LFB1:
	.cfi_startproc
	endbr32
	leal	4(%esp), %ecx
	.cfi_def_cfa 1, 0
	andl	$-16, %esp
	pushl	-4(%ecx)
	pushl	%ebp
	movl	%esp, %ebp
	.cfi_escape 0x10,0x5,0x2,0x75,0
	pushl	%ebx
	pushl	%ecx
	.cfi_escape 0xf,0x3,0x75,0x78,0x6
	.cfi_escape 0x10,0x3,0x2,0x75,0x7c
	leal	-79998976(%esp), %eax
.LPSRL0:
	subl	$4096, %esp
	orl	$0, (%esp)
	cmpl	%eax, %esp
	jne	.LPSRL0
	subl	$1024, %esp
	call	__x86.get_pc_thunk.ax
	addl	$_GLOBAL_OFFSET_TABLE_, %eax
	subl	$80000000, %esp
	movl	%esp, %edx
	movl	%edx, %ecx
	leal	-80000008(%ebp), %edx
	movl	$80000000, %ebx
	subl	$4, %esp
	pushl	%ebx
	pushl	%edx
	pushl	%ecx
	movl	%eax, %ebx
	call	memcpy@PLT
	addl	$16, %esp
	call	_Z4func1A
	addl	$80000000, %esp
	movl	$0, %eax
	leal	-8(%ebp), %esp
	popl	%ecx
	.cfi_restore 1
	.cfi_def_cfa 1, 0
	popl	%ebx
	.cfi_restore 3
	popl	%ebp
	.cfi_restore 5
	leal	-4(%ecx), %esp
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE1:
	.size	main, .-main
	.section	.text.__x86.get_pc_thunk.ax,"axG",@progbits,__x86.get_pc_thunk.ax,comdat
	.globl	__x86.get_pc_thunk.ax
	.hidden	__x86.get_pc_thunk.ax
	.type	__x86.get_pc_thunk.ax, @function
__x86.get_pc_thunk.ax:
.LFB2:
	.cfi_startproc
	movl	(%esp), %eax
	ret
	.cfi_endproc
.LFE2:
	.ident	"GCC: (Ubuntu 9.4.0-1ubuntu1~20.04.1) 9.4.0"
	.section	.note.GNU-stack,"",@progbits
	.section	.note.gnu.property,"a"
	.align 4
	.long	 1f - 0f
	.long	 4f - 1f
	.long	 5
0:
	.string	 "GNU"
1:
	.align 4
	.long	 0xc0000002
	.long	 3f - 2f
2:
	.long	 0x3
3:
	.align 4
4:
