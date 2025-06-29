	.file	"cmpeval.c"
	.text
	.p2align 4
	.globl	jacobi_2d
	.type	jacobi_2d, @function

<AI_PLACEHOLDER>

.LFE13:
	.size	jacobi_2d, .-jacobi_2d
	.section	.rodata.str1.8,"aMS",@progbits,1
	.align 8
.LC12:
	.string	"=== Output ==="
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC13:
	.string	"=== Final Array A ==="
.LC14:
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
	movl	$5, %esi
	movl	$6, %edi
	pushq	%r12
	.cfi_def_cfa_offset 24
	.cfi_offset 12, -24
	leaq	.LC14(%rip), %r12
	pushq	%rbp
	.cfi_def_cfa_offset 32
	.cfi_offset 6, -32
	pushq	%rbx
	.cfi_def_cfa_offset 40
	.cfi_offset 3, -40
	subq	$312, %rsp
	.cfi_def_cfa_offset 352
	movaps	.LC3(%rip), %xmm0
	movq	%fs:40, %rax
	movq	%rax, 296(%rsp)
	xorl	%eax, %eax
	leaq	144(%rsp), %r13
	movq	%rsp, %rbp
	movaps	%xmm0, (%rsp)
	movaps	.LC4(%rip), %xmm0
	movq	%r13, %rcx
	movq	%rbp, %rdx
	movaps	%xmm0, 16(%rsp)
	movaps	.LC5(%rip), %xmm0
	movaps	%xmm0, 32(%rsp)
	movaps	.LC6(%rip), %xmm0
	movaps	%xmm0, 48(%rsp)
	movaps	.LC7(%rip), %xmm0
	movaps	%xmm0, 64(%rsp)
	movaps	.LC8(%rip), %xmm0
	movaps	%xmm0, 80(%rsp)
	movaps	.LC9(%rip), %xmm0
	movaps	%xmm0, 96(%rsp)
	movaps	.LC10(%rip), %xmm0
	movaps	%xmm0, 112(%rsp)
	movaps	.LC11(%rip), %xmm0
	movaps	%xmm0, 128(%rsp)
	pxor	%xmm0, %xmm0
	movaps	%xmm0, 144(%rsp)
	movaps	%xmm0, 160(%rsp)
	movaps	%xmm0, 176(%rsp)
	movaps	%xmm0, 192(%rsp)
	movaps	%xmm0, 208(%rsp)
	movaps	%xmm0, 224(%rsp)
	movaps	%xmm0, 240(%rsp)
	movaps	%xmm0, 256(%rsp)
	movaps	%xmm0, 272(%rsp)
	call	jacobi_2d
	leaq	.LC12(%rip), %rdi
	call	puts@PLT
	leaq	.LC13(%rip), %rdi
	call	puts@PLT
	.p2align 4,,10
	.p2align 3
.L44:
	xorl	%ebx, %ebx
	.p2align 4,,10
	.p2align 3
.L45:
	pxor	%xmm0, %xmm0
	movq	%r12, %rsi
	movl	$1, %edi
	movl	$1, %eax
	cvtss2sd	0(%rbp,%rbx,4), %xmm0
	call	__printf_chk@PLT
	addq	$1, %rbx
	cmpq	$6, %rbx
	jne	.L45
	movl	$10, %edi
	addq	$24, %rbp
	call	putchar@PLT
	cmpq	%rbp, %r13
	jne	.L44
	movq	296(%rsp), %rax
	subq	%fs:40, %rax
	jne	.L50
	addq	$312, %rsp
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
.L50:
	.cfi_restore_state
	call	__stack_chk_fail@PLT
	.cfi_endproc
.LFE14:
	.size	main, .-main
	.section	.rodata.cst16,"aM",@progbits,16
	.align 16
.LC0:
	.long	1048576000
	.long	1048576000
	.long	1048576000
	.long	1048576000
	.set	.LC1,.LC0
	.set	.LC2,.LC0
	.align 16
.LC3:
	.long	0
	.long	1065353216
	.long	1073741824
	.long	1077936128
	.align 16
.LC4:
	.long	1082130432
	.long	1084227584
	.long	1086324736
	.long	1088421888
	.align 16
.LC5:
	.long	1090519040
	.long	1091567616
	.long	1092616192
	.long	1093664768
	.align 16
.LC6:
	.long	1094713344
	.long	1095761920
	.long	1096810496
	.long	1097859072
	.align 16
.LC7:
	.long	1098907648
	.long	1099431936
	.long	1099956224
	.long	1100480512
	.align 16
.LC8:
	.long	1101004800
	.long	1101529088
	.long	1102053376
	.long	1102577664
	.align 16
.LC9:
	.long	1103101952
	.long	1103626240
	.long	1104150528
	.long	1104674816
	.align 16
.LC10:
	.long	1105199104
	.long	1105723392
	.long	1106247680
	.long	1106771968
	.align 16
.LC11:
	.long	1107296256
	.long	1107558400
	.long	1107820544
	.long	1108082688
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
