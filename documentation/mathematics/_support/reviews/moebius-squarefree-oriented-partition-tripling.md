# Finite oriented doubling-edge partition and a disjoint tripling signed packet

**Byline:** grwtsk contributors. **Date:** 2026-10-31. All exact source proofs are Lean SOURCE_PROOF_CANDIDATES; native compilation, expected interfaces, fresh kernel replay and transitive axiom audit are NOT_RUN under user deferral.

## 1. Exact finite oriented-edge partition

Let S be the original finite squarefree endpoint inventory and I the already-defined odd squarefree doubling indices for finite gap exclusion A. Define F={(k,2k):k in I} and R={(2k,k):k in I}. Both F and R are subsets of the original ordered dense gap pair inventory D={(m,n) in S×S:m!=n, dist(m,n) notin A}. This includes the precise causal birth cutoff, positive indices, actual Möbius signs and literal original Gram K_T.

The map k↦(k,2k) is injective by its first coordinate; k↦(2k,k) is injective by its second. F and R are disjoint, since equality (k,2k)=(2l,l) forces k even, contrary to the odd restriction. Every original selectedDoublingPair is precisely a member of F∪R, in one orientation. Finite set splitting thus gives

    sum_(e in D) mu(e1)mu(e2)K_T(e1,e2)
     = sum_(e in F∪R) mu(e1)mu(e2)K_T(e1,e2)
       + sum_(e in D with e not selected) mu(e1)mu(e2)K_T(e1,e2).

The original source `oddSquarefreeDoublingPacket` is exactly the first selected sum after the two injective reindexings; `remainingSquarefreePairSum` is exactly the second. Therefore `ExactSquarefreePairPartition` is mathematically established without a conditional arithmetic estimate.

The new source `MoebiusSquarefreeOrientedEdgePartition.lean` implements the reindexing through two finite images, disjointness, `Finset.sum_image`, finite filter partition, and the original predicate. Its final theorem candidate is `exactSquarefreePairPartition : ExactSquarefreePairPartition`. **It has NOT been compiled or elaborated**; possible Mathlib API mismatches do not constitute checked acceptance. Its proof script contains no `sorry`.

## 2. New ratio-three squarefree negative packet, disjoint from doubling

For every positive squarefree n>1 with gcd(n,6)=1, n and 3n in the original endpoint inventory and additive gap 2n outside A, select ordered pairs (n,3n) and (3n,n). Because 3 and n are coprime, the actual Möbius coefficient changes sign once, `mu(3n)=-mu(n)`, so their complete contribution is

    N_3(A,T)=-2 sum_(n selected) K_T(n,3n)<=0

for every T>=0. The kernel is nonnegative for all positive birth indices; no generic independent-sign model is used. The packet is nontrivial: n=5 gives (5,15), with gap 10 outside every dyadic power-of-two schedule and strictly positive kernel for T>log15. This yields an exact zero-cost one-sided upper allowance uniformly in every positive exponent.

No selected ratio-three edge equals a ratio-two edge (in either orientation): the source inequalities force 3n=2n, or incompatible positive integer relations, if the two endpoints coincide. Thus the two nonpositive signed families can be removed simultaneously in a one-sided UPPER estimate without double counting.

The residual packet remains exactly

    R_(2,3)(A,T)=signedGapComplement(A,T)-N_2(A,T)-N_3(A,T).

In particular, with the original sparse packet S_A(T), for all T>=0 the inherited source error gives

    endpointSum(T)<=|S_A(T)|+R_(2,3)(A,T)+1/4.

The full diagonal and all other ordered squarefree terms survive; there is no estimate yet for the signed remainder.

## 3. Boundary and mathematical limitation

The dyadic schedule A(T)={2^j:0<=j<=floor(max(T,0))} is predetermined. For odd n>1 with 3∤n, gap 2n is not a power of two. For n=1 the gap 2 is excluded by the dyadic schedule (hence the source requires n>1). Squareful endpoints are already accounted for by exact source-zero results; no squarefree proxy is substituted. Negative packet terms are not claimed small in absolute value.

The new ratio-three and ratio-two negative packets give genuine growing local nonzero signed savings, but cannot alone establish every-positive-rate control of R_(2,3). The original RH-facing arithmetic obstruction persists.

## 4. Verification and next obligation

- `GRWTSK/NumberTheory/ZetaAndLFunctionsAnalyticTheory/MoebiusSquarefreeOrientedEdgePartition.lean`
- `GRWTSK/NumberTheory/ZetaAndLFunctionsAnalyticTheory/MoebiusSquarefreeTriplingNegativePacket.lean`
- Original doubled source `MoebiusOddSquarefreeDoublingPacket.lean`, blob `db499519eba7e82286854f0a120a09596604360a`.

No Lean compiler, kernel or transitive axiom receipts; source-proofs are candidates, not certified. The next arithmetic proof is a genuinely quantitative estimate for a larger positive-density region of surviving squarefree dense correlations. Finite disjoint ratio-family additions alone cannot be reported as a proof of RH.
