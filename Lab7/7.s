	.file	"7.cpp"
	.text
	.section	.rodata
	.type	_ZStL19piecewise_construct, @object
	.size	_ZStL19piecewise_construct, 1
_ZStL19piecewise_construct:
	.zero	1
	.local	_ZStL8__ioinit
	.comm	_ZStL8__ioinit,1,1
.LC0:
	.string	"Animal\n"
	.section	.text._ZN6Animal5printEv,"axG",@progbits,_ZN6Animal5printEv,comdat
	.align 2
	.weak	_ZN6Animal5printEv
	.type	_ZN6Animal5printEv, @function
_ZN6Animal5printEv:
.LFB1522:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	leaq	.LC0(%rip), %rsi
	leaq	_ZSt4cout(%rip), %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1522:
	.size	_ZN6Animal5printEv, .-_ZN6Animal5printEv
	.section	.rodata
.LC1:
	.string	"Predator\n"
	.section	.text._ZN8Predator5printEv,"axG",@progbits,_ZN8Predator5printEv,comdat
	.align 2
	.weak	_ZN8Predator5printEv
	.type	_ZN8Predator5printEv, @function
_ZN8Predator5printEv:
.LFB1523:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	leaq	.LC1(%rip), %rsi
	leaq	_ZSt4cout(%rip), %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1523:
	.size	_ZN8Predator5printEv, .-_ZN8Predator5printEv
	.section	.text._ZN6AnimalC2Ev,"axG",@progbits,_ZN6AnimalC5Ev,comdat
	.align 2
	.weak	_ZN6AnimalC2Ev
	.type	_ZN6AnimalC2Ev, @function
_ZN6AnimalC2Ev:
.LFB1527:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	leaq	16+_ZTV6Animal(%rip), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, (%rax)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1527:
	.size	_ZN6AnimalC2Ev, .-_ZN6AnimalC2Ev
	.weak	_ZN6AnimalC1Ev
	.set	_ZN6AnimalC1Ev,_ZN6AnimalC2Ev
	.section	.text._ZN8PredatorC2Ev,"axG",@progbits,_ZN8PredatorC5Ev,comdat
	.align 2
	.weak	_ZN8PredatorC2Ev
	.type	_ZN8PredatorC2Ev, @function
_ZN8PredatorC2Ev:
.LFB1529:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN6AnimalC2Ev
	leaq	16+_ZTV8Predator(%rip), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, (%rax)
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1529:
	.size	_ZN8PredatorC2Ev, .-_ZN8PredatorC2Ev
	.weak	_ZN8PredatorC1Ev
	.set	_ZN8PredatorC1Ev,_ZN8PredatorC2Ev
	.text
	.globl	main
	.type	main, @function
main:
.LFB1524:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$24, %rsp
	.cfi_offset 3, -24
	movl	$8, %edi
	call	_Znwm@PLT
	movq	%rax, %rbx
	movq	$0, (%rbx)
	movq	%rbx, %rdi
	call	_ZN8PredatorC1Ev
	movq	%rbx, -24(%rbp)
	leaq	16+_ZTV8Predator(%rip), %rax
	movq	%rax, -32(%rbp)
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	*%rdx
	leaq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN8Predator5printEv
	movl	$0, %eax
	addq	$24, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1524:
	.size	main, .-main
	.weak	_ZTV8Predator
	.section	.data.rel.ro.local._ZTV8Predator,"awG",@progbits,_ZTV8Predator,comdat
	.align 8
	.type	_ZTV8Predator, @object
	.size	_ZTV8Predator, 24
_ZTV8Predator:
	.quad	0
	.quad	_ZTI8Predator
	.quad	_ZN8Predator5printEv
	.weak	_ZTV6Animal
	.section	.data.rel.ro.local._ZTV6Animal,"awG",@progbits,_ZTV6Animal,comdat
	.align 8
	.type	_ZTV6Animal, @object
	.size	_ZTV6Animal, 24
_ZTV6Animal:
	.quad	0
	.quad	_ZTI6Animal
	.quad	_ZN6Animal5printEv
	.weak	_ZTI8Predator
	.section	.data.rel.ro._ZTI8Predator,"awG",@progbits,_ZTI8Predator,comdat
	.align 8
	.type	_ZTI8Predator, @object
	.size	_ZTI8Predator, 24
_ZTI8Predator:
	.quad	_ZTVN10__cxxabiv120__si_class_type_infoE+16
	.quad	_ZTS8Predator
	.quad	_ZTI6Animal
	.weak	_ZTS8Predator
	.section	.rodata._ZTS8Predator,"aG",@progbits,_ZTS8Predator,comdat
	.align 8
	.type	_ZTS8Predator, @object
	.size	_ZTS8Predator, 10
_ZTS8Predator:
	.string	"8Predator"
	.weak	_ZTI6Animal
	.section	.data.rel.ro._ZTI6Animal,"awG",@progbits,_ZTI6Animal,comdat
	.align 8
	.type	_ZTI6Animal, @object
	.size	_ZTI6Animal, 16
_ZTI6Animal:
	.quad	_ZTVN10__cxxabiv117__class_type_infoE+16
	.quad	_ZTS6Animal
	.weak	_ZTS6Animal
	.section	.rodata._ZTS6Animal,"aG",@progbits,_ZTS6Animal,comdat
	.align 8
	.type	_ZTS6Animal, @object
	.size	_ZTS6Animal, 8
_ZTS6Animal:
	.string	"6Animal"
	.text
	.type	_Z41__static_initialization_and_destruction_0ii, @function
_Z41__static_initialization_and_destruction_0ii:
.LFB2014:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
	cmpl	$1, -4(%rbp)
	jne	.L9
	cmpl	$65535, -8(%rbp)
	jne	.L9
	leaq	_ZStL8__ioinit(%rip), %rdi
	call	_ZNSt8ios_base4InitC1Ev@PLT
	leaq	__dso_handle(%rip), %rdx
	leaq	_ZStL8__ioinit(%rip), %rsi
	movq	_ZNSt8ios_base4InitD1Ev@GOTPCREL(%rip), %rax
	movq	%rax, %rdi
	call	__cxa_atexit@PLT
.L9:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2014:
	.size	_Z41__static_initialization_and_destruction_0ii, .-_Z41__static_initialization_and_destruction_0ii
	.type	_GLOBAL__sub_I_main, @function
_GLOBAL__sub_I_main:
.LFB2015:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	$65535, %esi
	movl	$1, %edi
	call	_Z41__static_initialization_and_destruction_0ii
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2015:
	.size	_GLOBAL__sub_I_main, .-_GLOBAL__sub_I_main
	.section	.init_array,"aw"
	.align 8
	.quad	_GLOBAL__sub_I_main
	.hidden	__dso_handle
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
