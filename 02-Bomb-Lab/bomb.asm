
bomb:	file format elf64-x86-64

Disassembly of section .init:

0000000000001000 <_init>:
    1000: f3 0f 1e fa                  	endbr64
    1004: 48 83 ec 08                  	subq	$8, %rsp
    1008: 48 8b 05 d9 5f 00 00         	movq	24537(%rip), %rax       # 0x6fe8 <_GLOBAL_OFFSET_TABLE_+0x118>
    100f: 48 85 c0                     	testq	%rax, %rax
    1012: 74 02                        	je	0x1016 <_init+0x16>
    1014: ff d0                        	callq	*%rax
    1016: 48 83 c4 08                  	addq	$8, %rsp
    101a: c3                           	retq

Disassembly of section .plt:

0000000000001020 <.plt>:
    1020: ff 35 b2 5e 00 00            	pushq	24242(%rip)             # 0x6ed8 <_GLOBAL_OFFSET_TABLE_+0x8>
    1026: f2 ff 25 b3 5e 00 00         	repne		jmpq	*24243(%rip)    # 0x6ee0 <_GLOBAL_OFFSET_TABLE_+0x10>
    102d: 0f 1f 00                     	nopl	(%rax)
    1030: f3 0f 1e fa                  	endbr64
    1034: 68 00 00 00 00               	pushq	$0
    1039: f2 e9 e1 ff ff ff            	repne		jmp	0x1020 <.plt>
    103f: 90                           	nop
    1040: f3 0f 1e fa                  	endbr64
    1044: 68 01 00 00 00               	pushq	$1
    1049: f2 e9 d1 ff ff ff            	repne		jmp	0x1020 <.plt>
    104f: 90                           	nop
    1050: f3 0f 1e fa                  	endbr64
    1054: 68 02 00 00 00               	pushq	$2
    1059: f2 e9 c1 ff ff ff            	repne		jmp	0x1020 <.plt>
    105f: 90                           	nop
    1060: f3 0f 1e fa                  	endbr64
    1064: 68 03 00 00 00               	pushq	$3
    1069: f2 e9 b1 ff ff ff            	repne		jmp	0x1020 <.plt>
    106f: 90                           	nop
    1070: f3 0f 1e fa                  	endbr64
    1074: 68 04 00 00 00               	pushq	$4
    1079: f2 e9 a1 ff ff ff            	repne		jmp	0x1020 <.plt>
    107f: 90                           	nop
    1080: f3 0f 1e fa                  	endbr64
    1084: 68 05 00 00 00               	pushq	$5
    1089: f2 e9 91 ff ff ff            	repne		jmp	0x1020 <.plt>
    108f: 90                           	nop
    1090: f3 0f 1e fa                  	endbr64
    1094: 68 06 00 00 00               	pushq	$6
    1099: f2 e9 81 ff ff ff            	repne		jmp	0x1020 <.plt>
    109f: 90                           	nop
    10a0: f3 0f 1e fa                  	endbr64
    10a4: 68 07 00 00 00               	pushq	$7
    10a9: f2 e9 71 ff ff ff            	repne		jmp	0x1020 <.plt>
    10af: 90                           	nop
    10b0: f3 0f 1e fa                  	endbr64
    10b4: 68 08 00 00 00               	pushq	$8
    10b9: f2 e9 61 ff ff ff            	repne		jmp	0x1020 <.plt>
    10bf: 90                           	nop
    10c0: f3 0f 1e fa                  	endbr64
    10c4: 68 09 00 00 00               	pushq	$9
    10c9: f2 e9 51 ff ff ff            	repne		jmp	0x1020 <.plt>
    10cf: 90                           	nop
    10d0: f3 0f 1e fa                  	endbr64
    10d4: 68 0a 00 00 00               	pushq	$10
    10d9: f2 e9 41 ff ff ff            	repne		jmp	0x1020 <.plt>
    10df: 90                           	nop
    10e0: f3 0f 1e fa                  	endbr64
    10e4: 68 0b 00 00 00               	pushq	$11
    10e9: f2 e9 31 ff ff ff            	repne		jmp	0x1020 <.plt>
    10ef: 90                           	nop
    10f0: f3 0f 1e fa                  	endbr64
    10f4: 68 0c 00 00 00               	pushq	$12
    10f9: f2 e9 21 ff ff ff            	repne		jmp	0x1020 <.plt>
    10ff: 90                           	nop
    1100: f3 0f 1e fa                  	endbr64
    1104: 68 0d 00 00 00               	pushq	$13
    1109: f2 e9 11 ff ff ff            	repne		jmp	0x1020 <.plt>
    110f: 90                           	nop
    1110: f3 0f 1e fa                  	endbr64
    1114: 68 0e 00 00 00               	pushq	$14
    1119: f2 e9 01 ff ff ff            	repne		jmp	0x1020 <.plt>
    111f: 90                           	nop
    1120: f3 0f 1e fa                  	endbr64
    1124: 68 0f 00 00 00               	pushq	$15
    1129: f2 e9 f1 fe ff ff            	repne		jmp	0x1020 <.plt>
    112f: 90                           	nop
    1130: f3 0f 1e fa                  	endbr64
    1134: 68 10 00 00 00               	pushq	$16
    1139: f2 e9 e1 fe ff ff            	repne		jmp	0x1020 <.plt>
    113f: 90                           	nop
    1140: f3 0f 1e fa                  	endbr64
    1144: 68 11 00 00 00               	pushq	$17
    1149: f2 e9 d1 fe ff ff            	repne		jmp	0x1020 <.plt>
    114f: 90                           	nop
    1150: f3 0f 1e fa                  	endbr64
    1154: 68 12 00 00 00               	pushq	$18
    1159: f2 e9 c1 fe ff ff            	repne		jmp	0x1020 <.plt>
    115f: 90                           	nop
    1160: f3 0f 1e fa                  	endbr64
    1164: 68 13 00 00 00               	pushq	$19
    1169: f2 e9 b1 fe ff ff            	repne		jmp	0x1020 <.plt>
    116f: 90                           	nop
    1170: f3 0f 1e fa                  	endbr64
    1174: 68 14 00 00 00               	pushq	$20
    1179: f2 e9 a1 fe ff ff            	repne		jmp	0x1020 <.plt>
    117f: 90                           	nop
    1180: f3 0f 1e fa                  	endbr64
    1184: 68 15 00 00 00               	pushq	$21
    1189: f2 e9 91 fe ff ff            	repne		jmp	0x1020 <.plt>
    118f: 90                           	nop
    1190: f3 0f 1e fa                  	endbr64
    1194: 68 16 00 00 00               	pushq	$22
    1199: f2 e9 81 fe ff ff            	repne		jmp	0x1020 <.plt>
    119f: 90                           	nop
    11a0: f3 0f 1e fa                  	endbr64
    11a4: 68 17 00 00 00               	pushq	$23
    11a9: f2 e9 71 fe ff ff            	repne		jmp	0x1020 <.plt>
    11af: 90                           	nop
    11b0: f3 0f 1e fa                  	endbr64
    11b4: 68 18 00 00 00               	pushq	$24
    11b9: f2 e9 61 fe ff ff            	repne		jmp	0x1020 <.plt>
    11bf: 90                           	nop
    11c0: f3 0f 1e fa                  	endbr64
    11c4: 68 19 00 00 00               	pushq	$25
    11c9: f2 e9 51 fe ff ff            	repne		jmp	0x1020 <.plt>
    11cf: 90                           	nop
    11d0: f3 0f 1e fa                  	endbr64
    11d4: 68 1a 00 00 00               	pushq	$26
    11d9: f2 e9 41 fe ff ff            	repne		jmp	0x1020 <.plt>
    11df: 90                           	nop
    11e0: f3 0f 1e fa                  	endbr64
    11e4: 68 1b 00 00 00               	pushq	$27
    11e9: f2 e9 31 fe ff ff            	repne		jmp	0x1020 <.plt>
    11ef: 90                           	nop
    11f0: f3 0f 1e fa                  	endbr64
    11f4: 68 1c 00 00 00               	pushq	$28
    11f9: f2 e9 21 fe ff ff            	repne		jmp	0x1020 <.plt>
    11ff: 90                           	nop
    1200: f3 0f 1e fa                  	endbr64
    1204: 68 1d 00 00 00               	pushq	$29
    1209: f2 e9 11 fe ff ff            	repne		jmp	0x1020 <.plt>
    120f: 90                           	nop

Disassembly of section .plt.got:

0000000000001210 <.plt.got>:
    1210: f3 0f 1e fa                  	endbr64
    1214: f2 ff 25 dd 5d 00 00         	repne		jmpq	*24029(%rip)    # 0x6ff8 <_GLOBAL_OFFSET_TABLE_+0x128>
    121b: 0f 1f 44 00 00               	nopl	(%rax,%rax)

Disassembly of section .plt.sec:

0000000000001220 <.plt.sec>:
    1220: f3 0f 1e fa                  	endbr64
    1224: f2 ff 25 bd 5c 00 00         	repne		jmpq	*23741(%rip)    # 0x6ee8 <_GLOBAL_OFFSET_TABLE_+0x18>
    122b: 0f 1f 44 00 00               	nopl	(%rax,%rax)
    1230: f3 0f 1e fa                  	endbr64
    1234: f2 ff 25 b5 5c 00 00         	repne		jmpq	*23733(%rip)    # 0x6ef0 <_GLOBAL_OFFSET_TABLE_+0x20>
    123b: 0f 1f 44 00 00               	nopl	(%rax,%rax)
    1240: f3 0f 1e fa                  	endbr64
    1244: f2 ff 25 ad 5c 00 00         	repne		jmpq	*23725(%rip)    # 0x6ef8 <_GLOBAL_OFFSET_TABLE_+0x28>
    124b: 0f 1f 44 00 00               	nopl	(%rax,%rax)
    1250: f3 0f 1e fa                  	endbr64
    1254: f2 ff 25 a5 5c 00 00         	repne		jmpq	*23717(%rip)    # 0x6f00 <_GLOBAL_OFFSET_TABLE_+0x30>
    125b: 0f 1f 44 00 00               	nopl	(%rax,%rax)
    1260: f3 0f 1e fa                  	endbr64
    1264: f2 ff 25 9d 5c 00 00         	repne		jmpq	*23709(%rip)    # 0x6f08 <_GLOBAL_OFFSET_TABLE_+0x38>
    126b: 0f 1f 44 00 00               	nopl	(%rax,%rax)
    1270: f3 0f 1e fa                  	endbr64
    1274: f2 ff 25 95 5c 00 00         	repne		jmpq	*23701(%rip)    # 0x6f10 <_GLOBAL_OFFSET_TABLE_+0x40>
    127b: 0f 1f 44 00 00               	nopl	(%rax,%rax)
    1280: f3 0f 1e fa                  	endbr64
    1284: f2 ff 25 8d 5c 00 00         	repne		jmpq	*23693(%rip)    # 0x6f18 <_GLOBAL_OFFSET_TABLE_+0x48>
    128b: 0f 1f 44 00 00               	nopl	(%rax,%rax)
    1290: f3 0f 1e fa                  	endbr64
    1294: f2 ff 25 85 5c 00 00         	repne		jmpq	*23685(%rip)    # 0x6f20 <_GLOBAL_OFFSET_TABLE_+0x50>
    129b: 0f 1f 44 00 00               	nopl	(%rax,%rax)
    12a0: f3 0f 1e fa                  	endbr64
    12a4: f2 ff 25 7d 5c 00 00         	repne		jmpq	*23677(%rip)    # 0x6f28 <_GLOBAL_OFFSET_TABLE_+0x58>
    12ab: 0f 1f 44 00 00               	nopl	(%rax,%rax)
    12b0: f3 0f 1e fa                  	endbr64
    12b4: f2 ff 25 75 5c 00 00         	repne		jmpq	*23669(%rip)    # 0x6f30 <_GLOBAL_OFFSET_TABLE_+0x60>
    12bb: 0f 1f 44 00 00               	nopl	(%rax,%rax)
    12c0: f3 0f 1e fa                  	endbr64
    12c4: f2 ff 25 6d 5c 00 00         	repne		jmpq	*23661(%rip)    # 0x6f38 <_GLOBAL_OFFSET_TABLE_+0x68>
    12cb: 0f 1f 44 00 00               	nopl	(%rax,%rax)
    12d0: f3 0f 1e fa                  	endbr64
    12d4: f2 ff 25 65 5c 00 00         	repne		jmpq	*23653(%rip)    # 0x6f40 <_GLOBAL_OFFSET_TABLE_+0x70>
    12db: 0f 1f 44 00 00               	nopl	(%rax,%rax)
    12e0: f3 0f 1e fa                  	endbr64
    12e4: f2 ff 25 5d 5c 00 00         	repne		jmpq	*23645(%rip)    # 0x6f48 <_GLOBAL_OFFSET_TABLE_+0x78>
    12eb: 0f 1f 44 00 00               	nopl	(%rax,%rax)
    12f0: f3 0f 1e fa                  	endbr64
    12f4: f2 ff 25 55 5c 00 00         	repne		jmpq	*23637(%rip)    # 0x6f50 <_GLOBAL_OFFSET_TABLE_+0x80>
    12fb: 0f 1f 44 00 00               	nopl	(%rax,%rax)
    1300: f3 0f 1e fa                  	endbr64
    1304: f2 ff 25 4d 5c 00 00         	repne		jmpq	*23629(%rip)    # 0x6f58 <_GLOBAL_OFFSET_TABLE_+0x88>
    130b: 0f 1f 44 00 00               	nopl	(%rax,%rax)
    1310: f3 0f 1e fa                  	endbr64
    1314: f2 ff 25 45 5c 00 00         	repne		jmpq	*23621(%rip)    # 0x6f60 <_GLOBAL_OFFSET_TABLE_+0x90>
    131b: 0f 1f 44 00 00               	nopl	(%rax,%rax)
    1320: f3 0f 1e fa                  	endbr64
    1324: f2 ff 25 3d 5c 00 00         	repne		jmpq	*23613(%rip)    # 0x6f68 <_GLOBAL_OFFSET_TABLE_+0x98>
    132b: 0f 1f 44 00 00               	nopl	(%rax,%rax)
    1330: f3 0f 1e fa                  	endbr64
    1334: f2 ff 25 35 5c 00 00         	repne		jmpq	*23605(%rip)    # 0x6f70 <_GLOBAL_OFFSET_TABLE_+0xa0>
    133b: 0f 1f 44 00 00               	nopl	(%rax,%rax)
    1340: f3 0f 1e fa                  	endbr64
    1344: f2 ff 25 2d 5c 00 00         	repne		jmpq	*23597(%rip)    # 0x6f78 <_GLOBAL_OFFSET_TABLE_+0xa8>
    134b: 0f 1f 44 00 00               	nopl	(%rax,%rax)
    1350: f3 0f 1e fa                  	endbr64
    1354: f2 ff 25 25 5c 00 00         	repne		jmpq	*23589(%rip)    # 0x6f80 <_GLOBAL_OFFSET_TABLE_+0xb0>
    135b: 0f 1f 44 00 00               	nopl	(%rax,%rax)
    1360: f3 0f 1e fa                  	endbr64
    1364: f2 ff 25 1d 5c 00 00         	repne		jmpq	*23581(%rip)    # 0x6f88 <_GLOBAL_OFFSET_TABLE_+0xb8>
    136b: 0f 1f 44 00 00               	nopl	(%rax,%rax)
    1370: f3 0f 1e fa                  	endbr64
    1374: f2 ff 25 15 5c 00 00         	repne		jmpq	*23573(%rip)    # 0x6f90 <_GLOBAL_OFFSET_TABLE_+0xc0>
    137b: 0f 1f 44 00 00               	nopl	(%rax,%rax)
    1380: f3 0f 1e fa                  	endbr64
    1384: f2 ff 25 0d 5c 00 00         	repne		jmpq	*23565(%rip)    # 0x6f98 <_GLOBAL_OFFSET_TABLE_+0xc8>
    138b: 0f 1f 44 00 00               	nopl	(%rax,%rax)
    1390: f3 0f 1e fa                  	endbr64
    1394: f2 ff 25 05 5c 00 00         	repne		jmpq	*23557(%rip)    # 0x6fa0 <_GLOBAL_OFFSET_TABLE_+0xd0>
    139b: 0f 1f 44 00 00               	nopl	(%rax,%rax)
    13a0: f3 0f 1e fa                  	endbr64
    13a4: f2 ff 25 fd 5b 00 00         	repne		jmpq	*23549(%rip)    # 0x6fa8 <_GLOBAL_OFFSET_TABLE_+0xd8>
    13ab: 0f 1f 44 00 00               	nopl	(%rax,%rax)
    13b0: f3 0f 1e fa                  	endbr64
    13b4: f2 ff 25 f5 5b 00 00         	repne		jmpq	*23541(%rip)    # 0x6fb0 <_GLOBAL_OFFSET_TABLE_+0xe0>
    13bb: 0f 1f 44 00 00               	nopl	(%rax,%rax)
    13c0: f3 0f 1e fa                  	endbr64
    13c4: f2 ff 25 ed 5b 00 00         	repne		jmpq	*23533(%rip)    # 0x6fb8 <_GLOBAL_OFFSET_TABLE_+0xe8>
    13cb: 0f 1f 44 00 00               	nopl	(%rax,%rax)
    13d0: f3 0f 1e fa                  	endbr64
    13d4: f2 ff 25 e5 5b 00 00         	repne		jmpq	*23525(%rip)    # 0x6fc0 <_GLOBAL_OFFSET_TABLE_+0xf0>
    13db: 0f 1f 44 00 00               	nopl	(%rax,%rax)
    13e0: f3 0f 1e fa                  	endbr64
    13e4: f2 ff 25 dd 5b 00 00         	repne		jmpq	*23517(%rip)    # 0x6fc8 <_GLOBAL_OFFSET_TABLE_+0xf8>
    13eb: 0f 1f 44 00 00               	nopl	(%rax,%rax)
    13f0: f3 0f 1e fa                  	endbr64
    13f4: f2 ff 25 d5 5b 00 00         	repne		jmpq	*23509(%rip)    # 0x6fd0 <_GLOBAL_OFFSET_TABLE_+0x100>
    13fb: 0f 1f 44 00 00               	nopl	(%rax,%rax)

Disassembly of section .text:

0000000000001400 <_start>:
    1400: f3 0f 1e fa                  	endbr64
    1404: 31 ed                        	xorl	%ebp, %ebp
    1406: 49 89 d1                     	movq	%rdx, %r9
    1409: 5e                           	popq	%rsi
    140a: 48 89 e2                     	movq	%rsp, %rdx
    140d: 48 83 e4 f0                  	andq	$-16, %rsp
    1411: 50                           	pushq	%rax
    1412: 54                           	pushq	%rsp
    1413: 4c 8d 05 86 1d 00 00         	leaq	7558(%rip), %r8         # 0x31a0 <__libc_csu_fini>
    141a: 48 8d 0d 0f 1d 00 00         	leaq	7439(%rip), %rcx        # 0x3130 <__libc_csu_init>
    1421: 48 8d 3d c1 00 00 00         	leaq	193(%rip), %rdi         # 0x14e9 <main>
    1428: ff 15 b2 5b 00 00            	callq	*23474(%rip)            # 0x6fe0 <_GLOBAL_OFFSET_TABLE_+0x110>
    142e: f4                           	hlt
    142f: 90                           	nop

0000000000001430 <deregister_tm_clones>:
    1430: 48 8d 3d e9 70 00 00         	leaq	28905(%rip), %rdi       # 0x8520 <stdout@@GLIBC_2.2.5>
    1437: 48 8d 05 e2 70 00 00         	leaq	28898(%rip), %rax       # 0x8520 <stdout@@GLIBC_2.2.5>
    143e: 48 39 f8                     	cmpq	%rdi, %rax
    1441: 74 15                        	je	0x1458 <deregister_tm_clones+0x28>
    1443: 48 8b 05 8e 5b 00 00         	movq	23438(%rip), %rax       # 0x6fd8 <_GLOBAL_OFFSET_TABLE_+0x108>
    144a: 48 85 c0                     	testq	%rax, %rax
    144d: 74 09                        	je	0x1458 <deregister_tm_clones+0x28>
    144f: ff e0                        	jmpq	*%rax
    1451: 0f 1f 80 00 00 00 00         	nopl	(%rax)
    1458: c3                           	retq
    1459: 0f 1f 80 00 00 00 00         	nopl	(%rax)

