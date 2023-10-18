
rtarget:     file format elf64-x86-64


Disassembly of section .init:

0000000000401000 <_init>:
  401000:	f3 0f 1e fa          	endbr64 
  401004:	48 83 ec 08          	sub    $0x8,%rsp
  401008:	48 8b 05 e9 5f 00 00 	mov    0x5fe9(%rip),%rax        # 406ff8 <__gmon_start__>
  40100f:	48 85 c0             	test   %rax,%rax
  401012:	74 02                	je     401016 <_init+0x16>
  401014:	ff d0                	call   *%rax
  401016:	48 83 c4 08          	add    $0x8,%rsp
  40101a:	c3                   	ret    

Disassembly of section .plt:

0000000000401020 <.plt>:
  401020:	ff 35 e2 5f 00 00    	push   0x5fe2(%rip)        # 407008 <_GLOBAL_OFFSET_TABLE_+0x8>
  401026:	f2 ff 25 e3 5f 00 00 	bnd jmp *0x5fe3(%rip)        # 407010 <_GLOBAL_OFFSET_TABLE_+0x10>
  40102d:	0f 1f 00             	nopl   (%rax)
  401030:	f3 0f 1e fa          	endbr64 
  401034:	68 00 00 00 00       	push   $0x0
  401039:	f2 e9 e1 ff ff ff    	bnd jmp 401020 <.plt>
  40103f:	90                   	nop
  401040:	f3 0f 1e fa          	endbr64 
  401044:	68 01 00 00 00       	push   $0x1
  401049:	f2 e9 d1 ff ff ff    	bnd jmp 401020 <.plt>
  40104f:	90                   	nop
  401050:	f3 0f 1e fa          	endbr64 
  401054:	68 02 00 00 00       	push   $0x2
  401059:	f2 e9 c1 ff ff ff    	bnd jmp 401020 <.plt>
  40105f:	90                   	nop
  401060:	f3 0f 1e fa          	endbr64 
  401064:	68 03 00 00 00       	push   $0x3
  401069:	f2 e9 b1 ff ff ff    	bnd jmp 401020 <.plt>
  40106f:	90                   	nop
  401070:	f3 0f 1e fa          	endbr64 
  401074:	68 04 00 00 00       	push   $0x4
  401079:	f2 e9 a1 ff ff ff    	bnd jmp 401020 <.plt>
  40107f:	90                   	nop
  401080:	f3 0f 1e fa          	endbr64 
  401084:	68 05 00 00 00       	push   $0x5
  401089:	f2 e9 91 ff ff ff    	bnd jmp 401020 <.plt>
  40108f:	90                   	nop
  401090:	f3 0f 1e fa          	endbr64 
  401094:	68 06 00 00 00       	push   $0x6
  401099:	f2 e9 81 ff ff ff    	bnd jmp 401020 <.plt>
  40109f:	90                   	nop
  4010a0:	f3 0f 1e fa          	endbr64 
  4010a4:	68 07 00 00 00       	push   $0x7
  4010a9:	f2 e9 71 ff ff ff    	bnd jmp 401020 <.plt>
  4010af:	90                   	nop
  4010b0:	f3 0f 1e fa          	endbr64 
  4010b4:	68 08 00 00 00       	push   $0x8
  4010b9:	f2 e9 61 ff ff ff    	bnd jmp 401020 <.plt>
  4010bf:	90                   	nop
  4010c0:	f3 0f 1e fa          	endbr64 
  4010c4:	68 09 00 00 00       	push   $0x9
  4010c9:	f2 e9 51 ff ff ff    	bnd jmp 401020 <.plt>
  4010cf:	90                   	nop
  4010d0:	f3 0f 1e fa          	endbr64 
  4010d4:	68 0a 00 00 00       	push   $0xa
  4010d9:	f2 e9 41 ff ff ff    	bnd jmp 401020 <.plt>
  4010df:	90                   	nop
  4010e0:	f3 0f 1e fa          	endbr64 
  4010e4:	68 0b 00 00 00       	push   $0xb
  4010e9:	f2 e9 31 ff ff ff    	bnd jmp 401020 <.plt>
  4010ef:	90                   	nop
  4010f0:	f3 0f 1e fa          	endbr64 
  4010f4:	68 0c 00 00 00       	push   $0xc
  4010f9:	f2 e9 21 ff ff ff    	bnd jmp 401020 <.plt>
  4010ff:	90                   	nop
  401100:	f3 0f 1e fa          	endbr64 
  401104:	68 0d 00 00 00       	push   $0xd
  401109:	f2 e9 11 ff ff ff    	bnd jmp 401020 <.plt>
  40110f:	90                   	nop
  401110:	f3 0f 1e fa          	endbr64 
  401114:	68 0e 00 00 00       	push   $0xe
  401119:	f2 e9 01 ff ff ff    	bnd jmp 401020 <.plt>
  40111f:	90                   	nop
  401120:	f3 0f 1e fa          	endbr64 
  401124:	68 0f 00 00 00       	push   $0xf
  401129:	f2 e9 f1 fe ff ff    	bnd jmp 401020 <.plt>
  40112f:	90                   	nop
  401130:	f3 0f 1e fa          	endbr64 
  401134:	68 10 00 00 00       	push   $0x10
  401139:	f2 e9 e1 fe ff ff    	bnd jmp 401020 <.plt>
  40113f:	90                   	nop
  401140:	f3 0f 1e fa          	endbr64 
  401144:	68 11 00 00 00       	push   $0x11
  401149:	f2 e9 d1 fe ff ff    	bnd jmp 401020 <.plt>
  40114f:	90                   	nop
  401150:	f3 0f 1e fa          	endbr64 
  401154:	68 12 00 00 00       	push   $0x12
  401159:	f2 e9 c1 fe ff ff    	bnd jmp 401020 <.plt>
  40115f:	90                   	nop
  401160:	f3 0f 1e fa          	endbr64 
  401164:	68 13 00 00 00       	push   $0x13
  401169:	f2 e9 b1 fe ff ff    	bnd jmp 401020 <.plt>
  40116f:	90                   	nop
  401170:	f3 0f 1e fa          	endbr64 
  401174:	68 14 00 00 00       	push   $0x14
  401179:	f2 e9 a1 fe ff ff    	bnd jmp 401020 <.plt>
  40117f:	90                   	nop
  401180:	f3 0f 1e fa          	endbr64 
  401184:	68 15 00 00 00       	push   $0x15
  401189:	f2 e9 91 fe ff ff    	bnd jmp 401020 <.plt>
  40118f:	90                   	nop
  401190:	f3 0f 1e fa          	endbr64 
  401194:	68 16 00 00 00       	push   $0x16
  401199:	f2 e9 81 fe ff ff    	bnd jmp 401020 <.plt>
  40119f:	90                   	nop
  4011a0:	f3 0f 1e fa          	endbr64 
  4011a4:	68 17 00 00 00       	push   $0x17
  4011a9:	f2 e9 71 fe ff ff    	bnd jmp 401020 <.plt>
  4011af:	90                   	nop
  4011b0:	f3 0f 1e fa          	endbr64 
  4011b4:	68 18 00 00 00       	push   $0x18
  4011b9:	f2 e9 61 fe ff ff    	bnd jmp 401020 <.plt>
  4011bf:	90                   	nop
  4011c0:	f3 0f 1e fa          	endbr64 
  4011c4:	68 19 00 00 00       	push   $0x19
  4011c9:	f2 e9 51 fe ff ff    	bnd jmp 401020 <.plt>
  4011cf:	90                   	nop
  4011d0:	f3 0f 1e fa          	endbr64 
  4011d4:	68 1a 00 00 00       	push   $0x1a
  4011d9:	f2 e9 41 fe ff ff    	bnd jmp 401020 <.plt>
  4011df:	90                   	nop
  4011e0:	f3 0f 1e fa          	endbr64 
  4011e4:	68 1b 00 00 00       	push   $0x1b
  4011e9:	f2 e9 31 fe ff ff    	bnd jmp 401020 <.plt>
  4011ef:	90                   	nop
  4011f0:	f3 0f 1e fa          	endbr64 
  4011f4:	68 1c 00 00 00       	push   $0x1c
  4011f9:	f2 e9 21 fe ff ff    	bnd jmp 401020 <.plt>
  4011ff:	90                   	nop
  401200:	f3 0f 1e fa          	endbr64 
  401204:	68 1d 00 00 00       	push   $0x1d
  401209:	f2 e9 11 fe ff ff    	bnd jmp 401020 <.plt>
  40120f:	90                   	nop
  401210:	f3 0f 1e fa          	endbr64 
  401214:	68 1e 00 00 00       	push   $0x1e
  401219:	f2 e9 01 fe ff ff    	bnd jmp 401020 <.plt>
  40121f:	90                   	nop
  401220:	f3 0f 1e fa          	endbr64 
  401224:	68 1f 00 00 00       	push   $0x1f
  401229:	f2 e9 f1 fd ff ff    	bnd jmp 401020 <.plt>
  40122f:	90                   	nop
  401230:	f3 0f 1e fa          	endbr64 
  401234:	68 20 00 00 00       	push   $0x20
  401239:	f2 e9 e1 fd ff ff    	bnd jmp 401020 <.plt>
  40123f:	90                   	nop
  401240:	f3 0f 1e fa          	endbr64 
  401244:	68 21 00 00 00       	push   $0x21
  401249:	f2 e9 d1 fd ff ff    	bnd jmp 401020 <.plt>
  40124f:	90                   	nop

Disassembly of section .plt.sec:

0000000000401250 <strcasecmp@plt>:
  401250:	f3 0f 1e fa          	endbr64 
  401254:	f2 ff 25 bd 5d 00 00 	bnd jmp *0x5dbd(%rip)        # 407018 <strcasecmp@GLIBC_2.2.5>
  40125b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000401260 <__errno_location@plt>:
  401260:	f3 0f 1e fa          	endbr64 
  401264:	f2 ff 25 b5 5d 00 00 	bnd jmp *0x5db5(%rip)        # 407020 <__errno_location@GLIBC_2.2.5>
  40126b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000401270 <srandom@plt>:
  401270:	f3 0f 1e fa          	endbr64 
  401274:	f2 ff 25 ad 5d 00 00 	bnd jmp *0x5dad(%rip)        # 407028 <srandom@GLIBC_2.2.5>
  40127b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000401280 <strncpy@plt>:
  401280:	f3 0f 1e fa          	endbr64 
  401284:	f2 ff 25 a5 5d 00 00 	bnd jmp *0x5da5(%rip)        # 407030 <strncpy@GLIBC_2.2.5>
  40128b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000401290 <strncmp@plt>:
  401290:	f3 0f 1e fa          	endbr64 
  401294:	f2 ff 25 9d 5d 00 00 	bnd jmp *0x5d9d(%rip)        # 407038 <strncmp@GLIBC_2.2.5>
  40129b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000004012a0 <strcpy@plt>:
  4012a0:	f3 0f 1e fa          	endbr64 
  4012a4:	f2 ff 25 95 5d 00 00 	bnd jmp *0x5d95(%rip)        # 407040 <strcpy@GLIBC_2.2.5>
  4012ab:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000004012b0 <puts@plt>:
  4012b0:	f3 0f 1e fa          	endbr64 
  4012b4:	f2 ff 25 8d 5d 00 00 	bnd jmp *0x5d8d(%rip)        # 407048 <puts@GLIBC_2.2.5>
  4012bb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000004012c0 <write@plt>:
  4012c0:	f3 0f 1e fa          	endbr64 
  4012c4:	f2 ff 25 85 5d 00 00 	bnd jmp *0x5d85(%rip)        # 407050 <write@GLIBC_2.2.5>
  4012cb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000004012d0 <mmap@plt>:
  4012d0:	f3 0f 1e fa          	endbr64 
  4012d4:	f2 ff 25 7d 5d 00 00 	bnd jmp *0x5d7d(%rip)        # 407058 <mmap@GLIBC_2.2.5>
  4012db:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000004012e0 <memset@plt>:
  4012e0:	f3 0f 1e fa          	endbr64 
  4012e4:	f2 ff 25 75 5d 00 00 	bnd jmp *0x5d75(%rip)        # 407060 <memset@GLIBC_2.2.5>
  4012eb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000004012f0 <alarm@plt>:
  4012f0:	f3 0f 1e fa          	endbr64 
  4012f4:	f2 ff 25 6d 5d 00 00 	bnd jmp *0x5d6d(%rip)        # 407068 <alarm@GLIBC_2.2.5>
  4012fb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000401300 <close@plt>:
  401300:	f3 0f 1e fa          	endbr64 
  401304:	f2 ff 25 65 5d 00 00 	bnd jmp *0x5d65(%rip)        # 407070 <close@GLIBC_2.2.5>
  40130b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000401310 <read@plt>:
  401310:	f3 0f 1e fa          	endbr64 
  401314:	f2 ff 25 5d 5d 00 00 	bnd jmp *0x5d5d(%rip)        # 407078 <read@GLIBC_2.2.5>
  40131b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000401320 <strcmp@plt>:
  401320:	f3 0f 1e fa          	endbr64 
  401324:	f2 ff 25 55 5d 00 00 	bnd jmp *0x5d55(%rip)        # 407080 <strcmp@GLIBC_2.2.5>
  40132b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000401330 <signal@plt>:
  401330:	f3 0f 1e fa          	endbr64 
  401334:	f2 ff 25 4d 5d 00 00 	bnd jmp *0x5d4d(%rip)        # 407088 <signal@GLIBC_2.2.5>
  40133b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000401340 <gethostbyname@plt>:
  401340:	f3 0f 1e fa          	endbr64 
  401344:	f2 ff 25 45 5d 00 00 	bnd jmp *0x5d45(%rip)        # 407090 <gethostbyname@GLIBC_2.2.5>
  40134b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000401350 <__memmove_chk@plt>:
  401350:	f3 0f 1e fa          	endbr64 
  401354:	f2 ff 25 3d 5d 00 00 	bnd jmp *0x5d3d(%rip)        # 407098 <__memmove_chk@GLIBC_2.3.4>
  40135b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000401360 <strtol@plt>:
  401360:	f3 0f 1e fa          	endbr64 
  401364:	f2 ff 25 35 5d 00 00 	bnd jmp *0x5d35(%rip)        # 4070a0 <strtol@GLIBC_2.2.5>
  40136b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000401370 <memcpy@plt>:
  401370:	f3 0f 1e fa          	endbr64 
  401374:	f2 ff 25 2d 5d 00 00 	bnd jmp *0x5d2d(%rip)        # 4070a8 <memcpy@GLIBC_2.14>
  40137b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000401380 <time@plt>:
  401380:	f3 0f 1e fa          	endbr64 
  401384:	f2 ff 25 25 5d 00 00 	bnd jmp *0x5d25(%rip)        # 4070b0 <time@GLIBC_2.2.5>
  40138b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000401390 <random@plt>:
  401390:	f3 0f 1e fa          	endbr64 
  401394:	f2 ff 25 1d 5d 00 00 	bnd jmp *0x5d1d(%rip)        # 4070b8 <random@GLIBC_2.2.5>
  40139b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000004013a0 <__isoc99_sscanf@plt>:
  4013a0:	f3 0f 1e fa          	endbr64 
  4013a4:	f2 ff 25 15 5d 00 00 	bnd jmp *0x5d15(%rip)        # 4070c0 <__isoc99_sscanf@GLIBC_2.7>
  4013ab:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000004013b0 <munmap@plt>:
  4013b0:	f3 0f 1e fa          	endbr64 
  4013b4:	f2 ff 25 0d 5d 00 00 	bnd jmp *0x5d0d(%rip)        # 4070c8 <munmap@GLIBC_2.2.5>
  4013bb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000004013c0 <__printf_chk@plt>:
  4013c0:	f3 0f 1e fa          	endbr64 
  4013c4:	f2 ff 25 05 5d 00 00 	bnd jmp *0x5d05(%rip)        # 4070d0 <__printf_chk@GLIBC_2.3.4>
  4013cb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000004013d0 <fopen@plt>:
  4013d0:	f3 0f 1e fa          	endbr64 
  4013d4:	f2 ff 25 fd 5c 00 00 	bnd jmp *0x5cfd(%rip)        # 4070d8 <fopen@GLIBC_2.2.5>
  4013db:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000004013e0 <getopt@plt>:
  4013e0:	f3 0f 1e fa          	endbr64 
  4013e4:	f2 ff 25 f5 5c 00 00 	bnd jmp *0x5cf5(%rip)        # 4070e0 <getopt@GLIBC_2.2.5>
  4013eb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000004013f0 <strtoul@plt>:
  4013f0:	f3 0f 1e fa          	endbr64 
  4013f4:	f2 ff 25 ed 5c 00 00 	bnd jmp *0x5ced(%rip)        # 4070e8 <strtoul@GLIBC_2.2.5>
  4013fb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000401400 <gethostname@plt>:
  401400:	f3 0f 1e fa          	endbr64 
  401404:	f2 ff 25 e5 5c 00 00 	bnd jmp *0x5ce5(%rip)        # 4070f0 <gethostname@GLIBC_2.2.5>
  40140b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000401410 <exit@plt>:
  401410:	f3 0f 1e fa          	endbr64 
  401414:	f2 ff 25 dd 5c 00 00 	bnd jmp *0x5cdd(%rip)        # 4070f8 <exit@GLIBC_2.2.5>
  40141b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000401420 <connect@plt>:
  401420:	f3 0f 1e fa          	endbr64 
  401424:	f2 ff 25 d5 5c 00 00 	bnd jmp *0x5cd5(%rip)        # 407100 <connect@GLIBC_2.2.5>
  40142b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000401430 <__fprintf_chk@plt>:
  401430:	f3 0f 1e fa          	endbr64 
  401434:	f2 ff 25 cd 5c 00 00 	bnd jmp *0x5ccd(%rip)        # 407108 <__fprintf_chk@GLIBC_2.3.4>
  40143b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000401440 <getc@plt>:
  401440:	f3 0f 1e fa          	endbr64 
  401444:	f2 ff 25 c5 5c 00 00 	bnd jmp *0x5cc5(%rip)        # 407110 <getc@GLIBC_2.2.5>
  40144b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000401450 <__sprintf_chk@plt>:
  401450:	f3 0f 1e fa          	endbr64 
  401454:	f2 ff 25 bd 5c 00 00 	bnd jmp *0x5cbd(%rip)        # 407118 <__sprintf_chk@GLIBC_2.3.4>
  40145b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000401460 <socket@plt>:
  401460:	f3 0f 1e fa          	endbr64 
  401464:	f2 ff 25 b5 5c 00 00 	bnd jmp *0x5cb5(%rip)        # 407120 <socket@GLIBC_2.2.5>
  40146b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

Disassembly of section .text:

0000000000401470 <_start>:
  401470:	f3 0f 1e fa          	endbr64 
  401474:	31 ed                	xor    %ebp,%ebp
  401476:	49 89 d1             	mov    %rdx,%r9
  401479:	5e                   	pop    %rsi
  40147a:	48 89 e2             	mov    %rsp,%rdx
  40147d:	48 83 e4 f0          	and    $0xfffffffffffffff0,%rsp
  401481:	50                   	push   %rax
  401482:	54                   	push   %rsp
  401483:	49 c7 c0 20 39 40 00 	mov    $0x403920,%r8
  40148a:	48 c7 c1 b0 38 40 00 	mov    $0x4038b0,%rcx
  401491:	48 c7 c7 99 17 40 00 	mov    $0x401799,%rdi
  401498:	ff 15 52 5b 00 00    	call   *0x5b52(%rip)        # 406ff0 <__libc_start_main@GLIBC_2.2.5>
  40149e:	f4                   	hlt    
  40149f:	90                   	nop

00000000004014a0 <_dl_relocate_static_pie>:
  4014a0:	f3 0f 1e fa          	endbr64 
  4014a4:	c3                   	ret    
  4014a5:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
  4014ac:	00 00 00 
  4014af:	90                   	nop

00000000004014b0 <deregister_tm_clones>:
  4014b0:	b8 b0 74 40 00       	mov    $0x4074b0,%eax
  4014b5:	48 3d b0 74 40 00    	cmp    $0x4074b0,%rax
  4014bb:	74 13                	je     4014d0 <deregister_tm_clones+0x20>
  4014bd:	b8 00 00 00 00       	mov    $0x0,%eax
  4014c2:	48 85 c0             	test   %rax,%rax
  4014c5:	74 09                	je     4014d0 <deregister_tm_clones+0x20>
  4014c7:	bf b0 74 40 00       	mov    $0x4074b0,%edi
  4014cc:	ff e0                	jmp    *%rax
  4014ce:	66 90                	xchg   %ax,%ax
  4014d0:	c3                   	ret    
  4014d1:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  4014d8:	00 00 00 00 
  4014dc:	0f 1f 40 00          	nopl   0x0(%rax)

00000000004014e0 <register_tm_clones>:
  4014e0:	be b0 74 40 00       	mov    $0x4074b0,%esi
  4014e5:	48 81 ee b0 74 40 00 	sub    $0x4074b0,%rsi
  4014ec:	48 89 f0             	mov    %rsi,%rax
  4014ef:	48 c1 ee 3f          	shr    $0x3f,%rsi
  4014f3:	48 c1 f8 03          	sar    $0x3,%rax
  4014f7:	48 01 c6             	add    %rax,%rsi
  4014fa:	48 d1 fe             	sar    %rsi
  4014fd:	74 11                	je     401510 <register_tm_clones+0x30>
  4014ff:	b8 00 00 00 00       	mov    $0x0,%eax
  401504:	48 85 c0             	test   %rax,%rax
  401507:	74 07                	je     401510 <register_tm_clones+0x30>
  401509:	bf b0 74 40 00       	mov    $0x4074b0,%edi
  40150e:	ff e0                	jmp    *%rax
  401510:	c3                   	ret    
  401511:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  401518:	00 00 00 00 
  40151c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000401520 <__do_global_dtors_aux>:
  401520:	f3 0f 1e fa          	endbr64 
  401524:	80 3d bd 5f 00 00 00 	cmpb   $0x0,0x5fbd(%rip)        # 4074e8 <completed.8060>
  40152b:	75 13                	jne    401540 <__do_global_dtors_aux+0x20>
  40152d:	55                   	push   %rbp
  40152e:	48 89 e5             	mov    %rsp,%rbp
  401531:	e8 7a ff ff ff       	call   4014b0 <deregister_tm_clones>
  401536:	c6 05 ab 5f 00 00 01 	movb   $0x1,0x5fab(%rip)        # 4074e8 <completed.8060>
  40153d:	5d                   	pop    %rbp
  40153e:	c3                   	ret    
  40153f:	90                   	nop
  401540:	c3                   	ret    
  401541:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  401548:	00 00 00 00 
  40154c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000401550 <frame_dummy>:
  401550:	f3 0f 1e fa          	endbr64 
  401554:	eb 8a                	jmp    4014e0 <register_tm_clones>

