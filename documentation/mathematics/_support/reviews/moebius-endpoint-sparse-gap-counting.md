# Sparse additive gap counting for the unchanged Möbius endpoint source

**Attribution:** grwtsk contributors. **Date:** 2026-10-31.
**Disposition:** elementary combinatorial degree theorem and quantitative Gram consequence, with an additive Lean source-proof candidate. No independent Möbius/Liouville cancellation estimate, no all-positive-rate RH source supplier, no RH conclusion. Native checks deferred at user request and remain NOT_RUN.

**Source:** `GRWTSK/NumberTheory/ZetaAndLFunctionsAnalyticTheory/MoebiusEndpointSparseGapCounting.lean`. Direct predecessor `MoebiusEndpointPutnamEnergyCounting.lean`, observed Git blob `e04dc68d2ca268d88d43725d0963c5414d216c6d`. The original literal endpoint source remains `CCC.pickupResponseGram`, with the actual `moebiusReal` coefficients; the new combinatorics does not change it.

## 1. Exact theorem and proof

Let A and S be arbitrary finite sets of natural numbers and fix any m. Define

    Neighbours_A,S(m)={n in S:m!=n and Nat.dist m n in A}.

For any natural n, the exact distance relation gives either

    n=m+Nat.dist(m,n)
    or
    n=m-Nat.dist(m,n).

Therefore

    Neighbours_A,S(m)
      subset (image A (a -> m+a)) union
             (image A (a -> m-a)).

Each image contains at most |A| elements, even though subtraction can
collapse distinct distances and even if 0 belongs to A. Hence

    card(Neighbours_A,S(m)) <= 2*card(A)                 (C1)

for EVERY finite S,m,A. This is the precise existing
`GRWTSK.NumberTheory.MoebiusEndpointPutnamEnergyCounting.GapSetNeighbourCount`
proposition. The new source supplies `nat_distance_two_sides`,
`gap_neighbours_subset_two_images` and `gapSetNeighbourCount` as Lean proof
candidates. Their source status is NOT_RUN, not kernel acceptance.

Boundary checks: A=empty gives zero edges; A={0} gives zero selected edges
because m!=n; m=0 and a>m are handled by natural subtraction and the other
side of the union; a may be arbitrarily large and S need not be an interval.
No multiplicative arithmetic or prime condition is used.

## 2. Complete signed Möbius endpoint consequence

For T>=0, let S={1,...,floor(exp T)}, and set
b_n(u)=mu(n)r_n(u). The actual Gram is
K_T(m,n)=integral_0^T r_m(u)r_n(u)du. Define the complete
ordered distance-A packet, precisely the existing
`endpointGapSetCross A T`, keeping both orientations and signed mu.

For every ordered pair at distance in A, Hilbert-space Young gives

    2*|integral_0^T b_m(u)b_n(u)du|
      <= integral_0^T b_m(u)^2du+integral_0^T b_n(u)^2du.

This uses the exact physical-time response and is independent of
sign cancellation. Summing over all selected pairs, then using the
two-sided degree bound (C1) in each coordinate gives

    |endpointGapSetCross A T|
      <=2*|A|*pickupDiagonal(T).                        (C2)

The existing diagonal allowance `pickupDiagonal(T)<=2T²` consequently
gives

    |endpointGapSetCross A T|<=4*|A|*T².                (C3)

(C2)-(C3) are mathematically derived from (C1), the exact Gram-Young
inequality and the predecessor diagonal bound. The predecessor source
still represents `EndpointMobiusGramYoung`, `PutnamGapEnergyBound`
and `PutnamGapQuadraticBound` as named open propositions; the current
Lean increment closes only their discrete neighbour-count input as a
source candidate, not the whole analytic Gram qualification.

## 3. Arbitrarily distant sparse families — quantitative transfer

For any predetermined family of finite distance sets A_T (not necessarily
intervals, and allowed to contain extremely large distances), if

    for every delta>0, there exist C_delta,R_delta>=0 such that
    for every T>=R_delta,
       card(A_T)<=C_delta exp(delta T),

then (C3), with delta=epsilon/2, implies

    for every epsilon>0, eventually
       |endpointGapSetCross(A_T,T)| <= C'_epsilon exp(epsilon T).

The loss is an exact factor 4*T² in (C3); an elementary bound
T²<=K_epsilon exp(epsilon*T/2) absorbs it at any positive final rate.
The set of distances may be chosen geometrically, arithmetically, or
adaptively as long as the stated cardinality control is proved and not
chosen retrospectively to hide a large signed core.

This is a structurally useful extension beyond contiguous small gaps:
ANY subexponentially sparse set of additive gaps costs only a
subexponential amount, independent of the magnitudes of those gaps.

## 4. Hostile fixture and the unavoidable remaining core

A complete graph with all Gram vectors equal and positive saturates
the degree-times-energy method up to its numerical constants.
If |A_T| grows like exp(c*T) for fixed c>0, (C3) carries that same
exponential rate. Therefore degree counting alone cannot supply the
all-positive-rate bound on a dense middle-gap packet.

The signed core remaining after arbitrary sparse-gap extraction and
terminal-birth localization must receive independent actual
Möbius/Liouville cancellation. Finite-prime delay, rough-number density,
and fixed moments do not automatically supply it. No collision of
sources and no norm-inversion restatement is treated as arithmetic gain.

## 5. Verification and next obligation

The standalone source is a candidate, not an accepted Lean proof.
Compilation, expected-interface execution, fresh kernel replay and
transitive axiom audit were intentionally deferred and remain NOT_RUN.
No runner or verification job was dispatched and dependency pins/root
imports were unchanged.

**Single next bounded mathematical obligation:** formally discharge
`EndpointMobiusGramYoung` from the literal continuous
`pickupResponse`, then combine it with the newly written
`gapSetNeighbourCount` to close the original
`PutnamGapEnergyBound` with all signed endpoints and ordered orientations.
This will create a reusable sparse gap consumer; it is not the missing
dense-core signed arithmetic estimate.