0000000000001460 <register_tm_clones>:
    1460: 48 8d 3d b9 70 00 00         	leaq	28857(%rip), %rdi       # 0x8520 <stdout@@GLIBC_2.2.5>
    1467: 48 8d 35 b2 70 00 00         	leaq	28850(%rip), %rsi       # 0x8520 <stdout@@GLIBC_2.2.5>
    146e: 48 29 fe                     	subq	%rdi, %rsi
    1471: 48 89 f0                     	movq	%rsi, %rax
    1474: 48 c1 ee 3f                  	shrq	$63, %rsi
    1478: 48 c1 f8 03                  	sarq	$3, %rax
    147c: 48 01 c6                     	addq	%rax, %rsi
    147f: 48 d1 fe                     	sarq	%rsi
    1482: 74 14                        	je	0x1498 <register_tm_clones+0x38>
    1484: 48 8b 05 65 5b 00 00         	movq	23397(%rip), %rax       # 0x6ff0 <_GLOBAL_OFFSET_TABLE_+0x120>
    148b: 48 85 c0                     	testq	%rax, %rax
    148e: 74 08                        	je	0x1498 <register_tm_clones+0x38>
    1490: ff e0                        	jmpq	*%rax
    1492: 66 0f 1f 44 00 00            	nopw	(%rax,%rax)
    1498: c3                           	retq
    1499: 0f 1f 80 00 00 00 00         	nopl	(%rax)

00000000000014a0 <__do_global_dtors_aux>:
    14a0: f3 0f 1e fa                  	endbr64
    14a4: 80 3d 9d 70 00 00 00         	cmpb	$0, 28829(%rip)         # 0x8548 <completed.8060>
    14ab: 75 2b                        	jne	0x14d8 <__do_global_dtors_aux+0x38>
    14ad: 55                           	pushq	%rbp
    14ae: 48 83 3d 42 5b 00 00 00      	cmpq	$0, 23362(%rip)         # 0x6ff8 <_GLOBAL_OFFSET_TABLE_+0x128>
    14b6: 48 89 e5                     	movq	%rsp, %rbp
    14b9: 74 0c                        	je	0x14c7 <__do_global_dtors_aux+0x27>
    14bb: 48 8b 3d 46 5b 00 00         	movq	23366(%rip), %rdi       # 0x7008 <__dso_handle>
    14c2: e8 49 fd ff ff               	callq	0x1210 <.plt.got>
    14c7: e8 64 ff ff ff               	callq	0x1430 <deregister_tm_clones>
    14cc: c6 05 75 70 00 00 01         	movb	$1, 28789(%rip)         # 0x8548 <completed.8060>
    14d3: 5d                           	popq	%rbp
    14d4: c3                           	retq
    14d5: 0f 1f 00                     	nopl	(%rax)
    14d8: c3                           	retq
    14d9: 0f 1f 80 00 00 00 00         	nopl	(%rax)

00000000000014e0 <frame_dummy>:
    14e0: f3 0f 1e fa                  	endbr64
    14e4: e9 77 ff ff ff               	jmp	0x1460 <register_tm_clones>

00000000000014e9 <main>:
    14e9: f3 0f 1e fa                  	endbr64
    14ed: 53                           	pushq	%rbx
    14ee: 83 ff 01                     	cmpl	$1, %edi
    14f1: 74 51                        	je	0x1544 <main+0x5b>
    14f3: 48 89 f3                     	movq	%rsi, %rbx
    14f6: 83 ff 02                     	cmpl	$2, %edi
    14f9: 75 7b                        	jne	0x1576 <main+0x8d>
    14fb: 48 8b 7e 08                  	movq	8(%rsi), %rdi
    14ff: 48 8d 35 fa 32 00 00         	leaq	13050(%rip), %rsi       # 0x4800 <array.3497+0x400>
    1506: e8 65 fe ff ff               	callq	0x1370 <.plt.sec+0x150>
    150b: 48 89 05 3e 70 00 00         	movq	%rax, 28734(%rip)       # 0x8550 <infile>
    1512: 48 85 c0                     	testq	%rax, %rax
    1515: 74 3d                        	je	0x1554 <main+0x6b>
    1517: e8 ed 08 00 00               	callq	0x1e09 <initialize_bomb>
    151c: 48 89 c3                     	movq	%rax, %rbx
    151f: 81 38 11 fa 23 20            	cmpl	$539228689, (%rax)      # imm = 0x2023FA11
    1525: 74 72                        	je	0x1599 <main+0xb0>
    1527: 48 8d 35 5a 2b 00 00         	leaq	11098(%rip), %rsi       # 0x4088 <_IO_stdin_used+0x88>
    152e: bf 01 00 00 00               	movl	$1, %edi
    1533: b8 00 00 00 00               	movl	$0, %eax
    1538: e8 23 fe ff ff               	callq	0x1360 <.plt.sec+0x140>
    153d: b8 00 00 00 00               	movl	$0, %eax
    1542: 5b                           	popq	%rbx
    1543: c3                           	retq
    1544: 48 8b 05 e5 6f 00 00         	movq	28645(%rip), %rax       # 0x8530 <stdin@@GLIBC_2.2.5>
    154b: 48 89 05 fe 6f 00 00         	movq	%rax, 28670(%rip)       # 0x8550 <infile>
    1552: eb c3                        	jmp	0x1517 <main+0x2e>
    1554: 48 8b 4b 08                  	movq	8(%rbx), %rcx
    1558: 48 8b 13                     	movq	(%rbx), %rdx
    155b: 48 8d 35 a2 2a 00 00         	leaq	10914(%rip), %rsi       # 0x4004 <_IO_stdin_used+0x4>
    1562: bf 01 00 00 00               	movl	$1, %edi
    1567: e8 f4 fd ff ff               	callq	0x1360 <.plt.sec+0x140>
    156c: bf 08 00 00 00               	movl	$8, %edi
    1571: e8 1a fe ff ff               	callq	0x1390 <.plt.sec+0x170>
    1576: 48 8b 16                     	movq	(%rsi), %rdx
    1579: 48 8d 35 a1 2a 00 00         	leaq	10913(%rip), %rsi       # 0x4021 <_IO_stdin_used+0x21>
    1580: bf 01 00 00 00               	movl	$1, %edi
    1585: b8 00 00 00 00               	movl	$0, %eax
    158a: e8 d1 fd ff ff               	callq	0x1360 <.plt.sec+0x140>
    158f: bf 08 00 00 00               	movl	$8, %edi
    1594: e8 f7 fd ff ff               	callq	0x1390 <.plt.sec+0x170>
    1599: 48 8d 3d 28 2b 00 00         	leaq	11048(%rip), %rdi       # 0x40c8 <_IO_stdin_used+0xc8>
    15a0: e8 cb fc ff ff               	callq	0x1270 <.plt.sec+0x50>
    15a5: 48 8d 3d 5c 2b 00 00         	leaq	11100(%rip), %rdi       # 0x4108 <_IO_stdin_used+0x108>
    15ac: e8 bf fc ff ff               	callq	0x1270 <.plt.sec+0x50>
    15b1: e8 30 0c 00 00               	callq	0x21e6 <read_line>
    15b6: 48 89 c7                     	movq	%rax, %rdi
    15b9: e8 da 01 00 00               	callq	0x1798 <phase_1>
    15be: 48 89 df                     	movq	%rbx, %rdi
    15c1: e8 6b 0d 00 00               	callq	0x2331 <phase_defused>
    15c6: 48 8d 3d 7b 2b 00 00         	leaq	11131(%rip), %rdi       # 0x4148 <_IO_stdin_used+0x148>
    15cd: e8 9e fc ff ff               	callq	0x1270 <.plt.sec+0x50>
    15d2: e8 0f 0c 00 00               	callq	0x21e6 <read_line>
    15d7: 48 89 c7                     	movq	%rax, %rdi
    15da: e8 dd 01 00 00               	callq	0x17bc <phase_2>
    15df: 48 89 df                     	movq	%rbx, %rdi
    15e2: e8 4a 0d 00 00               	callq	0x2331 <phase_defused>
    15e7: 48 8d 3d 4d 2a 00 00         	leaq	10829(%rip), %rdi       # 0x403b <_IO_stdin_used+0x3b>
    15ee: e8 7d fc ff ff               	callq	0x1270 <.plt.sec+0x50>
    15f3: e8 ee 0b 00 00               	callq	0x21e6 <read_line>
    15f8: 48 89 c7                     	movq	%rax, %rdi
    15fb: e8 2d 02 00 00               	callq	0x182d <phase_3>
    1600: 48 89 df                     	movq	%rbx, %rdi
    1603: e8 29 0d 00 00               	callq	0x2331 <phase_defused>
    1608: 48 8d 3d 49 2a 00 00         	leaq	10825(%rip), %rdi       # 0x4058 <_IO_stdin_used+0x58>
    160f: e8 5c fc ff ff               	callq	0x1270 <.plt.sec+0x50>
    1614: e8 cd 0b 00 00               	callq	0x21e6 <read_line>
    1619: 48 89 c7                     	movq	%rax, %rdi
    161c: e8 d1 03 00 00               	callq	0x19f2 <phase_4>
    1621: 48 89 df                     	movq	%rbx, %rdi
    1624: e8 08 0d 00 00               	callq	0x2331 <phase_defused>
    1629: 48 8d 3d 48 2b 00 00         	leaq	11080(%rip), %rdi       # 0x4178 <_IO_stdin_used+0x178>
    1630: e8 3b fc ff ff               	callq	0x1270 <.plt.sec+0x50>
    1635: e8 ac 0b 00 00               	callq	0x21e6 <read_line>
    163a: 48 89 c7                     	movq	%rax, %rdi
    163d: e8 34 04 00 00               	callq	0x1a76 <phase_5>
    1642: 48 89 df                     	movq	%rbx, %rdi
    1645: e8 e7 0c 00 00               	callq	0x2331 <phase_defused>
    164a: 48 8d 3d 16 2a 00 00         	leaq	10774(%rip), %rdi       # 0x4067 <_IO_stdin_used+0x67>
    1651: e8 1a fc ff ff               	callq	0x1270 <.plt.sec+0x50>
    1656: e8 8b 0b 00 00               	callq	0x21e6 <read_line>
    165b: 48 89 c7                     	movq	%rax, %rdi
    165e: e8 a4 04 00 00               	callq	0x1b07 <phase_6>
    1663: 48 89 df                     	movq	%rbx, %rdi
    1666: e8 c6 0c 00 00               	callq	0x2331 <phase_defused>
    166b: 48 89 df                     	movq	%rbx, %rdi
    166e: e8 bd fb ff ff               	callq	0x1230 <.plt.sec+0x10>
    1673: e9 c5 fe ff ff               	jmp	0x153d <main+0x54>

0000000000001678 <genshin>:
    1678: f3 0f 1e fa                  	endbr64
    167c: 48 81 ec 98 00 00 00         	subq	$152, %rsp
    1683: 64 48 8b 04 25 28 00 00 00   	movq	%fs:40, %rax
    168c: 48 89 84 24 88 00 00 00      	movq	%rax, 136(%rsp)
    1694: 31 c0                        	xorl	%eax, %eax
    1696: 48 8d 4c 24 0c               	leaq	12(%rsp), %rcx
    169b: 48 8d 54 24 08               	leaq	8(%rsp), %rdx
    16a0: 4c 8d 44 24 10               	leaq	16(%rsp), %r8
    16a5: 48 8d 35 f0 2a 00 00         	leaq	10992(%rip), %rsi       # 0x419c <_IO_stdin_used+0x19c>
    16ac: 48 8d 3d 15 70 00 00         	leaq	28693(%rip), %rdi       # 0x86c8 <input_strings+0x168>
    16b3: e8 98 fc ff ff               	callq	0x1350 <.plt.sec+0x130>
    16b8: 83 f8 03                     	cmpl	$3, %eax
    16bb: 74 20                        	je	0x16dd <genshin+0x65>
    16bd: b8 00 00 00 00               	movl	$0, %eax
    16c2: 48 8b b4 24 88 00 00 00      	movq	136(%rsp), %rsi
    16ca: 64 48 33 34 25 28 00 00 00   	xorq	%fs:40, %rsi
    16d3: 75 2b                        	jne	0x1700 <genshin+0x88>
    16d5: 48 81 c4 98 00 00 00         	addq	$152, %rsp
    16dc: c3                           	retq
    16dd: 48 8d 7c 24 10               	leaq	16(%rsp), %rdi
    16e2: 48 8d 35 cf 2a 00 00         	leaq	10959(%rip), %rsi       # 0x41b8 <_IO_stdin_used+0x1b8>
    16e9: e8 ca 06 00 00               	callq	0x1db8 <strings_not_equal>
    16ee: 85 c0                        	testl	%eax, %eax
    16f0: 74 07                        	je	0x16f9 <genshin+0x81>
    16f2: b8 00 00 00 00               	movl	$0, %eax
    16f7: eb c9                        	jmp	0x16c2 <genshin+0x4a>
    16f9: b8 01 00 00 00               	movl	$1, %eax
    16fe: eb c2                        	jmp	0x16c2 <genshin+0x4a>
    1700: e8 8b fb ff ff               	callq	0x1290 <.plt.sec+0x70>

0000000000001705 <qidong>:
    1705: f3 0f 1e fa                  	endbr64
    1709: 48 81 ec 88 00 00 00         	subq	$136, %rsp
    1710: 64 48 8b 04 25 28 00 00 00   	movq	%fs:40, %rax
    1719: 48 89 44 24 78               	movq	%rax, 120(%rsp)
    171e: 31 c0                        	xorl	%eax, %eax
    1720: 48 8d 05 b1 6e 00 00         	leaq	28337(%rip), %rax       # 0x85d8 <input_strings+0x78>
    1727: 80 38 00                     	cmpb	$0, (%rax)
    172a: 74 06                        	je	0x1732 <qidong+0x2d>
    172c: 48 83 c0 01                  	addq	$1, %rax
    1730: eb f5                        	jmp	0x1727 <qidong+0x22>
    1732: 48 83 e8 01                  	subq	$1, %rax
    1736: 48 89 e2                     	movq	%rsp, %rdx
    1739: eb 0a                        	jmp	0x1745 <qidong+0x40>
    173b: 88 0a                        	movb	%cl, (%rdx)
    173d: 48 83 c2 01                  	addq	$1, %rdx
    1741: 48 83 e8 01                  	subq	$1, %rax
    1745: 0f b6 08                     	movzbl	(%rax), %ecx
    1748: 80 f9 20                     	cmpb	$32, %cl
    174b: 74 0c                        	je	0x1759 <qidong+0x54>
    174d: 48 8d 35 84 6e 00 00         	leaq	28292(%rip), %rsi       # 0x85d8 <input_strings+0x78>
    1754: 48 39 f0                     	cmpq	%rsi, %rax
    1757: 75 e2                        	jne	0x173b <qidong+0x36>
    1759: c6 02 00                     	movb	$0, (%rdx)
    175c: 48 89 e7                     	movq	%rsp, %rdi
    175f: 48 8d 35 7a 2a 00 00         	leaq	10874(%rip), %rsi       # 0x41e0 <_IO_stdin_used+0x1e0>
    1766: e8 4d 06 00 00               	callq	0x1db8 <strings_not_equal>
    176b: 85 c0                        	testl	%eax, %eax
    176d: 74 1d                        	je	0x178c <qidong+0x87>
    176f: b8 00 00 00 00               	movl	$0, %eax
    1774: 48 8b 7c 24 78               	movq	120(%rsp), %rdi
    1779: 64 48 33 3c 25 28 00 00 00   	xorq	%fs:40, %rdi
    1782: 75 0f                        	jne	0x1793 <qidong+0x8e>
    1784: 48 81 c4 88 00 00 00         	addq	$136, %rsp
    178b: c3                           	retq
    178c: b8 01 00 00 00               	movl	$1, %eax
    1791: eb e1                        	jmp	0x1774 <qidong+0x6f>
    1793: e8 f8 fa ff ff               	callq	0x1290 <.plt.sec+0x70>

0000000000001798 <phase_1>:
    1798: f3 0f 1e fa                  	endbr64
    179c: 48 83 ec 08                  	subq	$8, %rsp
    17a0: 48 8d 35 69 2a 00 00         	leaq	10857(%rip), %rsi       # 0x4210 <_IO_stdin_used+0x210>
    17a7: e8 0c 06 00 00               	callq	0x1db8 <strings_not_equal>
    17ac: 85 c0                        	testl	%eax, %eax
    17ae: 75 05                        	jne	0x17b5 <phase_1+0x1d>
    17b0: 48 83 c4 08                  	addq	$8, %rsp
    17b4: c3                           	retq
    17b5: e8 61 09 00 00               	callq	0x211b <explode_bomb>
    17ba: eb f4                        	jmp	0x17b0 <phase_1+0x18>

00000000000017bc <phase_2>:
    17bc: f3 0f 1e fa                  	endbr64
    17c0: 53                           	pushq	%rbx
    17c1: 48 83 ec 20                  	subq	$32, %rsp
    17c5: 64 48 8b 04 25 28 00 00 00   	movq	%fs:40, %rax
    17ce: 48 89 44 24 18               	movq	%rax, 24(%rsp)
    17d3: 31 c0                        	xorl	%eax, %eax
    17d5: 48 89 e6                     	movq	%rsp, %rsi
    17d8: e8 c4 09 00 00               	callq	0x21a1 <read_six_numbers>
    17dd: 83 3c 24 01                  	cmpl	$1, (%rsp)
    17e1: 75 07                        	jne	0x17ea <phase_2+0x2e>
    17e3: bb 01 00 00 00               	movl	$1, %ebx
    17e8: eb 0f                        	jmp	0x17f9 <phase_2+0x3d>
    17ea: e8 2c 09 00 00               	callq	0x211b <explode_bomb>
    17ef: eb f2                        	jmp	0x17e3 <phase_2+0x27>
    17f1: e8 25 09 00 00               	callq	0x211b <explode_bomb>
    17f6: 83 c3 01                     	addl	$1, %ebx
    17f9: 83 fb 05                     	cmpl	$5, %ebx
    17fc: 7f 14                        	jg	0x1812 <phase_2+0x56>
    17fe: 48 63 d3                     	movslq	%ebx, %rdx
    1801: 8d 43 ff                     	leal	-1(%rbx), %eax
    1804: 48 98                        	cltq
    1806: 8b 04 84                     	movl	(%rsp,%rax,4), %eax
    1809: 01 c0                        	addl	%eax, %eax
    180b: 39 04 94                     	cmpl	%eax, (%rsp,%rdx,4)
    180e: 74 e6                        	je	0x17f6 <phase_2+0x3a>
    1810: eb df                        	jmp	0x17f1 <phase_2+0x35>
    1812: 48 8b 44 24 18               	movq	24(%rsp), %rax
    1817: 64 48 33 04 25 28 00 00 00   	xorq	%fs:40, %rax
    1820: 75 06                        	jne	0x1828 <phase_2+0x6c>
    1822: 48 83 c4 20                  	addq	$32, %rsp
    1826: 5b                           	popq	%rbx
    1827: c3                           	retq
    1828: e8 63 fa ff ff               	callq	0x1290 <.plt.sec+0x70>

