
ctarget:     file format elf64-x86-64


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
  401483:	49 c7 c0 50 37 40 00 	mov    $0x403750,%r8
  40148a:	48 c7 c1 e0 36 40 00 	mov    $0x4036e0,%rcx
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
  401636:	e8 79 20 00 00       	call   4036b4 <gencookie>
  40163b:	89 c7                	mov    %eax,%edi
  40163d:	89 05 e1 5e 00 00    	mov    %eax,0x5ee1(%rip)        # 407524 <cookie>
  401643:	e8 6c 20 00 00       	call   4036b4 <gencookie>
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
  401689:	c6 05 b8 6a 00 00 63 	movb   $0x63,0x6ab8(%rip)        # 408148 <target_prefix>
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
  40173c:	e8 b8 1c 00 00       	call   4033f9 <init_driver>
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
  401794:	e8 82 0f 00 00       	call   40271b <__stack_chk_fail>

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
  4017e0:	48 c7 c6 0a 26 40 00 	mov    $0x40260a,%rsi
  4017e7:	bf 0b 00 00 00       	mov    $0xb,%edi
  4017ec:	e8 3f fb ff ff       	call   401330 <signal@plt>
  4017f1:	48 c7 c6 b0 25 40 00 	mov    $0x4025b0,%rsi
  4017f8:	bf 07 00 00 00       	mov    $0x7,%edi
  4017fd:	e8 2e fb ff ff       	call   401330 <signal@plt>
  401802:	48 c7 c6 64 26 40 00 	mov    $0x402664,%rsi
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
  401842:	48 c7 c6 be 26 40 00 	mov    $0x4026be,%rsi
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
  40195b:	be 00 00 00 00       	mov    $0x0,%esi
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
  4019ab:	e8 49 08 00 00       	call   4021f9 <check_fail>
  4019b0:	8b 15 6e 5b 00 00    	mov    0x5b6e(%rip),%edx        # 407524 <cookie>
  4019b6:	48 8d 35 bf 28 00 00 	lea    0x28bf(%rip),%rsi        # 40427c <_IO_stdin_used+0x27c>
  4019bd:	bf 01 00 00 00       	mov    $0x1,%edi
  4019c2:	b8 00 00 00 00       	mov    $0x0,%eax
  4019c7:	e8 f4 f9 ff ff       	call   4013c0 <__printf_chk@plt>
  4019cc:	be 00 00 00 00       	mov    $0x0,%esi
  4019d1:	48 8b 3d d0 5a 00 00 	mov    0x5ad0(%rip),%rdi        # 4074a8 <buf_offset>
  4019d8:	e8 9a 0e 00 00       	call   402877 <stable_launch>
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
  4019ff:	e8 17 0d 00 00       	call   40271b <__stack_chk_fail>

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
  401e55:	e8 c1 08 00 00       	call   40271b <__stack_chk_fail>

0000000000401e5a <getbuf>:
  401e5a:	f3 0f 1e fa          	endbr64 
  401e5e:	48 83 ec 18          	sub    $0x18,%rsp
  401e62:	48 89 e7             	mov    %rsp,%rdi
  401e65:	e8 cd 03 00 00       	call   402237 <Gets>
  401e6a:	b8 01 00 00 00       	mov    $0x1,%eax
  401e6f:	48 83 c4 18          	add    $0x18,%rsp
  401e73:	c3                   	ret    

0000000000401e74 <getbuf_withcanary>:
  401e74:	f3 0f 1e fa          	endbr64 
  401e78:	55                   	push   %rbp
  401e79:	48 89 e5             	mov    %rsp,%rbp
  401e7c:	48 81 ec 90 01 00 00 	sub    $0x190,%rsp
  401e83:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  401e8a:	00 00 
  401e8c:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
  401e90:	31 c0                	xor    %eax,%eax
  401e92:	c7 85 74 ff ff ff 00 	movl   $0x0,-0x8c(%rbp)
  401e99:	00 00 00 
  401e9c:	8b 85 74 ff ff ff    	mov    -0x8c(%rbp),%eax
  401ea2:	89 85 70 ff ff ff    	mov    %eax,-0x90(%rbp)
  401ea8:	48 8d 85 70 fe ff ff 	lea    -0x190(%rbp),%rax
  401eaf:	48 89 c7             	mov    %rax,%rdi
  401eb2:	e8 80 03 00 00       	call   402237 <Gets>
  401eb7:	8b 85 70 ff ff ff    	mov    -0x90(%rbp),%eax
  401ebd:	48 63 d0             	movslq %eax,%rdx
  401ec0:	48 8d 85 70 fe ff ff 	lea    -0x190(%rbp),%rax
  401ec7:	48 8d 88 08 01 00 00 	lea    0x108(%rax),%rcx
  401ece:	48 8d 85 70 fe ff ff 	lea    -0x190(%rbp),%rax
  401ed5:	48 89 ce             	mov    %rcx,%rsi
  401ed8:	48 89 c7             	mov    %rax,%rdi
  401edb:	e8 90 f4 ff ff       	call   401370 <memcpy@plt>
  401ee0:	8b 85 74 ff ff ff    	mov    -0x8c(%rbp),%eax
  401ee6:	48 63 d0             	movslq %eax,%rdx
  401ee9:	48 8d 85 70 fe ff ff 	lea    -0x190(%rbp),%rax
  401ef0:	48 8d 8d 70 fe ff ff 	lea    -0x190(%rbp),%rcx
  401ef7:	48 81 c1 08 01 00 00 	add    $0x108,%rcx
  401efe:	48 89 c6             	mov    %rax,%rsi
  401f01:	48 89 cf             	mov    %rcx,%rdi
  401f04:	e8 67 f4 ff ff       	call   401370 <memcpy@plt>
  401f09:	b8 01 00 00 00       	mov    $0x1,%eax
  401f0e:	48 8b 55 f8          	mov    -0x8(%rbp),%rdx
  401f12:	64 48 2b 14 25 28 00 	sub    %fs:0x28,%rdx
  401f19:	00 00 
  401f1b:	74 05                	je     401f22 <getbuf_withcanary+0xae>
  401f1d:	e8 f9 07 00 00       	call   40271b <__stack_chk_fail>
  401f22:	c9                   	leave  
  401f23:	c3                   	ret    

0000000000401f24 <touch1>:
  401f24:	f3 0f 1e fa          	endbr64 
  401f28:	50                   	push   %rax
  401f29:	58                   	pop    %rax
  401f2a:	48 83 ec 08          	sub    $0x8,%rsp
  401f2e:	c7 05 e4 55 00 00 01 	movl   $0x1,0x55e4(%rip)        # 40751c <vlevel>
  401f35:	00 00 00 
  401f38:	48 8d 3d d7 23 00 00 	lea    0x23d7(%rip),%rdi        # 404316 <_IO_stdin_used+0x316>
  401f3f:	e8 6c f3 ff ff       	call   4012b0 <puts@plt>
  401f44:	bf 01 00 00 00       	mov    $0x1,%edi
  401f49:	e8 5b 05 00 00       	call   4024a9 <validate>
  401f4e:	bf 00 00 00 00       	mov    $0x0,%edi
  401f53:	e8 b8 f4 ff ff       	call   401410 <exit@plt>

0000000000401f58 <touch2>:
  401f58:	f3 0f 1e fa          	endbr64 
  401f5c:	50                   	push   %rax
  401f5d:	58                   	pop    %rax
  401f5e:	48 83 ec 08          	sub    $0x8,%rsp
  401f62:	89 fa                	mov    %edi,%edx
  401f64:	c7 05 ae 55 00 00 02 	movl   $0x2,0x55ae(%rip)        # 40751c <vlevel>
  401f6b:	00 00 00 
  401f6e:	39 3d b0 55 00 00    	cmp    %edi,0x55b0(%rip)        # 407524 <cookie>
  401f74:	74 2a                	je     401fa0 <touch2+0x48>
  401f76:	48 8d 35 e3 23 00 00 	lea    0x23e3(%rip),%rsi        # 404360 <_IO_stdin_used+0x360>
  401f7d:	bf 01 00 00 00       	mov    $0x1,%edi
  401f82:	b8 00 00 00 00       	mov    $0x0,%eax
  401f87:	e8 34 f4 ff ff       	call   4013c0 <__printf_chk@plt>
  401f8c:	bf 02 00 00 00       	mov    $0x2,%edi
  401f91:	e8 ee 05 00 00       	call   402584 <fail>
  401f96:	bf 00 00 00 00       	mov    $0x0,%edi
  401f9b:	e8 70 f4 ff ff       	call   401410 <exit@plt>
  401fa0:	48 8d 35 91 23 00 00 	lea    0x2391(%rip),%rsi        # 404338 <_IO_stdin_used+0x338>
  401fa7:	bf 01 00 00 00       	mov    $0x1,%edi
  401fac:	b8 00 00 00 00       	mov    $0x0,%eax
  401fb1:	e8 0a f4 ff ff       	call   4013c0 <__printf_chk@plt>
  401fb6:	bf 02 00 00 00       	mov    $0x2,%edi
  401fbb:	e8 e9 04 00 00       	call   4024a9 <validate>
  401fc0:	eb d4                	jmp    401f96 <touch2+0x3e>

0000000000401fc2 <hexmatch>:
  401fc2:	f3 0f 1e fa          	endbr64 
  401fc6:	41 55                	push   %r13
  401fc8:	41 54                	push   %r12
  401fca:	55                   	push   %rbp
  401fcb:	53                   	push   %rbx
  401fcc:	48 81 ec 88 00 00 00 	sub    $0x88,%rsp
  401fd3:	89 fd                	mov    %edi,%ebp
  401fd5:	48 89 f3             	mov    %rsi,%rbx
  401fd8:	41 bc 28 00 00 00    	mov    $0x28,%r12d
  401fde:	64 49 8b 04 24       	mov    %fs:(%r12),%rax
  401fe3:	48 89 44 24 78       	mov    %rax,0x78(%rsp)
  401fe8:	31 c0                	xor    %eax,%eax
  401fea:	e8 a1 f3 ff ff       	call   401390 <random@plt>
  401fef:	48 89 c1             	mov    %rax,%rcx
  401ff2:	48 ba 0b d7 a3 70 3d 	movabs $0xa3d70a3d70a3d70b,%rdx
  401ff9:	0a d7 a3 
  401ffc:	48 f7 ea             	imul   %rdx
  401fff:	48 01 ca             	add    %rcx,%rdx
  402002:	48 c1 fa 06          	sar    $0x6,%rdx
  402006:	48 89 c8             	mov    %rcx,%rax
  402009:	48 c1 f8 3f          	sar    $0x3f,%rax
  40200d:	48 29 c2             	sub    %rax,%rdx
  402010:	48 8d 04 92          	lea    (%rdx,%rdx,4),%rax
  402014:	48 8d 04 80          	lea    (%rax,%rax,4),%rax
  402018:	48 c1 e0 02          	shl    $0x2,%rax
  40201c:	48 29 c1             	sub    %rax,%rcx
  40201f:	4c 8d 2c 0c          	lea    (%rsp,%rcx,1),%r13
  402023:	41 89 e8             	mov    %ebp,%r8d
  402026:	48 8d 0d 06 23 00 00 	lea    0x2306(%rip),%rcx        # 404333 <_IO_stdin_used+0x333>
  40202d:	48 c7 c2 ff ff ff ff 	mov    $0xffffffffffffffff,%rdx
  402034:	be 01 00 00 00       	mov    $0x1,%esi
  402039:	4c 89 ef             	mov    %r13,%rdi
  40203c:	b8 00 00 00 00       	mov    $0x0,%eax
  402041:	e8 0a f4 ff ff       	call   401450 <__sprintf_chk@plt>
  402046:	ba 09 00 00 00       	mov    $0x9,%edx
  40204b:	4c 89 ee             	mov    %r13,%rsi
  40204e:	48 89 df             	mov    %rbx,%rdi
  402051:	e8 3a f2 ff ff       	call   401290 <strncmp@plt>
  402056:	85 c0                	test   %eax,%eax
  402058:	0f 94 c0             	sete   %al
  40205b:	48 8b 5c 24 78       	mov    0x78(%rsp),%rbx
  402060:	64 49 33 1c 24       	xor    %fs:(%r12),%rbx
  402065:	75 11                	jne    402078 <hexmatch+0xb6>
  402067:	0f b6 c0             	movzbl %al,%eax
  40206a:	48 81 c4 88 00 00 00 	add    $0x88,%rsp
  402071:	5b                   	pop    %rbx
  402072:	5d                   	pop    %rbp
  402073:	41 5c                	pop    %r12
  402075:	41 5d                	pop    %r13
  402077:	c3                   	ret    
  402078:	e8 9e 06 00 00       	call   40271b <__stack_chk_fail>

000000000040207d <touch3>:
  40207d:	f3 0f 1e fa          	endbr64 
  402081:	53                   	push   %rbx
  402082:	48 89 fb             	mov    %rdi,%rbx
  402085:	c7 05 8d 54 00 00 03 	movl   $0x3,0x548d(%rip)        # 40751c <vlevel>
  40208c:	00 00 00 
  40208f:	48 89 fe             	mov    %rdi,%rsi
  402092:	8b 3d 8c 54 00 00    	mov    0x548c(%rip),%edi        # 407524 <cookie>
  402098:	e8 25 ff ff ff       	call   401fc2 <hexmatch>
  40209d:	85 c0                	test   %eax,%eax
  40209f:	74 2d                	je     4020ce <touch3+0x51>
  4020a1:	48 89 da             	mov    %rbx,%rdx
  4020a4:	48 8d 35 dd 22 00 00 	lea    0x22dd(%rip),%rsi        # 404388 <_IO_stdin_used+0x388>
  4020ab:	bf 01 00 00 00       	mov    $0x1,%edi
  4020b0:	b8 00 00 00 00       	mov    $0x0,%eax
  4020b5:	e8 06 f3 ff ff       	call   4013c0 <__printf_chk@plt>
  4020ba:	bf 03 00 00 00       	mov    $0x3,%edi
  4020bf:	e8 e5 03 00 00       	call   4024a9 <validate>
  4020c4:	bf 00 00 00 00       	mov    $0x0,%edi
  4020c9:	e8 42 f3 ff ff       	call   401410 <exit@plt>
  4020ce:	48 89 da             	mov    %rbx,%rdx
  4020d1:	48 8d 35 d8 22 00 00 	lea    0x22d8(%rip),%rsi        # 4043b0 <_IO_stdin_used+0x3b0>
  4020d8:	bf 01 00 00 00       	mov    $0x1,%edi
  4020dd:	b8 00 00 00 00       	mov    $0x0,%eax
  4020e2:	e8 d9 f2 ff ff       	call   4013c0 <__printf_chk@plt>
  4020e7:	bf 03 00 00 00       	mov    $0x3,%edi
  4020ec:	e8 93 04 00 00       	call   402584 <fail>
  4020f1:	eb d1                	jmp    4020c4 <touch3+0x47>

