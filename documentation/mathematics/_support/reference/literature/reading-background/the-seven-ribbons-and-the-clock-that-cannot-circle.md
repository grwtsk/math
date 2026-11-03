# Seven ribbons, a wound spring, and a clock that cannot circle

*A literary mathematical reading of the Gödel–Fourier–sofic spinning top*

**Local mathematical attribution:** grwtsk contributors  
**Research and exposition:** 2026-10-31  
**Form:** mathematical physics, finite harmonic analysis, symbolic dynamics, computation, and a child's way of noticing things.

> A child does not first see a differential equation. The child sees a toy at rest, the red winding handle, seven ribbons, and a question: *If I give it one small push, where does that push go?*

That question is already three fields of inquiry. The physicist asks where the work enters and what it can dissipate. The mathematician asks which equality keeps every signed term. The computer scientist asks whether the array being drawn is the array whose behavior has been proved. The child is not a decorative narrator between these questions. The child is their shared demand that every symbol refer to something that can be pointed at.

This reading accompanies the source-bound finite simulation archived as [`sphere_torus_godel_observer-2026-10-31.html`](../../../simulations/sphere_torus_godel_observer-2026-10-31.html). The archived implementation is not itself a proof. Its bytes and SHA-256 are recorded in the technical disposition alongside the corresponding Lean source candidates. The executable can be viewed in a browser; the proof terms require separate Lean verification.

## I. A still object, and the first arrow

At first the toy does not move. This is not the assertion that the universe has stopped. It is simply a software state, `playing = false`, with the crank and rotor rates initially zero. The child touches the wind control; the program switches to an active update. A hand has entered the mathematical diagram.

Choose two inertias \(I_c,I_r>0\), a spring constant \(k\ge0\), an inverse gear ratio \(g^{-1}\), crank/rotor angles \(\theta_c,\theta_r\), and angular rates \(\omega_c,\omega_r\). The twist is

\[
  d=\theta_c-g^{-1}\theta_r,
  \qquad
  E_{\mathrm{mech}}=
  \tfrac12 I_c\omega_c^2+
  \tfrac12 I_r\omega_r^2+
  \tfrac12 k d^2.
\]

To wind is not to declare an angle. It is to perform work. In the program's free two-inertia branch, backward Euler solves the two coupled momentum equations implicitly. At a nonnegative time step \(h\), applied hand torque \(\tau\), and nonnegative damping coefficients \(c_c,c_r\), the defining balance is

\[
 E_{n+1}-E_n+D_{\mathrm{numerical},n}
   +h(c_c\omega_{c,n+1}^2+c_r\omega_{r,n+1}^2)
 =h\tau_n\omega_{c,n+1}.
\]

The damping terms and numerical dissipation are nonnegative in the stated domain. The work term is **signed**. It may increase or decrease the mechanical energy; no sign is discarded to make the display look safe. On release, \(\tau=0\), so the ideal exact-real implicit free-step energy cannot increase.

The child also drags the red handle directly or flicks the rim. These input branches override a coordinate and therefore perform external work by a different event model. The Lean `Step` relation is *not* automatically their proof. A future refinement must record the imposed constraint forces, impulse work and variable real-time sampling. The browser additionally caps rates and resets nonfinite values. Those protections are explicit numerical interventions, not solutions of the unconstrained equations.

The source names are `CorkscrewSpringEnergy.Step`, `step_energy_balance`, `driven_trace_energy_le`, and the new `DrivenMechanicalTrace.energy_le_signed_work`. The new extension matters: a browser's frame may be divided into different substeps \(h_n\); its abstract signed ledger must retain each \(h_n\tau_n\omega_{c,n+1}\), not quietly replace them with one fixed time unit.

## II. The sound of a spin, written as complex numbers

The child sees a spinning top; the computer sees rotor-speed samples. There are 64 places in the history ring. Their ordered samples are \(v_0,\ldots,v_{63}\). From these *discrete values*, the program calculates

