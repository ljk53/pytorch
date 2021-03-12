	.section	__TEXT,__text,regular,pure_instructions
	.macosx_version_min 10, 15
	.syntax unified
	.globl	_mobilenetv3_wrapper    @ -- Begin function mobilenetv3_wrapper
	.p2align	4
	.code	32                      @ @mobilenetv3_wrapper
_mobilenetv3_wrapper:
@ %bb.0:                                @ %wrapBB
	push	{r4, r5, r6, r7, r8, r10, r11, lr}
	add	r7, sp, #24
	sub	r4, sp, #64
	bic	r4, r4, #31
	mov	sp, r4
	vst1.64	{d8, d9, d10, d11}, [r4:128]!
	vst1.64	{d12, d13, d14, d15}, [r4:128]
	sub	sp, sp, #1856
	add	r2, r0, #368
	mov	r6, sp
	vld1.64	{d16, d17}, [r2]
	add	lr, r6, #960
	add	r2, r0, #360
	add	r3, r0, #104
	vst1.64	{d16, d17}, [lr:128]    @ 16-byte Spill
	add	lr, r6, #928
	vld1.64	{d16, d17}, [r2]
	add	r2, r0, #352
	vst1.64	{d16, d17}, [lr:128]    @ 16-byte Spill
	add	lr, r6, #896
	vld1.64	{d16, d17}, [r2]
	add	r2, r0, #344
	vst1.64	{d16, d17}, [lr:128]    @ 16-byte Spill
	add	lr, r6, #864
	vld1.64	{d16, d17}, [r2]
	add	r2, r0, #336
	vst1.64	{d16, d17}, [lr:128]    @ 16-byte Spill
	add	lr, r6, #848
	vld1.64	{d16, d17}, [r2]
	add	r2, r0, #328
	vst1.64	{d16, d17}, [lr:128]    @ 16-byte Spill
	add	lr, r6, #816
	vld1.64	{d16, d17}, [r2]
	add	r2, r0, #320
	vst1.64	{d16, d17}, [lr:128]    @ 16-byte Spill
	add	lr, r6, #784
	vld1.64	{d16, d17}, [r2]
	add	r2, r0, #312
	vst1.64	{d16, d17}, [lr:128]    @ 16-byte Spill
	add	lr, r6, #768
	vld1.64	{d16, d17}, [r2]
	add	r2, r0, #304
	vst1.64	{d16, d17}, [lr:128]    @ 16-byte Spill
	add	lr, r6, #736
	vld1.64	{d16, d17}, [r2]
	add	r2, r0, #296
	vst1.64	{d16, d17}, [lr:128]    @ 16-byte Spill
	add	lr, r6, #704
	vld1.64	{d16, d17}, [r2]
	add	r2, r0, #288
	vst1.64	{d16, d17}, [lr:128]    @ 16-byte Spill
	add	lr, r6, #672
	vld1.64	{d16, d17}, [r2]
	add	r2, r0, #280
	vst1.64	{d16, d17}, [lr:128]    @ 16-byte Spill
	add	lr, r6, #640
	vld1.64	{d16, d17}, [r2]
	add	r2, r0, #272
	vst1.64	{d16, d17}, [lr:128]    @ 16-byte Spill
	add	lr, r6, #592
	vld1.64	{d16, d17}, [r2]
	add	r2, r0, #264
	vst1.64	{d16, d17}, [lr:128]    @ 16-byte Spill
	add	lr, r6, #576
	vld1.64	{d16, d17}, [r2]
	add	r2, r0, #256
	vst1.64	{d16, d17}, [lr:128]    @ 16-byte Spill
	add	lr, r6, #544
	vld1.64	{d16, d17}, [r2]
	add	r2, r0, #248
	vst1.64	{d16, d17}, [lr:128]    @ 16-byte Spill
	add	lr, r6, #496
	vld1.64	{d16, d17}, [r2]
	add	r2, r0, #240
	vst1.64	{d16, d17}, [lr:128]    @ 16-byte Spill
	add	lr, r6, #464
	vld1.64	{d16, d17}, [r2]
	add	r2, r0, #232
	vst1.64	{d16, d17}, [lr:128]    @ 16-byte Spill
	add	lr, r6, #432
	vld1.64	{d16, d17}, [r2]
	add	r2, r0, #224
	vst1.64	{d16, d17}, [lr:128]    @ 16-byte Spill
	add	lr, r6, #400
	vld1.64	{d16, d17}, [r2]
	add	r2, r0, #216
	vst1.64	{d16, d17}, [lr:128]    @ 16-byte Spill
	add	lr, r6, #384
	vld1.64	{d16, d17}, [r2]
	add	r2, r0, #208
	vst1.64	{d16, d17}, [lr:128]    @ 16-byte Spill
	add	lr, r6, #352
	vld1.64	{d16, d17}, [r2]
	add	r2, r0, #200
	vst1.64	{d16, d17}, [lr:128]    @ 16-byte Spill
	add	lr, r6, #320
	vld1.64	{d16, d17}, [r2]
	add	r2, r0, #192
	vst1.64	{d16, d17}, [lr:128]    @ 16-byte Spill
	add	lr, r6, #304
	vld1.64	{d16, d17}, [r2]
	add	r2, r0, #184
	vst1.64	{d16, d17}, [lr:128]    @ 16-byte Spill
	add	lr, r6, #272
	vld1.64	{d16, d17}, [r2]
	add	r2, r0, #176
	vst1.64	{d16, d17}, [lr:128]    @ 16-byte Spill
	add	lr, r6, #240
	vld1.64	{d16, d17}, [r2]
	add	r2, r0, #168
	vst1.64	{d16, d17}, [lr:128]    @ 16-byte Spill
	add	lr, r6, #224
	vld1.64	{d16, d17}, [r2]
	add	r2, r0, #160
	vst1.64	{d16, d17}, [lr:128]    @ 16-byte Spill
	add	lr, r6, #192
	vld1.64	{d16, d17}, [r2]
	add	r2, r0, #152
	vst1.64	{d16, d17}, [lr:128]    @ 16-byte Spill
	add	lr, r6, #160
	vld1.64	{d16, d17}, [r2]
	add	r2, r0, #144
	vst1.64	{d16, d17}, [lr:128]    @ 16-byte Spill
	add	lr, r6, #144
	vld1.64	{d16, d17}, [r2]
	add	r2, r0, #136
	vst1.64	{d16, d17}, [lr:128]    @ 16-byte Spill
	add	lr, r6, #112
	vld1.64	{d16, d17}, [r2]
	add	r2, r0, #128
	vst1.64	{d16, d17}, [lr:128]    @ 16-byte Spill
	add	lr, r6, #80
	vld1.64	{d16, d17}, [r2]
	add	r2, r0, #120
	vst1.64	{d16, d17}, [lr:128]    @ 16-byte Spill
	add	lr, r6, #64
	vld1.64	{d16, d17}, [r2]
	add	r2, r0, #112
	vst1.64	{d16, d17}, [lr:128]    @ 16-byte Spill
	add	lr, r6, #32
	vld1.64	{d16, d17}, [r2]
	mov	r2, r0
	ldr	r1, [r2, #88]!
	str	r1, [r6, #1052]         @ 4-byte Spill
	ldr	r1, [r0]
	str	r1, [r6, #1408]         @ 4-byte Spill
	ldr	r1, [r0, #4]
	str	r1, [r6, #1040]         @ 4-byte Spill
	ldr	r1, [r0, #8]
	str	r1, [r6, #1056]         @ 4-byte Spill
	ldr	r1, [r0, #12]
	str	r1, [r6, #1192]         @ 4-byte Spill
	ldr	r1, [r0, #820]
	str	r1, [r6, #1044]         @ 4-byte Spill
	ldr	r1, [r0, #816]
	str	r1, [r6, #1048]         @ 4-byte Spill
	ldr	r1, [r0, #812]
	str	r1, [r6, #1032]         @ 4-byte Spill
	ldr	r1, [r0, #508]
	str	r1, [r6, #1068]         @ 4-byte Spill
	ldr	r1, [r0, #440]
	str	r1, [r6, #996]          @ 4-byte Spill
	ldr	r1, [r0, #84]
	str	r1, [r6, #1036]         @ 4-byte Spill
	ldr	r1, [r0, #64]
	str	r1, [r6, #1088]         @ 4-byte Spill
	ldr	r1, [r0, #32]
	str	r1, [r6, #1140]         @ 4-byte Spill
	ldr	r1, [r0, #36]
	str	r1, [r6, #1132]         @ 4-byte Spill
	ldr	r1, [r0, #40]
	str	r1, [r6, #668]          @ 4-byte Spill
	ldr	r1, [r0, #44]
	str	r1, [r6, #1124]         @ 4-byte Spill
	ldr	r1, [r0, #48]
	str	r1, [r6, #568]          @ 4-byte Spill
	ldr	r1, [r0, #52]
	str	r1, [r6, #1108]         @ 4-byte Spill
	ldr	r1, [r0, #56]
	str	r1, [r6, #1104]         @ 4-byte Spill
	ldr	r1, [r0, #60]
	str	r1, [r6, #1100]         @ 4-byte Spill
	ldr	r1, [r0, #28]
	str	r1, [r6, #1148]         @ 4-byte Spill
	ldr	r1, [r0, #24]
	str	r1, [r6, #1156]         @ 4-byte Spill
	ldr	r1, [r0, #20]
	str	r1, [r6, #1168]         @ 4-byte Spill
	ldr	r1, [r0, #16]
	str	r1, [r6, #1176]         @ 4-byte Spill
	ldr	r1, [r0, #808]
	str	r1, [r6, #1028]         @ 4-byte Spill
	ldr	r1, [r0, #804]
	str	r1, [r6, #1188]         @ 4-byte Spill
	ldr	r1, [r0, #800]
	str	r1, [r6, #992]          @ 4-byte Spill
	ldr	r1, [r0, #796]
	str	r1, [r6, #1460]         @ 4-byte Spill
	ldr	r1, [r0, #792]
	str	r1, [r6, #1304]         @ 4-byte Spill
	ldr	r1, [r0, #784]
	str	r1, [r6, #916]          @ 4-byte Spill
	ldr	r1, [r0, #776]
	str	r1, [r6, #888]          @ 4-byte Spill
	ldr	r1, [r0, #772]
	str	r1, [r6, #884]          @ 4-byte Spill
	ldr	r1, [r0, #768]
	str	r1, [r6, #756]          @ 4-byte Spill
	ldr	r1, [r0, #764]
	str	r1, [r6, #1184]         @ 4-byte Spill
	ldr	r1, [r0, #760]
	str	r1, [r6, #1456]         @ 4-byte Spill
	ldr	r1, [r0, #756]
	str	r1, [r6, #1300]         @ 4-byte Spill
	ldr	r1, [r0, #748]
	str	r1, [r6, #808]          @ 4-byte Spill
	ldr	r1, [r0, #744]
	str	r1, [r6, #1480]         @ 4-byte Spill
	ldr	r1, [r0, #740]
	str	r1, [r6, #220]          @ 4-byte Spill
	ldr	r1, [r0, #736]
	str	r1, [r6, #764]          @ 4-byte Spill
	ldr	r1, [r0, #732]
	str	r1, [r6, #492]          @ 4-byte Spill
	ldr	r1, [r0, #728]
	str	r1, [r6, #760]          @ 4-byte Spill
	ldr	r1, [r0, #720]
	str	r1, [r6, #752]          @ 4-byte Spill
	ldr	r1, [r0, #716]
	str	r1, [r6, #1476]         @ 4-byte Spill
	ldr	r1, [r0, #712]
	str	r1, [r6, #268]          @ 4-byte Spill
	ldr	r1, [r0, #708]
	str	r1, [r6, #300]          @ 4-byte Spill
	ldr	r1, [r0, #704]
	str	r1, [r6, #836]          @ 4-byte Spill
	ldr	r1, [r0, #700]
	str	r1, [r6, #376]          @ 4-byte Spill
	ldr	r1, [r0, #696]
	str	r1, [r6, #572]          @ 4-byte Spill
	ldr	r1, [r0, #692]
	str	r1, [r6, #700]          @ 4-byte Spill
	ldr	r1, [r0, #688]
	str	r1, [r6, #1296]         @ 4-byte Spill
	ldr	r1, [r0, #684]
	str	r1, [r6, #1452]         @ 4-byte Spill
	ldr	r1, [r0, #680]
	str	r1, [r6, #1536]         @ 4-byte Spill
	ldr	r1, [r0, #676]
	str	r1, [r6, #380]          @ 4-byte Spill
	ldr	r1, [r0, #668]
	str	r1, [r6, #1208]         @ 4-byte Spill
	ldr	r1, [r0, #664]
	str	r1, [r6, #664]          @ 4-byte Spill
	ldr	r1, [r0, #660]
	str	r1, [r6, #1308]         @ 4-byte Spill
	ldr	r1, [r0, #656]
	str	r1, [r6, #60]           @ 4-byte Spill
	ldr	r1, [r0, #652]
	str	r1, [r6, #812]          @ 4-byte Spill
	ldr	r1, [r0, #648]
	str	r1, [r6, #1288]         @ 4-byte Spill
	ldr	r1, [r0, #644]
	str	r1, [r6, #140]          @ 4-byte Spill
	ldr	r1, [r0, #636]
	str	r1, [r6, #1500]         @ 4-byte Spill
	ldr	r1, [r0, #632]
	str	r1, [r6, #520]          @ 4-byte Spill
	ldr	r1, [r0, #600]
	str	r1, [r6, #1092]         @ 4-byte Spill
	ldr	r1, [r0, #608]
	str	r1, [r6, #460]          @ 4-byte Spill
	ldr	r1, [r0, #616]
	str	r1, [r6, #720]          @ 4-byte Spill
	ldr	r1, [r0, #620]
	str	r1, [r6, #1448]         @ 4-byte Spill
	ldr	r1, [r0, #624]
	str	r1, [r6, #1196]         @ 4-byte Spill
	ldr	r1, [r0, #628]
	str	r1, [r6, #524]          @ 4-byte Spill
	ldr	r1, [r0, #596]
	str	r1, [r6, #1392]         @ 4-byte Spill
	ldr	r1, [r0, #588]
	str	r1, [r6, #1356]         @ 4-byte Spill
	ldr	r1, [r0, #584]
	str	r1, [r6, #1496]         @ 4-byte Spill
	ldr	r1, [r0, #580]
	str	r1, [r6, #1160]         @ 4-byte Spill
	ldr	r1, [r0, #576]
	str	r1, [r6, #1376]         @ 4-byte Spill
	ldr	r1, [r0, #572]
	str	r1, [r6, #1584]         @ 4-byte Spill
	ldr	r1, [r0, #568]
	str	r1, [r6, #1280]         @ 4-byte Spill
	ldr	r1, [r0, #560]
	str	r1, [r6, #340]          @ 4-byte Spill
	ldr	r1, [r0, #556]
	str	r1, [r6, #1472]         @ 4-byte Spill
	ldr	r1, [r0, #552]
	str	r1, [r6, #1464]         @ 4-byte Spill
	ldr	r1, [r0, #548]
	str	r1, [r6, #1276]         @ 4-byte Spill
	ldr	r1, [r0, #544]
	str	r1, [r6, #1248]         @ 4-byte Spill
	ldr	r1, [r0, #540]
	str	r1, [r6, #636]          @ 4-byte Spill
	ldr	r1, [r0, #536]
	str	r1, [r6, #188]          @ 4-byte Spill
	ldr	r1, [r0, #532]
	str	r1, [r6, #1488]         @ 4-byte Spill
	ldr	r1, [r0, #528]
	str	r1, [r6, #724]          @ 4-byte Spill
	ldr	r1, [r0, #524]
	str	r1, [r6, #108]          @ 4-byte Spill
	ldr	r1, [r0, #520]
	str	r1, [r6, #1568]         @ 4-byte Spill
	ldr	r1, [r0, #516]
	str	r1, [r6, #804]          @ 4-byte Spill
	ldr	r1, [r0, #512]
	str	r1, [r6, #1200]         @ 4-byte Spill
	ldr	r1, [r0, #500]
	str	r1, [r6, #536]          @ 4-byte Spill
	ldr	r1, [r0, #496]
	str	r1, [r6, #620]          @ 4-byte Spill
	ldr	r1, [r0, #492]
	str	r1, [r6, #1424]         @ 4-byte Spill
	ldr	r1, [r0, #480]
	str	r1, [r6, #1232]         @ 4-byte Spill
	ldr	r1, [r0, #476]
	str	r1, [r6, #1520]         @ 4-byte Spill
	ldr	r1, [r0, #472]
	str	r1, [r6, #1552]         @ 4-byte Spill
	ldr	r1, [r0, #464]
	str	r1, [r6, #1484]         @ 4-byte Spill
	ldr	r1, [r0, #460]
	str	r1, [r6, #1492]         @ 4-byte Spill
	ldr	r1, [r0, #456]
	str	r1, [r6, #540]          @ 4-byte Spill
	ldr	r1, [r0, #452]
	str	r1, [r6, #1180]         @ 4-byte Spill
	ldr	r1, [r0, #448]
	str	r1, [r6, #1284]         @ 4-byte Spill
	ldr	r1, [r0, #432]
	str	r1, [r6, #1216]         @ 4-byte Spill
	ldr	r1, [r0, #428]
	str	r1, [r6, #892]          @ 4-byte Spill
	ldr	r1, [r0, #420]
	str	r1, [r6, #988]          @ 4-byte Spill
	ldr	r1, [r0, #416]
	str	r1, [r6, #1468]         @ 4-byte Spill
	ldr	r1, [r0, #412]
	str	r1, [r6, #1292]         @ 4-byte Spill
	ldr	r1, [r0, #408]
	str	r1, [r6, #56]           @ 4-byte Spill
	ldr	r1, [r0, #376]
	str	r1, [r6, #1072]         @ 4-byte Spill
	ldr	r1, [r0, #380]
	str	r1, [r6, #1172]         @ 4-byte Spill
	ldr	r1, [r0, #384]
	str	r1, [r6, #624]          @ 4-byte Spill
	ldr	r1, [r0, #388]
	str	r1, [r6, #1504]         @ 4-byte Spill
	ldr	r1, [r0, #392]
	str	r1, [r6, #428]          @ 4-byte Spill
	ldr	r1, [r0, #400]
	str	r1, [r6, #956]          @ 4-byte Spill
	ldr	r1, [r0, #404]
	str	r1, [r6, #52]           @ 4-byte Spill
	ldr	r1, [r0, #72]
	str	r1, [r6, #1360]         @ 4-byte Spill
	ldr	r1, [r0, #68]
	str	r1, [r6, #1076]         @ 4-byte Spill
	ldr	r1, [r0, #80]
	str	r1, [r6, #1060]         @ 4-byte Spill
	ldr	r1, [r0, #76]
	str	r1, [r6, #1064]         @ 4-byte Spill
	ldr	r1, [r0, #424]
	str	r1, [r6, #1112]         @ 4-byte Spill
	ldr	r1, [r0, #468]
	str	r1, [r6, #1080]         @ 4-byte Spill
	ldr	r1, [r0, #444]
	str	r1, [r6, #1212]         @ 4-byte Spill
	ldr	r1, [r0, #504]
	str	r1, [r6, #1128]         @ 4-byte Spill
	ldr	r1, [r0, #484]
	str	r1, [r6, #1096]         @ 4-byte Spill
	ldr	r1, [r0, #592]
	str	r1, [r6, #1204]         @ 4-byte Spill
	ldr	r1, [r0, #564]
	str	r1, [r6, #1084]         @ 4-byte Spill
	ldr	r1, [r0, #672]
	str	r1, [r6, #1120]         @ 4-byte Spill
	ldr	r1, [r0, #640]
	str	r1, [r6, #1144]         @ 4-byte Spill
	ldr	r1, [r0, #752]
	str	r1, [r6, #1152]         @ 4-byte Spill
	ldr	r1, [r0, #724]
	str	r1, [r6, #1136]         @ 4-byte Spill
	ldr	r1, [r0, #788]
	vst1.64	{d16, d17}, [lr:128]    @ 16-byte Spill
	add	lr, r6, #1024
	str	r1, [r6, #1164]         @ 4-byte Spill
	ldr	r1, [r0, #780]
	ldr	r10, [r0, #604]
	ldr	r8, [r0, #612]
	ldr	r5, [r0, #488]
	ldr	r11, [r0, #396]
	ldr	r4, [r0, #436]
	add	r0, r0, #96
	vld1.64	{d16, d17}, [r0]
	add	r0, lr, #808
	add	r0, r0, #8
	add	lr, r6, #1792
	vld1.64	{d10, d11}, [r3]
	mov	r3, #0
	vld1.64	{d13, d14}, [r2]
	str	r1, [r6, #1116]         @ 4-byte Spill
	vst1.64	{d16, d17}, [r0]
	adr	r0, LCPI0_75
	vld1.64	{d16, d17}, [r0:128]
	orr	r0, lr, #16
	vst1.64	{d16, d17}, [r0:128]
	adr	r0, LCPI0_76
	vld1.64	{d16, d17}, [r0:128]
	vst1.64	{d16, d17}, [lr:128]
	adr	r0, LCPI0_77
	vld1.64	{d16, d17}, [r0:128]
	add	r0, r6, #1024
	add	r0, r0, #664
	add	r1, r0, #48
	vst1.64	{d16, d17}, [r1]
	adr	r1, LCPI0_78
	vld1.64	{d16, d17}, [r1:128]
	add	r1, r0, #32
	vst1.64	{d16, d17}, [r1]
	adr	r1, LCPI0_79
	vld1.64	{d16, d17}, [r1:128]
	add	r1, r0, #80
	vst1.64	{d16, d17}, [r1]
	adr	r1, LCPI0_80
	vld1.64	{d16, d17}, [r1:128]
	add	r1, r0, #64
	vst1.64	{d16, d17}, [r1]
	adr	r1, LCPI0_81
	vld1.64	{d16, d17}, [r1:128]
	mov	r1, r0
	vst1.32	{d16, d17}, [r1]!
	adr	r12, LCPI0_82
	vld1.64	{d16, d17}, [r12:128]
	vst1.64	{d16, d17}, [r1]
	adr	r1, LCPI0_83
	vld1.64	{d16, d17}, [r1:128]
	add	r1, r6, #1024
	add	r2, r1, #600
	add	r1, r2, #16
	mov	r12, r2
	vst1.64	{d16, d17}, [r1]
	add	r1, r2, #32
	vst1.64	{d16, d17}, [r1]
	adr	r1, LCPI0_84
	vld1.64	{d16, d17}, [r1:128]
	mov	r1, #52
	vst1.32	{d16, d17}, [r12], r1
	mov	r1, #16
	str	r3, [r12]
	add	r12, r6, #1024
	add	r12, r12, #648
	str	r1, [r12, #112]
	mov	r1, #6
	strb	r1, [r12, #12]
	strb	r1, [r12, #13]
	strb	r1, [r12, #14]
	strb	r1, [r12, #15]
	mov	r1, #1
	str	r1, [r12]
	ldr	r1, [r6, #1408]         @ 4-byte Reload
	str	r4, [r12, #160]
	str	r1, [r12, #164]
	str	r3, [r12, #116]
	sub	sp, sp, #20
	add	r1, r6, #1024
	mov	r12, #7
	add	r1, r1, #660
	stm	sp, {r0, r1, r12}
	mov	r0, #4
	str	r2, [sp, #16]
	add	r2, r6, #1024
	add	r2, r2, #808
	str	r3, [sp, #12]
	mov	r1, #0
	mov	r3, lr
	bl	_nnc_aten_conv2d
	mov	r1, #0
	add	sp, sp, #20
	ldr	r0, [r6, #1164]         @ 4-byte Reload
	vmov.f32	s16, #6.000000e+00
	vmov.f32	q8, #3.000000e+00
	add	lr, r6, #1000
	add	r0, r0, #32
	str	r0, [r6, #924]          @ 4-byte Spill
	ldr	r0, [r6, #1116]         @ 4-byte Reload
	vmov.f32	q9, #6.000000e+00
	mov	r2, #0
	vorr	d15, d13, d13
	add	r0, r0, #32
	str	r0, [r6, #632]          @ 4-byte Spill
	ldr	r0, [r6, #1152]         @ 4-byte Reload
	vstmia	lr, {d13, d14, d15}     @ 24-byte Spill
	add	r0, r0, #32
	str	r0, [r6, #844]          @ 4-byte Spill
	ldr	r0, [r6, #1136]         @ 4-byte Reload
	add	r0, r0, #32
	str	r0, [r6, #732]          @ 4-byte Spill
	ldr	r0, [r6, #1120]         @ 4-byte Reload
	add	r0, r0, #32
	str	r0, [r6, #628]          @ 4-byte Spill
	ldr	r0, [r6, #1144]         @ 4-byte Reload
	add	r0, r0, #32
	str	r0, [r6, #840]          @ 4-byte Spill
	ldr	r0, [r6, #1204]         @ 4-byte Reload
	add	r0, r0, #32
	str	r0, [r6, #424]          @ 4-byte Spill
	ldr	r0, [r6, #1084]         @ 4-byte Reload
	add	r0, r0, #32
	str	r0, [r6, #348]          @ 4-byte Spill
	ldr	r0, [r6, #1128]         @ 4-byte Reload
	add	r0, r0, #32
	str	r0, [r6, #728]          @ 4-byte Spill
	ldr	r0, [r6, #1096]         @ 4-byte Reload
	add	r0, r0, #32
	str	r0, [r6, #420]          @ 4-byte Spill
	ldr	r0, [r6, #1080]         @ 4-byte Reload
	add	r0, r0, #32
	str	r0, [r6, #344]          @ 4-byte Spill
	ldr	r0, [r6, #1212]         @ 4-byte Reload
	add	r0, r0, #32
	str	r0, [r6, #532]          @ 4-byte Spill
	ldr	r0, [r6, #1112]         @ 4-byte Reload
	add	r0, r0, #32
	str	r0, [r6, #528]          @ 4-byte Spill
	ldr	r0, [r6, #1172]         @ 4-byte Reload
	add	r0, r0, #32
	str	r0, [r6, #920]          @ 4-byte Spill
	ldr	r0, [r6, #1060]         @ 4-byte Reload
	add	r0, r0, #16
	str	r0, [r6, #28]           @ 4-byte Spill
	ldr	r0, [r6, #1064]         @ 4-byte Reload
	add	r0, r0, #32
	str	r0, [r6, #48]           @ 4-byte Spill
	b	LBB0_11
	.p2align	4
@ %bb.1:
	.data_region
LCPI0_75:
	.long	4                       @ 0x4
	.long	0                       @ 0x0
	.long	1                       @ 0x1
	.long	0                       @ 0x0
	.p2align	4
@ %bb.2:
LCPI0_76:
	.long	4                       @ 0x4
	.long	0                       @ 0x0
	.long	4                       @ 0x4
	.long	0                       @ 0x0
	.p2align	4
@ %bb.3:
LCPI0_77:
	.long	224                     @ 0xe0
	.long	0                       @ 0x0
	.long	224                     @ 0xe0
	.long	0                       @ 0x0
	.p2align	4
@ %bb.4:
LCPI0_78:
	.long	1                       @ 0x1
	.long	0                       @ 0x0
	.long	3                       @ 0x3
	.long	0                       @ 0x0
	.p2align	4
@ %bb.5:
LCPI0_79:
	.long	3                       @ 0x3
	.long	0                       @ 0x0
	.long	3                       @ 0x3
	.long	0                       @ 0x0
	.p2align	4
@ %bb.6:
LCPI0_80:
	.long	16                      @ 0x10
	.long	0                       @ 0x0
	.long	3                       @ 0x3
	.long	0                       @ 0x0
	.p2align	4
@ %bb.7:
LCPI0_81:
	.long	1                       @ 0x1
	.long	0                       @ 0x0
	.long	16                      @ 0x10
	.long	0                       @ 0x0
	.p2align	4
@ %bb.8:
LCPI0_82:
	.long	112                     @ 0x70
	.long	0                       @ 0x0
	.long	112                     @ 0x70
	.long	0                       @ 0x0
	.p2align	4
@ %bb.9:
LCPI0_83:
	.long	1                       @ 0x1
	.long	0                       @ 0x0
	.long	1                       @ 0x1
	.long	0                       @ 0x0
	.p2align	4
@ %bb.10:
LCPI0_84:
	.long	2                       @ 0x2
	.long	0                       @ 0x0
	.long	2                       @ 0x2
	.long	0                       @ 0x0
	.p2align	2
LBB0_11:                                @ %cond1.preheader.i
                                        @ =>This Loop Header: Depth=1
                                        @     Child Loop BB0_12 Depth 2
	.end_data_region                @ 4-byte Spill
	str	r2, [r6, #1312]
	mov	r2, #12544
	umull	r3, r0, r1, r2
	mov	lr, #0
	str	r1, [r6, #1328]         @ 4-byte Spill
	str	r3, [r6, #1408]         @ 4-byte Spill
	mov	r3, #0
LBB0_12:                                @ %cond4.preheader.i
                                        @   Parent Loop BB0_11 Depth=1
                                        @ =>  This Inner Loop Header: Depth=2
	rsb	r1, r3, r3, lsl #3
	ldr	r0, [r6, #1408]         @ 4-byte Reload
	adds	r3, r3, #1
	add	r1, r0, r1, lsl #4
	adc	lr, lr, #0
	orr	r12, r1, #8
	add	r2, r4, r1, lsl #2
	vld1.32	{d20, d21}, [r2]!
	vadd.f32	q11, q10, q8
	vld1.32	{d24, d25}, [r2]
	add	r2, r5, r1, lsl #2
	vadd.f32	q13, q12, q8
	vclt.f32	q14, q11, #0
	vbic	q11, q11, q14
	vclt.f32	q14, q13, #0
	vmin.f32	q11, q11, q9
	vbic	q13, q13, q14
	vmin.f32	q13, q13, q9
	vmul.f32	q2, q10, q11
	vmul.f32	q1, q12, q13
	vdiv.f32	s3, s11, s16
	vdiv.f32	s2, s10, s16
	vdiv.f32	s1, s9, s16
	vdiv.f32	s0, s8, s16
	vdiv.f32	s11, s7, s16
	vdiv.f32	s10, s6, s16
	vdiv.f32	s9, s5, s16
	vdiv.f32	s8, s4, s16
	vst1.32	{d0, d1}, [r2]!
	vst1.32	{d4, d5}, [r2]
	add	r2, r4, r12, lsl #2
	vld1.32	{d20, d21}, [r2]!
	vadd.f32	q11, q10, q8
	vld1.32	{d24, d25}, [r2]
	add	r2, r5, r12, lsl #2
	vadd.f32	q13, q12, q8
	vclt.f32	q14, q11, #0
	vbic	q11, q11, q14
	vclt.f32	q14, q13, #0
	vmin.f32	q11, q11, q9
	vbic	q13, q13, q14
	vmin.f32	q13, q13, q9
	vmul.f32	q2, q10, q11
	vmul.f32	q1, q12, q13
	vdiv.f32	s3, s11, s16
	vdiv.f32	s2, s10, s16
	vdiv.f32	s1, s9, s16
	vdiv.f32	s0, s8, s16
	vdiv.f32	s11, s7, s16
	vdiv.f32	s10, s6, s16
	vdiv.f32	s9, s5, s16
	vdiv.f32	s8, s4, s16
	vst1.32	{d0, d1}, [r2]!
	vst1.32	{d4, d5}, [r2]
	add	r2, r1, #16
	add	r0, r4, r2, lsl #2
	vld1.32	{d20, d21}, [r0]!
	vadd.f32	q11, q10, q8
	vld1.32	{d24, d25}, [r0]
	add	r0, r5, r2, lsl #2
	vadd.f32	q13, q12, q8
	vclt.f32	q14, q11, #0
	add	r2, r1, #24
	vbic	q11, q11, q14
	vclt.f32	q14, q13, #0
	vmin.f32	q11, q11, q9
	vbic	q13, q13, q14
	vmin.f32	q13, q13, q9
	vmul.f32	q2, q10, q11
	vmul.f32	q1, q12, q13
	vdiv.f32	s3, s11, s16
	vdiv.f32	s2, s10, s16
	vdiv.f32	s1, s9, s16
	vdiv.f32	s0, s8, s16
	vdiv.f32	s11, s7, s16
	vdiv.f32	s10, s6, s16
	vdiv.f32	s9, s5, s16
	vdiv.f32	s8, s4, s16
	vst1.32	{d0, d1}, [r0]!
	vst1.32	{d4, d5}, [r0]
	add	r0, r4, r2, lsl #2
	vld1.32	{d20, d21}, [r0]!
	vadd.f32	q11, q10, q8
	vld1.32	{d24, d25}, [r0]
	add	r0, r5, r2, lsl #2
	vadd.f32	q13, q12, q8
	vclt.f32	q14, q11, #0
	add	r2, r1, #32
	vbic	q11, q11, q14
	vclt.f32	q14, q13, #0
	vmin.f32	q11, q11, q9
	vbic	q13, q13, q14
	vmin.f32	q13, q13, q9
	vmul.f32	q2, q10, q11
	vmul.f32	q1, q12, q13
	vdiv.f32	s3, s11, s16
	vdiv.f32	s2, s10, s16
	vdiv.f32	s1, s9, s16
	vdiv.f32	s0, s8, s16
	vdiv.f32	s11, s7, s16
	vdiv.f32	s10, s6, s16
	vdiv.f32	s9, s5, s16
	vdiv.f32	s8, s4, s16
	vst1.32	{d0, d1}, [r0]!
	vst1.32	{d4, d5}, [r0]
	add	r0, r4, r2, lsl #2
	vld1.32	{d20, d21}, [r0]!
	vadd.f32	q11, q10, q8
	vld1.32	{d24, d25}, [r0]
	add	r0, r5, r2, lsl #2
	vadd.f32	q13, q12, q8
	vclt.f32	q14, q11, #0
	add	r2, r1, #40
	vbic	q11, q11, q14
	vclt.f32	q14, q13, #0
	vmin.f32	q11, q11, q9
	vbic	q13, q13, q14
	vmin.f32	q13, q13, q9
	vmul.f32	q2, q10, q11
	vmul.f32	q1, q12, q13
	vdiv.f32	s3, s11, s16
	vdiv.f32	s2, s10, s16
	vdiv.f32	s1, s9, s16
	vdiv.f32	s0, s8, s16
	vdiv.f32	s11, s7, s16
	vdiv.f32	s10, s6, s16
	vdiv.f32	s9, s5, s16
	vdiv.f32	s8, s4, s16
	vst1.32	{d0, d1}, [r0]!
	vst1.32	{d4, d5}, [r0]
	add	r0, r4, r2, lsl #2
	vld1.32	{d20, d21}, [r0]!
	vadd.f32	q11, q10, q8
	vld1.32	{d24, d25}, [r0]
	add	r0, r5, r2, lsl #2
	vadd.f32	q13, q12, q8
	vclt.f32	q14, q11, #0
	add	r2, r1, #48
	vbic	q11, q11, q14
	vclt.f32	q14, q13, #0
	vmin.f32	q11, q11, q9
	vbic	q13, q13, q14
	vmin.f32	q13, q13, q9
	vmul.f32	q2, q10, q11
	vmul.f32	q1, q12, q13
	vdiv.f32	s3, s11, s16
	vdiv.f32	s2, s10, s16
	vdiv.f32	s1, s9, s16
	vdiv.f32	s0, s8, s16
	vdiv.f32	s11, s7, s16
	vdiv.f32	s10, s6, s16
	vdiv.f32	s9, s5, s16
	vdiv.f32	s8, s4, s16
	vst1.32	{d0, d1}, [r0]!
	vst1.32	{d4, d5}, [r0]
	add	r0, r4, r2, lsl #2
	vld1.32	{d20, d21}, [r0]!
	vadd.f32	q11, q10, q8
	vld1.32	{d24, d25}, [r0]
	add	r0, r5, r2, lsl #2
	vadd.f32	q13, q12, q8
	vclt.f32	q14, q11, #0
	add	r2, r1, #56
	vbic	q11, q11, q14
	vclt.f32	q14, q13, #0
	vmin.f32	q11, q11, q9
	vbic	q13, q13, q14
	vmin.f32	q13, q13, q9
	vmul.f32	q2, q10, q11
	vmul.f32	q1, q12, q13
	vdiv.f32	s3, s11, s16
	vdiv.f32	s2, s10, s16
	vdiv.f32	s1, s9, s16
	vdiv.f32	s0, s8, s16
	vdiv.f32	s11, s7, s16
	vdiv.f32	s10, s6, s16
	vdiv.f32	s9, s5, s16
	vdiv.f32	s8, s4, s16
	vst1.32	{d0, d1}, [r0]!
	vst1.32	{d4, d5}, [r0]
	add	r0, r4, r2, lsl #2
	vld1.32	{d20, d21}, [r0]!
	vadd.f32	q11, q10, q8
	vld1.32	{d24, d25}, [r0]
	add	r0, r5, r2, lsl #2
	vadd.f32	q13, q12, q8
	vclt.f32	q14, q11, #0
	add	r2, r1, #64
	vbic	q11, q11, q14
	vclt.f32	q14, q13, #0
	vmin.f32	q11, q11, q9
	vbic	q13, q13, q14
	vmin.f32	q13, q13, q9
	vmul.f32	q2, q10, q11
	vmul.f32	q1, q12, q13
	vdiv.f32	s3, s11, s16
	vdiv.f32	s2, s10, s16
	vdiv.f32	s1, s9, s16
	vdiv.f32	s0, s8, s16
	vdiv.f32	s11, s7, s16
	vdiv.f32	s10, s6, s16
	vdiv.f32	s9, s5, s16
	vdiv.f32	s8, s4, s16
	vst1.32	{d0, d1}, [r0]!
	vst1.32	{d4, d5}, [r0]
	add	r0, r4, r2, lsl #2
	vld1.32	{d20, d21}, [r0]!
	vadd.f32	q11, q10, q8
	vld1.32	{d24, d25}, [r0]
	add	r0, r5, r2, lsl #2
	vadd.f32	q13, q12, q8
	vclt.f32	q14, q11, #0
	add	r2, r1, #72
	vbic	q11, q11, q14
	vclt.f32	q14, q13, #0
	vmin.f32	q11, q11, q9
	vbic	q13, q13, q14
	vmin.f32	q13, q13, q9
	vmul.f32	q2, q10, q11
	vmul.f32	q1, q12, q13
	vdiv.f32	s3, s11, s16
	vdiv.f32	s2, s10, s16
	vdiv.f32	s1, s9, s16
	vdiv.f32	s0, s8, s16
	vdiv.f32	s11, s7, s16
	vdiv.f32	s10, s6, s16
	vdiv.f32	s9, s5, s16
	vdiv.f32	s8, s4, s16
	vst1.32	{d0, d1}, [r0]!
	vst1.32	{d4, d5}, [r0]
	add	r0, r4, r2, lsl #2
	vld1.32	{d20, d21}, [r0]!
	vadd.f32	q11, q10, q8
	vld1.32	{d24, d25}, [r0]
	add	r0, r5, r2, lsl #2
	vadd.f32	q13, q12, q8
	vclt.f32	q14, q11, #0
	add	r2, r1, #80
	vbic	q11, q11, q14
	vclt.f32	q14, q13, #0
	vmin.f32	q11, q11, q9
	vbic	q13, q13, q14
	vmin.f32	q13, q13, q9
	vmul.f32	q2, q10, q11
	vmul.f32	q1, q12, q13
	vdiv.f32	s3, s11, s16
	vdiv.f32	s2, s10, s16
	vdiv.f32	s1, s9, s16
	vdiv.f32	s0, s8, s16
	vdiv.f32	s11, s7, s16
	vdiv.f32	s10, s6, s16
	vdiv.f32	s9, s5, s16
	vdiv.f32	s8, s4, s16
	vst1.32	{d0, d1}, [r0]!
	vst1.32	{d4, d5}, [r0]
	add	r0, r4, r2, lsl #2
	vld1.32	{d20, d21}, [r0]!
	vadd.f32	q11, q10, q8
	vld1.32	{d24, d25}, [r0]
	add	r0, r5, r2, lsl #2
	vadd.f32	q13, q12, q8
	vclt.f32	q14, q11, #0
	add	r2, r1, #88
	vbic	q11, q11, q14
	vclt.f32	q14, q13, #0
	vmin.f32	q11, q11, q9
	vbic	q13, q13, q14
	vmin.f32	q13, q13, q9
	vmul.f32	q2, q10, q11
	vmul.f32	q1, q12, q13
	vdiv.f32	s3, s11, s16
	vdiv.f32	s2, s10, s16
	vdiv.f32	s1, s9, s16
	vdiv.f32	s0, s8, s16
	vdiv.f32	s11, s7, s16
	vdiv.f32	s10, s6, s16
	vdiv.f32	s9, s5, s16
	vdiv.f32	s8, s4, s16
	vst1.32	{d0, d1}, [r0]!
	vst1.32	{d4, d5}, [r0]
	add	r0, r4, r2, lsl #2
	vld1.32	{d20, d21}, [r0]!
	vadd.f32	q11, q10, q8
	vld1.32	{d24, d25}, [r0]
	add	r0, r5, r2, lsl #2
	vadd.f32	q13, q12, q8
	vclt.f32	q14, q11, #0
	add	r2, r1, #96
	add	r1, r1, #104
	vbic	q11, q11, q14
	vclt.f32	q14, q13, #0
	vmin.f32	q11, q11, q9
	vbic	q13, q13, q14
	vmin.f32	q13, q13, q9
	vmul.f32	q2, q10, q11
	vmul.f32	q1, q12, q13
	vdiv.f32	s3, s11, s16
	vdiv.f32	s2, s10, s16
	vdiv.f32	s1, s9, s16
	vdiv.f32	s0, s8, s16
	vdiv.f32	s11, s7, s16
	vdiv.f32	s10, s6, s16
	vdiv.f32	s9, s5, s16
	vdiv.f32	s8, s4, s16
	vst1.32	{d0, d1}, [r0]!
	vst1.32	{d4, d5}, [r0]
	add	r0, r4, r2, lsl #2
	vld1.32	{d20, d21}, [r0]!
	vadd.f32	q11, q10, q8
	vld1.32	{d24, d25}, [r0]
	add	r0, r5, r2, lsl #2
	vadd.f32	q13, q12, q8
	vclt.f32	q14, q11, #0
	vbic	q11, q11, q14
	vclt.f32	q14, q13, #0
	vmin.f32	q11, q11, q9
	vbic	q13, q13, q14
	vmin.f32	q13, q13, q9
	vmul.f32	q2, q10, q11
	vmul.f32	q1, q12, q13
	vdiv.f32	s3, s11, s16
	vdiv.f32	s2, s10, s16
	vdiv.f32	s1, s9, s16
	vdiv.f32	s0, s8, s16
	vdiv.f32	s11, s7, s16
	vdiv.f32	s10, s6, s16
	vdiv.f32	s9, s5, s16
	vdiv.f32	s8, s4, s16
	vst1.32	{d0, d1}, [r0]!
	vst1.32	{d4, d5}, [r0]
	add	r0, r4, r1, lsl #2
	vld1.32	{d20, d21}, [r0]!
	vadd.f32	q11, q10, q8
	vld1.32	{d24, d25}, [r0]
	add	r0, r5, r1, lsl #2
	vadd.f32	q13, q12, q8
	vclt.f32	q14, q11, #0
	vbic	q11, q11, q14
	vclt.f32	q14, q13, #0
	vmin.f32	q11, q11, q9
	vbic	q13, q13, q14
	vmin.f32	q13, q13, q9
	vmul.f32	q2, q10, q11
	vmul.f32	q1, q12, q13
	vdiv.f32	s3, s11, s16
	vdiv.f32	s2, s10, s16
	vdiv.f32	s1, s9, s16
	vdiv.f32	s0, s8, s16
	vdiv.f32	s11, s7, s16
	vdiv.f32	s10, s6, s16
	vdiv.f32	s9, s5, s16
	vdiv.f32	s8, s4, s16
	vst1.32	{d0, d1}, [r0]!
	vst1.32	{d4, d5}, [r0]
	eor	r0, r3, #112
	orrs	r0, r0, lr
	bne	LBB0_12
@ %bb.13:                               @ %exit3.i
                                        @   in Loop: Header=BB0_11 Depth=1
	ldr	r1, [r6, #1328]         @ 4-byte Reload
	ldr	r2, [r6, #1312]         @ 4-byte Reload
	adds	r1, r1, #1
	adc	r2, r2, #0
	eor	r0, r1, #16
	orrs	r0, r0, r2
	bne	LBB0_11
@ %bb.14:                               @ %exit.i
	adr	r0, LCPI0_85
	vld1.64	{d16, d17}, [r0:128]
	sub	r0, sp, #16
	bic	r3, r0, #7
	mov	sp, r3
	sub	r0, sp, #32
	bic	r0, r0, #31
	str	r0, [r6, #1328]         @ 4-byte Spill
	mov	sp, r0
	sub	r0, sp, #104
	bic	r0, r0, #7
	mov	sp, r0
	mov	r4, sp
	sub	r1, r4, #4
	str	r1, [r6, #1408]         @ 4-byte Spill
	mov	sp, r1
	sub	r1, sp, #56
	bic	r2, r1, #15
	mov	sp, r2
	add	r12, r0, #16
	mov	lr, #6
	str	r11, [r3]
	vmov.i32	q11, #0x0
	vst1.64	{d16, d17}, [r12]
	mov	r12, #48
	strb	lr, [r4, #-4]
	adr	r1, LCPI0_86
	vld1.64	{d18, d19}, [r1:128]
	mov	r1, r0
	vst1.32	{d18, d19}, [r1], r12
	vst1.64	{d16, d17}, [r1]
	add	r1, r0, #32
	str	r5, [r3, #4]
	strb	lr, [r4, #-3]
	vst1.64	{d18, d19}, [r1]
	adr	r1, LCPI0_87
	vld1.64	{d16, d17}, [r1:128]
	add	r1, r0, #80
	strb	lr, [r4, #-2]
	vst1.64	{d16, d17}, [r1]
	adr	r1, LCPI0_88
	vld1.64	{d18, d19}, [r1:128]
	add	r1, r0, #64
	vst1.64	{d18, d19}, [r1]
	add	r1, r3, #8
	vst1.64	{d10, d11}, [r1]
	adr	r1, LCPI0_89
	vld1.64	{d18, d19}, [r1:128]
	adr	r1, LCPI0_90
	ldr	r5, [r6, #1328]         @ 4-byte Reload
	vld1.64	{d20, d21}, [r1:128]
	mov	r1, r5
	strb	lr, [r4, #-1]
	vst1.32	{d20, d21}, [r1]!
	mov	r4, #0
	vst1.64	{d18, d19}, [r1]
	mov	r1, #16
	str	r1, [r0, #96]
	add	r1, r2, #32
	str	r4, [r0, #100]
	vst1.64	{d16, d17}, [r1:128]
	mov	r1, #1
	str	r1, [r2, #48]
	mov	r1, r2
	str	r4, [r2, #52]
	vst1.64	{d16, d17}, [r1:128]!
	vst1.64	{d22, d23}, [r1:128]
	sub	sp, sp, #20
	str	r0, [sp]
	mov	r1, #7
	ldr	r0, [r6, #1408]         @ 4-byte Reload
	stmib	sp, {r0, r1, r4}
	mov	r0, #4
	mov	r1, #0
	str	r2, [sp, #16]
	mov	r2, r3
	mov	r3, r5
	bl	_nnc_aten_conv2d
	add	sp, sp, #20
	mov	r5, #288
	mov	r0, #352
	mov	r1, #416
	mov	r12, #0
	b	LBB0_21
	.p2align	4
@ %bb.15:
	.data_region
LCPI0_85:
	.long	112                     @ 0x70
	.long	0                       @ 0x0
	.long	112                     @ 0x70
	.long	0                       @ 0x0
	.p2align	4
@ %bb.16:
LCPI0_86:
	.long	1                       @ 0x1
	.long	0                       @ 0x0
	.long	16                      @ 0x10
	.long	0                       @ 0x0
	.p2align	4
@ %bb.17:
LCPI0_87:
	.long	1                       @ 0x1
	.long	0                       @ 0x0
	.long	1                       @ 0x1
	.long	0                       @ 0x0
	.p2align	4
@ %bb.18:
LCPI0_88:
	.long	16                      @ 0x10
	.long	0                       @ 0x0
	.long	16                      @ 0x10
	.long	0                       @ 0x0
	.p2align	4
@ %bb.19:
LCPI0_89:
	.long	4                       @ 0x4
	.long	0                       @ 0x0
	.long	1                       @ 0x1
	.long	0                       @ 0x0
	.p2align	4
@ %bb.20:
LCPI0_90:
	.long	4                       @ 0x4
	.long	0                       @ 0x0
	.long	4                       @ 0x4
	.long	0                       @ 0x0
	.p2align	2
LBB0_21:                                @ %cond13.preheader.i
                                        @ =>This Inner Loop Header: Depth=1
	.end_data_region
	rsb	lr, r4, r4, lsl #3
	adds	r4, r4, #1
	adc	r12, r12, #0
	add	r2, r11, lr, lsl #6
	vld1.32	{d16, d17}, [r2]!
	vclt.f32	q10, q8, #0
	vld1.32	{d18, d19}, [r2]
	vbic	q8, q8, q10
	add	r2, r10, lr, lsl #6
	vclt.f32	q10, q9, #0
	vbic	q9, q9, q10
	vst1.32	{d16, d17}, [r2]!
	vst1.32	{d18, d19}, [r2]
	mov	r2, #32
	orr	r2, r2, lr, lsl #6
	add	r3, r11, r2
	add	r2, r10, r2
	vld1.32	{d16, d17}, [r3]!
	vclt.f32	q10, q8, #0
	vld1.32	{d18, d19}, [r3]
	vbic	q8, q8, q10
	vclt.f32	q10, q9, #0
	vbic	q9, q9, q10
	vst1.32	{d16, d17}, [r2]!
	vst1.32	{d18, d19}, [r2]
	add	r2, lr, #1
	add	r3, r11, r2, lsl #6
	add	r2, r10, r2, lsl #6
	vld1.32	{d16, d17}, [r3]!
	vclt.f32	q10, q8, #0
	vld1.32	{d18, d19}, [r3]
	vbic	q8, q8, q10
	vclt.f32	q10, q9, #0
	vbic	q9, q9, q10
	vst1.32	{d16, d17}, [r2]!
	vst1.32	{d18, d19}, [r2]
	mov	r2, #96
	add	r2, r2, lr, lsl #6
	add	r3, r11, r2
	add	r2, r10, r2
	vld1.32	{d16, d17}, [r3]!
	vclt.f32	q10, q8, #0
	vld1.32	{d18, d19}, [r3]
	vbic	q8, q8, q10
	vclt.f32	q10, q9, #0
	vbic	q9, q9, q10
	vst1.32	{d16, d17}, [r2]!
	vst1.32	{d18, d19}, [r2]
	add	r2, lr, #2
	add	r3, r11, r2, lsl #6
	add	r2, r10, r2, lsl #6
	vld1.32	{d16, d17}, [r3]!
	vclt.f32	q10, q8, #0
	vld1.32	{d18, d19}, [r3]
	vbic	q8, q8, q10
	vclt.f32	q10, q9, #0
	vbic	q9, q9, q10
	vst1.32	{d16, d17}, [r2]!
	vst1.32	{d18, d19}, [r2]
	mov	r2, #160
	add	r2, r2, lr, lsl #6
	add	r3, r11, r2
	add	r2, r10, r2
	vld1.32	{d16, d17}, [r3]!
	vclt.f32	q10, q8, #0
	vld1.32	{d18, d19}, [r3]
	vbic	q8, q8, q10
	vclt.f32	q10, q9, #0
	vbic	q9, q9, q10
	vst1.32	{d16, d17}, [r2]!
	vst1.32	{d18, d19}, [r2]
	add	r2, lr, #3
	add	r3, r11, r2, lsl #6
	add	r2, r10, r2, lsl #6
	vld1.32	{d16, d17}, [r3]!
	vclt.f32	q10, q8, #0
	vld1.32	{d18, d19}, [r3]
	vbic	q8, q8, q10
	vclt.f32	q10, q9, #0
	vbic	q9, q9, q10
	vst1.32	{d16, d17}, [r2]!
	vst1.32	{d18, d19}, [r2]
	mov	r2, #224
	add	r2, r2, lr, lsl #6
	add	r3, r11, r2
	add	r2, r10, r2
	vld1.32	{d16, d17}, [r3]!
	vclt.f32	q10, q8, #0
	vld1.32	{d18, d19}, [r3]
	vbic	q8, q8, q10
	vclt.f32	q10, q9, #0
	vbic	q9, q9, q10
	vst1.32	{d16, d17}, [r2]!
	vst1.32	{d18, d19}, [r2]
	add	r2, lr, #4
	add	r3, r11, r2, lsl #6
	add	r2, r10, r2, lsl #6
	vld1.32	{d16, d17}, [r3]!
	vclt.f32	q10, q8, #0
	vld1.32	{d18, d19}, [r3]
	vbic	q8, q8, q10
	vclt.f32	q10, q9, #0
	vbic	q9, q9, q10
	vst1.32	{d16, d17}, [r2]!
	vst1.32	{d18, d19}, [r2]
	add	r2, r5, lr, lsl #6
	add	r3, r11, r2
	add	r2, r10, r2
	vld1.32	{d16, d17}, [r3]!
	vclt.f32	q10, q8, #0
	vld1.32	{d18, d19}, [r3]
	vbic	q8, q8, q10
	vclt.f32	q10, q9, #0
	vbic	q9, q9, q10
	vst1.32	{d16, d17}, [r2]!
	vst1.32	{d18, d19}, [r2]
	add	r2, lr, #5
	add	r3, r11, r2, lsl #6
	add	r2, r10, r2, lsl #6
	vld1.32	{d16, d17}, [r3]!
	vclt.f32	q10, q8, #0
	vld1.32	{d18, d19}, [r3]
	vbic	q8, q8, q10
	vclt.f32	q10, q9, #0
	vbic	q9, q9, q10
	vst1.32	{d16, d17}, [r2]!
	vst1.32	{d18, d19}, [r2]
	add	r2, r0, lr, lsl #6
	add	r3, r11, r2
	add	r2, r10, r2
	vld1.32	{d16, d17}, [r3]!
	vclt.f32	q10, q8, #0
	vld1.32	{d18, d19}, [r3]
	vbic	q8, q8, q10
	vclt.f32	q10, q9, #0
	vbic	q9, q9, q10
	vst1.32	{d16, d17}, [r2]!
	vst1.32	{d18, d19}, [r2]
	add	r2, lr, #6
	add	r3, r11, r2, lsl #6
	add	r2, r10, r2, lsl #6
	vld1.32	{d16, d17}, [r3]!
	vclt.f32	q10, q8, #0
	vld1.32	{d18, d19}, [r3]
	vbic	q8, q8, q10
	vclt.f32	q10, q9, #0
	vbic	q9, q9, q10
	vst1.32	{d16, d17}, [r2]!
	vst1.32	{d18, d19}, [r2]
	add	r2, r1, lr, lsl #6
	add	r3, r11, r2
	add	r2, r10, r2
	vld1.32	{d16, d17}, [r3]!
	vclt.f32	q10, q8, #0
	vld1.32	{d18, d19}, [r3]
	vbic	q8, q8, q10
	vclt.f32	q10, q9, #0
	vbic	q9, q9, q10
	vst1.32	{d16, d17}, [r2]!
	vst1.32	{d18, d19}, [r2]
	eor	r2, r4, #112
	orrs	r2, r2, r12
	bne	LBB0_21
@ %bb.22:                               @ %cond13.preheader.1.i.preheader
	mov	r4, #1440
	mov	r0, #0
	orr	r4, r4, #49152
	mov	r1, #0
LBB0_23:                                @ %cond13.preheader.1.i
                                        @ =>This Inner Loop Header: Depth=1
	rsb	r2, r0, r0, lsl #3
	adds	r0, r0, #1
	add	r12, r2, #784
	adc	r1, r1, #0
	add	lr, r11, r12, lsl #6
	add	r3, r10, r12, lsl #6
	vld1.32	{d16, d17}, [lr]!
	vclt.f32	q10, q8, #0
	vld1.32	{d18, d19}, [lr]
	vbic	q8, q8, q10
	vclt.f32	q10, q9, #0
	vbic	q9, q9, q10
	vst1.32	{d16, d17}, [r3]!
	vst1.32	{d18, d19}, [r3]
	mov	r3, #1056
	orr	r3, r3, #49152
	add	r3, r3, r2, lsl #6
	add	r5, r11, r3
	add	r3, r10, r3
	vld1.32	{d16, d17}, [r5]!
	vclt.f32	q10, q8, #0
	vld1.32	{d18, d19}, [r5]
	vbic	q8, q8, q10
	vclt.f32	q10, q9, #0
	vbic	q9, q9, q10
	vst1.32	{d16, d17}, [r3]!
	vst1.32	{d18, d19}, [r3]
	mov	r3, #1088
	orr	r3, r3, #49152
	add	r3, r3, r2, lsl #6
	add	r5, r11, r3
	add	r3, r10, r3
	vld1.32	{d16, d17}, [r5]!
	vclt.f32	q10, q8, #0
	vld1.32	{d18, d19}, [r5]
	vbic	q8, q8, q10
	vclt.f32	q10, q9, #0
	vbic	q9, q9, q10
	vst1.32	{d16, d17}, [r3]!
	vst1.32	{d18, d19}, [r3]
	mov	r3, #1120
	orr	r3, r3, #49152
	add	r3, r3, r2, lsl #6
	add	r5, r11, r3
	add	r3, r10, r3
	vld1.32	{d16, d17}, [r5]!
	vclt.f32	q10, q8, #0
	vld1.32	{d18, d19}, [r5]
	vbic	q8, q8, q10
	vclt.f32	q10, q9, #0
	vbic	q9, q9, q10
	vst1.32	{d16, d17}, [r3]!
	vst1.32	{d18, d19}, [r3]
	mov	r3, #1152
	orr	r3, r3, #49152
	add	r3, r3, r2, lsl #6
	add	r5, r11, r3
	add	r3, r10, r3
	vld1.32	{d16, d17}, [r5]!
	vclt.f32	q10, q8, #0
	vld1.32	{d18, d19}, [r5]
	vbic	q8, q8, q10
	vclt.f32	q10, q9, #0
	vbic	q9, q9, q10
	vst1.32	{d16, d17}, [r3]!
	vst1.32	{d18, d19}, [r3]
	mov	r3, #1184
	orr	r3, r3, #49152
	add	r3, r3, r2, lsl #6
	add	r5, r11, r3
	add	r3, r10, r3
	vld1.32	{d16, d17}, [r5]!
	vclt.f32	q10, q8, #0
	vld1.32	{d18, d19}, [r5]
	vbic	q8, q8, q10
	vclt.f32	q10, q9, #0
	vbic	q9, q9, q10
	vst1.32	{d16, d17}, [r3]!
	vst1.32	{d18, d19}, [r3]
	mov	r3, #1216
	orr	r3, r3, #49152
	add	r3, r3, r2, lsl #6
	add	r5, r11, r3
	add	r3, r10, r3
	vld1.32	{d16, d17}, [r5]!
	vclt.f32	q10, q8, #0
	vld1.32	{d18, d19}, [r5]
	vbic	q8, q8, q10
	vclt.f32	q10, q9, #0
	vbic	q9, q9, q10
	vst1.32	{d16, d17}, [r3]!
	vst1.32	{d18, d19}, [r3]
	mov	r3, #1248
	orr	r3, r3, #49152
	add	r3, r3, r2, lsl #6
	add	r5, r11, r3
	add	r3, r10, r3
	vld1.32	{d16, d17}, [r5]!
	vclt.f32	q10, q8, #0
	vld1.32	{d18, d19}, [r5]
	vbic	q8, q8, q10
	vclt.f32	q10, q9, #0
	vbic	q9, q9, q10
	vst1.32	{d16, d17}, [r3]!
	vst1.32	{d18, d19}, [r3]
	add	r3, r2, #788
	add	r5, r11, r3, lsl #6
	add	r3, r10, r3, lsl #6
	vld1.32	{d16, d17}, [r5]!
	vclt.f32	q10, q8, #0
	vld1.32	{d18, d19}, [r5]
	vbic	q8, q8, q10
	vclt.f32	q10, q9, #0
	vbic	q9, q9, q10
	vst1.32	{d16, d17}, [r3]!
	vst1.32	{d18, d19}, [r3]
	mov	r3, #1312
	orr	r3, r3, #49152
	add	r3, r3, r2, lsl #6
	add	r5, r11, r3
	add	r3, r10, r3
	vld1.32	{d16, d17}, [r5]!
	vclt.f32	q10, q8, #0
	vld1.32	{d18, d19}, [r5]
	vbic	q8, q8, q10
	vclt.f32	q10, q9, #0
	vbic	q9, q9, q10
	vst1.32	{d16, d17}, [r3]!
	vst1.32	{d18, d19}, [r3]
	mov	r3, #1344
	orr	r3, r3, #49152
	add	r3, r3, r2, lsl #6
	add	r5, r11, r3
	add	r3, r10, r3
	vld1.32	{d16, d17}, [r5]!
	vclt.f32	q10, q8, #0
	vld1.32	{d18, d19}, [r5]
	vbic	q8, q8, q10
	vclt.f32	q10, q9, #0
	vbic	q9, q9, q10
	vst1.32	{d16, d17}, [r3]!
	vst1.32	{d18, d19}, [r3]
	mov	r3, #1376
	orr	r3, r3, #49152
	add	r3, r3, r2, lsl #6
	add	r5, r11, r3
	add	r3, r10, r3
	vld1.32	{d16, d17}, [r5]!
	vclt.f32	q10, q8, #0
	vld1.32	{d18, d19}, [r5]
	vbic	q8, q8, q10
	vclt.f32	q10, q9, #0
	vbic	q9, q9, q10
	vst1.32	{d16, d17}, [r3]!
	vst1.32	{d18, d19}, [r3]
	mov	r3, #1408
	orr	r3, r3, #49152
	add	r3, r3, r2, lsl #6
	add	r2, r4, r2, lsl #6
	add	r5, r11, r3
	add	r3, r10, r3
	vld1.32	{d16, d17}, [r5]!
	vclt.f32	q10, q8, #0
	vld1.32	{d18, d19}, [r5]
	vbic	q8, q8, q10
	vclt.f32	q10, q9, #0
	vbic	q9, q9, q10
	vst1.32	{d16, d17}, [r3]!
	vst1.32	{d18, d19}, [r3]
	add	r3, r11, r2
	add	r2, r10, r2
	vld1.32	{d16, d17}, [r3]!
	vclt.f32	q10, q8, #0
	vld1.32	{d18, d19}, [r3]
	vbic	q8, q8, q10
	vclt.f32	q10, q9, #0
	vbic	q9, q9, q10
	vst1.32	{d16, d17}, [r2]!
	vst1.32	{d18, d19}, [r2]
	eor	r2, r0, #112
	orrs	r2, r2, r1
	bne	LBB0_23
@ %bb.24:                               @ %cond13.preheader.2.i.preheader
	mov	r4, #2432
	mov	r1, #2464
	orr	r4, r4, #98304
	orr	r1, r1, #98304
	mov	r0, #0
	mov	r2, #0
LBB0_25:                                @ %cond13.preheader.2.i
                                        @ =>This Inner Loop Header: Depth=1
	rsb	r12, r0, r0, lsl #3
	adds	r0, r0, #1
	add	lr, r12, #1568
	adc	r2, r2, #0
	add	r3, r11, lr, lsl #6
	vld1.32	{d16, d17}, [r3]!
	vclt.f32	q10, q8, #0
	vld1.32	{d18, d19}, [r3]
	vbic	q8, q8, q10
	add	r3, r10, lr, lsl #6
	vclt.f32	q10, q9, #0
	vbic	q9, q9, q10
	vst1.32	{d16, d17}, [r3]!
	vst1.32	{d18, d19}, [r3]
	mov	r3, #2080
	orr	r3, r3, #98304
	add	r3, r3, r12, lsl #6
	add	r5, r11, r3
	add	r3, r10, r3
	vld1.32	{d16, d17}, [r5]!
	vclt.f32	q10, q8, #0
	vld1.32	{d18, d19}, [r5]
	vbic	q8, q8, q10
	vclt.f32	q10, q9, #0
	vbic	q9, q9, q10
	vst1.32	{d16, d17}, [r3]!
	vst1.32	{d18, d19}, [r3]
	mov	r3, #2112
	orr	r3, r3, #98304
	add	r3, r3, r12, lsl #6
	add	r5, r11, r3
	add	r3, r10, r3
	vld1.32	{d16, d17}, [r5]!
	vclt.f32	q10, q8, #0
	vld1.32	{d18, d19}, [r5]
	vbic	q8, q8, q10
	vclt.f32	q10, q9, #0
	vbic	q9, q9, q10
	vst1.32	{d16, d17}, [r3]!
	vst1.32	{d18, d19}, [r3]
	mov	r3, #2144
	orr	r3, r3, #98304
	add	r3, r3, r12, lsl #6
	add	r5, r11, r3
	add	r3, r10, r3
	vld1.32	{d16, d17}, [r5]!
	vclt.f32	q10, q8, #0
	vld1.32	{d18, d19}, [r5]
	vbic	q8, q8, q10
	vclt.f32	q10, q9, #0
	vbic	q9, q9, q10
	vst1.32	{d16, d17}, [r3]!
	vst1.32	{d18, d19}, [r3]
	mov	r3, #2176
	orr	r3, r3, #98304
	add	r3, r3, r12, lsl #6
	add	r5, r11, r3
	add	r3, r10, r3
	vld1.32	{d16, d17}, [r5]!
	vclt.f32	q10, q8, #0
	vld1.32	{d18, d19}, [r5]
	vbic	q8, q8, q10
	vclt.f32	q10, q9, #0
	vbic	q9, q9, q10
	vst1.32	{d16, d17}, [r3]!
	vst1.32	{d18, d19}, [r3]
	mov	r3, #2208
	orr	r3, r3, #98304
	add	r3, r3, r12, lsl #6
	add	r5, r11, r3
	add	r3, r10, r3
	vld1.32	{d16, d17}, [r5]!
	vclt.f32	q10, q8, #0
	vld1.32	{d18, d19}, [r5]
	vbic	q8, q8, q10
	vclt.f32	q10, q9, #0
	vbic	q9, q9, q10
	vst1.32	{d16, d17}, [r3]!
	vst1.32	{d18, d19}, [r3]
	mov	r3, #2240
	orr	r3, r3, #98304
	add	r3, r3, r12, lsl #6
	add	r5, r11, r3
	add	r3, r10, r3
	vld1.32	{d16, d17}, [r5]!
	vclt.f32	q10, q8, #0
	vld1.32	{d18, d19}, [r5]
	vbic	q8, q8, q10
	vclt.f32	q10, q9, #0
	vbic	q9, q9, q10
	vst1.32	{d16, d17}, [r3]!
	vst1.32	{d18, d19}, [r3]
	mov	r3, #2272
	orr	r3, r3, #98304
	add	r3, r3, r12, lsl #6
	add	r5, r11, r3
	add	r3, r10, r3
	vld1.32	{d16, d17}, [r5]!
	vclt.f32	q10, q8, #0
	vld1.32	{d18, d19}, [r5]
	vbic	q8, q8, q10
	vclt.f32	q10, q9, #0
	vbic	q9, q9, q10
	vst1.32	{d16, d17}, [r3]!
	vst1.32	{d18, d19}, [r3]
	mov	r3, #35072
	orr	r3, r3, #65536
	add	r3, r3, r12, lsl #6
	add	r5, r11, r3
	add	r3, r10, r3
	vld1.32	{d16, d17}, [r5]!
	vclt.f32	q10, q8, #0
	vld1.32	{d18, d19}, [r5]
	vbic	q8, q8, q10
	vclt.f32	q10, q9, #0
	vbic	q9, q9, q10
	vst1.32	{d16, d17}, [r3]!
	vst1.32	{d18, d19}, [r3]
	mov	r3, #2336
	orr	r3, r3, #98304
	add	r3, r3, r12, lsl #6
	add	r5, r11, r3
	add	r3, r10, r3
	vld1.32	{d16, d17}, [r5]!
	vclt.f32	q10, q8, #0
	vld1.32	{d18, d19}, [r5]
	vbic	q8, q8, q10
	vclt.f32	q10, q9, #0
	vbic	q9, q9, q10
	vst1.32	{d16, d17}, [r3]!
	vst1.32	{d18, d19}, [r3]
	mov	r3, #2368
	orr	r3, r3, #98304
	add	r3, r3, r12, lsl #6
	add	r5, r11, r3
	add	r3, r10, r3
	vld1.32	{d16, d17}, [r5]!
	vclt.f32	q10, q8, #0
	vld1.32	{d18, d19}, [r5]
	vbic	q8, q8, q10
	vclt.f32	q10, q9, #0
	vbic	q9, q9, q10
	vst1.32	{d16, d17}, [r3]!
	vst1.32	{d18, d19}, [r3]
	mov	r3, #2400
	orr	r3, r3, #98304
	add	r3, r3, r12, lsl #6
	add	r5, r11, r3
	add	r3, r10, r3
	vld1.32	{d16, d17}, [r5]!
	vclt.f32	q10, q8, #0
	vld1.32	{d18, d19}, [r5]
	vbic	q8, q8, q10
	vclt.f32	q10, q9, #0
	vbic	q9, q9, q10
	vst1.32	{d16, d17}, [r3]!
	vst1.32	{d18, d19}, [r3]
	add	r3, r4, r12, lsl #6
	add	r5, r11, r3
	add	r3, r10, r3
	vld1.32	{d16, d17}, [r5]!
	vclt.f32	q10, q8, #0
	vld1.32	{d18, d19}, [r5]
	vbic	q8, q8, q10
	vclt.f32	q10, q9, #0
	vbic	q9, q9, q10
	vst1.32	{d16, d17}, [r3]!
	vst1.32	{d18, d19}, [r3]
	add	r3, r1, r12, lsl #6
	add	r5, r11, r3
	add	r3, r10, r3
	vld1.32	{d16, d17}, [r5]!
	vclt.f32	q10, q8, #0
	vld1.32	{d18, d19}, [r5]
	vbic	q8, q8, q10
	vclt.f32	q10, q9, #0
	vbic	q9, q9, q10
	vst1.32	{d16, d17}, [r3]!
	vst1.32	{d18, d19}, [r3]
	eor	r3, r0, #112
	orrs	r3, r3, r2
	bne	LBB0_25
@ %bb.26:                               @ %cond13.preheader.3.i.preheader
	mov	r4, #3456
	mov	r1, #3488
	orr	r4, r4, #147456
	orr	r1, r1, #147456
	mov	r0, #0
	mov	r2, #0
LBB0_27:                                @ %cond13.preheader.3.i
                                        @ =>This Inner Loop Header: Depth=1
	rsb	r12, r0, r0, lsl #3
	adds	r0, r0, #1
	add	lr, r12, #2352
	adc	r2, r2, #0
	add	r3, r11, lr, lsl #6
	vld1.32	{d16, d17}, [r3]!
	vclt.f32	q10, q8, #0
	vld1.32	{d18, d19}, [r3]
	vbic	q8, q8, q10
	add	r3, r10, lr, lsl #6
	vclt.f32	q10, q9, #0
	vbic	q9, q9, q10
	vst1.32	{d16, d17}, [r3]!
	vst1.32	{d18, d19}, [r3]
	mov	r3, #3104
	orr	r3, r3, #147456
	add	r3, r3, r12, lsl #6
	add	r5, r11, r3
	add	r3, r10, r3
	vld1.32	{d16, d17}, [r5]!
	vclt.f32	q10, q8, #0
	vld1.32	{d18, d19}, [r5]
	vbic	q8, q8, q10
	vclt.f32	q10, q9, #0
	vbic	q9, q9, q10
	vst1.32	{d16, d17}, [r3]!
	vst1.32	{d18, d19}, [r3]
	mov	r3, #3136
	orr	r3, r3, #147456
	add	r3, r3, r12, lsl #6
	add	r5, r11, r3
	add	r3, r10, r3
	vld1.32	{d16, d17}, [r5]!
	vclt.f32	q10, q8, #0
	vld1.32	{d18, d19}, [r5]
	vbic	q8, q8, q10
	vclt.f32	q10, q9, #0
	vbic	q9, q9, q10
	vst1.32	{d16, d17}, [r3]!
	vst1.32	{d18, d19}, [r3]
	mov	r3, #3168
	orr	r3, r3, #147456
	add	r3, r3, r12, lsl #6
	add	r5, r11, r3
	add	r3, r10, r3
	vld1.32	{d16, d17}, [r5]!
	vclt.f32	q10, q8, #0
	vld1.32	{d18, d19}, [r5]
	vbic	q8, q8, q10
	vclt.f32	q10, q9, #0
	vbic	q9, q9, q10
	vst1.32	{d16, d17}, [r3]!
	vst1.32	{d18, d19}, [r3]
	mov	r3, #3200
	orr	r3, r3, #147456
	add	r3, r3, r12, lsl #6
	add	r5, r11, r3
	add	r3, r10, r3
	vld1.32	{d16, d17}, [r5]!
	vclt.f32	q10, q8, #0
	vld1.32	{d18, d19}, [r5]
	vbic	q8, q8, q10
	vclt.f32	q10, q9, #0
	vbic	q9, q9, q10
	vst1.32	{d16, d17}, [r3]!
	vst1.32	{d18, d19}, [r3]
	mov	r3, #3232
	orr	r3, r3, #147456
	add	r3, r3, r12, lsl #6
	add	r5, r11, r3
	add	r3, r10, r3
	vld1.32	{d16, d17}, [r5]!
	vclt.f32	q10, q8, #0
	vld1.32	{d18, d19}, [r5]
	vbic	q8, q8, q10
	vclt.f32	q10, q9, #0
	vbic	q9, q9, q10
	vst1.32	{d16, d17}, [r3]!
	vst1.32	{d18, d19}, [r3]
	mov	r3, #3264
	orr	r3, r3, #147456
	add	r3, r3, r12, lsl #6
	add	r5, r11, r3
	add	r3, r10, r3
	vld1.32	{d16, d17}, [r5]!
	vclt.f32	q10, q8, #0
	vld1.32	{d18, d19}, [r5]
	vbic	q8, q8, q10
	vclt.f32	q10, q9, #0
	vbic	q9, q9, q10
	vst1.32	{d16, d17}, [r3]!
	vst1.32	{d18, d19}, [r3]
	mov	r3, #3296
	orr	r3, r3, #147456
	add	r3, r3, r12, lsl #6
	add	r5, r11, r3
	add	r3, r10, r3
	vld1.32	{d16, d17}, [r5]!
	vclt.f32	q10, q8, #0
	vld1.32	{d18, d19}, [r5]
	vbic	q8, q8, q10
	vclt.f32	q10, q9, #0
	vbic	q9, q9, q10
	vst1.32	{d16, d17}, [r3]!
	vst1.32	{d18, d19}, [r3]
	mov	r3, #19712
	orr	r3, r3, #131072
	add	r3, r3, r12, lsl #6
	add	r5, r11, r3
	add	r3, r10, r3
	vld1.32	{d16, d17}, [r5]!
	vclt.f32	q10, q8, #0
	vld1.32	{d18, d19}, [r5]
	vbic	q8, q8, q10
	vclt.f32	q10, q9, #0
	vbic	q9, q9, q10
	vst1.32	{d16, d17}, [r3]!
	vst1.32	{d18, d19}, [r3]
	mov	r3, #3360
	orr	r3, r3, #147456
	add	r3, r3, r12, lsl #6
	add	r5, r11, r3
	add	r3, r10, r3
	vld1.32	{d16, d17}, [r5]!
	vclt.f32	q10, q8, #0
	vld1.32	{d18, d19}, [r5]
	vbic	q8, q8, q10
	vclt.f32	q10, q9, #0
	vbic	q9, q9, q10
	vst1.32	{d16, d17}, [r3]!
	vst1.32	{d18, d19}, [r3]
	mov	r3, #3392
	orr	r3, r3, #147456
	add	r3, r3, r12, lsl #6
	add	r5, r11, r3
	add	r3, r10, r3
	vld1.32	{d16, d17}, [r5]!
	vclt.f32	q10, q8, #0
	vld1.32	{d18, d19}, [r5]
	vbic	q8, q8, q10
	vclt.f32	q10, q9, #0
	vbic	q9, q9, q10
	vst1.32	{d16, d17}, [r3]!
	vst1.32	{d18, d19}, [r3]
	mov	r3, #3424
	orr	r3, r3, #147456
	add	r3, r3, r12, lsl #6
	add	r5, r11, r3
	add	r3, r10, r3
	vld1.32	{d16, d17}, [r5]!
	vclt.f32	q10, q8, #0
	vld1.32	{d18, d19}, [r5]
	vbic	q8, q8, q10
	vclt.f32	q10, q9, #0
	vbic	q9, q9, q10
	vst1.32	{d16, d17}, [r3]!
	vst1.32	{d18, d19}, [r3]
	add	r3, r4, r12, lsl #6
	add	r5, r11, r3
	add	r3, r10, r3
	vld1.32	{d16, d17}, [r5]!
	vclt.f32	q10, q8, #0
	vld1.32	{d18, d19}, [r5]
	vbic	q8, q8, q10
	vclt.f32	q10, q9, #0
	vbic	q9, q9, q10
	vst1.32	{d16, d17}, [r3]!
	vst1.32	{d18, d19}, [r3]
	add	r3, r1, r12, lsl #6
	add	r5, r11, r3
	add	r3, r10, r3
	vld1.32	{d16, d17}, [r5]!
	vclt.f32	q10, q8, #0
	vld1.32	{d18, d19}, [r5]
	vbic	q8, q8, q10
	vclt.f32	q10, q9, #0
	vbic	q9, q9, q10
	vst1.32	{d16, d17}, [r3]!
	vst1.32	{d18, d19}, [r3]
	eor	r3, r0, #112
	orrs	r3, r3, r2
	bne	LBB0_27
@ %bb.28:                               @ %cond13.preheader.4.i.preheader
	mov	r4, #4480
	mov	r1, #416
	orr	r4, r4, #196608
	orr	r1, r1, #200704
	mov	r0, #0
	mov	r2, #0
LBB0_29:                                @ %cond13.preheader.4.i
                                        @ =>This Inner Loop Header: Depth=1
	rsb	r12, r0, r0, lsl #3
	adds	r0, r0, #1
	add	lr, r12, #3136
	adc	r2, r2, #0
	add	r3, r11, lr, lsl #6
	vld1.32	{d16, d17}, [r3]!
	vclt.f32	q10, q8, #0
	vld1.32	{d18, d19}, [r3]
	vbic	q8, q8, q10
	add	r3, r10, lr, lsl #6
	vclt.f32	q10, q9, #0
	vbic	q9, q9, q10
	vst1.32	{d16, d17}, [r3]!
	vst1.32	{d18, d19}, [r3]
	mov	r3, #32
	orr	r3, r3, #200704
	add	r3, r3, r12, lsl #6
	add	r5, r11, r3
	add	r3, r10, r3
	vld1.32	{d16, d17}, [r5]!
	vclt.f32	q10, q8, #0
	vld1.32	{d18, d19}, [r5]
	vbic	q8, q8, q10
	vclt.f32	q10, q9, #0
	vbic	q9, q9, q10
	vst1.32	{d16, d17}, [r3]!
	vst1.32	{d18, d19}, [r3]
	mov	r3, #4160
	orr	r3, r3, #196608
	add	r3, r3, r12, lsl #6
	add	r5, r11, r3
	add	r3, r10, r3
	vld1.32	{d16, d17}, [r5]!
	vclt.f32	q10, q8, #0
	vld1.32	{d18, d19}, [r5]
	vbic	q8, q8, q10
	vclt.f32	q10, q9, #0
	vbic	q9, q9, q10
	vst1.32	{d16, d17}, [r3]!
	vst1.32	{d18, d19}, [r3]
	mov	r3, #96
	orr	r3, r3, #200704
	add	r3, r3, r12, lsl #6
	add	r5, r11, r3
	add	r3, r10, r3
	vld1.32	{d16, d17}, [r5]!
	vclt.f32	q10, q8, #0
	vld1.32	{d18, d19}, [r5]
	vbic	q8, q8, q10
	vclt.f32	q10, q9, #0
	vbic	q9, q9, q10
	vst1.32	{d16, d17}, [r3]!
	vst1.32	{d18, d19}, [r3]
	mov	r3, #4224
	orr	r3, r3, #196608
	add	r3, r3, r12, lsl #6
	add	r5, r11, r3
	add	r3, r10, r3
	vld1.32	{d16, d17}, [r5]!
	vclt.f32	q10, q8, #0
	vld1.32	{d18, d19}, [r5]
	vbic	q8, q8, q10
	vclt.f32	q10, q9, #0
	vbic	q9, q9, q10
	vst1.32	{d16, d17}, [r3]!
	vst1.32	{d18, d19}, [r3]
	mov	r3, #160
	orr	r3, r3, #200704
	add	r3, r3, r12, lsl #6
	add	r5, r11, r3
	add	r3, r10, r3
	vld1.32	{d16, d17}, [r5]!
	vclt.f32	q10, q8, #0
	vld1.32	{d18, d19}, [r5]
	vbic	q8, q8, q10
	vclt.f32	q10, q9, #0
	vbic	q9, q9, q10
	vst1.32	{d16, d17}, [r3]!
	vst1.32	{d18, d19}, [r3]
	mov	r3, #4288
	orr	r3, r3, #196608
	add	r3, r3, r12, lsl #6
	add	r5, r11, r3
	add	r3, r10, r3
	vld1.32	{d16, d17}, [r5]!
	vclt.f32	q10, q8, #0
	vld1.32	{d18, d19}, [r5]
	vbic	q8, q8, q10
	vclt.f32	q10, q9, #0
	vbic	q9, q9, q10
	vst1.32	{d16, d17}, [r3]!
	vst1.32	{d18, d19}, [r3]
	mov	r3, #224
	orr	r3, r3, #200704
	add	r3, r3, r12, lsl #6
	add	r5, r11, r3
	add	r3, r10, r3
	vld1.32	{d16, d17}, [r5]!
	vclt.f32	q10, q8, #0
	vld1.32	{d18, d19}, [r5]
	vbic	q8, q8, q10
	vclt.f32	q10, q9, #0
	vbic	q9, q9, q10
	vst1.32	{d16, d17}, [r3]!
	vst1.32	{d18, d19}, [r3]
	mov	r3, #4352
	orr	r3, r3, #196608
	add	r3, r3, r12, lsl #6
	add	r5, r11, r3
	add	r3, r10, r3
	vld1.32	{d16, d17}, [r5]!
	vclt.f32	q10, q8, #0
	vld1.32	{d18, d19}, [r5]
	vbic	q8, q8, q10
	vclt.f32	q10, q9, #0
	vbic	q9, q9, q10
	vst1.32	{d16, d17}, [r3]!
	vst1.32	{d18, d19}, [r3]
	mov	r3, #288
	orr	r3, r3, #200704
	add	r3, r3, r12, lsl #6
	add	r5, r11, r3
	add	r3, r10, r3
	vld1.32	{d16, d17}, [r5]!
	vclt.f32	q10, q8, #0
	vld1.32	{d18, d19}, [r5]
	vbic	q8, q8, q10
	vclt.f32	q10, q9, #0
	vbic	q9, q9, q10
	vst1.32	{d16, d17}, [r3]!
	vst1.32	{d18, d19}, [r3]
	mov	r3, #4416
	orr	r3, r3, #196608
	add	r3, r3, r12, lsl #6
	add	r5, r11, r3
	add	r3, r10, r3
	vld1.32	{d16, d17}, [r5]!
	vclt.f32	q10, q8, #0
	vld1.32	{d18, d19}, [r5]
	vbic	q8, q8, q10
	vclt.f32	q10, q9, #0
	vbic	q9, q9, q10
	vst1.32	{d16, d17}, [r3]!
	vst1.32	{d18, d19}, [r3]
	mov	r3, #352
	orr	r3, r3, #200704
	add	r3, r3, r12, lsl #6
	add	r5, r11, r3
	add	r3, r10, r3
	vld1.32	{d16, d17}, [r5]!
	vclt.f32	q10, q8, #0
	vld1.32	{d18, d19}, [r5]
	vbic	q8, q8, q10
	vclt.f32	q10, q9, #0
	vbic	q9, q9, q10
	vst1.32	{d16, d17}, [r3]!
	vst1.32	{d18, d19}, [r3]
	add	r3, r4, r12, lsl #6
	add	r5, r11, r3
	add	r3, r10, r3
	vld1.32	{d16, d17}, [r5]!
	vclt.f32	q10, q8, #0
	vld1.32	{d18, d19}, [r5]
	vbic	q8, q8, q10
	vclt.f32	q10, q9, #0
	vbic	q9, q9, q10
	vst1.32	{d16, d17}, [r3]!
	vst1.32	{d18, d19}, [r3]
	add	r3, r1, r12, lsl #6
	add	r5, r11, r3
	add	r3, r10, r3
	vld1.32	{d16, d17}, [r5]!
	vclt.f32	q10, q8, #0
	vld1.32	{d18, d19}, [r5]
	vbic	q8, q8, q10
	vclt.f32	q10, q9, #0
	vbic	q9, q9, q10
	vst1.32	{d16, d17}, [r3]!
	vst1.32	{d18, d19}, [r3]
	eor	r3, r0, #112
	orrs	r3, r3, r2
	bne	LBB0_29
@ %bb.30:                               @ %cond13.preheader.5.i.preheader
	mov	r4, #5504
	mov	r1, #1440
	orr	r4, r4, #245760
	orr	r1, r1, #249856
	mov	r0, #0
	mov	r2, #0
LBB0_31:                                @ %cond13.preheader.5.i
                                        @ =>This Inner Loop Header: Depth=1
	rsb	r12, r0, r0, lsl #3
	adds	r0, r0, #1
	add	lr, r12, #3920
	adc	r2, r2, #0
	add	r3, r11, lr, lsl #6
	vld1.32	{d16, d17}, [r3]!
	vclt.f32	q10, q8, #0
	vld1.32	{d18, d19}, [r3]
	vbic	q8, q8, q10
	add	r3, r10, lr, lsl #6
	vclt.f32	q10, q9, #0
	vbic	q9, q9, q10
	vst1.32	{d16, d17}, [r3]!
	vst1.32	{d18, d19}, [r3]
	mov	r3, #1056
	orr	r3, r3, #249856
	add	r3, r3, r12, lsl #6
	add	r5, r11, r3
	add	r3, r10, r3
	vld1.32	{d16, d17}, [r5]!
	vclt.f32	q10, q8, #0
	vld1.32	{d18, d19}, [r5]
	vbic	q8, q8, q10
	vclt.f32	q10, q9, #0
	vbic	q9, q9, q10
	vst1.32	{d16, d17}, [r3]!
	vst1.32	{d18, d19}, [r3]
	mov	r3, #5184
	orr	r3, r3, #245760
	add	r3, r3, r12, lsl #6
	add	r5, r11, r3
	add	r3, r10, r3
	vld1.32	{d16, d17}, [r5]!
	vclt.f32	q10, q8, #0
	vld1.32	{d18, d19}, [r5]
	vbic	q8, q8, q10
	vclt.f32	q10, q9, #0
	vbic	q9, q9, q10
	vst1.32	{d16, d17}, [r3]!
	vst1.32	{d18, d19}, [r3]
	mov	r3, #1120
	orr	r3, r3, #249856
	add	r3, r3, r12, lsl #6
	add	r5, r11, r3
	add	r3, r10, r3
	vld1.32	{d16, d17}, [r5]!
	vclt.f32	q10, q8, #0
	vld1.32	{d18, d19}, [r5]
	vbic	q8, q8, q10
	vclt.f32	q10, q9, #0
	vbic	q9, q9, q10
	vst1.32	{d16, d17}, [r3]!
	vst1.32	{d18, d19}, [r3]
	mov	r3, #5248
	orr	r3, r3, #245760
	add	r3, r3, r12, lsl #6
	add	r5, r11, r3
	add	r3, r10, r3
	vld1.32	{d16, d17}, [r5]!
	vclt.f32	q10, q8, #0
	vld1.32	{d18, d19}, [r5]
	vbic	q8, q8, q10
	vclt.f32	q10, q9, #0
	vbic	q9, q9, q10
	vst1.32	{d16, d17}, [r3]!
	vst1.32	{d18, d19}, [r3]
	mov	r3, #1184
	orr	r3, r3, #249856
	add	r3, r3, r12, lsl #6
	add	r5, r11, r3
	add	r3, r10, r3
	vld1.32	{d16, d17}, [r5]!
	vclt.f32	q10, q8, #0
	vld1.32	{d18, d19}, [r5]
	vbic	q8, q8, q10
	vclt.f32	q10, q9, #0
	vbic	q9, q9, q10
	vst1.32	{d16, d17}, [r3]!
	vst1.32	{d18, d19}, [r3]
	mov	r3, #5312
	orr	r3, r3, #245760
	add	r3, r3, r12, lsl #6
	add	r5, r11, r3
	add	r3, r10, r3
	vld1.32	{d16, d17}, [r5]!
	vclt.f32	q10, q8, #0
	vld1.32	{d18, d19}, [r5]
	vbic	q8, q8, q10
	vclt.f32	q10, q9, #0
	vbic	q9, q9, q10
	vst1.32	{d16, d17}, [r3]!
	vst1.32	{d18, d19}, [r3]
	mov	r3, #1248
	orr	r3, r3, #249856
	add	r3, r3, r12, lsl #6
	add	r5, r11, r3
	add	r3, r10, r3
	vld1.32	{d16, d17}, [r5]!
	vclt.f32	q10, q8, #0
	vld1.32	{d18, d19}, [r5]
	vbic	q8, q8, q10
	vclt.f32	q10, q9, #0
	vbic	q9, q9, q10
	vst1.32	{d16, d17}, [r3]!
	vst1.32	{d18, d19}, [r3]
	mov	r3, #54528
	orr	r3, r3, #196608
	add	r3, r3, r12, lsl #6
	add	r5, r11, r3
	add	r3, r10, r3
	vld1.32	{d16, d17}, [r5]!
	vclt.f32	q10, q8, #0
	vld1.32	{d18, d19}, [r5]
	vbic	q8, q8, q10
	vclt.f32	q10, q9, #0
	vbic	q9, q9, q10
	vst1.32	{d16, d17}, [r3]!
	vst1.32	{d18, d19}, [r3]
	mov	r3, #1312
	orr	r3, r3, #249856
	add	r3, r3, r12, lsl #6
	add	r5, r11, r3
	add	r3, r10, r3
	vld1.32	{d16, d17}, [r5]!
	vclt.f32	q10, q8, #0
	vld1.32	{d18, d19}, [r5]
	vbic	q8, q8, q10
	vclt.f32	q10, q9, #0
	vbic	q9, q9, q10
	vst1.32	{d16, d17}, [r3]!
	vst1.32	{d18, d19}, [r3]
	mov	r3, #5440
	orr	r3, r3, #245760
	add	r3, r3, r12, lsl #6
	add	r5, r11, r3
	add	r3, r10, r3
	vld1.32	{d16, d17}, [r5]!
	vclt.f32	q10, q8, #0
	vld1.32	{d18, d19}, [r5]
	vbic	q8, q8, q10
	vclt.f32	q10, q9, #0
	vbic	q9, q9, q10
	vst1.32	{d16, d17}, [r3]!
	vst1.32	{d18, d19}, [r3]
	mov	r3, #1376
	orr	r3, r3, #249856
	add	r3, r3, r12, lsl #6
	add	r5, r11, r3
	add	r3, r10, r3
	vld1.32	{d16, d17}, [r5]!
	vclt.f32	q10, q8, #0
	vld1.32	{d18, d19}, [r5]
	vbic	q8, q8, q10
	vclt.f32	q10, q9, #0
	vbic	q9, q9, q10
	vst1.32	{d16, d17}, [r3]!
	vst1.32	{d18, d19}, [r3]
	add	r3, r4, r12, lsl #6
	add	r5, r11, r3
	add	r3, r10, r3
	vld1.32	{d16, d17}, [r5]!
	vclt.f32	q10, q8, #0
	vld1.32	{d18, d19}, [r5]
	vbic	q8, q8, q10
	vclt.f32	q10, q9, #0
	vbic	q9, q9, q10
	vst1.32	{d16, d17}, [r3]!
	vst1.32	{d18, d19}, [r3]
	add	r3, r1, r12, lsl #6
	add	r5, r11, r3
	add	r3, r10, r3
	vld1.32	{d16, d17}, [r5]!
	vclt.f32	q10, q8, #0
	vld1.32	{d18, d19}, [r5]
	vbic	q8, q8, q10
	vclt.f32	q10, q9, #0
	vbic	q9, q9, q10
	vst1.32	{d16, d17}, [r3]!
	vst1.32	{d18, d19}, [r3]
	eor	r3, r0, #112
	orrs	r3, r3, r2
	bne	LBB0_31
@ %bb.32:                               @ %cond13.preheader.6.i.preheader
	mov	r1, #9728
	mov	r0, #0
	orr	r1, r1, #65536
	mov	r2, #0
LBB0_33:                                @ %cond13.preheader.6.i
                                        @ =>This Inner Loop Header: Depth=1
	rsb	r3, r0, r0, lsl #3
	adds	r0, r0, #1
	adc	r2, r2, #0
	add	r3, r1, r3, lsl #4
	add	r5, r11, r3, lsl #2
	vld1.32	{d16, d17}, [r5]!
	vclt.f32	q10, q8, #0
	vld1.32	{d18, d19}, [r5]
	vbic	q8, q8, q10
	add	r5, r10, r3, lsl #2
	vclt.f32	q10, q9, #0
	vbic	q9, q9, q10
	vst1.32	{d16, d17}, [r5]!
	vst1.32	{d18, d19}, [r5]
	add	r5, r3, #8
	add	r4, r11, r5, lsl #2
	add	r5, r10, r5, lsl #2
	vld1.32	{d16, d17}, [r4]!
	vclt.f32	q10, q8, #0
	vld1.32	{d18, d19}, [r4]
	vbic	q8, q8, q10
	vclt.f32	q10, q9, #0
	vbic	q9, q9, q10
	vst1.32	{d16, d17}, [r5]!
	vst1.32	{d18, d19}, [r5]
	add	r5, r3, #16
	add	r4, r11, r5, lsl #2
	add	r5, r10, r5, lsl #2
	vld1.32	{d16, d17}, [r4]!
	vclt.f32	q10, q8, #0
	vld1.32	{d18, d19}, [r4]
	vbic	q8, q8, q10
	vclt.f32	q10, q9, #0
	vbic	q9, q9, q10
	vst1.32	{d16, d17}, [r5]!
	vst1.32	{d18, d19}, [r5]
	add	r5, r3, #24
	add	r4, r11, r5, lsl #2
	add	r5, r10, r5, lsl #2
	vld1.32	{d16, d17}, [r4]!
	vclt.f32	q10, q8, #0
	vld1.32	{d18, d19}, [r4]
	vbic	q8, q8, q10
	vclt.f32	q10, q9, #0
	vbic	q9, q9, q10
	vst1.32	{d16, d17}, [r5]!
	vst1.32	{d18, d19}, [r5]
	add	r5, r3, #32
	add	r4, r11, r5, lsl #2
	add	r5, r10, r5, lsl #2
	vld1.32	{d16, d17}, [r4]!
	vclt.f32	q10, q8, #0
	vld1.32	{d18, d19}, [r4]
	vbic	q8, q8, q10
	vclt.f32	q10, q9, #0
	vbic	q9, q9, q10
	vst1.32	{d16, d17}, [r5]!
	vst1.32	{d18, d19}, [r5]
	add	r5, r3, #40
	add	r4, r11, r5, lsl #2
	add	r5, r10, r5, lsl #2
	vld1.32	{d16, d17}, [r4]!
	vclt.f32	q10, q8, #0
	vld1.32	{d18, d19}, [r4]
	vbic	q8, q8, q10
	vclt.f32	q10, q9, #0
	vbic	q9, q9, q10
	vst1.32	{d16, d17}, [r5]!
	vst1.32	{d18, d19}, [r5]
	add	r5, r3, #48
	add	r4, r11, r5, lsl #2
	add	r5, r10, r5, lsl #2
	vld1.32	{d16, d17}, [r4]!
	vclt.f32	q10, q8, #0
	vld1.32	{d18, d19}, [r4]
	vbic	q8, q8, q10
	vclt.f32	q10, q9, #0
	vbic	q9, q9, q10
	vst1.32	{d16, d17}, [r5]!
	vst1.32	{d18, d19}, [r5]
	add	r5, r3, #56
	add	r4, r11, r5, lsl #2
	add	r5, r10, r5, lsl #2
	vld1.32	{d16, d17}, [r4]!
	vclt.f32	q10, q8, #0
	vld1.32	{d18, d19}, [r4]
	vbic	q8, q8, q10
	vclt.f32	q10, q9, #0
	vbic	q9, q9, q10
	vst1.32	{d16, d17}, [r5]!
	vst1.32	{d18, d19}, [r5]
	add	r5, r3, #64
	add	r4, r11, r5, lsl #2
	add	r5, r10, r5, lsl #2
	vld1.32	{d16, d17}, [r4]!
	vclt.f32	q10, q8, #0
	vld1.32	{d18, d19}, [r4]
	vbic	q8, q8, q10
	vclt.f32	q10, q9, #0
	vbic	q9, q9, q10
	vst1.32	{d16, d17}, [r5]!
	vst1.32	{d18, d19}, [r5]
	add	r5, r3, #72
	add	r4, r11, r5, lsl #2
	add	r5, r10, r5, lsl #2
	vld1.32	{d16, d17}, [r4]!
	vclt.f32	q10, q8, #0
	vld1.32	{d18, d19}, [r4]
	vbic	q8, q8, q10
	vclt.f32	q10, q9, #0
	vbic	q9, q9, q10
	vst1.32	{d16, d17}, [r5]!
	vst1.32	{d18, d19}, [r5]
	add	r5, r3, #80
	add	r4, r11, r5, lsl #2
	add	r5, r10, r5, lsl #2
	vld1.32	{d16, d17}, [r4]!
	vclt.f32	q10, q8, #0
	vld1.32	{d18, d19}, [r4]
	vbic	q8, q8, q10
	vclt.f32	q10, q9, #0
	vbic	q9, q9, q10
	vst1.32	{d16, d17}, [r5]!
	vst1.32	{d18, d19}, [r5]
	add	r5, r3, #88
	add	r4, r11, r5, lsl #2
	add	r5, r10, r5, lsl #2
	vld1.32	{d16, d17}, [r4]!
	vclt.f32	q10, q8, #0
	vld1.32	{d18, d19}, [r4]
	vbic	q8, q8, q10
	vclt.f32	q10, q9, #0
	vbic	q9, q9, q10
	vst1.32	{d16, d17}, [r5]!
	vst1.32	{d18, d19}, [r5]
	add	r5, r3, #96
	add	r3, r3, #104
	add	r4, r11, r5, lsl #2
	add	r5, r10, r5, lsl #2
	vld1.32	{d16, d17}, [r4]!
	vclt.f32	q10, q8, #0
	vld1.32	{d18, d19}, [r4]
	vbic	q8, q8, q10
	vclt.f32	q10, q9, #0
	vbic	q9, q9, q10
	vst1.32	{d16, d17}, [r5]!
	vst1.32	{d18, d19}, [r5]
	add	r5, r11, r3, lsl #2
	add	r3, r10, r3, lsl #2
	vld1.32	{d16, d17}, [r5]!
	vclt.f32	q10, q8, #0
	vld1.32	{d18, d19}, [r5]
	vbic	q8, q8, q10
	vclt.f32	q10, q9, #0
	vbic	q9, q9, q10
	vst1.32	{d16, d17}, [r3]!
	vst1.32	{d18, d19}, [r3]
	eor	r3, r0, #112
	orrs	r3, r3, r2
	bne	LBB0_33
@ %bb.34:                               @ %cond13.preheader.7.i.preheader
	mov	r12, #776
	mov	r2, #0
	orr	r12, r12, #87040
	mov	r3, #0
LBB0_35:                                @ %cond13.preheader.7.i
                                        @ =>This Inner Loop Header: Depth=1
	rsb	r5, r2, r2, lsl #3
	adds	r2, r2, #1
	adc	r3, r3, #0
	add	r4, r1, r5, lsl #4
	add	r5, r12, r5, lsl #4
	add	r4, r4, #12544
	add	r0, r11, r4, lsl #2
	vld1.32	{d16, d17}, [r0]!
	vclt.f32	q10, q8, #0
	vld1.32	{d18, d19}, [r0]
	vbic	q8, q8, q10
	add	r0, r10, r4, lsl #2
	vclt.f32	q10, q9, #0
	vbic	q9, q9, q10
	vst1.32	{d16, d17}, [r0]!
	vst1.32	{d18, d19}, [r0]
	add	r0, r11, r5, lsl #2
	vld1.32	{d16, d17}, [r0]!
	vclt.f32	q10, q8, #0
	vld1.32	{d18, d19}, [r0]
	vbic	q8, q8, q10
	add	r0, r10, r5, lsl #2
	vclt.f32	q10, q9, #0
	vbic	q9, q9, q10
	vst1.32	{d16, d17}, [r0]!
	vst1.32	{d18, d19}, [r0]
	add	r0, r5, #8
	add	r4, r11, r0, lsl #2
	add	r0, r10, r0, lsl #2
	vld1.32	{d16, d17}, [r4]!
	vclt.f32	q10, q8, #0
	vld1.32	{d18, d19}, [r4]
	vbic	q8, q8, q10
	vclt.f32	q10, q9, #0
	vbic	q9, q9, q10
	vst1.32	{d16, d17}, [r0]!
	vst1.32	{d18, d19}, [r0]
	add	r0, r5, #16
	add	r4, r11, r0, lsl #2
	add	r0, r10, r0, lsl #2
	vld1.32	{d16, d17}, [r4]!
	vclt.f32	q10, q8, #0
	vld1.32	{d18, d19}, [r4]
	vbic	q8, q8, q10
	vclt.f32	q10, q9, #0
	vbic	q9, q9, q10
	vst1.32	{d16, d17}, [r0]!
	vst1.32	{d18, d19}, [r0]
	add	r0, r5, #24
	add	r4, r11, r0, lsl #2
	add	r0, r10, r0, lsl #2
	vld1.32	{d16, d17}, [r4]!
	vclt.f32	q10, q8, #0
	vld1.32	{d18, d19}, [r4]
	vbic	q8, q8, q10
	vclt.f32	q10, q9, #0
	vbic	q9, q9, q10
	vst1.32	{d16, d17}, [r0]!
	vst1.32	{d18, d19}, [r0]
	add	r0, r5, #32
	add	r4, r11, r0, lsl #2
	add	r0, r10, r0, lsl #2
	vld1.32	{d16, d17}, [r4]!
	vclt.f32	q10, q8, #0
	vld1.32	{d18, d19}, [r4]
	vbic	q8, q8, q10
	vclt.f32	q10, q9, #0
	vbic	q9, q9, q10
	vst1.32	{d16, d17}, [r0]!
	vst1.32	{d18, d19}, [r0]
	add	r0, r5, #40
	add	r4, r11, r0, lsl #2
	add	r0, r10, r0, lsl #2
	vld1.32	{d16, d17}, [r4]!
	vclt.f32	q10, q8, #0
	vld1.32	{d18, d19}, [r4]
	vbic	q8, q8, q10
	vclt.f32	q10, q9, #0
	vbic	q9, q9, q10
	vst1.32	{d16, d17}, [r0]!
	vst1.32	{d18, d19}, [r0]
	add	r0, r5, #48
	add	r4, r11, r0, lsl #2
	add	r0, r10, r0, lsl #2
	vld1.32	{d16, d17}, [r4]!
	vclt.f32	q10, q8, #0
	vld1.32	{d18, d19}, [r4]
	vbic	q8, q8, q10
	vclt.f32	q10, q9, #0
	vbic	q9, q9, q10
	vst1.32	{d16, d17}, [r0]!
	vst1.32	{d18, d19}, [r0]
	add	r0, r5, #56
	add	r4, r11, r0, lsl #2
	add	r0, r10, r0, lsl #2
	vld1.32	{d16, d17}, [r4]!
	vclt.f32	q10, q8, #0
	vld1.32	{d18, d19}, [r4]
	vbic	q8, q8, q10
	vclt.f32	q10, q9, #0
	vbic	q9, q9, q10
	vst1.32	{d16, d17}, [r0]!
	vst1.32	{d18, d19}, [r0]
	add	r0, r5, #64
	add	r4, r11, r0, lsl #2
	add	r0, r10, r0, lsl #2
	vld1.32	{d16, d17}, [r4]!
	vclt.f32	q10, q8, #0
	vld1.32	{d18, d19}, [r4]
	vbic	q8, q8, q10
	vclt.f32	q10, q9, #0
	vbic	q9, q9, q10
	vst1.32	{d16, d17}, [r0]!
	vst1.32	{d18, d19}, [r0]
	add	r0, r5, #72
	add	r4, r11, r0, lsl #2
	add	r0, r10, r0, lsl #2
	vld1.32	{d16, d17}, [r4]!
	vclt.f32	q10, q8, #0
	vld1.32	{d18, d19}, [r4]
	vbic	q8, q8, q10
	vclt.f32	q10, q9, #0
	vbic	q9, q9, q10
	vst1.32	{d16, d17}, [r0]!
	vst1.32	{d18, d19}, [r0]
	add	r0, r5, #80
	add	r4, r11, r0, lsl #2
	add	r0, r10, r0, lsl #2
	vld1.32	{d16, d17}, [r4]!
	vclt.f32	q10, q8, #0
	vld1.32	{d18, d19}, [r4]
	vbic	q8, q8, q10
	vclt.f32	q10, q9, #0
	vbic	q9, q9, q10
	vst1.32	{d16, d17}, [r0]!
	vst1.32	{d18, d19}, [r0]
	add	r0, r5, #88
	add	r4, r11, r0, lsl #2
	add	r0, r10, r0, lsl #2
	vld1.32	{d16, d17}, [r4]!
	vclt.f32	q10, q8, #0
	vld1.32	{d18, d19}, [r4]
	vbic	q8, q8, q10
	vclt.f32	q10, q9, #0
	vbic	q9, q9, q10
	vst1.32	{d16, d17}, [r0]!
	vst1.32	{d18, d19}, [r0]
	add	r0, r5, #96
	add	r5, r11, r0, lsl #2
	add	r0, r10, r0, lsl #2
	vld1.32	{d16, d17}, [r5]!
	vclt.f32	q10, q8, #0
	vld1.32	{d18, d19}, [r5]
	vbic	q8, q8, q10
	vclt.f32	q10, q9, #0
	vbic	q9, q9, q10
	vst1.32	{d16, d17}, [r0]!
	vst1.32	{d18, d19}, [r0]
	eor	r0, r2, #112
	orrs	r0, r0, r3
	bne	LBB0_35
@ %bb.36:                               @ %cond13.preheader.8.i.preheader
	mov	lr, #2064
	mov	r1, #0
	orr	lr, lr, #98304
	mov	r3, #100352
	mov	r5, #0
LBB0_37:                                @ %cond13.preheader.8.i
                                        @ =>This Inner Loop Header: Depth=1
	rsb	r0, r1, r1, lsl #3
	adds	r1, r1, #1
	adc	r5, r5, #0
	add	r4, r3, r0, lsl #4
	add	r2, r11, r4, lsl #2
	vld1.32	{d16, d17}, [r2]!
	vclt.f32	q10, q8, #0
	vld1.32	{d18, d19}, [r2]
	vbic	q8, q8, q10
	add	r2, r10, r4, lsl #2
	vclt.f32	q10, q9, #0
	vbic	q9, q9, q10
	vst1.32	{d16, d17}, [r2]!
	vst1.32	{d18, d19}, [r2]
	add	r2, r12, r0, lsl #4
	add	r2, r2, #12544
	add	r4, r11, r2, lsl #2
	add	r2, r10, r2, lsl #2
	vld1.32	{d16, d17}, [r4]!
	vclt.f32	q10, q8, #0
	vld1.32	{d18, d19}, [r4]
	vbic	q8, q8, q10
	add	r4, lr, r0, lsl #4
	vclt.f32	q10, q9, #0
	vbic	q9, q9, q10
	add	r0, r11, r4, lsl #2
	vst1.32	{d16, d17}, [r2]!
	vst1.32	{d18, d19}, [r2]
	vld1.32	{d16, d17}, [r0]!
	vclt.f32	q10, q8, #0
	vld1.32	{d18, d19}, [r0]
	vbic	q8, q8, q10
	add	r0, r10, r4, lsl #2
	vclt.f32	q10, q9, #0
	vbic	q9, q9, q10
	vst1.32	{d16, d17}, [r0]!
	vst1.32	{d18, d19}, [r0]
	add	r0, r4, #8
	add	r2, r11, r0, lsl #2
	add	r0, r10, r0, lsl #2
	vld1.32	{d16, d17}, [r2]!
	vclt.f32	q10, q8, #0
	vld1.32	{d18, d19}, [r2]
	vbic	q8, q8, q10
	vclt.f32	q10, q9, #0
	vbic	q9, q9, q10
	vst1.32	{d16, d17}, [r0]!
	vst1.32	{d18, d19}, [r0]
	add	r0, r4, #16
	add	r2, r11, r0, lsl #2
	add	r0, r10, r0, lsl #2
	vld1.32	{d16, d17}, [r2]!
	vclt.f32	q10, q8, #0
	vld1.32	{d18, d19}, [r2]
	vbic	q8, q8, q10
	vclt.f32	q10, q9, #0
	vbic	q9, q9, q10
	vst1.32	{d16, d17}, [r0]!
	vst1.32	{d18, d19}, [r0]
	add	r0, r4, #24
	add	r2, r11, r0, lsl #2
	add	r0, r10, r0, lsl #2
	vld1.32	{d16, d17}, [r2]!
	vclt.f32	q10, q8, #0
	vld1.32	{d18, d19}, [r2]
	vbic	q8, q8, q10
	vclt.f32	q10, q9, #0
	vbic	q9, q9, q10
	vst1.32	{d16, d17}, [r0]!
	vst1.32	{d18, d19}, [r0]
	add	r0, r4, #32
	add	r2, r11, r0, lsl #2
	add	r0, r10, r0, lsl #2
	vld1.32	{d16, d17}, [r2]!
	vclt.f32	q10, q8, #0
	vld1.32	{d18, d19}, [r2]
	vbic	q8, q8, q10
	vclt.f32	q10, q9, #0
	vbic	q9, q9, q10
	vst1.32	{d16, d17}, [r0]!
	vst1.32	{d18, d19}, [r0]
	add	r0, r4, #40
	add	r2, r11, r0, lsl #2
	add	r0, r10, r0, lsl #2
	vld1.32	{d16, d17}, [r2]!
	vclt.f32	q10, q8, #0
	vld1.32	{d18, d19}, [r2]
	vbic	q8, q8, q10
	vclt.f32	q10, q9, #0
	vbic	q9, q9, q10
	vst1.32	{d16, d17}, [r0]!
	vst1.32	{d18, d19}, [r0]
	add	r0, r4, #48
	add	r2, r11, r0, lsl #2
	add	r0, r10, r0, lsl #2
	vld1.32	{d16, d17}, [r2]!
	vclt.f32	q10, q8, #0
	vld1.32	{d18, d19}, [r2]
	vbic	q8, q8, q10
	vclt.f32	q10, q9, #0
	vbic	q9, q9, q10
	vst1.32	{d16, d17}, [r0]!
	vst1.32	{d18, d19}, [r0]
	add	r0, r4, #56
	add	r2, r11, r0, lsl #2
	add	r0, r10, r0, lsl #2
	vld1.32	{d16, d17}, [r2]!
	vclt.f32	q10, q8, #0
	vld1.32	{d18, d19}, [r2]
	vbic	q8, q8, q10
	vclt.f32	q10, q9, #0
	vbic	q9, q9, q10
	vst1.32	{d16, d17}, [r0]!
	vst1.32	{d18, d19}, [r0]
	add	r0, r4, #64
	add	r2, r11, r0, lsl #2
	add	r0, r10, r0, lsl #2
	vld1.32	{d16, d17}, [r2]!
	vclt.f32	q10, q8, #0
	vld1.32	{d18, d19}, [r2]
	vbic	q8, q8, q10
	vclt.f32	q10, q9, #0
	vbic	q9, q9, q10
	vst1.32	{d16, d17}, [r0]!
	vst1.32	{d18, d19}, [r0]
	add	r0, r4, #72
	add	r2, r11, r0, lsl #2
	add	r0, r10, r0, lsl #2
	vld1.32	{d16, d17}, [r2]!
	vclt.f32	q10, q8, #0
	vld1.32	{d18, d19}, [r2]
	vbic	q8, q8, q10
	vclt.f32	q10, q9, #0
	vbic	q9, q9, q10
	vst1.32	{d16, d17}, [r0]!
	vst1.32	{d18, d19}, [r0]
	add	r0, r4, #80
	add	r2, r11, r0, lsl #2
	add	r0, r10, r0, lsl #2
	vld1.32	{d16, d17}, [r2]!
	vclt.f32	q10, q8, #0
	vld1.32	{d18, d19}, [r2]
	vbic	q8, q8, q10
	vclt.f32	q10, q9, #0
	vbic	q9, q9, q10
	vst1.32	{d16, d17}, [r0]!
	vst1.32	{d18, d19}, [r0]
	add	r0, r4, #88
	add	r2, r11, r0, lsl #2
	add	r0, r10, r0, lsl #2
	vld1.32	{d16, d17}, [r2]!
	vclt.f32	q10, q8, #0
	vld1.32	{d18, d19}, [r2]
	vbic	q8, q8, q10
	vclt.f32	q10, q9, #0
	vbic	q9, q9, q10
	vst1.32	{d16, d17}, [r0]!
	vst1.32	{d18, d19}, [r0]
	eor	r0, r1, #112
	orrs	r0, r0, r5
	bne	LBB0_37
@ %bb.38:                               @ %cond13.preheader.9.i.preheader
	mov	r0, #47360
	mov	r1, #0
	orr	r0, r0, #65536
	mov	r2, #0
LBB0_39:                                @ %cond13.preheader.9.i
                                        @ =>This Inner Loop Header: Depth=1
	rsb	r3, r1, r1, lsl #3
	adds	r1, r1, #1
	adc	r2, r2, #0
	add	r3, r0, r3, lsl #4
	add	r5, r11, r3, lsl #2
	vld1.32	{d16, d17}, [r5]!
	vclt.f32	q10, q8, #0
	vld1.32	{d18, d19}, [r5]
	vbic	q8, q8, q10
	add	r5, r10, r3, lsl #2
	vclt.f32	q10, q9, #0
	vbic	q9, q9, q10
	vst1.32	{d16, d17}, [r5]!
	vst1.32	{d18, d19}, [r5]
	add	r5, r3, #8
	add	r4, r11, r5, lsl #2
	add	r5, r10, r5, lsl #2
	vld1.32	{d16, d17}, [r4]!
	vclt.f32	q10, q8, #0
	vld1.32	{d18, d19}, [r4]
	vbic	q8, q8, q10
	vclt.f32	q10, q9, #0
	vbic	q9, q9, q10
	vst1.32	{d16, d17}, [r5]!
	vst1.32	{d18, d19}, [r5]
	add	r5, r3, #16
	add	r4, r11, r5, lsl #2
	add	r5, r10, r5, lsl #2
	vld1.32	{d16, d17}, [r4]!
	vclt.f32	q10, q8, #0
	vld1.32	{d18, d19}, [r4]
	vbic	q8, q8, q10
	vclt.f32	q10, q9, #0
	vbic	q9, q9, q10
	vst1.32	{d16, d17}, [r5]!
	vst1.32	{d18, d19}, [r5]
	add	r5, r3, #24
	add	r4, r11, r5, lsl #2
	add	r5, r10, r5, lsl #2
	vld1.32	{d16, d17}, [r4]!
	vclt.f32	q10, q8, #0
	vld1.32	{d18, d19}, [r4]
	vbic	q8, q8, q10
	vclt.f32	q10, q9, #0
	vbic	q9, q9, q10
	vst1.32	{d16, d17}, [r5]!
	vst1.32	{d18, d19}, [r5]
	add	r5, r3, #32
	add	r4, r11, r5, lsl #2
	add	r5, r10, r5, lsl #2
	vld1.32	{d16, d17}, [r4]!
	vclt.f32	q10, q8, #0
	vld1.32	{d18, d19}, [r4]
	vbic	q8, q8, q10
	vclt.f32	q10, q9, #0
	vbic	q9, q9, q10
	vst1.32	{d16, d17}, [r5]!
	vst1.32	{d18, d19}, [r5]
	add	r5, r3, #40
	add	r4, r11, r5, lsl #2
	add	r5, r10, r5, lsl #2
	vld1.32	{d16, d17}, [r4]!
	vclt.f32	q10, q8, #0
	vld1.32	{d18, d19}, [r4]
	vbic	q8, q8, q10
	vclt.f32	q10, q9, #0
	vbic	q9, q9, q10
	vst1.32	{d16, d17}, [r5]!
	vst1.32	{d18, d19}, [r5]
	add	r5, r3, #48
	add	r4, r11, r5, lsl #2
	add	r5, r10, r5, lsl #2
	vld1.32	{d16, d17}, [r4]!
	vclt.f32	q10, q8, #0
	vld1.32	{d18, d19}, [r4]
	vbic	q8, q8, q10
	vclt.f32	q10, q9, #0
	vbic	q9, q9, q10
	vst1.32	{d16, d17}, [r5]!
	vst1.32	{d18, d19}, [r5]
	add	r5, r3, #56
	add	r4, r11, r5, lsl #2
	add	r5, r10, r5, lsl #2
	vld1.32	{d16, d17}, [r4]!
	vclt.f32	q10, q8, #0
	vld1.32	{d18, d19}, [r4]
	vbic	q8, q8, q10
	vclt.f32	q10, q9, #0
	vbic	q9, q9, q10
	vst1.32	{d16, d17}, [r5]!
	vst1.32	{d18, d19}, [r5]
	add	r5, r3, #64
	add	r4, r11, r5, lsl #2
	add	r5, r10, r5, lsl #2
	vld1.32	{d16, d17}, [r4]!
	vclt.f32	q10, q8, #0
	vld1.32	{d18, d19}, [r4]
	vbic	q8, q8, q10
	vclt.f32	q10, q9, #0
	vbic	q9, q9, q10
	vst1.32	{d16, d17}, [r5]!
	vst1.32	{d18, d19}, [r5]
	add	r5, r3, #72
	add	r4, r11, r5, lsl #2
	add	r5, r10, r5, lsl #2
	vld1.32	{d16, d17}, [r4]!
	vclt.f32	q10, q8, #0
	vld1.32	{d18, d19}, [r4]
	vbic	q8, q8, q10
	vclt.f32	q10, q9, #0
	vbic	q9, q9, q10
	vst1.32	{d16, d17}, [r5]!
	vst1.32	{d18, d19}, [r5]
	add	r5, r3, #80
	add	r4, r11, r5, lsl #2
	add	r5, r10, r5, lsl #2
	vld1.32	{d16, d17}, [r4]!
	vclt.f32	q10, q8, #0
	vld1.32	{d18, d19}, [r4]
	vbic	q8, q8, q10
	vclt.f32	q10, q9, #0
	vbic	q9, q9, q10
	vst1.32	{d16, d17}, [r5]!
	vst1.32	{d18, d19}, [r5]
	add	r5, r3, #88
	add	r4, r11, r5, lsl #2
	add	r5, r10, r5, lsl #2
	vld1.32	{d16, d17}, [r4]!
	vclt.f32	q10, q8, #0
	vld1.32	{d18, d19}, [r4]
	vbic	q8, q8, q10
	vclt.f32	q10, q9, #0
	vbic	q9, q9, q10
	vst1.32	{d16, d17}, [r5]!
	vst1.32	{d18, d19}, [r5]
	add	r5, r3, #96
	add	r3, r3, #104
	add	r4, r11, r5, lsl #2
	add	r5, r10, r5, lsl #2
	vld1.32	{d16, d17}, [r4]!
	vclt.f32	q10, q8, #0
	vld1.32	{d18, d19}, [r4]
	vbic	q8, q8, q10
	vclt.f32	q10, q9, #0
	vbic	q9, q9, q10
	vst1.32	{d16, d17}, [r5]!
	vst1.32	{d18, d19}, [r5]
	add	r5, r11, r3, lsl #2
	add	r3, r10, r3, lsl #2
	vld1.32	{d16, d17}, [r5]!
	vclt.f32	q10, q8, #0
	vld1.32	{d18, d19}, [r5]
	vbic	q8, q8, q10
	vclt.f32	q10, q9, #0
	vbic	q9, q9, q10
	vst1.32	{d16, d17}, [r3]!
	vst1.32	{d18, d19}, [r3]
	eor	r3, r1, #112
	orrs	r3, r3, r2
	bne	LBB0_39
@ %bb.40:                               @ %cond13.preheader.10.i.preheader
	mov	r12, #520
	mov	r1, #0
	orr	r12, r12, #124928
	mov	r3, #0
LBB0_41:                                @ %cond13.preheader.10.i
                                        @ =>This Inner Loop Header: Depth=1
	rsb	r5, r1, r1, lsl #3
	adds	r1, r1, #1
	adc	r3, r3, #0
	add	r4, r0, r5, lsl #4
	add	r5, r12, r5, lsl #4
	add	r4, r4, #12544
	add	r2, r11, r4, lsl #2
	vld1.32	{d16, d17}, [r2]!
	vclt.f32	q10, q8, #0
	vld1.32	{d18, d19}, [r2]
	vbic	q8, q8, q10
	add	r2, r10, r4, lsl #2
	vclt.f32	q10, q9, #0
	vbic	q9, q9, q10
	vst1.32	{d16, d17}, [r2]!
	vst1.32	{d18, d19}, [r2]
	add	r2, r11, r5, lsl #2
	vld1.32	{d16, d17}, [r2]!
	vclt.f32	q10, q8, #0
	vld1.32	{d18, d19}, [r2]
	vbic	q8, q8, q10
	add	r2, r10, r5, lsl #2
	vclt.f32	q10, q9, #0
	vbic	q9, q9, q10
	vst1.32	{d16, d17}, [r2]!
	vst1.32	{d18, d19}, [r2]
	add	r2, r5, #8
	add	r4, r11, r2, lsl #2
	add	r2, r10, r2, lsl #2
	vld1.32	{d16, d17}, [r4]!
	vclt.f32	q10, q8, #0
	vld1.32	{d18, d19}, [r4]
	vbic	q8, q8, q10
	vclt.f32	q10, q9, #0
	vbic	q9, q9, q10
	vst1.32	{d16, d17}, [r2]!
	vst1.32	{d18, d19}, [r2]
	add	r2, r5, #16
	add	r4, r11, r2, lsl #2
	add	r2, r10, r2, lsl #2
	vld1.32	{d16, d17}, [r4]!
	vclt.f32	q10, q8, #0
	vld1.32	{d18, d19}, [r4]
	vbic	q8, q8, q10
	vclt.f32	q10, q9, #0
	vbic	q9, q9, q10
	vst1.32	{d16, d17}, [r2]!
	vst1.32	{d18, d19}, [r2]
	add	r2, r5, #24
	add	r4, r11, r2, lsl #2
	add	r2, r10, r2, lsl #2
	vld1.32	{d16, d17}, [r4]!
	vclt.f32	q10, q8, #0
	vld1.32	{d18, d19}, [r4]
	vbic	q8, q8, q10
	vclt.f32	q10, q9, #0
	vbic	q9, q9, q10
	vst1.32	{d16, d17}, [r2]!
	vst1.32	{d18, d19}, [r2]
	add	r2, r5, #32
	add	r4, r11, r2, lsl #2
	add	r2, r10, r2, lsl #2
	vld1.32	{d16, d17}, [r4]!
	vclt.f32	q10, q8, #0
	vld1.32	{d18, d19}, [r4]
	vbic	q8, q8, q10
	vclt.f32	q10, q9, #0
	vbic	q9, q9, q10
	vst1.32	{d16, d17}, [r2]!
	vst1.32	{d18, d19}, [r2]
	add	r2, r5, #40
	add	r4, r11, r2, lsl #2
	add	r2, r10, r2, lsl #2
	vld1.32	{d16, d17}, [r4]!
	vclt.f32	q10, q8, #0
	vld1.32	{d18, d19}, [r4]
	vbic	q8, q8, q10
	vclt.f32	q10, q9, #0
	vbic	q9, q9, q10
	vst1.32	{d16, d17}, [r2]!
	vst1.32	{d18, d19}, [r2]
	add	r2, r5, #48
	add	r4, r11, r2, lsl #2
	add	r2, r10, r2, lsl #2
	vld1.32	{d16, d17}, [r4]!
	vclt.f32	q10, q8, #0
	vld1.32	{d18, d19}, [r4]
	vbic	q8, q8, q10
	vclt.f32	q10, q9, #0
	vbic	q9, q9, q10
	vst1.32	{d16, d17}, [r2]!
	vst1.32	{d18, d19}, [r2]
	add	r2, r5, #56
	add	r4, r11, r2, lsl #2
	add	r2, r10, r2, lsl #2
	vld1.32	{d16, d17}, [r4]!
	vclt.f32	q10, q8, #0
	vld1.32	{d18, d19}, [r4]
	vbic	q8, q8, q10
	vclt.f32	q10, q9, #0
	vbic	q9, q9, q10
	vst1.32	{d16, d17}, [r2]!
	vst1.32	{d18, d19}, [r2]
	add	r2, r5, #64
	add	r4, r11, r2, lsl #2
	add	r2, r10, r2, lsl #2
	vld1.32	{d16, d17}, [r4]!
	vclt.f32	q10, q8, #0
	vld1.32	{d18, d19}, [r4]
	vbic	q8, q8, q10
	vclt.f32	q10, q9, #0
	vbic	q9, q9, q10
	vst1.32	{d16, d17}, [r2]!
	vst1.32	{d18, d19}, [r2]
	add	r2, r5, #72
	add	r4, r11, r2, lsl #2
	add	r2, r10, r2, lsl #2
	vld1.32	{d16, d17}, [r4]!
	vclt.f32	q10, q8, #0
	vld1.32	{d18, d19}, [r4]
	vbic	q8, q8, q10
	vclt.f32	q10, q9, #0
	vbic	q9, q9, q10
	vst1.32	{d16, d17}, [r2]!
	vst1.32	{d18, d19}, [r2]
	add	r2, r5, #80
	add	r4, r11, r2, lsl #2
	add	r2, r10, r2, lsl #2
	vld1.32	{d16, d17}, [r4]!
	vclt.f32	q10, q8, #0
	vld1.32	{d18, d19}, [r4]
	vbic	q8, q8, q10
	vclt.f32	q10, q9, #0
	vbic	q9, q9, q10
	vst1.32	{d16, d17}, [r2]!
	vst1.32	{d18, d19}, [r2]
	add	r2, r5, #88
	add	r4, r11, r2, lsl #2
	add	r2, r10, r2, lsl #2
	vld1.32	{d16, d17}, [r4]!
	vclt.f32	q10, q8, #0
	vld1.32	{d18, d19}, [r4]
	vbic	q8, q8, q10
	vclt.f32	q10, q9, #0
	vbic	q9, q9, q10
	vst1.32	{d16, d17}, [r2]!
	vst1.32	{d18, d19}, [r2]
	add	r2, r5, #96
	add	r5, r11, r2, lsl #2
	add	r2, r10, r2, lsl #2
	vld1.32	{d16, d17}, [r5]!
	vclt.f32	q10, q8, #0
	vld1.32	{d18, d19}, [r5]
	vbic	q8, q8, q10
	vclt.f32	q10, q9, #0
	vbic	q9, q9, q10
	vst1.32	{d16, d17}, [r2]!
	vst1.32	{d18, d19}, [r2]
	eor	r2, r1, #112
	orrs	r2, r2, r3
	bne	LBB0_41
@ %bb.42:                               @ %cond13.preheader.11.i.preheader
	mov	r1, #6912
	mov	r0, #0
	orr	r1, r1, #131072
	mov	r2, #0
LBB0_43:                                @ %cond13.preheader.11.i
                                        @ =>This Inner Loop Header: Depth=1
	rsb	r3, r0, r0, lsl #3
	adds	r0, r0, #1
	adc	r2, r2, #0
	add	r3, r1, r3, lsl #4
	add	r5, r11, r3, lsl #2
	vld1.32	{d16, d17}, [r5]!
	vclt.f32	q10, q8, #0
	vld1.32	{d18, d19}, [r5]
	vbic	q8, q8, q10
	add	r5, r10, r3, lsl #2
	vclt.f32	q10, q9, #0
	vbic	q9, q9, q10
	vst1.32	{d16, d17}, [r5]!
	vst1.32	{d18, d19}, [r5]
	add	r5, r3, #8
	add	r4, r11, r5, lsl #2
	add	r5, r10, r5, lsl #2
	vld1.32	{d16, d17}, [r4]!
	vclt.f32	q10, q8, #0
	vld1.32	{d18, d19}, [r4]
	vbic	q8, q8, q10
	vclt.f32	q10, q9, #0
	vbic	q9, q9, q10
	vst1.32	{d16, d17}, [r5]!
	vst1.32	{d18, d19}, [r5]
	add	r5, r3, #16
	add	r4, r11, r5, lsl #2
	add	r5, r10, r5, lsl #2
	vld1.32	{d16, d17}, [r4]!
	vclt.f32	q10, q8, #0
	vld1.32	{d18, d19}, [r4]
	vbic	q8, q8, q10
	vclt.f32	q10, q9, #0
	vbic	q9, q9, q10
	vst1.32	{d16, d17}, [r5]!
	vst1.32	{d18, d19}, [r5]
	add	r5, r3, #24
	add	r4, r11, r5, lsl #2
	add	r5, r10, r5, lsl #2
	vld1.32	{d16, d17}, [r4]!
	vclt.f32	q10, q8, #0
	vld1.32	{d18, d19}, [r4]
	vbic	q8, q8, q10
	vclt.f32	q10, q9, #0
	vbic	q9, q9, q10
	vst1.32	{d16, d17}, [r5]!
	vst1.32	{d18, d19}, [r5]
	add	r5, r3, #32
	add	r4, r11, r5, lsl #2
	add	r5, r10, r5, lsl #2
	vld1.32	{d16, d17}, [r4]!
	vclt.f32	q10, q8, #0
	vld1.32	{d18, d19}, [r4]
	vbic	q8, q8, q10
	vclt.f32	q10, q9, #0
	vbic	q9, q9, q10
	vst1.32	{d16, d17}, [r5]!
	vst1.32	{d18, d19}, [r5]
	add	r5, r3, #40
	add	r4, r11, r5, lsl #2
	add	r5, r10, r5, lsl #2
	vld1.32	{d16, d17}, [r4]!
	vclt.f32	q10, q8, #0
	vld1.32	{d18, d19}, [r4]
	vbic	q8, q8, q10
	vclt.f32	q10, q9, #0
	vbic	q9, q9, q10
	vst1.32	{d16, d17}, [r5]!
	vst1.32	{d18, d19}, [r5]
	add	r5, r3, #48
	add	r4, r11, r5, lsl #2
	add	r5, r10, r5, lsl #2
	vld1.32	{d16, d17}, [r4]!
	vclt.f32	q10, q8, #0
	vld1.32	{d18, d19}, [r4]
	vbic	q8, q8, q10
	vclt.f32	q10, q9, #0
	vbic	q9, q9, q10
	vst1.32	{d16, d17}, [r5]!
	vst1.32	{d18, d19}, [r5]
	add	r5, r3, #56
	add	r4, r11, r5, lsl #2
	add	r5, r10, r5, lsl #2
	vld1.32	{d16, d17}, [r4]!
	vclt.f32	q10, q8, #0
	vld1.32	{d18, d19}, [r4]
	vbic	q8, q8, q10
	vclt.f32	q10, q9, #0
	vbic	q9, q9, q10
	vst1.32	{d16, d17}, [r5]!
	vst1.32	{d18, d19}, [r5]
	add	r5, r3, #64
	add	r4, r11, r5, lsl #2
	add	r5, r10, r5, lsl #2
	vld1.32	{d16, d17}, [r4]!
	vclt.f32	q10, q8, #0
	vld1.32	{d18, d19}, [r4]
	vbic	q8, q8, q10
	vclt.f32	q10, q9, #0
	vbic	q9, q9, q10
	vst1.32	{d16, d17}, [r5]!
	vst1.32	{d18, d19}, [r5]
	add	r5, r3, #72
	add	r4, r11, r5, lsl #2
	add	r5, r10, r5, lsl #2
	vld1.32	{d16, d17}, [r4]!
	vclt.f32	q10, q8, #0
	vld1.32	{d18, d19}, [r4]
	vbic	q8, q8, q10
	vclt.f32	q10, q9, #0
	vbic	q9, q9, q10
	vst1.32	{d16, d17}, [r5]!
	vst1.32	{d18, d19}, [r5]
	add	r5, r3, #80
	add	r4, r11, r5, lsl #2
	add	r5, r10, r5, lsl #2
	vld1.32	{d16, d17}, [r4]!
	vclt.f32	q10, q8, #0
	vld1.32	{d18, d19}, [r4]
	vbic	q8, q8, q10
	vclt.f32	q10, q9, #0
	vbic	q9, q9, q10
	vst1.32	{d16, d17}, [r5]!
	vst1.32	{d18, d19}, [r5]
	add	r5, r3, #88
	add	r4, r11, r5, lsl #2
	add	r5, r10, r5, lsl #2
	vld1.32	{d16, d17}, [r4]!
	vclt.f32	q10, q8, #0
	vld1.32	{d18, d19}, [r4]
	vbic	q8, q8, q10
	vclt.f32	q10, q9, #0
	vbic	q9, q9, q10
	vst1.32	{d16, d17}, [r5]!
	vst1.32	{d18, d19}, [r5]
	add	r5, r3, #96
	add	r3, r3, #104
	add	r4, r11, r5, lsl #2
	add	r5, r10, r5, lsl #2
	vld1.32	{d16, d17}, [r4]!
	vclt.f32	q10, q8, #0
	vld1.32	{d18, d19}, [r4]
	vbic	q8, q8, q10
	vclt.f32	q10, q9, #0
	vbic	q9, q9, q10
	vst1.32	{d16, d17}, [r5]!
	vst1.32	{d18, d19}, [r5]
	add	r5, r11, r3, lsl #2
	add	r3, r10, r3, lsl #2
	vld1.32	{d16, d17}, [r5]!
	vclt.f32	q10, q8, #0
	vld1.32	{d18, d19}, [r5]
	vbic	q8, q8, q10
	vclt.f32	q10, q9, #0
	vbic	q9, q9, q10
	vst1.32	{d16, d17}, [r3]!
	vst1.32	{d18, d19}, [r3]
	eor	r3, r0, #112
	orrs	r3, r3, r2
	bne	LBB0_43
@ %bb.44:                               @ %cond13.preheader.12.i.preheader
	mov	r12, #8
	mov	r0, #0
	orr	r12, r12, #150528
	mov	r2, #150528
	mov	r3, #0
LBB0_45:                                @ %cond13.preheader.12.i
                                        @ =>This Inner Loop Header: Depth=1
	rsb	r5, r0, r0, lsl #3
	adds	r0, r0, #1
	adc	r3, r3, #0
	add	r4, r2, r5, lsl #4
	add	r5, r12, r5, lsl #4
	add	r1, r11, r4, lsl #2
	vld1.32	{d16, d17}, [r1]!
	vclt.f32	q10, q8, #0
	vld1.32	{d18, d19}, [r1]
	vbic	q8, q8, q10
	add	r1, r10, r4, lsl #2
	vclt.f32	q10, q9, #0
	vbic	q9, q9, q10
	vst1.32	{d16, d17}, [r1]!
	vst1.32	{d18, d19}, [r1]
	add	r1, r11, r5, lsl #2
	vld1.32	{d16, d17}, [r1]!
	vclt.f32	q10, q8, #0
	vld1.32	{d18, d19}, [r1]
	vbic	q8, q8, q10
	add	r1, r10, r5, lsl #2
	vclt.f32	q10, q9, #0
	vbic	q9, q9, q10
	vst1.32	{d16, d17}, [r1]!
	vst1.32	{d18, d19}, [r1]
	add	r1, r5, #8
	add	r4, r11, r1, lsl #2
	add	r1, r10, r1, lsl #2
	vld1.32	{d16, d17}, [r4]!
	vclt.f32	q10, q8, #0
	vld1.32	{d18, d19}, [r4]
	vbic	q8, q8, q10
	vclt.f32	q10, q9, #0
	vbic	q9, q9, q10
	vst1.32	{d16, d17}, [r1]!
	vst1.32	{d18, d19}, [r1]
	add	r1, r5, #16
	add	r4, r11, r1, lsl #2
	add	r1, r10, r1, lsl #2
	vld1.32	{d16, d17}, [r4]!
	vclt.f32	q10, q8, #0
	vld1.32	{d18, d19}, [r4]
	vbic	q8, q8, q10
	vclt.f32	q10, q9, #0
	vbic	q9, q9, q10
	vst1.32	{d16, d17}, [r1]!
	vst1.32	{d18, d19}, [r1]
	add	r1, r5, #24
	add	r4, r11, r1, lsl #2
	add	r1, r10, r1, lsl #2
	vld1.32	{d16, d17}, [r4]!
	vclt.f32	q10, q8, #0
	vld1.32	{d18, d19}, [r4]
	vbic	q8, q8, q10
	vclt.f32	q10, q9, #0
	vbic	q9, q9, q10
	vst1.32	{d16, d17}, [r1]!
	vst1.32	{d18, d19}, [r1]
	add	r1, r5, #32
	add	r4, r11, r1, lsl #2
	add	r1, r10, r1, lsl #2
	vld1.32	{d16, d17}, [r4]!
	vclt.f32	q10, q8, #0
	vld1.32	{d18, d19}, [r4]
	vbic	q8, q8, q10
	vclt.f32	q10, q9, #0
	vbic	q9, q9, q10
	vst1.32	{d16, d17}, [r1]!
	vst1.32	{d18, d19}, [r1]
	add	r1, r5, #40
	add	r4, r11, r1, lsl #2
	add	r1, r10, r1, lsl #2
	vld1.32	{d16, d17}, [r4]!
	vclt.f32	q10, q8, #0
	vld1.32	{d18, d19}, [r4]
	vbic	q8, q8, q10
	vclt.f32	q10, q9, #0
	vbic	q9, q9, q10
	vst1.32	{d16, d17}, [r1]!
	vst1.32	{d18, d19}, [r1]
	add	r1, r5, #48
	add	r4, r11, r1, lsl #2
	add	r1, r10, r1, lsl #2
	vld1.32	{d16, d17}, [r4]!
	vclt.f32	q10, q8, #0
	vld1.32	{d18, d19}, [r4]
	vbic	q8, q8, q10
	vclt.f32	q10, q9, #0
	vbic	q9, q9, q10
	vst1.32	{d16, d17}, [r1]!
	vst1.32	{d18, d19}, [r1]
	add	r1, r5, #56
	add	r4, r11, r1, lsl #2
	add	r1, r10, r1, lsl #2
	vld1.32	{d16, d17}, [r4]!
	vclt.f32	q10, q8, #0
	vld1.32	{d18, d19}, [r4]
	vbic	q8, q8, q10
	vclt.f32	q10, q9, #0
	vbic	q9, q9, q10
	vst1.32	{d16, d17}, [r1]!
	vst1.32	{d18, d19}, [r1]
	add	r1, r5, #64
	add	r4, r11, r1, lsl #2
	add	r1, r10, r1, lsl #2
	vld1.32	{d16, d17}, [r4]!
	vclt.f32	q10, q8, #0
	vld1.32	{d18, d19}, [r4]
	vbic	q8, q8, q10
	vclt.f32	q10, q9, #0
	vbic	q9, q9, q10
	vst1.32	{d16, d17}, [r1]!
	vst1.32	{d18, d19}, [r1]
	add	r1, r5, #72
	add	r4, r11, r1, lsl #2
	add	r1, r10, r1, lsl #2
	vld1.32	{d16, d17}, [r4]!
	vclt.f32	q10, q8, #0
	vld1.32	{d18, d19}, [r4]
	vbic	q8, q8, q10
	vclt.f32	q10, q9, #0
	vbic	q9, q9, q10
	vst1.32	{d16, d17}, [r1]!
	vst1.32	{d18, d19}, [r1]
	add	r1, r5, #80
	add	r4, r11, r1, lsl #2
	add	r1, r10, r1, lsl #2
	vld1.32	{d16, d17}, [r4]!
	vclt.f32	q10, q8, #0
	vld1.32	{d18, d19}, [r4]
	vbic	q8, q8, q10
	vclt.f32	q10, q9, #0
	vbic	q9, q9, q10
	vst1.32	{d16, d17}, [r1]!
	vst1.32	{d18, d19}, [r1]
	add	r1, r5, #88
	add	r4, r11, r1, lsl #2
	add	r1, r10, r1, lsl #2
	vld1.32	{d16, d17}, [r4]!
	vclt.f32	q10, q8, #0
	vld1.32	{d18, d19}, [r4]
	vbic	q8, q8, q10
	vclt.f32	q10, q9, #0
	vbic	q9, q9, q10
	vst1.32	{d16, d17}, [r1]!
	vst1.32	{d18, d19}, [r1]
	add	r1, r5, #96
	add	r5, r11, r1, lsl #2
	add	r1, r10, r1, lsl #2
	vld1.32	{d16, d17}, [r5]!
	vclt.f32	q10, q8, #0
	vld1.32	{d18, d19}, [r5]
	vbic	q8, q8, q10
	vclt.f32	q10, q9, #0
	vbic	q9, q9, q10
	vst1.32	{d16, d17}, [r1]!
	vst1.32	{d18, d19}, [r1]
	eor	r1, r0, #112
	orrs	r1, r1, r3
	bne	LBB0_45
@ %bb.46:                               @ %cond13.preheader.13.i.preheader
	mov	r0, #32000
	mov	r1, #0
	orr	r0, r0, #131072
	mov	r2, #0
LBB0_47:                                @ %cond13.preheader.13.i
                                        @ =>This Inner Loop Header: Depth=1
	rsb	r3, r1, r1, lsl #3
	adds	r1, r1, #1
	adc	r2, r2, #0
	add	r3, r0, r3, lsl #4
	add	r5, r11, r3, lsl #2
	vld1.32	{d16, d17}, [r5]!
	vclt.f32	q10, q8, #0
	vld1.32	{d18, d19}, [r5]
	vbic	q8, q8, q10
	add	r5, r10, r3, lsl #2
	vclt.f32	q10, q9, #0
	vbic	q9, q9, q10
	vst1.32	{d16, d17}, [r5]!
	vst1.32	{d18, d19}, [r5]
	add	r5, r3, #8
	add	r4, r11, r5, lsl #2
	add	r5, r10, r5, lsl #2
	vld1.32	{d16, d17}, [r4]!
	vclt.f32	q10, q8, #0
	vld1.32	{d18, d19}, [r4]
	vbic	q8, q8, q10
	vclt.f32	q10, q9, #0
	vbic	q9, q9, q10
	vst1.32	{d16, d17}, [r5]!
	vst1.32	{d18, d19}, [r5]
	add	r5, r3, #16
	add	r4, r11, r5, lsl #2
	add	r5, r10, r5, lsl #2
	vld1.32	{d16, d17}, [r4]!
	vclt.f32	q10, q8, #0
	vld1.32	{d18, d19}, [r4]
	vbic	q8, q8, q10
	vclt.f32	q10, q9, #0
	vbic	q9, q9, q10
	vst1.32	{d16, d17}, [r5]!
	vst1.32	{d18, d19}, [r5]
	add	r5, r3, #24
	add	r4, r11, r5, lsl #2
	add	r5, r10, r5, lsl #2
	vld1.32	{d16, d17}, [r4]!
	vclt.f32	q10, q8, #0
	vld1.32	{d18, d19}, [r4]
	vbic	q8, q8, q10
	vclt.f32	q10, q9, #0
	vbic	q9, q9, q10
	vst1.32	{d16, d17}, [r5]!
	vst1.32	{d18, d19}, [r5]
	add	r5, r3, #32
	add	r4, r11, r5, lsl #2
	add	r5, r10, r5, lsl #2
	vld1.32	{d16, d17}, [r4]!
	vclt.f32	q10, q8, #0
	vld1.32	{d18, d19}, [r4]
	vbic	q8, q8, q10
	vclt.f32	q10, q9, #0
	vbic	q9, q9, q10
	vst1.32	{d16, d17}, [r5]!
	vst1.32	{d18, d19}, [r5]
	add	r5, r3, #40
	add	r4, r11, r5, lsl #2
	add	r5, r10, r5, lsl #2
	vld1.32	{d16, d17}, [r4]!
	vclt.f32	q10, q8, #0
	vld1.32	{d18, d19}, [r4]
	vbic	q8, q8, q10
	vclt.f32	q10, q9, #0
	vbic	q9, q9, q10
	vst1.32	{d16, d17}, [r5]!
	vst1.32	{d18, d19}, [r5]
	add	r5, r3, #48
	add	r4, r11, r5, lsl #2
	add	r5, r10, r5, lsl #2
	vld1.32	{d16, d17}, [r4]!
	vclt.f32	q10, q8, #0
	vld1.32	{d18, d19}, [r4]
	vbic	q8, q8, q10
	vclt.f32	q10, q9, #0
	vbic	q9, q9, q10
	vst1.32	{d16, d17}, [r5]!
	vst1.32	{d18, d19}, [r5]
	add	r5, r3, #56
	add	r4, r11, r5, lsl #2
	add	r5, r10, r5, lsl #2
	vld1.32	{d16, d17}, [r4]!
	vclt.f32	q10, q8, #0
	vld1.32	{d18, d19}, [r4]
	vbic	q8, q8, q10
	vclt.f32	q10, q9, #0
	vbic	q9, q9, q10
	vst1.32	{d16, d17}, [r5]!
	vst1.32	{d18, d19}, [r5]
	add	r5, r3, #64
	add	r4, r11, r5, lsl #2
	add	r5, r10, r5, lsl #2
	vld1.32	{d16, d17}, [r4]!
	vclt.f32	q10, q8, #0
	vld1.32	{d18, d19}, [r4]
	vbic	q8, q8, q10
	vclt.f32	q10, q9, #0
	vbic	q9, q9, q10
	vst1.32	{d16, d17}, [r5]!
	vst1.32	{d18, d19}, [r5]
	add	r5, r3, #72
	add	r4, r11, r5, lsl #2
	add	r5, r10, r5, lsl #2
	vld1.32	{d16, d17}, [r4]!
	vclt.f32	q10, q8, #0
	vld1.32	{d18, d19}, [r4]
	vbic	q8, q8, q10
	vclt.f32	q10, q9, #0
	vbic	q9, q9, q10
	vst1.32	{d16, d17}, [r5]!
	vst1.32	{d18, d19}, [r5]
	add	r5, r3, #80
	add	r4, r11, r5, lsl #2
	add	r5, r10, r5, lsl #2
	vld1.32	{d16, d17}, [r4]!
	vclt.f32	q10, q8, #0
	vld1.32	{d18, d19}, [r4]
	vbic	q8, q8, q10
	vclt.f32	q10, q9, #0
	vbic	q9, q9, q10
	vst1.32	{d16, d17}, [r5]!
	vst1.32	{d18, d19}, [r5]
	add	r5, r3, #88
	add	r4, r11, r5, lsl #2
	add	r5, r10, r5, lsl #2
	vld1.32	{d16, d17}, [r4]!
	vclt.f32	q10, q8, #0
	vld1.32	{d18, d19}, [r4]
	vbic	q8, q8, q10
	vclt.f32	q10, q9, #0
	vbic	q9, q9, q10
	vst1.32	{d16, d17}, [r5]!
	vst1.32	{d18, d19}, [r5]
	add	r5, r3, #96
	add	r3, r3, #104
	add	r4, r11, r5, lsl #2
	add	r5, r10, r5, lsl #2
	vld1.32	{d16, d17}, [r4]!
	vclt.f32	q10, q8, #0
	vld1.32	{d18, d19}, [r4]
	vbic	q8, q8, q10
	vclt.f32	q10, q9, #0
	vbic	q9, q9, q10
	vst1.32	{d16, d17}, [r5]!
	vst1.32	{d18, d19}, [r5]
	add	r5, r11, r3, lsl #2
	add	r3, r10, r3, lsl #2
	vld1.32	{d16, d17}, [r5]!
	vclt.f32	q10, q8, #0
	vld1.32	{d18, d19}, [r5]
	vbic	q8, q8, q10
	vclt.f32	q10, q9, #0
	vbic	q9, q9, q10
	vst1.32	{d16, d17}, [r3]!
	vst1.32	{d18, d19}, [r3]
	eor	r3, r1, #112
	orrs	r3, r3, r2
	bne	LBB0_47
@ %bb.48:                               @ %cond13.preheader.14.i.preheader
	mov	r12, #520
	mov	r1, #0
	orr	r12, r12, #175104
	mov	r3, #0
LBB0_49:                                @ %cond13.preheader.14.i
                                        @ =>This Inner Loop Header: Depth=1
	rsb	r5, r1, r1, lsl #3
	adds	r1, r1, #1
	adc	r3, r3, #0
	add	r4, r0, r5, lsl #4
	add	r5, r12, r5, lsl #4
	add	r4, r4, #12544
	add	r2, r11, r4, lsl #2
	vld1.32	{d16, d17}, [r2]!
	vclt.f32	q10, q8, #0
	vld1.32	{d18, d19}, [r2]
	vbic	q8, q8, q10
	add	r2, r10, r4, lsl #2
	vclt.f32	q10, q9, #0
	vbic	q9, q9, q10
	vst1.32	{d16, d17}, [r2]!
	vst1.32	{d18, d19}, [r2]
	add	r2, r11, r5, lsl #2
	vld1.32	{d16, d17}, [r2]!
	vclt.f32	q10, q8, #0
	vld1.32	{d18, d19}, [r2]
	vbic	q8, q8, q10
	add	r2, r10, r5, lsl #2
	vclt.f32	q10, q9, #0
	vbic	q9, q9, q10
	vst1.32	{d16, d17}, [r2]!
	vst1.32	{d18, d19}, [r2]
	add	r2, r5, #8
	add	r4, r11, r2, lsl #2
	add	r2, r10, r2, lsl #2
	vld1.32	{d16, d17}, [r4]!
	vclt.f32	q10, q8, #0
	vld1.32	{d18, d19}, [r4]
	vbic	q8, q8, q10
	vclt.f32	q10, q9, #0
	vbic	q9, q9, q10
	vst1.32	{d16, d17}, [r2]!
	vst1.32	{d18, d19}, [r2]
	add	r2, r5, #16
	add	r4, r11, r2, lsl #2
	add	r2, r10, r2, lsl #2
	vld1.32	{d16, d17}, [r4]!
	vclt.f32	q10, q8, #0
	vld1.32	{d18, d19}, [r4]
	vbic	q8, q8, q10
	vclt.f32	q10, q9, #0
	vbic	q9, q9, q10
	vst1.32	{d16, d17}, [r2]!
	vst1.32	{d18, d19}, [r2]
	add	r2, r5, #24
	add	r4, r11, r2, lsl #2
	add	r2, r10, r2, lsl #2
	vld1.32	{d16, d17}, [r4]!
	vclt.f32	q10, q8, #0
	vld1.32	{d18, d19}, [r4]
	vbic	q8, q8, q10
	vclt.f32	q10, q9, #0
	vbic	q9, q9, q10
	vst1.32	{d16, d17}, [r2]!
	vst1.32	{d18, d19}, [r2]
	add	r2, r5, #32
	add	r4, r11, r2, lsl #2
	add	r2, r10, r2, lsl #2
	vld1.32	{d16, d17}, [r4]!
	vclt.f32	q10, q8, #0
	vld1.32	{d18, d19}, [r4]
	vbic	q8, q8, q10
	vclt.f32	q10, q9, #0
	vbic	q9, q9, q10
	vst1.32	{d16, d17}, [r2]!
	vst1.32	{d18, d19}, [r2]
	add	r2, r5, #40
	add	r4, r11, r2, lsl #2
	add	r2, r10, r2, lsl #2
	vld1.32	{d16, d17}, [r4]!
	vclt.f32	q10, q8, #0
	vld1.32	{d18, d19}, [r4]
	vbic	q8, q8, q10
	vclt.f32	q10, q9, #0
	vbic	q9, q9, q10
	vst1.32	{d16, d17}, [r2]!
	vst1.32	{d18, d19}, [r2]
	add	r2, r5, #48
	add	r4, r11, r2, lsl #2
	add	r2, r10, r2, lsl #2
	vld1.32	{d16, d17}, [r4]!
	vclt.f32	q10, q8, #0
	vld1.32	{d18, d19}, [r4]
	vbic	q8, q8, q10
	vclt.f32	q10, q9, #0
	vbic	q9, q9, q10
	vst1.32	{d16, d17}, [r2]!
	vst1.32	{d18, d19}, [r2]
	add	r2, r5, #56
	add	r4, r11, r2, lsl #2
	add	r2, r10, r2, lsl #2
	vld1.32	{d16, d17}, [r4]!
	vclt.f32	q10, q8, #0
	vld1.32	{d18, d19}, [r4]
	vbic	q8, q8, q10
	vclt.f32	q10, q9, #0
	vbic	q9, q9, q10
	vst1.32	{d16, d17}, [r2]!
	vst1.32	{d18, d19}, [r2]
	add	r2, r5, #64
	add	r4, r11, r2, lsl #2
	add	r2, r10, r2, lsl #2
	vld1.32	{d16, d17}, [r4]!
	vclt.f32	q10, q8, #0
	vld1.32	{d18, d19}, [r4]
	vbic	q8, q8, q10
	vclt.f32	q10, q9, #0
	vbic	q9, q9, q10
	vst1.32	{d16, d17}, [r2]!
	vst1.32	{d18, d19}, [r2]
	add	r2, r5, #72
	add	r4, r11, r2, lsl #2
	add	r2, r10, r2, lsl #2
	vld1.32	{d16, d17}, [r4]!
	vclt.f32	q10, q8, #0
	vld1.32	{d18, d19}, [r4]
	vbic	q8, q8, q10
	vclt.f32	q10, q9, #0
	vbic	q9, q9, q10
	vst1.32	{d16, d17}, [r2]!
	vst1.32	{d18, d19}, [r2]
	add	r2, r5, #80
	add	r4, r11, r2, lsl #2
	add	r2, r10, r2, lsl #2
	vld1.32	{d16, d17}, [r4]!
	vclt.f32	q10, q8, #0
	vld1.32	{d18, d19}, [r4]
	vbic	q8, q8, q10
	vclt.f32	q10, q9, #0
	vbic	q9, q9, q10
	vst1.32	{d16, d17}, [r2]!
	vst1.32	{d18, d19}, [r2]
	add	r2, r5, #88
	add	r4, r11, r2, lsl #2
	add	r2, r10, r2, lsl #2
	vld1.32	{d16, d17}, [r4]!
	vclt.f32	q10, q8, #0
	vld1.32	{d18, d19}, [r4]
	vbic	q8, q8, q10
	vclt.f32	q10, q9, #0
	vbic	q9, q9, q10
	vst1.32	{d16, d17}, [r2]!
	vst1.32	{d18, d19}, [r2]
	add	r2, r5, #96
	add	r5, r11, r2, lsl #2
	add	r2, r10, r2, lsl #2
	vld1.32	{d16, d17}, [r5]!
	vclt.f32	q10, q8, #0
	vld1.32	{d18, d19}, [r5]
	vbic	q8, q8, q10
	vclt.f32	q10, q9, #0
	vbic	q9, q9, q10
	vst1.32	{d16, d17}, [r2]!
	vst1.32	{d18, d19}, [r2]
	eor	r2, r1, #112
	orrs	r2, r2, r3
	bne	LBB0_49
@ %bb.50:                               @ %cond13.preheader.15.i.preheader
	mov	r1, #57088
	mov	r0, #0
	orr	r1, r1, #131072
	mov	r2, #0
LBB0_51:                                @ %cond13.preheader.15.i
                                        @ =>This Inner Loop Header: Depth=1
	rsb	r3, r0, r0, lsl #3
	adds	r0, r0, #1
	adc	r2, r2, #0
	add	r3, r1, r3, lsl #4
	add	r5, r11, r3, lsl #2
	vld1.32	{d16, d17}, [r5]!
	vclt.f32	q10, q8, #0
	vld1.32	{d18, d19}, [r5]
	vbic	q8, q8, q10
	add	r5, r10, r3, lsl #2
	vclt.f32	q10, q9, #0
	vbic	q9, q9, q10
	vst1.32	{d16, d17}, [r5]!
	vst1.32	{d18, d19}, [r5]
	add	r5, r3, #8
	add	r4, r11, r5, lsl #2
	add	r5, r10, r5, lsl #2
	vld1.32	{d16, d17}, [r4]!
	vclt.f32	q10, q8, #0
	vld1.32	{d18, d19}, [r4]
	vbic	q8, q8, q10
	vclt.f32	q10, q9, #0
	vbic	q9, q9, q10
	vst1.32	{d16, d17}, [r5]!
	vst1.32	{d18, d19}, [r5]
	add	r5, r3, #16
	add	r4, r11, r5, lsl #2
	add	r5, r10, r5, lsl #2
	vld1.32	{d16, d17}, [r4]!
	vclt.f32	q10, q8, #0
	vld1.32	{d18, d19}, [r4]
	vbic	q8, q8, q10
	vclt.f32	q10, q9, #0
	vbic	q9, q9, q10
	vst1.32	{d16, d17}, [r5]!
	vst1.32	{d18, d19}, [r5]
	add	r5, r3, #24
	add	r4, r11, r5, lsl #2
	add	r5, r10, r5, lsl #2
	vld1.32	{d16, d17}, [r4]!
	vclt.f32	q10, q8, #0
	vld1.32	{d18, d19}, [r4]
	vbic	q8, q8, q10
	vclt.f32	q10, q9, #0
	vbic	q9, q9, q10
	vst1.32	{d16, d17}, [r5]!
	vst1.32	{d18, d19}, [r5]
	add	r5, r3, #32
	add	r4, r11, r5, lsl #2
	add	r5, r10, r5, lsl #2
	vld1.32	{d16, d17}, [r4]!
	vclt.f32	q10, q8, #0
	vld1.32	{d18, d19}, [r4]
	vbic	q8, q8, q10
	vclt.f32	q10, q9, #0
	vbic	q9, q9, q10
	vst1.32	{d16, d17}, [r5]!
	vst1.32	{d18, d19}, [r5]
	add	r5, r3, #40
	add	r4, r11, r5, lsl #2
	add	r5, r10, r5, lsl #2
	vld1.32	{d16, d17}, [r4]!
	vclt.f32	q10, q8, #0
	vld1.32	{d18, d19}, [r4]
	vbic	q8, q8, q10
	vclt.f32	q10, q9, #0
	vbic	q9, q9, q10
	vst1.32	{d16, d17}, [r5]!
	vst1.32	{d18, d19}, [r5]
	add	r5, r3, #48
	add	r4, r11, r5, lsl #2
	add	r5, r10, r5, lsl #2
	vld1.32	{d16, d17}, [r4]!
	vclt.f32	q10, q8, #0
	vld1.32	{d18, d19}, [r4]
	vbic	q8, q8, q10
	vclt.f32	q10, q9, #0
	vbic	q9, q9, q10
	vst1.32	{d16, d17}, [r5]!
	vst1.32	{d18, d19}, [r5]
	add	r5, r3, #56
	add	r4, r11, r5, lsl #2
	add	r5, r10, r5, lsl #2
	vld1.32	{d16, d17}, [r4]!
	vclt.f32	q10, q8, #0
	vld1.32	{d18, d19}, [r4]
	vbic	q8, q8, q10
	vclt.f32	q10, q9, #0
	vbic	q9, q9, q10
	vst1.32	{d16, d17}, [r5]!
	vst1.32	{d18, d19}, [r5]
	add	r5, r3, #64
	add	r4, r11, r5, lsl #2
	add	r5, r10, r5, lsl #2
	vld1.32	{d16, d17}, [r4]!
	vclt.f32	q10, q8, #0
	vld1.32	{d18, d19}, [r4]
	vbic	q8, q8, q10
	vclt.f32	q10, q9, #0
	vbic	q9, q9, q10
	vst1.32	{d16, d17}, [r5]!
	vst1.32	{d18, d19}, [r5]
	add	r5, r3, #72
	add	r4, r11, r5, lsl #2
	add	r5, r10, r5, lsl #2
	vld1.32	{d16, d17}, [r4]!
	vclt.f32	q10, q8, #0
	vld1.32	{d18, d19}, [r4]
	vbic	q8, q8, q10
	vclt.f32	q10, q9, #0
	vbic	q9, q9, q10
	vst1.32	{d16, d17}, [r5]!
	vst1.32	{d18, d19}, [r5]
	add	r5, r3, #80
	add	r4, r11, r5, lsl #2
	add	r5, r10, r5, lsl #2
	vld1.32	{d16, d17}, [r4]!
	vclt.f32	q10, q8, #0
	vld1.32	{d18, d19}, [r4]
	vbic	q8, q8, q10
	vclt.f32	q10, q9, #0
	vbic	q9, q9, q10
	vst1.32	{d16, d17}, [r5]!
	vst1.32	{d18, d19}, [r5]
	add	r5, r3, #88
	add	r4, r11, r5, lsl #2
	add	r5, r10, r5, lsl #2
	vld1.32	{d16, d17}, [r4]!
	vclt.f32	q10, q8, #0
	vld1.32	{d18, d19}, [r4]
	vbic	q8, q8, q10
	vclt.f32	q10, q9, #0
	vbic	q9, q9, q10
	vst1.32	{d16, d17}, [r5]!
	vst1.32	{d18, d19}, [r5]
	add	r5, r3, #96
	add	r3, r3, #104
	add	r4, r11, r5, lsl #2
	add	r5, r10, r5, lsl #2
	vld1.32	{d16, d17}, [r4]!
	vclt.f32	q10, q8, #0
	vld1.32	{d18, d19}, [r4]
	vbic	q8, q8, q10
	vclt.f32	q10, q9, #0
	vbic	q9, q9, q10
	vst1.32	{d16, d17}, [r5]!
	vst1.32	{d18, d19}, [r5]
	add	r5, r11, r3, lsl #2
	add	r3, r10, r3, lsl #2
	vld1.32	{d16, d17}, [r5]!
	vclt.f32	q10, q8, #0
	vld1.32	{d18, d19}, [r5]
	vbic	q8, q8, q10
	vclt.f32	q10, q9, #0
	vbic	q9, q9, q10
	vst1.32	{d16, d17}, [r3]!
	vst1.32	{d18, d19}, [r3]
	eor	r3, r0, #112
	orrs	r3, r3, r2
	bne	LBB0_51
@ %bb.52:                               @ %exit12.15.i
	adr	r0, LCPI0_91
	add	lr, r6, #1408
	vld1.64	{d16, d17}, [r0:128]
	sub	r0, sp, #16
	bic	r2, r0, #7
	vst1.64	{d16, d17}, [lr:128]    @ 16-byte Spill
	mov	sp, r2
	sub	r0, sp, #32
	bic	r3, r0, #31
	mov	sp, r3
	sub	r0, sp, #104
	bic	r0, r0, #7
	mov	sp, r0
	mov	r4, sp
	sub	r12, r4, #4
	mov	sp, r12
	sub	r5, sp, #56
	bic	lr, r5, #7
	mov	sp, lr
	mov	r1, #6
	ldr	r11, [r6, #60]          @ 4-byte Reload
	strb	r1, [r4, #-4]
	add	r1, r0, #16
	str	r11, [r2]
	mov	r5, #48
	vst1.64	{d16, d17}, [r1]
	adr	r1, LCPI0_92
	vld1.64	{d12, d13}, [r1:128]
	mov	r1, r0
	str	r10, [r2, #4]
	add	r10, r6, #32
	vst1.32	{d12, d13}, [r1], r5
	adr	r5, LCPI0_93
	vld1.64	{d16, d17}, [r5:128]
	mov	r5, #6
	vst1.64	{d16, d17}, [r1]
	add	r1, r0, #32
	strb	r5, [r4, #-3]
	vst1.64	{d12, d13}, [r1]
	adr	r1, LCPI0_94
	vld1.64	{d16, d17}, [r1:128]
	add	r1, r0, #80
	strb	r5, [r4, #-2]
	vst1.64	{d16, d17}, [r1]
	adr	r1, LCPI0_95
	vld1.64	{d16, d17}, [r1:128]
	add	r1, r0, #64
	vst1.64	{d16, d17}, [r1]
	add	r1, r2, #8
	vld1.64	{d16, d17}, [r10:128]   @ 16-byte Reload
	mov	r10, #0
	strb	r5, [r4, #-1]
	add	r4, lr, #32
	vst1.64	{d16, d17}, [r1]
	adr	r1, LCPI0_96
	mov	r5, #6
	vld1.64	{d16, d17}, [r1:128]
	adr	r1, LCPI0_97
	vld1.64	{d14, d15}, [r1:128]
	mov	r1, r3
	vst1.32	{d14, d15}, [r1]!
	vst1.64	{d16, d17}, [r1]
	adr	r1, LCPI0_98
	vld1.64	{d10, d11}, [r1:128]
	mov	r1, #16
	vst1.64	{d10, d11}, [r4]
	str	r1, [r0, #96]
	str	r10, [r0, #100]
	str	r1, [lr, #48]
	adr	r1, LCPI0_99
	vld1.64	{d16, d17}, [r1:128]
	mov	r1, lr
	vst1.32	{d16, d17}, [r1]!
	vst1.64	{d10, d11}, [r1]
	str	r10, [lr, #52]
	sub	sp, sp, #20
	stm	sp, {r0, r12}
	mov	r1, #7
	add	r0, sp, #8
	stm	r0, {r1, r10, lr}
	mov	r0, #4
	mov	r1, #0
	bl	_nnc_aten_conv2d
	add	sp, sp, #20
	sub	r0, sp, #8
	bic	r2, r0, #7
	mov	sp, r2
	sub	r0, sp, #16
	bic	r0, r0, #15
	str	r0, [r6, #1328]         @ 4-byte Spill
	mov	sp, r0
	sub	r0, sp, #64
	bic	r1, r0, #7
	mov	sp, r1
	mov	lr, sp
	sub	r3, lr, #4
	mov	sp, r3
	sub	r4, sp, #16
	bic	r4, r4, #15
	mov	sp, r4
	strb	r5, [lr, #-4]
	add	r5, r1, #16
	mov	r12, #6
	mov	r0, r1
	strb	r12, [lr, #-3]
	add	lr, r6, #1408
	vst1.64	{d10, d11}, [r5]
	mov	r5, #48
	vst1.32	{d12, d13}, [r0], r5
	vld1.64	{d16, d17}, [lr:128]    @ 16-byte Reload
	ldr	r12, [r6, #1328]        @ 4-byte Reload
	ldr	r5, [r6, #52]           @ 4-byte Reload
	vst1.64	{d16, d17}, [r0]
	add	r0, r1, #32
	stm	r2, {r5, r11}
	vst1.64	{d14, d15}, [r12:128]
	vst1.64	{d12, d13}, [r0]
	vst1.64	{d10, d11}, [r4:128]
	sub	sp, sp, #20
	mov	r0, #2
	stm	sp, {r1, r3}
	mov	r1, #0
	str	r0, [sp, #8]
	mov	r0, #2
	mov	r3, r12
	str	r10, [sp, #12]
	str	r4, [sp, #16]
	bl	_nnc_aten_adaptive_avg_pool2d
	add	sp, sp, #20
	mov	r1, #60
	mov	r0, r5
	vld1.32	{d18[], d19[]}, [r0:32], r1
	ldr	r1, [r6, #1060]         @ 4-byte Reload
	vmov.i32	q0, #0x0
	mov	r2, #224
	vmov.i32	q12, #0x0
	mov	r12, #3136
	vld1.32	{d20, d21}, [r1]
	add	r1, r5, #4
	vmov.i32	q8, #0x0
	mov	lr, #0
	vmla.f32	q0, q9, q10
	ldr	r3, [r6, #28]           @ 4-byte Reload
	vld1.32	{d18[], d19[]}, [r1:32]
	vldr	s18, LCPI0_100
	vmov.f32	s28, #3.000000e+00
	mov	r1, r3
	vmov.f32	s30, #1.000000e+00
	vld1.32	{d20, d21}, [r1], r2
	add	r2, r5, #8
	vmla.f32	q0, q9, q10
	vld1.32	{d18[], d19[]}, [r2:32]
	add	r2, r3, #16
	vld1.32	{d20, d21}, [r2]
	add	r2, r5, #12
	vmla.f32	q0, q9, q10
	vld1.32	{d18[], d19[]}, [r2:32]
	add	r2, r3, #32
	vld1.32	{d20, d21}, [r2]
	add	r2, r5, #16
	vmla.f32	q0, q9, q10
	vld1.32	{d18[], d19[]}, [r2:32]
	add	r2, r3, #48
	vld1.32	{d20, d21}, [r2]
	add	r2, r5, #20
	vmla.f32	q0, q9, q10
	vld1.32	{d18[], d19[]}, [r2:32]
	add	r2, r3, #64
	vld1.32	{d20, d21}, [r2]
	add	r2, r5, #24
	vmla.f32	q0, q9, q10
	vld1.32	{d18[], d19[]}, [r2:32]
	add	r2, r3, #80
	vld1.32	{d20, d21}, [r2]
	add	r2, r5, #28
	vmla.f32	q0, q9, q10
	vld1.32	{d18[], d19[]}, [r2:32]
	add	r2, r3, #96
	vld1.32	{d20, d21}, [r2]
	add	r2, r5, #32
	vmla.f32	q0, q9, q10
	vld1.32	{d18[], d19[]}, [r2:32]
	add	r2, r3, #112
	vld1.32	{d20, d21}, [r2]
	add	r2, r5, #36
	vmla.f32	q0, q9, q10
	vld1.32	{d18[], d19[]}, [r2:32]
	add	r2, r3, #128
	vld1.32	{d20, d21}, [r2]
	add	r2, r5, #40
	vmla.f32	q0, q9, q10
	vld1.32	{d18[], d19[]}, [r2:32]
	add	r2, r3, #144
	vld1.32	{d20, d21}, [r2]
	add	r2, r5, #44
	vmla.f32	q0, q9, q10
	vld1.32	{d18[], d19[]}, [r2:32]
	add	r2, r3, #160
	vld1.32	{d20, d21}, [r2]
	add	r2, r5, #48
	vmla.f32	q0, q9, q10
	vld1.32	{d18[], d19[]}, [r2:32]
	add	r2, r3, #176
	vld1.32	{d20, d21}, [r2]
	add	r2, r5, #52
	vmla.f32	q0, q9, q10
	vld1.32	{d18[], d19[]}, [r2:32]
	add	r2, r3, #192
	vld1.32	{d20, d21}, [r2]
	add	r2, r5, #56
	vmla.f32	q0, q9, q10
	vld1.32	{d18[], d19[]}, [r2:32]
	add	r2, r3, #208
	vld1.32	{d20, d21}, [r2]
	ldr	r3, [r6, #48]           @ 4-byte Reload
	ldr	r2, [r6, #1216]         @ 4-byte Reload
	vmla.f32	q0, q9, q10
	vld1.32	{d18, d19}, [r1]
	vld1.32	{d20[], d21[]}, [r0:32]
	mov	r1, #48
	ldr	r0, [r6, #56]           @ 4-byte Reload
	vmla.f32	q0, q10, q9
	vst1.32	{d0, d1}, [r0]
	vmax.f32	d18, d0, d9
	vmov.f32	s4, s1
	ldr	r0, [r6, #1064]         @ 4-byte Reload
	vmov.f32	s0, s3
	vld1.32	{d22, d23}, [r0]!
	vdup.32	q9, d18[0]
	vld1.32	{d20, d21}, [r0]
	add	r0, r3, #48
	vmla.f32	q12, q10, q9
	vld1.32	{d26, d27}, [r0]
	add	r0, r3, #112
	vmax.f32	d20, d2, d9
	vmov.i32	q1, #0x0
	vmla.f32	q1, q11, q9
	vmax.f32	d22, d1, d9
	vdup.32	q10, d20[0]
	vmla.f32	q12, q13, q10
	vld1.32	{d26, d27}, [r0]
	add	r0, r3, #32
	vdup.32	q11, d22[0]
	vmla.f32	q12, q13, q11
	vld1.32	{d26, d27}, [r0]
	add	r0, r3, #176
	vmla.f32	q1, q13, q10
	vld1.32	{d28, d29}, [r0]
	add	r0, r3, #96
	vmax.f32	d26, d0, d9
	b	LBB0_63
	.p2align	4
@ %bb.53:
	.data_region
LCPI0_91:
	.long	56                      @ 0x38
	.long	0                       @ 0x0
	.long	56                      @ 0x38
	.long	0                       @ 0x0
	.p2align	4
@ %bb.54:
LCPI0_92:
	.long	1                       @ 0x1
	.long	0                       @ 0x0
	.long	16                      @ 0x10
	.long	0                       @ 0x0
	.p2align	4
@ %bb.55:
LCPI0_93:
	.long	112                     @ 0x70
	.long	0                       @ 0x0
	.long	112                     @ 0x70
	.long	0                       @ 0x0
	.p2align	4
@ %bb.56:
LCPI0_94:
	.long	3                       @ 0x3
	.long	0                       @ 0x0
	.long	3                       @ 0x3
	.long	0                       @ 0x0
	.p2align	4
@ %bb.57:
LCPI0_95:
	.long	16                      @ 0x10
	.long	0                       @ 0x0
	.long	1                       @ 0x1
	.long	0                       @ 0x0
	.p2align	4
@ %bb.58:
LCPI0_96:
	.long	4                       @ 0x4
	.long	0                       @ 0x0
	.long	1                       @ 0x1
	.long	0                       @ 0x0
	.p2align	4
@ %bb.59:
LCPI0_97:
	.long	4                       @ 0x4
	.long	0                       @ 0x0
	.long	4                       @ 0x4
	.long	0                       @ 0x0
	.p2align	4
@ %bb.60:
LCPI0_98:
	.long	1                       @ 0x1
	.long	0                       @ 0x0
	.long	1                       @ 0x1
	.long	0                       @ 0x0
	.p2align	4
@ %bb.61:
LCPI0_99:
	.long	2                       @ 0x2
	.long	0                       @ 0x0
	.long	2                       @ 0x2
	.long	0                       @ 0x0
	.p2align	2
@ %bb.62:
LCPI0_100:
	.long	0                       @ float 0
	.p2align	2
LBB0_63:                                @ %exit12.15.i
	.end_data_region
	vdup.32	q13, d26[0]
	vmla.f32	q12, q14, q13
	vld1.32	{d28, d29}, [r0]
	add	r0, r3, #160
	vmla.f32	q1, q14, q11
	vld1.32	{d28, d29}, [r0]
	add	r0, r2, #16
	vst1.32	{d24, d25}, [r0]
	mov	r0, r2
	vmla.f32	q1, q14, q13
	vst1.32	{d2, d3}, [r0], r1
	mov	r1, r3
	vmov.i32	q14, #0x0
	vld1.32	{d24, d25}, [r1]!
	vmla.f32	q14, q9, q12
	vld1.32	{d24, d25}, [r1]
	add	r1, r3, #64
	vmla.f32	q8, q9, q12
	vld1.32	{d18, d19}, [r1]
	add	r1, r3, #80
	vmla.f32	q14, q10, q9
	vld1.32	{d18, d19}, [r1]
	add	r1, r3, #128
	vmla.f32	q8, q10, q9
	vld1.32	{d18, d19}, [r1]
	add	r1, r3, #144
	vmla.f32	q14, q11, q9
	vld1.32	{d18, d19}, [r1]
	add	r1, r3, #192
	vmla.f32	q8, q11, q9
	vld1.32	{d18, d19}, [r1]
	add	r1, r3, #208
	vmla.f32	q14, q13, q9
	vld1.32	{d18, d19}, [r1]
	add	r1, r2, #32
	vmla.f32	q8, q13, q9
	vst1.32	{d28, d29}, [r1]
	ldr	r1, [r6, #1504]         @ 4-byte Reload
	vst1.32	{d16, d17}, [r0]
LBB0_64:                                @ %cond31.preheader.i
                                        @ =>This Loop Header: Depth=1
                                        @     Child Loop BB0_65 Depth 2
	vadd.f32	s0, s4, s28
	umull	r2, r0, r10, r12
	mov	r3, #0
	mov	r5, #0
	vcmpe.f32	s0, #0
	vmrs	APSR_nzcv, fpscr
	vdiv.f32	s2, s0, s16
	vmax.f32	d0, d0, d9
	vmovmi.f32	s2, s18
	vcmpe.f32	s0, s16
	vmrs	APSR_nzcv, fpscr
	vmovgt.f32	s2, s30
	vdup.32	q8, d1[0]
LBB0_65:                                @ %cond34.preheader.i
                                        @   Parent Loop BB0_64 Depth=1
                                        @ =>  This Inner Loop Header: Depth=2
	rsb	r0, r3, r3, lsl #3
	adds	r3, r3, #1
	adc	r5, r5, #0
	add	r0, r2, r0, lsl #3
	add	r4, r11, r0, lsl #2
	vld1.32	{d18, d19}, [r4]!
	vld1.32	{d20, d21}, [r4]
	vmul.f32	q9, q8, q9
	vclt.f32	q11, q9, #0
	add	r4, r1, r0, lsl #2
	vmul.f32	q10, q8, q10
	vbic	q9, q9, q11
	vclt.f32	q11, q10, #0
	vbic	q10, q10, q11
	vst1.32	{d18, d19}, [r4]!
	vst1.32	{d20, d21}, [r4]
	add	r4, r0, #8
	add	r1, r11, r4, lsl #2
	vld1.32	{d18, d19}, [r1]!
	vld1.32	{d20, d21}, [r1]
	vmul.f32	q9, q8, q9
	vclt.f32	q11, q9, #0
	vmul.f32	q10, q8, q10
	ldr	r1, [r6, #1504]         @ 4-byte Reload
	add	r1, r1, r4, lsl #2
	vbic	q9, q9, q11
	vclt.f32	q11, q10, #0
	vbic	q10, q10, q11
	vst1.32	{d18, d19}, [r1]!
	vst1.32	{d20, d21}, [r1]
	add	r1, r0, #16
	add	r4, r11, r1, lsl #2
	vld1.32	{d18, d19}, [r4]!
	vld1.32	{d20, d21}, [r4]
	vmul.f32	q9, q8, q9
	vclt.f32	q11, q9, #0
	vmul.f32	q10, q8, q10
	ldr	r4, [r6, #1504]         @ 4-byte Reload
	add	r1, r4, r1, lsl #2
	vbic	q9, q9, q11
	vclt.f32	q11, q10, #0
	vbic	q10, q10, q11
	vst1.32	{d18, d19}, [r1]!
	vst1.32	{d20, d21}, [r1]
	add	r1, r0, #24
	add	r4, r11, r1, lsl #2
	vld1.32	{d18, d19}, [r4]!
	vld1.32	{d20, d21}, [r4]
	vmul.f32	q9, q8, q9
	vclt.f32	q11, q9, #0
	vmul.f32	q10, q8, q10
	ldr	r4, [r6, #1504]         @ 4-byte Reload
	add	r1, r4, r1, lsl #2
	vbic	q9, q9, q11
	vclt.f32	q11, q10, #0
	vbic	q10, q10, q11
	vst1.32	{d18, d19}, [r1]!
	vst1.32	{d20, d21}, [r1]
	add	r1, r0, #32
	add	r4, r11, r1, lsl #2
	vld1.32	{d18, d19}, [r4]!
	vld1.32	{d20, d21}, [r4]
	vmul.f32	q9, q8, q9
	vclt.f32	q11, q9, #0
	vmul.f32	q10, q8, q10
	ldr	r4, [r6, #1504]         @ 4-byte Reload
	add	r1, r4, r1, lsl #2
	vbic	q9, q9, q11
	vclt.f32	q11, q10, #0
	vbic	q10, q10, q11
	vst1.32	{d18, d19}, [r1]!
	vst1.32	{d20, d21}, [r1]
	add	r1, r0, #40
	add	r0, r0, #48
	add	r4, r11, r1, lsl #2
	vld1.32	{d18, d19}, [r4]!
	vld1.32	{d20, d21}, [r4]
	vmul.f32	q9, q8, q9
	vclt.f32	q11, q9, #0
	vmul.f32	q10, q8, q10
	ldr	r4, [r6, #1504]         @ 4-byte Reload
	add	r1, r4, r1, lsl #2
	vbic	q9, q9, q11
	vclt.f32	q11, q10, #0
	vbic	q10, q10, q11
	vst1.32	{d18, d19}, [r1]!
	vst1.32	{d20, d21}, [r1]
	add	r1, r11, r0, lsl #2
	vld1.32	{d18, d19}, [r1]!
	vld1.32	{d20, d21}, [r1]
	vmul.f32	q9, q8, q9
	vclt.f32	q11, q9, #0
	vmul.f32	q10, q8, q10
	ldr	r1, [r6, #1504]         @ 4-byte Reload
	add	r0, r1, r0, lsl #2
	vbic	q9, q9, q11
	vclt.f32	q11, q10, #0
	vbic	q10, q10, q11
	vst1.32	{d18, d19}, [r0]!
	vst1.32	{d20, d21}, [r0]
	eor	r0, r3, #56
	orrs	r0, r0, r5
	bne	LBB0_65
@ %bb.66:                               @ %exit33.i
                                        @   in Loop: Header=BB0_64 Depth=1
	adds	r10, r10, #1
	adc	lr, lr, #0
	eor	r0, r10, #16
	orrs	r0, r0, lr
	beq	LBB0_71
@ %bb.67:                               @ %exit33.i.cond31.preheader.i_crit_edge
                                        @   in Loop: Header=BB0_64 Depth=1
	ldr	r0, [r6, #1216]         @ 4-byte Reload
	add	r0, r0, r10, lsl #2
	vldr	s4, [r0]
	b	LBB0_64
	.p2align	4
@ %bb.68:
	.data_region
LCPI0_101:
	.long	16                      @ 0x10
	.long	0                       @ 0x0
	.long	16                      @ 0x10
	.long	0                       @ 0x0
	.p2align	4
@ %bb.69:
LCPI0_102:
	.long	1                       @ 0x1
	.long	0                       @ 0x0
	.long	72                      @ 0x48
	.long	0                       @ 0x0
	.p2align	4
@ %bb.70:
LCPI0_103:
	.long	72                      @ 0x48
	.long	0                       @ 0x0
	.long	16                      @ 0x10
	.long	0                       @ 0x0
	.p2align	2
LBB0_71:                                @ %exit30.i
	.end_data_region
	adr	r0, LCPI0_91
	add	lr, r6, #1328
	vld1.64	{d16, d17}, [r0:128]
	sub	r0, sp, #16
	bic	r2, r0, #7
	vst1.64	{d16, d17}, [lr:128]    @ 16-byte Spill
	mov	sp, r2
	sub	r0, sp, #32
	bic	r3, r0, #31
	mov	sp, r3
	sub	r0, sp, #104
	bic	r0, r0, #7
	mov	sp, r0
	mov	r11, sp
	sub	r12, r11, #4
	mov	sp, r12
	sub	r5, sp, #56
	bic	r5, r5, #15
	mov	sp, r5
	ldr	r4, [r6, #1068]         @ 4-byte Reload
	mov	lr, r1
	add	r1, r0, #16
	str	r4, [r2]
	ldr	r4, [r6, #1200]         @ 4-byte Reload
	mov	r10, #6
	str	r4, [r2, #4]
	mov	r4, #48
	strb	r10, [r11, #-4]
	vst1.64	{d16, d17}, [r1]
	adr	r1, LCPI0_92
	vld1.64	{d10, d11}, [r1:128]
	mov	r1, r0
	vst1.32	{d10, d11}, [r1], r4
	vst1.64	{d16, d17}, [r1]
	add	r1, r0, #32
	str	lr, [r2, #4]
	add	lr, r6, #64
	strb	r10, [r11, #-3]
	vst1.64	{d10, d11}, [r1]
	adr	r1, LCPI0_98
	vld1.64	{d12, d13}, [r1:128]
	add	r1, r0, #80
	strb	r10, [r11, #-2]
	vst1.64	{d12, d13}, [r1]
	adr	r1, LCPI0_101
	vld1.64	{d16, d17}, [r1:128]
	add	r1, r0, #64
	vst1.64	{d16, d17}, [r1]
	add	r1, r2, #8
	vld1.64	{d16, d17}, [lr:128]    @ 16-byte Reload
	add	lr, r6, #1504
	strb	r10, [r11, #-1]
	mov	r11, #0
	vst1.64	{d16, d17}, [r1]
	adr	r1, LCPI0_96
	vld1.64	{d16, d17}, [r1:128]
	vst1.64	{d16, d17}, [lr:128]    @ 16-byte Spill
	adr	r1, LCPI0_97
	add	lr, r6, #1408
	vld1.64	{d18, d19}, [r1:128]
	mov	r1, r3
	vst1.32	{d18, d19}, [r1]!
	vst1.64	{d16, d17}, [r1]
	mov	r1, #16
	vmov.i32	q8, #0x0
	str	r1, [r0, #96]
	add	r1, r5, #32
	vst1.64	{d18, d19}, [lr:128]    @ 16-byte Spill
	vst1.64	{d12, d13}, [r1:128]
	mov	r1, r5
	vst1.64	{d12, d13}, [r1:128]!
	vst1.64	{d16, d17}, [r1:128]
	mov	r1, #1
	str	r11, [r0, #100]
	str	r1, [r5, #48]
	str	r11, [r5, #52]
	sub	sp, sp, #20
	mov	r1, #7
	stm	sp, {r0, r12}
	mov	r0, #4
	str	r1, [sp, #8]
	mov	r1, #0
	str	r11, [sp, #12]
	str	r5, [sp, #16]
	bl	_nnc_aten_conv2d
	add	sp, sp, #20
	sub	r0, sp, #16
	bic	r3, r0, #7
	mov	sp, r3
	sub	r0, sp, #32
	bic	r12, r0, #31
	mov	sp, r12
	sub	r0, sp, #104
	bic	r0, r0, #7
	mov	sp, r0
	mov	r1, sp
	sub	r2, r1, #4
	str	r2, [r6, #1312]         @ 4-byte Spill
	mov	sp, r2
	sub	r5, sp, #56
	bic	lr, r5, #15
	mov	sp, lr
	ldr	r2, [r6, #1536]         @ 4-byte Reload
	add	r5, r0, #16
	str	r2, [r3]
	add	r2, r6, #1328
	vld1.64	{d18, d19}, [r2:128]    @ 16-byte Reload
	mov	r4, #6
	mov	r2, #48
	strb	r4, [r1, #-4]
	vst1.64	{d18, d19}, [r5]
	adr	r5, LCPI0_102
	vld1.64	{d16, d17}, [r5:128]
	mov	r5, r0
	vst1.32	{d16, d17}, [r5], r2
	vst1.64	{d18, d19}, [r5]
	add	r5, r0, #32
	ldr	r2, [r6, #1068]         @ 4-byte Reload
	vst1.64	{d10, d11}, [r5]
	add	r5, r0, #80
	str	r2, [r3, #4]
	mov	r2, r3
	ldr	r10, [r6, #1200]        @ 4-byte Reload
	strb	r4, [r1, #-3]
	strb	r4, [r1, #-2]
	mov	r4, #6
	str	r10, [r2, #8]!
	vst1.64	{d12, d13}, [r5]
	adr	r5, LCPI0_103
	vld1.64	{d16, d17}, [r5:128]
	add	r5, r0, #64
	vst1.64	{d16, d17}, [r5]
	add	r5, r6, #80
	vld1.64	{d16, d17}, [r5:128]    @ 16-byte Reload
	vst1.64	{d16, d17}, [r2]
	add	r2, r6, #1408
	vld1.64	{d16, d17}, [r2:128]    @ 16-byte Reload
	add	r2, r6, #1504
	strb	r4, [r1, #-1]
	mov	r1, r12
	vst1.32	{d16, d17}, [r1]!
	vld1.64	{d16, d17}, [r2:128]    @ 16-byte Reload
	vst1.64	{d16, d17}, [r1]
	mov	r1, #72
	vmov.i32	q8, #0x0
	str	r1, [r0, #96]
	add	r1, lr, #32
	str	r11, [r0, #100]
	vst1.64	{d12, d13}, [r1:128]
	mov	r1, lr
	vst1.64	{d12, d13}, [r1:128]!
	vst1.64	{d16, d17}, [r1:128]
	mov	r1, #1
	str	r1, [lr, #48]
	str	r11, [lr, #52]
	sub	sp, sp, #20
	str	r0, [sp]
	add	r1, sp, #8
	ldr	r0, [r6, #1312]         @ 4-byte Reload
	mov	r2, r3
	str	r0, [sp, #4]
	mov	r0, #7
	stm	r1, {r0, r11, lr}
	mov	r0, #4
	mov	r1, #0
	mov	r3, r12
	bl	_nnc_aten_conv2d
	add	sp, sp, #20
	ldr	r10, [r6, #108]         @ 4-byte Reload
	mov	r12, #3136
	mov	lr, #0
LBB0_72:                                @ %cond40.preheader.i
                                        @ =>This Loop Header: Depth=1
                                        @     Child Loop BB0_73 Depth 2
	umull	r2, r0, r11, r12
	mov	r3, #0
	mov	r5, #0
LBB0_73:                                @ %cond43.preheader.i
                                        @   Parent Loop BB0_72 Depth=1
                                        @ =>  This Inner Loop Header: Depth=2
	rsb	r0, r3, r3, lsl #3
	ldr	r1, [r6, #1536]         @ 4-byte Reload
	adds	r3, r3, #1
	add	r0, r2, r0, lsl #3
	adc	r5, r5, #0
	add	r4, r1, r0, lsl #2
	ldr	r1, [r6, #1536]         @ 4-byte Reload
	vld1.32	{d16, d17}, [r4]!
	vclt.f32	q10, q8, #0
	vld1.32	{d18, d19}, [r4]
	vbic	q8, q8, q10
	add	r4, r10, r0, lsl #2
	vclt.f32	q10, q9, #0
	vbic	q9, q9, q10
	vst1.32	{d16, d17}, [r4]!
	vst1.32	{d18, d19}, [r4]
	add	r4, r0, #8
	add	r1, r1, r4, lsl #2
	vld1.32	{d16, d17}, [r1]!
	vclt.f32	q10, q8, #0
	vld1.32	{d18, d19}, [r1]
	vbic	q8, q8, q10
	add	r1, r10, r4, lsl #2
	vclt.f32	q10, q9, #0
	ldr	r4, [r6, #1536]         @ 4-byte Reload
	vbic	q9, q9, q10
	vst1.32	{d16, d17}, [r1]!
	vst1.32	{d18, d19}, [r1]
	add	r1, r0, #16
	add	r4, r4, r1, lsl #2
	add	r1, r10, r1, lsl #2
	vld1.32	{d16, d17}, [r4]!
	vclt.f32	q10, q8, #0
	vld1.32	{d18, d19}, [r4]
	vbic	q8, q8, q10
	vclt.f32	q10, q9, #0
	ldr	r4, [r6, #1536]         @ 4-byte Reload
	vbic	q9, q9, q10
	vst1.32	{d16, d17}, [r1]!
	vst1.32	{d18, d19}, [r1]
	add	r1, r0, #24
	add	r4, r4, r1, lsl #2
	add	r1, r10, r1, lsl #2
	vld1.32	{d16, d17}, [r4]!
	vclt.f32	q10, q8, #0
	vld1.32	{d18, d19}, [r4]
	vbic	q8, q8, q10
	vclt.f32	q10, q9, #0
	ldr	r4, [r6, #1536]         @ 4-byte Reload
	vbic	q9, q9, q10
	vst1.32	{d16, d17}, [r1]!
	vst1.32	{d18, d19}, [r1]
	add	r1, r0, #32
	add	r4, r4, r1, lsl #2
	add	r1, r10, r1, lsl #2
	vld1.32	{d16, d17}, [r4]!
	vclt.f32	q10, q8, #0
	vld1.32	{d18, d19}, [r4]
	vbic	q8, q8, q10
	vclt.f32	q10, q9, #0
	ldr	r4, [r6, #1536]         @ 4-byte Reload
	vbic	q9, q9, q10
	vst1.32	{d16, d17}, [r1]!
	vst1.32	{d18, d19}, [r1]
	add	r1, r0, #40
	add	r0, r0, #48
	add	r4, r4, r1, lsl #2
	add	r1, r10, r1, lsl #2
	vld1.32	{d16, d17}, [r4]!
	vclt.f32	q10, q8, #0
	vld1.32	{d18, d19}, [r4]
	vbic	q8, q8, q10
	vclt.f32	q10, q9, #0
	vbic	q9, q9, q10
	vst1.32	{d16, d17}, [r1]!
	vst1.32	{d18, d19}, [r1]
	ldr	r1, [r6, #1536]         @ 4-byte Reload
	add	r1, r1, r0, lsl #2
	add	r0, r10, r0, lsl #2
	vld1.32	{d16, d17}, [r1]!
	vclt.f32	q10, q8, #0
	vld1.32	{d18, d19}, [r1]
	vbic	q8, q8, q10
	vclt.f32	q10, q9, #0
	vbic	q9, q9, q10
	vst1.32	{d16, d17}, [r0]!
	vst1.32	{d18, d19}, [r0]
	eor	r0, r3, #56
	orrs	r0, r0, r5
	bne	LBB0_73
@ %bb.74:                               @ %exit42.i
                                        @   in Loop: Header=BB0_72 Depth=1
	adds	r11, r11, #1
	adc	lr, lr, #0
	eor	r0, r11, #72
	orrs	r0, r0, lr
	bne	LBB0_72
@ %bb.75:                               @ %exit39.i
	adr	r0, LCPI0_104
	vld1.64	{d16, d17}, [r0:128]
	sub	r0, sp, #16
	bic	r2, r0, #7
	mov	sp, r2
	sub	r0, sp, #32
	bic	r3, r0, #31
	mov	sp, r3
	sub	r0, sp, #104
	bic	r5, r0, #7
	mov	sp, r5
	mov	r4, sp
	sub	r12, r4, #4
	mov	sp, r12
	sub	r1, sp, #56
	mov	r11, r10
	bic	r10, r1, #7
	mov	sp, r10
	add	r1, r5, #16
	ldr	r0, [r6, #1568]         @ 4-byte Reload
	mov	lr, #6
	str	r0, [r2]
	strb	lr, [r4, #-4]
	mov	r0, r5
	vst1.64	{d16, d17}, [r1]
	adr	r1, LCPI0_105
	vld1.64	{d16, d17}, [r1:128]
	mov	r1, #48
	str	r11, [r2, #4]
	mov	r11, #0
	vst1.32	{d16, d17}, [r0], r1
	adr	r1, LCPI0_106
	vld1.64	{d18, d19}, [r1:128]
	add	r1, r6, #112
	vst1.64	{d18, d19}, [r0]
	add	r0, r5, #32
	strb	lr, [r4, #-3]
	vst1.64	{d16, d17}, [r0]
	adr	r0, LCPI0_107
	vld1.64	{d16, d17}, [r0:128]
	add	r0, r5, #80
	strb	lr, [r4, #-2]
	vst1.64	{d16, d17}, [r0]
	adr	r0, LCPI0_108
	vld1.64	{d16, d17}, [r0:128]
	add	r0, r5, #64
	vst1.64	{d16, d17}, [r0]
	add	r0, r2, #8
	vld1.64	{d16, d17}, [r1:128]    @ 16-byte Reload
	add	r1, r10, #32
	vst1.64	{d16, d17}, [r0]
	adr	r0, LCPI0_109
	vld1.64	{d16, d17}, [r0:128]
	adr	r0, LCPI0_110
	vld1.64	{d18, d19}, [r0:128]
	adr	r0, LCPI0_111
	vld1.64	{d20, d21}, [r0:128]
	mov	r0, r3
	vst1.32	{d20, d21}, [r0]!
	vst1.64	{d18, d19}, [r0]
	mov	r0, #72
	strb	lr, [r4, #-1]
	str	r0, [r5, #96]
	str	r11, [r5, #100]
	vst1.64	{d16, d17}, [r1]
	adr	r1, LCPI0_112
	vld1.64	{d18, d19}, [r1:128]
	str	r0, [r10, #48]
	mov	r0, r10
	str	r11, [r10, #52]
	vst1.32	{d18, d19}, [r0]!
	vst1.64	{d16, d17}, [r0]
	sub	sp, sp, #20
	mov	r0, #7
	stm	sp, {r5, r12}
	mov	r1, #0
	str	r0, [sp, #8]
	mov	r0, #4
	str	r11, [sp, #12]
	str	r10, [sp, #16]
	bl	_nnc_aten_conv2d
	add	sp, sp, #20
	ldr	r10, [r6, #140]         @ 4-byte Reload
	mov	r12, #784
	mov	lr, #0
	b	LBB0_89
	.p2align	4
@ %bb.76:
	.data_region
LCPI0_104:
	.long	28                      @ 0x1c
	.long	0                       @ 0x0
	.long	28                      @ 0x1c
	.long	0                       @ 0x0
	.p2align	4
@ %bb.77:
LCPI0_105:
	.long	1                       @ 0x1
	.long	0                       @ 0x0
	.long	72                      @ 0x48
	.long	0                       @ 0x0
	.p2align	4
@ %bb.78:
LCPI0_106:
	.long	56                      @ 0x38
	.long	0                       @ 0x0
	.long	56                      @ 0x38
	.long	0                       @ 0x0
	.p2align	4
@ %bb.79:
LCPI0_107:
	.long	3                       @ 0x3
	.long	0                       @ 0x0
	.long	3                       @ 0x3
	.long	0                       @ 0x0
	.p2align	4
@ %bb.80:
LCPI0_108:
	.long	72                      @ 0x48
	.long	0                       @ 0x0
	.long	1                       @ 0x1
	.long	0                       @ 0x0
	.p2align	4
@ %bb.81:
LCPI0_109:
	.long	1                       @ 0x1
	.long	0                       @ 0x0
	.long	1                       @ 0x1
	.long	0                       @ 0x0
	.p2align	4
@ %bb.82:
LCPI0_110:
	.long	4                       @ 0x4
	.long	0                       @ 0x0
	.long	1                       @ 0x1
	.long	0                       @ 0x0
	.p2align	4
@ %bb.83:
LCPI0_111:
	.long	4                       @ 0x4
	.long	0                       @ 0x0
	.long	4                       @ 0x4
	.long	0                       @ 0x0
	.p2align	4
@ %bb.84:
LCPI0_112:
	.long	2                       @ 0x2
	.long	0                       @ 0x0
	.long	2                       @ 0x2
	.long	0                       @ 0x0
	.p2align	4
@ %bb.85:
LCPI0_113:
	.long	1                       @ 0x1
	.long	0                       @ 0x0
	.long	24                      @ 0x18
	.long	0                       @ 0x0
	.p2align	4
@ %bb.86:
LCPI0_114:
	.long	24                      @ 0x18
	.long	0                       @ 0x0
	.long	72                      @ 0x48
	.long	0                       @ 0x0
	.p2align	4
@ %bb.87:
LCPI0_115:
	.long	1                       @ 0x1
	.long	0                       @ 0x0
	.long	88                      @ 0x58
	.long	0                       @ 0x0
	.p2align	4
@ %bb.88:
LCPI0_116:
	.long	88                      @ 0x58
	.long	0                       @ 0x0
	.long	24                      @ 0x18
	.long	0                       @ 0x0
	.p2align	2
LBB0_89:                                @ %cond49.preheader.i
                                        @ =>This Loop Header: Depth=1
                                        @     Child Loop BB0_90 Depth 2
	.end_data_region
	umull	r2, r0, r11, r12
	mov	r3, #0
	mov	r5, #0
LBB0_90:                                @ %cond52.preheader.i
                                        @   Parent Loop BB0_89 Depth=1
                                        @ =>  This Inner Loop Header: Depth=2
	rsb	r0, r3, r3, lsl #3
	ldr	r1, [r6, #1568]         @ 4-byte Reload
	add	r0, r2, r0, lsl #2
	add	r4, r1, r0, lsl #2
	ldr	r1, [r6, #1568]         @ 4-byte Reload
	vld1.32	{d16, d17}, [r4]!
	vclt.f32	q10, q8, #0
	vld1.32	{d18, d19}, [r4]
	vbic	q8, q8, q10
	add	r4, r10, r0, lsl #2
	vclt.f32	q10, q9, #0
	vbic	q9, q9, q10
	vst1.32	{d16, d17}, [r4]!
	vst1.32	{d18, d19}, [r4]
	add	r4, r0, #8
	add	r1, r1, r4, lsl #2
	vld1.32	{d16, d17}, [r1]!
	vclt.f32	q10, q8, #0
	vld1.32	{d18, d19}, [r1]
	vbic	q8, q8, q10
	add	r1, r10, r4, lsl #2
	vclt.f32	q10, q9, #0
	ldr	r4, [r6, #1568]         @ 4-byte Reload
	vbic	q9, q9, q10
	vst1.32	{d16, d17}, [r1]!
	vst1.32	{d18, d19}, [r1]
	add	r1, r0, #16
	add	r0, r0, #24
	add	r4, r4, r1, lsl #2
	add	r1, r10, r1, lsl #2
	vld1.32	{d16, d17}, [r4]!
	vclt.f32	q10, q8, #0
	vld1.32	{d18, d19}, [r4]
	vbic	q8, q8, q10
	vclt.f32	q10, q9, #0
	ldr	r4, [r6, #1568]         @ 4-byte Reload
	vbic	q9, q9, q10
	vst1.32	{d16, d17}, [r1]!
	vst1.32	{d18, d19}, [r1]
	ldr	r1, [r6, #1568]         @ 4-byte Reload
	add	r1, r1, r0, lsl #2
	add	r0, r10, r0, lsl #2
	vld1.32	{d16, d17}, [r1]
	vclt.f32	q9, q8, #0
	ldr	r1, [r6, #1568]         @ 4-byte Reload
	vbic	q8, q8, q9
	vst1.32	{d16, d17}, [r0]
	orr	r0, r3, #1
	adds	r3, r3, #2
	rsb	r0, r0, r0, lsl #3
	adc	r5, r5, #0
	add	r0, r2, r0, lsl #2
	add	r1, r1, r0, lsl #2
	vld1.32	{d16, d17}, [r1]!
	vclt.f32	q10, q8, #0
	vld1.32	{d18, d19}, [r1]
	vbic	q8, q8, q10
	add	r1, r10, r0, lsl #2
	vclt.f32	q10, q9, #0
	vbic	q9, q9, q10
	vst1.32	{d16, d17}, [r1]!
	vst1.32	{d18, d19}, [r1]
	add	r1, r0, #8
	add	r4, r4, r1, lsl #2
	add	r1, r10, r1, lsl #2
	vld1.32	{d16, d17}, [r4]!
	vclt.f32	q10, q8, #0
	vld1.32	{d18, d19}, [r4]
	vbic	q8, q8, q10
	vclt.f32	q10, q9, #0
	ldr	r4, [r6, #1568]         @ 4-byte Reload
	vbic	q9, q9, q10
	vst1.32	{d16, d17}, [r1]!
	vst1.32	{d18, d19}, [r1]
	add	r1, r0, #16
	add	r0, r0, #24
	add	r4, r4, r1, lsl #2
	add	r1, r10, r1, lsl #2
	vld1.32	{d16, d17}, [r4]!
	vclt.f32	q10, q8, #0
	vld1.32	{d18, d19}, [r4]
	vbic	q8, q8, q10
	vclt.f32	q10, q9, #0
	vbic	q9, q9, q10
	vst1.32	{d16, d17}, [r1]!
	vst1.32	{d18, d19}, [r1]
	ldr	r1, [r6, #1568]         @ 4-byte Reload
	add	r1, r1, r0, lsl #2
	add	r0, r10, r0, lsl #2
	vld1.32	{d16, d17}, [r1]
	vclt.f32	q9, q8, #0
	vbic	q8, q8, q9
	vst1.32	{d16, d17}, [r0]
	eor	r0, r3, #28
	orrs	r0, r0, r5
	bne	LBB0_90
@ %bb.91:                               @ %exit51.i
                                        @   in Loop: Header=BB0_89 Depth=1
	adds	r11, r11, #1
	adc	lr, lr, #0
	eor	r0, r11, #72
	orrs	r0, r0, lr
	bne	LBB0_89
@ %bb.92:                               @ %exit48.i
	adr	r0, LCPI0_104
	vld1.64	{d10, d11}, [r0:128]
	sub	r0, sp, #16
	bic	r2, r0, #7
	mov	sp, r2
	sub	r0, sp, #32
	bic	r3, r0, #31
	mov	sp, r3
	sub	r0, sp, #104
	bic	r0, r0, #7
	mov	sp, r0
	mov	r4, sp
	sub	r12, r4, #4
	mov	sp, r12
	sub	r5, sp, #56
	bic	r5, r5, #15
	mov	sp, r5
	ldr	r1, [r6, #1392]         @ 4-byte Reload
	mov	lr, #6
	str	r1, [r2]
	add	r1, r0, #16
	strb	lr, [r4, #-4]
	mov	r11, #48
	vst1.64	{d10, d11}, [r1]
	adr	r1, LCPI0_113
	vld1.64	{d16, d17}, [r1:128]
	add	r1, r6, #1568
	vst1.64	{d16, d17}, [r1:128]    @ 16-byte Spill
	mov	r1, r0
	vst1.32	{d16, d17}, [r1], r11
	str	r10, [r2, #4]
	add	r10, r6, #144
	strb	lr, [r4, #-3]
	vst1.64	{d10, d11}, [r1]
	adr	r1, LCPI0_105
	vld1.64	{d16, d17}, [r1:128]
	add	r1, r0, #32
	vst1.64	{d16, d17}, [r1]
	adr	r1, LCPI0_109
	vld1.64	{d12, d13}, [r1:128]
	add	r1, r0, #80
	strb	lr, [r4, #-2]
	vst1.64	{d12, d13}, [r1]
	adr	r1, LCPI0_114
	vld1.64	{d16, d17}, [r1:128]
	add	r1, r0, #64
	vst1.64	{d16, d17}, [r1]
	add	r1, r2, #8
	vld1.64	{d16, d17}, [r10:128]   @ 16-byte Reload
	mov	r10, #0
	strb	lr, [r4, #-1]
	add	lr, r6, #1536
	vst1.64	{d16, d17}, [r1]
	adr	r1, LCPI0_110
	mov	r4, #6
	vld1.64	{d16, d17}, [r1:128]
	vst1.64	{d16, d17}, [lr:128]    @ 16-byte Spill
	adr	r1, LCPI0_111
	add	lr, r6, #1504
	vld1.64	{d18, d19}, [r1:128]
	mov	r1, r3
	vst1.32	{d18, d19}, [r1]!
	vst1.64	{d16, d17}, [r1]
	mov	r1, #24
	vmov.i32	q8, #0x0
	str	r1, [r0, #96]
	add	r1, r5, #32
	vst1.64	{d18, d19}, [lr:128]    @ 16-byte Spill
	vst1.64	{d12, d13}, [r1:128]
	mov	r1, r5
	vst1.64	{d12, d13}, [r1:128]!
	vst1.64	{d16, d17}, [r1:128]
	mov	r1, #1
	str	r10, [r0, #100]
	str	r1, [r5, #48]
	str	r10, [r5, #52]
	sub	sp, sp, #20
	mov	r1, #7
	stm	sp, {r0, r12}
	mov	r0, #4
	str	r1, [sp, #8]
	mov	r1, #0
	str	r10, [sp, #12]
	str	r5, [sp, #16]
	bl	_nnc_aten_conv2d
	add	sp, sp, #20
	sub	r0, sp, #16
	bic	r2, r0, #7
	mov	sp, r2
	sub	r0, sp, #32
	bic	r3, r0, #31
	mov	sp, r3
	sub	r0, sp, #104
	bic	r0, r0, #7
	mov	sp, r0
	mov	r1, sp
	sub	r12, r1, #4
	mov	sp, r12
	sub	r5, sp, #56
	bic	lr, r5, #15
	mov	sp, lr
	add	r5, r0, #16
	ldr	r11, [r6, #188]         @ 4-byte Reload
	strb	r4, [r1, #-4]
	mov	r4, #48
	str	r11, [r2]
	vst1.64	{d10, d11}, [r5]
	adr	r5, LCPI0_115
	vld1.64	{d16, d17}, [r5:128]
	mov	r5, r0
	vst1.32	{d16, d17}, [r5], r4
	ldr	r4, [r6, #1392]         @ 4-byte Reload
	str	r4, [r2, #4]
	mov	r4, #6
	vst1.64	{d10, d11}, [r5]
	add	r5, r0, #32
	strb	r4, [r1, #-3]
	str	r3, [r6, #24]
	add	r3, r6, #1568
	vld1.64	{d16, d17}, [r3:128]    @ 16-byte Reload
	add	r3, r6, #160
	vst1.64	{d16, d17}, [r5]
	add	r5, r0, #80
	strb	r4, [r1, #-2]
	mov	r4, #6
	vst1.64	{d12, d13}, [r5]
	adr	r5, LCPI0_116
	vld1.64	{d16, d17}, [r5:128]
	add	r5, r0, #64
	vst1.64	{d16, d17}, [r5]
	add	r5, r2, #8
	vld1.64	{d16, d17}, [r3:128]    @ 16-byte Reload
	ldr	r3, [r6, #24]
	strb	r4, [r1, #-1]
	add	r4, r6, #1504
	vst1.64	{d16, d17}, [r5]
	mov	r1, r3
	vld1.64	{d16, d17}, [r4:128]    @ 16-byte Reload
	add	r4, r6, #1536
	vst1.32	{d16, d17}, [r1]!
	vld1.64	{d16, d17}, [r4:128]    @ 16-byte Reload
	vst1.64	{d16, d17}, [r1]
	mov	r1, #88
	vmov.i32	q8, #0x0
	str	r1, [r0, #96]
	add	r1, lr, #32
	str	r10, [r0, #100]
	vst1.64	{d12, d13}, [r1:128]
	mov	r1, lr
	vst1.64	{d12, d13}, [r1:128]!
	vst1.64	{d16, d17}, [r1:128]
	mov	r1, #1
	str	r1, [lr, #48]
	str	r10, [lr, #52]
	sub	sp, sp, #20
	stm	sp, {r0, r12}
	mov	r0, #7
	add	r1, sp, #8
	stm	r1, {r0, r10, lr}
	mov	r0, #4
	mov	r1, #0
	bl	_nnc_aten_conv2d
	add	sp, sp, #20
	ldr	r1, [r6, #1552]         @ 4-byte Reload
	mov	r12, #784
	mov	lr, #0
LBB0_93:                                @ %cond58.preheader.i
                                        @ =>This Loop Header: Depth=1
                                        @     Child Loop BB0_94 Depth 2
	umull	r2, r0, r10, r12
	mov	r3, #0
	mov	r5, #0
LBB0_94:                                @ %cond61.preheader.i
                                        @   Parent Loop BB0_93 Depth=1
                                        @ =>  This Inner Loop Header: Depth=2
	rsb	r0, r3, r3, lsl #3
	add	r0, r2, r0, lsl #2
	add	r4, r11, r0, lsl #2
	vld1.32	{d16, d17}, [r4]!
	vclt.f32	q10, q8, #0
	vld1.32	{d18, d19}, [r4]
	vbic	q8, q8, q10
	add	r4, r1, r0, lsl #2
	vclt.f32	q10, q9, #0
	vbic	q9, q9, q10
	vst1.32	{d16, d17}, [r4]!
	vst1.32	{d18, d19}, [r4]
	add	r4, r0, #8
	add	r1, r11, r4, lsl #2
	vld1.32	{d16, d17}, [r1]!
	vclt.f32	q10, q8, #0
	vld1.32	{d18, d19}, [r1]
	vbic	q8, q8, q10
	ldr	r1, [r6, #1552]         @ 4-byte Reload
	vclt.f32	q10, q9, #0
	vbic	q9, q9, q10
	add	r1, r1, r4, lsl #2
	vst1.32	{d16, d17}, [r1]!
	vst1.32	{d18, d19}, [r1]
	add	r1, r0, #16
	add	r0, r0, #24
	add	r4, r11, r1, lsl #2
	vld1.32	{d16, d17}, [r4]!
	vclt.f32	q10, q8, #0
	vld1.32	{d18, d19}, [r4]
	vbic	q8, q8, q10
	ldr	r4, [r6, #1552]         @ 4-byte Reload
	vclt.f32	q10, q9, #0
	vbic	q9, q9, q10
	add	r1, r4, r1, lsl #2
	vst1.32	{d16, d17}, [r1]!
	vst1.32	{d18, d19}, [r1]
	add	r1, r11, r0, lsl #2
	vld1.32	{d16, d17}, [r1]
	vclt.f32	q9, q8, #0
	ldr	r1, [r6, #1552]         @ 4-byte Reload
	vbic	q8, q8, q9
	add	r0, r1, r0, lsl #2
	vst1.32	{d16, d17}, [r0]
	orr	r0, r3, #1
	adds	r3, r3, #2
	rsb	r0, r0, r0, lsl #3
	adc	r5, r5, #0
	add	r0, r2, r0, lsl #2
	add	r1, r11, r0, lsl #2
	vld1.32	{d16, d17}, [r1]!
	vclt.f32	q10, q8, #0
	vld1.32	{d18, d19}, [r1]
	vbic	q8, q8, q10
	ldr	r1, [r6, #1552]         @ 4-byte Reload
	vclt.f32	q10, q9, #0
	vbic	q9, q9, q10
	add	r1, r1, r0, lsl #2
	vst1.32	{d16, d17}, [r1]!
	vst1.32	{d18, d19}, [r1]
	add	r1, r0, #8
	add	r4, r11, r1, lsl #2
	vld1.32	{d16, d17}, [r4]!
	vclt.f32	q10, q8, #0
	vld1.32	{d18, d19}, [r4]
	vbic	q8, q8, q10
	ldr	r4, [r6, #1552]         @ 4-byte Reload
	vclt.f32	q10, q9, #0
	vbic	q9, q9, q10
	add	r1, r4, r1, lsl #2
	vst1.32	{d16, d17}, [r1]!
	vst1.32	{d18, d19}, [r1]
	add	r1, r0, #16
	add	r0, r0, #24
	add	r4, r11, r1, lsl #2
	vld1.32	{d16, d17}, [r4]!
	vclt.f32	q10, q8, #0
	vld1.32	{d18, d19}, [r4]
	vbic	q8, q8, q10
	ldr	r4, [r6, #1552]         @ 4-byte Reload
	vclt.f32	q10, q9, #0
	vbic	q9, q9, q10
	add	r1, r4, r1, lsl #2
	vst1.32	{d16, d17}, [r1]!
	vst1.32	{d18, d19}, [r1]
	add	r1, r11, r0, lsl #2
	vld1.32	{d16, d17}, [r1]
	vclt.f32	q9, q8, #0
	ldr	r1, [r6, #1552]         @ 4-byte Reload
	vbic	q8, q8, q9
	add	r0, r1, r0, lsl #2
	vst1.32	{d16, d17}, [r0]
	eor	r0, r3, #28
	orrs	r0, r0, r5
	bne	LBB0_94
@ %bb.95:                               @ %exit60.i
                                        @   in Loop: Header=BB0_93 Depth=1
	adds	r10, r10, #1
	adc	lr, lr, #0
	eor	r0, r10, #88
	orrs	r0, r0, lr
	bne	LBB0_93
@ %bb.96:                               @ %exit57.i
	adr	r0, LCPI0_117
	vld1.64	{d16, d17}, [r0:128]
	sub	r0, sp, #16
	bic	r2, r0, #7
	mov	sp, r2
	sub	r0, sp, #32
	bic	r3, r0, #31
	mov	sp, r3
	sub	r0, sp, #104
	bic	r5, r0, #7
	mov	sp, r5
	mov	r4, sp
	sub	r12, r4, #4
	mov	sp, r12
	mov	r11, r1
	sub	r1, sp, #56
	bic	r10, r1, #7
	mov	sp, r10
	add	r1, r5, #16
	ldr	r0, [r6, #1232]         @ 4-byte Reload
	mov	lr, #6
	str	r0, [r2]
	strb	lr, [r4, #-4]
	mov	r0, r5
	vst1.64	{d16, d17}, [r1]
	adr	r1, LCPI0_118
	vld1.64	{d18, d19}, [r1:128]
	mov	r1, #48
	vst1.32	{d18, d19}, [r0], r1
	add	r1, r6, #192
	vst1.64	{d16, d17}, [r0]
	add	r0, r5, #32
	str	r11, [r2, #4]
	mov	r11, #0
	strb	lr, [r4, #-3]
	vst1.64	{d18, d19}, [r0]
	adr	r0, LCPI0_119
	vld1.64	{d16, d17}, [r0:128]
	add	r0, r5, #80
	strb	lr, [r4, #-2]
	vst1.64	{d16, d17}, [r0]
	adr	r0, LCPI0_120
	vld1.64	{d16, d17}, [r0:128]
	add	r0, r5, #64
	vst1.64	{d16, d17}, [r0]
	add	r0, r2, #8
	vld1.64	{d16, d17}, [r1:128]    @ 16-byte Reload
	add	r1, r10, #32
	vst1.64	{d16, d17}, [r0]
	adr	r0, LCPI0_121
	vld1.64	{d16, d17}, [r0:128]
	adr	r0, LCPI0_122
	vld1.64	{d18, d19}, [r0:128]
	adr	r0, LCPI0_123
	vld1.64	{d20, d21}, [r0:128]
	mov	r0, r3
	vst1.32	{d20, d21}, [r0]!
	vst1.64	{d18, d19}, [r0]
	mov	r0, #88
	vst1.64	{d16, d17}, [r1]
	str	r0, [r5, #96]
	str	r0, [r10, #48]
	mov	r0, r10
	str	r11, [r10, #52]
	vst1.32	{d16, d17}, [r0]!
	strb	lr, [r4, #-1]
	str	r11, [r5, #100]
	vst1.64	{d16, d17}, [r0]
	sub	sp, sp, #20
	mov	r0, #7
	stm	sp, {r5, r12}
	mov	r1, #0
	str	r0, [sp, #8]
	mov	r0, #4
	str	r11, [sp, #12]
	str	r10, [sp, #16]
	bl	_nnc_aten_conv2d
	add	sp, sp, #20
	ldr	r10, [r6, #220]         @ 4-byte Reload
	mov	lr, #0
	ldr	r12, [r6, #1232]        @ 4-byte Reload
	b	LBB0_106
	.p2align	4
@ %bb.97:
	.data_region
LCPI0_117:
	.long	28                      @ 0x1c
	.long	0                       @ 0x0
	.long	28                      @ 0x1c
	.long	0                       @ 0x0
	.p2align	4
@ %bb.98:
LCPI0_118:
	.long	1                       @ 0x1
	.long	0                       @ 0x0
	.long	88                      @ 0x58
	.long	0                       @ 0x0
	.p2align	4
@ %bb.99:
LCPI0_119:
	.long	3                       @ 0x3
	.long	0                       @ 0x0
	.long	3                       @ 0x3
	.long	0                       @ 0x0
	.p2align	4
@ %bb.100:
LCPI0_120:
	.long	88                      @ 0x58
	.long	0                       @ 0x0
	.long	1                       @ 0x1
	.long	0                       @ 0x0
	.p2align	4
@ %bb.101:
LCPI0_121:
	.long	1                       @ 0x1
	.long	0                       @ 0x0
	.long	1                       @ 0x1
	.long	0                       @ 0x0
	.p2align	4
@ %bb.102:
LCPI0_122:
	.long	4                       @ 0x4
	.long	0                       @ 0x0
	.long	1                       @ 0x1
	.long	0                       @ 0x0
	.p2align	4
@ %bb.103:
LCPI0_123:
	.long	4                       @ 0x4
	.long	0                       @ 0x0
	.long	4                       @ 0x4
	.long	0                       @ 0x0
	.p2align	4
@ %bb.104:
LCPI0_124:
	.long	1                       @ 0x1
	.long	0                       @ 0x0
	.long	24                      @ 0x18
	.long	0                       @ 0x0
	.p2align	4
@ %bb.105:
LCPI0_125:
	.long	24                      @ 0x18
	.long	0                       @ 0x0
	.long	88                      @ 0x58
	.long	0                       @ 0x0
	.p2align	2
LBB0_106:                               @ %cond67.preheader.i
                                        @ =>This Loop Header: Depth=1
                                        @     Child Loop BB0_107 Depth 2
	.end_data_region
	mov	r1, #784
	mov	r3, #0
	umull	r2, r0, r11, r1
	mov	r5, #0
LBB0_107:                               @ %cond70.preheader.i
                                        @   Parent Loop BB0_106 Depth=1
                                        @ =>  This Inner Loop Header: Depth=2
	rsb	r0, r3, r3, lsl #3
	add	r0, r2, r0, lsl #2
	add	r4, r12, r0, lsl #2
	vld1.32	{d16, d17}, [r4]!
	vclt.f32	q10, q8, #0
	vld1.32	{d18, d19}, [r4]
	vbic	q8, q8, q10
	add	r4, r10, r0, lsl #2
	vclt.f32	q10, q9, #0
	vbic	q9, q9, q10
	vst1.32	{d16, d17}, [r4]!
	vst1.32	{d18, d19}, [r4]
	add	r4, r0, #8
	add	r1, r12, r4, lsl #2
	vld1.32	{d16, d17}, [r1]!
	vclt.f32	q10, q8, #0
	vld1.32	{d18, d19}, [r1]
	vbic	q8, q8, q10
	add	r1, r10, r4, lsl #2
	vclt.f32	q10, q9, #0
	vbic	q9, q9, q10
	vst1.32	{d16, d17}, [r1]!
	vst1.32	{d18, d19}, [r1]
	add	r1, r0, #16
	add	r0, r0, #24
	add	r4, r12, r1, lsl #2
	add	r1, r10, r1, lsl #2
	vld1.32	{d16, d17}, [r4]!
	vclt.f32	q10, q8, #0
	vld1.32	{d18, d19}, [r4]
	vbic	q8, q8, q10
	vclt.f32	q10, q9, #0
	vbic	q9, q9, q10
	vst1.32	{d16, d17}, [r1]!
	vst1.32	{d18, d19}, [r1]
	add	r1, r12, r0, lsl #2
	add	r0, r10, r0, lsl #2
	vld1.32	{d16, d17}, [r1]
	vclt.f32	q9, q8, #0
	vbic	q8, q8, q9
	vst1.32	{d16, d17}, [r0]
	orr	r0, r3, #1
	adds	r3, r3, #2
	rsb	r0, r0, r0, lsl #3
	adc	r5, r5, #0
	add	r0, r2, r0, lsl #2
	add	r1, r12, r0, lsl #2
	vld1.32	{d16, d17}, [r1]!
	vclt.f32	q10, q8, #0
	vld1.32	{d18, d19}, [r1]
	vbic	q8, q8, q10
	add	r1, r10, r0, lsl #2
	vclt.f32	q10, q9, #0
	vbic	q9, q9, q10
	vst1.32	{d16, d17}, [r1]!
	vst1.32	{d18, d19}, [r1]
	add	r1, r0, #8
	add	r4, r12, r1, lsl #2
	add	r1, r10, r1, lsl #2
	vld1.32	{d16, d17}, [r4]!
	vclt.f32	q10, q8, #0
	vld1.32	{d18, d19}, [r4]
	vbic	q8, q8, q10
	vclt.f32	q10, q9, #0
	vbic	q9, q9, q10
	vst1.32	{d16, d17}, [r1]!
	vst1.32	{d18, d19}, [r1]
	add	r1, r0, #16
	add	r0, r0, #24
	add	r4, r12, r1, lsl #2
	add	r1, r10, r1, lsl #2
	vld1.32	{d16, d17}, [r4]!
	vclt.f32	q10, q8, #0
	vld1.32	{d18, d19}, [r4]
	vbic	q8, q8, q10
	vclt.f32	q10, q9, #0
	vbic	q9, q9, q10
	vst1.32	{d16, d17}, [r1]!
	vst1.32	{d18, d19}, [r1]
	add	r1, r12, r0, lsl #2
	add	r0, r10, r0, lsl #2
	vld1.32	{d16, d17}, [r1]
	vclt.f32	q9, q8, #0
	vbic	q8, q8, q9
	vst1.32	{d16, d17}, [r0]
	eor	r0, r3, #28
	orrs	r0, r0, r5
	bne	LBB0_107
@ %bb.108:                              @ %exit69.i
                                        @   in Loop: Header=BB0_106 Depth=1
	adds	r11, r11, #1
	adc	lr, lr, #0
	eor	r0, r11, #88
	orrs	r0, r0, lr
	bne	LBB0_106
@ %bb.109:                              @ %exit66.i
	adr	r0, LCPI0_117
	vld1.64	{d16, d17}, [r0:128]
	sub	r0, sp, #16
	bic	r2, r0, #7
	mov	sp, r2
	sub	r0, sp, #32
	bic	r12, r0, #31
	mov	sp, r12
	sub	r0, sp, #104
	bic	r5, r0, #7
	mov	sp, r5
	mov	r4, sp
	sub	r11, r4, #4
	mov	sp, r11
	sub	r1, sp, #56
	mov	r3, r10
	bic	r10, r1, #15
	mov	sp, r10
	add	r1, r5, #16
	ldr	r0, [r6, #1376]         @ 4-byte Reload
	mov	lr, #6
	str	r0, [r2]
	strb	lr, [r4, #-4]
	mov	r0, r5
	vst1.64	{d16, d17}, [r1]
	adr	r1, LCPI0_124
	vmov.i32	q11, #0x0
	vld1.64	{d18, d19}, [r1:128]
	mov	r1, #48
	vst1.32	{d18, d19}, [r0], r1
	add	r1, r6, #224
	str	r3, [r2, #4]
	strb	lr, [r4, #-3]
	vst1.64	{d16, d17}, [r0]
	adr	r0, LCPI0_118
	vld1.64	{d16, d17}, [r0:128]
	add	r0, r5, #32
	vst1.64	{d16, d17}, [r0]
	adr	r0, LCPI0_121
	vld1.64	{d16, d17}, [r0:128]
	add	r0, r5, #80
	strb	lr, [r4, #-2]
	vst1.64	{d16, d17}, [r0]
	adr	r0, LCPI0_125
	vld1.64	{d18, d19}, [r0:128]
	add	r0, r5, #64
	vst1.64	{d18, d19}, [r0]
	add	r0, r2, #8
	vld1.64	{d18, d19}, [r1:128]    @ 16-byte Reload
	vst1.64	{d18, d19}, [r0]
	adr	r0, LCPI0_122
	vld1.64	{d18, d19}, [r0:128]
	adr	r0, LCPI0_123
	vld1.64	{d20, d21}, [r0:128]
	mov	r0, r12
	vst1.32	{d20, d21}, [r0]!
	vst1.64	{d18, d19}, [r0]
	mov	r0, #24
	str	r0, [r5, #96]
	add	r0, r10, #32
	strb	lr, [r4, #-1]
	mov	r4, #0
	vst1.64	{d16, d17}, [r0:128]
	mov	r0, #1
	str	r0, [r10, #48]
	mov	r0, r10
	str	r4, [r10, #52]
	vst1.64	{d16, d17}, [r0:128]!
	str	r4, [r5, #100]
	vst1.64	{d22, d23}, [r0:128]
	sub	sp, sp, #20
	mov	r0, #7
	add	r1, sp, #8
	stm	sp, {r5, r11}
	mov	r3, r12
	stm	r1, {r0, r4, r10}
	mov	r0, #4
	mov	r1, #0
	bl	_nnc_aten_conv2d
	ldr	r12, [r6, #1376]        @ 4-byte Reload
	add	sp, sp, #20
	ldr	r2, [r6, #1520]         @ 4-byte Reload
	mov	r1, #0
	ldr	r3, [r6, #1392]         @ 4-byte Reload
	ldr	r5, [r6, #1520]         @ 4-byte Reload
LBB0_110:                               @ %cond76.preheader.i
                                        @ =>This Loop Header: Depth=1
                                        @     Child Loop BB0_111 Depth 2
	str	r1, [r6, #1552]         @ 4-byte Spill
	mov	r1, #784
	umull	r10, r0, r4, r1
	mov	lr, #0
	mov	r11, #0
	str	r4, [r6, #1568]         @ 4-byte Spill
LBB0_111:                               @ %cond79.preheader.i
                                        @   Parent Loop BB0_110 Depth=1
                                        @ =>  This Inner Loop Header: Depth=2
	rsb	r0, lr, lr, lsl #3
	add	r0, r10, r0, lsl #2
	add	r4, r12, r0, lsl #2
	add	r1, r3, r0, lsl #2
	vld1.32	{d18, d19}, [r1]!
	vld1.32	{d16, d17}, [r4]!
	vadd.f32	q8, q9, q8
	vld1.32	{d20, d21}, [r1]
	add	r1, r2, r0, lsl #2
	vld1.32	{d18, d19}, [r4]
	vst1.32	{d16, d17}, [r1]!
	vadd.f32	q8, q10, q9
	vst1.32	{d16, d17}, [r1]
	add	r1, r0, #8
	add	r4, r12, r1, lsl #2
	add	r2, r3, r1, lsl #2
	vld1.32	{d18, d19}, [r2]!
	vld1.32	{d16, d17}, [r4]!
	vadd.f32	q8, q9, q8
	ldr	r12, [r6, #1520]        @ 4-byte Reload
	vld1.32	{d18, d19}, [r4]
	add	r1, r12, r1, lsl #2
	vld1.32	{d20, d21}, [r2]
	vst1.32	{d16, d17}, [r1]!
	vadd.f32	q8, q10, q9
	ldr	r12, [r6, #1376]        @ 4-byte Reload
	ldr	r3, [r6, #1392]         @ 4-byte Reload
	vst1.32	{d16, d17}, [r1]
	add	r1, r0, #16
	add	r0, r0, #24
	add	r2, r12, r1, lsl #2
	add	r4, r3, r1, lsl #2
	vld1.32	{d18, d19}, [r4]!
	add	r1, r5, r1, lsl #2
	vld1.32	{d16, d17}, [r2]!
	vadd.f32	q8, q9, q8
	vld1.32	{d18, d19}, [r2]
	vld1.32	{d20, d21}, [r4]
	vst1.32	{d16, d17}, [r1]!
	vadd.f32	q8, q10, q9
	vst1.32	{d16, d17}, [r1]
	add	r1, r12, r0, lsl #2
	vld1.32	{d16, d17}, [r1]
	add	r1, r3, r0, lsl #2
	vld1.32	{d18, d19}, [r1]
	vadd.f32	q8, q9, q8
	ldr	r1, [r6, #1520]         @ 4-byte Reload
	add	r0, r1, r0, lsl #2
	vst1.32	{d16, d17}, [r0]
	orr	r0, lr, #1
	adds	lr, lr, #2
	rsb	r0, r0, r0, lsl #3
	adc	r11, r11, #0
	add	r0, r10, r0, lsl #2
	add	r1, r12, r0, lsl #2
	add	r2, r3, r0, lsl #2
	vld1.32	{d18, d19}, [r2]!
	vld1.32	{d16, d17}, [r1]!
	vadd.f32	q8, q9, q8
	vld1.32	{d18, d19}, [r1]
	vld1.32	{d20, d21}, [r2]
	vadd.f32	q9, q10, q9
	ldr	r1, [r6, #1520]         @ 4-byte Reload
	add	r1, r1, r0, lsl #2
	vst1.32	{d16, d17}, [r1]!
	vst1.32	{d18, d19}, [r1]
	add	r1, r0, #8
	add	r2, r12, r1, lsl #2
	add	r4, r3, r1, lsl #2
	vld1.32	{d18, d19}, [r4]!
	vld1.32	{d16, d17}, [r2]!
	vadd.f32	q8, q9, q8
	vld1.32	{d18, d19}, [r2]
	vld1.32	{d20, d21}, [r4]
	vadd.f32	q9, q10, q9
	ldr	r2, [r6, #1520]         @ 4-byte Reload
	add	r1, r2, r1, lsl #2
	vst1.32	{d16, d17}, [r1]!
	vst1.32	{d18, d19}, [r1]
	add	r1, r0, #16
	add	r0, r0, #24
	add	r2, r12, r1, lsl #2
	add	r4, r3, r1, lsl #2
	vld1.32	{d18, d19}, [r4]!
	vld1.32	{d16, d17}, [r2]!
	vadd.f32	q8, q9, q8
	vld1.32	{d18, d19}, [r2]
	vld1.32	{d20, d21}, [r4]
	vadd.f32	q9, q10, q9
	ldr	r2, [r6, #1520]         @ 4-byte Reload
	add	r1, r2, r1, lsl #2
	vst1.32	{d16, d17}, [r1]!
	vst1.32	{d18, d19}, [r1]
	add	r1, r12, r0, lsl #2
	vld1.32	{d16, d17}, [r1]
	add	r1, r3, r0, lsl #2
	add	r0, r2, r0, lsl #2
	vld1.32	{d18, d19}, [r1]
	vadd.f32	q8, q9, q8
	vst1.32	{d16, d17}, [r0]
	eor	r0, lr, #28
	orrs	r0, r0, r11
	bne	LBB0_111
@ %bb.112:                              @ %exit78.i
                                        @   in Loop: Header=BB0_110 Depth=1
	ldr	r4, [r6, #1568]         @ 4-byte Reload
	ldr	r1, [r6, #1552]         @ 4-byte Reload
	adds	r4, r4, #1
	adc	r1, r1, #0
	eor	r0, r4, #24
	orrs	r0, r0, r1
	bne	LBB0_110
@ %bb.113:                              @ %exit75.i
	adr	r0, LCPI0_126
	mov	r11, r2
	vld1.64	{d16, d17}, [r0:128]
	sub	r0, sp, #16
	bic	r2, r0, #7
	mov	sp, r2
	sub	r0, sp, #32
	bic	r3, r0, #31
	mov	sp, r3
	sub	r0, sp, #104
	bic	r5, r0, #7
	mov	sp, r5
	mov	r4, sp
	sub	r0, r4, #4
	str	r0, [r6, #1568]         @ 4-byte Spill
	mov	sp, r0
	sub	r1, sp, #56
	bic	r10, r1, #15
	mov	sp, r10
	add	r1, r5, #16
	ldr	r12, [r6, #268]         @ 4-byte Reload
	mov	lr, #6
	str	r12, [r2]
	strb	lr, [r4, #-4]
	mov	r0, r5
	vst1.64	{d16, d17}, [r1]
	adr	r1, LCPI0_127
	vmov.i32	q11, #0x0
	vld1.64	{d18, d19}, [r1:128]
	mov	r1, #48
	vst1.32	{d18, d19}, [r0], r1
	add	r1, r6, #240
	str	r11, [r2, #4]
	mov	r11, #0
	strb	lr, [r4, #-3]
	vst1.64	{d16, d17}, [r0]
	adr	r0, LCPI0_128
	vld1.64	{d16, d17}, [r0:128]
	add	r0, r5, #32
	vst1.64	{d16, d17}, [r0]
	adr	r0, LCPI0_129
	vld1.64	{d16, d17}, [r0:128]
	add	r0, r5, #80
	strb	lr, [r4, #-2]
	vst1.64	{d16, d17}, [r0]
	adr	r0, LCPI0_130
	vld1.64	{d18, d19}, [r0:128]
	add	r0, r5, #64
	vst1.64	{d18, d19}, [r0]
	add	r0, r2, #8
	vld1.64	{d18, d19}, [r1:128]    @ 16-byte Reload
	vst1.64	{d18, d19}, [r0]
	adr	r0, LCPI0_131
	vld1.64	{d18, d19}, [r0:128]
	adr	r0, LCPI0_132
	vld1.64	{d20, d21}, [r0:128]
	mov	r0, r3
	vst1.32	{d20, d21}, [r0]!
	vst1.64	{d18, d19}, [r0]
	mov	r0, #96
	str	r0, [r5, #96]
	add	r0, r10, #32
	strb	lr, [r4, #-1]
	vst1.64	{d16, d17}, [r0:128]
	mov	r0, #1
	str	r0, [r10, #48]
	mov	r0, r10
	str	r11, [r10, #52]
	vst1.64	{d16, d17}, [r0:128]!
	str	r11, [r5, #100]
	vst1.64	{d22, d23}, [r0:128]
	sub	sp, sp, #20
	mov	r0, #7
	ldr	r1, [r6, #1568]         @ 4-byte Reload
	str	r1, [sp, #4]
	mov	r1, #0
	str	r0, [sp, #8]
	mov	r0, #4
	str	r10, [sp, #16]
	mov	r10, r12
	str	r5, [sp]
	str	r11, [sp, #12]
	bl	_nnc_aten_conv2d
	add	sp, sp, #20
	vmov.f32	q8, #3.000000e+00
	ldr	r4, [r6, #1424]         @ 4-byte Reload
	vmov.f32	q9, #6.000000e+00
	mov	r12, #784
	mov	lr, #0
	b	LBB0_125
	.p2align	4
@ %bb.114:
	.data_region
LCPI0_126:
	.long	28                      @ 0x1c
	.long	0                       @ 0x0
	.long	28                      @ 0x1c
	.long	0                       @ 0x0
	.p2align	4
@ %bb.115:
LCPI0_127:
	.long	1                       @ 0x1
	.long	0                       @ 0x0
	.long	96                      @ 0x60
	.long	0                       @ 0x0
	.p2align	4
@ %bb.116:
LCPI0_128:
	.long	1                       @ 0x1
	.long	0                       @ 0x0
	.long	24                      @ 0x18
	.long	0                       @ 0x0
	.p2align	4
@ %bb.117:
LCPI0_129:
	.long	1                       @ 0x1
	.long	0                       @ 0x0
	.long	1                       @ 0x1
	.long	0                       @ 0x0
	.p2align	4
@ %bb.118:
LCPI0_130:
	.long	96                      @ 0x60
	.long	0                       @ 0x0
	.long	24                      @ 0x18
	.long	0                       @ 0x0
	.p2align	4
@ %bb.119:
LCPI0_131:
	.long	4                       @ 0x4
	.long	0                       @ 0x0
	.long	1                       @ 0x1
	.long	0                       @ 0x0
	.p2align	4
@ %bb.120:
LCPI0_132:
	.long	4                       @ 0x4
	.long	0                       @ 0x0
	.long	4                       @ 0x4
	.long	0                       @ 0x0
	.p2align	4
@ %bb.121:
LCPI0_133:
	.long	14                      @ 0xe
	.long	0                       @ 0x0
	.long	14                      @ 0xe
	.long	0                       @ 0x0
	.p2align	4
@ %bb.122:
LCPI0_134:
	.long	5                       @ 0x5
	.long	0                       @ 0x0
	.long	5                       @ 0x5
	.long	0                       @ 0x0
	.p2align	4
@ %bb.123:
LCPI0_135:
	.long	96                      @ 0x60
	.long	0                       @ 0x0
	.long	1                       @ 0x1
	.long	0                       @ 0x0
	.p2align	4
@ %bb.124:
LCPI0_136:
	.long	2                       @ 0x2
	.long	0                       @ 0x0
	.long	2                       @ 0x2
	.long	0                       @ 0x0
	.p2align	2
LBB0_125:                               @ %cond85.preheader.i
                                        @ =>This Loop Header: Depth=1
                                        @     Child Loop BB0_126 Depth 2
	.end_data_region
	umull	r2, r0, r11, r12
	mov	r3, #0
	mov	r5, #0
LBB0_126:                               @ %cond88.preheader.i
                                        @   Parent Loop BB0_125 Depth=1
                                        @ =>  This Inner Loop Header: Depth=2
	rsb	r0, r3, r3, lsl #3
	adds	r3, r3, #1
	adc	r5, r5, #0
	add	r0, r2, r0, lsl #2
	add	r1, r10, r0, lsl #2
	vld1.32	{d20, d21}, [r1]!
	vadd.f32	q11, q10, q8
	vld1.32	{d24, d25}, [r1]
	add	r1, r4, r0, lsl #2
	vadd.f32	q13, q12, q8
	vclt.f32	q14, q11, #0
	vbic	q11, q11, q14
	vclt.f32	q14, q13, #0
	vmin.f32	q11, q11, q9
	vbic	q13, q13, q14
	vmin.f32	q13, q13, q9
	vmul.f32	q2, q10, q11
	vmul.f32	q1, q12, q13
	vdiv.f32	s3, s11, s16
	vdiv.f32	s2, s10, s16
	vdiv.f32	s1, s9, s16
	vdiv.f32	s0, s8, s16
	vdiv.f32	s11, s7, s16
	vdiv.f32	s10, s6, s16
	vdiv.f32	s9, s5, s16
	vdiv.f32	s8, s4, s16
	vst1.32	{d0, d1}, [r1]!
	vst1.32	{d4, d5}, [r1]
	add	r1, r0, #8
	add	r4, r10, r1, lsl #2
	vld1.32	{d20, d21}, [r4]!
	vadd.f32	q11, q10, q8
	vld1.32	{d24, d25}, [r4]
	vadd.f32	q13, q12, q8
	vclt.f32	q14, q11, #0
	ldr	r4, [r6, #1424]         @ 4-byte Reload
	vbic	q11, q11, q14
	vclt.f32	q14, q13, #0
	add	r1, r4, r1, lsl #2
	vmin.f32	q11, q11, q9
	vbic	q13, q13, q14
	vmin.f32	q13, q13, q9
	vmul.f32	q2, q10, q11
	vmul.f32	q1, q12, q13
	vdiv.f32	s3, s11, s16
	vdiv.f32	s2, s10, s16
	vdiv.f32	s1, s9, s16
	vdiv.f32	s0, s8, s16
	vdiv.f32	s11, s7, s16
	vdiv.f32	s10, s6, s16
	vdiv.f32	s9, s5, s16
	vdiv.f32	s8, s4, s16
	vst1.32	{d0, d1}, [r1]!
	vst1.32	{d4, d5}, [r1]
	add	r1, r0, #16
	add	r0, r0, #24
	add	r4, r10, r1, lsl #2
	vld1.32	{d20, d21}, [r4]!
	vadd.f32	q11, q10, q8
	vld1.32	{d24, d25}, [r4]
	vadd.f32	q13, q12, q8
	vclt.f32	q14, q11, #0
	ldr	r4, [r6, #1424]         @ 4-byte Reload
	vbic	q11, q11, q14
	vclt.f32	q14, q13, #0
	add	r1, r4, r1, lsl #2
	vmin.f32	q11, q11, q9
	vbic	q13, q13, q14
	vmin.f32	q13, q13, q9
	vmul.f32	q2, q10, q11
	vmul.f32	q1, q12, q13
	vdiv.f32	s3, s11, s16
	vdiv.f32	s2, s10, s16
	vdiv.f32	s1, s9, s16
	vdiv.f32	s0, s8, s16
	vdiv.f32	s11, s7, s16
	vdiv.f32	s10, s6, s16
	vdiv.f32	s9, s5, s16
	vdiv.f32	s8, s4, s16
	vst1.32	{d0, d1}, [r1]!
	vst1.32	{d4, d5}, [r1]
	add	r1, r10, r0, lsl #2
	add	r0, r4, r0, lsl #2
	vld1.32	{d20, d21}, [r1]
	vadd.f32	q11, q10, q8
	vclt.f32	q12, q11, #0
	vbic	q11, q11, q12
	vmin.f32	q11, q11, q9
	vmul.f32	q0, q10, q11
	vdiv.f32	s7, s3, s16
	vdiv.f32	s6, s2, s16
	vdiv.f32	s5, s1, s16
	vdiv.f32	s4, s0, s16
	vst1.32	{d2, d3}, [r0]
	eor	r0, r3, #28
	orrs	r0, r0, r5
	bne	LBB0_126
@ %bb.127:                              @ %exit87.i
                                        @   in Loop: Header=BB0_125 Depth=1
	adds	r11, r11, #1
	adc	lr, lr, #0
	eor	r0, r11, #96
	orrs	r0, r0, lr
	bne	LBB0_125
@ %bb.128:                              @ %exit84.i
	adr	r0, LCPI0_133
	add	lr, r6, #1568
	vld1.64	{d16, d17}, [r0:128]
	sub	r0, sp, #16
	bic	r2, r0, #7
	vst1.64	{d16, d17}, [lr:128]    @ 16-byte Spill
	mov	sp, r2
	sub	r0, sp, #32
	bic	r3, r0, #31
	mov	sp, r3
	sub	r0, sp, #104
	bic	r0, r0, #7
	mov	sp, r0
	mov	r10, r4
	mov	r4, sp
	sub	r12, r4, #4
	mov	sp, r12
	sub	r5, sp, #56
	bic	lr, r5, #7
	mov	sp, lr
	ldr	r1, [r6, #1488]         @ 4-byte Reload
	mov	r11, #6
	str	r1, [r2]
	add	r1, r0, #16
	strb	r11, [r4, #-4]
	mov	r5, #48
	vst1.64	{d16, d17}, [r1]
	adr	r1, LCPI0_127
	vld1.64	{d12, d13}, [r1:128]
	mov	r1, r0
	str	r10, [r2, #4]
	mov	r10, #0
	vst1.32	{d12, d13}, [r1], r5
	adr	r5, LCPI0_126
	vld1.64	{d16, d17}, [r5:128]
	add	r5, r6, #272
	vst1.64	{d16, d17}, [r1]
	add	r1, r0, #32
	strb	r11, [r4, #-3]
	vst1.64	{d12, d13}, [r1]
	adr	r1, LCPI0_134
	vld1.64	{d16, d17}, [r1:128]
	add	r1, r0, #80
	strb	r11, [r4, #-2]
	vst1.64	{d16, d17}, [r1]
	adr	r1, LCPI0_135
	vld1.64	{d16, d17}, [r1:128]
	add	r1, r0, #64
	vst1.64	{d16, d17}, [r1]
	add	r1, r2, #8
	vld1.64	{d16, d17}, [r5:128]    @ 16-byte Reload
	add	r5, lr, #32
	vst1.64	{d16, d17}, [r1]
	strb	r11, [r4, #-1]
	adr	r1, LCPI0_131
	vld1.64	{d16, d17}, [r1:128]
	adr	r1, LCPI0_132
	vld1.64	{d18, d19}, [r1:128]
	add	r1, r6, #1552
	vst1.64	{d18, d19}, [r1:128]    @ 16-byte Spill
	mov	r1, r3
	vst1.32	{d18, d19}, [r1]!
	vst1.64	{d16, d17}, [r1]
	adr	r1, LCPI0_129
	vld1.64	{d10, d11}, [r1:128]
	mov	r1, #96
	vst1.64	{d10, d11}, [r5]
	str	r1, [r0, #96]
	str	r10, [r0, #100]
	str	r1, [lr, #48]
	adr	r1, LCPI0_136
	vld1.64	{d16, d17}, [r1:128]
	mov	r1, lr
	vst1.32	{d16, d17}, [r1]!
	vst1.64	{d16, d17}, [r1]
	str	r10, [lr, #52]
	sub	sp, sp, #20
	stm	sp, {r0, r12}
	mov	r1, #7
	add	r0, sp, #8
	stm	r0, {r1, r10, lr}
	mov	r0, #4
	mov	r1, #0
	bl	_nnc_aten_conv2d
	add	sp, sp, #20
	sub	r0, sp, #8
	bic	r2, r0, #7
	mov	sp, r2
	sub	r0, sp, #16
	bic	r3, r0, #15
	mov	sp, r3
	sub	r0, sp, #64
	bic	r0, r0, #7
	mov	sp, r0
	mov	r1, sp
	sub	r12, r1, #4
	mov	sp, r12
	sub	r5, sp, #16
	bic	lr, r5, #15
	mov	sp, lr
	strb	r11, [r1, #-4]
	add	r5, r0, #16
	strb	r11, [r1, #-3]
	add	r1, r6, #1552
	vld1.64	{d16, d17}, [r1:128]    @ 16-byte Reload
	mov	r4, #48
	add	r1, r6, #1568
	vst1.64	{d10, d11}, [r5]
	mov	r5, r0
	vst1.32	{d12, d13}, [r5], r4
	ldr	r4, [r6, #1248]         @ 4-byte Reload
	vst1.64	{d16, d17}, [r3:128]
	vld1.64	{d16, d17}, [r1:128]    @ 16-byte Reload
	add	r1, r0, #32
	str	r4, [r2]
	ldr	r4, [r6, #1488]         @ 4-byte Reload
	str	r4, [r2, #4]
	vst1.64	{d16, d17}, [r5]
	vst1.64	{d12, d13}, [r1]
	vst1.64	{d10, d11}, [lr:128]
	sub	sp, sp, #20
	stm	sp, {r0, r12}
	mov	r1, #2
	add	r0, sp, #8
	stm	r0, {r1, r10, lr}
	mov	r0, #2
	mov	r1, #0
	bl	_nnc_aten_adaptive_avg_pool2d
	add	sp, sp, #20
	ldr	r1, [r6, #1360]         @ 4-byte Reload
	mov	r11, #0
	ldr	r10, [r6, #1248]        @ 4-byte Reload
	mov	lr, #0
LBB0_129:                               @ %body92.i
                                        @ =>This Loop Header: Depth=1
                                        @     Child Loop BB0_130 Depth 2
	vmov.f32	s0, s18
	ldr	r12, [r6, #1276]        @ 4-byte Reload
	mov	r0, #0
	mov	r3, #0
	mov	r5, #0
	str	r0, [r12, r11, lsl #2]!
LBB0_130:                               @ %body95.i
                                        @   Parent Loop BB0_129 Depth=1
                                        @ =>  This Inner Loop Header: Depth=2
	add	r4, r3, r3, lsl #1
	add	r0, r10, r3, lsl #2
	orr	r2, r3, #1
	adds	r3, r3, #6
	add	r4, r11, r4, lsl #3
	vldr	s2, [r0]
	vldr	s4, [r0, #8]
	adc	r5, r5, #0
	add	r4, r1, r4, lsl #2
	add	r1, r10, r2, lsl #2
	add	r2, r2, r2, lsl #1
	vldr	s6, [r0, #12]
	vldr	s12, [r4]
	vldr	s5, [r1]
	vldr	s8, [r0, #16]
	vmla.f32	s0, s2, s12
	vldr	s10, [r0, #20]
	add	r0, r11, r2, lsl #3
	ldr	r1, [r6, #1360]         @ 4-byte Reload
	vldr	s14, [r4, #192]
	add	r0, r1, r0, lsl #2
	vldr	s1, [r4, #288]
	vldr	s3, [r4, #384]
	vldr	s2, [r0]
	eor	r0, r3, #96
	orrs	r0, r0, r5
	vmla.f32	s0, s5, s2
	vldr	s2, [r4, #480]
	vmla.f32	s0, s4, s14
	vmla.f32	s0, s6, s1
	vmla.f32	s0, s8, s3
	vmla.f32	s0, s10, s2
	bne	LBB0_130
@ %bb.131:                              @ %exit96.i
                                        @   in Loop: Header=BB0_129 Depth=1
	adds	r11, r11, #1
	vstr	s0, [r12]
	adc	lr, lr, #0
	eor	r0, r11, #24
	orrs	r0, r0, lr
	bne	LBB0_129
@ %bb.132:                              @ %body98.preheader.i
	ldr	r0, [r6, #1276]         @ 4-byte Reload
	add	lr, r6, #1568
	vldr	s24, LCPI0_137
	mov	r11, #272
	ldr	r10, [r6, #1076]        @ 4-byte Reload
	orr	r11, r11, #8192
	vldr	s0, [r0, #92]
	mov	r4, #0
	vmax.f32	d16, d0, d12
	vldr	s2, [r0, #88]
	vldr	s4, [r0, #84]
	vldr	s6, [r0, #80]
	vldr	s0, [r0, #64]
	vldr	s8, [r0]
	vdup.32	q8, d16[0]
	vmax.f32	d4, d4, d12
	vst1.64	{d16, d17}, [lr:128]    @ 16-byte Spill
	vmax.f32	d16, d1, d12
	vmax.f32	d17, d2, d12
	add	lr, r6, #1552
	vldr	s2, [r0, #76]
	vldr	s4, [r0, #72]
	vdup.32	q2, d4[0]
	vdup.32	q9, d16[0]
	vdup.32	q8, d17[0]
	vst1.64	{d18, d19}, [lr:128]    @ 16-byte Spill
	add	lr, r6, #1536
	vst1.64	{d16, d17}, [lr:128]    @ 16-byte Spill
	vmax.f32	d16, d3, d12
	vmax.f32	d17, d1, d12
	add	lr, r6, #1520
	vldr	s2, [r0, #68]
	vldr	s6, [r0, #60]
	vdup.32	q9, d16[0]
	vdup.32	q8, d17[0]
	vst1.64	{d18, d19}, [lr:128]    @ 16-byte Spill
	add	lr, r6, #1504
	vst1.64	{d16, d17}, [lr:128]    @ 16-byte Spill
	vmax.f32	d16, d2, d12
	vmax.f32	d17, d1, d12
	add	lr, r6, #1424
	vldr	s4, [r0, #4]
	vldr	s2, [r0, #12]
	vmax.f32	d2, d2, d12
	vmax.f32	d30, d1, d12
	vdup.32	q9, d16[0]
	vdup.32	q8, d17[0]
	vst1.64	{d18, d19}, [lr:128]    @ 16-byte Spill
	add	lr, r6, #1408
	vst1.64	{d16, d17}, [lr:128]    @ 16-byte Spill
	vmax.f32	d16, d0, d12
	vmax.f32	d17, d3, d12
	add	lr, r6, #1392
	vldr	s0, [r0, #56]
	vdup.32	q15, d30[0]
	vdup.32	q9, d16[0]
	vdup.32	q8, d17[0]
	vst1.64	{d18, d19}, [lr:128]    @ 16-byte Spill
	add	lr, r6, #1376
	vst1.64	{d16, d17}, [lr:128]    @ 16-byte Spill
	vmax.f32	d16, d0, d12
	add	lr, r6, #1360
	vldr	s0, [r0, #52]
	vdup.32	q1, d2[0]
	vdup.32	q8, d16[0]
	vst1.64	{d16, d17}, [lr:128]    @ 16-byte Spill
	vmax.f32	d16, d0, d12
	add	lr, r6, #1328
	vldr	s0, [r0, #48]
	vdup.32	q8, d16[0]
	vst1.64	{d16, d17}, [lr:128]    @ 16-byte Spill
	vmax.f32	d16, d0, d12
	add	lr, r6, #1312
	vldr	s0, [r0, #44]
	vdup.32	q8, d16[0]
	vst1.64	{d16, d17}, [lr:128]    @ 16-byte Spill
	vmax.f32	d16, d0, d12
	add	lr, r6, #1248
	vldr	s0, [r0, #40]
	vdup.32	q8, d16[0]
	vst1.64	{d16, d17}, [lr:128]    @ 16-byte Spill
	vmax.f32	d16, d0, d12
	add	lr, r6, #1232
	vldr	s0, [r0, #36]
	vmax.f32	d18, d0, d12
	vldr	s0, [r0, #32]
	vmax.f32	d20, d0, d12
	vldr	s0, [r0, #28]
	vmax.f32	d22, d0, d12
	vldr	s0, [r0, #24]
	vmax.f32	d24, d0, d12
	vldr	s0, [r0, #20]
	vmax.f32	d26, d0, d12
	vldr	s0, [r0, #16]
	vmax.f32	d28, d0, d12
	vldr	s0, [r0, #8]
	vmax.f32	d0, d0, d12
	vdup.32	q8, d16[0]
	mov	r0, #0
	vdup.32	q10, d20[0]
	vst1.64	{d16, d17}, [lr:128]    @ 16-byte Spill
	add	lr, r6, #1216
	vdup.32	q8, d18[0]
	vdup.32	q11, d22[0]
	vdup.32	q12, d24[0]
	vdup.32	q13, d26[0]
	vdup.32	q14, d28[0]
	vdup.32	q0, d0[0]
	vst1.64	{d16, d17}, [lr:128]    @ 16-byte Spill
	b	LBB0_134
	.p2align	2
@ %bb.133:
	.data_region
LCPI0_137:
	.long	0                       @ float 0
	.p2align	2
LBB0_134:                               @ %vector.body995.i
                                        @ =>This Inner Loop Header: Depth=1
	.end_data_region                @ 4-byte Reload
	ldr	r1, [r6, #1356]
	vmov.i32	q8, #0x0
	add	r3, r10, r0, lsl #2
	mov	r2, #656
	add	lr, r1, r0, lsl #2
	add	r5, r3, #16
	vmov.i32	q3, #0x0
	orr	r2, r2, #8192
	mov	r1, lr
	add	r12, r3, #400
	vst1.32	{d16, d17}, [r1]!
	adds	r0, r0, #8
	adc	r4, r4, #0
	vst1.32	{d16, d17}, [r1]
	vld1.32	{d10, d11}, [r5]
	mov	r5, r3
	vld1.32	{d16, d17}, [r5], r2
	vmla.f32	q3, q2, q5
	add	r2, r3, #384
	vmov.i32	q5, #0x0
	vmla.f32	q5, q2, q8
	vld1.32	{d16, d17}, [r12]
	vmla.f32	q3, q1, q8
	vld1.32	{d16, d17}, [r2]
	add	r2, r3, #784
	vmla.f32	q5, q1, q8
	vld1.32	{d16, d17}, [r2]
	add	r2, r3, #768
	vmla.f32	q3, q0, q8
	vld1.32	{d16, d17}, [r2]
	add	r2, r3, #1168
	vmla.f32	q5, q0, q8
	vld1.32	{d16, d17}, [r2]
	add	r2, r3, #1152
	vmla.f32	q3, q15, q8
	vld1.32	{d16, d17}, [r2]
	add	r2, r3, #1552
	vmla.f32	q5, q15, q8
	vld1.32	{d16, d17}, [r2]
	add	r2, r3, #1536
	vmla.f32	q3, q14, q8
	vld1.32	{d16, d17}, [r2]
	add	r2, r3, #1936
	vmla.f32	q5, q14, q8
	vld1.32	{d16, d17}, [r2]
	add	r2, r3, #1920
	vmla.f32	q3, q13, q8
	vld1.32	{d16, d17}, [r2]
	add	r2, r3, #2320
	vmla.f32	q5, q13, q8
	vld1.32	{d16, d17}, [r2]
	add	r2, r3, #2304
	vmla.f32	q3, q12, q8
	vld1.32	{d16, d17}, [r2]
	add	r2, r3, #2704
	vmla.f32	q5, q12, q8
	vld1.32	{d16, d17}, [r2]
	add	r2, r3, #2688
	vmla.f32	q3, q11, q8
	vld1.32	{d16, d17}, [r2]
	add	r2, r3, #3088
	vmla.f32	q5, q11, q8
	vld1.32	{d16, d17}, [r2]
	add	r2, r3, #3072
	vmla.f32	q3, q10, q8
	vld1.32	{d16, d17}, [r2]
	add	r2, r3, #3472
	vmla.f32	q5, q10, q8
	vld1.32	{d16, d17}, [r2]
	add	r2, r6, #1216
	vld1.64	{d18, d19}, [r2:128]    @ 16-byte Reload
	add	r2, r3, #3456
	vmla.f32	q3, q9, q8
	vld1.32	{d16, d17}, [r2]
	add	r2, r3, #3856
	vmla.f32	q5, q9, q8
	vld1.32	{d16, d17}, [r2]
	add	r2, r6, #1232
	vld1.64	{d18, d19}, [r2:128]    @ 16-byte Reload
	add	r2, r3, #3840
	vmla.f32	q3, q9, q8
	vld1.32	{d16, d17}, [r2]
	mov	r2, #144
	orr	r2, r2, #4096
	vmla.f32	q5, q9, q8
	add	r2, r3, r2
	vld1.32	{d16, d17}, [r2]
	add	r2, r6, #1248
	vld1.64	{d18, d19}, [r2:128]    @ 16-byte Reload
	add	r2, r3, #4224
	vmla.f32	q3, q9, q8
	vld1.32	{d16, d17}, [r2]
	mov	r2, #528
	orr	r2, r2, #4096
	vmla.f32	q5, q9, q8
	add	r2, r3, r2
	vld1.32	{d16, d17}, [r2]
	add	r2, r6, #1312
	vld1.64	{d18, d19}, [r2:128]    @ 16-byte Reload
	add	r2, r3, #4608
	vmla.f32	q3, q9, q8
	vld1.32	{d16, d17}, [r2]
	mov	r2, #912
	orr	r2, r2, #4096
	vmla.f32	q5, q9, q8
	add	r2, r3, r2
	vld1.32	{d16, d17}, [r2]
	add	r2, r6, #1328
	vld1.64	{d18, d19}, [r2:128]    @ 16-byte Reload
	add	r2, r3, #4992
	vmla.f32	q3, q9, q8
	vld1.32	{d16, d17}, [r2]
	mov	r2, #1296
	orr	r2, r2, #4096
	vmla.f32	q5, q9, q8
	add	r2, r3, r2
	vld1.32	{d16, d17}, [r2]
	add	r2, r6, #1360
	vld1.64	{d18, d19}, [r2:128]    @ 16-byte Reload
	add	r2, r3, #5376
	vmla.f32	q3, q9, q8
	vld1.32	{d16, d17}, [r2]
	mov	r2, #1680
	orr	r2, r2, #4096
	vmla.f32	q5, q9, q8
	add	r2, r3, r2
	vld1.32	{d16, d17}, [r2]
	add	r2, r6, #1376
	vld1.64	{d18, d19}, [r2:128]    @ 16-byte Reload
	add	r2, r3, #5760
	vmla.f32	q3, q9, q8
	vld1.32	{d16, d17}, [r2]
	mov	r2, #2064
	orr	r2, r2, #4096
	vmla.f32	q5, q9, q8
	add	r2, r3, r2
	vld1.32	{d16, d17}, [r2]
	add	r2, r6, #1392
	vld1.64	{d18, d19}, [r2:128]    @ 16-byte Reload
	add	r2, r3, #6144
	vmla.f32	q3, q9, q8
	vld1.32	{d16, d17}, [r2]
	mov	r2, #2448
	orr	r2, r2, #4096
	vmla.f32	q5, q9, q8
	add	r2, r3, r2
	vld1.32	{d16, d17}, [r2]
	add	r2, r6, #1408
	vld1.64	{d18, d19}, [r2:128]    @ 16-byte Reload
	add	r2, r3, #6528
	vmla.f32	q3, q9, q8
	vld1.32	{d16, d17}, [r2]
	mov	r2, #2832
	orr	r2, r2, #4096
	vmla.f32	q5, q9, q8
	add	r2, r3, r2
	vld1.32	{d16, d17}, [r2]
	add	r2, r6, #1424
	vld1.64	{d18, d19}, [r2:128]    @ 16-byte Reload
	add	r2, r3, #6912
	vmla.f32	q3, q9, q8
	vld1.32	{d16, d17}, [r2]
	mov	r2, #3216
	orr	r2, r2, #4096
	vmla.f32	q5, q9, q8
	add	r2, r3, r2
	vld1.32	{d16, d17}, [r2]
	add	r2, r6, #1504
	vld1.64	{d18, d19}, [r2:128]    @ 16-byte Reload
	add	r2, r3, #7296
	vmla.f32	q3, q9, q8
	vld1.32	{d16, d17}, [r2]
	mov	r2, #3600
	orr	r2, r2, #4096
	vmla.f32	q5, q9, q8
	add	r2, r3, r2
	vld1.32	{d16, d17}, [r2]
	add	r2, r6, #1520
	vld1.64	{d18, d19}, [r2:128]    @ 16-byte Reload
	add	r2, r3, #7680
	vmla.f32	q3, q9, q8
	vld1.32	{d16, d17}, [r2]
	mov	r2, #3984
	orr	r2, r2, #4096
	vmla.f32	q5, q9, q8
	add	r2, r3, r2
	vld1.32	{d16, d17}, [r2]
	add	r2, r6, #1536
	vld1.64	{d18, d19}, [r2:128]    @ 16-byte Reload
	add	r2, r3, #8064
	vmla.f32	q3, q9, q8
	vld1.32	{d16, d17}, [r2]
	add	r2, r3, r11
	vmla.f32	q5, q9, q8
	vld1.32	{d16, d17}, [r2]
	add	r2, r6, #1552
	vld1.64	{d18, d19}, [r2:128]    @ 16-byte Reload
	add	r2, r3, #8448
	vmla.f32	q3, q9, q8
	vld1.32	{d16, d17}, [r2]
	add	r2, r6, #1568
	vmla.f32	q5, q9, q8
	vld1.64	{d18, d19}, [r2:128]    @ 16-byte Reload
	add	r2, r3, #8832
	vld1.32	{d16, d17}, [r5]
	vmla.f32	q3, q9, q8
	vld1.32	{d16, d17}, [r2]
	vmla.f32	q5, q9, q8
	vst1.32	{d6, d7}, [r1]
	eor	r1, r0, #96
	orrs	r1, r1, r4
	vst1.32	{d10, d11}, [lr]
	bne	LBB0_134
@ %bb.135:                              @ %cond106.preheader.i.preheader
	vmov.f32	q8, #3.000000e+00
	ldr	r11, [r6, #300]         @ 4-byte Reload
	vmov.f32	q9, #6.000000e+00
	ldr	r0, [r6, #1356]         @ 4-byte Reload
	mov	r10, #0
	mov	r12, #196
	mov	lr, #0
LBB0_136:                               @ %cond106.preheader.i
                                        @ =>This Loop Header: Depth=1
                                        @     Child Loop BB0_137 Depth 2
	add	r1, r0, r10, lsl #2
	mov	r5, #0
	mov	r4, #0
	vldr	s0, [r1]
	umull	r3, r1, r10, r12
	vadd.f32	s2, s0, s28
	vcmpe.f32	s2, #0
	vmrs	APSR_nzcv, fpscr
	vdiv.f32	s0, s2, s16
	vmax.f32	d1, d1, d12
	vmovmi.f32	s0, s24
	vcmpe.f32	s2, s16
	vmrs	APSR_nzcv, fpscr
	vmovgt.f32	s0, s30
	vdup.32	q10, d0[0]
LBB0_137:                               @ %cond109.preheader.i
                                        @   Parent Loop BB0_136 Depth=1
                                        @ =>  This Inner Loop Header: Depth=2
	rsb	r1, r5, r5, lsl #3
	ldr	r0, [r6, #1488]         @ 4-byte Reload
	adds	r5, r5, #1
	add	r1, r3, r1, lsl #1
	adc	r4, r4, #0
	add	r2, r0, r1, lsl #2
	ldr	r0, [r6, #1488]         @ 4-byte Reload
	vld1.32	{d22, d23}, [r2]!
	vmul.f32	q11, q10, q11
	vld1.32	{d24, d25}, [r2]
	add	r2, r11, r1, lsl #2
	vmul.f32	q12, q10, q12
	vadd.f32	q13, q11, q8
	vadd.f32	q14, q12, q8
	vclt.f32	q15, q13, #0
	vbic	q13, q13, q15
	vclt.f32	q15, q14, #0
	vmin.f32	q13, q13, q9
	vbic	q14, q14, q15
	vmin.f32	q14, q14, q9
	vmul.f32	q3, q11, q13
	vmul.f32	q2, q12, q14
	vdiv.f32	s7, s15, s16
	vdiv.f32	s6, s14, s16
	vdiv.f32	s5, s13, s16
	vdiv.f32	s4, s12, s16
	vdiv.f32	s15, s11, s16
	vdiv.f32	s14, s10, s16
	vdiv.f32	s13, s9, s16
	vdiv.f32	s12, s8, s16
	vst1.32	{d2, d3}, [r2]!
	vst1.32	{d6, d7}, [r2]
	add	r2, r1, #8
	add	r0, r0, r2, lsl #2
	vld1.32	{d22, d23}, [r0]
	add	r0, r11, r2, lsl #2
	vmul.f32	q11, q10, q11
	ldr	r2, [r6, #1488]         @ 4-byte Reload
	vadd.f32	q12, q11, q8
	vclt.f32	q13, q12, #0
	vbic	q12, q12, q13
	vmin.f32	q12, q12, q9
	vmul.f32	q1, q11, q12
	vdiv.f32	s11, s7, s16
	vdiv.f32	s10, s6, s16
	vdiv.f32	s9, s5, s16
	vdiv.f32	s8, s4, s16
	vst1.32	{d4, d5}, [r0]
	add	r0, r1, #12
	add	r2, r2, r0, lsl #2
	add	r0, r11, r0, lsl #2
	vldr	s2, [r2]
	vmul.f32	s2, s0, s2
	vadd.f32	s4, s2, s28
	vmax.f32	d22, d2, d12
	vmin.f32	d2, d22, d8
	vmul.f32	s2, s2, s4
	vdiv.f32	s2, s2, s16
	vstr	s2, [r0]
	add	r0, r1, #13
	ldr	r1, [r6, #1488]         @ 4-byte Reload
	add	r1, r1, r0, lsl #2
	add	r0, r11, r0, lsl #2
	vldr	s2, [r1]
	vmul.f32	s2, s0, s2
	vadd.f32	s4, s2, s28
	vmax.f32	d22, d2, d12
	vmin.f32	d2, d22, d8
	vmul.f32	s2, s2, s4
	vdiv.f32	s2, s2, s16
	vstr	s2, [r0]
	eor	r0, r5, #14
	orrs	r0, r0, r4
	bne	LBB0_137
@ %bb.138:                              @ %exit108.i
                                        @   in Loop: Header=BB0_136 Depth=1
	adds	r10, r10, #1
	adc	lr, lr, #0
	eor	r0, r10, #96
	orrs	r0, r0, lr
	ldr	r0, [r6, #1356]         @ 4-byte Reload
	bne	LBB0_136
@ %bb.139:                              @ %exit105.i
	adr	r0, LCPI0_138
	add	lr, r6, #1552
	vld1.64	{d16, d17}, [r0:128]
	sub	r0, sp, #16
	bic	r2, r0, #7
	vst1.64	{d16, d17}, [lr:128]    @ 16-byte Spill
	mov	sp, r2
	sub	r0, sp, #32
	bic	r3, r0, #31
	mov	sp, r3
	sub	r0, sp, #104
	bic	r0, r0, #7
	mov	sp, r0
	mov	r4, sp
	sub	r12, r4, #4
	mov	sp, r12
	sub	r5, sp, #56
	bic	r5, r5, #15
	mov	sp, r5
	ldr	r1, [r6, #1196]         @ 4-byte Reload
	mov	lr, r11
	str	r1, [r2]
	add	r1, r0, #16
	mov	r11, #6
	mov	r10, #48
	strb	r11, [r4, #-4]
	vst1.64	{d16, d17}, [r1]
	adr	r1, LCPI0_139
	vld1.64	{d18, d19}, [r1:128]
	add	r1, r6, #1568
	vst1.64	{d18, d19}, [r1:128]    @ 16-byte Spill
	mov	r1, r0
	vst1.32	{d18, d19}, [r1], r10
	mov	r10, #0
	str	lr, [r2, #4]
	add	lr, r6, #304
	strb	r11, [r4, #-3]
	vst1.64	{d16, d17}, [r1]
	adr	r1, LCPI0_140
	vld1.64	{d16, d17}, [r1:128]
	add	r1, r0, #32
	vst1.64	{d16, d17}, [r1]
	adr	r1, LCPI0_141
	vld1.64	{d10, d11}, [r1:128]
	add	r1, r0, #80
	strb	r11, [r4, #-2]
	vst1.64	{d10, d11}, [r1]
	adr	r1, LCPI0_142
	vld1.64	{d16, d17}, [r1:128]
	add	r1, r0, #64
	vst1.64	{d16, d17}, [r1]
	add	r1, r2, #8
	vld1.64	{d16, d17}, [lr:128]    @ 16-byte Reload
	add	lr, r6, #1536
	vst1.64	{d16, d17}, [r1]
	strb	r11, [r4, #-1]
	adr	r1, LCPI0_143
	vld1.64	{d16, d17}, [r1:128]
	vst1.64	{d16, d17}, [lr:128]    @ 16-byte Spill
	adr	r1, LCPI0_144
	add	lr, r6, #1520
	vld1.64	{d18, d19}, [r1:128]
	mov	r1, r3
	vst1.32	{d18, d19}, [r1]!
	vst1.64	{d16, d17}, [r1]
	mov	r1, #40
	vmov.i32	q8, #0x0
	str	r1, [r0, #96]
	add	r1, r5, #32
	vst1.64	{d18, d19}, [lr:128]    @ 16-byte Spill
	vst1.64	{d10, d11}, [r1:128]
	mov	r1, r5
	vst1.64	{d10, d11}, [r1:128]!
	vst1.64	{d16, d17}, [r1:128]
	mov	r1, #1
	str	r10, [r0, #100]
	str	r1, [r5, #48]
	str	r10, [r5, #52]
	sub	sp, sp, #20
	mov	r1, #7
	stm	sp, {r0, r12}
	mov	r0, #4
	str	r1, [sp, #8]
	mov	r1, #0
	str	r10, [sp, #12]
	str	r5, [sp, #16]
	bl	_nnc_aten_conv2d
	add	sp, sp, #20
	sub	r0, sp, #16
	bic	r2, r0, #7
	mov	sp, r2
	sub	r0, sp, #32
	bic	r3, r0, #31
	mov	sp, r3
	sub	r0, sp, #104
	bic	r0, r0, #7
	mov	sp, r0
	mov	r1, sp
	sub	r12, r1, #4
	mov	sp, r12
	sub	r5, sp, #56
	bic	lr, r5, #15
	mov	sp, lr
	ldr	r5, [r6, #1464]         @ 4-byte Reload
	add	r4, r6, #1552
	str	r5, [r2]
	add	r5, r0, #16
	vld1.64	{d18, d19}, [r4:128]    @ 16-byte Reload
	mov	r4, #48
	strb	r11, [r1, #-4]
	vst1.64	{d18, d19}, [r5]
	adr	r5, LCPI0_145
	vld1.64	{d16, d17}, [r5:128]
	mov	r5, r0
	vst1.32	{d16, d17}, [r5], r4
	ldr	r4, [r6, #1196]         @ 4-byte Reload
	str	r4, [r2, #4]
	add	r4, r6, #1568
	vst1.64	{d18, d19}, [r5]
	add	r5, r0, #32
	vld1.64	{d16, d17}, [r4:128]    @ 16-byte Reload
	add	r4, r6, #320
	vst1.64	{d16, d17}, [r5]
	add	r5, r0, #80
	strb	r11, [r1, #-3]
	strb	r11, [r1, #-2]
	vst1.64	{d10, d11}, [r5]
	adr	r5, LCPI0_146
	vld1.64	{d16, d17}, [r5:128]
	add	r5, r0, #64
	vst1.64	{d16, d17}, [r5]
	add	r5, r2, #8
	vld1.64	{d16, d17}, [r4:128]    @ 16-byte Reload
	add	r4, r6, #1520
	vst1.64	{d16, d17}, [r5]
	vld1.64	{d16, d17}, [r4:128]    @ 16-byte Reload
	add	r4, r6, #1536
	strb	r11, [r1, #-1]
	mov	r1, r3
	vst1.32	{d16, d17}, [r1]!
	vld1.64	{d16, d17}, [r4:128]    @ 16-byte Reload
	vst1.64	{d16, d17}, [r1]
	mov	r1, #240
	vmov.i32	q8, #0x0
	str	r1, [r0, #96]
	add	r1, lr, #32
	str	r10, [r0, #100]
	vst1.64	{d10, d11}, [r1:128]
	mov	r1, lr
	vst1.64	{d10, d11}, [r1:128]!
	vst1.64	{d16, d17}, [r1:128]
	mov	r1, #1
	str	r1, [lr, #48]
	str	r10, [lr, #52]
	sub	sp, sp, #20
	stm	sp, {r0, r12}
	mov	r0, #7
	add	r1, sp, #8
	stm	r1, {r0, r10, lr}
	mov	r0, #4
	mov	r1, #0
	bl	_nnc_aten_conv2d
	add	sp, sp, #20
	vmov.f32	q8, #3.000000e+00
	ldr	r11, [r6, #340]         @ 4-byte Reload
	vmov.f32	q9, #6.000000e+00
	mov	r12, #196
	mov	lr, #0
	b	LBB0_153
	.p2align	4
@ %bb.140:
	.data_region
LCPI0_138:
	.long	14                      @ 0xe
	.long	0                       @ 0x0
	.long	14                      @ 0xe
	.long	0                       @ 0x0
	.p2align	4
@ %bb.141:
LCPI0_139:
	.long	1                       @ 0x1
	.long	0                       @ 0x0
	.long	40                      @ 0x28
	.long	0                       @ 0x0
	.p2align	4
@ %bb.142:
LCPI0_140:
	.long	1                       @ 0x1
	.long	0                       @ 0x0
	.long	96                      @ 0x60
	.long	0                       @ 0x0
	.p2align	4
@ %bb.143:
LCPI0_141:
	.long	1                       @ 0x1
	.long	0                       @ 0x0
	.long	1                       @ 0x1
	.long	0                       @ 0x0
	.p2align	4
@ %bb.144:
LCPI0_142:
	.long	40                      @ 0x28
	.long	0                       @ 0x0
	.long	96                      @ 0x60
	.long	0                       @ 0x0
	.p2align	4
@ %bb.145:
LCPI0_143:
	.long	4                       @ 0x4
	.long	0                       @ 0x0
	.long	1                       @ 0x1
	.long	0                       @ 0x0
	.p2align	4
@ %bb.146:
LCPI0_144:
	.long	4                       @ 0x4
	.long	0                       @ 0x0
	.long	4                       @ 0x4
	.long	0                       @ 0x0
	.p2align	4
@ %bb.147:
LCPI0_145:
	.long	1                       @ 0x1
	.long	0                       @ 0x0
	.long	240                     @ 0xf0
	.long	0                       @ 0x0
	.p2align	4
@ %bb.148:
LCPI0_146:
	.long	240                     @ 0xf0
	.long	0                       @ 0x0
	.long	40                      @ 0x28
	.long	0                       @ 0x0
	.p2align	4
@ %bb.149:
LCPI0_147:
	.long	5                       @ 0x5
	.long	0                       @ 0x0
	.long	5                       @ 0x5
	.long	0                       @ 0x0
	.p2align	4
@ %bb.150:
LCPI0_148:
	.long	240                     @ 0xf0
	.long	0                       @ 0x0
	.long	1                       @ 0x1
	.long	0                       @ 0x0
	.p2align	4
@ %bb.151:
LCPI0_149:
	.long	2                       @ 0x2
	.long	0                       @ 0x0
	.long	2                       @ 0x2
	.long	0                       @ 0x0
	.p2align	4
@ %bb.152:
LCPI0_150:
	.long	1                       @ 0x1
	.long	0                       @ 0x0
	.long	60                      @ 0x3c
	.long	0                       @ 0x0
	.p2align	2
LBB0_153:                               @ %cond115.preheader.i
                                        @ =>This Loop Header: Depth=1
                                        @     Child Loop BB0_154 Depth 2
	.end_data_region
	umull	r2, r0, r10, r12
	mov	r3, #0
	mov	r5, #0
LBB0_154:                               @ %cond118.preheader.i
                                        @   Parent Loop BB0_153 Depth=1
                                        @ =>  This Inner Loop Header: Depth=2
	rsb	r0, r3, r3, lsl #3
	ldr	r1, [r6, #1464]         @ 4-byte Reload
	adds	r3, r3, #1
	add	r0, r2, r0, lsl #1
	adc	r5, r5, #0
	add	r4, r1, r0, lsl #2
	ldr	r1, [r6, #1464]         @ 4-byte Reload
	vld1.32	{d20, d21}, [r4]!
	vadd.f32	q11, q10, q8
	vld1.32	{d24, d25}, [r4]
	add	r4, r11, r0, lsl #2
	vadd.f32	q13, q12, q8
	vclt.f32	q14, q11, #0
	vbic	q11, q11, q14
	vclt.f32	q14, q13, #0
	vmin.f32	q11, q11, q9
	vbic	q13, q13, q14
	vmin.f32	q13, q13, q9
	vmul.f32	q2, q10, q11
	vmul.f32	q1, q12, q13
	vdiv.f32	s3, s11, s16
	vdiv.f32	s2, s10, s16
	vdiv.f32	s1, s9, s16
	vdiv.f32	s0, s8, s16
	vdiv.f32	s11, s7, s16
	vdiv.f32	s10, s6, s16
	vdiv.f32	s9, s5, s16
	vdiv.f32	s8, s4, s16
	vst1.32	{d0, d1}, [r4]!
	vst1.32	{d4, d5}, [r4]
	add	r4, r0, #8
	add	r1, r1, r4, lsl #2
	vld1.32	{d20, d21}, [r1]
	add	r1, r11, r4, lsl #2
	vadd.f32	q11, q10, q8
	ldr	r4, [r6, #1464]         @ 4-byte Reload
	vclt.f32	q12, q11, #0
	vbic	q11, q11, q12
	vmin.f32	q11, q11, q9
	vmul.f32	q0, q10, q11
	vdiv.f32	s7, s3, s16
	vdiv.f32	s6, s2, s16
	vdiv.f32	s5, s1, s16
	vdiv.f32	s4, s0, s16
	vst1.32	{d2, d3}, [r1]
	add	r1, r0, #12
	add	r0, r0, #13
	add	r4, r4, r1, lsl #2
	add	r1, r11, r1, lsl #2
	vldr	s0, [r4]
	vadd.f32	s2, s0, s28
	vmax.f32	d20, d1, d12
	vmin.f32	d1, d20, d8
	vmul.f32	s0, s0, s2
	vdiv.f32	s0, s0, s16
	vstr	s0, [r1]
	ldr	r1, [r6, #1464]         @ 4-byte Reload
	add	r1, r1, r0, lsl #2
	add	r0, r11, r0, lsl #2
	vldr	s0, [r1]
	vadd.f32	s2, s0, s28
	vmax.f32	d20, d1, d12
	vmin.f32	d1, d20, d8
	vmul.f32	s0, s0, s2
	vdiv.f32	s0, s0, s16
	vstr	s0, [r0]
	eor	r0, r3, #14
	orrs	r0, r0, r5
	bne	LBB0_154
@ %bb.155:                              @ %exit117.i
                                        @   in Loop: Header=BB0_153 Depth=1
	adds	r10, r10, #1
	adc	lr, lr, #0
	eor	r0, r10, #240
	orrs	r0, r0, lr
	bne	LBB0_153
@ %bb.156:                              @ %exit114.i
	adr	r0, LCPI0_138
	add	lr, r6, #1552
	vld1.64	{d18, d19}, [r0:128]
	sub	r0, sp, #16
	bic	r2, r0, #7
	vst1.64	{d18, d19}, [lr:128]    @ 16-byte Spill
	mov	sp, r2
	sub	r0, sp, #32
	bic	r3, r0, #31
	mov	sp, r3
	sub	r0, sp, #104
	bic	r0, r0, #7
	mov	sp, r0
	mov	r5, sp
	sub	r10, r5, #4
	mov	sp, r10
	sub	r4, sp, #56
	bic	r4, r4, #7
	mov	sp, r4
	ldr	r1, [r6, #1492]         @ 4-byte Reload
	mov	r12, #48
	str	r1, [r2]
	mov	r1, #6
	strb	r1, [r5, #-4]
	add	r1, r0, #16
	add	lr, r6, #1568
	vst1.64	{d18, d19}, [r1]
	adr	r1, LCPI0_145
	vld1.64	{d16, d17}, [r1:128]
	mov	r1, r0
	vst1.32	{d16, d17}, [r1], r12
	mov	r12, #6
	vst1.64	{d18, d19}, [r1]
	add	r1, r0, #32
	vst1.64	{d16, d17}, [lr:128]    @ 16-byte Spill
	add	lr, r6, #352
	str	r11, [r2, #4]
	mov	r11, #0
	strb	r12, [r5, #-3]
	vst1.64	{d16, d17}, [r1]
	adr	r1, LCPI0_147
	vld1.64	{d16, d17}, [r1:128]
	add	r1, r0, #80
	strb	r12, [r5, #-2]
	vst1.64	{d16, d17}, [r1]
	adr	r1, LCPI0_148
	vld1.64	{d16, d17}, [r1:128]
	add	r1, r0, #64
	vst1.64	{d16, d17}, [r1]
	add	r1, r2, #8
	vld1.64	{d16, d17}, [lr:128]    @ 16-byte Reload
	add	lr, r6, #1520
	vst1.64	{d16, d17}, [r1]
	strb	r12, [r5, #-1]
	adr	r1, LCPI0_143
	vld1.64	{d16, d17}, [r1:128]
	adr	r1, LCPI0_144
	vld1.64	{d18, d19}, [r1:128]
	mov	r1, r3
	vst1.32	{d18, d19}, [r1]!
	vst1.64	{d18, d19}, [lr:128]    @ 16-byte Spill
	mov	lr, #240
	vst1.64	{d16, d17}, [r1]
	adr	r1, LCPI0_141
	vld1.64	{d10, d11}, [r1:128]
	add	r1, r4, #32
	vst1.64	{d10, d11}, [r1]
	str	lr, [r0, #96]
	str	lr, [r4, #48]
	add	lr, r6, #1536
	str	r11, [r0, #100]
	adr	r1, LCPI0_149
	vld1.64	{d16, d17}, [r1:128]
	mov	r1, r4
	vst1.32	{d10, d11}, [r1]!
	vst1.64	{d16, d17}, [r1]
	vst1.64	{d16, d17}, [lr:128]    @ 16-byte Spill
	str	r11, [r4, #52]
	sub	sp, sp, #20
	mov	r1, #7
	stm	sp, {r0, r10}
	mov	r0, #4
	str	r1, [sp, #8]
	mov	r1, #0
	str	r11, [sp, #12]
	str	r4, [sp, #16]
	bl	_nnc_aten_conv2d
	add	sp, sp, #20
	sub	r0, sp, #8
	bic	r2, r0, #7
	mov	sp, r2
	sub	r0, sp, #16
	bic	r3, r0, #15
	mov	sp, r3
	sub	r0, sp, #64
	bic	r0, r0, #7
	mov	sp, r0
	mov	r1, sp
	sub	r12, r1, #4
	mov	sp, r12
	sub	r4, sp, #16
	bic	lr, r4, #15
	mov	sp, lr
	mov	r4, #6
	add	r5, r6, #1568
	strb	r4, [r1, #-4]
	add	r4, r0, #16
	vld1.64	{d16, d17}, [r5:128]    @ 16-byte Reload
	mov	r5, #48
	vst1.64	{d10, d11}, [r4]
	mov	r4, r0
	vst1.32	{d16, d17}, [r4], r5
	ldr	r5, [r6, #1072]         @ 4-byte Reload
	str	r5, [r2]
	mov	r5, #6
	strb	r5, [r1, #-3]
	add	r1, r6, #1520
	vld1.64	{d18, d19}, [r1:128]    @ 16-byte Reload
	add	r1, r6, #1552
	ldr	r10, [r6, #1492]        @ 4-byte Reload
	vst1.64	{d18, d19}, [r3:128]
	vld1.64	{d18, d19}, [r1:128]    @ 16-byte Reload
	add	r1, r0, #32
	str	r10, [r2, #4]
	vst1.64	{d18, d19}, [r4]
	vst1.64	{d16, d17}, [r1]
	vst1.64	{d10, d11}, [lr:128]
	sub	sp, sp, #20
	stm	sp, {r0, r12}
	mov	r1, #2
	add	r0, sp, #8
	stm	r0, {r1, r11, lr}
	mov	r0, #2
	mov	r1, #0
	bl	_nnc_aten_adaptive_avg_pool2d
	add	sp, sp, #20
	ldr	r4, [r6, #376]          @ 4-byte Reload
	mov	r2, #960
	ldr	r1, [r6, #1072]         @ 4-byte Reload
	mov	r0, r4
	bl	_memcpy
	sub	r0, sp, #12
	bic	r2, r0, #7
	mov	sp, r2
	sub	r0, sp, #24
	bic	r3, r0, #15
	mov	sp, r3
	sub	r0, sp, #48
	bic	lr, r0, #7
	mov	sp, lr
	mov	r1, sp
	sub	r12, r1, #4
	mov	sp, r12
	ldr	r5, [r6, #1080]         @ 4-byte Reload
	mov	r0, #6
	str	r5, [r2]
	mov	r10, #6
	strb	r0, [r1, #-4]
	str	r4, [r2, #4]
	adr	r4, LCPI0_150
	str	r8, [r6, #24]
	add	r8, r6, #1568
	vld1.64	{d16, d17}, [r4:128]
	add	r4, r6, #1552
	strb	r0, [r1, #-3]
	add	r0, r6, #1536
	vld1.64	{d10, d11}, [r0:128]    @ 16-byte Reload
	mov	r0, lr
	vst1.64	{d16, d17}, [r4:128]    @ 16-byte Spill
	mov	r4, r3
	vst1.32	{d16, d17}, [r0]!
	vld1.64	{d16, d17}, [r8:128]    @ 16-byte Reload
	vst1.64	{d10, d11}, [r4:128]!
	ldr	r8, [r6, #24]
	vst1.64	{d16, d17}, [r0]
	ldr	r0, [r6, #1076]         @ 4-byte Reload
	str	r0, [r2, #12]
	ldr	r0, [r6, #1088]         @ 4-byte Reload
	str	r0, [r2, #8]
	mov	r0, #2
	strb	r10, [r1, #-2]
	stm	r4, {r0, r11}
	adr	r0, LCPI0_151
	vld1.64	{d16, d17}, [r0:128]
	add	r0, lr, #32
	vst1.64	{d16, d17}, [r0]
	sub	sp, sp, #20
	add	r0, r6, #1024
	mov	r1, #0
	add	r0, r0, #824
	str	r0, [sp, #16]
	mov	r0, #3
	str	lr, [sp]
	str	r12, [sp, #4]
	str	r11, [sp, #8]
	str	r11, [sp, #12]
	bl	_nnc_aten_matmul
	add	sp, sp, #20
	vld1.32	{d16, d17}, [r5]!
	vclt.f32	q10, q8, #0
	vld1.32	{d18, d19}, [r5]
	vbic	q8, q8, q10
	mov	r5, #48
	ldr	r10, [r6, #1084]        @ 4-byte Reload
	vclt.f32	q10, q9, #0
	vbic	q9, q9, q10
	ldr	r3, [r6, #344]          @ 4-byte Reload
	ldr	r2, [r6, #348]          @ 4-byte Reload
	mov	r0, r10
	vst1.32	{d16, d17}, [r0]!
	add	r1, r2, #16
	vst1.32	{d18, d19}, [r0]
	add	r0, r3, #16
	vld1.32	{d16, d17}, [r0]
	mov	r0, r3
	vclt.f32	q9, q8, #0
	vbic	q8, q8, q9
	vld1.32	{d18, d19}, [r0], r5
	vst1.32	{d16, d17}, [r1]
	vclt.f32	q8, q9, #0
	vbic	q8, q9, q8
	mov	r1, r2
	vst1.32	{d16, d17}, [r1], r5
	vld1.32	{d16, d17}, [r0]
	add	r0, r3, #32
	vclt.f32	q10, q8, #0
	vld1.32	{d18, d19}, [r0]
	vbic	q8, q8, q10
	add	r0, r2, #32
	vst1.32	{d16, d17}, [r1]
	vclt.f32	q8, q9, #0
	vbic	q8, q9, q8
	add	r1, r3, #192
	vst1.32	{d16, d17}, [r0]
	add	r0, r3, #64
	vld1.32	{d16, d17}, [r0]
	add	r0, r3, #80
	vld1.32	{d18, d19}, [r0]
	add	r0, r2, #80
	vclt.f32	q10, q9, #0
	vbic	q9, q9, q10
	vst1.32	{d18, d19}, [r0]
	vclt.f32	q9, q8, #0
	vbic	q8, q8, q9
	add	r0, r2, #64
	vst1.32	{d16, d17}, [r0]
	add	r0, r3, #96
	vld1.32	{d16, d17}, [r0]
	add	r0, r3, #112
	vld1.32	{d18, d19}, [r0]
	add	r0, r2, #112
	vclt.f32	q10, q9, #0
	vbic	q9, q9, q10
	vst1.32	{d18, d19}, [r0]
	vclt.f32	q9, q8, #0
	vbic	q8, q8, q9
	add	r0, r2, #96
	vst1.32	{d16, d17}, [r0]
	add	r0, r3, #128
	vld1.32	{d16, d17}, [r0]
	add	r0, r3, #144
	vld1.32	{d18, d19}, [r0]
	add	r0, r2, #144
	vclt.f32	q10, q9, #0
	vbic	q9, q9, q10
	vst1.32	{d18, d19}, [r0]
	vclt.f32	q9, q8, #0
	vbic	q8, q8, q9
	add	r0, r2, #128
	vst1.32	{d16, d17}, [r0]
	add	r0, r3, #160
	vld1.32	{d16, d17}, [r0]
	add	r0, r3, #176
	vld1.32	{d18, d19}, [r0]
	add	r0, r2, #176
	vclt.f32	q10, q9, #0
	vbic	q9, q9, q10
	vst1.32	{d18, d19}, [r0]
	vclt.f32	q9, q8, #0
	vbic	q8, q8, q9
	add	r0, r2, #160
	vst1.32	{d16, d17}, [r0]
	add	r0, r2, #192
	vld1.32	{d16, d17}, [r1]
	vclt.f32	q9, q8, #0
	vbic	q8, q8, q9
	vst1.32	{d16, d17}, [r0]
	sub	r0, sp, #12
	bic	r2, r0, #7
	mov	sp, r2
	sub	r0, sp, #24
	bic	r3, r0, #15
	mov	sp, r3
	sub	r0, sp, #48
	bic	lr, r0, #7
	mov	sp, lr
	mov	r1, sp
	sub	r12, r1, #4
	mov	sp, r12
	mov	r4, r3
	mov	r0, #6
	strb	r0, [r1, #-4]
	mov	r5, #6
	strb	r0, [r1, #-3]
	mov	r0, lr
	vst1.64	{d10, d11}, [r4:128]!
	str	r8, [r6, #24]
	add	r8, r6, #1568
	vld1.64	{d16, d17}, [r8:128]    @ 16-byte Reload
	add	r8, r6, #1552
	vst1.32	{d16, d17}, [r0]!
	vld1.64	{d16, d17}, [r8:128]    @ 16-byte Reload
	ldr	r8, [r6, #24]
	vst1.64	{d16, d17}, [r0]
	ldr	r0, [r6, #1280]         @ 4-byte Reload
	strb	r5, [r1, #-2]
	stm	r2, {r0, r10}
	ldr	r0, [r6, #1100]         @ 4-byte Reload
	str	r0, [r2, #8]
	ldr	r0, [r6, #1088]         @ 4-byte Reload
	str	r0, [r2, #12]
	mov	r0, #2
	stm	r4, {r0, r11}
	adr	r0, LCPI0_152
	vld1.64	{d16, d17}, [r0:128]
	add	r0, lr, #32
	vst1.64	{d16, d17}, [r0]
	sub	sp, sp, #20
	str	lr, [sp]
	add	lr, r6, #1024
	add	r0, lr, #824
	str	r0, [sp, #16]
	mov	r0, #3
	mov	r1, #0
	str	r12, [sp, #4]
	str	r11, [sp, #8]
	str	r11, [sp, #12]
	bl	_nnc_aten_matmul
	add	sp, sp, #20
	vmov.f32	q8, #3.000000e+00
	ldr	r10, [r6, #380]         @ 4-byte Reload
	vmov.f32	q9, #6.000000e+00
	mov	r12, #196
	mov	lr, #0
	b	LBB0_166
	.p2align	4
@ %bb.157:
	.data_region
LCPI0_151:
	.long	240                     @ 0xf0
	.long	0                       @ 0x0
	.long	60                      @ 0x3c
	.long	0                       @ 0x0
	.p2align	4
@ %bb.158:
LCPI0_152:
	.long	60                      @ 0x3c
	.long	0                       @ 0x0
	.long	240                     @ 0xf0
	.long	0                       @ 0x0
	.p2align	4
@ %bb.159:
LCPI0_153:
	.long	14                      @ 0xe
	.long	0                       @ 0x0
	.long	14                      @ 0xe
	.long	0                       @ 0x0
	.p2align	4
@ %bb.160:
LCPI0_154:
	.long	1                       @ 0x1
	.long	0                       @ 0x0
	.long	40                      @ 0x28
	.long	0                       @ 0x0
	.p2align	4
@ %bb.161:
LCPI0_155:
	.long	1                       @ 0x1
	.long	0                       @ 0x0
	.long	240                     @ 0xf0
	.long	0                       @ 0x0
	.p2align	4
@ %bb.162:
LCPI0_156:
	.long	1                       @ 0x1
	.long	0                       @ 0x0
	.long	1                       @ 0x1
	.long	0                       @ 0x0
	.p2align	4
@ %bb.163:
LCPI0_157:
	.long	40                      @ 0x28
	.long	0                       @ 0x0
	.long	240                     @ 0xf0
	.long	0                       @ 0x0
	.p2align	4
@ %bb.164:
LCPI0_158:
	.long	4                       @ 0x4
	.long	0                       @ 0x0
	.long	1                       @ 0x1
	.long	0                       @ 0x0
	.p2align	4
@ %bb.165:
LCPI0_159:
	.long	4                       @ 0x4
	.long	0                       @ 0x0
	.long	4                       @ 0x4
	.long	0                       @ 0x0
	.p2align	2
LBB0_166:                               @ %cond130.preheader.i
                                        @ =>This Loop Header: Depth=1
                                        @     Child Loop BB0_167 Depth 2
	.end_data_region                @ 4-byte Reload
	ldr	r0, [r6, #1280]
	mov	r3, #0
	mov	r4, #0
	add	r0, r0, r11, lsl #2
	vldr	s0, [r0]
	umull	r2, r0, r11, r12
	vadd.f32	s2, s0, s28
	vcmpe.f32	s2, #0
	vmrs	APSR_nzcv, fpscr
	vdiv.f32	s0, s2, s16
	vmax.f32	d1, d1, d12
	vmovmi.f32	s0, s24
	vcmpe.f32	s2, s16
	vmrs	APSR_nzcv, fpscr
	vmovgt.f32	s0, s30
	vdup.32	q10, d0[0]
LBB0_167:                               @ %cond133.preheader.i
                                        @   Parent Loop BB0_166 Depth=1
                                        @ =>  This Inner Loop Header: Depth=2
	rsb	r0, r3, r3, lsl #3
	ldr	r1, [r6, #1492]         @ 4-byte Reload
	adds	r3, r3, #1
	add	r0, r2, r0, lsl #1
	adc	r4, r4, #0
	add	r5, r1, r0, lsl #2
	ldr	r1, [r6, #1492]         @ 4-byte Reload
	vld1.32	{d22, d23}, [r5]!
	vmul.f32	q11, q10, q11
	vld1.32	{d24, d25}, [r5]
	add	r5, r10, r0, lsl #2
	vmul.f32	q12, q10, q12
	vadd.f32	q13, q11, q8
	vadd.f32	q14, q12, q8
	vclt.f32	q15, q13, #0
	vbic	q13, q13, q15
	vclt.f32	q15, q14, #0
	vmin.f32	q13, q13, q9
	vbic	q14, q14, q15
	vmin.f32	q14, q14, q9
	vmul.f32	q3, q11, q13
	vmul.f32	q2, q12, q14
	vdiv.f32	s7, s15, s16
	vdiv.f32	s6, s14, s16
	vdiv.f32	s5, s13, s16
	vdiv.f32	s4, s12, s16
	vdiv.f32	s15, s11, s16
	vdiv.f32	s14, s10, s16
	vdiv.f32	s13, s9, s16
	vdiv.f32	s12, s8, s16
	vst1.32	{d2, d3}, [r5]!
	vst1.32	{d6, d7}, [r5]
	add	r5, r0, #8
	add	r1, r1, r5, lsl #2
	vld1.32	{d22, d23}, [r1]
	add	r1, r10, r5, lsl #2
	vmul.f32	q11, q10, q11
	ldr	r5, [r6, #1492]         @ 4-byte Reload
	vadd.f32	q12, q11, q8
	vclt.f32	q13, q12, #0
	vbic	q12, q12, q13
	vmin.f32	q12, q12, q9
	vmul.f32	q1, q11, q12
	vdiv.f32	s11, s7, s16
	vdiv.f32	s10, s6, s16
	vdiv.f32	s9, s5, s16
	vdiv.f32	s8, s4, s16
	vst1.32	{d4, d5}, [r1]
	add	r1, r0, #12
	add	r0, r0, #13
	add	r5, r5, r1, lsl #2
	add	r1, r10, r1, lsl #2
	vldr	s2, [r5]
	vmul.f32	s2, s0, s2
	vadd.f32	s4, s2, s28
	vmax.f32	d22, d2, d12
	vmin.f32	d2, d22, d8
	vmul.f32	s2, s2, s4
	vdiv.f32	s2, s2, s16
	vstr	s2, [r1]
	ldr	r1, [r6, #1492]         @ 4-byte Reload
	add	r1, r1, r0, lsl #2
	add	r0, r10, r0, lsl #2
	vldr	s2, [r1]
	vmul.f32	s2, s0, s2
	vadd.f32	s4, s2, s28
	vmax.f32	d22, d2, d12
	vmin.f32	d2, d22, d8
	vmul.f32	s2, s2, s4
	vdiv.f32	s2, s2, s16
	vstr	s2, [r0]
	eor	r0, r3, #14
	orrs	r0, r0, r4
	bne	LBB0_167
@ %bb.168:                              @ %exit132.i
                                        @   in Loop: Header=BB0_166 Depth=1
	adds	r11, r11, #1
	adc	lr, lr, #0
	eor	r0, r11, #240
	orrs	r0, r0, lr
	bne	LBB0_166
@ %bb.169:                              @ %exit129.i
	adr	r0, LCPI0_153
	vld1.64	{d16, d17}, [r0:128]
	sub	r0, sp, #16
	bic	r2, r0, #7
	mov	sp, r2
	sub	r0, sp, #32
	bic	r3, r0, #31
	mov	sp, r3
	sub	r0, sp, #104
	bic	r5, r0, #7
	mov	sp, r5
	mov	r4, sp
	sub	r12, r4, #4
	mov	sp, r12
	sub	r1, sp, #56
	mov	r11, r10
	bic	r10, r1, #15
	mov	sp, r10
	add	r1, r5, #16
	ldr	r0, [r6, #1584]         @ 4-byte Reload
	mov	lr, #6
	str	r0, [r2]
	strb	lr, [r4, #-4]
	mov	r0, r5
	vst1.64	{d16, d17}, [r1]
	adr	r1, LCPI0_154
	vmov.i32	q11, #0x0
	vld1.64	{d18, d19}, [r1:128]
	mov	r1, #48
	vst1.32	{d18, d19}, [r0], r1
	add	r1, r6, #384
	str	r11, [r2, #4]
	mov	r11, #0
	strb	lr, [r4, #-3]
	vst1.64	{d16, d17}, [r0]
	adr	r0, LCPI0_155
	vld1.64	{d16, d17}, [r0:128]
	add	r0, r5, #32
	vst1.64	{d16, d17}, [r0]
	adr	r0, LCPI0_156
	vld1.64	{d16, d17}, [r0:128]
	add	r0, r5, #80
	strb	lr, [r4, #-2]
	vst1.64	{d16, d17}, [r0]
	adr	r0, LCPI0_157
	vld1.64	{d18, d19}, [r0:128]
	add	r0, r5, #64
	vst1.64	{d18, d19}, [r0]
	add	r0, r2, #8
	vld1.64	{d18, d19}, [r1:128]    @ 16-byte Reload
	vst1.64	{d18, d19}, [r0]
	adr	r0, LCPI0_158
	vld1.64	{d18, d19}, [r0:128]
	adr	r0, LCPI0_159
	vld1.64	{d20, d21}, [r0:128]
	mov	r0, r3
	vst1.32	{d20, d21}, [r0]!
	vst1.64	{d18, d19}, [r0]
	mov	r0, #40
	str	r0, [r5, #96]
	add	r0, r10, #32
	strb	lr, [r4, #-1]
	vst1.64	{d16, d17}, [r0:128]
	mov	r0, #1
	str	r0, [r10, #48]
	mov	r0, r10
	str	r11, [r10, #52]
	vst1.64	{d16, d17}, [r0:128]!
	str	r11, [r5, #100]
	vst1.64	{d22, d23}, [r0:128]
	sub	sp, sp, #20
	mov	r0, #7
	stm	sp, {r5, r12}
	mov	r1, #0
	str	r0, [sp, #8]
	mov	r0, #4
	str	r11, [sp, #12]
	str	r10, [sp, #16]
	bl	_nnc_aten_conv2d
	add	sp, sp, #20
	ldr	r2, [r6, #1196]         @ 4-byte Reload
	mov	r12, #196
	mov	lr, #0
LBB0_170:                               @ %cond139.preheader.i
                                        @ =>This Loop Header: Depth=1
                                        @     Child Loop BB0_171 Depth 2
	umull	r10, r3, r11, r12
	mov	r5, #0
	mov	r3, #0
LBB0_171:                               @ %cond142.preheader.i
                                        @   Parent Loop BB0_170 Depth=1
                                        @ =>  This Inner Loop Header: Depth=2
	rsb	r0, r3, r3, lsl #3
	ldr	r1, [r6, #1584]         @ 4-byte Reload
	add	r0, r10, r0, lsl #1
	add	r4, r1, r0, lsl #2
	add	r1, r2, r0, lsl #2
	vld1.32	{d18, d19}, [r1]!
	vld1.32	{d16, d17}, [r4]!
	vadd.f32	q8, q9, q8
	vld1.32	{d18, d19}, [r4]
	vld1.32	{d20, d21}, [r1]
	add	r1, r8, r0, lsl #2
	ldr	r4, [r6, #1584]         @ 4-byte Reload
	vst1.32	{d16, d17}, [r1]!
	vadd.f32	q8, q10, q9
	vst1.32	{d16, d17}, [r1]
	add	r1, r0, #8
	add	r4, r4, r1, lsl #2
	vld1.32	{d16, d17}, [r4]
	add	r4, r8, r1, lsl #2
	add	r1, r2, r1, lsl #2
	vld1.32	{d18, d19}, [r1]
	add	r1, r0, #12
	vadd.f32	q8, q9, q8
	add	r0, r0, #13
	vst1.32	{d16, d17}, [r4]
	ldr	r4, [r6, #1584]         @ 4-byte Reload
	add	r4, r4, r1, lsl #2
	vldr	s0, [r4]
	add	r4, r8, r1, lsl #2
	add	r1, r2, r1, lsl #2
	vldr	s2, [r1]
	ldr	r1, [r6, #1584]         @ 4-byte Reload
	vadd.f32	s0, s2, s0
	add	r1, r1, r0, lsl #2
	vstr	s0, [r4]
	vldr	s0, [r1]
	add	r1, r2, r0, lsl #2
	add	r0, r8, r0, lsl #2
	vldr	s2, [r1]
	ldr	r1, [r6, #1584]         @ 4-byte Reload
	vadd.f32	s0, s2, s0
	vstr	s0, [r0]
	orr	r0, r3, #1
	adds	r3, r3, #2
	rsb	r0, r0, r0, lsl #3
	adc	r5, r5, #0
	add	r0, r10, r0, lsl #1
	add	r1, r1, r0, lsl #2
	add	r4, r2, r0, lsl #2
	vld1.32	{d18, d19}, [r4]!
	vld1.32	{d16, d17}, [r1]!
	vadd.f32	q8, q9, q8
	vld1.32	{d18, d19}, [r1]
	add	r1, r8, r0, lsl #2
	vld1.32	{d20, d21}, [r4]
	vadd.f32	q9, q10, q9
	ldr	r4, [r6, #1584]         @ 4-byte Reload
	vst1.32	{d16, d17}, [r1]!
	vst1.32	{d18, d19}, [r1]
	add	r1, r0, #8
	add	r4, r4, r1, lsl #2
	vld1.32	{d16, d17}, [r4]
	add	r4, r2, r1, lsl #2
	add	r1, r8, r1, lsl #2
	vld1.32	{d18, d19}, [r4]
	vadd.f32	q8, q9, q8
	ldr	r4, [r6, #1584]         @ 4-byte Reload
	vst1.32	{d16, d17}, [r1]
	add	r1, r0, #12
	add	r0, r0, #13
	add	r4, r4, r1, lsl #2
	vldr	s0, [r4]
	add	r4, r2, r1, lsl #2
	add	r1, r8, r1, lsl #2
	vldr	s2, [r4]
	vadd.f32	s0, s2, s0
	vstr	s0, [r1]
	ldr	r1, [r6, #1584]         @ 4-byte Reload
	add	r1, r1, r0, lsl #2
	vldr	s0, [r1]
	add	r1, r2, r0, lsl #2
	add	r0, r8, r0, lsl #2
	vldr	s2, [r1]
	vadd.f32	s0, s2, s0
	vstr	s0, [r0]
	eor	r0, r3, #14
	orrs	r0, r0, r5
	bne	LBB0_171
@ %bb.172:                              @ %exit141.i
                                        @   in Loop: Header=BB0_170 Depth=1
	adds	r11, r11, #1
	adc	lr, lr, #0
	eor	r0, r11, #40
	orrs	r0, r0, lr
	bne	LBB0_170
@ %bb.173:                              @ %exit138.i
	adr	r0, LCPI0_160
	vld1.64	{d16, d17}, [r0:128]
	sub	r0, sp, #16
	bic	r2, r0, #7
	mov	sp, r2
	sub	r0, sp, #32
	bic	r3, r0, #31
	mov	sp, r3
	sub	r0, sp, #104
	bic	r5, r0, #7
	mov	sp, r5
	mov	r4, sp
	sub	r12, r4, #4
	mov	sp, r12
	sub	r1, sp, #56
	bic	r10, r1, #15
	mov	sp, r10
	add	r1, r5, #16
	ldr	r0, [r6, #1468]         @ 4-byte Reload
	mov	lr, #6
	str	r0, [r2]
	strb	lr, [r4, #-4]
	mov	r0, r5
	vst1.64	{d16, d17}, [r1]
	adr	r1, LCPI0_161
	vmov.i32	q11, #0x0
	mov	r11, #0
	vld1.64	{d18, d19}, [r1:128]
	mov	r1, #48
	vst1.32	{d18, d19}, [r0], r1
	add	r1, r6, #400
	str	r8, [r2, #4]
	strb	lr, [r4, #-3]
	vst1.64	{d16, d17}, [r0]
	adr	r0, LCPI0_162
	vld1.64	{d16, d17}, [r0:128]
	add	r0, r5, #32
	vst1.64	{d16, d17}, [r0]
	adr	r0, LCPI0_163
	vld1.64	{d16, d17}, [r0:128]
	add	r0, r5, #80
	strb	lr, [r4, #-2]
	vst1.64	{d16, d17}, [r0]
	adr	r0, LCPI0_164
	vld1.64	{d18, d19}, [r0:128]
	add	r0, r5, #64
	vst1.64	{d18, d19}, [r0]
	add	r0, r2, #8
	vld1.64	{d18, d19}, [r1:128]    @ 16-byte Reload
	vst1.64	{d18, d19}, [r0]
	adr	r0, LCPI0_165
	vld1.64	{d18, d19}, [r0:128]
	adr	r0, LCPI0_166
	vld1.64	{d20, d21}, [r0:128]
	mov	r0, r3
	vst1.32	{d20, d21}, [r0]!
	vst1.64	{d18, d19}, [r0]
	mov	r0, #240
	str	r0, [r5, #96]
	add	r0, r10, #32
	strb	lr, [r4, #-1]
	vst1.64	{d16, d17}, [r0:128]
	mov	r0, #1
	str	r0, [r10, #48]
	mov	r0, r10
	str	r11, [r10, #52]
	vst1.64	{d16, d17}, [r0:128]!
	str	r11, [r5, #100]
	vst1.64	{d22, d23}, [r0:128]
	sub	sp, sp, #20
	mov	r0, #7
	stm	sp, {r5, r12}
	mov	r1, #0
	str	r0, [sp, #8]
	mov	r0, #4
	str	r11, [sp, #12]
	str	r10, [sp, #16]
	bl	_nnc_aten_conv2d
	add	sp, sp, #20
	vmov.f32	q8, #3.000000e+00
	ldr	r10, [r6, #1200]        @ 4-byte Reload
	vmov.f32	q9, #6.000000e+00
	mov	r12, #196
	mov	lr, #0
	b	LBB0_185
	.p2align	4
@ %bb.174:
	.data_region
LCPI0_160:
	.long	14                      @ 0xe
	.long	0                       @ 0x0
	.long	14                      @ 0xe
	.long	0                       @ 0x0
	.p2align	4
@ %bb.175:
LCPI0_161:
	.long	1                       @ 0x1
	.long	0                       @ 0x0
	.long	240                     @ 0xf0
	.long	0                       @ 0x0
	.p2align	4
@ %bb.176:
LCPI0_162:
	.long	1                       @ 0x1
	.long	0                       @ 0x0
	.long	40                      @ 0x28
	.long	0                       @ 0x0
	.p2align	4
@ %bb.177:
LCPI0_163:
	.long	1                       @ 0x1
	.long	0                       @ 0x0
	.long	1                       @ 0x1
	.long	0                       @ 0x0
	.p2align	4
@ %bb.178:
LCPI0_164:
	.long	240                     @ 0xf0
	.long	0                       @ 0x0
	.long	40                      @ 0x28
	.long	0                       @ 0x0
	.p2align	4
@ %bb.179:
LCPI0_165:
	.long	4                       @ 0x4
	.long	0                       @ 0x0
	.long	1                       @ 0x1
	.long	0                       @ 0x0
	.p2align	4
@ %bb.180:
LCPI0_166:
	.long	4                       @ 0x4
	.long	0                       @ 0x0
	.long	4                       @ 0x4
	.long	0                       @ 0x0
	.p2align	4
@ %bb.181:
LCPI0_167:
	.long	5                       @ 0x5
	.long	0                       @ 0x0
	.long	5                       @ 0x5
	.long	0                       @ 0x0
	.p2align	4
@ %bb.182:
LCPI0_168:
	.long	240                     @ 0xf0
	.long	0                       @ 0x0
	.long	1                       @ 0x1
	.long	0                       @ 0x0
	.p2align	4
@ %bb.183:
LCPI0_169:
	.long	2                       @ 0x2
	.long	0                       @ 0x0
	.long	2                       @ 0x2
	.long	0                       @ 0x0
	.p2align	4
@ %bb.184:
LCPI0_170:
	.long	1                       @ 0x1
	.long	0                       @ 0x0
	.long	60                      @ 0x3c
	.long	0                       @ 0x0
	.p2align	2
LBB0_185:                               @ %cond148.preheader.i
                                        @ =>This Loop Header: Depth=1
                                        @     Child Loop BB0_186 Depth 2
	.end_data_region
	umull	r2, r0, r11, r12
	mov	r3, #0
	mov	r5, #0
LBB0_186:                               @ %cond151.preheader.i
                                        @   Parent Loop BB0_185 Depth=1
                                        @ =>  This Inner Loop Header: Depth=2
	rsb	r0, r3, r3, lsl #3
	ldr	r1, [r6, #1468]         @ 4-byte Reload
	adds	r3, r3, #1
	add	r0, r2, r0, lsl #1
	adc	r5, r5, #0
	add	r4, r1, r0, lsl #2
	ldr	r1, [r6, #1468]         @ 4-byte Reload
	vld1.32	{d20, d21}, [r4]!
	vadd.f32	q11, q10, q8
	vld1.32	{d24, d25}, [r4]
	add	r4, r10, r0, lsl #2
	vadd.f32	q13, q12, q8
	vclt.f32	q14, q11, #0
	vbic	q11, q11, q14
	vclt.f32	q14, q13, #0
	vmin.f32	q11, q11, q9
	vbic	q13, q13, q14
	vmin.f32	q13, q13, q9
	vmul.f32	q2, q10, q11
	vmul.f32	q1, q12, q13
	vdiv.f32	s3, s11, s16
	vdiv.f32	s2, s10, s16
	vdiv.f32	s1, s9, s16
	vdiv.f32	s0, s8, s16
	vdiv.f32	s11, s7, s16
	vdiv.f32	s10, s6, s16
	vdiv.f32	s9, s5, s16
	vdiv.f32	s8, s4, s16
	vst1.32	{d0, d1}, [r4]!
	vst1.32	{d4, d5}, [r4]
	add	r4, r0, #8
	add	r1, r1, r4, lsl #2
	vld1.32	{d20, d21}, [r1]
	add	r1, r10, r4, lsl #2
	vadd.f32	q11, q10, q8
	ldr	r4, [r6, #1468]         @ 4-byte Reload
	vclt.f32	q12, q11, #0
	vbic	q11, q11, q12
	vmin.f32	q11, q11, q9
	vmul.f32	q0, q10, q11
	vdiv.f32	s7, s3, s16
	vdiv.f32	s6, s2, s16
	vdiv.f32	s5, s1, s16
	vdiv.f32	s4, s0, s16
	vst1.32	{d2, d3}, [r1]
	add	r1, r0, #12
	add	r0, r0, #13
	add	r4, r4, r1, lsl #2
	add	r1, r10, r1, lsl #2
	vldr	s0, [r4]
	vadd.f32	s2, s0, s28
	vmax.f32	d20, d1, d12
	vmin.f32	d1, d20, d8
	vmul.f32	s0, s0, s2
	vdiv.f32	s0, s0, s16
	vstr	s0, [r1]
	ldr	r1, [r6, #1468]         @ 4-byte Reload
	add	r1, r1, r0, lsl #2
	add	r0, r10, r0, lsl #2
	vldr	s0, [r1]
	vadd.f32	s2, s0, s28
	vmax.f32	d20, d1, d12
	vmin.f32	d1, d20, d8
	vmul.f32	s0, s0, s2
	vdiv.f32	s0, s0, s16
	vstr	s0, [r0]
	eor	r0, r3, #14
	orrs	r0, r0, r5
	bne	LBB0_186
@ %bb.187:                              @ %exit150.i
                                        @   in Loop: Header=BB0_185 Depth=1
	adds	r11, r11, #1
	adc	lr, lr, #0
	eor	r0, r11, #240
	orrs	r0, r0, lr
	bne	LBB0_185
@ %bb.188:                              @ %exit147.i
	adr	r0, LCPI0_160
	add	lr, r6, #1568
	vld1.64	{d18, d19}, [r0:128]
	sub	r0, sp, #16
	bic	r2, r0, #7
	vst1.64	{d18, d19}, [lr:128]    @ 16-byte Spill
	mov	sp, r2
	sub	r0, sp, #32
	bic	r3, r0, #31
	mov	sp, r3
	sub	r0, sp, #104
	bic	r0, r0, #7
	mov	sp, r0
	mov	r5, sp
	sub	r12, r5, #4
	mov	sp, r12
	sub	r4, sp, #56
	bic	r4, r4, #7
	mov	sp, r4
	ldr	r1, [r6, #1496]         @ 4-byte Reload
	mov	r11, #6
	str	r1, [r2]
	add	r1, r0, #16
	strb	r11, [r5, #-4]
	add	lr, r6, #1584
	vst1.64	{d18, d19}, [r1]
	adr	r1, LCPI0_161
	vld1.64	{d16, d17}, [r1:128]
	mov	r1, r0
	vst1.64	{d16, d17}, [lr:128]    @ 16-byte Spill
	mov	lr, #48
	vst1.32	{d16, d17}, [r1], lr
	add	lr, r6, #432
	vst1.64	{d18, d19}, [r1]
	add	r1, r0, #32
	str	r10, [r2, #4]
	mov	r10, #0
	strb	r11, [r5, #-3]
	vst1.64	{d16, d17}, [r1]
	adr	r1, LCPI0_167
	vld1.64	{d16, d17}, [r1:128]
	add	r1, r0, #80
	strb	r11, [r5, #-2]
	vst1.64	{d16, d17}, [r1]
	adr	r1, LCPI0_168
	vld1.64	{d16, d17}, [r1:128]
	add	r1, r0, #64
	vst1.64	{d16, d17}, [r1]
	add	r1, r2, #8
	vld1.64	{d16, d17}, [lr:128]    @ 16-byte Reload
	add	lr, r6, #1536
	strb	r11, [r5, #-1]
	mov	r5, #6
	vst1.64	{d16, d17}, [r1]
	adr	r1, LCPI0_165
	vld1.64	{d16, d17}, [r1:128]
	adr	r1, LCPI0_166
	vld1.64	{d18, d19}, [r1:128]
	mov	r1, r3
	vst1.32	{d18, d19}, [r1]!
	vst1.64	{d18, d19}, [lr:128]    @ 16-byte Spill
	mov	lr, #240
	vst1.64	{d16, d17}, [r1]
	adr	r1, LCPI0_163
	vld1.64	{d10, d11}, [r1:128]
	add	r1, r4, #32
	vst1.64	{d10, d11}, [r1]
	str	lr, [r0, #96]
	str	lr, [r4, #48]
	add	lr, r6, #1552
	str	r10, [r0, #100]
	adr	r1, LCPI0_169
	vld1.64	{d16, d17}, [r1:128]
	mov	r1, r4
	vst1.32	{d10, d11}, [r1]!
	vst1.64	{d16, d17}, [r1]
	vst1.64	{d16, d17}, [lr:128]    @ 16-byte Spill
	str	r10, [r4, #52]
	sub	sp, sp, #20
	mov	r1, #7
	stm	sp, {r0, r12}
	mov	r0, #4
	str	r1, [sp, #8]
	mov	r1, #0
	str	r10, [sp, #12]
	str	r4, [sp, #16]
	bl	_nnc_aten_conv2d
	add	sp, sp, #20
	sub	r0, sp, #8
	bic	r2, r0, #7
	mov	sp, r2
	sub	r0, sp, #16
	bic	r3, r0, #15
	mov	sp, r3
	sub	r0, sp, #64
	bic	r0, r0, #7
	mov	sp, r0
	mov	r1, sp
	sub	r12, r1, #4
	mov	sp, r12
	sub	r4, sp, #16
	bic	lr, r4, #15
	mov	sp, lr
	strb	r5, [r1, #-4]
	add	r4, r0, #16
	add	r5, r6, #1584
	ldr	r11, [r6, #1496]        @ 4-byte Reload
	vld1.64	{d16, d17}, [r5:128]    @ 16-byte Reload
	mov	r5, #48
	vst1.64	{d10, d11}, [r4]
	mov	r4, r0
	vst1.32	{d16, d17}, [r4], r5
	ldr	r5, [r6, #1092]         @ 4-byte Reload
	str	r5, [r2]
	mov	r5, #6
	strb	r5, [r1, #-3]
	add	r1, r6, #1536
	vld1.64	{d18, d19}, [r1:128]    @ 16-byte Reload
	add	r1, r6, #1568
	vst1.64	{d18, d19}, [r3:128]
	vld1.64	{d18, d19}, [r1:128]    @ 16-byte Reload
	add	r1, r0, #32
	str	r11, [r2, #4]
	vst1.64	{d18, d19}, [r4]
	vst1.64	{d16, d17}, [r1]
	vst1.64	{d10, d11}, [lr:128]
	sub	sp, sp, #20
	stm	sp, {r0, r12}
	mov	r1, #2
	add	r0, sp, #8
	stm	r0, {r1, r10, lr}
	mov	r0, #2
	mov	r1, #0
	bl	_nnc_aten_adaptive_avg_pool2d
	add	sp, sp, #20
	ldr	r4, [r6, #428]          @ 4-byte Reload
	mov	r2, #960
	ldr	r1, [r6, #1092]         @ 4-byte Reload
	mov	r0, r4
	bl	_memcpy
	sub	r0, sp, #12
	bic	r2, r0, #7
	mov	sp, r2
	sub	r0, sp, #24
	bic	r3, r0, #15
	mov	sp, r3
	sub	r0, sp, #48
	bic	lr, r0, #7
	mov	sp, lr
	mov	r1, sp
	sub	r12, r1, #4
	mov	sp, r12
	ldr	r5, [r6, #1096]         @ 4-byte Reload
	mov	r0, #6
	str	r5, [r2]
	mov	r11, #6
	strb	r0, [r1, #-4]
	str	r4, [r2, #4]
	adr	r4, LCPI0_170
	str	r8, [r6, #24]
	add	r8, r6, #1584
	vld1.64	{d16, d17}, [r4:128]
	add	r4, r6, #1568
	strb	r0, [r1, #-3]
	add	r0, r6, #1552
	vld1.64	{d10, d11}, [r0:128]    @ 16-byte Reload
	mov	r0, lr
	vst1.64	{d16, d17}, [r4:128]    @ 16-byte Spill
	mov	r4, r3
	vst1.32	{d16, d17}, [r0]!
	vld1.64	{d16, d17}, [r8:128]    @ 16-byte Reload
	vst1.64	{d10, d11}, [r4:128]!
	ldr	r8, [r6, #24]
	vst1.64	{d16, d17}, [r0]
	ldr	r0, [r6, #1100]         @ 4-byte Reload
	str	r0, [r2, #12]
	ldr	r0, [r6, #1104]         @ 4-byte Reload
	str	r0, [r2, #8]
	mov	r0, #2
	strb	r11, [r1, #-2]
	stm	r4, {r0, r10}
	adr	r0, LCPI0_171
	vld1.64	{d16, d17}, [r0:128]
	add	r0, lr, #32
	vst1.64	{d16, d17}, [r0]
	sub	sp, sp, #20
	str	lr, [sp]
	add	lr, r6, #1024
	add	r0, lr, #824
	str	r0, [sp, #16]
	mov	r0, #3
	mov	r1, #0
	str	r12, [sp, #4]
	str	r10, [sp, #8]
	str	r10, [sp, #12]
	bl	_nnc_aten_matmul
	add	sp, sp, #20
	vld1.32	{d16, d17}, [r5]!
	vclt.f32	q10, q8, #0
	vld1.32	{d18, d19}, [r5]
	vbic	q8, q8, q10
	mov	r5, #48
	vclt.f32	q10, q9, #0
	ldr	r0, [r6, #1204]         @ 4-byte Reload
	vbic	q9, q9, q10
	ldr	r3, [r6, #420]          @ 4-byte Reload
	vst1.32	{d16, d17}, [r0]!
	vst1.32	{d18, d19}, [r0]
	add	r0, r3, #16
	vld1.32	{d16, d17}, [r0]
	mov	r0, r3
	vclt.f32	q9, q8, #0
	ldr	r2, [r6, #424]          @ 4-byte Reload
	vbic	q8, q8, q9
	vld1.32	{d18, d19}, [r0], r5
	add	r1, r2, #16
	vst1.32	{d16, d17}, [r1]
	vclt.f32	q8, q9, #0
	vbic	q8, q9, q8
	mov	r1, r2
	vst1.32	{d16, d17}, [r1], r5
	vld1.32	{d16, d17}, [r0]
	add	r0, r3, #32
	vclt.f32	q10, q8, #0
	vld1.32	{d18, d19}, [r0]
	vbic	q8, q8, q10
	add	r0, r2, #32
	vst1.32	{d16, d17}, [r1]
	vclt.f32	q8, q9, #0
	vbic	q8, q9, q8
	add	r1, r3, #192
	vst1.32	{d16, d17}, [r0]
	add	r0, r3, #64
	vld1.32	{d16, d17}, [r0]
	add	r0, r3, #80
	vld1.32	{d18, d19}, [r0]
	add	r0, r2, #80
	vclt.f32	q10, q9, #0
	vbic	q9, q9, q10
	vst1.32	{d18, d19}, [r0]
	vclt.f32	q9, q8, #0
	vbic	q8, q8, q9
	add	r0, r2, #64
	vst1.32	{d16, d17}, [r0]
	add	r0, r3, #96
	vld1.32	{d16, d17}, [r0]
	add	r0, r3, #112
	vld1.32	{d18, d19}, [r0]
	add	r0, r2, #112
	vclt.f32	q10, q9, #0
	vbic	q9, q9, q10
	vst1.32	{d18, d19}, [r0]
	vclt.f32	q9, q8, #0
	vbic	q8, q8, q9
	add	r0, r2, #96
	vst1.32	{d16, d17}, [r0]
	add	r0, r3, #128
	vld1.32	{d16, d17}, [r0]
	add	r0, r3, #144
	vld1.32	{d18, d19}, [r0]
	add	r0, r2, #144
	vclt.f32	q10, q9, #0
	vbic	q9, q9, q10
	vst1.32	{d18, d19}, [r0]
	vclt.f32	q9, q8, #0
	vbic	q8, q8, q9
	add	r0, r2, #128
	vst1.32	{d16, d17}, [r0]
	add	r0, r3, #160
	vld1.32	{d16, d17}, [r0]
	add	r0, r3, #176
	vld1.32	{d18, d19}, [r0]
	add	r0, r2, #176
	vclt.f32	q10, q9, #0
	vbic	q9, q9, q10
	vst1.32	{d18, d19}, [r0]
	vclt.f32	q9, q8, #0
	vbic	q8, q8, q9
	add	r0, r2, #160
	vst1.32	{d16, d17}, [r0]
	add	r0, r2, #192
	vld1.32	{d16, d17}, [r1]
	vclt.f32	q9, q8, #0
	vbic	q8, q8, q9
	vst1.32	{d16, d17}, [r0]
	sub	r0, sp, #12
	bic	r2, r0, #7
	mov	sp, r2
	sub	r0, sp, #24
	bic	r3, r0, #15
	mov	sp, r3
	sub	r0, sp, #48
	bic	lr, r0, #7
	mov	sp, lr
	mov	r1, sp
	sub	r12, r1, #4
	mov	sp, r12
	add	r5, r6, #1584
	mov	r0, #6
	vld1.64	{d16, d17}, [r5:128]    @ 16-byte Reload
	add	r5, r6, #1568
	mov	r4, r3
	mov	r11, #6
	strb	r0, [r1, #-4]
	strb	r0, [r1, #-3]
	mov	r0, lr
	vst1.32	{d16, d17}, [r0]!
	vld1.64	{d16, d17}, [r5:128]    @ 16-byte Reload
	vst1.64	{d16, d17}, [r0]
	ldr	r5, [r6, #460]          @ 4-byte Reload
	ldr	r0, [r6, #1204]         @ 4-byte Reload
	str	r5, [r2]
	str	r0, [r2, #4]
	ldr	r0, [r6, #1108]         @ 4-byte Reload
	str	r0, [r2, #8]
	ldr	r0, [r6, #1104]         @ 4-byte Reload
	vst1.64	{d10, d11}, [r4:128]!
	str	r0, [r2, #12]
	mov	r0, #2
	strb	r11, [r1, #-2]
	mov	r11, r5
	stm	r4, {r0, r10}
	adr	r0, LCPI0_172
	vld1.64	{d16, d17}, [r0:128]
	add	r0, lr, #32
	vst1.64	{d16, d17}, [r0]
	sub	sp, sp, #20
	str	lr, [sp]
	add	lr, r6, #1024
	add	r0, lr, #824
	str	r0, [sp, #16]
	mov	r0, #3
	mov	r1, #0
	str	r12, [sp, #4]
	str	r10, [sp, #8]
	str	r10, [sp, #12]
	bl	_nnc_aten_matmul
	add	sp, sp, #20
	vmov.f32	q8, #3.000000e+00
	ldr	r1, [r6, #1448]         @ 4-byte Reload
	vmov.f32	q9, #6.000000e+00
	mov	r12, #196
	mov	lr, #0
	b	LBB0_198
	.p2align	4
@ %bb.189:
	.data_region
LCPI0_171:
	.long	240                     @ 0xf0
	.long	0                       @ 0x0
	.long	60                      @ 0x3c
	.long	0                       @ 0x0
	.p2align	4
@ %bb.190:
LCPI0_172:
	.long	60                      @ 0x3c
	.long	0                       @ 0x0
	.long	240                     @ 0xf0
	.long	0                       @ 0x0
	.p2align	4
@ %bb.191:
LCPI0_173:
	.long	14                      @ 0xe
	.long	0                       @ 0x0
	.long	14                      @ 0xe
	.long	0                       @ 0x0
	.p2align	4
@ %bb.192:
LCPI0_174:
	.long	1                       @ 0x1
	.long	0                       @ 0x0
	.long	40                      @ 0x28
	.long	0                       @ 0x0
	.p2align	4
@ %bb.193:
LCPI0_175:
	.long	1                       @ 0x1
	.long	0                       @ 0x0
	.long	240                     @ 0xf0
	.long	0                       @ 0x0
	.p2align	4
@ %bb.194:
LCPI0_176:
	.long	1                       @ 0x1
	.long	0                       @ 0x0
	.long	1                       @ 0x1
	.long	0                       @ 0x0
	.p2align	4
@ %bb.195:
LCPI0_177:
	.long	40                      @ 0x28
	.long	0                       @ 0x0
	.long	240                     @ 0xf0
	.long	0                       @ 0x0
	.p2align	4
@ %bb.196:
LCPI0_178:
	.long	4                       @ 0x4
	.long	0                       @ 0x0
	.long	1                       @ 0x1
	.long	0                       @ 0x0
	.p2align	4
@ %bb.197:
LCPI0_179:
	.long	4                       @ 0x4
	.long	0                       @ 0x0
	.long	4                       @ 0x4
	.long	0                       @ 0x0
	.p2align	2
LBB0_198:                               @ %cond163.preheader.i
                                        @ =>This Loop Header: Depth=1
                                        @     Child Loop BB0_199 Depth 2
	.end_data_region
	add	r0, r11, r10, lsl #2
	mov	r3, #0
	mov	r4, #0
	vldr	s0, [r0]
	umull	r2, r0, r10, r12
	vadd.f32	s2, s0, s28
	vcmpe.f32	s2, #0
	vmrs	APSR_nzcv, fpscr
	vdiv.f32	s0, s2, s16
	vmax.f32	d1, d1, d12
	vmovmi.f32	s0, s24
	vcmpe.f32	s2, s16
	vmrs	APSR_nzcv, fpscr
	vmovgt.f32	s0, s30
	vdup.32	q10, d0[0]
LBB0_199:                               @ %cond166.preheader.i
                                        @   Parent Loop BB0_198 Depth=1
                                        @ =>  This Inner Loop Header: Depth=2
	rsb	r0, r3, r3, lsl #3
	ldr	r5, [r6, #1496]         @ 4-byte Reload
	adds	r3, r3, #1
	add	r0, r2, r0, lsl #1
	adc	r4, r4, #0
	add	r5, r5, r0, lsl #2
	vld1.32	{d22, d23}, [r5]!
	vmul.f32	q11, q10, q11
	vld1.32	{d24, d25}, [r5]
	add	r5, r1, r0, lsl #2
	vmul.f32	q12, q10, q12
	ldr	r1, [r6, #1496]         @ 4-byte Reload
	vadd.f32	q13, q11, q8
	vadd.f32	q14, q12, q8
	vclt.f32	q15, q13, #0
	vbic	q13, q13, q15
	vclt.f32	q15, q14, #0
	vmin.f32	q13, q13, q9
	vbic	q14, q14, q15
	vmin.f32	q14, q14, q9
	vmul.f32	q3, q11, q13
	vmul.f32	q2, q12, q14
	vdiv.f32	s7, s15, s16
	vdiv.f32	s6, s14, s16
	vdiv.f32	s5, s13, s16
	vdiv.f32	s4, s12, s16
	vdiv.f32	s15, s11, s16
	vdiv.f32	s14, s10, s16
	vdiv.f32	s13, s9, s16
	vdiv.f32	s12, s8, s16
	vst1.32	{d2, d3}, [r5]!
	vst1.32	{d6, d7}, [r5]
	add	r5, r0, #8
	add	r1, r1, r5, lsl #2
	vld1.32	{d22, d23}, [r1]
	vmul.f32	q11, q10, q11
	ldr	r1, [r6, #1448]         @ 4-byte Reload
	add	r1, r1, r5, lsl #2
	ldr	r5, [r6, #1496]         @ 4-byte Reload
	vadd.f32	q12, q11, q8
	vclt.f32	q13, q12, #0
	vbic	q12, q12, q13
	vmin.f32	q12, q12, q9
	vmul.f32	q1, q11, q12
	vdiv.f32	s11, s7, s16
	vdiv.f32	s10, s6, s16
	vdiv.f32	s9, s5, s16
	vdiv.f32	s8, s4, s16
	vst1.32	{d4, d5}, [r1]
	add	r1, r0, #12
	add	r0, r0, #13
	add	r5, r5, r1, lsl #2
	vldr	s2, [r5]
	ldr	r5, [r6, #1448]         @ 4-byte Reload
	vmul.f32	s2, s0, s2
	add	r1, r5, r1, lsl #2
	vadd.f32	s4, s2, s28
	vmax.f32	d22, d2, d12
	vmin.f32	d2, d22, d8
	vmul.f32	s2, s2, s4
	vdiv.f32	s2, s2, s16
	vstr	s2, [r1]
	ldr	r1, [r6, #1496]         @ 4-byte Reload
	add	r1, r1, r0, lsl #2
	vldr	s2, [r1]
	ldr	r1, [r6, #1448]         @ 4-byte Reload
	vmul.f32	s2, s0, s2
	add	r0, r1, r0, lsl #2
	vadd.f32	s4, s2, s28
	vmax.f32	d22, d2, d12
	vmin.f32	d2, d22, d8
	vmul.f32	s2, s2, s4
	vdiv.f32	s2, s2, s16
	vstr	s2, [r0]
	eor	r0, r3, #14
	orrs	r0, r0, r4
	bne	LBB0_199
@ %bb.200:                              @ %exit165.i
                                        @   in Loop: Header=BB0_198 Depth=1
	adds	r10, r10, #1
	adc	lr, lr, #0
	eor	r0, r10, #240
	orrs	r0, r0, lr
	bne	LBB0_198
@ %bb.201:                              @ %exit162.i
	adr	r0, LCPI0_173
	vld1.64	{d16, d17}, [r0:128]
	sub	r0, sp, #16
	bic	r2, r0, #7
	mov	sp, r2
	sub	r0, sp, #32
	bic	r3, r0, #31
	mov	sp, r3
	sub	r0, sp, #104
	bic	r5, r0, #7
	mov	sp, r5
	mov	r4, sp
	sub	r12, r4, #4
	mov	sp, r12
	mov	r11, r1
	sub	r1, sp, #56
	bic	r10, r1, #15
	mov	sp, r10
	add	r1, r5, #16
	ldr	r0, [r6, #1284]         @ 4-byte Reload
	mov	lr, #6
	str	r0, [r2]
	strb	lr, [r4, #-4]
	mov	r0, r5
	vst1.64	{d16, d17}, [r1]
	adr	r1, LCPI0_174
	vmov.i32	q11, #0x0
	vld1.64	{d18, d19}, [r1:128]
	mov	r1, #48
	vst1.32	{d18, d19}, [r0], r1
	add	r1, r6, #464
	str	r11, [r2, #4]
	mov	r11, #0
	strb	lr, [r4, #-3]
	vst1.64	{d16, d17}, [r0]
	adr	r0, LCPI0_175
	vld1.64	{d16, d17}, [r0:128]
	add	r0, r5, #32
	vst1.64	{d16, d17}, [r0]
	adr	r0, LCPI0_176
	vld1.64	{d16, d17}, [r0:128]
	add	r0, r5, #80
	strb	lr, [r4, #-2]
	vst1.64	{d16, d17}, [r0]
	adr	r0, LCPI0_177
	vld1.64	{d18, d19}, [r0:128]
	add	r0, r5, #64
	vst1.64	{d18, d19}, [r0]
	add	r0, r2, #8
	vld1.64	{d18, d19}, [r1:128]    @ 16-byte Reload
	vst1.64	{d18, d19}, [r0]
	adr	r0, LCPI0_178
	vld1.64	{d18, d19}, [r0:128]
	adr	r0, LCPI0_179
	vld1.64	{d20, d21}, [r0:128]
	mov	r0, r3
	vst1.32	{d20, d21}, [r0]!
	vst1.64	{d18, d19}, [r0]
	mov	r0, #40
	str	r0, [r5, #96]
	add	r0, r10, #32
	strb	lr, [r4, #-1]
	vst1.64	{d16, d17}, [r0:128]
	mov	r0, #1
	str	r0, [r10, #48]
	mov	r0, r10
	str	r11, [r10, #52]
	vst1.64	{d16, d17}, [r0:128]!
	str	r11, [r5, #100]
	vst1.64	{d22, d23}, [r0:128]
	sub	sp, sp, #20
	mov	r0, #7
	stm	sp, {r5, r12}
	mov	r1, #0
	str	r0, [sp, #8]
	mov	r0, #4
	str	r11, [sp, #12]
	str	r10, [sp, #16]
	bl	_nnc_aten_conv2d
	add	sp, sp, #20
	ldr	r10, [r6, #492]         @ 4-byte Reload
	mov	lr, #0
	ldr	r12, [r6, #1284]        @ 4-byte Reload
LBB0_202:                               @ %cond172.preheader.i
                                        @ =>This Loop Header: Depth=1
                                        @     Child Loop BB0_203 Depth 2
	mov	r0, #196
	mov	r5, #0
	umull	r2, r3, r11, r0
	mov	r3, #0
LBB0_203:                               @ %cond175.preheader.i
                                        @   Parent Loop BB0_202 Depth=1
                                        @ =>  This Inner Loop Header: Depth=2
	rsb	r0, r3, r3, lsl #3
	add	r0, r2, r0, lsl #1
	add	r4, r12, r0, lsl #2
	add	r1, r8, r0, lsl #2
	vld1.32	{d18, d19}, [r1]!
	vld1.32	{d16, d17}, [r4]!
	vadd.f32	q8, q9, q8
	vld1.32	{d20, d21}, [r1]
	add	r1, r10, r0, lsl #2
	vld1.32	{d18, d19}, [r4]
	vst1.32	{d16, d17}, [r1]!
	vadd.f32	q8, q10, q9
	vst1.32	{d16, d17}, [r1]
	add	r1, r0, #8
	add	r4, r12, r1, lsl #2
	vld1.32	{d16, d17}, [r4]
	add	r4, r10, r1, lsl #2
	add	r1, r8, r1, lsl #2
	vld1.32	{d18, d19}, [r1]
	add	r1, r0, #12
	vadd.f32	q8, q9, q8
	add	r0, r0, #13
	vst1.32	{d16, d17}, [r4]
	add	r4, r12, r1, lsl #2
	vldr	s0, [r4]
	add	r4, r10, r1, lsl #2
	add	r1, r8, r1, lsl #2
	vldr	s2, [r1]
	add	r1, r12, r0, lsl #2
	vadd.f32	s0, s2, s0
	vstr	s0, [r4]
	vldr	s0, [r1]
	add	r1, r8, r0, lsl #2
	add	r0, r10, r0, lsl #2
	vldr	s2, [r1]
	vadd.f32	s0, s2, s0
	vstr	s0, [r0]
	orr	r0, r3, #1
	adds	r3, r3, #2
	rsb	r0, r0, r0, lsl #3
	adc	r5, r5, #0
	add	r0, r2, r0, lsl #1
	add	r1, r12, r0, lsl #2
	add	r4, r8, r0, lsl #2
	vld1.32	{d18, d19}, [r4]!
	vld1.32	{d16, d17}, [r1]!
	vadd.f32	q8, q9, q8
	vld1.32	{d18, d19}, [r1]
	add	r1, r10, r0, lsl #2
	vld1.32	{d20, d21}, [r4]
	vadd.f32	q9, q10, q9
	vst1.32	{d16, d17}, [r1]!
	vst1.32	{d18, d19}, [r1]
	add	r1, r0, #8
	add	r4, r12, r1, lsl #2
	vld1.32	{d16, d17}, [r4]
	add	r4, r8, r1, lsl #2
	add	r1, r10, r1, lsl #2
	vld1.32	{d18, d19}, [r4]
	vadd.f32	q8, q9, q8
	vst1.32	{d16, d17}, [r1]
	add	r1, r0, #12
	add	r0, r0, #13
	add	r4, r12, r1, lsl #2
	vldr	s0, [r4]
	add	r4, r8, r1, lsl #2
	add	r1, r10, r1, lsl #2
	vldr	s2, [r4]
	vadd.f32	s0, s2, s0
	vstr	s0, [r1]
	add	r1, r12, r0, lsl #2
	vldr	s0, [r1]
	add	r1, r8, r0, lsl #2
	add	r0, r10, r0, lsl #2
	vldr	s2, [r1]
	vadd.f32	s0, s2, s0
	vstr	s0, [r0]
	eor	r0, r3, #14
	orrs	r0, r0, r5
	bne	LBB0_203
@ %bb.204:                              @ %exit174.i
                                        @   in Loop: Header=BB0_202 Depth=1
	adds	r11, r11, #1
	adc	lr, lr, #0
	eor	r0, r11, #40
	orrs	r0, r0, lr
	bne	LBB0_202
@ %bb.205:                              @ %exit171.i
	adr	r0, LCPI0_180
	vld1.64	{d16, d17}, [r0:128]
	sub	r0, sp, #16
	bic	r2, r0, #7
	mov	sp, r2
	sub	r0, sp, #32
	bic	r3, r0, #31
	mov	sp, r3
	sub	r0, sp, #104
	bic	r5, r0, #7
	mov	sp, r5
	mov	r4, sp
	sub	r12, r4, #4
	mov	sp, r12
	sub	r1, sp, #56
	bic	r8, r1, #15
	mov	sp, r8
	add	r1, r5, #16
	ldr	r11, [r6, #520]         @ 4-byte Reload
	mov	lr, #6
	str	r11, [r2]
	strb	lr, [r4, #-4]
	mov	r0, r5
	vst1.64	{d16, d17}, [r1]
	adr	r1, LCPI0_181
	vmov.i32	q11, #0x0
	vld1.64	{d18, d19}, [r1:128]
	mov	r1, #48
	vst1.32	{d18, d19}, [r0], r1
	add	r1, r6, #496
	str	r10, [r2, #4]
	mov	r10, #0
	strb	lr, [r4, #-3]
	vst1.64	{d16, d17}, [r0]
	adr	r0, LCPI0_182
	vld1.64	{d16, d17}, [r0:128]
	add	r0, r5, #32
	vst1.64	{d16, d17}, [r0]
	adr	r0, LCPI0_183
	vld1.64	{d16, d17}, [r0:128]
	add	r0, r5, #80
	strb	lr, [r4, #-2]
	vst1.64	{d16, d17}, [r0]
	adr	r0, LCPI0_184
	vld1.64	{d18, d19}, [r0:128]
	add	r0, r5, #64
	vst1.64	{d18, d19}, [r0]
	add	r0, r2, #8
	vld1.64	{d18, d19}, [r1:128]    @ 16-byte Reload
	vst1.64	{d18, d19}, [r0]
	adr	r0, LCPI0_185
	vld1.64	{d18, d19}, [r0:128]
	adr	r0, LCPI0_186
	vld1.64	{d20, d21}, [r0:128]
	mov	r0, r3
	vst1.32	{d20, d21}, [r0]!
	vst1.64	{d18, d19}, [r0]
	mov	r0, #120
	str	r0, [r5, #96]
	add	r0, r8, #32
	strb	lr, [r4, #-1]
	vst1.64	{d16, d17}, [r0:128]
	mov	r0, #1
	str	r0, [r8, #48]
	mov	r0, r8
	str	r10, [r8, #52]
	vst1.64	{d16, d17}, [r0:128]!
	str	r10, [r5, #100]
	vst1.64	{d22, d23}, [r0:128]
	sub	sp, sp, #20
	mov	r0, #7
	stm	sp, {r5, r12}
	mov	r1, #0
	str	r0, [sp, #8]
	mov	r0, #4
	str	r8, [sp, #16]
	mov	r8, r11
	str	r10, [sp, #12]
	bl	_nnc_aten_conv2d
	add	sp, sp, #20
	vmov.f32	q8, #3.000000e+00
	ldr	r11, [r6, #524]         @ 4-byte Reload
	vmov.f32	q9, #6.000000e+00
	mov	r12, #196
	mov	lr, #0
	b	LBB0_217
	.p2align	4
@ %bb.206:
	.data_region
LCPI0_180:
	.long	14                      @ 0xe
	.long	0                       @ 0x0
	.long	14                      @ 0xe
	.long	0                       @ 0x0
	.p2align	4
@ %bb.207:
LCPI0_181:
	.long	1                       @ 0x1
	.long	0                       @ 0x0
	.long	120                     @ 0x78
	.long	0                       @ 0x0
	.p2align	4
@ %bb.208:
LCPI0_182:
	.long	1                       @ 0x1
	.long	0                       @ 0x0
	.long	40                      @ 0x28
	.long	0                       @ 0x0
	.p2align	4
@ %bb.209:
LCPI0_183:
	.long	1                       @ 0x1
	.long	0                       @ 0x0
	.long	1                       @ 0x1
	.long	0                       @ 0x0
	.p2align	4
@ %bb.210:
LCPI0_184:
	.long	120                     @ 0x78
	.long	0                       @ 0x0
	.long	40                      @ 0x28
	.long	0                       @ 0x0
	.p2align	4
@ %bb.211:
LCPI0_185:
	.long	4                       @ 0x4
	.long	0                       @ 0x0
	.long	1                       @ 0x1
	.long	0                       @ 0x0
	.p2align	4
@ %bb.212:
LCPI0_186:
	.long	4                       @ 0x4
	.long	0                       @ 0x0
	.long	4                       @ 0x4
	.long	0                       @ 0x0
	.p2align	4
@ %bb.213:
LCPI0_187:
	.long	5                       @ 0x5
	.long	0                       @ 0x0
	.long	5                       @ 0x5
	.long	0                       @ 0x0
	.p2align	4
@ %bb.214:
LCPI0_188:
	.long	120                     @ 0x78
	.long	0                       @ 0x0
	.long	1                       @ 0x1
	.long	0                       @ 0x0
	.p2align	4
@ %bb.215:
LCPI0_189:
	.long	2                       @ 0x2
	.long	0                       @ 0x0
	.long	2                       @ 0x2
	.long	0                       @ 0x0
	.p2align	4
@ %bb.216:
LCPI0_190:
	.long	1                       @ 0x1
	.long	0                       @ 0x0
	.long	30                      @ 0x1e
	.long	0                       @ 0x0
	.p2align	2
LBB0_217:                               @ %cond181.preheader.i
                                        @ =>This Loop Header: Depth=1
                                        @     Child Loop BB0_218 Depth 2
	.end_data_region
	umull	r2, r0, r10, r12
	mov	r3, #0
	mov	r5, #0
LBB0_218:                               @ %cond184.preheader.i
                                        @   Parent Loop BB0_217 Depth=1
                                        @ =>  This Inner Loop Header: Depth=2
	rsb	r0, r3, r3, lsl #3
	adds	r3, r3, #1
	adc	r5, r5, #0
	add	r0, r2, r0, lsl #1
	add	r4, r8, r0, lsl #2
	vld1.32	{d20, d21}, [r4]!
	vadd.f32	q11, q10, q8
	vld1.32	{d24, d25}, [r4]
	add	r4, r11, r0, lsl #2
	vadd.f32	q13, q12, q8
	vclt.f32	q14, q11, #0
	vbic	q11, q11, q14
	vclt.f32	q14, q13, #0
	vmin.f32	q11, q11, q9
	vbic	q13, q13, q14
	vmin.f32	q13, q13, q9
	vmul.f32	q2, q10, q11
	vmul.f32	q1, q12, q13
	vdiv.f32	s3, s11, s16
	vdiv.f32	s2, s10, s16
	vdiv.f32	s1, s9, s16
	vdiv.f32	s0, s8, s16
	vdiv.f32	s11, s7, s16
	vdiv.f32	s10, s6, s16
	vdiv.f32	s9, s5, s16
	vdiv.f32	s8, s4, s16
	vst1.32	{d0, d1}, [r4]!
	vst1.32	{d4, d5}, [r4]
	add	r4, r0, #8
	add	r1, r8, r4, lsl #2
	vld1.32	{d20, d21}, [r1]
	add	r1, r11, r4, lsl #2
	vadd.f32	q11, q10, q8
	vclt.f32	q12, q11, #0
	vbic	q11, q11, q12
	vmin.f32	q11, q11, q9
	vmul.f32	q0, q10, q11
	vdiv.f32	s7, s3, s16
	vdiv.f32	s6, s2, s16
	vdiv.f32	s5, s1, s16
	vdiv.f32	s4, s0, s16
	vst1.32	{d2, d3}, [r1]
	add	r1, r0, #12
	add	r0, r0, #13
	add	r4, r8, r1, lsl #2
	add	r1, r11, r1, lsl #2
	vldr	s0, [r4]
	vadd.f32	s2, s0, s28
	vmax.f32	d20, d1, d12
	vmin.f32	d1, d20, d8
	vmul.f32	s0, s0, s2
	vdiv.f32	s0, s0, s16
	vstr	s0, [r1]
	add	r1, r8, r0, lsl #2
	add	r0, r11, r0, lsl #2
	vldr	s0, [r1]
	vadd.f32	s2, s0, s28
	vmax.f32	d20, d1, d12
	vmin.f32	d1, d20, d8
	vmul.f32	s0, s0, s2
	vdiv.f32	s0, s0, s16
	vstr	s0, [r0]
	eor	r0, r3, #14
	orrs	r0, r0, r5
	bne	LBB0_218
@ %bb.219:                              @ %exit183.i
                                        @   in Loop: Header=BB0_217 Depth=1
	adds	r10, r10, #1
	adc	lr, lr, #0
	eor	r0, r10, #120
	orrs	r0, r0, lr
	bne	LBB0_217
@ %bb.220:                              @ %exit180.i
	adr	r0, LCPI0_180
	add	lr, r6, #1552
	vld1.64	{d18, d19}, [r0:128]
	sub	r0, sp, #16
	bic	r2, r0, #7
	vst1.64	{d18, d19}, [lr:128]    @ 16-byte Spill
	mov	sp, r2
	sub	r0, sp, #32
	bic	r3, r0, #31
	mov	sp, r3
	sub	r0, sp, #104
	bic	r0, r0, #7
	mov	sp, r0
	mov	r4, sp
	sub	r12, r4, #4
	mov	sp, r12
	sub	r5, sp, #56
	bic	r5, r5, #7
	mov	sp, r5
	ldr	r1, [r6, #1500]         @ 4-byte Reload
	mov	r8, #6
	str	r1, [r2]
	add	r1, r0, #16
	strb	r8, [r4, #-4]
	add	lr, r6, #1584
	vst1.64	{d18, d19}, [r1]
	adr	r1, LCPI0_181
	mov	r10, #0
	vld1.64	{d16, d17}, [r1:128]
	mov	r1, r0
	vst1.64	{d16, d17}, [lr:128]    @ 16-byte Spill
	mov	lr, #48
	vst1.32	{d16, d17}, [r1], lr
	add	lr, r6, #544
	vst1.64	{d18, d19}, [r1]
	add	r1, r0, #32
	str	r11, [r2, #4]
	strb	r8, [r4, #-3]
	vst1.64	{d16, d17}, [r1]
	adr	r1, LCPI0_187
	vld1.64	{d16, d17}, [r1:128]
	add	r1, r0, #80
	strb	r8, [r4, #-2]
	vst1.64	{d16, d17}, [r1]
	adr	r1, LCPI0_188
	vld1.64	{d16, d17}, [r1:128]
	add	r1, r0, #64
	vst1.64	{d16, d17}, [r1]
	add	r1, r2, #8
	vld1.64	{d16, d17}, [lr:128]    @ 16-byte Reload
	add	lr, r6, #1536
	vst1.64	{d16, d17}, [r1]
	strb	r8, [r4, #-1]
	adr	r1, LCPI0_185
	vld1.64	{d16, d17}, [r1:128]
	adr	r1, LCPI0_186
	vld1.64	{d18, d19}, [r1:128]
	mov	r1, r3
	vst1.32	{d18, d19}, [r1]!
	vst1.64	{d18, d19}, [lr:128]    @ 16-byte Spill
	mov	lr, #120
	vst1.64	{d16, d17}, [r1]
	adr	r1, LCPI0_183
	vld1.64	{d10, d11}, [r1:128]
	add	r1, r5, #32
	vst1.64	{d10, d11}, [r1]
	str	lr, [r0, #96]
	str	lr, [r5, #48]
	add	lr, r6, #1568
	str	r10, [r0, #100]
	adr	r1, LCPI0_189
	vld1.64	{d16, d17}, [r1:128]
	mov	r1, r5
	vst1.32	{d10, d11}, [r1]!
	vst1.64	{d16, d17}, [r1]
	vst1.64	{d16, d17}, [lr:128]    @ 16-byte Spill
	str	r10, [r5, #52]
	sub	sp, sp, #20
	mov	r1, #7
	stm	sp, {r0, r12}
	mov	r0, #4
	str	r1, [sp, #8]
	mov	r1, #0
	str	r10, [sp, #12]
	str	r5, [sp, #16]
	bl	_nnc_aten_conv2d
	add	sp, sp, #20
	sub	r0, sp, #8
	bic	r2, r0, #7
	mov	sp, r2
	sub	r0, sp, #16
	bic	r3, r0, #15
	mov	sp, r3
	sub	r0, sp, #64
	bic	r0, r0, #7
	mov	sp, r0
	mov	r1, sp
	sub	r12, r1, #4
	mov	sp, r12
	sub	r5, sp, #16
	bic	lr, r5, #15
	mov	sp, lr
	strb	r8, [r1, #-4]
	add	r5, r0, #16
	add	r4, r6, #1584
	strb	r8, [r1, #-3]
	add	r1, r6, #1536
	vld1.64	{d16, d17}, [r4:128]    @ 16-byte Reload
	mov	r4, #48
	vld1.64	{d18, d19}, [r1:128]    @ 16-byte Reload
	add	r1, r6, #1552
	vst1.64	{d10, d11}, [r5]
	mov	r5, r0
	ldr	r11, [r6, #536]         @ 4-byte Reload
	vst1.32	{d16, d17}, [r5], r4
	vst1.64	{d18, d19}, [r3:128]
	vld1.64	{d18, d19}, [r1:128]    @ 16-byte Reload
	add	r1, r0, #32
	ldr	r4, [r6, #1500]         @ 4-byte Reload
	str	r11, [r2]
	str	r4, [r2, #4]
	vst1.64	{d18, d19}, [r5]
	vst1.64	{d16, d17}, [r1]
	vst1.64	{d10, d11}, [lr:128]
	sub	sp, sp, #20
	stm	sp, {r0, r12}
	mov	r1, #2
	add	r0, sp, #8
	stm	r0, {r1, r10, lr}
	mov	r0, #2
	mov	r1, #0
	bl	_nnc_aten_adaptive_avg_pool2d
	add	sp, sp, #20
	ldr	r5, [r6, #540]          @ 4-byte Reload
	mov	r1, r11
	mov	r2, #480
	mov	r0, r5
	bl	_memcpy
	sub	r0, sp, #12
	bic	r2, r0, #7
	mov	sp, r2
	sub	r0, sp, #24
	bic	r3, r0, #15
	mov	sp, r3
	sub	r0, sp, #48
	bic	lr, r0, #7
	mov	sp, lr
	mov	r1, sp
	sub	r12, r1, #4
	mov	sp, r12
	ldr	r8, [r6, #1212]         @ 4-byte Reload
	mov	r0, #6
	str	r8, [r2]
	add	r4, r6, #1552
	strb	r0, [r1, #-4]
	add	r11, r6, #1584
	str	r5, [r2, #4]
	adr	r5, LCPI0_190
	vld1.64	{d16, d17}, [r5:128]
	mov	r5, r3
	strb	r0, [r1, #-3]
	add	r0, r6, #1568
	vld1.64	{d10, d11}, [r0:128]    @ 16-byte Reload
	mov	r0, lr
	vst1.64	{d16, d17}, [r4:128]    @ 16-byte Spill
	mov	r4, #6
	vst1.32	{d16, d17}, [r0]!
	vld1.64	{d16, d17}, [r11:128]   @ 16-byte Reload
	vst1.64	{d16, d17}, [r0]
	ldr	r0, [r6, #1108]         @ 4-byte Reload
	vst1.64	{d10, d11}, [r5:128]!
	str	r0, [r2, #12]
	mov	r0, #2
	ldr	r11, [r6, #568]         @ 4-byte Reload
	str	r11, [r2, #8]
	strb	r4, [r1, #-2]
	stm	r5, {r0, r10}
	adr	r0, LCPI0_191
	vld1.64	{d16, d17}, [r0:128]
	add	r0, lr, #32
	vst1.64	{d16, d17}, [r0]
	sub	sp, sp, #20
	str	lr, [sp]
	add	lr, r6, #1024
	add	r0, lr, #824
	str	r0, [sp, #16]
	mov	r0, #3
	mov	r1, #0
	str	r12, [sp, #4]
	str	r10, [sp, #8]
	str	r10, [sp, #12]
	bl	_nnc_aten_matmul
	add	sp, sp, #20
	mov	r0, r8
	ldr	r4, [r6, #1112]         @ 4-byte Reload
	vld1.32	{d16, d17}, [r0]!
	mov	r5, #48
	vclt.f32	q9, q8, #0
	ldr	r2, [r6, #532]          @ 4-byte Reload
	vbic	q8, q8, q9
	vld1.32	{d18, d19}, [r0]
	mov	r0, r4
	vclt.f32	q10, q9, #0
	ldr	r3, [r6, #528]          @ 4-byte Reload
	vbic	q9, q9, q10
	vst1.32	{d16, d17}, [r0]!
	add	r1, r3, #16
	vst1.32	{d18, d19}, [r0]
	add	r0, r2, #16
	vld1.32	{d16, d17}, [r0]
	mov	r0, r2
	vclt.f32	q9, q8, #0
	vbic	q8, q8, q9
	vld1.32	{d18, d19}, [r0], r5
	vst1.32	{d16, d17}, [r1]
	vclt.f32	q8, q9, #0
	vbic	q8, q9, q8
	mov	r1, r3
	vst1.32	{d16, d17}, [r1], r5
	vld1.32	{d16, d17}, [r0]
	add	r0, r2, #32
	vclt.f32	q10, q8, #0
	vld1.32	{d18, d19}, [r0]
	vbic	q8, q8, q10
	add	r0, r3, #32
	vst1.32	{d16, d17}, [r1]
	vclt.f32	q8, q9, #0
	vbic	q8, q9, q8
	add	r1, r2, #64
	vst1.32	{d16, d17}, [r0]
	add	r0, r3, #64
	vld1.32	{d16, d17}, [r1]
	vclt.f32	q9, q8, #0
	vbic	q8, q8, q9
	vst1.32	{d16, d17}, [r0]
	sub	r0, sp, #12
	bic	r2, r0, #7
	vldr	s0, [r8, #112]
	vmax.f32	d0, d0, d12
	vstr	s0, [r4, #112]
	vldr	s0, [r8, #116]
	vmax.f32	d0, d0, d12
	vstr	s0, [r4, #116]
	mov	sp, r2
	sub	r0, sp, #24
	bic	r3, r0, #15
	mov	sp, r3
	sub	r0, sp, #48
	bic	lr, r0, #7
	mov	sp, lr
	mov	r1, sp
	sub	r12, r1, #4
	mov	sp, r12
	mov	r5, r3
	mov	r0, #6
	strb	r0, [r1, #-4]
	mov	r8, #6
	strb	r0, [r1, #-3]
	mov	r0, lr
	vst1.64	{d10, d11}, [r5:128]!
	str	r10, [r6, #24]
	add	r10, r6, #1584
	vld1.64	{d16, d17}, [r10:128]   @ 16-byte Reload
	add	r10, r6, #1552
	vst1.32	{d16, d17}, [r0]!
	vld1.64	{d16, d17}, [r10:128]   @ 16-byte Reload
	ldr	r10, [r6, #24]
	vst1.64	{d16, d17}, [r0]
	ldr	r0, [r6, #1288]         @ 4-byte Reload
	strb	r8, [r1, #-2]
	stm	r2, {r0, r4}
	ldr	r0, [r6, #1124]         @ 4-byte Reload
	str	r0, [r2, #8]
	mov	r0, #2
	str	r11, [r2, #12]
	stm	r5, {r0, r10}
	adr	r0, LCPI0_192
	vld1.64	{d16, d17}, [r0:128]
	add	r0, lr, #32
	vst1.64	{d16, d17}, [r0]
	sub	sp, sp, #20
	str	lr, [sp]
	add	lr, r6, #1024
	add	r0, lr, #824
	str	r0, [sp, #16]
	mov	r0, #3
	mov	r1, #0
	str	r12, [sp, #4]
	str	r10, [sp, #8]
	str	r10, [sp, #12]
	bl	_nnc_aten_matmul
	add	sp, sp, #20
	vmov.f32	q8, #3.000000e+00
	ldr	r11, [r6, #1308]        @ 4-byte Reload
	vmov.f32	q9, #6.000000e+00
	ldr	r8, [r6, #572]          @ 4-byte Reload
	mov	r12, #196
	mov	lr, #0
	b	LBB0_232
	.p2align	4
@ %bb.221:
	.data_region
LCPI0_191:
	.long	120                     @ 0x78
	.long	0                       @ 0x0
	.long	30                      @ 0x1e
	.long	0                       @ 0x0
	.p2align	4
@ %bb.222:
LCPI0_192:
	.long	30                      @ 0x1e
	.long	0                       @ 0x0
	.long	120                     @ 0x78
	.long	0                       @ 0x0
	.p2align	4
@ %bb.223:
LCPI0_193:
	.long	14                      @ 0xe
	.long	0                       @ 0x0
	.long	14                      @ 0xe
	.long	0                       @ 0x0
	.p2align	4
@ %bb.224:
LCPI0_194:
	.long	1                       @ 0x1
	.long	0                       @ 0x0
	.long	48                      @ 0x30
	.long	0                       @ 0x0
	.p2align	4
@ %bb.225:
LCPI0_195:
	.long	1                       @ 0x1
	.long	0                       @ 0x0
	.long	120                     @ 0x78
	.long	0                       @ 0x0
	.p2align	4
@ %bb.226:
LCPI0_196:
	.long	1                       @ 0x1
	.long	0                       @ 0x0
	.long	1                       @ 0x1
	.long	0                       @ 0x0
	.p2align	4
@ %bb.227:
LCPI0_197:
	.long	48                      @ 0x30
	.long	0                       @ 0x0
	.long	120                     @ 0x78
	.long	0                       @ 0x0
	.p2align	4
@ %bb.228:
LCPI0_198:
	.long	4                       @ 0x4
	.long	0                       @ 0x0
	.long	1                       @ 0x1
	.long	0                       @ 0x0
	.p2align	4
@ %bb.229:
LCPI0_199:
	.long	4                       @ 0x4
	.long	0                       @ 0x0
	.long	4                       @ 0x4
	.long	0                       @ 0x0
	.p2align	4
@ %bb.230:
LCPI0_200:
	.long	1                       @ 0x1
	.long	0                       @ 0x0
	.long	144                     @ 0x90
	.long	0                       @ 0x0
	.p2align	4
@ %bb.231:
LCPI0_201:
	.long	144                     @ 0x90
	.long	0                       @ 0x0
	.long	48                      @ 0x30
	.long	0                       @ 0x0
	.p2align	2
LBB0_232:                               @ %cond196.preheader.i
                                        @ =>This Loop Header: Depth=1
                                        @     Child Loop BB0_233 Depth 2
	.end_data_region                @ 4-byte Reload
	ldr	r0, [r6, #1288]
	mov	r3, #0
	mov	r5, #0
	add	r0, r0, r10, lsl #2
	vldr	s0, [r0]
	umull	r2, r0, r10, r12
	vadd.f32	s2, s0, s28
	vcmpe.f32	s2, #0
	vmrs	APSR_nzcv, fpscr
	vdiv.f32	s0, s2, s16
	vmax.f32	d1, d1, d12
	vmovmi.f32	s0, s24
	vcmpe.f32	s2, s16
	vmrs	APSR_nzcv, fpscr
	vmovgt.f32	s0, s30
	vdup.32	q10, d0[0]
LBB0_233:                               @ %cond199.preheader.i
                                        @   Parent Loop BB0_232 Depth=1
                                        @ =>  This Inner Loop Header: Depth=2
	rsb	r0, r3, r3, lsl #3
	ldr	r1, [r6, #1500]         @ 4-byte Reload
	adds	r3, r3, #1
	add	r0, r2, r0, lsl #1
	adc	r5, r5, #0
	add	r4, r1, r0, lsl #2
	ldr	r1, [r6, #1500]         @ 4-byte Reload
	vld1.32	{d22, d23}, [r4]!
	vmul.f32	q11, q10, q11
	vld1.32	{d24, d25}, [r4]
	add	r4, r8, r0, lsl #2
	vmul.f32	q12, q10, q12
	vadd.f32	q13, q11, q8
	vadd.f32	q14, q12, q8
	vclt.f32	q15, q13, #0
	vbic	q13, q13, q15
	vclt.f32	q15, q14, #0
	vmin.f32	q13, q13, q9
	vbic	q14, q14, q15
	vmin.f32	q14, q14, q9
	vmul.f32	q3, q11, q13
	vmul.f32	q2, q12, q14
	vdiv.f32	s7, s15, s16
	vdiv.f32	s6, s14, s16
	vdiv.f32	s5, s13, s16
	vdiv.f32	s4, s12, s16
	vdiv.f32	s15, s11, s16
	vdiv.f32	s14, s10, s16
	vdiv.f32	s13, s9, s16
	vdiv.f32	s12, s8, s16
	vst1.32	{d2, d3}, [r4]!
	vst1.32	{d6, d7}, [r4]
	add	r4, r0, #8
	add	r1, r1, r4, lsl #2
	vld1.32	{d22, d23}, [r1]
	add	r1, r8, r4, lsl #2
	vmul.f32	q11, q10, q11
	ldr	r4, [r6, #1500]         @ 4-byte Reload
	vadd.f32	q12, q11, q8
	vclt.f32	q13, q12, #0
	vbic	q12, q12, q13
	vmin.f32	q12, q12, q9
	vmul.f32	q1, q11, q12
	vdiv.f32	s11, s7, s16
	vdiv.f32	s10, s6, s16
	vdiv.f32	s9, s5, s16
	vdiv.f32	s8, s4, s16
	vst1.32	{d4, d5}, [r1]
	add	r1, r0, #12
	add	r0, r0, #13
	add	r4, r4, r1, lsl #2
	add	r1, r8, r1, lsl #2
	vldr	s2, [r4]
	vmul.f32	s2, s0, s2
	vadd.f32	s4, s2, s28
	vmax.f32	d22, d2, d12
	vmin.f32	d2, d22, d8
	vmul.f32	s2, s2, s4
	vdiv.f32	s2, s2, s16
	vstr	s2, [r1]
	ldr	r1, [r6, #1500]         @ 4-byte Reload
	add	r1, r1, r0, lsl #2
	add	r0, r8, r0, lsl #2
	vldr	s2, [r1]
	vmul.f32	s2, s0, s2
	vadd.f32	s4, s2, s28
	vmax.f32	d22, d2, d12
	vmin.f32	d2, d22, d8
	vmul.f32	s2, s2, s4
	vdiv.f32	s2, s2, s16
	vstr	s2, [r0]
	eor	r0, r3, #14
	orrs	r0, r0, r5
	bne	LBB0_233
@ %bb.234:                              @ %exit198.i
                                        @   in Loop: Header=BB0_232 Depth=1
	adds	r10, r10, #1
	adc	lr, lr, #0
	eor	r0, r10, #120
	orrs	r0, r0, lr
	bne	LBB0_232
@ %bb.235:                              @ %exit195.i
	adr	r0, LCPI0_193
	add	lr, r6, #1568
	vld1.64	{d16, d17}, [r0:128]
	sub	r0, sp, #16
	bic	r2, r0, #7
	vst1.64	{d16, d17}, [lr:128]    @ 16-byte Spill
	mov	sp, r2
	sub	r0, sp, #32
	bic	r3, r0, #31
	mov	sp, r3
	sub	r0, sp, #104
	bic	r0, r0, #7
	mov	sp, r0
	mov	r4, sp
	sub	r12, r4, #4
	mov	sp, r12
	sub	r5, sp, #56
	bic	r5, r5, #15
	mov	sp, r5
	add	r1, r0, #16
	mov	r10, #6
	str	r11, [r2]
	add	lr, r6, #1584
	strb	r10, [r4, #-4]
	mov	r11, #0
	vst1.64	{d16, d17}, [r1]
	adr	r1, LCPI0_194
	vld1.64	{d18, d19}, [r1:128]
	mov	r1, r0
	vst1.64	{d18, d19}, [lr:128]    @ 16-byte Spill
	mov	lr, #48
	vst1.32	{d18, d19}, [r1], lr
	mov	lr, #48
	str	r8, [r2, #4]
	add	r8, r6, #576
	strb	r10, [r4, #-3]
	vst1.64	{d16, d17}, [r1]
	adr	r1, LCPI0_195
	vld1.64	{d16, d17}, [r1:128]
	add	r1, r0, #32
	vst1.64	{d16, d17}, [r1]
	adr	r1, LCPI0_196
	vld1.64	{d10, d11}, [r1:128]
	add	r1, r0, #80
	strb	r10, [r4, #-2]
	vst1.64	{d10, d11}, [r1]
	adr	r1, LCPI0_197
	vld1.64	{d16, d17}, [r1:128]
	add	r1, r0, #64
	vst1.64	{d16, d17}, [r1]
	add	r1, r2, #8
	vld1.64	{d16, d17}, [r8:128]    @ 16-byte Reload
	vst1.64	{d16, d17}, [r1]
	strb	r10, [r4, #-1]
	adr	r1, LCPI0_198
	vld1.64	{d16, d17}, [r1:128]
	add	r1, r6, #1552
	vst1.64	{d16, d17}, [r1:128]    @ 16-byte Spill
	adr	r1, LCPI0_199
	vld1.64	{d18, d19}, [r1:128]
	add	r1, r6, #1536
	vst1.64	{d18, d19}, [r1:128]    @ 16-byte Spill
	mov	r1, r3
	vst1.32	{d18, d19}, [r1]!
	vst1.64	{d16, d17}, [r1]
	add	r1, r5, #32
	vmov.i32	q8, #0x0
	vst1.64	{d10, d11}, [r1:128]
	mov	r1, r5
	vst1.64	{d10, d11}, [r1:128]!
	vst1.64	{d16, d17}, [r1:128]
	mov	r1, #1
	str	lr, [r0, #96]
	str	r11, [r0, #100]
	str	r1, [r5, #48]
	str	r11, [r5, #52]
	sub	sp, sp, #20
	mov	r1, #7
	stm	sp, {r0, r12}
	mov	r0, #4
	str	r1, [sp, #8]
	mov	r1, #0
	str	r11, [sp, #12]
	str	r5, [sp, #16]
	bl	_nnc_aten_conv2d
	add	sp, sp, #20
	sub	r0, sp, #16
	bic	r2, r0, #7
	mov	sp, r2
	sub	r0, sp, #32
	bic	r3, r0, #31
	mov	sp, r3
	sub	r0, sp, #104
	bic	r0, r0, #7
	mov	sp, r0
	mov	r1, sp
	sub	r12, r1, #4
	mov	sp, r12
	sub	r5, sp, #56
	bic	lr, r5, #15
	mov	sp, lr
	add	r4, r6, #1568
	add	r5, r0, #16
	vld1.64	{d18, d19}, [r4:128]    @ 16-byte Reload
	mov	r4, #48
	ldr	r8, [r6, #620]          @ 4-byte Reload
	str	r8, [r2]
	strb	r10, [r1, #-4]
	vst1.64	{d18, d19}, [r5]
	adr	r5, LCPI0_200
	vld1.64	{d16, d17}, [r5:128]
	mov	r5, r0
	vst1.32	{d16, d17}, [r5], r4
	ldr	r4, [r6, #1308]         @ 4-byte Reload
	str	r4, [r2, #4]
	add	r4, r6, #1584
	vst1.64	{d18, d19}, [r5]
	add	r5, r0, #32
	vld1.64	{d16, d17}, [r4:128]    @ 16-byte Reload
	add	r4, r6, #592
	vst1.64	{d16, d17}, [r5]
	add	r5, r0, #80
	strb	r10, [r1, #-3]
	strb	r10, [r1, #-2]
	vst1.64	{d10, d11}, [r5]
	adr	r5, LCPI0_201
	vld1.64	{d16, d17}, [r5:128]
	add	r5, r0, #64
	vst1.64	{d16, d17}, [r5]
	add	r5, r2, #8
	vld1.64	{d16, d17}, [r4:128]    @ 16-byte Reload
	add	r4, r6, #1536
	vst1.64	{d16, d17}, [r5]
	vld1.64	{d16, d17}, [r4:128]    @ 16-byte Reload
	add	r4, r6, #1552
	strb	r10, [r1, #-1]
	mov	r1, r3
	vst1.32	{d16, d17}, [r1]!
	vld1.64	{d16, d17}, [r4:128]    @ 16-byte Reload
	vst1.64	{d16, d17}, [r1]
	mov	r1, #144
	vmov.i32	q8, #0x0
	str	r1, [r0, #96]
	add	r1, lr, #32
	str	r11, [r0, #100]
	vst1.64	{d10, d11}, [r1:128]
	mov	r1, lr
	vst1.64	{d10, d11}, [r1:128]!
	vst1.64	{d16, d17}, [r1:128]
	mov	r1, #1
	str	r1, [lr, #48]
	str	r11, [lr, #52]
	sub	sp, sp, #20
	stm	sp, {r0, r12}
	mov	r0, #7
	add	r1, sp, #8
	stm	r1, {r0, r11, lr}
	mov	r0, #4
	mov	r1, #0
	bl	_nnc_aten_conv2d
	add	sp, sp, #20
	vmov.f32	q8, #3.000000e+00
	ldr	r10, [r6, #624]         @ 4-byte Reload
	vmov.f32	q9, #6.000000e+00
	mov	r12, #196
	mov	lr, #0
LBB0_236:                               @ %cond205.preheader.i
                                        @ =>This Loop Header: Depth=1
                                        @     Child Loop BB0_237 Depth 2
	umull	r2, r0, r11, r12
	mov	r3, #0
	mov	r5, #0
LBB0_237:                               @ %cond208.preheader.i
                                        @   Parent Loop BB0_236 Depth=1
                                        @ =>  This Inner Loop Header: Depth=2
	rsb	r0, r3, r3, lsl #3
	adds	r3, r3, #1
	adc	r5, r5, #0
	add	r0, r2, r0, lsl #1
	add	r4, r8, r0, lsl #2
	vld1.32	{d20, d21}, [r4]!
	vadd.f32	q11, q10, q8
	vld1.32	{d24, d25}, [r4]
	add	r4, r10, r0, lsl #2
	vadd.f32	q13, q12, q8
	vclt.f32	q14, q11, #0
	vbic	q11, q11, q14
	vclt.f32	q14, q13, #0
	vmin.f32	q11, q11, q9
	vbic	q13, q13, q14
	vmin.f32	q13, q13, q9
	vmul.f32	q2, q10, q11
	vmul.f32	q1, q12, q13
	vdiv.f32	s3, s11, s16
	vdiv.f32	s2, s10, s16
	vdiv.f32	s1, s9, s16
	vdiv.f32	s0, s8, s16
	vdiv.f32	s11, s7, s16
	vdiv.f32	s10, s6, s16
	vdiv.f32	s9, s5, s16
	vdiv.f32	s8, s4, s16
	vst1.32	{d0, d1}, [r4]!
	vst1.32	{d4, d5}, [r4]
	add	r4, r0, #8
	add	r1, r8, r4, lsl #2
	vld1.32	{d20, d21}, [r1]
	add	r1, r10, r4, lsl #2
	vadd.f32	q11, q10, q8
	vclt.f32	q12, q11, #0
	vbic	q11, q11, q12
	vmin.f32	q11, q11, q9
	vmul.f32	q0, q10, q11
	vdiv.f32	s7, s3, s16
	vdiv.f32	s6, s2, s16
	vdiv.f32	s5, s1, s16
	vdiv.f32	s4, s0, s16
	vst1.32	{d2, d3}, [r1]
	add	r1, r0, #12
	add	r0, r0, #13
	add	r4, r8, r1, lsl #2
	add	r1, r10, r1, lsl #2
	vldr	s0, [r4]
	vadd.f32	s2, s0, s28
	vmax.f32	d20, d1, d12
	vmin.f32	d1, d20, d8
	vmul.f32	s0, s0, s2
	vdiv.f32	s0, s0, s16
	vstr	s0, [r1]
	add	r1, r8, r0, lsl #2
	add	r0, r10, r0, lsl #2
	vldr	s0, [r1]
	vadd.f32	s2, s0, s28
	vmax.f32	d20, d1, d12
	vmin.f32	d1, d20, d8
	vmul.f32	s0, s0, s2
	vdiv.f32	s0, s0, s16
	vstr	s0, [r0]
	eor	r0, r3, #14
	orrs	r0, r0, r5
	bne	LBB0_237
@ %bb.238:                              @ %exit207.i
                                        @   in Loop: Header=BB0_236 Depth=1
	adds	r11, r11, #1
	adc	lr, lr, #0
	eor	r0, r11, #144
	orrs	r0, r0, lr
	bne	LBB0_236
@ %bb.239:                              @ %exit204.i
	adr	r0, LCPI0_202
	add	lr, r6, #1552
	vld1.64	{d18, d19}, [r0:128]
	sub	r0, sp, #16
	bic	r2, r0, #7
	vst1.64	{d18, d19}, [lr:128]    @ 16-byte Spill
	mov	sp, r2
	sub	r0, sp, #32
	bic	r3, r0, #31
	mov	sp, r3
	sub	r0, sp, #104
	bic	r0, r0, #7
	mov	sp, r0
	mov	r4, sp
	sub	r12, r4, #4
	mov	sp, r12
	sub	r5, sp, #56
	bic	r5, r5, #7
	mov	sp, r5
	add	r1, r0, #16
	ldr	r8, [r6, #1472]         @ 4-byte Reload
	mov	r11, #6
	str	r8, [r2]
	strb	r11, [r4, #-4]
	add	lr, r6, #1584
	vst1.64	{d18, d19}, [r1]
	adr	r1, LCPI0_203
	vld1.64	{d16, d17}, [r1:128]
	mov	r1, r0
	vst1.64	{d16, d17}, [lr:128]    @ 16-byte Spill
	mov	lr, #48
	vst1.32	{d16, d17}, [r1], lr
	add	lr, r6, #640
	vst1.64	{d18, d19}, [r1]
	add	r1, r0, #32
	str	r10, [r2, #4]
	mov	r10, #0
	strb	r11, [r4, #-3]
	vst1.64	{d16, d17}, [r1]
	adr	r1, LCPI0_204
	vld1.64	{d16, d17}, [r1:128]
	add	r1, r0, #80
	strb	r11, [r4, #-2]
	vst1.64	{d16, d17}, [r1]
	adr	r1, LCPI0_205
	vld1.64	{d16, d17}, [r1:128]
	add	r1, r0, #64
	vst1.64	{d16, d17}, [r1]
	add	r1, r2, #8
	vld1.64	{d16, d17}, [lr:128]    @ 16-byte Reload
	add	lr, r6, #1536
	vst1.64	{d16, d17}, [r1]
	strb	r11, [r4, #-1]
	adr	r1, LCPI0_206
	vld1.64	{d16, d17}, [r1:128]
	adr	r1, LCPI0_207
	vld1.64	{d18, d19}, [r1:128]
	mov	r1, r3
	vst1.32	{d18, d19}, [r1]!
	vst1.64	{d18, d19}, [lr:128]    @ 16-byte Spill
	mov	lr, #144
	vst1.64	{d16, d17}, [r1]
	adr	r1, LCPI0_208
	vld1.64	{d10, d11}, [r1:128]
	add	r1, r5, #32
	vst1.64	{d10, d11}, [r1]
	str	lr, [r0, #96]
	str	lr, [r5, #48]
	add	lr, r6, #1568
	str	r10, [r0, #100]
	adr	r1, LCPI0_209
	vld1.64	{d16, d17}, [r1:128]
	mov	r1, r5
	vst1.32	{d10, d11}, [r1]!
	vst1.64	{d16, d17}, [r1]
	vst1.64	{d16, d17}, [lr:128]    @ 16-byte Spill
	str	r10, [r5, #52]
	sub	sp, sp, #20
	mov	r1, #7
	stm	sp, {r0, r12}
	mov	r0, #4
	str	r1, [sp, #8]
	mov	r1, #0
	str	r10, [sp, #12]
	str	r5, [sp, #16]
	bl	_nnc_aten_conv2d
	add	sp, sp, #20
	sub	r0, sp, #8
	bic	r2, r0, #7
	mov	sp, r2
	sub	r0, sp, #16
	bic	r3, r0, #15
	mov	sp, r3
	sub	r0, sp, #64
	bic	r0, r0, #7
	mov	sp, r0
	mov	r1, sp
	sub	r12, r1, #4
	mov	sp, r12
	sub	r5, sp, #16
	bic	lr, r5, #15
	mov	sp, lr
	strb	r11, [r1, #-4]
	add	r5, r0, #16
	add	r4, r6, #1584
	strb	r11, [r1, #-3]
	add	r1, r6, #1536
	vld1.64	{d16, d17}, [r4:128]    @ 16-byte Reload
	mov	r4, #48
	vld1.64	{d18, d19}, [r1:128]    @ 16-byte Reload
	add	r1, r6, #1552
	vst1.64	{d10, d11}, [r5]
	mov	r5, r0
	vst1.32	{d16, d17}, [r5], r4
	ldr	r4, [r6, #636]          @ 4-byte Reload
	vst1.64	{d18, d19}, [r3:128]
	vld1.64	{d18, d19}, [r1:128]    @ 16-byte Reload
	add	r1, r0, #32
	stm	r2, {r4, r8}
	vst1.64	{d18, d19}, [r5]
	vst1.64	{d16, d17}, [r1]
	vst1.64	{d10, d11}, [lr:128]
	sub	sp, sp, #20
	stm	sp, {r0, r12}
	mov	r1, #2
	add	r0, sp, #8
	stm	r0, {r1, r10, lr}
	mov	r0, #2
	mov	r1, #0
	bl	_nnc_aten_adaptive_avg_pool2d
	add	sp, sp, #20
	ldr	r5, [r6, #664]          @ 4-byte Reload
	mov	r1, r4
	mov	r2, #576
	mov	r0, r5
	bl	_memcpy
	sub	r0, sp, #12
	bic	r2, r0, #7
	mov	sp, r2
	sub	r0, sp, #24
	bic	r3, r0, #15
	mov	sp, r3
	sub	r0, sp, #48
	bic	lr, r0, #7
	mov	sp, lr
	mov	r1, sp
	sub	r12, r1, #4
	mov	sp, r12
	ldr	r4, [r6, #1116]         @ 4-byte Reload
	add	r0, r6, #1552
	str	r4, [r2]
	add	r8, r6, #1584
	strb	r11, [r1, #-4]
	str	r5, [r2, #4]
	adr	r5, LCPI0_210
	vld1.64	{d16, d17}, [r5:128]
	mov	r5, r3
	vst1.64	{d16, d17}, [r0:128]    @ 16-byte Spill
	add	r0, r6, #1568
	vld1.64	{d10, d11}, [r0:128]    @ 16-byte Reload
	mov	r0, lr
	vst1.32	{d16, d17}, [r0]!
	vld1.64	{d16, d17}, [r8:128]    @ 16-byte Reload
	vst1.64	{d16, d17}, [r0]
	ldr	r0, [r6, #1124]         @ 4-byte Reload
	vst1.64	{d10, d11}, [r5:128]!
	str	r0, [r2, #12]
	mov	r0, #2
	ldr	r8, [r6, #668]          @ 4-byte Reload
	strb	r11, [r1, #-3]
	str	r8, [r2, #8]
	strb	r11, [r1, #-2]
	stm	r5, {r0, r10}
	adr	r0, LCPI0_211
	vld1.64	{d16, d17}, [r0:128]
	add	r0, lr, #32
	vst1.64	{d16, d17}, [r0]
	sub	sp, sp, #20
	str	lr, [sp]
	add	lr, r6, #1024
	add	r0, lr, #824
	str	r0, [sp, #16]
	mov	r0, #3
	mov	r1, #0
	str	r12, [sp, #4]
	str	r10, [sp, #8]
	str	r10, [sp, #12]
	bl	_nnc_aten_matmul
	add	sp, sp, #20
	vld1.32	{d16, d17}, [r4]!
	mov	r5, #48
	vclt.f32	q10, q8, #0
	vld1.32	{d18, d19}, [r4]
	vbic	q8, q8, q10
	ldr	r4, [r6, #1120]         @ 4-byte Reload
	vclt.f32	q10, q9, #0
	vbic	q9, q9, q10
	ldr	r2, [r6, #632]          @ 4-byte Reload
	ldr	r3, [r6, #628]          @ 4-byte Reload
	mov	r0, r4
	vst1.32	{d16, d17}, [r0]!
	add	r1, r3, #16
	vst1.32	{d18, d19}, [r0]
	add	r0, r2, #16
	vld1.32	{d16, d17}, [r0]
	mov	r0, r2
	vclt.f32	q9, q8, #0
	vbic	q8, q8, q9
	vld1.32	{d18, d19}, [r0], r5
	vst1.32	{d16, d17}, [r1]
	vclt.f32	q8, q9, #0
	vbic	q8, q9, q8
	mov	r1, r3
	vst1.32	{d16, d17}, [r1], r5
	vld1.32	{d16, d17}, [r0]
	add	r0, r2, #32
	vclt.f32	q10, q8, #0
	vld1.32	{d18, d19}, [r0]
	vbic	q8, q8, q10
	add	r0, r3, #32
	vst1.32	{d16, d17}, [r1]
	vclt.f32	q8, q9, #0
	vbic	q8, q9, q8
	add	r1, r2, #96
	vst1.32	{d16, d17}, [r0]
	add	r0, r2, #64
	vld1.32	{d16, d17}, [r0]
	add	r0, r2, #80
	vld1.32	{d18, d19}, [r0]
	add	r0, r3, #80
	vclt.f32	q10, q9, #0
	vbic	q9, q9, q10
	vst1.32	{d18, d19}, [r0]
	vclt.f32	q9, q8, #0
	vbic	q8, q8, q9
	add	r0, r3, #64
	vst1.32	{d16, d17}, [r0]
	add	r0, r3, #96
	vld1.32	{d16, d17}, [r1]
	vclt.f32	q9, q8, #0
	vbic	q8, q8, q9
	vst1.32	{d16, d17}, [r0]
	sub	r0, sp, #12
	bic	r2, r0, #7
	mov	sp, r2
	sub	r0, sp, #24
	bic	r3, r0, #15
	mov	sp, r3
	sub	r0, sp, #48
	bic	lr, r0, #7
	b	LBB0_253
	.p2align	4
@ %bb.240:
	.data_region
LCPI0_202:
	.long	14                      @ 0xe
	.long	0                       @ 0x0
	.long	14                      @ 0xe
	.long	0                       @ 0x0
	.p2align	4
@ %bb.241:
LCPI0_203:
	.long	1                       @ 0x1
	.long	0                       @ 0x0
	.long	144                     @ 0x90
	.long	0                       @ 0x0
	.p2align	4
@ %bb.242:
LCPI0_204:
	.long	5                       @ 0x5
	.long	0                       @ 0x0
	.long	5                       @ 0x5
	.long	0                       @ 0x0
	.p2align	4
@ %bb.243:
LCPI0_205:
	.long	144                     @ 0x90
	.long	0                       @ 0x0
	.long	1                       @ 0x1
	.long	0                       @ 0x0
	.p2align	4
@ %bb.244:
LCPI0_206:
	.long	4                       @ 0x4
	.long	0                       @ 0x0
	.long	1                       @ 0x1
	.long	0                       @ 0x0
	.p2align	4
@ %bb.245:
LCPI0_207:
	.long	4                       @ 0x4
	.long	0                       @ 0x0
	.long	4                       @ 0x4
	.long	0                       @ 0x0
	.p2align	4
@ %bb.246:
LCPI0_208:
	.long	1                       @ 0x1
	.long	0                       @ 0x0
	.long	1                       @ 0x1
	.long	0                       @ 0x0
	.p2align	4
@ %bb.247:
LCPI0_209:
	.long	2                       @ 0x2
	.long	0                       @ 0x0
	.long	2                       @ 0x2
	.long	0                       @ 0x0
	.p2align	4
@ %bb.248:
LCPI0_210:
	.long	1                       @ 0x1
	.long	0                       @ 0x0
	.long	36                      @ 0x24
	.long	0                       @ 0x0
	.p2align	4
@ %bb.249:
LCPI0_211:
	.long	144                     @ 0x90
	.long	0                       @ 0x0
	.long	36                      @ 0x24
	.long	0                       @ 0x0
	.p2align	4
@ %bb.250:
LCPI0_212:
	.long	36                      @ 0x24
	.long	0                       @ 0x0
	.long	144                     @ 0x90
	.long	0                       @ 0x0
	.p2align	4
@ %bb.251:
LCPI0_213:
	.long	1                       @ 0x1
	.long	0                       @ 0x0
	.long	48                      @ 0x30
	.long	0                       @ 0x0
	.p2align	4
@ %bb.252:
LCPI0_214:
	.long	48                      @ 0x30
	.long	0                       @ 0x0
	.long	144                     @ 0x90
	.long	0                       @ 0x0
	.p2align	2
LBB0_253:                               @ %exit204.i
	.end_data_region
	mov	sp, lr
	mov	r1, sp
	sub	r12, r1, #4
	mov	sp, r12
	mov	r5, r3
	strb	r11, [r1, #-4]
	strb	r11, [r1, #-3]
	mov	r0, lr
	vst1.64	{d10, d11}, [r5:128]!
	str	r4, [r6, #24]
	add	r4, r6, #1584
	vld1.64	{d16, d17}, [r4:128]    @ 16-byte Reload
	add	r4, r6, #1552
	vst1.32	{d16, d17}, [r0]!
	vld1.64	{d16, d17}, [r4:128]    @ 16-byte Reload
	ldr	r4, [r6, #24]
	vst1.64	{d16, d17}, [r0]
	ldr	r0, [r6, #1292]         @ 4-byte Reload
	strb	r11, [r1, #-2]
	stm	r2, {r0, r4}
	ldr	r0, [r6, #1132]         @ 4-byte Reload
	str	r0, [r2, #8]
	mov	r0, #2
	str	r8, [r2, #12]
	stm	r5, {r0, r10}
	adr	r0, LCPI0_212
	vld1.64	{d16, d17}, [r0:128]
	add	r0, lr, #32
	vst1.64	{d16, d17}, [r0]
	sub	sp, sp, #20
	str	lr, [sp]
	add	lr, r6, #1024
	add	r0, lr, #824
	str	r0, [sp, #16]
	mov	r0, #3
	mov	r1, #0
	str	r12, [sp, #4]
	str	r10, [sp, #8]
	str	r10, [sp, #12]
	bl	_nnc_aten_matmul
	add	sp, sp, #20
	vmov.f32	q8, #3.000000e+00
	ldr	r11, [r6, #720]         @ 4-byte Reload
	vmov.f32	q9, #6.000000e+00
	ldr	r8, [r6, #1296]         @ 4-byte Reload
	ldr	r1, [r6, #1452]         @ 4-byte Reload
	mov	r12, #196
	mov	lr, #0
LBB0_254:                               @ %cond220.preheader.i
                                        @ =>This Loop Header: Depth=1
                                        @     Child Loop BB0_255 Depth 2
	ldr	r0, [r6, #1292]         @ 4-byte Reload
	mov	r3, #0
	mov	r5, #0
	add	r0, r0, r10, lsl #2
	vldr	s0, [r0]
	umull	r2, r0, r10, r12
	vadd.f32	s2, s0, s28
	vcmpe.f32	s2, #0
	vmrs	APSR_nzcv, fpscr
	vdiv.f32	s0, s2, s16
	vmax.f32	d1, d1, d12
	vmovmi.f32	s0, s24
	vcmpe.f32	s2, s16
	vmrs	APSR_nzcv, fpscr
	vmovgt.f32	s0, s30
	vdup.32	q10, d0[0]
LBB0_255:                               @ %cond223.preheader.i
                                        @   Parent Loop BB0_254 Depth=1
                                        @ =>  This Inner Loop Header: Depth=2
	rsb	r0, r3, r3, lsl #3
	ldr	r4, [r6, #1472]         @ 4-byte Reload
	adds	r3, r3, #1
	add	r0, r2, r0, lsl #1
	adc	r5, r5, #0
	add	r4, r4, r0, lsl #2
	vld1.32	{d22, d23}, [r4]!
	vmul.f32	q11, q10, q11
	vld1.32	{d24, d25}, [r4]
	add	r4, r1, r0, lsl #2
	vmul.f32	q12, q10, q12
	ldr	r1, [r6, #1472]         @ 4-byte Reload
	vadd.f32	q13, q11, q8
	vadd.f32	q14, q12, q8
	vclt.f32	q15, q13, #0
	vbic	q13, q13, q15
	vclt.f32	q15, q14, #0
	vmin.f32	q13, q13, q9
	vbic	q14, q14, q15
	vmin.f32	q14, q14, q9
	vmul.f32	q3, q11, q13
	vmul.f32	q2, q12, q14
	vdiv.f32	s7, s15, s16
	vdiv.f32	s6, s14, s16
	vdiv.f32	s5, s13, s16
	vdiv.f32	s4, s12, s16
	vdiv.f32	s15, s11, s16
	vdiv.f32	s14, s10, s16
	vdiv.f32	s13, s9, s16
	vdiv.f32	s12, s8, s16
	vst1.32	{d2, d3}, [r4]!
	vst1.32	{d6, d7}, [r4]
	add	r4, r0, #8
	add	r1, r1, r4, lsl #2
	vld1.32	{d22, d23}, [r1]
	vmul.f32	q11, q10, q11
	ldr	r1, [r6, #1452]         @ 4-byte Reload
	add	r1, r1, r4, lsl #2
	ldr	r4, [r6, #1472]         @ 4-byte Reload
	vadd.f32	q12, q11, q8
	vclt.f32	q13, q12, #0
	vbic	q12, q12, q13
	vmin.f32	q12, q12, q9
	vmul.f32	q1, q11, q12
	vdiv.f32	s11, s7, s16
	vdiv.f32	s10, s6, s16
	vdiv.f32	s9, s5, s16
	vdiv.f32	s8, s4, s16
	vst1.32	{d4, d5}, [r1]
	add	r1, r0, #12
	add	r0, r0, #13
	add	r4, r4, r1, lsl #2
	vldr	s2, [r4]
	ldr	r4, [r6, #1452]         @ 4-byte Reload
	vmul.f32	s2, s0, s2
	add	r1, r4, r1, lsl #2
	vadd.f32	s4, s2, s28
	vmax.f32	d22, d2, d12
	vmin.f32	d2, d22, d8
	vmul.f32	s2, s2, s4
	vdiv.f32	s2, s2, s16
	vstr	s2, [r1]
	ldr	r1, [r6, #1472]         @ 4-byte Reload
	add	r1, r1, r0, lsl #2
	vldr	s2, [r1]
	ldr	r1, [r6, #1452]         @ 4-byte Reload
	vmul.f32	s2, s0, s2
	add	r0, r1, r0, lsl #2
	vadd.f32	s4, s2, s28
	vmax.f32	d22, d2, d12
	vmin.f32	d2, d22, d8
	vmul.f32	s2, s2, s4
	vdiv.f32	s2, s2, s16
	vstr	s2, [r0]
	eor	r0, r3, #14
	orrs	r0, r0, r5
	bne	LBB0_255
@ %bb.256:                              @ %exit222.i
                                        @   in Loop: Header=BB0_254 Depth=1
	adds	r10, r10, #1
	adc	lr, lr, #0
	eor	r0, r10, #144
	orrs	r0, r0, lr
	bne	LBB0_254
@ %bb.257:                              @ %exit219.i
	adr	r0, LCPI0_202
	vld1.64	{d16, d17}, [r0:128]
	sub	r0, sp, #16
	bic	r2, r0, #7
	mov	sp, r2
	sub	r0, sp, #32
	bic	r3, r0, #31
	mov	sp, r3
	sub	r0, sp, #104
	bic	r0, r0, #7
	mov	sp, r0
	mov	r4, sp
	sub	r12, r4, #4
	mov	sp, r12
	mov	r10, r1
	sub	r1, sp, #56
	bic	r5, r1, #15
	mov	sp, r5
	add	r1, r0, #16
	str	r8, [r2]
	mov	r8, #6
	mov	lr, #48
	strb	r8, [r4, #-4]
	vmov.i32	q11, #0x0
	vst1.64	{d16, d17}, [r1]
	adr	r1, LCPI0_213
	vld1.64	{d18, d19}, [r1:128]
	mov	r1, r0
	vst1.32	{d18, d19}, [r1], lr
	str	r10, [r2, #4]
	add	r10, r6, #672
	strb	r8, [r4, #-3]
	vst1.64	{d16, d17}, [r1]
	adr	r1, LCPI0_203
	vld1.64	{d16, d17}, [r1:128]
	add	r1, r0, #32
	vst1.64	{d16, d17}, [r1]
	adr	r1, LCPI0_208
	vld1.64	{d16, d17}, [r1:128]
	add	r1, r0, #80
	strb	r8, [r4, #-2]
	vst1.64	{d16, d17}, [r1]
	adr	r1, LCPI0_214
	vld1.64	{d18, d19}, [r1:128]
	add	r1, r0, #64
	vst1.64	{d18, d19}, [r1]
	add	r1, r2, #8
	vld1.64	{d18, d19}, [r10:128]   @ 16-byte Reload
	vst1.64	{d18, d19}, [r1]
	adr	r1, LCPI0_206
	vld1.64	{d18, d19}, [r1:128]
	adr	r1, LCPI0_207
	vld1.64	{d20, d21}, [r1:128]
	mov	r1, r3
	vst1.32	{d20, d21}, [r1]!
	vst1.64	{d18, d19}, [r1]
	add	r1, r5, #32
	vst1.64	{d16, d17}, [r1:128]
	mov	r1, #1
	strb	r8, [r4, #-1]
	mov	r4, #0
	str	r1, [r5, #48]
	mov	r1, r5
	str	r4, [r5, #52]
	vst1.64	{d16, d17}, [r1:128]!
	str	lr, [r0, #96]
	str	r4, [r0, #100]
	vst1.64	{d22, d23}, [r1:128]
	sub	sp, sp, #20
	stm	sp, {r0, r12}
	mov	r1, #7
	add	r0, sp, #8
	stm	r0, {r1, r4, r5}
	mov	r0, #4
	mov	r1, #0
	bl	_nnc_aten_conv2d
	add	sp, sp, #20
	ldr	r10, [r6, #700]         @ 4-byte Reload
	mov	lr, #0
	ldr	r12, [r6, #1296]        @ 4-byte Reload
	ldr	r8, [r6, #1308]         @ 4-byte Reload
LBB0_258:                               @ %cond229.preheader.i
                                        @ =>This Loop Header: Depth=1
                                        @     Child Loop BB0_259 Depth 2
	mov	r0, #196
	mov	r5, #0
	umull	r2, r3, r4, r0
	str	r4, [r6, #1584]         @ 4-byte Spill
	mov	r3, #0
LBB0_259:                               @ %cond232.preheader.i
                                        @   Parent Loop BB0_258 Depth=1
                                        @ =>  This Inner Loop Header: Depth=2
	rsb	r0, r3, r3, lsl #3
	add	r0, r2, r0, lsl #1
	add	r4, r12, r0, lsl #2
	add	r1, r8, r0, lsl #2
	vld1.32	{d18, d19}, [r1]!
	vld1.32	{d16, d17}, [r4]!
	vadd.f32	q8, q9, q8
	vld1.32	{d20, d21}, [r1]
	add	r1, r10, r0, lsl #2
	vld1.32	{d18, d19}, [r4]
	vst1.32	{d16, d17}, [r1]!
	vadd.f32	q8, q10, q9
	vst1.32	{d16, d17}, [r1]
	add	r1, r0, #8
	add	r4, r12, r1, lsl #2
	vld1.32	{d16, d17}, [r4]
	add	r4, r10, r1, lsl #2
	add	r1, r8, r1, lsl #2
	vld1.32	{d18, d19}, [r1]
	add	r1, r0, #12
	vadd.f32	q8, q9, q8
	add	r0, r0, #13
	vst1.32	{d16, d17}, [r4]
	add	r4, r12, r1, lsl #2
	vldr	s0, [r4]
	add	r4, r10, r1, lsl #2
	add	r1, r8, r1, lsl #2
	vldr	s2, [r1]
	add	r1, r12, r0, lsl #2
	vadd.f32	s0, s2, s0
	vstr	s0, [r4]
	vldr	s0, [r1]
	add	r1, r8, r0, lsl #2
	add	r0, r10, r0, lsl #2
	vldr	s2, [r1]
	vadd.f32	s0, s2, s0
	vstr	s0, [r0]
	orr	r0, r3, #1
	adds	r3, r3, #2
	rsb	r0, r0, r0, lsl #3
	adc	r5, r5, #0
	add	r0, r2, r0, lsl #1
	add	r1, r12, r0, lsl #2
	add	r4, r8, r0, lsl #2
	vld1.32	{d18, d19}, [r4]!
	vld1.32	{d16, d17}, [r1]!
	vadd.f32	q8, q9, q8
	vld1.32	{d18, d19}, [r1]
	add	r1, r10, r0, lsl #2
	vld1.32	{d20, d21}, [r4]
	vadd.f32	q9, q10, q9
	vst1.32	{d16, d17}, [r1]!
	vst1.32	{d18, d19}, [r1]
	add	r1, r0, #8
	add	r4, r12, r1, lsl #2
	vld1.32	{d16, d17}, [r4]
	add	r4, r8, r1, lsl #2
	add	r1, r10, r1, lsl #2
	vld1.32	{d18, d19}, [r4]
	vadd.f32	q8, q9, q8
	vst1.32	{d16, d17}, [r1]
	add	r1, r0, #12
	add	r0, r0, #13
	add	r4, r12, r1, lsl #2
	vldr	s0, [r4]
	add	r4, r8, r1, lsl #2
	add	r1, r10, r1, lsl #2
	vldr	s2, [r4]
	vadd.f32	s0, s2, s0
	vstr	s0, [r1]
	add	r1, r12, r0, lsl #2
	vldr	s0, [r1]
	add	r1, r8, r0, lsl #2
	add	r0, r10, r0, lsl #2
	vldr	s2, [r1]
	vadd.f32	s0, s2, s0
	vstr	s0, [r0]
	eor	r0, r3, #14
	orrs	r0, r0, r5
	bne	LBB0_259
@ %bb.260:                              @ %exit231.i
                                        @   in Loop: Header=BB0_258 Depth=1
	ldr	r4, [r6, #1584]         @ 4-byte Reload
	adds	r4, r4, #1
	adc	lr, lr, #0
	eor	r0, r4, #48
	orrs	r0, r0, lr
	bne	LBB0_258
@ %bb.261:                              @ %exit228.i
	adr	r0, LCPI0_215
	vld1.64	{d16, d17}, [r0:128]
	sub	r0, sp, #16
	bic	r2, r0, #7
	mov	sp, r2
	sub	r0, sp, #32
	bic	r3, r0, #31
	mov	sp, r3
	sub	r0, sp, #104
	bic	r5, r0, #7
	mov	sp, r5
	mov	r4, sp
	sub	r12, r4, #4
	mov	sp, r12
	sub	r1, sp, #56
	bic	r8, r1, #15
	mov	sp, r8
	add	r1, r5, #16
	mov	lr, #6
	str	r11, [r2]
	mov	r0, r5
	strb	lr, [r4, #-4]
	vmov.i32	q11, #0x0
	vst1.64	{d16, d17}, [r1]
	adr	r1, LCPI0_216
	vld1.64	{d18, d19}, [r1:128]
	mov	r1, #48
	vst1.32	{d18, d19}, [r0], r1
	add	r1, r6, #704
	str	r10, [r2, #4]
	mov	r10, #0
	strb	lr, [r4, #-3]
	vst1.64	{d16, d17}, [r0]
	adr	r0, LCPI0_217
	vld1.64	{d16, d17}, [r0:128]
	add	r0, r5, #32
	vst1.64	{d16, d17}, [r0]
	adr	r0, LCPI0_218
	vld1.64	{d16, d17}, [r0:128]
	add	r0, r5, #80
	strb	lr, [r4, #-2]
	vst1.64	{d16, d17}, [r0]
	adr	r0, LCPI0_219
	vld1.64	{d18, d19}, [r0:128]
	add	r0, r5, #64
	vst1.64	{d18, d19}, [r0]
	add	r0, r2, #8
	vld1.64	{d18, d19}, [r1:128]    @ 16-byte Reload
	vst1.64	{d18, d19}, [r0]
	adr	r0, LCPI0_220
	vld1.64	{d18, d19}, [r0:128]
	adr	r0, LCPI0_221
	vld1.64	{d20, d21}, [r0:128]
	mov	r0, r3
	vst1.32	{d20, d21}, [r0]!
	vst1.64	{d18, d19}, [r0]
	mov	r0, #288
	str	r0, [r5, #96]
	add	r0, r8, #32
	strb	lr, [r4, #-1]
	vst1.64	{d16, d17}, [r0:128]
	mov	r0, #1
	str	r0, [r8, #48]
	mov	r0, r8
	str	r10, [r8, #52]
	vst1.64	{d16, d17}, [r0:128]!
	str	r10, [r5, #100]
	vst1.64	{d22, d23}, [r0:128]
	sub	sp, sp, #20
	mov	r0, #7
	stm	sp, {r5, r12}
	mov	r1, #0
	str	r0, [sp, #8]
	mov	r0, #4
	str	r10, [sp, #12]
	str	r8, [sp, #16]
	bl	_nnc_aten_conv2d
	add	sp, sp, #20
	vmov.f32	q8, #3.000000e+00
	ldr	r8, [r6, #724]          @ 4-byte Reload
	vmov.f32	q9, #6.000000e+00
	mov	r12, #196
	mov	lr, #0
	b	LBB0_274
	.p2align	4
@ %bb.262:
	.data_region
LCPI0_215:
	.long	14                      @ 0xe
	.long	0                       @ 0x0
	.long	14                      @ 0xe
	.long	0                       @ 0x0
	.p2align	4
@ %bb.263:
LCPI0_216:
	.long	1                       @ 0x1
	.long	0                       @ 0x0
	.long	288                     @ 0x120
	.long	0                       @ 0x0
	.p2align	4
@ %bb.264:
LCPI0_217:
	.long	1                       @ 0x1
	.long	0                       @ 0x0
	.long	48                      @ 0x30
	.long	0                       @ 0x0
	.p2align	4
@ %bb.265:
LCPI0_218:
	.long	1                       @ 0x1
	.long	0                       @ 0x0
	.long	1                       @ 0x1
	.long	0                       @ 0x0
	.p2align	4
@ %bb.266:
LCPI0_219:
	.long	288                     @ 0x120
	.long	0                       @ 0x0
	.long	48                      @ 0x30
	.long	0                       @ 0x0
	.p2align	4
@ %bb.267:
LCPI0_220:
	.long	4                       @ 0x4
	.long	0                       @ 0x0
	.long	1                       @ 0x1
	.long	0                       @ 0x0
	.p2align	4
@ %bb.268:
LCPI0_221:
	.long	4                       @ 0x4
	.long	0                       @ 0x0
	.long	4                       @ 0x4
	.long	0                       @ 0x0
	.p2align	4
@ %bb.269:
LCPI0_222:
	.long	7                       @ 0x7
	.long	0                       @ 0x0
	.long	7                       @ 0x7
	.long	0                       @ 0x0
	.p2align	4
@ %bb.270:
LCPI0_223:
	.long	5                       @ 0x5
	.long	0                       @ 0x0
	.long	5                       @ 0x5
	.long	0                       @ 0x0
	.p2align	4
@ %bb.271:
LCPI0_224:
	.long	288                     @ 0x120
	.long	0                       @ 0x0
	.long	1                       @ 0x1
	.long	0                       @ 0x0
	.p2align	4
@ %bb.272:
LCPI0_225:
	.long	2                       @ 0x2
	.long	0                       @ 0x0
	.long	2                       @ 0x2
	.long	0                       @ 0x0
	.p2align	4
@ %bb.273:
LCPI0_226:
	.long	1                       @ 0x1
	.long	0                       @ 0x0
	.long	72                      @ 0x48
	.long	0                       @ 0x0
	.p2align	2
LBB0_274:                               @ %cond238.preheader.i
                                        @ =>This Loop Header: Depth=1
                                        @     Child Loop BB0_275 Depth 2
	.end_data_region
	umull	r2, r0, r10, r12
	mov	r3, #0
	mov	r5, #0
LBB0_275:                               @ %cond241.preheader.i
                                        @   Parent Loop BB0_274 Depth=1
                                        @ =>  This Inner Loop Header: Depth=2
	rsb	r0, r3, r3, lsl #3
	adds	r3, r3, #1
	adc	r5, r5, #0
	add	r0, r2, r0, lsl #1
	add	r4, r11, r0, lsl #2
	vld1.32	{d20, d21}, [r4]!
	vadd.f32	q11, q10, q8
	vld1.32	{d24, d25}, [r4]
	add	r4, r8, r0, lsl #2
	vadd.f32	q13, q12, q8
	vclt.f32	q14, q11, #0
	vbic	q11, q11, q14
	vclt.f32	q14, q13, #0
	vmin.f32	q11, q11, q9
	vbic	q13, q13, q14
	vmin.f32	q13, q13, q9
	vmul.f32	q2, q10, q11
	vmul.f32	q1, q12, q13
	vdiv.f32	s3, s11, s16
	vdiv.f32	s2, s10, s16
	vdiv.f32	s1, s9, s16
	vdiv.f32	s0, s8, s16
	vdiv.f32	s11, s7, s16
	vdiv.f32	s10, s6, s16
	vdiv.f32	s9, s5, s16
	vdiv.f32	s8, s4, s16
	vst1.32	{d0, d1}, [r4]!
	vst1.32	{d4, d5}, [r4]
	add	r4, r0, #8
	add	r1, r11, r4, lsl #2
	vld1.32	{d20, d21}, [r1]
	add	r1, r8, r4, lsl #2
	vadd.f32	q11, q10, q8
	vclt.f32	q12, q11, #0
	vbic	q11, q11, q12
	vmin.f32	q11, q11, q9
	vmul.f32	q0, q10, q11
	vdiv.f32	s7, s3, s16
	vdiv.f32	s6, s2, s16
	vdiv.f32	s5, s1, s16
	vdiv.f32	s4, s0, s16
	vst1.32	{d2, d3}, [r1]
	add	r1, r0, #12
	add	r0, r0, #13
	add	r4, r11, r1, lsl #2
	add	r1, r8, r1, lsl #2
	vldr	s0, [r4]
	vadd.f32	s2, s0, s28
	vmax.f32	d20, d1, d12
	vmin.f32	d1, d20, d8
	vmul.f32	s0, s0, s2
	vdiv.f32	s0, s0, s16
	vstr	s0, [r1]
	add	r1, r11, r0, lsl #2
	add	r0, r8, r0, lsl #2
	vldr	s0, [r1]
	vadd.f32	s2, s0, s28
	vmax.f32	d20, d1, d12
	vmin.f32	d1, d20, d8
	vmul.f32	s0, s0, s2
	vdiv.f32	s0, s0, s16
	vstr	s0, [r0]
	eor	r0, r3, #14
	orrs	r0, r0, r5
	bne	LBB0_275
@ %bb.276:                              @ %exit240.i
                                        @   in Loop: Header=BB0_274 Depth=1
	adds	r10, r10, #1
	adc	lr, lr, #0
	eor	r0, r10, #288
	orrs	r0, r0, lr
	bne	LBB0_274
@ %bb.277:                              @ %exit237.i
	adr	r0, LCPI0_222
	add	lr, r6, #1568
	vld1.64	{d16, d17}, [r0:128]
	sub	r0, sp, #16
	bic	r2, r0, #7
	vst1.64	{d16, d17}, [lr:128]    @ 16-byte Spill
	mov	sp, r2
	sub	r0, sp, #32
	bic	r3, r0, #31
	mov	sp, r3
	sub	r0, sp, #104
	bic	r0, r0, #7
	mov	sp, r0
	mov	r5, sp
	sub	r12, r5, #4
	mov	sp, r12
	sub	r4, sp, #56
	bic	lr, r4, #7
	mov	sp, lr
	add	r1, r0, #16
	ldr	r11, [r6, #1476]        @ 4-byte Reload
	mov	r10, #6
	str	r11, [r2]
	strb	r10, [r5, #-4]
	mov	r4, #48
	vst1.64	{d16, d17}, [r1]
	adr	r1, LCPI0_216
	vld1.64	{d18, d19}, [r1:128]
	add	r1, r6, #1584
	vst1.64	{d18, d19}, [r1:128]    @ 16-byte Spill
	mov	r1, r0
	str	r8, [r2, #4]
	mov	r8, #0
	vst1.32	{d18, d19}, [r1], r4
	adr	r4, LCPI0_215
	vld1.64	{d16, d17}, [r4:128]
	add	r4, r6, #736
	vst1.64	{d16, d17}, [r1]
	add	r1, r0, #32
	strb	r10, [r5, #-3]
	vst1.64	{d18, d19}, [r1]
	adr	r1, LCPI0_223
	vld1.64	{d16, d17}, [r1:128]
	add	r1, r0, #80
	strb	r10, [r5, #-2]
	vst1.64	{d16, d17}, [r1]
	adr	r1, LCPI0_224
	vld1.64	{d16, d17}, [r1:128]
	add	r1, r0, #64
	vst1.64	{d16, d17}, [r1]
	add	r1, r2, #8
	vld1.64	{d16, d17}, [r4:128]    @ 16-byte Reload
	add	r4, lr, #32
	vst1.64	{d16, d17}, [r1]
	strb	r10, [r5, #-1]
	adr	r1, LCPI0_220
	vld1.64	{d16, d17}, [r1:128]
	adr	r1, LCPI0_221
	vld1.64	{d18, d19}, [r1:128]
	add	r1, r6, #1536
	vst1.64	{d18, d19}, [r1:128]    @ 16-byte Spill
	mov	r1, r3
	vst1.32	{d18, d19}, [r1]!
	vst1.64	{d16, d17}, [r1]
	adr	r1, LCPI0_218
	vld1.64	{d10, d11}, [r1:128]
	mov	r1, #288
	vst1.64	{d10, d11}, [r4]
	str	r1, [r0, #96]
	str	r8, [r0, #100]
	str	r1, [lr, #48]
	adr	r1, LCPI0_225
	vld1.64	{d16, d17}, [r1:128]
	add	r1, r6, #1552
	vst1.64	{d16, d17}, [r1:128]    @ 16-byte Spill
	mov	r1, lr
	vst1.32	{d16, d17}, [r1]!
	vst1.64	{d16, d17}, [r1]
	str	r8, [lr, #52]
	sub	sp, sp, #20
	stm	sp, {r0, r12}
	mov	r1, #7
	add	r0, sp, #8
	stm	r0, {r1, r8, lr}
	mov	r0, #4
	mov	r1, #0
	bl	_nnc_aten_conv2d
	add	sp, sp, #20
	sub	r0, sp, #8
	bic	r2, r0, #7
	mov	sp, r2
	sub	r0, sp, #16
	bic	r3, r0, #15
	mov	sp, r3
	sub	r0, sp, #64
	bic	r0, r0, #7
	mov	sp, r0
	mov	r1, sp
	sub	r12, r1, #4
	mov	sp, r12
	sub	r4, sp, #16
	bic	lr, r4, #15
	mov	sp, lr
	strb	r10, [r1, #-4]
	add	r4, r0, #16
	add	r5, r6, #1584
	strb	r10, [r1, #-3]
	add	r1, r6, #1536
	vld1.64	{d16, d17}, [r5:128]    @ 16-byte Reload
	mov	r5, #48
	vld1.64	{d18, d19}, [r1:128]    @ 16-byte Reload
	add	r1, r6, #1568
	vst1.64	{d10, d11}, [r4]
	mov	r4, r0
	vst1.32	{d16, d17}, [r4], r5
	ldr	r5, [r6, #752]          @ 4-byte Reload
	vst1.64	{d18, d19}, [r3:128]
	vld1.64	{d18, d19}, [r1:128]    @ 16-byte Reload
	add	r1, r0, #32
	stm	r2, {r5, r11}
	vst1.64	{d18, d19}, [r4]
	vst1.64	{d16, d17}, [r1]
	vst1.64	{d10, d11}, [lr:128]
	sub	sp, sp, #20
	mov	r1, #2
	stm	sp, {r0, r12}
	mov	r0, #2
	str	r1, [sp, #8]
	mov	r1, #0
	mov	r11, #2
	str	r8, [sp, #12]
	str	lr, [sp, #16]
	bl	_nnc_aten_adaptive_avg_pool2d
	add	sp, sp, #20
	ldr	r4, [r6, #756]          @ 4-byte Reload
	mov	r1, r5
	mov	r2, #1152
	mov	r0, r4
	bl	_memcpy
	sub	r0, sp, #12
	bic	r2, r0, #7
	mov	sp, r2
	sub	r0, sp, #24
	bic	r3, r0, #15
	mov	sp, r3
	sub	r0, sp, #48
	bic	lr, r0, #7
	mov	sp, lr
	mov	r1, sp
	sub	r12, r1, #4
	mov	sp, r12
	ldr	r5, [r6, #1128]         @ 4-byte Reload
	add	r0, r6, #1568
	str	r5, [r2]
	strb	r10, [r1, #-4]
	str	r4, [r2, #4]
	adr	r4, LCPI0_226
	vld1.64	{d16, d17}, [r4:128]
	mov	r4, r3
	str	r8, [r6, #24]
	add	r8, r6, #1584
	vst1.64	{d16, d17}, [r0:128]    @ 16-byte Spill
	add	r0, r6, #1552
	vld1.64	{d10, d11}, [r0:128]    @ 16-byte Reload
	mov	r0, lr
	vst1.32	{d16, d17}, [r0]!
	vld1.64	{d16, d17}, [r8:128]    @ 16-byte Reload
	strb	r10, [r1, #-3]
	vst1.64	{d10, d11}, [r4:128]!
	ldr	r8, [r6, #24]
	vst1.64	{d16, d17}, [r0]
	ldr	r0, [r6, #1132]         @ 4-byte Reload
	str	r0, [r2, #12]
	ldr	r0, [r6, #1140]         @ 4-byte Reload
	str	r0, [r2, #8]
	strb	r10, [r1, #-2]
	str	r11, [r4]
	str	r8, [r4, #4]
	adr	r0, LCPI0_227
	vld1.64	{d16, d17}, [r0:128]
	add	r0, lr, #32
	vst1.64	{d16, d17}, [r0]
	sub	sp, sp, #20
	str	lr, [sp]
	add	lr, r6, #1024
	add	r0, lr, #824
	str	r0, [sp, #16]
	mov	r0, #3
	mov	r1, #0
	str	r12, [sp, #4]
	str	r8, [sp, #8]
	str	r8, [sp, #12]
	bl	_nnc_aten_matmul
	add	sp, sp, #20
	vld1.32	{d16, d17}, [r5]!
	vclt.f32	q10, q8, #0
	vld1.32	{d18, d19}, [r5]
	vbic	q8, q8, q10
	mov	r5, #48
	ldr	r10, [r6, #1136]        @ 4-byte Reload
	vclt.f32	q10, q9, #0
	vbic	q9, q9, q10
	ldr	r3, [r6, #728]          @ 4-byte Reload
	ldr	r2, [r6, #732]          @ 4-byte Reload
	mov	r0, r10
	vst1.32	{d16, d17}, [r0]!
	add	r1, r2, #16
	vst1.32	{d18, d19}, [r0]
	add	r0, r3, #16
	vld1.32	{d16, d17}, [r0]
	mov	r0, r3
	vclt.f32	q9, q8, #0
	vbic	q8, q8, q9
	vld1.32	{d18, d19}, [r0], r5
	vst1.32	{d16, d17}, [r1]
	vclt.f32	q8, q9, #0
	vbic	q8, q9, q8
	mov	r1, r2
	vst1.32	{d16, d17}, [r1], r5
	vld1.32	{d16, d17}, [r0]
	add	r0, r3, #32
	vclt.f32	q10, q8, #0
	vld1.32	{d18, d19}, [r0]
	vbic	q8, q8, q10
	add	r0, r2, #32
	vst1.32	{d16, d17}, [r1]
	vclt.f32	q8, q9, #0
	vbic	q8, q9, q8
	vst1.32	{d16, d17}, [r0]
	add	r0, r3, #64
	vld1.32	{d16, d17}, [r0]
	add	r0, r3, #80
	vld1.32	{d18, d19}, [r0]
	add	r0, r2, #80
	vclt.f32	q10, q9, #0
	vbic	q9, q9, q10
	vst1.32	{d18, d19}, [r0]
	vclt.f32	q9, q8, #0
	vbic	q8, q8, q9
	add	r0, r2, #64
	vst1.32	{d16, d17}, [r0]
	add	r0, r3, #96
	vld1.32	{d16, d17}, [r0]
	add	r0, r3, #112
	vld1.32	{d18, d19}, [r0]
	add	r0, r2, #112
	vclt.f32	q10, q9, #0
	vbic	q9, q9, q10
	vst1.32	{d18, d19}, [r0]
	vclt.f32	q9, q8, #0
	vbic	q8, q8, q9
	add	r0, r2, #96
	vst1.32	{d16, d17}, [r0]
	add	r0, r3, #128
	vld1.32	{d16, d17}, [r0]
	add	r0, r3, #144
	vld1.32	{d18, d19}, [r0]
	add	r0, r2, #144
	vclt.f32	q10, q9, #0
	vbic	q9, q9, q10
	vst1.32	{d18, d19}, [r0]
	vclt.f32	q9, q8, #0
	vbic	q8, q8, q9
	add	r0, r2, #128
	vst1.32	{d16, d17}, [r0]
	add	r0, r3, #160
	vld1.32	{d16, d17}, [r0]
	add	r0, r3, #176
	vld1.32	{d18, d19}, [r0]
	add	r0, r2, #176
	vclt.f32	q10, q9, #0
	vbic	q9, q9, q10
	vst1.32	{d18, d19}, [r0]
	vclt.f32	q9, q8, #0
	vbic	q8, q8, q9
	add	r0, r2, #160
	vst1.32	{d16, d17}, [r0]
	add	r0, r3, #192
	vld1.32	{d16, d17}, [r0]
	add	r0, r3, #208
	vld1.32	{d18, d19}, [r0]
	add	r0, r2, #208
	vclt.f32	q10, q9, #0
	vbic	q9, q9, q10
	vst1.32	{d18, d19}, [r0]
	vclt.f32	q9, q8, #0
	vbic	q8, q8, q9
	add	r0, r2, #192
	vst1.32	{d16, d17}, [r0]
	add	r0, r3, #224
	vld1.32	{d16, d17}, [r0]
	add	r0, r3, #240
	vld1.32	{d18, d19}, [r0]
	add	r0, r2, #240
	vclt.f32	q10, q9, #0
	vbic	q9, q9, q10
	vst1.32	{d18, d19}, [r0]
	vclt.f32	q9, q8, #0
	vbic	q8, q8, q9
	add	r0, r2, #224
	vst1.32	{d16, d17}, [r0]
	sub	r0, sp, #12
	bic	r2, r0, #7
	mov	sp, r2
	sub	r0, sp, #24
	bic	r3, r0, #15
	mov	sp, r3
	sub	r0, sp, #48
	bic	lr, r0, #7
	mov	sp, lr
	mov	r1, sp
	sub	r12, r1, #4
	mov	sp, r12
	add	r11, r6, #1584
	mov	r0, #6
	vld1.64	{d16, d17}, [r11:128]   @ 16-byte Reload
	add	r11, r6, #1568
	mov	r4, r3
	mov	r5, #6
	strb	r0, [r1, #-4]
	strb	r0, [r1, #-3]
	mov	r0, lr
	vst1.32	{d16, d17}, [r0]!
	vld1.64	{d16, d17}, [r11:128]   @ 16-byte Reload
	vst1.64	{d16, d17}, [r0]
	ldr	r11, [r6, #760]         @ 4-byte Reload
	ldr	r0, [r6, #1148]         @ 4-byte Reload
	str	r11, [r2]
	str	r10, [r2, #4]
	str	r0, [r2, #8]
	ldr	r0, [r6, #1140]         @ 4-byte Reload
	vst1.64	{d10, d11}, [r4:128]!
	str	r0, [r2, #12]
	mov	r0, #2
	strb	r5, [r1, #-2]
	stm	r4, {r0, r8}
	adr	r0, LCPI0_228
	vld1.64	{d16, d17}, [r0:128]
	add	r0, lr, #32
	vst1.64	{d16, d17}, [r0]
	sub	sp, sp, #20
	str	lr, [sp]
	add	lr, r6, #1024
	add	r0, lr, #824
	str	r0, [sp, #16]
	mov	r0, #3
	mov	r1, #0
	str	r12, [sp, #4]
	str	r8, [sp, #8]
	str	r8, [sp, #12]
	bl	_nnc_aten_matmul
	add	sp, sp, #20
	vmov.f32	q8, #3.000000e+00
	ldr	r10, [r6, #764]         @ 4-byte Reload
	vmov.f32	q9, #6.000000e+00
	mov	r12, #49
	mov	lr, #0
	b	LBB0_289
	.p2align	4
@ %bb.278:
	.data_region
LCPI0_227:
	.long	288                     @ 0x120
	.long	0                       @ 0x0
	.long	72                      @ 0x48
	.long	0                       @ 0x0
	.p2align	4
@ %bb.279:
LCPI0_228:
	.long	72                      @ 0x48
	.long	0                       @ 0x0
	.long	288                     @ 0x120
	.long	0                       @ 0x0
	.p2align	4
@ %bb.280:
LCPI0_229:
	.long	7                       @ 0x7
	.long	0                       @ 0x0
	.long	7                       @ 0x7
	.long	0                       @ 0x0
	.p2align	4
@ %bb.281:
LCPI0_230:
	.long	1                       @ 0x1
	.long	0                       @ 0x0
	.long	96                      @ 0x60
	.long	0                       @ 0x0
	.p2align	4
@ %bb.282:
LCPI0_231:
	.long	1                       @ 0x1
	.long	0                       @ 0x0
	.long	288                     @ 0x120
	.long	0                       @ 0x0
	.p2align	4
@ %bb.283:
LCPI0_232:
	.long	1                       @ 0x1
	.long	0                       @ 0x0
	.long	1                       @ 0x1
	.long	0                       @ 0x0
	.p2align	4
@ %bb.284:
LCPI0_233:
	.long	96                      @ 0x60
	.long	0                       @ 0x0
	.long	288                     @ 0x120
	.long	0                       @ 0x0
	.p2align	4
@ %bb.285:
LCPI0_234:
	.long	4                       @ 0x4
	.long	0                       @ 0x0
	.long	1                       @ 0x1
	.long	0                       @ 0x0
	.p2align	4
@ %bb.286:
LCPI0_235:
	.long	4                       @ 0x4
	.long	0                       @ 0x0
	.long	4                       @ 0x4
	.long	0                       @ 0x0
	.p2align	4
@ %bb.287:
LCPI0_236:
	.long	1                       @ 0x1
	.long	0                       @ 0x0
	.long	576                     @ 0x240
	.long	0                       @ 0x0
	.p2align	4
@ %bb.288:
LCPI0_237:
	.long	576                     @ 0x240
	.long	0                       @ 0x0
	.long	96                      @ 0x60
	.long	0                       @ 0x0
	.p2align	2
LBB0_289:                               @ %cond253.preheader.i
                                        @ =>This Loop Header: Depth=1
                                        @     Child Loop BB0_290 Depth 2
	.end_data_region
	add	r0, r11, r8, lsl #2
	mov	r3, #0
	mov	r4, #0
	vldr	s0, [r0]
	umull	r2, r0, r8, r12
	vadd.f32	s2, s0, s28
	vcmpe.f32	s2, #0
	vmrs	APSR_nzcv, fpscr
	vdiv.f32	s0, s2, s16
	vmax.f32	d1, d1, d12
	vmovmi.f32	s0, s24
	vcmpe.f32	s2, s16
	vmrs	APSR_nzcv, fpscr
	vmovgt.f32	s0, s30
	vdup.32	q10, d0[0]
LBB0_290:                               @ %cond256.preheader.i
                                        @   Parent Loop BB0_289 Depth=1
                                        @ =>  This Inner Loop Header: Depth=2
	rsb	r0, r3, r3, lsl #3
	ldr	r1, [r6, #1476]         @ 4-byte Reload
	add	r0, r0, r2
	adds	r3, r3, #1
	adc	r4, r4, #0
	add	r5, r1, r0, lsl #2
	ldr	r1, [r6, #1476]         @ 4-byte Reload
	vld1.32	{d22, d23}, [r5]
	add	r5, r10, r0, lsl #2
	vmul.f32	q11, q10, q11
	vadd.f32	q12, q11, q8
	vclt.f32	q13, q12, #0
	vbic	q12, q12, q13
	vmin.f32	q12, q12, q9
	vmul.f32	q1, q11, q12
	vdiv.f32	s11, s7, s16
	vdiv.f32	s10, s6, s16
	vdiv.f32	s9, s5, s16
	vdiv.f32	s8, s4, s16
	vst1.32	{d4, d5}, [r5]
	add	r5, r0, #4
	add	r1, r1, r5, lsl #2
	vldr	s2, [r1]
	add	r1, r10, r5, lsl #2
	ldr	r5, [r6, #1476]         @ 4-byte Reload
	vmul.f32	s2, s0, s2
	vadd.f32	s4, s2, s28
	vmax.f32	d22, d2, d12
	vmin.f32	d2, d22, d8
	vmul.f32	s2, s2, s4
	vdiv.f32	s2, s2, s16
	vstr	s2, [r1]
	add	r1, r0, #5
	add	r0, r0, #6
	add	r5, r5, r1, lsl #2
	add	r1, r10, r1, lsl #2
	vldr	s2, [r5]
	vmul.f32	s2, s0, s2
	vadd.f32	s4, s2, s28
	vmax.f32	d22, d2, d12
	vmin.f32	d2, d22, d8
	vmul.f32	s2, s2, s4
	vdiv.f32	s2, s2, s16
	vstr	s2, [r1]
	ldr	r1, [r6, #1476]         @ 4-byte Reload
	add	r1, r1, r0, lsl #2
	add	r0, r10, r0, lsl #2
	vldr	s2, [r1]
	vmul.f32	s2, s0, s2
	vadd.f32	s4, s2, s28
	vmax.f32	d22, d2, d12
	vmin.f32	d2, d22, d8
	vmul.f32	s2, s2, s4
	vdiv.f32	s2, s2, s16
	vstr	s2, [r0]
	eor	r0, r3, #7
	orrs	r0, r0, r4
	bne	LBB0_290
@ %bb.291:                              @ %exit255.i
                                        @   in Loop: Header=BB0_289 Depth=1
	adds	r8, r8, #1
	adc	lr, lr, #0
	eor	r0, r8, #288
	orrs	r0, r0, lr
	bne	LBB0_289
@ %bb.292:                              @ %exit252.i
	adr	r0, LCPI0_229
	add	lr, r6, #1568
	vld1.64	{d16, d17}, [r0:128]
	sub	r0, sp, #16
	bic	r2, r0, #7
	vst1.64	{d16, d17}, [lr:128]    @ 16-byte Spill
	mov	sp, r2
	sub	r0, sp, #32
	bic	r3, r0, #31
	mov	sp, r3
	sub	r0, sp, #104
	bic	r0, r0, #7
	mov	sp, r0
	mov	r4, sp
	sub	r12, r4, #4
	mov	sp, r12
	sub	r5, sp, #56
	bic	r5, r5, #15
	mov	sp, r5
	ldr	r1, [r6, #1208]         @ 4-byte Reload
	mov	r11, #6
	str	r1, [r2]
	add	r1, r0, #16
	strb	r11, [r4, #-4]
	add	lr, r6, #1584
	vst1.64	{d16, d17}, [r1]
	adr	r1, LCPI0_230
	vld1.64	{d18, d19}, [r1:128]
	mov	r1, r0
	vst1.64	{d18, d19}, [lr:128]    @ 16-byte Spill
	mov	lr, #48
	vst1.32	{d18, d19}, [r1], lr
	add	lr, r6, #768
	str	r10, [r2, #4]
	mov	r10, #0
	strb	r11, [r4, #-3]
	vst1.64	{d16, d17}, [r1]
	adr	r1, LCPI0_231
	vld1.64	{d16, d17}, [r1:128]
	add	r1, r0, #32
	vst1.64	{d16, d17}, [r1]
	adr	r1, LCPI0_232
	vld1.64	{d10, d11}, [r1:128]
	add	r1, r0, #80
	strb	r11, [r4, #-2]
	vst1.64	{d10, d11}, [r1]
	adr	r1, LCPI0_233
	vld1.64	{d16, d17}, [r1:128]
	add	r1, r0, #64
	vst1.64	{d16, d17}, [r1]
	add	r1, r2, #8
	vld1.64	{d16, d17}, [lr:128]    @ 16-byte Reload
	add	lr, r6, #1552
	vst1.64	{d16, d17}, [r1]
	strb	r11, [r4, #-1]
	adr	r1, LCPI0_234
	vld1.64	{d16, d17}, [r1:128]
	vst1.64	{d16, d17}, [lr:128]    @ 16-byte Spill
	adr	r1, LCPI0_235
	add	lr, r6, #1536
	vld1.64	{d18, d19}, [r1:128]
	mov	r1, r3
	vst1.32	{d18, d19}, [r1]!
	vst1.64	{d16, d17}, [r1]
	mov	r1, #96
	vmov.i32	q8, #0x0
	str	r1, [r0, #96]
	add	r1, r5, #32
	vst1.64	{d18, d19}, [lr:128]    @ 16-byte Spill
	vst1.64	{d10, d11}, [r1:128]
	mov	r1, r5
	vst1.64	{d10, d11}, [r1:128]!
	vst1.64	{d16, d17}, [r1:128]
	mov	r1, #1
	str	r10, [r0, #100]
	str	r1, [r5, #48]
	str	r10, [r5, #52]
	sub	sp, sp, #20
	mov	r1, #7
	stm	sp, {r0, r12}
	mov	r0, #4
	str	r1, [sp, #8]
	mov	r1, #0
	str	r10, [sp, #12]
	str	r5, [sp, #16]
	bl	_nnc_aten_conv2d
	add	sp, sp, #20
	sub	r0, sp, #16
	bic	r2, r0, #7
	mov	sp, r2
	sub	r0, sp, #32
	bic	r3, r0, #31
	mov	sp, r3
	sub	r0, sp, #104
	bic	r0, r0, #7
	mov	sp, r0
	mov	r1, sp
	sub	r12, r1, #4
	mov	sp, r12
	sub	r5, sp, #56
	bic	lr, r5, #15
	mov	sp, lr
	add	r4, r6, #1568
	add	r5, r0, #16
	vld1.64	{d18, d19}, [r4:128]    @ 16-byte Reload
	mov	r4, #48
	ldr	r8, [r6, #808]          @ 4-byte Reload
	str	r8, [r2]
	strb	r11, [r1, #-4]
	vst1.64	{d18, d19}, [r5]
	adr	r5, LCPI0_236
	vld1.64	{d16, d17}, [r5:128]
	mov	r5, r0
	vst1.32	{d16, d17}, [r5], r4
	ldr	r4, [r6, #1208]         @ 4-byte Reload
	str	r4, [r2, #4]
	add	r4, r6, #1584
	vst1.64	{d18, d19}, [r5]
	add	r5, r0, #32
	vld1.64	{d16, d17}, [r4:128]    @ 16-byte Reload
	add	r4, r6, #784
	vst1.64	{d16, d17}, [r5]
	add	r5, r0, #80
	strb	r11, [r1, #-3]
	strb	r11, [r1, #-2]
	vst1.64	{d10, d11}, [r5]
	adr	r5, LCPI0_237
	vld1.64	{d16, d17}, [r5:128]
	add	r5, r0, #64
	vst1.64	{d16, d17}, [r5]
	add	r5, r2, #8
	vld1.64	{d16, d17}, [r4:128]    @ 16-byte Reload
	add	r4, r6, #1536
	vst1.64	{d16, d17}, [r5]
	vld1.64	{d16, d17}, [r4:128]    @ 16-byte Reload
	add	r4, r6, #1552
	strb	r11, [r1, #-1]
	mov	r1, r3
	vst1.32	{d16, d17}, [r1]!
	vld1.64	{d16, d17}, [r4:128]    @ 16-byte Reload
	vst1.64	{d16, d17}, [r1]
	mov	r1, #576
	vmov.i32	q8, #0x0
	str	r1, [r0, #96]
	add	r1, lr, #32
	str	r10, [r0, #100]
	vst1.64	{d10, d11}, [r1:128]
	mov	r1, lr
	vst1.64	{d10, d11}, [r1:128]!
	vst1.64	{d16, d17}, [r1:128]
	mov	r1, #1
	str	r1, [lr, #48]
	str	r10, [lr, #52]
	sub	sp, sp, #20
	stm	sp, {r0, r12}
	mov	r0, #7
	add	r1, sp, #8
	stm	r1, {r0, r10, lr}
	mov	r0, #4
	mov	r1, #0
	bl	_nnc_aten_conv2d
	add	sp, sp, #20
	vmov.f32	q8, #3.000000e+00
	ldr	r11, [r6, #804]         @ 4-byte Reload
	vmov.f32	q9, #6.000000e+00
	mov	r12, #49
	mov	lr, #0
LBB0_293:                               @ %cond262.preheader.i
                                        @ =>This Loop Header: Depth=1
                                        @     Child Loop BB0_294 Depth 2
	umull	r2, r0, r10, r12
	mov	r3, #0
	mov	r5, #0
LBB0_294:                               @ %cond265.preheader.i
                                        @   Parent Loop BB0_293 Depth=1
                                        @ =>  This Inner Loop Header: Depth=2
	rsb	r0, r3, r3, lsl #3
	adds	r3, r3, #1
	add	r0, r0, r2
	adc	r5, r5, #0
	add	r4, r8, r0, lsl #2
	vld1.32	{d20, d21}, [r4]
	add	r4, r11, r0, lsl #2
	vadd.f32	q11, q10, q8
	vclt.f32	q12, q11, #0
	vbic	q11, q11, q12
	vmin.f32	q11, q11, q9
	vmul.f32	q0, q10, q11
	vdiv.f32	s7, s3, s16
	vdiv.f32	s6, s2, s16
	vdiv.f32	s5, s1, s16
	vdiv.f32	s4, s0, s16
	vst1.32	{d2, d3}, [r4]
	add	r4, r0, #4
	add	r1, r8, r4, lsl #2
	vldr	s0, [r1]
	add	r1, r11, r4, lsl #2
	vadd.f32	s2, s0, s28
	vmax.f32	d20, d1, d12
	vmin.f32	d1, d20, d8
	vmul.f32	s0, s0, s2
	vdiv.f32	s0, s0, s16
	vstr	s0, [r1]
	add	r1, r0, #5
	add	r0, r0, #6
	add	r4, r8, r1, lsl #2
	add	r1, r11, r1, lsl #2
	vldr	s0, [r4]
	vadd.f32	s2, s0, s28
	vmax.f32	d20, d1, d12
	vmin.f32	d1, d20, d8
	vmul.f32	s0, s0, s2
	vdiv.f32	s0, s0, s16
	vstr	s0, [r1]
	add	r1, r8, r0, lsl #2
	add	r0, r11, r0, lsl #2
	vldr	s0, [r1]
	vadd.f32	s2, s0, s28
	vmax.f32	d20, d1, d12
	vmin.f32	d1, d20, d8
	vmul.f32	s0, s0, s2
	vdiv.f32	s0, s0, s16
	vstr	s0, [r0]
	eor	r0, r3, #7
	orrs	r0, r0, r5
	bne	LBB0_294
@ %bb.295:                              @ %exit264.i
                                        @   in Loop: Header=BB0_293 Depth=1
	adds	r10, r10, #1
	adc	lr, lr, #0
	eor	r0, r10, #576
	orrs	r0, r0, lr
	bne	LBB0_293
@ %bb.296:                              @ %exit261.i
	adr	r0, LCPI0_238
	add	lr, r6, #1568
	vld1.64	{d18, d19}, [r0:128]
	sub	r0, sp, #16
	bic	r2, r0, #7
	vst1.64	{d18, d19}, [lr:128]    @ 16-byte Spill
	mov	sp, r2
	sub	r0, sp, #32
	bic	r3, r0, #31
	mov	sp, r3
	sub	r0, sp, #104
	bic	r0, r0, #7
	mov	sp, r0
	mov	r5, sp
	sub	r12, r5, #4
	mov	sp, r12
	sub	r4, sp, #56
	bic	r4, r4, #7
	mov	sp, r4
	add	r1, r0, #16
	ldr	r10, [r6, #1480]        @ 4-byte Reload
	mov	lr, r11
	mov	r11, #6
	str	r10, [r2]
	mov	r8, #48
	strb	r11, [r5, #-4]
	vst1.64	{d18, d19}, [r1]
	adr	r1, LCPI0_239
	vld1.64	{d16, d17}, [r1:128]
	add	r1, r6, #1584
	vst1.64	{d16, d17}, [r1:128]    @ 16-byte Spill
	mov	r1, r0
	vst1.32	{d16, d17}, [r1], r8
	mov	r8, #0
	vst1.64	{d18, d19}, [r1]
	add	r1, r0, #32
	str	lr, [r2, #4]
	add	lr, r6, #816
	strb	r11, [r5, #-3]
	vst1.64	{d16, d17}, [r1]
	adr	r1, LCPI0_240
	vld1.64	{d16, d17}, [r1:128]
	add	r1, r0, #80
	strb	r11, [r5, #-2]
	vst1.64	{d16, d17}, [r1]
	adr	r1, LCPI0_241
	vld1.64	{d16, d17}, [r1:128]
	add	r1, r0, #64
	vst1.64	{d16, d17}, [r1]
	add	r1, r2, #8
	vld1.64	{d16, d17}, [lr:128]    @ 16-byte Reload
	add	lr, r6, #1536
	vst1.64	{d16, d17}, [r1]
	strb	r11, [r5, #-1]
	adr	r1, LCPI0_242
	vld1.64	{d16, d17}, [r1:128]
	adr	r1, LCPI0_243
	vld1.64	{d18, d19}, [r1:128]
	mov	r1, r3
	vst1.32	{d18, d19}, [r1]!
	vst1.64	{d18, d19}, [lr:128]    @ 16-byte Spill
	mov	lr, #576
	vst1.64	{d16, d17}, [r1]
	adr	r1, LCPI0_244
	vld1.64	{d10, d11}, [r1:128]
	add	r1, r4, #32
	vst1.64	{d10, d11}, [r1]
	str	lr, [r0, #96]
	str	lr, [r4, #48]
	add	lr, r6, #1552
	str	r8, [r0, #100]
	adr	r1, LCPI0_245
	vld1.64	{d16, d17}, [r1:128]
	mov	r1, r4
	vst1.32	{d10, d11}, [r1]!
	vst1.64	{d16, d17}, [r1]
	vst1.64	{d16, d17}, [lr:128]    @ 16-byte Spill
	str	r8, [r4, #52]
	sub	sp, sp, #20
	mov	r1, #7
	stm	sp, {r0, r12}
	mov	r0, #4
	str	r1, [sp, #8]
	mov	r1, #0
	str	r8, [sp, #12]
	str	r4, [sp, #16]
	bl	_nnc_aten_conv2d
	add	sp, sp, #20
	sub	r0, sp, #8
	bic	r2, r0, #7
	mov	sp, r2
	sub	r0, sp, #16
	bic	r3, r0, #15
	mov	sp, r3
	sub	r0, sp, #64
	bic	r0, r0, #7
	mov	sp, r0
	mov	r1, sp
	sub	r12, r1, #4
	mov	sp, r12
	sub	r4, sp, #16
	bic	lr, r4, #15
	mov	sp, lr
	strb	r11, [r1, #-4]
	add	r4, r0, #16
	add	r5, r6, #1584
	strb	r11, [r1, #-3]
	add	r1, r6, #1536
	vld1.64	{d16, d17}, [r5:128]    @ 16-byte Reload
	mov	r5, #48
	vld1.64	{d18, d19}, [r1:128]    @ 16-byte Reload
	add	r1, r6, #1568
	vst1.64	{d10, d11}, [r4]
	mov	r4, r0
	vst1.32	{d16, d17}, [r4], r5
	ldr	r5, [r6, #812]          @ 4-byte Reload
	vst1.64	{d18, d19}, [r3:128]
	vld1.64	{d18, d19}, [r1:128]    @ 16-byte Reload
	add	r1, r0, #32
	stm	r2, {r5, r10}
	vst1.64	{d18, d19}, [r4]
	vst1.64	{d16, d17}, [r1]
	vst1.64	{d10, d11}, [lr:128]
	sub	sp, sp, #20
	mov	r1, #2
	stm	sp, {r0, r12}
	mov	r0, #2
	str	r1, [sp, #8]
	mov	r1, #0
	mov	r10, #2
	str	r8, [sp, #12]
	str	lr, [sp, #16]
	bl	_nnc_aten_adaptive_avg_pool2d
	add	sp, sp, #20
	ldr	r4, [r6, #836]          @ 4-byte Reload
	mov	r1, r5
	mov	r2, #2304
	mov	r0, r4
	bl	_memcpy
	sub	r0, sp, #12
	bic	r2, r0, #7
	mov	sp, r2
	sub	r0, sp, #24
	bic	r3, r0, #15
	mov	sp, r3
	sub	r0, sp, #48
	bic	lr, r0, #7
	mov	sp, lr
	mov	r1, sp
	sub	r12, r1, #4
	mov	sp, r12
	ldr	r5, [r6, #1144]         @ 4-byte Reload
	add	r0, r6, #1568
	str	r5, [r2]
	strb	r11, [r1, #-4]
	str	r4, [r2, #4]
	adr	r4, LCPI0_246
	vld1.64	{d16, d17}, [r4:128]
	mov	r4, r3
	str	r8, [r6, #24]
	add	r8, r6, #1584
	vst1.64	{d16, d17}, [r0:128]    @ 16-byte Spill
	add	r0, r6, #1552
	vld1.64	{d10, d11}, [r0:128]    @ 16-byte Reload
	mov	r0, lr
	vst1.32	{d16, d17}, [r0]!
	vld1.64	{d16, d17}, [r8:128]    @ 16-byte Reload
	strb	r11, [r1, #-3]
	vst1.64	{d10, d11}, [r4:128]!
	ldr	r8, [r6, #24]
	vst1.64	{d16, d17}, [r0]
	ldr	r0, [r6, #1148]         @ 4-byte Reload
	str	r0, [r2, #12]
	ldr	r0, [r6, #1156]         @ 4-byte Reload
	str	r0, [r2, #8]
	strb	r11, [r1, #-2]
	str	r10, [r4]
	str	r8, [r4, #4]
	adr	r0, LCPI0_247
	vld1.64	{d16, d17}, [r0:128]
	add	r0, lr, #32
	vst1.64	{d16, d17}, [r0]
	sub	sp, sp, #20
	str	lr, [sp]
	add	lr, r6, #1024
	add	r0, lr, #824
	str	r0, [sp, #16]
	mov	r1, #0
	str	r12, [sp, #4]
	mov	r10, r0
	mov	r0, #3
	str	r8, [sp, #8]
	str	r8, [sp, #12]
	bl	_nnc_aten_matmul
	add	sp, sp, #20
	vld1.32	{d16, d17}, [r5]!
	mov	r3, #48
	ldr	r2, [r6, #840]          @ 4-byte Reload
	vclt.f32	q9, q8, #0
	vbic	q8, q8, q9
	vld1.32	{d26, d27}, [r5]
	add	r0, r2, #16
	vld1.32	{d18, d19}, [r0]
	add	r0, r2, #32
	vclt.f32	q14, q13, #0
	vld1.32	{d20, d21}, [r0]
	add	r0, r2, #64
	vbic	q13, q13, q14
	vld1.32	{d22, d23}, [r0]
	add	r0, r2, #80
	ldr	r5, [r6, #1152]         @ 4-byte Reload
	vld1.32	{d24, d25}, [r0]
	mov	r0, r2
	vld1.32	{d28, d29}, [r0], r3
	vld1.32	{d30, d31}, [r0]
	mov	r0, r5
	vst1.32	{d16, d17}, [r0]!
	vclt.f32	q8, q12, #0
	vbic	q8, q12, q8
	ldr	r1, [r6, #844]          @ 4-byte Reload
	vst1.32	{d26, d27}, [r0]
	add	r0, r1, #80
	vst1.32	{d16, d17}, [r0]
	vclt.f32	q8, q11, #0
	vbic	q8, q11, q8
	add	r0, r1, #64
	vst1.32	{d16, d17}, [r0]
	vclt.f32	q8, q10, #0
	vbic	q8, q10, q8
	add	r0, r1, #32
	vst1.32	{d16, d17}, [r0]
	vclt.f32	q8, q9, #0
	vbic	q8, q9, q8
	add	r0, r1, #16
	vst1.32	{d16, d17}, [r0]
	vclt.f32	q8, q14, #0
	vbic	q8, q14, q8
	mov	r0, r1
	vst1.32	{d16, d17}, [r0], r3
	vclt.f32	q8, q15, #0
	vbic	q8, q15, q8
	vst1.32	{d16, d17}, [r0]
	add	r0, r2, #96
	vld1.32	{d16, d17}, [r0]
	add	r0, r2, #208
	vld1.32	{d18, d19}, [r0]
	add	r0, r2, #192
	vld1.32	{d20, d21}, [r0]
	add	r0, r2, #176
	vld1.32	{d22, d23}, [r0]
	b	LBB0_308
	.p2align	4
@ %bb.297:
	.data_region
LCPI0_238:
	.long	7                       @ 0x7
	.long	0                       @ 0x0
	.long	7                       @ 0x7
	.long	0                       @ 0x0
	.p2align	4
@ %bb.298:
LCPI0_239:
	.long	1                       @ 0x1
	.long	0                       @ 0x0
	.long	576                     @ 0x240
	.long	0                       @ 0x0
	.p2align	4
@ %bb.299:
LCPI0_240:
	.long	5                       @ 0x5
	.long	0                       @ 0x0
	.long	5                       @ 0x5
	.long	0                       @ 0x0
	.p2align	4
@ %bb.300:
LCPI0_241:
	.long	576                     @ 0x240
	.long	0                       @ 0x0
	.long	1                       @ 0x1
	.long	0                       @ 0x0
	.p2align	4
@ %bb.301:
LCPI0_242:
	.long	4                       @ 0x4
	.long	0                       @ 0x0
	.long	1                       @ 0x1
	.long	0                       @ 0x0
	.p2align	4
@ %bb.302:
LCPI0_243:
	.long	4                       @ 0x4
	.long	0                       @ 0x0
	.long	4                       @ 0x4
	.long	0                       @ 0x0
	.p2align	4
@ %bb.303:
LCPI0_244:
	.long	1                       @ 0x1
	.long	0                       @ 0x0
	.long	1                       @ 0x1
	.long	0                       @ 0x0
	.p2align	4
@ %bb.304:
LCPI0_245:
	.long	2                       @ 0x2
	.long	0                       @ 0x0
	.long	2                       @ 0x2
	.long	0                       @ 0x0
	.p2align	4
@ %bb.305:
LCPI0_246:
	.long	1                       @ 0x1
	.long	0                       @ 0x0
	.long	144                     @ 0x90
	.long	0                       @ 0x0
	.p2align	4
@ %bb.306:
LCPI0_247:
	.long	576                     @ 0x240
	.long	0                       @ 0x0
	.long	144                     @ 0x90
	.long	0                       @ 0x0
	.p2align	4
@ %bb.307:
LCPI0_248:
	.long	144                     @ 0x90
	.long	0                       @ 0x0
	.long	576                     @ 0x240
	.long	0                       @ 0x0
	.p2align	2
LBB0_308:                               @ %exit261.i
	.end_data_region
	add	r0, r2, #160
	vld1.32	{d24, d25}, [r0]
	add	r0, r2, #112
	vld1.32	{d26, d27}, [r0]
	add	r0, r2, #144
	vclt.f32	q14, q13, #0
	vbic	q13, q13, q14
	vld1.32	{d28, d29}, [r0]
	add	r0, r2, #128
	vld1.32	{d30, d31}, [r0]
	add	r0, r1, #112
	vst1.32	{d26, d27}, [r0]
	vclt.f32	q13, q15, #0
	vbic	q13, q15, q13
	add	r0, r1, #128
	vst1.32	{d26, d27}, [r0]
	vclt.f32	q13, q14, #0
	vbic	q13, q14, q13
	add	r0, r1, #144
	vst1.32	{d26, d27}, [r0]
	vclt.f32	q13, q12, #0
	vbic	q12, q12, q13
	add	r0, r1, #160
	vst1.32	{d24, d25}, [r0]
	vclt.f32	q12, q11, #0
	vbic	q11, q11, q12
	add	r0, r1, #176
	vst1.32	{d22, d23}, [r0]
	vclt.f32	q11, q10, #0
	vbic	q10, q10, q11
	add	r0, r1, #192
	vst1.32	{d20, d21}, [r0]
	vclt.f32	q10, q9, #0
	vbic	q9, q9, q10
	add	r0, r1, #208
	vst1.32	{d18, d19}, [r0]
	vclt.f32	q9, q8, #0
	vbic	q8, q8, q9
	add	r0, r1, #96
	vst1.32	{d16, d17}, [r0]
	add	r0, r2, #224
	vld1.32	{d16, d17}, [r0]
	add	r0, r2, #336
	vld1.32	{d18, d19}, [r0]
	add	r0, r2, #320
	vld1.32	{d20, d21}, [r0]
	add	r0, r2, #304
	vld1.32	{d22, d23}, [r0]
	add	r0, r2, #288
	vld1.32	{d24, d25}, [r0]
	add	r0, r2, #240
	vld1.32	{d26, d27}, [r0]
	add	r0, r2, #272
	vclt.f32	q14, q13, #0
	vbic	q13, q13, q14
	vld1.32	{d28, d29}, [r0]
	add	r0, r2, #256
	vld1.32	{d30, d31}, [r0]
	add	r0, r1, #240
	vst1.32	{d26, d27}, [r0]
	vclt.f32	q13, q15, #0
	vbic	q13, q15, q13
	add	r0, r1, #256
	vst1.32	{d26, d27}, [r0]
	vclt.f32	q13, q14, #0
	vbic	q13, q14, q13
	add	r0, r1, #272
	vst1.32	{d26, d27}, [r0]
	vclt.f32	q13, q12, #0
	vbic	q12, q12, q13
	add	r0, r1, #288
	vst1.32	{d24, d25}, [r0]
	vclt.f32	q12, q11, #0
	vbic	q11, q11, q12
	add	r0, r1, #304
	vst1.32	{d22, d23}, [r0]
	vclt.f32	q11, q10, #0
	vbic	q10, q10, q11
	add	r0, r1, #320
	vst1.32	{d20, d21}, [r0]
	vclt.f32	q10, q9, #0
	vbic	q9, q9, q10
	add	r0, r1, #336
	vst1.32	{d18, d19}, [r0]
	vclt.f32	q9, q8, #0
	vbic	q8, q8, q9
	add	r0, r1, #224
	vst1.32	{d16, d17}, [r0]
	add	r0, r2, #352
	vld1.32	{d16, d17}, [r0]
	add	r0, r2, #464
	vld1.32	{d18, d19}, [r0]
	add	r0, r2, #448
	vld1.32	{d20, d21}, [r0]
	add	r0, r2, #432
	vld1.32	{d22, d23}, [r0]
	add	r0, r2, #416
	vld1.32	{d24, d25}, [r0]
	add	r0, r2, #368
	vld1.32	{d26, d27}, [r0]
	add	r0, r2, #400
	vclt.f32	q14, q13, #0
	vbic	q13, q13, q14
	vld1.32	{d28, d29}, [r0]
	add	r0, r2, #384
	vld1.32	{d30, d31}, [r0]
	add	r0, r1, #368
	vst1.32	{d26, d27}, [r0]
	vclt.f32	q13, q15, #0
	vbic	q13, q15, q13
	add	r0, r1, #384
	vst1.32	{d26, d27}, [r0]
	vclt.f32	q13, q14, #0
	vbic	q13, q14, q13
	add	r0, r1, #400
	vst1.32	{d26, d27}, [r0]
	vclt.f32	q13, q12, #0
	vbic	q12, q12, q13
	add	r0, r1, #416
	vst1.32	{d24, d25}, [r0]
	vclt.f32	q12, q11, #0
	vbic	q11, q11, q12
	add	r0, r1, #432
	vst1.32	{d22, d23}, [r0]
	vclt.f32	q11, q10, #0
	vbic	q10, q10, q11
	add	r0, r1, #448
	vst1.32	{d20, d21}, [r0]
	vclt.f32	q10, q9, #0
	vbic	q9, q9, q10
	add	r0, r1, #464
	vst1.32	{d18, d19}, [r0]
	vclt.f32	q9, q8, #0
	vbic	q8, q8, q9
	add	r0, r1, #352
	vst1.32	{d16, d17}, [r0]
	add	r0, r2, #480
	vld1.32	{d16, d17}, [r0]
	add	r0, r2, #496
	vld1.32	{d18, d19}, [r0]
	add	r0, r1, #496
	vclt.f32	q10, q9, #0
	vbic	q9, q9, q10
	vst1.32	{d18, d19}, [r0]
	vclt.f32	q9, q8, #0
	vbic	q8, q8, q9
	add	r0, r1, #480
	vst1.32	{d16, d17}, [r0]
	add	r0, r2, #512
	vld1.32	{d16, d17}, [r0]
	add	r0, r2, #528
	vld1.32	{d18, d19}, [r0]
	add	r0, r1, #528
	vclt.f32	q10, q9, #0
	vbic	q9, q9, q10
	vst1.32	{d18, d19}, [r0]
	vclt.f32	q9, q8, #0
	vbic	q8, q8, q9
	add	r0, r1, #512
	vst1.32	{d16, d17}, [r0]
	sub	r0, sp, #12
	bic	r2, r0, #7
	mov	sp, r2
	sub	r0, sp, #24
	bic	r3, r0, #15
	mov	sp, r3
	sub	r0, sp, #48
	bic	lr, r0, #7
	mov	sp, lr
	mov	r1, sp
	sub	r12, r1, #4
	mov	sp, r12
	mov	r4, r3
	strb	r11, [r1, #-4]
	strb	r11, [r1, #-3]
	mov	r0, lr
	vst1.64	{d10, d11}, [r4:128]!
	str	r5, [r6, #24]
	add	r5, r6, #1584
	vld1.64	{d16, d17}, [r5:128]    @ 16-byte Reload
	add	r5, r6, #1568
	vst1.32	{d16, d17}, [r0]!
	vld1.64	{d16, d17}, [r5:128]    @ 16-byte Reload
	ldr	r5, [r6, #24]
	vst1.64	{d16, d17}, [r0]
	ldr	r0, [r6, #1300]         @ 4-byte Reload
	strb	r11, [r1, #-2]
	stm	r2, {r0, r5}
	ldr	r0, [r6, #1168]         @ 4-byte Reload
	str	r0, [r2, #8]
	ldr	r0, [r6, #1156]         @ 4-byte Reload
	str	r0, [r2, #12]
	mov	r0, #2
	stm	r4, {r0, r8}
	adr	r0, LCPI0_248
	vld1.64	{d16, d17}, [r0:128]
	add	r0, lr, #32
	vst1.64	{d16, d17}, [r0]
	sub	sp, sp, #20
	mov	r0, #3
	mov	r1, #0
	str	lr, [sp]
	str	r12, [sp, #4]
	str	r8, [sp, #8]
	str	r8, [sp, #12]
	str	r10, [sp, #16]
	bl	_nnc_aten_matmul
	add	sp, sp, #20
	vmov.f32	q8, #3.000000e+00
	ldr	r10, [r6, #1184]        @ 4-byte Reload
	vmov.f32	q9, #6.000000e+00
	ldr	r11, [r6, #884]         @ 4-byte Reload
	ldr	r1, [r6, #1456]         @ 4-byte Reload
	mov	r12, #49
	mov	lr, #0
LBB0_309:                               @ %cond277.preheader.i
                                        @ =>This Loop Header: Depth=1
                                        @     Child Loop BB0_310 Depth 2
	ldr	r0, [r6, #1300]         @ 4-byte Reload
	mov	r3, #0
	mov	r4, #0
	add	r0, r0, r8, lsl #2
	vldr	s0, [r0]
	umull	r2, r0, r8, r12
	vadd.f32	s2, s0, s28
	vcmpe.f32	s2, #0
	vmrs	APSR_nzcv, fpscr
	vdiv.f32	s0, s2, s16
	vmax.f32	d1, d1, d12
	vmovmi.f32	s0, s24
	vcmpe.f32	s2, s16
	vmrs	APSR_nzcv, fpscr
	vmovgt.f32	s0, s30
	vdup.32	q10, d0[0]
LBB0_310:                               @ %cond280.preheader.i
                                        @   Parent Loop BB0_309 Depth=1
                                        @ =>  This Inner Loop Header: Depth=2
	rsb	r0, r3, r3, lsl #3
	ldr	r5, [r6, #1480]         @ 4-byte Reload
	add	r0, r0, r2
	adds	r3, r3, #1
	adc	r4, r4, #0
	add	r5, r5, r0, lsl #2
	vld1.32	{d22, d23}, [r5]
	add	r5, r1, r0, lsl #2
	vmul.f32	q11, q10, q11
	ldr	r1, [r6, #1480]         @ 4-byte Reload
	vadd.f32	q12, q11, q8
	vclt.f32	q13, q12, #0
	vbic	q12, q12, q13
	vmin.f32	q12, q12, q9
	vmul.f32	q1, q11, q12
	vdiv.f32	s11, s7, s16
	vdiv.f32	s10, s6, s16
	vdiv.f32	s9, s5, s16
	vdiv.f32	s8, s4, s16
	vst1.32	{d4, d5}, [r5]
	add	r5, r0, #4
	add	r1, r1, r5, lsl #2
	vldr	s2, [r1]
	ldr	r1, [r6, #1456]         @ 4-byte Reload
	vmul.f32	s2, s0, s2
	add	r1, r1, r5, lsl #2
	ldr	r5, [r6, #1480]         @ 4-byte Reload
	vadd.f32	s4, s2, s28
	vmax.f32	d22, d2, d12
	vmin.f32	d2, d22, d8
	vmul.f32	s2, s2, s4
	vdiv.f32	s2, s2, s16
	vstr	s2, [r1]
	add	r1, r0, #5
	add	r0, r0, #6
	add	r5, r5, r1, lsl #2
	vldr	s2, [r5]
	ldr	r5, [r6, #1456]         @ 4-byte Reload
	vmul.f32	s2, s0, s2
	add	r1, r5, r1, lsl #2
	vadd.f32	s4, s2, s28
	vmax.f32	d22, d2, d12
	vmin.f32	d2, d22, d8
	vmul.f32	s2, s2, s4
	vdiv.f32	s2, s2, s16
	vstr	s2, [r1]
	ldr	r1, [r6, #1480]         @ 4-byte Reload
	add	r1, r1, r0, lsl #2
	vldr	s2, [r1]
	ldr	r1, [r6, #1456]         @ 4-byte Reload
	vmul.f32	s2, s0, s2
	add	r0, r1, r0, lsl #2
	vadd.f32	s4, s2, s28
	vmax.f32	d22, d2, d12
	vmin.f32	d2, d22, d8
	vmul.f32	s2, s2, s4
	vdiv.f32	s2, s2, s16
	vstr	s2, [r0]
	eor	r0, r3, #7
	orrs	r0, r0, r4
	bne	LBB0_310
@ %bb.311:                              @ %exit279.i
                                        @   in Loop: Header=BB0_309 Depth=1
	adds	r8, r8, #1
	adc	lr, lr, #0
	eor	r0, r8, #576
	orrs	r0, r0, lr
	bne	LBB0_309
@ %bb.312:                              @ %exit276.i
	adr	r0, LCPI0_249
	vld1.64	{d16, d17}, [r0:128]
	sub	r0, sp, #16
	bic	r2, r0, #7
	mov	sp, r2
	sub	r0, sp, #32
	bic	r12, r0, #31
	mov	sp, r12
	sub	r0, sp, #104
	bic	r5, r0, #7
	mov	sp, r5
	mov	r4, sp
	sub	r0, r4, #4
	str	r0, [r6, #1584]         @ 4-byte Spill
	mov	sp, r0
	mov	r3, r1
	sub	r1, sp, #56
	bic	r8, r1, #15
	mov	sp, r8
	add	r1, r5, #16
	ldr	r0, [r6, #1160]         @ 4-byte Reload
	mov	lr, #6
	str	r0, [r2]
	strb	lr, [r4, #-4]
	mov	r0, r5
	vst1.64	{d16, d17}, [r1]
	adr	r1, LCPI0_250
	vmov.i32	q11, #0x0
	vld1.64	{d18, d19}, [r1:128]
	mov	r1, #48
	vst1.32	{d18, d19}, [r0], r1
	add	r1, r6, #848
	str	r3, [r2, #4]
	strb	lr, [r4, #-3]
	vst1.64	{d16, d17}, [r0]
	adr	r0, LCPI0_251
	vld1.64	{d16, d17}, [r0:128]
	add	r0, r5, #32
	vst1.64	{d16, d17}, [r0]
	adr	r0, LCPI0_252
	vld1.64	{d16, d17}, [r0:128]
	add	r0, r5, #80
	strb	lr, [r4, #-2]
	vst1.64	{d16, d17}, [r0]
	adr	r0, LCPI0_253
	vld1.64	{d18, d19}, [r0:128]
	add	r0, r5, #64
	vst1.64	{d18, d19}, [r0]
	add	r0, r2, #8
	vld1.64	{d18, d19}, [r1:128]    @ 16-byte Reload
	vst1.64	{d18, d19}, [r0]
	adr	r0, LCPI0_254
	vld1.64	{d18, d19}, [r0:128]
	adr	r0, LCPI0_255
	vld1.64	{d20, d21}, [r0:128]
	mov	r0, r12
	vst1.32	{d20, d21}, [r0]!
	vst1.64	{d18, d19}, [r0]
	mov	r0, #96
	str	r0, [r5, #96]
	add	r0, r8, #32
	strb	lr, [r4, #-1]
	mov	r4, #0
	vst1.64	{d16, d17}, [r0:128]
	mov	r0, #1
	str	r0, [r8, #48]
	mov	r0, r8
	str	r4, [r8, #52]
	vst1.64	{d16, d17}, [r0:128]!
	str	r4, [r5, #100]
	vst1.64	{d22, d23}, [r0:128]
	sub	sp, sp, #20
	ldr	r1, [r6, #1584]         @ 4-byte Reload
	mov	r0, #7
	str	r1, [sp, #4]
	add	r1, sp, #8
	str	r5, [sp]
	mov	r3, r12
	stm	r1, {r0, r4, r8}
	mov	r0, #4
	mov	r1, #0
	ldr	r8, [r6, #1160]         @ 4-byte Reload
	bl	_nnc_aten_conv2d
	add	sp, sp, #20
	ldr	r1, [r6, #1208]         @ 4-byte Reload
	mov	r12, #196
	mov	lr, #0
	b	LBB0_322
	.p2align	4
@ %bb.313:
	.data_region
LCPI0_249:
	.long	7                       @ 0x7
	.long	0                       @ 0x0
	.long	7                       @ 0x7
	.long	0                       @ 0x0
	.p2align	4
@ %bb.314:
LCPI0_250:
	.long	1                       @ 0x1
	.long	0                       @ 0x0
	.long	96                      @ 0x60
	.long	0                       @ 0x0
	.p2align	4
@ %bb.315:
LCPI0_251:
	.long	1                       @ 0x1
	.long	0                       @ 0x0
	.long	576                     @ 0x240
	.long	0                       @ 0x0
	.p2align	4
@ %bb.316:
LCPI0_252:
	.long	1                       @ 0x1
	.long	0                       @ 0x0
	.long	1                       @ 0x1
	.long	0                       @ 0x0
	.p2align	4
@ %bb.317:
LCPI0_253:
	.long	96                      @ 0x60
	.long	0                       @ 0x0
	.long	576                     @ 0x240
	.long	0                       @ 0x0
	.p2align	4
@ %bb.318:
LCPI0_254:
	.long	4                       @ 0x4
	.long	0                       @ 0x0
	.long	1                       @ 0x1
	.long	0                       @ 0x0
	.p2align	4
@ %bb.319:
LCPI0_255:
	.long	4                       @ 0x4
	.long	0                       @ 0x0
	.long	4                       @ 0x4
	.long	0                       @ 0x0
	.p2align	4
@ %bb.320:
LCPI0_256:
	.long	576                     @ 0x240
	.long	0                       @ 0x0
	.long	96                      @ 0x60
	.long	0                       @ 0x0
	.p2align	4
@ %bb.321:
LCPI0_257:
	.long	7                       @ 0x7
	.long	0                       @ 0x0
	.long	7                       @ 0x7
	.long	0                       @ 0x0
	.p2align	2
LBB0_322:                               @ %cond286.preheader.i
                                        @ =>This Inner Loop Header: Depth=1
	.end_data_region
	mla	r2, r4, r12, r8
	mla	r3, r4, r12, r1
	mla	r5, r4, r12, r10
	vld1.32	{d16, d17}, [r2]!
	vld1.32	{d18, d19}, [r3]!
	vadd.f32	q8, q9, q8
	vld1.32	{d20, d21}, [r2]
	mul	r2, r4, r12
	adds	r4, r4, #1
	vld1.32	{d18, d19}, [r3]
	adc	lr, lr, #0
	vadd.f32	q9, q9, q10
	vst1.32	{d16, d17}, [r5]!
	add	r3, r2, #32
	add	r0, r1, r3
	vst1.32	{d18, d19}, [r5]
	add	r5, r8, r3
	vld1.32	{d18, d19}, [r0]!
	vld1.32	{d16, d17}, [r5]!
	vadd.f32	q8, q9, q8
	vld1.32	{d20, d21}, [r0]
	add	r0, r10, r3
	vld1.32	{d18, d19}, [r5]
	vadd.f32	q9, q10, q9
	vst1.32	{d16, d17}, [r0]!
	vst1.32	{d18, d19}, [r0]
	add	r0, r2, #64
	add	r3, r8, r0
	add	r5, r1, r0
	vld1.32	{d18, d19}, [r5]!
	add	r0, r10, r0
	vld1.32	{d16, d17}, [r3]!
	vadd.f32	q8, q9, q8
	vld1.32	{d18, d19}, [r3]
	vld1.32	{d20, d21}, [r5]
	vadd.f32	q9, q10, q9
	vst1.32	{d16, d17}, [r0]!
	vst1.32	{d18, d19}, [r0]
	add	r0, r2, #96
	add	r3, r8, r0
	add	r5, r1, r0
	vld1.32	{d18, d19}, [r5]!
	add	r0, r10, r0
	vld1.32	{d16, d17}, [r3]!
	vadd.f32	q8, q9, q8
	vld1.32	{d18, d19}, [r3]
	vld1.32	{d20, d21}, [r5]
	vadd.f32	q9, q10, q9
	vst1.32	{d16, d17}, [r0]!
	vst1.32	{d18, d19}, [r0]
	add	r0, r2, #128
	add	r3, r8, r0
	add	r5, r1, r0
	vld1.32	{d18, d19}, [r5]!
	add	r0, r10, r0
	vld1.32	{d16, d17}, [r3]!
	vadd.f32	q8, q9, q8
	vld1.32	{d18, d19}, [r3]
	vld1.32	{d20, d21}, [r5]
	vadd.f32	q9, q10, q9
	vst1.32	{d16, d17}, [r0]!
	vst1.32	{d18, d19}, [r0]
	add	r0, r2, #160
	add	r3, r8, r0
	add	r5, r1, r0
	vld1.32	{d18, d19}, [r5]!
	add	r0, r10, r0
	vld1.32	{d16, d17}, [r3]!
	vadd.f32	q8, q9, q8
	vld1.32	{d18, d19}, [r3]
	vld1.32	{d20, d21}, [r5]
	vadd.f32	q9, q10, q9
	vst1.32	{d16, d17}, [r0]!
	vst1.32	{d18, d19}, [r0]
	add	r0, r2, #192
	add	r2, r8, r0
	vldr	s0, [r2]
	add	r2, r1, r0
	add	r0, r10, r0
	vldr	s2, [r2]
	vadd.f32	s0, s2, s0
	vstr	s0, [r0]
	eor	r0, r4, #96
	orrs	r0, r0, lr
	bne	LBB0_322
@ %bb.323:                              @ %exit285.i
	adr	r0, LCPI0_249
	vld1.64	{d16, d17}, [r0:128]
	sub	r0, sp, #16
	bic	r2, r0, #7
	mov	sp, r2
	sub	r0, sp, #32
	bic	r3, r0, #31
	mov	sp, r3
	sub	r0, sp, #104
	bic	r5, r0, #7
	mov	sp, r5
	mov	r4, sp
	sub	r12, r4, #4
	mov	sp, r12
	sub	r1, sp, #56
	bic	r8, r1, #15
	mov	sp, r8
	add	r1, r5, #16
	mov	lr, #6
	str	r11, [r2]
	mov	r0, r5
	strb	lr, [r4, #-4]
	vmov.i32	q11, #0x0
	vst1.64	{d16, d17}, [r1]
	adr	r1, LCPI0_251
	vld1.64	{d18, d19}, [r1:128]
	mov	r1, #48
	vst1.32	{d18, d19}, [r0], r1
	add	r1, r6, #864
	str	r10, [r2, #4]
	mov	r10, #0
	strb	lr, [r4, #-3]
	vst1.64	{d16, d17}, [r0]
	adr	r0, LCPI0_250
	vld1.64	{d16, d17}, [r0:128]
	add	r0, r5, #32
	vst1.64	{d16, d17}, [r0]
	adr	r0, LCPI0_252
	vld1.64	{d16, d17}, [r0:128]
	add	r0, r5, #80
	strb	lr, [r4, #-2]
	vst1.64	{d16, d17}, [r0]
	adr	r0, LCPI0_256
	vld1.64	{d18, d19}, [r0:128]
	add	r0, r5, #64
	vst1.64	{d18, d19}, [r0]
	add	r0, r2, #8
	vld1.64	{d18, d19}, [r1:128]    @ 16-byte Reload
	vst1.64	{d18, d19}, [r0]
	adr	r0, LCPI0_254
	vld1.64	{d18, d19}, [r0:128]
	adr	r0, LCPI0_255
	vld1.64	{d20, d21}, [r0:128]
	mov	r0, r3
	vst1.32	{d20, d21}, [r0]!
	vst1.64	{d18, d19}, [r0]
	mov	r0, #576
	str	r0, [r5, #96]
	add	r0, r8, #32
	strb	lr, [r4, #-1]
	vst1.64	{d16, d17}, [r0:128]
	mov	r0, #1
	str	r0, [r8, #48]
	mov	r0, r8
	str	r10, [r8, #52]
	vst1.64	{d16, d17}, [r0:128]!
	str	r10, [r5, #100]
	vst1.64	{d22, d23}, [r0:128]
	sub	sp, sp, #20
	mov	r0, #7
	stm	sp, {r5, r12}
	mov	r1, #0
	str	r0, [sp, #8]
	mov	r0, #4
	str	r10, [sp, #12]
	str	r8, [sp, #16]
	bl	_nnc_aten_conv2d
	add	sp, sp, #20
	vmov.f32	q8, #3.000000e+00
	ldr	r8, [r6, #888]          @ 4-byte Reload
	vmov.f32	q9, #6.000000e+00
	mov	r12, #49
	mov	lr, #0
LBB0_324:                               @ %cond295.preheader.i
                                        @ =>This Loop Header: Depth=1
                                        @     Child Loop BB0_325 Depth 2
	umull	r2, r0, r10, r12
	mov	r3, #0
	mov	r5, #0
LBB0_325:                               @ %cond298.preheader.i
                                        @   Parent Loop BB0_324 Depth=1
                                        @ =>  This Inner Loop Header: Depth=2
	rsb	r0, r3, r3, lsl #3
	adds	r3, r3, #1
	add	r0, r0, r2
	adc	r5, r5, #0
	add	r4, r11, r0, lsl #2
	vld1.32	{d20, d21}, [r4]
	add	r4, r8, r0, lsl #2
	vadd.f32	q11, q10, q8
	vclt.f32	q12, q11, #0
	vbic	q11, q11, q12
	vmin.f32	q11, q11, q9
	vmul.f32	q0, q10, q11
	vdiv.f32	s7, s3, s16
	vdiv.f32	s6, s2, s16
	vdiv.f32	s5, s1, s16
	vdiv.f32	s4, s0, s16
	vst1.32	{d2, d3}, [r4]
	add	r4, r0, #4
	add	r1, r11, r4, lsl #2
	vldr	s0, [r1]
	add	r1, r8, r4, lsl #2
	vadd.f32	s2, s0, s28
	vmax.f32	d20, d1, d12
	vmin.f32	d1, d20, d8
	vmul.f32	s0, s0, s2
	vdiv.f32	s0, s0, s16
	vstr	s0, [r1]
	add	r1, r0, #5
	add	r0, r0, #6
	add	r4, r11, r1, lsl #2
	add	r1, r8, r1, lsl #2
	vldr	s0, [r4]
	vadd.f32	s2, s0, s28
	vmax.f32	d20, d1, d12
	vmin.f32	d1, d20, d8
	vmul.f32	s0, s0, s2
	vdiv.f32	s0, s0, s16
	vstr	s0, [r1]
	add	r1, r11, r0, lsl #2
	add	r0, r8, r0, lsl #2
	vldr	s0, [r1]
	vadd.f32	s2, s0, s28
	vmax.f32	d20, d1, d12
	vmin.f32	d1, d20, d8
	vmul.f32	s0, s0, s2
	vdiv.f32	s0, s0, s16
	vstr	s0, [r0]
	eor	r0, r3, #7
	orrs	r0, r0, r5
	bne	LBB0_325
@ %bb.326:                              @ %exit297.i
                                        @   in Loop: Header=BB0_324 Depth=1
	adds	r10, r10, #1
	adc	lr, lr, #0
	eor	r0, r10, #576
	orrs	r0, r0, lr
	bne	LBB0_324
@ %bb.327:                              @ %exit294.i
	adr	r0, LCPI0_257
	add	lr, r6, #1568
	vld1.64	{d18, d19}, [r0:128]
	sub	r0, sp, #16
	bic	r2, r0, #7
	vst1.64	{d18, d19}, [lr:128]    @ 16-byte Spill
	mov	sp, r2
	sub	r0, sp, #32
	bic	r3, r0, #31
	mov	sp, r3
	sub	r0, sp, #104
	bic	r0, r0, #7
	mov	sp, r0
	mov	r5, sp
	sub	r12, r5, #4
	mov	sp, r12
	sub	r4, sp, #56
	bic	r4, r4, #7
	mov	sp, r4
	add	r1, r0, #16
	ldr	r10, [r6, #1484]        @ 4-byte Reload
	mov	r11, #6
	str	r10, [r2]
	strb	r11, [r5, #-4]
	add	lr, r6, #1584
	vst1.64	{d18, d19}, [r1]
	adr	r1, LCPI0_258
	vld1.64	{d16, d17}, [r1:128]
	mov	r1, r0
	vst1.64	{d16, d17}, [lr:128]    @ 16-byte Spill
	mov	lr, #48
	vst1.32	{d16, d17}, [r1], lr
	add	lr, r6, #896
	vst1.64	{d18, d19}, [r1]
	add	r1, r0, #32
	str	r8, [r2, #4]
	mov	r8, #0
	strb	r11, [r5, #-3]
	vst1.64	{d16, d17}, [r1]
	adr	r1, LCPI0_259
	vld1.64	{d16, d17}, [r1:128]
	add	r1, r0, #80
	strb	r11, [r5, #-2]
	vst1.64	{d16, d17}, [r1]
	adr	r1, LCPI0_260
	vld1.64	{d16, d17}, [r1:128]
	add	r1, r0, #64
	vst1.64	{d16, d17}, [r1]
	add	r1, r2, #8
	vld1.64	{d16, d17}, [lr:128]    @ 16-byte Reload
	add	lr, r6, #1536
	vst1.64	{d16, d17}, [r1]
	strb	r11, [r5, #-1]
	adr	r1, LCPI0_261
	vld1.64	{d16, d17}, [r1:128]
	adr	r1, LCPI0_262
	vld1.64	{d18, d19}, [r1:128]
	mov	r1, r3
	vst1.32	{d18, d19}, [r1]!
	vst1.64	{d18, d19}, [lr:128]    @ 16-byte Spill
	mov	lr, #576
	vst1.64	{d16, d17}, [r1]
	adr	r1, LCPI0_263
	vld1.64	{d10, d11}, [r1:128]
	add	r1, r4, #32
	vst1.64	{d10, d11}, [r1]
	str	lr, [r0, #96]
	str	lr, [r4, #48]
	add	lr, r6, #1552
	str	r8, [r0, #100]
	adr	r1, LCPI0_264
	vld1.64	{d16, d17}, [r1:128]
	mov	r1, r4
	vst1.32	{d10, d11}, [r1]!
	vst1.64	{d16, d17}, [r1]
	vst1.64	{d16, d17}, [lr:128]    @ 16-byte Spill
	str	r8, [r4, #52]
	sub	sp, sp, #20
	mov	r1, #7
	stm	sp, {r0, r12}
	mov	r0, #4
	str	r1, [sp, #8]
	mov	r1, #0
	str	r8, [sp, #12]
	str	r4, [sp, #16]
	bl	_nnc_aten_conv2d
	add	sp, sp, #20
	sub	r0, sp, #8
	bic	r2, r0, #7
	mov	sp, r2
	sub	r0, sp, #16
	bic	r3, r0, #15
	mov	sp, r3
	sub	r0, sp, #64
	bic	r0, r0, #7
	mov	sp, r0
	mov	r1, sp
	sub	r12, r1, #4
	mov	sp, r12
	sub	r4, sp, #16
	bic	lr, r4, #15
	mov	sp, lr
	strb	r11, [r1, #-4]
	add	r4, r0, #16
	add	r5, r6, #1584
	strb	r11, [r1, #-3]
	add	r1, r6, #1536
	vld1.64	{d16, d17}, [r5:128]    @ 16-byte Reload
	mov	r5, #48
	vld1.64	{d18, d19}, [r1:128]    @ 16-byte Reload
	add	r1, r6, #1568
	vst1.64	{d10, d11}, [r4]
	mov	r4, r0
	vst1.32	{d16, d17}, [r4], r5
	ldr	r5, [r6, #892]          @ 4-byte Reload
	vst1.64	{d18, d19}, [r3:128]
	vld1.64	{d18, d19}, [r1:128]    @ 16-byte Reload
	add	r1, r0, #32
	stm	r2, {r5, r10}
	vst1.64	{d18, d19}, [r4]
	vst1.64	{d16, d17}, [r1]
	vst1.64	{d10, d11}, [lr:128]
	sub	sp, sp, #20
	mov	r1, #2
	stm	sp, {r0, r12}
	mov	r0, #2
	str	r1, [sp, #8]
	mov	r1, #0
	mov	r10, #2
	str	r8, [sp, #12]
	str	lr, [sp, #16]
	bl	_nnc_aten_adaptive_avg_pool2d
	add	sp, sp, #20
	ldr	r4, [r6, #916]          @ 4-byte Reload
	mov	r1, r5
	mov	r2, #2304
	mov	r0, r4
	bl	_memcpy
	sub	r0, sp, #12
	bic	r2, r0, #7
	mov	sp, r2
	sub	r0, sp, #24
	bic	r3, r0, #15
	mov	sp, r3
	sub	r0, sp, #48
	bic	lr, r0, #7
	mov	sp, lr
	mov	r1, sp
	sub	r12, r1, #4
	mov	sp, r12
	ldr	r5, [r6, #1164]         @ 4-byte Reload
	add	r0, r6, #1568
	str	r5, [r2]
	strb	r11, [r1, #-4]
	str	r4, [r2, #4]
	adr	r4, LCPI0_265
	vld1.64	{d16, d17}, [r4:128]
	mov	r4, r3
	str	r8, [r6, #24]
	add	r8, r6, #1584
	vst1.64	{d16, d17}, [r0:128]    @ 16-byte Spill
	add	r0, r6, #1552
	vld1.64	{d10, d11}, [r0:128]    @ 16-byte Reload
	mov	r0, lr
	vst1.32	{d16, d17}, [r0]!
	vld1.64	{d16, d17}, [r8:128]    @ 16-byte Reload
	strb	r11, [r1, #-3]
	vst1.64	{d10, d11}, [r4:128]!
	ldr	r8, [r6, #24]
	vst1.64	{d16, d17}, [r0]
	ldr	r0, [r6, #1168]         @ 4-byte Reload
	str	r0, [r2, #12]
	ldr	r0, [r6, #1176]         @ 4-byte Reload
	str	r0, [r2, #8]
	strb	r11, [r1, #-2]
	str	r10, [r4]
	str	r8, [r4, #4]
	adr	r0, LCPI0_266
	vld1.64	{d16, d17}, [r0:128]
	add	r0, lr, #32
	vst1.64	{d16, d17}, [r0]
	sub	sp, sp, #20
	str	lr, [sp]
	add	lr, r6, #1024
	add	r0, lr, #824
	str	r0, [sp, #16]
	mov	r1, #0
	str	r12, [sp, #4]
	mov	r10, r0
	mov	r0, #3
	str	r8, [sp, #8]
	str	r8, [sp, #12]
	bl	_nnc_aten_matmul
	add	sp, sp, #20
	vld1.32	{d16, d17}, [r5]!
	mov	r3, #48
	ldr	r1, [r6, #924]          @ 4-byte Reload
	vclt.f32	q9, q8, #0
	vbic	q8, q8, q9
	vld1.32	{d26, d27}, [r5]
	add	r0, r1, #16
	vld1.32	{d18, d19}, [r0]
	add	r0, r1, #32
	vclt.f32	q14, q13, #0
	vld1.32	{d20, d21}, [r0]
	add	r0, r1, #64
	vbic	q13, q13, q14
	vld1.32	{d22, d23}, [r0]
	add	r0, r1, #80
	ldr	r5, [r6, #1172]         @ 4-byte Reload
	vld1.32	{d24, d25}, [r0]
	mov	r0, r1
	vld1.32	{d28, d29}, [r0], r3
	vld1.32	{d30, d31}, [r0]
	mov	r0, r5
	vst1.32	{d16, d17}, [r0]!
	vclt.f32	q8, q12, #0
	vbic	q8, q12, q8
	ldr	r2, [r6, #920]          @ 4-byte Reload
	vst1.32	{d26, d27}, [r0]
	add	r0, r2, #80
	vst1.32	{d16, d17}, [r0]
	vclt.f32	q8, q11, #0
	vbic	q8, q11, q8
	add	r0, r2, #64
	vst1.32	{d16, d17}, [r0]
	vclt.f32	q8, q10, #0
	vbic	q8, q10, q8
	add	r0, r2, #32
	vst1.32	{d16, d17}, [r0]
	vclt.f32	q8, q9, #0
	vbic	q8, q9, q8
	add	r0, r2, #16
	vst1.32	{d16, d17}, [r0]
	vclt.f32	q8, q14, #0
	vbic	q8, q14, q8
	mov	r0, r2
	vst1.32	{d16, d17}, [r0], r3
	vclt.f32	q8, q15, #0
	vbic	q8, q15, q8
	vst1.32	{d16, d17}, [r0]
	add	r0, r1, #96
	vld1.32	{d16, d17}, [r0]
	add	r0, r1, #208
	vld1.32	{d18, d19}, [r0]
	add	r0, r1, #192
	vld1.32	{d20, d21}, [r0]
	add	r0, r1, #176
	vld1.32	{d22, d23}, [r0]
	add	r0, r1, #160
	vld1.32	{d24, d25}, [r0]
	add	r0, r1, #112
	vld1.32	{d26, d27}, [r0]
	add	r0, r1, #144
	vclt.f32	q14, q13, #0
	vbic	q13, q13, q14
	vld1.32	{d28, d29}, [r0]
	add	r0, r1, #128
	vld1.32	{d30, d31}, [r0]
	add	r0, r2, #112
	vst1.32	{d26, d27}, [r0]
	vclt.f32	q13, q15, #0
	vbic	q13, q15, q13
	add	r0, r2, #128
	vst1.32	{d26, d27}, [r0]
	vclt.f32	q13, q14, #0
	vbic	q13, q14, q13
	add	r0, r2, #144
	vst1.32	{d26, d27}, [r0]
	vclt.f32	q13, q12, #0
	vbic	q12, q12, q13
	add	r0, r2, #160
	vst1.32	{d24, d25}, [r0]
	vclt.f32	q12, q11, #0
	vbic	q11, q11, q12
	add	r0, r2, #176
	b	LBB0_338
	.p2align	4
@ %bb.328:
	.data_region
LCPI0_258:
	.long	1                       @ 0x1
	.long	0                       @ 0x0
	.long	576                     @ 0x240
	.long	0                       @ 0x0
	.p2align	4
@ %bb.329:
LCPI0_259:
	.long	5                       @ 0x5
	.long	0                       @ 0x0
	.long	5                       @ 0x5
	.long	0                       @ 0x0
	.p2align	4
@ %bb.330:
LCPI0_260:
	.long	576                     @ 0x240
	.long	0                       @ 0x0
	.long	1                       @ 0x1
	.long	0                       @ 0x0
	.p2align	4
@ %bb.331:
LCPI0_261:
	.long	4                       @ 0x4
	.long	0                       @ 0x0
	.long	1                       @ 0x1
	.long	0                       @ 0x0
	.p2align	4
@ %bb.332:
LCPI0_262:
	.long	4                       @ 0x4
	.long	0                       @ 0x0
	.long	4                       @ 0x4
	.long	0                       @ 0x0
	.p2align	4
@ %bb.333:
LCPI0_263:
	.long	1                       @ 0x1
	.long	0                       @ 0x0
	.long	1                       @ 0x1
	.long	0                       @ 0x0
	.p2align	4
@ %bb.334:
LCPI0_264:
	.long	2                       @ 0x2
	.long	0                       @ 0x0
	.long	2                       @ 0x2
	.long	0                       @ 0x0
	.p2align	4
@ %bb.335:
LCPI0_265:
	.long	1                       @ 0x1
	.long	0                       @ 0x0
	.long	144                     @ 0x90
	.long	0                       @ 0x0
	.p2align	4
@ %bb.336:
LCPI0_266:
	.long	576                     @ 0x240
	.long	0                       @ 0x0
	.long	144                     @ 0x90
	.long	0                       @ 0x0
	.p2align	4
@ %bb.337:
LCPI0_267:
	.long	144                     @ 0x90
	.long	0                       @ 0x0
	.long	576                     @ 0x240
	.long	0                       @ 0x0
	.p2align	2
LBB0_338:                               @ %exit294.i
	.end_data_region
	vst1.32	{d22, d23}, [r0]
	vclt.f32	q11, q10, #0
	vbic	q10, q10, q11
	add	r0, r2, #192
	vst1.32	{d20, d21}, [r0]
	vclt.f32	q10, q9, #0
	vbic	q9, q9, q10
	add	r0, r2, #208
	vst1.32	{d18, d19}, [r0]
	vclt.f32	q9, q8, #0
	vbic	q8, q8, q9
	add	r0, r2, #96
	vst1.32	{d16, d17}, [r0]
	add	r0, r1, #224
	vld1.32	{d16, d17}, [r0]
	add	r0, r1, #336
	vld1.32	{d18, d19}, [r0]
	add	r0, r1, #320
	vld1.32	{d20, d21}, [r0]
	add	r0, r1, #304
	vld1.32	{d22, d23}, [r0]
	add	r0, r1, #288
	vld1.32	{d24, d25}, [r0]
	add	r0, r1, #240
	vld1.32	{d26, d27}, [r0]
	add	r0, r1, #272
	vclt.f32	q14, q13, #0
	vbic	q13, q13, q14
	vld1.32	{d28, d29}, [r0]
	add	r0, r1, #256
	vld1.32	{d30, d31}, [r0]
	add	r0, r2, #240
	vst1.32	{d26, d27}, [r0]
	vclt.f32	q13, q15, #0
	vbic	q13, q15, q13
	add	r0, r2, #256
	vst1.32	{d26, d27}, [r0]
	vclt.f32	q13, q14, #0
	vbic	q13, q14, q13
	add	r0, r2, #272
	vst1.32	{d26, d27}, [r0]
	vclt.f32	q13, q12, #0
	vbic	q12, q12, q13
	add	r0, r2, #288
	vst1.32	{d24, d25}, [r0]
	vclt.f32	q12, q11, #0
	vbic	q11, q11, q12
	add	r0, r2, #304
	vst1.32	{d22, d23}, [r0]
	vclt.f32	q11, q10, #0
	vbic	q10, q10, q11
	add	r0, r2, #320
	vst1.32	{d20, d21}, [r0]
	vclt.f32	q10, q9, #0
	vbic	q9, q9, q10
	add	r0, r2, #336
	vst1.32	{d18, d19}, [r0]
	vclt.f32	q9, q8, #0
	vbic	q8, q8, q9
	add	r0, r2, #224
	vst1.32	{d16, d17}, [r0]
	add	r0, r1, #352
	vld1.32	{d16, d17}, [r0]
	add	r0, r1, #464
	vld1.32	{d18, d19}, [r0]
	add	r0, r1, #448
	vld1.32	{d20, d21}, [r0]
	add	r0, r1, #432
	vld1.32	{d22, d23}, [r0]
	add	r0, r1, #416
	vld1.32	{d24, d25}, [r0]
	add	r0, r1, #368
	vld1.32	{d26, d27}, [r0]
	add	r0, r1, #400
	vclt.f32	q14, q13, #0
	vbic	q13, q13, q14
	vld1.32	{d28, d29}, [r0]
	add	r0, r1, #384
	vld1.32	{d30, d31}, [r0]
	add	r0, r2, #368
	vst1.32	{d26, d27}, [r0]
	vclt.f32	q13, q15, #0
	vbic	q13, q15, q13
	add	r0, r2, #384
	vst1.32	{d26, d27}, [r0]
	vclt.f32	q13, q14, #0
	vbic	q13, q14, q13
	add	r0, r2, #400
	vst1.32	{d26, d27}, [r0]
	vclt.f32	q13, q12, #0
	vbic	q12, q12, q13
	add	r0, r2, #416
	vst1.32	{d24, d25}, [r0]
	vclt.f32	q12, q11, #0
	vbic	q11, q11, q12
	add	r0, r2, #432
	vst1.32	{d22, d23}, [r0]
	vclt.f32	q11, q10, #0
	vbic	q10, q10, q11
	add	r0, r2, #448
	vst1.32	{d20, d21}, [r0]
	vclt.f32	q10, q9, #0
	vbic	q9, q9, q10
	add	r0, r2, #464
	vst1.32	{d18, d19}, [r0]
	vclt.f32	q9, q8, #0
	vbic	q8, q8, q9
	add	r0, r2, #352
	vst1.32	{d16, d17}, [r0]
	add	r0, r1, #480
	vld1.32	{d16, d17}, [r0]
	add	r0, r1, #496
	vld1.32	{d18, d19}, [r0]
	add	r0, r2, #496
	vclt.f32	q10, q9, #0
	vbic	q9, q9, q10
	vst1.32	{d18, d19}, [r0]
	vclt.f32	q9, q8, #0
	vbic	q8, q8, q9
	add	r0, r2, #480
	vst1.32	{d16, d17}, [r0]
	add	r0, r1, #512
	vld1.32	{d16, d17}, [r0]
	add	r0, r1, #528
	vld1.32	{d18, d19}, [r0]
	add	r0, r2, #528
	vclt.f32	q10, q9, #0
	vbic	q9, q9, q10
	vst1.32	{d18, d19}, [r0]
	vclt.f32	q9, q8, #0
	vbic	q8, q8, q9
	add	r0, r2, #512
	vst1.32	{d16, d17}, [r0]
	sub	r0, sp, #12
	bic	r2, r0, #7
	mov	sp, r2
	sub	r0, sp, #24
	bic	r3, r0, #15
	mov	sp, r3
	sub	r0, sp, #48
	bic	lr, r0, #7
	mov	sp, lr
	mov	r1, sp
	sub	r12, r1, #4
	mov	sp, r12
	mov	r4, r3
	strb	r11, [r1, #-4]
	strb	r11, [r1, #-3]
	mov	r0, lr
	vst1.64	{d10, d11}, [r4:128]!
	str	r5, [r6, #24]
	add	r5, r6, #1584
	vld1.64	{d16, d17}, [r5:128]    @ 16-byte Reload
	add	r5, r6, #1568
	vst1.32	{d16, d17}, [r0]!
	vld1.64	{d16, d17}, [r5:128]    @ 16-byte Reload
	ldr	r5, [r6, #24]
	vst1.64	{d16, d17}, [r0]
	ldr	r0, [r6, #1304]         @ 4-byte Reload
	strb	r11, [r1, #-2]
	stm	r2, {r0, r5}
	ldr	r0, [r6, #1192]         @ 4-byte Reload
	str	r0, [r2, #8]
	ldr	r0, [r6, #1176]         @ 4-byte Reload
	str	r0, [r2, #12]
	mov	r0, #2
	stm	r4, {r0, r8}
	adr	r0, LCPI0_267
	vld1.64	{d16, d17}, [r0:128]
	add	r0, lr, #32
	vst1.64	{d16, d17}, [r0]
	sub	sp, sp, #20
	mov	r0, #3
	mov	r1, #0
	str	lr, [sp]
	str	r12, [sp, #4]
	str	r8, [sp, #8]
	str	r8, [sp, #12]
	str	r10, [sp, #16]
	bl	_nnc_aten_matmul
	add	sp, sp, #20
	vmov.f32	q8, #3.000000e+00
	ldr	r11, [r6, #992]         @ 4-byte Reload
	vmov.f32	q9, #6.000000e+00
	ldr	r10, [r6, #1184]        @ 4-byte Reload
	ldr	r1, [r6, #1460]         @ 4-byte Reload
	mov	r12, #49
	mov	lr, #0
LBB0_339:                               @ %cond310.preheader.i
                                        @ =>This Loop Header: Depth=1
                                        @     Child Loop BB0_340 Depth 2
	ldr	r0, [r6, #1304]         @ 4-byte Reload
	mov	r3, #0
	mov	r4, #0
	add	r0, r0, r8, lsl #2
	vldr	s0, [r0]
	umull	r2, r0, r8, r12
	vadd.f32	s2, s0, s28
	vcmpe.f32	s2, #0
	vmrs	APSR_nzcv, fpscr
	vdiv.f32	s0, s2, s16
	vmax.f32	d1, d1, d12
	vmovmi.f32	s0, s24
	vcmpe.f32	s2, s16
	vmrs	APSR_nzcv, fpscr
	vmovgt.f32	s0, s30
	vdup.32	q10, d0[0]
LBB0_340:                               @ %cond313.preheader.i
                                        @   Parent Loop BB0_339 Depth=1
                                        @ =>  This Inner Loop Header: Depth=2
	rsb	r0, r3, r3, lsl #3
	ldr	r5, [r6, #1484]         @ 4-byte Reload
	add	r0, r0, r2
	adds	r3, r3, #1
	adc	r4, r4, #0
	add	r5, r5, r0, lsl #2
	vld1.32	{d22, d23}, [r5]
	add	r5, r1, r0, lsl #2
	vmul.f32	q11, q10, q11
	ldr	r1, [r6, #1484]         @ 4-byte Reload
	vadd.f32	q12, q11, q8
	vclt.f32	q13, q12, #0
	vbic	q12, q12, q13
	vmin.f32	q12, q12, q9
	vmul.f32	q1, q11, q12
	vdiv.f32	s11, s7, s16
	vdiv.f32	s10, s6, s16
	vdiv.f32	s9, s5, s16
	vdiv.f32	s8, s4, s16
	vst1.32	{d4, d5}, [r5]
	add	r5, r0, #4
	add	r1, r1, r5, lsl #2
	vldr	s2, [r1]
	ldr	r1, [r6, #1460]         @ 4-byte Reload
	vmul.f32	s2, s0, s2
	add	r1, r1, r5, lsl #2
	ldr	r5, [r6, #1484]         @ 4-byte Reload
	vadd.f32	s4, s2, s28
	vmax.f32	d22, d2, d12
	vmin.f32	d2, d22, d8
	vmul.f32	s2, s2, s4
	vdiv.f32	s2, s2, s16
	vstr	s2, [r1]
	add	r1, r0, #5
	add	r0, r0, #6
	add	r5, r5, r1, lsl #2
	vldr	s2, [r5]
	ldr	r5, [r6, #1460]         @ 4-byte Reload
	vmul.f32	s2, s0, s2
	add	r1, r5, r1, lsl #2
	vadd.f32	s4, s2, s28
	vmax.f32	d22, d2, d12
	vmin.f32	d2, d22, d8
	vmul.f32	s2, s2, s4
	vdiv.f32	s2, s2, s16
	vstr	s2, [r1]
	ldr	r1, [r6, #1484]         @ 4-byte Reload
	add	r1, r1, r0, lsl #2
	vldr	s2, [r1]
	ldr	r1, [r6, #1460]         @ 4-byte Reload
	vmul.f32	s2, s0, s2
	add	r0, r1, r0, lsl #2
	vadd.f32	s4, s2, s28
	vmax.f32	d22, d2, d12
	vmin.f32	d2, d22, d8
	vmul.f32	s2, s2, s4
	vdiv.f32	s2, s2, s16
	vstr	s2, [r0]
	eor	r0, r3, #7
	orrs	r0, r0, r4
	bne	LBB0_340
@ %bb.341:                              @ %exit312.i
                                        @   in Loop: Header=BB0_339 Depth=1
	adds	r8, r8, #1
	adc	lr, lr, #0
	eor	r0, r8, #576
	orrs	r0, r0, lr
	bne	LBB0_339
@ %bb.342:                              @ %exit309.i
	adr	r0, LCPI0_268
	vld1.64	{d16, d17}, [r0:128]
	sub	r0, sp, #16
	bic	r2, r0, #7
	mov	sp, r2
	sub	r0, sp, #32
	bic	r12, r0, #31
	mov	sp, r12
	sub	r0, sp, #104
	bic	r5, r0, #7
	mov	sp, r5
	mov	r4, sp
	sub	r0, r4, #4
	str	r0, [r6, #1584]         @ 4-byte Spill
	mov	sp, r0
	mov	r3, r1
	sub	r1, sp, #56
	bic	r8, r1, #15
	mov	sp, r8
	add	r1, r5, #16
	ldr	r0, [r6, #1180]         @ 4-byte Reload
	mov	lr, #6
	str	r0, [r2]
	strb	lr, [r4, #-4]
	mov	r0, r5
	vst1.64	{d16, d17}, [r1]
	adr	r1, LCPI0_269
	vmov.i32	q11, #0x0
	vld1.64	{d18, d19}, [r1:128]
	mov	r1, #48
	vst1.32	{d18, d19}, [r0], r1
	add	r1, r6, #928
	str	r3, [r2, #4]
	strb	lr, [r4, #-3]
	vst1.64	{d16, d17}, [r0]
	adr	r0, LCPI0_270
	vld1.64	{d16, d17}, [r0:128]
	add	r0, r5, #32
	vst1.64	{d16, d17}, [r0]
	adr	r0, LCPI0_271
	vld1.64	{d16, d17}, [r0:128]
	add	r0, r5, #80
	strb	lr, [r4, #-2]
	vst1.64	{d16, d17}, [r0]
	adr	r0, LCPI0_272
	vld1.64	{d18, d19}, [r0:128]
	add	r0, r5, #64
	vst1.64	{d18, d19}, [r0]
	add	r0, r2, #8
	vld1.64	{d18, d19}, [r1:128]    @ 16-byte Reload
	vst1.64	{d18, d19}, [r0]
	adr	r0, LCPI0_273
	vld1.64	{d18, d19}, [r0:128]
	adr	r0, LCPI0_274
	vld1.64	{d20, d21}, [r0:128]
	mov	r0, r12
	vst1.32	{d20, d21}, [r0]!
	vst1.64	{d18, d19}, [r0]
	mov	r0, #96
	str	r0, [r5, #96]
	add	r0, r8, #32
	strb	lr, [r4, #-1]
	mov	r4, #0
	vst1.64	{d16, d17}, [r0:128]
	mov	r0, #1
	str	r0, [r8, #48]
	mov	r0, r8
	str	r4, [r8, #52]
	vst1.64	{d16, d17}, [r0:128]!
	str	r4, [r5, #100]
	vst1.64	{d22, d23}, [r0:128]
	sub	sp, sp, #20
	ldr	r1, [r6, #1584]         @ 4-byte Reload
	mov	r0, #7
	str	r1, [sp, #4]
	add	r1, sp, #8
	str	r5, [sp]
	mov	r3, r12
	stm	r1, {r0, r4, r8}
	mov	r0, #4
	mov	r1, #0
	ldr	r8, [r6, #1180]         @ 4-byte Reload
	bl	_nnc_aten_conv2d
	add	sp, sp, #20
	ldr	lr, [r6, #956]          @ 4-byte Reload
	mov	r12, #196
	mov	r1, #0
	b	LBB0_351
	.p2align	4
@ %bb.343:
	.data_region
LCPI0_268:
	.long	7                       @ 0x7
	.long	0                       @ 0x0
	.long	7                       @ 0x7
	.long	0                       @ 0x0
	.p2align	4
@ %bb.344:
LCPI0_269:
	.long	1                       @ 0x1
	.long	0                       @ 0x0
	.long	96                      @ 0x60
	.long	0                       @ 0x0
	.p2align	4
@ %bb.345:
LCPI0_270:
	.long	1                       @ 0x1
	.long	0                       @ 0x0
	.long	576                     @ 0x240
	.long	0                       @ 0x0
	.p2align	4
@ %bb.346:
LCPI0_271:
	.long	1                       @ 0x1
	.long	0                       @ 0x0
	.long	1                       @ 0x1
	.long	0                       @ 0x0
	.p2align	4
@ %bb.347:
LCPI0_272:
	.long	96                      @ 0x60
	.long	0                       @ 0x0
	.long	576                     @ 0x240
	.long	0                       @ 0x0
	.p2align	4
@ %bb.348:
LCPI0_273:
	.long	4                       @ 0x4
	.long	0                       @ 0x0
	.long	1                       @ 0x1
	.long	0                       @ 0x0
	.p2align	4
@ %bb.349:
LCPI0_274:
	.long	4                       @ 0x4
	.long	0                       @ 0x0
	.long	4                       @ 0x4
	.long	0                       @ 0x0
	.p2align	4
@ %bb.350:
LCPI0_275:
	.long	576                     @ 0x240
	.long	0                       @ 0x0
	.long	96                      @ 0x60
	.long	0                       @ 0x0
	.p2align	2
LBB0_351:                               @ %cond319.preheader.i
                                        @ =>This Inner Loop Header: Depth=1
	.end_data_region
	mla	r2, r4, r12, r8
	mla	r3, r4, r12, r10
	mla	r5, r4, r12, lr
	vld1.32	{d16, d17}, [r2]!
	vld1.32	{d18, d19}, [r3]!
	vadd.f32	q8, q9, q8
	vld1.32	{d20, d21}, [r2]
	mul	r2, r4, r12
	adds	r4, r4, #1
	vld1.32	{d18, d19}, [r3]
	adc	r1, r1, #0
	vadd.f32	q9, q9, q10
	vst1.32	{d16, d17}, [r5]!
	add	r3, r2, #32
	add	r0, r10, r3
	vst1.32	{d18, d19}, [r5]
	add	r5, r8, r3
	vld1.32	{d18, d19}, [r0]!
	vld1.32	{d16, d17}, [r5]!
	vadd.f32	q8, q9, q8
	vld1.32	{d20, d21}, [r0]
	add	r0, lr, r3
	vld1.32	{d18, d19}, [r5]
	vadd.f32	q9, q10, q9
	vst1.32	{d16, d17}, [r0]!
	vst1.32	{d18, d19}, [r0]
	add	r0, r2, #64
	add	r3, r8, r0
	add	r5, r10, r0
	vld1.32	{d18, d19}, [r5]!
	add	r0, lr, r0
	vld1.32	{d16, d17}, [r3]!
	vadd.f32	q8, q9, q8
	vld1.32	{d18, d19}, [r3]
	vld1.32	{d20, d21}, [r5]
	vadd.f32	q9, q10, q9
	vst1.32	{d16, d17}, [r0]!
	vst1.32	{d18, d19}, [r0]
	add	r0, r2, #96
	add	r3, r8, r0
	add	r5, r10, r0
	vld1.32	{d18, d19}, [r5]!
	add	r0, lr, r0
	vld1.32	{d16, d17}, [r3]!
	vadd.f32	q8, q9, q8
	vld1.32	{d18, d19}, [r3]
	vld1.32	{d20, d21}, [r5]
	vadd.f32	q9, q10, q9
	vst1.32	{d16, d17}, [r0]!
	vst1.32	{d18, d19}, [r0]
	add	r0, r2, #128
	add	r3, r8, r0
	add	r5, r10, r0
	vld1.32	{d18, d19}, [r5]!
	add	r0, lr, r0
	vld1.32	{d16, d17}, [r3]!
	vadd.f32	q8, q9, q8
	vld1.32	{d18, d19}, [r3]
	vld1.32	{d20, d21}, [r5]
	vadd.f32	q9, q10, q9
	vst1.32	{d16, d17}, [r0]!
	vst1.32	{d18, d19}, [r0]
	add	r0, r2, #160
	add	r3, r8, r0
	add	r5, r10, r0
	vld1.32	{d18, d19}, [r5]!
	add	r0, lr, r0
	vld1.32	{d16, d17}, [r3]!
	vadd.f32	q8, q9, q8
	vld1.32	{d18, d19}, [r3]
	vld1.32	{d20, d21}, [r5]
	vadd.f32	q9, q10, q9
	vst1.32	{d16, d17}, [r0]!
	vst1.32	{d18, d19}, [r0]
	add	r0, r2, #192
	add	r2, r8, r0
	vldr	s0, [r2]
	add	r2, r10, r0
	add	r0, lr, r0
	vldr	s2, [r2]
	vadd.f32	s0, s2, s0
	vstr	s0, [r0]
	eor	r0, r4, #96
	orrs	r0, r0, r1
	bne	LBB0_351
@ %bb.352:                              @ %exit318.i
	adr	r0, LCPI0_268
	vld1.64	{d16, d17}, [r0:128]
	sub	r0, sp, #16
	bic	r2, r0, #7
	mov	sp, r2
	sub	r0, sp, #32
	bic	r3, r0, #31
	mov	sp, r3
	sub	r0, sp, #104
	bic	r5, r0, #7
	mov	sp, r5
	mov	r4, sp
	sub	r12, r4, #4
	mov	sp, r12
	sub	r1, sp, #56
	bic	r8, r1, #15
	mov	sp, r8
	add	r1, r5, #16
	mov	r10, lr
	mov	lr, #6
	str	r11, [r2]
	strb	lr, [r4, #-4]
	mov	r0, r5
	vst1.64	{d16, d17}, [r1]
	adr	r1, LCPI0_270
	vmov.i32	q11, #0x0
	vld1.64	{d18, d19}, [r1:128]
	mov	r1, #48
	vst1.32	{d18, d19}, [r0], r1
	add	r1, r6, #960
	str	r10, [r2, #4]
	mov	r10, #0
	strb	lr, [r4, #-3]
	vst1.64	{d16, d17}, [r0]
	adr	r0, LCPI0_269
	vld1.64	{d16, d17}, [r0:128]
	add	r0, r5, #32
	vst1.64	{d16, d17}, [r0]
	adr	r0, LCPI0_271
	vld1.64	{d16, d17}, [r0:128]
	add	r0, r5, #80
	strb	lr, [r4, #-2]
	vst1.64	{d16, d17}, [r0]
	adr	r0, LCPI0_275
	vld1.64	{d18, d19}, [r0:128]
	add	r0, r5, #64
	vst1.64	{d18, d19}, [r0]
	add	r0, r2, #8
	vld1.64	{d18, d19}, [r1:128]    @ 16-byte Reload
	vst1.64	{d18, d19}, [r0]
	adr	r0, LCPI0_273
	vld1.64	{d18, d19}, [r0:128]
	adr	r0, LCPI0_274
	vld1.64	{d20, d21}, [r0:128]
	mov	r0, r3
	vst1.32	{d20, d21}, [r0]!
	vst1.64	{d18, d19}, [r0]
	mov	r0, #576
	str	r0, [r5, #96]
	add	r0, r8, #32
	strb	lr, [r4, #-1]
	vst1.64	{d16, d17}, [r0:128]
	mov	r0, #1
	str	r0, [r8, #48]
	mov	r0, r8
	str	r10, [r8, #52]
	vst1.64	{d16, d17}, [r0:128]!
	str	r10, [r5, #100]
	vst1.64	{d22, d23}, [r0:128]
	sub	sp, sp, #20
	mov	r0, #7
	stm	sp, {r5, r12}
	mov	r1, #0
	str	r0, [sp, #8]
	mov	r0, #4
	str	r10, [sp, #12]
	str	r8, [sp, #16]
	bl	_nnc_aten_conv2d
	add	sp, sp, #20
	vmov.f32	q8, #3.000000e+00
	ldr	r8, [r6, #988]          @ 4-byte Reload
	vmov.f32	q9, #6.000000e+00
	mov	r12, #49
	mov	lr, #0
LBB0_353:                               @ %cond328.preheader.i
                                        @ =>This Loop Header: Depth=1
                                        @     Child Loop BB0_354 Depth 2
	umull	r2, r0, r10, r12
	mov	r3, #0
	mov	r5, #0
LBB0_354:                               @ %cond331.preheader.i
                                        @   Parent Loop BB0_353 Depth=1
                                        @ =>  This Inner Loop Header: Depth=2
	rsb	r0, r3, r3, lsl #3
	adds	r3, r3, #1
	add	r0, r0, r2
	adc	r5, r5, #0
	add	r4, r11, r0, lsl #2
	vld1.32	{d20, d21}, [r4]
	add	r4, r8, r0, lsl #2
	vadd.f32	q11, q10, q8
	vclt.f32	q12, q11, #0
	vbic	q11, q11, q12
	vmin.f32	q11, q11, q9
	vmul.f32	q0, q10, q11
	vdiv.f32	s7, s3, s16
	vdiv.f32	s6, s2, s16
	vdiv.f32	s5, s1, s16
	vdiv.f32	s4, s0, s16
	vst1.32	{d2, d3}, [r4]
	add	r4, r0, #4
	add	r1, r11, r4, lsl #2
	vldr	s0, [r1]
	add	r1, r8, r4, lsl #2
	vadd.f32	s2, s0, s28
	vmax.f32	d20, d1, d12
	vmin.f32	d1, d20, d8
	vmul.f32	s0, s0, s2
	vdiv.f32	s0, s0, s16
	vstr	s0, [r1]
	add	r1, r0, #5
	add	r0, r0, #6
	add	r4, r11, r1, lsl #2
	add	r1, r8, r1, lsl #2
	vldr	s0, [r4]
	vadd.f32	s2, s0, s28
	vmax.f32	d20, d1, d12
	vmin.f32	d1, d20, d8
	vmul.f32	s0, s0, s2
	vdiv.f32	s0, s0, s16
	vstr	s0, [r1]
	add	r1, r11, r0, lsl #2
	add	r0, r8, r0, lsl #2
	vldr	s0, [r1]
	vadd.f32	s2, s0, s28
	vmax.f32	d20, d1, d12
	vmin.f32	d1, d20, d8
	vmul.f32	s0, s0, s2
	vdiv.f32	s0, s0, s16
	vstr	s0, [r0]
	eor	r0, r3, #7
	orrs	r0, r0, r5
	bne	LBB0_354
@ %bb.355:                              @ %exit330.i
                                        @   in Loop: Header=BB0_353 Depth=1
	adds	r10, r10, #1
	adc	lr, lr, #0
	eor	r0, r10, #576
	orrs	r0, r0, lr
	bne	LBB0_353
@ %bb.356:                              @ %exit327.i
	adr	r0, LCPI0_271
	vld1.64	{d10, d11}, [r0:128]
	sub	r0, sp, #8
	bic	r2, r0, #7
	mov	sp, r2
	sub	r0, sp, #16
	bic	r3, r0, #15
	mov	sp, r3
	sub	r0, sp, #64
	bic	r0, r0, #7
	mov	sp, r0
	mov	r4, sp
	sub	r12, r4, #4
	mov	sp, r12
	sub	r5, sp, #16
	bic	r5, r5, #15
	mov	sp, r5
	ldr	r1, [r6, #996]          @ 4-byte Reload
	mov	lr, #6
	str	r1, [r2]
	mov	r11, #48
	strb	lr, [r4, #-4]
	mov	r10, r1
	ldr	r1, [r6, #1212]         @ 4-byte Reload
	str	r1, [r2, #4]
	add	r1, r0, #16
	vst1.64	{d10, d11}, [r1]
	adr	r1, LCPI0_276
	vld1.64	{d14, d15}, [r1:128]
	mov	r1, r0
	vst1.32	{d14, d15}, [r1], r11
	str	r8, [r2, #4]
	strb	lr, [r4, #-3]
	adr	r4, LCPI0_277
	vld1.64	{d16, d17}, [r4:128]
	adr	r4, LCPI0_278
	vld1.64	{d12, d13}, [r4:128]
	vst1.64	{d16, d17}, [r1]
	add	r1, r0, #32
	vst1.64	{d12, d13}, [r3:128]
	vst1.64	{d14, d15}, [r1]
	vst1.64	{d10, d11}, [r5:128]
	sub	sp, sp, #20
	stm	sp, {r0, r12}
	mov	r1, #2
	add	r0, sp, #8
	mov	r4, #0
	stm	r0, {r1, r4, r5}
	mov	r0, #2
	mov	r1, #0
	bl	_nnc_aten_adaptive_avg_pool2d
	add	sp, sp, #20
	sub	r0, sp, #16
	bic	r2, r0, #7
	mov	sp, r2
	sub	r0, sp, #32
	bic	r12, r0, #31
	mov	sp, r12
	sub	r0, sp, #104
	bic	r0, r0, #7
	mov	sp, r0
	mov	r11, sp
	sub	r8, r11, #4
	mov	sp, r8
	sub	r5, sp, #56
	bic	lr, r5, #15
	mov	sp, lr
	add	r5, r0, #16
	ldr	r1, [r6, #1188]         @ 4-byte Reload
	mov	r3, #6
	str	r1, [r2]
	strb	r3, [r11, #-4]
	mov	r1, #48
	vst1.64	{d10, d11}, [r5]
	adr	r5, LCPI0_279
	vmov.i32	q9, #0x0
	vld1.64	{d16, d17}, [r5:128]
	mov	r5, r0
	vst1.32	{d16, d17}, [r5], r1
	mov	r1, r2
	vst1.64	{d10, d11}, [r5]
	add	r5, r0, #32
	vst1.64	{d14, d15}, [r5]
	add	r5, r0, #80
	str	r10, [r2, #4]
	ldr	r10, [r6, #1212]        @ 4-byte Reload
	strb	r3, [r11, #-3]
	strb	r3, [r11, #-2]
	mov	r3, #6
	str	r10, [r1, #8]!
	vst1.64	{d10, d11}, [r5]
	adr	r5, LCPI0_280
	vld1.64	{d16, d17}, [r5:128]
	add	r5, r0, #64
	vst1.64	{d16, d17}, [r5]
	add	r5, r6, #1000
	vldmia	r5, {d1, d2, d3}        @ 24-byte Reload
	vst1.64	{d2, d3}, [r1]
	adr	r1, LCPI0_281
	vld1.64	{d16, d17}, [r1:128]
	mov	r1, r12
	vst1.32	{d12, d13}, [r1]!
	vst1.64	{d16, d17}, [r1]
	mov	r1, #1280
	str	r1, [r0, #96]
	add	r1, lr, #32
	strb	r3, [r11, #-1]
	vst1.64	{d10, d11}, [r1:128]
	mov	r1, #1
	str	r1, [lr, #48]
	mov	r1, lr
	str	r4, [lr, #52]
	vst1.64	{d10, d11}, [r1:128]!
	str	r4, [r0, #100]
	vst1.64	{d18, d19}, [r1:128]
	sub	sp, sp, #20
	stm	sp, {r0, r8}
	mov	r1, #7
	add	r0, sp, #8
	stm	r0, {r1, r4, lr}
	mov	r0, #4
	mov	r1, #0
	mov	r3, r12
	bl	_nnc_aten_conv2d
	ldr	r3, [r6, #1188]         @ 4-byte Reload
	add	sp, sp, #20
	vmov.f32	q8, #3.000000e+00
	ldr	lr, [r6, #1028]         @ 4-byte Reload
	vmov.f32	q9, #6.000000e+00
	mov	r0, #0
	b	LBB0_363
	.p2align	4
@ %bb.357:
	.data_region
LCPI0_276:
	.long	1                       @ 0x1
	.long	0                       @ 0x0
	.long	576                     @ 0x240
	.long	0                       @ 0x0
	.p2align	4
@ %bb.358:
LCPI0_277:
	.long	7                       @ 0x7
	.long	0                       @ 0x0
	.long	7                       @ 0x7
	.long	0                       @ 0x0
	.p2align	4
@ %bb.359:
LCPI0_278:
	.long	4                       @ 0x4
	.long	0                       @ 0x0
	.long	4                       @ 0x4
	.long	0                       @ 0x0
	.p2align	4
@ %bb.360:
LCPI0_279:
	.long	1                       @ 0x1
	.long	0                       @ 0x0
	.long	1280                    @ 0x500
	.long	0                       @ 0x0
	.p2align	4
@ %bb.361:
LCPI0_280:
	.long	1280                    @ 0x500
	.long	0                       @ 0x0
	.long	576                     @ 0x240
	.long	0                       @ 0x0
	.p2align	4
@ %bb.362:
LCPI0_281:
	.long	4                       @ 0x4
	.long	0                       @ 0x0
	.long	1                       @ 0x1
	.long	0                       @ 0x0
	.p2align	2
LBB0_363:                               @ %vector.body1150.i
                                        @ =>This Inner Loop Header: Depth=1
	.end_data_region
	add	r1, r3, r4, lsl #2
	vld1.32	{d20, d21}, [r1]!
	vadd.f32	q11, q10, q8
	vld1.32	{d24, d25}, [r1]
	add	r1, lr, r4, lsl #2
	vadd.f32	q13, q12, q8
	vclt.f32	q14, q11, #0
	vbic	q11, q11, q14
	vclt.f32	q14, q13, #0
	vmin.f32	q11, q11, q9
	vbic	q13, q13, q14
	vmin.f32	q13, q13, q9
	vmul.f32	q2, q10, q11
	vmul.f32	q1, q12, q13
	vdiv.f32	s3, s11, s16
	vdiv.f32	s2, s10, s16
	vdiv.f32	s1, s9, s16
	vdiv.f32	s0, s8, s16
	vdiv.f32	s11, s7, s16
	vdiv.f32	s10, s6, s16
	vdiv.f32	s9, s5, s16
	vdiv.f32	s8, s4, s16
	vst1.32	{d0, d1}, [r1]!
	vst1.32	{d4, d5}, [r1]
	orr	r1, r4, #8
	adds	r4, r4, #16
	add	r2, r3, r1, lsl #2
	add	r1, lr, r1, lsl #2
	vld1.32	{d20, d21}, [r2]!
	adc	r0, r0, #0
	vadd.f32	q11, q10, q8
	vld1.32	{d24, d25}, [r2]
	vadd.f32	q13, q12, q8
	vclt.f32	q14, q11, #0
	vbic	q11, q11, q14
	vclt.f32	q14, q13, #0
	vmin.f32	q11, q11, q9
	vbic	q13, q13, q14
	vmin.f32	q13, q13, q9
	vmul.f32	q2, q10, q11
	vmul.f32	q1, q12, q13
	vdiv.f32	s3, s11, s16
	vdiv.f32	s2, s10, s16
	vdiv.f32	s1, s9, s16
	vdiv.f32	s0, s8, s16
	vdiv.f32	s11, s7, s16
	vdiv.f32	s10, s6, s16
	vdiv.f32	s9, s5, s16
	vdiv.f32	s8, s4, s16
	vst1.32	{d0, d1}, [r1]!
	vst1.32	{d4, d5}, [r1]
	eor	r1, r4, #1280
	orrs	r1, r1, r0
	bne	LBB0_363
@ %bb.364:                              @ %pytorch.exit
	sub	r0, sp, #8
	bic	r2, r0, #7
	mov	sp, r2
	sub	r0, sp, #16
	bic	r3, r0, #15
	mov	sp, r3
	sub	r0, sp, #56
	bic	r1, r0, #7
	mov	sp, r1
	mov	r4, sp
	sub	r12, r4, #4
	mov	sp, r12
	sub	r5, sp, #8
	bic	r5, r5, #7
	mov	sp, r5
	ldr	r10, [r6, #1032]        @ 4-byte Reload
	mov	r0, #6
	ldr	r11, [r6, #1048]        @ 4-byte Reload
	strb	r0, [r4, #-4]
	strb	r0, [r4, #-3]
	mov	r0, r1
	str	r10, [r2]
	str	r11, [r2, #4]
	str	lr, [r2, #4]
	adr	r4, LCPI0_68
	vld1.64	{d16, d17}, [r4:128]
	adr	r4, LCPI0_69
	mov	lr, #1
	vld1.64	{d18, d19}, [r4:128]
	add	r4, r1, #32
	vst1.64	{d18, d19}, [r3:128]
	vst1.64	{d16, d17}, [r4]
	adr	r4, LCPI0_8
	vld1.64	{d8, d9}, [r4:128]
	add	r4, r1, #16
	vst1.64	{d8, d9}, [r4]
	adr	r4, LCPI0_66
	vld1.64	{d10, d11}, [r4:128]
	mov	r4, #52
	vst1.32	{d10, d11}, [r0], r4
	mov	r4, #0
	str	r4, [r0]
	mov	r0, #3
	str	lr, [r1, #48]
	stm	r5, {r0, r4}
	sub	sp, sp, #20
	stm	sp, {r1, r12, lr}
	mov	r0, #2
	mov	r1, #0
	str	r4, [sp, #12]
	str	r5, [sp, #16]
	bl	_nnc_aten_mean
	add	sp, sp, #20
	sub	r0, sp, #8
	bic	r2, r0, #7
	mov	sp, r2
	sub	r0, sp, #16
	bic	r3, r0, #15
	mov	sp, r3
	sub	r0, sp, #40
	bic	r5, r0, #7
	mov	sp, r5
	mov	r1, sp
	sub	r12, r1, #4
	mov	sp, r12
	sub	r4, sp, #8
	bic	r4, r4, #7
	mov	sp, r4
	mov	r0, #6
	ldr	r8, [r6, #1044]         @ 4-byte Reload
	strb	r0, [r1, #-4]
	mov	lr, #1
	strb	r0, [r1, #-3]
	mov	r0, r5
	str	r11, [r2]
	str	r8, [r2, #4]
	stmib	r2, {r10, r11}
	adr	r1, LCPI0_70
	vld1.64	{d16, d17}, [r1:128]
	add	r1, r5, #16
	vst1.64	{d10, d11}, [r1]
	mov	r1, #36
	vst1.32	{d10, d11}, [r0], r1
	mov	r1, #0
	str	r1, [r0]
	mov	r0, #2
	vst1.64	{d16, d17}, [r3:128]
	str	lr, [r5, #32]
	stm	r4, {r0, r1}
	sub	sp, sp, #20
	stm	sp, {r5, r12, lr}
	mov	r0, #2
	str	r1, [sp, #12]
	mov	r1, #0
	str	r4, [sp, #16]
	bl	_nnc_aten_mean
	add	sp, sp, #20
	sub	r0, sp, #16
	bic	r2, r0, #7
	mov	sp, r2
	sub	r0, sp, #32
	bic	r3, r0, #31
	mov	sp, r3
	sub	r0, sp, #56
	bic	r0, r0, #7
	mov	sp, r0
	mov	r5, sp
	sub	r12, r5, #4
	mov	sp, r12
	sub	r4, sp, #16
	bic	lr, r4, #15
	mov	sp, lr
	ldr	r1, [r6, #1040]         @ 4-byte Reload
	mov	r4, #6
	str	r1, [r2]
	ldr	r10, [r6, #1056]        @ 4-byte Reload
	ldr	r1, [r6, #1052]         @ 4-byte Reload
	str	r10, [r2, #4]
	str	r1, [r2, #8]
	ldr	r1, [r6, #1036]         @ 4-byte Reload
	str	r1, [r2, #4]
	strb	r4, [r5, #-4]
	str	r8, [r2, #12]
	mov	r8, #6
	strb	r4, [r5, #-3]
	str	r11, [r2, #8]
	adr	r1, LCPI0_71
	vld1.64	{d16, d17}, [r1:128]
	add	r1, r0, #16
	strb	r4, [r5, #-2]
	mov	r4, #52
	vst1.64	{d16, d17}, [r1]
	adr	r1, LCPI0_72
	vld1.64	{d16, d17}, [r1:128]
	mov	r1, r0
	vst1.32	{d16, d17}, [r1], r4
	ldr	r4, [r6, #1192]         @ 4-byte Reload
	str	r4, [r2, #16]
	mov	r4, #0
	str	r10, [r2, #12]
	strb	r8, [r5, #-1]
	adr	r5, LCPI0_9
	vld1.64	{d16, d17}, [r5:128]
	adr	r5, LCPI0_73
	vld1.64	{d18, d19}, [r5:128]
	mov	r5, r3
	vst1.32	{d18, d19}, [r5]!
	vst1.64	{d16, d17}, [r5]
	adr	r5, LCPI0_74
	vld1.64	{d16, d17}, [r5:128]
	add	r5, r0, #32
	vst1.64	{d16, d17}, [r5]
	str	r4, [r1]
	mov	r1, #1000
	str	r1, [r0, #48]
	vst1.64	{d8, d9}, [lr:128]
	sub	sp, sp, #20
	stm	sp, {r0, r12}
	mov	r0, #2
	add	r1, sp, #8
	stm	r1, {r0, r4, lr}
	mov	r0, #4
	mov	r1, #0
	bl	_nnc_aten_addmm
	add	sp, sp, #20
	add	r4, r6, #1856
	mov	r0, #0
	vld1.64	{d8, d9, d10, d11}, [r4:128]!
	vld1.64	{d12, d13, d14, d15}, [r4:128]
	sub	sp, r7, #24
	pop	{r4, r5, r6, r7, r8, r10, r11, lr}
	mov	pc, lr
	.p2align	4
@ %bb.365:
	.data_region
LCPI0_8:
	.long	1                       @ 0x1
	.long	0                       @ 0x0
	.long	1                       @ 0x1
	.long	0                       @ 0x0
LCPI0_9:
	.long	2                       @ 0x2
	.long	0                       @ 0x0
	.long	2                       @ 0x2
	.long	0                       @ 0x0
LCPI0_66:
	.long	1                       @ 0x1
	.long	0                       @ 0x0
	.long	1280                    @ 0x500
	.long	0                       @ 0x0
LCPI0_68:
	.long	1280                    @ 0x500
	.long	0                       @ 0x0
	.long	1                       @ 0x1
	.long	0                       @ 0x0
LCPI0_69:
	.long	3                       @ 0x3
	.long	0                       @ 0x0
	.long	4                       @ 0x4
	.long	0                       @ 0x0
LCPI0_70:
	.long	2                       @ 0x2
	.long	0                       @ 0x0
	.long	3                       @ 0x3
	.long	0                       @ 0x0
LCPI0_71:
	.long	1000                    @ 0x3e8
	.long	0                       @ 0x0
	.long	1                       @ 0x1
	.long	0                       @ 0x0
LCPI0_72:
	.long	1                       @ 0x1
	.long	0                       @ 0x0
	.long	1000                    @ 0x3e8
	.long	0                       @ 0x0
LCPI0_73:
	.long	2                       @ 0x2
	.long	0                       @ 0x0
	.long	1                       @ 0x1
	.long	0                       @ 0x0
LCPI0_74:
	.long	1280                    @ 0x500
	.long	0                       @ 0x0
	.long	1280                    @ 0x500
	.long	0                       @ 0x0
	.end_data_region
                                        @ -- End function

.subsections_via_symbols
