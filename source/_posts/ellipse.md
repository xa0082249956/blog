---
title: 椭圆
date: 2017-09-06 21:20:37
categories:
- 高考
- 数学
- 圆锥曲线
---

# 基本概念

## 定义

{% centerquote %}
在数学中，<b>椭圆</b>是平面上到两个固定点的距离之和为常数的点之轨迹。</br>
In mathematics, an <b>ellipse</b> is a curve in a plane surrounding two focal points such that the sum of the distances to the two focal points is constant for every point on the curve.
{% endcenterquote %}

椭圆的定义可表示为
$$
E = \{P \mid |PF_1| + |PF_2| = 2a\}
$$
其中 $(0 < |F_1F_2| = 2c < 2a)$,  $E$ 为椭圆.\
$F_1$, $F_2$ 为椭圆的两个**焦点**(foci).\
两焦点连线中点 $C$ 为椭圆的**中心**(center).

穿过两焦点并终止于椭圆上的线段 $AB$ 为**长轴**(major axis)^[中文维基对长轴的定义是穿过两焦点并终止于椭圆上的**线段**, 而英文维基的定义是穿过两焦点的**直线**. 短轴同理].\
穿过中心垂直于长轴并终止于椭圆的线段 $CD$ 叫**短轴**(minor axis).

**半长轴** $a$ 为长轴的一半.\
**半短轴** $b$ 为短轴的一半.\
**半焦距** $c$ 为焦距的一半.\
它们满足 $a^2 = b^2 + c^2$.

如果两个焦点重合, 这个椭圆就是圆.

{% asset_img Ellipse-def-e.svg "椭圆的定义 by Ag2gaeh, CC-BY-SA-4.0" %}

## 方程

### 圆锥曲线方程

椭圆是在笛卡尔平面上如下形式的方程所定义的曲线
$$
Ax^2+Bx^2+Cxy+Dx+Ey+F=0
$$
其中 $B^2 < 4AC$, 这里的系数均为实数, 并存在定义在椭圆上的点对 (x, y) 的多于一个的解.

当原点位于中心时, 方程可以写作
$$
Ax^2+Bxy+Cy^2 = 1
$$

{% spoiler "懵逼时间" %}
> 中心位于原点的椭圆 $Ax^{2}+Bxy+Cy^{2}=1$ 可以被看作单位圆在关联于对称矩阵 $$ A^{\prime }={\begin{bmatrix}A&B/2\\B/2&C\end{bmatrix} }  = PDP^{T} $$ 的线性映射下的图像，这里的 $D$ 是带有 $ A^{\prime } $ 的特征值的对角矩阵，二者沿着主对角线都是正实数的，而 $P$ 是拥有 $ A^{\prime } $ 的特征向量作为纵列的实数的酉矩阵。椭圆的长短轴分别沿着 $ A^{\prime } $ 的两个特征向量的方向，而两个与之对应的特征值分别是半长轴和半短轴的长度的平方的倒数。
{% endspoiler %}

椭圆可以通过对一个圆的所有点的 $x$ 坐标乘以一个常数而不改变 $y$ 坐标来生成。

### 标准方程

对于这里的标准方程, 椭圆的中心均与原点 $(0, 0)$ 重合.

#### 焦点在 $x$ 轴上时

椭圆的标准方程为
$$
\frac{x^2}{a^2}+\frac{y^2}{b^2} = 1\quad (a > b > 0)
$$
其中 $-a \le x \le a$, $-b \le y \le b$.

{% spoiler 推导过程 %}

假设动点为 $P(x, y)$, 两个定点 $F_1(-c, 0)$, $F_2(c, 0)$, 根据定义有
$$
|PF_1|+|PF_2| = 2a\quad (a > 0)\tag{0}
$$
其中 $a$ 为定值.

由两点距离公式,
$$
\begin{align}
|PF_1| &= \sqrt{ {(x+c) }^2+y^2}\\
|PF_2| &= \sqrt{ {(x-c) }^2+y^2}
\end{align}
$$
将其代入 $(0)$ 中可得
$$\sqrt{ {(x+c) }^2+y^2} = 2a - \sqrt{ {(x-c) }^2+y^2} $$
整理化简
$$(a^2 - c^2)x^2 - a^2y^2 = a^2(a^2-c^2)$$
当 $ a > c $ 时, 设 $b^2 = a^2 - c^2$, 
$$b^2x^2 - a^2y^2 = a^2b^2$$
因为 $a^2b^2 > 0$, 将等式两边同时除以 $a^2b^2$
$$\frac{x^2}{a^2} + \frac{y^2}{b^2} = 1$$

