# Limits Functor Category

[Complete source index](../../../complete-source-index.md) · [Up one directory](../../complete-source-index.md) · [Full source](source.md)

**44 observed declarations and anonymous commands**, 12 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorCategory/Variantf5716a34142af5c70585c5fd77689132abff897ca8fcd3b1e66483a17931fa45.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `422a89b052efb89d5051e130e43393dab3202989`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LimitsFunctorCategory.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `theorem` | [limit.lift_π_app](declarations/limit-lift-app.md) | 37 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `theorem` | [colimit.ι_desc_app](declarations/colimit-desc-app.md) | 43 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `def` | [evaluationJointlyReflectsLimits](declarations/evaluationjointlyreflectslimits.md) | 52 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `def` | [combineCones](declarations/combinecones.md) | 76 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `def` | [evaluateCombinedCones](declarations/evaluatecombinedcones.md) | 92 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `def` | [combinedIsLimit](declarations/combinedislimit.md) | 98 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `def` | [evaluationJointlyReflectsColimits](declarations/evaluationjointlyreflectscolimits.md) | 108 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `def` | [combineCocones](declarations/combinecocones.md) | 135 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `def` | [evaluateCombinedCocones](declarations/evaluatecombinedcocones.md) | 151 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `def` | [combinedIsColimit](declarations/combinediscolimit.md) | 157 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `instance` | [functorCategoryHasLimitsOfShape](declarations/functorcategoryhaslimitsofshape.md) | 165 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `instance` | [functorCategoryHasColimitsOfShape](declarations/functorcategoryhascolimitsofshape.md) | 172 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `instance` | [functorCategoryHasLimitsOfSize](declarations/functorcategoryhaslimitsofsize.md) | 181 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `instance` | [functorCategoryHasColimitsOfSize](declarations/functorcategoryhascolimitsofsize.md) | 187 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `instance` | [evaluationPreservesLimitsOfShape](declarations/evaluationpreserveslimitsofshape.md) | 192 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `def` | [limitObjIsoLimitCompEvaluation](declarations/limitobjisolimitcompevaluation.md) | 205 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [limitObjIsoLimitCompEvaluation_hom_π](declarations/limitobjisolimitcompevaluation-hom.md) | 211 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [limitObjIsoLimitCompEvaluation_inv_π_app](declarations/limitobjisolimitcompevaluation-inv-app.md) | 220 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [limit_map_limitObjIsoLimitCompEvaluation_hom](declarations/limit-map-limitobjisolimitcompevaluation-hom.md) | 230 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [limitObjIsoLimitCompEvaluation_inv_limit_map](declarations/limitobjisolimitcompevaluation-inv-limit-map.md) | 239 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [limit_obj_ext](declarations/limit-obj-ext.md) | 247 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `instance` | [evaluationPreservesColimitsOfShape](declarations/evaluationpreservescolimitsofshape.md) | 255 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `def` | [colimitObjIsoColimitCompEvaluation](declarations/colimitobjisocolimitcompevaluation.md) | 268 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [colimitObjIsoColimitCompEvaluation_ι_inv](declarations/colimitobjisocolimitcompevaluation-inv.md) | 274 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [colimitObjIsoColimitCompEvaluation_ι_app_hom](declarations/colimitobjisocolimitcompevaluation-app-hom.md) | 283 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [colimitObjIsoColimitCompEvaluation_inv_colimit_map](declarations/colimitobjisocolimitcompevaluation-inv-colimit-map.md) | 293 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [colimit_map_colimitObjIsoColimitCompEvaluation_hom](declarations/colimit-map-colimitobjisocolimitcompevaluation-hom.md) | 304 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [colimit_obj_ext](declarations/colimit-obj-ext.md) | 314 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `instance` | [evaluationPreservesLimits](declarations/evaluationpreserveslimits.md) | 322 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `def` | [preservesLimitOfEvaluation](declarations/preserveslimitofevaluation.md) | 327 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `def` | [preservesLimitsOfShapeOfEvaluation](declarations/preserveslimitsofshapeofevaluation.md) | 338 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `def` | [preservesLimitsOfEvaluation](declarations/preserveslimitsofevaluation.md) | 345 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `instance` | [preservesLimitsConst](declarations/preserveslimitsconst.md) | 353 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `instance` | [evaluationPreservesColimits](declarations/evaluationpreservescolimits.md) | 358 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `def` | [preservesColimitOfEvaluation](declarations/preservescolimitofevaluation.md) | 364 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `def` | [preservesColimitsOfShapeOfEvaluation](declarations/preservescolimitsofshapeofevaluation.md) | 375 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `def` | [preservesColimitsOfEvaluation](declarations/preservescolimitsofevaluation.md) | 382 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `instance` | [preservesColimitsConst](declarations/preservescolimitsconst.md) | 391 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `def` | [limitIsoFlipCompLim](declarations/limitisoflipcomplim.md) | 401 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `def` | [limitFlipIsoCompLim](declarations/limitflipisocomplim.md) | 407 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `def` | [limitIsoSwapCompLim](declarations/limitisoswapcomplim.md) | 417 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `def` | [colimitIsoFlipCompColim](declarations/colimitisoflipcompcolim.md) | 425 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `def` | [colimitFlipIsoCompColim](declarations/colimitflipisocompcolim.md) | 431 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `def` | [colimitIsoSwapCompColim](declarations/colimitisoswapcompcolim.md) | 441 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=95576f3cdc0160dc96bdddfdd99cfea20ed557b737126b78ff2d77ef875af1ec -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorCategory/Variantf5716a34142af5c70585c5fd77689132abff897ca8fcd3b1e66483a17931fa45.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
