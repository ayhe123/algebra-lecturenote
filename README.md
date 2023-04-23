# algebra-lecturenote
柯斯特利金《代数学引论》笔记及部分习题答案

这是我在B站看席南华院士的《线性代数》课程时作的笔记以及《代数学引论》一部分课后习题的答案，也包括席南华院士写的《基础代数》的一部分课后习题的答案，供大家参考，也请各位大佬帮忙修改。

下面的 “教材” 指柯斯特利金的《代数学引论》前两卷，“视频”指席南华院士的《线性代数》课程。

## 关于内容的说明

目前我看了 1.5 遍视频，第一次看的时候我把视频从头到尾看完了，教材里我会写的题都写了一遍，比较难且能做出来的题目都在笔记上详细地写了解答，但是现在我对当时写的一些东西不是很满意，而且我发现我的笔记与席南华院士的《基础代数》有一些重复的地方（当然第一次看时我还不知道有这套书），想改一下笔记，顺便复习一下线性代数。现在看完的部分有第 1 卷的前 4 章和第 2 卷的前 2 章。

学第二遍的时候我主要做的是《基础代数》的习题，《基础代数》里我认为值得做且教材里没有的题目会以带有《基础代数》对应卷的题号的补充题的形式放在笔记中，比如在 `1-1.tex` 中带有 “1.10” 的补充题是《基础代数》第1卷的练习 1.10，带有 “1.5.1” 的补充题是《基础代数》第1卷习题 1.5 的第 1 题，在 `2-1.tex` 中带有 “1.1.11” 的补充题是《基础代数》第2卷习题 1.1 的第 11 题。

有几点需要强调的地方：

1. **这个笔记不适合初学者看**。教材本身就不适合初学者看，我建议初学者在看教材和视频之前先学一门工科的线性代数课程或者高等代数课程。
2. **这个笔记不能取代教材和视频**。可以把笔记看成是教材的补充，笔记和教材的子集的交集是视频的子集。在看教材和视频时遇到不懂的地方可以在笔记中找解释。

## 使用方法

