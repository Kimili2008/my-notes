---
Date: 2025-03-04T11:00:00
---

$$\text{ The question    }$$

$$\int \frac{1}{x^{n}+1}=?$$
### introduction
There are many methods to solve this integal, on of which is Euler's theorem, introducing complex number to the problem

From previous study, we know that

$$\int \frac{1}{ax^{2}+bx+c}=\frac{A_{1}}{x-x_{root_{1}}}+\frac{A_{2}}{x-x_{root_{2}}}$$
So this problem can also be solved, if we try to extend the integal to the complex domain.

According to Euler's law:

$$e^{ai}=\cos(a)+\sin(a)i$$
Then, we can know that 

$$\text{ for }x^{n}=-1$$

$$x=e^{(2k-1)\pi i /n} 1\leq\text{k}\leq n$$

The integal can be written as

$$\int \frac{1}{x^{n}+1}=\int \sum ^{n}_{k=1} \frac{A_{k}}{x-e^{(2k-1)\pi i /n}} dx$$


$$1=\lim_{ n \to x_{root} } \sum ^{n}_{k=1}\frac{(x^{n}+1)A_{k}}{x-e^{(2k-1)\pi i /n}}=^{I'H}=\sum ^{n}_{k=1}\left( \frac{nx^{n-1}A_{k}}{1} \right)$$


$$-\frac{nA_{k}}{e^{i(2k-1)\pi/n}}=1$$
$$Ln(ae^{iarg(z)})=Ln(z)+iarg(z);(z=ae^{iarg(z)})$$
This is the general representation of complex numbers.

$$\int \frac{1}{x^{n}+1}dx=\frac{ e^{(2k-1)\pi i /n}}{n}\sum ^{n}_{k=1} ln(x-e^{(2k-1)\pi i /n}) dx\text{ we substitude Ak }$$



$$e^{i\pi}=-1$$












$$$$







