---
title: Pandoc's Markdown 摘要
date: 2017-07-29 18:19:17
tags:
- Pandoc
---


{% note warning %}

<h2>未完成的项目</h2>

该项目目前并未完成。

{% endnote %}

## 哲学

> 一份Markdown格式的文件应该要能以纯文字形式直接发表，并且一眼看过去不存在任何标记用的标签或格式指令。
>
>
> **John Gruber**

## 引言

**`>` 符号**不一定要在该行最左边，但也不能缩进超过三个空白。

可以只在引言区块的第一行行首输入 `>`，后面的行首可以省略符号：

```markdown
> 这是一个引言区块\
这是它的第二行
```
*效果：*

> 这是一个引言区块\
这是它的第二行

> **注意** \
> Pandoc 需要在引言之前预留空白行。

## 代码

### 缩进代码区块

以四个空白缩进为开始的区块。

````markdown
    一
    个
    区
    块
````

*效果：*

    一
    个
    区
    块

### 围栏代码区块

以三个以上 `~` 或 `` ` `` 的一行作为开始，并以同一符号至少同样长度的一行作为结束。

```markdown
~~~~~~
FindingParadise
~~~~~~
```

*效果：*

~~~~~~
FindingParadise
~~~~~~

如果代码本身有一整行这种东西，你比它更长一点就好了。

#### 附加属性

`#mycode` 为 ID.\
`.tex` 和 `.numberLines` 为类别.\
`startFrom="0"` 为属性.

```markdown
~~~~ {#mycode .tex .numberLines startFrom="0"}

\usepackage{ctexart}

\begin{document}
    Finding Paradise.
\end{document}
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
```

*效果：*

**不支持。**

### 行

行区块以 `|` 开头，行与行间的间隔在输出时将会以原样保留，行首空白同理。而这些行依然会以 Markdown 格式处理。

```markdown
| Mitsuha, Yotsuha, do you know "Musubi"?
|
| Musubi?
|
| Musubi is the old way of calling the local guardian god.
| This word has profound meaning.
|     Tying thread is Musubi.
|     Conneting people is Musubi.
|     The flow of time is Musubi.
|     They're all the god's power.
| So the braided cords that we make are the god's art and represent the flow of time itself.
| They converge and take shape.
| They twist, tangle, sometimes unravel, break, then connect agagin.
| Musubi - knotting. That's time.
```

*效果：*

| Mitsuha, Yotsuha, do you know "Musubi"?
|
| Musubi?
|
| Musubi is the old way of calling the local guardian god.
| This word has profound meaning.
|     Tying thread is Musubi.
|     Conneting people is Musubi.
|     The flow of time is Musubi.
|     They're all the god's power.
| So the braided cords that we make are the god's art and represent the flow of time itself.
| They converge and take shape.
| They twist, tangle, sometimes unravel, break, then connect agagin.
| Musubi - knotting. That's time.

