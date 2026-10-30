# Analytic closure: three-phase residual metric, heat commutant and polarization

**Local mathematical attribution:** grwtsk contributors  
**Status:** ANALYTICALLY PROVED (elementary finite-dimensional theorem, with independent calculations below); Lean source formalization and full dependency-closure verification **NOT_RUN**.  
**Scope:** the finite complex three-phase coefficient model, **not** the Navier–Stokes PDE, a Yang–Mills mass gap, or quantum chromodynamics.

**Source identities:** \`GRWTSK/GeneralTopology/ThreePhaseCoefficientHeat.lean\`, \`GRWTSK/GeneralTopology/ThreePhaseCoherentResidual.lean\`, and \`GRWTSK/GeneralTopology/ThreePhaseResidualCircleAction.lean\`. These are the intended producers, with their exact source status separate from the independent derivations here. The original real heat flow is selected by construction; a general geometric Hodge heat realization is not inferred.

## Exact statement and its limitations

Equip \(\mathbb C^3\) with the standard Hermitian form \(\langle z,w\rangle=\sum_{j=0}^2\overline{z_j}w_j\). Define

\[
c=(1,1,1)/\sqrt3,\quad
C=\mathbb C c,\quad
R=\{z\in\mathbb C^3:z_0+z_1+z_2=0\}=C^\perp .
\]

The retained source has the unique orthogonal splitting \(z=P_Cz+P_Rz\). The source-selected heat operator is

\[
H_t=P_C+d(t)P_R,\qquad d(t)=e^{-3t}.
\]

The residual embedding and its positive energy are

\[
E:\mathbb C^2\longrightarrow R,\qquad E(a,b)=(a,b,-a-b),
\qquad
q(a,b)=\|E(a,b)\|^2.
\]

**Theorem A (residual Gram isometries).** The form is
\[
q(a,b)=
\begin{pmatrix}\bar a&\bar b\end{pmatrix}
G\begin{pmatrix}a\\b\end{pmatrix},
\qquad
G=\begin{pmatrix}2&1\\1&2\end{pmatrix}>0.
\]
For a complex-linear endomorphism \(A:\mathbb C^2\to\mathbb C^2\), the following are equivalent:
1. \(q(Ax)=q(x)\) for every \(x\);
2. \(A^\ast GA=G\);
3. \(SAS^{-1}\in U(2)\), where
\[
S=\begin{pmatrix}
\sqrt{3/2}&\sqrt{3/2}\\
1/\sqrt2&-1/\sqrt2
\end{pmatrix},\qquad S^\ast S=G.
\]
Thus the **full complex-linear residual isometry group** is \(S^{-1}U(2)S\). The equal-phase torsion \(A=e^{i\theta}I\) is only its central \(U(1)\) subgroup.

**Theorem B (heat-compatible symmetry).** Let \(t>0\). A unitary \(V:\mathbb C^3\to\mathbb C^3\) commutes with \(H_t\) if and only if, in the orthogonal decomposition \(C\oplus R\),
\[
V=\operatorname{diag}(\lambda,U_R),
\quad |\lambda|=1,\quad U_R\in U(R)\cong U(2).
\]
Consequently the unitary heat commutant is \(U(1)\times U(2)\). Its determinant-one subgroup is \(S(U(1)\times U(2))\cong U(2)\). If the coherent line is fixed **pointwise** (\(\lambda=1\)), the heat-compatible unitary group is \(U(2)\); adding determinant one then reduces the residual group to \(SU(2)\), **not** general \(SU(3)\). At \(t=0\), \(H_0=I\) and the heat commutation constraint alone is vacuous.

These conclusions classify a *linear symmetry group* of the explicitly selected finite heat model. They do not make that group a gauge group, supply a gauge connection/curvature, or establish any dynamical PDE estimate.

## Independent analytic route I — direct quadratic/Weil argument

Expand the original, source-labelled three-coordinate norm, without dropping the third coordinate:

\[
\begin{aligned}
q(a,b)&=|a|^2+|b|^2+|a+b|^2\\
&=2|a|^2+2|b|^2+\bar a b+\bar b a
=x^\ast Gx.
\end{aligned}
\]

The determinant and leading principal minor are \(\det G=3>0\) and \(G_{11}=2>0\), so \(G\) is positive definite (alternatively \(q=0\) forces \(a=b=0\) directly from its three nonnegative summands).

For an arbitrary complex-linear \(A\), assume \(q(Ax)=q(x)\) for **all** \(x\). Complex polarization then gives, for all \(x,y\),

\[
\langle Ax,Ay\rangle_G
=
\frac14\big(q(A(x+y))-q(A(x-y))
-iq(A(x+iy))+iq(A(x-iy))\big)
=\langle x,y\rangle_G.
\]

The four terms are the exact Weil probes with conjugate linearity in the first argument. Therefore \(x^\ast(A^\ast GA-G)y=0\) for every \(x,y\), giving \(A^\ast GA=G\). Conversely, that matrix equation trivially gives equality of the diagonal quadratic forms.

Now compute \(S^\ast S=G\) exactly and \(\det S=-\sqrt3\neq0\). Set \(U=SAS^{-1}\). Multiplication shows

\[
U^\ast U=(S^{-1})^\ast A^\ast G A S^{-1}
=(S^{-1})^\ast G S^{-1}=I.
\]

Because the space is finite-dimensional, \(U^\ast U=I\) implies \(U\) is invertible, hence \(U\in U(2)\). Reversing the calculation proves the converse. This route does **not** assume heat commutation.

## Independent analytic route II — explicit spectral coordinates and heat commutant

Choose the orthonormal vectors

\[
c=\frac{(1,1,1)}{\sqrt3},\qquad
e_+=\frac{(1,1,-2)}{\sqrt6},\qquad
e_-=\frac{(1,-1,0)}{\sqrt2}.
\]

Direct dot products give an orthonormal basis. The coordinates of the embedded residual \(E(a,b)\) in this basis are

\[
\langle e_+,E(a,b)\rangle=\sqrt{\frac32}(a+b),
\qquad
\langle e_-,E(a,b)\rangle=\frac{a-b}{\sqrt2}.
\]

Therefore, completely independently of the Gram-matrix argument,

\[
q(a,b)=\frac32|a+b|^2+\frac12|a-b|^2.
\]

These are precisely \(S(a,b)\). The induced norm is the Euclidean norm of the orthonormal residual coefficients. Any unitary transformation on those coefficients acts isometrically and gives an isometry \(S^{-1}US\) of the raw \((a,b)\) coordinates.

More strongly, \(H_t\) is diagonal in the basis \((c,e_+,e_-)\):
\[
H_t=\operatorname{diag}(1,d,d).
\]
For \(t>0\), \(0<d<1\); its eigenvalues are distinct between the coherent line and residual plane. If \(V=(v_{ij})\) commutes with \(H_t\), then
\((h_i-h_j)v_{ij}=0\). Hence \(v_{01}=v_{02}=v_{10}=v_{20}=0\). Unitarity forces the remaining scalar block to have modulus one and the residual block to be an element of \(U(2)\). Conversely each such block-diagonal unitary commutes with \(H_t\). This also proves the classification at the **fixed positive time** requested, not merely an intuitive heat/rotation analogy.

This spectral argument does not use Weil polarization to classify the heat commutant. It is an independent check of the group obtained from the positive Gram metric.

## Independent analytic route III — infinitesimal torsion check

In the raw two-coordinate residual representation let \(A(s)=e^{sX}\). Differentiating the retained Gram identity at \(s=0\) gives

\[
\left.\frac{d}{ds}\right|_{s=0}\big(A(s)^\ast G A(s)\big)
=X^\ast G+GX.
\]

Thus a necessary infinitesimal condition is \(X^\ast G+GX=0\). Conversely, if this holds, the derivative of \(A(s)^\ast GA(s)\) is zero for all real \(s\), so \(A(s)^\ast GA(s)=G\) along the complete path. Conjugating the generator by \(S\) gives \(Y=SXS^{-1}\) with \(Y^\ast+Y=0\), the skew-Hermitian Lie algebra \(\mathfrak u(2)\). This third route checks the continuous-torsion interpretation without using a discrete three-cycle as a substitute for continuity.

## Polarization, determinant and hostile cases

The positive observation can be taken as the full norm in \(\mathbb C^3\), or equivalently the sum of coherent and residual energies. Under any common isometry \(V\) all four **same-stage, same-source** diagonal Weil probes remain unchanged, hence so does their polarized cross observation. This is not a statement that separately transported arguments or lossy/nonlinear observation channels have equal Gram values.

The counterexamples reveal exactly what a full theorem cannot assume:

1. **Wrong metric:** \(A=\operatorname{diag}(1,-1)\) is unitary in ordinary raw \(\mathbb C^2\), but
\[
q(1,1)=6,\qquad q(A(1,1))=q(1,-1)=2.
\]
Therefore ordinary \(A^\ast A=I\) is **not enough** in the raw two-coordinate chart.
2. **Determinant not automatic:** scalar residual torsion \(A=e^{i\theta}I_2\) preserves \(G\), but \(\det A=e^{2i\theta}\), which need not be \(1\). The corresponding coherent-fixed three-dimensional transport \(\operatorname{diag}(1,e^{i\theta},e^{i\theta})\) also need not lie in \(SU(3)\).
3. **Heat is not unitary:** for \(t>0\) and nonzero \(r\in R\), \(\|H_tr\|=e^{-3t}\|r\|<\|r\|\). Heat has strictly positive decay but never turns a nonzero finite-time residual exactly into zero.
4. **General \(SU(3)\) does not commute with heat:** a unitary mixing \(c\) and \(e_+\) has a nonzero off-block entry, and hence fails \(VH_t=H_tV\) for \(t>0\).
5. **Invariant probes alone do not improve an operator defect:** if \(P\) and \(J\) are transported by the same unitary conjugation, the operator norm obeys \(\|VPV^{-1}-VJV^{-1}\|=\|P-J\|\). Pure torsion cannot establish a strict defect improvement without a genuine new source-bound cancellation or comparison.

### Nonlinear Fourier obstruction: an exact high–high-to-low triad

For any integer \(N\ge 2\), choose

\[
\eta=(N,N,0),\qquad
\zeta=(1-N,-N,0),\qquad
\xi=\eta+\zeta=(1,0,0),
\]
\[
a=(1,-1,0),\qquad b=(N,1-N,0).
\]

Both input coefficients are divergence-free at their own input frequencies:
\(\eta\cdot a=0\) and \(\zeta\cdot b=0\). Nevertheless
\(\zeta\cdot a=1\), and the nonzero-frequency Leray projector at \(\xi\) sends
\(b\) to \(P_\xi b=(0,1-N,0)\neq0\). Consequently the source-labelled
Fourier convective triad \((2\pi i)(\zeta\cdot a)P_\xi b\) is nonzero, even
as \(\|\eta\|\) and \(\|\zeta\|\) grow arbitrarily while the output
\(\|\xi\|=1\) stays fixed.

This explicit hostile fixture shows that incompressibility, Leray projection
and positive source energy do **not** independently eliminate high–high-to-low
backscatter. Any proposed tail theorem must account for it in the actual
summed/integrated nonlinear source; merely suppressing the tail–tail sector
cannot prove the Navier–Stokes operator defect.

### Independent exact symbolic diagnostic (not a substitute for the above proofs)

The following exact identities were independently evaluated by symbolic matrix algebra on the proposed formulas: \(G\) has eigenvalues \(1,3\); \(S^\ast S=G\); \(\det S=-\sqrt3\); and the cross-block entries of \([H_t,V]\) are multiplied by \(1-e^{-3t}\). This is finite diagnostic corroboration, not a global mathematical proof or Lean kernel receipt.

## Relation to Navier–Stokes and analytic completion beyond Lean

**This finite theorem is analytically complete at the stated scope.** The original Navier–Stokes programme has a **different** unresolved theorem: prove, for the actual source-labelled nonlinear Fourier convolution and the actual finite observation/moment operator, a uniform quantitative defect below the already-defined coercive gap,

\[
\sup_{\theta\in[0,1]}\|P_\theta-J\|<\gamma
\]

with each term derived from the source, all mixed shell/tail triads and zero output-frequency cases retained, and with a justified function space and convergence passage. Neither the finite \(U(2)\) classification nor a successful Lean typecheck supplies that inequality.

That analytic bridge should be attacked by genuinely distinguishable consumers, not three wrappers around the same unproved hypothesis:

- **Fourier/triad route:** source-labelled shell/tail conservation and direct bilinear convolution estimates in a stated normed space, with an independently proved uniform summability/tightness step to pass beyond finite sums.
- **Positive Gram/polarization route:** four complete signed diagonal residue channels and a one-sided polarized operator comparison, including a proof that the resulting positive majorant is below \(\gamma\), not merely a decomposition into unspecified errors.
- **Spectral/heat route:** operator intertwining plus a quantitative spectral/coercive comparison; the finite heat eigenvalue calculation is only the model and cannot be transferred to the PDE without exact operator and domain hypotheses.

An accepted final proof needs all of: (i) an actual mathematical bound from at least one route without baking the desired conclusion into a certificate field; (ii) a genuinely independent second analytic check or derivation, with explicitly compared assumptions; and (iii) compilation, fresh Lean kernel checking and a transitive axiom/hypothesis audit of the exact source revision. The independent checks do not lower the mathematical threshold or grant an unproved PDE claim.

**Verification plan only:** use the repository's current \`lean-toolchain\` and \`lake-manifest.json\` at the chosen head, check this module and all upstream dependencies with \`lake build\`, \`lake env lean --trust=0\`, and exact source-bound axiom inspection. No compilation or remote execution is claimed here.
