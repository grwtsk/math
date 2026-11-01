# Prime-window one-zero resolution from the p-adic Möbius seam

Local mathematical attribution: grwtsk contributors. Research date: 2026-10-31.

**Disposition.** This note connects the exact cofinal two-unit zero-count criterion to the source-preserving Möbius--PNT prime-window seam. It proves the finite algebraic transfer and identifies the exact arithmetic/explicit-formula threshold that would construct a cofinal numerical witness. It does **not** supply the missing zero-side lower frame, the centered large-prime cancellation estimate, an unconditional cofinal zero inventory, or RH. The Lean files are source proof candidates; compilation, expected types, fresh-kernel replay, and transitive axiom audit are `NOT_RUN`.

## 1. Source pins and unchanged objects

The connection is made against `grwtsk/math/main@ab9d4b6892af6e99e63d276bfcd69770fe4c0727`.

- `PadicMobiusPrimeWindowSeam.lean`, blob `027d24046d0563be5cd66e01d7ecf3235d99f801`, defines the literal von Mangoldt window `pntWindow`, the exact divisor/log packet `divisorLogWindow`, the floor carry, the short-row one-hit criterion, and the exact linearity law for a coefficient split `u-2v`.
- `CofinalTwoUnitNumericalReflectionGap.lean`, blob `b32437383f21a4d44f23b4f56f843c0e19725927`, proves that a strict cofinal count gap is RH-equivalent, but supplies no numerical family.
- `CofinalTwoUnitEffectiveRateBridge.lean` is published together with this note. It proves that the strict count gap is exactly the assertion that at most one positive-height analytic-multiplicity unit is uncredited, and that a relative deficit `(q-r)N<=qC` must also satisfy the same-window absolute inequality `rN<2q`.
- Lean toolchain: `leanprover/lean4:v4.34.1`; Mathlib: `d13f23b723b8a846827a245b89c10fc7d3f11612`.

No coefficient, endpoint convention, zero subtype, or analytic multiplicity is replaced.

## 2. Exact arithmetic centering of the rough-prime packet

For integers `X,H>=0`, set

\[
R_{X,H}=\operatorname{pntWindow}(X,H)-H.
\]

Suppose the actual Möbius coefficient in the complete divisor packet has the source-preserving split

\[
\mu=u-2v.
\]

The existing finite linearity theorem gives

\[
R_{X,H}=W_{X,H}(u)-2W_{X,H}(v)-H,
\]

where `W_{X,H}(f)=divisorLogWindow X H f` retains the exact multiplier, floor carry, and right-closed window.

Define the centered large-prime packet

\[
C_{X,H}(u,v)
=
W_{X,H}(v)-\frac{W_{X,H}(u)-H}{2}.
\]

Then, identically,

\[
\boxed{R_{X,H}=-2C_{X,H}(u,v)},
\qquad
\boxed{R_{X,H}^{2}=4C_{X,H}(u,v)^{2}}.
\]

This corrects a potentially misleading formulation of the remaining problem. The large-prime packet `W(v)` is not expected to be small by itself. The fixed-cutoff Euler-product calculation in the predecessor review shows that `W(u)` and `2W(v)` carry matching large pole-order contributions. The source-facing target is the **centered difference** above.

For the squarefree p-adic decomposition from the predecessor review,

\[
u=U_y=\mu^2a_y,
\qquad
v=V_y=\mu^2b_y,
\]

so the exact target is

\[
V_y\text{-window}
\approx
\frac{U_y\text{-window}-H}{2},
\]

with the approximation measured before any outer absolute values or subset-layer truncation.

## 3. Count energy and the strict two-unit threshold

Let

\[
N_Z=\operatorname{positiveHeightCount}(Z),
\qquad
C_Z=\sum_{\rho\in K_Z}m(\rho),
\qquad
D_Z=N_Z-C_Z,
\]

where `K_Z` is a certified subset of actual positive-height zeta zeros and every member is proved on the critical line.

Assume a source-exact explicit-formula/frame theorem supplies a number `kappa>0` such that each uncredited analytic-multiplicity unit costs at least `kappa` in the selected prime-window energy:

\[
D_Z\,\kappa\le R_{X,H}^{2}.
\tag{1}
\]

If the arithmetic side also satisfies

\[
R_{X,H}^{2}<2\kappa,
\tag{2}
\]

then

\[
\boxed{D_Z\le1}.
\]

Indeed, `D_Z>=2` would imply `2*kappa<=D_Z*kappa<=R^2`, contradicting (2). Therefore

\[
N_Z\le C_Z+1<C_Z+2,
\]

which is exactly the finite certificate consumed by the cofinal two-unit return.

The new Lean theorem is `deficit_le_one_of_energy_gap`. Its cofinal wrapper proves

