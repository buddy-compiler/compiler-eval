	.file	"cmpeval.c"
	.text
	.p2align 4
	.globl	jacobi_1d
	.type	jacobi_1d, @function

<AI_PLACEHOLDER>

.LFE13:
	.size	jacobi_1d, .-jacobi_1d
	.section	.rodata.str1.8,"aMS",@progbits,1
	.align 8
.LC6:
	.string	"=== Output ==="
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC7:
	.string	"=== Final Array A ==="
.LC8:
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
	movl	$5, %esi
	movl	$10, %edi
	pushq	%rbp
	.cfi_def_cfa_offset 24
	.cfi_offset 6, -24
	leaq	.LC8(%rip), %rbp
	pushq	%rbx
	.cfi_def_cfa_offset 32
	.cfi_offset 3, -32
	subq	$96, %rsp
	.cfi_def_cfa_offset 128
	movaps	.LC3(%rip), %xmm0
	movq	%fs:40, %rax
	movq	%rax, 88(%rsp)
	xorl	%eax, %eax
	movq	%rsp, %rbx
	leaq	48(%rsp), %rcx
	leaq	40(%rsp), %r12
	movaps	%xmm0, (%rsp)
	movaps	.LC4(%rip), %xmm0
	movq	%rbx, %rdx
	movq	.LC5(%rip), %rax
	movq	$0, 80(%rsp)
	movaps	%xmm0, 16(%rsp)
	pxor	%xmm0, %xmm0
	movaps	%xmm0, 48(%rsp)
	movaps	%xmm0, 64(%rsp)
	movq	%rax, 32(%rsp)
	call	jacobi_1d
	leaq	.LC6(%rip), %rdi
	call	puts@PLT
	leaq	.LC7(%rip), %rdi
	call	puts@PLT
	.p2align 4,,10
	.p2align 3
.L32:
	pxor	%xmm0, %xmm0
	movq	%rbp, %rsi
	movl	$1, %edi
	addq	$4, %rbx
	movl	$1, %eax
	cvtss2sd	-4(%rbx), %xmm0
	call	__printf_chk@PLT
	cmpq	%r12, %rbx
	jne	.L32
	movl	$10, %edi
	call	putchar@PLT
	movq	88(%rsp), %rax
	subq	%fs:40, %rax
	jne	.L36
	addq	$96, %rsp
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
.L36:
	.cfi_restore_state
	call	__stack_chk_fail@PLT
	.cfi_endproc
.LFE14:
	.size	main, .-main
	.section	.rodata.cst16,"aM",@progbits,16
	.align 16
.LC0:
	.long	1051361018
	.long	1051361018
	.long	1051361018
	.long	1051361018
	.set	.LC1,.LC0
	.set	.LC2,.LC0
	.align 16
.LC3:
	.long	0
	.long	1065353216
	.long	1073741824
	.long	1077936128
	.align 16
.LC4:
	.long	1082130432
	.long	1084227584
	.long	1086324736
	.long	1088421888
	.section	.rodata.cst8,"aM",@progbits,8
	.align 8
.LC5:
	.long	1090519040
	.long	1091567616
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
