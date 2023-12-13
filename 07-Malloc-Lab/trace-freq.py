#!/usr/bin/env python
# -*- encoding: utf-8 -*-
# @Author  :   Arthals
# @File    :   trace-freq.py
# @Time    :   2023/12/12 16:11:19
# @Contact :   zhuozhiyongde@126.com
# @Software:   Visual Studio Code


import csv
import os
from collections import defaultdict

# 初始化频率表
alloc_freq = defaultdict(int)
realloc_freq = defaultdict(int)
combined_alloc_realloc_freq = defaultdict(int)
free_freq = defaultdict(int)

# 指针编号到大小的映射
pointer_size_map = {}


# 解析 .rep 文件
def parse_file(file_path):
    with open(file_path, "r") as file:
        for line in file:
            # 忽略非英文字符开头的行
            if not line[0].isalpha():
                continue

            parts = line.split()
            action = parts[0]
            pointer_id = int(parts[1])
            size = int(parts[2]) if len(parts) > 2 else None
            if action in ["a", "r"]:  # alloc or realloc
                if size is None:
                    continue
                if action == "a":
                    alloc_freq[size] += 1
                else:
                    realloc_freq[size] += 1
                combined_alloc_realloc_freq[size] += 1
                pointer_size_map[pointer_id] = size  # 更新指针编号到大小的映射
            elif action == "f":  # free
                size = pointer_size_map.get(pointer_id, None)
                if size is not None:
                    free_freq[size] += 1
                    del pointer_size_map[pointer_id]  # 移除映射


# 遍历 traces/ 目录下的所有 .rep 文件
files = [
    "./traces/amptjp.rep",
    "./traces/bash.rep",
    "./traces/boat.rep",
    "./traces/boat-plus.rep",
    "./traces/binary2-bal.rep",
    "./traces/cccp.rep",
    "./traces/cccp-bal.rep",
    "./traces/chrome.rep",
    "./traces/coalesce-big.rep",
    "./traces/cp-decl.rep",
    "./traces/exhaust.rep",
    "./traces/expr-bal.rep",
    "./traces/firefox-reddit2.rep",
    "./traces/freeciv.rep",
    "./traces/random.rep",
    "./traces/random2.rep",
]
for filename in files:
    parse_file(filename)


# 输出CSV文件的函数
def output_csv(freq_dict, filename):
    with open(filename, "w", newline="") as csvfile:
        writer = csv.writer(csvfile)
        for size, freq in sorted(freq_dict.items()):
            writer.writerow([size, freq])


# print(alloc_freq)

# 输出四个CSV文件
if not os.path.exists("trace-summary"):
    os.mkdir("trace-summary")

output_csv(alloc_freq, "trace-summary/alloc_freq.csv")
output_csv(realloc_freq, "trace-summary/realloc_freq.csv")
output_csv(combined_alloc_realloc_freq, "trace-summary/combined_alloc_realloc_freq.csv")
output_csv(free_freq, "trace-summary/free_freq.csv")
