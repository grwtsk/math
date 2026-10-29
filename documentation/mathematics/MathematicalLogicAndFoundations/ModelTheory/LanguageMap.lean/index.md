# Language Map

[Complete source index](../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**77 observed declarations and anonymous commands**, 27 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/FoundationsLogicAndTypeTheory/ModelTheory/LanguageMap/Variant3b09a199c77a8ac1d176ebb75f02ad8089473a8884317aca8b3ffa8f724eeb80.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `055246139aa8e6d862bde76e4e4578893fbb4bcf`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/MathematicalLogicAndFoundations/ModelTheory/LanguageMap.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `structure` | [LHom](declarations/lhom.md) | 49 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `def` | [reduct](declarations/reduct.md) | 68 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `def` | [id](declarations/id.md) | 74 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `instance` | [(anonymous)](declarations/instance.md) | 77 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `def` | [sumInl](declarations/suminl.md) | 82 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `def` | [sumInr](declarations/suminr.md) | 87 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `def` | [ofIsEmpty](declarations/ofisempty.md) | 94 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [funext](declarations/funext.md) | 99 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `instance` | [(anonymous)](declarations/instance-source-edition-3.md) | 106 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `def` | [comp](declarations/comp.md) | 111 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [id_comp](declarations/id-comp.md) | 119 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [comp_id](declarations/comp-id.md) | 124 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [comp_assoc](declarations/comp-assoc.md) | 128 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `def` | [sumElim](declarations/sumelim.md) | 138 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [sumElim_comp_inl](declarations/sumelim-comp-inl.md) | 142 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [sumElim_comp_inr](declarations/sumelim-comp-inr.md) | 145 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [sumElim_inl_inr](declarations/sumelim-inl-inr.md) | 148 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [comp_sumElim](declarations/comp-sumelim.md) | 151 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `def` | [sumMap](declarations/summap.md) | 163 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [sumMap_comp_inl](declarations/summap-comp-inl.md) | 168 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [sumMap_comp_inr](declarations/summap-comp-inr.md) | 172 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `structure` | [Injective](declarations/injective.md) | 178 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `def` | [defaultExpansion](declarations/defaultexpansion.md) | 184 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `class` | [IsExpansionOn](declarations/isexpansionon.md) | 197 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [map_onFunction](declarations/map-onfunction.md) | 206 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [map_onRelation](declarations/map-onrelation.md) | 211 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `instance` | [id_isExpansionOn](declarations/id-isexpansionon.md) | 215 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `instance` | [ofIsEmpty_isExpansionOn](declarations/ofisempty-isexpansionon.md) | 218 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `instance` | [sumElim_isExpansionOn](declarations/sumelim-isexpansionon.md) | 221 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `instance` | [sumMap_isExpansionOn](declarations/summap-isexpansionon.md) | 226 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `instance` | [sumInl_isExpansionOn](declarations/suminl-isexpansionon.md) | 231 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `instance` | [sumInr_isExpansionOn](declarations/suminr-isexpansionon.md) | 235 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [funMap_sumInl](declarations/funmap-suminl.md) | 240 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [funMap_sumInr](declarations/funmap-suminr.md) | 245 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `theorem` | [sumInl_injective](declarations/suminl-injective.md) | 249 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `theorem` | [sumInr_injective](declarations/suminr-injective.md) | 252 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `instance` | [(anonymous)](declarations/instance-source-edition-4.md) | 255 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `theorem` | [Injective.isExpansionOn_default](declarations/injective-isexpansionon-default.md) | 260 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `structure` | [LEquiv](declarations/lequiv.md) | 277 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `def` | [refl](declarations/refl.md) | 293 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `instance` | [(anonymous)](declarations/instance-source-edition-2.md) | 296 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `def` | [symm](declarations/symm.md) | 303 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `def` | [trans](declarations/trans.md) | 308 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `def` | [constantsOnFunc](declarations/constantsonfunc.md) | 321 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `def` | [constantsOn](declarations/constantson.md) | 327 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `theorem` | [constantsOn_constants](declarations/constantson-constants.md) | 331 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `instance` | [isAlgebraic_constantsOn](declarations/isalgebraic-constantson.md) | 334 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `instance` | [isEmpty_functions_constantsOn_succ](declarations/isempty-functions-constantson-succ.md) | 338 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `instance` | [isRelational_constantsOn](declarations/isrelational-constantson.md) | 341 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `theorem` | [card_constantsOn](declarations/card-constantson.md) | 344 | `BLOCKED_NATIVE_ADMISSION` |
| 51 | `def` | [constantsOn.structure](declarations/constantson-structure.md) | 348 | `BLOCKED_NATIVE_ADMISSION` |
| 52 | `def` | [LHom.constantsOnMap](declarations/lhom-constantsonmap.md) | 356 | `BLOCKED_NATIVE_ADMISSION` |
| 53 | `theorem` | [constantsOnMap_isExpansionOn](declarations/constantsonmap-isexpansionon.md) | 361 | `BLOCKED_NATIVE_ADMISSION` |
| 54 | `def` | [withConstants](declarations/withconstants.md) | 381 | `BLOCKED_NATIVE_ADMISSION` |
| 55 | `theorem` | [card_withConstants](declarations/card-withconstants.md) | 388 | `BLOCKED_NATIVE_ADMISSION` |
| 56 | `def` | [lhomWithConstants](declarations/lhomwithconstants.md) | 394 | `BLOCKED_NATIVE_ADMISSION` |
| 57 | `theorem` | [lhomWithConstants_injective](declarations/lhomwithconstants-injective.md) | 397 | `BLOCKED_NATIVE_ADMISSION` |
| 58 | `def` | [con](declarations/con.md) | 403 | `BLOCKED_NATIVE_ADMISSION` |
| 59 | `def` | [LHom.addConstants](declarations/lhom-addconstants.md) | 409 | `BLOCKED_NATIVE_ADMISSION` |
| 60 | `instance` | [paramsStructure](declarations/paramsstructure.md) | 412 | `BLOCKED_NATIVE_ADMISSION` |
| 61 | `def` | [LEquiv.addEmptyConstants](declarations/lequiv-addemptyconstants.md) | 419 | `BLOCKED_NATIVE_ADMISSION` |
| 62 | `theorem` | [withConstants_funMap_sumInl](declarations/withconstants-funmap-suminl.md) | 430 | `BLOCKED_NATIVE_ADMISSION` |
| 63 | `theorem` | [withConstants_relMap_sumInl](declarations/withconstants-relmap-suminl.md) | 435 | `BLOCKED_NATIVE_ADMISSION` |
| 64 | `def` | [lhomWithConstantsMap](declarations/lhomwithconstantsmap.md) | 445 | `BLOCKED_NATIVE_ADMISSION` |
| 65 | `theorem` | [LHom.map_constants_comp_sumInl](declarations/lhom-map-constants-comp-suminl.md) | 449 | `BLOCKED_NATIVE_ADMISSION` |
| 66 | `instance` | [constantsOnSelfStructure](declarations/constantsonselfstructure.md) | 456 | `BLOCKED_NATIVE_ADMISSION` |
| 67 | `instance` | [withConstantsSelfStructure](declarations/withconstantsselfstructure.md) | 459 | `BLOCKED_NATIVE_ADMISSION` |
| 68 | `instance` | [withConstants_self_expansion](declarations/withconstants-self-expansion.md) | 462 | `BLOCKED_NATIVE_ADMISSION` |
| 69 | `instance` | [withConstantsStructure](declarations/withconstantsstructure.md) | 467 | `BLOCKED_NATIVE_ADMISSION` |
| 70 | `instance` | [withConstants_expansion](declarations/withconstants-expansion.md) | 470 | `BLOCKED_NATIVE_ADMISSION` |
| 71 | `instance` | [addEmptyConstants_is_expansion_on'](declarations/addemptyconstants-is-expansion-on.md) | 473 | `BLOCKED_NATIVE_ADMISSION` |
| 72 | `instance` | [addEmptyConstants_symm_isExpansionOn](declarations/addemptyconstants-symm-isexpansionon.md) | 477 | `BLOCKED_NATIVE_ADMISSION` |
| 73 | `instance` | [addConstants_expansion](declarations/addconstants-expansion.md) | 481 | `BLOCKED_NATIVE_ADMISSION` |
| 74 | `theorem` | [withConstants_funMap_sumInr](declarations/withconstants-funmap-suminr.md) | 486 | `BLOCKED_NATIVE_ADMISSION` |
| 75 | `theorem` | [coe_con](declarations/coe-con.md) | 497 | `BLOCKED_NATIVE_ADMISSION` |
| 76 | `instance` | [constantsOnMap_inclusion_isExpansionOn](declarations/constantsonmap-inclusion-isexpansionon.md) | 502 | `BLOCKED_NATIVE_ADMISSION` |
| 77 | `instance` | [map_constants_inclusion_isExpansionOn](declarations/map-constants-inclusion-isexpansionon.md) | 506 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=cc23f98162ccff662fbd45045e8f02495cb55fe5bd01e3cc69513dd6ba2c6d26 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/ModelTheory/LanguageMap/Variant3b09a199c77a8ac1d176ebb75f02ad8089473a8884317aca8b3ffa8f724eeb80.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
