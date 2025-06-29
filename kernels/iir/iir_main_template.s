	.file	"cmpeval.c"
	.text
	.p2align 4
	.globl	iir_filter
	.type	iir_filter, @function


<AI_PLACEHOLDER>

.LFE0:
	.size	iir_filter, .-iir_filter
	.section	.rodata.str1.8,"aMS",@progbits,1
	.align 8
.LC8:
	.string	"=== Output ==="
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC9:
	.string	"Input: %lf Output: %lf\n"
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
	movl	$10, %r9d
	movl	$2, %r8d
	leaq	.LC9(%rip), %r13
	pushq	%r12
	.cfi_def_cfa_offset 24
	.cfi_offset 12, -24
	pushq	%rbp
	.cfi_def_cfa_offset 32
	.cfi_offset 6, -32
	pushq	%rbx
	.cfi_def_cfa_offset 40
	.cfi_offset 3, -40
	xorl	%ebx, %ebx
	subq	$248, %rsp
	.cfi_def_cfa_offset 288
	movapd	.LC0(%rip), %xmm0
	movapd	.LC2(%rip), %xmm1
	movq	%fs:40, %rax
	movq	%rax, 232(%rsp)
	xorl	%eax, %eax
	leaq	64(%rsp), %rbp
	leaq	32(%rsp), %rcx
	movq	%rsp, %rdx
	movaps	%xmm0, (%rsp)
	movq	.LC1(%rip), %rax
	leaq	144(%rsp), %r12
	movq	%rbp, %rdi
	movaps	%xmm0, 80(%rsp)
	movapd	.LC5(%rip), %xmm0
	movq	%r12, %rsi
	movq	%rax, 16(%rsp)
	movq	.LC3(%rip), %rax
	movaps	%xmm0, 96(%rsp)
	movapd	.LC6(%rip), %xmm0
	movaps	%xmm1, 32(%rsp)
	movapd	.LC4(%rip), %xmm1
	movaps	%xmm0, 112(%rsp)
	movapd	.LC7(%rip), %xmm0
	movq	%rax, 48(%rsp)
	movaps	%xmm1, 64(%rsp)
	movaps	%xmm0, 128(%rsp)
	call	iir_filter
	leaq	.LC8(%rip), %rdi
	call	puts@PLT
	.p2align 4,,10
	.p2align 3
.L40:
	movsd	0(%rbp,%rbx), %xmm0
	movsd	(%r12,%rbx), %xmm1
	movq	%r13, %rsi
	movl	$1, %edi
	movl	$2, %eax
	addq	$8, %rbx
	call	__printf_chk@PLT
	cmpq	$80, %rbx
	jne	.L40
	movq	232(%rsp), %rax
	subq	%fs:40, %rax
	jne	.L44
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
.L44:
	.cfi_restore_state
	call	__stack_chk_fail@PLT
	.cfi_endproc
.LFE14:
	.size	main, .-main
	.section	.rodata.cst16,"aM",@progbits,16
	.align 16
.LC0:
	.long	-1717986918
	.long	1070176665
	.long	858993459
	.long	1070805811
	.set	.LC1,.LC0
	.align 16
.LC2:
	.long	0
	.long	1072693248
	.long	-1717986918
	.long	-1076258407
	.set	.LC3,.LC0+8
	.align 16
.LC4:
	.long	0
	.long	0
	.long	-1717986918
	.long	1069128089
	.align 16
.LC5:
	.long	-1717986918
	.long	1071225241
	.long	0
	.long	1071644672
	.align 16
.LC6:
	.long	858993459
	.long	1071854387
	.long	1717986918
	.long	1072064102
	.align 16
.LC7:
	.long	-1717986918
	.long	1072273817
	.long	-858993459
	.long	1072483532
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

