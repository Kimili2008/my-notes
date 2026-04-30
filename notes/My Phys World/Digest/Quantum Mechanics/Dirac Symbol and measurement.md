- $\ket{a}$is a vector in helbert space, which represents a state(like momentum, energy)
- $\bra{a}$ is a dual vector of $\ket{a}$
- all $\ket{a}$ forms a state space(sometimes called ket space)
- the $\bra{a}$ represents a linear mapping from the state space to the complex number set, which can be seen as a functional
- operator: an operation acts on state vector

![[Pasted image 20260429211817.png]]


---

### 📖 Ket Space: The “Arena” of Quantum Mechanics

In Sakurai’s *Modern Quantum Mechanics*, ket space is the abstract mathematical space where quantum states live.

- **Ket**: A physical state is represented by a vector in a complex Hilbert space, written as $|\alpha\rangle$ — Dirac’s “ket”.  
- **Bra and inner product**: The dual vector is the “bra” $\langle\beta|$. Their inner product $\langle\beta|\alpha\rangle$ is a complex number — a probability amplitude — whose squared magnitude $|\langle\beta|\alpha\rangle|^2$ gives the probability of finding the system in $|\beta\rangle$ when it was originally in $|\alpha\rangle$.  
- **Operator**: Objects that act on kets; they represent observables (like momentum, energy) or transformations (time evolution, translations).  
- **Eigenkets and eigenvalues**: For an observable $A$, we have the eigenvalue equation  
  $$A|a'\rangle = a'|a'\rangle$$  
  The number $a'$ is a possible outcome of measuring $A$. Any state $|\alpha\rangle$ can be expanded in this complete set:  
  $$|\alpha\rangle = \sum_{a'} c_{a'} |a'\rangle$$

---

### ⚛️ Measurement: From Superposition to “Reality”

Sakurai presents measurement as a fundamental postulate, not a derived result. Here we focus on projective (strong) measurements.

1. **Outcomes are eigenvalues**: Measuring an observable $A$ on a system in state $|\alpha\rangle$ always yields one of the eigenvalues $a'$ of $A$.  
2. **Probability**: The probability of obtaining $a'$ is  
   $$P(a') = |\langle a'|\alpha\rangle|^2$$  
   where $|a'\rangle$ is the corresponding eigenket.  
3. **State collapse**: Immediately after the measurement yields $a'$, the state discontinuously jumps (“collapses”) into the corresponding eigenket:  
   $$|\alpha\rangle \xrightarrow{\text{result } a'} |a'\rangle$$  
   A second measurement of the same observable right away will deterministically give $a'$ again.  
4. **Expectation value**: The statistical average over many identical measurements is  
   $$\langle A \rangle = \langle \alpha|A|\alpha\rangle = \sum_{a'} a' \, P(a')$$  
5. **Compatible vs. incompatible observables**:  
   - If $[A,B]=0$, $A$ and $B$ are compatible; they share a common set of eigenkets and can be measured simultaneously with arbitrary precision.  
   - If $[A,B]\neq 0$, they are incompatible. No complete set of simultaneous eigenkets exists, which leads to the Heisenberg uncertainty principle:  
     $$\Delta A \, \Delta B \ge \frac{1}{2}|\langle[A,B]\rangle|$$
single-slit experiment is a perfect example for the uncertainty principle: the uncertainty in the momentum of the photon and the uncertainty in the position of the photon.
---

### 💡 Example: The Stern–Gerlach Experiment

This is the first important example in Sakurai’s book, measuring electron spin.

- **Phenomenon**: A beam of silver atoms splits into two distinct spots in an inhomogeneous magnetic field. The spin component $S_z$ only takes two discrete values: “up” ($|S_z;+\rangle$) or “down” ($|S_z;-\rangle$), with eigenvalues $+\hbar/2$, $-\hbar/2$.  
- **Superposition**: A general spin state is $|\alpha\rangle = c_+|S_z;+\rangle + c_-|S_z;-\rangle$.  
- **Measurement process**:  
  - Before measurement, the state is a superposition.  
  - The probability of getting $+\hbar/2$ is $|c_+|^2$; for $-\hbar/2$ it's $|c_-|^2$.  
  - After obtaining, say, $+\hbar/2$, the state collapses into $|S_z;+\rangle$, and a subsequent $S_z$ measurement will give $+\hbar/2$ with certainty.

---

### 💎 Summary

- **Ket space** gives us the formal language of state vectors and superposition.  
- **The measurement postulate** translates that abstract structure into observable outcomes, introducing probability and the dramatic collapse of the state.
