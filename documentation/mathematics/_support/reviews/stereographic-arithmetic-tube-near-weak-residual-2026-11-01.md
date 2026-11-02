# A genuine arithmetic-index-to-Euclidean-tube realization and the near/weak residual obstruction

Local mathematical attribution: grwtsk contributors.
Date: 2026-11-01.
Mathematical disposition: exact finite algebraic and geometric construction with source-preserving signed comparison, and a quantitative dense-budget obstruction. Lean source proof candidates; compilation, expected interfaces, fresh kernel check and transitive axiom audit all NOT_RUN. No RH or Kakeya conjecture assertion.

## 1. Source and verification scope

Original arithmetic (unchanged):
- \`GRWTSK/NumberTheory/ZetaAndLFunctionsAnalyticTheory/MoebiusEndpointLeastPrimeTypeII.lean\`: original \`endpointIndex(T)=Finset.Icc 1 floor(exp T)\`, retaining every integer index including non-squarefree coefficients.
- \`GRWTSK/NumberTheory/ZetaAndLFunctionsAnalyticTheory/MoebiusEndpointPutnamEnergyCounting.lean\`: \`endpointGapSetCross\`, complete ordered \`pickupCross\`, and original \`pickupDiagonal\`.
- \`GRWTSK/NumberTheory/ZetaAndLFunctionsAnalyticTheory/MoebiusEndpointPutnamSparseGapYoung.lean\` and \`MoebiusEndpointPutnamSparseGapAllRate.lean\`: actual integrated signed Young bound and the **selected** Putnam \`(32/epsilon^2)*exp(epsilon*T)\` rate, not a dense-core cancellation theorem.
- \`GRWTSK/NumberTheory/ZetaAndLFunctionsAnalyticTheory/MoebiusPutnamKakeyaAngularCollar.lean\`, source \`048160c05362887f13a9a1560283a3139cba068a\`: original source-indexed actual physical pair volume, positive angular/overlap thresholds and **literal** unchanged signed remainder.
- \`GRWTSK/MeasureAndIntegration/FiniteStraightTubeFamily.lean\`: ACTUAL finite straight Euclidean tube type \`Tube d\`, positive radius/half-length, source geometry and region-membership theorem.

New source:
- \`GRWTSK/NumberTheory/StereographicArithmeticTube.lean\`, exact Git blob \`21d6e074ff774634e43162a4b11beeb2b19e6dc2\`: rational stereographic integer-to-unit-direction map, actual Euclidean \`Tube 2\`, positive shared shading and exact projective chord.
- \`GRWTSK/NumberTheory/ZetaAndLFunctionsAnalyticTheory/MoebiusPutnamKakeyaSignedResidual.lean\`, exact blob \`49efb4dda87219da8e46139cd41bb0e944a1e649\`: source-exact disjoint near/weak/strong decomposition and genuine source-weighted signed degree control.
- \`GRWTSK/NumberTheory/ZetaAndLFunctionsAnalyticTheory/MoebiusStereographicTubeResidual.lean\`, exact blob \`0ec2e62facc74b2d416f1181cef39f1219ec6f44\`: concrete finite family retaining original integer labels, exact true area pi, quantified source angular collar and zero near/weak source packets.

All historical theorem identities, source cutoffs, Möbius signs, original actual response Gram, first/last source support, diagonal subtraction and both orientations are preserved. No existing source was edited or root-import promoted.

## 2. Genuine source-defined rational Euclidean tubes

For every ORIGINAL positive integer n define

  u_n = ((n^2-1)/(n^2+1), 2n/(n^2+1)) in R^2.

The Pythagorean identity \`(n²-1)²+(2n)²=(n²+1)²\` makes \`||u_n||=1\`. For each actual endpoint index n∈S_T={1,...,N_T}, place the EXISTING GRWTSK \`Tube 2\` at center 0, direction \`u_n\`, half-length 2 and positive radius 2. Its selected physical shading is the exact measurable Euclidean closed disk D=closedBall(0,1).

This is not a free map/port: it is an explicit, deterministic function of the **original n**, with every source index retained as its own subtype witness. In particular \`n\` is NEVER reduced modulo q, no squarefree indices are discarded and the original kernel \`mu(m)mu(n)pickupResponseGram(T,m,n)\` remains unchanged.

Physical support is proved by actual tube geometry. For ||x||≤1 and ||u||=1, write t=<x,u> and x=tu+(x-tu). Cauchy–Schwarz gives |t|≤1<2; the triangle inequality gives ||x-tu||≤||x||+|t|≤2. Thus x lies in the genuine original Tube 2 region. The chosen shading disk is therefore certified as a subset of EVERY source tube, not a painted incidence flag.

The disk has **true Lebesgue area pi** by the existing Mathlib \`EuclideanSpace.volume_closedBall_fin_two\` formula. Every pair of original shadings is the SAME disk, and therefore the exact physical pair mass \`b_mn\` is pi for every original m,n. This is a valid but intentionally heavily overlapping finite Kakeya geometry.

## 3. Quantitative near-angle elimination from original integer arithmetic

For m,n>=1, an exact algebraic expansion gives

  ||u_m-u_n||² = 4(m-n)² / ((m²+1)(n²+1)),
  ||u_m+u_n||² = 4(mn+1)² / ((m²+1)(n²+1)).

Because m,n≥1, \`mn+1≥|m-n|\`. The **actual projective direction gap** \`g_mn=min(||u_m-u_n||,||u_m+u_n||)\` therefore equals

  g_mn = 2|m-n| / sqrt((m²+1)(n²+1)).

At horizon N=floor(exp T), every source index m,n≤N gives the explicit lower bound

  g_mn >= 2|m-n|/(N²+1).

For a Putnam distance cutoff H∈N, set the positive, SOURCE-DEFINED projective collar

  sigma(T,H) = 2(H+1)/(N²+1).

If the arithmetic distance \`Nat.dist m n > H\`, then \`Nat.dist m n ≥ H+1\`, hence \`g_mn ≥ sigma(T,H)\`. Thus **every genuinely near-angular source pair** has additive gap at most H and is already counted by the old Putnam packet. The disjoint **near-angular long-gap signed residual is identically zero**. This is a source-specific fact, not a hypothetical geometry-to-arithmetic bridge.

## 4. Exact weak-overlap elimination and the signed return

Set the positive threshold \`eta=pi\`. Since every original source pair has physical intersection mass \`b_mn=pi\`, the strict weak-overlap predicate \`b_mn<eta\` is false for every pair. The weak-overlap signed packet is therefore **also exactly zero**.

The new generic source theorem first decomposes the literal original complete ordered signed source into FOUR exhaustive pair categories:
1. dist(m,n)∈A (already paid Putnam short additive gap);
2. dist(m,n)∉A and projective gap<sigma (near-angle);
3. dist(m,n)∉A and projective gap≥sigma and physical overlap<eta (weak);
4. dist(m,n)∉A and projective gap≥sigma and physical overlap≥eta (strong).

All comparisons use the ORIGINAL signed \`sourceKernel\` and original endpointIndex; no diagonal is added. The prior \`angularFarSignedRemainder\` is proved in the new source candidate to be exactly the sum of the near and weak packets, never a freely adjustable error. Independently, each signed packet has the genuine Young weighted-degree upper bound

  |X_R| <= sum_m d_m deg_R(m),   d_m=mu(m)^2 pickupResponseGram(T,m,m)>=0.

For the actual stereographic indexed family with the source-defined sigma and eta=pi, both near and weak relations are empty on every off-diagonal source pair. Therefore

  angularFarSignedRemainder(A_H,Family,sigma,pi)=0

for \`A_H=Finset.Icc 1 H\`, as an exact statement about the same original signed Möbius source.

The endpoint inequality becomes

  endpointSum(T) <= 4|A_H|T²
                   + Q_saturated(T,H,sigma,pi) + 1/4,

where Q_saturated is the SAME full positive angular-overlap row budget from the previous source. No RH conclusion follows.

## 5. The unavoidable dense geometric bill: an exact obstruction

Eliminating a signed remainder does not imply that the remaining positive upper certificate is small.

For this canonical shared-disk realization, every source pair at positive additive distance exceeding H is selected as a transverse, strong-overlap pair. The physical pair mass is pi and the threshold is pi, so the physical row cost is exactly

  Q_physical(T,H) = sum_{m=1}^{N} d_m(T) *
                    #{n∈[1,N]:n!=m, |m-n|>H}.

The saturated geometric upper certificate is >= Q_physical by the previously written actual pair-volume comparison; it is also <= Q_physical because its cap never exceeds the original disk volume pi. Hence **Q_saturated = Q_physical**.

For m=1, exactly max(N-H-1,0) indices n∈[1,N] satisfy |1-n|>H. Therefore, with D(T)=sum_m d_m,

  max(N-H-1,0)*d_1(T) <= Q_saturated(T,H)
                      <= (N-1)*D(T) <= 2(N-1)T².

For T>=log 4, the original n=1 causal response is

  r_1(u)=2(1-exp(-u/2)) >= 1  (u>=log4),

and the true Möbius coefficient mu(1)=1. Hence

  d_1(T)=∫_0^T r_1(u)^2 du >= T-log4,

and consequently

  Q_saturated(T,H) >= max(N-H-1,0)*(T-log4).

For the original optimized Putnam H=floor(exp(epsilon*T/2)), any fixed epsilon∈(0,2) has H=o(N). Thus the positive geometric budget is at least of order e^T*T for large T. It is **not** an all-positive-rate bound and cannot establish RH. This is a concrete, source-faithful proof of a method limitation: choosing an unusually favorable geometry that makes the signed remainder vanish shifts the entire dense problem into an exponentially large POSITIVE congestion cost.

This lower bound is an assertion about the *chosen upper certificate*, not about the actual signed pickupCross or endpointSum. It does not contradict arithmetic cancellation.

## 6. Hostile, comparative and novelty assessment

- **Fáry vs Farey.** The construction is a deterministic Farey/stereographic arithmetic chart; Fáry's theorem about straight-line planar drawings is a separate geometric existence theorem and is not asserted as a quantitative overlap supplier. The primitive pair (n,1) has unique index and no modular aliasing.
- **Projective antipodes.** Both ||u_m−u_n|| and ||u_m+u_n|| are kept. The positive source-index domain avoids an accidental oriented-sphere-for-unoriented-lines mistake.
- **No free volume/mass.** The common disk is an actual measurable subset of every original tube, its area is pi in the true Euclidean 2D Lebesgue measure, and the source pair volume is literally pi.
- **No engineered arithmetic signs.** The geometry does not control or replace \`mu(n)\` or the original causal response. Exact complete signed source equality is proved before taking absolute values.
- **Weak-overlap vacuity exposed.** The weak packet vanishes only because the chosen shading is shared. This does not prove a general weak-overlap theorem for arbitrary source-authentic shadings.
- **Positive-bound saturation.** An opposite extreme of disjoint shadings makes the weak packet the complete dense source. Neither choice supplies cancellation without a new arithmetic mechanism.
- **Independent check.** Scalar squared-chord identities are exact polynomial/rational algebra. A separate rational diagnostic checks 2,627,868 algebraic statements across N=1..100, and 2,807 finite signed synthetic source-bookkeeping assertions; they test the code's mathematical equations but not actual Lean elaboration or the original analytic integral. All 2,630,675 assertions PASS; synthetic signed fixtures use actual squarefree Möbius signs and an explicitly *different* rational Gram for counting, never misidentified with the pickupResponseGram.
- **Novelty.** The Pythagorean stereographic map and finite Young counting are classical elementary mathematics; the contribution is a source-exact consumer and a concrete obstruction certificate in this particular signed endpoint framework. It is not claimed as a new Kakeya/number-theory theorem independent of its implementation.

## 7. Source-specific verification and next mathematical target

New Lean source files contain no \`sorry\`, \`admit\`, research \`axiom\` or \`unsafe\` declaration at a lexical scan; this is **not** a transitive axiom audit. Compile against \`leanprover/lean4:v4.34.1\` and Mathlib \`d13f23b723b8a846827a245b89c10fc7d3f11612\` only at the published exact source commit. Verify \`EuclideanSpace.real_norm_sq_eq\`, rational field simplification, \`Tube.mem_region_iff\`, finite volume, original predicate partition, positive thresholds and all consumers; fresh kernel-check each declaration and its complete dependencies. All actual native facets are **NOT_RUN**. No root import promotion.

The next **substantive arithmetic supplier** is not another arbitrary tube drawing. A stronger source-derived choice would assign each original shading mass according to the ACTUAL \`sourceDiagonal T n\`, prove the pair volume is the min of those masses, and use the true Cauchy bound \`|k_mn|²≤d_m d_n\` to make a tiny weak-overlap sector quantitatively inexpensive. The still dense strong-overlap sector must then be controlled by genuine Möbius cancellation rather than its positive row count. That arithmetic step is OPEN and requires a proof independent of the desired RH conclusion.
