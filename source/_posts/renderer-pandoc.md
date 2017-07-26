---
title: 将 Pandoc 作为 Hexo Markdown 渲染引擎
date: 2017-07-26 10:07:01
categories:
---

# 为什么使用 Pandoc
- Hexo 默认的渲染引擎和 MathJax 存在冲突，导致公式输入十分繁琐
- Hexo 默认的渲染引擎常出现模板渲染错误的问题

# 替换方法
## 安装 Pandoc
Pandoc 的安装程序可以在 https://github.com/jgm/pandoc/releases 找到。

> Chocolatey 中的 Pandoc 版本似乎是 2.0 版，暂不推荐使用。

## 更换渲染引擎

```bat
npm uninstall hexo-renderer-marked --save
npm install hexo-renderer-pandoc --save
```