\[
 \widehat v_k=\frac1{64}\sum_{j=0}^{63}
 v_j\exp(-2\pi i k j/64),\qquad 0\le k\le32.
\]

This is a **finite discrete Fourier transform**, exactly so regardless of how the samples were obtained. The numerical implementation updates the ring after simulation substeps and recalculates the Fourier coefficients on every fourth such event. An older comment calls the window a `120 Hz` history, but the JavaScript does not enforce uniform 120 Hz acquisition. Consequently, interpreting \(k\) as a calibrated temporal frequency in physical seconds still requires an explicit resampler or a nonuniform-sampling theorem. The honest typed object is first an ordered vector in \(\mathbb C^{64}\), not an assumed measurement of a continuum Fourier spectrum.

The mathematician notices an important loss prevention: the coefficients are complex and retain phase. Replacing their sums by separate magnitudes would change the instrument. Frequencies \(1\) through \(31\) represent conjugate pairs for a real history, so the separate discarded-energy calculation counts each of these twice, while the DC and Nyquist bins are counted once.

## III. Why the ribbons are seven colors

The seven colored ribbons are the image of an arithmetic index map, not seven proven constituents of every physical field. For the simulation let

\[
 \rho(k)=k\bmod 7,\qquad
 b_r=\sum_{\substack{0\le k\le K\\\rho(k)=r}}\widehat v_k,
 \quad r\in\mathbb Z/7\mathbb Z.
\]

The child sees red, orange, yellow, teal, blue, violet, and rose. The mathematician sees the exact identity

\[
 \sum_{r=0}^{6}b_r=\sum_{k=0}^{K}\widehat v_k.
\]

It holds because each retained index has exactly one residue. It does *not* mean that the seven individual energies sum to the original frequency energy: complex cross terms remain inside \(|b_r|^2\). Neither a phase average nor a color key cancels them automatically.

The broader physics research program, represented separately in `ResidueGradedConvolution`, grades spatial Fourier wavevectors by a homomorphism \(\rho:\mathbb Z^d\to G\) into a finite abelian group. Quadratic convolution respects \(\rho(p+q)=\rho(p)+\rho(q)\). That fact is exact, but this toy's 64-sample temporal DFT is not already that spatial Navier–Stokes convolution. Joining the two requires the actual operator and its signed, unfiltered residual. Otherwise a pretty striped cloth would be mistaken for a fluid theorem.

## IV. The quiet work of the banded solver

The ribbons influence another mathematical object, a seven-component complex harmonic state \(z=(z_r)\). At a chosen bandwidth \(b\) the browser forms a seven-by-seven matrix with positive diagonal and negative neighbor couplings. Its underlying positive quadratic form is

\[
 \begin{aligned}
 Q_b(z)={}&\sum_r|z_r|^2
 +h\sum_r\left(\frac3{25}+\nu\Bigl(1+\frac{(r+1)^2}{16}\Bigr)\right)|z_r|^2\\
 &+\frac{h\kappa}{2}\sum_{r,s:\,0<d_7(r,s)\le b}|z_r-z_s|^2,
 \end{aligned}
\]

where \(d_7\) is distance around the cycle of seven. When \(h,\nu,\kappa\ge0\), every additional term is nonnegative, so

\[
  Q_b(z)\ge\sum_r|z_r|^2.
\]

This is the exact-real coercivity behind the proposed symmetric positive definite solve. A complex vector has not been turned into seven independent nonnegative amplitudes: its real and imaginary components are both present. The browser uses Cholesky separately on those components, with a numerical diagonal floor and a finite energy-budget projection afterward. Showing that floating-point Cholesky returns the exact linear solution—or a certified close approximation—is a further proof obligation, not a consequence of algebraic coercivity alone.