00000000004020f3 <test>:
  4020f3:	f3 0f 1e fa          	endbr64 
  4020f7:	48 83 ec 08          	sub    $0x8,%rsp
  4020fb:	b8 00 00 00 00       	mov    $0x0,%eax
  402100:	e8 55 fd ff ff       	call   401e5a <getbuf>
  402105:	89 c2                	mov    %eax,%edx
  402107:	48 89 e0             	mov    %rsp,%rax
  40210a:	48 83 e0 0f          	and    $0xf,%rax
  40210e:	74 07                	je     402117 <aligned4>
  402110:	b9 00 00 00 00       	mov    $0x0,%ecx
  402115:	eb 05                	jmp    40211c <done4>

0000000000402117 <aligned4>:
  402117:	b9 01 00 00 00       	mov    $0x1,%ecx

000000000040211c <done4>:
  40211c:	85 c9                	test   %ecx,%ecx
  40211e:	75 23                	jne    402143 <done4+0x27>
  402120:	48 83 ec 08          	sub    $0x8,%rsp
  402124:	48 8d 35 ad 22 00 00 	lea    0x22ad(%rip),%rsi        # 4043d8 <_IO_stdin_used+0x3d8>
  40212b:	bf 01 00 00 00       	mov    $0x1,%edi
  402130:	b8 00 00 00 00       	mov    $0x0,%eax
  402135:	e8 86 f2 ff ff       	call   4013c0 <__printf_chk@plt>
  40213a:	48 83 c4 08          	add    $0x8,%rsp
  40213e:	48 83 c4 08          	add    $0x8,%rsp
  402142:	c3                   	ret    
  402143:	48 8d 35 8e 22 00 00 	lea    0x228e(%rip),%rsi        # 4043d8 <_IO_stdin_used+0x3d8>
  40214a:	bf 01 00 00 00       	mov    $0x1,%edi
  40214f:	b8 00 00 00 00       	mov    $0x0,%eax
  402154:	e8 67 f2 ff ff       	call   4013c0 <__printf_chk@plt>
  402159:	eb e3                	jmp    40213e <done4+0x22>

000000000040215b <test2>:
  40215b:	f3 0f 1e fa          	endbr64 
  40215f:	48 83 ec 08          	sub    $0x8,%rsp
  402163:	b8 00 00 00 00       	mov    $0x0,%eax
  402168:	e8 07 fd ff ff       	call   401e74 <getbuf_withcanary>
  40216d:	89 c2                	mov    %eax,%edx
  40216f:	48 8d 35 8a 22 00 00 	lea    0x228a(%rip),%rsi        # 404400 <_IO_stdin_used+0x400>
  402176:	bf 01 00 00 00       	mov    $0x1,%edi
  40217b:	b8 00 00 00 00       	mov    $0x0,%eax
  402180:	e8 3b f2 ff ff       	call   4013c0 <__printf_chk@plt>
  402185:	48 83 c4 08          	add    $0x8,%rsp
  402189:	c3                   	ret    

000000000040218a <save_char>:
  40218a:	8b 05 b4 5f 00 00    	mov    0x5fb4(%rip),%eax        # 408144 <gets_cnt>
  402190:	3d ff 03 00 00       	cmp    $0x3ff,%eax
  402195:	7f 4a                	jg     4021e1 <save_char+0x57>
  402197:	89 f9                	mov    %edi,%ecx
  402199:	c0 e9 04             	shr    $0x4,%cl
  40219c:	8d 14 40             	lea    (%rax,%rax,2),%edx
  40219f:	4c 8d 05 ca 25 00 00 	lea    0x25ca(%rip),%r8        # 404770 <trans_char>
  4021a6:	83 e1 0f             	and    $0xf,%ecx
  4021a9:	45 0f b6 0c 08       	movzbl (%r8,%rcx,1),%r9d
  4021ae:	48 8d 0d 8b 53 00 00 	lea    0x538b(%rip),%rcx        # 407540 <gets_buf>
  4021b5:	48 63 f2             	movslq %edx,%rsi
  4021b8:	44 88 0c 31          	mov    %r9b,(%rcx,%rsi,1)
  4021bc:	8d 72 01             	lea    0x1(%rdx),%esi
  4021bf:	83 e7 0f             	and    $0xf,%edi
  4021c2:	41 0f b6 3c 38       	movzbl (%r8,%rdi,1),%edi
  4021c7:	48 63 f6             	movslq %esi,%rsi
  4021ca:	40 88 3c 31          	mov    %dil,(%rcx,%rsi,1)
  4021ce:	83 c2 02             	add    $0x2,%edx
  4021d1:	48 63 d2             	movslq %edx,%rdx
  4021d4:	c6 04 11 20          	movb   $0x20,(%rcx,%rdx,1)
  4021d8:	83 c0 01             	add    $0x1,%eax
  4021db:	89 05 63 5f 00 00    	mov    %eax,0x5f63(%rip)        # 408144 <gets_cnt>
  4021e1:	c3                   	ret    

00000000004021e2 <save_term>:
  4021e2:	8b 05 5c 5f 00 00    	mov    0x5f5c(%rip),%eax        # 408144 <gets_cnt>
  4021e8:	8d 04 40             	lea    (%rax,%rax,2),%eax
  4021eb:	48 98                	cltq   
  4021ed:	48 8d 15 4c 53 00 00 	lea    0x534c(%rip),%rdx        # 407540 <gets_buf>
  4021f4:	c6 04 02 00          	movb   $0x0,(%rdx,%rax,1)
  4021f8:	c3                   	ret    

00000000004021f9 <check_fail>:
  4021f9:	f3 0f 1e fa          	endbr64 
  4021fd:	50                   	push   %rax
  4021fe:	58                   	pop    %rax
  4021ff:	48 83 ec 08          	sub    $0x8,%rsp
  402203:	0f be 15 3e 5f 00 00 	movsbl 0x5f3e(%rip),%edx        # 408148 <target_prefix>
  40220a:	4c 8d 05 2f 53 00 00 	lea    0x532f(%rip),%r8        # 407540 <gets_buf>
  402211:	8b 0d 01 53 00 00    	mov    0x5301(%rip),%ecx        # 407518 <check_level>
  402217:	48 8d 35 10 22 00 00 	lea    0x2210(%rip),%rsi        # 40442e <_IO_stdin_used+0x42e>
  40221e:	bf 01 00 00 00       	mov    $0x1,%edi
  402223:	b8 00 00 00 00       	mov    $0x0,%eax
  402228:	e8 93 f1 ff ff       	call   4013c0 <__printf_chk@plt>
  40222d:	bf 01 00 00 00       	mov    $0x1,%edi
  402232:	e8 d9 f1 ff ff       	call   401410 <exit@plt>

0000000000402237 <Gets>:
  402237:	f3 0f 1e fa          	endbr64 
  40223b:	41 54                	push   %r12
  40223d:	55                   	push   %rbp
  40223e:	53                   	push   %rbx
  40223f:	49 89 fc             	mov    %rdi,%r12
  402242:	c7 05 f8 5e 00 00 00 	movl   $0x0,0x5ef8(%rip)        # 408144 <gets_cnt>
  402249:	00 00 00 
  40224c:	48 89 fb             	mov    %rdi,%rbx
  40224f:	48 8b 3d ba 52 00 00 	mov    0x52ba(%rip),%rdi        # 407510 <infile>
  402256:	e8 e5 f1 ff ff       	call   401440 <getc@plt>
  40225b:	83 f8 ff             	cmp    $0xffffffff,%eax
  40225e:	74 18                	je     402278 <Gets+0x41>
  402260:	83 f8 0a             	cmp    $0xa,%eax
  402263:	74 13                	je     402278 <Gets+0x41>
  402265:	48 8d 6b 01          	lea    0x1(%rbx),%rbp
  402269:	88 03                	mov    %al,(%rbx)
  40226b:	0f b6 f8             	movzbl %al,%edi
  40226e:	e8 17 ff ff ff       	call   40218a <save_char>
  402273:	48 89 eb             	mov    %rbp,%rbx
  402276:	eb d7                	jmp    40224f <Gets+0x18>
  402278:	c6 03 00             	movb   $0x0,(%rbx)
  40227b:	b8 00 00 00 00       	mov    $0x0,%eax
  402280:	e8 5d ff ff ff       	call   4021e2 <save_term>
  402285:	4c 89 e0             	mov    %r12,%rax
  402288:	5b                   	pop    %rbx
  402289:	5d                   	pop    %rbp
  40228a:	41 5c                	pop    %r12
  40228c:	c3                   	ret    

000000000040228d <notify_server>:
  40228d:	f3 0f 1e fa          	endbr64 
  402291:	55                   	push   %rbp
  402292:	53                   	push   %rbx
  402293:	4c 8d 9c 24 00 c0 ff 	lea    -0x4000(%rsp),%r11
  40229a:	ff 
  40229b:	48 81 ec 00 10 00 00 	sub    $0x1000,%rsp
  4022a2:	48 83 0c 24 00       	orq    $0x0,(%rsp)
  4022a7:	4c 39 dc             	cmp    %r11,%rsp
  4022aa:	75 ef                	jne    40229b <notify_server+0xe>
  4022ac:	48 83 ec 18          	sub    $0x18,%rsp
  4022b0:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  4022b7:	00 00 
  4022b9:	48 89 84 24 08 40 00 	mov    %rax,0x4008(%rsp)
  4022c0:	00 
  4022c1:	31 c0                	xor    %eax,%eax
  4022c3:	83 3d 5e 52 00 00 00 	cmpl   $0x0,0x525e(%rip)        # 407528 <is_checker>
  4022ca:	0f 85 b7 01 00 00    	jne    402487 <notify_server+0x1fa>
  4022d0:	89 fb                	mov    %edi,%ebx
  4022d2:	81 3d 68 5e 00 00 9c 	cmpl   $0x1f9c,0x5e68(%rip)        # 408144 <gets_cnt>
  4022d9:	1f 00 00 
  4022dc:	7f 18                	jg     4022f6 <notify_server+0x69>
  4022de:	0f be 05 63 5e 00 00 	movsbl 0x5e63(%rip),%eax        # 408148 <target_prefix>
  4022e5:	83 3d b4 51 00 00 00 	cmpl   $0x0,0x51b4(%rip)        # 4074a0 <notify>
  4022ec:	74 23                	je     402311 <notify_server+0x84>
  4022ee:	8b 15 2c 52 00 00    	mov    0x522c(%rip),%edx        # 407520 <authkey>
  4022f4:	eb 20                	jmp    402316 <notify_server+0x89>
  4022f6:	48 8d 35 5b 22 00 00 	lea    0x225b(%rip),%rsi        # 404558 <_IO_stdin_used+0x558>
  4022fd:	bf 01 00 00 00       	mov    $0x1,%edi
  402302:	e8 b9 f0 ff ff       	call   4013c0 <__printf_chk@plt>
  402307:	bf 01 00 00 00       	mov    $0x1,%edi
  40230c:	e8 ff f0 ff ff       	call   401410 <exit@plt>
  402311:	ba ff ff ff ff       	mov    $0xffffffff,%edx
  402316:	85 db                	test   %ebx,%ebx
  402318:	0f 84 9b 00 00 00    	je     4023b9 <notify_server+0x12c>
  40231e:	48 8d 2d 24 21 00 00 	lea    0x2124(%rip),%rbp        # 404449 <_IO_stdin_used+0x449>
  402325:	48 89 e7             	mov    %rsp,%rdi
  402328:	48 8d 0d 11 52 00 00 	lea    0x5211(%rip),%rcx        # 407540 <gets_buf>
  40232f:	51                   	push   %rcx
  402330:	56                   	push   %rsi
  402331:	50                   	push   %rax
  402332:	52                   	push   %rdx
  402333:	49 89 e9             	mov    %rbp,%r9
  402336:	44 8b 05 13 4e 00 00 	mov    0x4e13(%rip),%r8d        # 407150 <target_id>
  40233d:	48 8d 0d 0a 21 00 00 	lea    0x210a(%rip),%rcx        # 40444e <_IO_stdin_used+0x44e>
  402344:	ba 00 20 00 00       	mov    $0x2000,%edx
  402349:	be 01 00 00 00       	mov    $0x1,%esi
  40234e:	b8 00 00 00 00       	mov    $0x0,%eax
  402353:	e8 f8 f0 ff ff       	call   401450 <__sprintf_chk@plt>
  402358:	48 83 c4 20          	add    $0x20,%rsp
  40235c:	83 3d 3d 51 00 00 00 	cmpl   $0x0,0x513d(%rip)        # 4074a0 <notify>
  402363:	0f 84 95 00 00 00    	je     4023fe <notify_server+0x171>
  402369:	48 89 e1             	mov    %rsp,%rcx
  40236c:	4c 8d 8c 24 00 20 00 	lea    0x2000(%rsp),%r9
  402373:	00 
  402374:	41 b8 00 00 00 00    	mov    $0x0,%r8d
  40237a:	48 8b 15 e7 4d 00 00 	mov    0x4de7(%rip),%rdx        # 407168 <lab>
  402381:	48 8b 35 e8 4d 00 00 	mov    0x4de8(%rip),%rsi        # 407170 <course>
  402388:	48 8b 3d d1 4d 00 00 	mov    0x4dd1(%rip),%rdi        # 407160 <user_id>
  40238f:	e8 75 12 00 00       	call   403609 <driver_post>
  402394:	85 c0                	test   %eax,%eax
  402396:	78 2d                	js     4023c5 <notify_server+0x138>
  402398:	85 db                	test   %ebx,%ebx
  40239a:	74 51                	je     4023ed <notify_server+0x160>
  40239c:	48 8d 3d e5 21 00 00 	lea    0x21e5(%rip),%rdi        # 404588 <_IO_stdin_used+0x588>
  4023a3:	e8 08 ef ff ff       	call   4012b0 <puts@plt>
  4023a8:	48 8d 3d c7 20 00 00 	lea    0x20c7(%rip),%rdi        # 404476 <_IO_stdin_used+0x476>
  4023af:	e8 fc ee ff ff       	call   4012b0 <puts@plt>
  4023b4:	e9 ce 00 00 00       	jmp    402487 <notify_server+0x1fa>
  4023b9:	48 8d 2d 84 20 00 00 	lea    0x2084(%rip),%rbp        # 404444 <_IO_stdin_used+0x444>
  4023c0:	e9 60 ff ff ff       	jmp    402325 <notify_server+0x98>
  4023c5:	48 8d 94 24 00 20 00 	lea    0x2000(%rsp),%rdx
  4023cc:	00 
  4023cd:	48 8d 35 96 20 00 00 	lea    0x2096(%rip),%rsi        # 40446a <_IO_stdin_used+0x46a>
  4023d4:	bf 01 00 00 00       	mov    $0x1,%edi
  4023d9:	b8 00 00 00 00       	mov    $0x0,%eax
  4023de:	e8 dd ef ff ff       	call   4013c0 <__printf_chk@plt>
  4023e3:	bf 01 00 00 00       	mov    $0x1,%edi
  4023e8:	e8 23 f0 ff ff       	call   401410 <exit@plt>
  4023ed:	48 8d 3d 8c 20 00 00 	lea    0x208c(%rip),%rdi        # 404480 <_IO_stdin_used+0x480>
  4023f4:	e8 b7 ee ff ff       	call   4012b0 <puts@plt>
  4023f9:	e9 89 00 00 00       	jmp    402487 <notify_server+0x1fa>
  4023fe:	48 89 ea             	mov    %rbp,%rdx
  402401:	48 8d 35 b8 21 00 00 	lea    0x21b8(%rip),%rsi        # 4045c0 <_IO_stdin_used+0x5c0>
  402408:	bf 01 00 00 00       	mov    $0x1,%edi
  40240d:	b8 00 00 00 00       	mov    $0x0,%eax
  402412:	e8 a9 ef ff ff       	call   4013c0 <__printf_chk@plt>
  402417:	48 8b 15 42 4d 00 00 	mov    0x4d42(%rip),%rdx        # 407160 <user_id>
  40241e:	48 8d 35 62 20 00 00 	lea    0x2062(%rip),%rsi        # 404487 <_IO_stdin_used+0x487>
  402425:	bf 01 00 00 00       	mov    $0x1,%edi
  40242a:	b8 00 00 00 00       	mov    $0x0,%eax
  40242f:	e8 8c ef ff ff       	call   4013c0 <__printf_chk@plt>
  402434:	48 8b 15 35 4d 00 00 	mov    0x4d35(%rip),%rdx        # 407170 <course>
  40243b:	48 8d 35 52 20 00 00 	lea    0x2052(%rip),%rsi        # 404494 <_IO_stdin_used+0x494>
  402442:	bf 01 00 00 00       	mov    $0x1,%edi
  402447:	b8 00 00 00 00       	mov    $0x0,%eax
  40244c:	e8 6f ef ff ff       	call   4013c0 <__printf_chk@plt>
  402451:	48 8b 15 10 4d 00 00 	mov    0x4d10(%rip),%rdx        # 407168 <lab>
  402458:	48 8d 35 41 20 00 00 	lea    0x2041(%rip),%rsi        # 4044a0 <_IO_stdin_used+0x4a0>
  40245f:	bf 01 00 00 00       	mov    $0x1,%edi
  402464:	b8 00 00 00 00       	mov    $0x0,%eax
  402469:	e8 52 ef ff ff       	call   4013c0 <__printf_chk@plt>
  40246e:	48 89 e2             	mov    %rsp,%rdx
  402471:	48 8d 35 31 20 00 00 	lea    0x2031(%rip),%rsi        # 4044a9 <_IO_stdin_used+0x4a9>
  402478:	bf 01 00 00 00       	mov    $0x1,%edi
  40247d:	b8 00 00 00 00       	mov    $0x0,%eax
  402482:	e8 39 ef ff ff       	call   4013c0 <__printf_chk@plt>
  402487:	48 8b 84 24 08 40 00 	mov    0x4008(%rsp),%rax
  40248e:	00 
  40248f:	64 48 33 04 25 28 00 	xor    %fs:0x28,%rax
  402496:	00 00 
  402498:	75 0a                	jne    4024a4 <notify_server+0x217>
  40249a:	48 81 c4 18 40 00 00 	add    $0x4018,%rsp
  4024a1:	5b                   	pop    %rbx
  4024a2:	5d                   	pop    %rbp
  4024a3:	c3                   	ret    
  4024a4:	e8 72 02 00 00       	call   40271b <__stack_chk_fail>

