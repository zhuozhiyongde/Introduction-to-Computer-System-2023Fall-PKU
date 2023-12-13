#!/usr/bin/env python
# -*- encoding: utf-8 -*-
# @Author  :   Arthals
# @File    :   trace-analysis.py
# @Time    :   2023/12/12 17:35:36
# @Contact :   zhuozhiyongde@126.com
# @Software:   Visual Studio Code

import os
import csv
import matplotlib.pyplot as plt
from glob import glob
from collections import Counter

# 指针编号到大小的映射
pointer_size_map = {}


# 解析文件
def parse_file(filename):
    with open(filename, "r") as file:
        lines = file.readlines()

    # 忽略不是英文字符的行
    lines = [line for line in lines if line[0].isalpha()]

    data = []
    time = 0
    for line in lines:
        parts = line.split()
        op = parts[0]
        if op in ["a", "r"] and len(parts) == 3:
            id = int(parts[1])
            size = int(parts[2])
            data.append((time, op, size))
            time += 1
            pointer_size_map[id] = size
        elif op == "f":
            id = int(parts[1])
            # 如果没有id则忽略
            if id not in pointer_size_map:
                continue
            size = pointer_size_map[id]
            data.append((time, op, size))
            time += 1
            del pointer_size_map[id]

    return data


# 写入CSV文件
def write_to_csv(data, filename):
    with open(filename, "w", newline="") as csvfile:
        csvwriter = csv.writer(csvfile)
        csvwriter.writerow(["time", "op", "size"])
        for row in data:
            csvwriter.writerow(row)


# 修改后的绘图函数，只绘制点
def plot_data(data, image_filename):
    times = [row[0] for row in data]
    ops = [row[1] for row in data]
    sizes = [row[2] for row in data]

    color_dic = {
        "a": "red",
        "r": "blue",
        "f": "green",
    }
    plt.scatter(
        times, sizes, s=1, c=[color_dic[op] for op in ops]
    )  # 使用scatter绘制点，s参数控制点的大小
    plt.xlabel("Time")
    plt.ylabel("Size")
    plt.title("Time-Size Curve")
    plt.grid(True)
    plt.tight_layout()
    plt.savefig(image_filename, format=image_filename.split(".")[-1])
    plt.close()  # 关闭当前图形，防止重叠


# 统计size出现次数并写入CSV
total_sum = {}


def summarize_sizes(data, summary_filename):
    size_counter = Counter(size for _, op, size in data if op != "f")
    # sort
    size_counter = dict(sorted(size_counter.items(), key=lambda x: x[0]))
    with open(summary_filename, "w", newline="") as csvfile:
        csvwriter = csv.writer(csvfile)
        csvwriter.writerow(["size", "count"])
        for size, count in size_counter.items():
            csvwriter.writerow([size, count])
            total_sum[size] = total_sum.get(size, 0) + count


# 修改后的主处理函数
def process_traces(directory):
    # 创建输出目录及子目录
    output_directory = "trace-analysis"
    csv_directory = os.path.join(output_directory, "csv")
    png_directory = os.path.join(output_directory, "png")
    sum_directory = os.path.join(output_directory, "sum")
    os.makedirs(csv_directory, exist_ok=True)
    os.makedirs(png_directory, exist_ok=True)
    os.makedirs(sum_directory, exist_ok=True)

    # 获取所有.rep文件
    rep_files = glob(os.path.join(directory, "*.rep"))

    for rep_file in rep_files:
        data = parse_file(rep_file)
        base_filename = os.path.splitext(os.path.basename(rep_file))[0]
        csv_filename = os.path.join(csv_directory, f"{base_filename}.csv")
        image_filename = os.path.join(png_directory, f"{base_filename}.png")
        summary_filename = os.path.join(sum_directory, f"{base_filename}_summary.csv")

        write_to_csv(data, csv_filename)
        plot_data(data, image_filename)
        summarize_sizes(data, summary_filename)

    # 输出总的size统计结果
    with open(
        os.path.join(output_directory, "total_sum.csv"), "w", newline=""
    ) as csvfile:
        csvwriter = csv.writer(csvfile)
        csvwriter.writerow(["size", "count"])
        for size, count in total_sum.items():
            csvwriter.writerow([size, count])


# 执行处理traces目录的函数
process_traces("traces")