\[
\boxed{
\text{cofinal prime-window energy certificates}
\Longrightarrow
\text{cofinal one-unit residual}
\Longrightarrow
\mathrm{RH}.}
\]

The first implication is finite count/energy algebra. The second is the existing source-bound count theorem. The missing source is fully visible in (1)--(2).

## 4. Exact impact on the p-adic large-prime seam

Using `R^2=4C^2`, condition (2) is equivalent to

\[
\boxed{2C_{X,H}(u,v)^2<\kappa.}
\tag{3}
\]

The matching lower bound is

\[
D_Z\kappa\le4C_{X,H}(u,v)^2.
\tag{4}
\]

Thus the p-adic seam constructs the cofinal numerical witness if one proves (3)--(4) on a cofinal family of zero heights, with the same exact prime window and source decomposition.

Under a normalization in which one uncredited multiplicity unit costs at least one, the arithmetic resolution is explicit:

\[
2C_{X,H}(u,v)^2<1,
\qquad\text{equivalently}
\qquad
|C_{X,H}(u,v)|<\frac1{\sqrt2}.
\tag{5}
\]

This is **absolute one-zero resolution**. A statement such as

\[
C_{X,H}=o(H)
\]

or a fixed power saving can remain unbounded and does not imply (5). This is the arithmetic analogue of the count result that a credited proportion tending to one can still leave one reflected simple pair forever.

The parameter `kappa` prevents a normalization trick. Scaling the test by a factor `a` multiplies both the arithmetic energy and the per-zero cost by `a^2`; the ratio and the strict threshold are unchanged. Progress must come from a better source-sensitive test or stronger signed cancellation, not from rescaling.

## 5. What the predecessor estimates pay

The predecessor seam already supplies:

1. exact floor carry and one-hit localization for `d>H`;
2. exact finite Möbius/log/von-Mangoldt transport;
3. exact signed subset expansion of the rough-prime parity packet;
4. an unconditional moving-cutoff estimate for the **unweighted** squarefree small-prime surrogate `U_y`;
5. the fixed-cutoff Euler-product pole-order comparison.

None of these proves (3) or (4).

- The `U_y` prefix estimate is not an estimate for the complete log-weighted packet `W(U_y)` at one-zero resolution.
- The fixed-cutoff Laurent cancellation locates the center but does not give a uniform finite-window error when `y` grows.
- The complete signed pair identity turns `R^2` into an arithmetic energy but does not provide the zero-side lower frame (1).
- Taking absolute values in the rough-prime subset size destroys the binomial cancellation that defines `V_y`.
- A relative PNT statement is not automatically an absolute sub-two certificate.

## 6. The new bounded research target

A direct source-preserving completion now has two explicit parts.

### Zero-side lower frame

Construct cofinally many data `(Z,X,H,K_Z,kappa)` with

\[
K_Z\subseteq\operatorname{positiveHeightHead}(Z),
\quad
K_Z\text{ on line},
\quad
(N_Z-C_Z)\kappa\le R_{X,H}^{2}.
\]

This must come from an actual explicit formula, Fejér/Gram identity, or contour argument. It may not be postulated as a free field of a certificate.

### Arithmetic centered-packet upper bound

For the same data and the actual p-adic Möbius split, prove

\[
2\left|
W_{X,H}(V_y)-\frac{W_{X,H}(U_y)-H}{2}
\right|^2<\kappa.
\]

The floor carry, squarefree filter, rough-prime subset layers, and original logarithmic weights remain unchanged.

A finite family of windows may be aggregated, provided both sides are added before comparison. If window `j` has energy `E_j` and per-zero lower cost `kappa_j`, the valid combined criterion is

\[
D_Z\sum_j\kappa_j\le\sum_jE_j
<2\sum_j\kappa_j.
\]

Separate absolute estimates that erase cross-window signs do not supply this inequality.

## 7. Formalization package and verification boundary

Published source candidates:

- `CofinalTwoUnitEffectiveRateBridge.lean`;
- `PadicMobiusCofinalTwoUnitBridge.lean`.

The second file proves the exact source residual/centered-packet identities, the count-energy threshold, the finite one-unit return, and the cofinal implication to RH under the visible certificate predicate.

Still unproved:

- the exact Möbius divisor-window bridge as an accepted Lean theorem if it is not supplied through the certificate equality;
- a source-exact zero-side lower frame with positive `kappa`;
- a cofinal centered large-prime packet upper estimate;
- an unconditional cofinal numerical inventory;
- RH.

Verification status for every new declaration: compilation `NOT_RUN`; expected types `NOT_RUN`; fresh kernel `NOT_RUN`; transitive axiom audit `NOT_RUN`; native execution `NOT_RUN`.
