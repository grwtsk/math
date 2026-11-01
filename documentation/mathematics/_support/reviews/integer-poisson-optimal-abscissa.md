# Optimal absolute-convergence abscissa for the integer Poisson zero frame

Local mathematical attribution: grwtsk contributors. Research date: 2026-11-01.

**Disposition.** The zero-side frame is sharpened unconditionally by moving the sampling line from `Re s = 2` to the optimal line

\[
\sigma_* = \frac{1+\sqrt2}{2}>1.
\]

This remains inside the half-plane of absolute convergence for the prime-power logarithmic derivative. The new frame is

\[
D_Z\le 2E_Z^*,
\]

so an arithmetic energy below one has absolute one-zero resolution. Under the already-published exact identity

\[
\operatorname{primeWindowFamilyEnergy}
=4\operatorname{centeredPacketFamilyEnergy},
\]

the centered p-adic threshold improves from `32/289` to `1/4`, conditional on the still-open source-exact zero-to-prime comparison.

The Lean file is a `SOURCE_PROOF_CANDIDATE`; compilation, exact expected types, fresh-kernel replay, and transitive axiom audit are `NOT_RUN`.

## 1. Canonical source and nearest-integer geometry

Let `known` be a certified on-line subset of the canonical positive-height nontrivial zeros through integer height `Z`. Put

\[
U_Z=\operatorname{positiveHeightHead}(Z)\setminus\mathrm{known},
\qquad
D_Z=\sum_{\rho\in U_Z}m(\rho),
\]

where `m(rho)` is the actual analytic multiplicity.

For `rho=beta+i gamma`, assign the nearest integer

\[
b(\rho)=\left\lfloor\gamma+\frac12\right\rfloor.
\]

Then `0<=b(rho)<=Z` and

\[
|b(\rho)-\gamma|^2\le\frac14.
\]

At a vertical line `Re s = sigma>1`, write

\[
a=\sigma-\beta,
\qquad
d=b(\rho)-\gamma,
\qquad
K_{\sigma,\rho}(b)=\frac{a}{a^2+d^2}.
\]

The critical strip gives `sigma-1<a<sigma`.

## 2. Optimization of the vertical line

For fixed `a`, the worst nearest-bin displacement is `d^2=1/4`, so the endpoint function is

\[
f(a)=\frac{a}{a^2+1/4}.
\]

The best uniform line balances the two possible endpoint losses:

\[
f(\sigma-1)=f(\sigma).
\]

Solving gives

\[
\sigma_* = \frac{1+\sqrt2}{2}.
\]

For this value the admissible interval is

\[
\frac{\sqrt2-1}{2}<a<\frac{\sqrt2+1}{2}.
\]

The quadratic identity

\[
\left(a-\frac{\sqrt2-1}{2}\right)
\left(\frac{\sqrt2+1}{2}-a\right)\ge0
\]

is equivalent to

\[
a^2+\frac14\le\sqrt2\,a.
\]

Since `d^2<=1/4`,

\[
K_{\sigma_*,\rho}(b(\rho))
\ge \frac{a}{\sqrt2 a}
=\frac1{\sqrt2}.
\]

This constant is optimal for a single vertical line and unit-spaced nearest-integer samples: any larger uniform constant would fail near one of the two critical-strip boundary endpoints. The line remains strictly to the right of one, so no analytic continuation is being used to define the associated prime-power Dirichlet series.

## 3. Improved fixed lower frame

Define

\[
P_k^*=\sum_{\rho\in U_Z}m(\rho)
\frac{\sigma_*-\Re\rho}
{(\sigma_*-\Re\rho)^2+(k-\Im\rho)^2},
\]

\[
E_Z^*=\sum_{k=0}^{Z}(P_k^*)^2.
\]

Let `M_k` be the multiplicity assigned to nearest bin `k`. Positivity gives

\[
P_k^*\ge\frac{M_k}{\sqrt2}.
\]

Because `M_k` is a nonnegative integer,

\[
(P_k^*)^2\ge\frac12M_k^2\ge\frac12M_k.
\]

Summing the exact bin partition yields

\[
\boxed{D_Z\le2E_Z^*.}
\]

There is no height-cardinality loss. Multiple zeros in one bin improve the inequality.

The predecessor line `Re s=2` gave

\[
64D_Z\le289E_Z.
\]

The optimized line raises the per-zero energy constant from `64/289` to `1/2`.

## 4. One-zero and p-adic thresholds

If an arithmetic sample family on the same grid has energy `E_A` satisfying

\[
E_Z^*\le E_A<1,
\]

then

\[
D_Z<2,
\]

and hence `D_Z<=1`.

For the literal prime-window family, the already-published centered source identity gives

\[
E_A
=\operatorname{primeWindowFamilyEnergy}
=4\operatorname{centeredPacketFamilyEnergy}.
\]

Therefore the sufficient centered threshold becomes

\[
\boxed{
\operatorname{centeredPacketFamilyEnergy}<\frac14.
}
\]

This is more than twice the previous allowance `32/289`.

## 5. Exact remaining obligations

The optimization does not prove either remaining load-bearing theorem.

1. A completed explicit-formula or equivalent source theorem must prove

   ```text
   optimalPoissonEnergy Z known <= primeWindowFamilyEnergy Z X H
   ```

   for the selected actual windows, with known-zero subtraction, negative-height terms, outer tails, gamma/pole/trivial-zero corrections, and endpoint conventions all paid.

2. The actual centered p-adic packet must satisfy

   ```text
   centeredPacketFamilyEnergy Z X H u v < 1/4
   ```

   cofinally, while retaining the signed rough-prime subset layers and exact floor carries.

The first theorem is a source comparison. The second is the new arithmetic cancellation estimate. Neither follows from the improved frame alone.

## 6. Verification boundary

- mathematical optimization and frame: `WRITTEN`;
- Lean source: `SOURCE_PROOF_CANDIDATE`;
- compilation: `NOT_RUN`;
- expected types: `NOT_RUN`;
- fresh kernel: `NOT_RUN`;
- transitive axiom audit: `NOT_RUN`;
- optimal zero-to-prime comparison: `UNPROVED`;
- centered p-adic upper bound below `1/4`: `UNPROVED`;
- cofinal numerical witness: `UNPROVED`;
- RH: `UNPROVED`.
