	.file	"cmpeval.c"
	.text
	.p2align 4
	.globl	fdtd_2d
	.type	fdtd_2d, @function

<AI_PLACEHOLDER>

.LFE0:
	.size	fdtd_2d, .-fdtd_2d
	.section	.rodata.str1.8,"aMS",@progbits,1
	.align 8
.LC1:
	.string	"=== Output ==="
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC2:
	.string	"fdtd:"
.LC3:
	.string	"%6.2f "
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
	pxor	%xmm0, %xmm0
	movl	$3, %ecx
	movl	$2, %r9d
	pushq	%r12
	.cfi_def_cfa_offset 24
	.cfi_offset 12, -24
	movl	$3, %r8d
	leaq	.LC3(%rip), %r12
	pushq	%rbp
	.cfi_def_cfa_offset 32
	.cfi_offset 6, -32
	pushq	%rbx
	.cfi_def_cfa_offset 40
	.cfi_offset 3, -40
	subq	$248, %rsp
	.cfi_def_cfa_offset 288
	leaq	160(%rsp), %rbp
	leaq	80(%rsp), %rsi
	movq	%rsp, %rdi
	movq	%fs:40, %rax
	movq	%rax, 232(%rsp)
	xorl	%eax, %eax
	movq	%rbp, %rdx
	movaps	%xmm0, (%rsp)
	leaq	232(%rsp), %r13
	movaps	%xmm0, 16(%rsp)
	movaps	%xmm0, 32(%rsp)
	movaps	%xmm0, 48(%rsp)
	movaps	%xmm0, 80(%rsp)
	movaps	%xmm0, 96(%rsp)
	movaps	%xmm0, 112(%rsp)
	movaps	%xmm0, 128(%rsp)
	movaps	%xmm0, 160(%rsp)
	movaps	%xmm0, 176(%rsp)
	movaps	%xmm0, 192(%rsp)
	movaps	%xmm0, 208(%rsp)
	movq	$0, 64(%rsp)
	movq	$0, 144(%rsp)
	movq	$0, 224(%rsp)
	call	fdtd_2d
	leaq	.LC1(%rip), %rdi
	call	puts@PLT
	leaq	.LC2(%rip), %rdi
	call	puts@PLT
.L92:
	xorl	%ebx, %ebx
.L93:
	movsd	0(%rbp,%rbx,8), %xmm0
	movq	%r12, %rsi
	movl	$1, %edi
	movl	$1, %eax
	addq	$1, %rbx
	call	__printf_chk@PLT
	cmpq	$3, %rbx
	jne	.L93
	movl	$10, %edi
	addq	$24, %rbp
	call	putchar@PLT
	cmpq	%r13, %rbp
	jne	.L92
	movq	232(%rsp), %rax
	subq	%fs:40, %rax
	jne	.L98
	addq	$248, %rsp
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
.L98:
	.cfi_restore_state
	call	__stack_chk_fail@PLT
	.cfi_endproc
.LFE14:
	.size	main, .-main
	.section	.rodata.cst8,"aM",@progbits,8
	.align 8
.LC0:
	.long	0
	.long	1072693248
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
