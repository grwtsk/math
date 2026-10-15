# Triadic waveform and primitive additive–multiplicative transfer

Version: `GRL-TWMK/0.1.0-research-1`  
Human mathematical direction: R.A. Jacob Martone.  
Research synthesis and exact finite implementation: OpenAI ChatGPT.  
Status: written mathematics and executed exact finite arithmetic. No native Lean admission, K-theory arithmetic pairing, all-height theorem, or RH proof.

## 1. Canonical replacement of the mnemonic objects

The phrase “three jump ropes” is represented by a three-channel vector-valued waveform. The phrase “quadratic screw” is represented by a separately declared transport operator. The phrase “quartic phase” is represented by a separately declared functional-calculus or source-quartic operator. The phrase “jumper who counts” is represented, at the finite level, by a trace/rank pairing with a projection. None of the mnemonic phrases is a premise.

The canonical new name for the additive-to-multiplicative interface is

\[
\boxed{\mathsf{PrimitiveRadialMellinTransfer}_{X}}
\]

abbreviated `PRMT-X`. The project word “noeaaeue” is retained only as a mnemonic alias for this interface and has no formal authority.

## 2. The primitive additive lattice

Define the full additive lattice

\[
L=\{(a,b,c)\in\mathbb Z^3:a+b=c\}\cong\mathbb Z^2
\]

and the positive primitive slice

\[
\Lambda^\circ=\{(a,b,c)\in\mathbb N_{>0}^3:a+b=c,\ \gcd(a,b)=1\}.
\]

For a natural cutoff `X`, put

\[
\Lambda_X^\circ=\{(a,b,c)\in\Lambda^\circ:c\le X\}.
\]

Since `c=a+b`, the condition `gcd(a,b)=1` implies

\[
\gcd(a,c)=\gcd(b,c)=1.
\]

For fixed `c`, the map `a ↦ (a,c-a,c)` identifies primitive positive triples with residues `1≤a<c` coprime to `c`. Hence

\[
\boxed{|\Lambda_X^\circ|=\sum_{c=2}^X\varphi(c).}
\tag{2.1}
\]

This is the first exact sequence-counting observable. It does not use the abc conjecture. The equation `a+b=c` and pairwise coprimality are the only ingredients.

## 3. The additive-to-multiplicative moment interface

For complex parameters `s=(s_1,s_2,s_3)`, define the finite ordinary and primitive Tornheim sums

\[
T_X(s_1,s_2;s_3)
=\sum_{\substack{a,b\ge1\\a+b\le X}}
 a^{-s_1}b^{-s_2}(a+b)^{-s_3},
\]

\[
T_X^\circ(s_1,s_2;s_3)
=\sum_{\substack{a,b\ge1\\a+b\le X\\(a,b)=1}}
 a^{-s_1}b^{-s_2}(a+b)^{-s_3}.
\]

Write `S=s_1+s_2+s_3`. Every positive pair has a unique decomposition

\[
a=d a_0,\qquad b=d b_0,\qquad (a_0,b_0)=1,
\]

and then `a+b=d(a_0+b_0)`. Therefore every floor and endpoint retained,

\[
\boxed{
T_X(s_1,s_2;s_3)
=\sum_{1\le d\le X/2}d^{-S}
 T^\circ_{\lfloor X/d\rfloor}(s_1,s_2;s_3).
}
\tag{3.1}
\]

Finite Möbius inversion gives

\[
\boxed{
T_X^\circ(s_1,s_2;s_3)
=\sum_{1\le d\le X/2}\mu(d)d^{-S}
 T_{\lfloor X/d\rfloor}(s_1,s_2;s_3).
}
\tag{3.2}
\]

Equations (3.1)–(3.2) are the precise meaning of “the additive restriction is transferred through multiplicative integration via the moment interface.” The additive shape is the primitive point `(a_0,b_0,a_0+b_0)`; the multiplicative radial variable is the gcd `d`; the total homogeneity `S` is the moment exponent joining them.

