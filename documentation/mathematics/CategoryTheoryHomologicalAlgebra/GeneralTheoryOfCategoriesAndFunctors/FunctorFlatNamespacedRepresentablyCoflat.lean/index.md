# Functor Flat Namespaced Representably Coflat

[Complete source index](../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**31 observed declarations and anonymous commands**, 18 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Flat/Variant3d0c66185bad0104dac76db721cbe667ffe6698846e1aa45574147a5f48aed8b.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `ba5c5ebab1dd6e5afafa81f24b0f8cb8ea6ad9b6`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/FunctorFlatNamespacedRepresentablyCoflat.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `class` | [RepresentablyFlat](declarations/representablyflat.md) | 72 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `class` | [RepresentablyCoflat](declarations/representablycoflat.md) | 77 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `instance` | [RepresentablyFlat.of_isRightAdjoint](declarations/representablyflat-of-isrightadjoint.md) | 84 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `instance` | [RepresentablyCoflat.of_isLeftAdjoint](declarations/representablycoflat-of-isleftadjoint.md) | 87 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [RepresentablyFlat.id](declarations/representablyflat-id.md) | 90 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [RepresentablyCoflat.id](declarations/representablycoflat-id.md) | 92 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `instance` | [RepresentablyFlat.comp](declarations/representablyflat-comp.md) | 97 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [RepresentablyFlat.of_iso](declarations/representablyflat-of-iso.md) | 116 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [RepresentablyCoflat.of_iso](declarations/representablycoflat-of-iso.md) | 120 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [representablyCoflat_op_iff](declarations/representablycoflat-op-iff.md) | 126 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [representablyFlat_op_iff](declarations/representablyflat-op-iff.md) | 135 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `instance` | [(anonymous)](declarations/instance.md) | 144 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `instance` | [(anonymous)](declarations/instance-source-edition-2.md) | 147 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `instance` | [RepresentablyCoflat.comp](declarations/representablycoflat-comp.md) | 150 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `lemma` | [final_of_representablyFlat](declarations/final-of-representablyflat.md) | 154 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `lemma` | [initial_of_representablyCoflat](declarations/initial-of-representablycoflat.md) | 157 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [flat_of_preservesFiniteLimits](declarations/flat-of-preservesfinitelimits.md) | 166 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [coflat_of_preservesFiniteColimits](declarations/coflat-of-preservesfinitecolimits.md) | 177 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `def` | [lift](declarations/lift.md) | 193 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [fac](declarations/fac.md) | 203 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [uniq](declarations/uniq.md) | 206 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `lemma` | [preservesFiniteLimits_of_flat](declarations/preservesfinitelimits-of-flat.md) | 261 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `lemma` | [preservesFiniteColimits_of_coflat](declarations/preservesfinitecolimits-of-coflat.md) | 277 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `lemma` | [preservesFiniteLimits_iff_flat](declarations/preservesfinitelimits-iff-flat.md) | 285 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `lemma` | [preservesFiniteColimits_iff_coflat](declarations/preservesfinitecolimits-iff-coflat.md) | 291 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `def` | [lanEvaluationIsoColim](declarations/lanevaluationisocolim.md) | 305 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `instance` | [lan_preservesFiniteLimits_of_flat](declarations/lan-preservesfinitelimits-of-flat.md) | 332 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `instance` | [lan_flat_of_flat](declarations/lan-flat-of-flat.md) | 342 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `instance` | [lan_preservesFiniteLimits_of_preservesFiniteLimits](declarations/lan-preservesfinitelimits-of-preservesfinitelimits.md) | 348 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [flat_iff_lan_flat](declarations/flat-iff-lan-flat.md) | 353 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `lemma` | [preservesFiniteLimits_iff_lan_preservesFiniteLimits](declarations/preservesfinitelimits-iff-lan-preservesfinitelimits.md) | 365 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=de55b30e075d039f5b9afd462e634930bb7e6981e4c46467468d8a53c4b493fb -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Flat/Variant3d0c66185bad0104dac76db721cbe667ffe6698846e1aa45574147a5f48aed8b.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
