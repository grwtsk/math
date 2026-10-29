# Type Vec Aligned

[Complete source index](../../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**120 observed declarations and anonymous commands**, 69 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/TypeVec/Variantcbf7d0ee81331edea7eceec140efe59dbe7e62a1ef6f1343a95b4d2e9d8b5220.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `4b4ffe950d40fb2e87279950eabf524d80b63f03`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../_verification/specifications/ComputerScience/TheoryOfData/DataStructures/TypeVecAligned.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [TypeVec](declarations/typevec.md) | 38 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `instance` | [(anonymous)](declarations/instance.md) | 42 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `def` | [Arrow](declarations/arrow.md) | 50 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `theorem` | [Arrow.ext](declarations/arrow-ext.md) | 59 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `instance` | [Arrow.inhabited](declarations/arrow-inhabited.md) | 63 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `def` | [id](declarations/id.md) | 68 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `def` | [comp](declarations/comp.md) | 72 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [id_comp](declarations/id-comp.md) | 78 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [comp_id](declarations/comp-id.md) | 83 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [comp_assoc](declarations/comp-assoc.md) | 87 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `def` | [append1](declarations/append1.md) | 93 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `def` | [drop](declarations/drop.md) | 101 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `def` | [last](declarations/last.md) | 105 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `instance` | [last.inhabited](declarations/last-inhabited.md) | 109 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [drop_append1](declarations/drop-append1.md) | 113 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [drop_append1'](declarations/drop-append1-source-edition-2.md) | 117 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [last_append1](declarations/last-append1.md) | 121 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [append1_drop_last](declarations/append1-drop-last.md) | 126 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `def` | [append1Cases](declarations/append1cases.md) | 132 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [append1_cases_append1](declarations/append1-cases-append1.md) | 137 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `def` | [splitFun](declarations/splitfun.md) | 143 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `def` | [appendFun](declarations/appendfun.md) | 149 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `def` | [dropFun](declarations/dropfun.md) | 157 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `def` | [lastFun](declarations/lastfun.md) | 161 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `def` | [nilFun](declarations/nilfun.md) | 167 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [eq_of_drop_last_eq](declarations/eq-of-drop-last-eq.md) | 170 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [dropFun_splitFun](declarations/dropfun-splitfun.md) | 180 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `def` | [Arrow.mp](declarations/arrow-mp.md) | 186 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `def` | [Arrow.mpr](declarations/arrow-mpr.md) | 191 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `def` | [toAppend1DropLast](declarations/toappend1droplast.md) | 196 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `def` | [fromAppend1DropLast](declarations/fromappend1droplast.md) | 201 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [lastFun_splitFun](declarations/lastfun-splitfun.md) | 206 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [dropFun_appendFun](declarations/dropfun-appendfun.md) | 212 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [lastFun_appendFun](declarations/lastfun-appendfun.md) | 218 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `theorem` | [split_dropFun_lastFun](declarations/split-dropfun-lastfun.md) | 223 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `theorem` | [splitFun_inj](declarations/splitfun-inj.md) | 228 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `theorem` | [appendFun_inj](declarations/appendfun-inj.md) | 233 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `theorem` | [splitFun_comp](declarations/splitfun-comp.md) | 239 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `theorem` | [appendFun_comp_splitFun](declarations/appendfun-comp-splitfun.md) | 245 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `theorem` | [appendFun_comp](declarations/appendfun-comp.md) | 256 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `theorem` | [appendFun_comp'](declarations/appendfun-comp-source-edition-2.md) | 264 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `theorem` | [nilFun_comp](declarations/nilfun-comp.md) | 271 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `theorem` | [appendFun_comp_id](declarations/appendfun-comp-id.md) | 275 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `theorem` | [dropFun_comp](declarations/dropfun-comp.md) | 281 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `theorem` | [lastFun_comp](declarations/lastfun-comp.md) | 287 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `theorem` | [appendFun_aux](declarations/appendfun-aux.md) | 292 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `theorem` | [appendFun_id_id](declarations/appendfun-id-id.md) | 297 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `instance` | [subsingleton0](declarations/subsingleton0.md) | 302 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `def` | [casesNil](declarations/casesnil.md) | 309 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `def` | [casesCons](declarations/casescons.md) | 314 | `BLOCKED_NATIVE_ADMISSION` |
| 51 | `theorem` | [casesNil_append1](declarations/casesnil-append1.md) | 320 | `BLOCKED_NATIVE_ADMISSION` |
| 52 | `theorem` | [casesCons_append1](declarations/casescons-append1.md) | 325 | `BLOCKED_NATIVE_ADMISSION` |
| 53 | `def` | [typevecCasesNil₃](declarations/typeveccasesnil-source-edition-2.md) | 332 | `BLOCKED_NATIVE_ADMISSION` |
| 54 | `def` | [typevecCasesCons₃](declarations/typeveccasescons.md) | 343 | `BLOCKED_NATIVE_ADMISSION` |
| 55 | `def` | [typevecCasesNil₂](declarations/typeveccasesnil.md) | 355 | `BLOCKED_NATIVE_ADMISSION` |
| 56 | `def` | [typevecCasesCons₂](declarations/typeveccasescons-source-edition-2.md) | 364 | `BLOCKED_NATIVE_ADMISSION` |
| 57 | `theorem` | [typevecCasesNil₂_appendFun](declarations/typeveccasesnil-appendfun.md) | 373 | `BLOCKED_NATIVE_ADMISSION` |
| 58 | `theorem` | [typevecCasesCons₂_appendFun](declarations/typeveccasescons-appendfun.md) | 378 | `BLOCKED_NATIVE_ADMISSION` |
| 59 | `def` | [PredLast](declarations/predlast.md) | 388 | `BLOCKED_NATIVE_ADMISSION` |
| 60 | `def` | [RelLast](declarations/rellast-source-edition-2.md) | 395 | `BLOCKED_NATIVE_ADMISSION` |
| 61 | `def` | [«repeat»](declarations/repeat.md) | 406 | `BLOCKED_NATIVE_ADMISSION` |
| 62 | `def` | [prod](declarations/prod.md) | 412 | `BLOCKED_NATIVE_ADMISSION` |
| 63 | `def` | [const](declarations/const.md) | 422 | `BLOCKED_NATIVE_ADMISSION` |
| 64 | `def` | [repeatEq](declarations/repeateq.md) | 430 | `BLOCKED_NATIVE_ADMISSION` |
| 65 | `theorem` | [const_append1](declarations/const-append1.md) | 435 | `BLOCKED_NATIVE_ADMISSION` |
| 66 | `theorem` | [eq_nilFun](declarations/eq-nilfun.md) | 440 | `BLOCKED_NATIVE_ADMISSION` |
| 67 | `theorem` | [id_eq_nilFun](declarations/id-eq-nilfun.md) | 444 | `BLOCKED_NATIVE_ADMISSION` |
| 68 | `theorem` | [const_nil](declarations/const-nil.md) | 448 | `BLOCKED_NATIVE_ADMISSION` |
| 69 | `theorem` | [repeat_eq_append1](declarations/repeat-eq-append1.md) | 453 | `BLOCKED_NATIVE_ADMISSION` |
| 70 | `theorem` | [repeat_eq_nil](declarations/repeat-eq-nil.md) | 460 | `BLOCKED_NATIVE_ADMISSION` |
| 71 | `def` | [PredLast'](declarations/predlast-source-edition-2.md) | 464 | `BLOCKED_NATIVE_ADMISSION` |
| 72 | `def` | [RelLast'](declarations/rellast.md) | 470 | `BLOCKED_NATIVE_ADMISSION` |
| 73 | `def` | [Curry](declarations/curry.md) | 477 | `BLOCKED_NATIVE_ADMISSION` |
| 74 | `instance` | [Curry.inhabited](declarations/curry-inhabited.md) | 481 | `BLOCKED_NATIVE_ADMISSION` |
| 75 | `def` | [dropRepeat](declarations/droprepeat.md) | 487 | `BLOCKED_NATIVE_ADMISSION` |
| 76 | `def` | [ofRepeat](declarations/ofrepeat.md) | 493 | `BLOCKED_NATIVE_ADMISSION` |
| 77 | `theorem` | [const_iff_true](declarations/const-iff-true.md) | 498 | `BLOCKED_NATIVE_ADMISSION` |
| 78 | `def` | [prod.fst](declarations/prod-fst.md) | 511 | `BLOCKED_NATIVE_ADMISSION` |
| 79 | `def` | [prod.snd](declarations/prod-snd.md) | 517 | `BLOCKED_NATIVE_ADMISSION` |
| 80 | `def` | [prod.diag](declarations/prod-diag.md) | 523 | `BLOCKED_NATIVE_ADMISSION` |
| 81 | `def` | [prod.mk](declarations/prod-mk.md) | 529 | `BLOCKED_NATIVE_ADMISSION` |
| 82 | `theorem` | [prod_fst_mk](declarations/prod-fst-mk.md) | 538 | `BLOCKED_NATIVE_ADMISSION` |
| 83 | `theorem` | [prod_snd_mk](declarations/prod-snd-mk.md) | 546 | `BLOCKED_NATIVE_ADMISSION` |
| 84 | `def` | [prod.map](declarations/prod-map.md) | 554 | `BLOCKED_NATIVE_ADMISSION` |
| 85 | `theorem` | [fst_prod_mk](declarations/fst-prod-mk.md) | 564 | `BLOCKED_NATIVE_ADMISSION` |
| 86 | `theorem` | [snd_prod_mk](declarations/snd-prod-mk.md) | 571 | `BLOCKED_NATIVE_ADMISSION` |
| 87 | `theorem` | [fst_diag](declarations/fst-diag.md) | 578 | `BLOCKED_NATIVE_ADMISSION` |
| 88 | `theorem` | [snd_diag](declarations/snd-diag.md) | 584 | `BLOCKED_NATIVE_ADMISSION` |
| 89 | `theorem` | [repeatEq_iff_eq](declarations/repeateq-iff-eq.md) | 590 | `BLOCKED_NATIVE_ADMISSION` |
| 90 | `def` | [Subtype_](declarations/subtype.md) | 599 | `BLOCKED_NATIVE_ADMISSION` |
| 91 | `def` | [subtypeVal](declarations/subtypeval.md) | 605 | `BLOCKED_NATIVE_ADMISSION` |
| 92 | `def` | [toSubtype](declarations/tosubtype-source-edition-2.md) | 612 | `BLOCKED_NATIVE_ADMISSION` |
| 93 | `def` | [ofSubtype](declarations/ofsubtype-source-edition-2.md) | 621 | `BLOCKED_NATIVE_ADMISSION` |
| 94 | `def` | [toSubtype'](declarations/tosubtype.md) | 628 | `BLOCKED_NATIVE_ADMISSION` |
| 95 | `def` | [ofSubtype'](declarations/ofsubtype.md) | 635 | `BLOCKED_NATIVE_ADMISSION` |
| 96 | `def` | [diagSub](declarations/diagsub.md) | 643 | `BLOCKED_NATIVE_ADMISSION` |
| 97 | `theorem` | [subtypeVal_nil](declarations/subtypeval-nil.md) | 648 | `BLOCKED_NATIVE_ADMISSION` |
| 98 | `theorem` | [diag_sub_val](declarations/diag-sub-val.md) | 653 | `BLOCKED_NATIVE_ADMISSION` |
| 99 | `theorem` | [prod_id](declarations/prod-id.md) | 660 | `BLOCKED_NATIVE_ADMISSION` |
| 100 | `theorem` | [append_prod_appendFun](declarations/append-prod-appendfun.md) | 669 | `BLOCKED_NATIVE_ADMISSION` |
| 101 | `theorem` | [dropFun_diag](declarations/dropfun-diag.md) | 682 | `BLOCKED_NATIVE_ADMISSION` |
| 102 | `theorem` | [dropFun_subtypeVal](declarations/dropfun-subtypeval.md) | 688 | `BLOCKED_NATIVE_ADMISSION` |
| 103 | `theorem` | [lastFun_subtypeVal](declarations/lastfun-subtypeval.md) | 694 | `BLOCKED_NATIVE_ADMISSION` |
| 104 | `theorem` | [dropFun_toSubtype](declarations/dropfun-tosubtype.md) | 700 | `BLOCKED_NATIVE_ADMISSION` |
| 105 | `theorem` | [lastFun_toSubtype](declarations/lastfun-tosubtype.md) | 707 | `BLOCKED_NATIVE_ADMISSION` |
| 106 | `theorem` | [dropFun_of_subtype](declarations/dropfun-of-subtype.md) | 714 | `BLOCKED_NATIVE_ADMISSION` |
| 107 | `theorem` | [lastFun_of_subtype](declarations/lastfun-of-subtype.md) | 721 | `BLOCKED_NATIVE_ADMISSION` |
| 108 | `theorem` | [dropFun_RelLast'](declarations/dropfun-rellast.md) | 728 | `BLOCKED_NATIVE_ADMISSION` |
| 109 | `theorem` | [dropFun_prod](declarations/dropfun-prod.md) | 738 | `BLOCKED_NATIVE_ADMISSION` |
| 110 | `theorem` | [lastFun_prod](declarations/lastfun-prod.md) | 745 | `BLOCKED_NATIVE_ADMISSION` |
| 111 | `theorem` | [dropFun_from_append1_drop_last](declarations/dropfun-from-append1-drop-last.md) | 752 | `BLOCKED_NATIVE_ADMISSION` |
| 112 | `theorem` | [lastFun_from_append1_drop_last](declarations/lastfun-from-append1-drop-last.md) | 758 | `BLOCKED_NATIVE_ADMISSION` |
| 113 | `theorem` | [dropFun_id](declarations/dropfun-id.md) | 764 | `BLOCKED_NATIVE_ADMISSION` |
| 114 | `theorem` | [prod_map_id](declarations/prod-map-id.md) | 769 | `BLOCKED_NATIVE_ADMISSION` |
| 115 | `theorem` | [subtypeVal_diagSub](declarations/subtypeval-diagsub.md) | 778 | `BLOCKED_NATIVE_ADMISSION` |
| 116 | `theorem` | [toSubtype_of_subtype](declarations/tosubtype-of-subtype.md) | 788 | `BLOCKED_NATIVE_ADMISSION` |
| 117 | `theorem` | [subtypeVal_toSubtype](declarations/subtypeval-tosubtype.md) | 796 | `BLOCKED_NATIVE_ADMISSION` |
| 118 | `theorem` | [toSubtype_of_subtype_assoc](declarations/tosubtype-of-subtype-assoc.md) | 804 | `BLOCKED_NATIVE_ADMISSION` |
| 119 | `theorem` | [toSubtype'_of_subtype'](declarations/tosubtype-of-subtype-source-edition-2.md) | 811 | `BLOCKED_NATIVE_ADMISSION` |
| 120 | `theorem` | [subtypeVal_toSubtype'](declarations/subtypeval-tosubtype-source-edition-2.md) | 819 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=c6d94823d0ca10bf4ecb0b07be6050a4cf6fca04b00ca6f1707370e2068efbe1 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/TypeVec/Variantcbf7d0ee81331edea7eceec140efe59dbe7e62a1ef6f1343a95b4d2e9d8b5220.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
