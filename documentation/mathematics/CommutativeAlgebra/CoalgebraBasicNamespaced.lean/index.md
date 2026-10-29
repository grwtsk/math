# Coalgebra Basic Namespaced

[Complete source index](../../complete-source-index.md) · [Up one directory](../../complete-source-index.md) · [Full source](source.md)

**42 observed declarations and anonymous commands**, 31 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Algebra/LinearAlgebra/Basic/Varianta77197fa5d1370605462e1803055fd2530429eafe58f0e43679730becf9aa59f.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `0957870881e4684b7be373d0d6e1863cced976f9`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../_verification/specifications/CommutativeAlgebra/CoalgebraBasicNamespaced.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `class` | [CoalgebraStruct](declarations/coalgebrastruct.md) | 40 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `structure` | [Coalgebra.Repr](declarations/coalgebra-repr.md) | 51 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `def` | [Coalgebra.Repr.arbitrary](declarations/coalgebra-repr-arbitrary.md) | 65 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `class` | [Coalgebra](declarations/coalgebra.md) | 82 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [coassoc_apply](declarations/coassoc-apply.md) | 96 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [coassoc_symm_apply](declarations/coassoc-symm-apply.md) | 101 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [coassoc_symm](declarations/coassoc-symm.md) | 106 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [rTensor_counit_comul](declarations/rtensor-counit-comul.md) | 112 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [lTensor_counit_comul](declarations/ltensor-counit-comul.md) | 116 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `lemma` | [sum_counit_tmul_eq](declarations/sum-counit-tmul-eq.md) | 120 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `lemma` | [sum_tmul_counit_eq](declarations/sum-tmul-counit-eq.md) | 125 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `lemma` | [sum_tmul_tmul_eq](declarations/sum-tmul-tmul-eq.md) | 130 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [sum_counit_tmul_map_eq](declarations/sum-counit-tmul-map-eq.md) | 140 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [sum_map_tmul_counit_eq](declarations/sum-map-tmul-counit-eq.md) | 148 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [sum_map_tmul_tmul_eq](declarations/sum-map-tmul-tmul-eq.md) | 156 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `instance` | [toCoalgebra](declarations/tocoalgebra.md) | 176 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [comul_apply](declarations/comul-apply.md) | 184 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [counit_apply](declarations/counit-apply.md) | 187 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `instance` | [instCoalgebraStruct](declarations/instcoalgebrastruct.md) | 198 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [comul_apply](declarations/comul-apply-source-edition-2.md) | 205 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [counit_apply](declarations/counit-apply-source-edition-2.md) | 211 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [comul_comp_inl](declarations/comul-comp-inl.md) | 213 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [comul_comp_inr](declarations/comul-comp-inr.md) | 217 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [comul_comp_fst](declarations/comul-comp-fst.md) | 221 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [comul_comp_snd](declarations/comul-comp-snd.md) | 229 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [counit_comp_inr](declarations/counit-comp-inr.md) | 237 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [counit_comp_inl](declarations/counit-comp-inl.md) | 239 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `instance` | [instCoalgebra](declarations/instcoalgebra.md) | 241 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `instance` | [instCoalgebraStruct](declarations/instcoalgebrastruct-source-edition-2.md) | 275 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [comul_single](declarations/comul-single-source-edition-2.md) | 281 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [counit_single](declarations/counit-single.md) | 287 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [comul_comp_lsingle](declarations/comul-comp-lsingle-source-edition-2.md) | 290 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [comul_comp_lapply](declarations/comul-comp-lapply-source-edition-2.md) | 294 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [counit_comp_lsingle](declarations/counit-comp-lsingle-source-edition-2.md) | 303 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `instance` | [instCoalgebra](declarations/instcoalgebra-source-edition-3.md) | 312 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `instance` | [instCoalgebraStruct](declarations/instcoalgebrastruct-source-edition-3.md) | 336 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `theorem` | [comul_single](declarations/comul-single.md) | 342 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `theorem` | [counit_single](declarations/counit-single-source-edition-2.md) | 348 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `theorem` | [comul_comp_lsingle](declarations/comul-comp-lsingle.md) | 351 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `theorem` | [comul_comp_lapply](declarations/comul-comp-lapply.md) | 355 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `theorem` | [counit_comp_lsingle](declarations/counit-comp-lsingle.md) | 364 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `instance` | [instCoalgebra](declarations/instcoalgebra-source-edition-2.md) | 371 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=7982dfbff61b95ece27df300c9867ef8861462fe917d14fbb726d20c41b60791 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/Basic/Varianta77197fa5d1370605462e1803055fd2530429eafe58f0e43679730becf9aa59f.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