000000000000182d <phase_3>:
    182d: f3 0f 1e fa                  	endbr64
    1831: 48 83 ec 28                  	subq	$40, %rsp
    1835: 64 48 8b 04 25 28 00 00 00   	movq	%fs:40, %rax
    183e: 48 89 44 24 18               	movq	%rax, 24(%rsp)
    1843: 31 c0                        	xorl	%eax, %eax
    1845: 48 8d 4c 24 0f               	leaq	15(%rsp), %rcx
    184a: 48 8d 54 24 10               	leaq	16(%rsp), %rdx
    184f: 4c 8d 44 24 14               	leaq	20(%rsp), %r8
    1854: 48 8d 35 4a 29 00 00         	leaq	10570(%rip), %rsi       # 0x41a5 <_IO_stdin_used+0x1a5>
    185b: e8 f0 fa ff ff               	callq	0x1350 <.plt.sec+0x130>
    1860: 83 f8 02                     	cmpl	$2, %eax
    1863: 7e 20                        	jle	0x1885 <phase_3+0x58>
    1865: 8b 44 24 10                  	movl	16(%rsp), %eax
    1869: 83 f8 07                     	cmpl	$7, %eax
    186c: 0f 87 14 01 00 00            	ja	0x1986 <phase_3+0x159>
    1872: 89 c0                        	movl	%eax, %eax
    1874: 48 8d 15 65 2b 00 00         	leaq	11109(%rip), %rdx       # 0x43e0 <_IO_stdin_used+0x3e0>
    187b: 48 63 04 82                  	movslq	(%rdx,%rax,4), %rax
    187f: 48 01 d0                     	addq	%rdx, %rax
    1882: 3e ff e0                     	jmpq	*%rax
    1885: e8 91 08 00 00               	callq	0x211b <explode_bomb>
    188a: eb d9                        	jmp	0x1865 <phase_3+0x38>
    188c: 81 7c 24 14 ce 01 00 00      	cmpl	$462, 20(%rsp)          # imm = 0x1CE
    1894: 75 0a                        	jne	0x18a0 <phase_3+0x73>
    1896: b8 79 00 00 00               	movl	$121, %eax
    189b: e9 f0 00 00 00               	jmp	0x1990 <phase_3+0x163>
    18a0: e8 76 08 00 00               	callq	0x211b <explode_bomb>
    18a5: b8 79 00 00 00               	movl	$121, %eax
    18aa: e9 e1 00 00 00               	jmp	0x1990 <phase_3+0x163>
    18af: 83 7c 24 14 40               	cmpl	$64, 20(%rsp)
    18b4: 75 0a                        	jne	0x18c0 <phase_3+0x93>
    18b6: b8 61 00 00 00               	movl	$97, %eax
    18bb: e9 d0 00 00 00               	jmp	0x1990 <phase_3+0x163>
    18c0: e8 56 08 00 00               	callq	0x211b <explode_bomb>
    18c5: b8 61 00 00 00               	movl	$97, %eax
    18ca: e9 c1 00 00 00               	jmp	0x1990 <phase_3+0x163>
    18cf: 81 7c 24 14 e5 02 00 00      	cmpl	$741, 20(%rsp)          # imm = 0x2E5
    18d7: 75 0a                        	jne	0x18e3 <phase_3+0xb6>
    18d9: b8 65 00 00 00               	movl	$101, %eax
    18de: e9 ad 00 00 00               	jmp	0x1990 <phase_3+0x163>
    18e3: e8 33 08 00 00               	callq	0x211b <explode_bomb>
    18e8: b8 65 00 00 00               	movl	$101, %eax
    18ed: e9 9e 00 00 00               	jmp	0x1990 <phase_3+0x163>
    18f2: 81 7c 24 14 55 03 00 00      	cmpl	$853, 20(%rsp)          # imm = 0x355
    18fa: 75 0a                        	jne	0x1906 <phase_3+0xd9>
    18fc: b8 6b 00 00 00               	movl	$107, %eax
    1901: e9 8a 00 00 00               	jmp	0x1990 <phase_3+0x163>
    1906: e8 10 08 00 00               	callq	0x211b <explode_bomb>
    190b: b8 6b 00 00 00               	movl	$107, %eax
    1910: eb 7e                        	jmp	0x1990 <phase_3+0x163>
    1912: 81 7c 24 14 90 00 00 00      	cmpl	$144, 20(%rsp)
    191a: 75 07                        	jne	0x1923 <phase_3+0xf6>
    191c: b8 6e 00 00 00               	movl	$110, %eax
    1921: eb 6d                        	jmp	0x1990 <phase_3+0x163>
    1923: e8 f3 07 00 00               	callq	0x211b <explode_bomb>
    1928: b8 6e 00 00 00               	movl	$110, %eax
    192d: eb 61                        	jmp	0x1990 <phase_3+0x163>
    192f: 81 7c 24 14 57 02 00 00      	cmpl	$599, 20(%rsp)          # imm = 0x257
    1937: 75 07                        	jne	0x1940 <phase_3+0x113>
    1939: b8 6a 00 00 00               	movl	$106, %eax
    193e: eb 50                        	jmp	0x1990 <phase_3+0x163>
    1940: e8 d6 07 00 00               	callq	0x211b <explode_bomb>
    1945: b8 6a 00 00 00               	movl	$106, %eax
    194a: eb 44                        	jmp	0x1990 <phase_3+0x163>
    194c: 81 7c 24 14 62 03 00 00      	cmpl	$866, 20(%rsp)          # imm = 0x362
    1954: 75 07                        	jne	0x195d <phase_3+0x130>
    1956: b8 71 00 00 00               	movl	$113, %eax
    195b: eb 33                        	jmp	0x1990 <phase_3+0x163>
    195d: e8 b9 07 00 00               	callq	0x211b <explode_bomb>
    1962: b8 71 00 00 00               	movl	$113, %eax
    1967: eb 27                        	jmp	0x1990 <phase_3+0x163>
    1969: 81 7c 24 14 e6 01 00 00      	cmpl	$486, 20(%rsp)          # imm = 0x1E6
    1971: 75 07                        	jne	0x197a <phase_3+0x14d>
    1973: b8 78 00 00 00               	movl	$120, %eax
    1978: eb 16                        	jmp	0x1990 <phase_3+0x163>
    197a: e8 9c 07 00 00               	callq	0x211b <explode_bomb>
    197f: b8 78 00 00 00               	movl	$120, %eax
    1984: eb 0a                        	jmp	0x1990 <phase_3+0x163>
    1986: e8 90 07 00 00               	callq	0x211b <explode_bomb>
    198b: b8 76 00 00 00               	movl	$118, %eax
    1990: 38 44 24 0f                  	cmpb	%al, 15(%rsp)
    1994: 75 15                        	jne	0x19ab <phase_3+0x17e>
    1996: 48 8b 44 24 18               	movq	24(%rsp), %rax
    199b: 64 48 33 04 25 28 00 00 00   	xorq	%fs:40, %rax
    19a4: 75 0c                        	jne	0x19b2 <phase_3+0x185>
    19a6: 48 83 c4 28                  	addq	$40, %rsp
    19aa: c3                           	retq
    19ab: e8 6b 07 00 00               	callq	0x211b <explode_bomb>
    19b0: eb e4                        	jmp	0x1996 <phase_3+0x169>
    19b2: e8 d9 f8 ff ff               	callq	0x1290 <.plt.sec+0x70>

00000000000019b7 <func4>:
    19b7: f3 0f 1e fa                  	endbr64
    19bb: 85 ff                        	testl	%edi, %edi
    19bd: 7e 29                        	jle	0x19e8 <func4+0x31>
    19bf: 55                           	pushq	%rbp
    19c0: 53                           	pushq	%rbx
    19c1: 48 83 ec 08                  	subq	$8, %rsp
    19c5: 89 fb                        	movl	%edi, %ebx
    19c7: 83 ff 01                     	cmpl	$1, %edi
    19ca: 74 22                        	je	0x19ee <func4+0x37>
    19cc: 8d 7f ff                     	leal	-1(%rdi), %edi
    19cf: e8 e3 ff ff ff               	callq	0x19b7 <func4>
    19d4: 8d 2c 00                     	leal	(%rax,%rax), %ebp
    19d7: 8d 7b fe                     	leal	-2(%rbx), %edi
    19da: e8 d8 ff ff ff               	callq	0x19b7 <func4>
    19df: 01 e8                        	addl	%ebp, %eax
    19e1: 48 83 c4 08                  	addq	$8, %rsp
    19e5: 5b                           	popq	%rbx
    19e6: 5d                           	popq	%rbp
    19e7: c3                           	retq
    19e8: b8 00 00 00 00               	movl	$0, %eax
    19ed: c3                           	retq
    19ee: 89 f8                        	movl	%edi, %eax
    19f0: eb ef                        	jmp	0x19e1 <func4+0x2a>

00000000000019f2 <phase_4>:
    19f2: f3 0f 1e fa                  	endbr64
    19f6: 55                           	pushq	%rbp
    19f7: 53                           	pushq	%rbx
    19f8: 48 83 ec 18                  	subq	$24, %rsp
    19fc: 64 48 8b 04 25 28 00 00 00   	movq	%fs:40, %rax
    1a05: 48 89 44 24 08               	movq	%rax, 8(%rsp)
    1a0a: 31 c0                        	xorl	%eax, %eax
    1a0c: 48 8d 4c 24 04               	leaq	4(%rsp), %rcx
    1a11: 48 89 e2                     	movq	%rsp, %rdx
    1a14: 48 8d 35 47 2d 00 00         	leaq	11591(%rip), %rsi       # 0x4762 <array.3497+0x362>
    1a1b: e8 30 f9 ff ff               	callq	0x1350 <.plt.sec+0x130>
    1a20: 83 f8 02                     	cmpl	$2, %eax
    1a23: 75 06                        	jne	0x1a2b <phase_4+0x39>
    1a25: 83 3c 24 05                  	cmpl	$5, (%rsp)
    1a29: 74 05                        	je	0x1a30 <phase_4+0x3e>
    1a2b: e8 eb 06 00 00               	callq	0x211b <explode_bomb>
    1a30: bd 00 00 00 00               	movl	$0, %ebp
    1a35: bb 00 00 00 00               	movl	$0, %ebx
    1a3a: 39 1c 24                     	cmpl	%ebx, (%rsp)
    1a3d: 7e 0e                        	jle	0x1a4d <phase_4+0x5b>
    1a3f: 89 df                        	movl	%ebx, %edi
    1a41: e8 71 ff ff ff               	callq	0x19b7 <func4>
    1a46: 01 c5                        	addl	%eax, %ebp
    1a48: 83 c3 01                     	addl	$1, %ebx
    1a4b: eb ed                        	jmp	0x1a3a <phase_4+0x48>
    1a4d: 39 6c 24 04                  	cmpl	%ebp, 4(%rsp)
    1a51: 75 17                        	jne	0x1a6a <phase_4+0x78>
    1a53: 48 8b 44 24 08               	movq	8(%rsp), %rax
    1a58: 64 48 33 04 25 28 00 00 00   	xorq	%fs:40, %rax
    1a61: 75 0e                        	jne	0x1a71 <phase_4+0x7f>
    1a63: 48 83 c4 18                  	addq	$24, %rsp
    1a67: 5b                           	popq	%rbx
    1a68: 5d                           	popq	%rbp
    1a69: c3                           	retq
    1a6a: e8 ac 06 00 00               	callq	0x211b <explode_bomb>
    1a6f: eb e2                        	jmp	0x1a53 <phase_4+0x61>
    1a71: e8 1a f8 ff ff               	callq	0x1290 <.plt.sec+0x70>

0000000000001a76 <phase_5>:
    1a76: f3 0f 1e fa                  	endbr64
    1a7a: 53                           	pushq	%rbx
    1a7b: 48 83 ec 10                  	subq	$16, %rsp
    1a7f: 48 89 fb                     	movq	%rdi, %rbx
    1a82: 64 48 8b 04 25 28 00 00 00   	movq	%fs:40, %rax
    1a8b: 48 89 44 24 08               	movq	%rax, 8(%rsp)
    1a90: 31 c0                        	xorl	%eax, %eax
    1a92: e8 09 03 00 00               	callq	0x1da0 <string_length>
    1a97: 83 f8 06                     	cmpl	$6, %eax
    1a9a: 75 28                        	jne	0x1ac4 <phase_5+0x4e>
    1a9c: b8 00 00 00 00               	movl	$0, %eax
    1aa1: 83 f8 05                     	cmpl	$5, %eax
    1aa4: 7f 25                        	jg	0x1acb <phase_5+0x55>
    1aa6: 48 63 c8                     	movslq	%eax, %rcx
    1aa9: 0f b6 14 0b                  	movzbl	(%rbx,%rcx), %edx
    1aad: 83 e2 0f                     	andl	$15, %edx
    1ab0: 48 8d 35 49 29 00 00         	leaq	10569(%rip), %rsi       # 0x4400 <array.3497>
    1ab7: 0f b6 14 16                  	movzbl	(%rsi,%rdx), %edx
    1abb: 88 54 0c 01                  	movb	%dl, 1(%rsp,%rcx)
    1abf: 83 c0 01                     	addl	$1, %eax
    1ac2: eb dd                        	jmp	0x1aa1 <phase_5+0x2b>
    1ac4: e8 52 06 00 00               	callq	0x211b <explode_bomb>
    1ac9: eb d1                        	jmp	0x1a9c <phase_5+0x26>
    1acb: c6 44 24 07 00               	movb	$0, 7(%rsp)
    1ad0: 48 8d 7c 24 01               	leaq	1(%rsp), %rdi
    1ad5: 48 8d 35 d2 26 00 00         	leaq	9938(%rip), %rsi        # 0x41ae <_IO_stdin_used+0x1ae>
    1adc: e8 d7 02 00 00               	callq	0x1db8 <strings_not_equal>
    1ae1: 85 c0                        	testl	%eax, %eax
    1ae3: 75 16                        	jne	0x1afb <phase_5+0x85>
    1ae5: 48 8b 44 24 08               	movq	8(%rsp), %rax
    1aea: 64 48 33 04 25 28 00 00 00   	xorq	%fs:40, %rax
    1af3: 75 0d                        	jne	0x1b02 <phase_5+0x8c>
    1af5: 48 83 c4 10                  	addq	$16, %rsp
    1af9: 5b                           	popq	%rbx
    1afa: c3                           	retq
    1afb: e8 1b 06 00 00               	callq	0x211b <explode_bomb>
    1b00: eb e3                        	jmp	0x1ae5 <phase_5+0x6f>
    1b02: e8 89 f7 ff ff               	callq	0x1290 <.plt.sec+0x70>

0000000000001b07 <phase_6>:
    1b07: f3 0f 1e fa                  	endbr64
    1b0b: 41 54                        	pushq	%r12
    1b0d: 55                           	pushq	%rbp
    1b0e: 53                           	pushq	%rbx
    1b0f: 48 83 ec 60                  	subq	$96, %rsp
    1b13: 64 48 8b 04 25 28 00 00 00   	movq	%fs:40, %rax
    1b1c: 48 89 44 24 58               	movq	%rax, 88(%rsp)
    1b21: 31 c0                        	xorl	%eax, %eax
    1b23: 48 89 e6                     	movq	%rsp, %rsi
    1b26: e8 76 06 00 00               	callq	0x21a1 <read_six_numbers>
    1b2b: bd 00 00 00 00               	movl	$0, %ebp
    1b30: eb 27                        	jmp	0x1b59 <phase_6+0x52>
    1b32: e8 e4 05 00 00               	callq	0x211b <explode_bomb>
    1b37: eb 33                        	jmp	0x1b6c <phase_6+0x65>
    1b39: 83 c3 01                     	addl	$1, %ebx
    1b3c: 83 fb 05                     	cmpl	$5, %ebx
    1b3f: 7f 15                        	jg	0x1b56 <phase_6+0x4f>
    1b41: 48 63 c5                     	movslq	%ebp, %rax
    1b44: 48 63 d3                     	movslq	%ebx, %rdx
    1b47: 8b 3c 94                     	movl	(%rsp,%rdx,4), %edi
    1b4a: 39 3c 84                     	cmpl	%edi, (%rsp,%rax,4)
    1b4d: 75 ea                        	jne	0x1b39 <phase_6+0x32>
    1b4f: e8 c7 05 00 00               	callq	0x211b <explode_bomb>
    1b54: eb e3                        	jmp	0x1b39 <phase_6+0x32>
    1b56: 44 89 e5                     	movl	%r12d, %ebp
    1b59: 83 fd 05                     	cmpl	$5, %ebp
    1b5c: 7f 17                        	jg	0x1b75 <phase_6+0x6e>
    1b5e: 48 63 c5                     	movslq	%ebp, %rax
    1b61: 8b 04 84                     	movl	(%rsp,%rax,4), %eax
    1b64: 83 e8 01                     	subl	$1, %eax
    1b67: 83 f8 05                     	cmpl	$5, %eax
    1b6a: 77 c6                        	ja	0x1b32 <phase_6+0x2b>
    1b6c: 44 8d 65 01                  	leal	1(%rbp), %r12d
    1b70: 44 89 e3                     	movl	%r12d, %ebx
    1b73: eb c7                        	jmp	0x1b3c <phase_6+0x35>
    1b75: be 00 00 00 00               	movl	$0, %esi
    1b7a: eb 08                        	jmp	0x1b84 <phase_6+0x7d>
    1b7c: 48 89 54 cc 20               	movq	%rdx, 32(%rsp,%rcx,8)
    1b81: 83 c6 01                     	addl	$1, %esi
    1b84: 83 fe 05                     	cmpl	$5, %esi
    1b87: 7f 1d                        	jg	0x1ba6 <phase_6+0x9f>
    1b89: b8 01 00 00 00               	movl	$1, %eax
    1b8e: 48 8d 15 7b 65 00 00         	leaq	25979(%rip), %rdx       # 0x8110 <node1>
    1b95: 48 63 ce                     	movslq	%esi, %rcx
    1b98: 39 04 8c                     	cmpl	%eax, (%rsp,%rcx,4)
    1b9b: 7e df                        	jle	0x1b7c <phase_6+0x75>
    1b9d: 48 8b 52 08                  	movq	8(%rdx), %rdx
    1ba1: 83 c0 01                     	addl	$1, %eax
    1ba4: eb ef                        	jmp	0x1b95 <phase_6+0x8e>
    1ba6: 48 8b 5c 24 20               	movq	32(%rsp), %rbx
    1bab: 48 89 d9                     	movq	%rbx, %rcx
    1bae: b8 01 00 00 00               	movl	$1, %eax
    1bb3: eb 12                        	jmp	0x1bc7 <phase_6+0xc0>
    1bb5: 48 63 d0                     	movslq	%eax, %rdx
    1bb8: 48 8b 54 d4 20               	movq	32(%rsp,%rdx,8), %rdx
    1bbd: 48 89 51 08                  	movq	%rdx, 8(%rcx)
    1bc1: 83 c0 01                     	addl	$1, %eax
    1bc4: 48 89 d1                     	movq	%rdx, %rcx
    1bc7: 83 f8 05                     	cmpl	$5, %eax
    1bca: 7e e9                        	jle	0x1bb5 <phase_6+0xae>
    1bcc: 48 c7 41 08 00 00 00 00      	movq	$0, 8(%rcx)
    1bd4: bd 00 00 00 00               	movl	$0, %ebp
    1bd9: eb 07                        	jmp	0x1be2 <phase_6+0xdb>
    1bdb: 48 8b 5b 08                  	movq	8(%rbx), %rbx
    1bdf: 83 c5 01                     	addl	$1, %ebp
    1be2: 83 fd 04                     	cmpl	$4, %ebp
    1be5: 7f 11                        	jg	0x1bf8 <phase_6+0xf1>
    1be7: 48 8b 43 08                  	movq	8(%rbx), %rax
    1beb: 8b 00                        	movl	(%rax), %eax
    1bed: 39 03                        	cmpl	%eax, (%rbx)
    1bef: 7e ea                        	jle	0x1bdb <phase_6+0xd4>
    1bf1: e8 25 05 00 00               	callq	0x211b <explode_bomb>
    1bf6: eb e3                        	jmp	0x1bdb <phase_6+0xd4>
    1bf8: 48 8b 44 24 58               	movq	88(%rsp), %rax
    1bfd: 64 48 33 04 25 28 00 00 00   	xorq	%fs:40, %rax
    1c06: 75 09                        	jne	0x1c11 <phase_6+0x10a>
    1c08: 48 83 c4 60                  	addq	$96, %rsp
    1c0c: 5b                           	popq	%rbx
    1c0d: 5d                           	popq	%rbp
    1c0e: 41 5c                        	popq	%r12
    1c10: c3                           	retq
    1c11: e8 7a f6 ff ff               	callq	0x1290 <.plt.sec+0x70>

0000000000001c16 <get_sum>:
    1c16: f3 0f 1e fa                  	endbr64
    1c1a: 55                           	pushq	%rbp
    1c1b: 53                           	pushq	%rbx
    1c1c: 48 83 ec 08                  	subq	$8, %rsp
    1c20: 48 89 fb                     	movq	%rdi, %rbx
    1c23: 8b 47 10                     	movl	16(%rdi), %eax
    1c26: 85 c0                        	testl	%eax, %eax
    1c28: 74 11                        	je	0x1c3b <get_sum+0x25>
    1c2a: 83 f8 01                     	cmpl	$1, %eax
    1c2d: 74 13                        	je	0x1c42 <get_sum+0x2c>
    1c2f: 83 f8 02                     	cmpl	$2, %eax
    1c32: 74 1b                        	je	0x1c4f <get_sum+0x39>
    1c34: 48 83 c4 08                  	addq	$8, %rsp
    1c38: 5b                           	popq	%rbx
    1c39: 5d                           	popq	%rbp
    1c3a: c3                           	retq
    1c3b: 8b 47 08                     	movl	8(%rdi), %eax
    1c3e: 03 07                        	addl	(%rdi), %eax
    1c40: eb f2                        	jmp	0x1c34 <get_sum+0x1e>
    1c42: 48 8b 3f                     	movq	(%rdi), %rdi
    1c45: e8 cc ff ff ff               	callq	0x1c16 <get_sum>
    1c4a: 03 43 08                     	addl	8(%rbx), %eax
    1c4d: eb e5                        	jmp	0x1c34 <get_sum+0x1e>
    1c4f: 48 8b 3f                     	movq	(%rdi), %rdi
    1c52: e8 bf ff ff ff               	callq	0x1c16 <get_sum>
    1c57: 89 c5                        	movl	%eax, %ebp
    1c59: 48 8b 7b 08                  	movq	8(%rbx), %rdi
    1c5d: e8 b4 ff ff ff               	callq	0x1c16 <get_sum>
    1c62: 01 e8                        	addl	%ebp, %eax
    1c64: eb ce                        	jmp	0x1c34 <get_sum+0x1e>

