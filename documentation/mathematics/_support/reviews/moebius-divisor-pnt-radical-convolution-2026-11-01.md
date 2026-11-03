# PNT-to-original-divisor-Gram transfer through the radical convolution

Date: 2026-11-01 (America/Los_Angeles). Local mathematical attribution: grwtsk contributors; OpenAI ChatGPT mathematical analysis and source-candidate assistance. **Ordinary mathematical proof**, NOT new Lean kernel acceptance and NOT a proof of RH.

## Source identity and distinct arithmetic roles

Pinned actual source: `MertensPrimitive.lean` blob `45e06c371d67bcf8c939d20a95fcbc63570546fa`; original right-causal `pickupResponse`, literal original integer source `moebiusReal` and exact ordered `pickupCross`. Predecessor `MoebiusDivisorCausalGramCollapse.lean` blob `6216cb9c8bc590a2dfe84132b8267c90a6622148` proves as source candidates the exact proper-divisor return. None of these original definitions is changed.

For every n>=1, put
  C(n)=sum_(d|n) mu(d)/sqrt(d) = product_(p|n)(1-1/sqrt p),
  b(n)=mu(n)*C(n),
  rad(n)=product_(p|n) p,
  h(n)=1/sqrt(rad(n)).

Here h(1)=1 and h(p^k)=p^(-1/2) for EVERY k>=1. Define the Dirichlet convolution `mu*h`. Both this convolution and b are multiplicative functions of positive n. At prime powers:

- k=1: (mu*h)(p)=h(p)-h(1)=p^(-1/2)-1=mu(p)*C(p).
- k>=2: (mu*h)(p^k)=h(p^k)-h(p^(k-1))=0=mu(p^k)*C(p^k).

Thus the exact identity is
  b(n) = (mu*h)(n)       [all n>=1].

It includes squareful zero coefficients and uses actual squarefree-support Möbius arithmetic. It is NOT a geometric observer, independent hardware measurement, or an assumed sign law.

## Finite Dirichlet-prefix identity

For N>=1 define A(N)=sum_(1<=n<=N) b(n), and M(k)=sum_(1<=m<=k) mu(m). Source-exact finite Dirichlet convolution gives

  A(N) = sum_(1<=d<=N) h(d) M(floor(N/d)).

The new Lean candidate uses the EXACT pinned `ArithmeticFunction.sum_Ioc_mul_eq_sum_sum` to prove the corresponding identity for the explicitly constructed `radicalConvolution` with no missing positive-integer endpoint. `radicalConvolution_prefix_abs_le` follows from the triangle inequality and h(d)>=0. `radicalConvolution_prefix_twoZone` retains a genuine PNT-tail hypothesis `ActualMertensTailAt K delta` and uses the old unconditional |M(m)|<=m below the cutoff. The prime-power coefficient identification b=mu*h remains a separately named UNPROVED Lean proposition `OriginalWeightedRadicalConvolution`, not a theorem claim.

## Absolutely summable arithmetic kernel, NO PNT required

For every real theta>1/2, the nonnegative Dirichlet series H_theta converges:

  H_theta = sum_(d>=1) h(d)/d^theta
          = product_p [1 + p^(-theta-1/2)/(1-p^(-theta))] < infinity.

Indeed the local increment is O_theta(p^(-theta-1/2)) and theta+1/2>1, so the Euler product converges by comparison with sum_(m>=2)m^(-theta-1/2). In particular H_1<infinity.

This is **elementary unconditional arithmetic/analysis**; formal Lean real-series/Euler-product verification is an explicit `RadicalDirichletKernelSummable` target, NOT_RUN.

## Exact quantitative PNT/Mertens transfer

For any N>=1, a genuine original Mertens tail |M(k)|<=delta*k for k>=K and the universal |M(k)|<=k give

  |A(N)|/N <=
    delta * sum_(1<=d<=N, floor(N/d)>=K) h(d)/d
       + sum_(1<=d<=N, floor(N/d)<K) h(d)/d
   <= delta*H_1 + sum_(d>N/K) h(d)/d.

The second tail tends to zero since H_1 converges. The classical PNT implies for every delta>0 that such a K exists, hence A(N)=o(N). This is a TRUE classical-PNT-level theorem, not a proof of PNT within pinned Lean and not an RH-strength Mertens power saving.

A fully quantitative conditional version: if |M(x)|<=B0*x^theta for all x>=1 and fixed theta>1/2, then
  |A(x)| <= B0*H_theta*x^theta.
This follows directly from the finite convolution and nonnegativity h.

## Independent original response-area Stieltjes identity

For B=e^T>=1 and 1<=n<=B, define the ACTUAL original response area
  R_B(n) = integral_0^(log B) r_n(u) du.

The original causal birth definition gives, with NO new kernel,

  R_B(n)=2*[log(B/n)/sqrt(n) - 2*(1/sqrt(n)-1/sqrt B)].

Differentiate this expression with respect to the *continuous lower index* x in [1,B]:
  d/dx R_B(x) = -x^(-3/2)*log(B/x),   R_B(B)=0.

Therefore
  R_B(n)=integral_n^B t^(-3/2)*log(B/t) dt.

