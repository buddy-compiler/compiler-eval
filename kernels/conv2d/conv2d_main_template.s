	.file	"cmpeval.c"
	.text
	.p2align 4
	.globl	conv2d
	.type	conv2d, @function

<AI_PLACEHOLDER>

.LFE13:
	.size	conv2d, .-conv2d
	.section	.rodata.str1.8,"aMS",@progbits,1
	.align 8
.LC11:
	.string	"=== Output ==="
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC12:
	.string	"=== Output Matrix ==="
.LC13:
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
	movl	$3, %edx
	movl	$5, %esi
	xorl	%r13d, %r13d
	pushq	%r12
	.cfi_def_cfa_offset 24
	.cfi_offset 12, -24
	movl	$5, %edi
	leaq	.LC13(%rip), %r12
	pushq	%rbp
	.cfi_def_cfa_offset 32
	.cfi_offset 6, -32
	pushq	%rbx
	.cfi_def_cfa_offset 40
	.cfi_offset 3, -40
	subq	$216, %rsp
	.cfi_def_cfa_offset 256
	movaps	.LC1(%rip), %xmm0
	movq	%fs:40, %rax
	movq	%rax, 200(%rsp)
	xorl	%eax, %eax
	leaq	48(%rsp), %rbp
	leaq	96(%rsp), %rcx
	movq	%rsp, %r8
	movaps	%xmm0, 96(%rsp)
	movaps	.LC2(%rip), %xmm0
	movq	%rbp, %r9
	movl	$0x41c80000, 192(%rsp)
	movaps	%xmm0, 112(%rsp)
	movaps	.LC3(%rip), %xmm0
	movl	$0xbf800000, 32(%rsp)
	movaps	%xmm0, 128(%rsp)
	movaps	.LC4(%rip), %xmm0
	movl	$0, 80(%rsp)
	movaps	%xmm0, 144(%rsp)
	movaps	.LC5(%rip), %xmm0
	movaps	%xmm0, 160(%rsp)
	movaps	.LC6(%rip), %xmm0
	movaps	%xmm0, 176(%rsp)
	movaps	.LC8(%rip), %xmm0
	movaps	%xmm0, (%rsp)
	movaps	.LC9(%rip), %xmm0
	movaps	%xmm0, 16(%rsp)
	pxor	%xmm0, %xmm0
	movaps	%xmm0, 48(%rsp)
	movaps	%xmm0, 64(%rsp)
	call	conv2d
	leaq	.LC11(%rip), %rdi
	call	puts@PLT
	leaq	.LC12(%rip), %rdi
	call	puts@PLT
.L21:
	xorl	%ebx, %ebx
.L22:
	pxor	%xmm0, %xmm0
	movq	%r12, %rsi
	movl	$1, %edi
	movl	$1, %eax
	cvtss2sd	0(%rbp,%rbx,4), %xmm0
	call	__printf_chk@PLT
	addq	$1, %rbx
	cmpq	$3, %rbx
	jne	.L22
	movl	$10, %edi
	addl	$3, %r13d
	addq	$12, %rbp
	call	putchar@PLT
	cmpl	$9, %r13d
	jne	.L21
	movq	200(%rsp), %rax
	subq	%fs:40, %rax
	jne	.L27
	addq	$216, %rsp
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
.L27:
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
.LC3:
	.long	1091567616
	.long	1092616192
	.long	1093664768
	.long	1094713344
	.align 16
.LC4:
	.long	1095761920
	.long	1096810496
	.long	1097859072
	.long	1098907648
	.align 16
.LC5:
	.long	1099431936
	.long	1099956224
	.long	1100480512
	.long	1101004800
	.align 16
.LC6:
	.long	1101529088
	.long	1102053376
	.long	1102577664
	.long	1103101952
	.align 16
.LC8:
	.long	1065353216
	.long	0
	.long	-1082130432
	.long	1065353216
	.align 16
.LC9:
	.long	0
	.long	-1082130432
	.long	1065353216
	.long	0
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
