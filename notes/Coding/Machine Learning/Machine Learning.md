Linear Regression
e.g. to estimate the price of the house
$H_{x}=\theta_{0}+\theta_{1}x_{1}+\theta_{2}x_{2}$
$H(x)=\sum _i^n\theta_{i} x_{i}$
# terminalogy
thetas are called weight (parameters)
n: training examples
x: emerge
y: the output
(x,y): training examples

# Linear Regression

判断linear regression的方法：最小二乘法

$J(\theta)=\frac{1}{2}\sum_{i}^n(h_{\theta}(x^i)-y^i)^2$
这也被称为cost function，损失函数。
判断最小二乘的和最小的方法：最小化损失函数

- to minimize the loss function

$$\frac{ \partial J }{ \partial \theta_{j} } = \sum_{i}^n(h_{\theta}(x^i)-y^i)x^i$$

$$\theta_{j}:=\theta_{j}-a\sum_{i}^n(h_{\theta}(x^i)-y^i)x^i$$

a:study pace 人为设定的步长

# Matrix Caculus
- Jacob matrix 雅各比矩阵

若输入是1* m的matrix，输出是1 * n 的matrix，这个函数的导数是m* n 的matrix ，类比一下就是每个f对每个x_i 求导，有n* m种。

- norm 向量长度运算
- kernel matrix 核矩阵：计算两个元素之间的相似度

linear kernel matrix： $k(x_{i},x_{j})=x_{i}^Tx_{j}$
gaussian kernel matrix: $k(x_{i},x_{j})=e^{\frac{\lvert x_{i}-x_{j} \rvert}{2\sigma^2}}$