A child can ask whether a wider sieve lets the ribbons talk to more neighbors. It does: bandwidth \(b=0,1,2\) selects progressively more edges. But no one gets to erase the off-band interactions of the **physical** field merely by changing this slider. The full residual remains its own account.

## V. A sentence is also a route

Next the child types `1001`. Four small marks become an admissibility problem. The graph has 14 states: an even/odd parity flag and one of seven residues. Reading `0` flips parity. Reading `1` is allowed only at even parity. Each allowed letter has two possible residue successors. Thus `1001` is accepted while `101` is rejected.

For a word \(w\), an admitted route is a function from the \(|w|+1\) vertex positions to the 14-state carrier satisfying the actual graph-edge relation at every letter. All 14 starting states are permitted. Given a real edge cost \(c\), a finite route's cost is

\[
 C(\pi\mid w,z)=\sum_{j=0}^{|w|-1}
 c(\pi_j,w_j,\pi_{j+1};z).
\]

The program applies a Viterbi-style dynamic program with predecessor pointers to find the cheapest route. The exact repository theorem `optimal_route_exists` establishes that a minimum exists for the finite mathematical path set; a proof that the concrete JavaScript recurrence returns that minimum for every allowed input remains a *refinement* obligation. It is not an all-time minimum over a changing, externally driven toy.

The words admitted by the finite graph form a genuinely defined **sofic graph language**. One chosen physical trajectory being representable by a graph path is not evidence that *all finite blocks of that physical trajectory's orbit closure* constitute the graph's language. The child has written a word for the top to follow, not found a theorem about every possible history of the cosmos.

## VI. A crooked line in three dimensions

Each residue is assigned a spatial direction on the display. The route's directions are interpolated by a cubic Catmull–Rom curve and then normalized, with a fallback when its length is too small. The harmonic modes and a bounded sample of the explicit ABC field contribute to a force vector. A mass-one damped, tethered update moves the top:

\[
 v'=\frac{v+h(F-\lambda x)}{1+h\gamma+h^2\lambda},
 \qquad x'=x+hv',
\]

before the declared velocity and position bounds are applied. Here \(F\) is the *selected* capped display force; it is not identified with a general fluid's true acceleration. The browser also removes an outward component of velocity when a proposed position crosses its radius boundary. The exact `radialClip` lemma certifies the mathematical projection's output radius; it does not prove that this constrained path follows an unconstrained differential equation.

The earlier \(S^4\to\mathbb T^3\) map and its bounded explicit ABC field remain separate, useful geometric source models. Neither claims a homeomorphism between the four-sphere and the three-torus, nor a global regularity theorem for three-dimensional Navier–Stokes. To the child, the displayed toroidal rings are guides; to the topologist, the identifications and failed inverses must stay stated.

## VII. A clock in a rotating universe

Now the child asks the question that turns the toy into a research instrument: *If my top goes in a circle, does time go in a circle too?*

This is where a physicist must protect the question from the picture. The toy is moving in its own Euclidean display space. Gödel spacetime supplies a **separate observer-dependent measurement**, not a new force in the toy's equations. In signature \((-+++)\), with \(a>0\), the actual chart metric is

\[
 g=a^2\left[-(dt+e^xdy)^2+dx^2+
 \tfrac12e^{2x}dy^2+dz^2\right].
\]

For \(|\beta|<1\) let \(\Gamma=(1-\beta^2)^{-1/2}\) and choose the boosted observer

\[
 u_\beta=\frac\Gamma a(\partial_t+\beta\partial_z).
\]

The observer's spatial tensor is \(h_\beta=g+u_\beta^\flat\otimes u_\beta^\flat\). It is nonnegative on all tangent vectors and strictly positive on their observer-rest quotient. Its root on the full tangent space is the observer's own time direction, not the point where the top happens to stand. The vorticity tensor, on the other hand, is

\[
 \omega_\beta=-\frac{\Gamma a e^x}{2}\,dx\wedge dy,
 \qquad \frac12\omega_{ab}\omega^{ab}=\frac{\Gamma^2}{2a^2}>0.
\]

