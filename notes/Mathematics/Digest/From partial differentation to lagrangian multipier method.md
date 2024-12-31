---
Date: 2024-12-30T23:38:00
---
## Things about the partial differentation
In the single variable calculus, we already have learnt that the derivative of a function is the measurement of the increasing trend of a variable.
Likewise, for functions with two or even more number of variables, there should also be a measurement of the contribution of one variable to the whole function.
The function with $\text{ n variables}$ can be drawn with a graph with $\text{ n+1 variables}$.
$\text{ let }f(x,y)=xy+2x+2x^{2}$ 
Then we see $x,y$ as constants respectively, and write each derivative down
$\frac{ \partial f }{ \partial x }=y+2+4x$
$\frac{ \partial f }{ \partial y }=x$
Then, we define $\nabla\text{ nabla in pronunciation }$ as the gradient as the whole function
$\nabla=\frac{d}{dr}\text{ r is a vector with specific dimensions }$
Here,
$\nabla=\frac{ \partial f }{ \partial x }i+\frac{ \partial f }{ \partial y }j$
$\nabla f(x,y)\text{ is the overall gradient of separate variables,which gives the fastest route for a function to increase. }$
## The lagrangian multipier method
For a given function $f(x,y,z\dots)$ and the restaining requirements $g(x,y,z \dots)=0,h(x,y,z \dots)=0$
The maximum or minimum of $f$ can be found by
let $L(x,y,z \dots,\lambda_{a},\lambda_{b}, \dots)=f+\lambda_{a} g+\lambda_{b} h+ \dots$
and the extremes of $f$ under the restraining conditions are the extremes of $L$ under all circumstances.

### Proof
When the $f$ under restrain is at extremes, the gradient of $f$ is parallel to the gradient of $g$ and the gradient of $h$.
So it can be written down as
$\frac{ \partial f }{ \partial x }=-\lambda_{a}\frac{ \partial g }{ \partial x }= \dots$
$\frac{ \partial f }{ \partial y }=-\lambda_{a}\frac{ \partial g }{ \partial y }= \dots$
$\dots$
which can be shown when $L$ 's partial of x, y, z... equals to 0
Also, the function is satifys the restaining conditions.
Hence, $g=0$,which gives $\frac{ \partial L }{ \partial \lambda_{a} }=0$ and likewise for other variables.




