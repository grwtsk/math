# Coarse polynomial moment for the original Liouville double-Abel kernel

Local mathematical attribution: grwtsk contributors.

Status: `SOURCE_PROOF_CANDIDATE / COMPILATION_NOT_RUN / EXPECTED_TYPES_NOT_RUN / FRESH_KERNEL_NOT_RUN / TRANSITIVE_AXIOM_AUDIT_NOT_RUN`. No new arithmetic cancellation, no RH proof, and no claim of kernel acceptance.

## Original source and new candidate

This review accompanies `GRWTSK/NumberTheory/ZetaAndLFunctionsAnalyticTheory/LiouvilleDoubleAbelPolynomialMoment.lean`, Git blob `30c71b912487b98a1a341d6010cb28e75c6798f7`, importing the additive analytic gates from commit `643d4e2d0d727bf026a211bbc20d7f9cb23e686e` and Mathlib's pinned `Mathlib.NumberTheory.Harmonic.Bounds`. It does not modify any original coefficient, response, Gram matrix, open arithmetic supplier, or user-local source. The Lean toolchain remains `v4.34.1`, Mathlib `d13f23b723b8a846827a245b89c10fc7d3f11612`.

The source scripts an alternative, looser polynomial envelope:

[
\sum_{p,q\ge1}\sqrt{pq}\,\Omega_{\log N}(p,q)
\le 4\log N (1+\log N)^2,\qquad N\ge2.
]

The finite sums are over the exact lattice `1<=p,q<=N`; `Omega` vanishes beyond its triangular support. The original sharper `T^3/3+4T^2+7T` analytic inequality remains a distinct optimization, not a prerequisite for the all-positive-rate RH-facing transfer.

## Complete primary argument

For every positive integer p,

[
\sqrt p\le\sum_{m=1}^p\frac1{\sqrt m},
]

since each summand is at least `1/sqrt(p)` and there are p of them. The same holds for q. The integrated mixed kernel `Omega_T` is nonnegative by the response convexity and integral positivity gate. Therefore

[
\sum_{p,q}\sqrt{pq}\,\Omega_T(p,q)
\le\sum_{p,q}\left(\sum_{m\le p,g\le q}\frac1{\sqrt{mg}}\right)\Omega_T(p,q).
]

Finite reordering, the exact original zero-face double telescope, and no absolute values on arithmetic correlations give

[
\sum_{p,q}\sqrt{pq}\,\Omega_T(p,q)
\le\sum_{m,g\le N}\frac{W_T(m,m+g)}{\sqrt{mg}}.
]

For `0<=u<=T`, the original literal response satisfies `0<=r_n(u)<=2/sqrt(n)` on positive indices. Thus for `T>=0`,

[
0\le W_T(m,m+g)
\le \frac{4T}{\sqrt{m(m+g)}} \le \frac{4T}{\sqrt{mg}}.
]

Hence

[
\sum_{p,q}\sqrt{pq}\,\Omega_T(p,q)
\le 4T\left(\sum_{n=1}^N\frac1n\right)^2
\le 4T(1+\log N)^2.
]

The last step is the actual pinned Mathlib `harmonic_le_one_add_log` (Arend Mellendijk; preserve upstream attribution). This is an unconditional purely geometric kernel estimate; it imports no Chowla, pretentiousness, probability or RH assumption.

## Lean source decomposition and limits

The new module names `sqrt_le_sum_invSqrt`, `invSqrtRectangle_eq_product`, `sqrt_weight_le_rectangle`, `rectangle_fubini`, `original_response_le_two_invSqrt`, `causalKernel_le_product`, `weighted_kernel_le_harmonic`, `inv_harmonic_sum_le`, and the terminal `sqrtWeightedOmegaMoment_le_coarse`. They are source-level proof scripts, **not results of an executed Lean elaboration**. A static inspection corrected an important filter orientation: the required condition is `k<=m`, not `m<=k`. Any additional elaboration, coercion or syntax issues are still pending actual build feedback.

The mathematical source consumer is the *complete signed* rectangle average. Bounding its positive part requires a genuinely new Liouville arithmetic estimate; positivity of the kernel alone does not establish it. The p=1 and p=3 rectangular rows already encode RH-strength two-sided Liouville partial-sum information, so a uniform rectangular square-root hypothesis must not be confused with a new proof.

No local shared Git lock, existing local weighted cyclic source, root imports, dependencies, native verifier, scheduler, or execution authority is modified. The sharper polynomial moment proposition `PolynomialKernelMoment` in the preceding module remains unproved within Lean; the coarse moment theorem candidate is enough for the exponent-neutral conditional transfer if it passes verification.
