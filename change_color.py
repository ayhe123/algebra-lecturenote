"""
自动修改背景颜色, 会覆盖原文件
"""

import os
import re


choice = '3'
while choice not in ('0', '1', '2'):
    choice = input("""请选择:
    
0: 给所有文档加上背景颜色
1: 去掉所有文档的背景颜色
2: 退出

输入 0-2 间的数字 > """)


files = [f for f in os.listdir()
         if f.rpartition('.')[-1] == 'tex']

for f in files:
    with open(f, 'r', encoding='utf-8') as fp:
        context = fp.read()
        if choice == '0':
            context = re.sub(r'\\usepackage\{lecturenote\}',
                             r'\\usepackage[bgcolor]{lecturenote}',
                             context)
        else:
            context = re.sub(r'\\usepackage\[bgcolor\]\{lecturenote\}',
                             r'\\usepackage{lecturenote}',
                             context)

    with open(f, 'w', encoding='utf-8') as fp:
        fp.write(context)
