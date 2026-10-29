# Coalgebra Basic Namespaced Public

[Complete source index](../../complete-source-index.md) · [Up one directory](../../complete-source-index.md) · [Full source](source.md)

**71 observed declarations and anonymous commands**, 49 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Algebra/LinearAlgebra/Basic/Variantb84bfba7eafa493d427d3ef5c26d0fbe75f393724041d56ff8365328563595d3.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `f6f408a7e1b4e3c6605514aca81133f818c0c9cf`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../_verification/specifications/CommutativeAlgebra/CoalgebraBasicNamespacedPublic.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `class` | [CoalgebraStruct](declarations/coalgebrastruct.md) | 44 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `structure` | [Coalgebra.Repr](declarations/coalgebra-repr.md) | 58 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `def` | [Coalgebra.Repr.arbitrary](declarations/coalgebra-repr-arbitrary.md) | 70 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `class` | [Coalgebra](declarations/coalgebra.md) | 87 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `abbrev` | [Repr.ι](declarations/repr.md) | 102 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [coassoc_apply](declarations/coassoc-apply.md) | 105 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [coassoc_symm_apply](declarations/coassoc-symm-apply.md) | 110 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [coassoc_symm](declarations/coassoc-symm.md) | 115 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [rTensor_counit_comul](declarations/rtensor-counit-comul.md) | 121 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [lTensor_counit_comul](declarations/ltensor-counit-comul.md) | 125 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `lemma` | [sum_counit_tmul_eq](declarations/sum-counit-tmul-eq.md) | 129 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `lemma` | [sum_tmul_counit_eq](declarations/sum-tmul-counit-eq.md) | 134 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `lemma` | [sum_tmul_tmul_eq](declarations/sum-tmul-tmul-eq.md) | 139 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [sum_counit_tmul_map_eq](declarations/sum-counit-tmul-map-eq.md) | 149 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [sum_map_tmul_counit_eq](declarations/sum-map-tmul-counit-eq.md) | 157 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [sum_map_tmul_tmul_eq](declarations/sum-map-tmul-tmul-eq.md) | 165 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `lemma` | [sum_counit_smul](declarations/sum-counit-smul.md) | 177 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `lemma` | [lift_lsmul_comp_counit_comp_comul](declarations/lift-lsmul-comp-counit-comp-comul.md) | 182 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `class` | [IsCocomm](declarations/iscocomm.md) | 194 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `lemma` | [comm_comp_comul](declarations/comm-comp-comul.md) | 200 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `lemma` | [comm_comul](declarations/comm-comul.md) | 204 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `instance` | [toCoalgebra](declarations/tocoalgebra.md) | 215 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [comul_apply](declarations/comul-apply.md) | 223 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [counit_apply](declarations/counit-apply-source-edition-2.md) | 226 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `instance` | [(anonymous)](declarations/instance-source-edition-2.md) | 228 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `instance` | [instCoalgebraStruct](declarations/instcoalgebrastruct-source-edition-4.md) | 239 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [comul_apply](declarations/comul-apply-source-edition-2.md) | 246 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [counit_apply](declarations/counit-apply.md) | 252 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [comul_comp_inl](declarations/comul-comp-inl.md) | 254 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [comul_comp_inr](declarations/comul-comp-inr.md) | 258 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [comul_comp_fst](declarations/comul-comp-fst.md) | 262 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [comul_comp_snd](declarations/comul-comp-snd.md) | 270 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [counit_comp_inr](declarations/counit-comp-inr.md) | 278 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [counit_comp_inl](declarations/counit-comp-inl.md) | 280 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `instance` | [instCoalgebra](declarations/instcoalgebra.md) | 282 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `instance` | [(anonymous)](declarations/instance.md) | 307 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `instance` | [instCoalgebraStruct](declarations/instcoalgebrastruct.md) | 322 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `theorem` | [comul_single](declarations/comul-single-source-edition-2.md) | 328 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `theorem` | [counit_single](declarations/counit-single-source-edition-3.md) | 334 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `theorem` | [comul_comp_lsingle](declarations/comul-comp-lsingle-source-edition-2.md) | 337 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `theorem` | [comul_comp_lapply](declarations/comul-comp-lapply-source-edition-2.md) | 341 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `theorem` | [counit_comp_lsingle](declarations/counit-comp-lsingle.md) | 347 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `instance` | [instCoalgebra](declarations/instcoalgebra-source-edition-3.md) | 360 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `instance` | [instIsCocomm](declarations/instiscocomm-source-edition-2.md) | 376 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `instance` | [instCoalgebraStruct](declarations/instcoalgebrastruct-source-edition-2.md) | 390 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `theorem` | [comul_single](declarations/comul-single.md) | 396 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `theorem` | [counit_single](declarations/counit-single.md) | 402 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `theorem` | [comul_comp_lsingle](declarations/comul-comp-lsingle.md) | 405 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `theorem` | [comul_comp_lapply](declarations/comul-comp-lapply.md) | 409 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `theorem` | [counit_comp_lsingle](declarations/counit-comp-lsingle-source-edition-2.md) | 414 | `BLOCKED_NATIVE_ADMISSION` |
| 51 | `instance` | [instCoalgebra](declarations/instcoalgebra-source-edition-4.md) | 425 | `BLOCKED_NATIVE_ADMISSION` |
| 52 | `instance` | [instIsCocomm](declarations/instiscocomm.md) | 441 | `BLOCKED_NATIVE_ADMISSION` |
| 53 | `instance` | [instCoalgebraStruct](declarations/instcoalgebrastruct-source-edition-3.md) | 455 | `BLOCKED_NATIVE_ADMISSION` |
| 54 | `theorem` | [comul_single](declarations/comul-single-source-edition-3.md) | 459 | `BLOCKED_NATIVE_ADMISSION` |
| 55 | `theorem` | [counit_single](declarations/counit-single-source-edition-2.md) | 463 | `BLOCKED_NATIVE_ADMISSION` |
| 56 | `theorem` | [comul_comp_single](declarations/comul-comp-single.md) | 466 | `BLOCKED_NATIVE_ADMISSION` |
| 57 | `theorem` | [comul_comp_proj](declarations/comul-comp-proj.md) | 470 | `BLOCKED_NATIVE_ADMISSION` |
| 58 | `theorem` | [counit_comp_single](declarations/counit-comp-single.md) | 475 | `BLOCKED_NATIVE_ADMISSION` |
| 59 | `theorem` | [counit_comp_dFinsuppCoeFnLinearMap](declarations/counit-comp-dfinsuppcoefnlinearmap.md) | 477 | `BLOCKED_NATIVE_ADMISSION` |
| 60 | `theorem` | [counit_coe_dFinsupp](declarations/counit-coe-dfinsupp.md) | 484 | `BLOCKED_NATIVE_ADMISSION` |
| 61 | `theorem` | [comul_comp_dFinsuppCoeFnLinearMap](declarations/comul-comp-dfinsuppcoefnlinearmap.md) | 488 | `BLOCKED_NATIVE_ADMISSION` |
| 62 | `theorem` | [comul_coe_dFinsupp](declarations/comul-coe-dfinsupp.md) | 497 | `BLOCKED_NATIVE_ADMISSION` |
| 63 | `theorem` | [counit_comp_finsuppLcoeFun](declarations/counit-comp-finsupplcoefun.md) | 503 | `BLOCKED_NATIVE_ADMISSION` |
| 64 | `theorem` | [counit_coe_finsupp](declarations/counit-coe-finsupp.md) | 509 | `BLOCKED_NATIVE_ADMISSION` |
| 65 | `theorem` | [comul_comp_finsuppLcoeFun](declarations/comul-comp-finsupplcoefun.md) | 513 | `BLOCKED_NATIVE_ADMISSION` |
| 66 | `theorem` | [comul_coe_finsupp](declarations/comul-coe-finsupp.md) | 520 | `BLOCKED_NATIVE_ADMISSION` |
| 67 | `instance` | [instCoalgebra](declarations/instcoalgebra-source-edition-2.md) | 532 | `BLOCKED_NATIVE_ADMISSION` |
| 68 | `instance` | [instIsCocomm](declarations/instiscocomm-source-edition-3.md) | 548 | `BLOCKED_NATIVE_ADMISSION` |
| 69 | `abbrev` | [coalgebraStruct](declarations/coalgebrastruct-source-edition-2.md) | 559 | `BLOCKED_NATIVE_ADMISSION` |
| 70 | `abbrev` | [coalgebra](declarations/coalgebra-source-edition-2.md) | 565 | `BLOCKED_NATIVE_ADMISSION` |
| 71 | `lemma` | [coalgebraIsCocomm](declarations/coalgebraiscocomm.md) | 587 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=f883a3757d50ed970ca84575e89fb875bfedbecd2abafe57f97a169c3c6e51fb -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/Basic/Variantb84bfba7eafa493d427d3ef5c26d0fbe75f393724041d56ff8365328563595d3.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