00000000004024a9 <validate>:
  4024a9:	f3 0f 1e fa          	endbr64 
  4024ad:	53                   	push   %rbx
  4024ae:	89 fb                	mov    %edi,%ebx
  4024b0:	83 3d 71 50 00 00 00 	cmpl   $0x0,0x5071(%rip)        # 407528 <is_checker>
  4024b7:	74 79                	je     402532 <validate+0x89>
  4024b9:	39 3d 5d 50 00 00    	cmp    %edi,0x505d(%rip)        # 40751c <vlevel>
  4024bf:	75 39                	jne    4024fa <validate+0x51>
  4024c1:	8b 15 51 50 00 00    	mov    0x5051(%rip),%edx        # 407518 <check_level>
  4024c7:	39 fa                	cmp    %edi,%edx
  4024c9:	75 45                	jne    402510 <validate+0x67>
  4024cb:	0f be 0d 76 5c 00 00 	movsbl 0x5c76(%rip),%ecx        # 408148 <target_prefix>
  4024d2:	4c 8d 0d 67 50 00 00 	lea    0x5067(%rip),%r9        # 407540 <gets_buf>
  4024d9:	41 89 f8             	mov    %edi,%r8d
  4024dc:	8b 15 3e 50 00 00    	mov    0x503e(%rip),%edx        # 407520 <authkey>
  4024e2:	48 8d 35 27 21 00 00 	lea    0x2127(%rip),%rsi        # 404610 <_IO_stdin_used+0x610>
  4024e9:	bf 01 00 00 00       	mov    $0x1,%edi
  4024ee:	b8 00 00 00 00       	mov    $0x0,%eax
  4024f3:	e8 c8 ee ff ff       	call   4013c0 <__printf_chk@plt>
  4024f8:	5b                   	pop    %rbx
  4024f9:	c3                   	ret    
  4024fa:	48 8d 3d b4 1f 00 00 	lea    0x1fb4(%rip),%rdi        # 4044b5 <_IO_stdin_used+0x4b5>
  402501:	e8 aa ed ff ff       	call   4012b0 <puts@plt>
  402506:	b8 00 00 00 00       	mov    $0x0,%eax
  40250b:	e8 e9 fc ff ff       	call   4021f9 <check_fail>
  402510:	89 f9                	mov    %edi,%ecx
  402512:	48 8d 35 cf 20 00 00 	lea    0x20cf(%rip),%rsi        # 4045e8 <_IO_stdin_used+0x5e8>
  402519:	bf 01 00 00 00       	mov    $0x1,%edi
  40251e:	b8 00 00 00 00       	mov    $0x0,%eax
  402523:	e8 98 ee ff ff       	call   4013c0 <__printf_chk@plt>
  402528:	b8 00 00 00 00       	mov    $0x0,%eax
  40252d:	e8 c7 fc ff ff       	call   4021f9 <check_fail>
  402532:	39 3d e4 4f 00 00    	cmp    %edi,0x4fe4(%rip)        # 40751c <vlevel>
  402538:	74 1a                	je     402554 <validate+0xab>
  40253a:	48 8d 3d 74 1f 00 00 	lea    0x1f74(%rip),%rdi        # 4044b5 <_IO_stdin_used+0x4b5>
  402541:	e8 6a ed ff ff       	call   4012b0 <puts@plt>
  402546:	89 de                	mov    %ebx,%esi
  402548:	bf 00 00 00 00       	mov    $0x0,%edi
  40254d:	e8 3b fd ff ff       	call   40228d <notify_server>
  402552:	eb a4                	jmp    4024f8 <validate+0x4f>
  402554:	0f be 0d ed 5b 00 00 	movsbl 0x5bed(%rip),%ecx        # 408148 <target_prefix>
  40255b:	89 fa                	mov    %edi,%edx
  40255d:	48 8d 35 d4 20 00 00 	lea    0x20d4(%rip),%rsi        # 404638 <_IO_stdin_used+0x638>
  402564:	bf 01 00 00 00       	mov    $0x1,%edi
  402569:	b8 00 00 00 00       	mov    $0x0,%eax
  40256e:	e8 4d ee ff ff       	call   4013c0 <__printf_chk@plt>
  402573:	89 de                	mov    %ebx,%esi
  402575:	bf 01 00 00 00       	mov    $0x1,%edi
  40257a:	e8 0e fd ff ff       	call   40228d <notify_server>
  40257f:	e9 74 ff ff ff       	jmp    4024f8 <validate+0x4f>

0000000000402584 <fail>:
  402584:	f3 0f 1e fa          	endbr64 
  402588:	48 83 ec 08          	sub    $0x8,%rsp
  40258c:	83 3d 95 4f 00 00 00 	cmpl   $0x0,0x4f95(%rip)        # 407528 <is_checker>
  402593:	75 11                	jne    4025a6 <fail+0x22>
  402595:	89 fe                	mov    %edi,%esi
  402597:	bf 00 00 00 00       	mov    $0x0,%edi
  40259c:	e8 ec fc ff ff       	call   40228d <notify_server>
  4025a1:	48 83 c4 08          	add    $0x8,%rsp
  4025a5:	c3                   	ret    
  4025a6:	b8 00 00 00 00       	mov    $0x0,%eax
  4025ab:	e8 49 fc ff ff       	call   4021f9 <check_fail>

00000000004025b0 <bushandler>:
  4025b0:	f3 0f 1e fa          	endbr64 
  4025b4:	50                   	push   %rax
  4025b5:	58                   	pop    %rax
  4025b6:	48 83 ec 08          	sub    $0x8,%rsp
  4025ba:	83 3d 67 4f 00 00 00 	cmpl   $0x0,0x4f67(%rip)        # 407528 <is_checker>
  4025c1:	74 16                	je     4025d9 <bushandler+0x29>
  4025c3:	48 8d 3d 09 1f 00 00 	lea    0x1f09(%rip),%rdi        # 4044d3 <_IO_stdin_used+0x4d3>
  4025ca:	e8 e1 ec ff ff       	call   4012b0 <puts@plt>
  4025cf:	b8 00 00 00 00       	mov    $0x0,%eax
  4025d4:	e8 20 fc ff ff       	call   4021f9 <check_fail>
  4025d9:	48 8d 3d 90 20 00 00 	lea    0x2090(%rip),%rdi        # 404670 <_IO_stdin_used+0x670>
  4025e0:	e8 cb ec ff ff       	call   4012b0 <puts@plt>
  4025e5:	48 8d 3d f1 1e 00 00 	lea    0x1ef1(%rip),%rdi        # 4044dd <_IO_stdin_used+0x4dd>
  4025ec:	e8 bf ec ff ff       	call   4012b0 <puts@plt>
  4025f1:	be 00 00 00 00       	mov    $0x0,%esi
  4025f6:	bf 00 00 00 00       	mov    $0x0,%edi
  4025fb:	e8 8d fc ff ff       	call   40228d <notify_server>
  402600:	bf 01 00 00 00       	mov    $0x1,%edi
  402605:	e8 06 ee ff ff       	call   401410 <exit@plt>

000000000040260a <seghandler>:
  40260a:	f3 0f 1e fa          	endbr64 
  40260e:	50                   	push   %rax
  40260f:	58                   	pop    %rax
  402610:	48 83 ec 08          	sub    $0x8,%rsp
  402614:	83 3d 0d 4f 00 00 00 	cmpl   $0x0,0x4f0d(%rip)        # 407528 <is_checker>
  40261b:	74 16                	je     402633 <seghandler+0x29>
  40261d:	48 8d 3d cf 1e 00 00 	lea    0x1ecf(%rip),%rdi        # 4044f3 <_IO_stdin_used+0x4f3>
  402624:	e8 87 ec ff ff       	call   4012b0 <puts@plt>
  402629:	b8 00 00 00 00       	mov    $0x0,%eax
  40262e:	e8 c6 fb ff ff       	call   4021f9 <check_fail>
  402633:	48 8d 3d 56 20 00 00 	lea    0x2056(%rip),%rdi        # 404690 <_IO_stdin_used+0x690>
  40263a:	e8 71 ec ff ff       	call   4012b0 <puts@plt>
  40263f:	48 8d 3d 97 1e 00 00 	lea    0x1e97(%rip),%rdi        # 4044dd <_IO_stdin_used+0x4dd>
  402646:	e8 65 ec ff ff       	call   4012b0 <puts@plt>
  40264b:	be 00 00 00 00       	mov    $0x0,%esi
  402650:	bf 00 00 00 00       	mov    $0x0,%edi
  402655:	e8 33 fc ff ff       	call   40228d <notify_server>
  40265a:	bf 01 00 00 00       	mov    $0x1,%edi
  40265f:	e8 ac ed ff ff       	call   401410 <exit@plt>

0000000000402664 <illegalhandler>:
  402664:	f3 0f 1e fa          	endbr64 
  402668:	50                   	push   %rax
  402669:	58                   	pop    %rax
  40266a:	48 83 ec 08          	sub    $0x8,%rsp
  40266e:	83 3d b3 4e 00 00 00 	cmpl   $0x0,0x4eb3(%rip)        # 407528 <is_checker>
  402675:	74 16                	je     40268d <illegalhandler+0x29>
  402677:	48 8d 3d 88 1e 00 00 	lea    0x1e88(%rip),%rdi        # 404506 <_IO_stdin_used+0x506>
  40267e:	e8 2d ec ff ff       	call   4012b0 <puts@plt>
  402683:	b8 00 00 00 00       	mov    $0x0,%eax
  402688:	e8 6c fb ff ff       	call   4021f9 <check_fail>
  40268d:	48 8d 3d 24 20 00 00 	lea    0x2024(%rip),%rdi        # 4046b8 <_IO_stdin_used+0x6b8>
  402694:	e8 17 ec ff ff       	call   4012b0 <puts@plt>
  402699:	48 8d 3d 3d 1e 00 00 	lea    0x1e3d(%rip),%rdi        # 4044dd <_IO_stdin_used+0x4dd>
  4026a0:	e8 0b ec ff ff       	call   4012b0 <puts@plt>
  4026a5:	be 00 00 00 00       	mov    $0x0,%esi
  4026aa:	bf 00 00 00 00       	mov    $0x0,%edi
  4026af:	e8 d9 fb ff ff       	call   40228d <notify_server>
  4026b4:	bf 01 00 00 00       	mov    $0x1,%edi
  4026b9:	e8 52 ed ff ff       	call   401410 <exit@plt>

00000000004026be <sigalrmhandler>:
  4026be:	f3 0f 1e fa          	endbr64 
  4026c2:	50                   	push   %rax
  4026c3:	58                   	pop    %rax
  4026c4:	48 83 ec 08          	sub    $0x8,%rsp
  4026c8:	83 3d 59 4e 00 00 00 	cmpl   $0x0,0x4e59(%rip)        # 407528 <is_checker>
  4026cf:	74 16                	je     4026e7 <sigalrmhandler+0x29>
  4026d1:	48 8d 3d 42 1e 00 00 	lea    0x1e42(%rip),%rdi        # 40451a <_IO_stdin_used+0x51a>
  4026d8:	e8 d3 eb ff ff       	call   4012b0 <puts@plt>
  4026dd:	b8 00 00 00 00       	mov    $0x0,%eax
  4026e2:	e8 12 fb ff ff       	call   4021f9 <check_fail>
  4026e7:	ba 02 00 00 00       	mov    $0x2,%edx
  4026ec:	48 8d 35 f5 1f 00 00 	lea    0x1ff5(%rip),%rsi        # 4046e8 <_IO_stdin_used+0x6e8>
  4026f3:	bf 01 00 00 00       	mov    $0x1,%edi
  4026f8:	b8 00 00 00 00       	mov    $0x0,%eax
  4026fd:	e8 be ec ff ff       	call   4013c0 <__printf_chk@plt>
  402702:	be 00 00 00 00       	mov    $0x0,%esi
  402707:	bf 00 00 00 00       	mov    $0x0,%edi
  40270c:	e8 7c fb ff ff       	call   40228d <notify_server>
  402711:	bf 01 00 00 00       	mov    $0x1,%edi
  402716:	e8 f5 ec ff ff       	call   401410 <exit@plt>