0000000000001c66 <secret_phase>:
    1c66: f3 0f 1e fa                  	endbr64
    1c6a: 53                           	pushq	%rbx
    1c6b: 48 83 ec 10                  	subq	$16, %rsp
    1c6f: 64 48 8b 04 25 28 00 00 00   	movq	%fs:40, %rax
    1c78: 48 89 44 24 08               	movq	%rax, 8(%rsp)
    1c7d: 31 c0                        	xorl	%eax, %eax
    1c7f: e8 62 05 00 00               	callq	0x21e6 <read_line>
    1c84: 48 89 c7                     	movq	%rax, %rdi
    1c87: ba 0a 00 00 00               	movl	$10, %edx
    1c8c: be 00 00 00 00               	movl	$0, %esi
    1c91: e8 7a f6 ff ff               	callq	0x1310 <.plt.sec+0xf0>
    1c96: 48 89 c3                     	movq	%rax, %rbx
    1c99: 48 8d 3d 10 64 00 00         	leaq	25616(%rip), %rdi       # 0x80b0 <n1>
    1ca0: e8 71 ff ff ff               	callq	0x1c16 <get_sum>
    1ca5: 39 d8                        	cmpl	%ebx, %eax
    1ca7: 75 5c                        	jne	0x1d05 <secret_phase+0x9f>
    1ca9: 48 8d 3d a0 25 00 00         	leaq	9632(%rip), %rdi        # 0x4250 <_IO_stdin_used+0x250>
    1cb0: e8 bb f5 ff ff               	callq	0x1270 <.plt.sec+0x50>
    1cb5: 48 8d 3d e4 25 00 00         	leaq	9700(%rip), %rdi        # 0x42a0 <_IO_stdin_used+0x2a0>
    1cbc: e8 af f5 ff ff               	callq	0x1270 <.plt.sec+0x50>
    1cc1: 48 8d 3d 20 26 00 00         	leaq	9760(%rip), %rdi        # 0x42e8 <_IO_stdin_used+0x2e8>
    1cc8: e8 a3 f5 ff ff               	callq	0x1270 <.plt.sec+0x50>
    1ccd: 48 8d 3d 4c 26 00 00         	leaq	9804(%rip), %rdi        # 0x4320 <_IO_stdin_used+0x320>
    1cd4: e8 97 f5 ff ff               	callq	0x1270 <.plt.sec+0x50>
    1cd9: 48 8d 3d b0 26 00 00         	leaq	9904(%rip), %rdi        # 0x4390 <_IO_stdin_used+0x390>
    1ce0: e8 8b f5 ff ff               	callq	0x1270 <.plt.sec+0x50>
    1ce5: 48 8d 7c 24 04               	leaq	4(%rsp), %rdi
    1cea: e8 42 06 00 00               	callq	0x2331 <phase_defused>
    1cef: 48 8b 44 24 08               	movq	8(%rsp), %rax
    1cf4: 64 48 33 04 25 28 00 00 00   	xorq	%fs:40, %rax
    1cfd: 75 0d                        	jne	0x1d0c <secret_phase+0xa6>
    1cff: 48 83 c4 10                  	addq	$16, %rsp
    1d03: 5b                           	popq	%rbx
    1d04: c3                           	retq
    1d05: e8 11 04 00 00               	callq	0x211b <explode_bomb>
    1d0a: eb 9d                        	jmp	0x1ca9 <secret_phase+0x43>
    1d0c: e8 7f f5 ff ff               	callq	0x1290 <.plt.sec+0x70>

0000000000001d11 <sig_handler>:
    1d11: f3 0f 1e fa                  	endbr64
    1d15: 50                           	pushq	%rax
    1d16: 58                           	popq	%rax
    1d17: 48 83 ec 08                  	subq	$8, %rsp
    1d1b: 48 8d 3d ee 26 00 00         	leaq	9966(%rip), %rdi        # 0x4410 <array.3497+0x10>
    1d22: e8 49 f5 ff ff               	callq	0x1270 <.plt.sec+0x50>
    1d27: bf 03 00 00 00               	movl	$3, %edi
    1d2c: e8 8f f6 ff ff               	callq	0x13c0 <.plt.sec+0x1a0>
    1d31: 48 8d 35 a3 29 00 00         	leaq	10659(%rip), %rsi       # 0x46db <array.3497+0x2db>
    1d38: bf 01 00 00 00               	movl	$1, %edi
    1d3d: b8 00 00 00 00               	movl	$0, %eax
    1d42: e8 19 f6 ff ff               	callq	0x1360 <.plt.sec+0x140>
    1d47: 48 8b 3d d2 67 00 00         	movq	26578(%rip), %rdi       # 0x8520 <stdout@@GLIBC_2.2.5>
    1d4e: e8 ed f5 ff ff               	callq	0x1340 <.plt.sec+0x120>
    1d53: bf 01 00 00 00               	movl	$1, %edi
    1d58: e8 63 f6 ff ff               	callq	0x13c0 <.plt.sec+0x1a0>
    1d5d: 48 8d 3d 7f 29 00 00         	leaq	10623(%rip), %rdi       # 0x46e3 <array.3497+0x2e3>
    1d64: e8 07 f5 ff ff               	callq	0x1270 <.plt.sec+0x50>
    1d69: bf 10 00 00 00               	movl	$16, %edi
    1d6e: e8 1d f6 ff ff               	callq	0x1390 <.plt.sec+0x170>

0000000000001d73 <invalid_phase>:
    1d73: f3 0f 1e fa                  	endbr64
    1d77: 50                           	pushq	%rax
    1d78: 58                           	popq	%rax
    1d79: 48 83 ec 08                  	subq	$8, %rsp
    1d7d: 48 89 fa                     	movq	%rdi, %rdx
    1d80: 48 8d 35 64 29 00 00         	leaq	10596(%rip), %rsi       # 0x46eb <array.3497+0x2eb>
    1d87: bf 01 00 00 00               	movl	$1, %edi
    1d8c: b8 00 00 00 00               	movl	$0, %eax
    1d91: e8 ca f5 ff ff               	callq	0x1360 <.plt.sec+0x140>
    1d96: bf 08 00 00 00               	movl	$8, %edi
    1d9b: e8 f0 f5 ff ff               	callq	0x1390 <.plt.sec+0x170>

0000000000001da0 <string_length>:
    1da0: f3 0f 1e fa                  	endbr64
    1da4: b8 00 00 00 00               	movl	$0, %eax
    1da9: 80 3f 00                     	cmpb	$0, (%rdi)
    1dac: 74 09                        	je	0x1db7 <string_length+0x17>
    1dae: 48 83 c7 01                  	addq	$1, %rdi
    1db2: 83 c0 01                     	addl	$1, %eax
    1db5: eb f2                        	jmp	0x1da9 <string_length+0x9>
    1db7: c3                           	retq

0000000000001db8 <strings_not_equal>:
    1db8: f3 0f 1e fa                  	endbr64
    1dbc: 41 54                        	pushq	%r12
    1dbe: 55                           	pushq	%rbp
    1dbf: 53                           	pushq	%rbx
    1dc0: 48 89 fb                     	movq	%rdi, %rbx
    1dc3: 48 89 f5                     	movq	%rsi, %rbp
    1dc6: e8 d5 ff ff ff               	callq	0x1da0 <string_length>
    1dcb: 41 89 c4                     	movl	%eax, %r12d
    1dce: 48 89 ef                     	movq	%rbp, %rdi
    1dd1: e8 ca ff ff ff               	callq	0x1da0 <string_length>
    1dd6: 41 39 c4                     	cmpl	%eax, %r12d
    1dd9: 75 1d                        	jne	0x1df8 <strings_not_equal+0x40>
    1ddb: 0f b6 03                     	movzbl	(%rbx), %eax
    1dde: 84 c0                        	testb	%al, %al
    1de0: 74 0f                        	je	0x1df1 <strings_not_equal+0x39>
    1de2: 38 45 00                     	cmpb	%al, (%rbp)
    1de5: 75 1b                        	jne	0x1e02 <strings_not_equal+0x4a>
    1de7: 48 83 c3 01                  	addq	$1, %rbx
    1deb: 48 83 c5 01                  	addq	$1, %rbp
    1def: eb ea                        	jmp	0x1ddb <strings_not_equal+0x23>
    1df1: b8 00 00 00 00               	movl	$0, %eax
    1df6: eb 05                        	jmp	0x1dfd <strings_not_equal+0x45>
    1df8: b8 01 00 00 00               	movl	$1, %eax
    1dfd: 5b                           	popq	%rbx
    1dfe: 5d                           	popq	%rbp
    1dff: 41 5c                        	popq	%r12
    1e01: c3                           	retq
    1e02: b8 01 00 00 00               	movl	$1, %eax
    1e07: eb f4                        	jmp	0x1dfd <strings_not_equal+0x45>

0000000000001e09 <initialize_bomb>:
    1e09: f3 0f 1e fa                  	endbr64
    1e0d: 55                           	pushq	%rbp
    1e0e: 53                           	pushq	%rbx
    1e0f: 48 81 ec 00 10 00 00         	subq	$4096, %rsp             # imm = 0x1000
    1e16: 48 83 0c 24 00               	orq	$0, (%rsp)
    1e1b: 48 81 ec 00 10 00 00         	subq	$4096, %rsp             # imm = 0x1000
    1e22: 48 83 0c 24 00               	orq	$0, (%rsp)
    1e27: 48 83 ec 58                  	subq	$88, %rsp
    1e2b: 64 48 8b 04 25 28 00 00 00   	movq	%fs:40, %rax
    1e34: 48 89 84 24 48 20 00 00      	movq	%rax, 8264(%rsp)
    1e3c: 31 c0                        	xorl	%eax, %eax
    1e3e: 48 8d 35 cc fe ff ff         	leaq	-308(%rip), %rsi        # 0x1d11 <sig_handler>
    1e45: bf 02 00 00 00               	movl	$2, %edi
    1e4a: e8 91 f4 ff ff               	callq	0x12e0 <.plt.sec+0xc0>
    1e4f: 48 89 e7                     	movq	%rsp, %rdi
    1e52: be 40 00 00 00               	movl	$64, %esi
    1e57: e8 24 f5 ff ff               	callq	0x1380 <.plt.sec+0x160>
    1e5c: 85 c0                        	testl	%eax, %eax
    1e5e: 75 06                        	jne	0x1e66 <initialize_bomb+0x5d>
    1e60: 89 c5                        	movl	%eax, %ebp
    1e62: 89 c3                        	movl	%eax, %ebx
    1e64: eb 19                        	jmp	0x1e7f <initialize_bomb+0x76>
    1e66: 48 8d 3d db 25 00 00         	leaq	9691(%rip), %rdi        # 0x4448 <array.3497+0x48>
    1e6d: e8 fe f3 ff ff               	callq	0x1270 <.plt.sec+0x50>
    1e72: bf 08 00 00 00               	movl	$8, %edi
    1e77: e8 14 f5 ff ff               	callq	0x1390 <.plt.sec+0x170>
    1e7c: 83 c3 01                     	addl	$1, %ebx
    1e7f: 48 63 c3                     	movslq	%ebx, %rax
    1e82: 48 8d 15 d7 62 00 00         	leaq	25303(%rip), %rdx       # 0x8160 <host_table>
    1e89: 48 8b 3c c2                  	movq	(%rdx,%rax,8), %rdi
    1e8d: 48 85 ff                     	testq	%rdi, %rdi
    1e90: 74 11                        	je	0x1ea3 <initialize_bomb+0x9a>
    1e92: 48 89 e6                     	movq	%rsp, %rsi
    1e95: e8 a6 f3 ff ff               	callq	0x1240 <.plt.sec+0x20>
    1e9a: 85 c0                        	testl	%eax, %eax
    1e9c: 75 de                        	jne	0x1e7c <initialize_bomb+0x73>
    1e9e: bd 01 00 00 00               	movl	$1, %ebp
    1ea3: 85 ed                        	testl	%ebp, %ebp
    1ea5: 74 3b                        	je	0x1ee2 <initialize_bomb+0xd9>
    1ea7: 48 8d 7c 24 40               	leaq	64(%rsp), %rdi
    1eac: e8 f1 0f 00 00               	callq	0x2ea2 <init_driver>
    1eb1: 85 c0                        	testl	%eax, %eax
    1eb3: 78 43                        	js	0x1ef8 <initialize_bomb+0xef>
    1eb5: bf 04 00 00 00               	movl	$4, %edi
    1eba: e8 71 f4 ff ff               	callq	0x1330 <.plt.sec+0x110>
    1ebf: c7 00 11 fa 23 20            	movl	$539228689, (%rax)      # imm = 0x2023FA11
    1ec5: 48 8b 8c 24 48 20 00 00      	movq	8264(%rsp), %rcx
    1ecd: 64 48 33 0c 25 28 00 00 00   	xorq	%fs:40, %rcx
    1ed6: 75 45                        	jne	0x1f1d <initialize_bomb+0x114>
    1ed8: 48 81 c4 58 20 00 00         	addq	$8280, %rsp             # imm = 0x2058
    1edf: 5b                           	popq	%rbx
    1ee0: 5d                           	popq	%rbp
    1ee1: c3                           	retq
    1ee2: 48 8d 3d 97 25 00 00         	leaq	9623(%rip), %rdi        # 0x4480 <array.3497+0x80>
    1ee9: e8 82 f3 ff ff               	callq	0x1270 <.plt.sec+0x50>
    1eee: bf 08 00 00 00               	movl	$8, %edi
    1ef3: e8 98 f4 ff ff               	callq	0x1390 <.plt.sec+0x170>
    1ef8: 48 8d 54 24 40               	leaq	64(%rsp), %rdx
    1efd: 48 8d 35 f8 27 00 00         	leaq	10232(%rip), %rsi       # 0x46fc <array.3497+0x2fc>
    1f04: bf 01 00 00 00               	movl	$1, %edi
    1f09: b8 00 00 00 00               	movl	$0, %eax
    1f0e: e8 4d f4 ff ff               	callq	0x1360 <.plt.sec+0x140>
    1f13: bf 08 00 00 00               	movl	$8, %edi
    1f18: e8 73 f4 ff ff               	callq	0x1390 <.plt.sec+0x170>
    1f1d: e8 6e f3 ff ff               	callq	0x1290 <.plt.sec+0x70>

0000000000001f22 <initialize_bomb_solve>:
    1f22: f3 0f 1e fa                  	endbr64
    1f26: c3                           	retq

0000000000001f27 <blank_line>:
    1f27: f3 0f 1e fa                  	endbr64
    1f2b: 55                           	pushq	%rbp
    1f2c: 53                           	pushq	%rbx
    1f2d: 48 83 ec 08                  	subq	$8, %rsp
    1f31: 48 89 fd                     	movq	%rdi, %rbp
    1f34: 0f b6 5d 00                  	movzbl	(%rbp), %ebx
    1f38: 84 db                        	testb	%bl, %bl
    1f3a: 74 1e                        	je	0x1f5a <blank_line+0x33>
    1f3c: e8 8f f4 ff ff               	callq	0x13d0 <.plt.sec+0x1b0>
    1f41: 48 8b 00                     	movq	(%rax), %rax
    1f44: 48 83 c5 01                  	addq	$1, %rbp
    1f48: 48 0f be db                  	movsbq	%bl, %rbx
    1f4c: f6 44 58 01 20               	testb	$32, 1(%rax,%rbx,2)
    1f51: 75 e1                        	jne	0x1f34 <blank_line+0xd>
    1f53: b8 00 00 00 00               	movl	$0, %eax
    1f58: eb 05                        	jmp	0x1f5f <blank_line+0x38>
    1f5a: b8 01 00 00 00               	movl	$1, %eax
    1f5f: 48 83 c4 08                  	addq	$8, %rsp
    1f63: 5b                           	popq	%rbx
    1f64: 5d                           	popq	%rbp
    1f65: c3                           	retq

0000000000001f66 <skip>:
    1f66: f3 0f 1e fa                  	endbr64
    1f6a: 53                           	pushq	%rbx
    1f6b: 48 63 15 da 65 00 00         	movslq	26074(%rip), %rdx       # 0x854c <num_input_strings>
    1f72: 48 89 d0                     	movq	%rdx, %rax
    1f75: 48 c1 e0 04                  	shlq	$4, %rax
    1f79: 48 29 d0                     	subq	%rdx, %rax
    1f7c: 48 8d 15 dd 65 00 00         	leaq	26077(%rip), %rdx       # 0x8560 <input_strings>
    1f83: 48 8d 3c c2                  	leaq	(%rdx,%rax,8), %rdi
    1f87: 48 8b 15 c2 65 00 00         	movq	26050(%rip), %rdx       # 0x8550 <infile>
    1f8e: be 78 00 00 00               	movl	$120, %esi
    1f93: e8 38 f3 ff ff               	callq	0x12d0 <.plt.sec+0xb0>
    1f98: 48 89 c3                     	movq	%rax, %rbx
    1f9b: 48 85 c0                     	testq	%rax, %rax
    1f9e: 74 0c                        	je	0x1fac <skip+0x46>
    1fa0: 48 89 c7                     	movq	%rax, %rdi
    1fa3: e8 7f ff ff ff               	callq	0x1f27 <blank_line>
    1fa8: 85 c0                        	testl	%eax, %eax
    1faa: 75 bf                        	jne	0x1f6b <skip+0x5>
    1fac: 48 89 d8                     	movq	%rbx, %rax
    1faf: 5b                           	popq	%rbx
    1fb0: c3                           	retq

0000000000001fb1 <send_msg>:
    1fb1: f3 0f 1e fa                  	endbr64
    1fb5: 55                           	pushq	%rbp
    1fb6: 53                           	pushq	%rbx
    1fb7: 4c 8d 9c 24 00 c0 ff ff      	leaq	-16384(%rsp), %r11
    1fbf: 48 81 ec 00 10 00 00         	subq	$4096, %rsp             # imm = 0x1000
    1fc6: 48 83 0c 24 00               	orq	$0, (%rsp)
    1fcb: 4c 39 dc                     	cmpq	%r11, %rsp
    1fce: 75 ef                        	jne	0x1fbf <send_msg+0xe>
    1fd0: 48 83 ec 18                  	subq	$24, %rsp
    1fd4: 41 89 f8                     	movl	%edi, %r8d
    1fd7: 48 89 f3                     	movq	%rsi, %rbx
    1fda: 64 48 8b 04 25 28 00 00 00   	movq	%fs:40, %rax
    1fe3: 48 89 84 24 08 40 00 00      	movq	%rax, 16392(%rsp)
    1feb: 31 c0                        	xorl	%eax, %eax
    1fed: 8b 35 59 65 00 00            	movl	25945(%rip), %esi       # 0x854c <num_input_strings>
    1ff3: 8d 46 ff                     	leal	-1(%rsi), %eax
    1ff6: 48 98                        	cltq
    1ff8: 48 89 c2                     	movq	%rax, %rdx
    1ffb: 48 c1 e2 04                  	shlq	$4, %rdx
    1fff: 48 29 c2                     	subq	%rax, %rdx
    2002: 48 89 d0                     	movq	%rdx, %rax
    2005: 48 8d 15 54 65 00 00         	leaq	25940(%rip), %rdx       # 0x8560 <input_strings>
    200c: 48 8d 14 c2                  	leaq	(%rdx,%rax,8), %rdx
    2010: 48 c7 c1 ff ff ff ff         	movq	$-1, %rcx
    2017: b8 00 00 00 00               	movl	$0, %eax
    201c: 48 89 d7                     	movq	%rdx, %rdi
    201f: f2 ae                        	repne		scasb	%es:(%rdi), %al
    2021: 48 89 c8                     	movq	%rcx, %rax
    2024: 48 f7 d0                     	notq	%rax
    2027: 48 83 c0 63                  	addq	$99, %rax
    202b: 48 3d 00 20 00 00            	cmpq	$8192, %rax             # imm = 0x2000
    2031: 0f 87 9c 00 00 00            	ja	0x20d3 <send_msg+0x122>
    2037: 45 85 c0                     	testl	%r8d, %r8d
    203a: 0f 84 b3 00 00 00            	je	0x20f3 <send_msg+0x142>
    2040: 48 8d 05 d8 26 00 00         	leaq	9944(%rip), %rax        # 0x471f <array.3497+0x31f>
    2047: 48 89 e5                     	movq	%rsp, %rbp
    204a: 48 83 ec 08                  	subq	$8, %rsp
    204e: 52                           	pushq	%rdx
    204f: 56                           	pushq	%rsi
    2050: 50                           	pushq	%rax
    2051: 4c 8d 0d 48 58 00 00         	leaq	22600(%rip), %r9        # 0x78a0 <authkey>
    2058: 44 8b 05 41 60 00 00         	movl	24641(%rip), %r8d       # 0x80a0 <bomb_id>
    205f: 48 8d 0d c1 26 00 00         	leaq	9921(%rip), %rcx        # 0x4727 <array.3497+0x327>
    2066: ba 00 20 00 00               	movl	$8192, %edx             # imm = 0x2000
    206b: be 01 00 00 00               	movl	$1, %esi
    2070: 48 89 ef                     	movq	%rbp, %rdi
    2073: b8 00 00 00 00               	movl	$0, %eax
    2078: e8 63 f3 ff ff               	callq	0x13e0 <.plt.sec+0x1c0>
    207d: 48 83 c4 20                  	addq	$32, %rsp
    2081: 4c 8d 8c 24 00 20 00 00      	leaq	8192(%rsp), %r9
    2089: 41 b8 00 00 00 00            	movl	$0, %r8d
    208f: 48 89 e9                     	movq	%rbp, %rcx
    2092: 48 8d 15 07 50 00 00         	leaq	20487(%rip), %rdx       # 0x70a0 <lab>
    2099: 48 8d 35 00 54 00 00         	leaq	21504(%rip), %rsi       # 0x74a0 <course>
    20a0: 48 8d 3d f9 5b 00 00         	leaq	23545(%rip), %rdi       # 0x7ca0 <userid>
    20a7: e8 06 10 00 00               	callq	0x30b2 <driver_post>
    20ac: c7 03 01 00 00 00            	movl	$1, (%rbx)
    20b2: 85 c0                        	testl	%eax, %eax
    20b4: 78 49                        	js	0x20ff <send_msg+0x14e>
    20b6: 48 8b 84 24 08 40 00 00      	movq	16392(%rsp), %rax
    20be: 64 48 33 04 25 28 00 00 00   	xorq	%fs:40, %rax
    20c7: 75 4d                        	jne	0x2116 <send_msg+0x165>
    20c9: 48 81 c4 18 40 00 00         	addq	$16408, %rsp            # imm = 0x4018
    20d0: 5b                           	popq	%rbx
    20d1: 5d                           	popq	%rbp
    20d2: c3                           	retq
    20d3: 48 8d 35 de 23 00 00         	leaq	9182(%rip), %rsi        # 0x44b8 <array.3497+0xb8>
    20da: bf 01 00 00 00               	movl	$1, %edi
    20df: b8 00 00 00 00               	movl	$0, %eax
    20e4: e8 77 f2 ff ff               	callq	0x1360 <.plt.sec+0x140>
    20e9: bf 08 00 00 00               	movl	$8, %edi
    20ee: e8 9d f2 ff ff               	callq	0x1390 <.plt.sec+0x170>
    20f3: 48 8d 05 1c 26 00 00         	leaq	9756(%rip), %rax        # 0x4716 <array.3497+0x316>
    20fa: e9 48 ff ff ff               	jmp	0x2047 <send_msg+0x96>
    20ff: 48 8d bc 24 00 20 00 00      	leaq	8192(%rsp), %rdi
    2107: e8 64 f1 ff ff               	callq	0x1270 <.plt.sec+0x50>
    210c: bf 00 00 00 00               	movl	$0, %edi
    2111: e8 7a f2 ff ff               	callq	0x1390 <.plt.sec+0x170>
    2116: e8 75 f1 ff ff               	callq	0x1290 <.plt.sec+0x70>

