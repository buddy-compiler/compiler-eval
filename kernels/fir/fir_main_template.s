
	.file	"cmpeval.c"
	.text
	.p2align 4
	.globl	fir
	.type	fir, @function

<AI_PLACEHOLDER>

.LFE0:
	.size	fir, .-fir
	.section	.rodata.str1.8,"aMS",@progbits,1
	.align 8
.LC5:
	.string	"=== Output ==="
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC6:
	.string	"output[%d] = %f\n"
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
	movl	$5, %r8d
	movl	$6, %edx
	leaq	.LC6(%rip), %r12
	pushq	%rbp
	.cfi_def_cfa_offset 24
	.cfi_offset 6, -24
	pushq	%rbx
	.cfi_def_cfa_offset 32
	.cfi_offset 3, -32
	xorl	%ebx, %ebx
	subq	$96, %rsp
	.cfi_def_cfa_offset 128
	movaps	.LC1(%rip), %xmm0
	movq	%fs:40, %rax
	movq	%rax, 88(%rsp)
	xorl	%eax, %eax
	leaq	64(%rsp), %rbp
	movq	%rsp, %rcx
	leaq	32(%rsp), %rdi
	movq	.LC2(%rip), %rax
	movaps	%xmm0, 32(%rsp)
	movaps	.LC3(%rip), %xmm0
	movq	%rbp, %rsi
	movl	$0x3e4ccccd, 16(%rsp)
	movq	%rax, 48(%rsp)
	movaps	%xmm0, (%rsp)
	call	fir
	leaq	.LC5(%rip), %rdi
	call	puts@PLT
	.p2align 4,,10
	.p2align 3
.L16:
	pxor	%xmm0, %xmm0
	movl	%ebx, %edx
	movq	%r12, %rsi
	movl	$1, %edi
	cvtss2sd	0(%rbp,%rbx,4), %xmm0
	movl	$1, %eax
	addq	$1, %rbx
	call	__printf_chk@PLT
	cmpq	$6, %rbx
	jne	.L16
	movq	88(%rsp), %rax
	subq	%fs:40, %rax
	jne	.L20
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
.L20:
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
	.section	.rodata.cst8,"aM",@progbits,8
	.align 8
.LC2:
	.long	1084227584
	.long	1086324736
	.section	.rodata.cst16
	.align 16
.LC3:
	.long	1045220557
	.long	1045220557
	.long	1045220557
	.long	1045220557
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
