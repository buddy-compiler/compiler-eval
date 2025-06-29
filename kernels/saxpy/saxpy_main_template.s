	.file	"cmpeval.c"
	.text
	.p2align 4
	.globl	saxpy
	.type	saxpy, @function

<AI_PLACEHOLDER>

.LFE0:
	.size	saxpy, .-saxpy
	.section	.rodata.str1.8,"aMS",@progbits,1
	.align 8
.LC6:
	.string	"=== Output ==="
	.align 8
.LC8:
	.string	"result[%d] = %.2f (%.2f * %.2f + %.2f)\n"
	.section	.text.startup,"ax",@progbits
	.p2align 4
	.globl	main
	.type	main, @function
main:
.LFB14:
	.cfi_startproc
	endbr64
	pushq	%r14
	.cfi_def_cfa_offset 16
	.cfi_offset 14, -16
	movl	$5, %edi
	leaq	.LC8(%rip), %r14
	pushq	%r13
	.cfi_def_cfa_offset 24
	.cfi_offset 13, -24
	pushq	%r12
	.cfi_def_cfa_offset 32
	.cfi_offset 12, -32
	pushq	%rbp
	.cfi_def_cfa_offset 40
	.cfi_offset 6, -40
	pushq	%rbx
	.cfi_def_cfa_offset 48
	.cfi_offset 3, -48
	xorl	%ebx, %ebx
	subq	$96, %rsp
	.cfi_def_cfa_offset 144
	movaps	.LC0(%rip), %xmm0
	movq	%fs:40, %rax
	movq	%rax, 88(%rsp)
	xorl	%eax, %eax
	leaq	64(%rsp), %r13
	leaq	32(%rsp), %r12
	movq	%rsp, %rbp
	movaps	%xmm0, (%rsp)
	movq	%r13, %rcx
	movq	%r12, %rdx
	movq	%rbp, %rsi
	movaps	.LC2(%rip), %xmm0
	movl	$0x40a00000, 16(%rsp)
	movl	$0x3f800000, 48(%rsp)
	movaps	%xmm0, 32(%rsp)
	pxor	%xmm0, %xmm0
	movaps	%xmm0, 64(%rsp)
	movss	.LC5(%rip), %xmm0
	movl	$0x00000000, 80(%rsp)
	call	saxpy
	leaq	.LC6(%rip), %rdi
	call	puts@PLT
.L25:
	movq	.LC7(%rip), %rax
	pxor	%xmm0, %xmm0
	movl	%ebx, %edx
	movq	%r14, %rsi
	pxor	%xmm3, %xmm3
	pxor	%xmm2, %xmm2
	movl	$1, %edi
	cvtss2sd	0(%r13,%rbx,4), %xmm0
	movq	%rax, %xmm1
	cvtss2sd	(%r12,%rbx,4), %xmm3
	movl	$4, %eax
	cvtss2sd	0(%rbp,%rbx,4), %xmm2
	call	__printf_chk@PLT
	addq	$1, %rbx
	cmpq	$5, %rbx
	jne	.L25
	movq	88(%rsp), %rax
	subq	%fs:40, %rax
	jne	.L29
	addq	$96, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 48
	xorl	%eax, %eax
	popq	%rbx
	.cfi_def_cfa_offset 40
	popq	%rbp
	.cfi_def_cfa_offset 32
	popq	%r12
	.cfi_def_cfa_offset 24
	popq	%r13
	.cfi_def_cfa_offset 16
	popq	%r14
	.cfi_def_cfa_offset 8
	ret
.L29:
	.cfi_restore_state
	call	__stack_chk_fail@PLT
	.cfi_endproc
.LFE14:
	.size	main, .-main
	.section	.rodata.cst16,"aM",@progbits,16
	.align 16
.LC0:
	.long	1065353216
	.long	1073741824
	.long	1077936128
	.long	1082130432
	.align 16
.LC2:
	.long	1084227584
	.long	1082130432
	.long	1077936128
	.long	1073741824
	.set	.LC5,.LC0+4
	.section	.rodata.cst8,"aM",@progbits,8
	.align 8
.LC7:
	.long	0
	.long	1073741824
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
