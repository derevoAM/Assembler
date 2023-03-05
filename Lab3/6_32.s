	.file	"6.cpp"
	.text
	.section	.rodata
	.type	_ZStL19piecewise_construct, @object
	.size	_ZStL19piecewise_construct, 1
_ZStL19piecewise_construct:
	.zero	1
	.local	_ZStL8__ioinit
	.comm	_ZStL8__ioinit,1,1
	.align 4
	.type	_ZL1n, @object
	.size	_ZL1n, 4
_ZL1n:
	.long	100000
	.text
	.globl	_Z9recursioni
	.type	_Z9recursioni, @function
_Z9recursioni:
.LFB1519:
	.cfi_startproc
	endbr32
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	leal	-397312(%esp), %eax
.LPSRL0:
	subl	$4096, %esp
	orl	$0, (%esp)
	cmpl	%eax, %esp
	jne	.LPSRL0
	subl	$2712, %esp
	call	__x86.get_pc_thunk.ax
	addl	$_GLOBAL_OFFSET_TABLE_, %eax
	movl	%gs:20, %eax
	movl	%eax, -12(%ebp)
	xorl	%eax, %eax
	movl	8(%ebp), %eax
	movl	%eax, -399996(%ebp)
	movl	-399996(%ebp), %eax
	cmpl	$18, %eax
	jg	.L2
	movl	-399996(%ebp), %eax
	addl	$1, %eax
	subl	$12, %esp
	pushl	%eax
	call	_Z9recursioni
	addl	$16, %esp
	jmp	.L4
.L2:
	movl	-399996(%ebp), %eax
.L4:
	movl	-12(%ebp), %edx
	xorl	%gs:20, %edx
	je	.L5
	call	__stack_chk_fail_local
.L5:
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE1519:
	.size	_Z9recursioni, .-_Z9recursioni
	.globl	main
	.type	main, @function
main:
.LFB1520:
	.cfi_startproc
	endbr32
	leal	4(%esp), %ecx
	.cfi_def_cfa 1, 0
	andl	$-16, %esp
	pushl	-4(%ecx)
	pushl	%ebp
	movl	%esp, %ebp
	.cfi_escape 0x10,0x5,0x2,0x75,0
	pushl	%ecx
	.cfi_escape 0xf,0x3,0x75,0x7c,0x6
	subl	$20, %esp
	call	__x86.get_pc_thunk.ax
	addl	$_GLOBAL_OFFSET_TABLE_, %eax
	subl	$12, %esp
	pushl	$0
	call	_Z9recursioni
	addl	$16, %esp
	movl	%eax, -12(%ebp)
	movl	$0, %eax
	movl	-4(%ebp), %ecx
	.cfi_def_cfa 1, 0
	leave
	.cfi_restore 5
	leal	-4(%ecx), %esp
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE1520:
	.size	main, .-main
	.type	_Z41__static_initialization_and_destruction_0ii, @function
_Z41__static_initialization_and_destruction_0ii:
.LFB2001:
	.cfi_startproc
	endbr32
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%ebx
	subl	$4, %esp
	.cfi_offset 3, -12
	call	__x86.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	cmpl	$1, 8(%ebp)
	jne	.L10
	cmpl	$65535, 12(%ebp)
	jne	.L10
	subl	$12, %esp
	leal	_ZStL8__ioinit@GOTOFF(%ebx), %eax
	pushl	%eax
	call	_ZNSt8ios_base4InitC1Ev@PLT
	addl	$16, %esp
	subl	$4, %esp
	leal	__dso_handle@GOTOFF(%ebx), %eax
	pushl	%eax
	leal	_ZStL8__ioinit@GOTOFF(%ebx), %eax
	pushl	%eax
	movl	_ZNSt8ios_base4InitD1Ev@GOT(%ebx), %eax
	pushl	%eax
	call	__cxa_atexit@PLT
	addl	$16, %esp
.L10:
	nop
	movl	-4(%ebp), %ebx
	leave
	.cfi_restore 5
	.cfi_restore 3
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE2001:
	.size	_Z41__static_initialization_and_destruction_0ii, .-_Z41__static_initialization_and_destruction_0ii
	.type	_GLOBAL__sub_I__Z9recursioni, @function
_GLOBAL__sub_I__Z9recursioni:
.LFB2002:
	.cfi_startproc
	endbr32
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$8, %esp
	call	__x86.get_pc_thunk.ax
	addl	$_GLOBAL_OFFSET_TABLE_, %eax
	subl	$8, %esp
	pushl	$65535
	pushl	$1
	call	_Z41__static_initialization_and_destruction_0ii
	addl	$16, %esp
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE2002:
	.size	_GLOBAL__sub_I__Z9recursioni, .-_GLOBAL__sub_I__Z9recursioni
	.section	.init_array,"aw"
	.align 4
	.long	_GLOBAL__sub_I__Z9recursioni
	.section	.text.__x86.get_pc_thunk.ax,"axG",@progbits,__x86.get_pc_thunk.ax,comdat
	.globl	__x86.get_pc_thunk.ax
	.hidden	__x86.get_pc_thunk.ax
	.type	__x86.get_pc_thunk.ax, @function
__x86.get_pc_thunk.ax:
.LFB2003:
	.cfi_startproc
	movl	(%esp), %eax
	ret
	.cfi_endproc
.LFE2003:
	.section	.text.__x86.get_pc_thunk.bx,"axG",@progbits,__x86.get_pc_thunk.bx,comdat
	.globl	__x86.get_pc_thunk.bx
	.hidden	__x86.get_pc_thunk.bx
	.type	__x86.get_pc_thunk.bx, @function
__x86.get_pc_thunk.bx:
.LFB2004:
	.cfi_startproc
	movl	(%esp), %ebx
	ret
	.cfi_endproc
.LFE2004:
	.hidden	__dso_handle
	.hidden	__stack_chk_fail_local
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
