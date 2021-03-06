---
title: 快速笔记
date: 2017-08-20T21:38:52+08:00
---

> 用来记录一些没有必要写成一篇文章，但总会需要的东西。\
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

直接使用块级代码`$$x^n+y^n=z^n$$`不会生成编号，而使用\tag{...}标签就可以生成对应的编号。

```markdown
这样的代码可以生成如$$x^n+y^n=z^n \tag{1.1}$$的编号块级公式。
```

这样的代码可以生成如$$x^n+y^n=z^n \tag{1.1}$$的编号块级公式。

## vi

### 跳转

#### 跳到最后

    G

### 替换

<http://blog.sina.com.cn/s/blog_736f1c59010136ry.html>

`:s/vivian/sky/`\
替换当前行第一个 `vivian` 为 `sky`

`:s/vivian/sky/g`\
替换当前行所有 `vivian` 为 `sky`

`:n,$s/vivian/sky/`\
替换第 n 行开始到最后一行中每一行的第一个 `vivian` 为 sky

`:n,$s/vivian/sky/g`\
替换第 n 行开始到最后一行中每一行所有 `vivian` 为 sky\
(n 为数字，若 n 为 .，表示从当前行开始到最后一行)

`:%s/vivian/sky/` (等同于 `:g/vivian/s//sky/`)\
替换每一行的第一个 `vivian` 为 `sky`

`:%s/vivian/sky/g`(等同于 `:g/vivian/s//sky/g`)\
替换每一行中所有 `vivian` 为 sky

 
可以使用 # 作为分隔符，此时中间出现的 / 不会作为分隔符

`:s#vivian/#sky/#` \
替换当前行第一个 vivian/ 为 sky/

`:%s+/oradata/apras/+/user01/apras1+` (使用 `+` 来 替换 `/` )\
`/oradata/apras/` 替换成 `/user01/apras1/`

## Linux

### Debian/Ubuntu

#### 标记安装包为自动安装

    sudo apt mark auto xxxxxx

### 实时查看文件

    tail --follow /var/log/syslog

### 字体

#### 位置

##### 定义位置

    /etc/fonts/fonts.conf
    /etc/fonts/local.conf

##### 存储位置

    /usr/share/fonts/
    /usr/local/share/fonts
    

### Linux GUI
#### 非 KDE 桌面下 Qt5 程序丑的解决办法

<https://bbs.deepin.org/forum.php?mod=viewthread&tid=42945>

#### 网易云音乐打不开

```bash
sudo vim /usr/share/applications/netease-cloud-music.desktop
```

`exec` 后改为 `netease-cloud-music %U --no-sandbox`

<https://www.zhihu.com/question/52084770>

### Ubuntu / Debian

#### 安装 TexLive

<https://tex.stackexchange.com/questions/1092/how-to-install-vanilla-texlive-on-debian-or-ubuntu/95373#95373>

## TeX

### \newif

TeX 中的               | C++ 对应
-----------------------|-----------------
`\newif\ifabc`         |`bool abc;`
`\abctrue`             |`abc = true; `
`\abcfalse`            |`abc = false;`
`\ifabc`               |`if (abc) {`
`    abc is true`      |`    cout << "abc is true";`
`\else`                |`} else {`
`    abc is false`     |`    cout << "abc is false"; `
`\fi`                  |`}`

### ...

`\ldots` $\ldots$\
`\cdots` $\cdots$