在 [这里](https://github.com/ayhe123/algebra-lecturenote/releases) 下载我编译好的 PDF 文件。文件包括：

1. `no_bg.zip` 是编译好的 PDF 文件（无背景颜色），`with_bg.zip` 是编译好的 PDF 文件（有绿色的背景颜色）。
2. `materials.zip` 里面有文中提到的 `.ggb` 文件。

如果你会使用 LaTeX, 可以自己编译，具体方法见“编译方法”一节。

## 文件及符号说明

文件名中的第一个数字表示第几卷，第二个数字表示第几章，比如 `1-3.pdf` 表示这个文件中的笔记对应的是教材第1卷第3章。

笔记中用 “书上的xx” 来表示引用对应的教材对应章节的内容，“书上第xx章第xx节的xx” 来表示引用对应教材不对应章节的内容，比如在 `1-3.pdf` 对应第3节的内容中提到 “书上第1章第2节的定理1” 指的是教材第1卷第1章第2节的定理1，提到 “书上第2节的定理1” 指的是教材第1卷第3章第2节的定理1，提到 “书上的定理1” 指的是教材第1卷第3章第3节的定理1。

笔记中用 “书上的xx.xx” 来表示《基础代数》对应的卷的内容，比如在 `1-1.pdf` 中 “书上的定理 1.9” 指的是《基础代数》的定理 1.9，比如在 `1-3.pdf` 中 “书上的习题 2.3.4” 指的是《基础代数》习题 2.3 的第 4 题。

在引用不对应的卷（比如在 `2-x.pdf` 中引用教材第1卷的内容）时，用“[BAI]$\sim$[BAIII]”（这个记号与教材是一致的）分别表示教材第 $1\sim3$ 卷或者《基础代数》的第 $1\sim3$ 卷，根据前面两条来判断具体指的是哪个，比如“[BAI]的第1章第2节的定理1”指的是教材第1卷，“[BAI]的定理1.9”指的是《基础代数》第1卷。用“[BAI]$\sim$[BAIII]第x章笔记的xx”来表示对应的卷的笔记的内容，比如“[BAI]第1章笔记的定理1” 指的是 `1-1.pdf` 的定理1。

笔记的符号基本上与教材和视频一致。下面的符号表是笔记中一些教材和视频中没有的符号。

| 符号                          | 含义                                 |
| ----------------------------- | ------------------------------------ |
| $\because$                    | 因为                                 |
| $\therefore$                  | 所以                                 |
| $LHS$                         | 原式左边                             |
| $RHS$                         | 原式右边                             |
| $\lfloor x \rfloor$           | $x$ 向下取整                         |
| $\lceil x \rceil$             | $x$ 向上取整                         |
| $\exists !a$                  | 存在唯一的 $a$                       |
| $a\Rightarrow b$              | 命题 $a$ 蕴含命题 $b$                |
| $a\Leftrightarrow b$          | $a\Rightarrow b$ 且 $b\Rightarrow a$ |
| $a\vee b$                     | 命题 $a$ 成立或命题 $b$ 成立         |
| $a\wedge b$（第2卷第6章之前） | 命题 $a$ 与命题 $b$ 都成立           |
| $a\wedge b$（第2卷第6章之后） | $a$ 与 $b$ 的外积                    |

其他教材和视频中没有的符号第一次出现时应该会有说明。

`.ggb` 文件是 [GeoGebra](https://www.geogebra.org)（一个类似于几何画板的软件）的存档，可以用 [这个网址](https://www.geogebra.org/classic) 打开。

## Mathematica 代码

不加说明的话，笔记中出现的代码都是 Mathematica 代码。所有的代码都能正常运行（测试环境：macOS 12，Mathematica 12.3）。

## 编译方法

需要安装主流的 LaTeX 发行版（比如 TeX Live、MacTeX）。

这个笔记从 0.3 版开始使用 [ElegantNote 模板](https://github.com/ElegantLaTeX/ElegantNote)，能提供更多的自定义样式，且不容易有字体问题。

### 使用我修改过的 ElegantNote

我对 ElegantNote 进行了一些修改，主要是加入了一些 `mdframed` 定理环境，[源码地址](https://github.com/ayhe123/ElegantNote)

在 Linux 或者 MacOS 下执行：

```bash
git clone https://github.com/ayhe123/algebra-lecturenote.git
git clone https://github.com/ayhe123/ElegantNote.git
cp ElegantNote/elegantnote.cls algebra-lecturenote
make
make clean
```

参考文献需要用 `biber` 手动编译。

Windows 用户可以用我写的一个 Python 程序用来自动编译 LaTeX 文件，[源码地址](https://github.com/ayhe123/LaTeX-batch-builder)

### 使用原版 ElegantNote

主流的 LaTeX 发行版应该都预装有 ElegantNote，不用下载。

这里介绍不用 `mdframed` 宏包的方法。首先删掉 `lecturenote.sty` 的下列内容：
```LaTeX
\newmdtheoremenv[style=mdftheoremstyle]{property}{性质}[section]
\newmdtheoremenv[style=mdftheoremstyle]{exercise}{习题}
\newmdtheoremenv[style=mdftheoremstyle]{exercisec}{补充题}
```

在 `lecturenote.sty` 或者其他合适的地方加上：

```LaTeX
\theoremstyle{definition}  % 或者改成其他的定理样式
\newtheorem*{solution}{解}
\theoremstyle{plain}
\newtheorem{property}{性质}[section]
\newtheorem{exercise}{习题}
\newtheorem{exercisec}{补充题}
```

之后就能正常编译了。

### 一键修改样式

我写了一个 Python 脚本用于批量修改样式。使用方法见[这里](https://github.com/ayhe123/ElegantNote/tree/master/utils)

## 存在的问题

已经看过第二遍的部分的问题已经列在[这里](https://github.com/ayhe123/algebra-lecturenote/issues)了。其他部分的问题在每个 `.tex` 文件的开头。

如果在阅读过程中发现任何问题，都可以去发 issue。

## 许可证

本笔记采用 CC-BY-4.0 许可证, 更多信息见 https://creativecommons.org/licenses/by/4.0

笔记的页脚中的 [图片](materials/license.eps) 来自 https://creativecommons.org/about/downloads/