000000000000211b <explode_bomb>:
    211b: f3 0f 1e fa                  	endbr64
    211f: 50                           	pushq	%rax
    2120: 58                           	popq	%rax
    2121: 48 83 ec 18                  	subq	$24, %rsp
    2125: 64 48 8b 04 25 28 00 00 00   	movq	%fs:40, %rax
    212e: 48 89 44 24 08               	movq	%rax, 8(%rsp)
    2133: 31 c0                        	xorl	%eax, %eax
    2135: 48 8d 3d fa 25 00 00         	leaq	9722(%rip), %rdi        # 0x4736 <array.3497+0x336>
    213c: e8 2f f1 ff ff               	callq	0x1270 <.plt.sec+0x50>
    2141: 48 8d 3d f7 25 00 00         	leaq	9719(%rip), %rdi        # 0x473f <array.3497+0x33f>
    2148: e8 23 f1 ff ff               	callq	0x1270 <.plt.sec+0x50>
    214d: c7 44 24 04 00 00 00 00      	movl	$0, 4(%rsp)
    2155: 48 8d 74 24 04               	leaq	4(%rsp), %rsi
    215a: bf 00 00 00 00               	movl	$0, %edi
    215f: e8 4d fe ff ff               	callq	0x1fb1 <send_msg>
    2164: 83 7c 24 04 01               	cmpl	$1, 4(%rsp)
    2169: 74 20                        	je	0x218b <explode_bomb+0x70>
    216b: 48 8d 35 6e 23 00 00         	leaq	9070(%rip), %rsi        # 0x44e0 <array.3497+0xe0>
    2172: bf 01 00 00 00               	movl	$1, %edi
    2177: b8 00 00 00 00               	movl	$0, %eax
    217c: e8 df f1 ff ff               	callq	0x1360 <.plt.sec+0x140>
    2181: bf 08 00 00 00               	movl	$8, %edi
    2186: e8 05 f2 ff ff               	callq	0x1390 <.plt.sec+0x170>
    218b: 48 8d 3d 96 23 00 00         	leaq	9110(%rip), %rdi        # 0x4528 <array.3497+0x128>
    2192: e8 d9 f0 ff ff               	callq	0x1270 <.plt.sec+0x50>
    2197: bf 08 00 00 00               	movl	$8, %edi
    219c: e8 ef f1 ff ff               	callq	0x1390 <.plt.sec+0x170>

00000000000021a1 <read_six_numbers>:
    21a1: f3 0f 1e fa                  	endbr64
    21a5: 48 83 ec 08                  	subq	$8, %rsp
    21a9: 48 89 f2                     	movq	%rsi, %rdx
    21ac: 48 8d 4e 04                  	leaq	4(%rsi), %rcx
    21b0: 48 8d 46 14                  	leaq	20(%rsi), %rax
    21b4: 50                           	pushq	%rax
    21b5: 48 8d 46 10                  	leaq	16(%rsi), %rax
    21b9: 50                           	pushq	%rax
    21ba: 4c 8d 4e 0c                  	leaq	12(%rsi), %r9
    21be: 4c 8d 46 08                  	leaq	8(%rsi), %r8
    21c2: 48 8d 35 8d 25 00 00         	leaq	9613(%rip), %rsi        # 0x4756 <array.3497+0x356>
    21c9: b8 00 00 00 00               	movl	$0, %eax
    21ce: e8 7d f1 ff ff               	callq	0x1350 <.plt.sec+0x130>
    21d3: 48 83 c4 10                  	addq	$16, %rsp
    21d7: 83 f8 05                     	cmpl	$5, %eax
    21da: 7e 05                        	jle	0x21e1 <read_six_numbers+0x40>
    21dc: 48 83 c4 08                  	addq	$8, %rsp
    21e0: c3                           	retq
    21e1: e8 35 ff ff ff               	callq	0x211b <explode_bomb>

00000000000021e6 <read_line>:
    21e6: f3 0f 1e fa                  	endbr64
    21ea: 48 83 ec 08                  	subq	$8, %rsp
    21ee: b8 00 00 00 00               	movl	$0, %eax
    21f3: e8 6e fd ff ff               	callq	0x1f66 <skip>
    21f8: 48 85 c0                     	testq	%rax, %rax
    21fb: 74 72                        	je	0x226f <read_line+0x89>
    21fd: 8b 15 49 63 00 00            	movl	25417(%rip), %edx       # 0x854c <num_input_strings>
    2203: 48 63 ca                     	movslq	%edx, %rcx
    2206: 48 89 c8                     	movq	%rcx, %rax
    2209: 48 c1 e0 04                  	shlq	$4, %rax
    220d: 48 29 c8                     	subq	%rcx, %rax
    2210: 48 8d 0d 49 63 00 00         	leaq	25417(%rip), %rcx       # 0x8560 <input_strings>
    2217: 48 8d 34 c1                  	leaq	(%rcx,%rax,8), %rsi
    221b: 48 c7 c1 ff ff ff ff         	movq	$-1, %rcx
    2222: b8 00 00 00 00               	movl	$0, %eax
    2227: 48 89 f7                     	movq	%rsi, %rdi
    222a: f2 ae                        	repne		scasb	%es:(%rdi), %al
    222c: 48 f7 d1                     	notq	%rcx
    222f: 48 83 e9 01                  	subq	$1, %rcx
    2233: 83 f9 76                     	cmpl	$118, %ecx
    2236: 0f 8f ab 00 00 00            	jg	0x22e7 <read_line+0x101>
    223c: 83 e9 01                     	subl	$1, %ecx
    223f: 48 63 c9                     	movslq	%ecx, %rcx
    2242: 48 63 fa                     	movslq	%edx, %rdi
    2245: 48 89 f8                     	movq	%rdi, %rax
    2248: 48 c1 e0 04                  	shlq	$4, %rax
    224c: 48 29 f8                     	subq	%rdi, %rax
    224f: 48 8d 3d 0a 63 00 00         	leaq	25354(%rip), %rdi       # 0x8560 <input_strings>
    2256: 48 8d 04 c7                  	leaq	(%rdi,%rax,8), %rax
    225a: c6 04 08 00                  	movb	$0, (%rax,%rcx)
    225e: 83 c2 01                     	addl	$1, %edx
    2261: 89 15 e5 62 00 00            	movl	%edx, 25317(%rip)       # 0x854c <num_input_strings>
    2267: 48 89 f0                     	movq	%rsi, %rax
    226a: 48 83 c4 08                  	addq	$8, %rsp
    226e: c3                           	retq
    226f: 48 8b 05 ba 62 00 00         	movq	25274(%rip), %rax       # 0x8530 <stdin@@GLIBC_2.2.5>
    2276: 48 39 05 d3 62 00 00         	cmpq	%rax, 25299(%rip)       # 0x8550 <infile>
    227d: 74 1b                        	je	0x229a <read_line+0xb4>
    227f: 48 8d 3d 00 25 00 00         	leaq	9472(%rip), %rdi        # 0x4786 <array.3497+0x386>
    2286: e8 95 ef ff ff               	callq	0x1220 <.plt.sec>
    228b: 48 85 c0                     	testq	%rax, %rax
    228e: 74 20                        	je	0x22b0 <read_line+0xca>
    2290: bf 00 00 00 00               	movl	$0, %edi
    2295: e8 f6 f0 ff ff               	callq	0x1390 <.plt.sec+0x170>
    229a: 48 8d 3d c7 24 00 00         	leaq	9415(%rip), %rdi        # 0x4768 <array.3497+0x368>
    22a1: e8 ca ef ff ff               	callq	0x1270 <.plt.sec+0x50>
    22a6: bf 08 00 00 00               	movl	$8, %edi
    22ab: e8 e0 f0 ff ff               	callq	0x1390 <.plt.sec+0x170>
    22b0: 48 8b 05 79 62 00 00         	movq	25209(%rip), %rax       # 0x8530 <stdin@@GLIBC_2.2.5>
    22b7: 48 89 05 92 62 00 00         	movq	%rax, 25234(%rip)       # 0x8550 <infile>
    22be: b8 00 00 00 00               	movl	$0, %eax
    22c3: e8 9e fc ff ff               	callq	0x1f66 <skip>
    22c8: 48 85 c0                     	testq	%rax, %rax
    22cb: 0f 85 2c ff ff ff            	jne	0x21fd <read_line+0x17>
    22d1: 48 8d 3d 90 24 00 00         	leaq	9360(%rip), %rdi        # 0x4768 <array.3497+0x368>
    22d8: e8 93 ef ff ff               	callq	0x1270 <.plt.sec+0x50>
    22dd: bf 00 00 00 00               	movl	$0, %edi
    22e2: e8 a9 f0 ff ff               	callq	0x1390 <.plt.sec+0x170>
    22e7: 48 8d 3d a3 24 00 00         	leaq	9379(%rip), %rdi        # 0x4791 <array.3497+0x391>
    22ee: e8 7d ef ff ff               	callq	0x1270 <.plt.sec+0x50>
    22f3: 8b 05 53 62 00 00            	movl	25171(%rip), %eax       # 0x854c <num_input_strings>
    22f9: 8d 50 01                     	leal	1(%rax), %edx
    22fc: 89 15 4a 62 00 00            	movl	%edx, 25162(%rip)       # 0x854c <num_input_strings>
    2302: 48 98                        	cltq
    2304: 48 6b c0 78                  	imulq	$120, %rax, %rax
    2308: 48 8d 15 51 62 00 00         	leaq	25169(%rip), %rdx       # 0x8560 <input_strings>
    230f: 48 be 2a 2a 2a 74 72 75 6e 63	movabsq	$7164793191628679722, %rsi # imm = 0x636E7572742A2A2A
    2319: 48 bf 61 74 65 64 2a 2a 2a 00	movabsq	$11868310583211105, %rdi # imm = 0x2A2A2A64657461
    2323: 48 89 34 02                  	movq	%rsi, (%rdx,%rax)
    2327: 48 89 7c 02 08               	movq	%rdi, 8(%rdx,%rax)
    232c: e8 ea fd ff ff               	callq	0x211b <explode_bomb>

0000000000002331 <phase_defused>:
    2331: f3 0f 1e fa                  	endbr64
    2335: 53                           	pushq	%rbx
    2336: 48 89 fb                     	movq	%rdi, %rbx
    2339: c7 07 00 00 00 00            	movl	$0, (%rdi)
    233f: 48 89 fe                     	movq	%rdi, %rsi
    2342: bf 01 00 00 00               	movl	$1, %edi
    2347: e8 65 fc ff ff               	callq	0x1fb1 <send_msg>
    234c: 83 3b 01                     	cmpl	$1, (%rbx)
    234f: 75 0b                        	jne	0x235c <phase_defused+0x2b>
    2351: 83 3d f4 61 00 00 06         	cmpl	$6, 25076(%rip)         # 0x854c <num_input_strings>
    2358: 74 22                        	je	0x237c <phase_defused+0x4b>
    235a: 5b                           	popq	%rbx
    235b: c3                           	retq
    235c: 48 8d 35 7d 21 00 00         	leaq	8573(%rip), %rsi        # 0x44e0 <array.3497+0xe0>
    2363: bf 01 00 00 00               	movl	$1, %edi
    2368: b8 00 00 00 00               	movl	$0, %eax
    236d: e8 ee ef ff ff               	callq	0x1360 <.plt.sec+0x140>
    2372: bf 08 00 00 00               	movl	$8, %edi
    2377: e8 14 f0 ff ff               	callq	0x1390 <.plt.sec+0x170>
    237c: e8 f7 f2 ff ff               	callq	0x1678 <genshin>
    2381: 85 c0                        	testl	%eax, %eax
    2383: 75 26                        	jne	0x23ab <phase_defused+0x7a>
    2385: 48 8d 3d 7c 22 00 00         	leaq	8828(%rip), %rdi        # 0x4608 <array.3497+0x208>
    238c: e8 df ee ff ff               	callq	0x1270 <.plt.sec+0x50>
    2391: 48 8d 3d b0 22 00 00         	leaq	8880(%rip), %rdi        # 0x4648 <array.3497+0x248>
    2398: e8 d3 ee ff ff               	callq	0x1270 <.plt.sec+0x50>
    239d: 48 8d 3d ec 22 00 00         	leaq	8940(%rip), %rdi        # 0x4690 <array.3497+0x290>
    23a4: e8 c7 ee ff ff               	callq	0x1270 <.plt.sec+0x50>
    23a9: eb af                        	jmp	0x235a <phase_defused+0x29>
    23ab: e8 55 f3 ff ff               	callq	0x1705 <qidong>
    23b0: 85 c0                        	testl	%eax, %eax
    23b2: 74 24                        	je	0x23d8 <phase_defused+0xa7>
    23b4: 48 8d 3d 95 21 00 00         	leaq	8597(%rip), %rdi        # 0x4550 <array.3497+0x150>
    23bb: e8 b0 ee ff ff               	callq	0x1270 <.plt.sec+0x50>
    23c0: 48 8d 3d b1 21 00 00         	leaq	8625(%rip), %rdi        # 0x4578 <array.3497+0x178>
    23c7: e8 a4 ee ff ff               	callq	0x1270 <.plt.sec+0x50>
    23cc: b8 00 00 00 00               	movl	$0, %eax
    23d1: e8 90 f8 ff ff               	callq	0x1c66 <secret_phase>
    23d6: eb ad                        	jmp	0x2385 <phase_defused+0x54>
    23d8: 48 8d 3d d9 21 00 00         	leaq	8665(%rip), %rdi        # 0x45b8 <array.3497+0x1b8>
    23df: e8 8c ee ff ff               	callq	0x1270 <.plt.sec+0x50>
    23e4: eb 9f                        	jmp	0x2385 <phase_defused+0x54>

00000000000023e6 <rio_readinitb>:
    23e6: 89 37                        	movl	%esi, (%rdi)
    23e8: c7 47 04 00 00 00 00         	movl	$0, 4(%rdi)
    23ef: 48 8d 47 10                  	leaq	16(%rdi), %rax
    23f3: 48 89 47 08                  	movq	%rax, 8(%rdi)
    23f7: c3                           	retq

00000000000023f8 <sigalrm_handler>:
    23f8: f3 0f 1e fa                  	endbr64
    23fc: 50                           	pushq	%rax
    23fd: 58                           	popq	%rax
    23fe: 48 83 ec 08                  	subq	$8, %rsp
    2402: b9 00 00 00 00               	movl	$0, %ecx
    2407: 48 8d 15 fa 23 00 00         	leaq	9210(%rip), %rdx        # 0x4808 <array.3497+0x408>
    240e: be 01 00 00 00               	movl	$1, %esi
    2413: 48 8b 3d 26 61 00 00         	movq	24870(%rip), %rdi       # 0x8540 <stderr@@GLIBC_2.2.5>
    241a: b8 00 00 00 00               	movl	$0, %eax
    241f: e8 8c ef ff ff               	callq	0x13b0 <.plt.sec+0x190>
    2424: bf 01 00 00 00               	movl	$1, %edi
    2429: e8 62 ef ff ff               	callq	0x1390 <.plt.sec+0x170>

000000000000242e <rio_writen>:
    242e: 41 55                        	pushq	%r13
    2430: 41 54                        	pushq	%r12
    2432: 55                           	pushq	%rbp
    2433: 53                           	pushq	%rbx
    2434: 48 83 ec 08                  	subq	$8, %rsp
    2438: 41 89 fc                     	movl	%edi, %r12d
    243b: 48 89 f5                     	movq	%rsi, %rbp
    243e: 49 89 d5                     	movq	%rdx, %r13
    2441: 48 89 d3                     	movq	%rdx, %rbx
    2444: eb 06                        	jmp	0x244c <rio_writen+0x1e>
    2446: 48 29 c3                     	subq	%rax, %rbx
    2449: 48 01 c5                     	addq	%rax, %rbp
    244c: 48 85 db                     	testq	%rbx, %rbx
    244f: 74 24                        	je	0x2475 <rio_writen+0x47>
    2451: 48 89 da                     	movq	%rbx, %rdx
    2454: 48 89 ee                     	movq	%rbp, %rsi
    2457: 44 89 e7                     	movl	%r12d, %edi
    245a: e8 21 ee ff ff               	callq	0x1280 <.plt.sec+0x60>
    245f: 48 85 c0                     	testq	%rax, %rax
    2462: 7f e2                        	jg	0x2446 <rio_writen+0x18>
    2464: e8 e7 ed ff ff               	callq	0x1250 <.plt.sec+0x30>
    2469: 83 38 04                     	cmpl	$4, (%rax)
    246c: 75 15                        	jne	0x2483 <rio_writen+0x55>
    246e: b8 00 00 00 00               	movl	$0, %eax
    2473: eb d1                        	jmp	0x2446 <rio_writen+0x18>
    2475: 4c 89 e8                     	movq	%r13, %rax
    2478: 48 83 c4 08                  	addq	$8, %rsp
    247c: 5b                           	popq	%rbx
    247d: 5d                           	popq	%rbp
    247e: 41 5c                        	popq	%r12
    2480: 41 5d                        	popq	%r13
    2482: c3                           	retq
    2483: 48 c7 c0 ff ff ff ff         	movq	$-1, %rax
    248a: eb ec                        	jmp	0x2478 <rio_writen+0x4a>