Finite Fubini (for n<=floor B) yields the EXACT weighted-prefix identity
  S(B) := sum_(n<=B) b(n)*R_B(n)
        = integral_1^B A(t)*t^(-3/2)*log(B/t) dt,
where A(t)=sum_(n<=floor t)b(n). Every original integer birth and zero symbol is retained. In particular n=1 contributes b(1)*R_B(1)=R_B(1); it is subtracted separately in the proper-divisor packet.

From A(t)=o(t), and the uniform trivial bound |A(t)|<=H_1*t, substitute t=By:
  S(B)/sqrt(B)
    = integral_(1/B)^1 [A(By)/(By)] * y^(-1/2)*log(1/y) dy.
The bracket tends to 0 for any fixed y>0 and is bounded by H_1; the comparison kernel has integral 4. Dominated convergence gives S(B)=o(sqrt B).

The original exact sector identity is
  X_div(T)=4*(S(e^T)-R_(e^T)(1))
             -2*sum_(2<=n<=floor(e^T))mu(n)^2*K_T(n,n).

The n=1 response area is at most 2T, and the original diagonal D(T) is between 0 and 2T^2. Consequently

  X_div(T)=o(exp(T/2)) as T->infinity.

This improves the earlier unconditional ABSOLUTE O(exp(T/2)) divisor envelope at the classical-PNT level, but it is NOT an all-positive-rate RH estimate. Note that one-sided upper alone is not enough to remove the `X_incomp` packet: the actual sign compensation must remain.

## Explicit fixed-power transfer (conditional arithmetic input, not asserted)

If 1/2<theta<1 and |M(x)|<=B0*x^theta, put a=theta-1/2>0. From |A(x)|<=B0*H_theta*x^theta and the same Stieltjes integral,

  |S(e^T)| <= B0*H_theta*integral_1^(e^T) t^(theta-3/2)*log(e^T/t) dt
            = B0*H_theta * [ (exp(a*T)-1)/a^2 - T/a ]
            <= B0*H_theta * exp(a*T)/a^2.

The source's exact n=1 and diagonal charges yield the fully explicit result for T>=0:

  |X_div(T)| <= (4*B0*H_theta/a^2)*exp(a*T) + 8*T + 4*T^2.

The exponent is theta-1/2, not 2*theta-1. An actual fixed-power Mertens saving theta<1 is NOT known unconditionally. Neither this conditional estimate nor the classical-PNT little-o estimate controls the full original incomparable sector.

## Independently executed finite checks, not acceptance evidence

Independently computed a real Möbius sieve through N=100,000; formed the exact multiplicative C(n), the direct divisor convolution mu*h using a sieve, and computed the maximum absolute coefficient difference:
  max_(1<=n<=100000) |mu(n)C(n)-(mu*h)(n)| = 3.3306690738754696e-16
in ordinary 64-bit floating arithmetic. Also computed
  sum_(n<=100000) h(n)/n = 3.0585191092257444 (partial sum; not the infinite H_1).

For the original response-area identity, numerical quadrature and the closed original formula agree within standard floating rounding at (B,n)=(4,1),(4,2),(4,3),(16,1),(16,2),(16,3),(256,1),(256,2),(256,3); exact birth n=B gives zero. Prior independently recomputed proper-divisibility packet values: B=16:-5.479730802652804; B=64:-21.796369778582417; B=256:-54.06330308042593; B=1024:-106.02354634048339; B=4096:-180.6245199067054. These are finite diagnostics only; they cannot establish the infinite sums, PNT, RH or Lean kernel acceptance.

## Lean closure and unsolved RH arithmetic

New source candidate: `GRWTSK/NumberTheory/ZetaAndLFunctionsAnalyticTheory/MoebiusDivisorPNTTransfer.lean`. Candidate source theorems: `radicalWeight_zero`, `radicalWeight_nonneg`, `radicalConvolution_prefix_eq_Mertens`, `radicalConvolution_prefix_abs_le`, `radicalConvolution_prefix_twoZone` and exact original signed-source return. Exact necessary UNPROVED Lean Prop targets: `OriginalWeightedRadicalConvolution`, `RadicalDirichletKernelSummable`, `OriginalResponseAreaStieltjes`, `ClassicalPNTProperDivisorHalfRate`. No new axiom, `sorry` or `unsafe` proof hole authored.

Pinned Lean v4.34.1 / Mathlib d13f23b723b8a846827a245b89c10fc7d3f11612. Compilation, expected-type checking, fresh kernel replay and transitive axiom auditing NOT_RUN; no native compiler found. The classical PNT/Mertens input `StrongMertensAbel.ClassicalPNTMertensTail` is explicitly external to the Lean proof, not assumed proved by the candidate.

The RH-facing obligation is **still** an all-positive-rate one-sided upper bound for the complete original `pickupCross(T)=X_div(T)+X_incomp(T)` on one fixed affinely frequent set. The `X_incomp` signed compensator may be exponentially larger than the old `o(exp(T/2))` divisor packet and no independently justified cancellation of its complete long-distance sector has been supplied. Mathematical result: a noncircular PNT-scale gain for the comparable-index sector, NOT RH.
