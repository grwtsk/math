# Functor Flat Representably Coflat

[Complete source index](../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**31 observed declarations and anonymous commands**, 18 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Flat/Variant9965fc2dccf9211ab82a6916cdb4d782eccfed4914a575600a02cae92cf25687.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `b521f581f772a04e2784c49e1adb42d472d18588`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/FunctorFlatRepresentablyCoflat.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `class` | [RepresentablyFlat](declarations/representablyflat.md) | 64 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `class` | [RepresentablyCoflat](declarations/representablycoflat.md) | 69 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `instance` | [RepresentablyFlat.of_isRightAdjoint](declarations/representablyflat-of-isrightadjoint.md) | 76 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `instance` | [RepresentablyCoflat.of_isLeftAdjoint](declarations/representablycoflat-of-isleftadjoint.md) | 79 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [RepresentablyFlat.id](declarations/representablyflat-id.md) | 82 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [RepresentablyCoflat.id](declarations/representablycoflat-id.md) | 84 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `instance` | [RepresentablyFlat.comp](declarations/representablyflat-comp.md) | 89 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [RepresentablyFlat.of_iso](declarations/representablyflat-of-iso.md) | 108 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [RepresentablyCoflat.of_iso](declarations/representablycoflat-of-iso.md) | 112 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [representablyCoflat_op_iff](declarations/representablycoflat-op-iff.md) | 118 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [representablyFlat_op_iff](declarations/representablyflat-op-iff.md) | 127 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `instance` | [(anonymous)](declarations/instance.md) | 136 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `instance` | [(anonymous)](declarations/instance-source-edition-2.md) | 139 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `instance` | [RepresentablyCoflat.comp](declarations/representablycoflat-comp.md) | 142 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `lemma` | [final_of_representablyFlat](declarations/final-of-representablyflat.md) | 146 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `lemma` | [initial_of_representablyCoflat](declarations/initial-of-representablycoflat.md) | 149 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [flat_of_preservesFiniteLimits](declarations/flat-of-preservesfinitelimits.md) | 158 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [coflat_of_preservesFiniteColimits](declarations/coflat-of-preservesfinitecolimits.md) | 169 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `def` | [lift](declarations/lift.md) | 185 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [fac](declarations/fac.md) | 195 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [uniq](declarations/uniq.md) | 198 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `lemma` | [preservesFiniteLimits_of_flat](declarations/preservesfinitelimits-of-flat.md) | 253 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `lemma` | [preservesFiniteColimits_of_coflat](declarations/preservesfinitecolimits-of-coflat.md) | 269 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `lemma` | [preservesFiniteLimits_iff_flat](declarations/preservesfinitelimits-iff-flat.md) | 277 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `lemma` | [preservesFiniteColimits_iff_coflat](declarations/preservesfinitecolimits-iff-coflat.md) | 283 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `def` | [lanEvaluationIsoColim](declarations/lanevaluationisocolim.md) | 297 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `instance` | [lan_preservesFiniteLimits_of_flat](declarations/lan-preservesfinitelimits-of-flat.md) | 324 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `instance` | [lan_flat_of_flat](declarations/lan-flat-of-flat.md) | 334 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `instance` | [lan_preservesFiniteLimits_of_preservesFiniteLimits](declarations/lan-preservesfinitelimits-of-preservesfinitelimits.md) | 340 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [flat_iff_lan_flat](declarations/flat-iff-lan-flat.md) | 345 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `lemma` | [preservesFiniteLimits_iff_lan_preservesFiniteLimits](declarations/preservesfinitelimits-iff-lan-preservesfinitelimits.md) | 357 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=cbaa78a43c894fcc28d084ae3691132e17c9bd87aa2a2e72ccf7640eb95f2c17 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Flat/Variant9965fc2dccf9211ab82a6916cdb4d782eccfed4914a575600a02cae92cf25687.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