0000000000401556 <usage>:
  401556:	50                   	push   %rax
  401557:	58                   	pop    %rax
  401558:	48 83 ec 08          	sub    $0x8,%rsp
  40155c:	48 89 fa             	mov    %rdi,%rdx
  40155f:	83 3d c2 5f 00 00 00 	cmpl   $0x0,0x5fc2(%rip)        # 407528 <is_checker>
  401566:	74 50                	je     4015b8 <usage+0x62>
  401568:	48 8d 35 99 2a 00 00 	lea    0x2a99(%rip),%rsi        # 404008 <_IO_stdin_used+0x8>
  40156f:	bf 01 00 00 00       	mov    $0x1,%edi
  401574:	b8 00 00 00 00       	mov    $0x0,%eax
  401579:	e8 42 fe ff ff       	call   4013c0 <__printf_chk@plt>
  40157e:	48 8d 3d bb 2a 00 00 	lea    0x2abb(%rip),%rdi        # 404040 <_IO_stdin_used+0x40>
  401585:	e8 26 fd ff ff       	call   4012b0 <puts@plt>
  40158a:	48 8d 3d 3f 2c 00 00 	lea    0x2c3f(%rip),%rdi        # 4041d0 <_IO_stdin_used+0x1d0>
  401591:	e8 1a fd ff ff       	call   4012b0 <puts@plt>
  401596:	48 8d 3d cb 2a 00 00 	lea    0x2acb(%rip),%rdi        # 404068 <_IO_stdin_used+0x68>
  40159d:	e8 0e fd ff ff       	call   4012b0 <puts@plt>
  4015a2:	48 8d 3d 41 2c 00 00 	lea    0x2c41(%rip),%rdi        # 4041ea <_IO_stdin_used+0x1ea>
  4015a9:	e8 02 fd ff ff       	call   4012b0 <puts@plt>
  4015ae:	bf 00 00 00 00       	mov    $0x0,%edi
  4015b3:	e8 58 fe ff ff       	call   401410 <exit@plt>
  4015b8:	48 8d 35 47 2c 00 00 	lea    0x2c47(%rip),%rsi        # 404206 <_IO_stdin_used+0x206>
  4015bf:	bf 01 00 00 00       	mov    $0x1,%edi
  4015c4:	b8 00 00 00 00       	mov    $0x0,%eax
  4015c9:	e8 f2 fd ff ff       	call   4013c0 <__printf_chk@plt>
  4015ce:	48 8d 3d bb 2a 00 00 	lea    0x2abb(%rip),%rdi        # 404090 <_IO_stdin_used+0x90>
  4015d5:	e8 d6 fc ff ff       	call   4012b0 <puts@plt>
  4015da:	48 8d 3d d7 2a 00 00 	lea    0x2ad7(%rip),%rdi        # 4040b8 <_IO_stdin_used+0xb8>
  4015e1:	e8 ca fc ff ff       	call   4012b0 <puts@plt>
  4015e6:	48 8d 3d 37 2c 00 00 	lea    0x2c37(%rip),%rdi        # 404224 <_IO_stdin_used+0x224>
  4015ed:	e8 be fc ff ff       	call   4012b0 <puts@plt>
  4015f2:	eb ba                	jmp    4015ae <usage+0x58>

00000000004015f4 <initialize_target>:
  4015f4:	55                   	push   %rbp
  4015f5:	53                   	push   %rbx
  4015f6:	48 81 ec 00 10 00 00 	sub    $0x1000,%rsp
  4015fd:	48 83 0c 24 00       	orq    $0x0,(%rsp)
  401602:	48 81 ec 00 10 00 00 	sub    $0x1000,%rsp
  401609:	48 83 0c 24 00       	orq    $0x0,(%rsp)
  40160e:	48 81 ec 18 01 00 00 	sub    $0x118,%rsp
  401615:	89 f5                	mov    %esi,%ebp
  401617:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  40161e:	00 00 
  401620:	48 89 84 24 08 21 00 	mov    %rax,0x2108(%rsp)
  401627:	00 
  401628:	31 c0                	xor    %eax,%eax
  40162a:	89 3d e8 5e 00 00    	mov    %edi,0x5ee8(%rip)        # 407518 <check_level>
  401630:	8b 3d 1a 5b 00 00    	mov    0x5b1a(%rip),%edi        # 407150 <target_id>
  401636:	e8 4c 22 00 00       	call   403887 <gencookie>
  40163b:	89 c7                	mov    %eax,%edi
  40163d:	89 05 e1 5e 00 00    	mov    %eax,0x5ee1(%rip)        # 407524 <cookie>
  401643:	e8 3f 22 00 00       	call   403887 <gencookie>
  401648:	89 05 d2 5e 00 00    	mov    %eax,0x5ed2(%rip)        # 407520 <authkey>
  40164e:	8b 05 fc 5a 00 00    	mov    0x5afc(%rip),%eax        # 407150 <target_id>
  401654:	8d 78 01             	lea    0x1(%rax),%edi
  401657:	e8 14 fc ff ff       	call   401270 <srandom@plt>
  40165c:	e8 2f fd ff ff       	call   401390 <random@plt>
  401661:	48 89 c7             	mov    %rax,%rdi
  401664:	e8 9b 03 00 00       	call   401a04 <scramble>
  401669:	89 c3                	mov    %eax,%ebx
  40166b:	85 ed                	test   %ebp,%ebp
  40166d:	75 54                	jne    4016c3 <initialize_target+0xcf>
  40166f:	b8 00 00 00 00       	mov    $0x0,%eax
  401674:	01 d8                	add    %ebx,%eax
  401676:	0f b7 c0             	movzwl %ax,%eax
  401679:	8d 04 c5 00 01 00 00 	lea    0x100(,%rax,8),%eax
  401680:	89 c0                	mov    %eax,%eax
  401682:	48 89 05 1f 5e 00 00 	mov    %rax,0x5e1f(%rip)        # 4074a8 <buf_offset>
  401689:	c6 05 b8 6a 00 00 72 	movb   $0x72,0x6ab8(%rip)        # 408148 <target_prefix>
  401690:	83 3d 09 5e 00 00 00 	cmpl   $0x0,0x5e09(%rip)        # 4074a0 <notify>
  401697:	74 09                	je     4016a2 <initialize_target+0xae>
  401699:	83 3d 88 5e 00 00 00 	cmpl   $0x0,0x5e88(%rip)        # 407528 <is_checker>
  4016a0:	74 3a                	je     4016dc <initialize_target+0xe8>
  4016a2:	48 8b 84 24 08 21 00 	mov    0x2108(%rsp),%rax
  4016a9:	00 
  4016aa:	64 48 33 04 25 28 00 	xor    %fs:0x28,%rax
  4016b1:	00 00 
  4016b3:	0f 85 db 00 00 00    	jne    401794 <initialize_target+0x1a0>
  4016b9:	48 81 c4 18 21 00 00 	add    $0x2118,%rsp
  4016c0:	5b                   	pop    %rbx
  4016c1:	5d                   	pop    %rbp
  4016c2:	c3                   	ret    
  4016c3:	bf 00 00 00 00       	mov    $0x0,%edi
  4016c8:	e8 b3 fc ff ff       	call   401380 <time@plt>
  4016cd:	48 89 c7             	mov    %rax,%rdi
  4016d0:	e8 9b fb ff ff       	call   401270 <srandom@plt>
  4016d5:	e8 b6 fc ff ff       	call   401390 <random@plt>
  4016da:	eb 98                	jmp    401674 <initialize_target+0x80>
  4016dc:	48 89 e7             	mov    %rsp,%rdi
  4016df:	be 00 01 00 00       	mov    $0x100,%esi
  4016e4:	e8 17 fd ff ff       	call   401400 <gethostname@plt>
  4016e9:	89 c5                	mov    %eax,%ebp
  4016eb:	85 c0                	test   %eax,%eax
  4016ed:	75 26                	jne    401715 <initialize_target+0x121>
  4016ef:	89 c3                	mov    %eax,%ebx
  4016f1:	48 63 c3             	movslq %ebx,%rax
  4016f4:	48 8d 15 85 5a 00 00 	lea    0x5a85(%rip),%rdx        # 407180 <host_table>
  4016fb:	48 8b 3c c2          	mov    (%rdx,%rax,8),%rdi
  4016ff:	48 85 ff             	test   %rdi,%rdi
  401702:	74 2c                	je     401730 <initialize_target+0x13c>
  401704:	48 89 e6             	mov    %rsp,%rsi
  401707:	e8 44 fb ff ff       	call   401250 <strcasecmp@plt>
  40170c:	85 c0                	test   %eax,%eax
  40170e:	74 1b                	je     40172b <initialize_target+0x137>
  401710:	83 c3 01             	add    $0x1,%ebx
  401713:	eb dc                	jmp    4016f1 <initialize_target+0xfd>
  401715:	48 8d 3d cc 29 00 00 	lea    0x29cc(%rip),%rdi        # 4040e8 <_IO_stdin_used+0xe8>
  40171c:	e8 8f fb ff ff       	call   4012b0 <puts@plt>
  401721:	bf 08 00 00 00       	mov    $0x8,%edi
  401726:	e8 e5 fc ff ff       	call   401410 <exit@plt>
  40172b:	bd 01 00 00 00       	mov    $0x1,%ebp
  401730:	85 ed                	test   %ebp,%ebp
  401732:	74 3d                	je     401771 <initialize_target+0x17d>
  401734:	48 8d bc 24 00 01 00 	lea    0x100(%rsp),%rdi
  40173b:	00 
  40173c:	e8 8b 1e 00 00       	call   4035cc <init_driver>
  401741:	85 c0                	test   %eax,%eax
  401743:	0f 89 59 ff ff ff    	jns    4016a2 <initialize_target+0xae>
  401749:	48 8d 94 24 00 01 00 	lea    0x100(%rsp),%rdx
  401750:	00 
  401751:	48 8d 35 08 2a 00 00 	lea    0x2a08(%rip),%rsi        # 404160 <_IO_stdin_used+0x160>
  401758:	bf 01 00 00 00       	mov    $0x1,%edi
  40175d:	b8 00 00 00 00       	mov    $0x0,%eax
  401762:	e8 59 fc ff ff       	call   4013c0 <__printf_chk@plt>
  401767:	bf 08 00 00 00       	mov    $0x8,%edi
  40176c:	e8 9f fc ff ff       	call   401410 <exit@plt>
  401771:	48 89 e2             	mov    %rsp,%rdx
  401774:	48 8d 35 a5 29 00 00 	lea    0x29a5(%rip),%rsi        # 404120 <_IO_stdin_used+0x120>
  40177b:	bf 01 00 00 00       	mov    $0x1,%edi
  401780:	b8 00 00 00 00       	mov    $0x0,%eax
  401785:	e8 36 fc ff ff       	call   4013c0 <__printf_chk@plt>
  40178a:	bf 08 00 00 00       	mov    $0x8,%edi
  40178f:	e8 7c fc ff ff       	call   401410 <exit@plt>
  401794:	e8 55 11 00 00       	call   4028ee <__stack_chk_fail>

0000000000401799 <main>:
  401799:	f3 0f 1e fa          	endbr64 
  40179d:	41 56                	push   %r14
  40179f:	41 55                	push   %r13
  4017a1:	41 54                	push   %r12
  4017a3:	55                   	push   %rbp
  4017a4:	53                   	push   %rbx
  4017a5:	48 83 ec 60          	sub    $0x60,%rsp
  4017a9:	89 fd                	mov    %edi,%ebp
  4017ab:	48 89 f3             	mov    %rsi,%rbx
  4017ae:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  4017b5:	00 00 
  4017b7:	48 89 44 24 58       	mov    %rax,0x58(%rsp)
  4017bc:	31 c0                	xor    %eax,%eax
  4017be:	48 b8 53 70 69 72 69 	movabs $0x6465746972697053,%rax
  4017c5:	74 65 64 
  4017c8:	48 89 04 24          	mov    %rax,(%rsp)
  4017cc:	c7 44 24 08 41 77 61 	movl   $0x79617741,0x8(%rsp)
  4017d3:	79 
  4017d4:	66 c7 44 24 0c 43 4e 	movw   $0x4e43,0xc(%rsp)
  4017db:	c6 44 24 0e 00       	movb   $0x0,0xe(%rsp)
  4017e0:	48 c7 c6 dd 27 40 00 	mov    $0x4027dd,%rsi
  4017e7:	bf 0b 00 00 00       	mov    $0xb,%edi
  4017ec:	e8 3f fb ff ff       	call   401330 <signal@plt>
  4017f1:	48 c7 c6 83 27 40 00 	mov    $0x402783,%rsi
  4017f8:	bf 07 00 00 00       	mov    $0x7,%edi
  4017fd:	e8 2e fb ff ff       	call   401330 <signal@plt>
  401802:	48 c7 c6 37 28 40 00 	mov    $0x402837,%rsi
  401809:	bf 04 00 00 00       	mov    $0x4,%edi
  40180e:	e8 1d fb ff ff       	call   401330 <signal@plt>
  401813:	83 3d 0e 5d 00 00 00 	cmpl   $0x0,0x5d0e(%rip)        # 407528 <is_checker>
  40181a:	75 26                	jne    401842 <main+0xa9>
  40181c:	4c 8d 25 24 2a 00 00 	lea    0x2a24(%rip),%r12        # 404247 <_IO_stdin_used+0x247>
  401823:	48 8b 05 96 5c 00 00 	mov    0x5c96(%rip),%rax        # 4074c0 <stdin@GLIBC_2.2.5>
  40182a:	48 89 05 df 5c 00 00 	mov    %rax,0x5cdf(%rip)        # 407510 <infile>
  401831:	41 bd 00 00 00 00    	mov    $0x0,%r13d
  401837:	41 be 00 00 00 00    	mov    $0x0,%r14d
  40183d:	e9 8d 00 00 00       	jmp    4018cf <main+0x136>
  401842:	48 c7 c6 91 28 40 00 	mov    $0x402891,%rsi
  401849:	bf 0e 00 00 00       	mov    $0xe,%edi
  40184e:	e8 dd fa ff ff       	call   401330 <signal@plt>
  401853:	bf 02 00 00 00       	mov    $0x2,%edi
  401858:	e8 93 fa ff ff       	call   4012f0 <alarm@plt>
  40185d:	4c 8d 25 d9 29 00 00 	lea    0x29d9(%rip),%r12        # 40423d <_IO_stdin_used+0x23d>
  401864:	eb bd                	jmp    401823 <main+0x8a>
  401866:	48 8b 3b             	mov    (%rbx),%rdi
  401869:	e8 e8 fc ff ff       	call   401556 <usage>
  40186e:	48 8d 35 9f 2a 00 00 	lea    0x2a9f(%rip),%rsi        # 404314 <_IO_stdin_used+0x314>
  401875:	48 8b 3d 4c 5c 00 00 	mov    0x5c4c(%rip),%rdi        # 4074c8 <optarg@GLIBC_2.2.5>
  40187c:	e8 4f fb ff ff       	call   4013d0 <fopen@plt>
  401881:	48 89 05 88 5c 00 00 	mov    %rax,0x5c88(%rip)        # 407510 <infile>
  401888:	48 85 c0             	test   %rax,%rax
  40188b:	75 42                	jne    4018cf <main+0x136>
  40188d:	48 8b 0d 34 5c 00 00 	mov    0x5c34(%rip),%rcx        # 4074c8 <optarg@GLIBC_2.2.5>
  401894:	48 8d 15 b1 29 00 00 	lea    0x29b1(%rip),%rdx        # 40424c <_IO_stdin_used+0x24c>
  40189b:	be 01 00 00 00       	mov    $0x1,%esi
  4018a0:	48 8b 3d 39 5c 00 00 	mov    0x5c39(%rip),%rdi        # 4074e0 <stderr@GLIBC_2.2.5>
  4018a7:	e8 84 fb ff ff       	call   401430 <__fprintf_chk@plt>
  4018ac:	b8 01 00 00 00       	mov    $0x1,%eax
  4018b1:	e9 2c 01 00 00       	jmp    4019e2 <main+0x249>
  4018b6:	ba 10 00 00 00       	mov    $0x10,%edx
  4018bb:	be 00 00 00 00       	mov    $0x0,%esi
  4018c0:	48 8b 3d 01 5c 00 00 	mov    0x5c01(%rip),%rdi        # 4074c8 <optarg@GLIBC_2.2.5>
  4018c7:	e8 24 fb ff ff       	call   4013f0 <strtoul@plt>
  4018cc:	41 89 c6             	mov    %eax,%r14d
  4018cf:	4c 89 e2             	mov    %r12,%rdx
  4018d2:	48 89 de             	mov    %rbx,%rsi
  4018d5:	89 ef                	mov    %ebp,%edi
  4018d7:	e8 04 fb ff ff       	call   4013e0 <getopt@plt>
  4018dc:	3c ff                	cmp    $0xff,%al
  4018de:	74 7b                	je     40195b <main+0x1c2>
  4018e0:	0f be c8             	movsbl %al,%ecx
  4018e3:	83 e8 61             	sub    $0x61,%eax
  4018e6:	3c 14                	cmp    $0x14,%al
  4018e8:	77 51                	ja     40193b <main+0x1a2>
  4018ea:	0f b6 c0             	movzbl %al,%eax
  4018ed:	48 8d 15 98 29 00 00 	lea    0x2998(%rip),%rdx        # 40428c <_IO_stdin_used+0x28c>
  4018f4:	48 63 04 82          	movslq (%rdx,%rax,4),%rax
  4018f8:	48 01 d0             	add    %rdx,%rax
  4018fb:	3e ff e0             	notrack jmp *%rax
  4018fe:	ba 0a 00 00 00       	mov    $0xa,%edx
  401903:	be 00 00 00 00       	mov    $0x0,%esi
  401908:	48 8b 3d b9 5b 00 00 	mov    0x5bb9(%rip),%rdi        # 4074c8 <optarg@GLIBC_2.2.5>
  40190f:	e8 4c fa ff ff       	call   401360 <strtol@plt>
  401914:	41 89 c5             	mov    %eax,%r13d
  401917:	eb b6                	jmp    4018cf <main+0x136>
  401919:	c7 05 7d 5b 00 00 00 	movl   $0x0,0x5b7d(%rip)        # 4074a0 <notify>
  401920:	00 00 00 
  401923:	eb aa                	jmp    4018cf <main+0x136>
  401925:	48 89 e7             	mov    %rsp,%rdi
  401928:	ba 50 00 00 00       	mov    $0x50,%edx
  40192d:	48 8b 35 94 5b 00 00 	mov    0x5b94(%rip),%rsi        # 4074c8 <optarg@GLIBC_2.2.5>
  401934:	e8 47 f9 ff ff       	call   401280 <strncpy@plt>
  401939:	eb 94                	jmp    4018cf <main+0x136>
  40193b:	89 ca                	mov    %ecx,%edx
  40193d:	48 8d 35 25 29 00 00 	lea    0x2925(%rip),%rsi        # 404269 <_IO_stdin_used+0x269>
  401944:	bf 01 00 00 00       	mov    $0x1,%edi
  401949:	b8 00 00 00 00       	mov    $0x0,%eax
  40194e:	e8 6d fa ff ff       	call   4013c0 <__printf_chk@plt>
  401953:	48 8b 3b             	mov    (%rbx),%rdi
  401956:	e8 fb fb ff ff       	call   401556 <usage>
  40195b:	be 01 00 00 00       	mov    $0x1,%esi
  401960:	44 89 ef             	mov    %r13d,%edi
  401963:	e8 8c fc ff ff       	call   4015f4 <initialize_target>
  401968:	83 3d b9 5b 00 00 00 	cmpl   $0x0,0x5bb9(%rip)        # 407528 <is_checker>
  40196f:	74 3f                	je     4019b0 <main+0x217>
  401971:	44 39 35 a8 5b 00 00 	cmp    %r14d,0x5ba8(%rip)        # 407520 <authkey>
  401978:	75 13                	jne    40198d <main+0x1f4>
  40197a:	48 89 e7             	mov    %rsp,%rdi
  40197d:	48 8b 35 dc 57 00 00 	mov    0x57dc(%rip),%rsi        # 407160 <user_id>
  401984:	e8 97 f9 ff ff       	call   401320 <strcmp@plt>
  401989:	85 c0                	test   %eax,%eax
  40198b:	74 23                	je     4019b0 <main+0x217>
  40198d:	44 89 f2             	mov    %r14d,%edx
  401990:	48 8d 35 f1 27 00 00 	lea    0x27f1(%rip),%rsi        # 404188 <_IO_stdin_used+0x188>
  401997:	bf 01 00 00 00       	mov    $0x1,%edi
  40199c:	b8 00 00 00 00       	mov    $0x0,%eax
  4019a1:	e8 1a fa ff ff       	call   4013c0 <__printf_chk@plt>
  4019a6:	b8 00 00 00 00       	mov    $0x0,%eax
  4019ab:	e8 1c 0a 00 00       	call   4023cc <check_fail>
  4019b0:	8b 15 6e 5b 00 00    	mov    0x5b6e(%rip),%edx        # 407524 <cookie>
  4019b6:	48 8d 35 bf 28 00 00 	lea    0x28bf(%rip),%rsi        # 40427c <_IO_stdin_used+0x27c>
  4019bd:	bf 01 00 00 00       	mov    $0x1,%edi
  4019c2:	b8 00 00 00 00       	mov    $0x0,%eax
  4019c7:	e8 f4 f9 ff ff       	call   4013c0 <__printf_chk@plt>
  4019cc:	be 00 00 00 00       	mov    $0x0,%esi
  4019d1:	48 8b 3d d0 5a 00 00 	mov    0x5ad0(%rip),%rdi        # 4074a8 <buf_offset>
  4019d8:	e8 6b 0f 00 00       	call   402948 <launch>
  4019dd:	b8 00 00 00 00       	mov    $0x0,%eax
  4019e2:	48 8b 4c 24 58       	mov    0x58(%rsp),%rcx
  4019e7:	64 48 33 0c 25 28 00 	xor    %fs:0x28,%rcx
  4019ee:	00 00 
  4019f0:	75 0d                	jne    4019ff <main+0x266>
  4019f2:	48 83 c4 60          	add    $0x60,%rsp
  4019f6:	5b                   	pop    %rbx
  4019f7:	5d                   	pop    %rbp
  4019f8:	41 5c                	pop    %r12
  4019fa:	41 5d                	pop    %r13
  4019fc:	41 5e                	pop    %r14
  4019fe:	c3                   	ret    
  4019ff:	e8 ea 0e 00 00       	call   4028ee <__stack_chk_fail>

