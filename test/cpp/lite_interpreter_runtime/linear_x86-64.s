	.section	__TEXT,__text,regular,pure_instructions
	.macosx_version_min 10, 15
	.globl	_linear_wrapper         ## -- Begin function linear_wrapper
	.p2align	4, 0x90
_linear_wrapper:                        ## @linear_wrapper
## %bb.0:                               ## %wrapBB
	movq	(%rdi), %rax
	movq	8(%rdi), %rcx
	movq	16(%rdi), %rdx
	movups	(%rax), %xmm0
	movups	16(%rax), %xmm1
	movups	(%rdx), %xmm2
	addps	%xmm0, %xmm2
	movups	16(%rdx), %xmm0
	addps	%xmm1, %xmm0
	movups	%xmm0, 16(%rcx)
	movups	%xmm2, (%rcx)
	movups	32(%rax), %xmm0
	movups	48(%rax), %xmm1
	movups	32(%rdx), %xmm2
	addps	%xmm0, %xmm2
	movups	48(%rdx), %xmm0
	addps	%xmm1, %xmm0
	movups	%xmm0, 48(%rcx)
	movups	%xmm2, 32(%rcx)
	xorl	%eax, %eax
	retq
                                        ## -- End function

.subsections_via_symbols
