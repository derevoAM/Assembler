	.file	"1.cpp"
	.text
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC1:
	.string	"basic_O3.txt"
.LC3:
	.string	"\n"
.LC4:
	.string	" "
	.section	.text.unlikely,"ax",@progbits
.LCOLDB5:
	.text
.LHOTB5:
	.p2align 4
	.globl	_Z5basicv
	.type	_Z5basicv, @function
_Z5basicv:
.LFB3272:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA3272
	endbr64
	pushq	%r15
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	pushq	%r14
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	pushq	%r13
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	pushq	%r12
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	pushq	%rbp
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	pushq	%rbx
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	subq	$568, %rsp
	.cfi_def_cfa_offset 624
	movq	%fs:40, %rax
	movq	%rax, 552(%rsp)
	xorl	%eax, %eax
	leaq	280(%rsp), %rbx
	leaq	32(%rsp), %r15
	movq	%rbx, %rdi
	movq	%r15, 8(%rsp)
	movq	%rbx, 24(%rsp)
	call	_ZNSt8ios_baseC2Ev@PLT
	leaq	16+_ZTVSt9basic_iosIcSt11char_traitsIcEE(%rip), %rax
	xorl	%esi, %esi
	movq	$0, 496(%rsp)
	movq	%rax, 280(%rsp)
	xorl	%eax, %eax
	movw	%ax, 504(%rsp)
	movq	8+_ZTTSt14basic_ofstreamIcSt11char_traitsIcEE(%rip), %rax
	movq	$0, 512(%rsp)
	movq	-24(%rax), %rdi
	movq	%rax, 32(%rsp)
	movq	16+_ZTTSt14basic_ofstreamIcSt11char_traitsIcEE(%rip), %rax
	movq	$0, 520(%rsp)
	movq	$0, 528(%rsp)
	addq	%r15, %rdi
	movq	$0, 536(%rsp)
	movq	%rax, (%rdi)
.LEHB0:
	call	_ZNSt9basic_iosIcSt11char_traitsIcEE4initEPSt15basic_streambufIcS1_E@PLT
.LEHE0:
	leaq	24+_ZTVSt14basic_ofstreamIcSt11char_traitsIcEE(%rip), %rax
	movq	%rax, 32(%rsp)
	addq	$40, %rax
	movq	%rax, 280(%rsp)
	leaq	40(%rsp), %rax
	movq	%rax, %rdi
	movq	%rax, 16(%rsp)
	movq	%rax, %r15
.LEHB1:
	call	_ZNSt13basic_filebufIcSt11char_traitsIcEEC1Ev@PLT
.LEHE1:
	movq	%r15, %rsi
	movq	%rbx, %rdi
.LEHB2:
	call	_ZNSt9basic_iosIcSt11char_traitsIcEE4initEPSt15basic_streambufIcS1_E@PLT
.LEHE2:
	movq	16(%rsp), %rdi
	movl	$16, %edx
	leaq	.LC1(%rip), %rsi
.LEHB3:
	call	_ZNSt13basic_filebufIcSt11char_traitsIcEE4openEPKcSt13_Ios_Openmode@PLT
	movq	32(%rsp), %rdx
	movq	8(%rsp), %rdi
	addq	-24(%rdx), %rdi
	testq	%rax, %rax
	je	.L27
	xorl	%esi, %esi
	call	_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate@PLT
.L7:
	movl	$60, %r13d
	movl	$16, %r12d
	.p2align 4,,10
	.p2align 3
.L10:
	leaq	4(%r13), %rdi
	call	_Znam@PLT
	movq	%rax, %rbp
	movq	%rax, %r15
	leaq	(%rax,%r13), %rbx
	movq	%rax, %r14
	.p2align 4,,10
	.p2align 3
.L8:
	call	rand@PLT
	pxor	%xmm0, %xmm0
	cvtsi2ssl	%eax, %xmm0
	mulss	.LC2(%rip), %xmm0
	movq	%r14, %rax
	addq	$4, %r14
	movss	%xmm0, -4(%r14)
	cmpq	%rbx, %rax
	jne	.L8
	call	_ZNSt6chrono3_V212steady_clock3nowEv@PLT
	pxor	%xmm0, %xmm0
	movq	%rax, %r14
	.p2align 4,,10
	.p2align 3
.L9:
	movq	%r15, %rax
	addss	(%r15), %xmm0
	addq	$4, %r15
	cmpq	%rax, %rbx
	jne	.L9
	pxor	%xmm1, %xmm1
	cvtsi2ssl	%r12d, %xmm1
	divss	%xmm1, %xmm0
	movss	%xmm0, 4(%rsp)
	call	_ZNSt6chrono3_V212steady_clock3nowEv@PLT
	movss	4(%rsp), %xmm0
	leaq	_ZSt4cout(%rip), %rdi
	movq	%rax, %rbx
	cvtss2sd	%xmm0, %xmm0
	call	_ZNSo9_M_insertIdEERSoT_@PLT
	movq	%rax, %rdi
	movl	$1, %edx
	leaq	.LC3(%rip), %rsi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	movq	%rbp, %rdi
	call	_ZdaPv@PLT
	movq	8(%rsp), %rdi
	movl	%r12d, %esi
	call	_ZNSolsEi@PLT
	movl	$1, %edx
	leaq	.LC4(%rip), %rsi
	movq	%rax, %rdi
	movq	%rax, %rbp
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	movabsq	$2361183241434822607, %rax
	subq	%r14, %rbx
	movq	%rbp, %rdi
	imulq	%rbx
	sarq	$63, %rbx
	sarq	$7, %rdx
	subq	%rbx, %rdx
	movq	%rdx, %rsi
	call	_ZNSo9_M_insertIlEERSoT_@PLT
	movq	%rax, %rdi
	movl	$1, %edx
	leaq	.LC3(%rip), %rsi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
