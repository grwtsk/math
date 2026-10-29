# Banach Hilbert Namespaced

[Complete source index](../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**57 observed declarations and anonymous commands**, 28 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/CombinatoricsAndDiscreteMathematics/BanachHilbert/Variantbaf407bc789810922e72f7fb5dcac71658f5abe0705126717a29b08d5959cc1b.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `3e65414aa5b98c2b24e0235b76991636dc46a77a`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../_verification/specifications/Combinatorics/BanachHilbertNamespaced.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `abbrev` | [StableBitfield](declarations/stablebitfield.md) | 31 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `def` | [realize](declarations/realize.md) | 34 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `def` | [hammingCount](declarations/hammingcount.md) | 38 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `def` | [hammingReal](declarations/hammingreal.md) | 42 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `def` | [manhattanDistance](declarations/manhattandistance.md) | 46 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `def` | [hilbertDistanceSq](declarations/hilbertdistancesq.md) | 50 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [hammingReal_eq_natCast](declarations/hammingreal-eq-natcast.md) | 54 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [abs_realize_sub](declarations/abs-realize-sub.md) | 59 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [sq_realize_sub](declarations/sq-realize-sub.md) | 64 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [manhattanDistance_eq_hamming](declarations/manhattandistance-eq-hamming.md) | 71 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [hilbertDistanceSq_eq_hamming](declarations/hilbertdistancesq-eq-hamming.md) | 79 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [manhattanDistance_eq_hilbertDistanceSq](declarations/manhattandistance-eq-hilbertdistancesq.md) | 87 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `def` | [IsNearestBit](declarations/isnearestbit.md) | 93 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `def` | [IsAnchor](declarations/isanchor.md) | 97 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `def` | [squaredPointCost](declarations/squaredpointcost.md) | 101 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `def` | [IsSquaredNearest](declarations/issquarednearest.md) | 106 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [nearestBit_cost_le](declarations/nearestbit-cost-le.md) | 110 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [isSquaredNearest_of_isAnchor](declarations/issquarednearest-of-isanchor.md) | 117 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `def` | [flipAt](declarations/flipat.md) | 127 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [isAnchor_of_isSquaredNearest](declarations/isanchor-of-issquarednearest.md) | 134 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [isAnchor_iff_isSquaredNearest](declarations/isanchor-iff-issquarednearest.md) | 169 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `def` | [lpPowerPointCost](declarations/lppowerpointcost.md) | 176 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `def` | [IsLpNearest](declarations/islpnearest.md) | 181 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [nearestBit_abs_cost_le](declarations/nearestbit-abs-cost-le.md) | 185 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [isLpNearest_of_isAnchor](declarations/islpnearest-of-isanchor.md) | 201 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [isAnchor_of_isLpNearest](declarations/isanchor-of-islpnearest.md) | 214 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [isAnchor_iff_isLpNearest](declarations/isanchor-iff-islpnearest.md) | 259 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `def` | [chartNormSq](declarations/chartnormsq.md) | 266 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [chartNormSq_nonneg](declarations/chartnormsq-nonneg.md) | 269 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `def` | [inverseStereographic](declarations/inversestereographic.md) | 274 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `def` | [carrierNormSq](declarations/carriernormsq.md) | 280 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [inverseStereographic_unit](declarations/inversestereographic-unit.md) | 284 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `def` | [southPole](declarations/southpole.md) | 307 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `def` | [northPole](declarations/northpole.md) | 308 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `theorem` | [inverseStereographic_zero](declarations/inversestereographic-zero.md) | 311 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `inductive` | [CompactifiedChart](declarations/compactifiedchart.md) | 316 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `def` | [compactifiedCarrier](declarations/compactifiedcarrier.md) | 321 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `theorem` | [compactifiedCarrier_finite](declarations/compactifiedcarrier-finite.md) | 327 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `theorem` | [compactifiedCarrier_infinity](declarations/compactifiedcarrier-infinity.md) | 331 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `def` | [centeredInt](declarations/centeredint.md) | 336 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `def` | [sphereNumerator](declarations/spherenumerator.md) | 340 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `def` | [sphereDenominator](declarations/spheredenominator.md) | 345 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `def` | [integerCarrierNormSq](declarations/integercarriernormsq.md) | 348 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `theorem` | [centeredInt_sq](declarations/centeredint-sq.md) | 351 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `theorem` | [sphereNumerator_norm_certificate](declarations/spherenumerator-norm-certificate.md) | 356 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `def` | [integerCarrierDistanceSq](declarations/integercarrierdistancesq.md) | 374 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `theorem` | [centered_difference_sq](declarations/centered-difference-sq.md) | 378 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `theorem` | [sphereNumerator_distance_certificate](declarations/spherenumerator-distance-certificate.md) | 386 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `def` | [zeroBeacon](declarations/zerobeacon.md) | 405 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `def` | [standardBeacon](declarations/standardbeacon.md) | 408 | `BLOCKED_NATIVE_ADMISSION` |
| 51 | `def` | [squaredRange](declarations/squaredrange.md) | 412 | `BLOCKED_NATIVE_ADMISSION` |
| 52 | `theorem` | [squaredRange_zero](declarations/squaredrange-zero.md) | 416 | `BLOCKED_NATIVE_ADMISSION` |
| 53 | `theorem` | [squaredRange_standard](declarations/squaredrange-standard.md) | 420 | `BLOCKED_NATIVE_ADMISSION` |
| 54 | `theorem` | [reconstruct_coordinate_from_ranges](declarations/reconstruct-coordinate-from-ranges.md) | 440 | `BLOCKED_NATIVE_ADMISSION` |
| 55 | `def` | [rangeRate](declarations/rangerate.md) | 449 | `BLOCKED_NATIVE_ADMISSION` |
| 56 | `theorem` | [rangeRate_zero_sub_standard](declarations/rangerate-zero-sub-standard.md) | 453 | `BLOCKED_NATIVE_ADMISSION` |
| 57 | `theorem` | [reconstruct_velocity_from_rangeRates](declarations/reconstruct-velocity-from-rangerates.md) | 470 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=20bdc4c97de89de22aa808a787da83af7e7e635150506772687fa7f8dabbfff4 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/BanachHilbert/Variantbaf407bc789810922e72f7fb5dcac71658f5abe0705126717a29b08d5959cc1b.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