000000000040271b <__stack_chk_fail>:
  40271b:	f3 0f 1e fa          	endbr64 
  40271f:	50                   	push   %rax
  402720:	58                   	pop    %rax
  402721:	48 83 ec 08          	sub    $0x8,%rsp
  402725:	83 3d fc 4d 00 00 00 	cmpl   $0x0,0x4dfc(%rip)        # 407528 <is_checker>
  40272c:	74 16                	je     402744 <__stack_chk_fail+0x29>
  40272e:	48 8d 3d ed 1d 00 00 	lea    0x1ded(%rip),%rdi        # 404522 <_IO_stdin_used+0x522>
  402735:	e8 76 eb ff ff       	call   4012b0 <puts@plt>
  40273a:	b8 00 00 00 00       	mov    $0x0,%eax
  40273f:	e8 b5 fa ff ff       	call   4021f9 <check_fail>
  402744:	48 8d 3d d5 1f 00 00 	lea    0x1fd5(%rip),%rdi        # 404720 <_IO_stdin_used+0x720>
  40274b:	e8 60 eb ff ff       	call   4012b0 <puts@plt>
  402750:	48 8d 3d 86 1d 00 00 	lea    0x1d86(%rip),%rdi        # 4044dd <_IO_stdin_used+0x4dd>
  402757:	e8 54 eb ff ff       	call   4012b0 <puts@plt>
  40275c:	be 00 00 00 00       	mov    $0x0,%esi
  402761:	bf 00 00 00 00       	mov    $0x0,%edi
  402766:	e8 22 fb ff ff       	call   40228d <notify_server>
  40276b:	bf 01 00 00 00       	mov    $0x1,%edi
  402770:	e8 9b ec ff ff       	call   401410 <exit@plt>

0000000000402775 <launch>:
  402775:	f3 0f 1e fa          	endbr64 
  402779:	55                   	push   %rbp
  40277a:	48 89 e5             	mov    %rsp,%rbp
  40277d:	53                   	push   %rbx
  40277e:	48 83 ec 18          	sub    $0x18,%rsp
  402782:	48 89 fa             	mov    %rdi,%rdx
  402785:	89 f3                	mov    %esi,%ebx
  402787:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  40278e:	00 00 
  402790:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
  402794:	31 c0                	xor    %eax,%eax
  402796:	48 8d 47 17          	lea    0x17(%rdi),%rax
  40279a:	48 89 c1             	mov    %rax,%rcx
  40279d:	48 83 e1 f0          	and    $0xfffffffffffffff0,%rcx
  4027a1:	48 25 00 f0 ff ff    	and    $0xfffffffffffff000,%rax
  4027a7:	48 89 e6             	mov    %rsp,%rsi
  4027aa:	48 29 c6             	sub    %rax,%rsi
  4027ad:	48 89 f0             	mov    %rsi,%rax
  4027b0:	48 39 c4             	cmp    %rax,%rsp
  4027b3:	74 12                	je     4027c7 <launch+0x52>
  4027b5:	48 81 ec 00 10 00 00 	sub    $0x1000,%rsp
  4027bc:	48 83 8c 24 f8 0f 00 	orq    $0x0,0xff8(%rsp)
  4027c3:	00 00 
  4027c5:	eb e9                	jmp    4027b0 <launch+0x3b>
  4027c7:	48 89 c8             	mov    %rcx,%rax
  4027ca:	25 ff 0f 00 00       	and    $0xfff,%eax
  4027cf:	48 29 c4             	sub    %rax,%rsp
  4027d2:	48 85 c0             	test   %rax,%rax
  4027d5:	74 06                	je     4027dd <launch+0x68>
  4027d7:	48 83 4c 04 f8 00    	orq    $0x0,-0x8(%rsp,%rax,1)
  4027dd:	48 8d 7c 24 0f       	lea    0xf(%rsp),%rdi
  4027e2:	48 83 e7 f0          	and    $0xfffffffffffffff0,%rdi
  4027e6:	be f4 00 00 00       	mov    $0xf4,%esi
  4027eb:	e8 f0 ea ff ff       	call   4012e0 <memset@plt>
  4027f0:	48 8b 05 c9 4c 00 00 	mov    0x4cc9(%rip),%rax        # 4074c0 <stdin@GLIBC_2.2.5>
  4027f7:	48 39 05 12 4d 00 00 	cmp    %rax,0x4d12(%rip)        # 407510 <infile>
  4027fe:	74 42                	je     402842 <launch+0xcd>
  402800:	c7 05 12 4d 00 00 00 	movl   $0x0,0x4d12(%rip)        # 40751c <vlevel>
  402807:	00 00 00 
  40280a:	85 db                	test   %ebx,%ebx
  40280c:	75 42                	jne    402850 <launch+0xdb>
  40280e:	b8 00 00 00 00       	mov    $0x0,%eax
  402813:	e8 db f8 ff ff       	call   4020f3 <test>
  402818:	83 3d 09 4d 00 00 00 	cmpl   $0x0,0x4d09(%rip)        # 407528 <is_checker>
  40281f:	75 3b                	jne    40285c <launch+0xe7>
  402821:	48 8d 3d 21 1d 00 00 	lea    0x1d21(%rip),%rdi        # 404549 <_IO_stdin_used+0x549>
  402828:	e8 83 ea ff ff       	call   4012b0 <puts@plt>
  40282d:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  402831:	64 48 33 04 25 28 00 	xor    %fs:0x28,%rax
  402838:	00 00 
  40283a:	75 36                	jne    402872 <launch+0xfd>
  40283c:	48 8b 5d f8          	mov    -0x8(%rbp),%rbx
  402840:	c9                   	leave  
  402841:	c3                   	ret    
  402842:	48 8d 3d e8 1c 00 00 	lea    0x1ce8(%rip),%rdi        # 404531 <_IO_stdin_used+0x531>
  402849:	e8 62 ea ff ff       	call   4012b0 <puts@plt>
  40284e:	eb b0                	jmp    402800 <launch+0x8b>
  402850:	b8 00 00 00 00       	mov    $0x0,%eax
  402855:	e8 01 f9 ff ff       	call   40215b <test2>
  40285a:	eb bc                	jmp    402818 <launch+0xa3>
  40285c:	48 8d 3d db 1c 00 00 	lea    0x1cdb(%rip),%rdi        # 40453e <_IO_stdin_used+0x53e>
  402863:	e8 48 ea ff ff       	call   4012b0 <puts@plt>
  402868:	b8 00 00 00 00       	mov    $0x0,%eax
  40286d:	e8 87 f9 ff ff       	call   4021f9 <check_fail>
  402872:	e8 a4 fe ff ff       	call   40271b <__stack_chk_fail>

0000000000402877 <stable_launch>:
  402877:	f3 0f 1e fa          	endbr64 
  40287b:	55                   	push   %rbp
  40287c:	53                   	push   %rbx
  40287d:	48 83 ec 08          	sub    $0x8,%rsp
  402881:	89 f5                	mov    %esi,%ebp
  402883:	48 89 3d 7e 4c 00 00 	mov    %rdi,0x4c7e(%rip)        # 407508 <global_offset>
  40288a:	41 b9 00 00 00 00    	mov    $0x0,%r9d
  402890:	41 b8 00 00 00 00    	mov    $0x0,%r8d
  402896:	b9 32 01 00 00       	mov    $0x132,%ecx
  40289b:	ba 07 00 00 00       	mov    $0x7,%edx
  4028a0:	be 00 00 10 00       	mov    $0x100000,%esi
  4028a5:	bf 00 60 58 55       	mov    $0x55586000,%edi
  4028aa:	e8 21 ea ff ff       	call   4012d0 <mmap@plt>
  4028af:	48 89 c3             	mov    %rax,%rbx
  4028b2:	48 3d 00 60 58 55    	cmp    $0x55586000,%rax
  4028b8:	75 4a                	jne    402904 <stable_launch+0x8d>
  4028ba:	48 8d 90 f8 ff 0f 00 	lea    0xffff8(%rax),%rdx
  4028c1:	48 89 15 88 58 00 00 	mov    %rdx,0x5888(%rip)        # 408150 <stack_top>
  4028c8:	48 89 e0             	mov    %rsp,%rax
  4028cb:	48 89 d4             	mov    %rdx,%rsp
  4028ce:	48 89 c2             	mov    %rax,%rdx
  4028d1:	48 89 15 28 4c 00 00 	mov    %rdx,0x4c28(%rip)        # 407500 <global_save_stack>
  4028d8:	89 ee                	mov    %ebp,%esi
  4028da:	48 8b 3d 27 4c 00 00 	mov    0x4c27(%rip),%rdi        # 407508 <global_offset>
  4028e1:	e8 8f fe ff ff       	call   402775 <launch>
  4028e6:	48 8b 05 13 4c 00 00 	mov    0x4c13(%rip),%rax        # 407500 <global_save_stack>
  4028ed:	48 89 c4             	mov    %rax,%rsp
  4028f0:	be 00 00 10 00       	mov    $0x100000,%esi
  4028f5:	48 89 df             	mov    %rbx,%rdi
  4028f8:	e8 b3 ea ff ff       	call   4013b0 <munmap@plt>
  4028fd:	48 83 c4 08          	add    $0x8,%rsp
  402901:	5b                   	pop    %rbx
  402902:	5d                   	pop    %rbp
  402903:	c3                   	ret    
  402904:	be 00 00 10 00       	mov    $0x100000,%esi
  402909:	48 89 c7             	mov    %rax,%rdi
  40290c:	e8 9f ea ff ff       	call   4013b0 <munmap@plt>
  402911:	b9 00 60 58 55       	mov    $0x55586000,%ecx
  402916:	48 8d 15 2b 1e 00 00 	lea    0x1e2b(%rip),%rdx        # 404748 <_IO_stdin_used+0x748>
  40291d:	be 01 00 00 00       	mov    $0x1,%esi
  402922:	48 8b 3d b7 4b 00 00 	mov    0x4bb7(%rip),%rdi        # 4074e0 <stderr@GLIBC_2.2.5>
  402929:	b8 00 00 00 00       	mov    $0x0,%eax
  40292e:	e8 fd ea ff ff       	call   401430 <__fprintf_chk@plt>
  402933:	bf 01 00 00 00       	mov    $0x1,%edi
  402938:	e8 d3 ea ff ff       	call   401410 <exit@plt>

000000000040293d <rio_readinitb>:
  40293d:	89 37                	mov    %esi,(%rdi)
  40293f:	c7 47 04 00 00 00 00 	movl   $0x0,0x4(%rdi)
  402946:	48 8d 47 10          	lea    0x10(%rdi),%rax
  40294a:	48 89 47 08          	mov    %rax,0x8(%rdi)
  40294e:	c3                   	ret    

000000000040294f <sigalrm_handler>:
  40294f:	f3 0f 1e fa          	endbr64 
  402953:	50                   	push   %rax
  402954:	58                   	pop    %rax
  402955:	48 83 ec 08          	sub    $0x8,%rsp
  402959:	b9 00 00 00 00       	mov    $0x0,%ecx
  40295e:	48 8d 15 1b 1e 00 00 	lea    0x1e1b(%rip),%rdx        # 404780 <trans_char+0x10>
  402965:	be 01 00 00 00       	mov    $0x1,%esi
  40296a:	48 8b 3d 6f 4b 00 00 	mov    0x4b6f(%rip),%rdi        # 4074e0 <stderr@GLIBC_2.2.5>
  402971:	b8 00 00 00 00       	mov    $0x0,%eax
  402976:	e8 b5 ea ff ff       	call   401430 <__fprintf_chk@plt>
  40297b:	bf 01 00 00 00       	mov    $0x1,%edi
  402980:	e8 8b ea ff ff       	call   401410 <exit@plt>

0000000000402985 <rio_writen>:
  402985:	41 55                	push   %r13
  402987:	41 54                	push   %r12
  402989:	55                   	push   %rbp
  40298a:	53                   	push   %rbx
  40298b:	48 83 ec 08          	sub    $0x8,%rsp
  40298f:	41 89 fc             	mov    %edi,%r12d
  402992:	48 89 f5             	mov    %rsi,%rbp
  402995:	49 89 d5             	mov    %rdx,%r13
  402998:	48 89 d3             	mov    %rdx,%rbx
  40299b:	eb 06                	jmp    4029a3 <rio_writen+0x1e>
  40299d:	48 29 c3             	sub    %rax,%rbx
  4029a0:	48 01 c5             	add    %rax,%rbp
  4029a3:	48 85 db             	test   %rbx,%rbx
  4029a6:	74 24                	je     4029cc <rio_writen+0x47>
  4029a8:	48 89 da             	mov    %rbx,%rdx
  4029ab:	48 89 ee             	mov    %rbp,%rsi
  4029ae:	44 89 e7             	mov    %r12d,%edi
  4029b1:	e8 0a e9 ff ff       	call   4012c0 <write@plt>
  4029b6:	48 85 c0             	test   %rax,%rax
  4029b9:	7f e2                	jg     40299d <rio_writen+0x18>
  4029bb:	e8 a0 e8 ff ff       	call   401260 <__errno_location@plt>
  4029c0:	83 38 04             	cmpl   $0x4,(%rax)
  4029c3:	75 15                	jne    4029da <rio_writen+0x55>
  4029c5:	b8 00 00 00 00       	mov    $0x0,%eax
  4029ca:	eb d1                	jmp    40299d <rio_writen+0x18>
  4029cc:	4c 89 e8             	mov    %r13,%rax
  4029cf:	48 83 c4 08          	add    $0x8,%rsp
  4029d3:	5b                   	pop    %rbx
  4029d4:	5d                   	pop    %rbp
  4029d5:	41 5c                	pop    %r12
  4029d7:	41 5d                	pop    %r13
  4029d9:	c3                   	ret    
  4029da:	48 c7 c0 ff ff ff ff 	mov    $0xffffffffffffffff,%rax
  4029e1:	eb ec                	jmp    4029cf <rio_writen+0x4a>