000000000000248c <rio_read>:
    248c: 41 55                        	pushq	%r13
    248e: 41 54                        	pushq	%r12
    2490: 55                           	pushq	%rbp
    2491: 53                           	pushq	%rbx
    2492: 48 83 ec 08                  	subq	$8, %rsp
    2496: 48 89 fb                     	movq	%rdi, %rbx
    2499: 49 89 f5                     	movq	%rsi, %r13
    249c: 49 89 d4                     	movq	%rdx, %r12
    249f: eb 17                        	jmp	0x24b8 <rio_read+0x2c>
    24a1: e8 aa ed ff ff               	callq	0x1250 <.plt.sec+0x30>
    24a6: 83 38 04                     	cmpl	$4, (%rax)
    24a9: 74 0d                        	je	0x24b8 <rio_read+0x2c>
    24ab: 48 c7 c0 ff ff ff ff         	movq	$-1, %rax
    24b2: eb 54                        	jmp	0x2508 <rio_read+0x7c>
    24b4: 48 89 6b 08                  	movq	%rbp, 8(%rbx)
    24b8: 8b 6b 04                     	movl	4(%rbx), %ebp
    24bb: 85 ed                        	testl	%ebp, %ebp
    24bd: 7f 23                        	jg	0x24e2 <rio_read+0x56>
    24bf: 48 8d 6b 10                  	leaq	16(%rbx), %rbp
    24c3: 8b 3b                        	movl	(%rbx), %edi
    24c5: ba 00 20 00 00               	movl	$8192, %edx             # imm = 0x2000
    24ca: 48 89 ee                     	movq	%rbp, %rsi
    24cd: e8 ee ed ff ff               	callq	0x12c0 <.plt.sec+0xa0>
    24d2: 89 43 04                     	movl	%eax, 4(%rbx)
    24d5: 85 c0                        	testl	%eax, %eax
    24d7: 78 c8                        	js	0x24a1 <rio_read+0x15>
    24d9: 75 d9                        	jne	0x24b4 <rio_read+0x28>
    24db: b8 00 00 00 00               	movl	$0, %eax
    24e0: eb 26                        	jmp	0x2508 <rio_read+0x7c>
    24e2: 89 e8                        	movl	%ebp, %eax
    24e4: 4c 39 e0                     	cmpq	%r12, %rax
    24e7: 72 03                        	jb	0x24ec <rio_read+0x60>
    24e9: 44 89 e5                     	movl	%r12d, %ebp
    24ec: 4c 63 e5                     	movslq	%ebp, %r12
    24ef: 48 8b 73 08                  	movq	8(%rbx), %rsi
    24f3: 4c 89 e2                     	movq	%r12, %rdx
    24f6: 4c 89 ef                     	movq	%r13, %rdi
    24f9: e8 22 ee ff ff               	callq	0x1320 <.plt.sec+0x100>
    24fe: 4c 01 63 08                  	addq	%r12, 8(%rbx)
    2502: 29 6b 04                     	subl	%ebp, 4(%rbx)
    2505: 4c 89 e0                     	movq	%r12, %rax
    2508: 48 83 c4 08                  	addq	$8, %rsp
    250c: 5b                           	popq	%rbx
    250d: 5d                           	popq	%rbp
    250e: 41 5c                        	popq	%r12
    2510: 41 5d                        	popq	%r13
    2512: c3                           	retq

0000000000002513 <rio_readlineb>:
    2513: 41 55                        	pushq	%r13
    2515: 41 54                        	pushq	%r12
    2517: 55                           	pushq	%rbp
    2518: 53                           	pushq	%rbx
    2519: 48 83 ec 18                  	subq	$24, %rsp
    251d: 49 89 fd                     	movq	%rdi, %r13
    2520: 48 89 f5                     	movq	%rsi, %rbp
    2523: 49 89 d4                     	movq	%rdx, %r12
    2526: 64 48 8b 04 25 28 00 00 00   	movq	%fs:40, %rax
    252f: 48 89 44 24 08               	movq	%rax, 8(%rsp)
    2534: 31 c0                        	xorl	%eax, %eax
    2536: bb 01 00 00 00               	movl	$1, %ebx
    253b: eb 18                        	jmp	0x2555 <rio_readlineb+0x42>
    253d: 85 c0                        	testl	%eax, %eax
    253f: 75 65                        	jne	0x25a6 <rio_readlineb+0x93>
    2541: 48 83 fb 01                  	cmpq	$1, %rbx
    2545: 75 3d                        	jne	0x2584 <rio_readlineb+0x71>
    2547: b8 00 00 00 00               	movl	$0, %eax
    254c: eb 3d                        	jmp	0x258b <rio_readlineb+0x78>
    254e: 48 83 c3 01                  	addq	$1, %rbx
    2552: 48 89 d5                     	movq	%rdx, %rbp
    2555: 4c 39 e3                     	cmpq	%r12, %rbx
    2558: 73 2a                        	jae	0x2584 <rio_readlineb+0x71>
    255a: 48 8d 74 24 07               	leaq	7(%rsp), %rsi
    255f: ba 01 00 00 00               	movl	$1, %edx
    2564: 4c 89 ef                     	movq	%r13, %rdi
    2567: e8 20 ff ff ff               	callq	0x248c <rio_read>
    256c: 83 f8 01                     	cmpl	$1, %eax
    256f: 75 cc                        	jne	0x253d <rio_readlineb+0x2a>
    2571: 48 8d 55 01                  	leaq	1(%rbp), %rdx
    2575: 0f b6 44 24 07               	movzbl	7(%rsp), %eax
    257a: 88 45 00                     	movb	%al, (%rbp)
    257d: 3c 0a                        	cmpb	$10, %al
    257f: 75 cd                        	jne	0x254e <rio_readlineb+0x3b>
    2581: 48 89 d5                     	movq	%rdx, %rbp
    2584: c6 45 00 00                  	movb	$0, (%rbp)
    2588: 48 89 d8                     	movq	%rbx, %rax
    258b: 48 8b 4c 24 08               	movq	8(%rsp), %rcx
    2590: 64 48 33 0c 25 28 00 00 00   	xorq	%fs:40, %rcx
    2599: 75 14                        	jne	0x25af <rio_readlineb+0x9c>
    259b: 48 83 c4 18                  	addq	$24, %rsp
    259f: 5b                           	popq	%rbx
    25a0: 5d                           	popq	%rbp
    25a1: 41 5c                        	popq	%r12
    25a3: 41 5d                        	popq	%r13
    25a5: c3                           	retq
    25a6: 48 c7 c0 ff ff ff ff         	movq	$-1, %rax
    25ad: eb dc                        	jmp	0x258b <rio_readlineb+0x78>
    25af: e8 dc ec ff ff               	callq	0x1290 <.plt.sec+0x70>

00000000000025b4 <urlencode>:
    25b4: 41 54                        	pushq	%r12
    25b6: 55                           	pushq	%rbp
    25b7: 53                           	pushq	%rbx
    25b8: 48 83 ec 10                  	subq	$16, %rsp
    25bc: 48 89 fb                     	movq	%rdi, %rbx
    25bf: 48 89 f5                     	movq	%rsi, %rbp
    25c2: 64 48 8b 04 25 28 00 00 00   	movq	%fs:40, %rax
    25cb: 48 89 44 24 08               	movq	%rax, 8(%rsp)
    25d0: 31 c0                        	xorl	%eax, %eax
    25d2: 48 c7 c1 ff ff ff ff         	movq	$-1, %rcx
    25d9: f2 ae                        	repne		scasb	%es:(%rdi), %al
    25db: 48 f7 d1                     	notq	%rcx
    25de: 8d 41 ff                     	leal	-1(%rcx), %eax
    25e1: eb 0f                        	jmp	0x25f2 <urlencode+0x3e>
    25e3: 44 88 45 00                  	movb	%r8b, (%rbp)
    25e7: 48 8d 6d 01                  	leaq	1(%rbp), %rbp
    25eb: 48 83 c3 01                  	addq	$1, %rbx
    25ef: 44 89 e0                     	movl	%r12d, %eax
    25f2: 44 8d 60 ff                  	leal	-1(%rax), %r12d
    25f6: 85 c0                        	testl	%eax, %eax
    25f8: 0f 84 a8 00 00 00            	je	0x26a6 <urlencode+0xf2>
    25fe: 44 0f b6 03                  	movzbl	(%rbx), %r8d
    2602: 41 80 f8 2a                  	cmpb	$42, %r8b
    2606: 0f 94 c2                     	sete	%dl
    2609: 41 80 f8 2d                  	cmpb	$45, %r8b
    260d: 0f 94 c0                     	sete	%al
    2610: 08 c2                        	orb	%al, %dl
    2612: 75 cf                        	jne	0x25e3 <urlencode+0x2f>
    2614: 41 80 f8 2e                  	cmpb	$46, %r8b
    2618: 74 c9                        	je	0x25e3 <urlencode+0x2f>
    261a: 41 80 f8 5f                  	cmpb	$95, %r8b
    261e: 74 c3                        	je	0x25e3 <urlencode+0x2f>
    2620: 41 8d 40 d0                  	leal	-48(%r8), %eax
    2624: 3c 09                        	cmpb	$9, %al
    2626: 76 bb                        	jbe	0x25e3 <urlencode+0x2f>
    2628: 41 8d 40 bf                  	leal	-65(%r8), %eax
    262c: 3c 19                        	cmpb	$25, %al
    262e: 76 b3                        	jbe	0x25e3 <urlencode+0x2f>
    2630: 41 8d 40 9f                  	leal	-97(%r8), %eax
    2634: 3c 19                        	cmpb	$25, %al
    2636: 76 ab                        	jbe	0x25e3 <urlencode+0x2f>
    2638: 41 80 f8 20                  	cmpb	$32, %r8b
    263c: 74 56                        	je	0x2694 <urlencode+0xe0>
    263e: 41 8d 40 e0                  	leal	-32(%r8), %eax
    2642: 3c 5f                        	cmpb	$95, %al
    2644: 0f 96 c2                     	setbe	%dl
    2647: 41 80 f8 09                  	cmpb	$9, %r8b
    264b: 0f 94 c0                     	sete	%al
    264e: 08 c2                        	orb	%al, %dl
    2650: 74 4f                        	je	0x26a1 <urlencode+0xed>
    2652: 48 89 e7                     	movq	%rsp, %rdi
    2655: 45 0f b6 c0                  	movzbl	%r8b, %r8d
    2659: 48 8d 0d 5d 22 00 00         	leaq	8797(%rip), %rcx        # 0x48bd <array.3497+0x4bd>
    2660: ba 08 00 00 00               	movl	$8, %edx
    2665: be 01 00 00 00               	movl	$1, %esi
    266a: b8 00 00 00 00               	movl	$0, %eax
    266f: e8 6c ed ff ff               	callq	0x13e0 <.plt.sec+0x1c0>
    2674: 0f b6 04 24                  	movzbl	(%rsp), %eax
    2678: 88 45 00                     	movb	%al, (%rbp)
    267b: 0f b6 44 24 01               	movzbl	1(%rsp), %eax
    2680: 88 45 01                     	movb	%al, 1(%rbp)
    2683: 0f b6 44 24 02               	movzbl	2(%rsp), %eax
    2688: 88 45 02                     	movb	%al, 2(%rbp)
    268b: 48 8d 6d 03                  	leaq	3(%rbp), %rbp
    268f: e9 57 ff ff ff               	jmp	0x25eb <urlencode+0x37>
    2694: c6 45 00 2b                  	movb	$43, (%rbp)
    2698: 48 8d 6d 01                  	leaq	1(%rbp), %rbp
    269c: e9 4a ff ff ff               	jmp	0x25eb <urlencode+0x37>
    26a1: b8 ff ff ff ff               	movl	$4294967295, %eax       # imm = 0xFFFFFFFF
    26a6: 48 8b 74 24 08               	movq	8(%rsp), %rsi
    26ab: 64 48 33 34 25 28 00 00 00   	xorq	%fs:40, %rsi
    26b4: 75 09                        	jne	0x26bf <urlencode+0x10b>
    26b6: 48 83 c4 10                  	addq	$16, %rsp
    26ba: 5b                           	popq	%rbx
    26bb: 5d                           	popq	%rbp
    26bc: 41 5c                        	popq	%r12
    26be: c3                           	retq
    26bf: e8 cc eb ff ff               	callq	0x1290 <.plt.sec+0x70>

