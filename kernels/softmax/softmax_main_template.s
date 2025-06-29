	.file	"cmpeval.c"
	.text
	.p2align 4
	.globl	softmax
	.type	softmax, @function

<AI_PLACEHOLDER>

.LFE13:
	.size	softmax, .-softmax
	.section	.rodata.str1.8,"aMS",@progbits,1
	.align 8
.LC22:
	.string	"=== Output ==="
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC23:
	.string	"=== Softmax Output ==="
.LC24:
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
	leaq	.LC24(%rip), %rbp
	pushq	%rbx
	.cfi_def_cfa_offset 32
	.cfi_offset 3, -32
	subq	$64, %rsp
	.cfi_def_cfa_offset 96
	movaps	.LC21(%rip), %xmm0
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
	movl	$0x40a00000, 16(%rsp)
	movl	$0, 48(%rsp)
	call	softmax
	leaq	.LC22(%rip), %rdi
	call	puts@PLT
	leaq	.LC23(%rip), %rdi
	call	puts@PLT
.L37:
	pxor	%xmm0, %xmm0
	movq	%rbp, %rsi
	movl	$1, %edi
	addq	$4, %rbx
	movl	$1, %eax
	cvtss2sd	-4(%rbx), %xmm0
	call	__printf_chk@PLT
	cmpq	%r12, %rbx
	jne	.L37
	movl	$10, %edi
	call	putchar@PLT
	movq	56(%rsp), %rax
	subq	%fs:40, %rax
	jne	.L41
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
.L41:
	.cfi_restore_state
	call	__stack_chk_fail@PLT
	.cfi_endproc
.LFE14:
	.size	main, .-main
	.section	.rodata.cst16,"aM",@progbits,16
	.align 16
.LC1:
	.long	1056964608
	.long	1056964608
	.long	1056964608
	.long	1056964608
	.align 16
.LC2:
	.long	1077936128
	.long	1077936128
	.long	1077936128
	.long	1077936128
	.align 16
.LC3:
	.long	1048576000
	.long	1048576000
	.long	1048576000
	.long	1048576000
	.align 16
.LC4:
	.long	1084227584
	.long	1084227584
	.long	1084227584
	.long	1084227584
	.align 16
.LC5:
	.long	1086324736
	.long	1086324736
	.long	1086324736
	.long	1086324736
	.align 16
.LC6:
	.long	1088421888
	.long	1088421888
	.long	1088421888
	.long	1088421888
	.align 16
.LC7:
	.long	1040187392
	.long	1040187392
	.long	1040187392
	.long	1040187392
	.align 16
.LC8:
	.long	1091567616
	.long	1091567616
	.long	1091567616
	.long	1091567616
	.align 16
.LC9:
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.align 16
.LC10:
	.long	1092616192
	.long	1092616192
	.long	1092616192
	.long	1092616192
	.set	.LC11,.LC9
	.set	.LC12,.LC1
	.set	.LC13,.LC2
	.set	.LC14,.LC3
	.set	.LC15,.LC4
	.set	.LC16,.LC5
	.set	.LC17,.LC6
	.set	.LC18,.LC7
	.set	.LC19,.LC8
	.set	.LC20,.LC10
	.align 16
.LC21:
	.long	1065353216
	.long	1073741824
	.long	1077936128
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
