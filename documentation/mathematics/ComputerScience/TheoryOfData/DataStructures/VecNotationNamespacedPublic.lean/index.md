# Vec Notation Namespaced Public

[Complete source index](../../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**61 observed declarations and anonymous commands**, 46 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Algebra/LinearAlgebra/VecNotation/Variant307f058d5b9c94d4ff529e159c8a8f48d5339762853c1d47a3bb19561737f2ca.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `77368d1dc1f65793e83c909101a18bceead9f449`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../_verification/specifications/ComputerScience/TheoryOfData/DataStructures/VecNotationNamespacedPublic.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [vecEmpty](declarations/vecempty.md) | 61 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `def` | [vecCons](declarations/veccons.md) | 69 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `syntax` | [(anonymous)](declarations/syntax.md) | 80 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `macro_rules` | [(anonymous)](declarations/macro-rules.md) | 82 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `def` | [vecConsUnexpander](declarations/vecconsunexpander.md) | 89 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `def` | [vecEmptyUnexpander](declarations/vecemptyunexpander.md) | 97 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `def` | [vecHead](declarations/vechead.md) | 102 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `def` | [vecTail](declarations/vectail.md) | 106 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `instance` | [Vec Notation Namespaced Public](declarations/hasrepr.md) | 117 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [empty_eq](declarations/empty-eq.md) | 126 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [head_fin_const](declarations/head-fin-const.md) | 132 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [cons_val_zero](declarations/cons-val-zero-source-edition-2.md) | 136 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [cons_val_zero'](declarations/cons-val-zero.md) | 139 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [cons_val_succ](declarations/cons-val-succ-source-edition-2.md) | 143 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [cons_val_succ'](declarations/cons-val-succ.md) | 147 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `lemma` | [Fin.cons_vecEmpty](declarations/fin-cons-vecempty.md) | 155 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `lemma` | [Fin.snoc_vecEmpty](declarations/fin-snoc-vecempty.md) | 159 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `lemma` | [Fin.cons_vecCons](declarations/fin-cons-veccons.md) | 169 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `lemma` | [Fin.snoc_vecCons](declarations/fin-snoc-veccons.md) | 175 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `def` | [matchVecConsPrefix](declarations/matchvecconsprefix.md) | 186 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [head_cons](declarations/head-cons.md) | 232 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [tail_cons](declarations/tail-cons.md) | 236 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [Vec Notation Namespaced Public](declarations/tail-veccons.md) | 241 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [empty_val'](declarations/empty-val.md) | 244 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [cons_head_tail](declarations/cons-head-tail.md) | 248 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [range_cons](declarations/range-cons.md) | 252 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [range_empty](declarations/range-empty.md) | 256 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [range_cons_empty](declarations/range-cons-empty.md) | 259 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [range_cons_cons_empty](declarations/range-cons-cons-empty.md) | 263 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [vecCons_const](declarations/veccons-const.md) | 267 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [vec_single_eq_const](declarations/vec-single-eq-const.md) | 270 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [cons_val_one](declarations/cons-val-one.md) | 279 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [cons_val_two](declarations/cons-val-two.md) | 282 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `lemma` | [cons_val_three](declarations/cons-val-three.md) | 284 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `lemma` | [cons_val_four](declarations/cons-val-four.md) | 288 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `theorem` | [cons_val_fin_one](declarations/cons-val-fin-one.md) | 293 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `theorem` | [cons_fin_one](declarations/cons-fin-one.md) | 297 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `theorem` | [vecCons_inj](declarations/veccons-inj.md) | 301 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `def` | [Vec Notation Namespaced Public](declarations/mkliteralq.md) | 306 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `instance` | [Vec Notation Namespaced Public](declarations/toexpr.md) | 321 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `def` | [vecAppend](declarations/vecappend.md) | 344 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `theorem` | [vecAppend_eq_ite](declarations/vecappend-eq-ite.md) | 347 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `theorem` | [vecAppend_apply_zero](declarations/vecappend-apply-zero.md) | 357 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `theorem` | [empty_vecAppend](declarations/empty-vecappend.md) | 362 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `theorem` | [vecAppend_empty](declarations/vecappend-empty.md) | 367 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `theorem` | [cons_vecAppend](declarations/cons-vecappend.md) | 372 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `def` | [vecAlt0](declarations/vecalt0.md) | 388 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `def` | [vecAlt1](declarations/vecalt1.md) | 392 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `theorem` | [vecAlt0_vecAppend](declarations/vecalt0-vecappend.md) | 397 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `theorem` | [vecAlt1_vecAppend](declarations/vecalt1-vecappend.md) | 409 | `BLOCKED_NATIVE_ADMISSION` |
| 51 | `theorem` | [vecHead_vecAlt0](declarations/vechead-vecalt0.md) | 427 | `BLOCKED_NATIVE_ADMISSION` |
| 52 | `theorem` | [vecHead_vecAlt1](declarations/vechead-vecalt1.md) | 432 | `BLOCKED_NATIVE_ADMISSION` |
| 53 | `theorem` | [cons_vec_bit0_eq_alt0](declarations/cons-vec-bit0-eq-alt0.md) | 435 | `BLOCKED_NATIVE_ADMISSION` |
| 54 | `theorem` | [cons_vec_bit1_eq_alt1](declarations/cons-vec-bit1-eq-alt1.md) | 439 | `BLOCKED_NATIVE_ADMISSION` |
| 55 | `theorem` | [cons_vecAlt0](declarations/cons-vecalt0.md) | 446 | `BLOCKED_NATIVE_ADMISSION` |
| 56 | `theorem` | [empty_vecAlt0](declarations/empty-vecalt0.md) | 456 | `BLOCKED_NATIVE_ADMISSION` |
| 57 | `theorem` | [cons_vecAlt1](declarations/cons-vecalt1.md) | 460 | `BLOCKED_NATIVE_ADMISSION` |
| 58 | `theorem` | [empty_vecAlt1](declarations/empty-vecalt1.md) | 469 | `BLOCKED_NATIVE_ADMISSION` |
| 59 | `lemma` | [const_fin1_eq](declarations/const-fin1-eq.md) | 474 | `BLOCKED_NATIVE_ADMISSION` |
| 60 | `lemma` | [cons_cons_comp_swap_zero_one](declarations/cons-cons-comp-swap-zero-one.md) | 484 | `BLOCKED_NATIVE_ADMISSION` |
| 61 | `lemma` | [cons_swap](declarations/cons-swap.md) | 495 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=125d86772603b203deb1a9452dce63ec41c3a15053e13447f75a6be57f532fe6 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/VecNotation/Variant307f058d5b9c94d4ff529e159c8a8f48d5339762853c1d47a3bb19561737f2ca.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