.LEHE3:
	addl	$2000, %r12d
	addq	$8000, %r13
	cmpl	$8000016, %r12d
	jne	.L10
	leaq	24+_ZTVSt14basic_ofstreamIcSt11char_traitsIcEE(%rip), %rax
	movq	16(%rsp), %rdi
	movq	%rax, 32(%rsp)
	addq	$40, %rax
	movq	%rax, 280(%rsp)
	leaq	16+_ZTVSt13basic_filebufIcSt11char_traitsIcEE(%rip), %rax
	movq	%rax, 40(%rsp)
.LEHB4:
	call	_ZNSt13basic_filebufIcSt11char_traitsIcEE5closeEv@PLT
.LEHE4:
.L12:
	leaq	144(%rsp), %rdi
	call	_ZNSt12__basic_fileIcED1Ev@PLT
	leaq	16+_ZTVSt15basic_streambufIcSt11char_traitsIcEE(%rip), %rax
	leaq	96(%rsp), %rdi
	movq	%rax, 40(%rsp)
	call	_ZNSt6localeD1Ev@PLT
	movq	8+_ZTTSt14basic_ofstreamIcSt11char_traitsIcEE(%rip), %rax
	movq	24(%rsp), %rdi
	movq	16+_ZTTSt14basic_ofstreamIcSt11char_traitsIcEE(%rip), %rcx
	movq	%rax, 32(%rsp)
	movq	-24(%rax), %rax
	movq	%rcx, 32(%rsp,%rax)
	leaq	16+_ZTVSt9basic_iosIcSt11char_traitsIcEE(%rip), %rax
	movq	%rax, 280(%rsp)
	call	_ZNSt8ios_baseD2Ev@PLT
	movq	552(%rsp), %rax
	xorq	%fs:40, %rax
	jne	.L28
	addq	$568, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 56
	popq	%rbx
	.cfi_def_cfa_offset 48
	popq	%rbp
	.cfi_def_cfa_offset 40
	popq	%r12
	.cfi_def_cfa_offset 32
	popq	%r13
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	ret
.L27:
	.cfi_restore_state
	movl	32(%rdi), %esi
	orl	$4, %esi
.LEHB5:
	call	_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate@PLT
.LEHE5:
	jmp	.L7
.L28:
	call	__stack_chk_fail@PLT
.L19:
	endbr64
	movq	%rax, %rdi
	jmp	.L11
.L15:
	endbr64
	movq	%rax, %rbp
	jmp	.L13
.L17:
	endbr64
	movq	%rax, %rbp
	jmp	.L4
.L18:
	endbr64
	movq	%rax, %rbp
	jmp	.L3
.L16:
	endbr64
	movq	%rax, %rbp
	jmp	.L5
	.globl	__gxx_personality_v0
	.section	.gcc_except_table,"a",@progbits
	.align 4
.LLSDA3272:
	.byte	0xff
	.byte	0x9b
	.uleb128 .LLSDATT3272-.LLSDATTD3272
.LLSDATTD3272:
	.byte	0x1
	.uleb128 .LLSDACSE3272-.LLSDACSB3272
.LLSDACSB3272:
	.uleb128 .LEHB0-.LFB3272
	.uleb128 .LEHE0-.LEHB0
	.uleb128 .L16-.LFB3272
	.uleb128 0
	.uleb128 .LEHB1-.LFB3272
	.uleb128 .LEHE1-.LEHB1
	.uleb128 .L17-.LFB3272
	.uleb128 0
	.uleb128 .LEHB2-.LFB3272
	.uleb128 .LEHE2-.LEHB2
	.uleb128 .L18-.LFB3272
	.uleb128 0
	.uleb128 .LEHB3-.LFB3272
	.uleb128 .LEHE3-.LEHB3
	.uleb128 .L15-.LFB3272
	.uleb128 0
	.uleb128 .LEHB4-.LFB3272
	.uleb128 .LEHE4-.LEHB4
	.uleb128 .L19-.LFB3272
	.uleb128 0x1
	.uleb128 .LEHB5-.LFB3272
	.uleb128 .LEHE5-.LEHB5
	.uleb128 .L15-.LFB3272
	.uleb128 0
.LLSDACSE3272:
	.byte	0x1
	.byte	0
	.align 4
	.long	0

