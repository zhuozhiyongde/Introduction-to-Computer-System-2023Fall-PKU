movq %rsp,%rax
ret
movq %rax,%rdi
ret
popq %rax
nop
ret
mov %eax,%ecx
nop
ret
mov %ecx,%edx
testb %al,%al
ret
mov %edx,%esi
and %dl,%dl
ret
leaq (%rdi, %rsi, 1),%rax
movq %rax,%rdi
ret
