---
title: 导数复习
date: 2017-05-30 12:32:29
tags:
- 导数
categories:
- 高考
- 数学
- 笔记
---

# 法则

- $C' = 1$
- $(fg)' = f'\cdot g + f\cdot g'$
- $(\frac1x)' = -\frac{x'}{x^2}$
- $(\frac fg)'=(f\cdot\frac1g)'=f'\cdot(\frac1g) + f\cdot(\frac1g)' =\frac{f'\cdot g-f\cdot g'}{g^2}$
- 三角函数
  - $\sin'(x) = \cos(x)$
  - $\cos'(x)=-\sin(x)$
  - $\begin{align}tan'(x)=\frac{\sin(x)}{\cos(x)}' &= \frac{\sin'(x)\cdot\cos (x)-\sin (x)\cdot\cos'(x)}{\cos^2(x)}\cr &=\frac{\cos^2(x)+\sin^2(x)}{\cos^2(x)}\cr &=\frac1{\cos (x)}\end{align}$
- $(f(g(x)))'=f'(g(x)) \cdot g'(x)$
- $(x^y)'=y\cdot x^{y-1}$
- $(\mathrm{e}^x)'=\mathrm{e}^x$
- $(\alpha^x)'=\alpha^x\cdot\ln\alpha$
- $\ln'x=\frac1x$
- $\log_\alpha'|x|=\frac1{\ln\alpha}(\ln{x})'=\frac1{x\ln\alpha}=\frac{\log_a{e}}{\alpha}$


# 例题

1. 设函数 $f(x) = (x-a)(x-b)(x-c)$ ($a$, $b$, $c$ 是互不相等的实数)，求 $\frac{a}{f'(a)}+\frac{b}{f'(b)} + \frac{c}{f'(c)} $.

   $\begin{align}f'(a) &= (a-a)'(a-b)(a-c)+(a-a)((a-b)(a-c)) \cr  &=(a-b)(a-c)\end{align}'$

   $\begin{align}f'(b) &= (b-b)'(b-a)(b-c)+(b-b)((b-a)(b-c)) \cr  &=(b-a)(b-c)\end{align}'$

   $\begin{align}f'(c) &= (c-c)'(c-a)(c-b)+(c-c)((c-a)(c-b)) \cr  &=(c-a)(c-b)\end{align}'$

   $ \begin{align} 原式&= \frac{a}{(a-b)(a-c)}+\frac{b}{(b-a)(b-c)}+\frac{c}{(c-a)(c-b)} \cr  &=\frac{(\text{ab}-\text{ac})-(\text{ab}-\text{bc})+(\text{ac}-\text{bc})}{(a-b) (a-c) (b-c)} \cr   &=0\end{align} $

2. 