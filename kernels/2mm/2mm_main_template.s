	.file	"cmpeval.c"
	.text
	.p2align 4
	.globl	two_matrix_multiply
	.type	two_matrix_multiply, @function

<AI_PLACEHOLDER>

.LFE13:
	.size	two_matrix_multiply, .-two_matrix_multiply
	.section	.rodata.str1.8,"aMS",@progbits,1
	.align 8
.LC10:
	.string	"=== Output ==="
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC11:
	.string	"=== Resultant Matrix E ==="
.LC12:
	.string	"%f "
	.section	.text.startup,"ax",@progbits
	.p2align 4
	.globl	main
	.type	main, @function
main:
.LFB14:
	.cfi_startproc
	endbr64
	pushq	%r13
	.cfi_def_cfa_offset 16
	.cfi_offset 13, -16
	movl	$3, %ecx
	movl	$3, %edx
	xorl	%r13d, %r13d
	pushq	%r12
	.cfi_def_cfa_offset 24
	.cfi_offset 12, -24
	movl	$3, %esi
	movl	$3, %edi
	leaq	.LC12(%rip), %r12
	pushq	%rbp
	.cfi_def_cfa_offset 32
	.cfi_offset 6, -32
	pushq	%rbx
	.cfi_def_cfa_offset 40
	.cfi_offset 3, -40
	subq	$208, %rsp
	.cfi_def_cfa_offset 248
	movaps	.LC1(%rip), %xmm0
	movq	%fs:40, %rax
	movq	%rax, 192(%rsp)
	xorl	%eax, %eax
	leaq	152(%rsp), %rbp
	movl	$0x41100000, 40(%rsp)
	movaps	%xmm0, 8(%rsp)
	movaps	.LC2(%rip), %xmm0
	movl	$0x3f800000, 88(%rsp)
	movaps	%xmm0, 24(%rsp)
	movaps	.LC4(%rip), %xmm0
	movl	$0x40c00000, 136(%rsp)
	movaps	%xmm0, 56(%rsp)
	movaps	.LC5(%rip), %xmm0
	movl	$0, 184(%rsp)
	movaps	%xmm0, 72(%rsp)
	movaps	.LC7(%rip), %xmm0
	movaps	%xmm0, 104(%rsp)
	movaps	.LC8(%rip), %xmm0
	movaps	%xmm0, 120(%rsp)
	pxor	%xmm0, %xmm0
	movaps	%xmm0, 152(%rsp)
	movaps	%xmm0, 168(%rsp)
	pushq	%rbp
	.cfi_def_cfa_offset 256
	leaq	112(%rsp), %rax
	pushq	%rax
	.cfi_def_cfa_offset 264
	pushq	%rax
	.cfi_def_cfa_offset 272
	leaq	80(%rsp), %r9
	leaq	32(%rsp), %r8
	call	two_matrix_multiply
	addq	$32, %rsp
	.cfi_def_cfa_offset 240
	leaq	.LC10(%rip), %rdi
	call	puts@PLT
	leaq	.LC11(%rip), %rdi
	call	puts@PLT
.L39:
	xorl	%ebx, %ebx
.L40:
	pxor	%xmm0, %xmm0
	movq	%r12, %rsi
	movl	$1, %edi
	movl	$1, %eax
	cvtss2sd	0(%rbp,%rbx,4), %xmm0
	call	__printf_chk@PLT
	addq	$1, %rbx
	cmpq	$3, %rbx
	jne	.L40
	movl	$10, %edi
	addl	$3, %r13d
	addq	$12, %rbp
	call	putchar@PLT
	cmpl	$9, %r13d
	jne	.L39
	movq	184(%rsp), %rax
	subq	%fs:40, %rax
	jne	.L45
	addq	$200, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 40
	xorl	%eax, %eax
	popq	%rbx
	.cfi_def_cfa_offset 32
	popq	%rbp
	.cfi_def_cfa_offset 24
	popq	%r12
	.cfi_def_cfa_offset 16
	popq	%r13
	.cfi_def_cfa_offset 8
	ret
.L45:
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
	.align 16
.LC7:
	.long	1065353216
	.long	0
	.long	1073741824
	.long	0
	.align 16
.LC8:
	.long	1065353216
	.long	1077936128
	.long	1082130432
	.long	1084227584
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