Here the physical **vorticity** is not the **torsion tensor** of an affine connection. The ordinary Levi-Civita connection remains torsion-free. The display's observer ring is a picture of a positive rest-space measurement; the rotating arrows recall the signed antisymmetric two-form. Their co-presence is not a physical paradox.

A special chart transformation

\[
 F_s(t,x,y,z)=(t,x+s,e^{-s}y,z)
\]

preserves the metric, observer spatial tensor and vorticity: \(F_s^*g=g\), \(F_s^*h_\beta=h_\beta\), \(F_s^*\omega_\beta=\omega_\beta\). When a child turns the *transport* control, the top has not received more energy. Coordinates have been changed while the same tensorial measurement returns. This is a rare interface event where the physical and mathematical meanings closely coincide.

Gödel's rotating cosmological model and his 1949 reflection on relativity and idealistic philosophy concern the possibility of global time ordering. A separate finite graph lemma says that a directed cycle cannot carry a real clock strictly increasing at every edge. That elementary obstruction is true, but it is not itself an embedded closed timelike curve in Gödel spacetime. The child may ask whether time can go around; the research program must still construct the actual causal geometry before claiming its answer.

## VIII. Three roots are not one root

A spinning toy, a prime residue, and an observer in a rotating spacetime can all have a zero measurement without being the same mathematical object.

The spring's root is \(\theta_c-g^{-1}\theta_r=0\). The prime-local phase's root is \(z=0\in\mathbb Z/p\mathbb Z\); its positive auxiliary cost is simply \(\kappa\mathbf1_{z\ne0}\), preserved by the `flic` involution \(z\mapsto-z\). The Gödel observer's spatial root is the vector direction proportional to \(u_\beta\). None of these roots means that the source Möbius sum \(A_j\), the full causal Gram, or any Dirichlet-character contribution is small.

The shared mathematical language is a typed *interface*, not a universal physical claim. Each family \(i\) supplies its carrier \(X_i\), root predicate \(R_i\), genuine measured energy \(E_i\), and proofs

\[
  E_i(x)\ge0,\qquad E_i(x)=0\iff R_i(x).
\]

A transport from family \(i\) to family \(j\) must supply an actual map \(T_{ij}:X_i\to X_j\) and signed difference \(\Delta_{ij}\) satisfying

\[
 E_j(T_{ij}x)=E_i(x)+\Delta_{ij}(x).
\]

For two transports, neither difference vanishes by naming convention:

\[
 \Delta_{ik}(x)=\Delta_{ij}(x)+
 \Delta_{jk}(T_{ij}x).
\]

These are the equations that allow a mathematical physicist to compare mechanisms without declaring them identical, and a computer scientist to assign a separate proof obligation to every translation between data types. The child sees that one action may change how something looks without putting more winding into the spring.

## IX. The full diagram, and the blank places that matter

The abstract chain represented in the new Lean sources is

\[
\begin{array}{c}
\text{mechanical spring trace}\ \longrightarrow\
\text{ordered rotor samples}\ \longrightarrow\
\text{finite temporal DFT}\ \longrightarrow\
\text{seven signed residue channels}\\[3pt]
\longrightarrow\ \text{banded positive quadratic / filtered modes}
\longrightarrow\ \text{accepted finite sofic word route}\\[3pt]
\longrightarrow\ \text{bounded 3D trajectory}
\longrightarrow\ \text{Gödel observer spatial and vorticity readouts}.
\end{array}
\]

The mathematical record `Frame` binds each representation to its actual source data. The companion `SimulationCertificate` composes **independent** mechanical, decorative-cloth, filtered-harmonic, spatial-radius and observer-positive bounds. It does not add all these measurements into a purported universal conserved energy. The named browser refinement gates separately demand accurate pointer work, timing, Fourier sampling, Cholesky, word optimization, curve normalization, clipping and rendering.

