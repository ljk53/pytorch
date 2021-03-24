	.text
	.syntax unified
	.eabi_attribute	67, "2.09"	@ Tag_conformance
	.eabi_attribute	6, 1	@ Tag_CPU_arch
	.eabi_attribute	8, 1	@ Tag_ARM_ISA_use
	.eabi_attribute	9, 2	@ Tag_THUMB_ISA_use
	.fpu	neon
	.eabi_attribute	34, 1	@ Tag_CPU_unaligned_access
	.eabi_attribute	17, 1	@ Tag_ABI_PCS_GOT_use
	.eabi_attribute	20, 1	@ Tag_ABI_FP_denormal
	.eabi_attribute	21, 1	@ Tag_ABI_FP_exceptions
	.eabi_attribute	23, 3	@ Tag_ABI_FP_number_model
	.eabi_attribute	24, 1	@ Tag_ABI_align_needed
	.eabi_attribute	25, 1	@ Tag_ABI_align_preserved
	.eabi_attribute	28, 1	@ Tag_ABI_VFP_args
	.eabi_attribute	38, 1	@ Tag_ABI_FP_16bit_format
	.eabi_attribute	14, 0	@ Tag_ABI_PCS_R9_use
	.file	"pytorch"
	.globl	linear_wrapper          @ -- Begin function linear_wrapper
	.p2align	2
	.type	linear_wrapper,%function
	.code	32                      @ @linear_wrapper
linear_wrapper:
	.fnstart
@ %bb.0:                                @ %wrapBB
	ldm	r0, {r1, r2}
	ldr	r0, [r0, #8]
	vldr	s2, [r1]
	vldr	s0, [r0]
	vadd.f32	s0, s2, s0
	vstr	s0, [r2]
	vldr	s0, [r0, #20]
	vldr	s2, [r1, #20]
	vadd.f32	s0, s2, s0
	vstr	s0, [r2, #20]
	vldr	s0, [r0, #40]
	vldr	s2, [r1, #40]
	vadd.f32	s0, s2, s0
	vstr	s0, [r2, #40]
	vldr	s0, [r0, #60]
	mov	r0, #0
	vldr	s2, [r1, #60]
	vadd.f32	s0, s2, s0
	vstr	s0, [r2, #60]
	mov	pc, lr
.Lfunc_end0:
	.size	linear_wrapper, .Lfunc_end0-linear_wrapper
	.cantunwind
	.fnend
                                        @ -- End function

	.section	".note.GNU-stack","",%progbits
	.eabi_attribute	30, 1	@ Tag_ABI_optimization_goals
