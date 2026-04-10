
# Multilayer Perceptron
多层感知机
X -> $W^{[i]}X$+b -> $Z^{[i]}$ -> $\sigma(Z)$ ->$A^{[i]}$ -> L(A)
i表示在第几层，分为hidden layer，input layer，output layer，hidden layer的具体技术细节不可见
# ForwardPropagation

activation function$a(z)$: sigmoid; tanh; ReLu(namely $max(0,x)$)
Loss function $L(A)$
Weight $W$
input $X$
使用了多层感知机，用于计算预测结果


# BackPropagation

将$y_{predict}$进行gradient descent, 找到loss function的最小值

在有很多层的情况下，每一层的W都必须被调整，因此我们要同时调整所有参数，从最后一层开始。因此我们也要计算每一层的$\frac{ \partial L }{ \partial W^{i} }$

assume $\frac{ \partial L }{ \partial A^{[i+1]} }$ is known, find partial L/W; partial L/$A^{[i]}$
$\frac{ \partial L }{ \partial W^{i} }=$ partial L/A[i+1] partial A[i+1]/Z[i] (partial Z[i]/partial W[i] =X[i])

$\frac{ \partial L }{ \partial B^{i} }=$ partial L/partial Z = partial L/A[i+1] partial A[i]/Z[i] 

$\frac{ \partial L }{ \partial A^{[i]} }=$ partial L/A[i+1] partial A[i]/Z[i] (partial Z[i] / partial A[i] = W[i])

然后再将上面的答案传给下一层


# Gradient Explosion/ elimination
层数太多的时候，会梯度爆炸/梯度消失。（每层链式法则都乘了一个较大或较小的数）
To prevent this situation,
- gradient check
- Xaiver Initialization


# Xaiver Initialization
Xaiver 初始化，核心目标是让数据在前向，后向传播时，方差能够保持稳定。
在初始化的时候，会把数据缩放到一个范围内。
这样能够防止梯度爆炸

$$W\text{ - } U[ -\frac{\sqrt{ 6 }}{\sqrt{ x_{in}+x_{out} }} ,\frac{\sqrt{ 6 }}{\sqrt{ x_{in}+x_{out} }}]$$
或者，
$$W\text{ - }N(0,\frac{2}{n_{in}+n_{out}})$$

$$W\text{ - } U[ -\frac{\sqrt{ 6 }}{\sqrt{ x_{in}+x_{out} }} ,\frac{\sqrt{ 6 }}{\sqrt{ x_{in}+x_{out} }}]$$
或者，
$$W\text{ - }N(0,\frac{2}{n_{in}+n_{out}})$$

# Normalization
为何要normalization？
假设一个数据有特征一，特征二，特征一相对于特征二其数值大得多。
那我们看对于特征一的权重：由于特征一数值大，其在回归时weight的步数也就更大；
我们再看对于特征二的权重：由于特征二数值小，其在回归时weight的步数也就相对小。
我们知道只有一个学习率$\alpha$, 这一个数值很难同时使得两个不同scale上的特征都收敛，最常见的情况是一个在震荡，一个收敛了。
为了使得loss function收敛的更快，有必要将两种特征都进行normalization的处理。

batch normalization，算出数据的正态分布和平均数，然后再归一化
# Methods to reduce the variance and bias
### Regularization
- 正则化
1. 加入decay项，使得theta下降更快，权重越来越小（直至消失），这种under-fitting的方式对于overfitting很有效。

$$\theta_{j}:=\theta_{j}\left( 1-\frac{\lambda}{m} \right)-a\sum_{i}^n(h_{\theta}(x^i)-y^i)x^i$$
2. drop out 在每一层随机eliminate神经元，减少过拟合，每一层拥有留存率k。

3. Data Augmentation: fliping/rotating the image: less quality, less expensive

4. early stopping: stop timely, prevent over-fitting

5. vanishing/ exploding gradients
测试集在test set和validation set上的正确率差很多：over-fitting，可以用regularization，并多加数据
测试集在test set和validation set上的正确率都低：bias，可以多加数据，增加hyperparameter
# Mini-batch gradient descent
mini-batches 微小训练集
将一个大的训练集变成多个小的训练集多次下降。优点：迭代次数更多，进展更快，且总计算量没有大的差别。

# Exponentially weighted average (fix bias)\momentum

$V_{t}=(1-\beta)\theta_{t}+\beta V_{t-1}$
the total weight of each parameter theta is 
$W_{t}=(1-\beta)(1+\beta+\beta^2+\dots)=1-\beta^t$
so it gives us a biased value.
To fix the bias
$V_{t}= \frac{(1-\beta)\theta_{t}+\beta V_{t-1}}{1-\beta^t}$
把这个方法用在mini-batch gradient descent上：
$V_{t}=(1-\beta)\frac{ \partial J }{ \partial W }+\beta V_{t-1}$
$W := W-\alpha V_{t}$
b is also the same
修正项可以不写，因为误差通常很小，iterations的次数很多，修正项会很快地趋近于1，现实中几乎没有人加修正项（节省计算资源）
通常$\beta=0.9$

- RMS prop

$V_{1}=g_{1}^2$(g is for gradient)
$V_{t}=\beta V_{t-1}+(1-\beta)g_{t}^2$
$W := W-\frac{\alpha g_{t}}{\sqrt{ V_{t}}}$

# Adam Optimizer(important algorithm for prop)

为RMS-prop和momentum方法的结合：
$V_{1}=g_{1}$
$S_{1}=g_{1}^2$

$V_{t}=\beta V_{t-1}+(1-\beta)g_{t}$
$S_{t}=\beta V_{t-1}+(1-\beta)g_{t}^2$
$W_{t} := W_{t-1}-\frac{\alpha V_{t}}{\sqrt{ S_{t}}+\epsilon}$
be biasing:
$\hat{V_{t}}=\frac{V_{t}}{1-B_{1}^t}$
$\hat{S_{t}}=\frac{S_{t}}{1-B_{2}^t}$
Beta1 is set to 0.9
Beta2 is set to 0.999
$\epsilon=10^{-8}$

adam优化器优化了传统gradient descent算法，集成了
- 自适应学习率（rms-prop）（快速通过平坦区域，在斜率变化大的时候减小步数）
- 更新时的惯性（momentum）（每次迭代都依据之前的值加权，平滑处理，减小震荡）
![[Pasted image 20260327134720.png]]

# hyperparameters
$\alpha$ learning rate
$\beta_{1}, \beta_{2}, \epsilon$ adam term
\#layers
\#hidden units
\# mini-batch size
\# learning rate decay
Hyperparameters do get stable over time and platforms!

Babysitting one model (record its past states and recover when there's fault)
Training many models in parallel
# Softmax Regression

softmax normalization 归一化
归一化用的是$k = \frac{e^{z^{[i]}}}{\sum e^{z[i]}}$


