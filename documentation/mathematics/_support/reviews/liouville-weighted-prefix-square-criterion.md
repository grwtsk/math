# Weighted Liouville prefix squares: an exact Hardy route to uniform causal energy

Local mathematical attribution: grwtsk contributors. Research date: 2026-10-31.
Research scope: `6ae605b4-a7b4-83e8-9ada-ee9c9089476b`.

**Disposition.** The requested all-positive-rate Liouville causal-energy estimate
is not proved. This note derives a complete source-exact sufficient criterion
which is averaged rather than pointwise, proves its transfer with explicit
constants, identifies its exact all-shift correlation expansion, and shows why
the strongest currently available Vinogradov--Korobov input still misses it by
a linear physical-time exponent. The criterion is RH-strength; it is not
presented as an unconditional proof of RH.

**Repository delivery.** The Lean source candidate, this review, a passive
static verification target, and a source-bound literature-ledger shard are
published directly on `grwtsk/math/main` through a guarded non-force update.
The exact publication parent, blobs, toolchain pins, and `NOT_RUN` facets are
recorded in the static target. Source publication is not theorem acceptance.

## 1. Unchanged source and target

For positive integers `n`, retain

\[
r_n(u)=2\max(n^{-1/2}-e^{-u/2},0),
\]

\[
F_\lambda(u)=\sum_{n\le e^u}\lambda(n)r_n(u),
\qquad
H_\lambda(T)=\int_0^T F_\lambda(u)^2\,du.
\]

The target remains

\[
\forall\varepsilon>0\;\exists C_\varepsilon\ge0\;\forall T\ge0:
\qquad H_\lambda(T)\le C_\varepsilon e^{\varepsilon T}.
\tag{U}
\]

Let

\[
L(x)=\sum_{n\le x}\lambda(n).
\]

## 2. Exact Abel primitive

The original response has the exact finite Abel representation

\[
F_\lambda(u)=\int_1^{e^u}L(x)x^{-3/2}\,dx.
\tag{1}
\]

Substitute `x=e^v`. Since `dx=e^v dv`, equation (1) becomes

\[
\boxed{
F_\lambda(u)=\int_0^u G(v)\,dv,
\qquad
G(v)=e^{-v/2}L(e^v).
}
\tag{2}
\]

All floor discontinuities are harmless: `L(e^v)` is a finite step function,
the newly born response is zero at its birth, and (2) is an ordinary finite
Lebesgue/Riemann integral identity on every compact interval.

## 3. Finite-horizon Hardy transfer

For every `u>=0`, Cauchy--Schwarz gives

\[
|F_\lambda(u)|^2
\le u\int_0^u |G(v)|^2\,dv.
\]

Integrate over `0<=u<=T` and reverse the nonnegative integration order:

\[
\begin{aligned}
H_\lambda(T)
&\le \int_0^T u\int_0^u |G(v)|^2\,dv\,du\\
&=\frac12\int_0^T(T^2-v^2)|G(v)|^2\,dv\\
&\le\frac{T^2}{2}\int_0^T e^{-v}L(e^v)^2\,dv.
\end{aligned}
\]

Changing variables back to `x=e^v` gives the exact source-facing estimate

\[
\boxed{
H_\lambda(T)
\le \frac{T^2}{2}J_\lambda(T),
\qquad
J_\lambda(T)=\int_1^{e^T}\frac{L(x)^2}{x^2}\,dx.
}
\tag{3}
\]

There is no exceptional set and no discarded signed term. The only inequality
is Cauchy--Schwarz after the complete Liouville prefix has been formed.

## 4. Explicit all-positive-rate transfer

Assume the averaged arithmetic supplier

\[
\forall\eta>0\;\exists A_\eta\ge0\;\forall T\ge0:
\qquad J_\lambda(T)\le A_\eta e^{\eta T}.
\tag{A}
\]

Fix `epsilon>0` and use (A) at `eta=epsilon/2`. The exponential series gives

\[
\frac{T^2}{2}\le \frac4{\varepsilon^2}e^{\varepsilon T/2}
\qquad(T\ge0).
\]

Combining with (3),

\[
\boxed{
H_\lambda(T)
\le \frac{4A_{\varepsilon/2}}{\varepsilon^2}
 e^{\varepsilon T}.
}
\tag{4}
\]

Thus (A) proves `UniformEnergySupplier` with an explicit constant and no loss
in the target quantifier order.

The criterion is weaker in shape than a pointwise estimate: isolated large
prefixes are permitted if their weighted square mass is small. It is still
RH-strength. Under RH the classical bound
`L(x)=O_delta(x^(1/2+delta))` implies (A); conversely (A) implies (U), and the
existing causal Laplace return from (U) excludes zeta zeros to the right of the
critical line.

## 5. Exact discrete and all-shift identities

For an integer `N>=1`, define

