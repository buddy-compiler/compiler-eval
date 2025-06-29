	.file	"cmpeval.c"
	.text
	.p2align 4
	.globl	resize
	.type	resize, @function



<AI_PLACEHOLDER>



.LFE0:
	.size	resize, .-resize
	.section	.rodata.str1.8,"aMS",@progbits,1
	.align 8
.LC0:
	.string	"=== Output ==="
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC1:
	.string	"%3d "
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
	pushq	%r12
	.cfi_def_cfa_offset 24
	.cfi_offset 12, -24
	leaq	.LC1(%rip), %r12
	pushq	%rbp
	.cfi_def_cfa_offset 32
	.cfi_offset 6, -32
	pushq	%rbx
	.cfi_def_cfa_offset 40
	.cfi_offset 3, -40
	subq	$56, %rsp
	.cfi_def_cfa_offset 96
	movq	%fs:40, %rax
	movq	%rax, 40(%rsp)
	xorl	%eax, %eax
	leaq	16(%rsp), %rbp
	leaq	12(%rsp), %rdi
	movl	$-87517596, 12(%rsp)
	movq	%rbp, %rsi
	leaq	32(%rsp), %r13
	call	resize
	leaq	.LC0(%rip), %rdi
	call	puts@PLT
.L4:
	xorl	%ebx, %ebx
.L5:
	movzbl	0(%rbp,%rbx), %edx
	movq	%r12, %rsi
	movl	$1, %edi
	xorl	%eax, %eax
	addq	$1, %rbx
	call	__printf_chk@PLT
	cmpq	$4, %rbx
	jne	.L5
	movl	$10, %edi
	addq	$4, %rbp
	call	putchar@PLT
	cmpq	%r13, %rbp
	jne	.L4
	movq	40(%rsp), %rax
	subq	%fs:40, %rax
	jne	.L10
	addq	$56, %rsp
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
.L10:
	.cfi_restore_state
	call	__stack_chk_fail@PLT
	.cfi_endproc
.LFE14:
	.size	main, .-main
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