In the absolute-convergence domain for the Mordell–Tornheim sum, grouping by `d` gives

\[
\boxed{
T(s_1,s_2;s_3)=\zeta(S)T^\circ(s_1,s_2;s_3),\qquad
T^\circ=\frac{T}{\zeta(S)}.
}
\tag{3.3}
\]

One convenient sufficient domain is

\[
\Re s_1>1,\qquad \Re s_2>1,\qquad \Re s_3\ge0.
\]

The sharper standard Mordell–Tornheim condition, after ordering `Re s_1≤Re s_2`, is

\[
\Re(s_3+s_1)>1,\qquad
\Re(s_1+s_2+s_3)>2.
\]

No version of (3.3) is used in the critical strip without a separate continuation theorem. The denominator `ζ(S)` is nonzero here because `Re S>1`.

### Continuous comparison

The positive cone `x,y>0` admits coordinates

\[
x=ru,\qquad y=r(1-u),\qquad r=x+y,
\]

with `r>0`, `0<u<1`, and Jacobian `r`. This separates an additive simplex coordinate `u` from a multiplicative radial coordinate `r`. In Mellin measure `dr/r`, radial powers become multiplicative moments. This continuum decomposition is a comparison theorem, not an identification with the discrete primitive lattice: coprimality and Möbius inversion have no literal continuum counterpart unless separately encoded.

## 4. Three-channel waveform

For a finite cutoff, let

\[
\mathcal H_X=\ell^2(\Lambda_X^\circ)\otimes\mathbb C^3.
\]

Choose a versioned arithmetic weight `ω_X(λ;s)`. Three admissible examples must remain distinct:

1. geometric primitive weight `ω=1`;
2. signed vertex weight `ω=\mu(a)\mu(b)\mu(c)`;
3. the repository’s literal Möbius pickup weight, only after an exact adapter is supplied.

Define the basic coordinate waveform

\[
\mathbf W_X(t;s)=
\sum_{\lambda=(a,b,c)\in\Lambda_X^\circ}
\omega_X(\lambda;s)
\begin{pmatrix}
 a^{-s_1}e^{it\log a}\\
 b^{-s_2}e^{it\log b}\\
 c^{-s_3}e^{it\log c}
\end{pmatrix}e_\lambda.
\tag{4.1}
\]

Both amplitude and phase are present. A phase-only torus model is a quotient of (4.1), not the same object.

Write

\[
W_1=W_{\rm arith},\qquad
W_2=W_{\rm screw}=\mathcal S_QW_1,\qquad
W_3=W_{\rm quartic}=\mathcal P_4W_2.
\]

The operators are versioned fields of the model. No existing project screw function is identified with `S_Q` without a bridge theorem.

## 5. Quadratic screw transport

A finite-dimensional candidate is

\[
\mathcal S_Q(\tau)=e^{\tau JQ}.
\]

A sufficient unitary hypothesis is

\[
Q^*=Q,\qquad J^*=-J,\qquad JQ=QJ.
\]

Then `(JQ)^*=-JQ`, hence `S_Q(τ)` is unitary. Without commutation, skew-adjointness of `JQ` is not automatic. The project’s Volterra, Hodge, screw-function and causal-response definitions remain separate source objects. The obligation `TWMK-SCREW-BRIDGE` is to prove that a selected project operator agrees with, factors through, or is quantitatively approximated by this model on the actual source.

The screw layer must retain:

- the operator domain;
- every harmonic/zero-mode component;
- boundary terms;
- the physical inner product;
- resolvent and inverse costs;
- the source-identification theorem.

## 6. Quartic phase transport

A generic finite-dimensional phase operator may be written

\[
\mathcal P_4(\tau)=e^{i\tau q_4(A)}
\]

for self-adjoint `A` and a real quartic `q_4`; it is then unitary by functional calculus. This generic phase is not automatically any of the source quartics below.

Four distinct quartic roles are retained:

1. reflection-orbit quartic;
2. source Taylor/Weierstrass quartic;
3. Jensen quartic;
4. Frobenius/cohomological quartic.

For the reflection-orbit quartic, if a possible zero is

\[
\rho=\tfrac12+a+ib,
\]

then

\[
P_{a,b}(X)=((X-b)^2+a^2)((X+b)^2+a^2)=X^4+pX^2+r,
\]

\[
p=2(a^2-b^2),\qquad r=(a^2+b^2)^2,
\]

\[
\boxed{p^2-4r=-16a^2b^2.}
\tag{6.1}
\]

This quartic is constructed from a possible zero; it does not find one. A source Taylor quartic must carry its coefficient and remainder producer. The bridge `TWMK-SCREW-QUARTIC` must map actual quadratic-screw moments to source-derived quartic/Hermite moments with a complete error term.

## 7. Complete mixed moments

For nonnegative multi-indices and a declared measure `ν`, define signed moments

\[
M^{\rm signed}_{\alpha,\beta,\gamma;r}(X,T)=
\int_0^T t^rW_1(t)^\alpha W_2(t)^\beta W_3(t)^\gamma\,d\nu(t).
\tag{7.1}
\]

The Hermitian moment matrix is

\[
H_r(X,T)=\int_0^T t^r\mathbf W_X(t)\mathbf W_X(t)^*\,d\nu(t).
\tag{7.2}
\]

These are different systems. In particular, `q(z)^2` is not `|q(z)|^2`.

For every Hilbert-space triple,

\[
\boxed{
\|W_1+W_2+W_3\|^2
=\sum_{j=1}^3\|W_j\|^2
+2\Re\langle W_1,W_2\rangle
+2\Re\langle W_1,W_3\rangle
+2\Re\langle W_2,W_3\rangle.
}
\tag{7.3}
\]

No diagonal estimate removes the three mixed terms.

Finite moments do not determine a signed measure. For each `m≥1`, the nonzero signed measure

\[
\sum_{j=0}^m(-1)^j\binom mj\delta_j
\]

has moments zero through degree `m-1`. Pairwise moments also do not determine a three-way interaction: the even- and odd-parity probability laws on `{±1}^3` have the same one- and two-coordinate moments but opposite `xyz` moments. A determinacy or bounded-reconstruction theorem is therefore an explicit obligation.

## 8. Reflection and lattice actions

On the full lattice `L`, translations are

\[
\tau_{u,v}(a,b,c)=(a+u,b+v,c+u+v),
\]

and the channel reflection is

\[
R(a,b,c)=(b,a,c).
\]

The natural full group is

\[
\boxed{G=\mathbb Z^2\rtimes C_2,}
\]

where `C_2` swaps the two translation coordinates. The positive primitive slice is not invariant under all translations, so a crossed product must be constructed on `L` or another invariant space—not directly on `Λ_X°`.

On each fixed-`c` difference fiber, define

\[
T_k(a,b,c)=(a+k,b-k,c).
\]

Then

\[
R^2=1,\qquad RT_kR=T_{-k},
\]

so this one-dimensional subgroup is `D_∞=Z⋊C_2`. Thus `D_∞` is correct for the difference fiber; it is not the whole two-dimensional lattice symmetry.

The even and odd collapse operators are

\[
C_+=\frac{I+R}{2},\qquad C_-=\frac{I-R}{2}.
\]

They satisfy exact reconstruction `x=C_+x+C_-x`. For the two reflected channels,

\[
\|x\|^2+\|Rx\|^2=2\|C_+x\|^2+2\|C_-x\|^2.
\]

A quotient retaining only `C_+` loses the odd channel. Repeated fixed slots retain their indexed multiplicity.

Critical reflection `s↦1-\bar s`, complex conjugation, lattice swap, and time reversal are separate involutions. Any identification among them requires a bridge.

## 9. Finite K-theoretic precursor

Let `p_X` be the diagonal finite-rank projection on `ℓ²(L)` whose range is spanned by `Λ_X°`. Then