Those gaps are scientifically useful. Without them, a person could confuse the shimmer of seven ribbons with a proof that nonlinear fluid interactions vanish; or a Lorentzian rotation with physical torsion; or a finite graph word with the orbit language of an arbitrary physical system; or a checked finite equality with an all-scale Riemann hypothesis estimate.

The child returns to the toy. They wind it slowly, release, watch a colored trail rise, and ask why the lightest ribbon appears to hesitate. The mathematician gives it a residue, the programmer gives it an array index, and the physicist gives it a time step—but all three have to give back the same observed motion, plus an honest account of whatever each description has left behind.

The child does not need to choose which language is real. The equations need to earn the right to agree.

---

## Technical index, independent of the literary voice

**Source and formal objects.** `GRWTSK.NumericalAnalysis.GodelFourierSoficImplementationChain` imports the existing physical spring, finite Fourier/sofic, Gödel tensor and sphere/torus/ABC modules. Its new declarations include `sum_residue_channels`, `harmonicEnergy_le_bandQuadratic`, `optimalRoute_of_admissible`, `boundedPosition_within_radius`, `spatialReadout_chart_transport`, `vorticity_chart_transport`, `Frame`, `makeFrame` and `Frame.three_separate_bounds`. The companion `GRWTSK.NumericalAnalysis.GodelFourierSoficRefinementBoundary` contains `DrivenMechanicalTrace.energy_le_signed_work`, `ClothStep.next_energy_le`, `SimulationCertificate.five_independent_bounds`, and the explicit unfinished `BrowserRefinementObligations`.

**Original physical and formal sources.** `GRWTSK/NumericalAnalysis/CorkscrewSpringEnergy.lean`; `GRWTSK/NumericalAnalysis/FiniteModeDrapeEnergy.lean`; `GRWTSK/NumericalAnalysis/ResidueBandedFourierSoficPath.lean`; `GRWTSK/DynamicalSystemsAndErgodicTheory/ExactSoficLanguageCover.lean`; `GRWTSK/DifferentialGeometry/GodelObserverMetricVorticity.lean`; `GRWTSK/FunctionalAnalysis/ExactRootAndTransportContract.lean`; `GRWTSK/Geometry/SphereFourThreeTorusDrape.lean`; `GRWTSK/NumberTheory/ZetaAndLFunctionsAnalyticTheory/AutomircronRootedPrimePhase.lean`. Their recorded source identities, date and verification statuses are retained; new acceptance never retroactively changes them.

**Primary bibliographic sources.** Kurt Gödel (1949), *An Example of a New Type of Cosmological Solutions of Einstein's Field Equations of Gravitation*, *Reviews of Modern Physics* **21**, 447–450, DOI [10.1103/RevModPhys.21.447](https://doi.org/10.1103/RevModPhys.21.447). Kurt Gödel (1949), *A remark about the relationship between relativity theory and idealistic philosophy*, in *Albert Einstein: Philosopher–Scientist*, 555–562; reprinted *Collected Works* II, 202–207, DOI [10.1093/oso/9780195147216.003.0015](https://doi.org/10.1093/oso/9780195147216.003.0015). The Fourier/sofic/numerical methods here are standard finite constructions and local implementation choices, not theories attributed to these papers.

**Evidence boundary (2026-10-31).** Literary presentation and exact-real analytical derivations are inspectable; the archived HTML is a runnable finite browser model, and earlier browser/symbolic diagnostics are finite observations. The new Lean declarations are **source proof candidates** until exact pinned elaboration, full build, fresh kernel checking and transitive axiom audits are actually performed. The complete browser refinement, uniform sampling, full WebGL shader path, true Navier–Stokes operator/solution identity, prime-to-RH cancellation and complete Gödel curvature/causal-curve Lean transport are **not proved**. No claim of physical regularity, cosmological simulation or an RH proof follows from this reading.
