# Vec Notation Smul Empty

[Complete source index](../../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**71 observed declarations and anonymous commands**, 58 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Algebra/LinearAlgebra/VecNotation/Variant84187f87592e4168281b66fc0eb97474cd386bd5cba913cf202e15a19aa798d7.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `33154f6b9f4968e0860dadda4df25c9af010df88`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../_verification/specifications/ComputerScience/TheoryOfData/DataStructures/VecNotationSmulEmpty.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [vecEmpty](declarations/vecempty.md) | 51 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `def` | [vecCons](declarations/veccons.md) | 60 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `syntax` | [(anonymous)](declarations/syntax.md) | 65 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `macro_rules` | [(anonymous)](declarations/macro-rules.md) | 67 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `def` | [vecConsUnexpander](declarations/vecconsunexpander.md) | 74 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `def` | [vecEmptyUnexpander](declarations/vecemptyunexpander.md) | 82 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `def` | [vecHead](declarations/vechead.md) | 86 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `def` | [vecTail](declarations/vectail.md) | 91 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `instance` | [_root_.PiFin.hasRepr](declarations/root-pifin-hasrepr.md) | 103 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [empty_eq](declarations/empty-eq.md) | 113 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [head_fin_const](declarations/head-fin-const.md) | 120 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [cons_val_zero](declarations/cons-val-zero.md) | 125 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [cons_val_zero'](declarations/cons-val-zero-source-edition-2.md) | 129 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [cons_val_succ](declarations/cons-val-succ-source-edition-2.md) | 134 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [cons_val_succ'](declarations/cons-val-succ.md) | 139 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [head_cons](declarations/head-cons.md) | 145 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [tail_cons](declarations/tail-cons.md) | 150 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [empty_val'](declarations/empty-val.md) | 156 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [cons_head_tail](declarations/cons-head-tail.md) | 161 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [range_cons](declarations/range-cons.md) | 166 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [range_empty](declarations/range-empty.md) | 171 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [range_cons_empty](declarations/range-cons-empty.md) | 176 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [range_cons_cons_empty](declarations/range-cons-cons-empty.md) | 181 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [vecCons_const](declarations/veccons-const.md) | 187 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [vec_single_eq_const](declarations/vec-single-eq-const.md) | 191 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [cons_val_one](declarations/cons-val-one.md) | 202 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [cons_val_two](declarations/cons-val-two.md) | 207 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [cons_val_fin_one](declarations/cons-val-fin-one.md) | 211 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [cons_fin_one](declarations/cons-fin-one.md) | 216 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `instance` | [_root_.PiFin.toExpr](declarations/root-pifin-toexpr.md) | 222 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `def` | [vecAppend](declarations/vecappend.md) | 261 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [vecAppend_eq_ite](declarations/vecappend-eq-ite.md) | 265 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [vecAppend_apply_zero](declarations/vecappend-apply-zero.md) | 280 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [empty_vecAppend](declarations/empty-vecappend.md) | 286 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `theorem` | [cons_vecAppend](declarations/cons-vecappend.md) | 292 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `def` | [vecAlt0](declarations/vecalt0.md) | 310 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `def` | [vecAlt1](declarations/vecalt1.md) | 316 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `theorem` | [vecAlt0_vecAppend](declarations/vecalt0-vecappend.md) | 324 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `theorem` | [vecAlt1_vecAppend](declarations/vecalt1-vecappend.md) | 337 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `theorem` | [vecHead_vecAlt0](declarations/vechead-vecalt0.md) | 358 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `theorem` | [vecHead_vecAlt1](declarations/vechead-vecalt1.md) | 364 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `theorem` | [cons_vec_bit0_eq_alt0](declarations/cons-vec-bit0-eq-alt0.md) | 369 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `theorem` | [cons_vec_bit1_eq_alt1](declarations/cons-vec-bit1-eq-alt1.md) | 375 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `theorem` | [cons_vecAlt0](declarations/cons-vecalt0.md) | 383 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `theorem` | [empty_vecAlt0](declarations/empty-vecalt0.md) | 401 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `theorem` | [cons_vecAlt1](declarations/cons-vecalt1.md) | 405 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `theorem` | [empty_vecAlt1](declarations/empty-vecalt1.md) | 423 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `theorem` | [smul_empty](declarations/smul-empty.md) | 433 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `theorem` | [smul_cons](declarations/smul-cons.md) | 438 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `theorem` | [empty_add_empty](declarations/empty-add-empty.md) | 450 | `BLOCKED_NATIVE_ADMISSION` |
| 51 | `theorem` | [cons_add](declarations/cons-add.md) | 455 | `BLOCKED_NATIVE_ADMISSION` |
| 52 | `theorem` | [add_cons](declarations/add-cons.md) | 462 | `BLOCKED_NATIVE_ADMISSION` |
| 53 | `theorem` | [cons_add_cons](declarations/cons-add-cons.md) | 469 | `BLOCKED_NATIVE_ADMISSION` |
| 54 | `theorem` | [head_add](declarations/head-add.md) | 474 | `BLOCKED_NATIVE_ADMISSION` |
| 55 | `theorem` | [tail_add](declarations/tail-add.md) | 479 | `BLOCKED_NATIVE_ADMISSION` |
| 56 | `theorem` | [empty_sub_empty](declarations/empty-sub-empty.md) | 490 | `BLOCKED_NATIVE_ADMISSION` |
| 57 | `theorem` | [cons_sub](declarations/cons-sub.md) | 495 | `BLOCKED_NATIVE_ADMISSION` |
| 58 | `theorem` | [sub_cons](declarations/sub-cons.md) | 502 | `BLOCKED_NATIVE_ADMISSION` |
| 59 | `theorem` | [cons_sub_cons](declarations/cons-sub-cons.md) | 509 | `BLOCKED_NATIVE_ADMISSION` |
| 60 | `theorem` | [head_sub](declarations/head-sub.md) | 514 | `BLOCKED_NATIVE_ADMISSION` |
| 61 | `theorem` | [tail_sub](declarations/tail-sub.md) | 519 | `BLOCKED_NATIVE_ADMISSION` |
| 62 | `theorem` | [zero_empty](declarations/zero-empty.md) | 530 | `BLOCKED_NATIVE_ADMISSION` |
| 63 | `theorem` | [cons_zero_zero](declarations/cons-zero-zero.md) | 535 | `BLOCKED_NATIVE_ADMISSION` |
| 64 | `theorem` | [head_zero](declarations/head-zero.md) | 543 | `BLOCKED_NATIVE_ADMISSION` |
| 65 | `theorem` | [tail_zero](declarations/tail-zero.md) | 548 | `BLOCKED_NATIVE_ADMISSION` |
| 66 | `theorem` | [cons_eq_zero_iff](declarations/cons-eq-zero-iff.md) | 553 | `BLOCKED_NATIVE_ADMISSION` |
| 67 | `theorem` | [cons_nonzero_iff](declarations/cons-nonzero-iff.md) | 562 | `BLOCKED_NATIVE_ADMISSION` |
| 68 | `theorem` | [neg_empty](declarations/neg-empty.md) | 574 | `BLOCKED_NATIVE_ADMISSION` |
| 69 | `theorem` | [neg_cons](declarations/neg-cons.md) | 579 | `BLOCKED_NATIVE_ADMISSION` |
| 70 | `theorem` | [head_neg](declarations/head-neg.md) | 585 | `BLOCKED_NATIVE_ADMISSION` |
| 71 | `theorem` | [tail_neg](declarations/tail-neg.md) | 590 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=d98b315bd63dbe1cc4098a9d0c3ccfd5f0ff57d33e1cc276f5c2649a24ecfe7d -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/VecNotation/Variant84187f87592e4168281b66fc0eb97474cd386bd5cba913cf202e15a19aa798d7.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
