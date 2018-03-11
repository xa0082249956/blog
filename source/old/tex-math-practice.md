---
title: $\rm \LaTeX$ 公式输入练习
date: 2017-05-04 23:18:23
categories: 
- $\rm \LaTeX$
---

> qwqqqq 这样排版好丑\
> 要怎么做呢……………………

# 选修 4-5 / P39

0.    要证明 \
      $$x\cdot\sqrt{x}-\frac32x\ge-\frac12$$
      只需证明 \
      $$x^{\frac32}\ge-\frac12+\frac32x$$
      由 伯努利不等式\
      $$
      \begin{align}
      x^\frac32 = (1+(x-1))^\frac32&\ge1+\frac32(x-1) \\
      &=-\frac12+\frac32x
      \end{align}
      $$
      即  \
      $$x^{\frac32}\ge-\frac12+\frac32x$$

      证毕。

1. ​

     1. $n=5$ 时，$32 = 2^5 \gt 5 ^ 2 = 25$，原不等式显然成立。

     2. 假设 $n = k(k \ge 5) $ 时，不等式成立。
          即 \
          $$2 ^ n \ge n ^ 2$$
          则当 $ n = k + 1 $ 时\
          $$
          \begin{align}
          2^{k + 1} &= 2\cdot2^k\\&=k^2+k^2\\&\ge k^2+5k\\&\gt k^2+2k+1\\&=(k+1)^2
          \end{align}
          $$
          即 $n=k+1$ 时，不等式成立。

     由 1, 2 可知，当 $n \ge 5$ 时，$2^n\gt n^2$ 成立。