\[
J_N=\int_1^{N+1}\frac{L(x)^2}{x^2}\,dx.
\]

The prefix is constant on `[k,k+1)`, so

\[
\boxed{
J_N=\sum_{k=1}^N\frac{L(k)^2}{k(k+1)}.
}
\tag{5}
\]

Expanding the square and reversing finite sums gives

\[
\boxed{
J_N=
\sum_{m,n\le N}\lambda(m)\lambda(n)
\left(\frac1{\max(m,n)}-\frac1{N+1}\right).
}
\tag{6}
\]

Separate the diagonal and put `h=n-m` in the upper triangle:

\[
\begin{aligned}
J_N={}&
\sum_{n=1}^N\left(\frac1n-\frac1{N+1}\right)\\
&+2\sum_{h=1}^{N-1}\sum_{m=1}^{N-h}
\lambda(m)\lambda(m+h)
\left(\frac1{m+h}-\frac1{N+1}\right).
\end{aligned}
\tag{7}
\]

Equation (7) is the exact complete weighted all-shift consumer. It permits
cancellation between shifts; replacing its outer sum by absolute values or a
supremum produces a substantially stronger and generally unusable premise.

A concrete dyadic sufficient target is

\[
\boxed{
\forall\eta>0\;\exists C_\eta\ge0\;\forall j\ge0:
\sum_{2^j\le k<2^{j+1}}
\frac{L(k)^2}{k(k+1)}
\le C_\eta 2^{\eta j}.
}
\tag{8}
\]

Geometric summation of (8), followed by (3), proves (U). This is the next
bounded averaged-prefix problem; it does not require pointwise square-root
control at every `k`.

## 6. Quantitative failure of the current unconditional input

The strongest current unconditional source-bound input in the repository is
the Vinogradov--Korobov scale

\[
|L(x)|\ll x\exp\{-c\Phi(\log x)\},
\qquad
\Phi(t)=\frac{t^{3/5}}{(\log(e+t))^{1/5}}.
\]

Inserted into `J_lambda`, this gives at best

\[
J_\lambda(T)\ll\exp\{T-c'\Phi(T)\}
\tag{9}
\]

(after splitting away a bounded early interval). Equation (3) then gives the
same rate-one main exponent for `H_lambda`.

For every fixed `delta<1`,

\[
\frac{\exp(T-c'\Phi(T))}{\exp(\delta T)}
=
\exp((1-\delta)T-c'\Phi(T))\longrightarrow\infty,
\]

because `Phi(T)=o(T)`. This is the first precise failed inequality. Neither a
polynomial factor, an `exp(O(sqrt T))` sieve norm, nor finite iteration of the
same VK input changes the coefficient of `T` from one to every positive rate.

## 7. Relation to external correlation theorems

Fixed-form ordinary two-point Chowla estimates and logarithmically averaged
all-shift results do not directly prove (7). A bound for each fixed shift with
a power-of-logarithm saving still leaves a growing family of order `N`; form-
dependent constants are not summable without a new uniform envelope. Moment or
almost-all-shift bounds must also be inserted before the complete outer signed
sum is replaced by absolute values.

The exact target is therefore not another representation of `L(k)^2`, but a
source-matched estimate of the weighted complete aggregate (7), or the dyadic
block mean square (8).

## 8. Novelty and literature boundary

Weighted mean-square hypotheses for the Mertens function and Hardy-space
criteria for RH are classical; Titchmarsh discusses the stronger weak Mertens
hypothesis `integral_1^X (M(x)/x)^2 dx = O(log X)`. No new general RH criterion
is claimed.

The programme-specific contribution is:

1. the exact transfer (3) for the repository's unchanged causal response;
2. the explicit constant in (4);
3. the exact Liouville all-shift identity (7) with its terminal weight;
4. the dyadic averaged-prefix supplier (8);
5. the quantified demonstration that the current VK-scale result misses this
   supplier by a linear physical-time exponent.

## 9. Formalization and verification boundary

Published source candidate:
`GRWTSK/NumberTheory/ZetaAndLFunctionsAnalyticTheory/LiouvilleWeightedPrefixSquareCriterion.lean`.

Proved in the source candidate: the constant assembly from the named Hardy,
nonnegativity, polynomial absorption, and averaged-prefix suppliers.

Open named formalization targets:

- `WeightedPrefixSquareMomentNonnegative`;
- `LiouvilleAbelHardyTransfer`;
- `WeightedPrefixSquareContinuousDiscreteIdentity`;
- `WeightedPrefixSquareShiftIdentity`;
- `DyadicWeightedPrefixSquareImpliesAllRate`.

Compilation, expected types, fresh-kernel replay, native execution and
transitive axiom audit are all `NOT_RUN`. The averaged supplier, uniform energy,
complete endpoint estimate and RH are `UNPROVED`.
