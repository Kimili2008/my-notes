## Intro
We all understand KCL, KVL, Theven2in, V=RI
but few of us really understand WHAT ARE REALLY THESE THINGS AND WHAT ARE THE CONSTRAINTS.
In this passage, I will introduce, step by step, the theory fundamentals concerning these theorems.
## Principles
1. In all situations, 
$$\frac{ \partial \phi_{B} }{ \partial t }=0$$

 This guarantees the energy conseration law in circuitry.
Next, there are two types of circuitry, *Linear and Non-linear*.

Now, let's start with a few basic questions:
1. How to prove the superposition rule?
2. How to derive Thevenin from superposition rules?
3. What is a current source and a voltage source?
### Answer to Q1
The superposition rule stands for:
*In linear circuitry(where V=IR holds), the total responses of inputs is equal to the sum of each response.*
I browsed the stack exchange and saw the proof to this problem.
"
This will naturally result in a linear system between your sources and your output. This linear system has the mathematical property that the final solution is the sum of what you'd get if each of the sources were turned on by itself in turn, which is what the superposition theorem, [as stated in Wikipedia](http://en.wikipedia.org/wiki/Superposition_theorem), states. If your system has the physical property corresponding to the mathematical linearity assumption, it will also have the physical property that corresponds to the mathematical result.
"
Deep insight, here's the mathematical proof.
Outputs denote as $O_{1},O_{2},O_{3}\dots$ ;Unknowns denote as $N_{1},N_{2},N_{3}\dots$
$$O_{1}+R_{1}N_{1}+R_{2}N_{2}+R_{3}N_{3}=0$$
$$O_{2}+R_{2}N_{1}+R_{3}N_{2}+R_{1}N_{3}=0$$
$$O_{3}+R_{3}N_{1}+R_{1}N_{2}+R_{2}N_{3}=0$$
resulting in 
$N_{1}=K_{1}O_{1}+K_{2}O_{2}+K_{3}O_{3}$, which is linear
Q.E.D.

### Answer to Q2
From the superposition:
$$N= \sum_{m} a_{m}I_{m}+\sum_{n} b_{n}V_{n}+iR$$
We can see that $R$ is calculated from the rest of the circuitry.
We can see that V can be calculated using superpositions.

### Answer to Q3
The current source: produces a constant current
voltage is applied to both sides, internal resistance = $\infty$
(That's why current sources are opened.)
The voltage source: produces a constant voltage drop
Voltage is applied to both sides, internal resistance = 0
(That's why voltage sources are shorted.)
But how to produce a constant current? 




# Alternating current

$$I_{effective}=\frac{I_{max}}{\sqrt{2}}$$
note that the voltage value is also the effective value.
In China, the household appliances use 220V, which is the effective value.
$$\int U_{eff}I_{eff}dt=\int RI_{real}^2$$
# The use of the capacitor and the inductor in circuitry

We have
$$\epsilon_{emf}=-\frac{d}{dt}\Phi_{B}=L\frac{d}{dt} I$$
as follows
since we know that $V_{0}$ and $I_{0}$ are cosine and sin waves, by subsitution:
$$V_{0}=\omega LI_{0}$$
Then we define $X_{L}=\frac{V_{0}}{I_{0}}=2\pi fL$

similarly, $X_{I}=\frac{1}{2\pi fC}$
