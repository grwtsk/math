# Limits Functor Category Basic

[Complete source index](../../../complete-source-index.md) · [Up one directory](../../../complete-source-index.md) · [Full source](source.md)

**62 observed declarations and anonymous commands**, 26 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantd7fd5a8b025d4ae40fee7f6174dce10c04ca452e8f5d70a6edc263cf99ccadf7.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `d2aa0287296fca2bfa9307686f3f67d72ad792a9`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LimitsFunctorCategoryBasic.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `theorem` | [limit.lift_π_app](declarations/limit-lift-app.md) | 35 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `theorem` | [colimit.ι_desc_app](declarations/colimit-desc-app.md) | 40 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `def` | [evaluationJointlyReflectsLimits](declarations/evaluationjointlyreflectslimits.md) | 48 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `def` | [combineCones](declarations/combinecones.md) | 70 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `def` | [evaluateCombinedCones](declarations/evaluatecombinedcones.md) | 84 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `def` | [combinedIsLimit](declarations/combinedislimit.md) | 89 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `def` | [evaluationJointlyReflectsColimits](declarations/evaluationjointlyreflectscolimits.md) | 98 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `def` | [combineCocones](declarations/combinecocones.md) | 123 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `def` | [evaluateCombinedCocones](declarations/evaluatecombinedcocones.md) | 137 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `def` | [combinedIsColimit](declarations/combinediscolimit.md) | 142 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `def` | [pointwiseCocone](declarations/pointwisecocone.md) | 152 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `def` | [pointwiseIsColimit](declarations/pointwiseiscolimit.md) | 164 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `instance` | [functorCategoryHasLimit](declarations/functorcategoryhaslimit.md) | 172 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `instance` | [functorCategoryHasLimitsOfShape](declarations/functorcategoryhaslimitsofshape.md) | 177 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `instance` | [functorCategoryHasColimit](declarations/functorcategoryhascolimit.md) | 180 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `instance` | [functorCategoryHasColimitsOfShape](declarations/functorcategoryhascolimitsofshape.md) | 186 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `instance` | [functorCategoryHasLimitsOfSize](declarations/functorcategoryhaslimitsofsize.md) | 191 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `instance` | [functorCategoryHasColimitsOfSize](declarations/functorcategoryhascolimitsofsize.md) | 196 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `instance` | [hasLimitCompEvaluation](declarations/haslimitcompevaluation.md) | 200 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `instance` | [evaluation_preservesLimit](declarations/evaluation-preserveslimit.md) | 204 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `instance` | [evaluation_preservesLimitsOfShape](declarations/evaluation-preserveslimitsofshape.md) | 211 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `def` | [limitObjIsoLimitCompEvaluation](declarations/limitobjisolimitcompevaluation.md) | 218 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [limitObjIsoLimitCompEvaluation_hom_π](declarations/limitobjisolimitcompevaluation-hom.md) | 223 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [limitObjIsoLimitCompEvaluation_inv_π_app](declarations/limitobjisolimitcompevaluation-inv-app.md) | 231 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [limit_map_limitObjIsoLimitCompEvaluation_hom](declarations/limit-map-limitobjisolimitcompevaluation-hom.md) | 240 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [limitObjIsoLimitCompEvaluation_inv_limit_map](declarations/limitobjisolimitcompevaluation-inv-limit-map.md) | 248 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [limit_obj_ext](declarations/limit-obj-ext.md) | 255 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `def` | [limitCompWhiskeringLeftIsoCompLimit](declarations/limitcompwhiskeringleftisocomplimit.md) | 263 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [limitCompWhiskeringLeftIsoCompLimit_hom_whiskerLeft_π](declarations/limitcompwhiskeringleftisocomplimit-hom-whiskerleft.md) | 271 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [limitCompWhiskeringLeftIsoCompLimit_inv_π](declarations/limitcompwhiskeringleftisocomplimit-inv.md) | 279 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `instance` | [hasColimitCompEvaluation](declarations/hascolimitcompevaluation.md) | 285 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `instance` | [evaluation_preservesColimit](declarations/evaluation-preservescolimit.md) | 289 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `instance` | [evaluation_preservesColimitsOfShape](declarations/evaluation-preservescolimitsofshape.md) | 296 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `def` | [colimitObjIsoColimitCompEvaluation](declarations/colimitobjisocolimitcompevaluation.md) | 303 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `theorem` | [colimitObjIsoColimitCompEvaluation_ι_inv](declarations/colimitobjisocolimitcompevaluation-inv.md) | 308 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `theorem` | [colimitObjIsoColimitCompEvaluation_ι_app_hom](declarations/colimitobjisocolimitcompevaluation-app-hom.md) | 316 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `theorem` | [colimitObjIsoColimitCompEvaluation_inv_colimit_map](declarations/colimitobjisocolimitcompevaluation-inv-colimit-map.md) | 325 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `theorem` | [colimit_map_colimitObjIsoColimitCompEvaluation_hom](declarations/colimit-map-colimitobjisocolimitcompevaluation-hom.md) | 335 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `theorem` | [colimit_obj_ext](declarations/colimit-obj-ext.md) | 344 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `def` | [colimitCompWhiskeringLeftIsoCompColimit](declarations/colimitcompwhiskeringleftisocompcolimit.md) | 352 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `theorem` | [ι_colimitCompWhiskeringLeftIsoCompColimit_hom](declarations/colimitcompwhiskeringleftisocompcolimit-hom.md) | 360 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `theorem` | [whiskerLeft_ι_colimitCompWhiskeringLeftIsoCompColimit_inv](declarations/whiskerleft-colimitcompwhiskeringleftisocompcolimit-inv.md) | 368 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `instance` | [evaluationPreservesLimits](declarations/evaluationpreserveslimits.md) | 374 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `lemma` | [preservesLimit_of_evaluation](declarations/preserveslimit-of-evaluation.md) | 379 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `lemma` | [preservesLimitOfEvaluation](declarations/preserveslimitofevaluation.md) | 389 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `lemma` | [preservesLimitsOfShape_of_evaluation](declarations/preserveslimitsofshape-of-evaluation.md) | 395 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `lemma` | [preservesLimitsOfShapeOfEvaluation](declarations/preserveslimitsofshapeofevaluation.md) | 401 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `lemma` | [preservesLimits_of_evaluation](declarations/preserveslimits-of-evaluation.md) | 407 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `lemma` | [preservesLimitsOfEvaluation](declarations/preserveslimitsofevaluation.md) | 414 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `instance` | [preservesLimits_const](declarations/preserveslimits-const.md) | 420 | `BLOCKED_NATIVE_ADMISSION` |
| 51 | `instance` | [evaluation_preservesColimits](declarations/evaluation-preservescolimits.md) | 424 | `BLOCKED_NATIVE_ADMISSION` |
| 52 | `lemma` | [preservesColimit_of_evaluation](declarations/preservescolimit-of-evaluation.md) | 429 | `BLOCKED_NATIVE_ADMISSION` |
| 53 | `lemma` | [preservesColimitOfEvaluation](declarations/preservescolimitofevaluation.md) | 439 | `BLOCKED_NATIVE_ADMISSION` |
| 54 | `lemma` | [preservesColimitsOfShape_of_evaluation](declarations/preservescolimitsofshape-of-evaluation.md) | 444 | `BLOCKED_NATIVE_ADMISSION` |
| 55 | `lemma` | [preservesColimits_of_evaluation](declarations/preservescolimits-of-evaluation.md) | 450 | `BLOCKED_NATIVE_ADMISSION` |
| 56 | `instance` | [preservesColimits_const](declarations/preservescolimits-const.md) | 458 | `BLOCKED_NATIVE_ADMISSION` |
| 57 | `def` | [limitIsoFlipCompLim](declarations/limitisoflipcomplim.md) | 467 | `BLOCKED_NATIVE_ADMISSION` |
| 58 | `def` | [limitFlipIsoCompLim](declarations/limitflipisocomplim.md) | 472 | `BLOCKED_NATIVE_ADMISSION` |
| 59 | `def` | [limitIsoSwapCompLim](declarations/limitisoswapcomplim.md) | 481 | `BLOCKED_NATIVE_ADMISSION` |
| 60 | `def` | [colimitIsoFlipCompColim](declarations/colimitisoflipcompcolim.md) | 488 | `BLOCKED_NATIVE_ADMISSION` |
| 61 | `def` | [colimitFlipIsoCompColim](declarations/colimitflipisocompcolim.md) | 493 | `BLOCKED_NATIVE_ADMISSION` |
| 62 | `def` | [colimitIsoSwapCompColim](declarations/colimitisoswapcompcolim.md) | 502 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=a0920afeb82898e7db903b9768527470320cfee5e5b4d8a67705a39a10503d90 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantd7fd5a8b025d4ae40fee7f6174dce10c04ca452e8f5d70a6edc263cf99ccadf7.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
