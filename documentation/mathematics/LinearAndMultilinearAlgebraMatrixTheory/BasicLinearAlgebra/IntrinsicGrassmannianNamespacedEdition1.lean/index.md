# Intrinsic Grassmannian Namespaced Edition1

[Complete source index](../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**30 observed declarations and anonymous commands**, 15 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Algebra/LinearAlgebra/IntrinsicGrassmannian/Variantf7179055a01cc08663aa832e495c9c66079dade052053429c4fce63bd12a1a97.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `bdce41df2f103c57d6c409da0324946a6dd7ae91`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/IntrinsicGrassmannianNamespacedEdition1.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [IntrinsicPlane](declarations/intrinsicplane.md) | 30 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `def` | [FullRankFrame](declarations/fullrankframe.md) | 34 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `def` | [representedPlane](declarations/representedplane.md) | 38 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `theorem` | [representedPlane_eq_iff](declarations/representedplane-eq-iff.md) | 42 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [exists_frame_of_intrinsicPlane](declarations/exists-frame-of-intrinsicplane.md) | 52 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [representedPlane_surjective](declarations/representedplane-surjective.md) | 75 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [intrinsicPlane_dimension_le](declarations/intrinsicplane-dimension-le.md) | 82 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [no_intrinsicPlane_of_lt](declarations/no-intrinsicplane-of-lt.md) | 89 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `def` | [planeFrame](declarations/planeframe.md) | 94 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [representedPlane_planeFrame](declarations/representedplane-planeframe.md) | 98 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `def` | [framePresentationSetoid](declarations/framepresentationsetoid.md) | 103 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `abbrev` | [FramePresentationQuotient](declarations/framepresentationquotient.md) | 108 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `def` | [quotientToPlane](declarations/quotienttoplane.md) | 111 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `def` | [planeToQuotient](declarations/planetoquotient.md) | 115 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [quotientToPlane_mk](declarations/quotienttoplane-mk.md) | 119 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [planeToQuotient_representedPlane](declarations/planetoquotient-representedplane.md) | 124 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `def` | [frameQuotientEquivPlane](declarations/framequotientequivplane.md) | 131 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [frameClass_eq_iff_rowSpace](declarations/frameclass-eq-iff-rowspace.md) | 143 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [frameClass_eq_iff_orderedMinor_proportional](declarations/frameclass-eq-iff-orderedminor-proportional.md) | 153 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [intrinsicPlane_has_ordered_chart](declarations/intrinsicplane-has-ordered-chart.md) | 162 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `def` | [IntrinsicNonnegative](declarations/intrinsicnonnegative.md) | 173 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `def` | [IntrinsicPositive](declarations/intrinsicpositive.md) | 177 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [intrinsicNonnegative_of_positive](declarations/intrinsicnonnegative-of-positive.md) | 181 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `def` | [NonnegativeFrame](declarations/nonnegativeframe.md) | 187 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `def` | [PositiveFrame](declarations/positiveframe.md) | 191 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `def` | [nonnegativeFrameToPlane](declarations/nonnegativeframetoplane.md) | 195 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [nonnegativeFrameToPlane_surjective](declarations/nonnegativeframetoplane-surjective.md) | 200 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `def` | [positiveFrameToPlane](declarations/positiveframetoplane.md) | 208 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [positiveFrameToPlane_surjective](declarations/positiveframetoplane-surjective.md) | 213 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [nonnegativeFrames_positiveGauge](declarations/nonnegativeframes-positivegauge.md) | 221 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=a9d94f6fcad8af045f37a10119ac5f1ad23fa3feba1510a739e5614ac40b99e9 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/IntrinsicGrassmannian/Variantf7179055a01cc08663aa832e495c9c66079dade052053429c4fce63bd12a1a97.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
