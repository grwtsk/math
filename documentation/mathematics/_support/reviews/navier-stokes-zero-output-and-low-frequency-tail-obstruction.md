# Navier–Stokes: exact zero-mode cancellation and a low-output tail obstruction

Local attribution: grwtsk contributors.

**Independent track:** incompressible Fourier Navier–Stokes, not an RH or zeta construction.

**Source inspection:** \`GRWTSK/FunctionalAnalysis/InnerProductSpacesAndTheirGeneralizationsHilbertSpaces/NavierStokesMomentGap.lean\`, blob \`10ecbe6e4e1a2ddf3f00ed71aec1608cb29bdc48\`, at the inspected baseline \`61a6bd039e770b16356832832017dcf1681e2ab1\`. **New mathematical source candidate:** \`NavierStokesZeroOutputCancellation.lean\`, initially published at \`f0ceecaa19afc3ed750aa338bd8d2d69102cf954\`. This article reviews the mathematical argument independently of compiler success. The original source selects the Fourier convention \(\hat f(\xi)=\int e^{-2\pi ix\cdot\xi} f(x)\,dx\), the convective factor \(2\pi i(\zeta\cdot a)b\), and the Leray projection at \(\xi=\eta+\zeta\).

## Exact theorem: zero additive output

For a source-labelled triad \(t=(\eta,\zeta)\), let \(\xi=\eta+\zeta\). Assume the first coefficient \(a\in\mathbb C^3\) is divergence-free at \(\eta\):
\(\eta\cdot a=0\), using the real-frequency/complex-coefficient bilinear pairing, not a mistaken conjugate pairing.

Because \(\zeta=\xi-\eta\),
\[
\zeta\cdot a = \xi\cdot a-\eta\cdot a = \xi\cdot a.
\tag{1}
\]
In particular, at \(\xi=0\), the convective scalar \(\zeta\cdot a=0\), hence
\[
\boxed{\mathcal B_{\eta,\zeta}(a,b)=
 2\pi i(\zeta\cdot a)\mathsf P_0 b=0.}
\tag{2}
\]
This is independent of the source's **explicit** zero-mode Leray convention \(\mathsf P_0=I\): the scalar already vanishes before projection.

For an arbitrary finite set \(S\) of ordered source-labelled triads and a source \(u\) divergence-free at every frequency, all triads with output zero cancel **individually**. Therefore
\[
\boxed{\sum_{t\in S,\ \eta_t+\zeta_t=0}
 \mathcal B_t(u_{\eta_t},u_{\zeta_t})=0.}
\tag{3}
\]
No pairwise matching, unproved symmetry between \(u_\xi\) and \(u_{-\xi}\), or summability limit is used. The Lean source candidates are \`navierStokesConvectiveTriad_zero_output\`, \`navierStokesLerayTriad_zero_output\` and \`finiteNavierStokesLerayConvolutionAt_zero\`.

**Independent second derivation:** In physical space, \(\nabla\cdot u=0\) implies \(u\cdot\nabla v=\nabla\cdot(u\otimes v)\) in the distributional sense whenever the product is defined. Integrating a periodic divergence over the torus gives zero spatial average; hence the convective term's **zero Fourier coefficient** vanishes. This checks (2)–(3) independently of the triad-level frequency substitution, but requires legitimate periodic/distributional hypotheses that the purely finite Fourier derivation does not need.

## Hostile test: nonzero low output is not the zero mode

For each integer \(N\ge2\), choose the integer frequencies and transverse coefficients
\[
\eta_N=(N,N,0),\quad \zeta_N=(1-N,-N,0),\quad \xi=(1,0,0),
\]
\[
a=(1,-1,0),\qquad b_N=(N,1-N,0).
\]
Direct calculation gives
\[
\eta_N\cdot a=0,\qquad\zeta_N\cdot b_N=0,\qquad
\zeta_N\cdot a=1.
\]
The source's Leray projection at \(\xi=(1,0,0)\) satisfies
\[
\mathsf P_\xi b_N=(0,1-N,0)\ne0.
\]
Thus high–high-to-low interactions are **not** annihilated by incompressibility or Leray projection merely because the output frequency is small.

This persists under normalized coefficient magnitudes. Put
\[
\tilde a=a/\sqrt2,\qquad
\tilde b_N=b_N/\sqrt{N^2+(N-1)^2}.
\]
Each has Euclidean norm one, both remain transverse, and
\[
\bigl\|\mathcal B_{\eta_N,\zeta_N}(\tilde a,\tilde b_N)\bigr\|
= \frac{2\pi}{\sqrt2}\frac{N-1}{\sqrt{N^2+(N-1)^2}}
\ge\frac{2\pi}{\sqrt{10}}\quad(N\ge2).
\tag{4}
\]
The last inequality follows from \(N\le 2(N-1)\), giving \(N^2+(N-1)^2\le5(N-1)^2\). The input frequencies tend to infinity, but the output stays \(\xi=(1,0,0)\), and the projected interaction has a strictly positive lower bound.

**Analytical obstruction:** A bound on the \(\ell^1\) norms of *a family* of input coefficient fields, together with divergence freedom, does not imply **uniform** high-frequency tightness. The example can be realized as a pair of one-mode coefficient fields with \(\ell^1\) norm one each and arbitrarily large frequencies. In contrast, for an **individual fixed** \(u\in\ell^1\), its tail mass \(a_R(u)\to0\), so the separately proved fixed-source estimate
\[
\|A_{u,K}-A_{s_Ru,K}\|_{\ell^1\to\ell^1}
 \le 2\pi K\,a_R(u)
\]
remains correct. Do not confuse *pointwise-in-source* convergence with uniform convergence over the unit ball of \(\ell^1\).

## Legitimate consumers and unresolved analysis

The zero-mode identity removes an entire output-zero sector of the exact finite nonlinear convolution without discarding any nonzero low modes. Its source does not establish existence or uniqueness of fluid solutions. The hostile normalized triads show why the full \(\ell^1\) unit ball is insufficient for a uniform shell-to-low-output perturbation estimate.

A genuinely source-derived **uniform** result requires a tightness/smoothing hypothesis justified by the evolution (for example, a bound on weighted Fourier mass, or compactness of a specified solution family), not a free tail allowance. For a fixed source and a finite output cutoff, the previous \(\ell^1\) comparison already proves a quantitative bound; the missing next statement is a uniform-in-time/source estimate in a genuine PDE function space with justified nonlinear propagation.

The imported stationary finite-rank moment matrix \(J=I+BC\) is **not** \(\mathcal B_{u,K}\). No identification of domains, coordinate energy or operator intertwining was established. Consequently no finite-moment gap, Navier–Stokes global regularity theorem, Yang–Mills result or QCD representation is asserted.

**Formal evidence:** The new Lean source is a proof candidate. Compilation, fresh kernel checking, transitive axiom audit and whole-import verification are NOT_RUN; this article's analytical calculations are separately inspectable.
