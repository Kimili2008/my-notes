## The Basic principles

$$\oint \vec{E}\cdot d\vec{A}=\frac{Q_{total}}{\epsilon_{0}K} \text{ K is the dielectric constant }$$
Gauss's law. This indicates that the electric flux within a closed surface can be used to estimate the total charge within the curve.
Some applications : Calculate the electric field between two infinite big oppositely charged plates.

$$\oint \vec{B}\cdot d\vec{A}=0$$
This indicates that the total magnetic flux of a closed surface always equals to zero.
The formula can be seen as a variation of the Gauss' law, expect that the total charge is always zero.
Hence, we can see from this rule that magnetic monopoles don't exist.

$$\oint \vec{E}\cdot d \vec{l}=-\frac{d\Phi_{B}}{dt} $$
Faraday's law (Magnetic field converts into electricity)
This shows that the change in magnetic flux can induce net E.M.F. in a closed wire.
Note that all conservative field satisfies

$$\oint \vec{F}\cdot d\vec{l}=0$$
Hence, we can conclude that the electical field isn't a conservative field when there's a changing magnetic flux.

$$\oint \vec{B}\cdot d \vec{l}=K_{m}\mu_{0}\left( I+K\epsilon_{0}\frac{d\Phi_{E}}{dt}  \right)$$
The Ampere-Maxwell's law
At first, this equation was discovered by Ampere, but then Maxwell noticed that a changing electric flux can also add up to the magnetic field. Hence an appendix value is added.
Applications:
This can be used to prove the magnitude of magnetic field in a solenoid
## The derivation of the Maxwell's equations
First, it's important to know some rules in Mathematics.
1. Divergence Theorem

$$\oint \vec{v}\cdot d\vec{A}=\int_{V}(\nabla \cdot \vec{v})dV$$
This can be understood with two simple analogies.
The first is the Gauss rule. 
The second is the current analogy.
We can pick a random closed surface in space and measure the velocity of water coming out per second. Then we can know the total flow of water in there.

1. Curl Theorem

$$\oint \vec{v} \cdot d\vec{l}=\int_{S} (\nabla \times \vec{v}) \cdot d \vec{A} $$
Likewise, this can be understood with two analogies.
The first is the ampere's law. 
The second is a very long rod.
We can measure the rotating inertia and the angular acceleration of this rod, which is the left side of the equation.
Then, we can know the Total moment acted on this rod without knowing how much force or positions is acted against it.

The final form of the Maxwell equations can be easily proven from those formulae.


## Final form


$$\nabla \cdot \vec{E}= \frac{\rho}{\epsilon_{0}} \text{ Gauss's law }$$

$$\nabla \cdot \vec{B}=0\text{ no magnetic monopoles }$$

$$\nabla \times \vec{E} + \frac{ \partial \vec{B} }{ \partial t } =0 \text{ Faraday's law }$$

$$\nabla \times \vec{B} - \mu_{0}\epsilon_{0}\frac{ \partial \vec{E} }{ \partial t }=\mu_{0}j \text{ Ampere-Maxwell's law }$$
Note that this form only adapts to the vacuum space. If you are dealing with dielectric space, diamagnetism, paramagnetism, or ferromagnetism, the dielectric constant and magnetic permeability should be added.








