---
title: 去除丢失「写保护开关」SD 卡的写保护
date: 2017-08-03 19:55:01
tags:
categories:
- hacking
---

{% asset_img SDCard.jpg %}

<!-- more -->

### SD 卡写保护原理

当滑块处于「非LOCK」位置时，
读卡器中有一个簧片开关被这个黄色的突起“顶起”保证连通，
即告诉读卡器这张卡是可以读写的。[1][] [2][]

{% asset_img 1.png %}

[1]: <https://www.zhihu.com/question/20513856>
    "SD卡是如何通过“lock”键实现写保护的？"

[2]: <http://blog.csdn.net/hamsky/article/details/3853488>
    "SD卡写保护的原理"