00000000004029e3 <rio_read>:
  4029e3:	41 55                	push   %r13
  4029e5:	41 54                	push   %r12
  4029e7:	55                   	push   %rbp
  4029e8:	53                   	push   %rbx
  4029e9:	48 83 ec 08          	sub    $0x8,%rsp
  4029ed:	48 89 fb             	mov    %rdi,%rbx
  4029f0:	49 89 f5             	mov    %rsi,%r13
  4029f3:	49 89 d4             	mov    %rdx,%r12
  4029f6:	eb 17                	jmp    402a0f <rio_read+0x2c>
  4029f8:	e8 63 e8 ff ff       	call   401260 <__errno_location@plt>
  4029fd:	83 38 04             	cmpl   $0x4,(%rax)
  402a00:	74 0d                	je     402a0f <rio_read+0x2c>
  402a02:	48 c7 c0 ff ff ff ff 	mov    $0xffffffffffffffff,%rax
  402a09:	eb 54                	jmp    402a5f <rio_read+0x7c>
  402a0b:	48 89 6b 08          	mov    %rbp,0x8(%rbx)
  402a0f:	8b 6b 04             	mov    0x4(%rbx),%ebp
  402a12:	85 ed                	test   %ebp,%ebp
  402a14:	7f 23                	jg     402a39 <rio_read+0x56>
  402a16:	48 8d 6b 10          	lea    0x10(%rbx),%rbp
  402a1a:	8b 3b                	mov    (%rbx),%edi
  402a1c:	ba 00 20 00 00       	mov    $0x2000,%edx
  402a21:	48 89 ee             	mov    %rbp,%rsi
  402a24:	e8 e7 e8 ff ff       	call   401310 <read@plt>
  402a29:	89 43 04             	mov    %eax,0x4(%rbx)
  402a2c:	85 c0                	test   %eax,%eax
  402a2e:	78 c8                	js     4029f8 <rio_read+0x15>
  402a30:	75 d9                	jne    402a0b <rio_read+0x28>
  402a32:	b8 00 00 00 00       	mov    $0x0,%eax
  402a37:	eb 26                	jmp    402a5f <rio_read+0x7c>
  402a39:	89 e8                	mov    %ebp,%eax
  402a3b:	4c 39 e0             	cmp    %r12,%rax
  402a3e:	72 03                	jb     402a43 <rio_read+0x60>
  402a40:	44 89 e5             	mov    %r12d,%ebp
  402a43:	4c 63 e5             	movslq %ebp,%r12
  402a46:	48 8b 73 08          	mov    0x8(%rbx),%rsi
  402a4a:	4c 89 e2             	mov    %r12,%rdx
  402a4d:	4c 89 ef             	mov    %r13,%rdi
  402a50:	e8 1b e9 ff ff       	call   401370 <memcpy@plt>
  402a55:	4c 01 63 08          	add    %r12,0x8(%rbx)
  402a59:	29 6b 04             	sub    %ebp,0x4(%rbx)
  402a5c:	4c 89 e0             	mov    %r12,%rax
  402a5f:	48 83 c4 08          	add    $0x8,%rsp
  402a63:	5b                   	pop    %rbx
  402a64:	5d                   	pop    %rbp
  402a65:	41 5c                	pop    %r12
  402a67:	41 5d                	pop    %r13
  402a69:	c3                   	ret    

0000000000402a6a <rio_readlineb>:
  402a6a:	41 55                	push   %r13
  402a6c:	41 54                	push   %r12
  402a6e:	55                   	push   %rbp
  402a6f:	53                   	push   %rbx
  402a70:	48 83 ec 18          	sub    $0x18,%rsp
  402a74:	49 89 fd             	mov    %rdi,%r13
  402a77:	48 89 f5             	mov    %rsi,%rbp
  402a7a:	49 89 d4             	mov    %rdx,%r12
  402a7d:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  402a84:	00 00 
  402a86:	48 89 44 24 08       	mov    %rax,0x8(%rsp)
  402a8b:	31 c0                	xor    %eax,%eax
  402a8d:	bb 01 00 00 00       	mov    $0x1,%ebx
  402a92:	eb 18                	jmp    402aac <rio_readlineb+0x42>
  402a94:	85 c0                	test   %eax,%eax
  402a96:	75 65                	jne    402afd <rio_readlineb+0x93>
  402a98:	48 83 fb 01          	cmp    $0x1,%rbx
  402a9c:	75 3d                	jne    402adb <rio_readlineb+0x71>
  402a9e:	b8 00 00 00 00       	mov    $0x0,%eax
  402aa3:	eb 3d                	jmp    402ae2 <rio_readlineb+0x78>
  402aa5:	48 83 c3 01          	add    $0x1,%rbx
  402aa9:	48 89 d5             	mov    %rdx,%rbp
  402aac:	4c 39 e3             	cmp    %r12,%rbx
  402aaf:	73 2a                	jae    402adb <rio_readlineb+0x71>
  402ab1:	48 8d 74 24 07       	lea    0x7(%rsp),%rsi
  402ab6:	ba 01 00 00 00       	mov    $0x1,%edx
  402abb:	4c 89 ef             	mov    %r13,%rdi
  402abe:	e8 20 ff ff ff       	call   4029e3 <rio_read>
  402ac3:	83 f8 01             	cmp    $0x1,%eax
  402ac6:	75 cc                	jne    402a94 <rio_readlineb+0x2a>
  402ac8:	48 8d 55 01          	lea    0x1(%rbp),%rdx
  402acc:	0f b6 44 24 07       	movzbl 0x7(%rsp),%eax
  402ad1:	88 45 00             	mov    %al,0x0(%rbp)
  402ad4:	3c 0a                	cmp    $0xa,%al
  402ad6:	75 cd                	jne    402aa5 <rio_readlineb+0x3b>
  402ad8:	48 89 d5             	mov    %rdx,%rbp
  402adb:	c6 45 00 00          	movb   $0x0,0x0(%rbp)
  402adf:	48 89 d8             	mov    %rbx,%rax
  402ae2:	48 8b 4c 24 08       	mov    0x8(%rsp),%rcx
  402ae7:	64 48 33 0c 25 28 00 	xor    %fs:0x28,%rcx
  402aee:	00 00 
  402af0:	75 14                	jne    402b06 <rio_readlineb+0x9c>
  402af2:	48 83 c4 18          	add    $0x18,%rsp
  402af6:	5b                   	pop    %rbx
  402af7:	5d                   	pop    %rbp
  402af8:	41 5c                	pop    %r12
  402afa:	41 5d                	pop    %r13
  402afc:	c3                   	ret    
  402afd:	48 c7 c0 ff ff ff ff 	mov    $0xffffffffffffffff,%rax
  402b04:	eb dc                	jmp    402ae2 <rio_readlineb+0x78>
  402b06:	e8 10 fc ff ff       	call   40271b <__stack_chk_fail>

0000000000402b0b <urlencode>:
  402b0b:	41 54                	push   %r12
  402b0d:	55                   	push   %rbp
  402b0e:	53                   	push   %rbx
  402b0f:	48 83 ec 10          	sub    $0x10,%rsp
  402b13:	48 89 fb             	mov    %rdi,%rbx
  402b16:	48 89 f5             	mov    %rsi,%rbp
  402b19:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  402b20:	00 00 
  402b22:	48 89 44 24 08       	mov    %rax,0x8(%rsp)
  402b27:	31 c0                	xor    %eax,%eax
  402b29:	48 c7 c1 ff ff ff ff 	mov    $0xffffffffffffffff,%rcx
  402b30:	f2 ae                	repnz scas %es:(%rdi),%al
  402b32:	48 f7 d1             	not    %rcx
  402b35:	8d 41 ff             	lea    -0x1(%rcx),%eax
  402b38:	eb 0f                	jmp    402b49 <urlencode+0x3e>
  402b3a:	44 88 45 00          	mov    %r8b,0x0(%rbp)
  402b3e:	48 8d 6d 01          	lea    0x1(%rbp),%rbp
  402b42:	48 83 c3 01          	add    $0x1,%rbx
  402b46:	44 89 e0             	mov    %r12d,%eax
  402b49:	44 8d 60 ff          	lea    -0x1(%rax),%r12d
  402b4d:	85 c0                	test   %eax,%eax
  402b4f:	0f 84 a8 00 00 00    	je     402bfd <urlencode+0xf2>
  402b55:	44 0f b6 03          	movzbl (%rbx),%r8d
  402b59:	41 80 f8 2a          	cmp    $0x2a,%r8b
  402b5d:	0f 94 c2             	sete   %dl
  402b60:	41 80 f8 2d          	cmp    $0x2d,%r8b
  402b64:	0f 94 c0             	sete   %al
  402b67:	08 c2                	or     %al,%dl
  402b69:	75 cf                	jne    402b3a <urlencode+0x2f>
  402b6b:	41 80 f8 2e          	cmp    $0x2e,%r8b
  402b6f:	74 c9                	je     402b3a <urlencode+0x2f>
  402b71:	41 80 f8 5f          	cmp    $0x5f,%r8b
  402b75:	74 c3                	je     402b3a <urlencode+0x2f>
  402b77:	41 8d 40 d0          	lea    -0x30(%r8),%eax
  402b7b:	3c 09                	cmp    $0x9,%al
  402b7d:	76 bb                	jbe    402b3a <urlencode+0x2f>
  402b7f:	41 8d 40 bf          	lea    -0x41(%r8),%eax
  402b83:	3c 19                	cmp    $0x19,%al
  402b85:	76 b3                	jbe    402b3a <urlencode+0x2f>
  402b87:	41 8d 40 9f          	lea    -0x61(%r8),%eax
  402b8b:	3c 19                	cmp    $0x19,%al
  402b8d:	76 ab                	jbe    402b3a <urlencode+0x2f>
  402b8f:	41 80 f8 20          	cmp    $0x20,%r8b
  402b93:	74 56                	je     402beb <urlencode+0xe0>
  402b95:	41 8d 40 e0          	lea    -0x20(%r8),%eax
  402b99:	3c 5f                	cmp    $0x5f,%al
  402b9b:	0f 96 c2             	setbe  %dl
  402b9e:	41 80 f8 09          	cmp    $0x9,%r8b
  402ba2:	0f 94 c0             	sete   %al
  402ba5:	08 c2                	or     %al,%dl
  402ba7:	74 4f                	je     402bf8 <urlencode+0xed>
  402ba9:	48 89 e7             	mov    %rsp,%rdi
  402bac:	45 0f b6 c0          	movzbl %r8b,%r8d
  402bb0:	48 8d 0d 7e 1c 00 00 	lea    0x1c7e(%rip),%rcx        # 404835 <trans_char+0xc5>
  402bb7:	ba 08 00 00 00       	mov    $0x8,%edx
  402bbc:	be 01 00 00 00       	mov    $0x1,%esi
  402bc1:	b8 00 00 00 00       	mov    $0x0,%eax
  402bc6:	e8 85 e8 ff ff       	call   401450 <__sprintf_chk@plt>
  402bcb:	0f b6 04 24          	movzbl (%rsp),%eax
  402bcf:	88 45 00             	mov    %al,0x0(%rbp)
  402bd2:	0f b6 44 24 01       	movzbl 0x1(%rsp),%eax
  402bd7:	88 45 01             	mov    %al,0x1(%rbp)
  402bda:	0f b6 44 24 02       	movzbl 0x2(%rsp),%eax
  402bdf:	88 45 02             	mov    %al,0x2(%rbp)
  402be2:	48 8d 6d 03          	lea    0x3(%rbp),%rbp
  402be6:	e9 57 ff ff ff       	jmp    402b42 <urlencode+0x37>
  402beb:	c6 45 00 2b          	movb   $0x2b,0x0(%rbp)
  402bef:	48 8d 6d 01          	lea    0x1(%rbp),%rbp
  402bf3:	e9 4a ff ff ff       	jmp    402b42 <urlencode+0x37>
  402bf8:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  402bfd:	48 8b 74 24 08       	mov    0x8(%rsp),%rsi
  402c02:	64 48 33 34 25 28 00 	xor    %fs:0x28,%rsi
  402c09:	00 00 
  402c0b:	75 09                	jne    402c16 <urlencode+0x10b>
  402c0d:	48 83 c4 10          	add    $0x10,%rsp
  402c11:	5b                   	pop    %rbx
  402c12:	5d                   	pop    %rbp
  402c13:	41 5c                	pop    %r12
  402c15:	c3                   	ret    
  402c16:	e8 00 fb ff ff       	call   40271b <__stack_chk_fail>

