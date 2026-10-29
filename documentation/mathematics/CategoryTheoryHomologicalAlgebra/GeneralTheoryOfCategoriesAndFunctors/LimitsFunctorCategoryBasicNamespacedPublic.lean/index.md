# Limits Functor Category Basic Namespaced Public

[Complete source index](../../../complete-source-index.md) · [Up one directory](../../../complete-source-index.md) · [Full source](source.md)

**62 observed declarations and anonymous commands**, 22 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantedf81636b7c4d2408f657e6e0de97d38667ea4f726d2882428d3cce2a494c311.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `bb4590eee1af73a568c0cbd0267d395368058be6`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LimitsFunctorCategoryBasicNamespacedPublic.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `theorem` | [limit.lift_π_app](declarations/limit-lift-app.md) | 47 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `theorem` | [colimit.ι_desc_app](declarations/colimit-desc-app.md) | 52 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `def` | [evaluationJointlyReflectsLimits](declarations/evaluationjointlyreflectslimits.md) | 60 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `def` | [combineCones](declarations/combinecones.md) | 83 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `def` | [evaluateCombinedCones](declarations/evaluatecombinedcones.md) | 96 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `def` | [combinedIsLimit](declarations/combinedislimit.md) | 101 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `def` | [evaluationJointlyReflectsColimits](declarations/evaluationjointlyreflectscolimits.md) | 111 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `def` | [combineCocones](declarations/combinecocones.md) | 136 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `def` | [evaluateCombinedCocones](declarations/evaluatecombinedcocones.md) | 149 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `def` | [combinedIsColimit](declarations/combinediscolimit.md) | 154 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `def` | [pointwiseCocone](declarations/pointwisecocone.md) | 165 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `def` | [pointwiseIsColimit](declarations/pointwiseiscolimit.md) | 179 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `instance` | [functorCategoryHasLimit](declarations/functorcategoryhaslimit.md) | 187 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `instance` | [functorCategoryHasLimitsOfShape](declarations/functorcategoryhaslimitsofshape.md) | 192 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `instance` | [functorCategoryHasColimit](declarations/functorcategoryhascolimit.md) | 195 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `instance` | [functorCategoryHasColimitsOfShape](declarations/functorcategoryhascolimitsofshape.md) | 201 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `instance` | [functorCategoryHasLimitsOfSize](declarations/functorcategoryhaslimitsofsize.md) | 205 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `instance` | [functorCategoryHasColimitsOfSize](declarations/functorcategoryhascolimitsofsize.md) | 209 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `instance` | [(anonymous)](declarations/instance.md) | 213 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `instance` | [evaluation_preservesLimit](declarations/evaluation-preserveslimit.md) | 217 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `instance` | [evaluation_preservesLimitsOfShape](declarations/evaluation-preserveslimitsofshape.md) | 224 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `def` | [limitObjIsoLimitCompEvaluation](declarations/limitobjisolimitcompevaluation.md) | 231 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [limitObjIsoLimitCompEvaluation_hom_π](declarations/limitobjisolimitcompevaluation-hom.md) | 236 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [limitObjIsoLimitCompEvaluation_inv_π_app](declarations/limitobjisolimitcompevaluation-inv-app.md) | 244 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [limit_map_limitObjIsoLimitCompEvaluation_hom](declarations/limit-map-limitobjisolimitcompevaluation-hom.md) | 253 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [limitObjIsoLimitCompEvaluation_inv_limit_map](declarations/limitobjisolimitcompevaluation-inv-limit-map.md) | 260 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [limit_obj_ext](declarations/limit-obj-ext.md) | 267 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `def` | [limitCompWhiskeringLeftIsoCompLimit](declarations/limitcompwhiskeringleftisocomplimit.md) | 276 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [limitCompWhiskeringLeftIsoCompLimit_hom_whiskerLeft_π](declarations/limitcompwhiskeringleftisocomplimit-hom-whiskerleft.md) | 285 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [limitCompWhiskeringLeftIsoCompLimit_inv_π](declarations/limitcompwhiskeringleftisocomplimit-inv.md) | 294 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `instance` | [hasColimitCompEvaluation](declarations/hascolimitcompevaluation.md) | 300 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `instance` | [evaluation_preservesColimit](declarations/evaluation-preservescolimit.md) | 304 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `instance` | [evaluation_preservesColimitsOfShape](declarations/evaluation-preservescolimitsofshape.md) | 311 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `def` | [colimitObjIsoColimitCompEvaluation](declarations/colimitobjisocolimitcompevaluation.md) | 318 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `theorem` | [colimitObjIsoColimitCompEvaluation_ι_inv](declarations/colimitobjisocolimitcompevaluation-inv.md) | 323 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `theorem` | [colimitObjIsoColimitCompEvaluation_ι_app_hom](declarations/colimitobjisocolimitcompevaluation-app-hom.md) | 331 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `theorem` | [colimitObjIsoColimitCompEvaluation_inv_colimit_map](declarations/colimitobjisocolimitcompevaluation-inv-colimit-map.md) | 340 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `theorem` | [colimit_map_colimitObjIsoColimitCompEvaluation_hom](declarations/colimit-map-colimitobjisocolimitcompevaluation-hom.md) | 349 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `theorem` | [colimit_obj_ext](declarations/colimit-obj-ext.md) | 358 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `def` | [colimitCompWhiskeringLeftIsoCompColimit](declarations/colimitcompwhiskeringleftisocompcolimit.md) | 367 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `theorem` | [ι_colimitCompWhiskeringLeftIsoCompColimit_hom](declarations/colimitcompwhiskeringleftisocompcolimit-hom.md) | 376 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `theorem` | [whiskerLeft_ι_colimitCompWhiskeringLeftIsoCompColimit_inv](declarations/whiskerleft-colimitcompwhiskeringleftisocompcolimit-inv.md) | 384 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `instance` | [evaluationPreservesLimits](declarations/evaluationpreserveslimits.md) | 390 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `lemma` | [preservesLimit_of_evaluation](declarations/preserveslimit-of-evaluation.md) | 395 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `lemma` | [preservesLimitsOfShape_of_evaluation](declarations/preserveslimitsofshape-of-evaluation.md) | 405 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `lemma` | [preservesLimits_of_evaluation](declarations/preserveslimits-of-evaluation.md) | 411 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `instance` | [preservesLimits_const](declarations/preserveslimits-const.md) | 418 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `instance` | [evaluation_preservesColimits](declarations/evaluation-preservescolimits.md) | 422 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `lemma` | [preservesColimit_of_evaluation](declarations/preservescolimit-of-evaluation.md) | 427 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `lemma` | [preservesColimitsOfShape_of_evaluation](declarations/preservescolimitsofshape-of-evaluation.md) | 437 | `BLOCKED_NATIVE_ADMISSION` |
| 51 | `lemma` | [preservesColimits_of_evaluation](declarations/preservescolimits-of-evaluation.md) | 443 | `BLOCKED_NATIVE_ADMISSION` |
| 52 | `instance` | [preservesColimits_const](declarations/preservescolimits-const.md) | 451 | `BLOCKED_NATIVE_ADMISSION` |
| 53 | `def` | [limitIsoFlipCompLim](declarations/limitisoflipcomplim.md) | 460 | `BLOCKED_NATIVE_ADMISSION` |
| 54 | `def` | [limIsoFlipCompWhiskerLim](declarations/limisoflipcompwhiskerlim.md) | 467 | `BLOCKED_NATIVE_ADMISSION` |
| 55 | `def` | [limitFlipIsoCompLim](declarations/limitflipisocomplim.md) | 478 | `BLOCKED_NATIVE_ADMISSION` |
| 56 | `def` | [limCompFlipIsoWhiskerLim](declarations/limcompflipisowhiskerlim.md) | 486 | `BLOCKED_NATIVE_ADMISSION` |
| 57 | `def` | [limitIsoSwapCompLim](declarations/limitisoswapcomplim.md) | 498 | `BLOCKED_NATIVE_ADMISSION` |
| 58 | `def` | [colimitIsoFlipCompColim](declarations/colimitisoflipcompcolim.md) | 505 | `BLOCKED_NATIVE_ADMISSION` |
| 59 | `def` | [colimIsoFlipCompWhiskerColim](declarations/colimisoflipcompwhiskercolim.md) | 512 | `BLOCKED_NATIVE_ADMISSION` |
| 60 | `def` | [colimitFlipIsoCompColim](declarations/colimitflipisocompcolim.md) | 523 | `BLOCKED_NATIVE_ADMISSION` |
| 61 | `def` | [colimCompFlipIsoWhiskerColim](declarations/colimcompflipisowhiskercolim.md) | 531 | `BLOCKED_NATIVE_ADMISSION` |
| 62 | `def` | [colimitIsoSwapCompColim](declarations/colimitisoswapcompcolim.md) | 543 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=d23ef4c2c2a533b0bb2a91a3e73c8a75a52f7c46c85c30171e0b440d651d2edc -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantedf81636b7c4d2408f657e6e0de97d38667ea4f726d2882428d3cce2a494c311.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
