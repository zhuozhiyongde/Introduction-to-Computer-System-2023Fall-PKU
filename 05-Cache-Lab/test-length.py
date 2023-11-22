#!/usr/bin/env python
# -*- encoding: utf-8 -*-
#@Author  :   Arthals
#@File    :   test-length.py
#@Time    :   2023/11/12 18:56:32
#@Contact :   zhuozhiyongde@126.com
#@Software:   Visual Studio Code

# 打开文件trans.c并逐行读取
with open('trans.c', 'r') as file:
    print("Searching trans.c for lines longer than 80 characters...")
    line_number = 0
    for line in file:
        line_number += 1
        if len(line) > 80:
            print(f"Line {line_number}, len {len(line)}: {line.strip()}")

# 打开文件csim.c并逐行读取
with open('csim.c', 'r') as file:
    print("Searching csim.c for lines longer than 80 characters...")
    line_number = 0
    for line in file:
        line_number += 1
        if len(line) > 80:
            print(f"Line {line_number}, len {len(line)}: {line.strip()}")
