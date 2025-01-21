## Introduction
We already have learnt that
$$
\begin{equation}
F=-kx
\end{equation}
$$


$$
x=A\sin (wt+\phi)
$$
But why does this happen? Why the proportionality between force and displacement can bring sin and cos?
$$
\begin{align}\\
 Assumptions\\
 & \text{1 the spring vibrates without energy loss } \\
 & \text{2 the spring is attached to a body of mass M } \\
 & \text{3 the spring has a stiffness of k } \\
\end{align}
$$
$$
\begin{align}
 ma & =-kx \\
 -\frac{k}{m} & =\frac{d\frac{x}{dt} }{dt} \\
 -\frac{k}{m} & =m\frac{dv}{dx}\frac{dx}{dt} \\
 -\frac{k}{m}x & =m\frac{dv}{dx}v \\
\end{align}
$$

$\text{Hence,we get}$

$$
\int_{0}^{x_{1}} -\frac{k}{m}x \, dx=\int_{0}^{v_{1}} v \, dv
$$
$$
x^{2}=-\frac{m}{k}v^{2}+c
$$
$\text{That's also the formula of energy conservation btw}$
$$
\begin{gather}\\
v=\sqrt{c-\frac{k}{m}x^{2}} \\
\end{gather}
$$
$\text{ By solving this differential equation, we get }$
$$
\begin{gather}\\
 c_{1}\sqrt{ \frac{m}{k} }\arccos\left( \sqrt{ \frac{k}{m} }c_{1}x \right)+c_{2} =t \\
 x=c_{1}\sqrt{ \frac{m}{k} }\cos\left( \sqrt{ \frac{k}{m} }t+c_{2} \right) \\
 A=\sqrt{ \frac{m}{k} }c_{1} \\
 w=\sqrt{ \frac{k}{m} }\left( w^{2}=\frac{k}{m} \right) \\ \\
 \phi=c_{2}
 \end{gather}
$$
Finally, we get 
$$
x=A\cos(wx+\phi)
$$




Another similiar but harder problem:

## Forced oscillations
same conditions, but this time the ball moves with friction acting on it. To stop losing too much energy, a periodic force acts on it.

$$ma = -kx-bv+F_{0}\cos(wt)$$

it can be written as:

$$mx^{''}+bx^{'}+kx=F_{0}\cos(wt)\text{ let  } b/2m=\beta\text{ let } \frac{F_{0}}{m}=a_{0}$$



$$x_{1}=A_{1}e^{-\beta t}\cos(\sqrt{ w_{0}^{2}-\beta^{2} }t+\theta_{1}$$

 
$$x_{2}=C_{1}\cos(wt)+C_{2}\sin(wt)=A_{2}\cos(wt+\theta)$$
$$x(t)=A_{1}e^{-\beta t}\cos(\sqrt{ w_{0}^{2}-\beta^{2} }t)+A_{2}\cos(wt+\theta)$$
We can notice that when the period of forced oscillation equals to the natural frequency, the object oscillates at maximum