0000000000402c1b <submitr>:
  402c1b:	f3 0f 1e fa          	endbr64 
  402c1f:	41 57                	push   %r15
  402c21:	41 56                	push   %r14
  402c23:	41 55                	push   %r13
  402c25:	41 54                	push   %r12
  402c27:	55                   	push   %rbp
  402c28:	53                   	push   %rbx
  402c29:	4c 8d 9c 24 00 60 ff 	lea    -0xa000(%rsp),%r11
  402c30:	ff 
  402c31:	48 81 ec 00 10 00 00 	sub    $0x1000,%rsp
  402c38:	48 83 0c 24 00       	orq    $0x0,(%rsp)
  402c3d:	4c 39 dc             	cmp    %r11,%rsp
  402c40:	75 ef                	jne    402c31 <submitr+0x16>
  402c42:	48 83 ec 68          	sub    $0x68,%rsp
  402c46:	49 89 fc             	mov    %rdi,%r12
  402c49:	89 74 24 1c          	mov    %esi,0x1c(%rsp)
  402c4d:	48 89 54 24 08       	mov    %rdx,0x8(%rsp)
  402c52:	49 89 cd             	mov    %rcx,%r13
  402c55:	4c 89 44 24 10       	mov    %r8,0x10(%rsp)
  402c5a:	4d 89 ce             	mov    %r9,%r14
  402c5d:	48 8b ac 24 a0 a0 00 	mov    0xa0a0(%rsp),%rbp
  402c64:	00 
  402c65:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  402c6c:	00 00 
  402c6e:	48 89 84 24 58 a0 00 	mov    %rax,0xa058(%rsp)
  402c75:	00 
  402c76:	31 c0                	xor    %eax,%eax
  402c78:	c7 44 24 2c 00 00 00 	movl   $0x0,0x2c(%rsp)
  402c7f:	00 
  402c80:	ba 00 00 00 00       	mov    $0x0,%edx
  402c85:	be 01 00 00 00       	mov    $0x1,%esi
  402c8a:	bf 02 00 00 00       	mov    $0x2,%edi
  402c8f:	e8 cc e7 ff ff       	call   401460 <socket@plt>
  402c94:	85 c0                	test   %eax,%eax
  402c96:	0f 88 a5 02 00 00    	js     402f41 <submitr+0x326>
  402c9c:	89 c3                	mov    %eax,%ebx
  402c9e:	4c 89 e7             	mov    %r12,%rdi
  402ca1:	e8 9a e6 ff ff       	call   401340 <gethostbyname@plt>
  402ca6:	48 85 c0             	test   %rax,%rax
  402ca9:	0f 84 de 02 00 00    	je     402f8d <submitr+0x372>
  402caf:	4c 8d 7c 24 30       	lea    0x30(%rsp),%r15
  402cb4:	48 c7 44 24 30 00 00 	movq   $0x0,0x30(%rsp)
  402cbb:	00 00 
  402cbd:	48 c7 44 24 38 00 00 	movq   $0x0,0x38(%rsp)
  402cc4:	00 00 
  402cc6:	66 c7 44 24 30 02 00 	movw   $0x2,0x30(%rsp)
  402ccd:	48 63 50 14          	movslq 0x14(%rax),%rdx
  402cd1:	48 8b 40 18          	mov    0x18(%rax),%rax
  402cd5:	48 8b 30             	mov    (%rax),%rsi
  402cd8:	48 8d 7c 24 34       	lea    0x34(%rsp),%rdi
  402cdd:	b9 0c 00 00 00       	mov    $0xc,%ecx
  402ce2:	e8 69 e6 ff ff       	call   401350 <__memmove_chk@plt>
  402ce7:	0f b7 74 24 1c       	movzwl 0x1c(%rsp),%esi
  402cec:	66 c1 c6 08          	rol    $0x8,%si
  402cf0:	66 89 74 24 32       	mov    %si,0x32(%rsp)
  402cf5:	ba 10 00 00 00       	mov    $0x10,%edx
  402cfa:	4c 89 fe             	mov    %r15,%rsi
  402cfd:	89 df                	mov    %ebx,%edi
  402cff:	e8 1c e7 ff ff       	call   401420 <connect@plt>
  402d04:	85 c0                	test   %eax,%eax
  402d06:	0f 88 f7 02 00 00    	js     403003 <submitr+0x3e8>
  402d0c:	48 c7 c6 ff ff ff ff 	mov    $0xffffffffffffffff,%rsi
  402d13:	b8 00 00 00 00       	mov    $0x0,%eax
  402d18:	48 89 f1             	mov    %rsi,%rcx
  402d1b:	4c 89 f7             	mov    %r14,%rdi
  402d1e:	f2 ae                	repnz scas %es:(%rdi),%al
  402d20:	48 89 ca             	mov    %rcx,%rdx
  402d23:	48 f7 d2             	not    %rdx
  402d26:	48 89 f1             	mov    %rsi,%rcx
  402d29:	48 8b 7c 24 08       	mov    0x8(%rsp),%rdi
  402d2e:	f2 ae                	repnz scas %es:(%rdi),%al
  402d30:	48 f7 d1             	not    %rcx
  402d33:	49 89 c8             	mov    %rcx,%r8
  402d36:	48 89 f1             	mov    %rsi,%rcx
  402d39:	4c 89 ef             	mov    %r13,%rdi
  402d3c:	f2 ae                	repnz scas %es:(%rdi),%al
  402d3e:	48 f7 d1             	not    %rcx
  402d41:	4d 8d 44 08 fe       	lea    -0x2(%r8,%rcx,1),%r8
  402d46:	48 89 f1             	mov    %rsi,%rcx
  402d49:	48 8b 7c 24 10       	mov    0x10(%rsp),%rdi
  402d4e:	f2 ae                	repnz scas %es:(%rdi),%al
  402d50:	48 89 c8             	mov    %rcx,%rax
  402d53:	48 f7 d0             	not    %rax
  402d56:	49 8d 4c 00 ff       	lea    -0x1(%r8,%rax,1),%rcx
  402d5b:	48 8d 44 52 fd       	lea    -0x3(%rdx,%rdx,2),%rax
  402d60:	48 8d 84 01 80 00 00 	lea    0x80(%rcx,%rax,1),%rax
  402d67:	00 
  402d68:	48 3d 00 20 00 00    	cmp    $0x2000,%rax
  402d6e:	0f 87 f7 02 00 00    	ja     40306b <submitr+0x450>
  402d74:	48 8d b4 24 50 40 00 	lea    0x4050(%rsp),%rsi
  402d7b:	00 
  402d7c:	b9 00 04 00 00       	mov    $0x400,%ecx
  402d81:	b8 00 00 00 00       	mov    $0x0,%eax
  402d86:	48 89 f7             	mov    %rsi,%rdi
  402d89:	f3 48 ab             	rep stos %rax,%es:(%rdi)
  402d8c:	4c 89 f7             	mov    %r14,%rdi
  402d8f:	e8 77 fd ff ff       	call   402b0b <urlencode>
  402d94:	85 c0                	test   %eax,%eax
  402d96:	0f 88 42 03 00 00    	js     4030de <submitr+0x4c3>
  402d9c:	4c 8d bc 24 50 20 00 	lea    0x2050(%rsp),%r15
  402da3:	00 
  402da4:	48 83 ec 08          	sub    $0x8,%rsp
  402da8:	41 54                	push   %r12
  402daa:	48 8d 84 24 60 40 00 	lea    0x4060(%rsp),%rax
  402db1:	00 
  402db2:	50                   	push   %rax
  402db3:	41 55                	push   %r13
  402db5:	4c 8b 4c 24 30       	mov    0x30(%rsp),%r9
  402dba:	4c 8b 44 24 28       	mov    0x28(%rsp),%r8
  402dbf:	48 8d 0d e2 19 00 00 	lea    0x19e2(%rip),%rcx        # 4047a8 <trans_char+0x38>
  402dc6:	ba 00 20 00 00       	mov    $0x2000,%edx
  402dcb:	be 01 00 00 00       	mov    $0x1,%esi
  402dd0:	4c 89 ff             	mov    %r15,%rdi
  402dd3:	b8 00 00 00 00       	mov    $0x0,%eax
  402dd8:	e8 73 e6 ff ff       	call   401450 <__sprintf_chk@plt>
  402ddd:	48 c7 c1 ff ff ff ff 	mov    $0xffffffffffffffff,%rcx
  402de4:	b8 00 00 00 00       	mov    $0x0,%eax
  402de9:	4c 89 ff             	mov    %r15,%rdi
  402dec:	f2 ae                	repnz scas %es:(%rdi),%al
  402dee:	48 f7 d1             	not    %rcx
  402df1:	48 8d 51 ff          	lea    -0x1(%rcx),%rdx
  402df5:	48 83 c4 20          	add    $0x20,%rsp
  402df9:	4c 89 fe             	mov    %r15,%rsi
  402dfc:	89 df                	mov    %ebx,%edi
  402dfe:	e8 82 fb ff ff       	call   402985 <rio_writen>
  402e03:	48 85 c0             	test   %rax,%rax
  402e06:	0f 88 5d 03 00 00    	js     403169 <submitr+0x54e>
  402e0c:	4c 8d 64 24 40       	lea    0x40(%rsp),%r12
  402e11:	89 de                	mov    %ebx,%esi
  402e13:	4c 89 e7             	mov    %r12,%rdi
  402e16:	e8 22 fb ff ff       	call   40293d <rio_readinitb>
  402e1b:	48 8d b4 24 50 20 00 	lea    0x2050(%rsp),%rsi
  402e22:	00 
  402e23:	ba 00 20 00 00       	mov    $0x2000,%edx
  402e28:	4c 89 e7             	mov    %r12,%rdi
  402e2b:	e8 3a fc ff ff       	call   402a6a <rio_readlineb>
  402e30:	48 85 c0             	test   %rax,%rax
  402e33:	0f 8e 9c 03 00 00    	jle    4031d5 <submitr+0x5ba>
  402e39:	48 8d 4c 24 2c       	lea    0x2c(%rsp),%rcx
  402e3e:	48 8d 94 24 50 60 00 	lea    0x6050(%rsp),%rdx
  402e45:	00 
  402e46:	48 8d bc 24 50 20 00 	lea    0x2050(%rsp),%rdi
  402e4d:	00 
  402e4e:	4c 8d 84 24 50 80 00 	lea    0x8050(%rsp),%r8
  402e55:	00 
  402e56:	48 8d 35 df 19 00 00 	lea    0x19df(%rip),%rsi        # 40483c <trans_char+0xcc>
  402e5d:	b8 00 00 00 00       	mov    $0x0,%eax
  402e62:	e8 39 e5 ff ff       	call   4013a0 <__isoc99_sscanf@plt>
  402e67:	48 8d b4 24 50 20 00 	lea    0x2050(%rsp),%rsi
  402e6e:	00 
  402e6f:	b9 03 00 00 00       	mov    $0x3,%ecx
  402e74:	48 8d 3d d8 19 00 00 	lea    0x19d8(%rip),%rdi        # 404853 <trans_char+0xe3>
  402e7b:	f3 a6                	repz cmpsb %es:(%rdi),%ds:(%rsi)
  402e7d:	0f 97 c0             	seta   %al
  402e80:	1c 00                	sbb    $0x0,%al
  402e82:	84 c0                	test   %al,%al
  402e84:	0f 84 cb 03 00 00    	je     403255 <submitr+0x63a>
  402e8a:	48 8d b4 24 50 20 00 	lea    0x2050(%rsp),%rsi
  402e91:	00 
  402e92:	48 8d 7c 24 40       	lea    0x40(%rsp),%rdi
  402e97:	ba 00 20 00 00       	mov    $0x2000,%edx
  402e9c:	e8 c9 fb ff ff       	call   402a6a <rio_readlineb>
  402ea1:	48 85 c0             	test   %rax,%rax
  402ea4:	7f c1                	jg     402e67 <submitr+0x24c>
  402ea6:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
  402ead:	3a 20 43 
  402eb0:	48 ba 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rdx
  402eb7:	20 75 6e 
  402eba:	48 89 45 00          	mov    %rax,0x0(%rbp)
  402ebe:	48 89 55 08          	mov    %rdx,0x8(%rbp)
  402ec2:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
  402ec9:	74 6f 20 
  402ecc:	48 ba 72 65 61 64 20 	movabs $0x6165682064616572,%rdx
  402ed3:	68 65 61 
  402ed6:	48 89 45 10          	mov    %rax,0x10(%rbp)
  402eda:	48 89 55 18          	mov    %rdx,0x18(%rbp)
  402ede:	48 b8 64 65 72 73 20 	movabs $0x6f72662073726564,%rax
  402ee5:	66 72 6f 
  402ee8:	48 ba 6d 20 41 75 74 	movabs $0x616c6f747541206d,%rdx
  402eef:	6f 6c 61 
  402ef2:	48 89 45 20          	mov    %rax,0x20(%rbp)
  402ef6:	48 89 55 28          	mov    %rdx,0x28(%rbp)
  402efa:	48 b8 62 20 73 65 72 	movabs $0x7265767265732062,%rax
  402f01:	76 65 72 
  402f04:	48 89 45 30          	mov    %rax,0x30(%rbp)
  402f08:	c6 45 38 00          	movb   $0x0,0x38(%rbp)
  402f0c:	89 df                	mov    %ebx,%edi
  402f0e:	e8 ed e3 ff ff       	call   401300 <close@plt>
  402f13:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  402f18:	48 8b 9c 24 58 a0 00 	mov    0xa058(%rsp),%rbx
  402f1f:	00 
  402f20:	64 48 33 1c 25 28 00 	xor    %fs:0x28,%rbx
  402f27:	00 00 
  402f29:	0f 85 96 04 00 00    	jne    4033c5 <submitr+0x7aa>
  402f2f:	48 81 c4 68 a0 00 00 	add    $0xa068,%rsp
  402f36:	5b                   	pop    %rbx
  402f37:	5d                   	pop    %rbp
  402f38:	41 5c                	pop    %r12
  402f3a:	41 5d                	pop    %r13
  402f3c:	41 5e                	pop    %r14
  402f3e:	41 5f                	pop    %r15
  402f40:	c3                   	ret    
  402f41:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
  402f48:	3a 20 43 
  402f4b:	48 ba 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rdx
  402f52:	20 75 6e 
  402f55:	48 89 45 00          	mov    %rax,0x0(%rbp)
  402f59:	48 89 55 08          	mov    %rdx,0x8(%rbp)
  402f5d:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
  402f64:	74 6f 20 
  402f67:	48 ba 63 72 65 61 74 	movabs $0x7320657461657263,%rdx
  402f6e:	65 20 73 
  402f71:	48 89 45 10          	mov    %rax,0x10(%rbp)
  402f75:	48 89 55 18          	mov    %rdx,0x18(%rbp)
  402f79:	c7 45 20 6f 63 6b 65 	movl   $0x656b636f,0x20(%rbp)
  402f80:	66 c7 45 24 74 00    	movw   $0x74,0x24(%rbp)
  402f86:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  402f8b:	eb 8b                	jmp    402f18 <submitr+0x2fd>
  402f8d:	48 b8 45 72 72 6f 72 	movabs $0x44203a726f727245,%rax
  402f94:	3a 20 44 
  402f97:	48 ba 4e 53 20 69 73 	movabs $0x6e7520736920534e,%rdx
  402f9e:	20 75 6e 
  402fa1:	48 89 45 00          	mov    %rax,0x0(%rbp)
  402fa5:	48 89 55 08          	mov    %rdx,0x8(%rbp)
  402fa9:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
  402fb0:	74 6f 20 
  402fb3:	48 ba 72 65 73 6f 6c 	movabs $0x2065766c6f736572,%rdx
  402fba:	76 65 20 
  402fbd:	48 89 45 10          	mov    %rax,0x10(%rbp)
  402fc1:	48 89 55 18          	mov    %rdx,0x18(%rbp)
  402fc5:	48 b8 41 75 74 6f 6c 	movabs $0x2062616c6f747541,%rax
  402fcc:	61 62 20 
  402fcf:	48 ba 73 65 72 76 65 	movabs $0x6120726576726573,%rdx
  402fd6:	72 20 61 
  402fd9:	48 89 45 20          	mov    %rax,0x20(%rbp)
  402fdd:	48 89 55 28          	mov    %rdx,0x28(%rbp)
  402fe1:	c7 45 30 64 64 72 65 	movl   $0x65726464,0x30(%rbp)
  402fe8:	66 c7 45 34 73 73    	movw   $0x7373,0x34(%rbp)
  402fee:	c6 45 36 00          	movb   $0x0,0x36(%rbp)
  402ff2:	89 df                	mov    %ebx,%edi
  402ff4:	e8 07 e3 ff ff       	call   401300 <close@plt>
  402ff9:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  402ffe:	e9 15 ff ff ff       	jmp    402f18 <submitr+0x2fd>
  403003:	48 b8 45 72 72 6f 72 	movabs $0x55203a726f727245,%rax
  40300a:	3a 20 55 
  40300d:	48 ba 6e 61 62 6c 65 	movabs $0x6f7420656c62616e,%rdx
  403014:	20 74 6f 
  403017:	48 89 45 00          	mov    %rax,0x0(%rbp)
  40301b:	48 89 55 08          	mov    %rdx,0x8(%rbp)
  40301f:	48 b8 20 63 6f 6e 6e 	movabs $0x7463656e6e6f6320,%rax
  403026:	65 63 74 
  403029:	48 ba 20 74 6f 20 74 	movabs $0x20656874206f7420,%rdx
  403030:	68 65 20 
  403033:	48 89 45 10          	mov    %rax,0x10(%rbp)
  403037:	48 89 55 18          	mov    %rdx,0x18(%rbp)
  40303b:	48 b8 41 75 74 6f 6c 	movabs $0x2062616c6f747541,%rax
  403042:	61 62 20 
  403045:	48 89 45 20          	mov    %rax,0x20(%rbp)
  403049:	c7 45 28 73 65 72 76 	movl   $0x76726573,0x28(%rbp)
  403050:	66 c7 45 2c 65 72    	movw   $0x7265,0x2c(%rbp)
  403056:	c6 45 2e 00          	movb   $0x0,0x2e(%rbp)
  40305a:	89 df                	mov    %ebx,%edi
  40305c:	e8 9f e2 ff ff       	call   401300 <close@plt>
  403061:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  403066:	e9 ad fe ff ff       	jmp    402f18 <submitr+0x2fd>
  40306b:	48 b8 45 72 72 6f 72 	movabs $0x52203a726f727245,%rax
  403072:	3a 20 52 
  403075:	48 ba 65 73 75 6c 74 	movabs $0x747320746c757365,%rdx
  40307c:	20 73 74 
  40307f:	48 89 45 00          	mov    %rax,0x0(%rbp)
  403083:	48 89 55 08          	mov    %rdx,0x8(%rbp)
  403087:	48 b8 72 69 6e 67 20 	movabs $0x6f6f7420676e6972,%rax
  40308e:	74 6f 6f 
  403091:	48 ba 20 6c 61 72 67 	movabs $0x202e656772616c20,%rdx
  403098:	65 2e 20 
  40309b:	48 89 45 10          	mov    %rax,0x10(%rbp)
  40309f:	48 89 55 18          	mov    %rdx,0x18(%rbp)
  4030a3:	48 b8 49 6e 63 72 65 	movabs $0x6573616572636e49,%rax
  4030aa:	61 73 65 
  4030ad:	48 ba 20 53 55 42 4d 	movabs $0x5254494d42555320,%rdx
  4030b4:	49 54 52 
  4030b7:	48 89 45 20          	mov    %rax,0x20(%rbp)
  4030bb:	48 89 55 28          	mov    %rdx,0x28(%rbp)
  4030bf:	48 b8 5f 4d 41 58 42 	movabs $0x46554258414d5f,%rax
  4030c6:	55 46 00 
  4030c9:	48 89 45 30          	mov    %rax,0x30(%rbp)
  4030cd:	89 df                	mov    %ebx,%edi
  4030cf:	e8 2c e2 ff ff       	call   401300 <close@plt>
  4030d4:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  4030d9:	e9 3a fe ff ff       	jmp    402f18 <submitr+0x2fd>
  4030de:	48 b8 45 72 72 6f 72 	movabs $0x52203a726f727245,%rax
  4030e5:	3a 20 52 
  4030e8:	48 ba 65 73 75 6c 74 	movabs $0x747320746c757365,%rdx
  4030ef:	20 73 74 
  4030f2:	48 89 45 00          	mov    %rax,0x0(%rbp)
  4030f6:	48 89 55 08          	mov    %rdx,0x8(%rbp)
  4030fa:	48 b8 72 69 6e 67 20 	movabs $0x6e6f6320676e6972,%rax
  403101:	63 6f 6e 
  403104:	48 ba 74 61 69 6e 73 	movabs $0x6e6120736e696174,%rdx
  40310b:	20 61 6e 
  40310e:	48 89 45 10          	mov    %rax,0x10(%rbp)
  403112:	48 89 55 18          	mov    %rdx,0x18(%rbp)
  403116:	48 b8 20 69 6c 6c 65 	movabs $0x6c6167656c6c6920,%rax
  40311d:	67 61 6c 
  403120:	48 ba 20 6f 72 20 75 	movabs $0x72706e7520726f20,%rdx
  403127:	6e 70 72 
  40312a:	48 89 45 20          	mov    %rax,0x20(%rbp)
  40312e:	48 89 55 28          	mov    %rdx,0x28(%rbp)
  403132:	48 b8 69 6e 74 61 62 	movabs $0x20656c6261746e69,%rax
  403139:	6c 65 20 
  40313c:	48 ba 63 68 61 72 61 	movabs $0x6574636172616863,%rdx
  403143:	63 74 65 
  403146:	48 89 45 30          	mov    %rax,0x30(%rbp)
  40314a:	48 89 55 38          	mov    %rdx,0x38(%rbp)
  40314e:	66 c7 45 40 72 2e    	movw   $0x2e72,0x40(%rbp)
  403154:	c6 45 42 00          	movb   $0x0,0x42(%rbp)
  403158:	89 df                	mov    %ebx,%edi
  40315a:	e8 a1 e1 ff ff       	call   401300 <close@plt>
  40315f:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  403164:	e9 af fd ff ff       	jmp    402f18 <submitr+0x2fd>
  403169:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
  403170:	3a 20 43 
  403173:	48 ba 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rdx
  40317a:	20 75 6e 
  40317d:	48 89 45 00          	mov    %rax,0x0(%rbp)
  403181:	48 89 55 08          	mov    %rdx,0x8(%rbp)
  403185:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
  40318c:	74 6f 20 
  40318f:	48 ba 77 72 69 74 65 	movabs $0x6f74206574697277,%rdx
  403196:	20 74 6f 
  403199:	48 89 45 10          	mov    %rax,0x10(%rbp)
  40319d:	48 89 55 18          	mov    %rdx,0x18(%rbp)
  4031a1:	48 b8 20 74 68 65 20 	movabs $0x7475412065687420,%rax
  4031a8:	41 75 74 
  4031ab:	48 ba 6f 6c 61 62 20 	movabs $0x7265732062616c6f,%rdx
  4031b2:	73 65 72 
  4031b5:	48 89 45 20          	mov    %rax,0x20(%rbp)
  4031b9:	48 89 55 28          	mov    %rdx,0x28(%rbp)
  4031bd:	c7 45 30 76 65 72 00 	movl   $0x726576,0x30(%rbp)
  4031c4:	89 df                	mov    %ebx,%edi
  4031c6:	e8 35 e1 ff ff       	call   401300 <close@plt>
  4031cb:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  4031d0:	e9 43 fd ff ff       	jmp    402f18 <submitr+0x2fd>
  4031d5:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
  4031dc:	3a 20 43 
  4031df:	48 ba 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rdx
  4031e6:	20 75 6e 
  4031e9:	48 89 45 00          	mov    %rax,0x0(%rbp)
  4031ed:	48 89 55 08          	mov    %rdx,0x8(%rbp)
  4031f1:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
  4031f8:	74 6f 20 
  4031fb:	48 ba 72 65 61 64 20 	movabs $0x7269662064616572,%rdx
  403202:	66 69 72 
  403205:	48 89 45 10          	mov    %rax,0x10(%rbp)
  403209:	48 89 55 18          	mov    %rdx,0x18(%rbp)
  40320d:	48 b8 73 74 20 68 65 	movabs $0x6564616568207473,%rax
  403214:	61 64 65 
  403217:	48 ba 72 20 66 72 6f 	movabs $0x41206d6f72662072,%rdx
  40321e:	6d 20 41 
  403221:	48 89 45 20          	mov    %rax,0x20(%rbp)
  403225:	48 89 55 28          	mov    %rdx,0x28(%rbp)
  403229:	48 b8 75 74 6f 6c 61 	movabs $0x732062616c6f7475,%rax
  403230:	62 20 73 
  403233:	48 89 45 30          	mov    %rax,0x30(%rbp)
  403237:	c7 45 38 65 72 76 65 	movl   $0x65767265,0x38(%rbp)
  40323e:	66 c7 45 3c 72 00    	movw   $0x72,0x3c(%rbp)
  403244:	89 df                	mov    %ebx,%edi
  403246:	e8 b5 e0 ff ff       	call   401300 <close@plt>
  40324b:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  403250:	e9 c3 fc ff ff       	jmp    402f18 <submitr+0x2fd>
  403255:	48 8d b4 24 50 20 00 	lea    0x2050(%rsp),%rsi
  40325c:	00 
  40325d:	48 8d 7c 24 40       	lea    0x40(%rsp),%rdi
  403262:	ba 00 20 00 00       	mov    $0x2000,%edx
  403267:	e8 fe f7 ff ff       	call   402a6a <rio_readlineb>
  40326c:	48 85 c0             	test   %rax,%rax
  40326f:	0f 8e 96 00 00 00    	jle    40330b <submitr+0x6f0>
  403275:	44 8b 44 24 2c       	mov    0x2c(%rsp),%r8d
  40327a:	41 81 f8 c8 00 00 00 	cmp    $0xc8,%r8d
  403281:	0f 85 05 01 00 00    	jne    40338c <submitr+0x771>
  403287:	48 8d b4 24 50 20 00 	lea    0x2050(%rsp),%rsi
  40328e:	00 
  40328f:	48 89 ef             	mov    %rbp,%rdi
  403292:	e8 09 e0 ff ff       	call   4012a0 <strcpy@plt>
  403297:	89 df                	mov    %ebx,%edi
  403299:	e8 62 e0 ff ff       	call   401300 <close@plt>
  40329e:	b9 04 00 00 00       	mov    $0x4,%ecx
  4032a3:	48 8d 3d a3 15 00 00 	lea    0x15a3(%rip),%rdi        # 40484d <trans_char+0xdd>
  4032aa:	48 89 ee             	mov    %rbp,%rsi
  4032ad:	f3 a6                	repz cmpsb %es:(%rdi),%ds:(%rsi)
  4032af:	0f 97 c0             	seta   %al
  4032b2:	1c 00                	sbb    $0x0,%al
  4032b4:	0f be c0             	movsbl %al,%eax
  4032b7:	85 c0                	test   %eax,%eax
  4032b9:	0f 84 59 fc ff ff    	je     402f18 <submitr+0x2fd>
  4032bf:	b9 05 00 00 00       	mov    $0x5,%ecx
  4032c4:	48 8d 3d 86 15 00 00 	lea    0x1586(%rip),%rdi        # 404851 <trans_char+0xe1>
  4032cb:	48 89 ee             	mov    %rbp,%rsi
  4032ce:	f3 a6                	repz cmpsb %es:(%rdi),%ds:(%rsi)
  4032d0:	0f 97 c0             	seta   %al
  4032d3:	1c 00                	sbb    $0x0,%al
  4032d5:	0f be c0             	movsbl %al,%eax
  4032d8:	85 c0                	test   %eax,%eax
  4032da:	0f 84 38 fc ff ff    	je     402f18 <submitr+0x2fd>
  4032e0:	b9 03 00 00 00       	mov    $0x3,%ecx
  4032e5:	48 8d 3d 6a 15 00 00 	lea    0x156a(%rip),%rdi        # 404856 <trans_char+0xe6>
  4032ec:	48 89 ee             	mov    %rbp,%rsi
  4032ef:	f3 a6                	repz cmpsb %es:(%rdi),%ds:(%rsi)
  4032f1:	0f 97 c0             	seta   %al
  4032f4:	1c 00                	sbb    $0x0,%al
  4032f6:	0f be c0             	movsbl %al,%eax
  4032f9:	85 c0                	test   %eax,%eax
  4032fb:	0f 84 17 fc ff ff    	je     402f18 <submitr+0x2fd>
  403301:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  403306:	e9 0d fc ff ff       	jmp    402f18 <submitr+0x2fd>
  40330b:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
  403312:	3a 20 43 
  403315:	48 ba 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rdx
  40331c:	20 75 6e 
  40331f:	48 89 45 00          	mov    %rax,0x0(%rbp)
  403323:	48 89 55 08          	mov    %rdx,0x8(%rbp)
  403327:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
  40332e:	74 6f 20 
  403331:	48 ba 72 65 61 64 20 	movabs $0x6174732064616572,%rdx
  403338:	73 74 61 
  40333b:	48 89 45 10          	mov    %rax,0x10(%rbp)
  40333f:	48 89 55 18          	mov    %rdx,0x18(%rbp)
  403343:	48 b8 74 75 73 20 6d 	movabs $0x7373656d20737574,%rax
  40334a:	65 73 73 
  40334d:	48 ba 61 67 65 20 66 	movabs $0x6d6f726620656761,%rdx
  403354:	72 6f 6d 
  403357:	48 89 45 20          	mov    %rax,0x20(%rbp)
  40335b:	48 89 55 28          	mov    %rdx,0x28(%rbp)
  40335f:	48 b8 20 41 75 74 6f 	movabs $0x62616c6f74754120,%rax
  403366:	6c 61 62 
  403369:	48 ba 20 73 65 72 76 	movabs $0x72657672657320,%rdx
  403370:	65 72 00 
  403373:	48 89 45 30          	mov    %rax,0x30(%rbp)
  403377:	48 89 55 38          	mov    %rdx,0x38(%rbp)
  40337b:	89 df                	mov    %ebx,%edi
  40337d:	e8 7e df ff ff       	call   401300 <close@plt>
  403382:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  403387:	e9 8c fb ff ff       	jmp    402f18 <submitr+0x2fd>
  40338c:	4c 8d 8c 24 50 80 00 	lea    0x8050(%rsp),%r9
  403393:	00 
  403394:	48 8d 0d 6d 14 00 00 	lea    0x146d(%rip),%rcx        # 404808 <trans_char+0x98>
  40339b:	48 c7 c2 ff ff ff ff 	mov    $0xffffffffffffffff,%rdx
  4033a2:	be 01 00 00 00       	mov    $0x1,%esi
  4033a7:	48 89 ef             	mov    %rbp,%rdi
  4033aa:	b8 00 00 00 00       	mov    $0x0,%eax
  4033af:	e8 9c e0 ff ff       	call   401450 <__sprintf_chk@plt>
  4033b4:	89 df                	mov    %ebx,%edi
  4033b6:	e8 45 df ff ff       	call   401300 <close@plt>
  4033bb:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  4033c0:	e9 53 fb ff ff       	jmp    402f18 <submitr+0x2fd>
  4033c5:	e8 51 f3 ff ff       	call   40271b <__stack_chk_fail>

