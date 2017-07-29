---
title: 修复 XeLaTeX 编译时间过长的问题
date: 2017-07-10 20:48:24
tags:
categories: 
- LaTeX
---

XeLaTeX 编译过长的一般原因是找不到字体。\
XeLaTeX 在字体缓存中找不到字体时会重新刷新字体缓存，这个过程很慢。

在长时间的等待之后，可能找到正常的字体编译完成；也可能显示找不到字体的错误。

一般情况下，如果找到字体编译完成，字体缓存也会得到刷新，于是后续的编译速度会正常。\
不过，在 Windows 下 TeXLive 2017 似乎实现有问题，自动刷新字体缓存会出问题，此时可能需要手工刷新，即运行

```bat
fc-cache
```

-f 强制刷新\
-v 显示更详细的信息

这两个命令一般不用加。\
TeXLive 2017 字体缓存保存在 texlive\2017\texmf-var\fonts\cache, 刷新出问题时可以尝试清除该路径下所有内容后重试。

>**注意**\
>在安装新字体后都需要重新刷新字体缓存。

文档中使用了 PSTricks 作图也会延长编译时间。\
因为此时 XeTeX 会额外花费较多时间调用 ghostscript。\
可以考虑改用 tikz 画图。

参考资料:\
[https://www.zhihu.com/question/53981204](https://www.zhihu.com/question/53981204)
