#!/bin/bash

# 编译 src/main.tex 到 build 目录，启用 shell-escape
mkdir -p build out
# 设置 TEXINPUTS 让 pdflatex 能在 src 目录查找类文件，无需复制
export TEXINPUTS=src//:
pdflatex -shell-escape -interaction=nonstopmode -output-directory=build src/main.tex
# 获取当前时间（到秒）
now=$(date +"%Y%m%d_%H%M%S")
# 检测语言环境，支持中英文输出
lang=$(locale | grep LANG= | cut -d= -f2 | cut -d_ -f1)
if [ "$lang" = "zh" ]; then
    msg_success="输出 PDF: out/main_$now.pdf"
    msg_fail="PDF 未生成，编译失败。"
else
    msg_success="Output PDF: out/main_$now.pdf"
    msg_fail="PDF not generated, compilation failed."
fi

# 颜色定义
GREEN='\033[0;32m'
RED='\033[0;31m'
NC='\033[0m' # 无色

# 移动 PDF 到 out 目录并重命名
if [ -f build/main.pdf ]; then
    cp build/main.pdf out/main_$now.pdf
    echo -e "${GREEN}\033[7m[SUCCESS]\033[0m${NC}${msg_success}"
else
    echo -e "${RED}\033[7m[FAILURE]\033[0m${NC}${msg_fail}"
fi