00000000000026c4 <submitr>:
    26c4: f3 0f 1e fa                  	endbr64
    26c8: 41 57                        	pushq	%r15
    26ca: 41 56                        	pushq	%r14
    26cc: 41 55                        	pushq	%r13
    26ce: 41 54                        	pushq	%r12
    26d0: 55                           	pushq	%rbp
    26d1: 53                           	pushq	%rbx
    26d2: 4c 8d 9c 24 00 60 ff ff      	leaq	-40960(%rsp), %r11
    26da: 48 81 ec 00 10 00 00         	subq	$4096, %rsp             # imm = 0x1000
    26e1: 48 83 0c 24 00               	orq	$0, (%rsp)
    26e6: 4c 39 dc                     	cmpq	%r11, %rsp
    26e9: 75 ef                        	jne	0x26da <submitr+0x16>
    26eb: 48 83 ec 68                  	subq	$104, %rsp
    26ef: 49 89 fc                     	movq	%rdi, %r12
    26f2: 89 74 24 1c                  	movl	%esi, 28(%rsp)
    26f6: 48 89 54 24 08               	movq	%rdx, 8(%rsp)
    26fb: 49 89 cd                     	movq	%rcx, %r13
    26fe: 4c 89 44 24 10               	movq	%r8, 16(%rsp)
    2703: 4d 89 ce                     	movq	%r9, %r14
    2706: 48 8b ac 24 a0 a0 00 00      	movq	41120(%rsp), %rbp
    270e: 64 48 8b 04 25 28 00 00 00   	movq	%fs:40, %rax
    2717: 48 89 84 24 58 a0 00 00      	movq	%rax, 41048(%rsp)
    271f: 31 c0                        	xorl	%eax, %eax
    2721: c7 44 24 2c 00 00 00 00      	movl	$0, 44(%rsp)
    2729: ba 00 00 00 00               	movl	$0, %edx
    272e: be 01 00 00 00               	movl	$1, %esi
    2733: bf 02 00 00 00               	movl	$2, %edi
    2738: e8 b3 ec ff ff               	callq	0x13f0 <.plt.sec+0x1d0>
    273d: 85 c0                        	testl	%eax, %eax
    273f: 0f 88 a5 02 00 00            	js	0x29ea <submitr+0x326>
    2745: 89 c3                        	movl	%eax, %ebx
    2747: 4c 89 e7                     	movq	%r12, %rdi
    274a: e8 a1 eb ff ff               	callq	0x12f0 <.plt.sec+0xd0>
    274f: 48 85 c0                     	testq	%rax, %rax
    2752: 0f 84 de 02 00 00            	je	0x2a36 <submitr+0x372>
    2758: 4c 8d 7c 24 30               	leaq	48(%rsp), %r15
    275d: 48 c7 44 24 30 00 00 00 00   	movq	$0, 48(%rsp)
    2766: 48 c7 44 24 38 00 00 00 00   	movq	$0, 56(%rsp)
    276f: 66 c7 44 24 30 02 00         	movw	$2, 48(%rsp)
    2776: 48 63 50 14                  	movslq	20(%rax), %rdx
    277a: 48 8b 40 18                  	movq	24(%rax), %rax
    277e: 48 8b 30                     	movq	(%rax), %rsi
    2781: 48 8d 7c 24 34               	leaq	52(%rsp), %rdi
    2786: b9 0c 00 00 00               	movl	$12, %ecx
    278b: e8 70 eb ff ff               	callq	0x1300 <.plt.sec+0xe0>
    2790: 0f b7 74 24 1c               	movzwl	28(%rsp), %esi
    2795: 66 c1 c6 08                  	rolw	$8, %si
    2799: 66 89 74 24 32               	movw	%si, 50(%rsp)
    279e: ba 10 00 00 00               	movl	$16, %edx
    27a3: 4c 89 fe                     	movq	%r15, %rsi
    27a6: 89 df                        	movl	%ebx, %edi
    27a8: e8 f3 eb ff ff               	callq	0x13a0 <.plt.sec+0x180>
    27ad: 85 c0                        	testl	%eax, %eax
    27af: 0f 88 f7 02 00 00            	js	0x2aac <submitr+0x3e8>
    27b5: 48 c7 c6 ff ff ff ff         	movq	$-1, %rsi
    27bc: b8 00 00 00 00               	movl	$0, %eax
    27c1: 48 89 f1                     	movq	%rsi, %rcx
    27c4: 4c 89 f7                     	movq	%r14, %rdi
    27c7: f2 ae                        	repne		scasb	%es:(%rdi), %al
    27c9: 48 89 ca                     	movq	%rcx, %rdx
    27cc: 48 f7 d2                     	notq	%rdx
    27cf: 48 89 f1                     	movq	%rsi, %rcx
    27d2: 48 8b 7c 24 08               	movq	8(%rsp), %rdi
    27d7: f2 ae                        	repne		scasb	%es:(%rdi), %al
    27d9: 48 f7 d1                     	notq	%rcx
    27dc: 49 89 c8                     	movq	%rcx, %r8
    27df: 48 89 f1                     	movq	%rsi, %rcx
    27e2: 4c 89 ef                     	movq	%r13, %rdi
    27e5: f2 ae                        	repne		scasb	%es:(%rdi), %al
    27e7: 48 f7 d1                     	notq	%rcx
    27ea: 4d 8d 44 08 fe               	leaq	-2(%r8,%rcx), %r8
    27ef: 48 89 f1                     	movq	%rsi, %rcx
    27f2: 48 8b 7c 24 10               	movq	16(%rsp), %rdi
    27f7: f2 ae                        	repne		scasb	%es:(%rdi), %al
    27f9: 48 89 c8                     	movq	%rcx, %rax
    27fc: 48 f7 d0                     	notq	%rax
    27ff: 49 8d 4c 00 ff               	leaq	-1(%r8,%rax), %rcx
    2804: 48 8d 44 52 fd               	leaq	-3(%rdx,%rdx,2), %rax
    2809: 48 8d 84 01 80 00 00 00      	leaq	128(%rcx,%rax), %rax
    2811: 48 3d 00 20 00 00            	cmpq	$8192, %rax             # imm = 0x2000
    2817: 0f 87 f7 02 00 00            	ja	0x2b14 <submitr+0x450>
    281d: 48 8d b4 24 50 40 00 00      	leaq	16464(%rsp), %rsi
    2825: b9 00 04 00 00               	movl	$1024, %ecx             # imm = 0x400
    282a: b8 00 00 00 00               	movl	$0, %eax
    282f: 48 89 f7                     	movq	%rsi, %rdi
    2832: f3 48 ab                     	rep		stosq	%rax, %es:(%rdi)
    2835: 4c 89 f7                     	movq	%r14, %rdi
    2838: e8 77 fd ff ff               	callq	0x25b4 <urlencode>
    283d: 85 c0                        	testl	%eax, %eax
    283f: 0f 88 42 03 00 00            	js	0x2b87 <submitr+0x4c3>
    2845: 4c 8d bc 24 50 20 00 00      	leaq	8272(%rsp), %r15
    284d: 48 83 ec 08                  	subq	$8, %rsp
    2851: 41 54                        	pushq	%r12
    2853: 48 8d 84 24 60 40 00 00      	leaq	16480(%rsp), %rax
    285b: 50                           	pushq	%rax
    285c: 41 55                        	pushq	%r13
    285e: 4c 8b 4c 24 30               	movq	48(%rsp), %r9
    2863: 4c 8b 44 24 28               	movq	40(%rsp), %r8
    2868: 48 8d 0d c1 1f 00 00         	leaq	8129(%rip), %rcx        # 0x4830 <array.3497+0x430>
    286f: ba 00 20 00 00               	movl	$8192, %edx             # imm = 0x2000
    2874: be 01 00 00 00               	movl	$1, %esi
    2879: 4c 89 ff                     	movq	%r15, %rdi
    287c: b8 00 00 00 00               	movl	$0, %eax
    2881: e8 5a eb ff ff               	callq	0x13e0 <.plt.sec+0x1c0>
    2886: 48 c7 c1 ff ff ff ff         	movq	$-1, %rcx
    288d: b8 00 00 00 00               	movl	$0, %eax
    2892: 4c 89 ff                     	movq	%r15, %rdi
    2895: f2 ae                        	repne		scasb	%es:(%rdi), %al
    2897: 48 f7 d1                     	notq	%rcx
    289a: 48 8d 51 ff                  	leaq	-1(%rcx), %rdx
    289e: 48 83 c4 20                  	addq	$32, %rsp
    28a2: 4c 89 fe                     	movq	%r15, %rsi
    28a5: 89 df                        	movl	%ebx, %edi
    28a7: e8 82 fb ff ff               	callq	0x242e <rio_writen>
    28ac: 48 85 c0                     	testq	%rax, %rax
    28af: 0f 88 5d 03 00 00            	js	0x2c12 <submitr+0x54e>
    28b5: 4c 8d 64 24 40               	leaq	64(%rsp), %r12
    28ba: 89 de                        	movl	%ebx, %esi
    28bc: 4c 89 e7                     	movq	%r12, %rdi
    28bf: e8 22 fb ff ff               	callq	0x23e6 <rio_readinitb>
    28c4: 48 8d b4 24 50 20 00 00      	leaq	8272(%rsp), %rsi
    28cc: ba 00 20 00 00               	movl	$8192, %edx             # imm = 0x2000
    28d1: 4c 89 e7                     	movq	%r12, %rdi
    28d4: e8 3a fc ff ff               	callq	0x2513 <rio_readlineb>
    28d9: 48 85 c0                     	testq	%rax, %rax
    28dc: 0f 8e 9c 03 00 00            	jle	0x2c7e <submitr+0x5ba>
    28e2: 48 8d 4c 24 2c               	leaq	44(%rsp), %rcx
    28e7: 48 8d 94 24 50 60 00 00      	leaq	24656(%rsp), %rdx
    28ef: 48 8d bc 24 50 20 00 00      	leaq	8272(%rsp), %rdi
    28f7: 4c 8d 84 24 50 80 00 00      	leaq	32848(%rsp), %r8
    28ff: 48 8d 35 be 1f 00 00         	leaq	8126(%rip), %rsi        # 0x48c4 <array.3497+0x4c4>
    2906: b8 00 00 00 00               	movl	$0, %eax
    290b: e8 40 ea ff ff               	callq	0x1350 <.plt.sec+0x130>
    2910: 48 8d b4 24 50 20 00 00      	leaq	8272(%rsp), %rsi
    2918: b9 03 00 00 00               	movl	$3, %ecx
    291d: 48 8d 3d b7 1f 00 00         	leaq	8119(%rip), %rdi        # 0x48db <array.3497+0x4db>
    2924: f3 a6                        	rep		cmpsb	%es:(%rdi), (%rsi)
    2926: 0f 97 c0                     	seta	%al
    2929: 1c 00                        	sbbb	$0, %al
    292b: 84 c0                        	testb	%al, %al
    292d: 0f 84 cb 03 00 00            	je	0x2cfe <submitr+0x63a>
    2933: 48 8d b4 24 50 20 00 00      	leaq	8272(%rsp), %rsi
    293b: 48 8d 7c 24 40               	leaq	64(%rsp), %rdi
    2940: ba 00 20 00 00               	movl	$8192, %edx             # imm = 0x2000
    2945: e8 c9 fb ff ff               	callq	0x2513 <rio_readlineb>
    294a: 48 85 c0                     	testq	%rax, %rax
    294d: 7f c1                        	jg	0x2910 <submitr+0x24c>
    294f: 48 b8 45 72 72 6f 72 3a 20 43	movabsq	$4836930262966366789, %rax # imm = 0x43203A726F727245
    2959: 48 ba 6c 69 65 6e 74 20 75 6e	movabsq	$7959303600887654764, %rdx # imm = 0x6E7520746E65696C
    2963: 48 89 45 00                  	movq	%rax, (%rbp)
    2967: 48 89 55 08                  	movq	%rdx, 8(%rbp)
    296b: 48 b8 61 62 6c 65 20 74 6f 20	movabsq	$2337214414117954145, %rax # imm = 0x206F7420656C6261
    2975: 48 ba 72 65 61 64 20 68 65 61	movabsq	$7018130082659132786, %rdx # imm = 0x6165682064616572
    297f: 48 89 45 10                  	movq	%rax, 16(%rbp)
    2983: 48 89 55 18                  	movq	%rdx, 24(%rbp)
    2987: 48 b8 64 65 72 73 20 66 72 6f	movabsq	$8030593375116879204, %rax # imm = 0x6F72662073726564
    2991: 48 ba 6d 20 41 75 74 6f 6c 61	movabsq	$7020108465137852525, %rdx # imm = 0x616C6F747541206D
    299b: 48 89 45 20                  	movq	%rax, 32(%rbp)
    299f: 48 89 55 28                  	movq	%rdx, 40(%rbp)
    29a3: 48 b8 62 20 73 65 72 76 65 72	movabsq	$8243124926671954018, %rax # imm = 0x7265767265732062
    29ad: 48 89 45 30                  	movq	%rax, 48(%rbp)
    29b1: c6 45 38 00                  	movb	$0, 56(%rbp)
    29b5: 89 df                        	movl	%ebx, %edi
    29b7: e8 f4 e8 ff ff               	callq	0x12b0 <.plt.sec+0x90>
    29bc: b8 ff ff ff ff               	movl	$4294967295, %eax       # imm = 0xFFFFFFFF
    29c1: 48 8b 9c 24 58 a0 00 00      	movq	41048(%rsp), %rbx
    29c9: 64 48 33 1c 25 28 00 00 00   	xorq	%fs:40, %rbx
    29d2: 0f 85 96 04 00 00            	jne	0x2e6e <submitr+0x7aa>
    29d8: 48 81 c4 68 a0 00 00         	addq	$41064, %rsp            # imm = 0xA068
    29df: 5b                           	popq	%rbx
    29e0: 5d                           	popq	%rbp
    29e1: 41 5c                        	popq	%r12
    29e3: 41 5d                        	popq	%r13
    29e5: 41 5e                        	popq	%r14
    29e7: 41 5f                        	popq	%r15
    29e9: c3                           	retq
    29ea: 48 b8 45 72 72 6f 72 3a 20 43	movabsq	$4836930262966366789, %rax # imm = 0x43203A726F727245
    29f4: 48 ba 6c 69 65 6e 74 20 75 6e	movabsq	$7959303600887654764, %rdx # imm = 0x6E7520746E65696C
    29fe: 48 89 45 00                  	movq	%rax, (%rbp)
    2a02: 48 89 55 08                  	movq	%rdx, 8(%rbp)
    2a06: 48 b8 61 62 6c 65 20 74 6f 20	movabsq	$2337214414117954145, %rax # imm = 0x206F7420656C6261
    2a10: 48 ba 63 72 65 61 74 65 20 73	movabsq	$8295742064141103715, %rdx # imm = 0x7320657461657263
    2a1a: 48 89 45 10                  	movq	%rax, 16(%rbp)
    2a1e: 48 89 55 18                  	movq	%rdx, 24(%rbp)
    2a22: c7 45 20 6f 63 6b 65         	movl	$1701536623, 32(%rbp)   # imm = 0x656B636F
    2a29: 66 c7 45 24 74 00            	movw	$116, 36(%rbp)
    2a2f: b8 ff ff ff ff               	movl	$4294967295, %eax       # imm = 0xFFFFFFFF
    2a34: eb 8b                        	jmp	0x29c1 <submitr+0x2fd>
    2a36: 48 b8 45 72 72 6f 72 3a 20 44	movabsq	$4908987857004294725, %rax # imm = 0x44203A726F727245
    2a40: 48 ba 4e 53 20 69 73 20 75 6e	movabsq	$7959303596504273742, %rdx # imm = 0x6E7520736920534E
    2a4a: 48 89 45 00                  	movq	%rax, (%rbp)
    2a4e: 48 89 55 08                  	movq	%rdx, 8(%rbp)
    2a52: 48 b8 61 62 6c 65 20 74 6f 20	movabsq	$2337214414117954145, %rax # imm = 0x206F7420656C6261
    2a5c: 48 ba 72 65 73 6f 6c 76 65 20	movabsq	$2334402189959849330, %rdx # imm = 0x2065766C6F736572
    2a66: 48 89 45 10                  	movq	%rax, 16(%rbp)
    2a6a: 48 89 55 18                  	movq	%rdx, 24(%rbp)
    2a6e: 48 b8 41 75 74 6f 6c 61 62 20	movabsq	$2333534675285603649, %rax # imm = 0x2062616C6F747541
    2a78: 48 ba 73 65 72 76 65 72 20 61	movabsq	$6998719601038222707, %rdx # imm = 0x6120726576726573
    2a82: 48 89 45 20                  	movq	%rax, 32(%rbp)
    2a86: 48 89 55 28                  	movq	%rdx, 40(%rbp)
    2a8a: c7 45 30 64 64 72 65         	movl	$1701995620, 48(%rbp)   # imm = 0x65726464
    2a91: 66 c7 45 34 73 73            	movw	$29555, 52(%rbp)        # imm = 0x7373
    2a97: c6 45 36 00                  	movb	$0, 54(%rbp)
    2a9b: 89 df                        	movl	%ebx, %edi
    2a9d: e8 0e e8 ff ff               	callq	0x12b0 <.plt.sec+0x90>
    2aa2: b8 ff ff ff ff               	movl	$4294967295, %eax       # imm = 0xFFFFFFFF
    2aa7: e9 15 ff ff ff               	jmp	0x29c1 <submitr+0x2fd>
    2aac: 48 b8 45 72 72 6f 72 3a 20 55	movabsq	$6133966955649069637, %rax # imm = 0x55203A726F727245
    2ab6: 48 ba 6e 61 62 6c 65 20 74 6f	movabsq	$8031079655490609518, %rdx # imm = 0x6F7420656C62616E
    2ac0: 48 89 45 00                  	movq	%rax, (%rbp)
    2ac4: 48 89 55 08                  	movq	%rdx, 8(%rbp)
    2ac8: 48 b8 20 63 6f 6e 6e 65 63 74	movabsq	$8386658456067597088, %rax # imm = 0x7463656E6E6F6320
    2ad2: 48 ba 20 74 6f 20 74 68 65 20	movabsq	$2334386829831140384, %rdx # imm = 0x20656874206F7420
    2adc: 48 89 45 10                  	movq	%rax, 16(%rbp)
    2ae0: 48 89 55 18                  	movq	%rdx, 24(%rbp)
    2ae4: 48 b8 41 75 74 6f 6c 61 62 20	movabsq	$2333534675285603649, %rax # imm = 0x2062616C6F747541
    2aee: 48 89 45 20                  	movq	%rax, 32(%rbp)
    2af2: c7 45 28 73 65 72 76         	movl	$1987208563, 40(%rbp)   # imm = 0x76726573
    2af9: 66 c7 45 2c 65 72            	movw	$29285, 44(%rbp)        # imm = 0x7265
    2aff: c6 45 2e 00                  	movb	$0, 46(%rbp)
    2b03: 89 df                        	movl	%ebx, %edi
    2b05: e8 a6 e7 ff ff               	callq	0x12b0 <.plt.sec+0x90>
    2b0a: b8 ff ff ff ff               	movl	$4294967295, %eax       # imm = 0xFFFFFFFF
    2b0f: e9 ad fe ff ff               	jmp	0x29c1 <submitr+0x2fd>
    2b14: 48 b8 45 72 72 6f 72 3a 20 52	movabsq	$5917794173535285829, %rax # imm = 0x52203A726F727245
    2b1e: 48 ba 65 73 75 6c 74 20 73 74	movabsq	$8391086215129297765, %rdx # imm = 0x747320746C757365
    2b28: 48 89 45 00                  	movq	%rax, (%rbp)
    2b2c: 48 89 55 08                  	movq	%rdx, 8(%rbp)
    2b30: 48 b8 72 69 6e 67 20 74 6f 6f	movabsq	$8029764343147948402, %rax # imm = 0x6F6F7420676E6972
    2b3a: 48 ba 20 6c 61 72 67 65 2e 20	movabsq	$2318902353117408288, %rdx # imm = 0x202E656772616C20
    2b44: 48 89 45 10                  	movq	%rax, 16(%rbp)
    2b48: 48 89 55 18                  	movq	%rdx, 24(%rbp)
    2b4c: 48 b8 49 6e 63 72 65 61 73 65	movabsq	$7310293708491157065, %rax # imm = 0x6573616572636E49
    2b56: 48 ba 20 53 55 42 4d 49 54 52	movabsq	$5932447205327983392, %rdx # imm = 0x5254494D42555320
    2b60: 48 89 45 20                  	movq	%rax, 32(%rbp)
    2b64: 48 89 55 28                  	movq	%rdx, 40(%rbp)
    2b68: 48 b8 5f 4d 41 58 42 55 46 00	movabsq	$19796991806623071, %rax # imm = 0x46554258414D5F
    2b72: 48 89 45 30                  	movq	%rax, 48(%rbp)
    2b76: 89 df                        	movl	%ebx, %edi
    2b78: e8 33 e7 ff ff               	callq	0x12b0 <.plt.sec+0x90>
    2b7d: b8 ff ff ff ff               	movl	$4294967295, %eax       # imm = 0xFFFFFFFF
    2b82: e9 3a fe ff ff               	jmp	0x29c1 <submitr+0x2fd>
    2b87: 48 b8 45 72 72 6f 72 3a 20 52	movabsq	$5917794173535285829, %rax # imm = 0x52203A726F727245
    2b91: 48 ba 65 73 75 6c 74 20 73 74	movabsq	$8391086215129297765, %rdx # imm = 0x747320746C757365
    2b9b: 48 89 45 00                  	movq	%rax, (%rbp)
    2b9f: 48 89 55 08                  	movq	%rdx, 8(%rbp)
    2ba3: 48 b8 72 69 6e 67 20 63 6f 6e	movabsq	$7957688057412348274, %rax # imm = 0x6E6F6320676E6972
    2bad: 48 ba 74 61 69 6e 73 20 61 6e	movabsq	$7953674097058734452, %rdx # imm = 0x6E6120736E696174
    2bb7: 48 89 45 10                  	movq	%rax, 16(%rbp)
    2bbb: 48 89 55 18                  	movq	%rdx, 24(%rbp)
    2bbf: 48 b8 20 69 6c 6c 65 67 61 6c	movabsq	$7809636914145552672, %rax # imm = 0x6C6167656C6C6920
    2bc9: 48 ba 20 6f 72 20 75 6e 70 72	movabsq	$8246212367049977632, %rdx # imm = 0x72706E7520726F20
    2bd3: 48 89 45 20                  	movq	%rax, 32(%rbp)
    2bd7: 48 89 55 28                  	movq	%rdx, 40(%rbp)
    2bdb: 48 b8 69 6e 74 61 62 6c 65 20	movabsq	$2334391151659085417, %rax # imm = 0x20656C6261746E69
    2be5: 48 ba 63 68 61 72 61 63 74 65	movabsq	$7310577365311121507, %rdx # imm = 0x6574636172616863
    2bef: 48 89 45 30                  	movq	%rax, 48(%rbp)
    2bf3: 48 89 55 38                  	movq	%rdx, 56(%rbp)
    2bf7: 66 c7 45 40 72 2e            	movw	$11890, 64(%rbp)        # imm = 0x2E72
    2bfd: c6 45 42 00                  	movb	$0, 66(%rbp)
    2c01: 89 df                        	movl	%ebx, %edi
    2c03: e8 a8 e6 ff ff               	callq	0x12b0 <.plt.sec+0x90>
    2c08: b8 ff ff ff ff               	movl	$4294967295, %eax       # imm = 0xFFFFFFFF
    2c0d: e9 af fd ff ff               	jmp	0x29c1 <submitr+0x2fd>
    2c12: 48 b8 45 72 72 6f 72 3a 20 43	movabsq	$4836930262966366789, %rax # imm = 0x43203A726F727245
    2c1c: 48 ba 6c 69 65 6e 74 20 75 6e	movabsq	$7959303600887654764, %rdx # imm = 0x6E7520746E65696C
    2c26: 48 89 45 00                  	movq	%rax, (%rbp)
    2c2a: 48 89 55 08                  	movq	%rdx, 8(%rbp)
    2c2e: 48 b8 61 62 6c 65 20 74 6f 20	movabsq	$2337214414117954145, %rax # imm = 0x206F7420656C6261
    2c38: 48 ba 77 72 69 74 65 20 74 6f	movabsq	$8031079655625290359, %rdx # imm = 0x6F74206574697277
    2c42: 48 89 45 10                  	movq	%rax, 16(%rbp)
    2c46: 48 89 55 18                  	movq	%rdx, 24(%rbp)
    2c4a: 48 b8 20 74 68 65 20 41 75 74	movabsq	$8391685088070890528, %rax # imm = 0x7475412065687420
    2c54: 48 ba 6f 6c 61 62 20 73 65 72	movabsq	$8243121275898260591, %rdx # imm = 0x7265732062616C6F
    2c5e: 48 89 45 20                  	movq	%rax, 32(%rbp)
    2c62: 48 89 55 28                  	movq	%rdx, 40(%rbp)
    2c66: c7 45 30 76 65 72 00         	movl	$7497078, 48(%rbp)      # imm = 0x726576
    2c6d: 89 df                        	movl	%ebx, %edi
    2c6f: e8 3c e6 ff ff               	callq	0x12b0 <.plt.sec+0x90>
    2c74: b8 ff ff ff ff               	movl	$4294967295, %eax       # imm = 0xFFFFFFFF
    2c79: e9 43 fd ff ff               	jmp	0x29c1 <submitr+0x2fd>
    2c7e: 48 b8 45 72 72 6f 72 3a 20 43	movabsq	$4836930262966366789, %rax # imm = 0x43203A726F727245
    2c88: 48 ba 6c 69 65 6e 74 20 75 6e	movabsq	$7959303600887654764, %rdx # imm = 0x6E7520746E65696C
    2c92: 48 89 45 00                  	movq	%rax, (%rbp)
    2c96: 48 89 55 08                  	movq	%rdx, 8(%rbp)
    2c9a: 48 b8 61 62 6c 65 20 74 6f 20	movabsq	$2337214414117954145, %rax # imm = 0x206F7420656C6261
    2ca4: 48 ba 72 65 61 64 20 66 69 72	movabsq	$8244232882187494770, %rdx # imm = 0x7269662064616572
    2cae: 48 89 45 10                  	movq	%rax, 16(%rbp)
    2cb2: 48 89 55 18                  	movq	%rdx, 24(%rbp)
    2cb6: 48 b8 73 74 20 68 65 61 64 65	movabsq	$7306071583668335731, %rax # imm = 0x6564616568207473
    2cc0: 48 ba 72 20 66 72 6f 6d 20 41	movabsq	$4692871137148149874, %rdx # imm = 0x41206D6F72662072
    2cca: 48 89 45 20                  	movq	%rax, 32(%rbp)
    2cce: 48 89 55 28                  	movq	%rdx, 40(%rbp)
    2cd2: 48 b8 75 74 6f 6c 61 62 20 73	movabsq	$8295738684187047029, %rax # imm = 0x732062616C6F7475
    2cdc: 48 89 45 30                  	movq	%rax, 48(%rbp)
    2ce0: c7 45 38 65 72 76 65         	movl	$1702261349, 56(%rbp)   # imm = 0x65767265
    2ce7: 66 c7 45 3c 72 00            	movw	$114, 60(%rbp)
    2ced: 89 df                        	movl	%ebx, %edi
    2cef: e8 bc e5 ff ff               	callq	0x12b0 <.plt.sec+0x90>
    2cf4: b8 ff ff ff ff               	movl	$4294967295, %eax       # imm = 0xFFFFFFFF
    2cf9: e9 c3 fc ff ff               	jmp	0x29c1 <submitr+0x2fd>
    2cfe: 48 8d b4 24 50 20 00 00      	leaq	8272(%rsp), %rsi
    2d06: 48 8d 7c 24 40               	leaq	64(%rsp), %rdi
    2d0b: ba 00 20 00 00               	movl	$8192, %edx             # imm = 0x2000
    2d10: e8 fe f7 ff ff               	callq	0x2513 <rio_readlineb>
    2d15: 48 85 c0                     	testq	%rax, %rax
    2d18: 0f 8e 96 00 00 00            	jle	0x2db4 <submitr+0x6f0>
    2d1e: 44 8b 44 24 2c               	movl	44(%rsp), %r8d
    2d23: 41 81 f8 c8 00 00 00         	cmpl	$200, %r8d
    2d2a: 0f 85 05 01 00 00            	jne	0x2e35 <submitr+0x771>
    2d30: 48 8d b4 24 50 20 00 00      	leaq	8272(%rsp), %rsi
    2d38: 48 89 ef                     	movq	%rbp, %rdi
    2d3b: e8 20 e5 ff ff               	callq	0x1260 <.plt.sec+0x40>
    2d40: 89 df                        	movl	%ebx, %edi
    2d42: e8 69 e5 ff ff               	callq	0x12b0 <.plt.sec+0x90>
    2d47: b9 04 00 00 00               	movl	$4, %ecx
    2d4c: 48 8d 3d 82 1b 00 00         	leaq	7042(%rip), %rdi        # 0x48d5 <array.3497+0x4d5>
    2d53: 48 89 ee                     	movq	%rbp, %rsi
    2d56: f3 a6                        	rep		cmpsb	%es:(%rdi), (%rsi)
    2d58: 0f 97 c0                     	seta	%al
    2d5b: 1c 00                        	sbbb	$0, %al
    2d5d: 0f be c0                     	movsbl	%al, %eax
    2d60: 85 c0                        	testl	%eax, %eax
    2d62: 0f 84 59 fc ff ff            	je	0x29c1 <submitr+0x2fd>
    2d68: b9 05 00 00 00               	movl	$5, %ecx
    2d6d: 48 8d 3d 65 1b 00 00         	leaq	7013(%rip), %rdi        # 0x48d9 <array.3497+0x4d9>
    2d74: 48 89 ee                     	movq	%rbp, %rsi
    2d77: f3 a6                        	rep		cmpsb	%es:(%rdi), (%rsi)
    2d79: 0f 97 c0                     	seta	%al
    2d7c: 1c 00                        	sbbb	$0, %al
    2d7e: 0f be c0                     	movsbl	%al, %eax
    2d81: 85 c0                        	testl	%eax, %eax
    2d83: 0f 84 38 fc ff ff            	je	0x29c1 <submitr+0x2fd>
    2d89: b9 03 00 00 00               	movl	$3, %ecx
    2d8e: 48 8d 3d 49 1b 00 00         	leaq	6985(%rip), %rdi        # 0x48de <array.3497+0x4de>
    2d95: 48 89 ee                     	movq	%rbp, %rsi
    2d98: f3 a6                        	rep		cmpsb	%es:(%rdi), (%rsi)
    2d9a: 0f 97 c0                     	seta	%al
    2d9d: 1c 00                        	sbbb	$0, %al
    2d9f: 0f be c0                     	movsbl	%al, %eax
    2da2: 85 c0                        	testl	%eax, %eax
    2da4: 0f 84 17 fc ff ff            	je	0x29c1 <submitr+0x2fd>
    2daa: b8 ff ff ff ff               	movl	$4294967295, %eax       # imm = 0xFFFFFFFF
    2daf: e9 0d fc ff ff               	jmp	0x29c1 <submitr+0x2fd>
    2db4: 48 b8 45 72 72 6f 72 3a 20 43	movabsq	$4836930262966366789, %rax # imm = 0x43203A726F727245
    2dbe: 48 ba 6c 69 65 6e 74 20 75 6e	movabsq	$7959303600887654764, %rdx # imm = 0x6E7520746E65696C
    2dc8: 48 89 45 00                  	movq	%rax, (%rbp)
    2dcc: 48 89 55 08                  	movq	%rdx, 8(%rbp)
    2dd0: 48 b8 61 62 6c 65 20 74 6f 20	movabsq	$2337214414117954145, %rax # imm = 0x206F7420656C6261
    2dda: 48 ba 72 65 61 64 20 73 74 61	movabsq	$7022364301937698162, %rdx # imm = 0x6174732064616572
    2de4: 48 89 45 10                  	movq	%rax, 16(%rbp)
    2de8: 48 89 55 18                  	movq	%rdx, 24(%rbp)
    2dec: 48 b8 74 75 73 20 6d 65 73 73	movabsq	$8319104456053716340, %rax # imm = 0x7373656D20737574
    2df6: 48 ba 61 67 65 20 66 72 6f 6d	movabsq	$7885647255504775009, %rdx # imm = 0x6D6F726620656761
    2e00: 48 89 45 20                  	movq	%rax, 32(%rbp)
    2e04: 48 89 55 28                  	movq	%rdx, 40(%rbp)
    2e08: 48 b8 20 41 75 74 6f 6c 61 62	movabsq	$7089066514408882464, %rax # imm = 0x62616C6F74754120
    2e12: 48 ba 20 73 65 72 76 65 72 00	movabsq	$32199706744812320, %rdx # imm = 0x72657672657320
    2e1c: 48 89 45 30                  	movq	%rax, 48(%rbp)
    2e20: 48 89 55 38                  	movq	%rdx, 56(%rbp)
    2e24: 89 df                        	movl	%ebx, %edi
    2e26: e8 85 e4 ff ff               	callq	0x12b0 <.plt.sec+0x90>
    2e2b: b8 ff ff ff ff               	movl	$4294967295, %eax       # imm = 0xFFFFFFFF
    2e30: e9 8c fb ff ff               	jmp	0x29c1 <submitr+0x2fd>
    2e35: 4c 8d 8c 24 50 80 00 00      	leaq	32848(%rsp), %r9
    2e3d: 48 8d 0d 4c 1a 00 00         	leaq	6732(%rip), %rcx        # 0x4890 <array.3497+0x490>
    2e44: 48 c7 c2 ff ff ff ff         	movq	$-1, %rdx
    2e4b: be 01 00 00 00               	movl	$1, %esi
    2e50: 48 89 ef                     	movq	%rbp, %rdi
    2e53: b8 00 00 00 00               	movl	$0, %eax
    2e58: e8 83 e5 ff ff               	callq	0x13e0 <.plt.sec+0x1c0>
    2e5d: 89 df                        	movl	%ebx, %edi
    2e5f: e8 4c e4 ff ff               	callq	0x12b0 <.plt.sec+0x90>
    2e64: b8 ff ff ff ff               	movl	$4294967295, %eax       # imm = 0xFFFFFFFF
    2e69: e9 53 fb ff ff               	jmp	0x29c1 <submitr+0x2fd>
    2e6e: e8 1d e4 ff ff               	callq	0x1290 <.plt.sec+0x70>

