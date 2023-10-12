# Bomb Lab

反汇编指令：objdump -d bomb > disassembled_bomb.txt

* Phase 1: 检查汇编地址即可
* Phase 2: 理解汇编指令，每次乘两倍对比
* Phase 3: 理解分支顺序表，选一个分支就可以
* Phase 4: 忘了...
* Phase 5: 发现是找一个字符串，满足对于每个字符的低8位idx，存在一个Array，且`Array[idx]`恰好对应某字符串的队友位
* Phase 6: 链表排序，node1 ~ 5找到初始地址即可，node6需要自行以地址寻址，注意，虽然是以nodeN的值排序，但按照nodeN这个N给出答案。