# Lifting Property

[Complete source index](../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**26 observed declarations and anonymous commands**, 16 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/LiftingProperty/Variantfed066f6cc9d41459310a11d09eb3a1bcd777f244453c23ee7270fe36c42e80e.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `5002b763c118fbb5b981a4140ecfac8020d9e370`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LiftingProperty.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [llp](declarations/llp.md) | 31 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `def` | [rlp](declarations/rlp.md) | 36 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `lemma` | [llp_of_isIso](declarations/llp-of-isiso.md) | 39 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `lemma` | [rlp_of_isIso](declarations/rlp-of-isiso.md) | 43 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `instance` | [llp_isStableUnderRetracts](declarations/llp-isstableunderretracts.md) | 47 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `instance` | [rlp_isStableUnderRetracts](declarations/rlp-isstableunderretracts.md) | 52 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `instance` | [llp_isStableUnderCobaseChange](declarations/llp-isstableundercobasechange.md) | 57 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `instance` | [rlp_isStableUnderBaseChange](declarations/rlp-isstableunderbasechange.md) | 63 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `instance` | [llp_isMultiplicative](declarations/llp-ismultiplicative.md) | 68 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `instance` | [rlp_isMultiplicative](declarations/rlp-ismultiplicative.md) | 75 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `instance` | [llp_isStableUnderCoproductsOfShape](declarations/llp-isstableundercoproductsofshape.md) | 82 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `instance` | [rlp_isStableUnderProductsOfShape](declarations/rlp-isstableunderproductsofshape.md) | 89 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `lemma` | [le_llp_iff_le_rlp](declarations/le-llp-iff-le-rlp.md) | 96 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `lemma` | [gc_llp_rlp](declarations/gc-llp-rlp.md) | 101 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `lemma` | [le_llp_rlp](declarations/le-llp-rlp.md) | 106 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `lemma` | [rlp_llp_rlp](declarations/rlp-llp-rlp.md) | 110 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `lemma` | [llp_rlp_llp](declarations/llp-rlp-llp.md) | 114 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `lemma` | [antitone_rlp](declarations/antitone-rlp.md) | 117 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `lemma` | [antitone_llp](declarations/antitone-llp.md) | 120 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `lemma` | [pushouts_le_llp_rlp](declarations/pushouts-le-llp-rlp.md) | 123 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `lemma` | [rlp_pushouts](declarations/rlp-pushouts.md) | 129 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `lemma` | [colimitsOfShape_discrete_le_llp_rlp](declarations/colimitsofshape-discrete-le-llp-rlp.md) | 135 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `lemma` | [coproducts_le_llp_rlp](declarations/coproducts-le-llp-rlp.md) | 140 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `lemma` | [rlp_coproducts](declarations/rlp-coproducts.md) | 147 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `lemma` | [retracts_le_llp_rlp](declarations/retracts-le-llp-rlp.md) | 153 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `lemma` | [rlp_retracts](declarations/rlp-retracts.md) | 157 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=9e1a541fa1be9d5a0832ae0de1d0dd6981499fa016c6ae254e24fc28eef67337 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/LiftingProperty/Variantfed066f6cc9d41459310a11d09eb3a1bcd777f244453c23ee7270fe36c42e80e.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
