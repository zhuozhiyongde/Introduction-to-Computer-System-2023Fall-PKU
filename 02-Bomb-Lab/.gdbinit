# ./gdbinit
# 设置默认文件输入，这样我们不必每次手动输入答案
set args psol.txt

# 可以为 explode_bomb 函数设置断点，这样我们就可以在爆炸之前打断程序的执行
# 但是由于其会打印输出信息，所以后面有更具有针对性的设置，跳过信息发送函数
# 所以这里就不再设置断点了
# b explode_bomb

# 为各个 phase 函数设置断点，用以观察其执行过程
# 如果你做完了某个 phase，可以将其注释掉，这样就不会再进入该 phase 了
b phase_1
b phase_2
b phase_3
b phase_4
b phase_5
b phase_6

# 为校验函数设置断点
b phase_defused
# 为此断点编程
command
# 直接跳到返回语句处，跳过校验流程
jump *(phase_defused + 0x2A)
end


# 以下代码务必保留!!!

# 为 explode_bomb 中触发 send_msg 函数的地方设置断点
b *(explode_bomb + 0x44)
# 为此断点编程
command
# 直接跳到 exit 退出函数处，跳过发送信息流程
j *(explode_bomb + 0x81)
end

# 炸弹已经安全化，可以放心地拆弹了，开始运行程序
r