---
title: 快速笔记
visible: false
date: 
tags:
---

> 用来记录一些没有必要写成一篇文章，但总会需要的东西。
> 用 `Ctrl` + `F` 来快速查找。

<!-- more -->

## Aria2

### 同时下载多个文件

```bash
aira2c -Z [URLA] [URLB]
```

## Hexo

### 插图

    {% asset_path slug %}
    {% asset_img slug [title] %}
    {% asset_link slug [title] %}

## Markdown

### 公式

#### 编号

直接使用块级代码$$x^n+y^n=z^n$$不会生成编号，而使用\tag{...}标签就可以生成对应的编号。

```markdown
这样的代码可以生成如`$$x^n+y^n=z^n \tag{1.1}$$`的编号块级公式。
```

> 这样的代码可以生成如`$$x^n+y^n=z^n \tag{1.1}$$`的编号块级公式。
