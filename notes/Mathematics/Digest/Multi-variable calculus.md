# Fast Review 

This quick review checklist is designed to help you reconstruct the logic of multivariable calculus in approximately five minutes, following the progression from local approximations to global integral theorems.

### 1. The Core Tools: Linearization (1 Minute)

- **Total Differential ($dz$):** Geometrically, $dz$ represents the change in height along the **tangent plane**. The formula $dz = \frac{\partial z}{\partial x} dx + \frac{\partial z}{\partial y} dy$ expresses how independent increments $dx$ and $dy$ linearly combine to estimate the change in $z$.
- **Chain Rule:** Used when variables are interrelated (e.g., $x$ and $y$ are both functions of $t$). The total derivative $\frac{dz}{dt}$ sums the contributions of each moving part: $\frac{dz}{dt} = \frac{\partial z}{\partial x}\frac{dx}{dt} + \frac{\partial z}{\partial y}\frac{dy}{dt}$.
- **Leibniz Rule:** A method for **differentiating under the integral sign**. When limits $u(x), v(x)$ and the integrand $f(x, t)$ all depend on $x$, the result is a three-part sum: the contribution from the moving upper limit, the moving lower limit, and the changing function inside.

### 2. Coordinate Transformations: The Jacobian (1 Minute)

- **Area/Volume Elements:** In non-rectangular systems, the "grid" is distorted. For example, in polar coordinates, $dA = r  dr d\theta$ because the arc length depends on the radius ($r d\theta$).
- **The Jacobian ($J$):** The algebraic tool used to find these elements without geometry. It is the **determinant of the partial derivative matrix**, representing the local scaling factor of space during a transformation: $dA = |J| du dv$.

### 3. Vector Operators: Field Calculus (1 Minute)

- **Gradient ($\nabla \phi$):** A vector pointing in the direction of the maximum rate of increase. Crucially, it is always **perpendicular (normal) to the level surface** $\phi = \text{const}$.
- **Divergence ($\nabla \cdot \mathbf{V}$):** A scalar measuring the net rate of **outflow per unit volume** at a point. Positive divergence indicates a "source"; negative indicates a "sink."
- **Curl ($\nabla \times \mathbf{V}$):** A vector whose magnitude measures the **rotation or circulation** of a field. If $\nabla \times \mathbf{V} = 0$, the field is **irrotational (conservative)**, meaning the line integral is path-independent.

### 4. Integration Techniques (1 Minute)

- **Iterated Integrals:** Multivariable integrals are evaluated step-by-step as single-variable integrals. You can **change the order of integration** (e.g., $dx dy$ to $dy dx$) to simplify calculations when one order is mathematically impossible to solve with elementary functions.
- **Surface Integrals:** To integrate over a curved surface, project it onto a flat plane (usually $xy$). The area element becomes $dA = \sec \gamma  dx dy$, where $\gamma$ is the angle between the surface normal and the $z$-axis.

### 5. The "Big Three" Theorems: Bridging Dimensions (1 Minute)

- **Green's Theorem:** Connects a double integral over a plane area to a line integral around its boundary.
- **Divergence Theorem (Gauss's):** Relates a **volume integral** of divergence to a **flux integral** over the closed surface surrounding that volume (Total sources = Net outflow).
- **Stokes' Theorem:** Relates a **surface integral** of the curl to a **line integral** around the edge of that surface. Remember the "Butterfly Net" analogy: the integral depends only on the rim, not the shape of the net.

# The Maclaurin Series

$$f(x,y)=\sum_{n=0}^{\infty}\frac{\left( x\frac{ \partial z }{ \partial x } + y\frac{ \partial z }{ \partial y }  \right)^{n}}{n!}f(a,b)$$



# How to derive the multi-variable calculus from first principle？

Consider the tangent plane of a 3D-surface
the value of dz can be
$$dz = \frac{ \partial z }{ \partial x }dx+\frac{ \partial z }{ \partial y }dy  $$
where
$z = f(x,y)$
This can be proven by drawing a diagram and summing the values of increments due to dx and dy.
OR
$$dz=f(x+\delta x,y+\delta y)-f(x,y)$$
$dz = f(x+\delta x,y+\delta y)-f(x+\delta x,y)+f(x+\delta x,y)-f(x,y)$
$dz = dy\frac{ \partial f }{ \partial y }+dx\frac{ \partial y }{ \partial x }$

In this way
$\frac{dz}{dx}=\frac{dy}{dx}\frac{ \partial z }{ \partial x }+\frac{ \partial z }{ \partial x }$
$\frac{df_{3-variable}}{dx}=\frac{ \partial f }{ \partial x }+\frac{dy}{dx}\frac{ \partial f }{ \partial y }+\frac{dz}{dx}\frac{ \partial f }{ \partial z }$

# Solve a volume integral
- Cartesian Coordinate system

$$V=\int \int z dxdy$$
choose the upper/lower bound carefully

- Polar Coordinate system
$$dV= rd\theta dz dr$$
$$dV=r^2\sin\theta d\theta dr d\phi$$

# Solve a surface integral

Projection
对于一般的曲面（不限于旋转体），Boas 介绍了一种通用的计算技巧——**投影法**。

- **核心逻辑**：将曲面上的微小面积元素 $dA$ 投影到某个坐标平面（如 $xy$ 平面）上的 $dx,dy$。
- **计算公式**： $$dA = \sec \gamma , dx , dy$$ 其中 $\gamma$ 是曲面的法向量 $\mathbf{n}$ 与 $z$ 轴（即投影平面的法线）之间的夹角。
- **如何求 $\sec \gamma$**：
    - 如果曲面方程为 $\phi(x, y, z) = \text{const}$，则利用梯度 $\nabla \phi$ 是法向的方向，得： $$\sec \gamma = \frac{|\nabla \phi|}{|\partial \phi / \partial z|} = \frac{\sqrt{(\phi_x)^2 + (\phi_y)^2 + (\phi_z)^2}}{|\phi_z|}$$
    - 如果曲面显式给出为 $z = f(x, y)$，则简化为： $$\sec \gamma = \sqrt{(\partial f / \partial x)^2 + (\partial f / \partial y)^2 + 1}$$
