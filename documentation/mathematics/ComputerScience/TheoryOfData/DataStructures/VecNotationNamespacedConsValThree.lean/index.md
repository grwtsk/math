# Vec Notation Namespaced Cons Val Three

[Complete source index](../../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**52 observed declarations and anonymous commands**, 37 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Algebra/LinearAlgebra/VecNotation/Variant826fff9c22e0c8865577cd4f12bcbd598adee1e011490fd922942e8aa55c742f.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `1ffc3ff2cbea383e55ad6a2d352503a3cf50cd39`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../_verification/specifications/ComputerScience/TheoryOfData/DataStructures/VecNotationNamespacedConsValThree.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [vecEmpty](declarations/vecempty.md) | 55 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `def` | [vecCons](declarations/veccons.md) | 63 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `syntax` | [(anonymous)](declarations/syntax.md) | 74 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `macro_rules` | [(anonymous)](declarations/macro-rules.md) | 76 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `def` | [vecConsUnexpander](declarations/vecconsunexpander.md) | 83 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `def` | [vecEmptyUnexpander](declarations/vecemptyunexpander.md) | 91 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `def` | [vecHead](declarations/vechead.md) | 96 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `def` | [vecTail](declarations/vectail.md) | 100 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `instance` | [Vec Notation Namespaced Cons Val Three](declarations/hasrepr.md) | 111 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [empty_eq](declarations/empty-eq.md) | 120 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [head_fin_const](declarations/head-fin-const.md) | 126 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [cons_val_zero](declarations/cons-val-zero-source-edition-2.md) | 130 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [cons_val_zero'](declarations/cons-val-zero.md) | 133 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [cons_val_succ](declarations/cons-val-succ.md) | 137 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [cons_val_succ'](declarations/cons-val-succ-source-edition-2.md) | 141 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `def` | [matchVecConsPrefix](declarations/matchvecconsprefix.md) | 152 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [head_cons](declarations/head-cons.md) | 198 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [tail_cons](declarations/tail-cons.md) | 202 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [empty_val'](declarations/empty-val.md) | 206 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [cons_head_tail](declarations/cons-head-tail.md) | 210 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [range_cons](declarations/range-cons.md) | 214 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [range_empty](declarations/range-empty.md) | 218 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [range_cons_empty](declarations/range-cons-empty.md) | 221 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [range_cons_cons_empty](declarations/range-cons-cons-empty.md) | 225 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [vecCons_const](declarations/veccons-const.md) | 229 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [vec_single_eq_const](declarations/vec-single-eq-const.md) | 232 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [cons_val_one](declarations/cons-val-one.md) | 242 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [cons_val_two](declarations/cons-val-two.md) | 245 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `lemma` | [cons_val_three](declarations/cons-val-three.md) | 247 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `lemma` | [cons_val_four](declarations/cons-val-four.md) | 251 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [cons_val_fin_one](declarations/cons-val-fin-one.md) | 256 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [cons_fin_one](declarations/cons-fin-one.md) | 260 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `def` | [Vec Notation Namespaced Cons Val Three](declarations/mkliteralq.md) | 265 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `instance` | [Vec Notation Namespaced Cons Val Three](declarations/toexpr.md) | 277 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `def` | [vecAppend](declarations/vecappend.md) | 300 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `theorem` | [vecAppend_eq_ite](declarations/vecappend-eq-ite.md) | 303 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `theorem` | [vecAppend_apply_zero](declarations/vecappend-apply-zero.md) | 313 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `theorem` | [empty_vecAppend](declarations/empty-vecappend.md) | 318 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `theorem` | [cons_vecAppend](declarations/cons-vecappend.md) | 323 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `def` | [vecAlt0](declarations/vecalt0.md) | 339 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `def` | [vecAlt1](declarations/vecalt1.md) | 343 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `theorem` | [vecAlt0_vecAppend](declarations/vecalt0-vecappend.md) | 348 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `theorem` | [vecAlt1_vecAppend](declarations/vecalt1-vecappend.md) | 360 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `theorem` | [vecHead_vecAlt0](declarations/vechead-vecalt0.md) | 378 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `theorem` | [vecHead_vecAlt1](declarations/vechead-vecalt1.md) | 383 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `theorem` | [cons_vec_bit0_eq_alt0](declarations/cons-vec-bit0-eq-alt0.md) | 386 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `theorem` | [cons_vec_bit1_eq_alt1](declarations/cons-vec-bit1-eq-alt1.md) | 390 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `theorem` | [cons_vecAlt0](declarations/cons-vecalt0.md) | 397 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `theorem` | [empty_vecAlt0](declarations/empty-vecalt0.md) | 407 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `theorem` | [cons_vecAlt1](declarations/cons-vecalt1.md) | 411 | `BLOCKED_NATIVE_ADMISSION` |
| 51 | `theorem` | [empty_vecAlt1](declarations/empty-vecalt1.md) | 420 | `BLOCKED_NATIVE_ADMISSION` |
| 52 | `lemma` | [const_fin1_eq](declarations/const-fin1-eq.md) | 425 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=10c57dffd85827b92e4d07a4b4549eaab3324bc2e52dae0b479cf715b68c9ff1 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/VecNotation/Variant826fff9c22e0c8865577cd4f12bcbd598adee1e011490fd922942e8aa55c742f.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
