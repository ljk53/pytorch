	.section	__TEXT,__text,regular,pure_instructions
	.macosx_version_min 10, 15
	.syntax unified
	.globl	_linear_wrapper         @ -- Begin function linear_wrapper
	.p2align	2
	.code	32                      @ @linear_wrapper
_linear_wrapper:
@ %bb.0:                                @ %wrapBB
	push	{r4, lr}
	ldm	r0, {r1, r2}
	add	r4, r2, #16
	ldr	r0, [r0, #8]
	add	lr, r1, #32
	add	r3, r0, #16
	add	r12, r0, #32
	vld1.32	{d16, d17}, [r3]
	add	r3, r1, #16
	vld1.32	{d18, d19}, [r3]
	mov	r3, #48
	vadd.f32	q8, q9, q8
	vld1.32	{d18, d19}, [r0], r3
	vld1.32	{d20, d21}, [r1], r3
	vadd.f32	q9, q10, q9
	vst1.32	{d16, d17}, [r4]
	add	r4, r2, #32
	vst1.32	{d18, d19}, [r2], r3
	vld1.32	{d16, d17}, [r0]
	mov	r0, #0
	vld1.32	{d18, d19}, [r1]
	vadd.f32	q8, q9, q8
	vld1.32	{d20, d21}, [r12]
	vld1.32	{d18, d19}, [lr]
	vadd.f32	q9, q9, q10
	vst1.32	{d16, d17}, [r2]
	vst1.32	{d18, d19}, [r4]
	pop	{r4, lr}
	mov	pc, lr
                                        @ -- End function

.subsections_via_symbols
