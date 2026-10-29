# Enriched Functor Category

[Complete source index](../../../complete-source-index.md) · [Up one directory](../../complete-source-index.md) · [Full source](source.md)

**37 observed declarations and anonymous commands**, 16 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorCategory/Variantf5ce70a6d6814b364302cf0f7a86ee1021829301d1614bb8b5a8e7586bb9fa4f.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `964746b1888763c4112af60a841300762aca73ad`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/EnrichedFunctorCategory.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [diagram](declarations/diagram.md) | 45 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `abbrev` | [HasEnrichedHom](declarations/hasenrichedhom.md) | 48 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `abbrev` | [enrichedHom](declarations/enrichedhom-source-edition-2.md) | 56 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `abbrev` | [enrichedHomπ](declarations/enrichedhom.md) | 60 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `lemma` | [enrichedHom_condition](declarations/enrichedhom-condition-source-edition-2.md) | 64 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `lemma` | [enrichedHom_condition'](declarations/enrichedhom-condition.md) | 70 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `def` | [homEquiv](declarations/homequiv.md) | 81 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `lemma` | [homEquiv_apply_π](declarations/homequiv-apply.md) | 104 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `def` | [enrichedId](declarations/enrichedid-source-edition-2.md) | 115 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `lemma` | [enrichedId_π](declarations/enrichedid.md) | 118 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `lemma` | [homEquiv_id](declarations/homequiv-id.md) | 122 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `def` | [enrichedComp](declarations/enrichedcomp.md) | 131 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `lemma` | [enrichedComp_π](declarations/enrichedcomp-source-edition-2.md) | 162 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `lemma` | [homEquiv_comp](declarations/homequiv-comp.md) | 170 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `lemma` | [enriched_id_comp](declarations/enriched-id-comp.md) | 180 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `lemma` | [enriched_comp_id](declarations/enriched-comp-id.md) | 191 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `lemma` | [enriched_assoc](declarations/enriched-assoc.md) | 203 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `def` | [enrichedOrdinaryCategory](declarations/enrichedordinarycategory.md) | 225 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `abbrev` | [precompEnrichedHom'](declarations/precompenrichedhom.md) | 247 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `abbrev` | [precompEnrichedHom](declarations/precompenrichedhom-source-edition-2.md) | 267 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `abbrev` | [HasFunctorEnrichedHom](declarations/hasfunctorenrichedhom.md) | 279 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `instance` | [(anonymous)](declarations/instance.md) | 284 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `def` | [functorEnrichedHom](declarations/functorenrichedhom.md) | 292 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `def` | [coneFunctorEnrichedHom](declarations/conefunctorenrichedhom.md) | 318 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `def` | [lift](declarations/lift.md) | 327 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `lemma` | [fac](declarations/fac.md) | 343 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `def` | [isLimitConeFunctorEnrichedHom](declarations/islimitconefunctorenrichedhom.md) | 360 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `def` | [functorEnrichedId](declarations/functorenrichedid.md) | 373 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `def` | [functorEnrichedComp](declarations/functorenrichedcomp.md) | 379 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `lemma` | [functorEnriched_id_comp](declarations/functorenriched-id-comp.md) | 393 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `lemma` | [functorEnriched_comp_id](declarations/functorenriched-comp-id.md) | 399 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `lemma` | [functorEnriched_assoc](declarations/functorenriched-assoc.md) | 405 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `def` | [functorEnrichedCategory](declarations/functorenrichedcategory.md) | 419 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `def` | [functorHomEquiv](declarations/functorhomequiv.md) | 431 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `lemma` | [functorHomEquiv_id](declarations/functorhomequiv-id.md) | 435 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `lemma` | [functorHomEquiv_comp](declarations/functorhomequiv-comp.md) | 439 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `def` | [functorEnrichedOrdinaryCategory](declarations/functorenrichedordinarycategory.md) | 456 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=a329340703f708bef5d8a52e142f5e407579ed1aee08306ac4494b7abff72f03 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorCategory/Variantf5ce70a6d6814b364302cf0f7a86ee1021829301d1614bb8b5a8e7586bb9fa4f.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
