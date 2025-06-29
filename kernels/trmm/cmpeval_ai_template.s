	.file	"cmpeval.c"
	.text
	.p2align 4
	.globl	trmm
	.type	trmm, @function

<AI_PLACEHOLDER>

.LFE13:
	.size	trmm, .-trmm
	.section	.rodata.str1.8,"aMS",@progbits,1
	.align 8
.LC8:
	.string	"=== Output ==="
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC9:
	.string	"=== Matrix B ==="
.LC10:
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
	movl	$3, %edi
	xorl	%r13d, %r13d
	pushq	%r12
	.cfi_def_cfa_offset 24
	.cfi_offset 12, -24
	leaq	.LC10(%rip), %r12
	pushq	%rbp
	.cfi_def_cfa_offset 32
	.cfi_offset 6, -32
	pushq	%rbx
	.cfi_def_cfa_offset 40
	.cfi_offset 3, -40
	subq	$104, %rsp
	.cfi_def_cfa_offset 144
	movaps	.LC1(%rip), %xmm0
	movq	%fs:40, %rax
	movq	%rax, 88(%rsp)
	xorl	%eax, %eax
	leaq	48(%rsp), %rbp
	movq	%rsp, %rsi
	movl	$0x40c00000, 32(%rsp)
	movaps	%xmm0, (%rsp)
	movaps	.LC2(%rip), %xmm0
	movq	%rbp, %rdx
	movl	$0x41100000, 80(%rsp)
	movaps	%xmm0, 16(%rsp)
	movaps	.LC4(%rip), %xmm0
	movaps	%xmm0, 48(%rsp)
	movaps	.LC5(%rip), %xmm0
	movaps	%xmm0, 64(%rsp)
	movss	.LC7(%rip), %xmm0
	call	trmm
	leaq	.LC8(%rip), %rdi
	call	puts@PLT
	leaq	.LC9(%rip), %rdi
	call	puts@PLT
.L15:
	xorl	%ebx, %ebx
.L16:
	pxor	%xmm0, %xmm0
	movq	%r12, %rsi
	movl	$1, %edi
	movl	$1, %eax
	cvtss2sd	0(%rbp,%rbx,4), %xmm0
	call	__printf_chk@PLT
	addq	$1, %rbx
	cmpq	$3, %rbx
	jne	.L16
	movl	$10, %edi
	addl	$3, %r13d
	addq	$12, %rbp
	call	putchar@PLT
	cmpl	$9, %r13d
	jne	.L15
	movq	88(%rsp), %rax
	subq	%fs:40, %rax
	jne	.L21
	addq	$104, %rsp
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
.L21:
	.cfi_restore_state
	call	__stack_chk_fail@PLT
	.cfi_endproc
.LFE14:
	.size	main, .-main
	.section	.rodata.cst16,"aM",@progbits,16
	.align 16
.LC1:
	.long	1065353216
	.long	0
	.long	0
	.long	1073741824
	.align 16
.LC2:
	.long	1077936128
	.long	0
	.long	1082130432
	.long	1084227584
	.align 16
.LC4:
	.long	1065353216
	.long	1073741824
	.long	1077936128
	.long	1082130432
	.align 16
.LC5:
	.long	1084227584
	.long	1086324736
	.long	1088421888
	.long	1090519040
	.set	.LC7,.LC1+12
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
