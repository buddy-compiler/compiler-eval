	.file	"cmpeval.c"
	.text
	.p2align 4
	.globl	relu
	.type	relu, @function

<AI_PLACEHOLDER>

.LFE13:
	.size	relu, .-relu
	.section	.rodata.str1.8,"aMS",@progbits,1
	.align 8
.LC3:
	.string	"=== Output ==="
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC4:
	.string	"=== ReLU Output ==="
.LC5:
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
	movl	$5, %edi
	pushq	%rbp
	.cfi_def_cfa_offset 24
	.cfi_offset 6, -24
	leaq	.LC5(%rip), %rbp
	pushq	%rbx
	.cfi_def_cfa_offset 32
	.cfi_offset 3, -32
	subq	$64, %rsp
	.cfi_def_cfa_offset 96
	movaps	.LC1(%rip), %xmm0
	movq	%fs:40, %rax
	movq	%rax, 56(%rsp)
	xorl	%eax, %eax
	leaq	32(%rsp), %rbx
	movq	%rsp, %rsi
	leaq	52(%rsp), %r12
	movq	%rbx, %rdx
	movaps	%xmm0, (%rsp)
	pxor	%xmm0, %xmm0
	movaps	%xmm0, 32(%rsp)
	movl	$0xc0a00000, 16(%rsp)
	movl	$0, 48(%rsp)
	call	relu
	leaq	.LC3(%rip), %rdi
	call	puts@PLT
	leaq	.LC4(%rip), %rdi
	call	puts@PLT
.L29:
	pxor	%xmm0, %xmm0
	movq	%rbp, %rsi
	movl	$1, %edi
	addq	$4, %rbx
	movl	$1, %eax
	cvtss2sd	-4(%rbx), %xmm0
	call	__printf_chk@PLT
	cmpq	%r12, %rbx
	jne	.L29
	movl	$10, %edi
	call	putchar@PLT
	movq	56(%rsp), %rax
	subq	%fs:40, %rax
	jne	.L33
	addq	$64, %rsp
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
.L33:
	.cfi_restore_state
	call	__stack_chk_fail@PLT
	.cfi_endproc
.LFE14:
	.size	main, .-main
	.section	.rodata.cst16,"aM",@progbits,16
	.align 16
.LC1:
	.long	-1082130432
	.long	1073741824
	.long	-1069547520
	.long	1082130432
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