该方程即为动点 $P$ 的轨迹方程, 也即椭圆的标准方程.

{% endspoiler %}

#### 焦点在 $y$ 轴上时

椭圆的标准方程为
$$
\frac{y^2}{a^2}+\frac{x^2}{b^2} = 1\quad (a > b > 0)
$$
其中 $-a \le y \le a$, $-b \le x \le b$.

### 参数方程

中心位于点 $(h, k)$ 的长轴平行于 $x$ 轴的椭圆:
$$
\left\{
    \begin{align}
        x &= h + a \cos t \\
        y &= k + b \sin t
    \end{align}
\right.
$$
其中 $t$ 为参数且 $t \in [-\pi, \pi]$.

> 长轴平行于 $y$ 轴的时候, 交换一下 $a$ 和 $b$ 就苟啦~

## 离心率

椭圆的形状可以用**椭圆的离心率**来表达, 高中大多数数学课本把它指示为 $e$.\
椭圆的离心率 $e$ 取值范围为 $(0,1)$. 
$e = 1$ 时, 椭圆的两个焦点重合, 也就是说这是个圆.

对于有半长轴 $a$ 和半短轴 $b$ 的椭圆, 离心率
$$
e = \frac{c}{a} = \sqrt{1 - \frac{b^2}{a^2} } 
$$

半焦距 $c$ 也叫椭圆的**线性离心率**.\
两个焦点之间的距离 $2c = 2ae$.

# 拓展内容

## 正焦弦与通径

过椭圆的焦点, 作垂直于长轴的直线, 则直线被椭圆截得的线段叫做椭圆的**正焦弦**(latus rectum)或**通径**.\
通径长度的一半叫**半正焦弦**(simi-latus rectum)或**半通径** $p$.
$$p = \frac{b^2}{a}$$
半正焦弦 $p$ 也被叫做椭圆在顶点 $(\pm a, 0)$ 处密切圆(曲率圆)的曲率半径.\
对于圆锥曲线来说, 其半通径也是最小曲率半径.^[证明见[怎么证明圆锥曲线的半通径是曲线的最小曲率半径？- 知乎](https://www.zhihu.com/question/39877628)]

## 切线

{% spoiler "懵逼时间" %}
找出椭圆在点 $(x_0, y_0)$ 的切线的最简单方式是计算方程 $ \frac{x^2} {a^2}+\frac{y^2} {b^2} = 1 $ 的隐函数导数, 于是
$${\frac {2x}{a^{2} } }+{\frac {2yy'}{b^{2} } }=0\ \rightarrow \ y'=-{\frac {x}{y} } {\frac {b^{2} } {a^{2} } }\ \rightarrow \ y=-{\frac {x_{0} } {y_{0} } }{\frac {b^{2} } {a^{2} } }(x-x_{0})+y_{0}.$$
与 $ {\tfrac {x_{0}^{2} } {a^{2} } }+{\tfrac {y_{0}^{2} } {b^{2} } }=1 $ 联立, 得
{% endspoiler %}

点 $(x_0, y_0)$ 的切线方程为 $$\frac{x_0}{a^2}x + \frac{y_0}{b^2}y = 1.$$

通过向量方程来表述, 我们有
$${\vec {x}}={\begin{pmatrix}x_{0}\\y_{0}\end{pmatrix}}+s\;{\begin{pmatrix}-ay_{0}/b\\bx_{0}/a\end{pmatrix}}\quad {\text{其中}}\quad s\in \mathbb {R} \ .$$

# 参考链接

- 维基百科, 椭圆: <https://zh.wikipedia.org/wiki/%E6%A4%AD%E5%9C%86>
- 韦培安, 关注圆锥曲线的“通径”: <http://www2.chinaedu.com/101resource004/wenjianku/200338/101ktb/ztfd/F10S0501/F10S0501.htm>