0000000000401a04 <scramble>:
  401a04:	f3 0f 1e fa          	endbr64 
  401a08:	48 83 ec 38          	sub    $0x38,%rsp
  401a0c:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  401a13:	00 00 
  401a15:	48 89 44 24 28       	mov    %rax,0x28(%rsp)
  401a1a:	31 c0                	xor    %eax,%eax
  401a1c:	83 f8 09             	cmp    $0x9,%eax
  401a1f:	77 12                	ja     401a33 <scramble+0x2f>
  401a21:	69 d0 3c d8 00 00    	imul   $0xd83c,%eax,%edx
  401a27:	01 fa                	add    %edi,%edx
  401a29:	89 c1                	mov    %eax,%ecx
  401a2b:	89 14 8c             	mov    %edx,(%rsp,%rcx,4)
  401a2e:	83 c0 01             	add    $0x1,%eax
  401a31:	eb e9                	jmp    401a1c <scramble+0x18>
  401a33:	8b 44 24 24          	mov    0x24(%rsp),%eax
  401a37:	69 c0 5b 50 00 00    	imul   $0x505b,%eax,%eax
  401a3d:	89 44 24 24          	mov    %eax,0x24(%rsp)
  401a41:	8b 44 24 14          	mov    0x14(%rsp),%eax
  401a45:	69 c0 0a ff 00 00    	imul   $0xff0a,%eax,%eax
  401a4b:	89 44 24 14          	mov    %eax,0x14(%rsp)
  401a4f:	8b 44 24 10          	mov    0x10(%rsp),%eax
  401a53:	69 c0 41 f9 00 00    	imul   $0xf941,%eax,%eax
  401a59:	89 44 24 10          	mov    %eax,0x10(%rsp)
  401a5d:	8b 44 24 10          	mov    0x10(%rsp),%eax
  401a61:	69 c0 7a 58 00 00    	imul   $0x587a,%eax,%eax
  401a67:	89 44 24 10          	mov    %eax,0x10(%rsp)
  401a6b:	8b 44 24 18          	mov    0x18(%rsp),%eax
  401a6f:	69 c0 fd 16 00 00    	imul   $0x16fd,%eax,%eax
  401a75:	89 44 24 18          	mov    %eax,0x18(%rsp)
  401a79:	8b 04 24             	mov    (%rsp),%eax
  401a7c:	69 c0 38 8b 00 00    	imul   $0x8b38,%eax,%eax
  401a82:	89 04 24             	mov    %eax,(%rsp)
  401a85:	8b 04 24             	mov    (%rsp),%eax
  401a88:	69 c0 2d 26 00 00    	imul   $0x262d,%eax,%eax
  401a8e:	89 04 24             	mov    %eax,(%rsp)
  401a91:	8b 44 24 20          	mov    0x20(%rsp),%eax
  401a95:	69 c0 fc 2f 00 00    	imul   $0x2ffc,%eax,%eax
  401a9b:	89 44 24 20          	mov    %eax,0x20(%rsp)
  401a9f:	8b 04 24             	mov    (%rsp),%eax
  401aa2:	69 c0 81 8e 00 00    	imul   $0x8e81,%eax,%eax
  401aa8:	89 04 24             	mov    %eax,(%rsp)
  401aab:	8b 44 24 0c          	mov    0xc(%rsp),%eax
  401aaf:	69 c0 4f e8 00 00    	imul   $0xe84f,%eax,%eax
  401ab5:	89 44 24 0c          	mov    %eax,0xc(%rsp)
  401ab9:	8b 44 24 14          	mov    0x14(%rsp),%eax
  401abd:	69 c0 62 42 00 00    	imul   $0x4262,%eax,%eax
  401ac3:	89 44 24 14          	mov    %eax,0x14(%rsp)
  401ac7:	8b 44 24 18          	mov    0x18(%rsp),%eax
  401acb:	69 c0 d4 69 00 00    	imul   $0x69d4,%eax,%eax
  401ad1:	89 44 24 18          	mov    %eax,0x18(%rsp)
  401ad5:	8b 44 24 18          	mov    0x18(%rsp),%eax
  401ad9:	69 c0 11 d3 00 00    	imul   $0xd311,%eax,%eax
  401adf:	89 44 24 18          	mov    %eax,0x18(%rsp)
  401ae3:	8b 44 24 04          	mov    0x4(%rsp),%eax
  401ae7:	69 c0 7d 6f 00 00    	imul   $0x6f7d,%eax,%eax
  401aed:	89 44 24 04          	mov    %eax,0x4(%rsp)
  401af1:	8b 44 24 14          	mov    0x14(%rsp),%eax
  401af5:	69 c0 f3 d7 00 00    	imul   $0xd7f3,%eax,%eax
  401afb:	89 44 24 14          	mov    %eax,0x14(%rsp)
  401aff:	8b 44 24 18          	mov    0x18(%rsp),%eax
  401b03:	69 c0 33 7b 00 00    	imul   $0x7b33,%eax,%eax
  401b09:	89 44 24 18          	mov    %eax,0x18(%rsp)
  401b0d:	8b 44 24 0c          	mov    0xc(%rsp),%eax
  401b11:	69 c0 18 3d 00 00    	imul   $0x3d18,%eax,%eax
  401b17:	89 44 24 0c          	mov    %eax,0xc(%rsp)
  401b1b:	8b 04 24             	mov    (%rsp),%eax
  401b1e:	69 c0 a1 4d 00 00    	imul   $0x4da1,%eax,%eax
  401b24:	89 04 24             	mov    %eax,(%rsp)
  401b27:	8b 44 24 1c          	mov    0x1c(%rsp),%eax
  401b2b:	69 c0 40 f9 00 00    	imul   $0xf940,%eax,%eax
  401b31:	89 44 24 1c          	mov    %eax,0x1c(%rsp)
  401b35:	8b 44 24 24          	mov    0x24(%rsp),%eax
  401b39:	69 c0 04 e9 00 00    	imul   $0xe904,%eax,%eax
  401b3f:	89 44 24 24          	mov    %eax,0x24(%rsp)
  401b43:	8b 44 24 14          	mov    0x14(%rsp),%eax
  401b47:	69 c0 91 30 00 00    	imul   $0x3091,%eax,%eax
  401b4d:	89 44 24 14          	mov    %eax,0x14(%rsp)
  401b51:	8b 44 24 04          	mov    0x4(%rsp),%eax
  401b55:	69 c0 be f7 00 00    	imul   $0xf7be,%eax,%eax
  401b5b:	89 44 24 04          	mov    %eax,0x4(%rsp)
  401b5f:	8b 44 24 20          	mov    0x20(%rsp),%eax
  401b63:	69 c0 45 27 00 00    	imul   $0x2745,%eax,%eax
  401b69:	89 44 24 20          	mov    %eax,0x20(%rsp)
  401b6d:	8b 44 24 20          	mov    0x20(%rsp),%eax
  401b71:	69 c0 f9 2f 00 00    	imul   $0x2ff9,%eax,%eax
  401b77:	89 44 24 20          	mov    %eax,0x20(%rsp)
  401b7b:	8b 44 24 04          	mov    0x4(%rsp),%eax
  401b7f:	69 c0 04 fb 00 00    	imul   $0xfb04,%eax,%eax
  401b85:	89 44 24 04          	mov    %eax,0x4(%rsp)
  401b89:	8b 04 24             	mov    (%rsp),%eax
  401b8c:	69 c0 39 d1 00 00    	imul   $0xd139,%eax,%eax
  401b92:	89 04 24             	mov    %eax,(%rsp)
  401b95:	8b 44 24 04          	mov    0x4(%rsp),%eax
  401b99:	69 c0 86 fc 00 00    	imul   $0xfc86,%eax,%eax
  401b9f:	89 44 24 04          	mov    %eax,0x4(%rsp)
  401ba3:	8b 44 24 1c          	mov    0x1c(%rsp),%eax
  401ba7:	69 c0 b8 43 00 00    	imul   $0x43b8,%eax,%eax
  401bad:	89 44 24 1c          	mov    %eax,0x1c(%rsp)
  401bb1:	8b 44 24 08          	mov    0x8(%rsp),%eax
  401bb5:	69 c0 7f a4 00 00    	imul   $0xa47f,%eax,%eax
  401bbb:	89 44 24 08          	mov    %eax,0x8(%rsp)
  401bbf:	8b 44 24 08          	mov    0x8(%rsp),%eax
  401bc3:	69 c0 8e 72 00 00    	imul   $0x728e,%eax,%eax
  401bc9:	89 44 24 08          	mov    %eax,0x8(%rsp)
  401bcd:	8b 44 24 1c          	mov    0x1c(%rsp),%eax
  401bd1:	69 c0 c3 98 00 00    	imul   $0x98c3,%eax,%eax
  401bd7:	89 44 24 1c          	mov    %eax,0x1c(%rsp)
  401bdb:	8b 44 24 10          	mov    0x10(%rsp),%eax
  401bdf:	69 c0 c0 a4 00 00    	imul   $0xa4c0,%eax,%eax
  401be5:	89 44 24 10          	mov    %eax,0x10(%rsp)
  401be9:	8b 44 24 0c          	mov    0xc(%rsp),%eax
  401bed:	69 c0 ff 67 00 00    	imul   $0x67ff,%eax,%eax
  401bf3:	89 44 24 0c          	mov    %eax,0xc(%rsp)
  401bf7:	8b 44 24 0c          	mov    0xc(%rsp),%eax
  401bfb:	69 c0 36 0c 00 00    	imul   $0xc36,%eax,%eax
  401c01:	89 44 24 0c          	mov    %eax,0xc(%rsp)
  401c05:	8b 44 24 08          	mov    0x8(%rsp),%eax
  401c09:	69 c0 7c 98 00 00    	imul   $0x987c,%eax,%eax
  401c0f:	89 44 24 08          	mov    %eax,0x8(%rsp)
  401c13:	8b 44 24 20          	mov    0x20(%rsp),%eax
  401c17:	69 c0 7c 71 00 00    	imul   $0x717c,%eax,%eax
  401c1d:	89 44 24 20          	mov    %eax,0x20(%rsp)
  401c21:	8b 44 24 10          	mov    0x10(%rsp),%eax
  401c25:	69 c0 77 69 00 00    	imul   $0x6977,%eax,%eax
  401c2b:	89 44 24 10          	mov    %eax,0x10(%rsp)
  401c2f:	8b 44 24 18          	mov    0x18(%rsp),%eax
  401c33:	69 c0 cd 1f 00 00    	imul   $0x1fcd,%eax,%eax
  401c39:	89 44 24 18          	mov    %eax,0x18(%rsp)
  401c3d:	8b 04 24             	mov    (%rsp),%eax
  401c40:	69 c0 f4 90 00 00    	imul   $0x90f4,%eax,%eax
  401c46:	89 04 24             	mov    %eax,(%rsp)
  401c49:	8b 44 24 10          	mov    0x10(%rsp),%eax
  401c4d:	69 c0 82 46 00 00    	imul   $0x4682,%eax,%eax
  401c53:	89 44 24 10          	mov    %eax,0x10(%rsp)
  401c57:	8b 44 24 24          	mov    0x24(%rsp),%eax
  401c5b:	69 c0 0f 68 00 00    	imul   $0x680f,%eax,%eax
  401c61:	89 44 24 24          	mov    %eax,0x24(%rsp)
  401c65:	8b 44 24 0c          	mov    0xc(%rsp),%eax
  401c69:	69 c0 5f c9 00 00    	imul   $0xc95f,%eax,%eax
  401c6f:	89 44 24 0c          	mov    %eax,0xc(%rsp)
  401c73:	8b 44 24 14          	mov    0x14(%rsp),%eax
  401c77:	69 c0 c8 52 00 00    	imul   $0x52c8,%eax,%eax
  401c7d:	89 44 24 14          	mov    %eax,0x14(%rsp)
  401c81:	8b 44 24 24          	mov    0x24(%rsp),%eax
  401c85:	69 c0 2c 34 00 00    	imul   $0x342c,%eax,%eax
  401c8b:	89 44 24 24          	mov    %eax,0x24(%rsp)
  401c8f:	8b 44 24 08          	mov    0x8(%rsp),%eax
  401c93:	69 c0 4d c0 00 00    	imul   $0xc04d,%eax,%eax
  401c99:	89 44 24 08          	mov    %eax,0x8(%rsp)
  401c9d:	8b 44 24 1c          	mov    0x1c(%rsp),%eax
  401ca1:	69 c0 b9 73 00 00    	imul   $0x73b9,%eax,%eax
  401ca7:	89 44 24 1c          	mov    %eax,0x1c(%rsp)
  401cab:	8b 44 24 0c          	mov    0xc(%rsp),%eax
  401caf:	69 c0 7c 94 00 00    	imul   $0x947c,%eax,%eax
  401cb5:	89 44 24 0c          	mov    %eax,0xc(%rsp)
  401cb9:	8b 44 24 14          	mov    0x14(%rsp),%eax
  401cbd:	69 c0 ed 2e 00 00    	imul   $0x2eed,%eax,%eax
  401cc3:	89 44 24 14          	mov    %eax,0x14(%rsp)
  401cc7:	8b 44 24 1c          	mov    0x1c(%rsp),%eax
  401ccb:	69 c0 da 0a 00 00    	imul   $0xada,%eax,%eax
  401cd1:	89 44 24 1c          	mov    %eax,0x1c(%rsp)
  401cd5:	8b 44 24 04          	mov    0x4(%rsp),%eax
  401cd9:	69 c0 ba 5d 00 00    	imul   $0x5dba,%eax,%eax
  401cdf:	89 44 24 04          	mov    %eax,0x4(%rsp)
  401ce3:	8b 44 24 08          	mov    0x8(%rsp),%eax
  401ce7:	69 c0 5d 30 00 00    	imul   $0x305d,%eax,%eax
  401ced:	89 44 24 08          	mov    %eax,0x8(%rsp)
  401cf1:	8b 44 24 24          	mov    0x24(%rsp),%eax
  401cf5:	69 c0 65 6c 00 00    	imul   $0x6c65,%eax,%eax
  401cfb:	89 44 24 24          	mov    %eax,0x24(%rsp)
  401cff:	8b 04 24             	mov    (%rsp),%eax
  401d02:	69 c0 71 38 00 00    	imul   $0x3871,%eax,%eax
  401d08:	89 04 24             	mov    %eax,(%rsp)
  401d0b:	8b 44 24 14          	mov    0x14(%rsp),%eax
  401d0f:	69 c0 91 2a 00 00    	imul   $0x2a91,%eax,%eax
  401d15:	89 44 24 14          	mov    %eax,0x14(%rsp)
  401d19:	8b 44 24 08          	mov    0x8(%rsp),%eax
  401d1d:	69 c0 f8 db 00 00    	imul   $0xdbf8,%eax,%eax
  401d23:	89 44 24 08          	mov    %eax,0x8(%rsp)
  401d27:	8b 44 24 18          	mov    0x18(%rsp),%eax
  401d2b:	69 c0 5e 55 00 00    	imul   $0x555e,%eax,%eax
  401d31:	89 44 24 18          	mov    %eax,0x18(%rsp)
  401d35:	8b 44 24 24          	mov    0x24(%rsp),%eax
  401d39:	69 c0 cf 88 00 00    	imul   $0x88cf,%eax,%eax
  401d3f:	89 44 24 24          	mov    %eax,0x24(%rsp)
  401d43:	8b 44 24 10          	mov    0x10(%rsp),%eax
  401d47:	69 c0 9d a8 00 00    	imul   $0xa89d,%eax,%eax
  401d4d:	89 44 24 10          	mov    %eax,0x10(%rsp)
  401d51:	8b 44 24 08          	mov    0x8(%rsp),%eax
  401d55:	69 c0 d4 2b 00 00    	imul   $0x2bd4,%eax,%eax
  401d5b:	89 44 24 08          	mov    %eax,0x8(%rsp)
  401d5f:	8b 44 24 10          	mov    0x10(%rsp),%eax
  401d63:	69 c0 df d2 00 00    	imul   $0xd2df,%eax,%eax
  401d69:	89 44 24 10          	mov    %eax,0x10(%rsp)
  401d6d:	8b 44 24 1c          	mov    0x1c(%rsp),%eax
  401d71:	69 c0 84 83 00 00    	imul   $0x8384,%eax,%eax
  401d77:	89 44 24 1c          	mov    %eax,0x1c(%rsp)
  401d7b:	8b 44 24 20          	mov    0x20(%rsp),%eax
  401d7f:	69 c0 33 45 00 00    	imul   $0x4533,%eax,%eax
  401d85:	89 44 24 20          	mov    %eax,0x20(%rsp)
  401d89:	8b 44 24 10          	mov    0x10(%rsp),%eax
  401d8d:	69 c0 12 5f 00 00    	imul   $0x5f12,%eax,%eax
  401d93:	89 44 24 10          	mov    %eax,0x10(%rsp)
  401d97:	8b 44 24 24          	mov    0x24(%rsp),%eax
  401d9b:	69 c0 7b 14 00 00    	imul   $0x147b,%eax,%eax
  401da1:	89 44 24 24          	mov    %eax,0x24(%rsp)
  401da5:	8b 44 24 0c          	mov    0xc(%rsp),%eax
  401da9:	69 c0 43 af 00 00    	imul   $0xaf43,%eax,%eax
  401daf:	89 44 24 0c          	mov    %eax,0xc(%rsp)
  401db3:	8b 44 24 08          	mov    0x8(%rsp),%eax
  401db7:	69 c0 44 0d 00 00    	imul   $0xd44,%eax,%eax
  401dbd:	89 44 24 08          	mov    %eax,0x8(%rsp)
  401dc1:	8b 44 24 04          	mov    0x4(%rsp),%eax
  401dc5:	69 c0 6c 41 00 00    	imul   $0x416c,%eax,%eax
  401dcb:	89 44 24 04          	mov    %eax,0x4(%rsp)
  401dcf:	8b 44 24 1c          	mov    0x1c(%rsp),%eax
  401dd3:	69 c0 75 79 00 00    	imul   $0x7975,%eax,%eax
  401dd9:	89 44 24 1c          	mov    %eax,0x1c(%rsp)
  401ddd:	8b 44 24 24          	mov    0x24(%rsp),%eax
  401de1:	69 c0 db 05 00 00    	imul   $0x5db,%eax,%eax
  401de7:	89 44 24 24          	mov    %eax,0x24(%rsp)
  401deb:	8b 44 24 0c          	mov    0xc(%rsp),%eax
  401def:	69 c0 42 43 00 00    	imul   $0x4342,%eax,%eax
  401df5:	89 44 24 0c          	mov    %eax,0xc(%rsp)
  401df9:	8b 44 24 18          	mov    0x18(%rsp),%eax
  401dfd:	69 c0 1b 15 00 00    	imul   $0x151b,%eax,%eax
  401e03:	89 44 24 18          	mov    %eax,0x18(%rsp)
  401e07:	8b 44 24 18          	mov    0x18(%rsp),%eax
  401e0b:	69 c0 db 25 00 00    	imul   $0x25db,%eax,%eax
  401e11:	89 44 24 18          	mov    %eax,0x18(%rsp)
  401e15:	8b 44 24 04          	mov    0x4(%rsp),%eax
  401e19:	69 c0 5d b7 00 00    	imul   $0xb75d,%eax,%eax
  401e1f:	89 44 24 04          	mov    %eax,0x4(%rsp)
  401e23:	b8 00 00 00 00       	mov    $0x0,%eax
  401e28:	ba 00 00 00 00       	mov    $0x0,%edx
  401e2d:	83 f8 09             	cmp    $0x9,%eax
  401e30:	77 0c                	ja     401e3e <scramble+0x43a>
  401e32:	89 c1                	mov    %eax,%ecx
  401e34:	8b 0c 8c             	mov    (%rsp,%rcx,4),%ecx
  401e37:	01 ca                	add    %ecx,%edx
  401e39:	83 c0 01             	add    $0x1,%eax
  401e3c:	eb ef                	jmp    401e2d <scramble+0x429>
  401e3e:	48 8b 44 24 28       	mov    0x28(%rsp),%rax
  401e43:	64 48 33 04 25 28 00 	xor    %fs:0x28,%rax
  401e4a:	00 00 
  401e4c:	75 07                	jne    401e55 <scramble+0x451>
  401e4e:	89 d0                	mov    %edx,%eax
  401e50:	48 83 c4 38          	add    $0x38,%rsp
  401e54:	c3                   	ret    
  401e55:	e8 94 0a 00 00       	call   4028ee <__stack_chk_fail>

0000000000401e5a <getbuf>:
  401e5a:	f3 0f 1e fa          	endbr64 
  401e5e:	48 83 ec 18          	sub    $0x18,%rsp
  401e62:	48 89 e7             	mov    %rsp,%rdi
  401e65:	e8 a0 05 00 00       	call   40240a <Gets>
  401e6a:	b8 01 00 00 00       	mov    $0x1,%eax
  401e6f:	48 83 c4 18          	add    $0x18,%rsp
  401e73:	c3                   	ret    

0000000000401e74 <touch1>:
  401e74:	f3 0f 1e fa          	endbr64 
  401e78:	50                   	push   %rax
  401e79:	58                   	pop    %rax
  401e7a:	48 83 ec 08          	sub    $0x8,%rsp
  401e7e:	c7 05 94 56 00 00 01 	movl   $0x1,0x5694(%rip)        # 40751c <vlevel>
  401e85:	00 00 00 
  401e88:	48 8d 3d 87 24 00 00 	lea    0x2487(%rip),%rdi        # 404316 <_IO_stdin_used+0x316>
  401e8f:	e8 1c f4 ff ff       	call   4012b0 <puts@plt>
  401e94:	bf 01 00 00 00       	mov    $0x1,%edi
  401e99:	e8 de 07 00 00       	call   40267c <validate>
  401e9e:	bf 00 00 00 00       	mov    $0x0,%edi
  401ea3:	e8 68 f5 ff ff       	call   401410 <exit@plt>

0000000000401ea8 <touch2>:
  401ea8:	f3 0f 1e fa          	endbr64 
  401eac:	50                   	push   %rax
  401ead:	58                   	pop    %rax
  401eae:	48 83 ec 08          	sub    $0x8,%rsp
  401eb2:	89 fa                	mov    %edi,%edx
  401eb4:	c7 05 5e 56 00 00 02 	movl   $0x2,0x565e(%rip)        # 40751c <vlevel>
  401ebb:	00 00 00 
  401ebe:	39 3d 60 56 00 00    	cmp    %edi,0x5660(%rip)        # 407524 <cookie>
  401ec4:	74 2a                	je     401ef0 <touch2+0x48>
  401ec6:	48 8d 35 93 24 00 00 	lea    0x2493(%rip),%rsi        # 404360 <_IO_stdin_used+0x360>
  401ecd:	bf 01 00 00 00       	mov    $0x1,%edi
  401ed2:	b8 00 00 00 00       	mov    $0x0,%eax
  401ed7:	e8 e4 f4 ff ff       	call   4013c0 <__printf_chk@plt>
  401edc:	bf 02 00 00 00       	mov    $0x2,%edi
  401ee1:	e8 71 08 00 00       	call   402757 <fail>
  401ee6:	bf 00 00 00 00       	mov    $0x0,%edi
  401eeb:	e8 20 f5 ff ff       	call   401410 <exit@plt>
  401ef0:	48 8d 35 41 24 00 00 	lea    0x2441(%rip),%rsi        # 404338 <_IO_stdin_used+0x338>
  401ef7:	bf 01 00 00 00       	mov    $0x1,%edi
  401efc:	b8 00 00 00 00       	mov    $0x0,%eax
  401f01:	e8 ba f4 ff ff       	call   4013c0 <__printf_chk@plt>
  401f06:	bf 02 00 00 00       	mov    $0x2,%edi
  401f0b:	e8 6c 07 00 00       	call   40267c <validate>
  401f10:	eb d4                	jmp    401ee6 <touch2+0x3e>

0000000000401f12 <hexmatch>:
  401f12:	f3 0f 1e fa          	endbr64 
  401f16:	41 55                	push   %r13
  401f18:	41 54                	push   %r12
  401f1a:	55                   	push   %rbp
  401f1b:	53                   	push   %rbx
  401f1c:	48 81 ec 88 00 00 00 	sub    $0x88,%rsp
  401f23:	89 fd                	mov    %edi,%ebp
  401f25:	48 89 f3             	mov    %rsi,%rbx
  401f28:	41 bc 28 00 00 00    	mov    $0x28,%r12d
  401f2e:	64 49 8b 04 24       	mov    %fs:(%r12),%rax
  401f33:	48 89 44 24 78       	mov    %rax,0x78(%rsp)
  401f38:	31 c0                	xor    %eax,%eax
  401f3a:	e8 51 f4 ff ff       	call   401390 <random@plt>
  401f3f:	48 89 c1             	mov    %rax,%rcx
  401f42:	48 ba 0b d7 a3 70 3d 	movabs $0xa3d70a3d70a3d70b,%rdx
  401f49:	0a d7 a3 
  401f4c:	48 f7 ea             	imul   %rdx
  401f4f:	48 01 ca             	add    %rcx,%rdx
  401f52:	48 c1 fa 06          	sar    $0x6,%rdx
  401f56:	48 89 c8             	mov    %rcx,%rax
  401f59:	48 c1 f8 3f          	sar    $0x3f,%rax
  401f5d:	48 29 c2             	sub    %rax,%rdx
  401f60:	48 8d 04 92          	lea    (%rdx,%rdx,4),%rax
  401f64:	48 8d 04 80          	lea    (%rax,%rax,4),%rax
  401f68:	48 c1 e0 02          	shl    $0x2,%rax
  401f6c:	48 29 c1             	sub    %rax,%rcx
  401f6f:	4c 8d 2c 0c          	lea    (%rsp,%rcx,1),%r13
  401f73:	41 89 e8             	mov    %ebp,%r8d
  401f76:	48 8d 0d b6 23 00 00 	lea    0x23b6(%rip),%rcx        # 404333 <_IO_stdin_used+0x333>
  401f7d:	48 c7 c2 ff ff ff ff 	mov    $0xffffffffffffffff,%rdx
  401f84:	be 01 00 00 00       	mov    $0x1,%esi
  401f89:	4c 89 ef             	mov    %r13,%rdi
  401f8c:	b8 00 00 00 00       	mov    $0x0,%eax
  401f91:	e8 ba f4 ff ff       	call   401450 <__sprintf_chk@plt>
  401f96:	ba 09 00 00 00       	mov    $0x9,%edx
  401f9b:	4c 89 ee             	mov    %r13,%rsi
  401f9e:	48 89 df             	mov    %rbx,%rdi
  401fa1:	e8 ea f2 ff ff       	call   401290 <strncmp@plt>
  401fa6:	85 c0                	test   %eax,%eax
  401fa8:	0f 94 c0             	sete   %al
  401fab:	48 8b 5c 24 78       	mov    0x78(%rsp),%rbx
  401fb0:	64 49 33 1c 24       	xor    %fs:(%r12),%rbx
  401fb5:	75 11                	jne    401fc8 <hexmatch+0xb6>
  401fb7:	0f b6 c0             	movzbl %al,%eax
  401fba:	48 81 c4 88 00 00 00 	add    $0x88,%rsp
  401fc1:	5b                   	pop    %rbx
  401fc2:	5d                   	pop    %rbp
  401fc3:	41 5c                	pop    %r12
  401fc5:	41 5d                	pop    %r13
  401fc7:	c3                   	ret    
  401fc8:	e8 21 09 00 00       	call   4028ee <__stack_chk_fail>

