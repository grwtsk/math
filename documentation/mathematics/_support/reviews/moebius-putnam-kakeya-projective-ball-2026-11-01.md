# A genuine projective Kakeya pair supplier inside the signed Putnam endpoint ledger

Local mathematical attribution: grwtsk contributors.
Date: 2026-11-01.
Status: elementary analytic proof at exact stated finite geometry/Gram scope; Lean proof candidate; compilation, expected theorem interfaces, kernel and transitive axiom audit NOT_RUN.

## Source identity and comparison

- Original arithmetic: the unchanged \`GRWTSK.NumberTheory.MoebiusEndpointPutnamEnergyCounting.pickupCross\`, \`pickupResponseGram\`, \`pickupDiagonal\`, endpointIndex and existing \`PickupEndpointQuadrature.endpointSum_error\`.
- Existing Putnam all-positive-rate supplier: \`MoebiusEndpointPutnamSparseGapAllRate.putnam_sparse_gap_all_rate\`.
- The signed, disjoint three-sector receiver is the already published \`MoebiusPutnamKakeyaRoutedBudget.lean\` (blob \`3aa811df6e7eb23fd4d2db0200a40c421d841781\`), not a new independent arithmetic source.
- The **actual geometric input** is \`GRWTSK/Combinatorics/GraphTheory/FiniteStraightTubeProjectivePhysicalPair.lean\` (\`Family.real_pair_volume_le_projective_ball\`) and \`GRWTSK/MeasureAndIntegration/FiniteProjectiveTubeBallVolume.lean\` (\`Tube.projectiveIntersection_ball_volume\`), with \`FiniteStraightTubeProjectiveDirections.ProjectivelySeparated\` for UNORIENTED tube directions and explicit Euclidean dimension \`d\`.
- New Lean source: \`GRWTSK/NumberTheory/ZetaAndLFunctionsAnalyticTheory/MoebiusPutnamKakeyaProjectiveGeometry.lean\`, Git blob \`600f8ba75b93a928e8b62828a64393269dcebf5a\`.

The previous three-sector comparison required a row sum of genuine pair shading volumes b_mn. This increment proves a geometric upper bound on each such volume from the ORIGINAL straight tube radii and projective direction gap, rather than treating b_mn<=B_mn as a free hypothesis.

## Primary proof

Fix a positive dimension d, a finite original source-indexed tube family F whose individual source shadings U_m are subsets of original Euclidean cylinders T_m, and a positive projective direction gap sigma such that, whenever m != n, both unoriented directions are at least sigma apart. The source theorem supplies the explicit intersection radius

  R_mn(sigma) = 4(r_m+r_n)/sigma.

If the shadings U_m and U_n intersect at x0, then x0 is a point of BOTH original parent cylinders. The existing **source-proved** projective intersection-ball theorem shows

  U_m ∩ U_n ⊆ closedBall(x0, R_mn(sigma)).

Since Euclidean ball Lebesgue volume is translation-invariant, and the existing \`Tube.projectiveIntersection_ball_volume\` computes its value,

  vol_d(U_m ∩ U_n) <= V_d(R_mn(sigma)),

where V_d(R)=R^d * pi^(d/2)/Gamma(d/2+1) for R>=0, stated in the actual pinned source using Mathlib's \`sqrt pi\` expression and \`ENNReal.ofReal\`. Finite real-ball volume is retained as an explicit interface hypothesis in the proposed Lean \`real_pair_volume_le_projective_ball\` consumer, rather than guessed or omitted.

If the physical shadings do NOT intersect, the original pair volume is zero; the ball-volume upper bound still holds. This avoids assuming every pair of separated tube axes physically crosses.

The endpoint-index subtype is the actual finite \`{m : ℕ // m ∈ endpointIndex T}\`. The projectively separated \`Family\` is a strong FINITE hypothesis on those same original indices. No source coefficient, Möbius sign, diagonal, additive gap, or ordered-pair orientation is identified with the nonnegative geometric weights.

## Quantitative return

Let A be a finite set of already paid Putnam additive gaps, η>0 the physical overlap threshold, σ>0 the projective angular separation, and

  B_mn(d,σ) := vol_d(closedBall(center(T_m), R_mn(σ))).

The original physical outside-gap row cost from the preceding work is

  Q_physical = (1/η) sum_m d_m sum_{n != m, dist(m,n) notin A} vol_d(U_m ∩ U_n).

The newly source-proved geometric inclusion gives the pointwise row comparison

  Q_physical <= Q_ball
      := (1/η) sum_m d_m
           sum_{n != m, dist(m,n) notin A} B_mn(d,σ).

Inserting it into the already published exact Putnam–Kakeya original source identity proves

  endpointSum(T) <= 4|A|T² + Q_ball + R_signed(A,F,η,T) + 1/4.   (P1)

The optimized existing Putnam A=A_ε(T) specializes the first term:

  endpointSum(T) <= (32/ε²)exp(εT)
                    + Q_ball(A_ε,F,σ,η,T)
                    + R_signed(A_ε,F,η,T)+1/4.                   (P2)

The remainder remains exactly the unchanged original signed Möbius source minus the two already paid ORIGINAL signed packets. No favorable sign, rate or combinatorial estimate is inserted into the remainder.

## Crucial Kakeya and Fáry/Farey obstruction

This is a **genuine geometrically grounded quantitative bound**, not a sharp Kakeya intersection estimate. In dimension 3 the ball bound costs at worst a factor proportional to (r_m+r_n)^3 / sigma^3. A Kakeya-optimal tube bound is much more delicate and may require angular cells, convex Wolff concentration, and scale-dependent clustering. A fixed σ>0 for a growing family of distinct projective directions in a compact direction sphere cannot be maintained as the source population grows without a finite packing constraint. Thus σ may shrink and Q_ball may be astronomically large; no subexponential improvement in T is asserted.

Farey determinant-one spokes need not have bounded graph degree; Fáry planar straight-line drawings can have large vertex valence and positive-radius tube overlap near shared endpoints. These counterexamples prevent replacing the actual projective/volume hypotheses by a bare planarity or unimodularity statement.

Positive tube union volume does not imply the **energy-weighted row upper estimate** needed by the signed Mobius return. The source-bounded Q_ball still provides a meaningful pivot: the unknown positive row mass is now a computable expression in actual tube radii, source energies, separation and physical dimension, once a source-authentic tube assignment exists. The remaining problem is to derive a favorable scale law and signed remainder estimate without inserting the conclusion into the geometry.

## Verification and application status

Mathematical proof: exact geometric inclusion, actual nonempty/empty shading split, center-independence of volume from the existing Euclidean formula, nonnegative source-energy weighted summation, original three-sector endpoint return. A separate independent calculation is the explicit ball-volume expression; it uses the same geometric containment theorem and does NOT constitute an independent physical Kakeya estimate.

No new finite numeric diagnostic is used to certify this geometric step. Earlier published 8,113 and 13,200 rational arithmetic diagnostics are retained at their original scopes, not promoted to checks of the new source.

Parsing/elaboration NOT_RUN. Lake compilation NOT_RUN. Fresh kernel NOT_RUN. Expected theorem type checks NOT_RUN. Transitive axiom/sorry/unsafe checks NOT_RUN. No native runner or remote verification dispatched, no changes to root imports or environment. The static target records the exact new source and imported modules. All Millennium targets remain OPEN or at the external Clay status; this source asserts none.

Next precise mathematical suppliers: (1) a source-defined map from actual original arithmetic indices to tube centers/radii/phase directions, (2) sharp angle/scale-sensitive pair bounds beyond nonsharp projective enclosing balls (especially in d=3), (3) a partition or clustering rule that accounts for projectively near-parallel pairs rather than ignoring them, and (4) an all-positive-rate bound for the complete signed arithmetic complement on one fixed covered scale family. The latter is the essential RH-strength step.
