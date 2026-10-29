# Coalgebra Basic

[Complete source index](../../complete-source-index.md) · [Up one directory](../../complete-source-index.md) · [Full source](source.md)

**42 observed declarations and anonymous commands**, 31 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Algebra/LinearAlgebra/Basic/Variantfdc05fe0eea8f59f2bcb8c05d802e49b0290923615017f9f0699d2e66959b174.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `bf9a1717a2ff69f61f03d974cf19e7061cb7abc4`.

**Verification:** `BLOCKED_SOURCE_DEPENDENCY`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../_verification/specifications/CommutativeAlgebra/CoalgebraBasic.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `class` | [CoalgebraStruct](declarations/coalgebrastruct.md) | 32 | `BLOCKED_SOURCE_DEPENDENCY` |
| 2 | `structure` | [Coalgebra.Repr](declarations/coalgebra-repr.md) | 43 | `BLOCKED_SOURCE_DEPENDENCY` |
| 3 | `def` | [Coalgebra.Repr.arbitrary](declarations/coalgebra-repr-arbitrary.md) | 57 | `BLOCKED_SOURCE_DEPENDENCY` |
| 4 | `class` | [Coalgebra](declarations/coalgebra.md) | 74 | `BLOCKED_SOURCE_DEPENDENCY` |
| 5 | `theorem` | [coassoc_apply](declarations/coassoc-apply.md) | 88 | `BLOCKED_SOURCE_DEPENDENCY` |
| 6 | `theorem` | [coassoc_symm_apply](declarations/coassoc-symm-apply.md) | 93 | `BLOCKED_SOURCE_DEPENDENCY` |
| 7 | `theorem` | [coassoc_symm](declarations/coassoc-symm.md) | 98 | `BLOCKED_SOURCE_DEPENDENCY` |
| 8 | `theorem` | [rTensor_counit_comul](declarations/rtensor-counit-comul.md) | 104 | `BLOCKED_SOURCE_DEPENDENCY` |
| 9 | `theorem` | [lTensor_counit_comul](declarations/ltensor-counit-comul.md) | 108 | `BLOCKED_SOURCE_DEPENDENCY` |
| 10 | `lemma` | [sum_counit_tmul_eq](declarations/sum-counit-tmul-eq.md) | 112 | `BLOCKED_SOURCE_DEPENDENCY` |
| 11 | `lemma` | [sum_tmul_counit_eq](declarations/sum-tmul-counit-eq.md) | 117 | `BLOCKED_SOURCE_DEPENDENCY` |
| 12 | `lemma` | [sum_tmul_tmul_eq](declarations/sum-tmul-tmul-eq.md) | 122 | `BLOCKED_SOURCE_DEPENDENCY` |
| 13 | `theorem` | [sum_counit_tmul_map_eq](declarations/sum-counit-tmul-map-eq.md) | 132 | `BLOCKED_SOURCE_DEPENDENCY` |
| 14 | `theorem` | [sum_map_tmul_counit_eq](declarations/sum-map-tmul-counit-eq.md) | 140 | `BLOCKED_SOURCE_DEPENDENCY` |
| 15 | `theorem` | [sum_map_tmul_tmul_eq](declarations/sum-map-tmul-tmul-eq.md) | 148 | `BLOCKED_SOURCE_DEPENDENCY` |
| 16 | `instance` | [toCoalgebra](declarations/tocoalgebra.md) | 168 | `BLOCKED_SOURCE_DEPENDENCY` |
| 17 | `theorem` | [comul_apply](declarations/comul-apply.md) | 176 | `BLOCKED_SOURCE_DEPENDENCY` |
| 18 | `theorem` | [counit_apply](declarations/counit-apply.md) | 179 | `BLOCKED_SOURCE_DEPENDENCY` |
| 19 | `instance` | [instCoalgebraStruct](declarations/instcoalgebrastruct.md) | 190 | `BLOCKED_SOURCE_DEPENDENCY` |
| 20 | `theorem` | [comul_apply](declarations/comul-apply-source-edition-2.md) | 197 | `BLOCKED_SOURCE_DEPENDENCY` |
| 21 | `theorem` | [counit_apply](declarations/counit-apply-source-edition-2.md) | 203 | `BLOCKED_SOURCE_DEPENDENCY` |
| 22 | `theorem` | [comul_comp_inl](declarations/comul-comp-inl.md) | 205 | `BLOCKED_SOURCE_DEPENDENCY` |
| 23 | `theorem` | [comul_comp_inr](declarations/comul-comp-inr.md) | 209 | `BLOCKED_SOURCE_DEPENDENCY` |
| 24 | `theorem` | [comul_comp_fst](declarations/comul-comp-fst.md) | 213 | `BLOCKED_SOURCE_DEPENDENCY` |
| 25 | `theorem` | [comul_comp_snd](declarations/comul-comp-snd.md) | 221 | `BLOCKED_SOURCE_DEPENDENCY` |
| 26 | `theorem` | [counit_comp_inr](declarations/counit-comp-inr.md) | 229 | `BLOCKED_SOURCE_DEPENDENCY` |
| 27 | `theorem` | [counit_comp_inl](declarations/counit-comp-inl.md) | 231 | `BLOCKED_SOURCE_DEPENDENCY` |
| 28 | `instance` | [instCoalgebra](declarations/instcoalgebra-source-edition-2.md) | 233 | `BLOCKED_SOURCE_DEPENDENCY` |
| 29 | `instance` | [instCoalgebraStruct](declarations/instcoalgebrastruct-source-edition-2.md) | 267 | `BLOCKED_SOURCE_DEPENDENCY` |
| 30 | `theorem` | [comul_single](declarations/comul-single.md) | 273 | `BLOCKED_SOURCE_DEPENDENCY` |
| 31 | `theorem` | [counit_single](declarations/counit-single-source-edition-2.md) | 279 | `BLOCKED_SOURCE_DEPENDENCY` |
| 32 | `theorem` | [comul_comp_lsingle](declarations/comul-comp-lsingle.md) | 282 | `BLOCKED_SOURCE_DEPENDENCY` |
| 33 | `theorem` | [comul_comp_lapply](declarations/comul-comp-lapply-source-edition-2.md) | 286 | `BLOCKED_SOURCE_DEPENDENCY` |
| 34 | `theorem` | [counit_comp_lsingle](declarations/counit-comp-lsingle-source-edition-2.md) | 295 | `BLOCKED_SOURCE_DEPENDENCY` |
| 35 | `instance` | [instCoalgebra](declarations/instcoalgebra.md) | 304 | `BLOCKED_SOURCE_DEPENDENCY` |
| 36 | `instance` | [instCoalgebraStruct](declarations/instcoalgebrastruct-source-edition-3.md) | 328 | `BLOCKED_SOURCE_DEPENDENCY` |
| 37 | `theorem` | [comul_single](declarations/comul-single-source-edition-2.md) | 334 | `BLOCKED_SOURCE_DEPENDENCY` |
| 38 | `theorem` | [counit_single](declarations/counit-single.md) | 340 | `BLOCKED_SOURCE_DEPENDENCY` |
| 39 | `theorem` | [comul_comp_lsingle](declarations/comul-comp-lsingle-source-edition-2.md) | 343 | `BLOCKED_SOURCE_DEPENDENCY` |
| 40 | `theorem` | [comul_comp_lapply](declarations/comul-comp-lapply.md) | 347 | `BLOCKED_SOURCE_DEPENDENCY` |
| 41 | `theorem` | [counit_comp_lsingle](declarations/counit-comp-lsingle.md) | 356 | `BLOCKED_SOURCE_DEPENDENCY` |
| 42 | `instance` | [instCoalgebra](declarations/instcoalgebra-source-edition-3.md) | 363 | `BLOCKED_SOURCE_DEPENDENCY` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=7bf5c6ce08204fb00cff718cd628f6a43daaea1afce212f8695fab207f946504 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/Basic/Variantfdc05fe0eea8f59f2bcb8c05d802e49b0290923615017f9f0699d2e66959b174.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