0000000000401fcd <touch3>:
  401fcd:	f3 0f 1e fa          	endbr64 
  401fd1:	53                   	push   %rbx
  401fd2:	48 89 fb             	mov    %rdi,%rbx
  401fd5:	c7 05 3d 55 00 00 03 	movl   $0x3,0x553d(%rip)        # 40751c <vlevel>
  401fdc:	00 00 00 
  401fdf:	48 89 fe             	mov    %rdi,%rsi
  401fe2:	8b 3d 3c 55 00 00    	mov    0x553c(%rip),%edi        # 407524 <cookie>
  401fe8:	e8 25 ff ff ff       	call   401f12 <hexmatch>
  401fed:	85 c0                	test   %eax,%eax
  401fef:	74 2d                	je     40201e <touch3+0x51>
  401ff1:	48 89 da             	mov    %rbx,%rdx
  401ff4:	48 8d 35 8d 23 00 00 	lea    0x238d(%rip),%rsi        # 404388 <_IO_stdin_used+0x388>
  401ffb:	bf 01 00 00 00       	mov    $0x1,%edi
  402000:	b8 00 00 00 00       	mov    $0x0,%eax
  402005:	e8 b6 f3 ff ff       	call   4013c0 <__printf_chk@plt>
  40200a:	bf 03 00 00 00       	mov    $0x3,%edi
  40200f:	e8 68 06 00 00       	call   40267c <validate>
  402014:	bf 00 00 00 00       	mov    $0x0,%edi
  402019:	e8 f2 f3 ff ff       	call   401410 <exit@plt>
  40201e:	48 89 da             	mov    %rbx,%rdx
  402021:	48 8d 35 88 23 00 00 	lea    0x2388(%rip),%rsi        # 4043b0 <_IO_stdin_used+0x3b0>
  402028:	bf 01 00 00 00       	mov    $0x1,%edi
  40202d:	b8 00 00 00 00       	mov    $0x0,%eax
  402032:	e8 89 f3 ff ff       	call   4013c0 <__printf_chk@plt>
  402037:	bf 03 00 00 00       	mov    $0x3,%edi
  40203c:	e8 16 07 00 00       	call   402757 <fail>
  402041:	eb d1                	jmp    402014 <touch3+0x47>

0000000000402043 <test>:
  402043:	f3 0f 1e fa          	endbr64 
  402047:	48 83 ec 08          	sub    $0x8,%rsp
  40204b:	b8 00 00 00 00       	mov    $0x0,%eax
  402050:	e8 05 fe ff ff       	call   401e5a <getbuf>
  402055:	89 c2                	mov    %eax,%edx
  402057:	48 89 e0             	mov    %rsp,%rax
  40205a:	48 83 e0 0f          	and    $0xf,%rax
  40205e:	74 07                	je     402067 <aligned4>
  402060:	b9 00 00 00 00       	mov    $0x0,%ecx
  402065:	eb 05                	jmp    40206c <done4>

0000000000402067 <aligned4>:
  402067:	b9 01 00 00 00       	mov    $0x1,%ecx

000000000040206c <done4>:
  40206c:	85 c9                	test   %ecx,%ecx
  40206e:	75 23                	jne    402093 <done4+0x27>
  402070:	48 83 ec 08          	sub    $0x8,%rsp
  402074:	48 8d 35 5d 23 00 00 	lea    0x235d(%rip),%rsi        # 4043d8 <_IO_stdin_used+0x3d8>
  40207b:	bf 01 00 00 00       	mov    $0x1,%edi
  402080:	b8 00 00 00 00       	mov    $0x0,%eax
  402085:	e8 36 f3 ff ff       	call   4013c0 <__printf_chk@plt>
  40208a:	48 83 c4 08          	add    $0x8,%rsp
  40208e:	48 83 c4 08          	add    $0x8,%rsp
  402092:	c3                   	ret    
  402093:	48 8d 35 3e 23 00 00 	lea    0x233e(%rip),%rsi        # 4043d8 <_IO_stdin_used+0x3d8>
  40209a:	bf 01 00 00 00       	mov    $0x1,%edi
  40209f:	b8 00 00 00 00       	mov    $0x0,%eax
  4020a4:	e8 17 f3 ff ff       	call   4013c0 <__printf_chk@plt>
  4020a9:	eb e3                	jmp    40208e <done4+0x22>

00000000004020ab <test2>:
  4020ab:	f3 0f 1e fa          	endbr64 
  4020af:	48 83 ec 08          	sub    $0x8,%rsp
  4020b3:	b8 00 00 00 00       	mov    $0x0,%eax
  4020b8:	e8 1d 00 00 00       	call   4020da <getbuf_withcanary>
  4020bd:	89 c2                	mov    %eax,%edx
  4020bf:	48 8d 35 3a 23 00 00 	lea    0x233a(%rip),%rsi        # 404400 <_IO_stdin_used+0x400>
  4020c6:	bf 01 00 00 00       	mov    $0x1,%edi
  4020cb:	b8 00 00 00 00       	mov    $0x0,%eax
  4020d0:	e8 eb f2 ff ff       	call   4013c0 <__printf_chk@plt>
  4020d5:	48 83 c4 08          	add    $0x8,%rsp
  4020d9:	c3                   	ret    

00000000004020da <getbuf_withcanary>:
  4020da:	f3 0f 1e fa          	endbr64 
  4020de:	55                   	push   %rbp
  4020df:	48 89 e5             	mov    %rsp,%rbp
  4020e2:	48 81 ec 90 01 00 00 	sub    $0x190,%rsp
  4020e9:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  4020f0:	00 00 
  4020f2:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
  4020f6:	31 c0                	xor    %eax,%eax
  4020f8:	c7 85 74 ff ff ff 00 	movl   $0x0,-0x8c(%rbp)
  4020ff:	00 00 00 
  402102:	8b 85 74 ff ff ff    	mov    -0x8c(%rbp),%eax
  402108:	89 85 70 ff ff ff    	mov    %eax,-0x90(%rbp)
  40210e:	48 8d 85 70 fe ff ff 	lea    -0x190(%rbp),%rax
  402115:	48 89 c7             	mov    %rax,%rdi
  402118:	e8 ed 02 00 00       	call   40240a <Gets>
  40211d:	8b 85 70 ff ff ff    	mov    -0x90(%rbp),%eax
  402123:	48 63 d0             	movslq %eax,%rdx
  402126:	48 8d 85 70 fe ff ff 	lea    -0x190(%rbp),%rax
  40212d:	48 8d 88 08 01 00 00 	lea    0x108(%rax),%rcx
  402134:	48 8d 85 70 fe ff ff 	lea    -0x190(%rbp),%rax
  40213b:	48 89 ce             	mov    %rcx,%rsi
  40213e:	48 89 c7             	mov    %rax,%rdi
  402141:	e8 2a f2 ff ff       	call   401370 <memcpy@plt>
  402146:	8b 85 74 ff ff ff    	mov    -0x8c(%rbp),%eax
  40214c:	48 63 d0             	movslq %eax,%rdx
  40214f:	48 8d 85 70 fe ff ff 	lea    -0x190(%rbp),%rax
  402156:	48 8d 8d 70 fe ff ff 	lea    -0x190(%rbp),%rcx
  40215d:	48 81 c1 08 01 00 00 	add    $0x108,%rcx
  402164:	48 89 c6             	mov    %rax,%rsi
  402167:	48 89 cf             	mov    %rcx,%rdi
  40216a:	e8 01 f2 ff ff       	call   401370 <memcpy@plt>
  40216f:	b8 01 00 00 00       	mov    $0x1,%eax
  402174:	48 8b 55 f8          	mov    -0x8(%rbp),%rdx
  402178:	64 48 2b 14 25 28 00 	sub    %fs:0x28,%rdx
  40217f:	00 00 
  402181:	74 05                	je     402188 <getbuf_withcanary+0xae>
  402183:	e8 66 07 00 00       	call   4028ee <__stack_chk_fail>
  402188:	c9                   	leave  
  402189:	c3                   	ret    

000000000040218a <start_farm>:
  40218a:	f3 0f 1e fa          	endbr64 
  40218e:	b8 01 00 00 00       	mov    $0x1,%eax
  402193:	c3                   	ret    

0000000000402194 <getval_442>:
  402194:	f3 0f 1e fa          	endbr64 
  402198:	b8 48 89 c7 91       	mov    $0x91c78948,%eax
  40219d:	c3                   	ret    

000000000040219e <setval_337>:
  40219e:	f3 0f 1e fa          	endbr64 
  4021a2:	c7 07 48 89 c7 c3    	movl   $0xc3c78948,(%rdi)
  4021a8:	c3                   	ret    

00000000004021a9 <addval_115>:
  4021a9:	f3 0f 1e fa          	endbr64 
  4021ad:	8d 87 48 89 c7 c1    	lea    -0x3e3876b8(%rdi),%eax
  4021b3:	c3                   	ret    

00000000004021b4 <addval_168>:
  4021b4:	f3 0f 1e fa          	endbr64 
  4021b8:	8d 87 0d 92 58 90    	lea    -0x6fa76df3(%rdi),%eax
  4021be:	c3                   	ret    

00000000004021bf <setval_354>:
  4021bf:	f3 0f 1e fa          	endbr64 
  4021c3:	c7 07 a4 db 58 90    	movl   $0x9058dba4,(%rdi)
  4021c9:	c3                   	ret    

00000000004021ca <addval_433>:
  4021ca:	f3 0f 1e fa          	endbr64 
  4021ce:	8d 87 88 79 48 90    	lea    -0x6fb78678(%rdi),%eax
  4021d4:	c3                   	ret    

00000000004021d5 <addval_138>:
  4021d5:	f3 0f 1e fa          	endbr64 
  4021d9:	8d 87 63 78 90 90    	lea    -0x6f6f879d(%rdi),%eax
  4021df:	c3                   	ret    

00000000004021e0 <addval_217>:
  4021e0:	f3 0f 1e fa          	endbr64 
  4021e4:	8d 87 48 89 c7 c3    	lea    -0x3c3876b8(%rdi),%eax
  4021ea:	c3                   	ret    

00000000004021eb <mid_farm>:
  4021eb:	f3 0f 1e fa          	endbr64 
  4021ef:	b8 01 00 00 00       	mov    $0x1,%eax
  4021f4:	c3                   	ret    

00000000004021f5 <add_xy>:
  4021f5:	f3 0f 1e fa          	endbr64 
  4021f9:	48 8d 04 37          	lea    (%rdi,%rsi,1),%rax
  4021fd:	c3                   	ret    

00000000004021fe <getval_415>:
  4021fe:	f3 0f 1e fa          	endbr64 
  402202:	b8 89 ca 00 db       	mov    $0xdb00ca89,%eax
  402207:	c3                   	ret    

0000000000402208 <setval_313>:
  402208:	f3 0f 1e fa          	endbr64 
  40220c:	c7 07 a9 ca 84 db    	movl   $0xdb84caa9,(%rdi)
  402212:	c3                   	ret    

0000000000402213 <getval_183>:
  402213:	f3 0f 1e fa          	endbr64 
  402217:	b8 99 d6 08 c9       	mov    $0xc908d699,%eax
  40221c:	c3                   	ret    

000000000040221d <getval_497>:
  40221d:	f3 0f 1e fa          	endbr64 
  402221:	b8 89 c1 00 c0       	mov    $0xc000c189,%eax
  402226:	c3                   	ret    

0000000000402227 <addval_422>:
  402227:	f3 0f 1e fa          	endbr64 
  40222b:	8d 87 48 89 e0 94    	lea    -0x6b1f76b8(%rdi),%eax
  402231:	c3                   	ret    

0000000000402232 <getval_270>:
  402232:	f3 0f 1e fa          	endbr64 
  402236:	b8 58 89 e0 c3       	mov    $0xc3e08958,%eax
  40223b:	c3                   	ret    

000000000040223c <setval_254>:
  40223c:	f3 0f 1e fa          	endbr64 
  402240:	c7 07 c9 ca 20 c0    	movl   $0xc020cac9,(%rdi)
  402246:	c3                   	ret    

0000000000402247 <setval_204>:
  402247:	f3 0f 1e fa          	endbr64 
  40224b:	c7 07 c9 ca 38 db    	movl   $0xdb38cac9,(%rdi)
  402251:	c3                   	ret    

0000000000402252 <getval_350>:
  402252:	f3 0f 1e fa          	endbr64 
  402256:	b8 89 d6 30 c9       	mov    $0xc930d689,%eax
  40225b:	c3                   	ret    

000000000040225c <addval_268>:
  40225c:	f3 0f 1e fa          	endbr64 
  402260:	8d 87 89 c1 38 d2    	lea    -0x2dc73e77(%rdi),%eax
  402266:	c3                   	ret    

0000000000402267 <getval_190>:
  402267:	f3 0f 1e fa          	endbr64 
  40226b:	b8 89 d6 28 c9       	mov    $0xc928d689,%eax
  402270:	c3                   	ret    

0000000000402271 <getval_167>:
  402271:	f3 0f 1e fa          	endbr64 
  402275:	b8 48 89 e0 94       	mov    $0x94e08948,%eax
  40227a:	c3                   	ret    

000000000040227b <addval_364>:
  40227b:	f3 0f 1e fa          	endbr64 
  40227f:	8d 87 89 d6 20 d2    	lea    -0x2ddf2977(%rdi),%eax
  402285:	c3                   	ret    

0000000000402286 <setval_263>:
  402286:	f3 0f 1e fa          	endbr64 
  40228a:	c7 07 28 48 89 e0    	movl   $0xe0894828,(%rdi)
  402290:	c3                   	ret    

0000000000402291 <setval_360>:
  402291:	f3 0f 1e fa          	endbr64 
  402295:	c7 07 09 c1 90 c3    	movl   $0xc390c109,(%rdi)
  40229b:	c3                   	ret    

000000000040229c <addval_396>:
  40229c:	f3 0f 1e fa          	endbr64 
  4022a0:	8d 87 a9 d6 90 c3    	lea    -0x3c6f2957(%rdi),%eax
  4022a6:	c3                   	ret    

00000000004022a7 <addval_287>:
  4022a7:	f3 0f 1e fa          	endbr64 
  4022ab:	8d 87 98 89 c1 90    	lea    -0x6f3e7668(%rdi),%eax
  4022b1:	c3                   	ret    

00000000004022b2 <getval_154>:
  4022b2:	f3 0f 1e fa          	endbr64 
  4022b6:	b8 48 89 e0 c2       	mov    $0xc2e08948,%eax
  4022bb:	c3                   	ret    

00000000004022bc <addval_319>:
  4022bc:	f3 0f 1e fa          	endbr64 
  4022c0:	8d 87 8d c1 90 90    	lea    -0x6f6f3e73(%rdi),%eax
  4022c6:	c3                   	ret    

00000000004022c7 <setval_324>:
  4022c7:	f3 0f 1e fa          	endbr64 
  4022cb:	c7 07 48 8d e0 c3    	movl   $0xc3e08d48,(%rdi)
  4022d1:	c3                   	ret    

00000000004022d2 <addval_475>:
  4022d2:	f3 0f 1e fa          	endbr64 
  4022d6:	8d 87 09 c1 08 db    	lea    -0x24f73ef7(%rdi),%eax
  4022dc:	c3                   	ret    

00000000004022dd <addval_245>:
  4022dd:	f3 0f 1e fa          	endbr64 
  4022e1:	8d 87 f4 d7 09 ca    	lea    -0x35f6280c(%rdi),%eax
  4022e7:	c3                   	ret    

00000000004022e8 <addval_436>:
  4022e8:	f3 0f 1e fa          	endbr64 
  4022ec:	8d 87 89 ca 84 c0    	lea    -0x3f7b3577(%rdi),%eax
  4022f2:	c3                   	ret    

00000000004022f3 <addval_494>:
  4022f3:	f3 0f 1e fa          	endbr64 
  4022f7:	8d 87 88 c1 90 90    	lea    -0x6f6f3e78(%rdi),%eax
  4022fd:	c3                   	ret    

00000000004022fe <setval_185>:
  4022fe:	f3 0f 1e fa          	endbr64 
  402302:	c7 07 89 d6 84 d2    	movl   $0xd284d689,(%rdi)
  402308:	c3                   	ret    

0000000000402309 <addval_306>:
  402309:	f3 0f 1e fa          	endbr64 
  40230d:	8d 87 71 48 89 e0    	lea    -0x1f76b78f(%rdi),%eax
  402313:	c3                   	ret    

0000000000402314 <getval_123>:
  402314:	f3 0f 1e fa          	endbr64 
  402318:	b8 48 89 e0 94       	mov    $0x94e08948,%eax
  40231d:	c3                   	ret    

000000000040231e <getval_346>:
  40231e:	f3 0f 1e fa          	endbr64 
  402322:	b8 99 d6 c3 be       	mov    $0xbec3d699,%eax
  402327:	c3                   	ret    

0000000000402328 <setval_359>:
  402328:	f3 0f 1e fa          	endbr64 
  40232c:	c7 07 89 ca 90 90    	movl   $0x9090ca89,(%rdi)
  402332:	c3                   	ret    

0000000000402333 <setval_417>:
  402333:	f3 0f 1e fa          	endbr64 
  402337:	c7 07 9b 89 d6 91    	movl   $0x91d6899b,(%rdi)
  40233d:	c3                   	ret    

000000000040233e <addval_232>:
  40233e:	f3 0f 1e fa          	endbr64 
  402342:	8d 87 89 c1 28 c0    	lea    -0x3fd73e77(%rdi),%eax
  402348:	c3                   	ret    

0000000000402349 <getval_187>:
  402349:	f3 0f 1e fa          	endbr64 
  40234d:	b8 81 ca 84 c0       	mov    $0xc084ca81,%eax
  402352:	c3                   	ret    

0000000000402353 <end_farm>:
  402353:	f3 0f 1e fa          	endbr64 
  402357:	b8 01 00 00 00       	mov    $0x1,%eax
  40235c:	c3                   	ret    

000000000040235d <save_char>:
  40235d:	8b 05 e1 5d 00 00    	mov    0x5de1(%rip),%eax        # 408144 <gets_cnt>
  402363:	3d ff 03 00 00       	cmp    $0x3ff,%eax
  402368:	7f 4a                	jg     4023b4 <save_char+0x57>
  40236a:	89 f9                	mov    %edi,%ecx
  40236c:	c0 e9 04             	shr    $0x4,%cl
  40236f:	8d 14 40             	lea    (%rax,%rax,2),%edx
  402372:	4c 8d 05 f7 23 00 00 	lea    0x23f7(%rip),%r8        # 404770 <trans_char>
  402379:	83 e1 0f             	and    $0xf,%ecx
  40237c:	45 0f b6 0c 08       	movzbl (%r8,%rcx,1),%r9d
  402381:	48 8d 0d b8 51 00 00 	lea    0x51b8(%rip),%rcx        # 407540 <gets_buf>
  402388:	48 63 f2             	movslq %edx,%rsi
  40238b:	44 88 0c 31          	mov    %r9b,(%rcx,%rsi,1)
  40238f:	8d 72 01             	lea    0x1(%rdx),%esi
  402392:	83 e7 0f             	and    $0xf,%edi
  402395:	41 0f b6 3c 38       	movzbl (%r8,%rdi,1),%edi
  40239a:	48 63 f6             	movslq %esi,%rsi
  40239d:	40 88 3c 31          	mov    %dil,(%rcx,%rsi,1)
  4023a1:	83 c2 02             	add    $0x2,%edx
  4023a4:	48 63 d2             	movslq %edx,%rdx
  4023a7:	c6 04 11 20          	movb   $0x20,(%rcx,%rdx,1)
  4023ab:	83 c0 01             	add    $0x1,%eax
  4023ae:	89 05 90 5d 00 00    	mov    %eax,0x5d90(%rip)        # 408144 <gets_cnt>
  4023b4:	c3                   	ret    

00000000004023b5 <save_term>:
  4023b5:	8b 05 89 5d 00 00    	mov    0x5d89(%rip),%eax        # 408144 <gets_cnt>
  4023bb:	8d 04 40             	lea    (%rax,%rax,2),%eax
  4023be:	48 98                	cltq   
  4023c0:	48 8d 15 79 51 00 00 	lea    0x5179(%rip),%rdx        # 407540 <gets_buf>
  4023c7:	c6 04 02 00          	movb   $0x0,(%rdx,%rax,1)
  4023cb:	c3                   	ret    

00000000004023cc <check_fail>:
  4023cc:	f3 0f 1e fa          	endbr64 
  4023d0:	50                   	push   %rax
  4023d1:	58                   	pop    %rax
  4023d2:	48 83 ec 08          	sub    $0x8,%rsp
  4023d6:	0f be 15 6b 5d 00 00 	movsbl 0x5d6b(%rip),%edx        # 408148 <target_prefix>
  4023dd:	4c 8d 05 5c 51 00 00 	lea    0x515c(%rip),%r8        # 407540 <gets_buf>
  4023e4:	8b 0d 2e 51 00 00    	mov    0x512e(%rip),%ecx        # 407518 <check_level>
  4023ea:	48 8d 35 3d 20 00 00 	lea    0x203d(%rip),%rsi        # 40442e <_IO_stdin_used+0x42e>
  4023f1:	bf 01 00 00 00       	mov    $0x1,%edi
  4023f6:	b8 00 00 00 00       	mov    $0x0,%eax
  4023fb:	e8 c0 ef ff ff       	call   4013c0 <__printf_chk@plt>
  402400:	bf 01 00 00 00       	mov    $0x1,%edi
  402405:	e8 06 f0 ff ff       	call   401410 <exit@plt>

000000000040240a <Gets>:
  40240a:	f3 0f 1e fa          	endbr64 
  40240e:	41 54                	push   %r12
  402410:	55                   	push   %rbp
  402411:	53                   	push   %rbx
  402412:	49 89 fc             	mov    %rdi,%r12
  402415:	c7 05 25 5d 00 00 00 	movl   $0x0,0x5d25(%rip)        # 408144 <gets_cnt>
  40241c:	00 00 00 
  40241f:	48 89 fb             	mov    %rdi,%rbx
  402422:	48 8b 3d e7 50 00 00 	mov    0x50e7(%rip),%rdi        # 407510 <infile>
  402429:	e8 12 f0 ff ff       	call   401440 <getc@plt>
  40242e:	83 f8 ff             	cmp    $0xffffffff,%eax
  402431:	74 18                	je     40244b <Gets+0x41>
  402433:	83 f8 0a             	cmp    $0xa,%eax
  402436:	74 13                	je     40244b <Gets+0x41>
  402438:	48 8d 6b 01          	lea    0x1(%rbx),%rbp
  40243c:	88 03                	mov    %al,(%rbx)
  40243e:	0f b6 f8             	movzbl %al,%edi
  402441:	e8 17 ff ff ff       	call   40235d <save_char>
  402446:	48 89 eb             	mov    %rbp,%rbx
  402449:	eb d7                	jmp    402422 <Gets+0x18>
  40244b:	c6 03 00             	movb   $0x0,(%rbx)
  40244e:	b8 00 00 00 00       	mov    $0x0,%eax
  402453:	e8 5d ff ff ff       	call   4023b5 <save_term>
  402458:	4c 89 e0             	mov    %r12,%rax
  40245b:	5b                   	pop    %rbx
  40245c:	5d                   	pop    %rbp
  40245d:	41 5c                	pop    %r12
  40245f:	c3                   	ret    

