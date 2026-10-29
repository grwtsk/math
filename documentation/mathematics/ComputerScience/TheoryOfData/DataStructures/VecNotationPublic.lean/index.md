# Vec Notation Public

[Complete source index](../../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**61 observed declarations and anonymous commands**, 46 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Algebra/LinearAlgebra/VecNotation/Variant1faae2e1fac67fe9cfaf441f63467e73d315f93e388323971fa2083addda8581.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `864bc4b5024d96d66ffd5a4981f92d2547d6f413`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../_verification/specifications/ComputerScience/TheoryOfData/DataStructures/VecNotationPublic.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [vecEmpty](declarations/vecempty.md) | 53 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `def` | [vecCons](declarations/veccons.md) | 61 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `syntax` | [(anonymous)](declarations/syntax.md) | 72 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `macro_rules` | [(anonymous)](declarations/macro-rules.md) | 74 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `def` | [vecConsUnexpander](declarations/vecconsunexpander.md) | 81 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `def` | [vecEmptyUnexpander](declarations/vecemptyunexpander.md) | 89 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `def` | [vecHead](declarations/vechead.md) | 94 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `def` | [vecTail](declarations/vectail.md) | 98 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `instance` | [_root_.PiFin.hasRepr](declarations/root-pifin-hasrepr.md) | 109 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [empty_eq](declarations/empty-eq.md) | 118 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [head_fin_const](declarations/head-fin-const.md) | 124 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [cons_val_zero](declarations/cons-val-zero-source-edition-2.md) | 128 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [cons_val_zero'](declarations/cons-val-zero.md) | 131 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [cons_val_succ](declarations/cons-val-succ.md) | 135 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [cons_val_succ'](declarations/cons-val-succ-source-edition-2.md) | 139 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `lemma` | [Fin.cons_vecEmpty](declarations/fin-cons-vecempty.md) | 147 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `lemma` | [Fin.snoc_vecEmpty](declarations/fin-snoc-vecempty.md) | 151 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `lemma` | [Fin.cons_vecCons](declarations/fin-cons-veccons.md) | 161 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `lemma` | [Fin.snoc_vecCons](declarations/fin-snoc-veccons.md) | 167 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `def` | [matchVecConsPrefix](declarations/matchvecconsprefix.md) | 178 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [head_cons](declarations/head-cons.md) | 224 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [tail_cons](declarations/tail-cons.md) | 228 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [_root_.Fin.tail_vecCons](declarations/root-fin-tail-veccons.md) | 233 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [empty_val'](declarations/empty-val.md) | 236 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [cons_head_tail](declarations/cons-head-tail.md) | 240 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [range_cons](declarations/range-cons.md) | 244 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [range_empty](declarations/range-empty.md) | 248 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [range_cons_empty](declarations/range-cons-empty.md) | 251 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [range_cons_cons_empty](declarations/range-cons-cons-empty.md) | 255 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [vecCons_const](declarations/veccons-const.md) | 259 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [vec_single_eq_const](declarations/vec-single-eq-const.md) | 262 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [cons_val_one](declarations/cons-val-one.md) | 271 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [cons_val_two](declarations/cons-val-two.md) | 274 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `lemma` | [cons_val_three](declarations/cons-val-three.md) | 276 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `lemma` | [cons_val_four](declarations/cons-val-four.md) | 280 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `theorem` | [cons_val_fin_one](declarations/cons-val-fin-one.md) | 285 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `theorem` | [cons_fin_one](declarations/cons-fin-one.md) | 289 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `theorem` | [vecCons_inj](declarations/veccons-inj.md) | 293 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `def` | [_root_.PiFin.mkLiteralQ](declarations/root-pifin-mkliteralq.md) | 298 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `instance` | [_root_.PiFin.toExpr](declarations/root-pifin-toexpr.md) | 313 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `def` | [vecAppend](declarations/vecappend.md) | 336 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `theorem` | [vecAppend_eq_ite](declarations/vecappend-eq-ite.md) | 339 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `theorem` | [vecAppend_apply_zero](declarations/vecappend-apply-zero.md) | 349 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `theorem` | [empty_vecAppend](declarations/empty-vecappend.md) | 354 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `theorem` | [vecAppend_empty](declarations/vecappend-empty.md) | 359 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `theorem` | [cons_vecAppend](declarations/cons-vecappend.md) | 364 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `def` | [vecAlt0](declarations/vecalt0.md) | 380 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `def` | [vecAlt1](declarations/vecalt1.md) | 384 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `theorem` | [vecAlt0_vecAppend](declarations/vecalt0-vecappend.md) | 389 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `theorem` | [vecAlt1_vecAppend](declarations/vecalt1-vecappend.md) | 401 | `BLOCKED_NATIVE_ADMISSION` |
| 51 | `theorem` | [vecHead_vecAlt0](declarations/vechead-vecalt0.md) | 419 | `BLOCKED_NATIVE_ADMISSION` |
| 52 | `theorem` | [vecHead_vecAlt1](declarations/vechead-vecalt1.md) | 424 | `BLOCKED_NATIVE_ADMISSION` |
| 53 | `theorem` | [cons_vec_bit0_eq_alt0](declarations/cons-vec-bit0-eq-alt0.md) | 427 | `BLOCKED_NATIVE_ADMISSION` |
| 54 | `theorem` | [cons_vec_bit1_eq_alt1](declarations/cons-vec-bit1-eq-alt1.md) | 431 | `BLOCKED_NATIVE_ADMISSION` |
| 55 | `theorem` | [cons_vecAlt0](declarations/cons-vecalt0.md) | 438 | `BLOCKED_NATIVE_ADMISSION` |
| 56 | `theorem` | [empty_vecAlt0](declarations/empty-vecalt0.md) | 448 | `BLOCKED_NATIVE_ADMISSION` |
| 57 | `theorem` | [cons_vecAlt1](declarations/cons-vecalt1.md) | 452 | `BLOCKED_NATIVE_ADMISSION` |
| 58 | `theorem` | [empty_vecAlt1](declarations/empty-vecalt1.md) | 461 | `BLOCKED_NATIVE_ADMISSION` |
| 59 | `lemma` | [const_fin1_eq](declarations/const-fin1-eq.md) | 466 | `BLOCKED_NATIVE_ADMISSION` |
| 60 | `lemma` | [cons_cons_comp_swap_zero_one](declarations/cons-cons-comp-swap-zero-one.md) | 476 | `BLOCKED_NATIVE_ADMISSION` |
| 61 | `lemma` | [cons_swap](declarations/cons-swap.md) | 487 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=726b0e5b31313c7132ecd22ea1e98b1d397a96ec8ba435f57425566249239e8a -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/VecNotation/Variant1faae2e1fac67fe9cfaf441f63467e73d315f93e388323971fa2083addda8581.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
