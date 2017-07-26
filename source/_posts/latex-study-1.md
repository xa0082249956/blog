---
title: LaTeX 学习笔记 (1)
date: 2017-07-10 21:14:54
tags:
categories:
- LaTeX
---

## 文档元素
### 章节和目录
#### 标准文档类
- `article`
- `report`
- `book`

#### 章节划分
适用于标准文档类。
- `\chapter{<title>}` - 只在 **`book` 和 `report`** 文档中有定义。
    - `\chapter[<short title>]{<title>}`
    - `\chapter*{<title>}*`
    `short title` 用于页眉和页脚。
    `\chapter*` 不带编号，也不生成目录项和页眉页脚。
- `\section{<title>}`
    - `\section[<short title>]{<title>}`
    - `\section*{<title>}*`
    `short title` 用于页眉和页脚。
    `\section*` 不带编号，也不生成目录项和页眉页脚。
- `\subsection{<title>}`
- `\subsubsection{<title>}`
- `\paragraph{<title>}`
- `\subparagraph{<title>}`

`\part` 用以将整个文档分割为大的分块，但不影响
`\chapter` 或 `section` 等的编号。

##### `article` 带编号的层级
- `\section`
- `\subsection`
- `\subsubsection`

##### `report` / `book` 带编号的层级
- `\chapter`
- `\section`
- `\subsection`

#### 目录生成
```tex
\tableofcontents
```
>**注意**\
>正确生成目录项，一般需要**编译两次源代码**

有时使用了 `\chapter*` 或 `\section*` 这样不生成目录项的章节标题命令，而又想手动生成该章节的目录项，可在标题后使用
```tex
\addcontentsline{toc}{<level>}{<title>}
```
`<level>` 为章节层次(`chapter`, `section`, etc)。
`<title>` 为出现于目录项的章节标题。

#### 结构划分
- `\appendix` 附录\
  使用后，最高一级章节使用拉丁字母编号，从 A 开始。
- `book` 类专用命令
    - `\frontmatter` 前言部分。\
      页码为小写罗马字母格式。\
      其后的 `\chapter` 不编号。
    - `\mainmatter` 正文部分。\
      页码为阿拉伯数字格式，从 1 开始。\
      其后的 `\chapter` 编号正常。
    - `\backmatter` 后记部分。\
      页码格式不变，继续正常计数。\
      其后的 `\chapter` 不编号。

### 标题页
- **必须** `\title{<title>}`。
- **建议** `\author{<author>}`。
- **可选** `\date{<daet>}`，不提供时默认使用 `\today`。
- **可选** `\and` - 用于隔开多个人名。
- **可选** `\thanks` - 在 `\title`, `\author` 等命令内使用，生成标题页的脚注。

```tex
\author{33\thanks{0x21}}
    \and You\thanks{0xDD}
    \and All
```
