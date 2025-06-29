	.file	"cmpeval.c"
	.text
	.p2align 4
	.globl	gemver
	.type	gemver, @function

<AI_PLACEHOLDER>

.LFE13:
	.size	gemver, .-gemver
	.section	.rodata.str1.8,"aMS",@progbits,1
	.align 8
.LC13:
	.string	"=== Output ==="
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC14:
	.string	"Matrix A:"
.LC15:
	.string	"%f "
.LC16:
	.string	"Vector x:"
.LC17:
	.string	"Vector z:"
	.section	.text.startup,"ax",@progbits
	.p2align 4
	.globl	main
	.type	main, @function
main:
.LFB14:
	.cfi_startproc
	endbr64
	pushq	%r15
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	movl	$3, %edi
	xorl	%r15d, %r15d
	pushq	%r14
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	pushq	%r13
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	pushq	%r12
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	leaq	.LC15(%rip), %r12
	pushq	%rbp
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	pushq	%rbx
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	subq	$168, %rsp
	.cfi_def_cfa_offset 224
	movaps	.LC0(%rip), %xmm0
	movq	%fs:40, %rax
	movq	%rax, 152(%rsp)
	xorl	%eax, %eax
	leaq	16(%rsp), %rcx
	movq	.LC3(%rip), %rax
	movl	$0x40400000, 8(%rsp)
	movaps	%xmm0, 112(%rsp)
	movaps	.LC1(%rip), %xmm0
	movq	%rsp, %rdx
	leaq	112(%rsp), %rbp
	movq	%rax, (%rsp)
	subq	$8, %rsp
	.cfi_def_cfa_offset 232
	movq	%rbp, %rsi
	movq	.LC5(%rip), %rax
	movaps	%xmm0, 136(%rsp)
	movss	.LC2(%rip), %xmm0
	movq	%rax, 24(%rsp)
	movq	.LC7(%rip), %rax
	movss	%xmm0, 152(%rsp)
	movq	%rax, 40(%rsp)
	movq	.LC8(%rip), %rax
	movss	%xmm0, 48(%rsp)
	movss	.LC12(%rip), %xmm0
	movq	%rax, 56(%rsp)
	movq	.LC11(%rip), %rax
	movl	$0x40c00000, 32(%rsp)
	movaps	%xmm0, %xmm1
	movl	$0x41400000, 64(%rsp)
	movq	$0, 72(%rsp)
	movl	$0x00000000, 80(%rsp)
	movq	%rax, 88(%rsp)
	movss	%xmm0, 96(%rsp)
	movq	$0, 104(%rsp)
	movl	$0x00000000, 112(%rsp)
	leaq	104(%rsp), %r13
	pushq	%r13
	.cfi_def_cfa_offset 240
	leaq	96(%rsp), %rax
	pushq	%rax
	.cfi_def_cfa_offset 248
	leaq	88(%rsp), %r14
	pushq	%r14
	.cfi_def_cfa_offset 256
	leaq	80(%rsp), %r9
	leaq	64(%rsp), %r8
	call	gemver
	addq	$32, %rsp
	.cfi_def_cfa_offset 224
	leaq	.LC13(%rip), %rdi
	call	puts@PLT
	leaq	.LC14(%rip), %rdi
	call	puts@PLT
.L34:
	xorl	%ebx, %ebx
.L35:
	pxor	%xmm0, %xmm0
	movq	%r12, %rsi
	movl	$1, %edi
	movl	$1, %eax
	cvtss2sd	0(%rbp,%rbx,4), %xmm0
	call	__printf_chk@PLT
	addq	$1, %rbx
	cmpq	$3, %rbx
	jne	.L35
	movl	$10, %edi
	addl	$3, %r15d
	addq	$12, %rbp
	call	putchar@PLT
	cmpl	$9, %r15d
	jne	.L34
	leaq	.LC16(%rip), %rdi
	leaq	76(%rsp), %rbx
	call	puts@PLT
.L37:
	pxor	%xmm0, %xmm0
	movq	%r12, %rsi
	movl	$1, %edi
	addq	$4, %r14
	movl	$1, %eax
	cvtss2sd	-4(%r14), %xmm0
	call	__printf_chk@PLT
	cmpq	%r14, %rbx
	jne	.L37
	movl	$10, %edi
	leaq	108(%rsp), %rbx
	call	putchar@PLT
	leaq	.LC17(%rip), %rdi
	call	puts@PLT
.L38:
	pxor	%xmm0, %xmm0
	movq	%r12, %rsi
	movl	$1, %edi
	addq	$4, %r13
	movl	$1, %eax
	cvtss2sd	-4(%r13), %xmm0
	call	__printf_chk@PLT
	cmpq	%r13, %rbx
	jne	.L38
	movl	$10, %edi
	call	putchar@PLT
	movq	152(%rsp), %rax
	subq	%fs:40, %rax
	jne	.L44
	addq	$168, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 56
	xorl	%eax, %eax
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
.L44:
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
.LC1:
	.long	1084227584
	.long	1086324736
	.long	1088421888
	.long	1090519040
	.section	.rodata.cst4,"aM",@progbits,4
	.align 4
.LC2:
	.long	1091567616
	.set	.LC3,.LC0
	.section	.rodata.cst8,"aM",@progbits,8
	.align 8
.LC5:
	.long	1082130432
	.long	1084227584
	.set	.LC7,.LC1+8
	.align 8
.LC8:
	.long	1092616192
	.long	1093664768
	.align 8
.LC11:
	.long	1065353216
	.long	1065353216
	.set	.LC12,.LC0
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