\[
\boxed{\operatorname{Tr}(p_X)=\operatorname{rank}(p_X)
=|\Lambda_X^\circ|=\sum_{c=2}^X\varphi(c).}
\tag{9.1}
\]

This is the mathematically valid finite precursor for the “sequence-counting observer.” Under the standard identification `K_0(K(ℓ²L))≅Z`, `[p_X]` carries its rank. That K-theory theorem is not presently imported into the pinned formal environment.

A candidate infinite algebra is

\[
\mathcal A_{\rm TWMK}=M_3\bigl(C_0(L)\rtimes_r(\mathbb Z^2\rtimes C_2)\bigr).
\tag{9.2}
\]

Before using (9.2), one must construct the action and representation, prove boundedness or affiliation of the screw and quartic operators, and construct a Fredholm module or cyclic cocycle. No theorem currently identifies an index or spectral-flow pairing in (9.2) with zeta zeros, Möbius pickup energy, or RH. The finite rank formula (9.1) is not that missing theorem.

## 10. Literal holomorphic estimate in a safe domain

Let `σ_j=Re s_j`, assume

\[
\sigma_1>1,\qquad\sigma_2>1,\qquad\sigma_3\ge0,
\]

and `X≥2`. Since `a+b>X` implies `a>X/2` or `b>X/2`,

\[
\boxed{
|T-T_X|
\le
\zeta(\sigma_2)\frac{(X/2)^{1-\sigma_1}}{\sigma_1-1}
+
\zeta(\sigma_1)\frac{(X/2)^{1-\sigma_2}}{\sigma_2-1}.
}
\tag{10.1}
\]

The primitive tail is no larger than the ordinary absolute tail. This is a complete source-preserving finite approximation for the Tornheim channel in the stated domain. It is not a critical-strip estimate for zeta.

For the Möbius–Riemann–Euler–Dirichlet chain, the safe initial identities remain

\[
\mu*\mathbf1=\varepsilon,
\qquad
\sum_{n\ge1}\frac{\mu(n)}{n^s}=\frac1{\zeta(s)},
\qquad
\zeta(s)=\prod_p(1-p^{-s})^{-1},
\quad \Re s>1.
\]

Any use beyond this domain requires the actual repository transform, analytic continuation, contour, or Laplace/Mellin bridge. The new primitive Tornheim transfer does not itself supply that continuation.

## 11. Finite triadic theorem at declared scope

For every finite `X`, every coefficient system on `Λ_X°`, every bounded three-channel transport, and every finite measure:

1. the waveform (4.1) is well defined;
2. the finite primitive transfer (3.1)–(3.2) retains all floors and Möbius signs;
3. the total energy has the six-term expansion (7.3);
4. reflection splits and reconstructs exactly;
5. the finite counting projection has trace (9.1);
6. the safe-domain Tornheim tail obeys (10.1).

This establishes the requested schematic theorem only at finite/safe analytic scope:

\[
\boxed{
\text{primitive reflected moments}
+\text{declared transports}
+\text{finite source identity}
\Longrightarrow
\text{literal finite holomorphic estimate in the safe domain}.
}
\]

## 12. Smallest unresolved theorem

The smallest terminally relevant missing bridge is not the finite arithmetic transfer. It is:

> **TWMK-SOURCE-BRIDGE.** Construct a source-preserving operator/test functional for the repository’s literal Möbius or completed-zeta source such that the complete three-channel mixed interaction is bounded by a quantified estimate strong enough for an existing RH consumer, with every screw, quartic, reflection, pole, endpoint, floor, multiplicity and continuation term retained.

The K-theory refinement is a separate open theorem:

> **TWMK-INDEX-BRIDGE.** Construct a Fredholm/cyclic pairing for the invariant lattice algebra and prove that its pairing equals an independently defined arithmetic sequence count or source moment used by the analytic estimate.

Neither open theorem is assumed in this package.