00000000004033ca <init_timeout>:
  4033ca:	f3 0f 1e fa          	endbr64 
  4033ce:	85 ff                	test   %edi,%edi
  4033d0:	74 26                	je     4033f8 <init_timeout+0x2e>
  4033d2:	53                   	push   %rbx
  4033d3:	89 fb                	mov    %edi,%ebx
  4033d5:	78 1a                	js     4033f1 <init_timeout+0x27>
  4033d7:	48 8d 35 71 f5 ff ff 	lea    -0xa8f(%rip),%rsi        # 40294f <sigalrm_handler>
  4033de:	bf 0e 00 00 00       	mov    $0xe,%edi
  4033e3:	e8 48 df ff ff       	call   401330 <signal@plt>
  4033e8:	89 df                	mov    %ebx,%edi
  4033ea:	e8 01 df ff ff       	call   4012f0 <alarm@plt>
  4033ef:	5b                   	pop    %rbx
  4033f0:	c3                   	ret    
  4033f1:	bb 00 00 00 00       	mov    $0x0,%ebx
  4033f6:	eb df                	jmp    4033d7 <init_timeout+0xd>
  4033f8:	c3                   	ret    

00000000004033f9 <init_driver>:
  4033f9:	f3 0f 1e fa          	endbr64 
  4033fd:	41 54                	push   %r12
  4033ff:	55                   	push   %rbp
  403400:	53                   	push   %rbx
  403401:	48 83 ec 20          	sub    $0x20,%rsp
  403405:	48 89 fd             	mov    %rdi,%rbp
  403408:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  40340f:	00 00 
  403411:	48 89 44 24 18       	mov    %rax,0x18(%rsp)
  403416:	31 c0                	xor    %eax,%eax
  403418:	be 01 00 00 00       	mov    $0x1,%esi
  40341d:	bf 0d 00 00 00       	mov    $0xd,%edi
  403422:	e8 09 df ff ff       	call   401330 <signal@plt>
  403427:	be 01 00 00 00       	mov    $0x1,%esi
  40342c:	bf 1d 00 00 00       	mov    $0x1d,%edi
  403431:	e8 fa de ff ff       	call   401330 <signal@plt>
  403436:	be 01 00 00 00       	mov    $0x1,%esi
  40343b:	bf 1d 00 00 00       	mov    $0x1d,%edi
  403440:	e8 eb de ff ff       	call   401330 <signal@plt>
  403445:	ba 00 00 00 00       	mov    $0x0,%edx
  40344a:	be 01 00 00 00       	mov    $0x1,%esi
  40344f:	bf 02 00 00 00       	mov    $0x2,%edi
  403454:	e8 07 e0 ff ff       	call   401460 <socket@plt>
  403459:	85 c0                	test   %eax,%eax
  40345b:	0f 88 9c 00 00 00    	js     4034fd <init_driver+0x104>
  403461:	89 c3                	mov    %eax,%ebx
  403463:	48 8d 3d ef 13 00 00 	lea    0x13ef(%rip),%rdi        # 404859 <trans_char+0xe9>
  40346a:	e8 d1 de ff ff       	call   401340 <gethostbyname@plt>
  40346f:	48 85 c0             	test   %rax,%rax
  403472:	0f 84 d1 00 00 00    	je     403549 <init_driver+0x150>
  403478:	49 89 e4             	mov    %rsp,%r12
  40347b:	48 c7 04 24 00 00 00 	movq   $0x0,(%rsp)
  403482:	00 
  403483:	48 c7 44 24 08 00 00 	movq   $0x0,0x8(%rsp)
  40348a:	00 00 
  40348c:	66 c7 04 24 02 00    	movw   $0x2,(%rsp)
  403492:	48 63 50 14          	movslq 0x14(%rax),%rdx
  403496:	48 8b 40 18          	mov    0x18(%rax),%rax
  40349a:	48 8b 30             	mov    (%rax),%rsi
  40349d:	48 8d 7c 24 04       	lea    0x4(%rsp),%rdi
  4034a2:	b9 0c 00 00 00       	mov    $0xc,%ecx
  4034a7:	e8 a4 de ff ff       	call   401350 <__memmove_chk@plt>
  4034ac:	66 c7 44 24 02 30 39 	movw   $0x3930,0x2(%rsp)
  4034b3:	ba 10 00 00 00       	mov    $0x10,%edx
  4034b8:	4c 89 e6             	mov    %r12,%rsi
  4034bb:	89 df                	mov    %ebx,%edi
  4034bd:	e8 5e df ff ff       	call   401420 <connect@plt>
  4034c2:	85 c0                	test   %eax,%eax
  4034c4:	0f 88 e7 00 00 00    	js     4035b1 <init_driver+0x1b8>
  4034ca:	89 df                	mov    %ebx,%edi
  4034cc:	e8 2f de ff ff       	call   401300 <close@plt>
  4034d1:	66 c7 45 00 4f 4b    	movw   $0x4b4f,0x0(%rbp)
  4034d7:	c6 45 02 00          	movb   $0x0,0x2(%rbp)
  4034db:	b8 00 00 00 00       	mov    $0x0,%eax
  4034e0:	48 8b 4c 24 18       	mov    0x18(%rsp),%rcx
  4034e5:	64 48 33 0c 25 28 00 	xor    %fs:0x28,%rcx
  4034ec:	00 00 
  4034ee:	0f 85 10 01 00 00    	jne    403604 <init_driver+0x20b>
  4034f4:	48 83 c4 20          	add    $0x20,%rsp
  4034f8:	5b                   	pop    %rbx
  4034f9:	5d                   	pop    %rbp
  4034fa:	41 5c                	pop    %r12
  4034fc:	c3                   	ret    
  4034fd:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
  403504:	3a 20 43 
  403507:	48 ba 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rdx
  40350e:	20 75 6e 
  403511:	48 89 45 00          	mov    %rax,0x0(%rbp)
  403515:	48 89 55 08          	mov    %rdx,0x8(%rbp)
  403519:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
  403520:	74 6f 20 
  403523:	48 ba 63 72 65 61 74 	movabs $0x7320657461657263,%rdx
  40352a:	65 20 73 
  40352d:	48 89 45 10          	mov    %rax,0x10(%rbp)
  403531:	48 89 55 18          	mov    %rdx,0x18(%rbp)
  403535:	c7 45 20 6f 63 6b 65 	movl   $0x656b636f,0x20(%rbp)
  40353c:	66 c7 45 24 74 00    	movw   $0x74,0x24(%rbp)
  403542:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  403547:	eb 97                	jmp    4034e0 <init_driver+0xe7>
  403549:	48 b8 45 72 72 6f 72 	movabs $0x44203a726f727245,%rax
  403550:	3a 20 44 
  403553:	48 ba 4e 53 20 69 73 	movabs $0x6e7520736920534e,%rdx
  40355a:	20 75 6e 
  40355d:	48 89 45 00          	mov    %rax,0x0(%rbp)
  403561:	48 89 55 08          	mov    %rdx,0x8(%rbp)
  403565:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
  40356c:	74 6f 20 
  40356f:	48 ba 72 65 73 6f 6c 	movabs $0x2065766c6f736572,%rdx
  403576:	76 65 20 
  403579:	48 89 45 10          	mov    %rax,0x10(%rbp)
  40357d:	48 89 55 18          	mov    %rdx,0x18(%rbp)
  403581:	48 b8 73 65 72 76 65 	movabs $0x6120726576726573,%rax
  403588:	72 20 61 
  40358b:	48 89 45 20          	mov    %rax,0x20(%rbp)
  40358f:	c7 45 28 64 64 72 65 	movl   $0x65726464,0x28(%rbp)
  403596:	66 c7 45 2c 73 73    	movw   $0x7373,0x2c(%rbp)
  40359c:	c6 45 2e 00          	movb   $0x0,0x2e(%rbp)
  4035a0:	89 df                	mov    %ebx,%edi
  4035a2:	e8 59 dd ff ff       	call   401300 <close@plt>
  4035a7:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  4035ac:	e9 2f ff ff ff       	jmp    4034e0 <init_driver+0xe7>
  4035b1:	48 b8 45 72 72 6f 72 	movabs $0x55203a726f727245,%rax
  4035b8:	3a 20 55 
  4035bb:	48 ba 6e 61 62 6c 65 	movabs $0x6f7420656c62616e,%rdx
  4035c2:	20 74 6f 
  4035c5:	48 89 45 00          	mov    %rax,0x0(%rbp)
  4035c9:	48 89 55 08          	mov    %rdx,0x8(%rbp)
  4035cd:	48 b8 20 63 6f 6e 6e 	movabs $0x7463656e6e6f6320,%rax
  4035d4:	65 63 74 
  4035d7:	48 ba 20 74 6f 20 73 	movabs $0x76726573206f7420,%rdx
  4035de:	65 72 76 
  4035e1:	48 89 45 10          	mov    %rax,0x10(%rbp)
  4035e5:	48 89 55 18          	mov    %rdx,0x18(%rbp)
  4035e9:	66 c7 45 20 65 72    	movw   $0x7265,0x20(%rbp)
  4035ef:	c6 45 22 00          	movb   $0x0,0x22(%rbp)
  4035f3:	89 df                	mov    %ebx,%edi
  4035f5:	e8 06 dd ff ff       	call   401300 <close@plt>
  4035fa:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  4035ff:	e9 dc fe ff ff       	jmp    4034e0 <init_driver+0xe7>
  403604:	e8 12 f1 ff ff       	call   40271b <__stack_chk_fail>