0000000000402460 <notify_server>:
  402460:	f3 0f 1e fa          	endbr64 
  402464:	55                   	push   %rbp
  402465:	53                   	push   %rbx
  402466:	4c 8d 9c 24 00 c0 ff 	lea    -0x4000(%rsp),%r11
  40246d:	ff 
  40246e:	48 81 ec 00 10 00 00 	sub    $0x1000,%rsp
  402475:	48 83 0c 24 00       	orq    $0x0,(%rsp)
  40247a:	4c 39 dc             	cmp    %r11,%rsp
  40247d:	75 ef                	jne    40246e <notify_server+0xe>
  40247f:	48 83 ec 18          	sub    $0x18,%rsp
  402483:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  40248a:	00 00 
  40248c:	48 89 84 24 08 40 00 	mov    %rax,0x4008(%rsp)
  402493:	00 
  402494:	31 c0                	xor    %eax,%eax
  402496:	83 3d 8b 50 00 00 00 	cmpl   $0x0,0x508b(%rip)        # 407528 <is_checker>
  40249d:	0f 85 b7 01 00 00    	jne    40265a <notify_server+0x1fa>
  4024a3:	89 fb                	mov    %edi,%ebx
  4024a5:	81 3d 95 5c 00 00 9c 	cmpl   $0x1f9c,0x5c95(%rip)        # 408144 <gets_cnt>
  4024ac:	1f 00 00 
  4024af:	7f 18                	jg     4024c9 <notify_server+0x69>
  4024b1:	0f be 05 90 5c 00 00 	movsbl 0x5c90(%rip),%eax        # 408148 <target_prefix>
  4024b8:	83 3d e1 4f 00 00 00 	cmpl   $0x0,0x4fe1(%rip)        # 4074a0 <notify>
  4024bf:	74 23                	je     4024e4 <notify_server+0x84>
  4024c1:	8b 15 59 50 00 00    	mov    0x5059(%rip),%edx        # 407520 <authkey>
  4024c7:	eb 20                	jmp    4024e9 <notify_server+0x89>
  4024c9:	48 8d 35 88 20 00 00 	lea    0x2088(%rip),%rsi        # 404558 <_IO_stdin_used+0x558>
  4024d0:	bf 01 00 00 00       	mov    $0x1,%edi
  4024d5:	e8 e6 ee ff ff       	call   4013c0 <__printf_chk@plt>
  4024da:	bf 01 00 00 00       	mov    $0x1,%edi
  4024df:	e8 2c ef ff ff       	call   401410 <exit@plt>
  4024e4:	ba ff ff ff ff       	mov    $0xffffffff,%edx
  4024e9:	85 db                	test   %ebx,%ebx
  4024eb:	0f 84 9b 00 00 00    	je     40258c <notify_server+0x12c>
  4024f1:	48 8d 2d 51 1f 00 00 	lea    0x1f51(%rip),%rbp        # 404449 <_IO_stdin_used+0x449>
  4024f8:	48 89 e7             	mov    %rsp,%rdi
  4024fb:	48 8d 0d 3e 50 00 00 	lea    0x503e(%rip),%rcx        # 407540 <gets_buf>
  402502:	51                   	push   %rcx
  402503:	56                   	push   %rsi
  402504:	50                   	push   %rax
  402505:	52                   	push   %rdx
  402506:	49 89 e9             	mov    %rbp,%r9
  402509:	44 8b 05 40 4c 00 00 	mov    0x4c40(%rip),%r8d        # 407150 <target_id>
  402510:	48 8d 0d 37 1f 00 00 	lea    0x1f37(%rip),%rcx        # 40444e <_IO_stdin_used+0x44e>
  402517:	ba 00 20 00 00       	mov    $0x2000,%edx
  40251c:	be 01 00 00 00       	mov    $0x1,%esi
  402521:	b8 00 00 00 00       	mov    $0x0,%eax
  402526:	e8 25 ef ff ff       	call   401450 <__sprintf_chk@plt>
  40252b:	48 83 c4 20          	add    $0x20,%rsp
  40252f:	83 3d 6a 4f 00 00 00 	cmpl   $0x0,0x4f6a(%rip)        # 4074a0 <notify>
  402536:	0f 84 95 00 00 00    	je     4025d1 <notify_server+0x171>
  40253c:	48 89 e1             	mov    %rsp,%rcx
  40253f:	4c 8d 8c 24 00 20 00 	lea    0x2000(%rsp),%r9
  402546:	00 
  402547:	41 b8 00 00 00 00    	mov    $0x0,%r8d
  40254d:	48 8b 15 14 4c 00 00 	mov    0x4c14(%rip),%rdx        # 407168 <lab>
  402554:	48 8b 35 15 4c 00 00 	mov    0x4c15(%rip),%rsi        # 407170 <course>
  40255b:	48 8b 3d fe 4b 00 00 	mov    0x4bfe(%rip),%rdi        # 407160 <user_id>
  402562:	e8 75 12 00 00       	call   4037dc <driver_post>
  402567:	85 c0                	test   %eax,%eax
  402569:	78 2d                	js     402598 <notify_server+0x138>
  40256b:	85 db                	test   %ebx,%ebx
  40256d:	74 51                	je     4025c0 <notify_server+0x160>
  40256f:	48 8d 3d 12 20 00 00 	lea    0x2012(%rip),%rdi        # 404588 <_IO_stdin_used+0x588>
  402576:	e8 35 ed ff ff       	call   4012b0 <puts@plt>
  40257b:	48 8d 3d f4 1e 00 00 	lea    0x1ef4(%rip),%rdi        # 404476 <_IO_stdin_used+0x476>
  402582:	e8 29 ed ff ff       	call   4012b0 <puts@plt>
  402587:	e9 ce 00 00 00       	jmp    40265a <notify_server+0x1fa>
  40258c:	48 8d 2d b1 1e 00 00 	lea    0x1eb1(%rip),%rbp        # 404444 <_IO_stdin_used+0x444>
  402593:	e9 60 ff ff ff       	jmp    4024f8 <notify_server+0x98>
  402598:	48 8d 94 24 00 20 00 	lea    0x2000(%rsp),%rdx
  40259f:	00 
  4025a0:	48 8d 35 c3 1e 00 00 	lea    0x1ec3(%rip),%rsi        # 40446a <_IO_stdin_used+0x46a>
  4025a7:	bf 01 00 00 00       	mov    $0x1,%edi
  4025ac:	b8 00 00 00 00       	mov    $0x0,%eax
  4025b1:	e8 0a ee ff ff       	call   4013c0 <__printf_chk@plt>
  4025b6:	bf 01 00 00 00       	mov    $0x1,%edi
  4025bb:	e8 50 ee ff ff       	call   401410 <exit@plt>
  4025c0:	48 8d 3d b9 1e 00 00 	lea    0x1eb9(%rip),%rdi        # 404480 <_IO_stdin_used+0x480>
  4025c7:	e8 e4 ec ff ff       	call   4012b0 <puts@plt>
  4025cc:	e9 89 00 00 00       	jmp    40265a <notify_server+0x1fa>
  4025d1:	48 89 ea             	mov    %rbp,%rdx
  4025d4:	48 8d 35 e5 1f 00 00 	lea    0x1fe5(%rip),%rsi        # 4045c0 <_IO_stdin_used+0x5c0>
  4025db:	bf 01 00 00 00       	mov    $0x1,%edi
  4025e0:	b8 00 00 00 00       	mov    $0x0,%eax
  4025e5:	e8 d6 ed ff ff       	call   4013c0 <__printf_chk@plt>
  4025ea:	48 8b 15 6f 4b 00 00 	mov    0x4b6f(%rip),%rdx        # 407160 <user_id>
  4025f1:	48 8d 35 8f 1e 00 00 	lea    0x1e8f(%rip),%rsi        # 404487 <_IO_stdin_used+0x487>
  4025f8:	bf 01 00 00 00       	mov    $0x1,%edi
  4025fd:	b8 00 00 00 00       	mov    $0x0,%eax
  402602:	e8 b9 ed ff ff       	call   4013c0 <__printf_chk@plt>
  402607:	48 8b 15 62 4b 00 00 	mov    0x4b62(%rip),%rdx        # 407170 <course>
  40260e:	48 8d 35 7f 1e 00 00 	lea    0x1e7f(%rip),%rsi        # 404494 <_IO_stdin_used+0x494>
  402615:	bf 01 00 00 00       	mov    $0x1,%edi
  40261a:	b8 00 00 00 00       	mov    $0x0,%eax
  40261f:	e8 9c ed ff ff       	call   4013c0 <__printf_chk@plt>
  402624:	48 8b 15 3d 4b 00 00 	mov    0x4b3d(%rip),%rdx        # 407168 <lab>
  40262b:	48 8d 35 6e 1e 00 00 	lea    0x1e6e(%rip),%rsi        # 4044a0 <_IO_stdin_used+0x4a0>
  402632:	bf 01 00 00 00       	mov    $0x1,%edi
  402637:	b8 00 00 00 00       	mov    $0x0,%eax
  40263c:	e8 7f ed ff ff       	call   4013c0 <__printf_chk@plt>
  402641:	48 89 e2             	mov    %rsp,%rdx
  402644:	48 8d 35 5e 1e 00 00 	lea    0x1e5e(%rip),%rsi        # 4044a9 <_IO_stdin_used+0x4a9>
  40264b:	bf 01 00 00 00       	mov    $0x1,%edi
  402650:	b8 00 00 00 00       	mov    $0x0,%eax
  402655:	e8 66 ed ff ff       	call   4013c0 <__printf_chk@plt>
  40265a:	48 8b 84 24 08 40 00 	mov    0x4008(%rsp),%rax
  402661:	00 
  402662:	64 48 33 04 25 28 00 	xor    %fs:0x28,%rax
  402669:	00 00 
  40266b:	75 0a                	jne    402677 <notify_server+0x217>
  40266d:	48 81 c4 18 40 00 00 	add    $0x4018,%rsp
  402674:	5b                   	pop    %rbx
  402675:	5d                   	pop    %rbp
  402676:	c3                   	ret    
  402677:	e8 72 02 00 00       	call   4028ee <__stack_chk_fail>

000000000040267c <validate>:
  40267c:	f3 0f 1e fa          	endbr64 
  402680:	53                   	push   %rbx
  402681:	89 fb                	mov    %edi,%ebx
  402683:	83 3d 9e 4e 00 00 00 	cmpl   $0x0,0x4e9e(%rip)        # 407528 <is_checker>
  40268a:	74 79                	je     402705 <validate+0x89>
  40268c:	39 3d 8a 4e 00 00    	cmp    %edi,0x4e8a(%rip)        # 40751c <vlevel>
  402692:	75 39                	jne    4026cd <validate+0x51>
  402694:	8b 15 7e 4e 00 00    	mov    0x4e7e(%rip),%edx        # 407518 <check_level>
  40269a:	39 fa                	cmp    %edi,%edx
  40269c:	75 45                	jne    4026e3 <validate+0x67>
  40269e:	0f be 0d a3 5a 00 00 	movsbl 0x5aa3(%rip),%ecx        # 408148 <target_prefix>
  4026a5:	4c 8d 0d 94 4e 00 00 	lea    0x4e94(%rip),%r9        # 407540 <gets_buf>
  4026ac:	41 89 f8             	mov    %edi,%r8d
  4026af:	8b 15 6b 4e 00 00    	mov    0x4e6b(%rip),%edx        # 407520 <authkey>
  4026b5:	48 8d 35 54 1f 00 00 	lea    0x1f54(%rip),%rsi        # 404610 <_IO_stdin_used+0x610>
  4026bc:	bf 01 00 00 00       	mov    $0x1,%edi
  4026c1:	b8 00 00 00 00       	mov    $0x0,%eax
  4026c6:	e8 f5 ec ff ff       	call   4013c0 <__printf_chk@plt>
  4026cb:	5b                   	pop    %rbx
  4026cc:	c3                   	ret    
  4026cd:	48 8d 3d e1 1d 00 00 	lea    0x1de1(%rip),%rdi        # 4044b5 <_IO_stdin_used+0x4b5>
  4026d4:	e8 d7 eb ff ff       	call   4012b0 <puts@plt>
  4026d9:	b8 00 00 00 00       	mov    $0x0,%eax
  4026de:	e8 e9 fc ff ff       	call   4023cc <check_fail>
  4026e3:	89 f9                	mov    %edi,%ecx
  4026e5:	48 8d 35 fc 1e 00 00 	lea    0x1efc(%rip),%rsi        # 4045e8 <_IO_stdin_used+0x5e8>
  4026ec:	bf 01 00 00 00       	mov    $0x1,%edi
  4026f1:	b8 00 00 00 00       	mov    $0x0,%eax
  4026f6:	e8 c5 ec ff ff       	call   4013c0 <__printf_chk@plt>
  4026fb:	b8 00 00 00 00       	mov    $0x0,%eax
  402700:	e8 c7 fc ff ff       	call   4023cc <check_fail>
  402705:	39 3d 11 4e 00 00    	cmp    %edi,0x4e11(%rip)        # 40751c <vlevel>
  40270b:	74 1a                	je     402727 <validate+0xab>
  40270d:	48 8d 3d a1 1d 00 00 	lea    0x1da1(%rip),%rdi        # 4044b5 <_IO_stdin_used+0x4b5>
  402714:	e8 97 eb ff ff       	call   4012b0 <puts@plt>
  402719:	89 de                	mov    %ebx,%esi
  40271b:	bf 00 00 00 00       	mov    $0x0,%edi
  402720:	e8 3b fd ff ff       	call   402460 <notify_server>
  402725:	eb a4                	jmp    4026cb <validate+0x4f>
  402727:	0f be 0d 1a 5a 00 00 	movsbl 0x5a1a(%rip),%ecx        # 408148 <target_prefix>
  40272e:	89 fa                	mov    %edi,%edx
  402730:	48 8d 35 01 1f 00 00 	lea    0x1f01(%rip),%rsi        # 404638 <_IO_stdin_used+0x638>
  402737:	bf 01 00 00 00       	mov    $0x1,%edi
  40273c:	b8 00 00 00 00       	mov    $0x0,%eax
  402741:	e8 7a ec ff ff       	call   4013c0 <__printf_chk@plt>
  402746:	89 de                	mov    %ebx,%esi
  402748:	bf 01 00 00 00       	mov    $0x1,%edi
  40274d:	e8 0e fd ff ff       	call   402460 <notify_server>
  402752:	e9 74 ff ff ff       	jmp    4026cb <validate+0x4f>

0000000000402757 <fail>:
  402757:	f3 0f 1e fa          	endbr64 
  40275b:	48 83 ec 08          	sub    $0x8,%rsp
  40275f:	83 3d c2 4d 00 00 00 	cmpl   $0x0,0x4dc2(%rip)        # 407528 <is_checker>
  402766:	75 11                	jne    402779 <fail+0x22>
  402768:	89 fe                	mov    %edi,%esi
  40276a:	bf 00 00 00 00       	mov    $0x0,%edi
  40276f:	e8 ec fc ff ff       	call   402460 <notify_server>
  402774:	48 83 c4 08          	add    $0x8,%rsp
  402778:	c3                   	ret    
  402779:	b8 00 00 00 00       	mov    $0x0,%eax
  40277e:	e8 49 fc ff ff       	call   4023cc <check_fail>

0000000000402783 <bushandler>:
  402783:	f3 0f 1e fa          	endbr64 
  402787:	50                   	push   %rax
  402788:	58                   	pop    %rax
  402789:	48 83 ec 08          	sub    $0x8,%rsp
  40278d:	83 3d 94 4d 00 00 00 	cmpl   $0x0,0x4d94(%rip)        # 407528 <is_checker>
  402794:	74 16                	je     4027ac <bushandler+0x29>
  402796:	48 8d 3d 36 1d 00 00 	lea    0x1d36(%rip),%rdi        # 4044d3 <_IO_stdin_used+0x4d3>
  40279d:	e8 0e eb ff ff       	call   4012b0 <puts@plt>
  4027a2:	b8 00 00 00 00       	mov    $0x0,%eax
  4027a7:	e8 20 fc ff ff       	call   4023cc <check_fail>
  4027ac:	48 8d 3d bd 1e 00 00 	lea    0x1ebd(%rip),%rdi        # 404670 <_IO_stdin_used+0x670>
  4027b3:	e8 f8 ea ff ff       	call   4012b0 <puts@plt>
  4027b8:	48 8d 3d 1e 1d 00 00 	lea    0x1d1e(%rip),%rdi        # 4044dd <_IO_stdin_used+0x4dd>
  4027bf:	e8 ec ea ff ff       	call   4012b0 <puts@plt>
  4027c4:	be 00 00 00 00       	mov    $0x0,%esi
  4027c9:	bf 00 00 00 00       	mov    $0x0,%edi
  4027ce:	e8 8d fc ff ff       	call   402460 <notify_server>
  4027d3:	bf 01 00 00 00       	mov    $0x1,%edi
  4027d8:	e8 33 ec ff ff       	call   401410 <exit@plt>

00000000004027dd <seghandler>:
  4027dd:	f3 0f 1e fa          	endbr64 
  4027e1:	50                   	push   %rax
  4027e2:	58                   	pop    %rax
  4027e3:	48 83 ec 08          	sub    $0x8,%rsp
  4027e7:	83 3d 3a 4d 00 00 00 	cmpl   $0x0,0x4d3a(%rip)        # 407528 <is_checker>
  4027ee:	74 16                	je     402806 <seghandler+0x29>
  4027f0:	48 8d 3d fc 1c 00 00 	lea    0x1cfc(%rip),%rdi        # 4044f3 <_IO_stdin_used+0x4f3>
  4027f7:	e8 b4 ea ff ff       	call   4012b0 <puts@plt>
  4027fc:	b8 00 00 00 00       	mov    $0x0,%eax
  402801:	e8 c6 fb ff ff       	call   4023cc <check_fail>
  402806:	48 8d 3d 83 1e 00 00 	lea    0x1e83(%rip),%rdi        # 404690 <_IO_stdin_used+0x690>
  40280d:	e8 9e ea ff ff       	call   4012b0 <puts@plt>
  402812:	48 8d 3d c4 1c 00 00 	lea    0x1cc4(%rip),%rdi        # 4044dd <_IO_stdin_used+0x4dd>
  402819:	e8 92 ea ff ff       	call   4012b0 <puts@plt>
  40281e:	be 00 00 00 00       	mov    $0x0,%esi
  402823:	bf 00 00 00 00       	mov    $0x0,%edi
  402828:	e8 33 fc ff ff       	call   402460 <notify_server>
  40282d:	bf 01 00 00 00       	mov    $0x1,%edi
  402832:	e8 d9 eb ff ff       	call   401410 <exit@plt>

0000000000402837 <illegalhandler>:
  402837:	f3 0f 1e fa          	endbr64 
  40283b:	50                   	push   %rax
  40283c:	58                   	pop    %rax
  40283d:	48 83 ec 08          	sub    $0x8,%rsp
  402841:	83 3d e0 4c 00 00 00 	cmpl   $0x0,0x4ce0(%rip)        # 407528 <is_checker>
  402848:	74 16                	je     402860 <illegalhandler+0x29>
  40284a:	48 8d 3d b5 1c 00 00 	lea    0x1cb5(%rip),%rdi        # 404506 <_IO_stdin_used+0x506>
  402851:	e8 5a ea ff ff       	call   4012b0 <puts@plt>
  402856:	b8 00 00 00 00       	mov    $0x0,%eax
  40285b:	e8 6c fb ff ff       	call   4023cc <check_fail>
  402860:	48 8d 3d 51 1e 00 00 	lea    0x1e51(%rip),%rdi        # 4046b8 <_IO_stdin_used+0x6b8>
  402867:	e8 44 ea ff ff       	call   4012b0 <puts@plt>
  40286c:	48 8d 3d 6a 1c 00 00 	lea    0x1c6a(%rip),%rdi        # 4044dd <_IO_stdin_used+0x4dd>
  402873:	e8 38 ea ff ff       	call   4012b0 <puts@plt>
  402878:	be 00 00 00 00       	mov    $0x0,%esi
  40287d:	bf 00 00 00 00       	mov    $0x0,%edi
  402882:	e8 d9 fb ff ff       	call   402460 <notify_server>
  402887:	bf 01 00 00 00       	mov    $0x1,%edi
  40288c:	e8 7f eb ff ff       	call   401410 <exit@plt>

0000000000402891 <sigalrmhandler>:
  402891:	f3 0f 1e fa          	endbr64 
  402895:	50                   	push   %rax
  402896:	58                   	pop    %rax
  402897:	48 83 ec 08          	sub    $0x8,%rsp
  40289b:	83 3d 86 4c 00 00 00 	cmpl   $0x0,0x4c86(%rip)        # 407528 <is_checker>
  4028a2:	74 16                	je     4028ba <sigalrmhandler+0x29>
  4028a4:	48 8d 3d 6f 1c 00 00 	lea    0x1c6f(%rip),%rdi        # 40451a <_IO_stdin_used+0x51a>
  4028ab:	e8 00 ea ff ff       	call   4012b0 <puts@plt>
  4028b0:	b8 00 00 00 00       	mov    $0x0,%eax
  4028b5:	e8 12 fb ff ff       	call   4023cc <check_fail>
  4028ba:	ba 02 00 00 00       	mov    $0x2,%edx
  4028bf:	48 8d 35 22 1e 00 00 	lea    0x1e22(%rip),%rsi        # 4046e8 <_IO_stdin_used+0x6e8>
  4028c6:	bf 01 00 00 00       	mov    $0x1,%edi
  4028cb:	b8 00 00 00 00       	mov    $0x0,%eax
  4028d0:	e8 eb ea ff ff       	call   4013c0 <__printf_chk@plt>
  4028d5:	be 00 00 00 00       	mov    $0x0,%esi
  4028da:	bf 00 00 00 00       	mov    $0x0,%edi
  4028df:	e8 7c fb ff ff       	call   402460 <notify_server>
  4028e4:	bf 01 00 00 00       	mov    $0x1,%edi
  4028e9:	e8 22 eb ff ff       	call   401410 <exit@plt>

00000000004028ee <__stack_chk_fail>:
  4028ee:	f3 0f 1e fa          	endbr64 
  4028f2:	50                   	push   %rax
  4028f3:	58                   	pop    %rax
  4028f4:	48 83 ec 08          	sub    $0x8,%rsp
  4028f8:	83 3d 29 4c 00 00 00 	cmpl   $0x0,0x4c29(%rip)        # 407528 <is_checker>
  4028ff:	74 16                	je     402917 <__stack_chk_fail+0x29>
  402901:	48 8d 3d 1a 1c 00 00 	lea    0x1c1a(%rip),%rdi        # 404522 <_IO_stdin_used+0x522>
  402908:	e8 a3 e9 ff ff       	call   4012b0 <puts@plt>
  40290d:	b8 00 00 00 00       	mov    $0x0,%eax
  402912:	e8 b5 fa ff ff       	call   4023cc <check_fail>
  402917:	48 8d 3d 02 1e 00 00 	lea    0x1e02(%rip),%rdi        # 404720 <_IO_stdin_used+0x720>
  40291e:	e8 8d e9 ff ff       	call   4012b0 <puts@plt>
  402923:	48 8d 3d b3 1b 00 00 	lea    0x1bb3(%rip),%rdi        # 4044dd <_IO_stdin_used+0x4dd>
  40292a:	e8 81 e9 ff ff       	call   4012b0 <puts@plt>
  40292f:	be 00 00 00 00       	mov    $0x0,%esi
  402934:	bf 00 00 00 00       	mov    $0x0,%edi
  402939:	e8 22 fb ff ff       	call   402460 <notify_server>
  40293e:	bf 01 00 00 00       	mov    $0x1,%edi
  402943:	e8 c8 ea ff ff       	call   401410 <exit@plt>

