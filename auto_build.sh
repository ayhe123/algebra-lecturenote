#!/bin/bash

while true; do
    echo "请选择:

0: 编译
1: 清理临时文件
2: 编译且清理临时文件
3: 删除所有的 PDF 文件 (慎用)
4: 退出
"
    read -p "输入 0-4 间的数字 > "
    if [[ $REPLY =~ ^[0-4]$ ]]; then
        if [[ $REPLY =~ ^[02]$ ]]; then
            rm __latexindent_temp.tex
            echo "开始编译"
            for FILE in *.tex; do
                xelatex $FILE
                xelatex $FILE
            done
            echo "编译完成"
        fi
        if [[ $REPLY =~ ^[12]$ ]]; then
            echo "开始清理"
            rm __latexindent_temp.tex *.aux *.bbl *.blg *.log *.out *.toc *.bcf *.xml *.synctex *.nlo *.nls *.bak *.ind *.idx *.ilg *.lof *.lot *.ent-x *.tmp *.ltx *.los *.lol *.loc *.listing *.gz *.userbak *.nav *.snm *.vrb *.synctex\(busy\) *.nav *.snm *.vrb *.fls *.xdv *.fdb_latexmk
            echo "清理完成"
        fi
        if [[ $REPLY =~ ^3$ ]]; then
            read -p "是否删除当前目录下所有的 PDF 文件? (y/[n]) > "
            if [[ $REPLY =~ ^y$ ]]; then
                rm *.pdf
                echo "清理完成"
            fi
        fi
        exit 0
    fi
done
