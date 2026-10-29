# Vec Notation Cons Val Three

[Complete source index](../../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**52 observed declarations and anonymous commands**, 37 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Algebra/LinearAlgebra/VecNotation/Variant39fd12d19aa4fd2120eb2113b8bb5d46d00e0a0c5f56a908f328b946b916ef57.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `d7aedbdea64e7cdf5493b612f1c735ea62cea293`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../_verification/specifications/ComputerScience/TheoryOfData/DataStructures/VecNotationConsValThree.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [vecEmpty](declarations/vecempty.md) | 47 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `def` | [vecCons](declarations/veccons.md) | 55 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `syntax` | [(anonymous)](declarations/syntax.md) | 66 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `macro_rules` | [(anonymous)](declarations/macro-rules.md) | 68 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `def` | [vecConsUnexpander](declarations/vecconsunexpander.md) | 75 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `def` | [vecEmptyUnexpander](declarations/vecemptyunexpander.md) | 83 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `def` | [vecHead](declarations/vechead.md) | 88 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `def` | [vecTail](declarations/vectail.md) | 92 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `instance` | [_root_.PiFin.hasRepr](declarations/root-pifin-hasrepr.md) | 103 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [empty_eq](declarations/empty-eq.md) | 112 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [head_fin_const](declarations/head-fin-const.md) | 118 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [cons_val_zero](declarations/cons-val-zero.md) | 122 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [cons_val_zero'](declarations/cons-val-zero-source-edition-2.md) | 125 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [cons_val_succ](declarations/cons-val-succ-source-edition-2.md) | 129 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [cons_val_succ'](declarations/cons-val-succ.md) | 133 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `def` | [matchVecConsPrefix](declarations/matchvecconsprefix.md) | 144 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [head_cons](declarations/head-cons.md) | 190 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [tail_cons](declarations/tail-cons.md) | 194 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [empty_val'](declarations/empty-val.md) | 198 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [cons_head_tail](declarations/cons-head-tail.md) | 202 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [range_cons](declarations/range-cons.md) | 206 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [range_empty](declarations/range-empty.md) | 210 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [range_cons_empty](declarations/range-cons-empty.md) | 213 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [range_cons_cons_empty](declarations/range-cons-cons-empty.md) | 217 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [vecCons_const](declarations/veccons-const.md) | 221 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [vec_single_eq_const](declarations/vec-single-eq-const.md) | 224 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [cons_val_one](declarations/cons-val-one.md) | 234 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [cons_val_two](declarations/cons-val-two.md) | 237 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `lemma` | [cons_val_three](declarations/cons-val-three.md) | 239 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `lemma` | [cons_val_four](declarations/cons-val-four.md) | 243 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [cons_val_fin_one](declarations/cons-val-fin-one.md) | 248 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [cons_fin_one](declarations/cons-fin-one.md) | 252 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `def` | [_root_.PiFin.mkLiteralQ](declarations/root-pifin-mkliteralq.md) | 257 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `instance` | [_root_.PiFin.toExpr](declarations/root-pifin-toexpr.md) | 269 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `def` | [vecAppend](declarations/vecappend.md) | 292 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `theorem` | [vecAppend_eq_ite](declarations/vecappend-eq-ite.md) | 295 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `theorem` | [vecAppend_apply_zero](declarations/vecappend-apply-zero.md) | 305 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `theorem` | [empty_vecAppend](declarations/empty-vecappend.md) | 310 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `theorem` | [cons_vecAppend](declarations/cons-vecappend.md) | 315 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `def` | [vecAlt0](declarations/vecalt0.md) | 331 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `def` | [vecAlt1](declarations/vecalt1.md) | 335 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `theorem` | [vecAlt0_vecAppend](declarations/vecalt0-vecappend.md) | 340 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `theorem` | [vecAlt1_vecAppend](declarations/vecalt1-vecappend.md) | 352 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `theorem` | [vecHead_vecAlt0](declarations/vechead-vecalt0.md) | 370 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `theorem` | [vecHead_vecAlt1](declarations/vechead-vecalt1.md) | 375 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `theorem` | [cons_vec_bit0_eq_alt0](declarations/cons-vec-bit0-eq-alt0.md) | 378 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `theorem` | [cons_vec_bit1_eq_alt1](declarations/cons-vec-bit1-eq-alt1.md) | 382 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `theorem` | [cons_vecAlt0](declarations/cons-vecalt0.md) | 389 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `theorem` | [empty_vecAlt0](declarations/empty-vecalt0.md) | 399 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `theorem` | [cons_vecAlt1](declarations/cons-vecalt1.md) | 403 | `BLOCKED_NATIVE_ADMISSION` |
| 51 | `theorem` | [empty_vecAlt1](declarations/empty-vecalt1.md) | 412 | `BLOCKED_NATIVE_ADMISSION` |
| 52 | `lemma` | [const_fin1_eq](declarations/const-fin1-eq.md) | 417 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=9b5a2a5f51afba92d5bd43d04a190ef53e4b103be07d26eaf45820f680b3a6ce -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/VecNotation/Variant39fd12d19aa4fd2120eb2113b8bb5d46d00e0a0c5f56a908f328b946b916ef57.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
