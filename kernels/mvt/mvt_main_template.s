	.file	"cmpeval.c"
	.text
	.p2align 4
	.globl	mvt
	.type	mvt, @function

<AI_PLACEHOLDER>

.LFE13:
	.size	mvt, .-mvt
	.section	.rodata.str1.8,"aMS",@progbits,1
	.align 8
.LC8:
	.string	"=== Output ==="
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC9:
	.string	"=== Vector x1 ==="
.LC10:
	.string	"%f "
.LC11:
	.string	"=== Vector x2 ==="
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
	subq	$120, %rsp
	.cfi_def_cfa_offset 160
	movaps	.LC1(%rip), %xmm0
	movq	%fs:40, %rax
	movq	%rax, 104(%rsp)
	xorl	%eax, %eax
	leaq	16(%rsp), %rbx
	movq	%rsp, %rbp
	leaq	64(%rsp), %rcx
	movaps	%xmm0, 64(%rsp)
	leaq	48(%rsp), %r9
	movq	%rbx, %rdx
	movq	%rbp, %rsi
	movq	.LC4(%rip), %rax
	movaps	.LC2(%rip), %xmm0
	leaq	32(%rsp), %r8
	movq	$0, (%rsp)
	movl	$0x00000000, 8(%rsp)
	leaq	12(%rsp), %r13
	movq	%rax, 32(%rsp)
	movq	.LC6(%rip), %rax
	movaps	%xmm0, 80(%rsp)
	movq	%rax, 48(%rsp)
	movq	$0, 16(%rsp)
	movl	$0x00000000, 24(%rsp)
	movl	$0x41100000, 96(%rsp)
	movl	$0x40400000, 40(%rsp)
	movl	$0x40c00000, 56(%rsp)
	call	mvt
	leaq	.LC8(%rip), %rdi
	call	puts@PLT
	leaq	.LC9(%rip), %rdi
	call	puts@PLT
.L14:
	pxor	%xmm0, %xmm0
	movq	%r12, %rsi
	movl	$1, %edi
	addq	$4, %rbp
	movl	$1, %eax
	cvtss2sd	-4(%rbp), %xmm0
	call	__printf_chk@PLT
	cmpq	%rbp, %r13
	jne	.L14
	movl	$10, %edi
	leaq	28(%rsp), %rbp
	call	putchar@PLT
	leaq	.LC11(%rip), %rdi
	call	puts@PLT
.L15:
	pxor	%xmm0, %xmm0
	movq	%r12, %rsi
	movl	$1, %edi
	addq	$4, %rbx
	movl	$1, %eax
	cvtss2sd	-4(%rbx), %xmm0
	call	__printf_chk@PLT
	cmpq	%rbx, %rbp
	jne	.L15
	movl	$10, %edi
	call	putchar@PLT
	movq	104(%rsp), %rax
	subq	%fs:40, %rax
	jne	.L20
	addq	$120, %rsp
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
	.align 16
.LC2:
	.long	1084227584
	.long	1086324736
	.long	1088421888
	.long	1090519040
	.set	.LC4,.LC1
	.section	.rodata.cst8,"aM",@progbits,8
	.align 8
.LC6:
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
