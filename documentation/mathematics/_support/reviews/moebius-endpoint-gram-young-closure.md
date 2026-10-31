# Actual endpoint Möbius Gram Young and complete sparse-gap energy accounting

**Attribution:** grwtsk contributors. **Date:** 2026-10-31.
**Source:** `GRWTSK/NumberTheory/ZetaAndLFunctionsAnalyticTheory/MoebiusEndpointGramYoungClosure.lean`.
**Original predecessor:** `MoebiusEndpointPutnamEnergyCounting.lean`, observed Git blob `e04dc68d2ca268d88d43725d0963c5414d216c6d`.
**Finite neighbour source:** `MoebiusEndpointSparseGapCounting.lean`, observed blob `eebaf57690e143d22f04c1d9998acf52a66a8d53`.
**Actual causal continuity source:** `LiouvilleCausalPhysicalGramIntegrability.lean`, observed blob `e23f62fc60ce5867e4c183117162c59ff4989b6f`, where only the unchanged `CCC.pickupResponse` continuity is reused, not a Liouville coefficient.

**Disposition:** Complete elementary mathematical proof and source-level Lean theorem scripts. Compilation, expected-type checks, fresh-kernel replay and transitive axiom audit remain **NOT_RUN**, following the prior user deferral. No external theorem supplies arithmetic cancellation and no RH proof is claimed.

## 1. Literal causal Gram inequality

For T>=0 and any endpoint indices m,n in S_T={1,...,floor(exp T)}, put

    f_m(u)=mu(m) r_m(u),
    f_n(u)=mu(n) r_n(u),

where mu is the unchanged Möbius source, and r is exactly the original pickup response. For n,m>=1, the response is continuous across its birth u=log n, hence f_m,f_n, their product, and both squares are interval-integrable on [0,T]. The pointwise real Young inequality gives

    2|f_m(u)f_n(u)|<=f_m(u)^2+f_n(u)^2.

Using the ordinary integral triangle inequality, then monotonicity and finite-additivity for the original interval integral,

    2|integral_0^T f_m(u)f_n(u)du|
      <=integral_0^T [f_m(u)^2+f_n(u)^2]du.

The exact literal `pickupResponseGram` is this source product's kernel. Therefore

    2 |mu(m)mu(n)K_T(m,n)|
      <=mu(m)^2 K_T(m,m)+mu(n)^2 K_T(n,n).        (G1)

This proves mathematically the exact existing `EndpointMobiusGramYoung` proposition, including signs, zero coefficients, squareful integers (mu=0), both endpoints and the birth collar. No altered kernel or independent-sign assumption enters. The Lean source candidate `interval_gram_young` implements the integral argument and `endpointMobiusGramYoung` instantiates the original source. The pointwise scalar input is the predecessor's `two_abs_mul_le_sq_add_sq`.

## 2. Complete ordered-pair degree estimate

Let A,S be any finite sets of natural numbers and E_A(m,n) mean m!=n and Nat.dist(m,n)∈A. For a nonnegative diagonal d(m) and symmetric original relation E_A, suppose

    2|B(m,n)|<=d(m)+d(n)

for all m,n∈S. The FULL ordered packet is

    X_A=sum_(m,n in S; E_A(m,n)) B(m,n).

Triangle inequality is applied once to this completed signed packet:

    2|X_A|<=sum_(m,n:E_A) [d(m)+d(n)].

The first double sum of d(m) counts each m by its number of neighbours, at most 2|A|. The second sum equals the first by switching the ordered indices and using Nat.dist symmetry. Thus

    2|X_A|<= 4|A| sum_(m in S)d(m),

or

    |X_A|<=2|A| sum_(m in S)d(m).                 (G2)

No bound on the magnitude of the selected distances is required. Even if A contains zero, m!=n removes its contribution. The sets may be empty, sparse or disconnected. Every ordered orientation survives until the symmetric counting identity is used. Signed off-diagonal terms are never replaced by a supremum of correlations.

Take S=S_T, B(m,n)=mu(m)mu(n)K_T(m,n), d(m)=mu(m)^2 K_T(m,m). Then (G1) and the already-derived neighbour theorem give

    |endpointGapSetCross A T| <=2|A| pickupDiagonal(T). (G3)

This is the exact existing `PutnamGapEnergyBound` conclusion. The Lean source candidate `ordered_sparse_gram_bound` provides the source-independent finite count, and `putnamGapEnergyBound` specializes it to the original endpoint source. Its theorem has the same implication-form conclusion as the original named `PutnamGapEnergyBound`; the supplied `EndpointMobiusGramYoung` and `GapSetNeighbourCount` arguments are not assumptions about the arithmetic being small.

With the separate predecessor source diagonal allowance pickupDiagonal(T)<=2T², the quantitative consequence is

    |endpointGapSetCross A T|<=4|A|T².              (G4)

That diagonal upper bound is retained at its own verification scope, and the dense complementary arithmetic core remains the original open problem.

## 3. Countermodels and quantitative scope

The empty set A produces the empty packet. An arbitrary large distance a has the same degree cost as a small distance, provided it is counted once. A star of arbitrary isolated gaps has no uniform density implication; cardinality is the correct local parameter.

Conversely, if each response vector is identical and all selected edges form a dense regular relation, the degree-times-energy loss can be saturated up to a fixed constant. Thus this analytic counting result does NOT establish a signed saving in the dense middle-gap core, an all-positive-rate bound for the full endpoint sum, the original Liouville causal energy target, or RH.

The positive endpoint Gram diagonal includes mu(n)^2, so squareful n contribute zero but are not removed by modifying the source. The proof holds for all T>=0 without replacing the terminal zero-width birth at an integral exp(T).

## 4. Source and verification boundary

The new source candidates have four substantive declarations:
`GRWTSK.NumberTheory.MoebiusEndpointGramYoungClosure.interval_gram_young`,
`endpointMobiusGramYoung`, `ordered_sparse_gram_bound`, and
`putnamGapEnergyBound`, plus `endpoint_diagonal_nonneg`.
The source uses actual `endpointIndex`, `moebiusReal`,
`pickupResponseGram`, `pickupDiagonal` and `endpointGapSetCross`.
The original `EndpointMobiusGramYoung` and `PutnamGapEnergyBound`
named proposition definitions were not edited, so downstream imports
retain their interfaces. No new root imports, dependency pins, native
verification jobs or operational artifacts are added.

**Formal status:** source-proof candidate only. Compilation, expected
interfaces, fresh kernel replay and transitive axiom audit are NOT_RUN;
source inspection and GitHub publication are not proof acceptance.

**Next bounded proof obligation:** establish and source-accept the predecessor
`PutnamGapQuadraticBound` from the original diagonal estimate, then
quantify the allowable subexponential cardinality families without dropping
the complete ordered signed packet. The genuinely unresolved arithmetic
frontier is the dense middle-gap covariance.
