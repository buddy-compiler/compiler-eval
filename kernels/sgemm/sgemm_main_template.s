	.file	"cmpeval.c"
	.text
	.p2align 4
	.globl	sgemm
	.type	sgemm, @function

<AI_PLACEHOLDER>

.LFE0:
	.size	sgemm, .-sgemm
	.section	.rodata.str1.8,"aMS",@progbits,1
	.align 8
.LC5:
	.string	"=== Output ==="
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC6:
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
	movl	$2, %edx
	movl	$3, %esi
	movl	$2, %edi
	pushq	%rbp
	.cfi_def_cfa_offset 24
	.cfi_offset 6, -24
	leaq	.LC6(%rip), %rbp
	pushq	%rbx
	.cfi_def_cfa_offset 32
	.cfi_offset 3, -32
	subq	$80, %rsp
	.cfi_def_cfa_offset 112
	movaps	.LC1(%rip), %xmm0
	movss	.LC4(%rip), %xmm1
	movq	%fs:40, %rax
	movq	%rax, 72(%rsp)
	xorl	%eax, %eax
	leaq	48(%rsp), %rbx
	movq	%rsp, %rcx
	leaq	16(%rsp), %r8
	movaps	%xmm0, (%rsp)
	movaps	.LC2(%rip), %xmm0
	movq	.LC3(%rip), %rax
	movq	%rbx, %r9
	movq	$0, 64(%rsp)
	leaq	60(%rsp), %r12
	movaps	%xmm0, 16(%rsp)
	pxor	%xmm0, %xmm0
	movaps	%xmm0, 48(%rsp)
	movaps	%xmm1, %xmm0
	movq	%rax, 32(%rsp)
	call	sgemm
	leaq	.LC5(%rip), %rdi
	call	puts@PLT
	movq	%rbp, %rsi
	movl	$1, %edi
	pxor	%xmm0, %xmm0
	movl	$1, %eax
	cvtss2sd	48(%rsp), %xmm0
	call	__printf_chk@PLT
	movq	%rbp, %rsi
	movl	$1, %edi
	pxor	%xmm0, %xmm0
	movl	$1, %eax
	cvtss2sd	52(%rsp), %xmm0
	call	__printf_chk@PLT
	movq	%rbp, %rsi
	movl	$1, %edi
	pxor	%xmm0, %xmm0
	movl	$1, %eax
	cvtss2sd	56(%rsp), %xmm0
	call	__printf_chk@PLT
	movl	$10, %edi
	call	putchar@PLT
.L35:
	pxor	%xmm0, %xmm0
	movq	%rbp, %rsi
	movl	$1, %edi
	addq	$4, %rbx
	movl	$1, %eax
	cvtss2sd	8(%rbx), %xmm0
	call	__printf_chk@PLT
	cmpq	%rbx, %r12
	jne	.L35
	movl	$10, %edi
	call	putchar@PLT
	movq	72(%rsp), %rax
	subq	%fs:40, %rax
	jne	.L39
	addq	$80, %rsp
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
.L39:
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
	.section	.rodata.cst8,"aM",@progbits,8
	.align 8
.LC3:
	.long	1091567616
	.long	1092616192
	.set	.LC4,.LC1
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
