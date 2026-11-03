# Weighted-prefix supplier: exact Liouville doubling credit and remaining RH-strength correlation

Local mathematical attribution: grwtsk contributors. Work date: 2026-10-31 (America/Los_Angeles). Mathematical source comparison / source proof candidate; **not an unconditional proof of the weighted-prefix supplier or RH**.

## 1. Exact requested theorem and preserved source

At source review `grwtsk/math@373a5dbed1e61b2204c15776c4d3779a810dbe50` the strongest named arithmetic target is
`GRWTSK.NumberTheory.LiouvilleWeightedPrefixSquareCriterion.WeightedPrefixSquareAllRate`:

\[
\forall \eta>0\;\exists C_\eta\ge0\;\forall T\ge0:\qquad
J_\lambda(T):=\int_1^{e^T}\frac{L(x)^2}{x^2}\,dx\le C_\eta e^{\eta T},
\qquad L(x)=\sum_{1\le n\le x}\lambda(n),\quad \lambda(n)=(-1)^{\Omega(n)}.
\tag{A}
\]

The related `DyadicWeightedPrefixSquareSupplier` requires analogous bounds for every dyadic weighted square block. The source-relevant `UniformEnergySupplier` concerns the unchanged causal waveform, not a reweighted replacement. `WeightedPrefixSquareAllRate` is *not established* by the publication described here.

Source pins before publication: `LiouvilleWeightedPrefixSquareCriterion.lean` blob `d62ab5b81eb8cec7b95964c88f875d3c2ef1f244`, `LiouvilleCausalEnergyTarget.lean` blob `a00aaa07c067b4c88203372870b5d5d151de0de4`, upstream `Mathlib/NumberTheory/ArithmeticFunction/Liouville.lean` blob `72f70aaee6aade95868b72e6d4b2408f6bcad694` at Mathlib `d13f23b723b8a846827a245b89c10fc7d3f11612`. Pinned Lean `v4.34.1`. Verification of predecessor proof scripts remains separately pending; none is promoted by this increment.

## 2. Elementary rate-one estimate (proved on paper, candidate Lean script)

For each positive integer `n`, the *actual* Liouville coefficient has `|λ(n)|=1`. Hence `|L(k)| ≤ k` and

\[
0\le J_N:=\sum_{k=1}^N\frac{L(k)^2}{k(k+1)}
\le\sum_{k=1}^N\frac{k}{k+1}\le N.\tag{1}
\]

Its continuous analogue is `0≤Jλ(T)≤e^T-1`. Thus (A) holds at every rate `η≥1` with a harmless rate-independent constant. Nothing here establishes (A) for arbitrarily small positive `η`. The unconditional Vinogradov–Korobov saving in the predecessor review is `exp(T-o(T))` and likewise does not supply the missing range.

## 3. Exact finite all-shift expansion

With `a_n=λ(n)` for positive `n`, the complete source identity (an open named Lean interface in the predecessor, analytically a finite Fubini identity) is

\[
\begin{aligned}
J_N&=\sum_{k=1}^N\frac{(\sum_{n\le k}a_n)^2}{k(k+1)}\\
&=\sum_{1\le m,n\le N}a_m a_n
   \sum_{k=\max(m,n)}^N\left(\frac1k-\frac1{k+1}\right)\\
&=\sum_{1\le m,n\le N}a_m a_n
 \left(\frac1{\max(m,n)}-\frac1{N+1}\right).
\end{aligned}\tag{2}
\]

The ordered diagonal is
\[
D_N=\sum_{n=1}^N\left(\frac1n-\frac1{N+1}\right)
=H_N-\frac N{N+1},\qquad H_N=\sum_{n=1}^N\frac1n.
\tag{3}
\]

The ordered strictly off-diagonal aggregate is the predecessor's exact `completeWeightedShiftAggregate N`:

\[
S_N=2\sum_{1\le m<n\le N}\lambda(m)\lambda(n)
\left(\frac1n-\frac1{N+1}\right).
\tag{4}
\]

These are **full signed** sums; no independent-shift distribution, diagonal omission, or replacement kernel occurs.

## 4. A new exact Gödel-aligned doubling cancellation

The Gödel chart shift by `log 2` was already matched to arithmetic doubling and exact causal-kernel scaling. For *Liouville*, complete multiplicativity makes its arithmetic sign even simpler than the earlier Möbius parity branch:

\[
\lambda(2m)=-\lambda(m),\qquad \lambda(m)\lambda(2m)=-1
\quad(m\ge1).\tag{5}
\]

Write `M=floor(N/2)`. The selected ordered pair contribution `m ↔ 2m` in (4) is **exactly**

\[
\begin{aligned}
P_N&=2\sum_{m=1}^{M}\lambda(m)\lambda(2m)
 \left(\frac1{2m}-\frac1{N+1}\right)\\
&=-H_M+\frac{2M}{N+1}\le0.
\end{aligned}\tag{6}
\]

