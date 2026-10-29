# Coalgebra Basic Public

[Complete source index](../../complete-source-index.md) · [Up one directory](../../complete-source-index.md) · [Full source](source.md)

**71 observed declarations and anonymous commands**, 49 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Algebra/LinearAlgebra/Basic/Variante6bb06a7731bb0a853f93ca79a108a0f88c1f9d7e50e8136b6937d05d2da7d94.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `7abb2ed7b2accf77634e93f84ae81e4522fea368`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../_verification/specifications/CommutativeAlgebra/CoalgebraBasicPublic.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `class` | [CoalgebraStruct](declarations/coalgebrastruct.md) | 36 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `structure` | [Coalgebra.Repr](declarations/coalgebra-repr.md) | 50 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `def` | [Coalgebra.Repr.arbitrary](declarations/coalgebra-repr-arbitrary.md) | 62 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `class` | [Coalgebra](declarations/coalgebra-source-edition-2.md) | 79 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `abbrev` | [Repr.ι](declarations/repr.md) | 94 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [coassoc_apply](declarations/coassoc-apply.md) | 97 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [coassoc_symm_apply](declarations/coassoc-symm-apply.md) | 102 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [coassoc_symm](declarations/coassoc-symm.md) | 107 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [rTensor_counit_comul](declarations/rtensor-counit-comul.md) | 113 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [lTensor_counit_comul](declarations/ltensor-counit-comul.md) | 117 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `lemma` | [sum_counit_tmul_eq](declarations/sum-counit-tmul-eq.md) | 121 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `lemma` | [sum_tmul_counit_eq](declarations/sum-tmul-counit-eq.md) | 126 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `lemma` | [sum_tmul_tmul_eq](declarations/sum-tmul-tmul-eq.md) | 131 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [sum_counit_tmul_map_eq](declarations/sum-counit-tmul-map-eq.md) | 141 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [sum_map_tmul_counit_eq](declarations/sum-map-tmul-counit-eq.md) | 149 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [sum_map_tmul_tmul_eq](declarations/sum-map-tmul-tmul-eq.md) | 157 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `lemma` | [sum_counit_smul](declarations/sum-counit-smul.md) | 169 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `lemma` | [lift_lsmul_comp_counit_comp_comul](declarations/lift-lsmul-comp-counit-comp-comul.md) | 174 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `class` | [IsCocomm](declarations/iscocomm.md) | 186 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `lemma` | [comm_comp_comul](declarations/comm-comp-comul.md) | 192 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `lemma` | [comm_comul](declarations/comm-comul.md) | 196 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `instance` | [toCoalgebra](declarations/tocoalgebra.md) | 207 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [comul_apply](declarations/comul-apply-source-edition-2.md) | 215 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [counit_apply](declarations/counit-apply-source-edition-2.md) | 218 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `instance` | [(anonymous)](declarations/instance-source-edition-2.md) | 220 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `instance` | [instCoalgebraStruct](declarations/instcoalgebrastruct-source-edition-4.md) | 231 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [comul_apply](declarations/comul-apply.md) | 238 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [counit_apply](declarations/counit-apply.md) | 244 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [comul_comp_inl](declarations/comul-comp-inl.md) | 246 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [comul_comp_inr](declarations/comul-comp-inr.md) | 250 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [comul_comp_fst](declarations/comul-comp-fst.md) | 254 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [comul_comp_snd](declarations/comul-comp-snd.md) | 262 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [counit_comp_inr](declarations/counit-comp-inr.md) | 270 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [counit_comp_inl](declarations/counit-comp-inl.md) | 272 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `instance` | [instCoalgebra](declarations/instcoalgebra-source-edition-3.md) | 274 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `instance` | [(anonymous)](declarations/instance.md) | 299 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `instance` | [instCoalgebraStruct](declarations/instcoalgebrastruct-source-edition-3.md) | 314 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `theorem` | [comul_single](declarations/comul-single-source-edition-3.md) | 320 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `theorem` | [counit_single](declarations/counit-single-source-edition-2.md) | 326 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `theorem` | [comul_comp_lsingle](declarations/comul-comp-lsingle.md) | 329 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `theorem` | [comul_comp_lapply](declarations/comul-comp-lapply-source-edition-2.md) | 333 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `theorem` | [counit_comp_lsingle](declarations/counit-comp-lsingle.md) | 339 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `instance` | [instCoalgebra](declarations/instcoalgebra.md) | 352 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `instance` | [instIsCocomm](declarations/instiscocomm-source-edition-2.md) | 368 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `instance` | [instCoalgebraStruct](declarations/instcoalgebrastruct.md) | 382 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `theorem` | [comul_single](declarations/comul-single-source-edition-2.md) | 388 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `theorem` | [counit_single](declarations/counit-single-source-edition-3.md) | 394 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `theorem` | [comul_comp_lsingle](declarations/comul-comp-lsingle-source-edition-2.md) | 397 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `theorem` | [comul_comp_lapply](declarations/comul-comp-lapply.md) | 401 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `theorem` | [counit_comp_lsingle](declarations/counit-comp-lsingle-source-edition-2.md) | 406 | `BLOCKED_NATIVE_ADMISSION` |
| 51 | `instance` | [instCoalgebra](declarations/instcoalgebra-source-edition-4.md) | 417 | `BLOCKED_NATIVE_ADMISSION` |
| 52 | `instance` | [instIsCocomm](declarations/instiscocomm-source-edition-3.md) | 433 | `BLOCKED_NATIVE_ADMISSION` |
| 53 | `instance` | [instCoalgebraStruct](declarations/instcoalgebrastruct-source-edition-2.md) | 447 | `BLOCKED_NATIVE_ADMISSION` |
| 54 | `theorem` | [comul_single](declarations/comul-single.md) | 451 | `BLOCKED_NATIVE_ADMISSION` |
| 55 | `theorem` | [counit_single](declarations/counit-single.md) | 455 | `BLOCKED_NATIVE_ADMISSION` |
| 56 | `theorem` | [comul_comp_single](declarations/comul-comp-single.md) | 458 | `BLOCKED_NATIVE_ADMISSION` |
| 57 | `theorem` | [comul_comp_proj](declarations/comul-comp-proj.md) | 462 | `BLOCKED_NATIVE_ADMISSION` |
| 58 | `theorem` | [counit_comp_single](declarations/counit-comp-single.md) | 467 | `BLOCKED_NATIVE_ADMISSION` |
| 59 | `theorem` | [counit_comp_dFinsuppCoeFnLinearMap](declarations/counit-comp-dfinsuppcoefnlinearmap.md) | 469 | `BLOCKED_NATIVE_ADMISSION` |
| 60 | `theorem` | [counit_coe_dFinsupp](declarations/counit-coe-dfinsupp.md) | 476 | `BLOCKED_NATIVE_ADMISSION` |
| 61 | `theorem` | [comul_comp_dFinsuppCoeFnLinearMap](declarations/comul-comp-dfinsuppcoefnlinearmap.md) | 480 | `BLOCKED_NATIVE_ADMISSION` |
| 62 | `theorem` | [comul_coe_dFinsupp](declarations/comul-coe-dfinsupp.md) | 489 | `BLOCKED_NATIVE_ADMISSION` |
| 63 | `theorem` | [counit_comp_finsuppLcoeFun](declarations/counit-comp-finsupplcoefun.md) | 495 | `BLOCKED_NATIVE_ADMISSION` |
| 64 | `theorem` | [counit_coe_finsupp](declarations/counit-coe-finsupp.md) | 501 | `BLOCKED_NATIVE_ADMISSION` |
| 65 | `theorem` | [comul_comp_finsuppLcoeFun](declarations/comul-comp-finsupplcoefun.md) | 505 | `BLOCKED_NATIVE_ADMISSION` |
| 66 | `theorem` | [comul_coe_finsupp](declarations/comul-coe-finsupp.md) | 512 | `BLOCKED_NATIVE_ADMISSION` |
| 67 | `instance` | [instCoalgebra](declarations/instcoalgebra-source-edition-2.md) | 524 | `BLOCKED_NATIVE_ADMISSION` |
| 68 | `instance` | [instIsCocomm](declarations/instiscocomm.md) | 540 | `BLOCKED_NATIVE_ADMISSION` |
| 69 | `abbrev` | [coalgebraStruct](declarations/coalgebrastruct-source-edition-2.md) | 551 | `BLOCKED_NATIVE_ADMISSION` |
| 70 | `abbrev` | [coalgebra](declarations/coalgebra.md) | 557 | `BLOCKED_NATIVE_ADMISSION` |
| 71 | `lemma` | [coalgebraIsCocomm](declarations/coalgebraiscocomm.md) | 579 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=6a818886c5d5bef1d39d986f5b3e56a0f6484310332a78ed0779b083c0b8a577 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/Basic/Variante6bb06a7731bb0a853f93ca79a108a0f88c1f9d7e50e8136b6937d05d2da7d94.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
