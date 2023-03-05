	.file	"5.cpp"
	.text
	.section	.rodata
	.align 4
	.type	_ZL1n, @object
	.size	_ZL1n, 4
_ZL1n:
	.long	500000
	.text
	.globl	_Z4funci
	.type	_Z4funci, @function
_Z4funci:
.LFB0:
	.cfi_startproc
	endbr32
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	leal	-3997696(%esp), %eax
.LPSRL0:
	subl	$4096, %esp
	orl	$0, (%esp)
	cmpl	%eax, %esp
	jne	.LPSRL0
	subl	$2320, %esp
	call	__x86.get_pc_thunk.ax
	addl	$_GLOBAL_OFFSET_TABLE_, %eax
	movl	$0, -4(%ebp)
.L3:
	cmpl	$499999, -4(%ebp)
	jg	.L2
	movl	-4(%ebp), %eax
	leal	-1(%eax), %edx
	movl	-4(%ebp), %eax
	movl	%edx, -4000004(%ebp,%eax,4)
	movl	-4(%ebp), %eax
	leal	500000(%eax), %edx
	movl	-4(%ebp), %eax
	movl	%eax, -4000004(%ebp,%edx,4)
	addl	$1, -4(%ebp)
	jmp	.L3
.L2:
	movl	8(%ebp), %eax
	movl	-4000004(%ebp,%eax,4), %eax
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE0:
	.size	_Z4funci, .-_Z4funci
	.section	.rodata
.LC0:
	.string	"%d"
	.text
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
	leal	-3997696(%esp), %eax
.LPSRL1:
	subl	$4096, %esp
	orl	$0, (%esp)
	cmpl	%eax, %esp
	jne	.LPSRL1
	subl	$2320, %esp
	call	__x86.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	pushl	$348
	call	_Z4funci
	addl	$4, %esp
	movl	%eax, -12(%ebp)
	subl	$8, %esp
	pushl	-12(%ebp)
	leal	.LC0@GOTOFF(%ebx), %eax
	pushl	%eax
	call	printf@PLT
	addl	$16, %esp
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
	.section	.text.__x86.get_pc_thunk.bx,"axG",@progbits,__x86.get_pc_thunk.bx,comdat
	.globl	__x86.get_pc_thunk.bx
	.hidden	__x86.get_pc_thunk.bx
	.type	__x86.get_pc_thunk.bx, @function
__x86.get_pc_thunk.bx:
.LFB3:
	.cfi_startproc
	movl	(%esp), %ebx
	ret
	.cfi_endproc
.LFE3:
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
