	.file	"3.cpp"
	.text
	.globl	s1
	.bss
	.align 32
	.type	s1, @object
	.size	s1, 32
s1:
	.zero	32
	.text
	.globl	main
	.type	main, @function
main:
.LFB0:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	$7, s1(%rip)
	movsd	.LC0(%rip), %xmm0
	movsd	%xmm0, 8+s1(%rip)
	movb	$114, 16+s1(%rip)
	movl	$5, 20+s1(%rip)
	movl	$2, 24+s1(%rip)
	movl	$-4, 28+s1(%rip)
	movl	$0, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE0:
	.size	main, .-main
	.section	.rodata
	.align 8
.LC0:
	.long	3435973837
	.long	1076022476
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