.LLSDATT3272:
	.text
	.cfi_endproc
	.section	.text.unlikely
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDAC3272
	.type	_Z5basicv.cold, @function
_Z5basicv.cold:
.LFSB3272:
.L11:
	.cfi_def_cfa_offset 624
	.cfi_offset 3, -56
	.cfi_offset 6, -48
	.cfi_offset 12, -40
	.cfi_offset 13, -32
	.cfi_offset 14, -24
	.cfi_offset 15, -16
	call	__cxa_begin_catch@PLT
	call	__cxa_end_catch@PLT
	jmp	.L12
.L13:
	movq	8(%rsp), %rdi
	call	_ZNSt14basic_ofstreamIcSt11char_traitsIcEED1Ev@PLT
	movq	%rbp, %rdi
.LEHB6:
	call	_Unwind_Resume@PLT
.L3:
	movq	16(%rsp), %rdi
	call	_ZNSt13basic_filebufIcSt11char_traitsIcEED1Ev@PLT
.L4:
	movq	8+_ZTTSt14basic_ofstreamIcSt11char_traitsIcEE(%rip), %rax
	movq	16+_ZTTSt14basic_ofstreamIcSt11char_traitsIcEE(%rip), %rcx
	movq	%rax, 32(%rsp)
	movq	-24(%rax), %rax
	movq	%rcx, 32(%rsp,%rax)
.L5:
	movq	24(%rsp), %rdi
	leaq	16+_ZTVSt9basic_iosIcSt11char_traitsIcEE(%rip), %rax
	movq	%rax, 280(%rsp)
	call	_ZNSt8ios_baseD2Ev@PLT
	movq	%rbp, %rdi
	call	_Unwind_Resume@PLT
.LEHE6:
	.cfi_endproc
.LFE3272:
	.section	.gcc_except_table
	.align 4
.LLSDAC3272:
	.byte	0xff
	.byte	0x9b
	.uleb128 .LLSDATTC3272-.LLSDATTDC3272
.LLSDATTDC3272:
	.byte	0x1
	.uleb128 .LLSDACSEC3272-.LLSDACSBC3272
.LLSDACSBC3272:
	.uleb128 .LEHB6-.LCOLDB5
	.uleb128 .LEHE6-.LEHB6
	.uleb128 0
	.uleb128 0
.LLSDACSEC3272:
	.byte	0x1
	.byte	0
	.align 4
	.long	0

.LLSDATTC3272:
	.section	.text.unlikely
	.text
	.size	_Z5basicv, .-_Z5basicv
	.section	.text.unlikely
	.size	_Z5basicv.cold, .-_Z5basicv.cold
.LCOLDE5:
	.text
.LHOTE5:
	.section	.text.startup,"ax",@progbits
	.p2align 4
	.globl	main
	.type	main, @function
main:
.LFB3285:
	.cfi_startproc
	endbr64
	subq	$8, %rsp
	.cfi_def_cfa_offset 16
	call	_Z5basicv
	xorl	%eax, %eax
	addq	$8, %rsp
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE3285:
	.size	main, .-main
	.p2align 4
	.type	_GLOBAL__sub_I__Z5basicv, @function
_GLOBAL__sub_I__Z5basicv:
.LFB3875:
	.cfi_startproc
	endbr64
	subq	$8, %rsp
	.cfi_def_cfa_offset 16
	leaq	_ZStL8__ioinit(%rip), %rdi
	call	_ZNSt8ios_base4InitC1Ev@PLT
	movq	_ZNSt8ios_base4InitD1Ev@GOTPCREL(%rip), %rdi
	addq	$8, %rsp
	.cfi_def_cfa_offset 8
	leaq	__dso_handle(%rip), %rdx
	leaq	_ZStL8__ioinit(%rip), %rsi
	jmp	__cxa_atexit@PLT
	.cfi_endproc
.LFE3875:
	.size	_GLOBAL__sub_I__Z5basicv, .-_GLOBAL__sub_I__Z5basicv
	.section	.init_array,"aw"
	.align 8
	.quad	_GLOBAL__sub_I__Z5basicv
	.globl	x
	.data
	.align 4
	.type	x, @object
	.size	x, 4
x:
	.long	1077936128
	.globl	result
	.bss
	.align 16
	.type	result, @object
	.size	result, 16
result:
	.zero	16
	.globl	supporting
	.align 16
	.type	supporting, @object
	.size	supporting, 16
supporting:
	.zero	16
	.local	_ZStL8__ioinit
	.comm	_ZStL8__ioinit,1,1
	.section	.rodata.cst4,"aM",@progbits,4
	.align 4
.LC2:
	.long	805306368
	.hidden	DW.ref.__gxx_personality_v0
	.weak	DW.ref.__gxx_personality_v0
	.section	.data.rel.local.DW.ref.__gxx_personality_v0,"awG",@progbits,DW.ref.__gxx_personality_v0,comdat
	.align 8
	.type	DW.ref.__gxx_personality_v0, @object
	.size	DW.ref.__gxx_personality_v0, 8
DW.ref.__gxx_personality_v0:
	.quad	__gxx_personality_v0
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
