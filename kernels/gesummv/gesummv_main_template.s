	.file	"cmpeval.c"
	.text
	.p2align 4
	.globl	gesummv
	.type	gesummv, @function

<AI_PLACEHOLDER>

.LFE13:
	.size	gesummv, .-gesummv
	.section	.rodata.str1.8,"aMS",@progbits,1
	.align 8
.LC11:
	.string	"=== Output ==="
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC12:
	.string	"=== Vector y ==="
.LC13:
	.string	"%f "
	.section	.text.startup,"ax",@progbits
	.p2align 4
	.globl	main
	.type	main, @function
main:
.LFB14:
	.cfi_startproc
	endbr64
	pushq	%r12
	.cfi_def_cfa_offset 16
	.cfi_offset 12, -16
	movl	$3, %edi
	pushq	%rbp
	.cfi_def_cfa_offset 24
	.cfi_offset 6, -24
	leaq	.LC13(%rip), %rbp
	pushq	%rbx
	.cfi_def_cfa_offset 32
	.cfi_offset 3, -32
	addq	$-128, %rsp
	.cfi_def_cfa_offset 160
	movaps	.LC1(%rip), %xmm0
	movss	.LC9(%rip), %xmm1
	movq	%fs:40, %rax
	movq	%rax, 120(%rsp)
	xorl	%eax, %eax
	leaq	16(%rsp), %rbx
	movq	%rsp, %rcx
	leaq	80(%rsp), %rdx
	movaps	%xmm0, 32(%rsp)
	leaq	32(%rsp), %rsi
	movq	%rbx, %r8
	leaq	28(%rsp), %r12
	movaps	.LC2(%rip), %xmm0
	movq	.LC7(%rip), %rax
	movl	$0x41100000, 64(%rsp)
	movl	$0x3f800000, 112(%rsp)
	movaps	%xmm0, 48(%rsp)
	movaps	.LC4(%rip), %xmm0
	movq	%rax, (%rsp)
	movaps	%xmm0, 80(%rsp)
	movaps	.LC5(%rip), %xmm0
	movl	$0x40400000, 8(%rsp)
	movaps	%xmm0, 96(%rsp)
	movss	.LC10(%rip), %xmm0
	movq	$0, 16(%rsp)
	movl	$0x00000000, 24(%rsp)
	call	gesummv
	leaq	.LC11(%rip), %rdi
	call	puts@PLT
	leaq	.LC12(%rip), %rdi
	call	puts@PLT
.L10:
	pxor	%xmm0, %xmm0
	movq	%rbp, %rsi
	movl	$1, %edi
	addq	$4, %rbx
	movl	$1, %eax
	cvtss2sd	-4(%rbx), %xmm0
	call	__printf_chk@PLT
	cmpq	%rbx, %r12
	jne	.L10
	movl	$10, %edi
	call	putchar@PLT
	movq	120(%rsp), %rax
	subq	%fs:40, %rax
	jne	.L14
	subq	$-128, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 32
	xorl	%eax, %eax
	popq	%rbx
	.cfi_def_cfa_offset 24
	popq	%rbp
	.cfi_def_cfa_offset 16
	popq	%r12
	.cfi_def_cfa_offset 8
	ret
.L14:
	.cfi_restore_state
	call	__stack_chk_fail@PLT
	.cfi_endproc
.LFE14:
	.size	main, .-main
	.section	.rodata.cst16,"aM",@progbits,16
	.align 16
.LC1:
	.long	1065353216
	.long	1073741824
	.long	1077936128
	.long	1082130432
	.align 16
.LC2:
	.long	1084227584
	.long	1086324736
	.long	1088421888
	.long	1090519040
	.align 16
.LC4:
	.long	1091567616
	.long	1090519040
	.long	1088421888
	.long	1086324736
	.align 16
.LC5:
	.long	1084227584
	.long	1082130432
	.long	1077936128
	.long	1073741824
	.set	.LC7,.LC1
	.set	.LC9,.LC1+4
	.section	.rodata.cst4,"aM",@progbits,4
	.align 4
.LC10:
	.long	1069547520
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
	.section	.note.gnu.property,"a"
	.align 8
	.long	1f - 0f
	.long	4f - 1f
	.long	5
0:
	.string	"GNU"
1:
	.align 8
	.long	0xc0000002
	.long	3f - 2f
2:
	.long	0x3
3:
	.align 8
4:
