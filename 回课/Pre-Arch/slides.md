---
theme: seriph
background: https://cdn.arthals.ink/pre/chip.jpg
class: text-center
colorSchema: light
highlighter: shiki
lineNumbers: false
info: |
  ## Processor Arch: ISA & Logic
  ICS 2023 Fall Re-teaching
  Made by Arthals with ❤️ and hair
drawings:
  presenterOnly: true
  persist: false
presenter: false
transition: fade-out
title: 'Processor Arch: ISA & Logic'
mdc: true
---

# Processor Arch: ISA & Logic

## 处理器架构：指令集体系结构和逻辑
<p class="text-gray-300">
  Arthals 2110306206
</p>


<div class="pt-12">
  <span @click="$slidev.nav.next" class="px-2 py-1 rounded cursor-pointer" hover="bg-white bg-opacity-10">
    gkd <carbon:arrow-right class="inline"/>
  </span>
</div>

<div class="abs-br m-6 flex gap-2">
  <a href="https://github.com/zhuozhiyongde" target="_blank" alt="GitHub" title="Open in GitHub"
    class="text-xl slidev-icon-btn opacity-50 !border-none !hover:text-white">
    <carbon-logo-github />
  </a>
</div>

<div class="absolute w-1 h-1 overflow-hidden -top-100 -left-100 hidden">

![fn_op](https://cdn.arthals.ink/pre/fn_op.png)
![cisc_vs_risc](https://cdn.arthals.ink/pre/cisc_vs_risc.jpg)
![sets](https://cdn.arthals.ink/pre/sets.png)
![pku-art](https://cdn.arthals.ink/pre/pku-art.jpeg)
![Y86_stack](https://cdn.arthals.ink/pre/Y86_stack.png)
![ISA](https://cdn.arthals.ink/pre/ISA.png)
![and](https://cdn.arthals.ink/pre/and.png)
![register](https://cdn.arthals.ink/pre/register.png)
![word_eq](https://cdn.arthals.ink/pre/word_eq.png)
![chip](https://cdn.arthals.ink/pre/chip.jpg)
![fn_jmp](https://cdn.arthals.ink/pre/fn_jmp.png)
![clock-2](https://cdn.arthals.ink/pre/clock-2.png)
![bit_mux](https://cdn.arthals.ink/pre/bit_mux.png)
![alu](https://cdn.arthals.ink/pre/alu.png)
![clock-1](https://cdn.arthals.ink/pre/clock-1.png)
![Y86-Instruction](https://cdn.arthals.ink/pre/Y86-Instruction.png)
![or](https://cdn.arthals.ink/pre/or.png)
![memory](https://cdn.arthals.ink/pre/memory.png)
![wechat](https://cdn.arthals.ink/pre/wechat.jpg)
![fn_mov](https://cdn.arthals.ink/pre/fn_mov.png)
![not](https://cdn.arthals.ink/pre/not.png)
![word_mux](https://cdn.arthals.ink/pre/word_mux.png)
![bit_eq](https://cdn.arthals.ink/pre/bit_eq.png)
![redstone](https://cdn.arthals.ink/pre/redstone.png)
![acdb](https://cdn.arthals.ink/pre/acdb.jpg)

</div>


---
layout: image-right
image: https://cdn.arthals.ink/pre/ISA.png
---

# 什么是 ISA？

Instruction Set Architecture


如果非要强行解释... [^1]

- “汇编语言”转换到“机器码”（相当于一个翻译过程）
- CPU 执行机器码的晶体管和逻辑电路的集合

Y86-64：一种精简的 ISA

<br>


[^1]: [CPU 指令集（Instruction Set Architecture, ISA） / Zhihu](https://zhuanlan.zhihu.com/p/599864602)

<PageNumber/>


<style>
h1 {
  background-color: #2B90B6;
  background-image: linear-gradient(45deg, #4EC5D4 10%, #146b8c 20%);
  background-size: 100%;
  -webkit-background-clip: text;
  -moz-background-clip: text;
  -webkit-text-fill-color: transparent;
  -moz-text-fill-color: transparent;
}
</style>


---

# 程序员可见状态


| 缩写 | 全称 | 描述 | 包括 |
|------|-------|------|------|
| RF   | Register File | 程序寄存器 | %rax ~ %r14 |
| CC   | Condition Code | 条件码 | ZF<span follow>zero</span>, OF<span follow>overflow</span>, SF<span follow>symbol</span> |
| Stat | Status | 程序状态 | - |
| PC   | Program Counter | 程序计数器 | - |
| DMEM | Data Memory | 内存 | - |

<PageNumber/>

<style>
span[follow] {
  @apply text-[0.6rem];
}
</style>

---
layout: image-right
image: https://cdn.arthals.ink/pre/Y86-Instruction.png
---

# Y86-64 ISA

一个 X86-64 的子集

```md {all|1|2|3|4|5|6|7|8|9|10|11|12|13|all}
* halt # 停机
* nop # 空操作，可以用于对齐字节
* cmovXX rA, rB # 如果条件码满足，则将寄存器A的值移动到寄存器B
* rrmovq rA, rB # 将寄存器A的值移动到寄存器B
* irmovq V, rB # 将立即数V移动到寄存器B
* rmmovq rA, D(rB) # 将寄存器A的值移动到内存地址rB+D
* mrmovq D(rB), rA # 将内存地址rB+D的值移动到寄存器A
* OPq rA, rB # 将寄存器A和寄存器B的值进行运算，结果存入寄存器B
* jXX Dest # 如果条件码满足，跳转到Dest
* call Dest # 跳转到Dest，同时将下一条指令的地址压入栈
* ret # 从栈中弹出地址，跳转到该地址
* pushq rA # 将寄存器A的值压入栈
* popq rA # 从栈中弹出值，存入寄存器A
```

###  TIPS

<div v-click-hide text-sm>

* 第一个字节为 `代码` ，其高 4 位为操作类型，低 4 位为操作类型（fn）的具体操作（或 0）
* F: 0xF，为 Y86-64 中“不存在的寄存器”
* 所有数值（立即数、内存地址）均以 hex 表示，为 8 字节

</div>

<div v-after class="text-[0.8rem]" grid="~ cols-2 gap-4">

<div>
  
* i(immediate)：立即数
* r(register)：寄存器
* m(memory)：内存地址{.text-sky-4}
  
</div>
<div>
  
* d(displacement)：偏移量
* dest(destination)：目标地址
* v(value)：数值
  
</div>
</div>
<PageNumber/>

<style>

.slidev-vclick-hidden {
  @apply hidden;
}
</style>


---
layout: three-cols-header
---

# Fn

<PageNumber/>

::left::
## Jmp Fn
![Jmp Fn](https://cdn.arthals.ink/pre/fn_jmp.png){.h-90}

::center::
## Mov Fn
![Mov Fn](https://cdn.arthals.ink/pre/fn_mov.png){.h-90}

::right::
## OP Fn
![OP Fn](https://cdn.arthals.ink/pre/fn_op.png){.h-90}


---
layout: image-right
image: https://cdn.arthals.ink/pre/register.png
---

# Register

```markdown{all|1-4|5-6|7-8|9-15|16|all|8,7,3,2|all|4,6,13-16}
* 0x0 %rax 
* 0x1 %rcx
* 0x2 %rdx
* 0x3 %rbx
* 0x4 %rsp
* 0x5 %rbp
* 0x6 %rsi
* 0x7 %rdi
* 0x8 %r8
* 0x9 %r9
* 0xA %r10
* 0xB %r11
* 0xC %r12
* 0xD %r13
* 0xE %r14
* 0xF F / No Register
```

记忆方法：

<div class="text-[0.7rem]" flex="~ gap-4">
<div shrink-0>

* a,c,d,b + x <span text-gray-400># AcFun 倒（D）了，然后 Bilibili 兴起了</span>
* 栈指针（包括栈顶%rsp和栈底%rbp）
* 前两个参数指针
* 按序的 %r8 ~ %r14

</div>

![acdb](https://cdn.arthals.ink/pre/acdb.jpg)

</div>

<PageNumber/>


---
layout: three-cols-header
---

# 来几句试试！

以下习题节选自书 P248，练习题 4.1/4.2

<div v-click-hide>

## Quiz

|     |     |
| --- | --- |
| 0x200 | a0 6f 80 0c 02 00 00 00 00 00 00 00 30 f3 0a 00 00 00 00 00 00 00 90 |
| loop | rmmovq %rcx,-3(%rbx) |

<br/>

</div>

<div v-after>

## Step 1
|     |     |
| --- | --- |
| 0x200 | <kbd>a0</kbd> <kbd>6f</kbd> <kbd>80</kbd> <kbd>0c 02 00 00 00 00 00 00</kbd> <kbd>00</kbd> <kbd>30</kbd> <kbd>f</kbd><kbd>3</kbd> <kbd>0a 00 00 00 00 00 00 00</kbd> <kbd>90</kbd>|
| loop | rmmovq,rcx,rbx,-3 |


</div>

<div v-click>

## Step 2

<div  grid="~ cols-2 gap-4">
<div>

```bash
0x200:
  pushq %rbp
  call 0x20c
  halt
0x20c:
  irmovq $10 %rbx
  ret
```

</div>
<div>

<kbd>40</kbd> <kbd>1</kbd><kbd>3</kbd> <kbd>ff ff ff fd</kbd>

</div>
</div>
</div>

<style>
.slidev-vclick-hidden {
  @apply hidden;
}
</style>

<PageNumber/>

<!--
地址、立即数都是小端法
-->

---

# Y86-64 v.s. X86-64 , CISC v.s. RISC
Complex Instruction Set Computer & Reduced Instruction Set Computer


<div grid="~ cols-2 gap-4">
  <div>

* Y86-64 是 X86-64 的子集
* X86-64 更复杂，但是更强大
* Y86-64 更简单，复杂指令由简单指令组合而成
  
如 Y86-64 的算数指令（OPq）只能操作寄存器，而 X86-64 可以操作内存

> 所以 Y86-64 需要额外的指令（mrmovq、rmmovq）来先加载内存中的值到寄存器，再进行运算

  </div>
<div>

* CISC：复杂指令集计算机
* RISC：精简指令集计算机
* 设计趋势是融合的
  
![CISC v.s. RISC](https://cdn.arthals.ink/pre/cisc_vs_risc.jpg){.w-70}

</div>
</div>
<PageNumber/>
---

# Y86-64 异常
Stat

| 值 | 名字 | 含义 | 全称 |
|----|------|------|------|
| 1  | AOK  | 正常操作 | All OK |
| 2  | HLT  | 遇到器执行`halt`指令遇到非法地址 | Halt |
| 3  | ADR  | 遇到非法地址，如向非法地址读/写 | Address Error |
| 4  | INS  | 遇到非法指令，如遇到一个 `ff` | Invalid Instruction |

除非状态值是 AOK，否则程序会停止执行。

<PageNumber/>

---
layout: image-right
image: https://cdn.arthals.ink/pre/Y86_stack.png
---

# Y86-64 栈

### `Pushq rA F / 0xA0 rA F` 压栈

* 将 `%rsp` 减去8
* 将字从 `rA` 存储到 `%rsp` 的内存中

<br/>

### `Popq rA F / 0xB0 rA F` 弹栈

* 将字从 `%rsp` 的内存中取出
* 将 `%rsp` 加上8
* 将字存储到 `rA` 中

根据书 P334 4.7、4.8，如果压栈/弹栈的时候的寄存器恰为 `%rsp`，则不会改变 `%rsp` 的值。

<PageNumber/>

---

# Y86-64 程序调用

### `Call Dest / 0x80 Dest` 调用

* 将下一条指令的地址 `pushq` 到栈上
* 从目标处开始执行指令

<br/>

### `Ret / 0x90` 返回

* 从栈上 `popq` 出地址，用作下一条指令的地址

<PageNumber/>

---

# Y86-64 终止与对齐

### `Halt / 0x00` 终止

* 停止执行
* 停止模拟器
* 在遇到初始化为 0 的内存地址时，也会终止
* 记忆：没有事情做了 ➡️ 停止

<br/>

### `Nop / 0x10` 空操作

* 什么都不做（但是 PC<span text-sm> Program Counter </span>+1），可以用于对齐字节
* 记忆：扣 1 真的（没）有用

<PageNumber/>


---

# 逻辑设计和硬件控制语言 HCL

Dive back in hardware / 硬件代理人？

* 计算机底层是 0（低电压） 和 1（高电压）的世界
* HCL（硬件 **控制** 语言）是一种硬件 **描述** 语言（HDL），用于描述硬件的逻辑电路
* HCL 是 HDL 的子集

## 逻辑门 / 基本逻辑设计

<div grid="~ cols-3 gap-4"  mt-2>

<div>

### 与门 And

![And](https://cdn.arthals.ink/pre/and.png){.h-30}

```c
out = a&&b
```

</div>

<div>

### 或门 Or

![Or](https://cdn.arthals.ink/pre/or.png){.h-30}

```c
out = a||b
```

</div>

<div>

### 非门 Not

![Not](https://cdn.arthals.ink/pre/not.png){.h-30}

```c
out = !a
```

</div>

</div>


<PageNumber/>

---


# 组合电路 / 高级逻辑设计

中杯：bit level / bool

<div grid="~ cols-2 gap-4"  mt-2>

<div>

```c
bool eq = (a && b) || (!a && !b);
```

![bit_eq](https://cdn.arthals.ink/pre/bit_eq.png){.w-full}

</div>

<div>

```c
bool out = (s && a) || (!s && b);
```

![bit_mux](https://cdn.arthals.ink/pre/bit_mux.png){.w-full}

</div>

* 组合电路是 `响应式` 的
* 没有短路求值特性

Mux: Multiplexer / 多路复用器

</div>


<PageNumber/>

---

# 组合电路 / 高级逻辑设计

大杯：word level / word

<div grid="~ cols-2 gap-4"  mt-2>

```c
bool Eq = (A == B)

```

```c
int Out = [
  s : A; # select: expr
  1 : B;
];

```

![word_eq](https://cdn.arthals.ink/pre/word_eq.png){.h-60}

![word_mux](https://cdn.arthals.ink/pre/word_mux.png){.h-60}

</div>

<PageNumber/>
---

# 组合电路 / 高级逻辑设计

超大杯：相信你已经学会了基本的 ~~红石~~ 逻辑门电路，那就试试 ~~纯红石~~ 神经网络[^1]吧！

![组合电路](https://cdn.arthals.ink/pre/redstone.png){.h-80}

[^1]: [【Minecraft】世界首个纯红石神经网络！真正的红石人工智能(中文/English)(4K)/ Bilibili](https://www.bilibili.com/video/BV1yv4y1u7ZX/)

<PageNumber/>

---

# 组合电路 / 集合关系

是的，我们居然还能在这里温习《离散数学基础》

```c
int Out4 = [
  bool s1 = code in {2, 3}; # 10, 11
  bool s2 = code in {1, 3}; # 01, 11
];

```

![sets](https://cdn.arthals.ink/pre/sets.png){.h-40}

<PageNumber/>

---

# 组合电路 / 算数逻辑单元 ALU
Arithmetic Logic Unit

![ALU](https://cdn.arthals.ink/pre/alu.png)

<div grid="~ cols-2 gap-4"  mt-2>

<div>

* 组合逻辑
* 持续响应输入
* 控制信号选择计算的功能
</div>
<div>

* 对应于 Y86-64 中的 4 个算术/逻辑操作
* 计算条件码的值
* 注意 `Sub` 是被减的数在后面，对应汇编指令
</div>
</div>


<PageNumber/>

---

# 存储器和时钟

响了十二秒的电话我没有接，只想要在烟花下闭着眼~

组合电路：不存储任何信息，只是一个 `输入` 到 `输出` 的映射（有一定的延迟）

时序电路：有 **状态** ，并基于此进行计算


<PageNumber/>

---

# 存储器

<div grid="~ cols-2 gap-4"  mt-2>
<div>

#### 时钟寄存器 / 寄存器 / 硬件寄存器

* 以时钟信号控制寄存器加载输入值
* 直接将它的输入和输出线连接到电路的其他部分

![clock-1](https://cdn.arthals.ink/pre/clock-1.png){v-click-hide,h-60}

![clock-2](https://cdn.arthals.ink/pre/clock-2.png){v-after}


</div>
<div>

#### 随机访问存储器 / 内存：
* 以 **地址** 选择读写
* 虚拟内存系统
* 寄存器文件 / 程序寄存器
* 可以在一个周期内读取和/或写入多个字词

![memory](https://cdn.arthals.ink/pre/memory.png)

</div>
</div>


<PageNumber/>

<style>
.slidev-vclick-hidden {
  @apply hidden;
}
</style>

---
layout: image-right
image: https://cdn.arthals.ink/pre/pku-art.jpeg

---

# Credit & AD

* [Slidev](https://sli.dev/) - 开发者的演示文稿
* [ChatGPT](https://chat.openai.com/) - OpenAI 的聊天机器人
* [Copilot](https://copilot.github.com/) - GitHub 的代码助手

## PKU Art
北京大学课程网美化样式

* [Blog](https://arthals.ink/posts/web/pku-art)
* [Github](https://github.com/zhuozhiyongde/PKU-Art)
* [Docs](https://docs.arthals.ink/pku-art)


<PageNumber/>
---
layout: center
class: 
---


<div flex="~ gap-16"  mt-2 justify-center items-center>


<div  w-fit h-fit mb-2>

# THANKS

Made by Arthals with ❤️ ~~and hair~~ {.mb-4}

[Blog](https://arthals.ink/) · [GitHub](https://github.com/zhuozhiyongde) · [Bilibili](https://space.bilibili.com/203396427)

</div>

![wechat](https://cdn.arthals.ink/pre/wechat.jpg){.w-40.rounded-md}

</div>
