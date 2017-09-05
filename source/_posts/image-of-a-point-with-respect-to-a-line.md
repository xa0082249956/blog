---
title: 某点关于直线对称点的确定方法
date: 2017-09-04 22:26:47
categories:
- 高考
- 数学
- 解析几何
---

直线 $l: Ax + By + C = 0$,\
求 $P(x_0, y_0)$ 关于 $l$ 的对称点 $P'$.

## 方法一 经典方法

设 $P'(x, y)$.
求解方程组：

$$
\left\{
\begin{array}{}
A\cdot\frac{x_0 + x}2 + B\cdot\frac{y_0+y}2 + C = 0 \\
\frac{x-x_0}{y-y_0} = \frac{A}{B}
\end{array}
\right.
$$

解得:

$$
\left\{
\begin{array}{}
x = \frac{-A^2x_0+B^2x_0-2ABy_0 - 2AC}{A^2+B^2} \\
y = \frac{A^2y_0-B^2y_0-2ABx_0 - 2BC}{A^2+B^2}
\end{array}
\right.
$$

## 方法二 简化记忆

这种方法将以上公式做适当改进，体现出数学的对称美，而且有很明显的几何意义，因而便于记忆和运用^[王志和: 点关于直线的对称点的一种公式求法]。

将[方法一]的 $x = \frac{-A^2x_0+B^2x_0-2ABy_0 - 2AC}{A^2+B^2}$ 变为
$$
\begin{align}
x &= \frac{\left(A^2+B^2\right)x_0 - 2A\left(Ax_0+By_0+C\right)}{A^2+B^2} \\
  &= x_0 - \frac{2A\left(Ax_0+By_0+C\right)}{A^2+B^2} \\
  &= x_0 - \frac{A}{\sqrt{A^2+B^2}} \cdot \frac{2\left(Ax_0+By_0+C\right)}{\sqrt{A^2+B^2}} \\
  &= x_0 - \frac{A}{\sqrt{A^2+B^2}} \cdot 2d'
\end{align}
$$
(其中 $d' = \frac{Ax_0+By_0+C}{\sqrt{A^2+B^2}}$ 的绝对值是点 $(x_0, y_0)$ 到直线 $l$ 的距离)
同理
$$
y = y_0 - \frac{B}{\sqrt{A^2+B^2}} \cdot 2d'
$$
于是，点 $P$ 关于直线 $l$ 的对称点为
$$
P'(x_0 - \frac{A}{\sqrt{A^2+B^2}} \cdot 2d', y_0 - \frac{B}{\sqrt{A^2+B^2}} \cdot 2d')
$$

记 $\vec{e}$ 为直线 $l: Ax+By+C=0$ 的法向量 $(A, B)$ 的单位向量，则有
$$
\vec{e} = \left(\frac{A}{\sqrt{A^2+B^2}}, \frac{B}{\sqrt{A^2+B^2}}\right) \\
\begin{align}
\vec{PP'} &= \left(- \frac{A}{\sqrt{A^2+B^2}}, - \frac{B}{\sqrt{A^2+B^2}} \cdot 2d'\right) \\
          &= 2\vec{e}
\end{align}
$$
其中 $\vec{PP'}$ 的几何意义为将 $P$ 点向垂直于直线 $l$ 并指向直线 $l$ 的方向移动该点到直线距离的两倍得到对称点 $P'$.

## 方法三 比利方程

解这个方程^[https://math.stackexchange.com/questions/1588646/how-do-i-find-the-image-of-a-point-in-a-line-in-3d-space]，解出来的结果和上面一样。
$$
\frac{x-x_0}{A} = \frac{y-y_0}{B} = \frac{-2\left(Ax_0+By_0+C\right)}{A^2+B^2}
$$

## 方法四 用的向量

取直线 $l: Ax+By+C=0$ 的方向向量 $vec{a} = (B, -A)$\
在直线上任取一点 $A(x_1, y_1)$\
则
$$
\vec{PP'} = 2 \cdot \left( \frac{\vec{AP}\cdot\vec{a}}{\vec{a} \cdot \vec{a}} - \vec {AP} \right)
$$
可求出 $P'$ 的坐标。