0000000000402948 <launch>:
  402948:	f3 0f 1e fa          	endbr64 
  40294c:	55                   	push   %rbp
  40294d:	48 89 e5             	mov    %rsp,%rbp
  402950:	53                   	push   %rbx
  402951:	48 83 ec 18          	sub    $0x18,%rsp
  402955:	48 89 fa             	mov    %rdi,%rdx
  402958:	89 f3                	mov    %esi,%ebx
  40295a:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  402961:	00 00 
  402963:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
  402967:	31 c0                	xor    %eax,%eax
  402969:	48 8d 47 17          	lea    0x17(%rdi),%rax
  40296d:	48 89 c1             	mov    %rax,%rcx
  402970:	48 83 e1 f0          	and    $0xfffffffffffffff0,%rcx
  402974:	48 25 00 f0 ff ff    	and    $0xfffffffffffff000,%rax
  40297a:	48 89 e6             	mov    %rsp,%rsi
  40297d:	48 29 c6             	sub    %rax,%rsi
  402980:	48 89 f0             	mov    %rsi,%rax
  402983:	48 39 c4             	cmp    %rax,%rsp
  402986:	74 12                	je     40299a <launch+0x52>
  402988:	48 81 ec 00 10 00 00 	sub    $0x1000,%rsp
  40298f:	48 83 8c 24 f8 0f 00 	orq    $0x0,0xff8(%rsp)
  402996:	00 00 
  402998:	eb e9                	jmp    402983 <launch+0x3b>
  40299a:	48 89 c8             	mov    %rcx,%rax
  40299d:	25 ff 0f 00 00       	and    $0xfff,%eax
  4029a2:	48 29 c4             	sub    %rax,%rsp
  4029a5:	48 85 c0             	test   %rax,%rax
  4029a8:	74 06                	je     4029b0 <launch+0x68>
  4029aa:	48 83 4c 04 f8 00    	orq    $0x0,-0x8(%rsp,%rax,1)
  4029b0:	48 8d 7c 24 0f       	lea    0xf(%rsp),%rdi
  4029b5:	48 83 e7 f0          	and    $0xfffffffffffffff0,%rdi
  4029b9:	be f4 00 00 00       	mov    $0xf4,%esi
  4029be:	e8 1d e9 ff ff       	call   4012e0 <memset@plt>
  4029c3:	48 8b 05 f6 4a 00 00 	mov    0x4af6(%rip),%rax        # 4074c0 <stdin@GLIBC_2.2.5>
  4029ca:	48 39 05 3f 4b 00 00 	cmp    %rax,0x4b3f(%rip)        # 407510 <infile>
  4029d1:	74 42                	je     402a15 <launch+0xcd>
  4029d3:	c7 05 3f 4b 00 00 00 	movl   $0x0,0x4b3f(%rip)        # 40751c <vlevel>
  4029da:	00 00 00 
  4029dd:	85 db                	test   %ebx,%ebx
  4029df:	75 42                	jne    402a23 <launch+0xdb>
  4029e1:	b8 00 00 00 00       	mov    $0x0,%eax
  4029e6:	e8 58 f6 ff ff       	call   402043 <test>
  4029eb:	83 3d 36 4b 00 00 00 	cmpl   $0x0,0x4b36(%rip)        # 407528 <is_checker>
  4029f2:	75 3b                	jne    402a2f <launch+0xe7>
  4029f4:	48 8d 3d 4e 1b 00 00 	lea    0x1b4e(%rip),%rdi        # 404549 <_IO_stdin_used+0x549>
  4029fb:	e8 b0 e8 ff ff       	call   4012b0 <puts@plt>
  402a00:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  402a04:	64 48 33 04 25 28 00 	xor    %fs:0x28,%rax
  402a0b:	00 00 
  402a0d:	75 36                	jne    402a45 <launch+0xfd>
  402a0f:	48 8b 5d f8          	mov    -0x8(%rbp),%rbx
  402a13:	c9                   	leave  
  402a14:	c3                   	ret    
  402a15:	48 8d 3d 15 1b 00 00 	lea    0x1b15(%rip),%rdi        # 404531 <_IO_stdin_used+0x531>
  402a1c:	e8 8f e8 ff ff       	call   4012b0 <puts@plt>
  402a21:	eb b0                	jmp    4029d3 <launch+0x8b>
  402a23:	b8 00 00 00 00       	mov    $0x0,%eax
  402a28:	e8 7e f6 ff ff       	call   4020ab <test2>
  402a2d:	eb bc                	jmp    4029eb <launch+0xa3>
  402a2f:	48 8d 3d 08 1b 00 00 	lea    0x1b08(%rip),%rdi        # 40453e <_IO_stdin_used+0x53e>
  402a36:	e8 75 e8 ff ff       	call   4012b0 <puts@plt>
  402a3b:	b8 00 00 00 00       	mov    $0x0,%eax
  402a40:	e8 87 f9 ff ff       	call   4023cc <check_fail>
  402a45:	e8 a4 fe ff ff       	call   4028ee <__stack_chk_fail>

0000000000402a4a <stable_launch>:
  402a4a:	f3 0f 1e fa          	endbr64 
  402a4e:	55                   	push   %rbp
  402a4f:	53                   	push   %rbx
  402a50:	48 83 ec 08          	sub    $0x8,%rsp
  402a54:	89 f5                	mov    %esi,%ebp
  402a56:	48 89 3d ab 4a 00 00 	mov    %rdi,0x4aab(%rip)        # 407508 <global_offset>
  402a5d:	41 b9 00 00 00 00    	mov    $0x0,%r9d
  402a63:	41 b8 00 00 00 00    	mov    $0x0,%r8d
  402a69:	b9 32 01 00 00       	mov    $0x132,%ecx
  402a6e:	ba 07 00 00 00       	mov    $0x7,%edx
  402a73:	be 00 00 10 00       	mov    $0x100000,%esi
  402a78:	bf 00 60 58 55       	mov    $0x55586000,%edi
  402a7d:	e8 4e e8 ff ff       	call   4012d0 <mmap@plt>
  402a82:	48 89 c3             	mov    %rax,%rbx
  402a85:	48 3d 00 60 58 55    	cmp    $0x55586000,%rax
  402a8b:	75 4a                	jne    402ad7 <stable_launch+0x8d>
  402a8d:	48 8d 90 f8 ff 0f 00 	lea    0xffff8(%rax),%rdx
  402a94:	48 89 15 b5 56 00 00 	mov    %rdx,0x56b5(%rip)        # 408150 <stack_top>
  402a9b:	48 89 e0             	mov    %rsp,%rax
  402a9e:	48 89 d4             	mov    %rdx,%rsp
  402aa1:	48 89 c2             	mov    %rax,%rdx
  402aa4:	48 89 15 55 4a 00 00 	mov    %rdx,0x4a55(%rip)        # 407500 <global_save_stack>
  402aab:	89 ee                	mov    %ebp,%esi
  402aad:	48 8b 3d 54 4a 00 00 	mov    0x4a54(%rip),%rdi        # 407508 <global_offset>
  402ab4:	e8 8f fe ff ff       	call   402948 <launch>
  402ab9:	48 8b 05 40 4a 00 00 	mov    0x4a40(%rip),%rax        # 407500 <global_save_stack>
  402ac0:	48 89 c4             	mov    %rax,%rsp
  402ac3:	be 00 00 10 00       	mov    $0x100000,%esi
  402ac8:	48 89 df             	mov    %rbx,%rdi
  402acb:	e8 e0 e8 ff ff       	call   4013b0 <munmap@plt>
  402ad0:	48 83 c4 08          	add    $0x8,%rsp
  402ad4:	5b                   	pop    %rbx
  402ad5:	5d                   	pop    %rbp
  402ad6:	c3                   	ret    
  402ad7:	be 00 00 10 00       	mov    $0x100000,%esi
  402adc:	48 89 c7             	mov    %rax,%rdi
  402adf:	e8 cc e8 ff ff       	call   4013b0 <munmap@plt>
  402ae4:	b9 00 60 58 55       	mov    $0x55586000,%ecx
  402ae9:	48 8d 15 58 1c 00 00 	lea    0x1c58(%rip),%rdx        # 404748 <_IO_stdin_used+0x748>
  402af0:	be 01 00 00 00       	mov    $0x1,%esi
  402af5:	48 8b 3d e4 49 00 00 	mov    0x49e4(%rip),%rdi        # 4074e0 <stderr@GLIBC_2.2.5>
  402afc:	b8 00 00 00 00       	mov    $0x0,%eax
  402b01:	e8 2a e9 ff ff       	call   401430 <__fprintf_chk@plt>
  402b06:	bf 01 00 00 00       	mov    $0x1,%edi
  402b0b:	e8 00 e9 ff ff       	call   401410 <exit@plt>

0000000000402b10 <rio_readinitb>:
  402b10:	89 37                	mov    %esi,(%rdi)
  402b12:	c7 47 04 00 00 00 00 	movl   $0x0,0x4(%rdi)
  402b19:	48 8d 47 10          	lea    0x10(%rdi),%rax
  402b1d:	48 89 47 08          	mov    %rax,0x8(%rdi)
  402b21:	c3                   	ret    

0000000000402b22 <sigalrm_handler>:
  402b22:	f3 0f 1e fa          	endbr64 
  402b26:	50                   	push   %rax
  402b27:	58                   	pop    %rax
  402b28:	48 83 ec 08          	sub    $0x8,%rsp
  402b2c:	b9 00 00 00 00       	mov    $0x0,%ecx
  402b31:	48 8d 15 48 1c 00 00 	lea    0x1c48(%rip),%rdx        # 404780 <trans_char+0x10>
  402b38:	be 01 00 00 00       	mov    $0x1,%esi
  402b3d:	48 8b 3d 9c 49 00 00 	mov    0x499c(%rip),%rdi        # 4074e0 <stderr@GLIBC_2.2.5>
  402b44:	b8 00 00 00 00       	mov    $0x0,%eax
  402b49:	e8 e2 e8 ff ff       	call   401430 <__fprintf_chk@plt>
  402b4e:	bf 01 00 00 00       	mov    $0x1,%edi
  402b53:	e8 b8 e8 ff ff       	call   401410 <exit@plt>

0000000000402b58 <rio_writen>:
  402b58:	41 55                	push   %r13
  402b5a:	41 54                	push   %r12
  402b5c:	55                   	push   %rbp
  402b5d:	53                   	push   %rbx
  402b5e:	48 83 ec 08          	sub    $0x8,%rsp
  402b62:	41 89 fc             	mov    %edi,%r12d
  402b65:	48 89 f5             	mov    %rsi,%rbp
  402b68:	49 89 d5             	mov    %rdx,%r13
  402b6b:	48 89 d3             	mov    %rdx,%rbx
  402b6e:	eb 06                	jmp    402b76 <rio_writen+0x1e>
  402b70:	48 29 c3             	sub    %rax,%rbx
  402b73:	48 01 c5             	add    %rax,%rbp
  402b76:	48 85 db             	test   %rbx,%rbx
  402b79:	74 24                	je     402b9f <rio_writen+0x47>
  402b7b:	48 89 da             	mov    %rbx,%rdx
  402b7e:	48 89 ee             	mov    %rbp,%rsi
  402b81:	44 89 e7             	mov    %r12d,%edi
  402b84:	e8 37 e7 ff ff       	call   4012c0 <write@plt>
  402b89:	48 85 c0             	test   %rax,%rax
  402b8c:	7f e2                	jg     402b70 <rio_writen+0x18>
  402b8e:	e8 cd e6 ff ff       	call   401260 <__errno_location@plt>
  402b93:	83 38 04             	cmpl   $0x4,(%rax)
  402b96:	75 15                	jne    402bad <rio_writen+0x55>
  402b98:	b8 00 00 00 00       	mov    $0x0,%eax
  402b9d:	eb d1                	jmp    402b70 <rio_writen+0x18>
  402b9f:	4c 89 e8             	mov    %r13,%rax
  402ba2:	48 83 c4 08          	add    $0x8,%rsp
  402ba6:	5b                   	pop    %rbx
  402ba7:	5d                   	pop    %rbp
  402ba8:	41 5c                	pop    %r12
  402baa:	41 5d                	pop    %r13
  402bac:	c3                   	ret    
  402bad:	48 c7 c0 ff ff ff ff 	mov    $0xffffffffffffffff,%rax
  402bb4:	eb ec                	jmp    402ba2 <rio_writen+0x4a>

0000000000402bb6 <rio_read>:
  402bb6:	41 55                	push   %r13
  402bb8:	41 54                	push   %r12
  402bba:	55                   	push   %rbp
  402bbb:	53                   	push   %rbx
  402bbc:	48 83 ec 08          	sub    $0x8,%rsp
  402bc0:	48 89 fb             	mov    %rdi,%rbx
  402bc3:	49 89 f5             	mov    %rsi,%r13
  402bc6:	49 89 d4             	mov    %rdx,%r12
  402bc9:	eb 17                	jmp    402be2 <rio_read+0x2c>
  402bcb:	e8 90 e6 ff ff       	call   401260 <__errno_location@plt>
  402bd0:	83 38 04             	cmpl   $0x4,(%rax)
  402bd3:	74 0d                	je     402be2 <rio_read+0x2c>
  402bd5:	48 c7 c0 ff ff ff ff 	mov    $0xffffffffffffffff,%rax
  402bdc:	eb 54                	jmp    402c32 <rio_read+0x7c>
  402bde:	48 89 6b 08          	mov    %rbp,0x8(%rbx)
  402be2:	8b 6b 04             	mov    0x4(%rbx),%ebp
  402be5:	85 ed                	test   %ebp,%ebp
  402be7:	7f 23                	jg     402c0c <rio_read+0x56>
  402be9:	48 8d 6b 10          	lea    0x10(%rbx),%rbp
  402bed:	8b 3b                	mov    (%rbx),%edi
  402bef:	ba 00 20 00 00       	mov    $0x2000,%edx
  402bf4:	48 89 ee             	mov    %rbp,%rsi
  402bf7:	e8 14 e7 ff ff       	call   401310 <read@plt>
  402bfc:	89 43 04             	mov    %eax,0x4(%rbx)
  402bff:	85 c0                	test   %eax,%eax
  402c01:	78 c8                	js     402bcb <rio_read+0x15>
  402c03:	75 d9                	jne    402bde <rio_read+0x28>
  402c05:	b8 00 00 00 00       	mov    $0x0,%eax
  402c0a:	eb 26                	jmp    402c32 <rio_read+0x7c>
  402c0c:	89 e8                	mov    %ebp,%eax
  402c0e:	4c 39 e0             	cmp    %r12,%rax
  402c11:	72 03                	jb     402c16 <rio_read+0x60>
  402c13:	44 89 e5             	mov    %r12d,%ebp
  402c16:	4c 63 e5             	movslq %ebp,%r12
  402c19:	48 8b 73 08          	mov    0x8(%rbx),%rsi
  402c1d:	4c 89 e2             	mov    %r12,%rdx
  402c20:	4c 89 ef             	mov    %r13,%rdi
  402c23:	e8 48 e7 ff ff       	call   401370 <memcpy@plt>
  402c28:	4c 01 63 08          	add    %r12,0x8(%rbx)
  402c2c:	29 6b 04             	sub    %ebp,0x4(%rbx)
  402c2f:	4c 89 e0             	mov    %r12,%rax
  402c32:	48 83 c4 08          	add    $0x8,%rsp
  402c36:	5b                   	pop    %rbx
  402c37:	5d                   	pop    %rbp
  402c38:	41 5c                	pop    %r12
  402c3a:	41 5d                	pop    %r13
  402c3c:	c3                   	ret    

0000000000402c3d <rio_readlineb>:
  402c3d:	41 55                	push   %r13
  402c3f:	41 54                	push   %r12
  402c41:	55                   	push   %rbp
  402c42:	53                   	push   %rbx
  402c43:	48 83 ec 18          	sub    $0x18,%rsp
  402c47:	49 89 fd             	mov    %rdi,%r13
  402c4a:	48 89 f5             	mov    %rsi,%rbp
  402c4d:	49 89 d4             	mov    %rdx,%r12
  402c50:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  402c57:	00 00 
  402c59:	48 89 44 24 08       	mov    %rax,0x8(%rsp)
  402c5e:	31 c0                	xor    %eax,%eax
  402c60:	bb 01 00 00 00       	mov    $0x1,%ebx
  402c65:	eb 18                	jmp    402c7f <rio_readlineb+0x42>
  402c67:	85 c0                	test   %eax,%eax
  402c69:	75 65                	jne    402cd0 <rio_readlineb+0x93>
  402c6b:	48 83 fb 01          	cmp    $0x1,%rbx
  402c6f:	75 3d                	jne    402cae <rio_readlineb+0x71>
  402c71:	b8 00 00 00 00       	mov    $0x0,%eax
  402c76:	eb 3d                	jmp    402cb5 <rio_readlineb+0x78>
  402c78:	48 83 c3 01          	add    $0x1,%rbx
  402c7c:	48 89 d5             	mov    %rdx,%rbp
  402c7f:	4c 39 e3             	cmp    %r12,%rbx
  402c82:	73 2a                	jae    402cae <rio_readlineb+0x71>
  402c84:	48 8d 74 24 07       	lea    0x7(%rsp),%rsi
  402c89:	ba 01 00 00 00       	mov    $0x1,%edx
  402c8e:	4c 89 ef             	mov    %r13,%rdi
  402c91:	e8 20 ff ff ff       	call   402bb6 <rio_read>
  402c96:	83 f8 01             	cmp    $0x1,%eax
  402c99:	75 cc                	jne    402c67 <rio_readlineb+0x2a>
  402c9b:	48 8d 55 01          	lea    0x1(%rbp),%rdx
  402c9f:	0f b6 44 24 07       	movzbl 0x7(%rsp),%eax
  402ca4:	88 45 00             	mov    %al,0x0(%rbp)
  402ca7:	3c 0a                	cmp    $0xa,%al
  402ca9:	75 cd                	jne    402c78 <rio_readlineb+0x3b>
  402cab:	48 89 d5             	mov    %rdx,%rbp
  402cae:	c6 45 00 00          	movb   $0x0,0x0(%rbp)
  402cb2:	48 89 d8             	mov    %rbx,%rax
  402cb5:	48 8b 4c 24 08       	mov    0x8(%rsp),%rcx
  402cba:	64 48 33 0c 25 28 00 	xor    %fs:0x28,%rcx
  402cc1:	00 00 
  402cc3:	75 14                	jne    402cd9 <rio_readlineb+0x9c>
  402cc5:	48 83 c4 18          	add    $0x18,%rsp
  402cc9:	5b                   	pop    %rbx
  402cca:	5d                   	pop    %rbp
  402ccb:	41 5c                	pop    %r12
  402ccd:	41 5d                	pop    %r13
  402ccf:	c3                   	ret    
  402cd0:	48 c7 c0 ff ff ff ff 	mov    $0xffffffffffffffff,%rax
  402cd7:	eb dc                	jmp    402cb5 <rio_readlineb+0x78>
  402cd9:	e8 10 fc ff ff       	call   4028ee <__stack_chk_fail>

0000000000402cde <urlencode>:
  402cde:	41 54                	push   %r12
  402ce0:	55                   	push   %rbp
  402ce1:	53                   	push   %rbx
  402ce2:	48 83 ec 10          	sub    $0x10,%rsp
  402ce6:	48 89 fb             	mov    %rdi,%rbx
  402ce9:	48 89 f5             	mov    %rsi,%rbp
  402cec:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  402cf3:	00 00 
  402cf5:	48 89 44 24 08       	mov    %rax,0x8(%rsp)
  402cfa:	31 c0                	xor    %eax,%eax
  402cfc:	48 c7 c1 ff ff ff ff 	mov    $0xffffffffffffffff,%rcx
  402d03:	f2 ae                	repnz scas %es:(%rdi),%al
  402d05:	48 f7 d1             	not    %rcx
  402d08:	8d 41 ff             	lea    -0x1(%rcx),%eax
  402d0b:	eb 0f                	jmp    402d1c <urlencode+0x3e>
  402d0d:	44 88 45 00          	mov    %r8b,0x0(%rbp)
  402d11:	48 8d 6d 01          	lea    0x1(%rbp),%rbp
  402d15:	48 83 c3 01          	add    $0x1,%rbx
  402d19:	44 89 e0             	mov    %r12d,%eax
  402d1c:	44 8d 60 ff          	lea    -0x1(%rax),%r12d
  402d20:	85 c0                	test   %eax,%eax
  402d22:	0f 84 a8 00 00 00    	je     402dd0 <urlencode+0xf2>
  402d28:	44 0f b6 03          	movzbl (%rbx),%r8d
  402d2c:	41 80 f8 2a          	cmp    $0x2a,%r8b
  402d30:	0f 94 c2             	sete   %dl
  402d33:	41 80 f8 2d          	cmp    $0x2d,%r8b
  402d37:	0f 94 c0             	sete   %al
  402d3a:	08 c2                	or     %al,%dl
  402d3c:	75 cf                	jne    402d0d <urlencode+0x2f>
  402d3e:	41 80 f8 2e          	cmp    $0x2e,%r8b
  402d42:	74 c9                	je     402d0d <urlencode+0x2f>
  402d44:	41 80 f8 5f          	cmp    $0x5f,%r8b
  402d48:	74 c3                	je     402d0d <urlencode+0x2f>
  402d4a:	41 8d 40 d0          	lea    -0x30(%r8),%eax
  402d4e:	3c 09                	cmp    $0x9,%al
  402d50:	76 bb                	jbe    402d0d <urlencode+0x2f>
  402d52:	41 8d 40 bf          	lea    -0x41(%r8),%eax
  402d56:	3c 19                	cmp    $0x19,%al
  402d58:	76 b3                	jbe    402d0d <urlencode+0x2f>
  402d5a:	41 8d 40 9f          	lea    -0x61(%r8),%eax
  402d5e:	3c 19                	cmp    $0x19,%al
  402d60:	76 ab                	jbe    402d0d <urlencode+0x2f>
  402d62:	41 80 f8 20          	cmp    $0x20,%r8b
  402d66:	74 56                	je     402dbe <urlencode+0xe0>
  402d68:	41 8d 40 e0          	lea    -0x20(%r8),%eax
  402d6c:	3c 5f                	cmp    $0x5f,%al
  402d6e:	0f 96 c2             	setbe  %dl
  402d71:	41 80 f8 09          	cmp    $0x9,%r8b
  402d75:	0f 94 c0             	sete   %al
  402d78:	08 c2                	or     %al,%dl
  402d7a:	74 4f                	je     402dcb <urlencode+0xed>
  402d7c:	48 89 e7             	mov    %rsp,%rdi
  402d7f:	45 0f b6 c0          	movzbl %r8b,%r8d
  402d83:	48 8d 0d ab 1a 00 00 	lea    0x1aab(%rip),%rcx        # 404835 <trans_char+0xc5>
  402d8a:	ba 08 00 00 00       	mov    $0x8,%edx
  402d8f:	be 01 00 00 00       	mov    $0x1,%esi
  402d94:	b8 00 00 00 00       	mov    $0x0,%eax
  402d99:	e8 b2 e6 ff ff       	call   401450 <__sprintf_chk@plt>
  402d9e:	0f b6 04 24          	movzbl (%rsp),%eax
  402da2:	88 45 00             	mov    %al,0x0(%rbp)
  402da5:	0f b6 44 24 01       	movzbl 0x1(%rsp),%eax
  402daa:	88 45 01             	mov    %al,0x1(%rbp)
  402dad:	0f b6 44 24 02       	movzbl 0x2(%rsp),%eax
  402db2:	88 45 02             	mov    %al,0x2(%rbp)
  402db5:	48 8d 6d 03          	lea    0x3(%rbp),%rbp
  402db9:	e9 57 ff ff ff       	jmp    402d15 <urlencode+0x37>
  402dbe:	c6 45 00 2b          	movb   $0x2b,0x0(%rbp)
  402dc2:	48 8d 6d 01          	lea    0x1(%rbp),%rbp
  402dc6:	e9 4a ff ff ff       	jmp    402d15 <urlencode+0x37>
  402dcb:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  402dd0:	48 8b 74 24 08       	mov    0x8(%rsp),%rsi
  402dd5:	64 48 33 34 25 28 00 	xor    %fs:0x28,%rsi
  402ddc:	00 00 
  402dde:	75 09                	jne    402de9 <urlencode+0x10b>
  402de0:	48 83 c4 10          	add    $0x10,%rsp
  402de4:	5b                   	pop    %rbx
  402de5:	5d                   	pop    %rbp
  402de6:	41 5c                	pop    %r12
  402de8:	c3                   	ret    
  402de9:	e8 00 fb ff ff       	call   4028ee <__stack_chk_fail>

