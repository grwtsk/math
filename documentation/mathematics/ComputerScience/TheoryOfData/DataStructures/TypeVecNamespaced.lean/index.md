# Type Vec Namespaced

[Complete source index](../../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**120 observed declarations and anonymous commands**, 69 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/TypeVec/Variant2ce902b4cdf9e61d3d4cf8cbd067ad91739daa504e9bbb13ab495157389c2179.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `edda09fc1a901788a8345b21c7afb9ea809d770b`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../_verification/specifications/ComputerScience/TheoryOfData/DataStructures/TypeVecNamespaced.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [TypeVec](declarations/typevec.md) | 45 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `instance` | [(anonymous)](declarations/instance.md) | 48 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `def` | [Arrow](declarations/arrow.md) | 56 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `theorem` | [Arrow.ext](declarations/arrow-ext.md) | 64 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `instance` | [Arrow.inhabited](declarations/arrow-inhabited.md) | 68 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `def` | [id](declarations/id.md) | 72 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `def` | [comp](declarations/comp.md) | 75 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [id_comp](declarations/id-comp.md) | 80 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [comp_id](declarations/comp-id.md) | 84 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [comp_assoc](declarations/comp-assoc.md) | 87 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `def` | [append1](declarations/append1.md) | 92 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `def` | [drop](declarations/drop.md) | 99 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `def` | [last](declarations/last.md) | 102 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `instance` | [last.inhabited](declarations/last-inhabited.md) | 105 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [drop_append1](declarations/drop-append1-source-edition-2.md) | 108 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [drop_append1'](declarations/drop-append1.md) | 111 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [last_append1](declarations/last-append1.md) | 114 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [append1_drop_last](declarations/append1-drop-last.md) | 118 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `def` | [append1Cases](declarations/append1cases.md) | 123 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [append1_cases_append1](declarations/append1-cases-append1.md) | 127 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `def` | [splitFun](declarations/splitfun.md) | 132 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `def` | [appendFun](declarations/appendfun.md) | 137 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `def` | [dropFun](declarations/dropfun.md) | 144 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `def` | [lastFun](declarations/lastfun.md) | 147 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `def` | [nilFun](declarations/nilfun.md) | 151 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [eq_of_drop_last_eq](declarations/eq-of-drop-last-eq.md) | 153 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [dropFun_splitFun](declarations/dropfun-splitfun.md) | 161 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `def` | [Arrow.mp](declarations/arrow-mp.md) | 166 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `def` | [Arrow.mpr](declarations/arrow-mpr.md) | 170 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `def` | [toAppend1DropLast](declarations/toappend1droplast.md) | 174 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `def` | [fromAppend1DropLast](declarations/fromappend1droplast.md) | 178 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [lastFun_splitFun](declarations/lastfun-splitfun.md) | 182 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [dropFun_appendFun](declarations/dropfun-appendfun.md) | 187 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [lastFun_appendFun](declarations/lastfun-appendfun.md) | 192 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `theorem` | [split_dropFun_lastFun](declarations/split-dropfun-lastfun.md) | 196 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `theorem` | [splitFun_inj](declarations/splitfun-inj.md) | 200 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `theorem` | [appendFun_inj](declarations/appendfun-inj.md) | 204 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `theorem` | [splitFun_comp](declarations/splitfun-comp.md) | 209 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `theorem` | [appendFun_comp_splitFun](declarations/appendfun-comp-splitfun.md) | 214 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `theorem` | [appendFun_comp](declarations/appendfun-comp.md) | 219 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `theorem` | [appendFun_comp'](declarations/appendfun-comp-source-edition-2.md) | 226 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `theorem` | [nilFun_comp](declarations/nilfun-comp.md) | 231 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `theorem` | [appendFun_comp_id](declarations/appendfun-comp-id.md) | 234 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `theorem` | [dropFun_comp](declarations/dropfun-comp.md) | 239 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `theorem` | [lastFun_comp](declarations/lastfun-comp.md) | 244 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `theorem` | [appendFun_aux](declarations/appendfun-aux.md) | 248 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `theorem` | [appendFun_id_id](declarations/appendfun-id-id.md) | 252 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `instance` | [subsingleton0](declarations/subsingleton0.md) | 256 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `def` | [casesNil](declarations/casesnil.md) | 262 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `def` | [casesCons](declarations/casescons.md) | 266 | `BLOCKED_NATIVE_ADMISSION` |
| 51 | `theorem` | [casesNil_append1](declarations/casesnil-append1.md) | 271 | `BLOCKED_NATIVE_ADMISSION` |
| 52 | `theorem` | [casesCons_append1](declarations/casescons-append1.md) | 275 | `BLOCKED_NATIVE_ADMISSION` |
| 53 | `def` | [typevecCasesNil₃](declarations/typeveccasesnil.md) | 281 | `BLOCKED_NATIVE_ADMISSION` |
| 54 | `def` | [typevecCasesCons₃](declarations/typeveccasescons-source-edition-2.md) | 291 | `BLOCKED_NATIVE_ADMISSION` |
| 55 | `def` | [typevecCasesNil₂](declarations/typeveccasesnil-source-edition-2.md) | 302 | `BLOCKED_NATIVE_ADMISSION` |
| 56 | `def` | [typevecCasesCons₂](declarations/typeveccasescons.md) | 308 | `BLOCKED_NATIVE_ADMISSION` |
| 57 | `theorem` | [typevecCasesNil₂_appendFun](declarations/typeveccasesnil-appendfun.md) | 316 | `BLOCKED_NATIVE_ADMISSION` |
| 58 | `theorem` | [typevecCasesCons₂_appendFun](declarations/typeveccasescons-appendfun.md) | 320 | `BLOCKED_NATIVE_ADMISSION` |
| 59 | `def` | [PredLast](declarations/predlast-source-edition-2.md) | 329 | `BLOCKED_NATIVE_ADMISSION` |
| 60 | `def` | [RelLast](declarations/rellast-source-edition-2.md) | 335 | `BLOCKED_NATIVE_ADMISSION` |
| 61 | `def` | [«repeat»](declarations/repeat.md) | 345 | `BLOCKED_NATIVE_ADMISSION` |
| 62 | `def` | [prod](declarations/prod.md) | 350 | `BLOCKED_NATIVE_ADMISSION` |
| 63 | `def` | [const](declarations/const.md) | 358 | `BLOCKED_NATIVE_ADMISSION` |
| 64 | `def` | [repeatEq](declarations/repeateq.md) | 365 | `BLOCKED_NATIVE_ADMISSION` |
| 65 | `theorem` | [const_append1](declarations/const-append1.md) | 369 | `BLOCKED_NATIVE_ADMISSION` |
| 66 | `theorem` | [eq_nilFun](declarations/eq-nilfun.md) | 373 | `BLOCKED_NATIVE_ADMISSION` |
| 67 | `theorem` | [id_eq_nilFun](declarations/id-eq-nilfun.md) | 376 | `BLOCKED_NATIVE_ADMISSION` |
| 68 | `theorem` | [const_nil](declarations/const-nil.md) | 379 | `BLOCKED_NATIVE_ADMISSION` |
| 69 | `theorem` | [repeat_eq_append1](declarations/repeat-eq-append1.md) | 383 | `BLOCKED_NATIVE_ADMISSION` |
| 70 | `theorem` | [repeat_eq_nil](declarations/repeat-eq-nil.md) | 389 | `BLOCKED_NATIVE_ADMISSION` |
| 71 | `def` | [PredLast'](declarations/predlast.md) | 392 | `BLOCKED_NATIVE_ADMISSION` |
| 72 | `def` | [RelLast'](declarations/rellast.md) | 397 | `BLOCKED_NATIVE_ADMISSION` |
| 73 | `def` | [Curry](declarations/curry.md) | 403 | `BLOCKED_NATIVE_ADMISSION` |
| 74 | `instance` | [Curry.inhabited](declarations/curry-inhabited.md) | 406 | `BLOCKED_NATIVE_ADMISSION` |
| 75 | `def` | [dropRepeat](declarations/droprepeat.md) | 411 | `BLOCKED_NATIVE_ADMISSION` |
| 76 | `def` | [ofRepeat](declarations/ofrepeat.md) | 416 | `BLOCKED_NATIVE_ADMISSION` |
| 77 | `theorem` | [const_iff_true](declarations/const-iff-true.md) | 420 | `BLOCKED_NATIVE_ADMISSION` |
| 78 | `def` | [prod.fst](declarations/prod-fst.md) | 432 | `BLOCKED_NATIVE_ADMISSION` |
| 79 | `def` | [prod.snd](declarations/prod-snd.md) | 437 | `BLOCKED_NATIVE_ADMISSION` |
| 80 | `def` | [prod.diag](declarations/prod-diag.md) | 442 | `BLOCKED_NATIVE_ADMISSION` |
| 81 | `def` | [prod.mk](declarations/prod-mk.md) | 447 | `BLOCKED_NATIVE_ADMISSION` |
| 82 | `theorem` | [prod_fst_mk](declarations/prod-fst-mk.md) | 455 | `BLOCKED_NATIVE_ADMISSION` |
| 83 | `theorem` | [prod_snd_mk](declarations/prod-snd-mk.md) | 462 | `BLOCKED_NATIVE_ADMISSION` |
| 84 | `def` | [prod.map](declarations/prod-map.md) | 469 | `BLOCKED_NATIVE_ADMISSION` |
| 85 | `theorem` | [fst_prod_mk](declarations/fst-prod-mk.md) | 478 | `BLOCKED_NATIVE_ADMISSION` |
| 86 | `theorem` | [snd_prod_mk](declarations/snd-prod-mk.md) | 484 | `BLOCKED_NATIVE_ADMISSION` |
| 87 | `theorem` | [fst_diag](declarations/fst-diag.md) | 490 | `BLOCKED_NATIVE_ADMISSION` |
| 88 | `theorem` | [snd_diag](declarations/snd-diag.md) | 495 | `BLOCKED_NATIVE_ADMISSION` |
| 89 | `theorem` | [repeatEq_iff_eq](declarations/repeateq-iff-eq.md) | 500 | `BLOCKED_NATIVE_ADMISSION` |
| 90 | `def` | [Subtype_](declarations/subtype.md) | 510 | `BLOCKED_NATIVE_ADMISSION` |
| 91 | `def` | [subtypeVal](declarations/subtypeval.md) | 515 | `BLOCKED_NATIVE_ADMISSION` |
| 92 | `def` | [toSubtype](declarations/tosubtype.md) | 521 | `BLOCKED_NATIVE_ADMISSION` |
| 93 | `def` | [ofSubtype](declarations/ofsubtype-source-edition-2.md) | 529 | `BLOCKED_NATIVE_ADMISSION` |
| 94 | `def` | [toSubtype'](declarations/tosubtype-source-edition-2.md) | 535 | `BLOCKED_NATIVE_ADMISSION` |
| 95 | `def` | [ofSubtype'](declarations/ofsubtype.md) | 541 | `BLOCKED_NATIVE_ADMISSION` |
| 96 | `def` | [diagSub](declarations/diagsub.md) | 548 | `BLOCKED_NATIVE_ADMISSION` |
| 97 | `theorem` | [subtypeVal_nil](declarations/subtypeval-nil.md) | 552 | `BLOCKED_NATIVE_ADMISSION` |
| 98 | `theorem` | [diag_sub_val](declarations/diag-sub-val.md) | 556 | `BLOCKED_NATIVE_ADMISSION` |
| 99 | `theorem` | [prod_id](declarations/prod-id.md) | 562 | `BLOCKED_NATIVE_ADMISSION` |
| 100 | `theorem` | [append_prod_appendFun](declarations/append-prod-appendfun.md) | 569 | `BLOCKED_NATIVE_ADMISSION` |
| 101 | `theorem` | [dropFun_diag](declarations/dropfun-diag.md) | 581 | `BLOCKED_NATIVE_ADMISSION` |
| 102 | `theorem` | [dropFun_subtypeVal](declarations/dropfun-subtypeval.md) | 586 | `BLOCKED_NATIVE_ADMISSION` |
| 103 | `theorem` | [lastFun_subtypeVal](declarations/lastfun-subtypeval.md) | 591 | `BLOCKED_NATIVE_ADMISSION` |
| 104 | `theorem` | [dropFun_toSubtype](declarations/dropfun-tosubtype.md) | 596 | `BLOCKED_NATIVE_ADMISSION` |
| 105 | `theorem` | [lastFun_toSubtype](declarations/lastfun-tosubtype.md) | 602 | `BLOCKED_NATIVE_ADMISSION` |
| 106 | `theorem` | [dropFun_of_subtype](declarations/dropfun-of-subtype.md) | 608 | `BLOCKED_NATIVE_ADMISSION` |
| 107 | `theorem` | [lastFun_of_subtype](declarations/lastfun-of-subtype.md) | 614 | `BLOCKED_NATIVE_ADMISSION` |
| 108 | `theorem` | [dropFun_RelLast'](declarations/dropfun-rellast.md) | 618 | `BLOCKED_NATIVE_ADMISSION` |
| 109 | `theorem` | [dropFun_prod](declarations/dropfun-prod.md) | 627 | `BLOCKED_NATIVE_ADMISSION` |
| 110 | `theorem` | [lastFun_prod](declarations/lastfun-prod.md) | 633 | `BLOCKED_NATIVE_ADMISSION` |
| 111 | `theorem` | [dropFun_from_append1_drop_last](declarations/dropfun-from-append1-drop-last.md) | 639 | `BLOCKED_NATIVE_ADMISSION` |
| 112 | `theorem` | [lastFun_from_append1_drop_last](declarations/lastfun-from-append1-drop-last.md) | 644 | `BLOCKED_NATIVE_ADMISSION` |
| 113 | `theorem` | [dropFun_id](declarations/dropfun-id.md) | 649 | `BLOCKED_NATIVE_ADMISSION` |
| 114 | `theorem` | [prod_map_id](declarations/prod-map-id.md) | 653 | `BLOCKED_NATIVE_ADMISSION` |
| 115 | `theorem` | [subtypeVal_diagSub](declarations/subtypeval-diagsub.md) | 661 | `BLOCKED_NATIVE_ADMISSION` |
| 116 | `theorem` | [toSubtype_of_subtype](declarations/tosubtype-of-subtype-source-edition-2.md) | 670 | `BLOCKED_NATIVE_ADMISSION` |
| 117 | `theorem` | [subtypeVal_toSubtype](declarations/subtypeval-tosubtype-source-edition-2.md) | 677 | `BLOCKED_NATIVE_ADMISSION` |
| 118 | `theorem` | [toSubtype_of_subtype_assoc](declarations/tosubtype-of-subtype-assoc.md) | 684 | `BLOCKED_NATIVE_ADMISSION` |
| 119 | `theorem` | [toSubtype'_of_subtype'](declarations/tosubtype-of-subtype.md) | 690 | `BLOCKED_NATIVE_ADMISSION` |
| 120 | `theorem` | [subtypeVal_toSubtype'](declarations/subtypeval-tosubtype.md) | 697 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=f8e2877e583b7f425d14fe76c5af40a6f50fe55bb58651b6cacb1057b9904291 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/TypeVec/Variant2ce902b4cdf9e61d3d4cf8cbd067ad91739daa504e9bbb13ab495157389c2179.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
