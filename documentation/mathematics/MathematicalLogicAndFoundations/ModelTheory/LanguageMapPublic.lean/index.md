# Language Map Public

[Complete source index](../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**80 observed declarations and anonymous commands**, 27 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/FoundationsLogicAndTypeTheory/ModelTheory/LanguageMap/Variant557ee87a632df14002fe447fa7f20218f17f64f60ba3527ad5a56a1b70fb0d1b.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `e980d5885291957a151b41c5e85ed2e940c79100`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/MathematicalLogicAndFoundations/ModelTheory/LanguageMapPublic.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `structure` | [LHom](declarations/lhom.md) | 50 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `def` | [reduct](declarations/reduct.md) | 70 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `def` | [id](declarations/id.md) | 76 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `instance` | [(anonymous)](declarations/instance-source-edition-3.md) | 79 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `def` | [sumInl](declarations/suminl.md) | 84 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `def` | [sumInr](declarations/suminr.md) | 89 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `def` | [ofIsEmpty](declarations/ofisempty.md) | 96 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [funext](declarations/funext.md) | 101 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `instance` | [(anonymous)](declarations/instance-source-edition-4.md) | 108 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `def` | [comp](declarations/comp.md) | 113 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [id_comp](declarations/id-comp.md) | 121 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [comp_id](declarations/comp-id.md) | 126 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [comp_assoc](declarations/comp-assoc.md) | 130 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `def` | [sumElim](declarations/sumelim.md) | 140 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [sumElim_comp_inl](declarations/sumelim-comp-inl.md) | 144 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [sumElim_comp_inr](declarations/sumelim-comp-inr.md) | 147 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [sumElim_inl_inr](declarations/sumelim-inl-inr.md) | 150 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [comp_sumElim](declarations/comp-sumelim.md) | 153 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `def` | [sumMap](declarations/summap.md) | 165 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [sumMap_comp_inl](declarations/summap-comp-inl.md) | 170 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [sumMap_comp_inr](declarations/summap-comp-inr.md) | 174 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `structure` | [Injective](declarations/injective.md) | 180 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `def` | [defaultExpansion](declarations/defaultexpansion.md) | 187 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `class` | [IsExpansionOn](declarations/isexpansionon.md) | 200 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [map_onFunction](declarations/map-onfunction.md) | 209 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [map_onRelation](declarations/map-onrelation.md) | 214 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `instance` | [id_isExpansionOn](declarations/id-isexpansionon.md) | 218 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `instance` | [ofIsEmpty_isExpansionOn](declarations/ofisempty-isexpansionon.md) | 221 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `instance` | [sumElim_isExpansionOn](declarations/sumelim-isexpansionon.md) | 224 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `instance` | [sumMap_isExpansionOn](declarations/summap-isexpansionon.md) | 229 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `instance` | [sumInl_isExpansionOn](declarations/suminl-isexpansionon.md) | 234 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `instance` | [sumInr_isExpansionOn](declarations/suminr-isexpansionon.md) | 238 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [funMap_sumInl](declarations/funmap-suminl.md) | 243 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [funMap_sumInr](declarations/funmap-suminr.md) | 248 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `theorem` | [sumInl_injective](declarations/suminl-injective.md) | 252 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `theorem` | [sumInr_injective](declarations/suminr-injective.md) | 255 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `instance` | [(anonymous)](declarations/instance-source-edition-6.md) | 258 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `theorem` | [Injective.isExpansionOn_default](declarations/injective-isexpansionon-default.md) | 263 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `structure` | [LEquiv](declarations/lequiv.md) | 280 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `def` | [refl](declarations/refl.md) | 296 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `instance` | [(anonymous)](declarations/instance-source-edition-2.md) | 299 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `def` | [symm](declarations/symm.md) | 306 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `def` | [trans](declarations/trans.md) | 311 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `def` | [constantsOnFunc](declarations/constantsonfunc.md) | 324 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `def` | [constantsOn](declarations/constantson.md) | 330 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `theorem` | [constantsOn_constants](declarations/constantson-constants.md) | 335 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `instance` | [isEmpty_functions_constantsOn_succ](declarations/isempty-functions-constantson-succ.md) | 338 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `instance` | [isRelational_constantsOn](declarations/isrelational-constantson.md) | 341 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `theorem` | [card_constantsOn](declarations/card-constantson.md) | 344 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `def` | [constantsOn.structure](declarations/constantson-structure.md) | 349 | `BLOCKED_NATIVE_ADMISSION` |
| 51 | `def` | [LHom.constantsOnMap](declarations/lhom-constantsonmap.md) | 357 | `BLOCKED_NATIVE_ADMISSION` |
| 52 | `theorem` | [constantsOnMap_isExpansionOn](declarations/constantsonmap-isexpansionon.md) | 362 | `BLOCKED_NATIVE_ADMISSION` |
| 53 | `def` | [withConstants](declarations/withconstants.md) | 382 | `BLOCKED_NATIVE_ADMISSION` |
| 54 | `theorem` | [card_withConstants](declarations/card-withconstants.md) | 389 | `BLOCKED_NATIVE_ADMISSION` |
| 55 | `def` | [lhomWithConstants](declarations/lhomwithconstants.md) | 395 | `BLOCKED_NATIVE_ADMISSION` |
| 56 | `theorem` | [lhomWithConstants_injective](declarations/lhomwithconstants-injective.md) | 398 | `BLOCKED_NATIVE_ADMISSION` |
| 57 | `def` | [con](declarations/con.md) | 404 | `BLOCKED_NATIVE_ADMISSION` |
| 58 | `def` | [LHom.addConstants](declarations/lhom-addconstants.md) | 410 | `BLOCKED_NATIVE_ADMISSION` |
| 59 | `instance` | [paramsStructure](declarations/paramsstructure.md) | 413 | `BLOCKED_NATIVE_ADMISSION` |
| 60 | `def` | [LEquiv.addEmptyConstants](declarations/lequiv-addemptyconstants.md) | 421 | `BLOCKED_NATIVE_ADMISSION` |
| 61 | `theorem` | [withConstants_funMap_sumInl](declarations/withconstants-funmap-suminl.md) | 432 | `BLOCKED_NATIVE_ADMISSION` |
| 62 | `theorem` | [withConstants_relMap_sumInl](declarations/withconstants-relmap-suminl.md) | 437 | `BLOCKED_NATIVE_ADMISSION` |
| 63 | `def` | [lhomWithConstantsMap](declarations/lhomwithconstantsmap.md) | 442 | `BLOCKED_NATIVE_ADMISSION` |
| 64 | `theorem` | [LHom.map_constants_comp_sumInl](declarations/lhom-map-constants-comp-suminl.md) | 446 | `BLOCKED_NATIVE_ADMISSION` |
| 65 | `instance` | [withConstantsStructure](declarations/withconstantsstructure.md) | 455 | `BLOCKED_NATIVE_ADMISSION` |
| 66 | `instance` | [constantsOnSelfStructure](declarations/constantsonselfstructure.md) | 458 | `BLOCKED_NATIVE_ADMISSION` |
| 67 | `instance` | [withConstantsSelfStructure](declarations/withconstantsselfstructure.md) | 461 | `BLOCKED_NATIVE_ADMISSION` |
| 68 | `instance` | [withConstants_self_expansion](declarations/withconstants-self-expansion.md) | 463 | `BLOCKED_NATIVE_ADMISSION` |
| 69 | `instance` | [withConstants_expansion](declarations/withconstants-expansion.md) | 466 | `BLOCKED_NATIVE_ADMISSION` |
| 70 | `instance` | [addEmptyConstants_is_expansion_on'](declarations/addemptyconstants-is-expansion-on.md) | 469 | `BLOCKED_NATIVE_ADMISSION` |
| 71 | `instance` | [addEmptyConstants_symm_isExpansionOn](declarations/addemptyconstants-symm-isexpansionon.md) | 473 | `BLOCKED_NATIVE_ADMISSION` |
| 72 | `instance` | [addConstants_expansion](declarations/addconstants-expansion.md) | 477 | `BLOCKED_NATIVE_ADMISSION` |
| 73 | `theorem` | [withConstants_funMap_sumInr](declarations/withconstants-funmap-suminr.md) | 483 | `BLOCKED_NATIVE_ADMISSION` |
| 74 | `theorem` | [coe_con](declarations/coe-con.md) | 491 | `BLOCKED_NATIVE_ADMISSION` |
| 75 | `instance` | [constantsOnMap_inclusion_isExpansionOn](declarations/constantsonmap-inclusion-isexpansionon.md) | 496 | `BLOCKED_NATIVE_ADMISSION` |
| 76 | `instance` | [map_constants_inclusion_isExpansionOn](declarations/map-constants-inclusion-isexpansionon.md) | 500 | `BLOCKED_NATIVE_ADMISSION` |
| 77 | `def` | [Embedding.withConstants](declarations/embedding-withconstants.md) | 509 | `BLOCKED_NATIVE_ADMISSION` |
| 78 | `instance` | [(anonymous)](declarations/instance.md) | 512 | `BLOCKED_NATIVE_ADMISSION` |
| 79 | `instance` | [(anonymous)](declarations/instance-source-edition-5.md) | 515 | `BLOCKED_NATIVE_ADMISSION` |
| 80 | `def` | [Embedding.liftWithConstants](declarations/embedding-liftwithconstants.md) | 518 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=18e144f2bbf741ec82c4289fc678049b575014c8dcb9b26e4f74dbfd8c12f033 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/ModelTheory/LanguageMap/Variant557ee87a632df14002fe447fa7f20218f17f64f60ba3527ad5a56a1b70fb0d1b.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