0000000000402dee <submitr>:
  402dee:	f3 0f 1e fa          	endbr64 
  402df2:	41 57                	push   %r15
  402df4:	41 56                	push   %r14
  402df6:	41 55                	push   %r13
  402df8:	41 54                	push   %r12
  402dfa:	55                   	push   %rbp
  402dfb:	53                   	push   %rbx
  402dfc:	4c 8d 9c 24 00 60 ff 	lea    -0xa000(%rsp),%r11
  402e03:	ff 
  402e04:	48 81 ec 00 10 00 00 	sub    $0x1000,%rsp
  402e0b:	48 83 0c 24 00       	orq    $0x0,(%rsp)
  402e10:	4c 39 dc             	cmp    %r11,%rsp
  402e13:	75 ef                	jne    402e04 <submitr+0x16>
  402e15:	48 83 ec 68          	sub    $0x68,%rsp
  402e19:	49 89 fc             	mov    %rdi,%r12
  402e1c:	89 74 24 1c          	mov    %esi,0x1c(%rsp)
  402e20:	48 89 54 24 08       	mov    %rdx,0x8(%rsp)
  402e25:	49 89 cd             	mov    %rcx,%r13
  402e28:	4c 89 44 24 10       	mov    %r8,0x10(%rsp)
  402e2d:	4d 89 ce             	mov    %r9,%r14
  402e30:	48 8b ac 24 a0 a0 00 	mov    0xa0a0(%rsp),%rbp
  402e37:	00 
  402e38:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  402e3f:	00 00 
  402e41:	48 89 84 24 58 a0 00 	mov    %rax,0xa058(%rsp)
  402e48:	00 
  402e49:	31 c0                	xor    %eax,%eax
  402e4b:	c7 44 24 2c 00 00 00 	movl   $0x0,0x2c(%rsp)
  402e52:	00 
  402e53:	ba 00 00 00 00       	mov    $0x0,%edx
  402e58:	be 01 00 00 00       	mov    $0x1,%esi
  402e5d:	bf 02 00 00 00       	mov    $0x2,%edi
  402e62:	e8 f9 e5 ff ff       	call   401460 <socket@plt>
  402e67:	85 c0                	test   %eax,%eax
  402e69:	0f 88 a5 02 00 00    	js     403114 <submitr+0x326>
  402e6f:	89 c3                	mov    %eax,%ebx
  402e71:	4c 89 e7             	mov    %r12,%rdi
  402e74:	e8 c7 e4 ff ff       	call   401340 <gethostbyname@plt>
  402e79:	48 85 c0             	test   %rax,%rax
  402e7c:	0f 84 de 02 00 00    	je     403160 <submitr+0x372>
  402e82:	4c 8d 7c 24 30       	lea    0x30(%rsp),%r15
  402e87:	48 c7 44 24 30 00 00 	movq   $0x0,0x30(%rsp)
  402e8e:	00 00 
  402e90:	48 c7 44 24 38 00 00 	movq   $0x0,0x38(%rsp)
  402e97:	00 00 
  402e99:	66 c7 44 24 30 02 00 	movw   $0x2,0x30(%rsp)
  402ea0:	48 63 50 14          	movslq 0x14(%rax),%rdx
  402ea4:	48 8b 40 18          	mov    0x18(%rax),%rax
  402ea8:	48 8b 30             	mov    (%rax),%rsi
  402eab:	48 8d 7c 24 34       	lea    0x34(%rsp),%rdi
  402eb0:	b9 0c 00 00 00       	mov    $0xc,%ecx
  402eb5:	e8 96 e4 ff ff       	call   401350 <__memmove_chk@plt>
  402eba:	0f b7 74 24 1c       	movzwl 0x1c(%rsp),%esi
  402ebf:	66 c1 c6 08          	rol    $0x8,%si
  402ec3:	66 89 74 24 32       	mov    %si,0x32(%rsp)
  402ec8:	ba 10 00 00 00       	mov    $0x10,%edx
  402ecd:	4c 89 fe             	mov    %r15,%rsi
  402ed0:	89 df                	mov    %ebx,%edi
  402ed2:	e8 49 e5 ff ff       	call   401420 <connect@plt>
  402ed7:	85 c0                	test   %eax,%eax
  402ed9:	0f 88 f7 02 00 00    	js     4031d6 <submitr+0x3e8>
  402edf:	48 c7 c6 ff ff ff ff 	mov    $0xffffffffffffffff,%rsi
  402ee6:	b8 00 00 00 00       	mov    $0x0,%eax
  402eeb:	48 89 f1             	mov    %rsi,%rcx
  402eee:	4c 89 f7             	mov    %r14,%rdi
  402ef1:	f2 ae                	repnz scas %es:(%rdi),%al
  402ef3:	48 89 ca             	mov    %rcx,%rdx
  402ef6:	48 f7 d2             	not    %rdx
  402ef9:	48 89 f1             	mov    %rsi,%rcx
  402efc:	48 8b 7c 24 08       	mov    0x8(%rsp),%rdi
  402f01:	f2 ae                	repnz scas %es:(%rdi),%al
  402f03:	48 f7 d1             	not    %rcx
  402f06:	49 89 c8             	mov    %rcx,%r8
  402f09:	48 89 f1             	mov    %rsi,%rcx
  402f0c:	4c 89 ef             	mov    %r13,%rdi
  402f0f:	f2 ae                	repnz scas %es:(%rdi),%al
  402f11:	48 f7 d1             	not    %rcx
  402f14:	4d 8d 44 08 fe       	lea    -0x2(%r8,%rcx,1),%r8
  402f19:	48 89 f1             	mov    %rsi,%rcx
  402f1c:	48 8b 7c 24 10       	mov    0x10(%rsp),%rdi
  402f21:	f2 ae                	repnz scas %es:(%rdi),%al
  402f23:	48 89 c8             	mov    %rcx,%rax
  402f26:	48 f7 d0             	not    %rax
  402f29:	49 8d 4c 00 ff       	lea    -0x1(%r8,%rax,1),%rcx
  402f2e:	48 8d 44 52 fd       	lea    -0x3(%rdx,%rdx,2),%rax
  402f33:	48 8d 84 01 80 00 00 	lea    0x80(%rcx,%rax,1),%rax
  402f3a:	00 
  402f3b:	48 3d 00 20 00 00    	cmp    $0x2000,%rax
  402f41:	0f 87 f7 02 00 00    	ja     40323e <submitr+0x450>
  402f47:	48 8d b4 24 50 40 00 	lea    0x4050(%rsp),%rsi
  402f4e:	00 
  402f4f:	b9 00 04 00 00       	mov    $0x400,%ecx
  402f54:	b8 00 00 00 00       	mov    $0x0,%eax
  402f59:	48 89 f7             	mov    %rsi,%rdi
  402f5c:	f3 48 ab             	rep stos %rax,%es:(%rdi)
  402f5f:	4c 89 f7             	mov    %r14,%rdi
  402f62:	e8 77 fd ff ff       	call   402cde <urlencode>
  402f67:	85 c0                	test   %eax,%eax
  402f69:	0f 88 42 03 00 00    	js     4032b1 <submitr+0x4c3>
  402f6f:	4c 8d bc 24 50 20 00 	lea    0x2050(%rsp),%r15
  402f76:	00 
  402f77:	48 83 ec 08          	sub    $0x8,%rsp
  402f7b:	41 54                	push   %r12
  402f7d:	48 8d 84 24 60 40 00 	lea    0x4060(%rsp),%rax
  402f84:	00 
  402f85:	50                   	push   %rax
  402f86:	41 55                	push   %r13
  402f88:	4c 8b 4c 24 30       	mov    0x30(%rsp),%r9
  402f8d:	4c 8b 44 24 28       	mov    0x28(%rsp),%r8
  402f92:	48 8d 0d 0f 18 00 00 	lea    0x180f(%rip),%rcx        # 4047a8 <trans_char+0x38>
  402f99:	ba 00 20 00 00       	mov    $0x2000,%edx
  402f9e:	be 01 00 00 00       	mov    $0x1,%esi
  402fa3:	4c 89 ff             	mov    %r15,%rdi
  402fa6:	b8 00 00 00 00       	mov    $0x0,%eax
  402fab:	e8 a0 e4 ff ff       	call   401450 <__sprintf_chk@plt>
  402fb0:	48 c7 c1 ff ff ff ff 	mov    $0xffffffffffffffff,%rcx
  402fb7:	b8 00 00 00 00       	mov    $0x0,%eax
  402fbc:	4c 89 ff             	mov    %r15,%rdi
  402fbf:	f2 ae                	repnz scas %es:(%rdi),%al
  402fc1:	48 f7 d1             	not    %rcx
  402fc4:	48 8d 51 ff          	lea    -0x1(%rcx),%rdx
  402fc8:	48 83 c4 20          	add    $0x20,%rsp
  402fcc:	4c 89 fe             	mov    %r15,%rsi
  402fcf:	89 df                	mov    %ebx,%edi
  402fd1:	e8 82 fb ff ff       	call   402b58 <rio_writen>
  402fd6:	48 85 c0             	test   %rax,%rax
  402fd9:	0f 88 5d 03 00 00    	js     40333c <submitr+0x54e>
  402fdf:	4c 8d 64 24 40       	lea    0x40(%rsp),%r12
  402fe4:	89 de                	mov    %ebx,%esi
  402fe6:	4c 89 e7             	mov    %r12,%rdi
  402fe9:	e8 22 fb ff ff       	call   402b10 <rio_readinitb>
  402fee:	48 8d b4 24 50 20 00 	lea    0x2050(%rsp),%rsi
  402ff5:	00 
  402ff6:	ba 00 20 00 00       	mov    $0x2000,%edx
  402ffb:	4c 89 e7             	mov    %r12,%rdi
  402ffe:	e8 3a fc ff ff       	call   402c3d <rio_readlineb>
  403003:	48 85 c0             	test   %rax,%rax
  403006:	0f 8e 9c 03 00 00    	jle    4033a8 <submitr+0x5ba>
  40300c:	48 8d 4c 24 2c       	lea    0x2c(%rsp),%rcx
  403011:	48 8d 94 24 50 60 00 	lea    0x6050(%rsp),%rdx
  403018:	00 
  403019:	48 8d bc 24 50 20 00 	lea    0x2050(%rsp),%rdi
  403020:	00 
  403021:	4c 8d 84 24 50 80 00 	lea    0x8050(%rsp),%r8
  403028:	00 
  403029:	48 8d 35 0c 18 00 00 	lea    0x180c(%rip),%rsi        # 40483c <trans_char+0xcc>
  403030:	b8 00 00 00 00       	mov    $0x0,%eax
  403035:	e8 66 e3 ff ff       	call   4013a0 <__isoc99_sscanf@plt>
  40303a:	48 8d b4 24 50 20 00 	lea    0x2050(%rsp),%rsi
  403041:	00 
  403042:	b9 03 00 00 00       	mov    $0x3,%ecx
  403047:	48 8d 3d 05 18 00 00 	lea    0x1805(%rip),%rdi        # 404853 <trans_char+0xe3>
  40304e:	f3 a6                	repz cmpsb %es:(%rdi),%ds:(%rsi)
  403050:	0f 97 c0             	seta   %al
  403053:	1c 00                	sbb    $0x0,%al
  403055:	84 c0                	test   %al,%al
  403057:	0f 84 cb 03 00 00    	je     403428 <submitr+0x63a>
  40305d:	48 8d b4 24 50 20 00 	lea    0x2050(%rsp),%rsi
  403064:	00 
  403065:	48 8d 7c 24 40       	lea    0x40(%rsp),%rdi
  40306a:	ba 00 20 00 00       	mov    $0x2000,%edx
  40306f:	e8 c9 fb ff ff       	call   402c3d <rio_readlineb>
  403074:	48 85 c0             	test   %rax,%rax
  403077:	7f c1                	jg     40303a <submitr+0x24c>
  403079:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
  403080:	3a 20 43 
  403083:	48 ba 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rdx
  40308a:	20 75 6e 
  40308d:	48 89 45 00          	mov    %rax,0x0(%rbp)
  403091:	48 89 55 08          	mov    %rdx,0x8(%rbp)
  403095:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
  40309c:	74 6f 20 
  40309f:	48 ba 72 65 61 64 20 	movabs $0x6165682064616572,%rdx
  4030a6:	68 65 61 
  4030a9:	48 89 45 10          	mov    %rax,0x10(%rbp)
  4030ad:	48 89 55 18          	mov    %rdx,0x18(%rbp)
  4030b1:	48 b8 64 65 72 73 20 	movabs $0x6f72662073726564,%rax
  4030b8:	66 72 6f 
  4030bb:	48 ba 6d 20 41 75 74 	movabs $0x616c6f747541206d,%rdx
  4030c2:	6f 6c 61 
  4030c5:	48 89 45 20          	mov    %rax,0x20(%rbp)
  4030c9:	48 89 55 28          	mov    %rdx,0x28(%rbp)
  4030cd:	48 b8 62 20 73 65 72 	movabs $0x7265767265732062,%rax
  4030d4:	76 65 72 
  4030d7:	48 89 45 30          	mov    %rax,0x30(%rbp)
  4030db:	c6 45 38 00          	movb   $0x0,0x38(%rbp)
  4030df:	89 df                	mov    %ebx,%edi
  4030e1:	e8 1a e2 ff ff       	call   401300 <close@plt>
  4030e6:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  4030eb:	48 8b 9c 24 58 a0 00 	mov    0xa058(%rsp),%rbx
  4030f2:	00 
  4030f3:	64 48 33 1c 25 28 00 	xor    %fs:0x28,%rbx
  4030fa:	00 00 
  4030fc:	0f 85 96 04 00 00    	jne    403598 <submitr+0x7aa>
  403102:	48 81 c4 68 a0 00 00 	add    $0xa068,%rsp
  403109:	5b                   	pop    %rbx
  40310a:	5d                   	pop    %rbp
  40310b:	41 5c                	pop    %r12
  40310d:	41 5d                	pop    %r13
  40310f:	41 5e                	pop    %r14
  403111:	41 5f                	pop    %r15
  403113:	c3                   	ret    
  403114:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
  40311b:	3a 20 43 
  40311e:	48 ba 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rdx
  403125:	20 75 6e 
  403128:	48 89 45 00          	mov    %rax,0x0(%rbp)
  40312c:	48 89 55 08          	mov    %rdx,0x8(%rbp)
  403130:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
  403137:	74 6f 20 
  40313a:	48 ba 63 72 65 61 74 	movabs $0x7320657461657263,%rdx
  403141:	65 20 73 
  403144:	48 89 45 10          	mov    %rax,0x10(%rbp)
  403148:	48 89 55 18          	mov    %rdx,0x18(%rbp)
  40314c:	c7 45 20 6f 63 6b 65 	movl   $0x656b636f,0x20(%rbp)
  403153:	66 c7 45 24 74 00    	movw   $0x74,0x24(%rbp)
  403159:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  40315e:	eb 8b                	jmp    4030eb <submitr+0x2fd>
  403160:	48 b8 45 72 72 6f 72 	movabs $0x44203a726f727245,%rax
  403167:	3a 20 44 
  40316a:	48 ba 4e 53 20 69 73 	movabs $0x6e7520736920534e,%rdx
  403171:	20 75 6e 
  403174:	48 89 45 00          	mov    %rax,0x0(%rbp)
  403178:	48 89 55 08          	mov    %rdx,0x8(%rbp)
  40317c:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
  403183:	74 6f 20 
  403186:	48 ba 72 65 73 6f 6c 	movabs $0x2065766c6f736572,%rdx
  40318d:	76 65 20 
  403190:	48 89 45 10          	mov    %rax,0x10(%rbp)
  403194:	48 89 55 18          	mov    %rdx,0x18(%rbp)
  403198:	48 b8 41 75 74 6f 6c 	movabs $0x2062616c6f747541,%rax
  40319f:	61 62 20 
  4031a2:	48 ba 73 65 72 76 65 	movabs $0x6120726576726573,%rdx
  4031a9:	72 20 61 
  4031ac:	48 89 45 20          	mov    %rax,0x20(%rbp)
  4031b0:	48 89 55 28          	mov    %rdx,0x28(%rbp)
  4031b4:	c7 45 30 64 64 72 65 	movl   $0x65726464,0x30(%rbp)
  4031bb:	66 c7 45 34 73 73    	movw   $0x7373,0x34(%rbp)
  4031c1:	c6 45 36 00          	movb   $0x0,0x36(%rbp)
  4031c5:	89 df                	mov    %ebx,%edi
  4031c7:	e8 34 e1 ff ff       	call   401300 <close@plt>
  4031cc:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  4031d1:	e9 15 ff ff ff       	jmp    4030eb <submitr+0x2fd>
  4031d6:	48 b8 45 72 72 6f 72 	movabs $0x55203a726f727245,%rax
  4031dd:	3a 20 55 
  4031e0:	48 ba 6e 61 62 6c 65 	movabs $0x6f7420656c62616e,%rdx
  4031e7:	20 74 6f 
  4031ea:	48 89 45 00          	mov    %rax,0x0(%rbp)
  4031ee:	48 89 55 08          	mov    %rdx,0x8(%rbp)
  4031f2:	48 b8 20 63 6f 6e 6e 	movabs $0x7463656e6e6f6320,%rax
  4031f9:	65 63 74 
  4031fc:	48 ba 20 74 6f 20 74 	movabs $0x20656874206f7420,%rdx
  403203:	68 65 20 
  403206:	48 89 45 10          	mov    %rax,0x10(%rbp)
  40320a:	48 89 55 18          	mov    %rdx,0x18(%rbp)
  40320e:	48 b8 41 75 74 6f 6c 	movabs $0x2062616c6f747541,%rax
  403215:	61 62 20 
  403218:	48 89 45 20          	mov    %rax,0x20(%rbp)
  40321c:	c7 45 28 73 65 72 76 	movl   $0x76726573,0x28(%rbp)
  403223:	66 c7 45 2c 65 72    	movw   $0x7265,0x2c(%rbp)
  403229:	c6 45 2e 00          	movb   $0x0,0x2e(%rbp)
  40322d:	89 df                	mov    %ebx,%edi
  40322f:	e8 cc e0 ff ff       	call   401300 <close@plt>
  403234:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  403239:	e9 ad fe ff ff       	jmp    4030eb <submitr+0x2fd>
  40323e:	48 b8 45 72 72 6f 72 	movabs $0x52203a726f727245,%rax
  403245:	3a 20 52 
  403248:	48 ba 65 73 75 6c 74 	movabs $0x747320746c757365,%rdx
  40324f:	20 73 74 
  403252:	48 89 45 00          	mov    %rax,0x0(%rbp)
  403256:	48 89 55 08          	mov    %rdx,0x8(%rbp)
  40325a:	48 b8 72 69 6e 67 20 	movabs $0x6f6f7420676e6972,%rax
  403261:	74 6f 6f 
  403264:	48 ba 20 6c 61 72 67 	movabs $0x202e656772616c20,%rdx
  40326b:	65 2e 20 
  40326e:	48 89 45 10          	mov    %rax,0x10(%rbp)
  403272:	48 89 55 18          	mov    %rdx,0x18(%rbp)
  403276:	48 b8 49 6e 63 72 65 	movabs $0x6573616572636e49,%rax
  40327d:	61 73 65 
  403280:	48 ba 20 53 55 42 4d 	movabs $0x5254494d42555320,%rdx
  403287:	49 54 52 
  40328a:	48 89 45 20          	mov    %rax,0x20(%rbp)
  40328e:	48 89 55 28          	mov    %rdx,0x28(%rbp)
  403292:	48 b8 5f 4d 41 58 42 	movabs $0x46554258414d5f,%rax
  403299:	55 46 00 
  40329c:	48 89 45 30          	mov    %rax,0x30(%rbp)
  4032a0:	89 df                	mov    %ebx,%edi
  4032a2:	e8 59 e0 ff ff       	call   401300 <close@plt>
  4032a7:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  4032ac:	e9 3a fe ff ff       	jmp    4030eb <submitr+0x2fd>
  4032b1:	48 b8 45 72 72 6f 72 	movabs $0x52203a726f727245,%rax
  4032b8:	3a 20 52 
  4032bb:	48 ba 65 73 75 6c 74 	movabs $0x747320746c757365,%rdx
  4032c2:	20 73 74 
  4032c5:	48 89 45 00          	mov    %rax,0x0(%rbp)
  4032c9:	48 89 55 08          	mov    %rdx,0x8(%rbp)
  4032cd:	48 b8 72 69 6e 67 20 	movabs $0x6e6f6320676e6972,%rax
  4032d4:	63 6f 6e 
  4032d7:	48 ba 74 61 69 6e 73 	movabs $0x6e6120736e696174,%rdx
  4032de:	20 61 6e 
  4032e1:	48 89 45 10          	mov    %rax,0x10(%rbp)
  4032e5:	48 89 55 18          	mov    %rdx,0x18(%rbp)
  4032e9:	48 b8 20 69 6c 6c 65 	movabs $0x6c6167656c6c6920,%rax
  4032f0:	67 61 6c 
  4032f3:	48 ba 20 6f 72 20 75 	movabs $0x72706e7520726f20,%rdx
  4032fa:	6e 70 72 
  4032fd:	48 89 45 20          	mov    %rax,0x20(%rbp)
  403301:	48 89 55 28          	mov    %rdx,0x28(%rbp)
  403305:	48 b8 69 6e 74 61 62 	movabs $0x20656c6261746e69,%rax
  40330c:	6c 65 20 
  40330f:	48 ba 63 68 61 72 61 	movabs $0x6574636172616863,%rdx
  403316:	63 74 65 
  403319:	48 89 45 30          	mov    %rax,0x30(%rbp)
  40331d:	48 89 55 38          	mov    %rdx,0x38(%rbp)
  403321:	66 c7 45 40 72 2e    	movw   $0x2e72,0x40(%rbp)
  403327:	c6 45 42 00          	movb   $0x0,0x42(%rbp)
  40332b:	89 df                	mov    %ebx,%edi
  40332d:	e8 ce df ff ff       	call   401300 <close@plt>
  403332:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  403337:	e9 af fd ff ff       	jmp    4030eb <submitr+0x2fd>
  40333c:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
  403343:	3a 20 43 
  403346:	48 ba 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rdx
  40334d:	20 75 6e 
  403350:	48 89 45 00          	mov    %rax,0x0(%rbp)
  403354:	48 89 55 08          	mov    %rdx,0x8(%rbp)
  403358:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
  40335f:	74 6f 20 
  403362:	48 ba 77 72 69 74 65 	movabs $0x6f74206574697277,%rdx
  403369:	20 74 6f 
  40336c:	48 89 45 10          	mov    %rax,0x10(%rbp)
  403370:	48 89 55 18          	mov    %rdx,0x18(%rbp)
  403374:	48 b8 20 74 68 65 20 	movabs $0x7475412065687420,%rax
  40337b:	41 75 74 
  40337e:	48 ba 6f 6c 61 62 20 	movabs $0x7265732062616c6f,%rdx
  403385:	73 65 72 
  403388:	48 89 45 20          	mov    %rax,0x20(%rbp)
  40338c:	48 89 55 28          	mov    %rdx,0x28(%rbp)
  403390:	c7 45 30 76 65 72 00 	movl   $0x726576,0x30(%rbp)
  403397:	89 df                	mov    %ebx,%edi
  403399:	e8 62 df ff ff       	call   401300 <close@plt>
  40339e:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  4033a3:	e9 43 fd ff ff       	jmp    4030eb <submitr+0x2fd>
  4033a8:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
  4033af:	3a 20 43 
  4033b2:	48 ba 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rdx
  4033b9:	20 75 6e 
  4033bc:	48 89 45 00          	mov    %rax,0x0(%rbp)
  4033c0:	48 89 55 08          	mov    %rdx,0x8(%rbp)
  4033c4:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
  4033cb:	74 6f 20 
  4033ce:	48 ba 72 65 61 64 20 	movabs $0x7269662064616572,%rdx
  4033d5:	66 69 72 
  4033d8:	48 89 45 10          	mov    %rax,0x10(%rbp)
  4033dc:	48 89 55 18          	mov    %rdx,0x18(%rbp)
  4033e0:	48 b8 73 74 20 68 65 	movabs $0x6564616568207473,%rax
  4033e7:	61 64 65 
  4033ea:	48 ba 72 20 66 72 6f 	movabs $0x41206d6f72662072,%rdx
  4033f1:	6d 20 41 
  4033f4:	48 89 45 20          	mov    %rax,0x20(%rbp)
  4033f8:	48 89 55 28          	mov    %rdx,0x28(%rbp)
  4033fc:	48 b8 75 74 6f 6c 61 	movabs $0x732062616c6f7475,%rax
  403403:	62 20 73 
  403406:	48 89 45 30          	mov    %rax,0x30(%rbp)
  40340a:	c7 45 38 65 72 76 65 	movl   $0x65767265,0x38(%rbp)
  403411:	66 c7 45 3c 72 00    	movw   $0x72,0x3c(%rbp)
  403417:	89 df                	mov    %ebx,%edi
  403419:	e8 e2 de ff ff       	call   401300 <close@plt>
  40341e:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  403423:	e9 c3 fc ff ff       	jmp    4030eb <submitr+0x2fd>
  403428:	48 8d b4 24 50 20 00 	lea    0x2050(%rsp),%rsi
  40342f:	00 
  403430:	48 8d 7c 24 40       	lea    0x40(%rsp),%rdi
  403435:	ba 00 20 00 00       	mov    $0x2000,%edx
  40343a:	e8 fe f7 ff ff       	call   402c3d <rio_readlineb>
  40343f:	48 85 c0             	test   %rax,%rax
  403442:	0f 8e 96 00 00 00    	jle    4034de <submitr+0x6f0>
  403448:	44 8b 44 24 2c       	mov    0x2c(%rsp),%r8d
  40344d:	41 81 f8 c8 00 00 00 	cmp    $0xc8,%r8d
  403454:	0f 85 05 01 00 00    	jne    40355f <submitr+0x771>
  40345a:	48 8d b4 24 50 20 00 	lea    0x2050(%rsp),%rsi
  403461:	00 
  403462:	48 89 ef             	mov    %rbp,%rdi
  403465:	e8 36 de ff ff       	call   4012a0 <strcpy@plt>
  40346a:	89 df                	mov    %ebx,%edi
  40346c:	e8 8f de ff ff       	call   401300 <close@plt>
  403471:	b9 04 00 00 00       	mov    $0x4,%ecx
  403476:	48 8d 3d d0 13 00 00 	lea    0x13d0(%rip),%rdi        # 40484d <trans_char+0xdd>
  40347d:	48 89 ee             	mov    %rbp,%rsi
  403480:	f3 a6                	repz cmpsb %es:(%rdi),%ds:(%rsi)
  403482:	0f 97 c0             	seta   %al
  403485:	1c 00                	sbb    $0x0,%al
  403487:	0f be c0             	movsbl %al,%eax
  40348a:	85 c0                	test   %eax,%eax
  40348c:	0f 84 59 fc ff ff    	je     4030eb <submitr+0x2fd>
  403492:	b9 05 00 00 00       	mov    $0x5,%ecx
  403497:	48 8d 3d b3 13 00 00 	lea    0x13b3(%rip),%rdi        # 404851 <trans_char+0xe1>
  40349e:	48 89 ee             	mov    %rbp,%rsi
  4034a1:	f3 a6                	repz cmpsb %es:(%rdi),%ds:(%rsi)
  4034a3:	0f 97 c0             	seta   %al
  4034a6:	1c 00                	sbb    $0x0,%al
  4034a8:	0f be c0             	movsbl %al,%eax
  4034ab:	85 c0                	test   %eax,%eax
  4034ad:	0f 84 38 fc ff ff    	je     4030eb <submitr+0x2fd>
  4034b3:	b9 03 00 00 00       	mov    $0x3,%ecx
  4034b8:	48 8d 3d 97 13 00 00 	lea    0x1397(%rip),%rdi        # 404856 <trans_char+0xe6>
  4034bf:	48 89 ee             	mov    %rbp,%rsi
  4034c2:	f3 a6                	repz cmpsb %es:(%rdi),%ds:(%rsi)
  4034c4:	0f 97 c0             	seta   %al
  4034c7:	1c 00                	sbb    $0x0,%al
  4034c9:	0f be c0             	movsbl %al,%eax
  4034cc:	85 c0                	test   %eax,%eax
  4034ce:	0f 84 17 fc ff ff    	je     4030eb <submitr+0x2fd>
  4034d4:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  4034d9:	e9 0d fc ff ff       	jmp    4030eb <submitr+0x2fd>
  4034de:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
  4034e5:	3a 20 43 
  4034e8:	48 ba 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rdx
  4034ef:	20 75 6e 
  4034f2:	48 89 45 00          	mov    %rax,0x0(%rbp)
  4034f6:	48 89 55 08          	mov    %rdx,0x8(%rbp)
  4034fa:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
  403501:	74 6f 20 
  403504:	48 ba 72 65 61 64 20 	movabs $0x6174732064616572,%rdx
  40350b:	73 74 61 
  40350e:	48 89 45 10          	mov    %rax,0x10(%rbp)
  403512:	48 89 55 18          	mov    %rdx,0x18(%rbp)
  403516:	48 b8 74 75 73 20 6d 	movabs $0x7373656d20737574,%rax
  40351d:	65 73 73 
  403520:	48 ba 61 67 65 20 66 	movabs $0x6d6f726620656761,%rdx
  403527:	72 6f 6d 
  40352a:	48 89 45 20          	mov    %rax,0x20(%rbp)
  40352e:	48 89 55 28          	mov    %rdx,0x28(%rbp)
  403532:	48 b8 20 41 75 74 6f 	movabs $0x62616c6f74754120,%rax
  403539:	6c 61 62 
  40353c:	48 ba 20 73 65 72 76 	movabs $0x72657672657320,%rdx
  403543:	65 72 00 
  403546:	48 89 45 30          	mov    %rax,0x30(%rbp)
  40354a:	48 89 55 38          	mov    %rdx,0x38(%rbp)
  40354e:	89 df                	mov    %ebx,%edi
  403550:	e8 ab dd ff ff       	call   401300 <close@plt>
  403555:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  40355a:	e9 8c fb ff ff       	jmp    4030eb <submitr+0x2fd>
  40355f:	4c 8d 8c 24 50 80 00 	lea    0x8050(%rsp),%r9
  403566:	00 
  403567:	48 8d 0d 9a 12 00 00 	lea    0x129a(%rip),%rcx        # 404808 <trans_char+0x98>
  40356e:	48 c7 c2 ff ff ff ff 	mov    $0xffffffffffffffff,%rdx
  403575:	be 01 00 00 00       	mov    $0x1,%esi
  40357a:	48 89 ef             	mov    %rbp,%rdi
  40357d:	b8 00 00 00 00       	mov    $0x0,%eax
  403582:	e8 c9 de ff ff       	call   401450 <__sprintf_chk@plt>
  403587:	89 df                	mov    %ebx,%edi
  403589:	e8 72 dd ff ff       	call   401300 <close@plt>
  40358e:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  403593:	e9 53 fb ff ff       	jmp    4030eb <submitr+0x2fd>
  403598:	e8 51 f3 ff ff       	call   4028ee <__stack_chk_fail>