Thus, with no omitted boundary or sign,

\[
\boxed{B_N:=D_N+P_N
=H_N-H_M+\frac{2M-N}{N+1}.}\tag{7}
\]

For even `N=2M`, `B_N=∑_{M<n≤2M}1/n`. For odd `N=2M+1`, it is `∑_{M<n≤2M+1}1/n-1/(2M+2)`. Both cases yield the fully unconditional **uniform baseline bound**

\[
\boxed{0\le B_N\le1\qquad(N\ge0).}\tag{8}
\]

The upper bound follows directly since at most `M+1` terms survive, each at most `1/(M+1)`; the terminal correction is nonpositive. The lower bound follows directly from positivity in the even case and from the retained `n=M+1` term in the odd case.

This is a real cancellation of the logarithmically divergent positive diagonal using source-derived negative Liouville doubling pairs; it is **not** a smallness assumption for the complete covariance.

## 5. Exact remaining arithmetic debt

Define the complete non-doubling signed remainder, with every other ordered pair retained,

\[
R_N=2\sum_{\substack{1\le m<n\le N\\n\ne2m}}
\lambda(m)\lambda(n)
\left(\frac1n-\frac1{N+1}\right).
\tag{9}
\]

Equations (2)–(9) yield the exact identity and two-sided comparison

\[
\boxed{J_N=B_N+R_N,\qquad R_N\le J_N\le R_N+1.}\tag{10}
\]

It follows that **every-positive-rate upper bounds for the complete signed `R_N` are equivalent to the requested weighted-prefix supplier**, after the elementary continuous/discrete endpoint transfer. In particular, an O(1) baseline is insufficient: the all-rate estimate for `R_N`, including all remaining additive shifts and terminal weights, is the precise arithmetic frontier. The new Lean source proves the weaker but sufficient symmetric additive-one comparison conditional on the predecessor's still-unformalized `WeightedPrefixSquareShiftIdentity`; the review supplies the complete finite proof in (2).

An independent hostile check uses `a_n≡1` (a test sequence, **not Liouville**): then `L(k)=k`, `J_N=N+1-H_{N+1}`, and the same positive kernel grows linearly. Thus coordinate isometry, positive Gram, or finite dyadic covering alone cannot establish the supplier. Actual Liouville signs matter.

## 6. Why the outstanding theorem has RH strength

If (A) holds, set `X=2^j` and choose `σ>1/2`, `0<η<2σ-1`. Cauchy–Schwarz gives

\[
\int_X^{2X}\frac{|L(x)|}{x^{\sigma+1}}\,dx
\le\left(\int_X^{2X}\frac{L(x)^2}{x^2}\,dx\right)^{1/2}
     \left(\int_X^{2X}x^{-2\sigma}\,dx\right)^{1/2}
\ll_\sigma X^{(\eta+1-2\sigma)/2}.
\tag{11}
\]

The dyadic majorant is summable. Hence `F(s)=s∫_1^∞ L(x)x^{-s-1}dx` converges locally uniformly and is holomorphic for `Re(s)>1/2`. On `Re(s)>1`, partial summation and the Liouville Euler product give

\[
\zeta(s)F(s)=\zeta(2s).
\tag{12}
\]

Analytic continuation extends (12) throughout `Re(s)>1/2` away from the pole `s=1`. Since `ζ(2s)≠0` there, a zero of `ζ(s)` with `Re(s)>1/2` is impossible. By the functional-equation symmetry this proves RH. Conversely, the standard RH-conditional summatory bound `L(x)=O_δ(x^{1/2+δ})` implies (A). **This is an analytic argument about the logical strength of the target, not a source-bound Lean proof of RH, and no RH premise is inserted into the new finite lemmas.**

## 7. Publication and verification boundaries

Candidate module: `GRWTSK/NumberTheory/ZetaAndLFunctionsAnalyticTheory/LiouvilleWeightedPrefixDoubling.lean`, with unchanged source imports, unconditional finite coefficient and harmonic statements, and a proof of `(10)` conditional on the original named finite expansion interface. No Lean `sorry`, `admit` or added `axiom` is intended. Historical alternatives and original endpoints remain unchanged.

Diagnostics: exact rational arithmetic on every `N=0,...,144`; full ordered all-shift reconstruction; exact doubling credit, terminal correction and the bounded baseline; 504,416 assertion groups; and the constant-sign hostile control. These are **finite checks only**. Lean parser, compilation, expected-interface check, fresh kernel replay, transitive axiom audit, and analytic RH acceptance are all **NOT_RUN** in this session. A submitted verification issue is passive and is not authorization to run a native executor.

**Unresolved:** Prove `R_N=O_η((N+1)^η)` simultaneously for every `η>0` without assuming RH or an equivalent signed all-shift bound. That genuinely arithmetic cancellation has not been obtained; claiming `WeightedPrefixSquareAllRate` proved from (5)–(8) would be circular/false.
