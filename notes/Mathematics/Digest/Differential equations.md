
## Some traits of differential equation
- Linear/non-linear
- homogeneous/non-homogeneous
## Ways to solve ordinary homogeneous linear differential equations
Consider the following equations
$$C_{1}y^{(n)}+C_{2}y^{(n-1)}+\dots+C_{n+1}y=0$$

let us assume $y=\lambda e^{\lambda}$
Then we can write the equation into:
$$
C_{1}\lambda^{n}+C_{2}\lambda^{n-1}+\dots+C_{n}\lambda+C_{n+1}=0
$$
The equation is solved.
The n-order equation has n answers
$$
\text{ The general answer }=\sum_{1}^{n}K_{i}e^{\lambda_{i} x}
$$
Note that if the $\Delta$ of the equation is less than 0, meaning that imaginary answers might take place.
assume that the equation has two imaginary answers.
Then $\lambda=a\pm bi$
$$
\begin{align}
x_{1}=e^{a}e^{bi} \\
x_{2}=e^{a}e^{-bi}
\end{align}
$$
We know that
$$
\frac{e^{bi}+e^{-bi}}{2}=\cos(b)
$$
$$
\frac{e^{bi}-e^{-bi}}{2i}=\sin(b)
$$

So the answer can be written as:
$$
\begin{align}
e^{a}\cos(b)=\frac{x_{1}+x_{2}}{2} \\
e^{a}\sin(b)=\frac{x_{1}-x_{2}}{2} \\
\end{align}
$$
general answer=$C_{1}e^{a}\cos(b)+C_{2}e^{a}\sin(b)$ when $\Delta<0$




 When $a \ne 0$, there are two solutions to $(ax^2 + bx + c = 0)$ and they are 
$$ x = {-b \pm \sqrt{b^2-4ac} \over 2a} $$

 