0000000000403609 <driver_post>:
  403609:	f3 0f 1e fa          	endbr64 
  40360d:	53                   	push   %rbx
  40360e:	4c 89 cb             	mov    %r9,%rbx
  403611:	45 85 c0             	test   %r8d,%r8d
  403614:	75 18                	jne    40362e <driver_post+0x25>
  403616:	48 85 ff             	test   %rdi,%rdi
  403619:	74 05                	je     403620 <driver_post+0x17>
  40361b:	80 3f 00             	cmpb   $0x0,(%rdi)
  40361e:	75 37                	jne    403657 <driver_post+0x4e>
  403620:	66 c7 03 4f 4b       	movw   $0x4b4f,(%rbx)
  403625:	c6 43 02 00          	movb   $0x0,0x2(%rbx)
  403629:	44 89 c0             	mov    %r8d,%eax
  40362c:	5b                   	pop    %rbx
  40362d:	c3                   	ret    
  40362e:	48 89 ca             	mov    %rcx,%rdx
  403631:	48 8d 35 31 12 00 00 	lea    0x1231(%rip),%rsi        # 404869 <trans_char+0xf9>
  403638:	bf 01 00 00 00       	mov    $0x1,%edi
  40363d:	b8 00 00 00 00       	mov    $0x0,%eax
  403642:	e8 79 dd ff ff       	call   4013c0 <__printf_chk@plt>
  403647:	66 c7 03 4f 4b       	movw   $0x4b4f,(%rbx)
  40364c:	c6 43 02 00          	movb   $0x0,0x2(%rbx)
  403650:	b8 00 00 00 00       	mov    $0x0,%eax
  403655:	eb d5                	jmp    40362c <driver_post+0x23>
  403657:	48 83 ec 08          	sub    $0x8,%rsp
  40365b:	41 51                	push   %r9
  40365d:	49 89 c9             	mov    %rcx,%r9
  403660:	49 89 d0             	mov    %rdx,%r8
  403663:	48 89 f9             	mov    %rdi,%rcx
  403666:	48 89 f2             	mov    %rsi,%rdx
  403669:	be 39 30 00 00       	mov    $0x3039,%esi
  40366e:	48 8d 3d e4 11 00 00 	lea    0x11e4(%rip),%rdi        # 404859 <trans_char+0xe9>
  403675:	e8 a1 f5 ff ff       	call   402c1b <submitr>
  40367a:	48 83 c4 10          	add    $0x10,%rsp
  40367e:	eb ac                	jmp    40362c <driver_post+0x23>

0000000000403680 <check>:
  403680:	f3 0f 1e fa          	endbr64 
  403684:	89 f8                	mov    %edi,%eax
  403686:	c1 e8 1c             	shr    $0x1c,%eax
  403689:	74 1d                	je     4036a8 <check+0x28>
  40368b:	b9 00 00 00 00       	mov    $0x0,%ecx
  403690:	83 f9 1f             	cmp    $0x1f,%ecx
  403693:	7f 0d                	jg     4036a2 <check+0x22>
  403695:	89 f8                	mov    %edi,%eax
  403697:	d3 e8                	shr    %cl,%eax
  403699:	3c 0a                	cmp    $0xa,%al
  40369b:	74 11                	je     4036ae <check+0x2e>
  40369d:	83 c1 08             	add    $0x8,%ecx
  4036a0:	eb ee                	jmp    403690 <check+0x10>
  4036a2:	b8 01 00 00 00       	mov    $0x1,%eax
  4036a7:	c3                   	ret    
  4036a8:	b8 00 00 00 00       	mov    $0x0,%eax
  4036ad:	c3                   	ret    
  4036ae:	b8 00 00 00 00       	mov    $0x0,%eax
  4036b3:	c3                   	ret    

00000000004036b4 <gencookie>:
  4036b4:	f3 0f 1e fa          	endbr64 
  4036b8:	53                   	push   %rbx
  4036b9:	83 c7 01             	add    $0x1,%edi
  4036bc:	e8 af db ff ff       	call   401270 <srandom@plt>
  4036c1:	e8 ca dc ff ff       	call   401390 <random@plt>
  4036c6:	48 89 c7             	mov    %rax,%rdi
  4036c9:	89 c3                	mov    %eax,%ebx
  4036cb:	e8 b0 ff ff ff       	call   403680 <check>
  4036d0:	85 c0                	test   %eax,%eax
  4036d2:	74 ed                	je     4036c1 <gencookie+0xd>
  4036d4:	89 d8                	mov    %ebx,%eax
  4036d6:	5b                   	pop    %rbx
  4036d7:	c3                   	ret    
  4036d8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  4036df:	00 

00000000004036e0 <__libc_csu_init>:
  4036e0:	f3 0f 1e fa          	endbr64 
  4036e4:	41 57                	push   %r15
  4036e6:	4c 8d 3d 23 37 00 00 	lea    0x3723(%rip),%r15        # 406e10 <__frame_dummy_init_array_entry>
  4036ed:	41 56                	push   %r14
  4036ef:	49 89 d6             	mov    %rdx,%r14
  4036f2:	41 55                	push   %r13
  4036f4:	49 89 f5             	mov    %rsi,%r13
  4036f7:	41 54                	push   %r12
  4036f9:	41 89 fc             	mov    %edi,%r12d
  4036fc:	55                   	push   %rbp
  4036fd:	48 8d 2d 14 37 00 00 	lea    0x3714(%rip),%rbp        # 406e18 <__do_global_dtors_aux_fini_array_entry>
  403704:	53                   	push   %rbx
  403705:	4c 29 fd             	sub    %r15,%rbp
  403708:	48 83 ec 08          	sub    $0x8,%rsp
  40370c:	e8 ef d8 ff ff       	call   401000 <_init>
  403711:	48 c1 fd 03          	sar    $0x3,%rbp
  403715:	74 1f                	je     403736 <__libc_csu_init+0x56>
  403717:	31 db                	xor    %ebx,%ebx
  403719:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  403720:	4c 89 f2             	mov    %r14,%rdx
  403723:	4c 89 ee             	mov    %r13,%rsi
  403726:	44 89 e7             	mov    %r12d,%edi
  403729:	41 ff 14 df          	call   *(%r15,%rbx,8)
  40372d:	48 83 c3 01          	add    $0x1,%rbx
  403731:	48 39 dd             	cmp    %rbx,%rbp
  403734:	75 ea                	jne    403720 <__libc_csu_init+0x40>
  403736:	48 83 c4 08          	add    $0x8,%rsp
  40373a:	5b                   	pop    %rbx
  40373b:	5d                   	pop    %rbp
  40373c:	41 5c                	pop    %r12
  40373e:	41 5d                	pop    %r13
  403740:	41 5e                	pop    %r14
  403742:	41 5f                	pop    %r15
  403744:	c3                   	ret    
  403745:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  40374c:	00 00 00 00 

0000000000403750 <__libc_csu_fini>:
  403750:	f3 0f 1e fa          	endbr64 
  403754:	c3                   	ret    

Disassembly of section .fini:

0000000000403758 <_fini>:
  403758:	f3 0f 1e fa          	endbr64 
  40375c:	48 83 ec 08          	sub    $0x8,%rsp
  403760:	48 83 c4 08          	add    $0x8,%rsp
  403764:	c3                   	ret    
