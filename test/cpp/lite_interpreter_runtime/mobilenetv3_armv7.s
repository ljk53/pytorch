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
	.globl	mobilenetv3_wrapper     @ -- Begin function mobilenetv3_wrapper
	.p2align	4
	.type	mobilenetv3_wrapper,%function
	.code	32                      @ @mobilenetv3_wrapper
mobilenetv3_wrapper:
	.fnstart
@ %bb.0:                                @ %wrapBB
	.save	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
	push	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
	.setfp	r11, sp, #28
	add	r11, sp, #28
	.pad	#4
	sub	sp, sp, #4
	.vsave	{d8, d9, d10, d11, d12, d13, d14, d15}
	vpush	{d8, d9, d10, d11, d12, d13, d14, d15}
	.pad	#600
	sub	sp, sp, #600
	.pad	#2048
	sub	sp, sp, #2048
	ldr	r1, [r0, #4]
	mov	r8, #6
	str	r1, [r11, #-1672]       @ 4-byte Spill
	ldr	r1, [r0, #8]
	str	r1, [r11, #-1664]       @ 4-byte Spill
	ldr	r1, [r0, #12]
	ldr	r3, [r0]
	str	r1, [r11, #-1732]       @ 4-byte Spill
	adr	r1, .LCPI0_80
	vld1.64	{d12, d13}, [r1:128]
	ldr	r1, [r0, #816]
	str	r1, [r11, #-1668]       @ 4-byte Spill
	ldr	r1, [r0, #812]
	str	r1, [r11, #-1680]       @ 4-byte Spill
	adr	r1, .LCPI0_81
	vld1.64	{d14, d15}, [r1:128]
	ldr	r1, [r0, #808]
	str	r1, [r11, #-1692]       @ 4-byte Spill
	ldr	r1, [r0, #804]
	str	r1, [r11, #-1704]       @ 4-byte Spill
	ldr	r1, [r0, #796]
	str	r1, [r11, #-1744]       @ 4-byte Spill
	ldr	r1, [r0, #792]
	str	r1, [r11, #-1752]       @ 4-byte Spill
	ldr	r1, [r0, #788]
	str	r1, [r11, #-1780]       @ 4-byte Spill
	ldr	r1, [r0, #784]
	str	r1, [r11, #-1792]       @ 4-byte Spill
	ldr	r1, [r0, #780]
	str	r1, [r11, #-1484]       @ 4-byte Spill
	ldr	r1, [r0, #776]
	str	r1, [r11, #-1800]       @ 4-byte Spill
	ldr	r1, [r0, #768]
	str	r1, [r11, #-1512]       @ 4-byte Spill
	ldr	r1, [r0, #764]
	str	r1, [r11, #-1492]       @ 4-byte Spill
	ldr	r1, [r0, #760]
	str	r1, [r11, #-1812]       @ 4-byte Spill
	ldr	r1, [r0, #756]
	str	r1, [r11, #-1816]       @ 4-byte Spill
	ldr	r1, [r0, #752]
	str	r1, [r11, #-1508]       @ 4-byte Spill
	ldr	r1, [r0, #748]
	str	r1, [r11, #-1836]       @ 4-byte Spill
	ldr	r1, [r0, #732]
	str	r1, [r11, #-1924]       @ 4-byte Spill
	ldr	r1, [r0, #724]
	str	r1, [r11, #-1488]       @ 4-byte Spill
	ldr	r1, [r0, #720]
	str	r1, [r11, #-1768]       @ 4-byte Spill
	ldr	r1, [r0, #716]
	str	r1, [r11, #-2132]       @ 4-byte Spill
	ldr	r1, [r0, #712]
	str	r1, [r11, #-1740]       @ 4-byte Spill
	ldr	r1, [r0, #704]
	str	r1, [r11, #-1760]       @ 4-byte Spill
	ldr	r1, [r0, #700]
	str	r1, [r11, #-2024]       @ 4-byte Spill
	ldr	r1, [r0, #696]
	str	r1, [r11, #-1432]       @ 4-byte Spill
	ldr	r1, [r0, #692]
	str	r1, [r11, #-1688]       @ 4-byte Spill
	ldr	r1, [r0, #688]
	str	r1, [r11, #-2136]       @ 4-byte Spill
	ldr	r1, [r0, #684]
	str	r1, [r11, #-1804]       @ 4-byte Spill
	ldr	r1, [r0, #676]
	str	r1, [r11, #-2328]       @ 4-byte Spill
	ldr	r1, [r0, #672]
	str	r1, [r11, #-2184]       @ 4-byte Spill
	ldr	r1, [r0, #668]
	str	r1, [r11, #-2164]       @ 4-byte Spill
	ldr	r1, [r0, #664]
	str	r1, [r11, #-1580]       @ 4-byte Spill
	ldr	r1, [r0, #660]
	str	r1, [r11, #-2080]       @ 4-byte Spill
	ldr	r1, [r0, #656]
	str	r1, [r11, #-1996]       @ 4-byte Spill
	ldr	r1, [r0, #640]
	str	r1, [r11, #-2188]       @ 4-byte Spill
	ldr	r1, [r0, #628]
	str	r1, [r11, #-1984]       @ 4-byte Spill
	ldr	r1, [r0, #624]
	str	r1, [r11, #-2280]       @ 4-byte Spill
	ldr	r1, [r0, #620]
	str	r1, [r11, #-2168]       @ 4-byte Spill
	ldr	r1, [r0, #616]
	str	r1, [r11, #-1616]       @ 4-byte Spill
	ldr	r1, [r0, #612]
	str	r1, [r11, #-1720]       @ 4-byte Spill
	ldr	r1, [r0, #608]
	str	r1, [r11, #-2128]       @ 4-byte Spill
	ldr	r1, [r0, #604]
	str	r1, [r11, #-1956]       @ 4-byte Spill
	ldr	r1, [r0, #600]
	str	r1, [r11, #-1684]       @ 4-byte Spill
	ldr	r1, [r0, #596]
	str	r1, [r11, #-1640]       @ 4-byte Spill
	ldr	r1, [r0, #584]
	str	r1, [r11, #-1872]       @ 4-byte Spill
	ldr	r1, [r0, #580]
	str	r1, [r11, #-2296]       @ 4-byte Spill
	ldr	r1, [r0, #576]
	str	r1, [r11, #-1736]       @ 4-byte Spill
	ldr	r1, [r0, #572]
	str	r1, [r11, #-2064]       @ 4-byte Spill
	ldr	r1, [r0, #564]
	str	r1, [r11, #-2192]       @ 4-byte Spill
	ldr	r1, [r0, #560]
	str	r1, [r11, #-2112]       @ 4-byte Spill
	ldr	r1, [r0, #548]
	str	r1, [r11, #-1656]       @ 4-byte Spill
	ldr	r1, [r0, #544]
	str	r1, [r11, #-2396]       @ 4-byte Spill
	ldr	r1, [r0, #540]
	str	r1, [r11, #-2060]       @ 4-byte Spill
	ldr	r1, [r0, #520]
	str	r1, [r11, #-1568]       @ 4-byte Spill
	ldr	r1, [r0, #516]
	str	r1, [r11, #-1524]       @ 4-byte Spill
	ldr	r1, [r0, #500]
	str	r1, [r11, #-1552]       @ 4-byte Spill
	ldr	r1, [r0, #484]
	str	r1, [r11, #-1864]       @ 4-byte Spill
	ldr	r1, [r0, #480]
	str	r1, [r11, #-2360]       @ 4-byte Spill
	ldr	r1, [r0, #476]
	str	r1, [r11, #-1716]       @ 4-byte Spill
	ldr	r1, [r0, #472]
	str	r1, [r11, #-1908]       @ 4-byte Spill
	ldr	r1, [r0, #468]
	str	r1, [r11, #-1848]       @ 4-byte Spill
	ldr	r1, [r0, #464]
	str	r1, [r11, #-1564]       @ 4-byte Spill
	ldr	r1, [r0, #456]
	str	r1, [r11, #-2092]       @ 4-byte Spill
	ldr	r1, [r0, #452]
	str	r1, [r11, #-2036]       @ 4-byte Spill
	ldr	r1, [r0, #448]
	str	r1, [r11, #-2016]       @ 4-byte Spill
	ldr	r1, [r0, #444]
	str	r1, [r11, #-2008]       @ 4-byte Spill
	ldr	r1, [r0, #440]
	str	r1, [r11, #-1992]       @ 4-byte Spill
	ldr	r1, [r0, #428]
	str	r1, [r11, #-1496]       @ 4-byte Spill
	ldr	r1, [r0, #416]
	str	r1, [r11, #-1968]       @ 4-byte Spill
	ldr	r1, [r0, #412]
	str	r1, [r11, #-1536]       @ 4-byte Spill
	ldr	r1, [r0, #404]
	str	r1, [r11, #-1936]       @ 4-byte Spill
	ldr	r1, [r0, #400]
	str	r1, [r11, #-2076]       @ 4-byte Spill
	ldr	r1, [r0, #396]
	str	r1, [r11, #-1540]       @ 4-byte Spill
	ldr	r1, [r0, #392]
	str	r1, [r11, #-1860]       @ 4-byte Spill
	ldr	r1, [r0, #388]
	str	r1, [r11, #-1884]       @ 4-byte Spill
	ldr	r1, [r0, #384]
	str	r1, [r11, #-1920]       @ 4-byte Spill
	ldr	r1, [r0, #352]
	str	r1, [r11, #-1764]       @ 4-byte Spill
	ldr	r1, [r0, #356]
	str	r1, [r11, #-1756]       @ 4-byte Spill
	ldr	r1, [r0, #360]
	str	r1, [r11, #-1728]       @ 4-byte Spill
	ldr	r1, [r0, #364]
	str	r1, [r11, #-1724]       @ 4-byte Spill
	ldr	r1, [r0, #368]
	str	r1, [r11, #-1712]       @ 4-byte Spill
	ldr	r1, [r0, #372]
	str	r1, [r11, #-1708]       @ 4-byte Spill
	ldr	r1, [r0, #376]
	str	r1, [r11, #-1892]       @ 4-byte Spill
	ldr	r1, [r0, #380]
	str	r1, [r11, #-1904]       @ 4-byte Spill
	ldr	r1, [r0, #320]
	str	r1, [r11, #-1832]       @ 4-byte Spill
	ldr	r1, [r0, #324]
	str	r1, [r11, #-1828]       @ 4-byte Spill
	ldr	r1, [r0, #328]
	str	r1, [r11, #-1824]       @ 4-byte Spill
	ldr	r1, [r0, #332]
	str	r1, [r11, #-1820]       @ 4-byte Spill
	ldr	r1, [r0, #336]
	str	r1, [r11, #-1788]       @ 4-byte Spill
	ldr	r1, [r0, #340]
	str	r1, [r11, #-1784]       @ 4-byte Spill
	ldr	r1, [r0, #344]
	str	r1, [r11, #-1776]       @ 4-byte Spill
	ldr	r1, [r0, #348]
	str	r1, [r11, #-1772]       @ 4-byte Spill
	ldr	r1, [r0, #288]
	str	r1, [r11, #-1900]       @ 4-byte Spill
	ldr	r1, [r0, #292]
	str	r1, [r11, #-1896]       @ 4-byte Spill
	ldr	r1, [r0, #296]
	str	r1, [r11, #-1888]       @ 4-byte Spill
	ldr	r1, [r0, #300]
	str	r1, [r11, #-1880]       @ 4-byte Spill
	ldr	r1, [r0, #304]
	str	r1, [r11, #-1876]       @ 4-byte Spill
	ldr	r1, [r0, #308]
	str	r1, [r11, #-1868]       @ 4-byte Spill
	ldr	r1, [r0, #312]
	str	r1, [r11, #-1844]       @ 4-byte Spill
	ldr	r1, [r0, #316]
	str	r1, [r11, #-1840]       @ 4-byte Spill
	ldr	r1, [r0, #256]
	str	r1, [r11, #-2004]       @ 4-byte Spill
	ldr	r1, [r0, #260]
	str	r1, [r11, #-2000]       @ 4-byte Spill
	ldr	r1, [r0, #264]
	str	r1, [r11, #-1964]       @ 4-byte Spill
	ldr	r1, [r0, #268]
	str	r1, [r11, #-1960]       @ 4-byte Spill
	ldr	r1, [r0, #272]
	str	r1, [r11, #-1944]       @ 4-byte Spill
	ldr	r1, [r0, #276]
	str	r1, [r11, #-1940]       @ 4-byte Spill
	ldr	r1, [r0, #280]
	str	r1, [r11, #-1932]       @ 4-byte Spill
	ldr	r1, [r0, #284]
	str	r1, [r11, #-1928]       @ 4-byte Spill
	ldr	r1, [r0, #224]
	str	r1, [r11, #-2088]       @ 4-byte Spill
	ldr	r1, [r0, #228]
	str	r1, [r11, #-2084]       @ 4-byte Spill
	ldr	r1, [r0, #232]
	str	r1, [r11, #-2072]       @ 4-byte Spill
	ldr	r1, [r0, #236]
	str	r1, [r11, #-2068]       @ 4-byte Spill
	ldr	r1, [r0, #240]
	str	r1, [r11, #-2032]       @ 4-byte Spill
	ldr	r1, [r0, #244]
	str	r1, [r11, #-2028]       @ 4-byte Spill
	ldr	r1, [r0, #248]
	str	r1, [r11, #-2020]       @ 4-byte Spill
	ldr	r1, [r0, #252]
	str	r1, [r11, #-2012]       @ 4-byte Spill
	ldr	r1, [r0, #192]
	str	r1, [r11, #-2176]       @ 4-byte Spill
	ldr	r1, [r0, #196]
	str	r1, [r11, #-2172]       @ 4-byte Spill
	ldr	r1, [r0, #200]
	str	r1, [r11, #-2160]       @ 4-byte Spill
	ldr	r1, [r0, #204]
	str	r1, [r11, #-2156]       @ 4-byte Spill
	ldr	r1, [r0, #208]
	str	r1, [r11, #-2144]       @ 4-byte Spill
	ldr	r1, [r0, #212]
	str	r1, [r11, #-2140]       @ 4-byte Spill
	ldr	r1, [r0, #216]
	str	r1, [r11, #-2108]       @ 4-byte Spill
	ldr	r1, [r0, #220]
	str	r1, [r11, #-2104]       @ 4-byte Spill
	b	.LBB0_17
	.p2align	4
@ %bb.1:
.LCPI0_80:
	.long	1                       @ 0x1
	.long	0                       @ 0x0
	.long	16                      @ 0x10
	.long	0                       @ 0x0
	.p2align	4
@ %bb.2:
.LCPI0_81:
	.long	112                     @ 0x70
	.long	0                       @ 0x0
	.long	112                     @ 0x70
	.long	0                       @ 0x0
	.p2align	4
@ %bb.3:
.LCPI0_82:
	.long	224                     @ 0xe0
	.long	0                       @ 0x0
	.long	224                     @ 0xe0
	.long	0                       @ 0x0
	.p2align	4
@ %bb.4:
.LCPI0_83:
	.long	4                       @ 0x4
	.long	0                       @ 0x0
	.long	4                       @ 0x4
	.long	0                       @ 0x0
	.p2align	4
@ %bb.5:
.LCPI0_84:
	.long	1                       @ 0x1
	.long	0                       @ 0x0
	.long	3                       @ 0x3
	.long	0                       @ 0x0
	.p2align	4
@ %bb.6:
.LCPI0_85:
	.long	16                      @ 0x10
	.long	0                       @ 0x0
	.long	3                       @ 0x3
	.long	0                       @ 0x0
	.p2align	4
@ %bb.7:
.LCPI0_86:
	.long	3                       @ 0x3
	.long	0                       @ 0x0
	.long	3                       @ 0x3
	.long	0                       @ 0x0
	.p2align	4
@ %bb.8:
.LCPI0_87:
	.long	4                       @ 0x4
	.long	0                       @ 0x0
	.long	1                       @ 0x1
	.long	0                       @ 0x0
	.p2align	4
@ %bb.9:
.LCPI0_88:
	.long	1                       @ 0x1
	.long	0                       @ 0x0
	.long	1                       @ 0x1
	.long	0                       @ 0x0
	.p2align	4
@ %bb.10:
.LCPI0_89:
	.long	2                       @ 0x2
	.long	0                       @ 0x0
	.long	2                       @ 0x2
	.long	0                       @ 0x0
	.p2align	2
@ %bb.11:
.LCPI0_90:
	.long	0                       @ float 0
	.p2align	2
@ %bb.12:
.LCPI0_91:
	.long	88599                   @ 0x15a17
	.p2align	2
@ %bb.13:
.LCPI0_92:
	.long	126570                  @ 0x1ee6a
	.p2align	2
@ %bb.14:
.LCPI0_93:
	.long	139227                  @ 0x21fdb
	.p2align	2
@ %bb.15:
.LCPI0_94:
	.long	164541                  @ 0x282bd
	.p2align	2
@ %bb.16:
.LCPI0_95:
	.long	189855                  @ 0x2e59f
	.p2align	2
.LBB0_17:                               @ %wrapBB
	ldr	r1, [r0, #160]
	str	r1, [r11, #-2304]       @ 4-byte Spill
	ldr	r1, [r0, #164]
	str	r1, [r11, #-2300]       @ 4-byte Spill
	ldr	r1, [r0, #168]
	str	r1, [r11, #-2292]       @ 4-byte Spill
	ldr	r1, [r0, #172]
	str	r1, [r11, #-2288]       @ 4-byte Spill
	ldr	r1, [r0, #176]
	str	r1, [r11, #-2208]       @ 4-byte Spill
	ldr	r1, [r0, #180]
	str	r1, [r11, #-2204]       @ 4-byte Spill
	ldr	r1, [r0, #184]
	str	r1, [r11, #-2200]       @ 4-byte Spill
	ldr	r1, [r0, #188]
	str	r1, [r11, #-2196]       @ 4-byte Spill
	ldr	r1, [r0, #156]
	str	r1, [r11, #-2332]       @ 4-byte Spill
	ldr	r1, [r0, #152]
	str	r1, [r11, #-2336]       @ 4-byte Spill
	ldr	r1, [r0, #148]
	str	r1, [r11, #-2376]       @ 4-byte Spill
	ldr	r1, [r0, #144]
	str	r1, [r11, #-2380]       @ 4-byte Spill
	ldr	r1, [r0, #140]
	str	r1, [r11, #-2384]       @ 4-byte Spill
	ldr	r1, [r0, #136]
	str	r1, [r11, #-2388]       @ 4-byte Spill
	ldr	r1, [r0, #92]
	str	r1, [r11, #-1700]       @ 4-byte Spill
	ldr	r1, [r0, #88]
	str	r1, [r11, #-1696]       @ 4-byte Spill
	ldr	r1, [r0, #84]
	str	r1, [r11, #-1676]       @ 4-byte Spill
	ldr	r1, [r0, #64]
	str	r1, [r11, #-2124]       @ 4-byte Spill
	ldr	r1, [r0, #32]
	str	r1, [r11, #-1856]       @ 4-byte Spill
	ldr	r1, [r0, #36]
	str	r1, [r11, #-1912]       @ 4-byte Spill
	ldr	r1, [r0, #40]
	str	r1, [r11, #-1916]       @ 4-byte Spill
	ldr	r1, [r0, #44]
	str	r1, [r11, #-1980]       @ 4-byte Spill
	ldr	r1, [r0, #48]
	str	r1, [r11, #-1988]       @ 4-byte Spill
	ldr	r1, [r0, #52]
	str	r1, [r11, #-2048]       @ 4-byte Spill
	ldr	r1, [r0, #56]
	str	r1, [r11, #-2056]       @ 4-byte Spill
	ldr	r1, [r0, #60]
	str	r1, [r11, #-2120]       @ 4-byte Spill
	ldr	r1, [r0, #28]
	str	r1, [r11, #-1852]       @ 4-byte Spill
	ldr	r1, [r0, #24]
	str	r1, [r11, #-1808]       @ 4-byte Spill
	ldr	r1, [r0, #20]
	str	r1, [r11, #-1796]       @ 4-byte Spill
	ldr	r1, [r0, #16]
	str	r1, [r11, #-1748]       @ 4-byte Spill
	ldr	r1, [r0, #424]
	str	r1, [r11, #-1560]       @ 4-byte Spill
	ldr	r1, [r0, #420]
	str	r1, [r11, #-1556]       @ 4-byte Spill
	ldr	r1, [r0, #436]
	str	r1, [r11, #-1400]       @ 4-byte Spill
	ldr	r1, [r0, #432]
	str	r1, [r11, #-1532]       @ 4-byte Spill
	ldr	r1, [r0, #492]
	str	r1, [r11, #-1516]       @ 4-byte Spill
	ldr	r1, [r0, #460]
	str	r1, [r11, #-1416]       @ 4-byte Spill
	ldr	r1, [r0, #556]
	str	r1, [r11, #-1572]       @ 4-byte Spill
	ldr	r1, [r0, #504]
	str	r1, [r11, #-1576]       @ 4-byte Spill
	ldr	r1, [r0, #632]
	str	r1, [r11, #-1500]       @ 4-byte Spill
	ldr	r1, [r0, #592]
	str	r1, [r11, #-1544]       @ 4-byte Spill
	ldr	r1, [r0, #636]
	str	r1, [r11, #-1448]       @ 4-byte Spill
	ldr	r1, [r0, #648]
	str	r1, [r11, #-1548]       @ 4-byte Spill
	ldr	r1, [r0, #644]
	str	r1, [r11, #-1368]       @ 4-byte Spill
	ldr	r1, [r0, #680]
	str	r1, [r11, #-1608]       @ 4-byte Spill
	ldr	r1, [r0, #652]
	str	r1, [r11, #-1384]       @ 4-byte Spill
	ldr	r1, [r0, #740]
	str	r1, [r11, #-1584]       @ 4-byte Spill
	ldr	r1, [r0, #728]
	str	r1, [r11, #-1588]       @ 4-byte Spill
	ldr	r1, [r0, #772]
	str	r1, [r11, #-1520]       @ 4-byte Spill
	ldr	r1, [r0, #744]
	str	r1, [r11, #-1528]       @ 4-byte Spill
	ldr	r1, [r0, #800]
	str	r1, [r11, #-1504]       @ 4-byte Spill
	ldr	r1, [r0, #68]
	str	r1, [r11, #-1612]       @ 4-byte Spill
	ldr	r1, [r0, #408]
	str	r1, [r11, #-1336]       @ 4-byte Spill
	ldr	r1, [r0, #588]
	str	r1, [r11, #-1464]       @ 4-byte Spill
	ldr	r1, [r0, #708]
	str	r1, [r11, #-2740]       @ 4-byte Spill
	ldr	r1, [r0, #132]
	str	r1, [r11, #-1948]       @ 4-byte Spill
	ldr	r1, [r0, #128]
	str	r1, [r11, #-1952]       @ 4-byte Spill
	ldr	r1, [r0, #496]
	str	r1, [r11, #-1972]       @ 4-byte Spill
	ldr	r1, [r0, #104]
	str	r1, [r11, #-2392]       @ 4-byte Spill
	ldr	r1, [r0, #108]
	str	r1, [r11, #-2284]       @ 4-byte Spill
	ldr	r1, [r0, #112]
	str	r1, [r11, #-2180]       @ 4-byte Spill
	ldr	r1, [r0, #116]
	str	r1, [r11, #-2152]       @ 4-byte Spill
	ldr	r1, [r0, #120]
	str	r1, [r11, #-2040]       @ 4-byte Spill
	ldr	r1, [r0, #124]
	str	r1, [r11, #-1976]       @ 4-byte Spill
	ldr	r1, [r0, #512]
	str	r1, [r11, #-2044]       @ 4-byte Spill
	ldr	r1, [r0, #524]
	str	r1, [r11, #-2052]       @ 4-byte Spill
	ldr	r1, [r0, #76]
	str	r1, [r11, #-2096]       @ 4-byte Spill
	ldr	r1, [r0, #528]
	str	r1, [r11, #-2100]       @ 4-byte Spill
	ldr	r1, [r0, #80]
	str	r1, [r11, #-2116]       @ 4-byte Spill
	ldr	r1, [r0, #536]
	str	r1, [r11, #-2148]       @ 4-byte Spill
	ldr	r1, [r0, #736]
	str	r1, [r11, #-1660]       @ 4-byte Spill
	sub	r1, r11, #256
	ldr	r5, [r0, #72]
	add	r2, r1, #48
	ldr	r9, [r0, #508]
	ldr	r12, [r0, #96]
	ldr	lr, [r0, #100]
	ldr	r4, [r0, #552]
	ldr	r6, [r0, #488]
	ldr	r7, [r0, #532]
	ldr	r10, [r0, #568]
	mov	r0, r1
	vst1.64	{d12, d13}, [r0]!
	str	r10, [r11, #-120]
	str	r3, [r11, #-116]
	sub	r3, r11, #152
	strb	r8, [r11, #-260]
	vst1.64	{d14, d15}, [r0]
	adr	r0, .LCPI0_82
	vld1.64	{d16, d17}, [r0:128]
	adr	r0, .LCPI0_83
	vld1.64	{d18, d19}, [r0:128]
	sub	r0, r11, #296
	sub	r0, r0, #1024
	strb	r8, [r11, #-259]
	vstmia	r0, {d18, d19}          @ 16-byte Spill
	mov	r0, r3
	vst1.64	{d18, d19}, [r0]!
	vst1.64	{d16, d17}, [r2]
	adr	r2, .LCPI0_84
	vld1.64	{d16, d17}, [r2:128]
	add	r2, r1, #32
	vst1.64	{d16, d17}, [r2]
	adr	r2, .LCPI0_85
	vld1.64	{d16, d17}, [r2:128]
	add	r2, r1, #64
	vst1.64	{d16, d17}, [r2]
	adr	r2, .LCPI0_86
	vld1.64	{d16, d17}, [r2:128]
	sub	r2, r11, #200
	sub	r2, r2, #2048
	str	r12, [r11, #-112]
	vstmia	r2, {d16, d17}          @ 16-byte Spill
	add	r2, r1, #80
	str	lr, [r11, #-108]
	sub	lr, r11, #328
	vst1.64	{d16, d17}, [r2]
	adr	r2, .LCPI0_87
	sub	lr, lr, #1024
	vld1.64	{d16, d17}, [r2:128]
	vstmia	lr, {d16, d17}          @ 16-byte Spill
	sub	lr, r11, #376
	sub	lr, lr, #2048
	strb	r8, [r11, #-258]
	strb	r8, [r11, #-257]
	mov	r8, #0
	vst1.64	{d16, d17}, [r0]
	adr	r0, .LCPI0_88
	vld1.64	{d18, d19}, [r0:128]
	sub	r0, r11, #320
	add	r2, r0, #32
	vstmia	lr, {d18, d19}          @ 16-byte Spill
	sub	lr, r11, #216
	sub	lr, lr, #2048
	vst1.64	{d18, d19}, [r2]
	adr	r2, .LCPI0_89
	vld1.64	{d16, d17}, [r2:128]
	mov	r2, #16
	str	r2, [r11, #-160]
	mov	r2, r0
	vst1.64	{d16, d17}, [r2]!
	vst1.64	{d18, d19}, [r2]
	mov	r2, #1
	vstmia	lr, {d16, d17}          @ 16-byte Spill
	str	r8, [r11, #-156]
	str	r2, [r11, #-272]
	str	r8, [r11, #-268]
	sub	sp, sp, #24
	sub	r2, r11, #260
	mov	r12, #7
	stm	sp, {r1, r2, r12}
	sub	r2, r11, #120
	mov	r1, #0
	str	r0, [sp, #16]
	mov	r0, #4
	str	r8, [sp, #12]
	bl	nnc_aten_conv2d
	add	sp, sp, #24
	vmov.f32	s16, #3.000000e+00
	vldr	s0, [r10]
	vmov.f32	s18, #6.000000e+00
	vldr	s22, .LCPI0_90
	mov	r1, #452
	sub	lr, r11, #392
	orr	r1, r1, #50176
	sub	lr, lr, #2048
	add	r0, r10, r1
	vstmia	lr, {d14, d15}          @ 16-byte Spill
	sub	lr, r11, #376
	sub	lr, lr, #2048
	vadd.f32	s2, s0, s16
	vmax.f32	d16, d1, d11
	vmin.f32	d1, d16, d9
	vmul.f32	s0, s0, s2
	vdiv.f32	s0, s0, s18
	vstr	s0, [r7]
	vldr	s0, [r0]
	add	r0, r7, r1
	mov	r1, #904
	vadd.f32	s2, s0, s16
	orr	r1, r1, #100352
	mov	r3, r1
	vmax.f32	d16, d1, d11
	vmin.f32	d1, d16, d9
	vmul.f32	s0, s0, s2
	vdiv.f32	s0, s0, s18
	vstr	s0, [r0]
	add	r0, r10, r1
	vldr	s0, [r0]
	add	r0, r7, r1
	mov	r1, #332
	vadd.f32	s2, s0, s16
	orr	r1, r1, #151552
	mov	r2, r1
	vmax.f32	d16, d1, d11
	vmin.f32	d1, d16, d9
	vmul.f32	s0, s0, s2
	vdiv.f32	s0, s0, s18
	vstr	s0, [r0]
	add	r0, r10, r1
	vldr	s0, [r0]
	add	r0, r7, r1
	mov	r1, #1808
	vadd.f32	s2, s0, s16
	orr	r1, r1, #200704
	vmax.f32	d16, d1, d11
	vmin.f32	d1, d16, d9
	vmul.f32	s0, s0, s2
	vdiv.f32	s0, s0, s18
	vstr	s0, [r0]
	add	r0, r10, r1
	vldr	s0, [r0]
	add	r0, r7, r1
	mov	r1, #212
	vadd.f32	s2, s0, s16
	orr	r1, r1, #252928
	vmax.f32	d16, d1, d11
	vmin.f32	d1, d16, d9
	vmul.f32	s0, s0, s2
	vdiv.f32	s0, s0, s18
	vstr	s0, [r0]
	add	r0, r10, r1
	vldr	s0, [r0]
	add	r0, r7, r1
	mov	r1, #166
	vadd.f32	s2, s0, s16
	orr	r1, r1, #75776
	vmax.f32	d16, d1, d11
	vmin.f32	d1, d16, d9
	vmul.f32	s0, s0, s2
	vdiv.f32	s0, s0, s18
	vstr	s0, [r0]
	add	r0, r10, r1, lsl #2
	vldr	s0, [r0]
	add	r0, r7, r1, lsl #2
	ldr	r1, .LCPI0_91
	vadd.f32	s2, s0, s16
	vmax.f32	d16, d1, d11
	vmin.f32	d1, d16, d9
	vmul.f32	s0, s0, s2
	vdiv.f32	s0, s0, s18
	vstr	s0, [r0]
	add	r0, r10, r1, lsl #2
	vldr	s0, [r0]
	add	r0, r7, r1, lsl #2
	mov	r1, #249
	vadd.f32	s2, s0, s16
	orr	r1, r1, #113664
	vmax.f32	d16, d1, d11
	vmin.f32	d1, d16, d9
	vmul.f32	s0, s0, s2
	vdiv.f32	s0, s0, s18
	vstr	s0, [r0]
	add	r0, r10, r3, lsl #2
	vldr	s0, [r0]
	add	r0, r7, r3, lsl #2
	sub	r3, r11, #368
	vadd.f32	s2, s0, s16
	vmax.f32	d16, d1, d11
	vmin.f32	d1, d16, d9
	vmul.f32	s0, s0, s2
	vdiv.f32	s0, s0, s18
	vstr	s0, [r0]
	add	r0, r10, r1, lsl #2
	vldr	s0, [r0]
	add	r0, r7, r1, lsl #2
	ldr	r1, .LCPI0_92
	vadd.f32	s2, s0, s16
	vmax.f32	d16, d1, d11
	vmin.f32	d1, d16, d9
	vmul.f32	s0, s0, s2
	vdiv.f32	s0, s0, s18
	vstr	s0, [r0]
	add	r0, r10, r1, lsl #2
	vldr	s0, [r0]
	add	r0, r7, r1, lsl #2
	ldr	r1, .LCPI0_93
	vadd.f32	s2, s0, s16
	vmax.f32	d16, d1, d11
	vmin.f32	d1, d16, d9
	vmul.f32	s0, s0, s2
	vdiv.f32	s0, s0, s18
	vstr	s0, [r0]
	add	r0, r10, r1, lsl #2
	vldr	s0, [r0]
	add	r0, r7, r1, lsl #2
	ldr	r1, .LCPI0_94
	vadd.f32	s2, s0, s16
	vmax.f32	d16, d1, d11
	vmin.f32	d1, d16, d9
	vmul.f32	s0, s0, s2
	vdiv.f32	s0, s0, s18
	vstr	s0, [r0]
	add	r0, r10, r2, lsl #2
	vldr	s0, [r0]
	add	r0, r7, r2, lsl #2
	vadd.f32	s2, s0, s16
	vmax.f32	d16, d1, d11
	vmin.f32	d1, d16, d9
	vmul.f32	s0, s0, s2
	vdiv.f32	s0, s0, s18
	vstr	s0, [r0]
	add	r0, r10, r1, lsl #2
	vldr	s0, [r0]
	add	r0, r7, r1, lsl #2
	mov	r1, #46
	vadd.f32	s2, s0, s16
	orr	r1, r1, #177152
	vmax.f32	d16, d1, d11
	vmin.f32	d1, d16, d9
	vmul.f32	s0, s0, s2
	vdiv.f32	s0, s0, s18
	vstr	s0, [r0]
	add	r0, r10, r1, lsl #2
	vldr	s0, [r0]
	add	r0, r7, r1, lsl #2
	ldr	r1, .LCPI0_95
	vadd.f32	s2, s0, s16
	vmax.f32	d16, d1, d11
	vmin.f32	d1, d16, d9
	vmul.f32	s0, s0, s2
	vdiv.f32	s0, s0, s18
	vstr	s0, [r0]
	add	r0, r10, r1, lsl #2
	mov	r10, r1
	vldr	s0, [r0]
	add	r0, r7, r1, lsl #2
	vadd.f32	s2, s0, s16
	vmax.f32	d16, d1, d11
	vmin.f32	d1, d16, d9
	vldmia	lr, {d16, d17}          @ 16-byte Reload
	sub	lr, r11, #184
	sub	lr, lr, #2048
	vmul.f32	s0, s0, s2
	vdiv.f32	s0, s0, s18
	vstr	s0, [r0]
	sub	r0, r11, #472
	add	r1, r0, #48
	vst1.64	{d14, d15}, [r1]
	add	r1, r0, #32
	vst1.64	{d12, d13}, [r1]
	add	r1, r0, #80
	vst1.64	{d16, d17}, [r1]
	adr	r1, .LCPI0_96
	vld1.64	{d18, d19}, [r1:128]
	add	r1, r0, #64
	vst1.64	{d18, d19}, [r1]
	sub	r1, r11, #536
	add	r2, r1, #32
	vstmia	lr, {d18, d19}          @ 16-byte Spill
	sub	lr, r11, #296
	sub	lr, lr, #1024
	vorr	q9, q8, q8
	vst1.64	{d16, d17}, [r2]
	mov	r2, r0
	vst1.64	{d12, d13}, [r2]!
	vldmia	lr, {d16, d17}          @ 16-byte Reload
	sub	lr, r11, #328
	sub	lr, lr, #1024
	vst1.64	{d14, d15}, [r2]
	mov	r2, r3
	vorr	q7, q9, q9
	vst1.64	{d16, d17}, [r2]!
	vldmia	lr, {d16, d17}          @ 16-byte Reload
	str	r7, [r11, #-332]
	vst1.64	{d16, d17}, [r2]
	mov	r2, r1
	vmov.i32	q8, #0x0
	vst1.64	{d18, d19}, [r2]!
	vst1.64	{d16, d17}, [r2]
	ldr	r2, [r11, #-2392]       @ 4-byte Reload
	str	r2, [r11, #-328]
	ldr	r2, [r11, #-2284]       @ 4-byte Reload
	str	r2, [r11, #-324]
	mov	r2, #16
	str	r2, [r11, #-376]
	mov	r2, #1
	str	r2, [r11, #-488]
	mov	r2, #6
	strb	r2, [r11, #-476]
	strb	r2, [r11, #-475]
	strb	r2, [r11, #-474]
	str	r8, [r11, #-372]
	str	r8, [r11, #-484]
	str	r6, [r11, #-336]
	strb	r2, [r11, #-473]
	sub	sp, sp, #24
	sub	r2, r11, #476
	stm	sp, {r0, r2}
	mov	r0, #7
	sub	r2, r11, #336
	str	r0, [sp, #8]
	str	r1, [sp, #16]
	mov	r0, #4
	mov	r1, #0
	str	r8, [sp, #12]
	bl	nnc_aten_conv2d
	add	sp, sp, #24
	vldr	s0, [r6]
	mov	r1, #452
	vmax.f32	d0, d0, d11
	orr	r1, r1, #50176
	add	r0, r6, r1
	mov	r2, #904
	orr	r2, r2, #100352
	mov	r3, #1808
	orr	r3, r3, #200704
	sub	lr, r11, #392
	sub	lr, lr, #2048
	vstr	s0, [r4]
	vldr	s0, [r0]
	add	r0, r4, r1
	vmax.f32	d0, d0, d11
	mov	r1, #332
	orr	r1, r1, #151552
	vldmia	lr, {d16, d17}          @ 16-byte Reload
	sub	lr, r11, #456
	sub	lr, lr, #1024
	vstr	s0, [r0]
	add	r0, r6, r2
	vstmia	lr, {d12, d13}          @ 16-byte Spill
	sub	lr, r11, #200
	sub	lr, lr, #2048
	vldr	s0, [r0]
	add	r0, r4, r2
	vmax.f32	d0, d0, d11
	vstr	s0, [r0]
	add	r0, r6, r1
	vldr	s0, [r0]
	add	r0, r4, r1
	vmax.f32	d0, d0, d11
	vstr	s0, [r0]
	add	r0, r6, r3
	vldr	s0, [r0]
	add	r0, r4, r3
	vmax.f32	d0, d0, d11
	mov	r3, #212
	orr	r3, r3, #252928
	vstr	s0, [r0]
	add	r0, r6, r3
	vldr	s0, [r0]
	add	r0, r4, r3
	vmax.f32	d0, d0, d11
	mov	r3, #166
	orr	r3, r3, #75776
	vstr	s0, [r0]
	add	r0, r6, r3, lsl #2
	vldr	s0, [r0]
	add	r0, r4, r3, lsl #2
	vmax.f32	d0, d0, d11
	ldr	r3, .LCPI0_91
	vstr	s0, [r0]
	add	r0, r6, r3, lsl #2
	vldr	s0, [r0]
	add	r0, r4, r3, lsl #2
	vmax.f32	d0, d0, d11
	sub	r3, r11, #584
	vstr	s0, [r0]
	add	r0, r6, r2, lsl #2
	vldr	s0, [r0]
	add	r0, r4, r2, lsl #2
	vmax.f32	d0, d0, d11
	mov	r2, #249
	orr	r2, r2, #113664
	vstr	s0, [r0]
	add	r0, r6, r2, lsl #2
	vldr	s0, [r0]
	add	r0, r4, r2, lsl #2
	vmax.f32	d0, d0, d11
	ldr	r2, .LCPI0_92
	vstr	s0, [r0]
	add	r0, r6, r2, lsl #2
	vldr	s0, [r0]
	add	r0, r4, r2, lsl #2
	vmax.f32	d0, d0, d11
	ldr	r2, .LCPI0_93
	vstr	s0, [r0]
	add	r0, r6, r2, lsl #2
	vldr	s0, [r0]
	add	r0, r4, r2, lsl #2
	vmax.f32	d0, d0, d11
	vstr	s0, [r0]
	add	r0, r6, r1, lsl #2
	vldr	s0, [r0]
	add	r0, r4, r1, lsl #2
	vmax.f32	d0, d0, d11
	ldr	r1, .LCPI0_94
	vstr	s0, [r0]
	add	r0, r6, r1, lsl #2
	vldr	s0, [r0]
	add	r0, r4, r1, lsl #2
	vmax.f32	d0, d0, d11
	mov	r1, #46
	orr	r1, r1, #177152
	vstr	s0, [r0]
	add	r0, r6, r1, lsl #2
	vldr	s0, [r0]
	add	r0, r4, r1, lsl #2
	vmax.f32	d0, d0, d11
	vstr	s0, [r0]
	add	r0, r6, r10, lsl #2
	ldr	r6, [r11, #-2740]       @ 4-byte Reload
	vldr	s0, [r0]
	add	r0, r4, r10, lsl #2
	vmax.f32	d0, d0, d11
	mov	r10, #6
	vstr	s0, [r0]
	sub	r0, r11, #688
	add	r1, r0, #48
	vst1.64	{d16, d17}, [r1]
	add	r1, r0, #32
	vldmia	lr, {d16, d17}          @ 16-byte Reload
	sub	lr, r11, #200
	sub	lr, lr, #2048
	vst1.64	{d12, d13}, [r1]
	add	r1, r0, #80
	vst1.64	{d16, d17}, [r1]
	adr	r1, .LCPI0_97
	vld1.64	{d16, d17}, [r1:128]
	add	r1, r0, #64
	vst1.64	{d16, d17}, [r1]
	sub	r1, r11, #752
	add	r2, r1, #32
	vst1.64	{d14, d15}, [r2]
	adr	r2, .LCPI0_98
	vld1.64	{d16, d17}, [r2:128]
	mov	r2, r0
	vstmia	lr, {d16, d17}          @ 16-byte Spill
	sub	lr, r11, #296
	sub	lr, lr, #1024
	vst1.64	{d12, d13}, [r2]!
	vorr	q6, q8, q8
	vst1.64	{d16, d17}, [r2]
	mov	r2, r3
	vldmia	lr, {d16, d17}          @ 16-byte Reload
	sub	lr, r11, #328
	sub	lr, lr, #1024
	str	r4, [r11, #-548]
	vst1.64	{d16, d17}, [r2]!
	vldmia	lr, {d16, d17}          @ 16-byte Reload
	sub	lr, r11, #216
	sub	lr, lr, #2048
	ldr	r7, [r11, #-1660]       @ 4-byte Reload
	vst1.64	{d16, d17}, [r2]
	mov	r2, r1
	vldmia	lr, {d16, d17}          @ 16-byte Reload
	str	r8, [r11, #-588]
	vst1.64	{d16, d17}, [r2]!
	vst1.64	{d14, d15}, [r2]
	ldr	r2, [r11, #-2180]       @ 4-byte Reload
	str	r2, [r11, #-544]
	ldr	r2, [r11, #-2152]       @ 4-byte Reload
	str	r2, [r11, #-540]
	mov	r2, #16
	str	r2, [r11, #-592]
	str	r2, [r11, #-704]
	mov	r2, #6
	strb	r2, [r11, #-692]
	strb	r2, [r11, #-691]
	strb	r2, [r11, #-690]
	str	r8, [r11, #-700]
	str	r7, [r11, #-552]
	strb	r2, [r11, #-689]
	sub	sp, sp, #24
	sub	r2, r11, #692
	stm	sp, {r0, r2}
	mov	r0, #7
	sub	r2, r11, #552
	str	r0, [sp, #8]
	str	r1, [sp, #16]
	mov	r0, #4
	mov	r1, #0
	str	r8, [sp, #12]
	bl	nnc_aten_conv2d
	add	sp, sp, #24
	sub	lr, r11, #456
	sub	r0, r11, #840
	sub	lr, lr, #1024
	add	r1, r0, #48
	sub	r3, r11, #776
	ldr	r4, [r11, #-2148]       @ 4-byte Reload
	vldmia	lr, {d16, d17}          @ 16-byte Reload
	sub	lr, r11, #296
	sub	lr, lr, #1024
	vst1.64	{d12, d13}, [r1]
	add	r1, r0, #32
	vorr	q6, q7, q7
	vst1.64	{d16, d17}, [r1]
	mov	r1, r0
	vst1.64	{d16, d17}, [r1]!
	vldmia	lr, {d16, d17}          @ 16-byte Reload
	vst1.64	{d14, d15}, [r1]
	sub	r1, r11, #864
	b	.LBB0_21
	.p2align	4
@ %bb.18:
.LCPI0_96:
	.long	16                      @ 0x10
	.long	0                       @ 0x0
	.long	16                      @ 0x10
	.long	0                       @ 0x0
	.p2align	4
@ %bb.19:
.LCPI0_97:
	.long	16                      @ 0x10
	.long	0                       @ 0x0
	.long	1                       @ 0x1
	.long	0                       @ 0x0
	.p2align	4
@ %bb.20:
.LCPI0_98:
	.long	56                      @ 0x38
	.long	0                       @ 0x0
	.long	56                      @ 0x38
	.long	0                       @ 0x0
	.p2align	2
.LBB0_21:                               @ %wrapBB
	strb	r10, [r11, #-842]
	str	r4, [r11, #-760]
	vst1.64	{d16, d17}, [r3]
	vst1.64	{d14, d15}, [r1]
	str	r7, [r11, #-756]
	strb	r10, [r11, #-841]
	sub	sp, sp, #24
	sub	lr, r11, #768
	mov	r7, #2
	sub	r2, lr, #74
	stm	sp, {r0, r2, r7, r8}
	sub	r2, r11, #760
	str	r1, [sp, #16]
	mov	r0, #2
	mov	r1, #0
	bl	nnc_aten_adaptive_avg_pool2d
	add	sp, sp, #24
	ldr	r0, [r11, #-2116]       @ 4-byte Reload
	vorr	d0, d11, d11
	vldr	s2, [r4]
	vmov.f32	s20, #1.000000e+00
	ldr	r1, [r11, #-2052]       @ 4-byte Reload
	mov	r10, #484
	vldr	s4, [r0]
	orr	r10, r10, #12288
	vldr	s6, [r0, #20]
	sub	lr, r11, #200
	vmla.f32	s0, s2, s4
	vldr	s8, [r0, #40]
	vldr	s10, [r0, #60]
	sub	lr, lr, #2048
	vldr	s4, [r0, #80]
	mov	r4, #6
	ldr	r3, [r11, #-1660]       @ 4-byte Reload
	ldr	r2, [r11, #-2044]       @ 4-byte Reload
	vldmia	lr, {d14, d15}          @ 16-byte Reload
	sub	lr, r11, #456
	vmla.f32	s0, s2, s6
	sub	lr, lr, #1024
	mov	r7, r2
	vldmia	lr, {d20, d21}          @ 16-byte Reload
	sub	lr, r11, #184
	sub	lr, lr, #2048
	vmla.f32	s0, s2, s8
	vmla.f32	s0, s2, s10
	vorr	d5, d11, d11
	vmla.f32	s0, s2, s4
	vldr	s4, [r0, #100]
	vmla.f32	s0, s2, s4
	vldr	s4, [r0, #120]
	vmla.f32	s0, s2, s4
	vldr	s4, [r0, #140]
	vmla.f32	s0, s2, s4
	vldr	s4, [r0, #160]
	vmla.f32	s0, s2, s4
	vldr	s4, [r0, #180]
	vmla.f32	s0, s2, s4
	vldr	s4, [r0, #200]
	vmla.f32	s0, s2, s4
	vldr	s4, [r0, #220]
	vmla.f32	s0, s2, s4
	vldr	s4, [r0, #240]
	vmla.f32	s0, s2, s4
	vldr	s4, [r0, #260]
	vmla.f32	s0, s2, s4
	vldr	s4, [r0, #280]
	vmla.f32	s0, s2, s4
	vldr	s4, [r0, #300]
	ldr	r0, [r11, #-2100]       @ 4-byte Reload
	vmla.f32	s0, s2, s4
	vdup.32	q8, d0[0]
	vmax.f32	d0, d0, d11
	vst1.32	{d16, d17}, [r0]
	ldr	r0, [r11, #-2096]       @ 4-byte Reload
	vldr	s2, [r0]
	vldr	s4, [r0, #68]
	vmla.f32	s10, s2, s0
	vldr	s6, [r0, #136]
	vldr	s8, [r0, #204]
	add	r0, r1, #48
	vmla.f32	s10, s4, s0
	vmla.f32	s10, s6, s0
	vmla.f32	s10, s0, s8
	vadd.f32	s2, s10, s16
	vdup.32	q8, d5[0]
	vst1.32	{d16, d17}, [r0]
	add	r0, r1, #16
	vst1.32	{d16, d17}, [r0]
	mov	r0, #32
	vcmpe.f32	s2, #0
	vst1.32	{d16, d17}, [r1], r0
	add	r0, r2, r10
	vmrs	APSR_nzcv, fpscr
	vdiv.f32	s0, s2, s18
	vmax.f32	d1, d1, d11
	vst1.32	{d16, d17}, [r1]
	vmovmi.f32	s0, s22
	add	r1, r3, r10
	vldmia	lr, {d16, d17}          @ 16-byte Reload
	sub	lr, r11, #1024
	vcmpe.f32	s2, s18
	vldr	s2, [r3]
	vmrs	APSR_nzcv, fpscr
	vmovgt.f32	s0, s20
	vmul.f32	s2, s2, s0
	vmax.f32	d1, d1, d11
	vstr	s2, [r2]
	vldr	s2, [r1]
	vmul.f32	s2, s2, s0
	vmax.f32	d1, d1, d11
	vstr	s2, [r0]
	mov	r0, #968
	orr	r0, r0, #24576
	add	r1, r2, r0
	add	r0, r3, r0
	vldr	s2, [r0]
	mov	r0, #428
	orr	r0, r0, #37888
	vmul.f32	s2, s2, s0
	vmax.f32	d1, d1, d11
	vstr	s2, [r1]
	add	r1, r2, r0
	add	r0, r3, r0
	vldr	s2, [r0]
	mov	r0, #1936
	orr	r0, r0, #49152
	vmul.f32	s2, s0, s2
	vmax.f32	d1, d1, d11
	vstr	s2, [r1]
	add	r1, r2, r0
	add	r0, r3, r0
	vldr	s2, [r0]
	mov	r0, #372
	orr	r0, r0, #63488
	vmul.f32	s2, s0, s2
	vmax.f32	d1, d1, d11
	vstr	s2, [r1]
	add	r1, r2, r0
	add	r0, r3, r0
	vldr	s2, [r0]
	mov	r0, #856
	orr	r0, r0, #75776
	vmul.f32	s2, s0, s2
	vmax.f32	d1, d1, d11
	vstr	s2, [r1]
	add	r1, r2, r0
	add	r0, r3, r0
	vldr	s2, [r0]
	mov	r0, #316
	orr	r0, r0, #89088
	vmul.f32	s2, s0, s2
	vmax.f32	d1, d1, d11
	vstr	s2, [r1]
	add	r1, r2, r0
	add	r0, r3, r0
	vldr	s2, [r0]
	mov	r0, #3872
	orr	r0, r0, #98304
	vmul.f32	s2, s0, s2
	vmax.f32	d1, d1, d11
	vstr	s2, [r1]
	add	r1, r2, r0
	add	r0, r3, r0
	vldr	s2, [r0]
	mov	r0, #260
	orr	r0, r0, #114688
	vmul.f32	s2, s0, s2
	vmax.f32	d1, d1, d11
	vstr	s2, [r1]
	add	r1, r2, r0
	add	r0, r3, r0
	vldr	s2, [r0]
	mov	r0, #744
	orr	r0, r0, #126976
	vmul.f32	s2, s0, s2
	vmax.f32	d1, d1, d11
	vstr	s2, [r1]
	add	r1, r2, r0
	add	r0, r3, r0
	vldr	s2, [r0]
	mov	r0, #204
	orr	r0, r0, #140288
	vmul.f32	s2, s0, s2
	vmax.f32	d1, d1, d11
	vstr	s2, [r1]
	add	r1, r2, r0
	add	r0, r3, r0
	vldr	s2, [r0]
	mov	r0, #1712
	orr	r0, r0, #151552
	vmul.f32	s2, s0, s2
	vmax.f32	d1, d1, d11
	vstr	s2, [r1]
	add	r1, r2, r0
	add	r0, r3, r0
	vldr	s2, [r0]
	mov	r0, #148
	orr	r0, r0, #165888
	vmul.f32	s2, s0, s2
	vmax.f32	d1, d1, d11
	vstr	s2, [r1]
	add	r1, r2, r0
	add	r0, r3, r0
	vldr	s2, [r0]
	mov	r0, #632
	orr	r0, r0, #178176
	vmul.f32	s2, s0, s2
	vmax.f32	d1, d1, d11
	vstr	s2, [r1]
	add	r1, r2, r0
	add	r0, r3, r0
	vldr	s2, [r0]
	mov	r0, #92
	orr	r0, r0, #191488
	vmul.f32	s2, s0, s2
	vmax.f32	d1, d1, d11
	vstr	s2, [r1]
	add	r1, r2, r0
	add	r0, r3, r0
	sub	r3, r11, #912
	vldr	s2, [r0]
	sub	r0, r11, #1016
	vmul.f32	s0, s0, s2
	vmax.f32	d0, d0, d11
	vstr	s0, [r1]
	add	r1, r0, #48
	str	r7, [r11, #-876]
	vst1.64	{d14, d15}, [r1]
	add	r1, r0, #32
	vst1.64	{d20, d21}, [r1]
	add	r1, r0, #80
	vst1.64	{d12, d13}, [r1]
	add	r1, r0, #64
	vst1.64	{d16, d17}, [r1]
	sub	r1, lr, #56
	sub	lr, r11, #296
	add	r2, r1, #32
	sub	lr, lr, #1024
	ldr	r7, [r11, #-1972]       @ 4-byte Reload
	vst1.64	{d12, d13}, [r2]
	mov	r2, r0
	vst1.64	{d20, d21}, [r2]!
	vldmia	lr, {d16, d17}          @ 16-byte Reload
	sub	lr, r11, #328
	sub	lr, lr, #1024
	vst1.64	{d14, d15}, [r2]
	mov	r2, r3
	vst1.64	{d16, d17}, [r2]!
	vldmia	lr, {d16, d17}          @ 16-byte Reload
	str	r8, [r11, #-916]
	vst1.64	{d16, d17}, [r2]
	mov	r2, r1
	vmov.i32	q8, #0x0
	vst1.64	{d12, d13}, [r2]!
	vst1.64	{d16, d17}, [r2]
	mov	r2, #16
	str	r2, [r11, #-920]
	ldr	r2, [r11, #-2040]       @ 4-byte Reload
	str	r2, [r11, #-872]
	ldr	r2, [r11, #-1976]       @ 4-byte Reload
	str	r2, [r11, #-868]
	mov	r2, #1
	str	r2, [r11, #-1032]
	mov	r2, #6
	strb	r2, [r11, #-1020]
	strb	r2, [r11, #-1019]
	strb	r2, [r11, #-1018]
	str	r8, [r11, #-1028]
	str	r7, [r11, #-880]
	strb	r2, [r11, #-1017]
	sub	sp, sp, #24
	sub	r2, r11, #1020
	stm	sp, {r0, r2}
	mov	r0, #7
	sub	r2, r11, #880
	str	r0, [sp, #8]
	str	r1, [sp, #16]
	mov	r0, #4
	mov	r1, #0
	str	r8, [sp, #12]
	bl	nnc_aten_conv2d
	add	sp, sp, #24
	sub	lr, r11, #456
	sub	r0, r11, #1232
	sub	lr, lr, #1024
	add	r1, r0, #48
	vldmia	lr, {d16, d17}          @ 16-byte Reload
	sub	lr, r11, #1024
	sub	r3, lr, #104
	sub	lr, r11, #296
	vst1.64	{d14, d15}, [r1]
	add	r1, r0, #32
	sub	lr, lr, #1024
	vst1.64	{d16, d17}, [r1]
	add	r1, r0, #80
	vst1.64	{d12, d13}, [r1]
	adr	r1, .LCPI0_99
	vld1.64	{d16, d17}, [r1:128]
	add	r1, r0, #64
	vst1.64	{d16, d17}, [r1]
	sub	r1, r11, #1296
	add	r2, r1, #32
	vst1.64	{d12, d13}, [r2]
	adr	r2, .LCPI0_100
	vld1.64	{d16, d17}, [r2:128]
	mov	r2, r0
	vst1.64	{d16, d17}, [r2]!
	vldmia	lr, {d16, d17}          @ 16-byte Reload
	sub	lr, r11, #328
	sub	lr, lr, #1024
	vst1.64	{d14, d15}, [r2]
	mov	r2, r3
	vst1.64	{d16, d17}, [r2]!
	vldmia	lr, {d16, d17}          @ 16-byte Reload
	str	r7, [r11, #-1092]
	mov	r7, #72
	vst1.64	{d16, d17}, [r2]
	mov	r2, r1
	vmov.i32	q8, #0x0
	vst1.64	{d12, d13}, [r2]!
	vst1.64	{d16, d17}, [r2]
	mov	r2, #1
	str	r2, [r11, #-1248]
	ldr	r2, [r11, #-1952]       @ 4-byte Reload
	str	r2, [r11, #-1088]
	ldr	r2, [r11, #-1948]       @ 4-byte Reload
	str	r2, [r11, #-1084]
	strb	r4, [r11, #-1236]
	strb	r4, [r11, #-1235]
	strb	r4, [r11, #-1234]
	strb	r4, [r11, #-1233]
	str	r8, [r11, #-1132]
	str	r7, [r11, #-1136]
	str	r8, [r11, #-1244]
	str	r6, [r11, #-1096]
	sub	sp, sp, #24
	sub	lr, r11, #1024
	sub	r2, lr, #212
	sub	lr, r11, #1024
	stm	sp, {r0, r2}
	mov	r0, #7
	sub	r2, lr, #72
	str	r0, [sp, #8]
	mov	r0, #4
	str	r1, [sp, #16]
	mov	r1, #0
	str	r8, [sp, #12]
	bl	nnc_aten_conv2d
	ldr	r2, [r11, #-2396]       @ 4-byte Reload
	add	sp, sp, #24
	mov	r0, #180
	ldr	r3, [r11, #-1464]       @ 4-byte Reload
	orr	r0, r0, #3072
	str	r9, [r11, #-2264]       @ 4-byte Spill
	add	r1, r3, r0
	str	r1, [r11, #-2644]       @ 4-byte Spill
	add	r1, r9, r0
	str	r1, [r11, #-2552]       @ 4-byte Spill
	ldr	r1, [r11, #-1336]       @ 4-byte Reload
	add	r0, r1, r0
	str	r0, [r11, #-2736]       @ 4-byte Spill
	mov	r0, #360
	orr	r0, r0, #6144
	add	r4, r3, r0
	str	r4, [r11, #-2640]       @ 4-byte Spill
	add	r4, r9, r0
	add	r0, r1, r0
	str	r0, [r11, #-2732]       @ 4-byte Spill
	mov	r0, #540
	orr	r0, r0, #9216
	str	r4, [r11, #-2548]       @ 4-byte Spill
	add	r4, r3, r0
	str	r4, [r11, #-2636]       @ 4-byte Spill
	add	r4, r9, r0
	add	r0, r1, r0
	str	r0, [r11, #-2728]       @ 4-byte Spill
	mov	r0, #720
	orr	r0, r0, #12288
	str	r4, [r11, #-2544]       @ 4-byte Spill
	add	r4, r3, r0
	str	r4, [r11, #-2632]       @ 4-byte Spill
	add	r4, r9, r0
	add	r0, r1, r0
	str	r0, [r11, #-2724]       @ 4-byte Spill
	mov	r0, #900
	orr	r0, r0, #15360
	str	r4, [r11, #-2540]       @ 4-byte Spill
	add	r4, r3, r0
	str	r4, [r11, #-2628]       @ 4-byte Spill
	add	r4, r9, r0
	add	r0, r1, r0
	str	r0, [r11, #-2720]       @ 4-byte Spill
	mov	r0, #56
	orr	r0, r0, #19456
	str	r4, [r11, #-2536]       @ 4-byte Spill
	add	r4, r3, r0
	str	r4, [r11, #-2624]       @ 4-byte Spill
	add	r4, r9, r0
	add	r0, r1, r0
	str	r0, [r11, #-2716]       @ 4-byte Spill
	mov	r0, #236
	orr	r0, r0, #22528
	str	r4, [r11, #-2532]       @ 4-byte Spill
	add	r4, r3, r0
	str	r4, [r11, #-2620]       @ 4-byte Spill
	add	r4, r9, r0
	add	r0, r1, r0
	str	r0, [r11, #-2712]       @ 4-byte Spill
	mov	r0, #1440
	orr	r0, r0, #24576
	str	r4, [r11, #-2528]       @ 4-byte Spill
	add	r4, r3, r0
	str	r4, [r11, #-2616]       @ 4-byte Spill
	add	r4, r9, r0
	add	r0, r1, r0
	str	r0, [r11, #-2708]       @ 4-byte Spill
	mov	r0, #596
	orr	r0, r0, #28672
	str	r4, [r11, #-2524]       @ 4-byte Spill
	add	r4, r3, r0
	str	r4, [r11, #-2612]       @ 4-byte Spill
	add	r4, r9, r0
	add	r0, r1, r0
	str	r0, [r11, #-2704]       @ 4-byte Spill
	mov	r0, #776
	orr	r0, r0, #31744
	str	r4, [r11, #-2520]       @ 4-byte Spill
	add	r4, r3, r0
	str	r4, [r11, #-2608]       @ 4-byte Spill
	add	r4, r9, r0
	add	r0, r1, r0
	str	r0, [r11, #-2700]       @ 4-byte Spill
	mov	r0, #956
	orr	r0, r0, #34816
	str	r4, [r11, #-2516]       @ 4-byte Spill
	add	r4, r3, r0
	str	r4, [r11, #-2604]       @ 4-byte Spill
	add	r4, r9, r0
	add	r0, r1, r0
	str	r0, [r11, #-2696]       @ 4-byte Spill
	mov	r0, #2160
	orr	r0, r0, #36864
	str	r4, [r11, #-2512]       @ 4-byte Spill
	add	r4, r3, r0
	str	r4, [r11, #-2600]       @ 4-byte Spill
	add	r4, r9, r0
	add	r0, r1, r0
	str	r0, [r11, #-2692]       @ 4-byte Spill
	mov	r0, #292
	orr	r0, r0, #41984
	str	r4, [r11, #-2508]       @ 4-byte Spill
	add	r4, r3, r0
	str	r4, [r11, #-2596]       @ 4-byte Spill
	add	r4, r9, r0
	add	r0, r1, r0
	str	r0, [r11, #-2688]       @ 4-byte Spill
	mov	r0, #472
	orr	r0, r0, #45056
	str	r4, [r11, #-2504]       @ 4-byte Spill
	add	r4, r3, r0
	str	r4, [r11, #-2592]       @ 4-byte Spill
	add	r4, r9, r0
	add	r0, r1, r0
	str	r0, [r11, #-2684]       @ 4-byte Spill
	mov	r0, #652
	orr	r0, r0, #48128
	str	r4, [r11, #-2500]       @ 4-byte Spill
	add	r4, r3, r0
	str	r4, [r11, #-2588]       @ 4-byte Spill
	add	r4, r9, r0
	add	r0, r1, r0
	str	r0, [r11, #-2680]       @ 4-byte Spill
	mov	r0, #2880
	orr	r0, r0, #49152
	str	r4, [r11, #-2496]       @ 4-byte Spill
	add	r4, r3, r0
	str	r4, [r11, #-2584]       @ 4-byte Spill
	add	r4, r9, r0
	add	r0, r1, r0
	str	r0, [r11, #-2676]       @ 4-byte Spill
	mov	r0, #1012
	orr	r0, r0, #54272
	str	r4, [r11, #-2492]       @ 4-byte Spill
	add	r4, r3, r0
	str	r4, [r11, #-2580]       @ 4-byte Spill
	add	r4, r9, r0
	add	r0, r1, r0
	str	r0, [r11, #-2672]       @ 4-byte Spill
	mov	r0, #168
	orr	r0, r0, #58368
	str	r4, [r11, #-2488]       @ 4-byte Spill
	add	r4, r3, r0
	str	r4, [r11, #-2576]       @ 4-byte Spill
	add	r4, r9, r0
	add	r0, r1, r0
	str	r0, [r11, #-2668]       @ 4-byte Spill
	mov	r0, #348
	orr	r0, r0, #61440
	str	r4, [r11, #-2484]       @ 4-byte Spill
	add	r4, r3, r0
	str	r4, [r11, #-2572]       @ 4-byte Spill
	add	r4, r9, r0
	add	r0, r1, r0
	str	r0, [r11, #-2664]       @ 4-byte Spill
	mov	r0, #3600
	orr	r0, r0, #61440
	str	r4, [r11, #-2480]       @ 4-byte Spill
	add	r4, r3, r0
	str	r4, [r11, #-2568]       @ 4-byte Spill
	add	r4, r9, r0
	add	r0, r1, r0
	str	r0, [r11, #-2660]       @ 4-byte Spill
	mov	r0, #708
	orr	r0, r0, #67584
	str	r4, [r11, #-2476]       @ 4-byte Spill
	add	r4, r3, r0
	str	r4, [r11, #-2564]       @ 4-byte Spill
	add	r4, r9, r0
	add	r0, r1, r0
	str	r0, [r11, #-2656]       @ 4-byte Spill
	mov	r0, #888
	orr	r0, r0, #70656
	str	r4, [r11, #-2472]       @ 4-byte Spill
	add	r4, r3, r0
	str	r4, [r11, #-2560]       @ 4-byte Spill
	add	r4, r9, r0
	add	r0, r1, r0
	str	r0, [r11, #-2652]       @ 4-byte Spill
	mov	r0, #44
	orr	r0, r0, #74752
	str	r4, [r11, #-2468]       @ 4-byte Spill
	add	r3, r3, r0
	str	r3, [r11, #-2556]       @ 4-byte Spill
	add	r3, r9, r0
	add	r0, r1, r0
	ldr	r1, [r11, #-1612]       @ 4-byte Reload
	str	r0, [r11, #-2648]       @ 4-byte Spill
	add	r0, r1, #140
	str	r3, [r11, #-2464]       @ 4-byte Spill
	add	r0, r0, #1024
	str	r0, [r11, #-2460]       @ 4-byte Spill
	add	r0, r1, #280
	add	r0, r0, #2048
	str	r0, [r11, #-2456]       @ 4-byte Spill
	add	r0, r1, #420
	add	r0, r0, #3072
	b	.LBB0_36
	.p2align	4
@ %bb.22:
.LCPI0_99:
	.long	72                      @ 0x48
	.long	0                       @ 0x0
	.long	16                      @ 0x10
	.long	0                       @ 0x0
	.p2align	4
@ %bb.23:
.LCPI0_100:
	.long	1                       @ 0x1
	.long	0                       @ 0x0
	.long	72                      @ 0x48
	.long	0                       @ 0x0
	.p2align	4
@ %bb.24:
.LCPI0_101:
	.long	28                      @ 0x1c
	.long	0                       @ 0x0
	.long	28                      @ 0x1c
	.long	0                       @ 0x0
	.p2align	4
@ %bb.25:
.LCPI0_102:
	.long	56                      @ 0x38
	.long	0                       @ 0x0
	.long	56                      @ 0x38
	.long	0                       @ 0x0
	.p2align	4
@ %bb.26:
.LCPI0_103:
	.long	4                       @ 0x4
	.long	0                       @ 0x0
	.long	4                       @ 0x4
	.long	0                       @ 0x0
	.p2align	4
@ %bb.27:
.LCPI0_104:
	.long	3                       @ 0x3
	.long	0                       @ 0x0
	.long	3                       @ 0x3
	.long	0                       @ 0x0
	.p2align	4
@ %bb.28:
.LCPI0_105:
	.long	72                      @ 0x48
	.long	0                       @ 0x0
	.long	1                       @ 0x1
	.long	0                       @ 0x0
	.p2align	4
@ %bb.29:
.LCPI0_106:
	.long	4                       @ 0x4
	.long	0                       @ 0x0
	.long	1                       @ 0x1
	.long	0                       @ 0x0
	.p2align	4
@ %bb.30:
.LCPI0_107:
	.long	1                       @ 0x1
	.long	0                       @ 0x0
	.long	1                       @ 0x1
	.long	0                       @ 0x0
	.p2align	4
@ %bb.31:
.LCPI0_108:
	.long	2                       @ 0x2
	.long	0                       @ 0x0
	.long	2                       @ 0x2
	.long	0                       @ 0x0
	.p2align	4
@ %bb.32:
.LCPI0_109:
	.long	1                       @ 0x1
	.long	0                       @ 0x0
	.long	24                      @ 0x18
	.long	0                       @ 0x0
	.p2align	4
@ %bb.33:
.LCPI0_110:
	.long	1                       @ 0x1
	.long	0                       @ 0x0
	.long	72                      @ 0x48
	.long	0                       @ 0x0
	.p2align	4
@ %bb.34:
.LCPI0_111:
	.long	24                      @ 0x18
	.long	0                       @ 0x0
	.long	72                      @ 0x48
	.long	0                       @ 0x0
	.p2align	4
@ %bb.35:
.LCPI0_112:
	.long	4                       @ 0x4
	.long	0                       @ 0x0
	.long	1                       @ 0x1
	.long	0                       @ 0x0
	.p2align	2
.LBB0_36:                               @ %wrapBB
	str	r0, [r11, #-2452]       @ 4-byte Spill
	add	r0, r1, #560
	add	r0, r0, #4096
	str	r0, [r11, #-2448]       @ 4-byte Spill
	add	r0, r1, #700
	add	r0, r0, #5120
	str	r0, [r11, #-2444]       @ 4-byte Spill
	add	r0, r1, #840
	add	r0, r0, #6144
	str	r0, [r11, #-2440]       @ 4-byte Spill
	add	r0, r1, #980
	ldr	r1, [r11, #-1368]       @ 4-byte Reload
	add	r0, r0, #7168
	str	r0, [r11, #-2424]       @ 4-byte Spill
	ldr	r0, [r11, #-1504]       @ 4-byte Reload
	add	r0, r0, #16
	str	r0, [r11, #-1320]       @ 4-byte Spill
	ldr	r0, [r11, #-1520]       @ 4-byte Reload
	add	r0, r0, #16
	str	r0, [r11, #-1480]       @ 4-byte Spill
	ldr	r0, [r11, #-1528]       @ 4-byte Reload
	add	r0, r0, #16
	str	r0, [r11, #-1948]       @ 4-byte Spill
	ldr	r0, [r11, #-1584]       @ 4-byte Reload
	add	r0, r0, #16
	str	r0, [r11, #-2248]       @ 4-byte Spill
	ldr	r0, [r11, #-1588]       @ 4-byte Reload
	add	r0, r0, #16
	str	r0, [r11, #-2232]       @ 4-byte Spill
	ldr	r0, [r11, #-1608]       @ 4-byte Reload
	add	r0, r0, #16
	str	r0, [r11, #-2392]       @ 4-byte Spill
	ldr	r0, [r11, #-1384]       @ 4-byte Reload
	add	r0, r0, #16
	str	r0, [r11, #-2052]       @ 4-byte Spill
	ldr	r0, [r11, #-1548]       @ 4-byte Reload
	add	r0, r0, #16
	str	r0, [r11, #-2040]       @ 4-byte Spill
	add	r0, r1, #16
	str	r0, [r11, #-1976]       @ 4-byte Spill
	add	r0, r1, #1040
	str	r0, [r11, #-1972]       @ 4-byte Spill
	ldr	r0, [r11, #-1448]       @ 4-byte Reload
	add	r0, r0, #16
	str	r0, [r11, #-2284]       @ 4-byte Spill
	ldr	r0, [r11, #-1500]       @ 4-byte Reload
	add	r0, r0, #16
	str	r0, [r11, #-1352]       @ 4-byte Spill
	ldr	r0, [r11, #-1544]       @ 4-byte Reload
	add	r0, r0, #16
	str	r0, [r11, #-2044]       @ 4-byte Spill
	ldr	r0, [r11, #-1572]       @ 4-byte Reload
	add	r0, r0, #16
	str	r0, [r11, #-2152]       @ 4-byte Spill
	ldr	r0, [r11, #-1576]       @ 4-byte Reload
	add	r0, r0, #16
	str	r0, [r11, #-2148]       @ 4-byte Spill
	ldr	r0, [r11, #-1516]       @ 4-byte Reload
	add	r0, r0, #16
	str	r0, [r11, #-1660]       @ 4-byte Spill
	ldr	r0, [r11, #-1416]       @ 4-byte Reload
	add	r0, r0, #16
	str	r0, [r11, #-2180]       @ 4-byte Spill
	ldr	r0, [r11, #-1400]       @ 4-byte Reload
	add	r0, r0, #16
	str	r0, [r11, #-2116]       @ 4-byte Spill
	ldr	r0, [r11, #-1532]       @ 4-byte Reload
	add	r0, r0, #16
	str	r0, [r11, #-1952]       @ 4-byte Spill
	ldr	r0, [r11, #-1560]       @ 4-byte Reload
	add	r0, r0, #16
	str	r0, [r11, #-2096]       @ 4-byte Spill
	ldr	r0, [r11, #-1556]       @ 4-byte Reload
	add	r0, r0, #16
	str	r0, [r11, #-2100]       @ 4-byte Spill
.LBB0_37:                               @ %cond40.preheader.i
                                        @ =>This Inner Loop Header: Depth=1
	add	r0, r6, r8
	subs	r7, r7, #1
	vldr	s0, [r0]
	add	r0, r2, r8
	vmax.f32	d0, d0, d11
	add	r8, r8, r10
	vstr	s0, [r0]
	bne	.LBB0_37
@ %bb.38:                               @ %exit39.i
	mov	r4, sp
	sub	r0, r4, #16
	str	r0, [r11, #-2740]       @ 4-byte Spill
	mov	sp, r0
	sub	r3, sp, #32
	mov	sp, r3
	mov	r1, sp
	sub	lr, r1, #104
	mov	sp, lr
	mov	r7, sp
	sub	r0, r7, #8
	str	r0, [r11, #-2744]       @ 4-byte Spill
	mov	sp, r0
	mov	r9, sp
	sub	r8, r9, #56
	mov	sp, r8
	ldr	r6, [r11, #-2360]       @ 4-byte Reload
	mov	r10, #6
	str	r6, [r4, #-16]
	adr	r0, .LCPI0_101
	vld1.64	{d16, d17}, [r0:128]
	adr	r0, .LCPI0_100
	sub	r12, r1, #56
	vld1.64	{d18, d19}, [r0:128]
	mov	r0, lr
	vst1.64	{d18, d19}, [r0]!
	str	r2, [r4, #-12]
	sub	r2, r1, #72
	strb	r10, [r7, #-8]
	vst1.64	{d16, d17}, [r0]
	adr	r0, .LCPI0_102
	vld1.64	{d16, d17}, [r0:128]
	adr	r0, .LCPI0_103
	vld1.64	{d20, d21}, [r0:128]
	mov	r0, r3
	vst1.64	{d16, d17}, [r12]
	vst1.64	{d18, d19}, [r2]
	ldr	r2, [r11, #-2388]       @ 4-byte Reload
	strb	r10, [r7, #-7]
	vst1.64	{d20, d21}, [r0]!
	str	r2, [r4, #-8]
	adr	r2, .LCPI0_104
	vld1.64	{d16, d17}, [r2:128]
	sub	r2, r1, #24
	strb	r10, [r7, #-6]
	vst1.64	{d16, d17}, [r2]
	adr	r2, .LCPI0_105
	vld1.64	{d16, d17}, [r2:128]
	sub	r2, r1, #40
	vst1.64	{d16, d17}, [r2]
	ldr	r2, [r11, #-2384]       @ 4-byte Reload
	str	r2, [r4, #-4]
	mov	r4, #0
	strb	r10, [r7, #-5]
	adr	r2, .LCPI0_106
	vld1.64	{d16, d17}, [r2:128]
	mov	r7, #72
	vst1.64	{d16, d17}, [r0]
	str	r7, [r1, #-8]
	str	r4, [r1, #-4]
	adr	r0, .LCPI0_107
	vld1.64	{d16, d17}, [r0:128]
	sub	r0, r9, #24
	vst1.64	{d16, d17}, [r0]
	adr	r0, .LCPI0_108
	vld1.64	{d18, d19}, [r0:128]
	mov	r0, r8
	str	r7, [r9, #-8]
	str	r4, [r9, #-4]
	vst1.64	{d18, d19}, [r0]!
	vst1.64	{d16, d17}, [r0]
	sub	sp, sp, #24
	ldr	r1, [r11, #-2744]       @ 4-byte Reload
	mov	r0, #7
	ldr	r2, [r11, #-2740]       @ 4-byte Reload
	str	r1, [sp, #4]
	add	r1, sp, #8
	str	lr, [sp]
	stm	r1, {r0, r4, r8}
	mov	r0, #4
	mov	r1, #0
	bl	nnc_aten_conv2d
	mov	r1, r6
	add	sp, sp, #24
	mov	r2, #180
	ldr	r6, [r11, #-2328]       @ 4-byte Reload
	orr	r2, r2, #3072
.LBB0_39:                               @ %cond49.preheader.i
                                        @ =>This Inner Loop Header: Depth=1
	add	r0, r1, r4
	subs	r7, r7, #1
	vldr	s0, [r0]
	add	r0, r6, r4
	vmax.f32	d0, d0, d11
	add	r4, r4, r2
	vstr	s0, [r0]
	bne	.LBB0_39
@ %bb.40:                               @ %exit48.i
	adr	r0, .LCPI0_101
	sub	lr, r11, #312
	vld1.64	{d12, d13}, [r0:128]
	adr	r0, .LCPI0_109
	sub	lr, lr, #2048
	mov	r4, sp
	vld1.64	{d16, d17}, [r0:128]
	sub	r0, r4, #16
	vstmia	lr, {d16, d17}          @ 16-byte Spill
	str	r0, [r11, #-2384]       @ 4-byte Spill
	mov	sp, r0
	sub	r3, sp, #32
	mov	sp, r3
	mov	r1, sp
	sub	lr, r1, #104
	mov	sp, lr
	mov	r7, sp
	sub	r12, r7, #8
	mov	sp, r12
	mov	r10, sp
	sub	r9, r10, #56
	mov	sp, r9
	ldr	r0, [r11, #-1336]       @ 4-byte Reload
	mov	r2, #6
	str	r0, [r4, #-16]
	mov	r0, lr
	vst1.64	{d16, d17}, [r0]!
	sub	r8, r1, #56
	strb	r2, [r7, #-8]
	vst1.64	{d12, d13}, [r0]
	str	r6, [r4, #-12]
	adr	r0, .LCPI0_103
	vld1.64	{d16, d17}, [r0:128]
	sub	r0, r11, #280
	sub	r0, r0, #2048
	strb	r2, [r7, #-7]
	vstmia	r0, {d16, d17}          @ 16-byte Spill
	mov	r0, r3
	vst1.64	{d16, d17}, [r0]!
	vst1.64	{d12, d13}, [r8]
	adr	r6, .LCPI0_110
	vld1.64	{d16, d17}, [r6:128]
	sub	r6, r1, #72
	vst1.64	{d16, d17}, [r6]
	ldr	r6, [r11, #-2380]       @ 4-byte Reload
	str	r6, [r4, #-8]
	adr	r6, .LCPI0_107
	vld1.64	{d14, d15}, [r6:128]
	sub	r6, r1, #24
	strb	r2, [r7, #-6]
	vst1.64	{d14, d15}, [r6]
	adr	r6, .LCPI0_111
	vld1.64	{d16, d17}, [r6:128]
	sub	r6, r1, #40
	vst1.64	{d16, d17}, [r6]
	ldr	r6, [r11, #-2376]       @ 4-byte Reload
	strb	r2, [r7, #-5]
	sub	r2, r11, #328
	str	r6, [r4, #-4]
	adr	r4, .LCPI0_112
	vld1.64	{d16, d17}, [r4:128]
	mov	r4, #0
	sub	r2, r2, #2048
	vst1.64	{d16, d17}, [r0]
	mov	r0, #24
	stmdb	r1, {r0, r4}
	sub	r0, r10, #24
	vst1.64	{d14, d15}, [r0]
	mov	r0, #1
	vstmia	r2, {d16, d17}          @ 16-byte Spill
	vmov.i32	q8, #0x0
	stmdb	r10, {r0, r4}
	mov	r0, r9
	vst1.64	{d14, d15}, [r0]!
	vst1.64	{d16, d17}, [r0]
	sub	sp, sp, #24
	ldr	r2, [r11, #-2384]       @ 4-byte Reload
	mov	r0, #7
	add	r1, sp, #8
	str	lr, [sp]
	str	r12, [sp, #4]
	stm	r1, {r0, r4, r9}
	mov	r0, #4
	mov	r1, #0
	bl	nnc_aten_conv2d
	add	sp, sp, #24
	mov	r1, sp
	sub	r0, r1, #16
	str	r0, [r11, #-2380]       @ 4-byte Spill
	mov	sp, r0
	sub	r3, sp, #32
	mov	sp, r3
	mov	r10, sp
	sub	lr, r10, #104
	mov	sp, lr
	mov	r7, sp
	sub	r12, r7, #8
	mov	sp, r12
	mov	r8, sp
	sub	r9, r8, #56
	mov	sp, r9
	ldr	r0, [r11, #-1656]       @ 4-byte Reload
	str	r0, [r1, #-16]
	adr	r6, .LCPI0_113
	vld1.64	{d16, d17}, [r6:128]
	mov	r6, lr
	mov	r0, #6
	vst1.64	{d16, d17}, [r6]!
	strb	r0, [r7, #-8]
	strb	r0, [r7, #-7]
	sub	r0, r11, #280
	ldr	r2, [r11, #-1336]       @ 4-byte Reload
	sub	r0, r0, #2048
	vst1.64	{d12, d13}, [r6]
	mov	r6, r3
	str	r2, [r1, #-12]
	mov	r2, #6
	str	r4, [r11, #-100]
	sub	r4, r11, #312
	vldmia	r0, {d16, d17}          @ 16-byte Reload
	sub	r4, r4, #2048
	sub	r0, r10, #56
	vst1.64	{d16, d17}, [r6]!
	vldmia	r4, {d16, d17}          @ 16-byte Reload
	vst1.64	{d12, d13}, [r0]
	sub	r0, r10, #72
	ldr	r4, [r11, #-100]
	vst1.64	{d16, d17}, [r0]
	ldr	r0, [r11, #-2336]       @ 4-byte Reload
	str	r0, [r1, #-8]
	sub	r0, r10, #24
	strb	r2, [r7, #-6]
	vst1.64	{d14, d15}, [r0]
	adr	r0, .LCPI0_114
	vld1.64	{d16, d17}, [r0:128]
	sub	r0, r10, #40
	vst1.64	{d16, d17}, [r0]
	ldr	r0, [r11, #-2332]       @ 4-byte Reload
	str	r0, [r1, #-4]
	sub	r0, r11, #328
	sub	r0, r0, #2048
	strb	r2, [r7, #-5]
	mov	r7, #88
	str	r4, [r10, #-4]
	vldmia	r0, {d16, d17}          @ 16-byte Reload
	sub	r0, r8, #24
	vst1.64	{d14, d15}, [r0]
	mov	r0, #1
	vst1.64	{d16, d17}, [r6]
	vmov.i32	q8, #0x0
	stmdb	r8, {r0, r4}
	mov	r0, r9
	vst1.64	{d14, d15}, [r0]!
	str	r7, [r10, #-8]
	vst1.64	{d16, d17}, [r0]
	sub	sp, sp, #24
	ldr	r2, [r11, #-2380]       @ 4-byte Reload
	mov	r0, #7
	add	r1, sp, #8
	str	lr, [sp]
	str	r12, [sp, #4]
	stm	r1, {r0, r4, r9}
	mov	r0, #4
	mov	r1, #0
	bl	nnc_aten_conv2d
	mov	r3, #180
	ldr	r2, [r11, #-1656]       @ 4-byte Reload
	orr	r3, r3, #3072
	add	sp, sp, #24
	ldr	r1, [r11, #-2296]       @ 4-byte Reload
	b	.LBB0_51
	.p2align	4
@ %bb.41:
.LCPI0_113:
	.long	1                       @ 0x1
	.long	0                       @ 0x0
	.long	88                      @ 0x58
	.long	0                       @ 0x0
	.p2align	4
@ %bb.42:
.LCPI0_114:
	.long	88                      @ 0x58
	.long	0                       @ 0x0
	.long	24                      @ 0x18
	.long	0                       @ 0x0
	.p2align	4
@ %bb.43:
.LCPI0_115:
	.long	28                      @ 0x1c
	.long	0                       @ 0x0
	.long	28                      @ 0x1c
	.long	0                       @ 0x0
	.p2align	4
@ %bb.44:
.LCPI0_116:
	.long	4                       @ 0x4
	.long	0                       @ 0x0
	.long	4                       @ 0x4
	.long	0                       @ 0x0
	.p2align	4
@ %bb.45:
.LCPI0_117:
	.long	3                       @ 0x3
	.long	0                       @ 0x0
	.long	3                       @ 0x3
	.long	0                       @ 0x0
	.p2align	4
@ %bb.46:
.LCPI0_118:
	.long	88                      @ 0x58
	.long	0                       @ 0x0
	.long	1                       @ 0x1
	.long	0                       @ 0x0
	.p2align	4
@ %bb.47:
.LCPI0_119:
	.long	4                       @ 0x4
	.long	0                       @ 0x0
	.long	1                       @ 0x1
	.long	0                       @ 0x0
	.p2align	4
@ %bb.48:
.LCPI0_120:
	.long	1                       @ 0x1
	.long	0                       @ 0x0
	.long	1                       @ 0x1
	.long	0                       @ 0x0
	.p2align	4
@ %bb.49:
.LCPI0_121:
	.long	1                       @ 0x1
	.long	0                       @ 0x0
	.long	24                      @ 0x18
	.long	0                       @ 0x0
	.p2align	4
@ %bb.50:
.LCPI0_122:
	.long	24                      @ 0x18
	.long	0                       @ 0x0
	.long	88                      @ 0x58
	.long	0                       @ 0x0
	.p2align	2
.LBB0_51:                               @ %cond58.preheader.i
                                        @ =>This Inner Loop Header: Depth=1
	add	r0, r2, r4
	subs	r7, r7, #1
	vldr	s0, [r0]
	add	r0, r1, r4
	vmax.f32	d0, d0, d11
	add	r4, r4, r3
	vstr	s0, [r0]
	bne	.LBB0_51
@ %bb.52:                               @ %exit57.i
	mov	r4, sp
	sub	r2, r4, #16
	mov	sp, r2
	sub	r3, sp, #32
	mov	sp, r3
	mov	r0, r1
	mov	r1, sp
	sub	lr, r1, #104
	mov	sp, lr
	mov	r7, sp
	sub	r12, r7, #8
	mov	sp, r12
	mov	r10, sp
	sub	r8, r10, #56
	mov	sp, r8
	ldr	r6, [r11, #-1640]       @ 4-byte Reload
	mov	r9, #6
	str	r6, [r4, #-16]
	adr	r6, .LCPI0_115
	vld1.64	{d16, d17}, [r6:128]
	adr	r6, .LCPI0_113
	vld1.64	{d18, d19}, [r6:128]
	mov	r6, lr
	vst1.64	{d18, d19}, [r6]!
	str	r0, [r4, #-12]
	sub	r0, r1, #56
	strb	r9, [r7, #-8]
	vst1.64	{d16, d17}, [r6]
	adr	r6, .LCPI0_116
	vst1.64	{d16, d17}, [r0]
	sub	r0, r1, #72
	vld1.64	{d20, d21}, [r6:128]
	mov	r6, r3
	vst1.64	{d18, d19}, [r0]
	ldr	r0, [r11, #-2304]       @ 4-byte Reload
	strb	r9, [r7, #-7]
	vst1.64	{d20, d21}, [r6]!
	str	r0, [r4, #-8]
	adr	r0, .LCPI0_117
	vld1.64	{d16, d17}, [r0:128]
	sub	r0, r1, #24
	strb	r9, [r7, #-6]
	vst1.64	{d16, d17}, [r0]
	adr	r0, .LCPI0_118
	vld1.64	{d16, d17}, [r0:128]
	sub	r0, r1, #40
	vst1.64	{d16, d17}, [r0]
	ldr	r0, [r11, #-2300]       @ 4-byte Reload
	str	r0, [r4, #-4]
	mov	r4, #0
	strb	r9, [r7, #-5]
	adr	r0, .LCPI0_119
	vld1.64	{d16, d17}, [r0:128]
	mov	r7, #88
	vst1.64	{d16, d17}, [r6]
	str	r7, [r1, #-8]
	str	r4, [r1, #-4]
	adr	r0, .LCPI0_120
	vld1.64	{d16, d17}, [r0:128]
	sub	r0, r10, #24
	vst1.64	{d16, d17}, [r0]
	mov	r0, r8
	str	r7, [r10, #-8]
	str	r4, [r10, #-4]
	vst1.64	{d16, d17}, [r0]!
	vst1.64	{d16, d17}, [r0]
	sub	sp, sp, #24
	mov	r0, #7
	add	r1, sp, #8
	str	lr, [sp]
	str	r12, [sp, #4]
	stm	r1, {r0, r4, r8}
	mov	r0, #4
	mov	r1, #0
	bl	nnc_aten_conv2d
	mov	r3, #180
	ldr	r2, [r11, #-1640]       @ 4-byte Reload
	orr	r3, r3, #3072
	add	sp, sp, #24
	ldr	r1, [r11, #-2280]       @ 4-byte Reload
.LBB0_53:                               @ %cond67.preheader.i
                                        @ =>This Inner Loop Header: Depth=1
	add	r0, r2, r4
	subs	r7, r7, #1
	vldr	s0, [r0]
	add	r0, r1, r4
	vmax.f32	d0, d0, d11
	add	r4, r4, r3
	vstr	s0, [r0]
	bne	.LBB0_53
@ %bb.54:                               @ %exit66.i
	adr	r0, .LCPI0_115
	sub	lr, r11, #616
	vld1.64	{d12, d13}, [r0:128]
	adr	r0, .LCPI0_121
	mov	r10, sp
	sub	r2, r10, #16
	vld1.64	{d16, d17}, [r0:128]
	sub	lr, lr, #1024
	vstmia	lr, {d16, d17}          @ 16-byte Spill
	mov	sp, r2
	sub	r3, sp, #32
	mov	sp, r3
	mov	r7, sp
	sub	lr, r7, #104
	mov	sp, lr
	mov	r4, sp
	sub	r12, r4, #8
	mov	sp, r12
	mov	r8, sp
	sub	r9, r8, #56
	mov	sp, r9
	mov	r6, lr
	ldr	r0, [r11, #-1464]       @ 4-byte Reload
	vst1.64	{d16, d17}, [r6]!
	str	r0, [r10, #-16]
	mov	r0, #6
	str	r1, [r10, #-12]
	sub	r1, r11, #632
	strb	r0, [r4, #-8]
	sub	r1, r1, #1024
	vst1.64	{d12, d13}, [r6]
	adr	r6, .LCPI0_116
	vld1.64	{d16, d17}, [r6:128]
	mov	r6, r3
	strb	r0, [r4, #-7]
	sub	r0, r7, #56
	vstmia	r1, {d16, d17}          @ 16-byte Spill
	mov	r1, #6
	vst1.64	{d16, d17}, [r6]!
	vst1.64	{d12, d13}, [r0]
	adr	r0, .LCPI0_113
	vld1.64	{d16, d17}, [r0:128]
	sub	r0, r7, #72
	vst1.64	{d16, d17}, [r0]
	ldr	r0, [r11, #-2292]       @ 4-byte Reload
	str	r0, [r10, #-8]
	adr	r0, .LCPI0_120
	vld1.64	{d14, d15}, [r0:128]
	sub	r0, r7, #24
	strb	r1, [r4, #-6]
	vst1.64	{d14, d15}, [r0]
	adr	r0, .LCPI0_122
	vld1.64	{d16, d17}, [r0:128]
	sub	r0, r7, #40
	vst1.64	{d16, d17}, [r0]
	ldr	r0, [r11, #-2288]       @ 4-byte Reload
	strb	r1, [r4, #-5]
	mov	r4, #0
	str	r0, [r10, #-4]
	adr	r0, .LCPI0_119
	vld1.64	{d16, d17}, [r0:128]
	sub	r0, r11, #232
	sub	r0, r0, #2048
	vst1.64	{d16, d17}, [r6]
	vstmia	r0, {d16, d17}          @ 16-byte Spill
	mov	r0, #24
	vmov.i32	q8, #0x0
	stmdb	r7, {r0, r4}
	sub	r0, r8, #24
	vst1.64	{d14, d15}, [r0]
	mov	r0, #1
	stmdb	r8, {r0, r4}
	mov	r0, r9
	vst1.64	{d14, d15}, [r0]!
	vst1.64	{d16, d17}, [r0]
	sub	sp, sp, #24
	mov	r0, #7
	add	r1, sp, #8
	str	lr, [sp]
	str	r12, [sp, #4]
	stm	r1, {r0, r4, r9}
	mov	r0, #4
	mov	r1, #0
	bl	nnc_aten_conv2d
	add	sp, sp, #24
	ldr	r0, [r11, #-1464]       @ 4-byte Reload
	mov	r1, sp
	ldr	r10, [r11, #-2264]      @ 4-byte Reload
	vldr	s0, [r0]
	ldr	r0, [r11, #-1336]       @ 4-byte Reload
	vldr	s2, [r0]
	ldr	r0, [r11, #-2644]       @ 4-byte Reload
	vadd.f32	s0, s2, s0
	vstr	s0, [r10]
	vldr	s0, [r0]
	ldr	r0, [r11, #-2736]       @ 4-byte Reload
	vldr	s2, [r0]
	ldr	r0, [r11, #-2552]       @ 4-byte Reload
	vadd.f32	s0, s2, s0
	vstr	s0, [r0]
	ldr	r0, [r11, #-2640]       @ 4-byte Reload
	vldr	s0, [r0]
	ldr	r0, [r11, #-2732]       @ 4-byte Reload
	vldr	s2, [r0]
	ldr	r0, [r11, #-2548]       @ 4-byte Reload
	vadd.f32	s0, s2, s0
	vstr	s0, [r0]
	ldr	r0, [r11, #-2636]       @ 4-byte Reload
	vldr	s0, [r0]
	ldr	r0, [r11, #-2728]       @ 4-byte Reload
	vldr	s2, [r0]
	ldr	r0, [r11, #-2544]       @ 4-byte Reload
	vadd.f32	s0, s2, s0
	vstr	s0, [r0]
	ldr	r0, [r11, #-2632]       @ 4-byte Reload
	vldr	s0, [r0]
	ldr	r0, [r11, #-2724]       @ 4-byte Reload
	vldr	s2, [r0]
	ldr	r0, [r11, #-2540]       @ 4-byte Reload
	vadd.f32	s0, s2, s0
	vstr	s0, [r0]
	ldr	r0, [r11, #-2628]       @ 4-byte Reload
	vldr	s0, [r0]
	ldr	r0, [r11, #-2720]       @ 4-byte Reload
	vldr	s2, [r0]
	ldr	r0, [r11, #-2536]       @ 4-byte Reload
	vadd.f32	s0, s2, s0
	vstr	s0, [r0]
	ldr	r0, [r11, #-2624]       @ 4-byte Reload
	vldr	s0, [r0]
	ldr	r0, [r11, #-2716]       @ 4-byte Reload
	vldr	s2, [r0]
	ldr	r0, [r11, #-2532]       @ 4-byte Reload
	vadd.f32	s0, s2, s0
	vstr	s0, [r0]
	ldr	r0, [r11, #-2620]       @ 4-byte Reload
	vldr	s0, [r0]
	ldr	r0, [r11, #-2712]       @ 4-byte Reload
	vldr	s2, [r0]
	ldr	r0, [r11, #-2528]       @ 4-byte Reload
	vadd.f32	s0, s2, s0
	vstr	s0, [r0]
	ldr	r0, [r11, #-2616]       @ 4-byte Reload
	vldr	s0, [r0]
	ldr	r0, [r11, #-2708]       @ 4-byte Reload
	vldr	s2, [r0]
	ldr	r0, [r11, #-2524]       @ 4-byte Reload
	vadd.f32	s0, s2, s0
	vstr	s0, [r0]
	ldr	r0, [r11, #-2612]       @ 4-byte Reload
	vldr	s0, [r0]
	ldr	r0, [r11, #-2704]       @ 4-byte Reload
	vldr	s2, [r0]
	ldr	r0, [r11, #-2520]       @ 4-byte Reload
	vadd.f32	s0, s2, s0
	vstr	s0, [r0]
	ldr	r0, [r11, #-2608]       @ 4-byte Reload
	vldr	s0, [r0]
	ldr	r0, [r11, #-2700]       @ 4-byte Reload
	vldr	s2, [r0]
	ldr	r0, [r11, #-2516]       @ 4-byte Reload
	vadd.f32	s0, s2, s0
	vstr	s0, [r0]
	ldr	r0, [r11, #-2604]       @ 4-byte Reload
	vldr	s0, [r0]
	ldr	r0, [r11, #-2696]       @ 4-byte Reload
	vldr	s2, [r0]
	ldr	r0, [r11, #-2512]       @ 4-byte Reload
	vadd.f32	s0, s2, s0
	vstr	s0, [r0]
	ldr	r0, [r11, #-2600]       @ 4-byte Reload
	vldr	s0, [r0]
	ldr	r0, [r11, #-2692]       @ 4-byte Reload
	vldr	s2, [r0]
	ldr	r0, [r11, #-2508]       @ 4-byte Reload
	vadd.f32	s0, s2, s0
	vstr	s0, [r0]
	ldr	r0, [r11, #-2596]       @ 4-byte Reload
	vldr	s0, [r0]
	ldr	r0, [r11, #-2688]       @ 4-byte Reload
	vldr	s2, [r0]
	ldr	r0, [r11, #-2504]       @ 4-byte Reload
	vadd.f32	s0, s2, s0
	vstr	s0, [r0]
	ldr	r0, [r11, #-2592]       @ 4-byte Reload
	vldr	s0, [r0]
	ldr	r0, [r11, #-2684]       @ 4-byte Reload
	vldr	s2, [r0]
	ldr	r0, [r11, #-2500]       @ 4-byte Reload
	vadd.f32	s0, s2, s0
	vstr	s0, [r0]
	ldr	r0, [r11, #-2588]       @ 4-byte Reload
	vldr	s0, [r0]
	ldr	r0, [r11, #-2680]       @ 4-byte Reload
	vldr	s2, [r0]
	ldr	r0, [r11, #-2496]       @ 4-byte Reload
	vadd.f32	s0, s2, s0
	vstr	s0, [r0]
	ldr	r0, [r11, #-2584]       @ 4-byte Reload
	vldr	s0, [r0]
	ldr	r0, [r11, #-2676]       @ 4-byte Reload
	vldr	s2, [r0]
	ldr	r0, [r11, #-2492]       @ 4-byte Reload
	vadd.f32	s0, s2, s0
	vstr	s0, [r0]
	ldr	r0, [r11, #-2580]       @ 4-byte Reload
	vldr	s0, [r0]
	ldr	r0, [r11, #-2672]       @ 4-byte Reload
	vldr	s2, [r0]
	ldr	r0, [r11, #-2488]       @ 4-byte Reload
	vadd.f32	s0, s2, s0
	vstr	s0, [r0]
	ldr	r0, [r11, #-2576]       @ 4-byte Reload
	vldr	s0, [r0]
	ldr	r0, [r11, #-2668]       @ 4-byte Reload
	vldr	s2, [r0]
	ldr	r0, [r11, #-2484]       @ 4-byte Reload
	vadd.f32	s0, s2, s0
	vstr	s0, [r0]
	ldr	r0, [r11, #-2572]       @ 4-byte Reload
	vldr	s0, [r0]
	ldr	r0, [r11, #-2664]       @ 4-byte Reload
	vldr	s2, [r0]
	ldr	r0, [r11, #-2480]       @ 4-byte Reload
	vadd.f32	s0, s2, s0
	vstr	s0, [r0]
	ldr	r0, [r11, #-2568]       @ 4-byte Reload
	vldr	s0, [r0]
	ldr	r0, [r11, #-2660]       @ 4-byte Reload
	vldr	s2, [r0]
	ldr	r0, [r11, #-2476]       @ 4-byte Reload
	vadd.f32	s0, s2, s0
	vstr	s0, [r0]
	ldr	r0, [r11, #-2564]       @ 4-byte Reload
	vldr	s0, [r0]
	ldr	r0, [r11, #-2656]       @ 4-byte Reload
	vldr	s2, [r0]
	ldr	r0, [r11, #-2472]       @ 4-byte Reload
	vadd.f32	s0, s2, s0
	vstr	s0, [r0]
	ldr	r0, [r11, #-2560]       @ 4-byte Reload
	vldr	s0, [r0]
	ldr	r0, [r11, #-2652]       @ 4-byte Reload
	vldr	s2, [r0]
	ldr	r0, [r11, #-2468]       @ 4-byte Reload
	vadd.f32	s0, s2, s0
	vstr	s0, [r0]
	ldr	r0, [r11, #-2556]       @ 4-byte Reload
	vldr	s0, [r0]
	ldr	r0, [r11, #-2648]       @ 4-byte Reload
	vldr	s2, [r0]
	ldr	r0, [r11, #-2464]       @ 4-byte Reload
	vadd.f32	s0, s2, s0
	vstr	s0, [r0]
	sub	r0, r1, #16
	str	r0, [r11, #-1336]       @ 4-byte Spill
	mov	sp, r0
	sub	r12, sp, #32
	mov	sp, r12
	mov	r9, sp
	sub	lr, r9, #104
	mov	sp, lr
	mov	r7, sp
	sub	r8, r7, #8
	mov	sp, r8
	mov	r0, sp
	sub	r3, r0, #56
	mov	sp, r3
	ldr	r2, [r11, #-1616]       @ 4-byte Reload
	str	r2, [r1, #-16]
	adr	r6, .LCPI0_123
	vld1.64	{d16, d17}, [r6:128]
	mov	r2, #6
	mov	r6, lr
	strb	r2, [r7, #-8]
	strb	r2, [r7, #-7]
	sub	r2, r11, #632
	vst1.64	{d16, d17}, [r6]!
	sub	r2, r2, #1024
	str	r10, [r1, #-12]
	sub	r10, r9, #56
	vst1.64	{d12, d13}, [r6]
	mov	r6, r12
	vldmia	r2, {d16, d17}          @ 16-byte Reload
	sub	r2, r9, #72
	vst1.64	{d12, d13}, [r10]
	sub	r10, r11, #616
	sub	r10, r10, #1024
	vst1.64	{d16, d17}, [r6]!
	vldmia	r10, {d16, d17}         @ 16-byte Reload
	mov	r10, #6
	strb	r10, [r7, #-6]
	vst1.64	{d16, d17}, [r2]
	ldr	r2, [r11, #-2208]       @ 4-byte Reload
	str	r2, [r1, #-8]
	sub	r2, r9, #24
	vst1.64	{d14, d15}, [r2]
	adr	r2, .LCPI0_124
	vld1.64	{d16, d17}, [r2:128]
	sub	r2, r9, #40
	vst1.64	{d16, d17}, [r2]
	ldr	r2, [r11, #-2204]       @ 4-byte Reload
	str	r2, [r1, #-4]
	sub	r1, r11, #232
	sub	r1, r1, #2048
	strb	r10, [r7, #-5]
	mov	r7, #96
	str	r4, [r9, #-4]
	vldmia	r1, {d16, d17}          @ 16-byte Reload
	sub	r1, r0, #24
	vst1.64	{d14, d15}, [r1]
	mov	r1, #1
	vst1.64	{d16, d17}, [r6]
	vmov.i32	q8, #0x0
	stmdb	r0, {r1, r4}
	mov	r0, r3
	vst1.64	{d14, d15}, [r0]!
	str	r7, [r9, #-8]
	vst1.64	{d16, d17}, [r0]
	sub	sp, sp, #24
	ldr	r2, [r11, #-1336]       @ 4-byte Reload
	mov	r0, #7
	str	r0, [sp, #8]
	mov	r0, #4
	str	r3, [sp, #16]
	mov	r1, #0
	mov	r3, r12
	str	lr, [sp]
	str	r8, [sp, #4]
	str	r4, [sp, #12]
	bl	nnc_aten_conv2d
	mov	r3, #180
	ldr	r2, [r11, #-1616]       @ 4-byte Reload
	orr	r3, r3, #3072
	add	sp, sp, #24
	ldr	r1, [r11, #-2192]       @ 4-byte Reload
	b	.LBB0_66
	.p2align	4
@ %bb.55:
.LCPI0_123:
	.long	1                       @ 0x1
	.long	0                       @ 0x0
	.long	96                      @ 0x60
	.long	0                       @ 0x0
	.p2align	4
@ %bb.56:
.LCPI0_124:
	.long	96                      @ 0x60
	.long	0                       @ 0x0
	.long	24                      @ 0x18
	.long	0                       @ 0x0
	.p2align	4
@ %bb.57:
.LCPI0_125:
	.long	14                      @ 0xe
	.long	0                       @ 0x0
	.long	14                      @ 0xe
	.long	0                       @ 0x0
	.p2align	4
@ %bb.58:
.LCPI0_126:
	.long	28                      @ 0x1c
	.long	0                       @ 0x0
	.long	28                      @ 0x1c
	.long	0                       @ 0x0
	.p2align	4
@ %bb.59:
.LCPI0_127:
	.long	4                       @ 0x4
	.long	0                       @ 0x0
	.long	4                       @ 0x4
	.long	0                       @ 0x0
	.p2align	4
@ %bb.60:
.LCPI0_128:
	.long	5                       @ 0x5
	.long	0                       @ 0x0
	.long	5                       @ 0x5
	.long	0                       @ 0x0
	.p2align	4
@ %bb.61:
.LCPI0_129:
	.long	96                      @ 0x60
	.long	0                       @ 0x0
	.long	1                       @ 0x1
	.long	0                       @ 0x0
	.p2align	4
@ %bb.62:
.LCPI0_130:
	.long	4                       @ 0x4
	.long	0                       @ 0x0
	.long	1                       @ 0x1
	.long	0                       @ 0x0
	.p2align	4
@ %bb.63:
.LCPI0_131:
	.long	1                       @ 0x1
	.long	0                       @ 0x0
	.long	1                       @ 0x1
	.long	0                       @ 0x0
	.p2align	4
@ %bb.64:
.LCPI0_132:
	.long	2                       @ 0x2
	.long	0                       @ 0x0
	.long	2                       @ 0x2
	.long	0                       @ 0x0
	.p2align	2
@ %bb.65:
.LCPI0_133:
	.long	0                       @ float 0
	.p2align	2
.LBB0_66:                               @ %cond85.preheader.i
                                        @ =>This Inner Loop Header: Depth=1
	add	r0, r2, r4
	subs	r7, r7, #1
	vldr	s0, [r0]
	add	r0, r1, r4
	add	r4, r4, r3
	vadd.f32	s2, s0, s16
	vmax.f32	d16, d1, d11
	vmin.f32	d1, d16, d9
	vmul.f32	s0, s0, s2
	vdiv.f32	s0, s0, s18
	vstr	s0, [r0]
	bne	.LBB0_66
@ %bb.67:                               @ %exit84.i
	sub	lr, r11, #312
	adr	r0, .LCPI0_125
	vld1.64	{d16, d17}, [r0:128]
	sub	lr, lr, #1024
	mov	r4, sp
	vstmia	lr, {d16, d17}          @ 16-byte Spill
	adr	r0, .LCPI0_123
	vld1.64	{d14, d15}, [r0:128]
	sub	r0, r4, #16
	str	r0, [r11, #-1616]       @ 4-byte Spill
	mov	sp, r0
	sub	r3, sp, #32
	mov	sp, r3
	mov	r6, sp
	sub	lr, r6, #104
	mov	sp, lr
	mov	r0, sp
	sub	r12, r0, #8
	mov	sp, r12
	mov	r10, sp
	sub	r9, r10, #56
	mov	sp, r9
	mov	r7, lr
	ldr	r8, [r11, #-2168]       @ 4-byte Reload
	vst1.64	{d14, d15}, [r7]!
	mov	r2, #6
	str	r8, [r4, #-16]
	str	r1, [r4, #-12]
	sub	r1, r11, #440
	strb	r2, [r0, #-8]
	sub	r1, r1, #1024
	vst1.64	{d16, d17}, [r7]
	adr	r7, .LCPI0_126
	vld1.64	{d16, d17}, [r7:128]
	adr	r7, .LCPI0_127
	vld1.64	{d18, d19}, [r7:128]
	mov	r7, r3
	vstmia	r1, {d18, d19}          @ 16-byte Spill
	sub	r1, r6, #56
	vst1.64	{d16, d17}, [r1]
	sub	r1, r6, #72
	vst1.64	{d14, d15}, [r1]
	ldr	r1, [r11, #-2200]       @ 4-byte Reload
	strb	r2, [r0, #-7]
	vst1.64	{d18, d19}, [r7]!
	str	r1, [r4, #-8]
	adr	r1, .LCPI0_128
	vld1.64	{d16, d17}, [r1:128]
	sub	r1, r6, #24
	strb	r2, [r0, #-6]
	vst1.64	{d16, d17}, [r1]
	adr	r1, .LCPI0_129
	vld1.64	{d16, d17}, [r1:128]
	sub	r1, r6, #40
	vst1.64	{d16, d17}, [r1]
	ldr	r1, [r11, #-2196]       @ 4-byte Reload
	str	r1, [r4, #-4]
	mov	r4, #0
	strb	r2, [r0, #-5]
	adr	r0, .LCPI0_130
	vld1.64	{d16, d17}, [r0:128]
	mov	r0, #96
	vst1.64	{d16, d17}, [r7]
	stmdb	r6, {r0, r4}
	adr	r1, .LCPI0_131
	vld1.64	{d12, d13}, [r1:128]
	sub	r1, r10, #24
	vst1.64	{d12, d13}, [r1]
	stmdb	r10, {r0, r4}
	adr	r0, .LCPI0_132
	mov	r10, r8
	vld1.64	{d16, d17}, [r0:128]
	mov	r0, r9
	vst1.64	{d16, d17}, [r0]!
	vst1.64	{d16, d17}, [r0]
	sub	sp, sp, #24
	ldr	r2, [r11, #-1616]       @ 4-byte Reload
	mov	r0, #7
	add	r1, sp, #8
	str	lr, [sp]
	str	r12, [sp, #4]
	stm	r1, {r0, r4, r9}
	mov	r0, #4
	mov	r1, #0
	bl	nnc_aten_conv2d
	add	sp, sp, #24
	mov	lr, sp
	sub	r0, lr, #8
	str	r0, [r11, #-1616]       @ 4-byte Spill
	mov	sp, r0
	sub	r3, sp, #16
	mov	sp, r3
	mov	r1, sp
	sub	r9, r1, #64
	mov	sp, r9
	mov	r6, sp
	sub	r12, r6, #8
	mov	sp, r12
	sub	r0, sp, #16
	mov	sp, r0
	ldr	r8, [r11, #-2188]       @ 4-byte Reload
	mov	r7, r9
	vst1.64	{d14, d15}, [r7]!
	mov	r2, #6
	stmdb	lr, {r8, r10}
	sub	lr, r11, #440
	sub	lr, lr, #1024
	vst1.64	{d12, d13}, [r7]
	sub	r7, r1, #16
	sub	r1, r1, #32
	vldmia	lr, {d16, d17}          @ 16-byte Reload
	sub	lr, r11, #312
	sub	lr, lr, #1024
	strb	r2, [r6, #-8]
	vst1.64	{d16, d17}, [r3]
	vldmia	lr, {d16, d17}          @ 16-byte Reload
	strb	r2, [r6, #-7]
	vst1.64	{d16, d17}, [r7]
	vst1.64	{d14, d15}, [r1]
	vst1.64	{d12, d13}, [r0]
	sub	sp, sp, #24
	ldr	r2, [r11, #-1616]       @ 4-byte Reload
	mov	r1, #2
	stm	sp, {r9, r12}
	str	r1, [sp, #8]
	mov	r1, #0
	str	r0, [sp, #16]
	mov	r0, #2
	str	r4, [sp, #12]
	bl	nnc_aten_adaptive_avg_pool2d
	add	sp, sp, #24
	ldr	r6, [r11, #-2164]       @ 4-byte Reload
	mov	r0, #0
	ldr	r7, [r11, #-2184]       @ 4-byte Reload
	vldr	s0, [r8]
.LBB0_68:                               @ %body92.i
                                        @ =>This Loop Header: Depth=1
                                        @     Child Loop BB0_69 Depth 2
	vmov.f32	s2, s22
	mov	r1, r7
	str	r4, [r1, r0, lsl #2]!
	mov	r2, #0
.LBB0_69:                               @ %body95.i
                                        @   Parent Loop BB0_68 Depth=1
                                        @ =>  This Inner Loop Header: Depth=2
	add	r3, r5, r2
	add	r2, r2, #200
	cmp	r2, #9600
	vldr	s4, [r3]
	vldr	s6, [r3, #100]
	vmla.f32	s2, s0, s4
	vmla.f32	s2, s0, s6
	bne	.LBB0_69
@ %bb.70:                               @ %exit96.i
                                        @   in Loop: Header=BB0_68 Depth=1
	add	r0, r0, #1
	vstr	s2, [r1]
	cmp	r0, #24
	bne	.LBB0_68
@ %bb.71:                               @ %body98.preheader.i
	vldr	s0, [r7]
	vldr	s22, .LCPI0_133
	ldr	r0, [r11, #-1612]       @ 4-byte Reload
	vmax.f32	d7, d0, d11
	vorr	d0, d11, d11
	vldr	s2, [r7, #4]
	vmax.f32	d1, d1, d11
	vldr	s4, [r7, #8]
	vldr	s8, [r0]
	vldr	s10, [r0, #388]
	vmla.f32	s0, s14, s8
	vldr	s12, [r0, #776]
	vldr	s6, [r7, #12]
	ldr	r0, [r11, #-2460]       @ 4-byte Reload
	vmax.f32	d3, d3, d11
	ldr	r1, [r11, #-2392]       @ 4-byte Reload
	vldr	s8, [r0, #776]
	vmla.f32	s0, s2, s10
	vmax.f32	d1, d2, d11
	vldr	s4, [r0, #388]
	vmla.f32	s0, s2, s12
	vldr	s2, [r0]
	ldr	r0, [r11, #-2456]       @ 4-byte Reload
	vmla.f32	s0, s6, s2
	vldr	s2, [r7, #16]
	vmax.f32	d1, d1, d11
	vldr	s6, [r0, #776]
	vmla.f32	s0, s2, s4
	vldr	s2, [r7, #20]
	vmax.f32	d1, d1, d11
	vldr	s4, [r0, #388]
	vmla.f32	s0, s2, s8
	vldr	s8, [r7, #24]
	vmax.f32	d4, d4, d11
	vldr	s2, [r0]
	ldr	r0, [r11, #-2452]       @ 4-byte Reload
	vmla.f32	s0, s8, s2
	vldr	s2, [r7, #28]
	vmax.f32	d1, d1, d11
	vldr	s8, [r7, #36]
	vmax.f32	d4, d4, d11
	vmla.f32	s0, s2, s4
	vldr	s2, [r7, #32]
	vmax.f32	d1, d1, d11
	vldr	s4, [r0, #388]
	vmla.f32	s0, s2, s6
	vldr	s2, [r0]
	vldr	s6, [r0, #776]
	ldr	r0, [r11, #-2448]       @ 4-byte Reload
	vmla.f32	s0, s8, s2
	vldr	s2, [r7, #40]
	vmax.f32	d1, d1, d11
	vldr	s8, [r7, #48]
	vmax.f32	d4, d4, d11
	vmla.f32	s0, s2, s4
	vldr	s2, [r7, #44]
	vmax.f32	d1, d1, d11
	vldr	s4, [r0, #388]
	vmla.f32	s0, s2, s6
	vldr	s2, [r0]
	vldr	s6, [r0, #776]
	ldr	r0, [r11, #-2444]       @ 4-byte Reload
	vmla.f32	s0, s8, s2
	vldr	s2, [r7, #52]
	vmax.f32	d1, d1, d11
	vldr	s8, [r7, #60]
	vmax.f32	d4, d4, d11
	vmla.f32	s0, s2, s4
	vldr	s2, [r7, #56]
	vmax.f32	d1, d1, d11
	vldr	s4, [r0, #388]
	vmla.f32	s0, s2, s6
	vldr	s2, [r0]
	vldr	s6, [r0, #776]
	ldr	r0, [r11, #-2440]       @ 4-byte Reload
	vmla.f32	s0, s8, s2
	vldr	s2, [r7, #64]
	vmax.f32	d1, d1, d11
	vldr	s8, [r7, #72]
	vmax.f32	d4, d4, d11
	vmla.f32	s0, s2, s4
	vldr	s2, [r7, #68]
	vmax.f32	d1, d1, d11
	vldr	s4, [r0, #388]
	vmla.f32	s0, s2, s6
	vldr	s2, [r0]
	vldr	s6, [r0, #776]
	ldr	r0, [r11, #-2424]       @ 4-byte Reload
	vmla.f32	s0, s8, s2
	vldr	s2, [r7, #76]
	vmax.f32	d1, d1, d11
	vldr	s8, [r7, #84]
	vmax.f32	d4, d4, d11
	vmla.f32	s0, s2, s4
	vldr	s2, [r7, #80]
	vmax.f32	d1, d1, d11
	vldr	s4, [r0, #388]
	vmla.f32	s0, s2, s6
	vldr	s2, [r0]
	vldr	s6, [r0, #776]
	ldr	r0, [r11, #-1608]       @ 4-byte Reload
	vmla.f32	s0, s8, s2
	vldr	s2, [r7, #88]
	vmax.f32	d1, d1, d11
	vmla.f32	s0, s2, s4
	vldr	s2, [r7, #92]
	vmax.f32	d1, d1, d11
	vmla.f32	s0, s2, s6
	vadd.f32	s2, s0, s16
	vdup.32	q8, d0[0]
	vst1.32	{d16, d17}, [r0]
	add	r0, r1, #336
	vst1.32	{d16, d17}, [r0]
	add	r0, r1, #320
	vcmpe.f32	s2, #0
	vst1.32	{d16, d17}, [r0]
	add	r0, r1, #304
	vmrs	APSR_nzcv, fpscr
	vst1.32	{d16, d17}, [r0]
	add	r0, r1, #288
	vst1.32	{d16, d17}, [r0]
	add	r0, r1, #272
	vst1.32	{d16, d17}, [r0]
	add	r0, r1, #256
	vst1.32	{d16, d17}, [r0]
	add	r0, r1, #240
	vdiv.f32	s0, s2, s18
	vmax.f32	d1, d1, d11
	vst1.32	{d16, d17}, [r0]
	add	r0, r1, #224
	vmovmi.f32	s0, s22
	vst1.32	{d16, d17}, [r0]
	add	r0, r1, #208
	vst1.32	{d16, d17}, [r0]
	add	r0, r1, #192
	vcmpe.f32	s2, s18
	vmrs	APSR_nzcv, fpscr
	vst1.32	{d16, d17}, [r0]
	add	r0, r1, #176
	vst1.32	{d16, d17}, [r0]
	add	r0, r1, #160
	vst1.32	{d16, d17}, [r0]
	add	r0, r1, #144
	vst1.32	{d16, d17}, [r0]
	add	r0, r1, #128
	vst1.32	{d16, d17}, [r0]
	add	r0, r1, #112
	vst1.32	{d16, d17}, [r0]
	add	r0, r1, #96
	vst1.32	{d16, d17}, [r0]
	add	r0, r1, #80
	vst1.32	{d16, d17}, [r0]
	add	r0, r1, #64
	vst1.32	{d16, d17}, [r0]
	add	r0, r1, #48
	vst1.32	{d16, d17}, [r0]
	add	r0, r1, #32
	vmovgt.f32	s0, s20
	vst1.32	{d16, d17}, [r0]
	add	r0, r1, #16
	vst1.32	{d16, d17}, [r0]
	mov	r0, #352
	vst1.32	{d16, d17}, [r1], r0
	mov	r0, #96
	vst1.32	{d16, d17}, [r1]
	mov	r1, #0
.LBB0_72:                               @ %cond106.preheader.i
                                        @ =>This Inner Loop Header: Depth=1
	add	r2, r10, r1
	subs	r0, r0, #1
	vldr	s2, [r2]
	add	r2, r6, r1
	add	r1, r1, #844
	vmul.f32	s2, s0, s2
	vadd.f32	s4, s2, s16
	vmax.f32	d16, d2, d11
	vmin.f32	d2, d16, d9
	vmul.f32	s2, s2, s4
	vdiv.f32	s2, s2, s18
	vstr	s2, [r2]
	bne	.LBB0_72
@ %bb.73:                               @ %exit105.i
	adr	r0, .LCPI0_134
	sub	lr, r11, #312
	vld1.64	{d12, d13}, [r0:128]
	adr	r0, .LCPI0_135
	mov	r7, sp
	sub	r2, r7, #16
	vld1.64	{d16, d17}, [r0:128]
	sub	lr, lr, #1024
	vstmia	lr, {d16, d17}          @ 16-byte Spill
	mov	sp, r2
	sub	r3, sp, #32
	mov	sp, r3
	mov	r5, sp
	sub	lr, r5, #104
	mov	sp, lr
	mov	r4, sp
	sub	r12, r4, #8
	mov	sp, r12
	mov	r1, sp
	sub	r9, r1, #56
	mov	sp, r9
	mov	r0, lr
	ldr	r8, [r11, #-1580]       @ 4-byte Reload
	vst1.64	{d16, d17}, [r0]!
	mov	r10, #6
	str	r8, [r7, #-16]
	str	r6, [r7, #-12]
	sub	r6, r5, #56
	strb	r10, [r4, #-8]
	vst1.64	{d12, d13}, [r0]
	adr	r0, .LCPI0_136
	vld1.64	{d16, d17}, [r0:128]
	sub	r0, r11, #440
	sub	r0, r0, #1024
	strb	r10, [r4, #-7]
	vstmia	r0, {d16, d17}          @ 16-byte Spill
	mov	r0, r3
	vst1.64	{d16, d17}, [r0]!
	vst1.64	{d12, d13}, [r6]
	adr	r6, .LCPI0_137
	vld1.64	{d16, d17}, [r6:128]
	sub	r6, r5, #72
	vst1.64	{d16, d17}, [r6]
	ldr	r6, [r11, #-2176]       @ 4-byte Reload
	str	r6, [r7, #-8]
	adr	r6, .LCPI0_138
	vld1.64	{d14, d15}, [r6:128]
	sub	r6, r5, #24
	strb	r10, [r4, #-6]
	vst1.64	{d14, d15}, [r6]
	adr	r6, .LCPI0_139
	vld1.64	{d16, d17}, [r6:128]
	sub	r6, r5, #40
	vst1.64	{d16, d17}, [r6]
	ldr	r6, [r11, #-2172]       @ 4-byte Reload
	str	r6, [r7, #-4]
	strb	r10, [r4, #-5]
	adr	r4, .LCPI0_140
	vld1.64	{d16, d17}, [r4:128]
	sub	r4, r11, #584
	sub	r4, r4, #1024
	vst1.64	{d16, d17}, [r0]
	mov	r0, #40
	vstmia	r4, {d16, d17}          @ 16-byte Spill
	mov	r4, #0
	vmov.i32	q8, #0x0
	stmdb	r5, {r0, r4}
	sub	r0, r1, #24
	vst1.64	{d14, d15}, [r0]
	mov	r0, #1
	stmdb	r1, {r0, r4}
	mov	r0, r9
	vst1.64	{d14, d15}, [r0]!
	vst1.64	{d16, d17}, [r0]
	sub	sp, sp, #24
	mov	r0, #7
	add	r1, sp, #8
	str	lr, [sp]
	str	r12, [sp, #4]
	stm	r1, {r0, r4, r9}
	mov	r0, #4
	mov	r1, #0
	bl	nnc_aten_conv2d
	add	sp, sp, #24
	mov	r1, sp
	sub	r0, r1, #16
	str	r0, [r11, #-1612]       @ 4-byte Spill
	mov	sp, r0
	sub	r3, sp, #32
	mov	sp, r3
	mov	r6, sp
	sub	lr, r6, #104
	mov	sp, lr
	mov	r5, sp
	sub	r12, r5, #8
	mov	sp, r12
	mov	r2, sp
	sub	r9, r2, #56
	mov	sp, r9
	ldr	r10, [r11, #-2136]      @ 4-byte Reload
	mov	r0, #6
	str	r10, [r1, #-16]
	adr	r7, .LCPI0_141
	vld1.64	{d16, d17}, [r7:128]
	mov	r7, lr
	strb	r0, [r5, #-8]
	strb	r0, [r5, #-7]
	sub	r0, r11, #440
	vst1.64	{d16, d17}, [r7]!
	sub	r0, r0, #1024
	str	r8, [r1, #-12]
	sub	r8, r6, #56
	vst1.64	{d12, d13}, [r7]
	mov	r7, r3
	vldmia	r0, {d16, d17}          @ 16-byte Reload
	sub	r0, r6, #72
	vst1.64	{d12, d13}, [r8]
	sub	r8, r11, #312
	sub	r8, r8, #1024
	vst1.64	{d16, d17}, [r7]!
	vldmia	r8, {d16, d17}          @ 16-byte Reload
	mov	r8, #6
	strb	r8, [r5, #-6]
	vst1.64	{d16, d17}, [r0]
	ldr	r0, [r11, #-2160]       @ 4-byte Reload
	str	r0, [r1, #-8]
	sub	r0, r6, #24
	vst1.64	{d14, d15}, [r0]
	adr	r0, .LCPI0_142
	vld1.64	{d16, d17}, [r0:128]
	sub	r0, r6, #40
	vst1.64	{d16, d17}, [r0]
	ldr	r0, [r11, #-2156]       @ 4-byte Reload
	str	r0, [r1, #-4]
	sub	r0, r11, #584
	sub	r0, r0, #1024
	strb	r8, [r5, #-5]
	mov	r5, #240
	str	r4, [r6, #-4]
	vldmia	r0, {d16, d17}          @ 16-byte Reload
	sub	r0, r2, #24
	vst1.64	{d14, d15}, [r0]
	mov	r0, #1
	vst1.64	{d16, d17}, [r7]
	vmov.i32	q8, #0x0
	stmdb	r2, {r0, r4}
	mov	r0, r9
	vst1.64	{d14, d15}, [r0]!
	str	r5, [r6, #-8]
	vst1.64	{d16, d17}, [r0]
	sub	sp, sp, #24
	ldr	r2, [r11, #-1612]       @ 4-byte Reload
	mov	r0, #7
	add	r1, sp, #8
	str	lr, [sp]
	str	r12, [sp, #4]
	stm	r1, {r0, r4, r9}
	mov	r0, #4
	mov	r1, #0
	bl	nnc_aten_conv2d
	add	sp, sp, #24
	ldr	r7, [r11, #-2132]       @ 4-byte Reload
	b	.LBB0_86
	.p2align	4
@ %bb.74:
.LCPI0_134:
	.long	14                      @ 0xe
	.long	0                       @ 0x0
	.long	14                      @ 0xe
	.long	0                       @ 0x0
	.p2align	4
@ %bb.75:
.LCPI0_135:
	.long	1                       @ 0x1
	.long	0                       @ 0x0
	.long	40                      @ 0x28
	.long	0                       @ 0x0
	.p2align	4
@ %bb.76:
.LCPI0_136:
	.long	4                       @ 0x4
	.long	0                       @ 0x0
	.long	4                       @ 0x4
	.long	0                       @ 0x0
	.p2align	4
@ %bb.77:
.LCPI0_137:
	.long	1                       @ 0x1
	.long	0                       @ 0x0
	.long	96                      @ 0x60
	.long	0                       @ 0x0
	.p2align	4
@ %bb.78:
.LCPI0_138:
	.long	1                       @ 0x1
	.long	0                       @ 0x0
	.long	1                       @ 0x1
	.long	0                       @ 0x0
	.p2align	4
@ %bb.79:
.LCPI0_139:
	.long	40                      @ 0x28
	.long	0                       @ 0x0
	.long	96                      @ 0x60
	.long	0                       @ 0x0
	.p2align	4
@ %bb.80:
.LCPI0_140:
	.long	4                       @ 0x4
	.long	0                       @ 0x0
	.long	1                       @ 0x1
	.long	0                       @ 0x0
	.p2align	4
@ %bb.81:
.LCPI0_141:
	.long	1                       @ 0x1
	.long	0                       @ 0x0
	.long	240                     @ 0xf0
	.long	0                       @ 0x0
	.p2align	4
@ %bb.82:
.LCPI0_142:
	.long	240                     @ 0xf0
	.long	0                       @ 0x0
	.long	40                      @ 0x28
	.long	0                       @ 0x0
	.p2align	4
@ %bb.83:
.LCPI0_143:
	.long	5                       @ 0x5
	.long	0                       @ 0x0
	.long	5                       @ 0x5
	.long	0                       @ 0x0
	.p2align	4
@ %bb.84:
.LCPI0_144:
	.long	240                     @ 0xf0
	.long	0                       @ 0x0
	.long	1                       @ 0x1
	.long	0                       @ 0x0
	.p2align	4
@ %bb.85:
.LCPI0_145:
	.long	2                       @ 0x2
	.long	0                       @ 0x0
	.long	2                       @ 0x2
	.long	0                       @ 0x0
	.p2align	2
.LBB0_86:                               @ %cond115.preheader.i
                                        @ =>This Inner Loop Header: Depth=1
	add	r0, r10, r4
	subs	r5, r5, #1
	vldr	s0, [r0]
	add	r0, r7, r4
	add	r4, r4, #844
	vadd.f32	s2, s0, s16
	vmax.f32	d16, d1, d11
	vmin.f32	d1, d16, d9
	vmul.f32	s0, s0, s2
	vdiv.f32	s0, s0, s18
	vstr	s0, [r0]
	bne	.LBB0_86
@ %bb.87:                               @ %exit114.i
	adr	r0, .LCPI0_134
	mov	r6, sp
	vld1.64	{d16, d17}, [r0:128]
	adr	r0, .LCPI0_141
	sub	r2, r6, #16
	vld1.64	{d12, d13}, [r0:128]
	mov	sp, r2
	sub	r3, sp, #32
	mov	sp, r3
	mov	r4, sp
	sub	lr, r4, #104
	mov	sp, lr
	mov	r5, sp
	sub	r12, r5, #8
	mov	sp, r12
	mov	r1, sp
	sub	r8, r1, #56
	mov	sp, r8
	ldr	r0, [r11, #-1432]       @ 4-byte Reload
	sub	r9, r11, #440
	str	r0, [r6, #-16]
	mov	r0, lr
	vst1.64	{d12, d13}, [r0]!
	sub	r9, r9, #1024
	mov	r10, #6
	str	r7, [r6, #-12]
	sub	r7, r4, #56
	strb	r10, [r5, #-8]
	vstmia	r9, {d16, d17}          @ 16-byte Spill
	vst1.64	{d16, d17}, [r0]
	adr	r0, .LCPI0_136
	vld1.64	{d18, d19}, [r0:128]
	sub	r0, r11, #584
	sub	r0, r0, #1024
	vst1.64	{d16, d17}, [r7]
	sub	r7, r4, #72
	vstmia	r0, {d18, d19}          @ 16-byte Spill
	mov	r0, r3
	vst1.64	{d12, d13}, [r7]
	ldr	r7, [r11, #-2144]       @ 4-byte Reload
	strb	r10, [r5, #-7]
	vst1.64	{d18, d19}, [r0]!
	str	r7, [r6, #-8]
	adr	r7, .LCPI0_143
	vld1.64	{d16, d17}, [r7:128]
	sub	r7, r4, #24
	strb	r10, [r5, #-6]
	vst1.64	{d16, d17}, [r7]
	adr	r7, .LCPI0_144
	vld1.64	{d16, d17}, [r7:128]
	sub	r7, r4, #40
	vst1.64	{d16, d17}, [r7]
	ldr	r7, [r11, #-2140]       @ 4-byte Reload
	str	r7, [r6, #-4]
	mov	r6, #240
	strb	r10, [r5, #-5]
	adr	r5, .LCPI0_140
	vld1.64	{d16, d17}, [r5:128]
	mov	r5, #0
	vst1.64	{d16, d17}, [r0]
	str	r6, [r4, #-8]
	str	r5, [r4, #-4]
	adr	r0, .LCPI0_138
	vld1.64	{d14, d15}, [r0:128]
	sub	r0, r1, #24
	vst1.64	{d14, d15}, [r0]
	str	r6, [r1, #-8]
	str	r5, [r1, #-4]
	adr	r0, .LCPI0_145
	vld1.64	{d16, d17}, [r0:128]
	sub	r0, r11, #312
	sub	r0, r0, #1024
	vstmia	r0, {d16, d17}          @ 16-byte Spill
	mov	r0, r8
	vst1.64	{d14, d15}, [r0]!
	vst1.64	{d16, d17}, [r0]
	sub	sp, sp, #24
	mov	r0, #7
	add	r1, sp, #8
	str	lr, [sp]
	str	r12, [sp, #4]
	stm	r1, {r0, r5, r8}
	mov	r0, #4
	mov	r1, #0
	bl	nnc_aten_conv2d
	add	sp, sp, #24
	mov	lr, sp
	sub	r2, lr, #8
	mov	sp, r2
	sub	r3, sp, #16
	mov	sp, r3
	mov	r1, sp
	sub	r9, r1, #64
	mov	sp, r9
	mov	r4, sp
	sub	r12, r4, #8
	mov	sp, r12
	sub	r0, sp, #16
	mov	sp, r0
	mov	r7, r9
	ldr	r8, [r11, #-2128]       @ 4-byte Reload
	vst1.64	{d12, d13}, [r7]!
	vst1.64	{d14, d15}, [r7]
	ldr	r7, [r11, #-1432]       @ 4-byte Reload
	str	r8, [lr, #-8]
	str	r7, [lr, #-4]
	sub	lr, r11, #584
	sub	lr, lr, #1024
	sub	r7, r1, #16
	sub	r1, r1, #32
	strb	r10, [r4, #-8]
	vldmia	lr, {d16, d17}          @ 16-byte Reload
	sub	lr, r11, #440
	sub	lr, lr, #1024
	strb	r10, [r4, #-7]
	vst1.64	{d16, d17}, [r3]
	vldmia	lr, {d16, d17}          @ 16-byte Reload
	vst1.64	{d14, d15}, [r0]
	vst1.64	{d16, d17}, [r7]
	vst1.64	{d12, d13}, [r1]
	sub	sp, sp, #24
	mov	r1, #2
	stm	sp, {r9, r12}
	str	r1, [sp, #8]
	mov	r1, #0
	str	r0, [sp, #16]
	mov	r0, #2
	str	r5, [sp, #12]
	bl	nnc_aten_adaptive_avg_pool2d
	add	sp, sp, #24
	ldr	r0, [r11, #-1448]       @ 4-byte Reload
	vld1.32	{d16[], d17[]}, [r8:32]
	ldr	r1, [r11, #-2284]       @ 4-byte Reload
	vst1.32	{d16, d17}, [r0]
	add	r0, r1, #912
	vst1.32	{d16, d17}, [r0]
	add	r0, r1, #896
	vst1.32	{d16, d17}, [r0]
	add	r0, r1, #880
	vst1.32	{d16, d17}, [r0]
	add	r0, r1, #864
	vst1.32	{d16, d17}, [r0]
	add	r0, r1, #848
	vst1.32	{d16, d17}, [r0]
	add	r0, r1, #832
	vst1.32	{d16, d17}, [r0]
	add	r0, r1, #816
	vst1.32	{d16, d17}, [r0]
	add	r0, r1, #800
	vst1.32	{d16, d17}, [r0]
	add	r0, r1, #784
	vst1.32	{d16, d17}, [r0]
	add	r0, r1, #768
	vst1.32	{d16, d17}, [r0]
	add	r0, r1, #752
	vst1.32	{d16, d17}, [r0]
	add	r0, r1, #736
	vst1.32	{d16, d17}, [r0]
	add	r0, r1, #720
	vst1.32	{d16, d17}, [r0]
	add	r0, r1, #704
	vst1.32	{d16, d17}, [r0]
	add	r0, r1, #688
	vst1.32	{d16, d17}, [r0]
	add	r0, r1, #672
	vst1.32	{d16, d17}, [r0]
	add	r0, r1, #656
	vst1.32	{d16, d17}, [r0]
	add	r0, r1, #640
	vst1.32	{d16, d17}, [r0]
	add	r0, r1, #624
	vst1.32	{d16, d17}, [r0]
	add	r0, r1, #608
	vst1.32	{d16, d17}, [r0]
	add	r0, r1, #592
	vst1.32	{d16, d17}, [r0]
	add	r0, r1, #576
	vst1.32	{d16, d17}, [r0]
	add	r0, r1, #560
	vst1.32	{d16, d17}, [r0]
	add	r0, r1, #544
	vst1.32	{d16, d17}, [r0]
	add	r0, r1, #528
	vst1.32	{d16, d17}, [r0]
	add	r0, r1, #512
	vst1.32	{d16, d17}, [r0]
	add	r0, r1, #496
	vst1.32	{d16, d17}, [r0]
	add	r0, r1, #480
	vst1.32	{d16, d17}, [r0]
	add	r0, r1, #464
	vst1.32	{d16, d17}, [r0]
	add	r0, r1, #448
	vst1.32	{d16, d17}, [r0]
	add	r0, r1, #432
	vst1.32	{d16, d17}, [r0]
	add	r0, r1, #416
	vst1.32	{d16, d17}, [r0]
	add	r0, r1, #400
	vst1.32	{d16, d17}, [r0]
	add	r0, r1, #384
	vst1.32	{d16, d17}, [r0]
	add	r0, r1, #368
	vst1.32	{d16, d17}, [r0]
	add	r0, r1, #352
	vst1.32	{d16, d17}, [r0]
	add	r0, r1, #336
	vst1.32	{d16, d17}, [r0]
	add	r0, r1, #320
	vst1.32	{d16, d17}, [r0]
	add	r0, r1, #304
	vst1.32	{d16, d17}, [r0]
	add	r0, r1, #288
	vst1.32	{d16, d17}, [r0]
	add	r0, r1, #272
	vst1.32	{d16, d17}, [r0]
	add	r0, r1, #256
	vst1.32	{d16, d17}, [r0]
	add	r0, r1, #240
	vst1.32	{d16, d17}, [r0]
	add	r0, r1, #224
	vst1.32	{d16, d17}, [r0]
	add	r0, r1, #208
	vst1.32	{d16, d17}, [r0]
	add	r0, r1, #192
	vst1.32	{d16, d17}, [r0]
	add	r0, r1, #176
	vst1.32	{d16, d17}, [r0]
	add	r0, r1, #160
	vst1.32	{d16, d17}, [r0]
	add	r0, r1, #144
	vst1.32	{d16, d17}, [r0]
	add	r0, r1, #128
	vst1.32	{d16, d17}, [r0]
	add	r0, r1, #112
	vst1.32	{d16, d17}, [r0]
	add	r0, r1, #96
	vst1.32	{d16, d17}, [r0]
	add	r0, r1, #80
	vst1.32	{d16, d17}, [r0]
	add	r0, r1, #64
	vst1.32	{d16, d17}, [r0]
	add	r0, r1, #48
	vst1.32	{d16, d17}, [r0]
	add	r0, r1, #32
	vst1.32	{d16, d17}, [r0]
	add	r0, r1, #16
	vst1.32	{d16, d17}, [r0]
	mov	r0, #928
	vst1.32	{d16, d17}, [r1], r0
	mov	r0, sp
	sub	r2, r0, #16
	vst1.32	{d16, d17}, [r1]
	mov	sp, r2
	sub	lr, r11, #440
	adr	r1, .LCPI0_146
	sub	r3, sp, #24
	vld1.64	{d16, d17}, [r1:128]
	sub	lr, lr, #1024
	vstmia	lr, {d16, d17}          @ 16-byte Spill
	mov	sp, r3
	mov	lr, sp
	sub	r9, lr, #48
	mov	sp, r9
	mov	r4, sp
	sub	r12, r4, #8
	mov	sp, r12
	sub	r8, r11, #312
	mov	r7, r9
	sub	r8, r8, #1024
	vst1.64	{d16, d17}, [r7]!
	mov	r1, #6
	mov	r10, #6
	vldmia	r8, {d14, d15}          @ 16-byte Reload
	strb	r1, [r4, #-8]
	strb	r1, [r4, #-7]
	mov	r1, r3
	vst1.64	{d12, d13}, [r7]
	ldr	r8, [r11, #-1588]       @ 4-byte Reload
	ldr	r7, [r11, #-1448]       @ 4-byte Reload
	vst1.64	{d14, d15}, [r1]!
	str	r8, [r0, #-16]
	str	r7, [r0, #-12]
	ldr	r7, [r11, #-2124]       @ 4-byte Reload
	str	r7, [r0, #-8]
	mov	r0, #2
	strb	r10, [r4, #-6]
	stm	r1, {r0, r5}
	adr	r0, .LCPI0_147
	vld1.64	{d16, d17}, [r0:128]
	sub	r0, lr, #16
	vst1.64	{d16, d17}, [r0]
	sub	sp, sp, #24
	sub	r0, r11, #104
	stm	sp, {r9, r12}
	mov	r1, #0
	str	r0, [sp, #16]
	mov	r0, #3
	str	r5, [sp, #8]
	str	r5, [sp, #12]
	bl	nnc_aten_matmul
	add	sp, sp, #24
	vld1.32	{d16, d17}, [r8]
	mov	r2, #208
	vclt.f32	q9, q8, #0
	ldr	r3, [r11, #-2232]       @ 4-byte Reload
	vbic	q8, q8, q9
	ldr	r8, [r11, #-1584]       @ 4-byte Reload
	ldr	r1, [r11, #-2248]       @ 4-byte Reload
	mov	r0, r3
	vst1.32	{d16, d17}, [r8]
	mov	r7, r1
	vld1.32	{d16, d17}, [r0], r2
	vclt.f32	q9, q8, #0
	vbic	q8, q8, q9
	vst1.32	{d16, d17}, [r7], r2
	add	r2, r3, #16
	vld1.32	{d16, d17}, [r2]
	add	r2, r1, #16
	vclt.f32	q9, q8, #0
	vbic	q8, q8, q9
	vst1.32	{d16, d17}, [r2]
	add	r2, r3, #32
	vld1.32	{d16, d17}, [r2]
	add	r2, r1, #32
	vclt.f32	q9, q8, #0
	vbic	q8, q8, q9
	vst1.32	{d16, d17}, [r2]
	add	r2, r3, #48
	vld1.32	{d16, d17}, [r2]
	add	r2, r1, #48
	vclt.f32	q9, q8, #0
	vbic	q8, q8, q9
	vst1.32	{d16, d17}, [r2]
	add	r2, r3, #64
	vld1.32	{d16, d17}, [r2]
	add	r2, r1, #64
	vclt.f32	q9, q8, #0
	vbic	q8, q8, q9
	vst1.32	{d16, d17}, [r2]
	add	r2, r3, #80
	vld1.32	{d16, d17}, [r2]
	add	r2, r1, #80
	vclt.f32	q9, q8, #0
	vbic	q8, q8, q9
	vst1.32	{d16, d17}, [r2]
	add	r2, r3, #96
	vld1.32	{d16, d17}, [r2]
	add	r2, r1, #96
	vclt.f32	q9, q8, #0
	vbic	q8, q8, q9
	vst1.32	{d16, d17}, [r2]
	add	r2, r3, #112
	vld1.32	{d16, d17}, [r2]
	add	r2, r1, #112
	vclt.f32	q9, q8, #0
	vbic	q8, q8, q9
	vst1.32	{d16, d17}, [r2]
	add	r2, r3, #128
	vld1.32	{d16, d17}, [r2]
	add	r2, r1, #128
	vclt.f32	q9, q8, #0
	vbic	q8, q8, q9
	vst1.32	{d16, d17}, [r2]
	add	r2, r3, #144
	vld1.32	{d16, d17}, [r2]
	add	r2, r1, #144
	vclt.f32	q9, q8, #0
	vbic	q8, q8, q9
	vst1.32	{d16, d17}, [r2]
	add	r2, r3, #160
	vld1.32	{d16, d17}, [r2]
	add	r2, r1, #160
	vclt.f32	q9, q8, #0
	vbic	q8, q8, q9
	vst1.32	{d16, d17}, [r2]
	add	r2, r3, #176
	add	r3, r3, #192
	vld1.32	{d16, d17}, [r2]
	add	r2, r1, #176
	vclt.f32	q9, q8, #0
	vbic	q8, q8, q9
	vst1.32	{d16, d17}, [r2]
	add	r2, r1, #192
	vld1.32	{d16, d17}, [r3]
	vclt.f32	q9, q8, #0
	vbic	q8, q8, q9
	vst1.32	{d16, d17}, [r2]
	vld1.32	{d16, d17}, [r0]
	mov	r0, sp
	sub	r2, r0, #16
	vclt.f32	q9, q8, #0
	vbic	q8, q8, q9
	vst1.32	{d16, d17}, [r7]
	mov	sp, r2
	sub	r3, sp, #24
	mov	sp, r3
	mov	r12, sp
	sub	r9, r12, #48
	mov	sp, r9
	mov	r4, sp
	sub	lr, r4, #8
	mov	sp, lr
	mov	r1, #6
	mov	r7, r9
	strb	r1, [r4, #-8]
	mov	r10, #6
	strb	r1, [r4, #-7]
	mov	r1, r3
	vst1.64	{d12, d13}, [r7]!
	vst1.64	{d14, d15}, [r1]!
	str	r5, [r11, #-100]
	sub	r5, r11, #440
	sub	r5, r5, #1024
	vldmia	r5, {d16, d17}          @ 16-byte Reload
	ldr	r5, [r11, #-100]
	vst1.64	{d16, d17}, [r7]
	ldr	r7, [r11, #-2112]       @ 4-byte Reload
	str	r7, [r0, #-16]
	str	r8, [r0, #-12]
	ldr	r8, [r11, #-2120]       @ 4-byte Reload
	str	r8, [r0, #-8]
	mov	r0, #2
	strb	r10, [r4, #-6]
	stm	r1, {r0, r5}
	adr	r0, .LCPI0_148
	vld1.64	{d16, d17}, [r0:128]
	sub	r0, r12, #16
	vst1.64	{d16, d17}, [r0]
	sub	sp, sp, #24
	sub	r0, r11, #104
	stm	sp, {r9, lr}
	mov	r1, #0
	str	r0, [sp, #16]
	mov	r0, #3
	str	r5, [sp, #8]
	str	r5, [sp, #12]
	bl	nnc_aten_matmul
	ldr	r1, [r11, #-1432]       @ 4-byte Reload
	add	sp, sp, #24
	vldr	s0, [r7]
	ldr	r2, [r11, #-2092]       @ 4-byte Reload
	vadd.f32	s2, s0, s16
	vcmpe.f32	s2, #0
	vmrs	APSR_nzcv, fpscr
	vdiv.f32	s0, s2, s18
	vmax.f32	d1, d1, d11
	vmovmi.f32	s0, s22
	vcmpe.f32	s2, s18
	vmrs	APSR_nzcv, fpscr
	vmovgt.f32	s0, s20
	b	.LBB0_102
	.p2align	4
@ %bb.88:
.LCPI0_146:
	.long	1                       @ 0x1
	.long	0                       @ 0x0
	.long	60                      @ 0x3c
	.long	0                       @ 0x0
	.p2align	4
@ %bb.89:
.LCPI0_147:
	.long	240                     @ 0xf0
	.long	0                       @ 0x0
	.long	60                      @ 0x3c
	.long	0                       @ 0x0
	.p2align	4
@ %bb.90:
.LCPI0_148:
	.long	60                      @ 0x3c
	.long	0                       @ 0x0
	.long	240                     @ 0xf0
	.long	0                       @ 0x0
	.p2align	4
@ %bb.91:
.LCPI0_149:
	.long	14                      @ 0xe
	.long	0                       @ 0x0
	.long	14                      @ 0xe
	.long	0                       @ 0x0
	.p2align	4
@ %bb.92:
.LCPI0_150:
	.long	1                       @ 0x1
	.long	0                       @ 0x0
	.long	40                      @ 0x28
	.long	0                       @ 0x0
	.p2align	4
@ %bb.93:
.LCPI0_151:
	.long	4                       @ 0x4
	.long	0                       @ 0x0
	.long	4                       @ 0x4
	.long	0                       @ 0x0
	.p2align	4
@ %bb.94:
.LCPI0_152:
	.long	1                       @ 0x1
	.long	0                       @ 0x0
	.long	240                     @ 0xf0
	.long	0                       @ 0x0
	.p2align	4
@ %bb.95:
.LCPI0_153:
	.long	1                       @ 0x1
	.long	0                       @ 0x0
	.long	1                       @ 0x1
	.long	0                       @ 0x0
	.p2align	4
@ %bb.96:
.LCPI0_154:
	.long	40                      @ 0x28
	.long	0                       @ 0x0
	.long	240                     @ 0xf0
	.long	0                       @ 0x0
	.p2align	4
@ %bb.97:
.LCPI0_155:
	.long	4                       @ 0x4
	.long	0                       @ 0x0
	.long	1                       @ 0x1
	.long	0                       @ 0x0
	.p2align	4
@ %bb.98:
.LCPI0_156:
	.long	240                     @ 0xf0
	.long	0                       @ 0x0
	.long	40                      @ 0x28
	.long	0                       @ 0x0
	.p2align	4
@ %bb.99:
.LCPI0_157:
	.long	5                       @ 0x5
	.long	0                       @ 0x0
	.long	5                       @ 0x5
	.long	0                       @ 0x0
	.p2align	4
@ %bb.100:
.LCPI0_158:
	.long	240                     @ 0xf0
	.long	0                       @ 0x0
	.long	1                       @ 0x1
	.long	0                       @ 0x0
	.p2align	4
@ %bb.101:
.LCPI0_260:
	.long	4                       @ 0x4
	.long	0                       @ 0x0
	.long	4                       @ 0x4
	.long	0                       @ 0x0
	.p2align	2
.LBB0_102:                              @ %cond130.preheader.i
                                        @ =>This Inner Loop Header: Depth=1
	add	r0, r1, r5
	subs	r6, r6, #1
	vldr	s2, [r0]
	add	r0, r2, r5
	add	r5, r5, #844
	vmul.f32	s2, s0, s2
	vadd.f32	s4, s2, s16
	vmax.f32	d16, d2, d11
	vmin.f32	d2, d16, d9
	vmul.f32	s2, s2, s4
	vdiv.f32	s2, s2, s18
	vstr	s2, [r0]
	bne	.LBB0_102
@ %bb.103:                              @ %exit129.i
	mov	r6, sp
	mov	r1, r2
	sub	r2, r6, #16
	mov	sp, r2
	sub	r3, sp, #32
	mov	sp, r3
	mov	r5, sp
	sub	lr, r5, #104
	mov	sp, lr
	mov	r7, sp
	sub	r12, r7, #8
	mov	sp, r12
	mov	r4, sp
	sub	r9, r4, #56
	mov	sp, r9
	ldr	r10, [r11, #-2080]      @ 4-byte Reload
	mov	r8, #6
	str	r10, [r6, #-16]
	adr	r0, .LCPI0_149
	vld1.64	{d16, d17}, [r0:128]
	adr	r0, .LCPI0_150
	vld1.64	{d18, d19}, [r0:128]
	mov	r0, lr
	vst1.64	{d18, d19}, [r0]!
	str	r1, [r6, #-12]
	sub	r1, r5, #56
	strb	r8, [r7, #-8]
	vst1.64	{d16, d17}, [r0]
	adr	r0, .LCPI0_151
	vld1.64	{d18, d19}, [r0:128]
	mov	r0, r3
	strb	r8, [r7, #-7]
	vst1.64	{d18, d19}, [r0]!
	vst1.64	{d16, d17}, [r1]
	adr	r1, .LCPI0_152
	vld1.64	{d16, d17}, [r1:128]
	sub	r1, r5, #72
	vst1.64	{d16, d17}, [r1]
	ldr	r1, [r11, #-2108]       @ 4-byte Reload
	str	r1, [r6, #-8]
	adr	r1, .LCPI0_153
	vld1.64	{d16, d17}, [r1:128]
	sub	r1, r5, #24
	strb	r8, [r7, #-6]
	vst1.64	{d16, d17}, [r1]
	adr	r1, .LCPI0_154
	vld1.64	{d18, d19}, [r1:128]
	sub	r1, r5, #40
	vst1.64	{d18, d19}, [r1]
	ldr	r1, [r11, #-2104]       @ 4-byte Reload
	str	r1, [r6, #-4]
	mov	r6, #0
	strb	r8, [r7, #-5]
	adr	r1, .LCPI0_155
	vld1.64	{d18, d19}, [r1:128]
	mov	r7, #40
	vst1.64	{d18, d19}, [r0]
	sub	r0, r4, #24
	vmov.i32	q9, #0x0
	vst1.64	{d16, d17}, [r0]
	mov	r0, #1
	stmdb	r4, {r0, r6}
	mov	r0, r9
	vst1.64	{d16, d17}, [r0]!
	str	r7, [r5, #-8]
	str	r6, [r5, #-4]
	vst1.64	{d18, d19}, [r0]
	sub	sp, sp, #24
	mov	r0, #7
	add	r1, sp, #8
	str	lr, [sp]
	str	r12, [sp, #4]
	stm	r1, {r0, r6, r9}
	mov	r0, #4
	mov	r1, #0
	bl	nnc_aten_conv2d
	mov	r3, r10
	add	sp, sp, #24
	ldr	r1, [r11, #-1564]       @ 4-byte Reload
	ldr	r10, [r11, #-2076]      @ 4-byte Reload
	ldr	r2, [r11, #-1580]       @ 4-byte Reload
.LBB0_104:                              @ %cond139.preheader.i
                                        @ =>This Inner Loop Header: Depth=1
	add	r0, r3, r6
	subs	r7, r7, #1
	vldr	s0, [r0]
	add	r0, r2, r6
	vldr	s2, [r0]
	add	r0, r1, r6
	add	r6, r6, #844
	vadd.f32	s0, s2, s0
	vstr	s0, [r0]
	bne	.LBB0_104
@ %bb.105:                              @ %exit138.i
	mov	r6, sp
	sub	r2, r6, #16
	mov	r7, r1
	mov	sp, r2
	sub	r3, sp, #32
	mov	sp, r3
	mov	r1, sp
	sub	lr, r1, #104
	mov	sp, lr
	mov	r4, sp
	sub	r12, r4, #8
	mov	sp, r12
	mov	r0, sp
	sub	r9, r0, #56
	mov	sp, r9
	str	r10, [r6, #-16]
	adr	r5, .LCPI0_149
	vld1.64	{d16, d17}, [r5:128]
	adr	r5, .LCPI0_152
	mov	r8, #6
	vld1.64	{d18, d19}, [r5:128]
	mov	r5, lr
	vst1.64	{d18, d19}, [r5]!
	str	r7, [r6, #-12]
	sub	r7, r1, #56
	strb	r8, [r4, #-8]
	vst1.64	{d16, d17}, [r5]
	adr	r5, .LCPI0_151
	vld1.64	{d18, d19}, [r5:128]
	mov	r5, r3
	strb	r8, [r4, #-7]
	vst1.64	{d18, d19}, [r5]!
	vst1.64	{d16, d17}, [r7]
	adr	r7, .LCPI0_150
	vld1.64	{d16, d17}, [r7:128]
	sub	r7, r1, #72
	vst1.64	{d16, d17}, [r7]
	ldr	r7, [r11, #-2088]       @ 4-byte Reload
	str	r7, [r6, #-8]
	adr	r7, .LCPI0_153
	vld1.64	{d16, d17}, [r7:128]
	sub	r7, r1, #24
	strb	r8, [r4, #-6]
	vst1.64	{d16, d17}, [r7]
	adr	r7, .LCPI0_156
	vld1.64	{d18, d19}, [r7:128]
	sub	r7, r1, #40
	vst1.64	{d18, d19}, [r7]
	ldr	r7, [r11, #-2084]       @ 4-byte Reload
	str	r7, [r6, #-4]
	strb	r8, [r4, #-5]
	adr	r4, .LCPI0_155
	vld1.64	{d18, d19}, [r4:128]
	mov	r4, #0
	vst1.64	{d18, d19}, [r5]
	mov	r5, #240
	vmov.i32	q9, #0x0
	str	r5, [r1, #-8]
	str	r4, [r1, #-4]
	sub	r1, r0, #24
	vst1.64	{d16, d17}, [r1]
	mov	r1, #1
	stmdb	r0, {r1, r4}
	mov	r0, r9
	vst1.64	{d16, d17}, [r0]!
	vst1.64	{d18, d19}, [r0]
	sub	sp, sp, #24
	mov	r0, #7
	add	r1, sp, #8
	str	lr, [sp]
	str	r12, [sp, #4]
	stm	r1, {r0, r4, r9}
	mov	r0, #4
	mov	r1, #0
	bl	nnc_aten_conv2d
	add	sp, sp, #24
	ldr	r7, [r11, #-2064]       @ 4-byte Reload
.LBB0_106:                              @ %cond148.preheader.i
                                        @ =>This Inner Loop Header: Depth=1
	add	r0, r10, r4
	subs	r5, r5, #1
	vldr	s0, [r0]
	add	r0, r7, r4
	add	r4, r4, #844
	vadd.f32	s2, s0, s16
	vmax.f32	d16, d1, d11
	vmin.f32	d1, d16, d9
	vmul.f32	s0, s0, s2
	vdiv.f32	s0, s0, s18
	vstr	s0, [r0]
	bne	.LBB0_106
@ %bb.107:                              @ %exit147.i
	adr	r0, .LCPI0_149
	mov	r6, sp
	vld1.64	{d16, d17}, [r0:128]
	adr	r0, .LCPI0_152
	sub	r2, r6, #16
	vld1.64	{d12, d13}, [r0:128]
	mov	sp, r2
	sub	r3, sp, #32
	mov	sp, r3
	mov	r4, sp
	sub	lr, r4, #104
	mov	sp, lr
	mov	r5, sp
	sub	r12, r5, #8
	mov	sp, r12
	mov	r1, sp
	sub	r9, r1, #56
	mov	sp, r9
	ldr	r0, [r11, #-1568]       @ 4-byte Reload
	mov	r10, #6
	str	r0, [r6, #-16]
	strb	r10, [r5, #-8]
	mov	r8, r0
	mov	r0, lr
	vst1.64	{d12, d13}, [r0]!
	str	r7, [r11, #-100]
	sub	r7, r11, #408
	sub	r7, r7, #1024
	vstmia	r7, {d16, d17}          @ 16-byte Spill
	ldr	r7, [r11, #-100]
	str	r7, [r6, #-12]
	sub	r7, r4, #56
	vst1.64	{d16, d17}, [r0]
	adr	r0, .LCPI0_260
	vld1.64	{d18, d19}, [r0:128]
	sub	r0, r11, #424
	sub	r0, r0, #1024
	vst1.64	{d16, d17}, [r7]
	sub	r7, r4, #72
	vstmia	r0, {d18, d19}          @ 16-byte Spill
	mov	r0, r3
	vst1.64	{d12, d13}, [r7]
	ldr	r7, [r11, #-2072]       @ 4-byte Reload
	strb	r10, [r5, #-7]
	vst1.64	{d18, d19}, [r0]!
	str	r7, [r6, #-8]
	adr	r7, .LCPI0_157
	vld1.64	{d16, d17}, [r7:128]
	sub	r7, r4, #24
	strb	r10, [r5, #-6]
	vst1.64	{d16, d17}, [r7]
	adr	r7, .LCPI0_158
	vld1.64	{d16, d17}, [r7:128]
	sub	r7, r4, #40
	vst1.64	{d16, d17}, [r7]
	ldr	r7, [r11, #-2068]       @ 4-byte Reload
	str	r7, [r6, #-4]
	mov	r6, #240
	strb	r10, [r5, #-5]
	adr	r5, .LCPI0_159
	vld1.64	{d16, d17}, [r5:128]
	mov	r5, #0
	vst1.64	{d16, d17}, [r0]
	str	r6, [r4, #-8]
	str	r5, [r4, #-4]
	adr	r0, .LCPI0_160
	vld1.64	{d14, d15}, [r0:128]
	sub	r0, r1, #24
	vst1.64	{d14, d15}, [r0]
	str	r6, [r1, #-8]
	str	r5, [r1, #-4]
	adr	r0, .LCPI0_161
	vld1.64	{d16, d17}, [r0:128]
	sub	r0, r11, #312
	sub	r0, r0, #1024
	vstmia	r0, {d16, d17}          @ 16-byte Spill
	mov	r0, r9
	vst1.64	{d14, d15}, [r0]!
	vst1.64	{d16, d17}, [r0]
	sub	sp, sp, #24
	mov	r0, #7
	add	r1, sp, #8
	str	lr, [sp]
	str	r12, [sp, #4]
	stm	r1, {r0, r5, r9}
	mov	r0, #4
	mov	r1, #0
	bl	nnc_aten_conv2d
	add	sp, sp, #24
	mov	lr, sp
	sub	r2, lr, #8
	mov	sp, r2
	sub	r3, sp, #16
	mov	sp, r3
	mov	r1, sp
	sub	r9, r1, #64
	mov	sp, r9
	mov	r7, sp
	sub	r12, r7, #8
	mov	sp, r12
	sub	r0, sp, #16
	mov	sp, r0
	mov	r4, r9
	strb	r10, [r7, #-8]
	vst1.64	{d12, d13}, [r4]!
	vst1.64	{d14, d15}, [r4]
	ldr	r4, [r11, #-2060]       @ 4-byte Reload
	strb	r10, [r7, #-7]
	sub	r7, r1, #16
	stmdb	lr, {r4, r8}
	sub	lr, r11, #424
	sub	lr, lr, #1024
	sub	r1, r1, #32
	vst1.64	{d14, d15}, [r0]
	vldmia	lr, {d16, d17}          @ 16-byte Reload
	sub	lr, r11, #408
	sub	lr, lr, #1024
	vst1.64	{d16, d17}, [r3]
	vldmia	lr, {d16, d17}          @ 16-byte Reload
	vst1.64	{d16, d17}, [r7]
	vst1.64	{d12, d13}, [r1]
	sub	sp, sp, #24
	mov	r1, #2
	stm	sp, {r9, r12}
	str	r1, [sp, #8]
	mov	r1, #0
	str	r0, [sp, #16]
	mov	r0, #2
	str	r5, [sp, #12]
	bl	nnc_aten_adaptive_avg_pool2d
	add	sp, sp, #24
	ldr	r0, [r11, #-1416]       @ 4-byte Reload
	vld1.32	{d16[], d17[]}, [r4:32]
	ldr	r1, [r11, #-2180]       @ 4-byte Reload
	vst1.32	{d16, d17}, [r0]
	add	r0, r1, #912
	vst1.32	{d16, d17}, [r0]
	add	r0, r1, #896
	vst1.32	{d16, d17}, [r0]
	add	r0, r1, #880
	vst1.32	{d16, d17}, [r0]
	add	r0, r1, #864
	vst1.32	{d16, d17}, [r0]
	add	r0, r1, #848
	vst1.32	{d16, d17}, [r0]
	add	r0, r1, #832
	vst1.32	{d16, d17}, [r0]
	add	r0, r1, #816
	vst1.32	{d16, d17}, [r0]
	add	r0, r1, #800
	vst1.32	{d16, d17}, [r0]
	add	r0, r1, #784
	vst1.32	{d16, d17}, [r0]
	add	r0, r1, #768
	vst1.32	{d16, d17}, [r0]
	add	r0, r1, #752
	vst1.32	{d16, d17}, [r0]
	add	r0, r1, #736
	vst1.32	{d16, d17}, [r0]
	add	r0, r1, #720
	vst1.32	{d16, d17}, [r0]
	add	r0, r1, #704
	vst1.32	{d16, d17}, [r0]
	add	r0, r1, #688
	vst1.32	{d16, d17}, [r0]
	add	r0, r1, #672
	vst1.32	{d16, d17}, [r0]
	add	r0, r1, #656
	vst1.32	{d16, d17}, [r0]
	add	r0, r1, #640
	vst1.32	{d16, d17}, [r0]
	add	r0, r1, #624
	vst1.32	{d16, d17}, [r0]
	add	r0, r1, #608
	vst1.32	{d16, d17}, [r0]
	add	r0, r1, #592
	vst1.32	{d16, d17}, [r0]
	add	r0, r1, #576
	vst1.32	{d16, d17}, [r0]
	add	r0, r1, #560
	vst1.32	{d16, d17}, [r0]
	add	r0, r1, #544
	vst1.32	{d16, d17}, [r0]
	add	r0, r1, #528
	vst1.32	{d16, d17}, [r0]
	add	r0, r1, #512
	vst1.32	{d16, d17}, [r0]
	add	r0, r1, #496
	vst1.32	{d16, d17}, [r0]
	add	r0, r1, #480
	vst1.32	{d16, d17}, [r0]
	add	r0, r1, #464
	vst1.32	{d16, d17}, [r0]
	add	r0, r1, #448
	vst1.32	{d16, d17}, [r0]
	add	r0, r1, #432
	vst1.32	{d16, d17}, [r0]
	add	r0, r1, #416
	vst1.32	{d16, d17}, [r0]
	add	r0, r1, #400
	vst1.32	{d16, d17}, [r0]
	add	r0, r1, #384
	vst1.32	{d16, d17}, [r0]
	add	r0, r1, #368
	vst1.32	{d16, d17}, [r0]
	add	r0, r1, #352
	vst1.32	{d16, d17}, [r0]
	add	r0, r1, #336
	vst1.32	{d16, d17}, [r0]
	add	r0, r1, #320
	vst1.32	{d16, d17}, [r0]
	add	r0, r1, #304
	vst1.32	{d16, d17}, [r0]
	add	r0, r1, #288
	vst1.32	{d16, d17}, [r0]
	add	r0, r1, #272
	vst1.32	{d16, d17}, [r0]
	add	r0, r1, #256
	vst1.32	{d16, d17}, [r0]
	add	r0, r1, #240
	vst1.32	{d16, d17}, [r0]
	add	r0, r1, #224
	vst1.32	{d16, d17}, [r0]
	add	r0, r1, #208
	vst1.32	{d16, d17}, [r0]
	add	r0, r1, #192
	vst1.32	{d16, d17}, [r0]
	add	r0, r1, #176
	vst1.32	{d16, d17}, [r0]
	add	r0, r1, #160
	vst1.32	{d16, d17}, [r0]
	add	r0, r1, #144
	vst1.32	{d16, d17}, [r0]
	add	r0, r1, #128
	vst1.32	{d16, d17}, [r0]
	add	r0, r1, #112
	vst1.32	{d16, d17}, [r0]
	add	r0, r1, #96
	vst1.32	{d16, d17}, [r0]
	add	r0, r1, #80
	vst1.32	{d16, d17}, [r0]
	add	r0, r1, #64
	vst1.32	{d16, d17}, [r0]
	add	r0, r1, #48
	vst1.32	{d16, d17}, [r0]
	add	r0, r1, #32
	vst1.32	{d16, d17}, [r0]
	add	r0, r1, #16
	vst1.32	{d16, d17}, [r0]
	mov	r0, #928
	vst1.32	{d16, d17}, [r1], r0
	mov	r0, sp
	sub	r2, r0, #16
	vst1.32	{d16, d17}, [r1]
	mov	sp, r2
	sub	lr, r11, #408
	adr	r1, .LCPI0_162
	sub	r3, sp, #24
	vld1.64	{d16, d17}, [r1:128]
	sub	lr, lr, #1024
	vstmia	lr, {d16, d17}          @ 16-byte Spill
	mov	sp, r3
	mov	r12, sp
	sub	r9, r12, #48
	mov	sp, r9
	mov	r7, sp
	sub	lr, r7, #8
	mov	sp, lr
	sub	r8, r11, #312
	mov	r4, r9
	sub	r8, r8, #1024
	vst1.64	{d16, d17}, [r4]!
	mov	r1, #6
	mov	r10, #6
	vldmia	r8, {d14, d15}          @ 16-byte Reload
	strb	r1, [r7, #-8]
	strb	r1, [r7, #-7]
	mov	r1, r3
	vst1.64	{d12, d13}, [r4]
	ldr	r8, [r11, #-1576]       @ 4-byte Reload
	ldr	r4, [r11, #-1416]       @ 4-byte Reload
	vst1.64	{d14, d15}, [r1]!
	str	r8, [r0, #-16]
	str	r4, [r0, #-12]
	ldr	r4, [r11, #-2056]       @ 4-byte Reload
	str	r4, [r0, #-8]
	mov	r0, #2
	strb	r10, [r7, #-6]
	stm	r1, {r0, r5}
	adr	r0, .LCPI0_163
	vld1.64	{d16, d17}, [r0:128]
	sub	r0, r12, #16
	vst1.64	{d16, d17}, [r0]
	sub	sp, sp, #24
	mov	r0, #3
	mov	r1, #0
	stm	sp, {r9, lr}
	sub	r10, r11, #104
	str	r5, [sp, #8]
	str	r5, [sp, #12]
	str	r10, [sp, #16]
	bl	nnc_aten_matmul
	add	sp, sp, #24
	vld1.32	{d16, d17}, [r8]
	mov	r2, #208
	vclt.f32	q9, q8, #0
	ldr	r3, [r11, #-2148]       @ 4-byte Reload
	vbic	q8, q8, q9
	ldr	r10, [r11, #-1572]      @ 4-byte Reload
	b	.LBB0_119
	.p2align	4
@ %bb.108:
.LCPI0_159:
	.long	4                       @ 0x4
	.long	0                       @ 0x0
	.long	1                       @ 0x1
	.long	0                       @ 0x0
	.p2align	4
@ %bb.109:
.LCPI0_160:
	.long	1                       @ 0x1
	.long	0                       @ 0x0
	.long	1                       @ 0x1
	.long	0                       @ 0x0
	.p2align	4
@ %bb.110:
.LCPI0_161:
	.long	2                       @ 0x2
	.long	0                       @ 0x0
	.long	2                       @ 0x2
	.long	0                       @ 0x0
	.p2align	4
@ %bb.111:
.LCPI0_162:
	.long	1                       @ 0x1
	.long	0                       @ 0x0
	.long	60                      @ 0x3c
	.long	0                       @ 0x0
	.p2align	4
@ %bb.112:
.LCPI0_163:
	.long	240                     @ 0xf0
	.long	0                       @ 0x0
	.long	60                      @ 0x3c
	.long	0                       @ 0x0
	.p2align	4
@ %bb.113:
.LCPI0_164:
	.long	60                      @ 0x3c
	.long	0                       @ 0x0
	.long	240                     @ 0xf0
	.long	0                       @ 0x0
	.p2align	4
@ %bb.114:
.LCPI0_165:
	.long	14                      @ 0xe
	.long	0                       @ 0x0
	.long	14                      @ 0xe
	.long	0                       @ 0x0
	.p2align	4
@ %bb.115:
.LCPI0_166:
	.long	1                       @ 0x1
	.long	0                       @ 0x0
	.long	40                      @ 0x28
	.long	0                       @ 0x0
	.p2align	4
@ %bb.116:
.LCPI0_167:
	.long	4                       @ 0x4
	.long	0                       @ 0x0
	.long	4                       @ 0x4
	.long	0                       @ 0x0
	.p2align	4
@ %bb.117:
.LCPI0_168:
	.long	1                       @ 0x1
	.long	0                       @ 0x0
	.long	240                     @ 0xf0
	.long	0                       @ 0x0
	.p2align	4
@ %bb.118:
.LCPI0_169:
	.long	40                      @ 0x28
	.long	0                       @ 0x0
	.long	240                     @ 0xf0
	.long	0                       @ 0x0
	.p2align	2
.LBB0_119:                              @ %exit147.i
	ldr	r1, [r11, #-2152]       @ 4-byte Reload
	mov	r0, r3
	vst1.32	{d16, d17}, [r10]
	mov	r7, r1
	vld1.32	{d16, d17}, [r0], r2
	vclt.f32	q9, q8, #0
	vbic	q8, q8, q9
	vst1.32	{d16, d17}, [r7], r2
	add	r2, r3, #16
	vld1.32	{d16, d17}, [r2]
	add	r2, r1, #16
	vclt.f32	q9, q8, #0
	vbic	q8, q8, q9
	vst1.32	{d16, d17}, [r2]
	add	r2, r3, #32
	vld1.32	{d16, d17}, [r2]
	add	r2, r1, #32
	vclt.f32	q9, q8, #0
	vbic	q8, q8, q9
	vst1.32	{d16, d17}, [r2]
	add	r2, r3, #48
	vld1.32	{d16, d17}, [r2]
	add	r2, r1, #48
	vclt.f32	q9, q8, #0
	vbic	q8, q8, q9
	vst1.32	{d16, d17}, [r2]
	add	r2, r3, #64
	vld1.32	{d16, d17}, [r2]
	add	r2, r1, #64
	vclt.f32	q9, q8, #0
	vbic	q8, q8, q9
	vst1.32	{d16, d17}, [r2]
	add	r2, r3, #80
	vld1.32	{d16, d17}, [r2]
	add	r2, r1, #80
	vclt.f32	q9, q8, #0
	vbic	q8, q8, q9
	vst1.32	{d16, d17}, [r2]
	add	r2, r3, #96
	vld1.32	{d16, d17}, [r2]
	add	r2, r1, #96
	vclt.f32	q9, q8, #0
	vbic	q8, q8, q9
	vst1.32	{d16, d17}, [r2]
	add	r2, r3, #112
	vld1.32	{d16, d17}, [r2]
	add	r2, r1, #112
	vclt.f32	q9, q8, #0
	vbic	q8, q8, q9
	vst1.32	{d16, d17}, [r2]
	add	r2, r3, #128
	vld1.32	{d16, d17}, [r2]
	add	r2, r1, #128
	vclt.f32	q9, q8, #0
	vbic	q8, q8, q9
	vst1.32	{d16, d17}, [r2]
	add	r2, r3, #144
	vld1.32	{d16, d17}, [r2]
	add	r2, r1, #144
	vclt.f32	q9, q8, #0
	vbic	q8, q8, q9
	vst1.32	{d16, d17}, [r2]
	add	r2, r3, #160
	vld1.32	{d16, d17}, [r2]
	add	r2, r1, #160
	vclt.f32	q9, q8, #0
	vbic	q8, q8, q9
	vst1.32	{d16, d17}, [r2]
	add	r2, r3, #176
	add	r3, r3, #192
	vld1.32	{d16, d17}, [r2]
	add	r2, r1, #176
	vclt.f32	q9, q8, #0
	vbic	q8, q8, q9
	vst1.32	{d16, d17}, [r2]
	add	r2, r1, #192
	vld1.32	{d16, d17}, [r3]
	vclt.f32	q9, q8, #0
	vbic	q8, q8, q9
	vst1.32	{d16, d17}, [r2]
	vld1.32	{d16, d17}, [r0]
	mov	r0, sp
	sub	r2, r0, #16
	vclt.f32	q9, q8, #0
	vbic	q8, q8, q9
	vst1.32	{d16, d17}, [r7]
	mov	sp, r2
	sub	r3, sp, #24
	mov	sp, r3
	mov	r12, sp
	sub	r9, r12, #48
	mov	sp, r9
	mov	r4, sp
	sub	lr, r4, #8
	mov	sp, lr
	mov	r1, #6
	mov	r7, r9
	strb	r1, [r4, #-8]
	mov	r8, #6
	strb	r1, [r4, #-7]
	mov	r1, r3
	vst1.64	{d12, d13}, [r7]!
	vst1.64	{d14, d15}, [r1]!
	str	r5, [r11, #-100]
	sub	r5, r11, #408
	sub	r5, r5, #1024
	vldmia	r5, {d16, d17}          @ 16-byte Reload
	ldr	r5, [r11, #-100]
	vst1.64	{d16, d17}, [r7]
	ldr	r7, [r11, #-2036]       @ 4-byte Reload
	str	r7, [r0, #-16]
	str	r10, [r0, #-12]
	ldr	r10, [r11, #-2048]      @ 4-byte Reload
	str	r10, [r0, #-8]
	mov	r0, #2
	strb	r8, [r4, #-6]
	stm	r1, {r0, r5}
	adr	r0, .LCPI0_164
	vld1.64	{d16, d17}, [r0:128]
	sub	r0, r12, #16
	vst1.64	{d16, d17}, [r0]
	sub	sp, sp, #24
	sub	r0, r11, #104
	stm	sp, {r9, lr}
	mov	r1, #0
	str	r0, [sp, #16]
	mov	r0, #3
	str	r5, [sp, #8]
	str	r5, [sp, #12]
	bl	nnc_aten_matmul
	ldr	r2, [r11, #-1568]       @ 4-byte Reload
	add	sp, sp, #24
	vldr	s0, [r7]
	ldr	r1, [r11, #-2024]       @ 4-byte Reload
	vadd.f32	s2, s0, s16
	vcmpe.f32	s2, #0
	vmrs	APSR_nzcv, fpscr
	vdiv.f32	s0, s2, s18
	vmax.f32	d1, d1, d11
	vmovmi.f32	s0, s22
	vcmpe.f32	s2, s18
	vmrs	APSR_nzcv, fpscr
	vmovgt.f32	s0, s20
.LBB0_120:                              @ %cond163.preheader.i
                                        @ =>This Inner Loop Header: Depth=1
	add	r0, r2, r5
	subs	r6, r6, #1
	vldr	s2, [r0]
	add	r0, r1, r5
	add	r5, r5, #844
	vmul.f32	s2, s0, s2
	vadd.f32	s4, s2, s16
	vmax.f32	d16, d2, d11
	vmin.f32	d2, d16, d9
	vmul.f32	s2, s2, s4
	vdiv.f32	s2, s2, s18
	vstr	s2, [r0]
	bne	.LBB0_120
@ %bb.121:                              @ %exit162.i
	mov	r6, sp
	sub	r2, r6, #16
	mov	sp, r2
	sub	r3, sp, #32
	mov	sp, r3
	mov	r5, sp
	sub	lr, r5, #104
	mov	sp, lr
	mov	r7, sp
	sub	r12, r7, #8
	mov	sp, r12
	mov	r4, sp
	sub	r9, r4, #56
	mov	sp, r9
	ldr	r10, [r11, #-2016]      @ 4-byte Reload
	mov	r8, #6
	str	r10, [r6, #-16]
	adr	r0, .LCPI0_165
	vld1.64	{d16, d17}, [r0:128]
	adr	r0, .LCPI0_166
	vld1.64	{d18, d19}, [r0:128]
	mov	r0, lr
	vst1.64	{d18, d19}, [r0]!
	str	r1, [r6, #-12]
	sub	r1, r5, #56
	strb	r8, [r7, #-8]
	vst1.64	{d16, d17}, [r0]
	adr	r0, .LCPI0_167
	vld1.64	{d18, d19}, [r0:128]
	mov	r0, r3
	strb	r8, [r7, #-7]
	vst1.64	{d18, d19}, [r0]!
	vst1.64	{d16, d17}, [r1]
	adr	r1, .LCPI0_168
	vld1.64	{d16, d17}, [r1:128]
	sub	r1, r5, #72
	vst1.64	{d16, d17}, [r1]
	ldr	r1, [r11, #-2032]       @ 4-byte Reload
	str	r1, [r6, #-8]
	adr	r1, .LCPI0_160
	vld1.64	{d16, d17}, [r1:128]
	sub	r1, r5, #24
	strb	r8, [r7, #-6]
	vst1.64	{d16, d17}, [r1]
	adr	r1, .LCPI0_169
	vld1.64	{d18, d19}, [r1:128]
	sub	r1, r5, #40
	vst1.64	{d18, d19}, [r1]
	ldr	r1, [r11, #-2028]       @ 4-byte Reload
	str	r1, [r6, #-4]
	mov	r6, #0
	strb	r8, [r7, #-5]
	adr	r1, .LCPI0_159
	vld1.64	{d18, d19}, [r1:128]
	mov	r7, #40
	vst1.64	{d18, d19}, [r0]
	sub	r0, r4, #24
	vmov.i32	q9, #0x0
	vst1.64	{d16, d17}, [r0]
	mov	r0, #1
	stmdb	r4, {r0, r6}
	mov	r0, r9
	vst1.64	{d16, d17}, [r0]!
	str	r7, [r5, #-8]
	str	r6, [r5, #-4]
	vst1.64	{d18, d19}, [r0]
	sub	sp, sp, #24
	mov	r0, #7
	add	r1, sp, #8
	str	lr, [sp]
	str	r12, [sp, #4]
	stm	r1, {r0, r6, r9}
	mov	r0, #4
	mov	r1, #0
	bl	nnc_aten_conv2d
	mov	r3, r10
	add	sp, sp, #24
	ldr	r10, [r11, #-1996]      @ 4-byte Reload
	ldr	r1, [r11, #-2008]       @ 4-byte Reload
	ldr	r2, [r11, #-1564]       @ 4-byte Reload
.LBB0_122:                              @ %cond172.preheader.i
                                        @ =>This Inner Loop Header: Depth=1
	add	r0, r3, r6
	subs	r7, r7, #1
	vldr	s0, [r0]
	add	r0, r2, r6
	vldr	s2, [r0]
	add	r0, r1, r6
	add	r6, r6, #844
	vadd.f32	s0, s2, s0
	vstr	s0, [r0]
	bne	.LBB0_122
@ %bb.123:                              @ %exit171.i
	mov	r6, sp
	sub	r2, r6, #16
	mov	sp, r2
	sub	r3, sp, #32
	mov	sp, r3
	mov	r7, r1
	mov	r1, sp
	sub	lr, r1, #104
	mov	sp, lr
	mov	r4, sp
	sub	r12, r4, #8
	mov	sp, r12
	mov	r0, sp
	sub	r9, r0, #56
	mov	sp, r9
	str	r10, [r6, #-16]
	adr	r5, .LCPI0_170
	vld1.64	{d16, d17}, [r5:128]
	adr	r5, .LCPI0_171
	mov	r8, #6
	vld1.64	{d18, d19}, [r5:128]
	mov	r5, lr
	vst1.64	{d18, d19}, [r5]!
	str	r7, [r6, #-12]
	sub	r7, r1, #56
	strb	r8, [r4, #-8]
	vst1.64	{d16, d17}, [r5]
	adr	r5, .LCPI0_172
	vld1.64	{d18, d19}, [r5:128]
	mov	r5, r3
	strb	r8, [r4, #-7]
	vst1.64	{d18, d19}, [r5]!
	vst1.64	{d16, d17}, [r7]
	adr	r7, .LCPI0_173
	vld1.64	{d16, d17}, [r7:128]
	sub	r7, r1, #72
	vst1.64	{d16, d17}, [r7]
	ldr	r7, [r11, #-2020]       @ 4-byte Reload
	str	r7, [r6, #-8]
	adr	r7, .LCPI0_174
	vld1.64	{d16, d17}, [r7:128]
	sub	r7, r1, #24
	strb	r8, [r4, #-6]
	vst1.64	{d16, d17}, [r7]
	adr	r7, .LCPI0_175
	vld1.64	{d18, d19}, [r7:128]
	sub	r7, r1, #40
	vst1.64	{d18, d19}, [r7]
	ldr	r7, [r11, #-2012]       @ 4-byte Reload
	str	r7, [r6, #-4]
	strb	r8, [r4, #-5]
	adr	r4, .LCPI0_176
	vld1.64	{d18, d19}, [r4:128]
	mov	r4, #0
	vst1.64	{d18, d19}, [r5]
	mov	r5, #120
	vmov.i32	q9, #0x0
	str	r5, [r1, #-8]
	str	r4, [r1, #-4]
	sub	r1, r0, #24
	vst1.64	{d16, d17}, [r1]
	mov	r1, #1
	stmdb	r0, {r1, r4}
	mov	r0, r9
	vst1.64	{d16, d17}, [r0]!
	vst1.64	{d18, d19}, [r0]
	sub	sp, sp, #24
	mov	r0, #7
	add	r1, sp, #8
	str	lr, [sp]
	str	r12, [sp, #4]
	stm	r1, {r0, r4, r9}
	mov	r0, #4
	mov	r1, #0
	bl	nnc_aten_conv2d
	add	sp, sp, #24
	ldr	r7, [r11, #-1992]       @ 4-byte Reload
	b	.LBB0_136
	.p2align	4
@ %bb.124:
.LCPI0_170:
	.long	14                      @ 0xe
	.long	0                       @ 0x0
	.long	14                      @ 0xe
	.long	0                       @ 0x0
	.p2align	4
@ %bb.125:
.LCPI0_171:
	.long	1                       @ 0x1
	.long	0                       @ 0x0
	.long	120                     @ 0x78
	.long	0                       @ 0x0
	.p2align	4
@ %bb.126:
.LCPI0_172:
	.long	4                       @ 0x4
	.long	0                       @ 0x0
	.long	4                       @ 0x4
	.long	0                       @ 0x0
	.p2align	4
@ %bb.127:
.LCPI0_173:
	.long	1                       @ 0x1
	.long	0                       @ 0x0
	.long	40                      @ 0x28
	.long	0                       @ 0x0
	.p2align	4
@ %bb.128:
.LCPI0_174:
	.long	1                       @ 0x1
	.long	0                       @ 0x0
	.long	1                       @ 0x1
	.long	0                       @ 0x0
	.p2align	4
@ %bb.129:
.LCPI0_175:
	.long	120                     @ 0x78
	.long	0                       @ 0x0
	.long	40                      @ 0x28
	.long	0                       @ 0x0
	.p2align	4
@ %bb.130:
.LCPI0_176:
	.long	4                       @ 0x4
	.long	0                       @ 0x0
	.long	1                       @ 0x1
	.long	0                       @ 0x0
	.p2align	4
@ %bb.131:
.LCPI0_177:
	.long	5                       @ 0x5
	.long	0                       @ 0x0
	.long	5                       @ 0x5
	.long	0                       @ 0x0
	.p2align	4
@ %bb.132:
.LCPI0_178:
	.long	120                     @ 0x78
	.long	0                       @ 0x0
	.long	1                       @ 0x1
	.long	0                       @ 0x0
	.p2align	4
@ %bb.133:
.LCPI0_179:
	.long	2                       @ 0x2
	.long	0                       @ 0x0
	.long	2                       @ 0x2
	.long	0                       @ 0x0
	.p2align	4
@ %bb.134:
.LCPI0_180:
	.long	1                       @ 0x1
	.long	0                       @ 0x0
	.long	30                      @ 0x1e
	.long	0                       @ 0x0
	.p2align	4
@ %bb.135:
.LCPI0_181:
	.long	120                     @ 0x78
	.long	0                       @ 0x0
	.long	30                      @ 0x1e
	.long	0                       @ 0x0
	.p2align	2
.LBB0_136:                              @ %cond181.preheader.i
                                        @ =>This Inner Loop Header: Depth=1
	add	r0, r10, r4
	subs	r5, r5, #1
	vldr	s0, [r0]
	add	r0, r7, r4
	add	r4, r4, #844
	vadd.f32	s2, s0, s16
	vmax.f32	d16, d1, d11
	vmin.f32	d1, d16, d9
	vmul.f32	s0, s0, s2
	vdiv.f32	s0, s0, s18
	vstr	s0, [r0]
	bne	.LBB0_136
@ %bb.137:                              @ %exit180.i
	adr	r0, .LCPI0_170
	mov	r5, sp
	vld1.64	{d16, d17}, [r0:128]
	adr	r0, .LCPI0_171
	sub	r2, r5, #16
	vld1.64	{d12, d13}, [r0:128]
	mov	sp, r2
	sub	r3, sp, #32
	mov	sp, r3
	mov	r6, sp
	sub	lr, r6, #104
	mov	sp, lr
	mov	r4, sp
	sub	r12, r4, #8
	mov	sp, r12
	mov	r1, sp
	sub	r9, r1, #56
	mov	sp, r9
	ldr	r0, [r11, #-1552]       @ 4-byte Reload
	mov	r10, #6
	str	r0, [r5, #-16]
	strb	r10, [r4, #-8]
	mov	r8, r0
	mov	r0, lr
	vst1.64	{d12, d13}, [r0]!
	str	r7, [r11, #-100]
	sub	r7, r11, #392
	sub	r7, r7, #1024
	vstmia	r7, {d16, d17}          @ 16-byte Spill
	ldr	r7, [r11, #-100]
	str	r7, [r5, #-12]
	sub	r7, r6, #56
	vst1.64	{d16, d17}, [r0]
	adr	r0, .LCPI0_172
	vld1.64	{d18, d19}, [r0:128]
	sub	r0, r11, #408
	sub	r0, r0, #1024
	vst1.64	{d16, d17}, [r7]
	sub	r7, r6, #72
	vstmia	r0, {d18, d19}          @ 16-byte Spill
	mov	r0, r3
	vst1.64	{d12, d13}, [r7]
	ldr	r7, [r11, #-2004]       @ 4-byte Reload
	strb	r10, [r4, #-7]
	vst1.64	{d18, d19}, [r0]!
	str	r7, [r5, #-8]
	adr	r7, .LCPI0_177
	vld1.64	{d16, d17}, [r7:128]
	sub	r7, r6, #24
	strb	r10, [r4, #-6]
	vst1.64	{d16, d17}, [r7]
	adr	r7, .LCPI0_178
	vld1.64	{d16, d17}, [r7:128]
	sub	r7, r6, #40
	vst1.64	{d16, d17}, [r7]
	ldr	r7, [r11, #-2000]       @ 4-byte Reload
	str	r7, [r5, #-4]
	mov	r5, #120
	strb	r10, [r4, #-5]
	adr	r4, .LCPI0_176
	vld1.64	{d16, d17}, [r4:128]
	mov	r4, #0
	vst1.64	{d16, d17}, [r0]
	str	r5, [r6, #-8]
	str	r4, [r6, #-4]
	adr	r0, .LCPI0_174
	vld1.64	{d14, d15}, [r0:128]
	sub	r0, r1, #24
	vst1.64	{d14, d15}, [r0]
	str	r5, [r1, #-8]
	str	r4, [r1, #-4]
	adr	r0, .LCPI0_179
	vld1.64	{d16, d17}, [r0:128]
	sub	r0, r11, #312
	sub	r0, r0, #1024
	vstmia	r0, {d16, d17}          @ 16-byte Spill
	mov	r0, r9
	vst1.64	{d14, d15}, [r0]!
	vst1.64	{d16, d17}, [r0]
	sub	sp, sp, #24
	mov	r0, #7
	add	r1, sp, #8
	str	lr, [sp]
	str	r12, [sp, #4]
	stm	r1, {r0, r4, r9}
	mov	r0, #4
	mov	r1, #0
	bl	nnc_aten_conv2d
	add	sp, sp, #24
	mov	lr, sp
	sub	r2, lr, #8
	mov	sp, r2
	sub	r3, sp, #16
	mov	sp, r3
	mov	r1, sp
	sub	r9, r1, #64
	mov	sp, r9
	mov	r7, sp
	sub	r12, r7, #8
	mov	sp, r12
	sub	r0, sp, #16
	mov	sp, r0
	mov	r6, r9
	strb	r10, [r7, #-8]
	vst1.64	{d12, d13}, [r6]!
	vst1.64	{d14, d15}, [r6]
	ldr	r6, [r11, #-1984]       @ 4-byte Reload
	strb	r10, [r7, #-7]
	sub	r7, r1, #16
	stmdb	lr, {r6, r8}
	sub	lr, r11, #408
	sub	lr, lr, #1024
	sub	r1, r1, #32
	vst1.64	{d14, d15}, [r0]
	vldmia	lr, {d16, d17}          @ 16-byte Reload
	sub	lr, r11, #392
	sub	lr, lr, #1024
	vst1.64	{d16, d17}, [r3]
	vldmia	lr, {d16, d17}          @ 16-byte Reload
	vst1.64	{d16, d17}, [r7]
	vst1.64	{d12, d13}, [r1]
	sub	sp, sp, #24
	mov	r1, #2
	stm	sp, {r9, r12}
	str	r1, [sp, #8]
	mov	r1, #0
	str	r0, [sp, #16]
	mov	r0, #2
	str	r4, [sp, #12]
	bl	nnc_aten_adaptive_avg_pool2d
	add	sp, sp, #24
	ldr	r0, [r11, #-1400]       @ 4-byte Reload
	vld1.32	{d16[], d17[]}, [r6:32]
	ldr	r1, [r11, #-2116]       @ 4-byte Reload
	vst1.32	{d16, d17}, [r0]
	add	r0, r1, #432
	vst1.32	{d16, d17}, [r0]
	add	r0, r1, #416
	vst1.32	{d16, d17}, [r0]
	add	r0, r1, #400
	vst1.32	{d16, d17}, [r0]
	add	r0, r1, #384
	vst1.32	{d16, d17}, [r0]
	add	r0, r1, #368
	vst1.32	{d16, d17}, [r0]
	add	r0, r1, #352
	vst1.32	{d16, d17}, [r0]
	add	r0, r1, #336
	vst1.32	{d16, d17}, [r0]
	add	r0, r1, #320
	vst1.32	{d16, d17}, [r0]
	add	r0, r1, #304
	vst1.32	{d16, d17}, [r0]
	add	r0, r1, #288
	vst1.32	{d16, d17}, [r0]
	add	r0, r1, #272
	vst1.32	{d16, d17}, [r0]
	add	r0, r1, #256
	vst1.32	{d16, d17}, [r0]
	add	r0, r1, #240
	vst1.32	{d16, d17}, [r0]
	add	r0, r1, #224
	vst1.32	{d16, d17}, [r0]
	add	r0, r1, #208
	vst1.32	{d16, d17}, [r0]
	add	r0, r1, #192
	vst1.32	{d16, d17}, [r0]
	add	r0, r1, #176
	vst1.32	{d16, d17}, [r0]
	add	r0, r1, #160
	vst1.32	{d16, d17}, [r0]
	add	r0, r1, #144
	vst1.32	{d16, d17}, [r0]
	add	r0, r1, #128
	vst1.32	{d16, d17}, [r0]
	add	r0, r1, #112
	vst1.32	{d16, d17}, [r0]
	add	r0, r1, #96
	vst1.32	{d16, d17}, [r0]
	add	r0, r1, #80
	vst1.32	{d16, d17}, [r0]
	add	r0, r1, #64
	vst1.32	{d16, d17}, [r0]
	add	r0, r1, #48
	vst1.32	{d16, d17}, [r0]
	add	r0, r1, #32
	vst1.32	{d16, d17}, [r0]
	add	r0, r1, #16
	vst1.32	{d16, d17}, [r0]
	mov	r0, #448
	vst1.32	{d16, d17}, [r1], r0
	mov	r0, sp
	sub	r2, r0, #16
	vst1.32	{d16, d17}, [r1]
	mov	sp, r2
	sub	lr, r11, #392
	adr	r1, .LCPI0_180
	sub	r3, sp, #24
	vld1.64	{d16, d17}, [r1:128]
	sub	lr, lr, #1024
	vstmia	lr, {d16, d17}          @ 16-byte Spill
	mov	sp, r3
	mov	r12, sp
	sub	r9, r12, #48
	mov	sp, r9
	mov	r7, sp
	sub	lr, r7, #8
	mov	sp, lr
	sub	r8, r11, #312
	mov	r6, r9
	sub	r8, r8, #1024
	vst1.64	{d16, d17}, [r6]!
	mov	r1, #6
	mov	r10, #6
	vldmia	r8, {d14, d15}          @ 16-byte Reload
	strb	r1, [r7, #-8]
	strb	r1, [r7, #-7]
	mov	r1, r3
	vst1.64	{d12, d13}, [r6]
	ldr	r8, [r11, #-1560]       @ 4-byte Reload
	ldr	r6, [r11, #-1400]       @ 4-byte Reload
	str	r8, [r0, #-16]
	str	r6, [r0, #-12]
	ldr	r6, [r11, #-1988]       @ 4-byte Reload
	vst1.64	{d14, d15}, [r1]!
	str	r6, [r0, #-8]
	mov	r0, #2
	strb	r10, [r7, #-6]
	stm	r1, {r0, r4}
	adr	r0, .LCPI0_181
	vld1.64	{d16, d17}, [r0:128]
	sub	r0, r12, #16
	vst1.64	{d16, d17}, [r0]
	sub	sp, sp, #24
	mov	r0, #3
	mov	r1, #0
	stm	sp, {r9, lr}
	sub	r10, r11, #104
	str	r4, [sp, #8]
	str	r4, [sp, #12]
	str	r10, [sp, #16]
	bl	nnc_aten_matmul
	add	sp, sp, #24
	mov	r2, #116
	mov	lr, r8
	vld1.32	{d16, d17}, [lr], r2
	ldr	r10, [r11, #-1556]      @ 4-byte Reload
	vclt.f32	q9, q8, #0
	ldr	r3, [r11, #-2096]       @ 4-byte Reload
	vbic	q8, q8, q9
	ldr	r7, [r11, #-2100]       @ 4-byte Reload
	mov	r12, r10
	add	r6, r3, #64
	vst1.32	{d16, d17}, [r12], r2
	mov	r2, #80
	mov	r0, r3
	mov	r1, r7
	vld1.32	{d16, d17}, [r0], r2
	vclt.f32	q9, q8, #0
	vbic	q8, q8, q9
	vst1.32	{d16, d17}, [r1], r2
	add	r2, r3, #16
	vld1.32	{d16, d17}, [r2]
	add	r2, r7, #16
	vclt.f32	q9, q8, #0
	vbic	q8, q8, q9
	vst1.32	{d16, d17}, [r2]
	add	r2, r3, #32
	vld1.32	{d16, d17}, [r2]
	add	r2, r7, #32
	vclt.f32	q9, q8, #0
	vbic	q8, q8, q9
	vst1.32	{d16, d17}, [r2]
	add	r2, r3, #48
	vld1.32	{d16, d17}, [r2]
	add	r2, r7, #48
	vclt.f32	q9, q8, #0
	vbic	q8, q8, q9
	vst1.32	{d16, d17}, [r2]
	add	r2, r7, #64
	vld1.32	{d16, d17}, [r6]
	vclt.f32	q9, q8, #0
	vbic	q8, q8, q9
	vst1.32	{d16, d17}, [r2]
	vld1.32	{d16, d17}, [r0]
	mov	r0, sp
	sub	r2, r0, #16
	vclt.f32	q9, q8, #0
	vbic	q8, q8, q9
	vst1.32	{d16, d17}, [r1]
	vldr	s0, [r8, #112]
	vmax.f32	d0, d0, d11
	vstr	s0, [r10, #112]
	vldr	s0, [lr]
	vmax.f32	d0, d0, d11
	vstr	s0, [r12]
	mov	sp, r2
	sub	r3, sp, #24
	mov	sp, r3
	mov	r12, sp
	sub	r9, r12, #48
	mov	sp, r9
	mov	r6, sp
	sub	lr, r6, #8
	mov	sp, lr
	mov	r1, #6
	mov	r7, r9
	strb	r1, [r6, #-8]
	mov	r8, #6
	strb	r1, [r6, #-7]
	mov	r1, r3
	vst1.64	{d12, d13}, [r7]!
	vst1.64	{d14, d15}, [r1]!
	str	r4, [r11, #-100]
	sub	r4, r11, #392
	sub	r4, r4, #1024
	vldmia	r4, {d16, d17}          @ 16-byte Reload
	ldr	r4, [r11, #-100]
	vst1.64	{d16, d17}, [r7]
	ldr	r7, [r11, #-1968]       @ 4-byte Reload
	str	r7, [r0, #-16]
	str	r10, [r0, #-12]
	ldr	r10, [r11, #-1980]      @ 4-byte Reload
	str	r10, [r0, #-8]
	mov	r0, #2
	strb	r8, [r6, #-6]
	stm	r1, {r0, r4}
	adr	r0, .LCPI0_182
	vld1.64	{d16, d17}, [r0:128]
	sub	r0, r12, #16
	vst1.64	{d16, d17}, [r0]
	sub	sp, sp, #24
	sub	r0, r11, #104
	stm	sp, {r9, lr}
	mov	r1, #0
	str	r0, [sp, #16]
	mov	r0, #3
	str	r4, [sp, #8]
	str	r4, [sp, #12]
	bl	nnc_aten_matmul
	ldr	r10, [r11, #-1552]      @ 4-byte Reload
	add	sp, sp, #24
	vldr	s0, [r7]
	ldr	r6, [r11, #-1956]       @ 4-byte Reload
	vadd.f32	s2, s0, s16
	vcmpe.f32	s2, #0
	vmrs	APSR_nzcv, fpscr
	vdiv.f32	s0, s2, s18
	vmax.f32	d1, d1, d11
	vmovmi.f32	s0, s22
	vcmpe.f32	s2, s18
	vmrs	APSR_nzcv, fpscr
	vmovgt.f32	s0, s20
	b	.LBB0_152
	.p2align	4
@ %bb.138:
.LCPI0_182:
	.long	30                      @ 0x1e
	.long	0                       @ 0x0
	.long	120                     @ 0x78
	.long	0                       @ 0x0
	.p2align	4
@ %bb.139:
.LCPI0_183:
	.long	14                      @ 0xe
	.long	0                       @ 0x0
	.long	14                      @ 0xe
	.long	0                       @ 0x0
	.p2align	4
@ %bb.140:
.LCPI0_184:
	.long	1                       @ 0x1
	.long	0                       @ 0x0
	.long	48                      @ 0x30
	.long	0                       @ 0x0
	.p2align	4
@ %bb.141:
.LCPI0_185:
	.long	4                       @ 0x4
	.long	0                       @ 0x0
	.long	4                       @ 0x4
	.long	0                       @ 0x0
	.p2align	4
@ %bb.142:
.LCPI0_186:
	.long	1                       @ 0x1
	.long	0                       @ 0x0
	.long	120                     @ 0x78
	.long	0                       @ 0x0
	.p2align	4
@ %bb.143:
.LCPI0_187:
	.long	1                       @ 0x1
	.long	0                       @ 0x0
	.long	1                       @ 0x1
	.long	0                       @ 0x0
	.p2align	4
@ %bb.144:
.LCPI0_188:
	.long	48                      @ 0x30
	.long	0                       @ 0x0
	.long	120                     @ 0x78
	.long	0                       @ 0x0
	.p2align	4
@ %bb.145:
.LCPI0_189:
	.long	4                       @ 0x4
	.long	0                       @ 0x0
	.long	1                       @ 0x1
	.long	0                       @ 0x0
	.p2align	4
@ %bb.146:
.LCPI0_190:
	.long	1                       @ 0x1
	.long	0                       @ 0x0
	.long	144                     @ 0x90
	.long	0                       @ 0x0
	.p2align	4
@ %bb.147:
.LCPI0_191:
	.long	144                     @ 0x90
	.long	0                       @ 0x0
	.long	48                      @ 0x30
	.long	0                       @ 0x0
	.p2align	4
@ %bb.148:
.LCPI0_192:
	.long	5                       @ 0x5
	.long	0                       @ 0x0
	.long	5                       @ 0x5
	.long	0                       @ 0x0
	.p2align	4
@ %bb.149:
.LCPI0_193:
	.long	144                     @ 0x90
	.long	0                       @ 0x0
	.long	1                       @ 0x1
	.long	0                       @ 0x0
@ %bb.150:
	.p2align	4
@ %bb.151:
.LCPI0_261:
	.long	4                       @ 0x4
	.long	0                       @ 0x0
	.long	4                       @ 0x4
	.long	0                       @ 0x0
	.p2align	2
.LBB0_152:                              @ %cond196.preheader.i
                                        @ =>This Inner Loop Header: Depth=1
	add	r0, r10, r4
	subs	r5, r5, #1
	vldr	s2, [r0]
	add	r0, r6, r4
	add	r4, r4, #844
	vmul.f32	s2, s0, s2
	vadd.f32	s4, s2, s16
	vmax.f32	d16, d2, d11
	vmin.f32	d2, d16, d9
	vmul.f32	s2, s2, s4
	vdiv.f32	s2, s2, s18
	vstr	s2, [r0]
	bne	.LBB0_152
@ %bb.153:                              @ %exit195.i
	adr	r0, .LCPI0_183
	sub	lr, r11, #312
	vld1.64	{d12, d13}, [r0:128]
	adr	r0, .LCPI0_184
	mov	r7, sp
	sub	r8, r7, #16
	vld1.64	{d16, d17}, [r0:128]
	sub	lr, lr, #1024
	vstmia	lr, {d16, d17}          @ 16-byte Spill
	mov	sp, r8
	sub	r3, sp, #32
	mov	sp, r3
	mov	r5, sp
	sub	lr, r5, #104
	mov	sp, lr
	mov	r4, sp
	sub	r12, r4, #8
	mov	sp, r12
	mov	r1, sp
	sub	r2, r1, #56
	mov	sp, r2
	mov	r0, lr
	ldr	r10, [r11, #-1536]      @ 4-byte Reload
	vst1.64	{d16, d17}, [r0]!
	mov	r9, #6
	str	r10, [r7, #-16]
	str	r6, [r7, #-12]
	sub	r6, r5, #56
	strb	r9, [r4, #-8]
	vst1.64	{d12, d13}, [r0]
	adr	r0, .LCPI0_185
	vld1.64	{d16, d17}, [r0:128]
	sub	r0, r11, #376
	sub	r0, r0, #1024
	strb	r9, [r4, #-7]
	vstmia	r0, {d16, d17}          @ 16-byte Spill
	mov	r0, r3
	vst1.64	{d16, d17}, [r0]!
	vst1.64	{d12, d13}, [r6]
	adr	r6, .LCPI0_186
	vld1.64	{d16, d17}, [r6:128]
	sub	r6, r5, #72
	vst1.64	{d16, d17}, [r6]
	ldr	r6, [r11, #-1964]       @ 4-byte Reload
	str	r6, [r7, #-8]
	adr	r6, .LCPI0_187
	vld1.64	{d14, d15}, [r6:128]
	sub	r6, r5, #24
	strb	r9, [r4, #-6]
	vst1.64	{d14, d15}, [r6]
	adr	r6, .LCPI0_188
	vld1.64	{d16, d17}, [r6:128]
	sub	r6, r5, #40
	vst1.64	{d16, d17}, [r6]
	ldr	r6, [r11, #-1960]       @ 4-byte Reload
	str	r6, [r7, #-4]
	strb	r9, [r4, #-5]
	adr	r4, .LCPI0_189
	vld1.64	{d16, d17}, [r4:128]
	sub	r4, r11, #392
	sub	r4, r4, #1024
	vst1.64	{d16, d17}, [r0]
	mov	r0, #48
	vstmia	r4, {d16, d17}          @ 16-byte Spill
	mov	r4, #0
	vmov.i32	q8, #0x0
	stmdb	r5, {r0, r4}
	sub	r0, r1, #24
	vst1.64	{d14, d15}, [r0]
	mov	r0, #1
	stmdb	r1, {r0, r4}
	mov	r0, r2
	vst1.64	{d14, d15}, [r0]!
	vst1.64	{d16, d17}, [r0]
	sub	sp, sp, #24
	mov	r0, #7
	str	r2, [sp, #16]
	str	r0, [sp, #8]
	mov	r0, #4
	mov	r1, #0
	mov	r2, r8
	str	lr, [sp]
	str	r12, [sp, #4]
	str	r4, [sp, #12]
	bl	nnc_aten_conv2d
	add	sp, sp, #24
	mov	r1, sp
	sub	r0, r1, #16
	str	r0, [r11, #-1432]       @ 4-byte Spill
	mov	sp, r0
	sub	r3, sp, #32
	mov	sp, r3
	mov	r6, sp
	sub	lr, r6, #104
	mov	sp, lr
	mov	r5, sp
	sub	r12, r5, #8
	mov	sp, r12
	mov	r2, sp
	sub	r8, r2, #56
	mov	sp, r8
	ldr	r9, [r11, #-1936]       @ 4-byte Reload
	mov	r0, #6
	str	r9, [r1, #-16]
	adr	r7, .LCPI0_190
	vld1.64	{d16, d17}, [r7:128]
	mov	r7, lr
	strb	r0, [r5, #-8]
	strb	r0, [r5, #-7]
	sub	r0, r11, #376
	vst1.64	{d16, d17}, [r7]!
	sub	r0, r0, #1024
	str	r10, [r1, #-12]
	sub	r10, r6, #56
	vst1.64	{d12, d13}, [r7]
	mov	r7, r3
	vldmia	r0, {d16, d17}          @ 16-byte Reload
	sub	r0, r6, #72
	vst1.64	{d12, d13}, [r10]
	sub	r10, r11, #312
	sub	r10, r10, #1024
	vst1.64	{d16, d17}, [r7]!
	vldmia	r10, {d16, d17}         @ 16-byte Reload
	mov	r10, #6
	strb	r10, [r5, #-6]
	vst1.64	{d16, d17}, [r0]
	ldr	r0, [r11, #-1944]       @ 4-byte Reload
	str	r0, [r1, #-8]
	sub	r0, r6, #24
	vst1.64	{d14, d15}, [r0]
	adr	r0, .LCPI0_191
	vld1.64	{d16, d17}, [r0:128]
	sub	r0, r6, #40
	vst1.64	{d16, d17}, [r0]
	ldr	r0, [r11, #-1940]       @ 4-byte Reload
	str	r0, [r1, #-4]
	sub	r0, r11, #392
	sub	r0, r0, #1024
	strb	r10, [r5, #-5]
	mov	r5, #144
	str	r4, [r6, #-4]
	vldmia	r0, {d16, d17}          @ 16-byte Reload
	sub	r0, r2, #24
	vst1.64	{d14, d15}, [r0]
	mov	r0, #1
	vst1.64	{d16, d17}, [r7]
	vmov.i32	q8, #0x0
	stmdb	r2, {r0, r4}
	mov	r0, r8
	vst1.64	{d14, d15}, [r0]!
	str	r5, [r6, #-8]
	vst1.64	{d16, d17}, [r0]
	sub	sp, sp, #24
	ldr	r2, [r11, #-1432]       @ 4-byte Reload
	mov	r0, #7
	add	r1, sp, #8
	str	lr, [sp]
	str	r12, [sp, #4]
	stm	r1, {r0, r4, r8}
	mov	r0, #4
	mov	r1, #0
	bl	nnc_aten_conv2d
	add	sp, sp, #24
	ldr	r7, [r11, #-1924]       @ 4-byte Reload
.LBB0_154:                              @ %cond205.preheader.i
                                        @ =>This Inner Loop Header: Depth=1
	add	r0, r9, r4
	subs	r5, r5, #1
	vldr	s0, [r0]
	add	r0, r7, r4
	add	r4, r4, #844
	vadd.f32	s2, s0, s16
	vmax.f32	d16, d1, d11
	vmin.f32	d1, d16, d9
	vmul.f32	s0, s0, s2
	vdiv.f32	s0, s0, s18
	vstr	s0, [r0]
	bne	.LBB0_154
@ %bb.155:                              @ %exit204.i
	adr	r0, .LCPI0_183
	mov	r5, sp
	vld1.64	{d16, d17}, [r0:128]
	adr	r0, .LCPI0_190
	sub	r2, r5, #16
	vld1.64	{d12, d13}, [r0:128]
	mov	sp, r2
	sub	r3, sp, #32
	mov	sp, r3
	mov	r6, sp
	sub	lr, r6, #104
	mov	sp, lr
	mov	r4, sp
	sub	r12, r4, #8
	mov	sp, r12
	mov	r1, sp
	sub	r9, r1, #56
	mov	sp, r9
	ldr	r0, [r11, #-1540]       @ 4-byte Reload
	mov	r10, #6
	str	r0, [r5, #-16]
	strb	r10, [r4, #-8]
	mov	r8, r0
	mov	r0, lr
	vst1.64	{d12, d13}, [r0]!
	str	r7, [r11, #-100]
	sub	r7, r11, #376
	sub	r7, r7, #1024
	vstmia	r7, {d16, d17}          @ 16-byte Spill
	ldr	r7, [r11, #-100]
	str	r7, [r5, #-12]
	sub	r7, r6, #56
	vst1.64	{d16, d17}, [r0]
	adr	r0, .LCPI0_261
	vld1.64	{d18, d19}, [r0:128]
	sub	r0, r11, #392
	sub	r0, r0, #1024
	vst1.64	{d16, d17}, [r7]
	sub	r7, r6, #72
	vstmia	r0, {d18, d19}          @ 16-byte Spill
	mov	r0, r3
	vst1.64	{d12, d13}, [r7]
	ldr	r7, [r11, #-1932]       @ 4-byte Reload
	strb	r10, [r4, #-7]
	vst1.64	{d18, d19}, [r0]!
	str	r7, [r5, #-8]
	adr	r7, .LCPI0_192
	vld1.64	{d16, d17}, [r7:128]
	sub	r7, r6, #24
	strb	r10, [r4, #-6]
	vst1.64	{d16, d17}, [r7]
	adr	r7, .LCPI0_193
	vld1.64	{d16, d17}, [r7:128]
	sub	r7, r6, #40
	vst1.64	{d16, d17}, [r7]
	ldr	r7, [r11, #-1928]       @ 4-byte Reload
	str	r7, [r5, #-4]
	mov	r5, #144
	strb	r10, [r4, #-5]
	adr	r4, .LCPI0_262
	vld1.64	{d16, d17}, [r4:128]
	mov	r4, #0
	vst1.64	{d16, d17}, [r0]
	str	r5, [r6, #-8]
	str	r4, [r6, #-4]
	adr	r0, .LCPI0_263
	vld1.64	{d14, d15}, [r0:128]
	sub	r0, r1, #24
	vst1.64	{d14, d15}, [r0]
	str	r5, [r1, #-8]
	str	r4, [r1, #-4]
	adr	r0, .LCPI0_264
	vld1.64	{d16, d17}, [r0:128]
	sub	r0, r11, #312
	sub	r0, r0, #1024
	vstmia	r0, {d16, d17}          @ 16-byte Spill
	mov	r0, r9
	vst1.64	{d14, d15}, [r0]!
	vst1.64	{d16, d17}, [r0]
	sub	sp, sp, #24
	mov	r0, #7
	add	r1, sp, #8
	str	lr, [sp]
	str	r12, [sp, #4]
	stm	r1, {r0, r4, r9}
	mov	r0, #4
	mov	r1, #0
	bl	nnc_aten_conv2d
	add	sp, sp, #24
	mov	lr, sp
	sub	r2, lr, #8
	mov	sp, r2
	sub	r3, sp, #16
	mov	sp, r3
	mov	r1, sp
	sub	r9, r1, #64
	mov	sp, r9
	mov	r7, sp
	sub	r12, r7, #8
	mov	sp, r12
	sub	r0, sp, #16
	mov	sp, r0
	mov	r6, r9
	strb	r10, [r7, #-8]
	vst1.64	{d12, d13}, [r6]!
	vst1.64	{d14, d15}, [r6]
	ldr	r6, [r11, #-1920]       @ 4-byte Reload
	strb	r10, [r7, #-7]
	sub	r7, r1, #16
	stmdb	lr, {r6, r8}
	sub	lr, r11, #392
	sub	lr, lr, #1024
	sub	r1, r1, #32
	vst1.64	{d14, d15}, [r0]
	vldmia	lr, {d16, d17}          @ 16-byte Reload
	sub	lr, r11, #376
	sub	lr, lr, #1024
	vst1.64	{d16, d17}, [r3]
	vldmia	lr, {d16, d17}          @ 16-byte Reload
	vst1.64	{d16, d17}, [r7]
	vst1.64	{d12, d13}, [r1]
	sub	sp, sp, #24
	mov	r1, #2
	stm	sp, {r9, r12}
	str	r1, [sp, #8]
	mov	r1, #0
	str	r0, [sp, #16]
	mov	r0, #2
	str	r4, [sp, #12]
	bl	nnc_aten_adaptive_avg_pool2d
	add	sp, sp, #24
	ldr	r0, [r11, #-1384]       @ 4-byte Reload
	vld1.32	{d16[], d17[]}, [r6:32]
	ldr	r1, [r11, #-2052]       @ 4-byte Reload
	vst1.32	{d16, d17}, [r0]
	add	r0, r1, #528
	vst1.32	{d16, d17}, [r0]
	add	r0, r1, #512
	vst1.32	{d16, d17}, [r0]
	add	r0, r1, #496
	vst1.32	{d16, d17}, [r0]
	add	r0, r1, #480
	vst1.32	{d16, d17}, [r0]
	add	r0, r1, #464
	vst1.32	{d16, d17}, [r0]
	add	r0, r1, #448
	vst1.32	{d16, d17}, [r0]
	add	r0, r1, #432
	vst1.32	{d16, d17}, [r0]
	add	r0, r1, #416
	vst1.32	{d16, d17}, [r0]
	add	r0, r1, #400
	vst1.32	{d16, d17}, [r0]
	add	r0, r1, #384
	vst1.32	{d16, d17}, [r0]
	add	r0, r1, #368
	vst1.32	{d16, d17}, [r0]
	add	r0, r1, #352
	vst1.32	{d16, d17}, [r0]
	add	r0, r1, #336
	vst1.32	{d16, d17}, [r0]
	add	r0, r1, #320
	vst1.32	{d16, d17}, [r0]
	add	r0, r1, #304
	vst1.32	{d16, d17}, [r0]
	add	r0, r1, #288
	vst1.32	{d16, d17}, [r0]
	add	r0, r1, #272
	vst1.32	{d16, d17}, [r0]
	add	r0, r1, #256
	vst1.32	{d16, d17}, [r0]
	add	r0, r1, #240
	vst1.32	{d16, d17}, [r0]
	add	r0, r1, #224
	vst1.32	{d16, d17}, [r0]
	add	r0, r1, #208
	vst1.32	{d16, d17}, [r0]
	add	r0, r1, #192
	vst1.32	{d16, d17}, [r0]
	add	r0, r1, #176
	vst1.32	{d16, d17}, [r0]
	add	r0, r1, #160
	vst1.32	{d16, d17}, [r0]
	add	r0, r1, #144
	vst1.32	{d16, d17}, [r0]
	add	r0, r1, #128
	vst1.32	{d16, d17}, [r0]
	add	r0, r1, #112
	vst1.32	{d16, d17}, [r0]
	add	r0, r1, #96
	vst1.32	{d16, d17}, [r0]
	add	r0, r1, #80
	vst1.32	{d16, d17}, [r0]
	add	r0, r1, #64
	vst1.32	{d16, d17}, [r0]
	add	r0, r1, #48
	vst1.32	{d16, d17}, [r0]
	add	r0, r1, #32
	vst1.32	{d16, d17}, [r0]
	add	r0, r1, #16
	vst1.32	{d16, d17}, [r0]
	mov	r0, #544
	vst1.32	{d16, d17}, [r1], r0
	mov	r0, sp
	sub	r2, r0, #16
	vst1.32	{d16, d17}, [r1]
	mov	sp, r2
	sub	lr, r11, #376
	adr	r1, .LCPI0_197
	sub	r3, sp, #24
	vld1.64	{d16, d17}, [r1:128]
	sub	lr, lr, #1024
	vstmia	lr, {d16, d17}          @ 16-byte Spill
	mov	sp, r3
	mov	r12, sp
	sub	r9, r12, #48
	mov	sp, r9
	mov	r7, sp
	sub	lr, r7, #8
	mov	sp, lr
	sub	r10, r11, #312
	mov	r6, r9
	sub	r10, r10, #1024
	vst1.64	{d16, d17}, [r6]!
	mov	r1, #6
	mov	r8, #6
	vldmia	r10, {d14, d15}         @ 16-byte Reload
	strb	r1, [r7, #-8]
	strb	r1, [r7, #-7]
	mov	r1, r3
	vst1.64	{d12, d13}, [r6]
	ldr	r10, [r11, #-1548]      @ 4-byte Reload
	ldr	r6, [r11, #-1384]       @ 4-byte Reload
	vst1.64	{d14, d15}, [r1]!
	str	r10, [r0, #-16]
	str	r6, [r0, #-12]
	ldr	r6, [r11, #-1916]       @ 4-byte Reload
	str	r6, [r0, #-8]
	mov	r0, #2
	strb	r8, [r7, #-6]
	stm	r1, {r0, r4}
	adr	r0, .LCPI0_198
	vld1.64	{d16, d17}, [r0:128]
	sub	r0, r12, #16
	vst1.64	{d16, d17}, [r0]
	sub	sp, sp, #24
	mov	r0, #3
	mov	r1, #0
	stm	sp, {r9, lr}
	sub	r8, r11, #104
	str	r4, [sp, #8]
	str	r4, [sp, #12]
	str	r8, [sp, #16]
	bl	nnc_aten_matmul
	add	sp, sp, #24
	vld1.32	{d16, d17}, [r10]
	mov	r2, #112
	vclt.f32	q9, q8, #0
	ldr	r3, [r11, #-2040]       @ 4-byte Reload
	vbic	q8, q8, q9
	ldr	r10, [r11, #-1544]      @ 4-byte Reload
	ldr	r1, [r11, #-2044]       @ 4-byte Reload
	mov	r0, r3
	vst1.32	{d16, d17}, [r10]
	mov	r7, r1
	vld1.32	{d16, d17}, [r0], r2
	vclt.f32	q9, q8, #0
	vbic	q8, q8, q9
	vst1.32	{d16, d17}, [r7], r2
	add	r2, r3, #16
	vld1.32	{d16, d17}, [r2]
	add	r2, r1, #16
	vclt.f32	q9, q8, #0
	vbic	q8, q8, q9
	vst1.32	{d16, d17}, [r2]
	add	r2, r3, #32
	vld1.32	{d16, d17}, [r2]
	add	r2, r1, #32
	vclt.f32	q9, q8, #0
	vbic	q8, q8, q9
	vst1.32	{d16, d17}, [r2]
	add	r2, r3, #48
	vld1.32	{d16, d17}, [r2]
	add	r2, r1, #48
	vclt.f32	q9, q8, #0
	vbic	q8, q8, q9
	vst1.32	{d16, d17}, [r2]
	add	r2, r3, #64
	vld1.32	{d16, d17}, [r2]
	add	r2, r1, #64
	vclt.f32	q9, q8, #0
	vbic	q8, q8, q9
	vst1.32	{d16, d17}, [r2]
	add	r2, r3, #80
	add	r3, r3, #96
	vld1.32	{d16, d17}, [r2]
	add	r2, r1, #80
	vclt.f32	q9, q8, #0
	vbic	q8, q8, q9
	vst1.32	{d16, d17}, [r2]
	add	r2, r1, #96
	vld1.32	{d16, d17}, [r3]
	vclt.f32	q9, q8, #0
	vbic	q8, q8, q9
	vst1.32	{d16, d17}, [r2]
	vld1.32	{d16, d17}, [r0]
	mov	r0, sp
	sub	r2, r0, #16
	vclt.f32	q9, q8, #0
	b	.LBB0_159
	.p2align	4
@ %bb.156:
.LCPI0_262:
	.long	4                       @ 0x4
	.long	0                       @ 0x0
	.long	1                       @ 0x1
	.long	0                       @ 0x0
	.p2align	4
@ %bb.157:
.LCPI0_263:
	.long	1                       @ 0x1
	.long	0                       @ 0x0
	.long	1                       @ 0x1
	.long	0                       @ 0x0
	.p2align	4
@ %bb.158:
.LCPI0_264:
	.long	2                       @ 0x2
	.long	0                       @ 0x0
	.long	2                       @ 0x2
	.long	0                       @ 0x0
	.p2align	2
.LBB0_159:                              @ %exit204.i
	vbic	q8, q8, q9
	vst1.32	{d16, d17}, [r7]
	mov	sp, r2
	sub	r3, sp, #24
	mov	sp, r3
	mov	r12, sp
	b	.LBB0_174
	.p2align	4
@ %bb.160:
.LCPI0_195:
	.long	1                       @ 0x1
	.long	0                       @ 0x0
	.long	1                       @ 0x1
	.long	0                       @ 0x0
@ %bb.161:
	.p2align	4
@ %bb.162:
.LCPI0_197:
	.long	1                       @ 0x1
	.long	0                       @ 0x0
	.long	36                      @ 0x24
	.long	0                       @ 0x0
	.p2align	4
@ %bb.163:
.LCPI0_198:
	.long	144                     @ 0x90
	.long	0                       @ 0x0
	.long	36                      @ 0x24
	.long	0                       @ 0x0
	.p2align	4
@ %bb.164:
.LCPI0_199:
	.long	36                      @ 0x24
	.long	0                       @ 0x0
	.long	144                     @ 0x90
	.long	0                       @ 0x0
	.p2align	4
@ %bb.165:
.LCPI0_200:
	.long	14                      @ 0xe
	.long	0                       @ 0x0
	.long	14                      @ 0xe
	.long	0                       @ 0x0
	.p2align	4
@ %bb.166:
.LCPI0_201:
	.long	1                       @ 0x1
	.long	0                       @ 0x0
	.long	48                      @ 0x30
	.long	0                       @ 0x0
	.p2align	4
@ %bb.167:
.LCPI0_202:
	.long	4                       @ 0x4
	.long	0                       @ 0x0
	.long	4                       @ 0x4
	.long	0                       @ 0x0
	.p2align	4
@ %bb.168:
.LCPI0_203:
	.long	1                       @ 0x1
	.long	0                       @ 0x0
	.long	144                     @ 0x90
	.long	0                       @ 0x0
	.p2align	4
@ %bb.169:
.LCPI0_204:
	.long	48                      @ 0x30
	.long	0                       @ 0x0
	.long	144                     @ 0x90
	.long	0                       @ 0x0
	.p2align	4
@ %bb.170:
.LCPI0_205:
	.long	4                       @ 0x4
	.long	0                       @ 0x0
	.long	1                       @ 0x1
	.long	0                       @ 0x0
	.p2align	4
@ %bb.171:
.LCPI0_206:
	.long	1                       @ 0x1
	.long	0                       @ 0x0
	.long	288                     @ 0x120
	.long	0                       @ 0x0
	.p2align	4
@ %bb.172:
.LCPI0_207:
	.long	288                     @ 0x120
	.long	0                       @ 0x0
	.long	48                      @ 0x30
	.long	0                       @ 0x0
	.p2align	4
@ %bb.173:
.LCPI0_208:
	.long	7                       @ 0x7
	.long	0                       @ 0x0
	.long	7                       @ 0x7
	.long	0                       @ 0x0
	.p2align	2
.LBB0_174:                              @ %exit204.i
	sub	r9, r12, #48
	mov	sp, r9
	mov	r6, sp
	sub	lr, r6, #8
	mov	sp, lr
	mov	r1, #6
	mov	r7, r9
	strb	r1, [r6, #-8]
	mov	r8, #6
	strb	r1, [r6, #-7]
	mov	r1, r3
	vst1.64	{d12, d13}, [r7]!
	vst1.64	{d14, d15}, [r1]!
	str	r4, [r11, #-100]
	sub	r4, r11, #376
	sub	r4, r4, #1024
	vldmia	r4, {d16, d17}          @ 16-byte Reload
	ldr	r4, [r11, #-100]
	vst1.64	{d16, d17}, [r7]
	ldr	r7, [r11, #-1908]       @ 4-byte Reload
	str	r7, [r0, #-16]
	str	r10, [r0, #-12]
	ldr	r10, [r11, #-1912]      @ 4-byte Reload
	str	r10, [r0, #-8]
	mov	r0, #2
	strb	r8, [r6, #-6]
	stm	r1, {r0, r4}
	adr	r0, .LCPI0_199
	vld1.64	{d16, d17}, [r0:128]
	sub	r0, r12, #16
	vst1.64	{d16, d17}, [r0]
	sub	sp, sp, #24
	sub	r0, r11, #104
	stm	sp, {r9, lr}
	mov	r1, #0
	str	r0, [sp, #16]
	mov	r0, #3
	str	r4, [sp, #8]
	str	r4, [sp, #12]
	bl	nnc_aten_matmul
	ldr	r10, [r11, #-1540]      @ 4-byte Reload
	add	sp, sp, #24
	vldr	s0, [r7]
	ldr	r1, [r11, #-1904]       @ 4-byte Reload
	vadd.f32	s2, s0, s16
	vcmpe.f32	s2, #0
	vmrs	APSR_nzcv, fpscr
	vdiv.f32	s0, s2, s18
	vmax.f32	d1, d1, d11
	vmovmi.f32	s0, s22
	vcmpe.f32	s2, s18
	vmrs	APSR_nzcv, fpscr
	vmovgt.f32	s0, s20
.LBB0_175:                              @ %cond220.preheader.i
                                        @ =>This Inner Loop Header: Depth=1
	add	r0, r10, r4
	subs	r5, r5, #1
	vldr	s2, [r0]
	add	r0, r1, r4
	add	r4, r4, #844
	vmul.f32	s2, s0, s2
	vadd.f32	s4, s2, s16
	vmax.f32	d16, d2, d11
	vmin.f32	d2, d16, d9
	vmul.f32	s2, s2, s4
	vdiv.f32	s2, s2, s18
	vstr	s2, [r0]
	bne	.LBB0_175
@ %bb.176:                              @ %exit219.i
	mov	r6, sp
	sub	r2, r6, #16
	mov	sp, r2
	sub	r3, sp, #32
	mov	sp, r3
	mov	r5, sp
	sub	lr, r5, #104
	mov	sp, lr
	mov	r7, sp
	sub	r12, r7, #8
	mov	sp, r12
	mov	r4, sp
	sub	r9, r4, #56
	mov	sp, r9
	ldr	r10, [r11, #-1892]      @ 4-byte Reload
	mov	r8, #6
	str	r10, [r6, #-16]
	adr	r0, .LCPI0_200
	vld1.64	{d16, d17}, [r0:128]
	adr	r0, .LCPI0_201
	vld1.64	{d18, d19}, [r0:128]
	mov	r0, lr
	vst1.64	{d18, d19}, [r0]!
	str	r1, [r6, #-12]
	sub	r1, r5, #56
	strb	r8, [r7, #-8]
	vst1.64	{d16, d17}, [r0]
	adr	r0, .LCPI0_202
	vld1.64	{d18, d19}, [r0:128]
	mov	r0, r3
	strb	r8, [r7, #-7]
	vst1.64	{d18, d19}, [r0]!
	vst1.64	{d16, d17}, [r1]
	adr	r1, .LCPI0_203
	vld1.64	{d16, d17}, [r1:128]
	sub	r1, r5, #72
	vst1.64	{d16, d17}, [r1]
	ldr	r1, [r11, #-1900]       @ 4-byte Reload
	str	r1, [r6, #-8]
	adr	r1, .LCPI0_195
	vld1.64	{d16, d17}, [r1:128]
	sub	r1, r5, #24
	strb	r8, [r7, #-6]
	vst1.64	{d16, d17}, [r1]
	adr	r1, .LCPI0_204
	vld1.64	{d18, d19}, [r1:128]
	sub	r1, r5, #40
	vst1.64	{d18, d19}, [r1]
	ldr	r1, [r11, #-1896]       @ 4-byte Reload
	str	r1, [r6, #-4]
	mov	r6, #0
	strb	r8, [r7, #-5]
	adr	r1, .LCPI0_205
	vld1.64	{d18, d19}, [r1:128]
	mov	r7, #48
	vst1.64	{d18, d19}, [r0]
	sub	r0, r4, #24
	vmov.i32	q9, #0x0
	vst1.64	{d16, d17}, [r0]
	mov	r0, #1
	stmdb	r4, {r0, r6}
	mov	r0, r9
	vst1.64	{d16, d17}, [r0]!
	str	r7, [r5, #-8]
	str	r6, [r5, #-4]
	vst1.64	{d18, d19}, [r0]
	sub	sp, sp, #24
	mov	r0, #7
	add	r1, sp, #8
	str	lr, [sp]
	str	r12, [sp, #4]
	stm	r1, {r0, r6, r9}
	mov	r0, #4
	mov	r1, #0
	bl	nnc_aten_conv2d
	mov	r3, r10
	add	sp, sp, #24
	ldr	r10, [r11, #-1872]      @ 4-byte Reload
	ldr	r1, [r11, #-1884]       @ 4-byte Reload
	ldr	r2, [r11, #-1536]       @ 4-byte Reload
.LBB0_177:                              @ %cond229.preheader.i
                                        @ =>This Inner Loop Header: Depth=1
	add	r0, r3, r6
	subs	r7, r7, #1
	vldr	s0, [r0]
	add	r0, r2, r6
	vldr	s2, [r0]
	add	r0, r1, r6
	add	r6, r6, #844
	vadd.f32	s0, s2, s0
	vstr	s0, [r0]
	bne	.LBB0_177
@ %bb.178:                              @ %exit228.i
	mov	r6, sp
	sub	r2, r6, #16
	mov	sp, r2
	sub	r3, sp, #32
	mov	sp, r3
	mov	r7, r1
	mov	r1, sp
	sub	lr, r1, #104
	mov	sp, lr
	mov	r4, sp
	sub	r12, r4, #8
	mov	sp, r12
	mov	r0, sp
	sub	r9, r0, #56
	mov	sp, r9
	str	r10, [r6, #-16]
	adr	r5, .LCPI0_200
	vld1.64	{d16, d17}, [r5:128]
	adr	r5, .LCPI0_206
	mov	r8, #6
	vld1.64	{d18, d19}, [r5:128]
	mov	r5, lr
	vst1.64	{d18, d19}, [r5]!
	str	r7, [r6, #-12]
	sub	r7, r1, #56
	strb	r8, [r4, #-8]
	vst1.64	{d16, d17}, [r5]
	adr	r5, .LCPI0_202
	vld1.64	{d18, d19}, [r5:128]
	mov	r5, r3
	strb	r8, [r4, #-7]
	vst1.64	{d18, d19}, [r5]!
	vst1.64	{d16, d17}, [r7]
	adr	r7, .LCPI0_201
	vld1.64	{d16, d17}, [r7:128]
	sub	r7, r1, #72
	vst1.64	{d16, d17}, [r7]
	ldr	r7, [r11, #-1888]       @ 4-byte Reload
	str	r7, [r6, #-8]
	adr	r7, .LCPI0_195
	vld1.64	{d16, d17}, [r7:128]
	sub	r7, r1, #24
	strb	r8, [r4, #-6]
	vst1.64	{d16, d17}, [r7]
	adr	r7, .LCPI0_207
	vld1.64	{d18, d19}, [r7:128]
	sub	r7, r1, #40
	vst1.64	{d18, d19}, [r7]
	ldr	r7, [r11, #-1880]       @ 4-byte Reload
	str	r7, [r6, #-4]
	strb	r8, [r4, #-5]
	adr	r4, .LCPI0_205
	vld1.64	{d18, d19}, [r4:128]
	mov	r4, #0
	vst1.64	{d18, d19}, [r5]
	mov	r5, #288
	vmov.i32	q9, #0x0
	str	r5, [r1, #-8]
	str	r4, [r1, #-4]
	sub	r1, r0, #24
	vst1.64	{d16, d17}, [r1]
	mov	r1, #1
	stmdb	r0, {r1, r4}
	mov	r0, r9
	vst1.64	{d16, d17}, [r0]!
	vst1.64	{d18, d19}, [r0]
	sub	sp, sp, #24
	mov	r0, #7
	add	r1, sp, #8
	str	lr, [sp]
	str	r12, [sp, #4]
	stm	r1, {r0, r4, r9}
	mov	r0, #4
	mov	r1, #0
	bl	nnc_aten_conv2d
	add	sp, sp, #24
	ldr	r7, [r11, #-1864]       @ 4-byte Reload
.LBB0_179:                              @ %cond238.preheader.i
                                        @ =>This Inner Loop Header: Depth=1
	add	r0, r10, r4
	subs	r5, r5, #1
	vldr	s0, [r0]
	add	r0, r7, r4
	add	r4, r4, #844
	vadd.f32	s2, s0, s16
	vmax.f32	d16, d1, d11
	vmin.f32	d1, d16, d9
	vmul.f32	s0, s0, s2
	vdiv.f32	s0, s0, s18
	vstr	s0, [r0]
	bne	.LBB0_179
@ %bb.180:                              @ %exit237.i
	sub	lr, r11, #360
	adr	r0, .LCPI0_208
	vld1.64	{d16, d17}, [r0:128]
	sub	lr, lr, #1024
	mov	r5, sp
	sub	r2, r5, #16
	vstmia	lr, {d16, d17}          @ 16-byte Spill
	adr	r0, .LCPI0_209
	vld1.64	{d12, d13}, [r0:128]
	mov	sp, r2
	sub	r3, sp, #32
	mov	sp, r3
	mov	r6, sp
	sub	lr, r6, #104
	mov	sp, lr
	mov	r4, sp
	sub	r12, r4, #8
	mov	sp, r12
	mov	r1, sp
	sub	r9, r1, #56
	mov	sp, r9
	ldr	r0, [r11, #-1524]       @ 4-byte Reload
	mov	r10, #6
	str	r0, [r5, #-16]
	str	r7, [r5, #-12]
	sub	r7, r6, #56
	mov	r8, r0
	mov	r0, lr
	vst1.64	{d12, d13}, [r0]!
	strb	r10, [r4, #-8]
	vst1.64	{d16, d17}, [r0]
	adr	r0, .LCPI0_210
	vld1.64	{d16, d17}, [r0:128]
	adr	r0, .LCPI0_211
	vld1.64	{d18, d19}, [r0:128]
	sub	r0, r11, #376
	sub	r0, r0, #1024
	vst1.64	{d16, d17}, [r7]
	sub	r7, r6, #72
	vstmia	r0, {d18, d19}          @ 16-byte Spill
	mov	r0, r3
	vst1.64	{d12, d13}, [r7]
	ldr	r7, [r11, #-1876]       @ 4-byte Reload
	strb	r10, [r4, #-7]
	vst1.64	{d18, d19}, [r0]!
	str	r7, [r5, #-8]
	adr	r7, .LCPI0_212
	vld1.64	{d16, d17}, [r7:128]
	sub	r7, r6, #24
	strb	r10, [r4, #-6]
	vst1.64	{d16, d17}, [r7]
	adr	r7, .LCPI0_213
	vld1.64	{d16, d17}, [r7:128]
	sub	r7, r6, #40
	vst1.64	{d16, d17}, [r7]
	ldr	r7, [r11, #-1868]       @ 4-byte Reload
	str	r7, [r5, #-4]
	mov	r5, #288
	strb	r10, [r4, #-5]
	adr	r4, .LCPI0_214
	vld1.64	{d16, d17}, [r4:128]
	mov	r4, #0
	vst1.64	{d16, d17}, [r0]
	str	r5, [r6, #-8]
	str	r4, [r6, #-4]
	adr	r0, .LCPI0_215
	vld1.64	{d14, d15}, [r0:128]
	sub	r0, r1, #24
	vst1.64	{d14, d15}, [r0]
	str	r5, [r1, #-8]
	str	r4, [r1, #-4]
	adr	r0, .LCPI0_216
	vld1.64	{d16, d17}, [r0:128]
	sub	r0, r11, #312
	sub	r0, r0, #1024
	vstmia	r0, {d16, d17}          @ 16-byte Spill
	mov	r0, r9
	vst1.64	{d16, d17}, [r0]!
	vst1.64	{d16, d17}, [r0]
	sub	sp, sp, #24
	mov	r0, #7
	add	r1, sp, #8
	str	lr, [sp]
	str	r12, [sp, #4]
	stm	r1, {r0, r4, r9}
	mov	r0, #4
	mov	r1, #0
	bl	nnc_aten_conv2d
	add	sp, sp, #24
	mov	lr, sp
	sub	r2, lr, #8
	mov	sp, r2
	sub	r3, sp, #16
	mov	sp, r3
	mov	r1, sp
	sub	r9, r1, #64
	mov	sp, r9
	mov	r7, sp
	sub	r12, r7, #8
	mov	sp, r12
	sub	r0, sp, #16
	mov	sp, r0
	mov	r6, r9
	strb	r10, [r7, #-8]
	vst1.64	{d12, d13}, [r6]!
	vst1.64	{d14, d15}, [r6]
	ldr	r6, [r11, #-1860]       @ 4-byte Reload
	strb	r10, [r7, #-7]
	sub	r7, r1, #16
	stmdb	lr, {r6, r8}
	sub	lr, r11, #376
	sub	lr, lr, #1024
	sub	r1, r1, #32
	vst1.64	{d14, d15}, [r0]
	vldmia	lr, {d16, d17}          @ 16-byte Reload
	sub	lr, r11, #360
	sub	lr, lr, #1024
	vst1.64	{d16, d17}, [r3]
	vldmia	lr, {d16, d17}          @ 16-byte Reload
	vst1.64	{d16, d17}, [r7]
	vst1.64	{d12, d13}, [r1]
	sub	sp, sp, #24
	mov	r1, #2
	stm	sp, {r9, r12}
	str	r1, [sp, #8]
	mov	r1, #0
	str	r0, [sp, #16]
	mov	r0, #2
	str	r4, [sp, #12]
	bl	nnc_aten_adaptive_avg_pool2d
	add	sp, sp, #24
	ldr	r0, [r11, #-1368]       @ 4-byte Reload
	vld1.32	{d16[], d17[]}, [r6:32]
	ldr	r1, [r11, #-1976]       @ 4-byte Reload
	vst1.32	{d16, d17}, [r0]
	add	r0, r1, #992
	vst1.32	{d16, d17}, [r0]
	add	r0, r1, #976
	vst1.32	{d16, d17}, [r0]
	add	r0, r1, #960
	vst1.32	{d16, d17}, [r0]
	add	r0, r1, #944
	vst1.32	{d16, d17}, [r0]
	add	r0, r1, #928
	vst1.32	{d16, d17}, [r0]
	add	r0, r1, #912
	vst1.32	{d16, d17}, [r0]
	add	r0, r1, #896
	vst1.32	{d16, d17}, [r0]
	add	r0, r1, #880
	vst1.32	{d16, d17}, [r0]
	add	r0, r1, #864
	vst1.32	{d16, d17}, [r0]
	add	r0, r1, #848
	vst1.32	{d16, d17}, [r0]
	add	r0, r1, #832
	vst1.32	{d16, d17}, [r0]
	add	r0, r1, #816
	vst1.32	{d16, d17}, [r0]
	add	r0, r1, #800
	vst1.32	{d16, d17}, [r0]
	add	r0, r1, #784
	vst1.32	{d16, d17}, [r0]
	add	r0, r1, #768
	vst1.32	{d16, d17}, [r0]
	add	r0, r1, #752
	vst1.32	{d16, d17}, [r0]
	add	r0, r1, #736
	vst1.32	{d16, d17}, [r0]
	add	r0, r1, #720
	vst1.32	{d16, d17}, [r0]
	add	r0, r1, #704
	vst1.32	{d16, d17}, [r0]
	add	r0, r1, #688
	vst1.32	{d16, d17}, [r0]
	add	r0, r1, #672
	vst1.32	{d16, d17}, [r0]
	add	r0, r1, #656
	vst1.32	{d16, d17}, [r0]
	add	r0, r1, #640
	vst1.32	{d16, d17}, [r0]
	add	r0, r1, #624
	vst1.32	{d16, d17}, [r0]
	add	r0, r1, #608
	vst1.32	{d16, d17}, [r0]
	add	r0, r1, #592
	vst1.32	{d16, d17}, [r0]
	add	r0, r1, #576
	vst1.32	{d16, d17}, [r0]
	add	r0, r1, #560
	vst1.32	{d16, d17}, [r0]
	add	r0, r1, #544
	vst1.32	{d16, d17}, [r0]
	add	r0, r1, #528
	vst1.32	{d16, d17}, [r0]
	add	r0, r1, #512
	vst1.32	{d16, d17}, [r0]
	add	r0, r1, #496
	vst1.32	{d16, d17}, [r0]
	add	r0, r1, #480
	vst1.32	{d16, d17}, [r0]
	add	r0, r1, #464
	vst1.32	{d16, d17}, [r0]
	add	r0, r1, #448
	vst1.32	{d16, d17}, [r0]
	add	r0, r1, #432
	vst1.32	{d16, d17}, [r0]
	add	r0, r1, #416
	vst1.32	{d16, d17}, [r0]
	add	r0, r1, #400
	vst1.32	{d16, d17}, [r0]
	add	r0, r1, #384
	vst1.32	{d16, d17}, [r0]
	add	r0, r1, #368
	vst1.32	{d16, d17}, [r0]
	add	r0, r1, #352
	vst1.32	{d16, d17}, [r0]
	add	r0, r1, #336
	vst1.32	{d16, d17}, [r0]
	add	r0, r1, #320
	vst1.32	{d16, d17}, [r0]
	add	r0, r1, #304
	vst1.32	{d16, d17}, [r0]
	add	r0, r1, #288
	vst1.32	{d16, d17}, [r0]
	add	r0, r1, #272
	vst1.32	{d16, d17}, [r0]
	add	r0, r1, #256
	vst1.32	{d16, d17}, [r0]
	add	r0, r1, #240
	vst1.32	{d16, d17}, [r0]
	add	r0, r1, #224
	vst1.32	{d16, d17}, [r0]
	add	r0, r1, #208
	vst1.32	{d16, d17}, [r0]
	add	r0, r1, #192
	vst1.32	{d16, d17}, [r0]
	add	r0, r1, #176
	vst1.32	{d16, d17}, [r0]
	add	r0, r1, #160
	vst1.32	{d16, d17}, [r0]
	add	r0, r1, #144
	vst1.32	{d16, d17}, [r0]
	add	r0, r1, #128
	vst1.32	{d16, d17}, [r0]
	add	r0, r1, #112
	vst1.32	{d16, d17}, [r0]
	add	r0, r1, #96
	vst1.32	{d16, d17}, [r0]
	add	r0, r1, #80
	vst1.32	{d16, d17}, [r0]
	add	r0, r1, #64
	vst1.32	{d16, d17}, [r0]
	add	r0, r1, #48
	vst1.32	{d16, d17}, [r0]
	add	r0, r1, #32
	vst1.32	{d16, d17}, [r0]
	b	.LBB0_192
	.p2align	4
@ %bb.181:
.LCPI0_209:
	.long	1                       @ 0x1
	.long	0                       @ 0x0
	.long	288                     @ 0x120
	.long	0                       @ 0x0
	.p2align	4
@ %bb.182:
.LCPI0_210:
	.long	14                      @ 0xe
	.long	0                       @ 0x0
	.long	14                      @ 0xe
	.long	0                       @ 0x0
	.p2align	4
@ %bb.183:
.LCPI0_211:
	.long	4                       @ 0x4
	.long	0                       @ 0x0
	.long	4                       @ 0x4
	.long	0                       @ 0x0
	.p2align	4
@ %bb.184:
.LCPI0_212:
	.long	5                       @ 0x5
	.long	0                       @ 0x0
	.long	5                       @ 0x5
	.long	0                       @ 0x0
	.p2align	4
@ %bb.185:
.LCPI0_213:
	.long	288                     @ 0x120
	.long	0                       @ 0x0
	.long	1                       @ 0x1
	.long	0                       @ 0x0
	.p2align	4
@ %bb.186:
.LCPI0_214:
	.long	4                       @ 0x4
	.long	0                       @ 0x0
	.long	1                       @ 0x1
	.long	0                       @ 0x0
	.p2align	4
@ %bb.187:
.LCPI0_215:
	.long	1                       @ 0x1
	.long	0                       @ 0x0
	.long	1                       @ 0x1
	.long	0                       @ 0x0
	.p2align	4
@ %bb.188:
.LCPI0_216:
	.long	2                       @ 0x2
	.long	0                       @ 0x0
	.long	2                       @ 0x2
	.long	0                       @ 0x0
	.p2align	4
@ %bb.189:
.LCPI0_217:
	.long	1                       @ 0x1
	.long	0                       @ 0x0
	.long	72                      @ 0x48
	.long	0                       @ 0x0
	.p2align	4
@ %bb.190:
.LCPI0_218:
	.long	288                     @ 0x120
	.long	0                       @ 0x0
	.long	72                      @ 0x48
	.long	0                       @ 0x0
	.p2align	4
@ %bb.191:
.LCPI0_219:
	.long	72                      @ 0x48
	.long	0                       @ 0x0
	.long	288                     @ 0x120
	.long	0                       @ 0x0
	.p2align	2
.LBB0_192:                              @ %exit237.i
	add	r0, r1, #16
	vst1.32	{d16, d17}, [r0]
	mov	r0, #1008
	vst1.32	{d16, d17}, [r1], r0
	vst1.32	{d16, d17}, [r1]
	ldr	r1, [r11, #-1972]       @ 4-byte Reload
	add	r0, r1, #80
	vst1.32	{d16, d17}, [r0]
	add	r0, r1, #64
	vst1.32	{d16, d17}, [r0]
	add	r0, r1, #48
	vst1.32	{d16, d17}, [r0]
	add	r0, r1, #32
	vst1.32	{d16, d17}, [r0]
	add	r0, r1, #16
	vst1.32	{d16, d17}, [r0]
	mov	r0, #96
	vst1.32	{d16, d17}, [r1], r0
	mov	r0, sp
	sub	r2, r0, #16
	vst1.32	{d16, d17}, [r1]
	mov	sp, r2
	sub	lr, r11, #360
	adr	r1, .LCPI0_217
	sub	r3, sp, #24
	vld1.64	{d16, d17}, [r1:128]
	sub	lr, lr, #1024
	vstmia	lr, {d16, d17}          @ 16-byte Spill
	mov	sp, r3
	mov	r12, sp
	sub	r9, r12, #48
	mov	sp, r9
	mov	r7, sp
	sub	lr, r7, #8
	mov	sp, lr
	sub	r10, r11, #312
	mov	r6, r9
	sub	r10, r10, #1024
	vst1.64	{d16, d17}, [r6]!
	mov	r1, #6
	mov	r8, #6
	vldmia	r10, {d14, d15}         @ 16-byte Reload
	strb	r1, [r7, #-8]
	strb	r1, [r7, #-7]
	mov	r1, r3
	vst1.64	{d12, d13}, [r6]
	ldr	r10, [r11, #-1532]      @ 4-byte Reload
	ldr	r6, [r11, #-1368]       @ 4-byte Reload
	str	r10, [r0, #-16]
	str	r6, [r0, #-12]
	ldr	r6, [r11, #-1856]       @ 4-byte Reload
	vst1.64	{d14, d15}, [r1]!
	str	r6, [r0, #-8]
	mov	r0, #2
	strb	r8, [r7, #-6]
	stm	r1, {r0, r4}
	adr	r0, .LCPI0_218
	vld1.64	{d16, d17}, [r0:128]
	sub	r0, r12, #16
	vst1.64	{d16, d17}, [r0]
	sub	sp, sp, #24
	mov	r0, #3
	mov	r1, #0
	stm	sp, {r9, lr}
	sub	r8, r11, #104
	str	r4, [sp, #8]
	str	r4, [sp, #12]
	str	r8, [sp, #16]
	bl	nnc_aten_matmul
	add	sp, sp, #24
	vld1.32	{d16, d17}, [r10]
	mov	r2, #256
	vclt.f32	q9, q8, #0
	ldr	r0, [r11, #-1952]       @ 4-byte Reload
	vbic	q8, q8, q9
	ldr	r10, [r11, #-1528]      @ 4-byte Reload
	ldr	r3, [r11, #-1948]       @ 4-byte Reload
	mov	r7, r0
	vst1.32	{d16, d17}, [r10]
	mov	r1, r3
	vld1.32	{d16, d17}, [r7], r2
	vclt.f32	q9, q8, #0
	vbic	q8, q8, q9
	vst1.32	{d16, d17}, [r1], r2
	add	r2, r0, #16
	vld1.32	{d16, d17}, [r2]
	add	r2, r3, #16
	vclt.f32	q9, q8, #0
	vbic	q8, q8, q9
	vst1.32	{d16, d17}, [r2]
	add	r2, r0, #32
	vld1.32	{d16, d17}, [r2]
	add	r2, r3, #32
	vclt.f32	q9, q8, #0
	vbic	q8, q8, q9
	vst1.32	{d16, d17}, [r2]
	add	r2, r0, #48
	vld1.32	{d16, d17}, [r2]
	add	r2, r3, #48
	vclt.f32	q9, q8, #0
	vbic	q8, q8, q9
	vst1.32	{d16, d17}, [r2]
	add	r2, r0, #64
	vld1.32	{d16, d17}, [r2]
	add	r2, r3, #64
	vclt.f32	q9, q8, #0
	vbic	q8, q8, q9
	vst1.32	{d16, d17}, [r2]
	add	r2, r0, #80
	vld1.32	{d16, d17}, [r2]
	add	r2, r3, #80
	vclt.f32	q9, q8, #0
	vbic	q8, q8, q9
	vst1.32	{d16, d17}, [r2]
	add	r2, r0, #96
	vld1.32	{d16, d17}, [r2]
	add	r2, r3, #96
	vclt.f32	q9, q8, #0
	vbic	q8, q8, q9
	vst1.32	{d16, d17}, [r2]
	add	r2, r0, #112
	vld1.32	{d16, d17}, [r2]
	add	r2, r3, #112
	vclt.f32	q9, q8, #0
	vbic	q8, q8, q9
	vst1.32	{d16, d17}, [r2]
	add	r2, r0, #128
	vld1.32	{d16, d17}, [r2]
	add	r2, r3, #128
	vclt.f32	q9, q8, #0
	vbic	q8, q8, q9
	vst1.32	{d16, d17}, [r2]
	add	r2, r0, #144
	vld1.32	{d16, d17}, [r2]
	add	r2, r3, #144
	vclt.f32	q9, q8, #0
	vbic	q8, q8, q9
	vst1.32	{d16, d17}, [r2]
	add	r2, r0, #160
	vld1.32	{d16, d17}, [r2]
	add	r2, r3, #160
	vclt.f32	q9, q8, #0
	vbic	q8, q8, q9
	vst1.32	{d16, d17}, [r2]
	add	r2, r0, #176
	vld1.32	{d16, d17}, [r2]
	add	r2, r3, #176
	vclt.f32	q9, q8, #0
	vbic	q8, q8, q9
	vst1.32	{d16, d17}, [r2]
	add	r2, r0, #192
	vld1.32	{d16, d17}, [r2]
	add	r2, r3, #192
	vclt.f32	q9, q8, #0
	vbic	q8, q8, q9
	vst1.32	{d16, d17}, [r2]
	add	r2, r0, #208
	vld1.32	{d16, d17}, [r2]
	add	r2, r3, #208
	vclt.f32	q9, q8, #0
	vbic	q8, q8, q9
	vst1.32	{d16, d17}, [r2]
	add	r2, r0, #224
	vld1.32	{d16, d17}, [r2]
	add	r2, r3, #224
	vclt.f32	q9, q8, #0
	vbic	q8, q8, q9
	vst1.32	{d16, d17}, [r2]
	add	r2, r3, #240
	add	r3, r0, #240
	mov	r0, sp
	vld1.32	{d16, d17}, [r3]
	vclt.f32	q9, q8, #0
	vbic	q8, q8, q9
	vst1.32	{d16, d17}, [r2]
	sub	r2, r0, #16
	vld1.32	{d16, d17}, [r7]
	vclt.f32	q9, q8, #0
	vbic	q8, q8, q9
	vst1.32	{d16, d17}, [r1]
	mov	sp, r2
	sub	r3, sp, #24
	mov	sp, r3
	mov	r12, sp
	sub	r9, r12, #48
	mov	sp, r9
	mov	r6, sp
	sub	lr, r6, #8
	mov	sp, lr
	mov	r1, #6
	mov	r7, r9
	strb	r1, [r6, #-8]
	mov	r8, #6
	strb	r1, [r6, #-7]
	mov	r1, r3
	vst1.64	{d12, d13}, [r7]!
	vst1.64	{d14, d15}, [r1]!
	str	r4, [r11, #-100]
	sub	r4, r11, #360
	sub	r4, r4, #1024
	vldmia	r4, {d16, d17}          @ 16-byte Reload
	ldr	r4, [r11, #-100]
	vst1.64	{d16, d17}, [r7]
	ldr	r7, [r11, #-1848]       @ 4-byte Reload
	str	r7, [r0, #-16]
	str	r10, [r0, #-12]
	ldr	r10, [r11, #-1852]      @ 4-byte Reload
	str	r10, [r0, #-8]
	mov	r0, #2
	strb	r8, [r6, #-6]
	stm	r1, {r0, r4}
	adr	r0, .LCPI0_219
	vld1.64	{d16, d17}, [r0:128]
	sub	r0, r12, #16
	vst1.64	{d16, d17}, [r0]
	sub	sp, sp, #24
	sub	r0, r11, #104
	stm	sp, {r9, lr}
	mov	r1, #0
	str	r0, [sp, #16]
	mov	r0, #3
	str	r4, [sp, #8]
	str	r4, [sp, #12]
	bl	nnc_aten_matmul
	ldr	r10, [r11, #-1524]      @ 4-byte Reload
	add	sp, sp, #24
	vldr	s0, [r7]
	ldr	r6, [r11, #-1836]       @ 4-byte Reload
	vadd.f32	s2, s0, s16
	vcmpe.f32	s2, #0
	vmrs	APSR_nzcv, fpscr
	vdiv.f32	s0, s2, s18
	vmax.f32	d1, d1, d11
	vmovmi.f32	s0, s22
	vcmpe.f32	s2, s18
	vmrs	APSR_nzcv, fpscr
	vmovgt.f32	s0, s20
.LBB0_193:                              @ %cond253.preheader.i
                                        @ =>This Inner Loop Header: Depth=1
	add	r0, r10, r4
	subs	r5, r5, #1
	vldr	s2, [r0]
	add	r0, r6, r4
	add	r4, r4, #228
	vmul.f32	s2, s0, s2
	vadd.f32	s4, s2, s16
	vmax.f32	d16, d2, d11
	vmin.f32	d2, d16, d9
	vmul.f32	s2, s2, s4
	vdiv.f32	s2, s2, s18
	vstr	s2, [r0]
	bne	.LBB0_193
@ %bb.194:                              @ %exit252.i
	adr	r0, .LCPI0_220
	sub	lr, r11, #312
	vld1.64	{d12, d13}, [r0:128]
	adr	r0, .LCPI0_221
	mov	r7, sp
	sub	r8, r7, #16
	vld1.64	{d16, d17}, [r0:128]
	sub	lr, lr, #1024
	vstmia	lr, {d16, d17}          @ 16-byte Spill
	mov	sp, r8
	sub	r3, sp, #32
	mov	sp, r3
	mov	r5, sp
	sub	lr, r5, #104
	mov	sp, lr
	mov	r4, sp
	sub	r12, r4, #8
	mov	sp, r12
	mov	r1, sp
	sub	r2, r1, #56
	mov	sp, r2
	mov	r0, lr
	ldr	r10, [r11, #-1508]      @ 4-byte Reload
	vst1.64	{d16, d17}, [r0]!
	mov	r9, #6
	str	r10, [r7, #-16]
	str	r6, [r7, #-12]
	sub	r6, r5, #56
	strb	r9, [r4, #-8]
	vst1.64	{d12, d13}, [r0]
	adr	r0, .LCPI0_222
	vld1.64	{d16, d17}, [r0:128]
	sub	r0, r11, #344
	sub	r0, r0, #1024
	strb	r9, [r4, #-7]
	vstmia	r0, {d16, d17}          @ 16-byte Spill
	mov	r0, r3
	vst1.64	{d16, d17}, [r0]!
	vst1.64	{d12, d13}, [r6]
	adr	r6, .LCPI0_223
	vld1.64	{d16, d17}, [r6:128]
	sub	r6, r5, #72
	vst1.64	{d16, d17}, [r6]
	ldr	r6, [r11, #-1844]       @ 4-byte Reload
	str	r6, [r7, #-8]
	adr	r6, .LCPI0_224
	vld1.64	{d14, d15}, [r6:128]
	sub	r6, r5, #24
	strb	r9, [r4, #-6]
	vst1.64	{d14, d15}, [r6]
	adr	r6, .LCPI0_225
	vld1.64	{d16, d17}, [r6:128]
	sub	r6, r5, #40
	vst1.64	{d16, d17}, [r6]
	ldr	r6, [r11, #-1840]       @ 4-byte Reload
	str	r6, [r7, #-4]
	strb	r9, [r4, #-5]
	adr	r4, .LCPI0_226
	vld1.64	{d16, d17}, [r4:128]
	sub	r4, r11, #360
	sub	r4, r4, #1024
	vst1.64	{d16, d17}, [r0]
	mov	r0, #96
	vstmia	r4, {d16, d17}          @ 16-byte Spill
	mov	r4, #0
	vmov.i32	q8, #0x0
	stmdb	r5, {r0, r4}
	sub	r0, r1, #24
	vst1.64	{d14, d15}, [r0]
	mov	r0, #1
	stmdb	r1, {r0, r4}
	mov	r0, r2
	vst1.64	{d14, d15}, [r0]!
	vst1.64	{d16, d17}, [r0]
	sub	sp, sp, #24
	mov	r0, #7
	str	r2, [sp, #16]
	str	r0, [sp, #8]
	mov	r0, #4
	mov	r1, #0
	mov	r2, r8
	str	lr, [sp]
	str	r12, [sp, #4]
	str	r4, [sp, #12]
	bl	nnc_aten_conv2d
	add	sp, sp, #24
	mov	r1, sp
	sub	r0, r1, #16
	str	r0, [r11, #-1400]       @ 4-byte Spill
	mov	sp, r0
	sub	r3, sp, #32
	mov	sp, r3
	mov	r6, sp
	sub	lr, r6, #104
	mov	sp, lr
	mov	r5, sp
	sub	r12, r5, #8
	mov	sp, r12
	mov	r2, sp
	sub	r8, r2, #56
	mov	sp, r8
	ldr	r9, [r11, #-1816]       @ 4-byte Reload
	mov	r0, #6
	str	r9, [r1, #-16]
	adr	r7, .LCPI0_227
	vld1.64	{d16, d17}, [r7:128]
	mov	r7, lr
	strb	r0, [r5, #-8]
	strb	r0, [r5, #-7]
	sub	r0, r11, #344
	vst1.64	{d16, d17}, [r7]!
	sub	r0, r0, #1024
	str	r10, [r1, #-12]
	sub	r10, r6, #56
	vst1.64	{d12, d13}, [r7]
	mov	r7, r3
	vldmia	r0, {d16, d17}          @ 16-byte Reload
	sub	r0, r6, #72
	vst1.64	{d12, d13}, [r10]
	sub	r10, r11, #312
	sub	r10, r10, #1024
	vst1.64	{d16, d17}, [r7]!
	vldmia	r10, {d16, d17}         @ 16-byte Reload
	mov	r10, #6
	strb	r10, [r5, #-6]
	vst1.64	{d16, d17}, [r0]
	ldr	r0, [r11, #-1832]       @ 4-byte Reload
	str	r0, [r1, #-8]
	sub	r0, r6, #24
	vst1.64	{d14, d15}, [r0]
	adr	r0, .LCPI0_228
	vld1.64	{d16, d17}, [r0:128]
	sub	r0, r6, #40
	vst1.64	{d16, d17}, [r0]
	ldr	r0, [r11, #-1828]       @ 4-byte Reload
	str	r0, [r1, #-4]
	sub	r0, r11, #360
	sub	r0, r0, #1024
	strb	r10, [r5, #-5]
	mov	r5, #576
	str	r4, [r6, #-4]
	vldmia	r0, {d16, d17}          @ 16-byte Reload
	sub	r0, r2, #24
	vst1.64	{d14, d15}, [r0]
	mov	r0, #1
	vst1.64	{d16, d17}, [r7]
	vmov.i32	q8, #0x0
	stmdb	r2, {r0, r4}
	mov	r0, r8
	vst1.64	{d14, d15}, [r0]!
	str	r5, [r6, #-8]
	vst1.64	{d16, d17}, [r0]
	sub	sp, sp, #24
	ldr	r2, [r11, #-1400]       @ 4-byte Reload
	mov	r0, #7
	add	r1, sp, #8
	str	lr, [sp]
	str	r12, [sp, #4]
	stm	r1, {r0, r4, r8}
	mov	r0, #4
	mov	r1, #0
	bl	nnc_aten_conv2d
	add	sp, sp, #24
	ldr	r7, [r11, #-1812]       @ 4-byte Reload
	b	.LBB0_209
	.p2align	4
@ %bb.195:
.LCPI0_220:
	.long	7                       @ 0x7
	.long	0                       @ 0x0
	.long	7                       @ 0x7
	.long	0                       @ 0x0
	.p2align	4
@ %bb.196:
.LCPI0_221:
	.long	1                       @ 0x1
	.long	0                       @ 0x0
	.long	96                      @ 0x60
	.long	0                       @ 0x0
	.p2align	4
@ %bb.197:
.LCPI0_222:
	.long	4                       @ 0x4
	.long	0                       @ 0x0
	.long	4                       @ 0x4
	.long	0                       @ 0x0
	.p2align	4
@ %bb.198:
.LCPI0_223:
	.long	1                       @ 0x1
	.long	0                       @ 0x0
	.long	288                     @ 0x120
	.long	0                       @ 0x0
	.p2align	4
@ %bb.199:
.LCPI0_224:
	.long	1                       @ 0x1
	.long	0                       @ 0x0
	.long	1                       @ 0x1
	.long	0                       @ 0x0
	.p2align	4
@ %bb.200:
.LCPI0_225:
	.long	96                      @ 0x60
	.long	0                       @ 0x0
	.long	288                     @ 0x120
	.long	0                       @ 0x0
	.p2align	4
@ %bb.201:
.LCPI0_226:
	.long	4                       @ 0x4
	.long	0                       @ 0x0
	.long	1                       @ 0x1
	.long	0                       @ 0x0
	.p2align	4
@ %bb.202:
.LCPI0_227:
	.long	1                       @ 0x1
	.long	0                       @ 0x0
	.long	576                     @ 0x240
	.long	0                       @ 0x0
	.p2align	4
@ %bb.203:
.LCPI0_228:
	.long	576                     @ 0x240
	.long	0                       @ 0x0
	.long	96                      @ 0x60
	.long	0                       @ 0x0
	.p2align	4
@ %bb.204:
.LCPI0_229:
	.long	5                       @ 0x5
	.long	0                       @ 0x0
	.long	5                       @ 0x5
	.long	0                       @ 0x0
	.p2align	4
@ %bb.205:
.LCPI0_230:
	.long	576                     @ 0x240
	.long	0                       @ 0x0
	.long	1                       @ 0x1
	.long	0                       @ 0x0
	.p2align	4
@ %bb.206:
.LCPI0_231:
	.long	2                       @ 0x2
	.long	0                       @ 0x0
	.long	2                       @ 0x2
	.long	0                       @ 0x0
	.p2align	4
@ %bb.207:
.LCPI0_232:
	.long	1                       @ 0x1
	.long	0                       @ 0x0
	.long	144                     @ 0x90
	.long	0                       @ 0x0
	.p2align	4
@ %bb.208:
.LCPI0_233:
	.long	576                     @ 0x240
	.long	0                       @ 0x0
	.long	144                     @ 0x90
	.long	0                       @ 0x0
	.p2align	2
.LBB0_209:                              @ %cond262.preheader.i
                                        @ =>This Inner Loop Header: Depth=1
	add	r0, r9, r4
	subs	r5, r5, #1
	vldr	s0, [r0]
	add	r0, r7, r4
	add	r4, r4, #228
	vadd.f32	s2, s0, s16
	vmax.f32	d16, d1, d11
	vmin.f32	d1, d16, d9
	vmul.f32	s0, s0, s2
	vdiv.f32	s0, s0, s18
	vstr	s0, [r0]
	bne	.LBB0_209
@ %bb.210:                              @ %exit261.i
	adr	r0, .LCPI0_220
	mov	r6, sp
	vld1.64	{d16, d17}, [r0:128]
	adr	r0, .LCPI0_227
	sub	r2, r6, #16
	vld1.64	{d14, d15}, [r0:128]
	mov	sp, r2
	sub	r3, sp, #32
	mov	sp, r3
	mov	r5, sp
	sub	lr, r5, #104
	mov	sp, lr
	mov	r4, sp
	sub	r12, r4, #8
	mov	sp, r12
	mov	r1, sp
	sub	r9, r1, #56
	mov	sp, r9
	mov	r0, lr
	ldr	r10, [r11, #-1512]      @ 4-byte Reload
	mov	r8, #6
	str	r10, [r6, #-16]
	strb	r8, [r4, #-8]
	vst1.64	{d14, d15}, [r0]!
	str	r7, [r11, #-100]
	sub	r7, r11, #312
	sub	r7, r7, #1024
	vstmia	r7, {d16, d17}          @ 16-byte Spill
	ldr	r7, [r11, #-100]
	str	r7, [r6, #-12]
	sub	r7, r5, #56
	vst1.64	{d16, d17}, [r0]
	adr	r0, .LCPI0_222
	vld1.64	{d18, d19}, [r0:128]
	sub	r0, r11, #344
	sub	r0, r0, #1024
	vst1.64	{d16, d17}, [r7]
	sub	r7, r5, #72
	vstmia	r0, {d18, d19}          @ 16-byte Spill
	mov	r0, r3
	vst1.64	{d14, d15}, [r7]
	ldr	r7, [r11, #-1824]       @ 4-byte Reload
	strb	r8, [r4, #-7]
	vst1.64	{d18, d19}, [r0]!
	str	r7, [r6, #-8]
	adr	r7, .LCPI0_229
	vld1.64	{d16, d17}, [r7:128]
	sub	r7, r5, #24
	strb	r8, [r4, #-6]
	vst1.64	{d16, d17}, [r7]
	adr	r7, .LCPI0_230
	vld1.64	{d16, d17}, [r7:128]
	sub	r7, r5, #40
	vst1.64	{d16, d17}, [r7]
	ldr	r7, [r11, #-1820]       @ 4-byte Reload
	str	r7, [r6, #-4]
	strb	r8, [r4, #-5]
	adr	r4, .LCPI0_226
	vld1.64	{d16, d17}, [r4:128]
	mov	r4, #0
	vst1.64	{d16, d17}, [r0]
	mov	r0, #576
	stmdb	r5, {r0, r4}
	adr	r5, .LCPI0_224
	vld1.64	{d12, d13}, [r5:128]
	sub	r5, r1, #24
	vst1.64	{d12, d13}, [r5]
	stmdb	r1, {r0, r4}
	adr	r0, .LCPI0_231
	vld1.64	{d16, d17}, [r0:128]
	mov	r0, r9
	vst1.64	{d12, d13}, [r0]!
	vst1.64	{d16, d17}, [r0]
	sub	sp, sp, #24
	mov	r0, #7
	add	r1, sp, #8
	str	lr, [sp]
	str	r12, [sp, #4]
	stm	r1, {r0, r4, r9}
	mov	r0, #4
	mov	r1, #0
	bl	nnc_aten_conv2d
	add	sp, sp, #24
	mov	lr, sp
	sub	r2, lr, #8
	mov	sp, r2
	sub	r3, sp, #16
	mov	sp, r3
	mov	r1, sp
	sub	r0, r1, #64
	mov	sp, r0
	mov	r6, sp
	sub	r12, r6, #8
	mov	sp, r12
	sub	r5, sp, #16
	mov	sp, r5
	ldr	r9, [r11, #-1804]       @ 4-byte Reload
	mov	r7, r0
	vst1.64	{d14, d15}, [r7]!
	stmdb	lr, {r9, r10}
	sub	lr, r11, #344
	sub	lr, lr, #1024
	vst1.64	{d12, d13}, [r7]
	sub	r7, r1, #16
	sub	r1, r1, #32
	vldmia	lr, {d16, d17}          @ 16-byte Reload
	sub	lr, r11, #312
	sub	lr, lr, #1024
	strb	r8, [r6, #-8]
	vst1.64	{d16, d17}, [r3]
	vldmia	lr, {d16, d17}          @ 16-byte Reload
	strb	r8, [r6, #-7]
	vst1.64	{d16, d17}, [r7]
	vst1.64	{d14, d15}, [r1]
	vst1.64	{d12, d13}, [r5]
	sub	sp, sp, #24
	stm	sp, {r0, r12}
	mov	r1, #2
	add	r0, sp, #8
	stm	r0, {r1, r4, r5}
	mov	r0, #2
	mov	r1, #0
	bl	nnc_aten_adaptive_avg_pool2d
	add	sp, sp, #24
	ldr	r10, [r11, #-1768]      @ 4-byte Reload
	vld1.32	{d16[], d17[]}, [r9:32]
	mov	r0, #48
	ldr	r5, [r11, #-1800]       @ 4-byte Reload
.LBB0_211:                              @ %vector.body639.i
                                        @ =>This Inner Loop Header: Depth=1
	add	r1, r5, r4
	add	r4, r4, #64
	cmp	r4, #2304
	mov	r2, r1
	vst1.32	{d16, d17}, [r2], r0
	vst1.32	{d16, d17}, [r2]
	add	r2, r1, #32
	add	r1, r1, #16
	vst1.32	{d16, d17}, [r2]
	vst1.32	{d16, d17}, [r1]
	bne	.LBB0_211
@ %bb.212:                              @ %exit270.i
	sub	lr, r11, #312
	adr	r0, .LCPI0_232
	mov	r1, sp
	sub	r2, r1, #16
	vld1.64	{d16, d17}, [r0:128]
	sub	lr, lr, #1024
	vstmia	lr, {d16, d17}          @ 16-byte Spill
	mov	sp, r2
	sub	r3, sp, #24
	mov	sp, r3
	mov	r12, sp
	sub	r7, r12, #48
	mov	sp, r7
	mov	r6, sp
	sub	lr, r6, #8
	mov	sp, lr
	mov	r0, r7
	ldr	r9, [r11, #-1520]       @ 4-byte Reload
	mov	r8, #6
	str	r9, [r1, #-16]
	str	r5, [r1, #-12]
	mov	r5, r3
	strb	r8, [r6, #-8]
	vst1.64	{d16, d17}, [r0]!
	adr	r4, .LCPI0_227
	vld1.64	{d12, d13}, [r4:128]
	adr	r4, .LCPI0_231
	vld1.64	{d14, d15}, [r4:128]
	mov	r4, #0
	vst1.64	{d12, d13}, [r0]
	ldr	r0, [r11, #-1808]       @ 4-byte Reload
	vst1.64	{d14, d15}, [r5]!
	str	r0, [r1, #-8]
	mov	r0, #2
	strb	r8, [r6, #-7]
	strb	r8, [r6, #-6]
	stm	r5, {r0, r4}
	adr	r0, .LCPI0_233
	vld1.64	{d16, d17}, [r0:128]
	sub	r0, r12, #16
	vst1.64	{d16, d17}, [r0]
	sub	sp, sp, #24
	sub	r0, r11, #104
	stm	sp, {r7, lr}
	mov	r1, #0
	str	r0, [sp, #16]
	mov	r0, #3
	str	r4, [sp, #8]
	str	r4, [sp, #12]
	bl	nnc_aten_matmul
	add	sp, sp, #24
	vld1.32	{d16, d17}, [r9]
	mov	r2, #544
	vclt.f32	q9, q8, #0
	ldr	r3, [r11, #-1480]       @ 4-byte Reload
	vbic	q8, q8, q9
	ldr	r9, [r11, #-1516]       @ 4-byte Reload
	ldr	r1, [r11, #-1660]       @ 4-byte Reload
	mov	r0, r3
	vst1.32	{d16, d17}, [r9]
	mov	r7, r1
	vld1.32	{d16, d17}, [r0], r2
	vclt.f32	q9, q8, #0
	vbic	q8, q8, q9
	vst1.32	{d16, d17}, [r7], r2
	add	r2, r3, #16
	vld1.32	{d16, d17}, [r2]
	add	r2, r1, #16
	vclt.f32	q9, q8, #0
	vbic	q8, q8, q9
	vst1.32	{d16, d17}, [r2]
	add	r2, r3, #32
	vld1.32	{d16, d17}, [r2]
	add	r2, r1, #32
	vclt.f32	q9, q8, #0
	vbic	q8, q8, q9
	vst1.32	{d16, d17}, [r2]
	add	r2, r3, #48
	vld1.32	{d16, d17}, [r2]
	add	r2, r1, #48
	vclt.f32	q9, q8, #0
	vbic	q8, q8, q9
	vst1.32	{d16, d17}, [r2]
	add	r2, r3, #64
	vld1.32	{d16, d17}, [r2]
	add	r2, r1, #64
	vclt.f32	q9, q8, #0
	vbic	q8, q8, q9
	vst1.32	{d16, d17}, [r2]
	add	r2, r3, #80
	vld1.32	{d16, d17}, [r2]
	add	r2, r1, #80
	vclt.f32	q9, q8, #0
	vbic	q8, q8, q9
	vst1.32	{d16, d17}, [r2]
	add	r2, r3, #96
	vld1.32	{d16, d17}, [r2]
	add	r2, r1, #96
	vclt.f32	q9, q8, #0
	vbic	q8, q8, q9
	vst1.32	{d16, d17}, [r2]
	add	r2, r3, #112
	vld1.32	{d16, d17}, [r2]
	add	r2, r1, #112
	vclt.f32	q9, q8, #0
	vbic	q8, q8, q9
	vst1.32	{d16, d17}, [r2]
	add	r2, r3, #128
	vld1.32	{d16, d17}, [r2]
	add	r2, r1, #128
	vclt.f32	q9, q8, #0
	vbic	q8, q8, q9
	vst1.32	{d16, d17}, [r2]
	add	r2, r3, #144
	vld1.32	{d16, d17}, [r2]
	add	r2, r1, #144
	vclt.f32	q9, q8, #0
	vbic	q8, q8, q9
	vst1.32	{d16, d17}, [r2]
	add	r2, r3, #160
	vld1.32	{d16, d17}, [r2]
	add	r2, r1, #160
	vclt.f32	q9, q8, #0
	vbic	q8, q8, q9
	vst1.32	{d16, d17}, [r2]
	add	r2, r3, #176
	vld1.32	{d16, d17}, [r2]
	add	r2, r1, #176
	vclt.f32	q9, q8, #0
	vbic	q8, q8, q9
	vst1.32	{d16, d17}, [r2]
	add	r2, r3, #192
	vld1.32	{d16, d17}, [r2]
	add	r2, r1, #192
	vclt.f32	q9, q8, #0
	vbic	q8, q8, q9
	vst1.32	{d16, d17}, [r2]
	add	r2, r3, #208
	vld1.32	{d16, d17}, [r2]
	add	r2, r1, #208
	vclt.f32	q9, q8, #0
	vbic	q8, q8, q9
	vst1.32	{d16, d17}, [r2]
	add	r2, r3, #224
	vld1.32	{d16, d17}, [r2]
	add	r2, r1, #224
	vclt.f32	q9, q8, #0
	vbic	q8, q8, q9
	vst1.32	{d16, d17}, [r2]
	add	r2, r3, #240
	vld1.32	{d16, d17}, [r2]
	add	r2, r1, #240
	vclt.f32	q9, q8, #0
	vbic	q8, q8, q9
	vst1.32	{d16, d17}, [r2]
	add	r2, r3, #256
	vld1.32	{d16, d17}, [r2]
	add	r2, r1, #256
	vclt.f32	q9, q8, #0
	vbic	q8, q8, q9
	vst1.32	{d16, d17}, [r2]
	add	r2, r3, #272
	vld1.32	{d16, d17}, [r2]
	add	r2, r1, #272
	vclt.f32	q9, q8, #0
	vbic	q8, q8, q9
	vst1.32	{d16, d17}, [r2]
	add	r2, r3, #288
	vld1.32	{d16, d17}, [r2]
	add	r2, r1, #288
	vclt.f32	q9, q8, #0
	vbic	q8, q8, q9
	vst1.32	{d16, d17}, [r2]
	add	r2, r3, #304
	vld1.32	{d16, d17}, [r2]
	add	r2, r1, #304
	vclt.f32	q9, q8, #0
	vbic	q8, q8, q9
	vst1.32	{d16, d17}, [r2]
	add	r2, r3, #320
	vld1.32	{d16, d17}, [r2]
	add	r2, r1, #320
	vclt.f32	q9, q8, #0
	vbic	q8, q8, q9
	vst1.32	{d16, d17}, [r2]
	add	r2, r3, #336
	vld1.32	{d16, d17}, [r2]
	add	r2, r1, #336
	vclt.f32	q9, q8, #0
	vbic	q8, q8, q9
	vst1.32	{d16, d17}, [r2]
	add	r2, r3, #352
	vld1.32	{d16, d17}, [r2]
	add	r2, r1, #352
	vclt.f32	q9, q8, #0
	vbic	q8, q8, q9
	vst1.32	{d16, d17}, [r2]
	add	r2, r3, #368
	vld1.32	{d16, d17}, [r2]
	add	r2, r1, #368
	vclt.f32	q9, q8, #0
	vbic	q8, q8, q9
	vst1.32	{d16, d17}, [r2]
	add	r2, r3, #384
	vld1.32	{d16, d17}, [r2]
	add	r2, r1, #384
	vclt.f32	q9, q8, #0
	vbic	q8, q8, q9
	vst1.32	{d16, d17}, [r2]
	add	r2, r3, #400
	vld1.32	{d16, d17}, [r2]
	add	r2, r1, #400
	vclt.f32	q9, q8, #0
	vbic	q8, q8, q9
	vst1.32	{d16, d17}, [r2]
	add	r2, r3, #416
	vld1.32	{d16, d17}, [r2]
	add	r2, r1, #416
	vclt.f32	q9, q8, #0
	vbic	q8, q8, q9
	vst1.32	{d16, d17}, [r2]
	add	r2, r3, #432
	vld1.32	{d16, d17}, [r2]
	add	r2, r1, #432
	vclt.f32	q9, q8, #0
	vbic	q8, q8, q9
	vst1.32	{d16, d17}, [r2]
	add	r2, r3, #448
	vld1.32	{d16, d17}, [r2]
	add	r2, r1, #448
	vclt.f32	q9, q8, #0
	vbic	q8, q8, q9
	vst1.32	{d16, d17}, [r2]
	add	r2, r3, #464
	vld1.32	{d16, d17}, [r2]
	add	r2, r1, #464
	vclt.f32	q9, q8, #0
	vbic	q8, q8, q9
	vst1.32	{d16, d17}, [r2]
	add	r2, r3, #480
	vld1.32	{d16, d17}, [r2]
	add	r2, r1, #480
	vclt.f32	q9, q8, #0
	vbic	q8, q8, q9
	vst1.32	{d16, d17}, [r2]
	add	r2, r3, #496
	vld1.32	{d16, d17}, [r2]
	add	r2, r1, #496
	vclt.f32	q9, q8, #0
	vbic	q8, q8, q9
	vst1.32	{d16, d17}, [r2]
	add	r2, r3, #512
	add	r3, r3, #528
	vld1.32	{d16, d17}, [r2]
	add	r2, r1, #512
	vclt.f32	q9, q8, #0
	vbic	q8, q8, q9
	vst1.32	{d16, d17}, [r2]
	add	r2, r1, #528
	vld1.32	{d16, d17}, [r3]
	vclt.f32	q9, q8, #0
	vbic	q8, q8, q9
	vst1.32	{d16, d17}, [r2]
	vld1.32	{d16, d17}, [r0]
	mov	r0, sp
	sub	r2, r0, #16
	vclt.f32	q9, q8, #0
	vbic	q8, q8, q9
	vst1.32	{d16, d17}, [r7]
	mov	sp, r2
	sub	r3, sp, #24
	mov	sp, r3
	mov	r12, sp
	sub	r1, r12, #48
	mov	sp, r1
	mov	r5, sp
	sub	lr, r5, #8
	mov	sp, lr
	mov	r7, r1
	mov	r6, r3
	strb	r8, [r5, #-8]
	vst1.64	{d12, d13}, [r7]!
	strb	r8, [r5, #-7]
	vst1.64	{d14, d15}, [r6]!
	str	r4, [r11, #-100]
	sub	r4, r11, #312
	sub	r4, r4, #1024
	vldmia	r4, {d16, d17}          @ 16-byte Reload
	ldr	r4, [r11, #-100]
	vst1.64	{d16, d17}, [r7]
	ldr	r7, [r11, #-1792]       @ 4-byte Reload
	str	r7, [r0, #-16]
	str	r9, [r0, #-12]
	ldr	r9, [r11, #-1796]       @ 4-byte Reload
	str	r9, [r0, #-8]
	mov	r0, #2
	strb	r8, [r5, #-6]
	stm	r6, {r0, r4}
	adr	r0, .LCPI0_234
	vld1.64	{d16, d17}, [r0:128]
	sub	r0, r12, #16
	vst1.64	{d16, d17}, [r0]
	sub	sp, sp, #24
	sub	r0, r11, #104
	stm	sp, {r1, lr}
	mov	r1, #0
	str	r0, [sp, #16]
	mov	r0, #3
	str	r4, [sp, #8]
	str	r4, [sp, #12]
	bl	nnc_aten_matmul
	add	sp, sp, #24
	vldr	s0, [r7]
	mov	r0, #576
	ldr	r2, [r11, #-1780]       @ 4-byte Reload
	vadd.f32	s2, s0, s16
	ldr	r3, [r11, #-1512]       @ 4-byte Reload
	vcmpe.f32	s2, #0
	vmrs	APSR_nzcv, fpscr
	vdiv.f32	s0, s2, s18
	vmax.f32	d1, d1, d11
	vmovmi.f32	s0, s22
	vcmpe.f32	s2, s18
	vmrs	APSR_nzcv, fpscr
	vmovgt.f32	s0, s20
	b	.LBB0_225
	.p2align	4
@ %bb.213:
.LCPI0_234:
	.long	144                     @ 0x90
	.long	0                       @ 0x0
	.long	576                     @ 0x240
	.long	0                       @ 0x0
	.p2align	4
@ %bb.214:
.LCPI0_235:
	.long	7                       @ 0x7
	.long	0                       @ 0x0
	.long	7                       @ 0x7
	.long	0                       @ 0x0
	.p2align	4
@ %bb.215:
.LCPI0_236:
	.long	1                       @ 0x1
	.long	0                       @ 0x0
	.long	96                      @ 0x60
	.long	0                       @ 0x0
	.p2align	4
@ %bb.216:
.LCPI0_237:
	.long	4                       @ 0x4
	.long	0                       @ 0x0
	.long	4                       @ 0x4
	.long	0                       @ 0x0
	.p2align	4
@ %bb.217:
.LCPI0_238:
	.long	1                       @ 0x1
	.long	0                       @ 0x0
	.long	576                     @ 0x240
	.long	0                       @ 0x0
	.p2align	4
@ %bb.218:
.LCPI0_239:
	.long	1                       @ 0x1
	.long	0                       @ 0x0
	.long	1                       @ 0x1
	.long	0                       @ 0x0
	.p2align	4
@ %bb.219:
.LCPI0_240:
	.long	96                      @ 0x60
	.long	0                       @ 0x0
	.long	576                     @ 0x240
	.long	0                       @ 0x0
	.p2align	4
@ %bb.220:
.LCPI0_241:
	.long	4                       @ 0x4
	.long	0                       @ 0x0
	.long	1                       @ 0x1
	.long	0                       @ 0x0
	.p2align	4
@ %bb.221:
.LCPI0_242:
	.long	576                     @ 0x240
	.long	0                       @ 0x0
	.long	96                      @ 0x60
	.long	0                       @ 0x0
	.p2align	4
@ %bb.222:
.LCPI0_243:
	.long	5                       @ 0x5
	.long	0                       @ 0x0
	.long	5                       @ 0x5
	.long	0                       @ 0x0
	.p2align	4
@ %bb.223:
.LCPI0_244:
	.long	576                     @ 0x240
	.long	0                       @ 0x0
	.long	1                       @ 0x1
	.long	0                       @ 0x0
	.p2align	4
@ %bb.224:
.LCPI0_245:
	.long	4                       @ 0x4
	.long	0                       @ 0x0
	.long	1                       @ 0x1
	.long	0                       @ 0x0
	.p2align	2
.LBB0_225:                              @ %cond277.preheader.i
                                        @ =>This Inner Loop Header: Depth=1
	add	r1, r3, r4
	subs	r0, r0, #1
	vldr	s2, [r1]
	add	r1, r2, r4
	add	r4, r4, #228
	vmul.f32	s2, s0, s2
	vadd.f32	s4, s2, s16
	vmax.f32	d16, d2, d11
	vmin.f32	d2, d16, d9
	vmul.f32	s2, s2, s4
	vdiv.f32	s2, s2, s18
	vstr	s2, [r1]
	bne	.LBB0_225
@ %bb.226:                              @ %exit276.i
	mov	r6, sp
	mov	r1, r2
	sub	r2, r6, #16
	mov	sp, r2
	sub	r3, sp, #32
	mov	sp, r3
	mov	r5, sp
	sub	lr, r5, #104
	mov	sp, lr
	mov	r7, sp
	sub	r12, r7, #8
	mov	sp, r12
	mov	r4, sp
	sub	r9, r4, #56
	mov	sp, r9
	str	r10, [r6, #-16]
	adr	r0, .LCPI0_235
	vld1.64	{d16, d17}, [r0:128]
	adr	r0, .LCPI0_236
	mov	r8, #6
	vld1.64	{d18, d19}, [r0:128]
	mov	r0, lr
	vst1.64	{d18, d19}, [r0]!
	str	r1, [r6, #-12]
	sub	r1, r5, #56
	strb	r8, [r7, #-8]
	vst1.64	{d16, d17}, [r0]
	adr	r0, .LCPI0_237
	vld1.64	{d18, d19}, [r0:128]
	mov	r0, r3
	strb	r8, [r7, #-7]
	vst1.64	{d18, d19}, [r0]!
	vst1.64	{d16, d17}, [r1]
	adr	r1, .LCPI0_238
	vld1.64	{d16, d17}, [r1:128]
	sub	r1, r5, #72
	vst1.64	{d16, d17}, [r1]
	ldr	r1, [r11, #-1788]       @ 4-byte Reload
	str	r1, [r6, #-8]
	adr	r1, .LCPI0_239
	vld1.64	{d16, d17}, [r1:128]
	sub	r1, r5, #24
	strb	r8, [r7, #-6]
	vst1.64	{d16, d17}, [r1]
	adr	r1, .LCPI0_240
	vld1.64	{d18, d19}, [r1:128]
	sub	r1, r5, #40
	vst1.64	{d18, d19}, [r1]
	ldr	r1, [r11, #-1784]       @ 4-byte Reload
	str	r1, [r6, #-4]
	mov	r6, #0
	strb	r8, [r7, #-5]
	adr	r1, .LCPI0_241
	vld1.64	{d18, d19}, [r1:128]
	mov	r7, #96
	vst1.64	{d18, d19}, [r0]
	sub	r0, r4, #24
	vmov.i32	q9, #0x0
	vst1.64	{d16, d17}, [r0]
	mov	r0, #1
	stmdb	r4, {r0, r6}
	mov	r0, r9
	vst1.64	{d16, d17}, [r0]!
	str	r7, [r5, #-8]
	str	r6, [r5, #-4]
	vst1.64	{d18, d19}, [r0]
	sub	sp, sp, #24
	mov	r0, #7
	add	r1, sp, #8
	str	lr, [sp]
	str	r12, [sp, #4]
	stm	r1, {r0, r6, r9}
	mov	r0, #4
	mov	r1, #0
	bl	nnc_aten_conv2d
	add	sp, sp, #24
	ldr	r1, [r11, #-1492]       @ 4-byte Reload
	ldr	r2, [r11, #-1508]       @ 4-byte Reload
.LBB0_227:                              @ %cond286.preheader.i
                                        @ =>This Inner Loop Header: Depth=1
	add	r0, r10, r6
	subs	r7, r7, #1
	vldr	s0, [r0]
	add	r0, r2, r6
	vldr	s2, [r0]
	add	r0, r1, r6
	add	r6, r6, #228
	vadd.f32	s0, s2, s0
	vstr	s0, [r0]
	bne	.LBB0_227
@ %bb.228:                              @ %exit285.i
	mov	r6, sp
	sub	r2, r6, #16
	mov	r7, r1
	mov	sp, r2
	sub	r3, sp, #32
	mov	sp, r3
	mov	r1, sp
	sub	lr, r1, #104
	mov	sp, lr
	mov	r4, sp
	sub	r12, r4, #8
	mov	sp, r12
	mov	r0, sp
	sub	r9, r0, #56
	mov	sp, r9
	ldr	r10, [r11, #-1760]      @ 4-byte Reload
	mov	r8, #6
	str	r10, [r6, #-16]
	adr	r5, .LCPI0_235
	vld1.64	{d16, d17}, [r5:128]
	adr	r5, .LCPI0_238
	vld1.64	{d18, d19}, [r5:128]
	mov	r5, lr
	vst1.64	{d18, d19}, [r5]!
	str	r7, [r6, #-12]
	sub	r7, r1, #56
	strb	r8, [r4, #-8]
	vst1.64	{d16, d17}, [r5]
	adr	r5, .LCPI0_237
	vld1.64	{d18, d19}, [r5:128]
	mov	r5, r3
	strb	r8, [r4, #-7]
	vst1.64	{d18, d19}, [r5]!
	vst1.64	{d16, d17}, [r7]
	adr	r7, .LCPI0_236
	vld1.64	{d16, d17}, [r7:128]
	sub	r7, r1, #72
	vst1.64	{d16, d17}, [r7]
	ldr	r7, [r11, #-1776]       @ 4-byte Reload
	str	r7, [r6, #-8]
	adr	r7, .LCPI0_239
	vld1.64	{d16, d17}, [r7:128]
	sub	r7, r1, #24
	strb	r8, [r4, #-6]
	vst1.64	{d16, d17}, [r7]
	adr	r7, .LCPI0_242
	vld1.64	{d18, d19}, [r7:128]
	sub	r7, r1, #40
	vst1.64	{d18, d19}, [r7]
	ldr	r7, [r11, #-1772]       @ 4-byte Reload
	str	r7, [r6, #-4]
	strb	r8, [r4, #-5]
	adr	r4, .LCPI0_241
	vld1.64	{d18, d19}, [r4:128]
	mov	r4, #0
	vst1.64	{d18, d19}, [r5]
	mov	r5, #576
	vmov.i32	q9, #0x0
	str	r5, [r1, #-8]
	str	r4, [r1, #-4]
	sub	r1, r0, #24
	vst1.64	{d16, d17}, [r1]
	mov	r1, #1
	stmdb	r0, {r1, r4}
	mov	r0, r9
	vst1.64	{d16, d17}, [r0]!
	vst1.64	{d18, d19}, [r0]
	sub	sp, sp, #24
	mov	r0, #7
	add	r1, sp, #8
	str	lr, [sp]
	str	r12, [sp, #4]
	stm	r1, {r0, r4, r9}
	mov	r0, #4
	mov	r1, #0
	bl	nnc_aten_conv2d
	add	sp, sp, #24
	ldr	r7, [r11, #-1752]       @ 4-byte Reload
.LBB0_229:                              @ %cond295.preheader.i
                                        @ =>This Inner Loop Header: Depth=1
	add	r0, r10, r4
	subs	r5, r5, #1
	vldr	s0, [r0]
	add	r0, r7, r4
	add	r4, r4, #228
	vadd.f32	s2, s0, s16
	vmax.f32	d16, d1, d11
	vmin.f32	d1, d16, d9
	vmul.f32	s0, s0, s2
	vdiv.f32	s0, s0, s18
	vstr	s0, [r0]
	bne	.LBB0_229
@ %bb.230:                              @ %exit294.i
	adr	r0, .LCPI0_235
	mov	r6, sp
	vld1.64	{d16, d17}, [r0:128]
	adr	r0, .LCPI0_238
	sub	r2, r6, #16
	vld1.64	{d14, d15}, [r0:128]
	mov	sp, r2
	sub	r3, sp, #32
	mov	sp, r3
	mov	r5, sp
	sub	lr, r5, #104
	mov	sp, lr
	mov	r4, sp
	sub	r12, r4, #8
	mov	sp, r12
	mov	r1, sp
	sub	r9, r1, #56
	mov	sp, r9
	mov	r0, lr
	ldr	r10, [r11, #-1496]      @ 4-byte Reload
	mov	r8, #6
	str	r10, [r6, #-16]
	strb	r8, [r4, #-8]
	vst1.64	{d14, d15}, [r0]!
	str	r7, [r11, #-100]
	sub	r7, r11, #312
	sub	r7, r7, #1024
	vstmia	r7, {d16, d17}          @ 16-byte Spill
	ldr	r7, [r11, #-100]
	str	r7, [r6, #-12]
	sub	r7, r5, #56
	vst1.64	{d16, d17}, [r0]
	adr	r0, .LCPI0_265
	vld1.64	{d18, d19}, [r0:128]
	sub	r0, r11, #344
	sub	r0, r0, #1024
	vst1.64	{d16, d17}, [r7]
	sub	r7, r5, #72
	vstmia	r0, {d18, d19}          @ 16-byte Spill
	mov	r0, r3
	vst1.64	{d14, d15}, [r7]
	ldr	r7, [r11, #-1764]       @ 4-byte Reload
	strb	r8, [r4, #-7]
	vst1.64	{d18, d19}, [r0]!
	str	r7, [r6, #-8]
	adr	r7, .LCPI0_243
	vld1.64	{d16, d17}, [r7:128]
	sub	r7, r5, #24
	strb	r8, [r4, #-6]
	vst1.64	{d16, d17}, [r7]
	adr	r7, .LCPI0_244
	vld1.64	{d16, d17}, [r7:128]
	sub	r7, r5, #40
	vst1.64	{d16, d17}, [r7]
	ldr	r7, [r11, #-1756]       @ 4-byte Reload
	str	r7, [r6, #-4]
	strb	r8, [r4, #-5]
	adr	r4, .LCPI0_245
	vld1.64	{d16, d17}, [r4:128]
	mov	r4, #0
	vst1.64	{d16, d17}, [r0]
	mov	r0, #576
	stmdb	r5, {r0, r4}
	adr	r5, .LCPI0_246
	vld1.64	{d12, d13}, [r5:128]
	sub	r5, r1, #24
	vst1.64	{d12, d13}, [r5]
	stmdb	r1, {r0, r4}
	adr	r0, .LCPI0_247
	vld1.64	{d16, d17}, [r0:128]
	mov	r0, r9
	vst1.64	{d12, d13}, [r0]!
	vst1.64	{d16, d17}, [r0]
	sub	sp, sp, #24
	mov	r0, #7
	add	r1, sp, #8
	str	lr, [sp]
	str	r12, [sp, #4]
	stm	r1, {r0, r4, r9}
	mov	r0, #4
	mov	r1, #0
	bl	nnc_aten_conv2d
	add	sp, sp, #24
	mov	lr, sp
	sub	r2, lr, #8
	mov	sp, r2
	sub	r3, sp, #16
	mov	sp, r3
	mov	r1, sp
	sub	r0, r1, #64
	mov	sp, r0
	mov	r6, sp
	sub	r12, r6, #8
	mov	sp, r12
	sub	r5, sp, #16
	mov	sp, r5
	ldr	r9, [r11, #-1744]       @ 4-byte Reload
	mov	r7, r0
	vst1.64	{d14, d15}, [r7]!
	stmdb	lr, {r9, r10}
	sub	lr, r11, #344
	sub	lr, lr, #1024
	vst1.64	{d12, d13}, [r7]
	sub	r7, r1, #16
	sub	r1, r1, #32
	vldmia	lr, {d16, d17}          @ 16-byte Reload
	sub	lr, r11, #312
	sub	lr, lr, #1024
	strb	r8, [r6, #-8]
	vst1.64	{d16, d17}, [r3]
	vldmia	lr, {d16, d17}          @ 16-byte Reload
	strb	r8, [r6, #-7]
	vst1.64	{d16, d17}, [r7]
	vst1.64	{d14, d15}, [r1]
	vst1.64	{d12, d13}, [r5]
	sub	sp, sp, #24
	stm	sp, {r0, r12}
	mov	r1, #2
	add	r0, sp, #8
	stm	r0, {r1, r4, r5}
	mov	r0, #2
	mov	r1, #0
	bl	nnc_aten_adaptive_avg_pool2d
	add	sp, sp, #24
	ldr	r5, [r11, #-1740]       @ 4-byte Reload
	vld1.32	{d16[], d17[]}, [r9:32]
	mov	r0, #48
	b	.LBB0_237
	.p2align	4
@ %bb.231:
.LCPI0_246:
	.long	1                       @ 0x1
	.long	0                       @ 0x0
	.long	1                       @ 0x1
	.long	0                       @ 0x0
	.p2align	4
@ %bb.232:
.LCPI0_247:
	.long	2                       @ 0x2
	.long	0                       @ 0x0
	.long	2                       @ 0x2
	.long	0                       @ 0x0
	.p2align	4
@ %bb.233:
.LCPI0_248:
	.long	1                       @ 0x1
	.long	0                       @ 0x0
	.long	144                     @ 0x90
	.long	0                       @ 0x0
	.p2align	4
@ %bb.234:
.LCPI0_249:
	.long	1                       @ 0x1
	.long	0                       @ 0x0
	.long	576                     @ 0x240
	.long	0                       @ 0x0
	.p2align	4
@ %bb.235:
.LCPI0_250:
	.long	576                     @ 0x240
	.long	0                       @ 0x0
	.long	144                     @ 0x90
	.long	0                       @ 0x0
	.p2align	4
@ %bb.236:
.LCPI0_265:
	.long	4                       @ 0x4
	.long	0                       @ 0x0
	.long	4                       @ 0x4
	.long	0                       @ 0x0
	.p2align	2
.LBB0_237:                              @ %vector.body664.i
                                        @ =>This Inner Loop Header: Depth=1
	add	r1, r5, r4
	add	r4, r4, #64
	cmp	r4, #2304
	mov	r2, r1
	vst1.32	{d16, d17}, [r2], r0
	vst1.32	{d16, d17}, [r2]
	add	r2, r1, #32
	add	r1, r1, #16
	vst1.32	{d16, d17}, [r2]
	vst1.32	{d16, d17}, [r1]
	bne	.LBB0_237
@ %bb.238:                              @ %exit303.i
	sub	lr, r11, #312
	adr	r0, .LCPI0_248
	mov	r1, sp
	sub	r2, r1, #16
	vld1.64	{d16, d17}, [r0:128]
	sub	lr, lr, #1024
	vstmia	lr, {d16, d17}          @ 16-byte Spill
	mov	sp, r2
	sub	r3, sp, #24
	mov	sp, r3
	mov	r12, sp
	sub	r7, r12, #48
	mov	sp, r7
	mov	r6, sp
	sub	lr, r6, #8
	mov	sp, lr
	mov	r0, r7
	ldr	r8, [r11, #-1504]       @ 4-byte Reload
	mov	r9, #6
	str	r8, [r1, #-16]
	str	r5, [r1, #-12]
	mov	r5, r3
	strb	r9, [r6, #-8]
	vst1.64	{d16, d17}, [r0]!
	adr	r4, .LCPI0_249
	vld1.64	{d12, d13}, [r4:128]
	adr	r4, .LCPI0_247
	vld1.64	{d14, d15}, [r4:128]
	mov	r4, #0
	vst1.64	{d12, d13}, [r0]
	ldr	r0, [r11, #-1748]       @ 4-byte Reload
	vst1.64	{d14, d15}, [r5]!
	str	r0, [r1, #-8]
	mov	r0, #2
	strb	r9, [r6, #-7]
	strb	r9, [r6, #-6]
	stm	r5, {r0, r4}
	adr	r0, .LCPI0_250
	vld1.64	{d16, d17}, [r0:128]
	sub	r0, r12, #16
	vst1.64	{d16, d17}, [r0]
	sub	sp, sp, #24
	mov	r0, #3
	mov	r1, #0
	stm	sp, {r7, lr}
	sub	r10, r11, #104
	str	r4, [sp, #8]
	str	r4, [sp, #12]
	str	r10, [sp, #16]
	bl	nnc_aten_matmul
	add	sp, sp, #24
	vld1.32	{d16, d17}, [r8]
	mov	r2, #544
	vclt.f32	q9, q8, #0
	ldr	r3, [r11, #-1320]       @ 4-byte Reload
	vbic	q8, q8, q9
	ldr	r10, [r11, #-1500]      @ 4-byte Reload
	ldr	r1, [r11, #-1352]       @ 4-byte Reload
	mov	r0, r3
	vst1.32	{d16, d17}, [r10]
	mov	r7, r1
	vld1.32	{d16, d17}, [r0], r2
	vclt.f32	q9, q8, #0
	vbic	q8, q8, q9
	vst1.32	{d16, d17}, [r7], r2
	add	r2, r3, #16
	vld1.32	{d16, d17}, [r2]
	add	r2, r1, #16
	vclt.f32	q9, q8, #0
	vbic	q8, q8, q9
	vst1.32	{d16, d17}, [r2]
	add	r2, r3, #32
	vld1.32	{d16, d17}, [r2]
	add	r2, r1, #32
	vclt.f32	q9, q8, #0
	vbic	q8, q8, q9
	vst1.32	{d16, d17}, [r2]
	add	r2, r3, #48
	vld1.32	{d16, d17}, [r2]
	add	r2, r1, #48
	vclt.f32	q9, q8, #0
	vbic	q8, q8, q9
	vst1.32	{d16, d17}, [r2]
	add	r2, r3, #64
	vld1.32	{d16, d17}, [r2]
	add	r2, r1, #64
	vclt.f32	q9, q8, #0
	vbic	q8, q8, q9
	vst1.32	{d16, d17}, [r2]
	add	r2, r3, #80
	vld1.32	{d16, d17}, [r2]
	add	r2, r1, #80
	vclt.f32	q9, q8, #0
	vbic	q8, q8, q9
	vst1.32	{d16, d17}, [r2]
	add	r2, r3, #96
	vld1.32	{d16, d17}, [r2]
	add	r2, r1, #96
	vclt.f32	q9, q8, #0
	vbic	q8, q8, q9
	vst1.32	{d16, d17}, [r2]
	add	r2, r3, #112
	vld1.32	{d16, d17}, [r2]
	add	r2, r1, #112
	vclt.f32	q9, q8, #0
	vbic	q8, q8, q9
	vst1.32	{d16, d17}, [r2]
	add	r2, r3, #128
	vld1.32	{d16, d17}, [r2]
	add	r2, r1, #128
	vclt.f32	q9, q8, #0
	vbic	q8, q8, q9
	vst1.32	{d16, d17}, [r2]
	add	r2, r3, #144
	vld1.32	{d16, d17}, [r2]
	add	r2, r1, #144
	vclt.f32	q9, q8, #0
	vbic	q8, q8, q9
	vst1.32	{d16, d17}, [r2]
	add	r2, r3, #160
	vld1.32	{d16, d17}, [r2]
	add	r2, r1, #160
	vclt.f32	q9, q8, #0
	vbic	q8, q8, q9
	vst1.32	{d16, d17}, [r2]
	add	r2, r3, #176
	vld1.32	{d16, d17}, [r2]
	add	r2, r1, #176
	vclt.f32	q9, q8, #0
	vbic	q8, q8, q9
	vst1.32	{d16, d17}, [r2]
	add	r2, r3, #192
	vld1.32	{d16, d17}, [r2]
	add	r2, r1, #192
	vclt.f32	q9, q8, #0
	vbic	q8, q8, q9
	vst1.32	{d16, d17}, [r2]
	add	r2, r3, #208
	vld1.32	{d16, d17}, [r2]
	add	r2, r1, #208
	vclt.f32	q9, q8, #0
	vbic	q8, q8, q9
	vst1.32	{d16, d17}, [r2]
	add	r2, r3, #224
	vld1.32	{d16, d17}, [r2]
	add	r2, r1, #224
	vclt.f32	q9, q8, #0
	vbic	q8, q8, q9
	vst1.32	{d16, d17}, [r2]
	add	r2, r3, #240
	vld1.32	{d16, d17}, [r2]
	add	r2, r1, #240
	vclt.f32	q9, q8, #0
	vbic	q8, q8, q9
	vst1.32	{d16, d17}, [r2]
	add	r2, r3, #256
	vld1.32	{d16, d17}, [r2]
	add	r2, r1, #256
	vclt.f32	q9, q8, #0
	vbic	q8, q8, q9
	vst1.32	{d16, d17}, [r2]
	add	r2, r3, #272
	vld1.32	{d16, d17}, [r2]
	add	r2, r1, #272
	vclt.f32	q9, q8, #0
	vbic	q8, q8, q9
	vst1.32	{d16, d17}, [r2]
	add	r2, r3, #288
	vld1.32	{d16, d17}, [r2]
	add	r2, r1, #288
	vclt.f32	q9, q8, #0
	vbic	q8, q8, q9
	vst1.32	{d16, d17}, [r2]
	add	r2, r3, #304
	vld1.32	{d16, d17}, [r2]
	add	r2, r1, #304
	vclt.f32	q9, q8, #0
	vbic	q8, q8, q9
	vst1.32	{d16, d17}, [r2]
	add	r2, r3, #320
	vld1.32	{d16, d17}, [r2]
	add	r2, r1, #320
	vclt.f32	q9, q8, #0
	vbic	q8, q8, q9
	vst1.32	{d16, d17}, [r2]
	add	r2, r3, #336
	vld1.32	{d16, d17}, [r2]
	add	r2, r1, #336
	vclt.f32	q9, q8, #0
	vbic	q8, q8, q9
	vst1.32	{d16, d17}, [r2]
	add	r2, r3, #352
	vld1.32	{d16, d17}, [r2]
	add	r2, r1, #352
	vclt.f32	q9, q8, #0
	vbic	q8, q8, q9
	vst1.32	{d16, d17}, [r2]
	add	r2, r3, #368
	vld1.32	{d16, d17}, [r2]
	add	r2, r1, #368
	vclt.f32	q9, q8, #0
	vbic	q8, q8, q9
	vst1.32	{d16, d17}, [r2]
	add	r2, r3, #384
	vld1.32	{d16, d17}, [r2]
	add	r2, r1, #384
	vclt.f32	q9, q8, #0
	vbic	q8, q8, q9
	vst1.32	{d16, d17}, [r2]
	add	r2, r3, #400
	vld1.32	{d16, d17}, [r2]
	add	r2, r1, #400
	vclt.f32	q9, q8, #0
	vbic	q8, q8, q9
	vst1.32	{d16, d17}, [r2]
	add	r2, r3, #416
	vld1.32	{d16, d17}, [r2]
	add	r2, r1, #416
	vclt.f32	q9, q8, #0
	vbic	q8, q8, q9
	vst1.32	{d16, d17}, [r2]
	add	r2, r3, #432
	vld1.32	{d16, d17}, [r2]
	add	r2, r1, #432
	vclt.f32	q9, q8, #0
	vbic	q8, q8, q9
	vst1.32	{d16, d17}, [r2]
	add	r2, r3, #448
	vld1.32	{d16, d17}, [r2]
	add	r2, r1, #448
	vclt.f32	q9, q8, #0
	vbic	q8, q8, q9
	vst1.32	{d16, d17}, [r2]
	add	r2, r3, #464
	vld1.32	{d16, d17}, [r2]
	add	r2, r1, #464
	vclt.f32	q9, q8, #0
	vbic	q8, q8, q9
	vst1.32	{d16, d17}, [r2]
	add	r2, r3, #480
	vld1.32	{d16, d17}, [r2]
	add	r2, r1, #480
	vclt.f32	q9, q8, #0
	vbic	q8, q8, q9
	vst1.32	{d16, d17}, [r2]
	add	r2, r3, #496
	vld1.32	{d16, d17}, [r2]
	add	r2, r1, #496
	vclt.f32	q9, q8, #0
	vbic	q8, q8, q9
	vst1.32	{d16, d17}, [r2]
	add	r2, r3, #512
	add	r3, r3, #528
	vld1.32	{d16, d17}, [r2]
	add	r2, r1, #512
	vclt.f32	q9, q8, #0
	vbic	q8, q8, q9
	vst1.32	{d16, d17}, [r2]
	add	r2, r1, #528
	vld1.32	{d16, d17}, [r3]
	vclt.f32	q9, q8, #0
	vbic	q8, q8, q9
	vst1.32	{d16, d17}, [r2]
	vld1.32	{d16, d17}, [r0]
	mov	r0, sp
	sub	r2, r0, #16
	vclt.f32	q9, q8, #0
	vbic	q8, q8, q9
	vst1.32	{d16, d17}, [r7]
	mov	sp, r2
	sub	r3, sp, #24
	mov	sp, r3
	mov	r12, sp
	sub	r1, r12, #48
	mov	sp, r1
	mov	r5, sp
	sub	lr, r5, #8
	mov	sp, lr
	sub	r8, r11, #312
	mov	r7, r1
	sub	r8, r8, #1024
	mov	r6, #6
	vst1.64	{d12, d13}, [r7]!
	mov	r9, #6
	vldmia	r8, {d16, d17}          @ 16-byte Reload
	strb	r6, [r5, #-8]
	strb	r6, [r5, #-7]
	mov	r6, r3
	vst1.64	{d16, d17}, [r7]
	ldr	r8, [r11, #-1736]       @ 4-byte Reload
	vst1.64	{d14, d15}, [r6]!
	ldr	r7, [r11, #-1732]       @ 4-byte Reload
	str	r8, [r0, #-16]
	str	r10, [r0, #-12]
	str	r7, [r0, #-8]
	mov	r0, #2
	strb	r9, [r5, #-6]
	stm	r6, {r0, r4}
	adr	r0, .LCPI0_251
	vld1.64	{d16, d17}, [r0:128]
	sub	r0, r12, #16
	vst1.64	{d16, d17}, [r0]
	sub	sp, sp, #24
	sub	r0, r11, #104
	stm	sp, {r1, lr}
	mov	r1, #0
	str	r0, [sp, #16]
	mov	r0, #3
	str	r4, [sp, #8]
	str	r4, [sp, #12]
	bl	nnc_aten_matmul
	add	sp, sp, #24
	vldr	s0, [r8]
	mov	r0, #576
	ldr	r2, [r11, #-1720]       @ 4-byte Reload
	vadd.f32	s2, s0, s16
	ldr	r3, [r11, #-1496]       @ 4-byte Reload
	vcmpe.f32	s2, #0
	vmrs	APSR_nzcv, fpscr
	vdiv.f32	s0, s2, s18
	vmax.f32	d1, d1, d11
	vmovmi.f32	s0, s22
	vcmpe.f32	s2, s18
	vmrs	APSR_nzcv, fpscr
	vmovgt.f32	s0, s20
	b	.LBB0_248
	.p2align	4
@ %bb.239:
.LCPI0_251:
	.long	144                     @ 0x90
	.long	0                       @ 0x0
	.long	576                     @ 0x240
	.long	0                       @ 0x0
	.p2align	4
@ %bb.240:
.LCPI0_252:
	.long	7                       @ 0x7
	.long	0                       @ 0x0
	.long	7                       @ 0x7
	.long	0                       @ 0x0
	.p2align	4
@ %bb.241:
.LCPI0_253:
	.long	1                       @ 0x1
	.long	0                       @ 0x0
	.long	96                      @ 0x60
	.long	0                       @ 0x0
	.p2align	4
@ %bb.242:
.LCPI0_254:
	.long	4                       @ 0x4
	.long	0                       @ 0x0
	.long	4                       @ 0x4
	.long	0                       @ 0x0
	.p2align	4
@ %bb.243:
.LCPI0_255:
	.long	1                       @ 0x1
	.long	0                       @ 0x0
	.long	576                     @ 0x240
	.long	0                       @ 0x0
	.p2align	4
@ %bb.244:
.LCPI0_256:
	.long	1                       @ 0x1
	.long	0                       @ 0x0
	.long	1                       @ 0x1
	.long	0                       @ 0x0
	.p2align	4
@ %bb.245:
.LCPI0_257:
	.long	96                      @ 0x60
	.long	0                       @ 0x0
	.long	576                     @ 0x240
	.long	0                       @ 0x0
	.p2align	4
@ %bb.246:
.LCPI0_258:
	.long	4                       @ 0x4
	.long	0                       @ 0x0
	.long	1                       @ 0x1
	.long	0                       @ 0x0
	.p2align	4
@ %bb.247:
.LCPI0_259:
	.long	576                     @ 0x240
	.long	0                       @ 0x0
	.long	96                      @ 0x60
	.long	0                       @ 0x0
	.p2align	2
.LBB0_248:                              @ %cond310.preheader.i
                                        @ =>This Inner Loop Header: Depth=1
	add	r1, r3, r4
	subs	r0, r0, #1
	vldr	s2, [r1]
	add	r1, r2, r4
	add	r4, r4, #228
	vmul.f32	s2, s0, s2
	vadd.f32	s4, s2, s16
	vmax.f32	d16, d2, d11
	vmin.f32	d2, d16, d9
	vmul.f32	s2, s2, s4
	vdiv.f32	s2, s2, s18
	vstr	s2, [r1]
	bne	.LBB0_248
@ %bb.249:                              @ %exit309.i
	mov	r6, sp
	mov	r1, r2
	sub	r2, r6, #16
	mov	sp, r2
	sub	r3, sp, #32
	mov	sp, r3
	mov	r5, sp
	sub	lr, r5, #104
	mov	sp, lr
	mov	r7, sp
	sub	r12, r7, #8
	mov	sp, r12
	mov	r4, sp
	sub	r9, r4, #56
	mov	sp, r9
	ldr	r10, [r11, #-1716]      @ 4-byte Reload
	mov	r8, #6
	str	r10, [r6, #-16]
	adr	r0, .LCPI0_252
	vld1.64	{d16, d17}, [r0:128]
	adr	r0, .LCPI0_253
	vld1.64	{d18, d19}, [r0:128]
	mov	r0, lr
	vst1.64	{d18, d19}, [r0]!
	str	r1, [r6, #-12]
	sub	r1, r5, #56
	strb	r8, [r7, #-8]
	vst1.64	{d16, d17}, [r0]
	adr	r0, .LCPI0_254
	vld1.64	{d18, d19}, [r0:128]
	mov	r0, r3
	strb	r8, [r7, #-7]
	vst1.64	{d18, d19}, [r0]!
	vst1.64	{d16, d17}, [r1]
	adr	r1, .LCPI0_255
	vld1.64	{d16, d17}, [r1:128]
	sub	r1, r5, #72
	vst1.64	{d16, d17}, [r1]
	ldr	r1, [r11, #-1728]       @ 4-byte Reload
	str	r1, [r6, #-8]
	adr	r1, .LCPI0_256
	vld1.64	{d16, d17}, [r1:128]
	sub	r1, r5, #24
	strb	r8, [r7, #-6]
	vst1.64	{d16, d17}, [r1]
	adr	r1, .LCPI0_257
	vld1.64	{d18, d19}, [r1:128]
	sub	r1, r5, #40
	vst1.64	{d18, d19}, [r1]
	ldr	r1, [r11, #-1724]       @ 4-byte Reload
	str	r1, [r6, #-4]
	mov	r6, #0
	strb	r8, [r7, #-5]
	adr	r1, .LCPI0_258
	vld1.64	{d18, d19}, [r1:128]
	mov	r7, #96
	vst1.64	{d18, d19}, [r0]
	sub	r0, r4, #24
	vmov.i32	q9, #0x0
	vst1.64	{d16, d17}, [r0]
	mov	r0, #1
	stmdb	r4, {r0, r6}
	mov	r0, r9
	vst1.64	{d16, d17}, [r0]!
	str	r7, [r5, #-8]
	str	r6, [r5, #-4]
	vst1.64	{d18, d19}, [r0]
	sub	sp, sp, #24
	mov	r0, #7
	add	r1, sp, #8
	str	lr, [sp]
	str	r12, [sp, #4]
	stm	r1, {r0, r6, r9}
	mov	r0, #4
	mov	r1, #0
	bl	nnc_aten_conv2d
	add	sp, sp, #24
	ldr	r1, [r11, #-1704]       @ 4-byte Reload
	ldr	r2, [r11, #-1492]       @ 4-byte Reload
.LBB0_250:                              @ %cond319.preheader.i
                                        @ =>This Inner Loop Header: Depth=1
	add	r0, r10, r6
	subs	r7, r7, #1
	vldr	s0, [r0]
	add	r0, r2, r6
	vldr	s2, [r0]
	add	r0, r1, r6
	add	r6, r6, #228
	vadd.f32	s0, s2, s0
	vstr	s0, [r0]
	bne	.LBB0_250
@ %bb.251:                              @ %exit318.i
	mov	r0, sp
	sub	r2, r0, #16
	mov	sp, r2
	sub	r3, sp, #32
	mov	sp, r3
	mov	r7, r1
	mov	r1, sp
	sub	lr, r1, #104
	mov	sp, lr
	mov	r4, sp
	sub	r12, r4, #8
	mov	sp, r12
	mov	r10, sp
	sub	r9, r10, #56
	mov	sp, r9
	ldr	r6, [r11, #-1692]       @ 4-byte Reload
	mov	r8, #6
	str	r6, [r0, #-16]
	adr	r5, .LCPI0_252
	vld1.64	{d16, d17}, [r5:128]
	adr	r5, .LCPI0_255
	vld1.64	{d18, d19}, [r5:128]
	mov	r5, lr
	vst1.64	{d18, d19}, [r5]!
	str	r7, [r0, #-12]
	sub	r7, r1, #56
	strb	r8, [r4, #-8]
	vst1.64	{d16, d17}, [r5]
	adr	r5, .LCPI0_254
	vld1.64	{d18, d19}, [r5:128]
	mov	r5, r3
	strb	r8, [r4, #-7]
	vst1.64	{d18, d19}, [r5]!
	vst1.64	{d16, d17}, [r7]
	adr	r7, .LCPI0_253
	vld1.64	{d16, d17}, [r7:128]
	sub	r7, r1, #72
	vst1.64	{d16, d17}, [r7]
	ldr	r7, [r11, #-1712]       @ 4-byte Reload
	str	r7, [r0, #-8]
	adr	r7, .LCPI0_256
	vld1.64	{d16, d17}, [r7:128]
	sub	r7, r1, #24
	strb	r8, [r4, #-6]
	vst1.64	{d16, d17}, [r7]
	adr	r7, .LCPI0_259
	vld1.64	{d18, d19}, [r7:128]
	sub	r7, r1, #40
	vst1.64	{d18, d19}, [r7]
	ldr	r7, [r11, #-1708]       @ 4-byte Reload
	str	r7, [r0, #-4]
	mov	r0, r9
	strb	r8, [r4, #-5]
	adr	r4, .LCPI0_258
	vld1.64	{d18, d19}, [r4:128]
	mov	r4, #0
	vst1.64	{d18, d19}, [r5]
	mov	r5, #576
	vmov.i32	q9, #0x0
	str	r5, [r1, #-8]
	str	r4, [r1, #-4]
	sub	r1, r10, #24
	vst1.64	{d16, d17}, [r1]
	mov	r1, #1
	stmdb	r10, {r1, r4}
	vst1.64	{d16, d17}, [r0]!
	vst1.64	{d18, d19}, [r0]
	sub	sp, sp, #24
	mov	r0, #7
	add	r1, sp, #8
	str	lr, [sp]
	str	r12, [sp, #4]
	stm	r1, {r0, r4, r9}
	mov	r0, #4
	mov	r1, #0
	bl	nnc_aten_conv2d
	add	sp, sp, #24
	ldr	r7, [r11, #-1688]       @ 4-byte Reload
.LBB0_252:                              @ %cond328.preheader.i
                                        @ =>This Inner Loop Header: Depth=1
	add	r0, r6, r4
	subs	r5, r5, #1
	vldr	s0, [r0]
	add	r0, r7, r4
	add	r4, r4, #228
	vadd.f32	s2, s0, s16
	vmax.f32	d16, d1, d11
	vmin.f32	d1, d16, d9
	vmul.f32	s0, s0, s2
	vdiv.f32	s0, s0, s18
	vstr	s0, [r0]
	bne	.LBB0_252
@ %bb.253:                              @ %exit327.i
	mov	r0, sp
	sub	r2, r0, #8
	mov	sp, r2
	sub	r3, sp, #16
	mov	sp, r3
	mov	r6, sp
	sub	lr, r6, #64
	mov	sp, lr
	mov	r4, sp
	sub	r12, r4, #8
	mov	sp, r12
	adr	r1, .LCPI0_256
	sub	r5, sp, #16
	vld1.64	{d12, d13}, [r1:128]
	adr	r1, .LCPI0_255
	vld1.64	{d14, d15}, [r1:128]
	mov	sp, r5
	mov	r1, lr
	mov	r8, #6
	vst1.64	{d14, d15}, [r1]!
	vst1.64	{d12, d13}, [r1]
	ldr	r1, [r11, #-1488]       @ 4-byte Reload
	strb	r8, [r4, #-8]
	stmdb	r0, {r1, r7}
	sub	r0, r11, #312
	sub	r0, r0, #1024
	strb	r8, [r4, #-7]
	adr	r1, .LCPI0_252
	vld1.64	{d16, d17}, [r1:128]
	adr	r1, .LCPI0_254
	vld1.64	{d18, d19}, [r1:128]
	sub	r1, r6, #16
	vst1.64	{d16, d17}, [r1]
	sub	r1, r6, #32
	vstmia	r0, {d18, d19}          @ 16-byte Spill
	vst1.64	{d18, d19}, [r3]
	vst1.64	{d14, d15}, [r1]
	vst1.64	{d12, d13}, [r5]
	sub	sp, sp, #24
	mov	r1, #2
	add	r0, sp, #8
	mov	r4, #0
	str	lr, [sp]
	str	r12, [sp, #4]
	stm	r0, {r1, r4, r5}
	mov	r0, #2
	mov	r1, #0
	bl	nnc_aten_adaptive_avg_pool2d
	add	sp, sp, #24
	mov	r6, sp
	sub	r0, r6, #16
	str	r0, [r11, #-1320]       @ 4-byte Spill
	mov	sp, r0
	sub	r3, sp, #32
	mov	sp, r3
	mov	r5, sp
	sub	lr, r5, #104
	mov	sp, lr
	mov	r0, sp
	sub	r12, r0, #8
	mov	sp, r12
	mov	r10, sp
	sub	r9, r10, #56
	mov	sp, r9
	ldr	r8, [r11, #-1680]       @ 4-byte Reload
	mov	r1, #6
	str	r8, [r6, #-16]
	adr	r7, .LCPI0_71
	strb	r1, [r0, #-8]
	strb	r1, [r0, #-7]
	sub	r1, r11, #312
	vld1.64	{d16, d17}, [r7:128]
	sub	r1, r1, #1024
	mov	r7, lr
	vst1.64	{d16, d17}, [r7]!
	vldmia	r1, {d16, d17}          @ 16-byte Reload
	sub	r1, r5, #56
	vst1.64	{d12, d13}, [r7]
	mov	r7, r3
	vst1.64	{d12, d13}, [r1]
	sub	r1, r5, #72
	ldr	r2, [r11, #-1488]       @ 4-byte Reload
	vst1.64	{d14, d15}, [r1]
	ldr	r1, [r11, #-1700]       @ 4-byte Reload
	str	r2, [r6, #-12]
	mov	r2, #6
	str	r1, [r6, #-8]
	sub	r1, r5, #24
	vst1.64	{d16, d17}, [r7]!
	strb	r2, [r0, #-6]
	vst1.64	{d12, d13}, [r1]
	adr	r1, .LCPI0_72
	vld1.64	{d16, d17}, [r1:128]
	sub	r1, r5, #40
	vst1.64	{d16, d17}, [r1]
	ldr	r1, [r11, #-1696]       @ 4-byte Reload
	str	r1, [r6, #-4]
	strb	r2, [r0, #-5]
	adr	r0, .LCPI0_7
	vld1.64	{d16, d17}, [r0:128]
	mov	r0, #1280
	stmdb	r5, {r0, r4}
	sub	r0, r10, #24
	vst1.64	{d12, d13}, [r0]
	mov	r0, #1
	vst1.64	{d16, d17}, [r7]
	vmov.i32	q8, #0x0
	stmdb	r10, {r0, r4}
	mov	r0, r9
	vst1.64	{d12, d13}, [r0]!
	vst1.64	{d16, d17}, [r0]
	sub	sp, sp, #24
	ldr	r2, [r11, #-1320]       @ 4-byte Reload
	mov	r0, #7
	add	r1, sp, #8
	str	lr, [sp]
	str	r12, [sp, #4]
	stm	r1, {r0, r4, r9}
	mov	r0, #4
	mov	r1, #0
	bl	nnc_aten_conv2d
	add	sp, sp, #24
	ldr	r7, [r11, #-1684]       @ 4-byte Reload
.LBB0_254:                              @ %body335.i
                                        @ =>This Inner Loop Header: Depth=1
	add	r0, r8, r4
	vldr	s0, [r0]
	add	r0, r7, r4
	add	r4, r4, #4
	vadd.f32	s2, s0, s16
	cmp	r4, #5120
	vmax.f32	d16, d1, d11
	vmin.f32	d1, d16, d9
	vmul.f32	s0, s0, s2
	vdiv.f32	s0, s0, s18
	vstr	s0, [r0]
	bne	.LBB0_254
@ %bb.255:                              @ %pytorch.exit
	adr	r0, .LCPI0_71
	mov	r9, sp
	sub	r2, r9, #8
	vld1.64	{d10, d11}, [r0:128]
	mov	sp, r2
	sub	r3, sp, #16
	mov	sp, r3
	mov	r6, sp
	sub	r8, r6, #56
	mov	sp, r8
	mov	r5, sp
	sub	r12, r5, #8
	mov	sp, r12
	mov	r1, sp
	sub	lr, r1, #8
	mov	sp, lr
	ldr	r4, [r11, #-1484]       @ 4-byte Reload
	mov	r0, r8
	mov	r10, #6
	vst1.64	{d10, d11}, [r0]!
	strb	r10, [r5, #-8]
	stmdb	r9, {r4, r7}
	mov	r4, #0
	strb	r10, [r5, #-7]
	adr	r5, .LCPI0_73
	vld1.64	{d16, d17}, [r5:128]
	adr	r5, .LCPI0_74
	vld1.64	{d18, d19}, [r5:128]
	sub	r5, r6, #24
	vst1.64	{d18, d19}, [r3]
	vst1.64	{d16, d17}, [r5]
	adr	r5, .LCPI0_8
	vld1.64	{d8, d9}, [r5:128]
	mov	r5, #1
	vst1.64	{d8, d9}, [r0]
	mov	r0, #3
	str	r5, [r6, #-8]
	str	r4, [r6, #-4]
	stmdb	r1, {r0, r4}
	sub	sp, sp, #24
	mov	r0, #2
	mov	r1, #0
	stm	sp, {r8, r12}
	str	r5, [sp, #8]
	str	r4, [sp, #12]
	str	lr, [sp, #16]
	bl	nnc_aten_mean
	add	sp, sp, #24
	mov	r0, sp
	sub	r8, r0, #8
	mov	sp, r8
	sub	r3, sp, #16
	mov	sp, r3
	mov	r1, sp
	sub	r2, r1, #40
	mov	sp, r2
	mov	r4, sp
	sub	r12, r4, #8
	mov	sp, r12
	mov	r7, sp
	sub	lr, r7, #8
	mov	sp, lr
	mov	r6, r2
	mov	r5, #6
	ldr	r9, [r11, #-1668]       @ 4-byte Reload
	ldr	r10, [r11, #-1484]      @ 4-byte Reload
	strb	r5, [r4, #-8]
	str	r9, [r0, #-8]
	strb	r5, [r4, #-7]
	mov	r4, #1
	vst1.64	{d10, d11}, [r6]!
	str	r10, [r0, #-4]
	adr	r0, .LCPI0_75
	vld1.64	{d16, d17}, [r0:128]
	mov	r0, #0
	vst1.64	{d10, d11}, [r6]
	str	r4, [r1, #-8]
	str	r0, [r1, #-4]
	mov	r1, #2
	vst1.64	{d16, d17}, [r3]
	str	r1, [r7, #-8]
	str	r0, [r7, #-4]
	sub	sp, sp, #24
	stm	sp, {r2, r12}
	mov	r1, #0
	mov	r2, r8
	str	r0, [sp, #12]
	mov	r0, #2
	str	r4, [sp, #8]
	str	lr, [sp, #16]
	bl	nnc_aten_mean
	add	sp, sp, #24
	mov	r7, sp
	sub	r2, r7, #16
	mov	sp, r2
	sub	r3, sp, #32
	mov	sp, r3
	mov	r1, sp
	sub	lr, r1, #56
	mov	sp, lr
	mov	r5, sp
	sub	r12, r5, #8
	mov	sp, r12
	sub	r10, sp, #16
	mov	sp, r10
	ldr	r0, [r11, #-1672]       @ 4-byte Reload
	mov	r8, #6
	str	r0, [r7, #-16]
	adr	r6, .LCPI0_76
	vld1.64	{d16, d17}, [r6:128]
	mov	r0, lr
	ldr	r4, [r11, #-1676]       @ 4-byte Reload
	strb	r8, [r5, #-8]
	vst1.64	{d16, d17}, [r0]!
	str	r4, [r7, #-12]
	adr	r6, .LCPI0_77
	vld1.64	{d16, d17}, [r6:128]
	mov	r6, r3
	strb	r8, [r5, #-7]
	vst1.64	{d16, d17}, [r6]!
	str	r9, [r7, #-8]
	adr	r4, .LCPI0_78
	vld1.64	{d16, d17}, [r4:128]
	mov	r4, #6
	vst1.64	{d16, d17}, [r0]
	ldr	r0, [r11, #-1664]       @ 4-byte Reload
	strb	r4, [r5, #-6]
	strb	r4, [r5, #-5]
	mov	r4, #0
	str	r0, [r7, #-4]
	adr	r0, .LCPI0_9
	vld1.64	{d16, d17}, [r0:128]
	vst1.64	{d16, d17}, [r6]
	adr	r0, .LCPI0_79
	vld1.64	{d16, d17}, [r0:128]
	sub	r0, r1, #24
	vst1.64	{d16, d17}, [r0]
	mov	r0, #1000
	str	r0, [r1, #-8]
	str	r4, [r1, #-4]
	vst1.64	{d8, d9}, [r10]
	sub	sp, sp, #24
	mov	r0, #2
	add	r1, sp, #8
	str	lr, [sp]
	str	r12, [sp, #4]
	stm	r1, {r0, r4, r10}
	mov	r0, #4
	mov	r1, #0
	bl	nnc_aten_addmm
	add	sp, sp, #24
	mov	r0, #0
	sub	sp, r11, #96
	vpop	{d8, d9, d10, d11, d12, d13, d14, d15}
	add	sp, sp, #4
	pop	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
	mov	pc, lr
	.p2align	4
@ %bb.256:
.LCPI0_7:
	.long	4                       @ 0x4
	.long	0                       @ 0x0
	.long	1                       @ 0x1
	.long	0                       @ 0x0
.LCPI0_8:
	.long	1                       @ 0x1
	.long	0                       @ 0x0
	.long	1                       @ 0x1
	.long	0                       @ 0x0
.LCPI0_9:
	.long	2                       @ 0x2
	.long	0                       @ 0x0
	.long	2                       @ 0x2
	.long	0                       @ 0x0
.LCPI0_71:
	.long	1                       @ 0x1
	.long	0                       @ 0x0
	.long	1280                    @ 0x500
	.long	0                       @ 0x0
.LCPI0_72:
	.long	1280                    @ 0x500
	.long	0                       @ 0x0
	.long	576                     @ 0x240
	.long	0                       @ 0x0
.LCPI0_73:
	.long	1280                    @ 0x500
	.long	0                       @ 0x0
	.long	1                       @ 0x1
	.long	0                       @ 0x0
.LCPI0_74:
	.long	3                       @ 0x3
	.long	0                       @ 0x0
	.long	4                       @ 0x4
	.long	0                       @ 0x0
.LCPI0_75:
	.long	2                       @ 0x2
	.long	0                       @ 0x0
	.long	3                       @ 0x3
	.long	0                       @ 0x0
.LCPI0_76:
	.long	1                       @ 0x1
	.long	0                       @ 0x0
	.long	1000                    @ 0x3e8
	.long	0                       @ 0x0
.LCPI0_77:
	.long	2                       @ 0x2
	.long	0                       @ 0x0
	.long	1                       @ 0x1
	.long	0                       @ 0x0
.LCPI0_78:
	.long	1000                    @ 0x3e8
	.long	0                       @ 0x0
	.long	1                       @ 0x1
	.long	0                       @ 0x0
.LCPI0_79:
	.long	1280                    @ 0x500
	.long	0                       @ 0x0
	.long	1280                    @ 0x500
	.long	0                       @ 0x0
.Lfunc_end0:
	.size	mobilenetv3_wrapper, .Lfunc_end0-mobilenetv3_wrapper
	.cantunwind
	.fnend
                                        @ -- End function

	.section	".note.GNU-stack","",%progbits
	.eabi_attribute	30, 1	@ Tag_ABI_optimization_goals
