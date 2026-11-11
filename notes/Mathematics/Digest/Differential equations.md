
## Some traits of differential equation
- Linear/non-linear
- homogeneous/non-homogeneous
## Ways to solve ordinary homogeneous linear differential equations
Consider the following equations

$$C_{1}y^{(n)}+C_{2}y^{(n-1)}+\dots+C_{n+1}y=0$$


let us assume $y=\lambda e^{\lambda}$
Then we can write the equation into:
$$C_{1}\lambda^{n}+C_{2}\lambda^{n-1}+\dots+C_{n}\lambda+C_{n+1}=0$$
The equation is solved.
The n-order equation has n answers

$$\text{ The general answer }=\sum_{1}^{n}K_{i}e^{\lambda_{i} x}$$

Note that if the $\Delta$ of the equation is less than 0, meaning that imaginary answers might take place.
assume that the equation has two imaginary answers.
Then $\lambda=a\pm bi$

$$\begin{align}
x_{1}=e^{ax}e^{bix} \\
x_{2}=e^{ax}e^{-bix}
\end{align}$$


the answer can be written as:


$$
y = K_{1}x_{1}+K_{2}x_{2}\text{ where }K_{1},K_{2}\text{ all complex}
$$
We only care about real solutions here, so $y=Conjugate(y)$
$$
y = e^{ax}(C_{1}\cos(bx)+C_{2}\sin(bx))
$$



general answer=$C_{1}e^{a}\cos(b)+C_{2}e^{a}\sin(b)$ when $\Delta<0$


## Coupled ODEs
1. stepwise function $\zeta \text{ is called the damp ratio}$

$\zeta < 1$ wiggles until comes to a full stop, underdamped
$\zeta=1$ just enough to come to a full stop, just damped
$\zeta>1$ stop before it reaches the equili equation, damped


$$\frac{d}{dt} y_{1}+k_{1}y_{1}+k_{2}y_{2}=f(t)$$
$$\frac{d}{dt} y_{2}+k_{3}y_{1}+k_{4}y_{2}=g(t)$$
can be translated into
$$\hat{y}+Ay=g$$
- can be solved by differentiate one of the ODE, and substitute it back to the second one
- can be solved by a matrix method
note that 
$A=PDP^{-1}$
$y=Pz$
$$\text{we get  }\hat{z}+Dz=P^{-1}g$$