000000000040359d <init_timeout>:
  40359d:	f3 0f 1e fa          	endbr64 
  4035a1:	85 ff                	test   %edi,%edi
  4035a3:	74 26                	je     4035cb <init_timeout+0x2e>
  4035a5:	53                   	push   %rbx
  4035a6:	89 fb                	mov    %edi,%ebx
  4035a8:	78 1a                	js     4035c4 <init_timeout+0x27>
  4035aa:	48 8d 35 71 f5 ff ff 	lea    -0xa8f(%rip),%rsi        # 402b22 <sigalrm_handler>
  4035b1:	bf 0e 00 00 00       	mov    $0xe,%edi
  4035b6:	e8 75 dd ff ff       	call   401330 <signal@plt>
  4035bb:	89 df                	mov    %ebx,%edi
  4035bd:	e8 2e dd ff ff       	call   4012f0 <alarm@plt>
  4035c2:	5b                   	pop    %rbx
  4035c3:	c3                   	ret    
  4035c4:	bb 00 00 00 00       	mov    $0x0,%ebx
  4035c9:	eb df                	jmp    4035aa <init_timeout+0xd>
  4035cb:	c3                   	ret    

00000000004035cc <init_driver>:
  4035cc:	f3 0f 1e fa          	endbr64 
  4035d0:	41 54                	push   %r12
  4035d2:	55                   	push   %rbp
  4035d3:	53                   	push   %rbx
  4035d4:	48 83 ec 20          	sub    $0x20,%rsp
  4035d8:	48 89 fd             	mov    %rdi,%rbp
  4035db:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  4035e2:	00 00 
  4035e4:	48 89 44 24 18       	mov    %rax,0x18(%rsp)
  4035e9:	31 c0                	xor    %eax,%eax
  4035eb:	be 01 00 00 00       	mov    $0x1,%esi
  4035f0:	bf 0d 00 00 00       	mov    $0xd,%edi
  4035f5:	e8 36 dd ff ff       	call   401330 <signal@plt>
  4035fa:	be 01 00 00 00       	mov    $0x1,%esi
  4035ff:	bf 1d 00 00 00       	mov    $0x1d,%edi
  403604:	e8 27 dd ff ff       	call   401330 <signal@plt>
  403609:	be 01 00 00 00       	mov    $0x1,%esi
  40360e:	bf 1d 00 00 00       	mov    $0x1d,%edi
  403613:	e8 18 dd ff ff       	call   401330 <signal@plt>
  403618:	ba 00 00 00 00       	mov    $0x0,%edx
  40361d:	be 01 00 00 00       	mov    $0x1,%esi
  403622:	bf 02 00 00 00       	mov    $0x2,%edi
  403627:	e8 34 de ff ff       	call   401460 <socket@plt>
  40362c:	85 c0                	test   %eax,%eax
  40362e:	0f 88 9c 00 00 00    	js     4036d0 <init_driver+0x104>
  403634:	89 c3                	mov    %eax,%ebx
  403636:	48 8d 3d 1c 12 00 00 	lea    0x121c(%rip),%rdi        # 404859 <trans_char+0xe9>
  40363d:	e8 fe dc ff ff       	call   401340 <gethostbyname@plt>
  403642:	48 85 c0             	test   %rax,%rax
  403645:	0f 84 d1 00 00 00    	je     40371c <init_driver+0x150>
  40364b:	49 89 e4             	mov    %rsp,%r12
  40364e:	48 c7 04 24 00 00 00 	movq   $0x0,(%rsp)
  403655:	00 
  403656:	48 c7 44 24 08 00 00 	movq   $0x0,0x8(%rsp)
  40365d:	00 00 
  40365f:	66 c7 04 24 02 00    	movw   $0x2,(%rsp)
  403665:	48 63 50 14          	movslq 0x14(%rax),%rdx
  403669:	48 8b 40 18          	mov    0x18(%rax),%rax
  40366d:	48 8b 30             	mov    (%rax),%rsi
  403670:	48 8d 7c 24 04       	lea    0x4(%rsp),%rdi
  403675:	b9 0c 00 00 00       	mov    $0xc,%ecx
  40367a:	e8 d1 dc ff ff       	call   401350 <__memmove_chk@plt>
  40367f:	66 c7 44 24 02 30 39 	movw   $0x3930,0x2(%rsp)
  403686:	ba 10 00 00 00       	mov    $0x10,%edx
  40368b:	4c 89 e6             	mov    %r12,%rsi
  40368e:	89 df                	mov    %ebx,%edi
  403690:	e8 8b dd ff ff       	call   401420 <connect@plt>
  403695:	85 c0                	test   %eax,%eax
  403697:	0f 88 e7 00 00 00    	js     403784 <init_driver+0x1b8>
  40369d:	89 df                	mov    %ebx,%edi
  40369f:	e8 5c dc ff ff       	call   401300 <close@plt>
  4036a4:	66 c7 45 00 4f 4b    	movw   $0x4b4f,0x0(%rbp)
  4036aa:	c6 45 02 00          	movb   $0x0,0x2(%rbp)
  4036ae:	b8 00 00 00 00       	mov    $0x0,%eax
  4036b3:	48 8b 4c 24 18       	mov    0x18(%rsp),%rcx
  4036b8:	64 48 33 0c 25 28 00 	xor    %fs:0x28,%rcx
  4036bf:	00 00 
  4036c1:	0f 85 10 01 00 00    	jne    4037d7 <init_driver+0x20b>
  4036c7:	48 83 c4 20          	add    $0x20,%rsp
  4036cb:	5b                   	pop    %rbx
  4036cc:	5d                   	pop    %rbp
  4036cd:	41 5c                	pop    %r12
  4036cf:	c3                   	ret    
  4036d0:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
  4036d7:	3a 20 43 
  4036da:	48 ba 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rdx
  4036e1:	20 75 6e 
  4036e4:	48 89 45 00          	mov    %rax,0x0(%rbp)
  4036e8:	48 89 55 08          	mov    %rdx,0x8(%rbp)
  4036ec:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
  4036f3:	74 6f 20 
  4036f6:	48 ba 63 72 65 61 74 	movabs $0x7320657461657263,%rdx
  4036fd:	65 20 73 
  403700:	48 89 45 10          	mov    %rax,0x10(%rbp)
  403704:	48 89 55 18          	mov    %rdx,0x18(%rbp)
  403708:	c7 45 20 6f 63 6b 65 	movl   $0x656b636f,0x20(%rbp)
  40370f:	66 c7 45 24 74 00    	movw   $0x74,0x24(%rbp)
  403715:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  40371a:	eb 97                	jmp    4036b3 <init_driver+0xe7>
  40371c:	48 b8 45 72 72 6f 72 	movabs $0x44203a726f727245,%rax
  403723:	3a 20 44 
  403726:	48 ba 4e 53 20 69 73 	movabs $0x6e7520736920534e,%rdx
  40372d:	20 75 6e 
  403730:	48 89 45 00          	mov    %rax,0x0(%rbp)
  403734:	48 89 55 08          	mov    %rdx,0x8(%rbp)
  403738:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
  40373f:	74 6f 20 
  403742:	48 ba 72 65 73 6f 6c 	movabs $0x2065766c6f736572,%rdx
  403749:	76 65 20 
  40374c:	48 89 45 10          	mov    %rax,0x10(%rbp)
  403750:	48 89 55 18          	mov    %rdx,0x18(%rbp)
  403754:	48 b8 73 65 72 76 65 	movabs $0x6120726576726573,%rax
  40375b:	72 20 61 
  40375e:	48 89 45 20          	mov    %rax,0x20(%rbp)
  403762:	c7 45 28 64 64 72 65 	movl   $0x65726464,0x28(%rbp)
  403769:	66 c7 45 2c 73 73    	movw   $0x7373,0x2c(%rbp)
  40376f:	c6 45 2e 00          	movb   $0x0,0x2e(%rbp)
  403773:	89 df                	mov    %ebx,%edi
  403775:	e8 86 db ff ff       	call   401300 <close@plt>
  40377a:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  40377f:	e9 2f ff ff ff       	jmp    4036b3 <init_driver+0xe7>
  403784:	48 b8 45 72 72 6f 72 	movabs $0x55203a726f727245,%rax
  40378b:	3a 20 55 
  40378e:	48 ba 6e 61 62 6c 65 	movabs $0x6f7420656c62616e,%rdx
  403795:	20 74 6f 
  403798:	48 89 45 00          	mov    %rax,0x0(%rbp)
  40379c:	48 89 55 08          	mov    %rdx,0x8(%rbp)
  4037a0:	48 b8 20 63 6f 6e 6e 	movabs $0x7463656e6e6f6320,%rax
  4037a7:	65 63 74 
  4037aa:	48 ba 20 74 6f 20 73 	movabs $0x76726573206f7420,%rdx
  4037b1:	65 72 76 
  4037b4:	48 89 45 10          	mov    %rax,0x10(%rbp)
  4037b8:	48 89 55 18          	mov    %rdx,0x18(%rbp)
  4037bc:	66 c7 45 20 65 72    	movw   $0x7265,0x20(%rbp)
  4037c2:	c6 45 22 00          	movb   $0x0,0x22(%rbp)
  4037c6:	89 df                	mov    %ebx,%edi
  4037c8:	e8 33 db ff ff       	call   401300 <close@plt>
  4037cd:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  4037d2:	e9 dc fe ff ff       	jmp    4036b3 <init_driver+0xe7>
  4037d7:	e8 12 f1 ff ff       	call   4028ee <__stack_chk_fail>

00000000004037dc <driver_post>:
  4037dc:	f3 0f 1e fa          	endbr64 
  4037e0:	53                   	push   %rbx
  4037e1:	4c 89 cb             	mov    %r9,%rbx
  4037e4:	45 85 c0             	test   %r8d,%r8d
  4037e7:	75 18                	jne    403801 <driver_post+0x25>
  4037e9:	48 85 ff             	test   %rdi,%rdi
  4037ec:	74 05                	je     4037f3 <driver_post+0x17>
  4037ee:	80 3f 00             	cmpb   $0x0,(%rdi)
  4037f1:	75 37                	jne    40382a <driver_post+0x4e>
  4037f3:	66 c7 03 4f 4b       	movw   $0x4b4f,(%rbx)
  4037f8:	c6 43 02 00          	movb   $0x0,0x2(%rbx)
  4037fc:	44 89 c0             	mov    %r8d,%eax
  4037ff:	5b                   	pop    %rbx
  403800:	c3                   	ret    
  403801:	48 89 ca             	mov    %rcx,%rdx
  403804:	48 8d 35 5e 10 00 00 	lea    0x105e(%rip),%rsi        # 404869 <trans_char+0xf9>
  40380b:	bf 01 00 00 00       	mov    $0x1,%edi
  403810:	b8 00 00 00 00       	mov    $0x0,%eax
  403815:	e8 a6 db ff ff       	call   4013c0 <__printf_chk@plt>
  40381a:	66 c7 03 4f 4b       	movw   $0x4b4f,(%rbx)
  40381f:	c6 43 02 00          	movb   $0x0,0x2(%rbx)
  403823:	b8 00 00 00 00       	mov    $0x0,%eax
  403828:	eb d5                	jmp    4037ff <driver_post+0x23>
  40382a:	48 83 ec 08          	sub    $0x8,%rsp
  40382e:	41 51                	push   %r9
  403830:	49 89 c9             	mov    %rcx,%r9
  403833:	49 89 d0             	mov    %rdx,%r8
  403836:	48 89 f9             	mov    %rdi,%rcx
  403839:	48 89 f2             	mov    %rsi,%rdx
  40383c:	be 39 30 00 00       	mov    $0x3039,%esi
  403841:	48 8d 3d 11 10 00 00 	lea    0x1011(%rip),%rdi        # 404859 <trans_char+0xe9>
  403848:	e8 a1 f5 ff ff       	call   402dee <submitr>
  40384d:	48 83 c4 10          	add    $0x10,%rsp
  403851:	eb ac                	jmp    4037ff <driver_post+0x23>

0000000000403853 <check>:
  403853:	f3 0f 1e fa          	endbr64 
  403857:	89 f8                	mov    %edi,%eax
  403859:	c1 e8 1c             	shr    $0x1c,%eax
  40385c:	74 1d                	je     40387b <check+0x28>
  40385e:	b9 00 00 00 00       	mov    $0x0,%ecx
  403863:	83 f9 1f             	cmp    $0x1f,%ecx
  403866:	7f 0d                	jg     403875 <check+0x22>
  403868:	89 f8                	mov    %edi,%eax
  40386a:	d3 e8                	shr    %cl,%eax
  40386c:	3c 0a                	cmp    $0xa,%al
  40386e:	74 11                	je     403881 <check+0x2e>
  403870:	83 c1 08             	add    $0x8,%ecx
  403873:	eb ee                	jmp    403863 <check+0x10>
  403875:	b8 01 00 00 00       	mov    $0x1,%eax
  40387a:	c3                   	ret    
  40387b:	b8 00 00 00 00       	mov    $0x0,%eax
  403880:	c3                   	ret    
  403881:	b8 00 00 00 00       	mov    $0x0,%eax
  403886:	c3                   	ret    

0000000000403887 <gencookie>:
  403887:	f3 0f 1e fa          	endbr64 
  40388b:	53                   	push   %rbx
  40388c:	83 c7 01             	add    $0x1,%edi
  40388f:	e8 dc d9 ff ff       	call   401270 <srandom@plt>
  403894:	e8 f7 da ff ff       	call   401390 <random@plt>
  403899:	48 89 c7             	mov    %rax,%rdi
  40389c:	89 c3                	mov    %eax,%ebx
  40389e:	e8 b0 ff ff ff       	call   403853 <check>
  4038a3:	85 c0                	test   %eax,%eax
  4038a5:	74 ed                	je     403894 <gencookie+0xd>
  4038a7:	89 d8                	mov    %ebx,%eax
  4038a9:	5b                   	pop    %rbx
  4038aa:	c3                   	ret    
  4038ab:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000004038b0 <__libc_csu_init>:
  4038b0:	f3 0f 1e fa          	endbr64 
  4038b4:	41 57                	push   %r15
  4038b6:	4c 8d 3d 53 35 00 00 	lea    0x3553(%rip),%r15        # 406e10 <__frame_dummy_init_array_entry>
  4038bd:	41 56                	push   %r14
  4038bf:	49 89 d6             	mov    %rdx,%r14
  4038c2:	41 55                	push   %r13
  4038c4:	49 89 f5             	mov    %rsi,%r13
  4038c7:	41 54                	push   %r12
  4038c9:	41 89 fc             	mov    %edi,%r12d
  4038cc:	55                   	push   %rbp
  4038cd:	48 8d 2d 44 35 00 00 	lea    0x3544(%rip),%rbp        # 406e18 <__do_global_dtors_aux_fini_array_entry>
  4038d4:	53                   	push   %rbx
  4038d5:	4c 29 fd             	sub    %r15,%rbp
  4038d8:	48 83 ec 08          	sub    $0x8,%rsp
  4038dc:	e8 1f d7 ff ff       	call   401000 <_init>
  4038e1:	48 c1 fd 03          	sar    $0x3,%rbp
  4038e5:	74 1f                	je     403906 <__libc_csu_init+0x56>
  4038e7:	31 db                	xor    %ebx,%ebx
  4038e9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  4038f0:	4c 89 f2             	mov    %r14,%rdx
  4038f3:	4c 89 ee             	mov    %r13,%rsi
  4038f6:	44 89 e7             	mov    %r12d,%edi
  4038f9:	41 ff 14 df          	call   *(%r15,%rbx,8)
  4038fd:	48 83 c3 01          	add    $0x1,%rbx
  403901:	48 39 dd             	cmp    %rbx,%rbp
  403904:	75 ea                	jne    4038f0 <__libc_csu_init+0x40>
  403906:	48 83 c4 08          	add    $0x8,%rsp
  40390a:	5b                   	pop    %rbx
  40390b:	5d                   	pop    %rbp
  40390c:	41 5c                	pop    %r12
  40390e:	41 5d                	pop    %r13
  403910:	41 5e                	pop    %r14
  403912:	41 5f                	pop    %r15
  403914:	c3                   	ret    
  403915:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  40391c:	00 00 00 00 

0000000000403920 <__libc_csu_fini>:
  403920:	f3 0f 1e fa          	endbr64 
  403924:	c3                   	ret    

Disassembly of section .fini:

0000000000403928 <_fini>:
  403928:	f3 0f 1e fa          	endbr64 
  40392c:	48 83 ec 08          	sub    $0x8,%rsp
  403930:	48 83 c4 08          	add    $0x8,%rsp
  403934:	c3                   	ret    