0000000000002e73 <init_timeout>:
    2e73: f3 0f 1e fa                  	endbr64
    2e77: 85 ff                        	testl	%edi, %edi
    2e79: 74 26                        	je	0x2ea1 <init_timeout+0x2e>
    2e7b: 53                           	pushq	%rbx
    2e7c: 89 fb                        	movl	%edi, %ebx
    2e7e: 78 1a                        	js	0x2e9a <init_timeout+0x27>
    2e80: 48 8d 35 71 f5 ff ff         	leaq	-2703(%rip), %rsi       # 0x23f8 <sigalrm_handler>
    2e87: bf 0e 00 00 00               	movl	$14, %edi
    2e8c: e8 4f e4 ff ff               	callq	0x12e0 <.plt.sec+0xc0>
    2e91: 89 df                        	movl	%ebx, %edi
    2e93: e8 08 e4 ff ff               	callq	0x12a0 <.plt.sec+0x80>
    2e98: 5b                           	popq	%rbx
    2e99: c3                           	retq
    2e9a: bb 00 00 00 00               	movl	$0, %ebx
    2e9f: eb df                        	jmp	0x2e80 <init_timeout+0xd>
    2ea1: c3                           	retq

0000000000002ea2 <init_driver>:
    2ea2: f3 0f 1e fa                  	endbr64
    2ea6: 41 54                        	pushq	%r12
    2ea8: 55                           	pushq	%rbp
    2ea9: 53                           	pushq	%rbx
    2eaa: 48 83 ec 20                  	subq	$32, %rsp
    2eae: 48 89 fd                     	movq	%rdi, %rbp
    2eb1: 64 48 8b 04 25 28 00 00 00   	movq	%fs:40, %rax
    2eba: 48 89 44 24 18               	movq	%rax, 24(%rsp)
    2ebf: 31 c0                        	xorl	%eax, %eax
    2ec1: be 01 00 00 00               	movl	$1, %esi
    2ec6: bf 0d 00 00 00               	movl	$13, %edi
    2ecb: e8 10 e4 ff ff               	callq	0x12e0 <.plt.sec+0xc0>
    2ed0: be 01 00 00 00               	movl	$1, %esi
    2ed5: bf 1d 00 00 00               	movl	$29, %edi
    2eda: e8 01 e4 ff ff               	callq	0x12e0 <.plt.sec+0xc0>
    2edf: be 01 00 00 00               	movl	$1, %esi
    2ee4: bf 1d 00 00 00               	movl	$29, %edi
    2ee9: e8 f2 e3 ff ff               	callq	0x12e0 <.plt.sec+0xc0>
    2eee: ba 00 00 00 00               	movl	$0, %edx
    2ef3: be 01 00 00 00               	movl	$1, %esi
    2ef8: bf 02 00 00 00               	movl	$2, %edi
    2efd: e8 ee e4 ff ff               	callq	0x13f0 <.plt.sec+0x1d0>
    2f02: 85 c0                        	testl	%eax, %eax
    2f04: 0f 88 9c 00 00 00            	js	0x2fa6 <init_driver+0x104>
    2f0a: 89 c3                        	movl	%eax, %ebx
    2f0c: 48 8d 3d ce 19 00 00         	leaq	6606(%rip), %rdi        # 0x48e1 <array.3497+0x4e1>
    2f13: e8 d8 e3 ff ff               	callq	0x12f0 <.plt.sec+0xd0>
    2f18: 48 85 c0                     	testq	%rax, %rax
    2f1b: 0f 84 d1 00 00 00            	je	0x2ff2 <init_driver+0x150>
    2f21: 49 89 e4                     	movq	%rsp, %r12
    2f24: 48 c7 04 24 00 00 00 00      	movq	$0, (%rsp)
    2f2c: 48 c7 44 24 08 00 00 00 00   	movq	$0, 8(%rsp)
    2f35: 66 c7 04 24 02 00            	movw	$2, (%rsp)
    2f3b: 48 63 50 14                  	movslq	20(%rax), %rdx
    2f3f: 48 8b 40 18                  	movq	24(%rax), %rax
    2f43: 48 8b 30                     	movq	(%rax), %rsi
    2f46: 48 8d 7c 24 04               	leaq	4(%rsp), %rdi
    2f4b: b9 0c 00 00 00               	movl	$12, %ecx
    2f50: e8 ab e3 ff ff               	callq	0x1300 <.plt.sec+0xe0>
    2f55: 66 c7 44 24 02 30 39         	movw	$14640, 2(%rsp)         # imm = 0x3930
    2f5c: ba 10 00 00 00               	movl	$16, %edx
    2f61: 4c 89 e6                     	movq	%r12, %rsi
    2f64: 89 df                        	movl	%ebx, %edi
    2f66: e8 35 e4 ff ff               	callq	0x13a0 <.plt.sec+0x180>
    2f6b: 85 c0                        	testl	%eax, %eax
    2f6d: 0f 88 e7 00 00 00            	js	0x305a <init_driver+0x1b8>
    2f73: 89 df                        	movl	%ebx, %edi
    2f75: e8 36 e3 ff ff               	callq	0x12b0 <.plt.sec+0x90>
    2f7a: 66 c7 45 00 4f 4b            	movw	$19279, (%rbp)          # imm = 0x4B4F
    2f80: c6 45 02 00                  	movb	$0, 2(%rbp)
    2f84: b8 00 00 00 00               	movl	$0, %eax
    2f89: 48 8b 4c 24 18               	movq	24(%rsp), %rcx
    2f8e: 64 48 33 0c 25 28 00 00 00   	xorq	%fs:40, %rcx
    2f97: 0f 85 10 01 00 00            	jne	0x30ad <init_driver+0x20b>
    2f9d: 48 83 c4 20                  	addq	$32, %rsp
    2fa1: 5b                           	popq	%rbx
    2fa2: 5d                           	popq	%rbp
    2fa3: 41 5c                        	popq	%r12
    2fa5: c3                           	retq
    2fa6: 48 b8 45 72 72 6f 72 3a 20 43	movabsq	$4836930262966366789, %rax # imm = 0x43203A726F727245
    2fb0: 48 ba 6c 69 65 6e 74 20 75 6e	movabsq	$7959303600887654764, %rdx # imm = 0x6E7520746E65696C
    2fba: 48 89 45 00                  	movq	%rax, (%rbp)
    2fbe: 48 89 55 08                  	movq	%rdx, 8(%rbp)
    2fc2: 48 b8 61 62 6c 65 20 74 6f 20	movabsq	$2337214414117954145, %rax # imm = 0x206F7420656C6261
    2fcc: 48 ba 63 72 65 61 74 65 20 73	movabsq	$8295742064141103715, %rdx # imm = 0x7320657461657263
    2fd6: 48 89 45 10                  	movq	%rax, 16(%rbp)
    2fda: 48 89 55 18                  	movq	%rdx, 24(%rbp)
    2fde: c7 45 20 6f 63 6b 65         	movl	$1701536623, 32(%rbp)   # imm = 0x656B636F
    2fe5: 66 c7 45 24 74 00            	movw	$116, 36(%rbp)
    2feb: b8 ff ff ff ff               	movl	$4294967295, %eax       # imm = 0xFFFFFFFF
    2ff0: eb 97                        	jmp	0x2f89 <init_driver+0xe7>
    2ff2: 48 b8 45 72 72 6f 72 3a 20 44	movabsq	$4908987857004294725, %rax # imm = 0x44203A726F727245
    2ffc: 48 ba 4e 53 20 69 73 20 75 6e	movabsq	$7959303596504273742, %rdx # imm = 0x6E7520736920534E
    3006: 48 89 45 00                  	movq	%rax, (%rbp)
    300a: 48 89 55 08                  	movq	%rdx, 8(%rbp)
    300e: 48 b8 61 62 6c 65 20 74 6f 20	movabsq	$2337214414117954145, %rax # imm = 0x206F7420656C6261
    3018: 48 ba 72 65 73 6f 6c 76 65 20	movabsq	$2334402189959849330, %rdx # imm = 0x2065766C6F736572
    3022: 48 89 45 10                  	movq	%rax, 16(%rbp)
    3026: 48 89 55 18                  	movq	%rdx, 24(%rbp)
    302a: 48 b8 73 65 72 76 65 72 20 61	movabsq	$6998719601038222707, %rax # imm = 0x6120726576726573
    3034: 48 89 45 20                  	movq	%rax, 32(%rbp)
    3038: c7 45 28 64 64 72 65         	movl	$1701995620, 40(%rbp)   # imm = 0x65726464
    303f: 66 c7 45 2c 73 73            	movw	$29555, 44(%rbp)        # imm = 0x7373
    3045: c6 45 2e 00                  	movb	$0, 46(%rbp)
    3049: 89 df                        	movl	%ebx, %edi
    304b: e8 60 e2 ff ff               	callq	0x12b0 <.plt.sec+0x90>
    3050: b8 ff ff ff ff               	movl	$4294967295, %eax       # imm = 0xFFFFFFFF
    3055: e9 2f ff ff ff               	jmp	0x2f89 <init_driver+0xe7>
    305a: 48 b8 45 72 72 6f 72 3a 20 55	movabsq	$6133966955649069637, %rax # imm = 0x55203A726F727245
    3064: 48 ba 6e 61 62 6c 65 20 74 6f	movabsq	$8031079655490609518, %rdx # imm = 0x6F7420656C62616E
    306e: 48 89 45 00                  	movq	%rax, (%rbp)
    3072: 48 89 55 08                  	movq	%rdx, 8(%rbp)
    3076: 48 b8 20 63 6f 6e 6e 65 63 74	movabsq	$8386658456067597088, %rax # imm = 0x7463656E6E6F6320
    3080: 48 ba 20 74 6f 20 73 65 72 76	movabsq	$8534995788960330784, %rdx # imm = 0x76726573206F7420
    308a: 48 89 45 10                  	movq	%rax, 16(%rbp)
    308e: 48 89 55 18                  	movq	%rdx, 24(%rbp)
    3092: 66 c7 45 20 65 72            	movw	$29285, 32(%rbp)        # imm = 0x7265
    3098: c6 45 22 00                  	movb	$0, 34(%rbp)
    309c: 89 df                        	movl	%ebx, %edi
    309e: e8 0d e2 ff ff               	callq	0x12b0 <.plt.sec+0x90>
    30a3: b8 ff ff ff ff               	movl	$4294967295, %eax       # imm = 0xFFFFFFFF
    30a8: e9 dc fe ff ff               	jmp	0x2f89 <init_driver+0xe7>
    30ad: e8 de e1 ff ff               	callq	0x1290 <.plt.sec+0x70>

00000000000030b2 <driver_post>:
    30b2: f3 0f 1e fa                  	endbr64
    30b6: 53                           	pushq	%rbx
    30b7: 4c 89 cb                     	movq	%r9, %rbx
    30ba: 45 85 c0                     	testl	%r8d, %r8d
    30bd: 75 18                        	jne	0x30d7 <driver_post+0x25>
    30bf: 48 85 ff                     	testq	%rdi, %rdi
    30c2: 74 05                        	je	0x30c9 <driver_post+0x17>
    30c4: 80 3f 00                     	cmpb	$0, (%rdi)
    30c7: 75 37                        	jne	0x3100 <driver_post+0x4e>
    30c9: 66 c7 03 4f 4b               	movw	$19279, (%rbx)          # imm = 0x4B4F
    30ce: c6 43 02 00                  	movb	$0, 2(%rbx)
    30d2: 44 89 c0                     	movl	%r8d, %eax
    30d5: 5b                           	popq	%rbx
    30d6: c3                           	retq
    30d7: 48 89 ca                     	movq	%rcx, %rdx
    30da: 48 8d 35 10 18 00 00         	leaq	6160(%rip), %rsi        # 0x48f1 <array.3497+0x4f1>
    30e1: bf 01 00 00 00               	movl	$1, %edi
    30e6: b8 00 00 00 00               	movl	$0, %eax
    30eb: e8 70 e2 ff ff               	callq	0x1360 <.plt.sec+0x140>
    30f0: 66 c7 03 4f 4b               	movw	$19279, (%rbx)          # imm = 0x4B4F
    30f5: c6 43 02 00                  	movb	$0, 2(%rbx)
    30f9: b8 00 00 00 00               	movl	$0, %eax
    30fe: eb d5                        	jmp	0x30d5 <driver_post+0x23>
    3100: 48 83 ec 08                  	subq	$8, %rsp
    3104: 41 51                        	pushq	%r9
    3106: 49 89 c9                     	movq	%rcx, %r9
    3109: 49 89 d0                     	movq	%rdx, %r8
    310c: 48 89 f9                     	movq	%rdi, %rcx
    310f: 48 89 f2                     	movq	%rsi, %rdx
    3112: be 39 30 00 00               	movl	$12345, %esi            # imm = 0x3039
    3117: 48 8d 3d c3 17 00 00         	leaq	6083(%rip), %rdi        # 0x48e1 <array.3497+0x4e1>
    311e: e8 a1 f5 ff ff               	callq	0x26c4 <submitr>
    3123: 48 83 c4 10                  	addq	$16, %rsp
    3127: eb ac                        	jmp	0x30d5 <driver_post+0x23>
    3129: 0f 1f 80 00 00 00 00         	nopl	(%rax)

0000000000003130 <__libc_csu_init>:
    3130: f3 0f 1e fa                  	endbr64
    3134: 41 57                        	pushq	%r15
    3136: 4c 8d 3d 83 3b 00 00         	leaq	15235(%rip), %r15       # 0x6cc0 <__init_array_start>
    313d: 41 56                        	pushq	%r14
    313f: 49 89 d6                     	movq	%rdx, %r14
    3142: 41 55                        	pushq	%r13
    3144: 49 89 f5                     	movq	%rsi, %r13
    3147: 41 54                        	pushq	%r12
    3149: 41 89 fc                     	movl	%edi, %r12d
    314c: 55                           	pushq	%rbp
    314d: 48 8d 2d 74 3b 00 00         	leaq	15220(%rip), %rbp       # 0x6cc8 <__do_global_dtors_aux_fini_array_entry>
    3154: 53                           	pushq	%rbx
    3155: 4c 29 fd                     	subq	%r15, %rbp
    3158: 48 83 ec 08                  	subq	$8, %rsp
    315c: e8 9f de ff ff               	callq	0x1000 <_init>
    3161: 48 c1 fd 03                  	sarq	$3, %rbp
    3165: 74 1f                        	je	0x3186 <__libc_csu_init+0x56>
    3167: 31 db                        	xorl	%ebx, %ebx
    3169: 0f 1f 80 00 00 00 00         	nopl	(%rax)
    3170: 4c 89 f2                     	movq	%r14, %rdx
    3173: 4c 89 ee                     	movq	%r13, %rsi
    3176: 44 89 e7                     	movl	%r12d, %edi
    3179: 41 ff 14 df                  	callq	*(%r15,%rbx,8)
    317d: 48 83 c3 01                  	addq	$1, %rbx
    3181: 48 39 dd                     	cmpq	%rbx, %rbp
    3184: 75 ea                        	jne	0x3170 <__libc_csu_init+0x40>
    3186: 48 83 c4 08                  	addq	$8, %rsp
    318a: 5b                           	popq	%rbx
    318b: 5d                           	popq	%rbp
    318c: 41 5c                        	popq	%r12
    318e: 41 5d                        	popq	%r13
    3190: 41 5e                        	popq	%r14
    3192: 41 5f                        	popq	%r15
    3194: c3                           	retq
    3195: 66 66 2e 0f 1f 84 00 00 00 00 00     	nopw	%cs:(%rax,%rax)

00000000000031a0 <__libc_csu_fini>:
    31a0: f3 0f 1e fa                  	endbr64
    31a4: c3                           	retq

Disassembly of section .fini:

00000000000031a8 <_fini>:
    31a8: f3 0f 1e fa                  	endbr64
    31ac: 48 83 ec 08                  	subq	$8, %rsp
    31b0: 48 83 c4 08                  	addq	$8, %rsp
    31b4: c3                           	retq
