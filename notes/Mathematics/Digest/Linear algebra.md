

Elimination 消元法
simplify linear equations
消元法处理后matrix的determinant值不变（determinant的操作对于每一行/列是线性的）
elimination这个过程可用E matrix来represent




Gaussian-Jordan Elimination高斯-若尔当消元法

- [A | I] -> [I | A^-1]


Factorization into A=LU

for the equation EA=U(elimination)
$$E_{21}E_{23}A=U$$
$$A=E_{23}^{-1}E_{21}^{-1}U$$


# Space and subspaces

- Column Space C(A) the space is constructed from all the non-linearly related col vectors in A.(Ax = C(A))
- Null Space   all the solutions of Ax = 0. the zero vector must be in the null space

Null Space is defined by solving equations
Column Space is defined by the linear combinations of a set of vectors

## Subspace
Subspace must be contained within the large space. Itself must be closed for addition operations. (for additions and multiplications)

Zero space is also a subspace (can be proven easily )

## why the rank of columns equal to the rank of rows
A = $a_{1}b_{1}\n a_{2}$
C(A) = $(a_{1}+b_{1})x+(a_{2}+b_{2})y$
C(A^T) = $(a_{1}+a_{2})x+(b_{1}+b_{2})y$
let a2 = k1a1; b2 = k2b1, this can be proven

## how to find the null spaces

Ax=b

use the reduced echelon form

## how to find the complete solution space

A(x1+x2)=b
where  Ax1=b, Ax2=0
when r = m < n ; there are only one solution in the null subspace. There's one/ zero solution for the special solution.
when r = m > n ; there are infinite solutions
when r = m = n; there is only solution
when r < m; r < n; there are infinite/zero solutions


为了弄清楚为什么你的例子“不太对”，我们需要明确三个量的逻辑链条：**节点电势 $x$ $\to$ 电势差 $e$ $\to$ 边电流 $y$**。

在一个物理系统中，方程组的完整形式是：$A^T C A x = f$。这里 $A$ 是关联矩阵，$C$ 是电导率，$f$ 是外部注入节点的电流。

### 举例计算：3节点循环图

假设有一个三角形回路：边1（节点1$\to$2）、边2（节点2$\to$3）、边3（节点3$\to$1）。

**1. 建立关联矩阵 $A$：** $$A = \begin{bmatrix} -1 & 1 & 0 \ 0 & -1 & 1 \ 1 & 0 & -1 \end{bmatrix} \text{}$$

**2. 设定节点电势 $x$：** 假设节点电势为 $x =^T$（节点3已接地）。

**3. 计算电势差 $e = Ax$：** $$e = \begin{bmatrix} x_2 - x_1 \ x_3 - x_2 \ x_1 - x_3 \end{bmatrix} = \begin{bmatrix} 5 - 10 \ 0 - 5 \ 10 - 0 \end{bmatrix} = \begin{bmatrix} -5 \ -5 \ 10 \end{bmatrix} \text{}$$ 注意：在一个回路中，电势差之和始终为 0（$-5-5+10=0$）。

**4. 计算电流 $y = Ce$（假设 $C=1$）：** $$y = e = [-5, -5, 10]^T \text{}$$

**5. 验证 KCL 方程 $A^T y = f$：** $$A^T y = \begin{bmatrix} -1 & 0 & 1 \ 1 & -1 & 0 \ 0 & 1 & -1 \end{bmatrix} \begin{bmatrix} -5 \ -5 \ 10 \end{bmatrix} = \begin{bmatrix} 5 + 10 \ -5 + 5 \ -5 - 10 \end{bmatrix} = \begin{bmatrix} 15 \ 0 \ -15 \end{bmatrix} \text{}$$

### 为什么结果不是 0？

- **物理意义**：你得到的 $f = [15, 0, -15]^T$ 代表了**外部源**。这意味着必须从节点1注入 15A 电流，并从节点3抽走 15A，才能维持你设定的电势分布。
- **如何让 $A^T y = 0$？**：如果你要求没有外部电流注入（即满足左零空间条件），那么在该纯电阻电路中，唯一的解是 $x = [c, c, c]^T$（各点电势相等），此时 $e=0$，$y=0$。
- **例外情况**：只有当边上存在**电池**（内部电源）时，才能在没有外部节点电流的情况下产生循环电流 $y$。

**总结**：$A^T y = 0$ 描述的是电流在节点处的**平衡**。如果你随意设定 $x$ 并算出 $y$，这个 $y$ 通常需要外部电源通过节点供电才能实现。

你是否想看看加入“电池”项后，电流 $y$ 是如何在回路中独立流动的？
# The least square method
最小二乘法
先推导矩阵投影公式。
when $Ax=b$ 
with bias / have no roots so find 
$A\hat{x}=p$,where p is the closest vector to b.
$$e=b-A\hat{x}$$
$$A^T(b-A\hat{x})=0$$
$$A^Tb=A^TA\hat{x}$$
$$(A^TA)^{-1}A^Tb=\hat{x}$$
$$P=A(A^TA)^{-1}A^T$$

### Lecture 20：克拉默法则、逆矩阵与体积

这一讲展示了行列式如何将矩阵的所有信息浓缩成公式：

- **逆矩阵公式**：$A^{-1} = \frac{1}{\det A} C^T$。其中 $C$ 是代数余子式矩阵。这个公式证明了只要 $\det A \neq 0$，逆矩阵就存在。
- **克拉默法则 (Cramer's Rule)**：求解 $Ax=b$ 的分量公式为 $x_j = \frac{\det B_j}{\det A}$，其中 $B_j$ 是将 $A$ 的第 $j$ 列替换为 $b$ 后得到的矩阵。虽然它在代数推导中很美，但计算量巨大，实际计算中不如消元法。
- **行列式的几何意义**：$|\det A|$ 等于矩阵行（或列）向量围成的**平行多面体的体积**。例如，正交矩阵 $Q$ 围成的是一个旋转后的单位立方体，其体积（行列式的绝对值）始终为 1。

### Lecture 21：特征值与特征向量

这是线性代数的转折点，我们从静态的 $Ax=b$ 转向研究矩阵的内在特性：

- **核心定义**：如果矩阵 $A$ 作用在非零向量 $x$ 上，结果只是让 $x$ 伸缩了 $\lambda$ 倍，即 **$Ax = \lambda x$**，那么 $x$ 就是特征向量，$\lambda$ 是特征值。
- **如何计算**：
    1. 先求特征值：解特征方程 **$\det(A - \lambda I) = 0$**。
    2. 再求特征向量：将求得的 $\lambda$ 代回，求 $(A - \lambda I)x = 0$ 的零空间。
- **两大神律**：
    1. 特征值之和 = 矩阵的**迹**（对角线元素之和）。
    2. 特征值之积 = 矩阵的**行列式**。
- **特殊情况**：投影矩阵的特征值只能是 1 或 0；旋转矩阵可能会出现**复数**特征值；如果特征值重复，矩阵可能面临特征向量不足的“退化”情况。

这两讲的内容让你看到了行列式的威力，也开启了分析系统动态行为的大门。对于“特征值之和等于迹”这个性质，你想看个具体的例子验证一下，还是直接进入 Lecture 22 看看特征值怎么帮我们算矩阵的幂（比如斐波那契数列）？