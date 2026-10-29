# WSeq Basic

[Complete source index](../../../../complete-source-index.md) · [Up one directory](../../../../complete-source-index.md) · [Full source](source.md)

**116 observed declarations and anonymous commands**, 85 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant1f099279f9abca3a9ecb84bd1ee87158ca07c549bf379dbcc23ce69ffa4989d4.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `f2d6818ba3873036e9d2d9f04e1da0ed162bee1d`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../_verification/specifications/ComputerScience/TheoryOfData/DataStructures/WSeqBasic.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [WSeq](declarations/wseq.md) | 33 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `def` | [ofSeq](declarations/ofseq.md) | 42 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `def` | [ofList](declarations/oflist.md) | 47 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `def` | [ofStream](declarations/ofstream.md) | 52 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `instance` | [coeSeq](declarations/coeseq.md) | 55 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `instance` | [coeList](declarations/coelist.md) | 58 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `instance` | [coeStream](declarations/coestream.md) | 61 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `def` | [nil](declarations/nil.md) | 65 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `instance` | [inhabited](declarations/inhabited.md) | 68 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `def` | [cons](declarations/cons.md) | 72 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `def` | [think](declarations/think.md) | 76 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `def` | [destruct](declarations/destruct.md) | 81 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `def` | [recOn](declarations/recon.md) | 89 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `def` | [Mem](declarations/mem.md) | 94 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `instance` | [membership](declarations/membership.md) | 97 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [notMem_nil](declarations/notmem-nil.md) | 100 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `def` | [head](declarations/head.md) | 107 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `def` | [flatten](declarations/flatten.md) | 112 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `def` | [tail](declarations/tail.md) | 121 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `def` | [drop](declarations/drop.md) | 125 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `def` | [get?](declarations/get.md) | 130 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `def` | [toList](declarations/tolist.md) | 134 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `def` | [append](declarations/append.md) | 145 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `def` | [join](declarations/join.md) | 150 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `def` | [map](declarations/map.md) | 159 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `def` | [ret](declarations/ret.md) | 163 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `def` | [bind](declarations/bind.md) | 167 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `instance` | [monad](declarations/monad.md) | 174 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [destruct_nil](declarations/destruct-nil.md) | 182 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [destruct_cons](declarations/destruct-cons.md) | 186 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [destruct_think](declarations/destruct-think.md) | 190 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [seq_destruct_nil](declarations/seq-destruct-nil.md) | 194 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [seq_destruct_cons](declarations/seq-destruct-cons.md) | 198 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [seq_destruct_think](declarations/seq-destruct-think.md) | 202 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `theorem` | [head_nil](declarations/head-nil.md) | 206 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `theorem` | [head_cons](declarations/head-cons.md) | 209 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `theorem` | [head_think](declarations/head-think.md) | 212 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `theorem` | [flatten_pure](declarations/flatten-pure.md) | 215 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `theorem` | [flatten_think](declarations/flatten-think.md) | 227 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `theorem` | [destruct_flatten](declarations/destruct-flatten.md) | 231 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `theorem` | [head_terminates_iff](declarations/head-terminates-iff.md) | 245 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `theorem` | [tail_nil](declarations/tail-nil.md) | 249 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `theorem` | [tail_cons](declarations/tail-cons.md) | 252 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `theorem` | [tail_think](declarations/tail-think.md) | 255 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `theorem` | [dropn_nil](declarations/dropn-nil.md) | 258 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `theorem` | [dropn_cons](declarations/dropn-cons.md) | 261 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `theorem` | [dropn_think](declarations/dropn-think.md) | 268 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `theorem` | [dropn_add](declarations/dropn-add.md) | 271 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `theorem` | [dropn_tail](declarations/dropn-tail.md) | 275 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `theorem` | [get?_add](declarations/get-add.md) | 280 | `BLOCKED_NATIVE_ADMISSION` |
| 51 | `theorem` | [get?_tail](declarations/get-tail.md) | 283 | `BLOCKED_NATIVE_ADMISSION` |
| 52 | `theorem` | [join_nil](declarations/join-nil.md) | 287 | `BLOCKED_NATIVE_ADMISSION` |
| 53 | `theorem` | [join_think](declarations/join-think.md) | 291 | `BLOCKED_NATIVE_ADMISSION` |
| 54 | `theorem` | [join_cons](declarations/join-cons.md) | 297 | `BLOCKED_NATIVE_ADMISSION` |
| 55 | `theorem` | [nil_append](declarations/nil-append.md) | 303 | `BLOCKED_NATIVE_ADMISSION` |
| 56 | `theorem` | [cons_append](declarations/cons-append.md) | 307 | `BLOCKED_NATIVE_ADMISSION` |
| 57 | `theorem` | [think_append](declarations/think-append.md) | 311 | `BLOCKED_NATIVE_ADMISSION` |
| 58 | `theorem` | [append_nil](declarations/append-nil.md) | 315 | `BLOCKED_NATIVE_ADMISSION` |
| 59 | `theorem` | [append_assoc](declarations/append-assoc.md) | 319 | `BLOCKED_NATIVE_ADMISSION` |
| 60 | `def` | [tail.aux](declarations/tail-aux.md) | 324 | `BLOCKED_NATIVE_ADMISSION` |
| 61 | `theorem` | [destruct_tail](declarations/destruct-tail.md) | 328 | `BLOCKED_NATIVE_ADMISSION` |
| 62 | `def` | [drop.aux](declarations/drop-aux.md) | 334 | `BLOCKED_NATIVE_ADMISSION` |
| 63 | `theorem` | [drop.aux_none](declarations/drop-aux-none.md) | 338 | `BLOCKED_NATIVE_ADMISSION` |
| 64 | `theorem` | [destruct_dropn](declarations/destruct-dropn.md) | 344 | `BLOCKED_NATIVE_ADMISSION` |
| 65 | `theorem` | [head_terminates_of_head_tail_terminates](declarations/head-terminates-of-head-tail-terminates.md) | 350 | `BLOCKED_NATIVE_ADMISSION` |
| 66 | `theorem` | [destruct_some_of_destruct_tail_some](declarations/destruct-some-of-destruct-tail-some.md) | 358 | `BLOCKED_NATIVE_ADMISSION` |
| 67 | `theorem` | [head_some_of_head_tail_some](declarations/head-some-of-head-tail-some.md) | 368 | `BLOCKED_NATIVE_ADMISSION` |
| 68 | `theorem` | [head_some_of_get?_some](declarations/head-some-of-get-some.md) | 376 | `BLOCKED_NATIVE_ADMISSION` |
| 69 | `theorem` | [get?_terminates_le](declarations/get-terminates-le.md) | 384 | `BLOCKED_NATIVE_ADMISSION` |
| 70 | `theorem` | [head_terminates_of_get?_terminates](declarations/head-terminates-of-get-terminates.md) | 389 | `BLOCKED_NATIVE_ADMISSION` |
| 71 | `theorem` | [destruct_terminates_of_get?_terminates](declarations/destruct-terminates-of-get-terminates.md) | 393 | `BLOCKED_NATIVE_ADMISSION` |
| 72 | `theorem` | [mem_rec_on](declarations/mem-rec-on.md) | 397 | `BLOCKED_NATIVE_ADMISSION` |
| 73 | `theorem` | [mem_think](declarations/mem-think.md) | 411 | `BLOCKED_NATIVE_ADMISSION` |
| 74 | `theorem` | [eq_or_mem_iff_mem](declarations/eq-or-mem-iff-mem.md) | 420 | `BLOCKED_NATIVE_ADMISSION` |
| 75 | `theorem` | [mem_cons_iff](declarations/mem-cons-iff.md) | 443 | `BLOCKED_NATIVE_ADMISSION` |
| 76 | `theorem` | [mem_cons_of_mem](declarations/mem-cons-of-mem.md) | 446 | `BLOCKED_NATIVE_ADMISSION` |
| 77 | `theorem` | [mem_cons](declarations/mem-cons.md) | 449 | `BLOCKED_NATIVE_ADMISSION` |
| 78 | `theorem` | [mem_of_mem_tail](declarations/mem-of-mem-tail.md) | 452 | `BLOCKED_NATIVE_ADMISSION` |
| 79 | `theorem` | [mem_of_mem_dropn](declarations/mem-of-mem-dropn.md) | 464 | `BLOCKED_NATIVE_ADMISSION` |
| 80 | `theorem` | [get?_mem](declarations/get-mem.md) | 468 | `BLOCKED_NATIVE_ADMISSION` |
| 81 | `theorem` | [exists_get?_of_mem](declarations/exists-get-of-mem.md) | 480 | `BLOCKED_NATIVE_ADMISSION` |
| 82 | `theorem` | [exists_dropn_of_mem](declarations/exists-dropn-of-mem.md) | 497 | `BLOCKED_NATIVE_ADMISSION` |
| 83 | `theorem` | [head_terminates_of_mem](declarations/head-terminates-of-mem.md) | 511 | `BLOCKED_NATIVE_ADMISSION` |
| 84 | `theorem` | [of_mem_append](declarations/of-mem-append.md) | 515 | `BLOCKED_NATIVE_ADMISSION` |
| 85 | `theorem` | [mem_append_left](declarations/mem-append-left.md) | 518 | `BLOCKED_NATIVE_ADMISSION` |
| 86 | `theorem` | [exists_of_mem_map](declarations/exists-of-mem-map.md) | 521 | `BLOCKED_NATIVE_ADMISSION` |
| 87 | `theorem` | [ofList_nil](declarations/oflist-nil.md) | 530 | `BLOCKED_NATIVE_ADMISSION` |
| 88 | `theorem` | [ofList_cons](declarations/oflist-cons.md) | 534 | `BLOCKED_NATIVE_ADMISSION` |
| 89 | `theorem` | [toList'_nil](declarations/tolist-nil.md) | 538 | `BLOCKED_NATIVE_ADMISSION` |
| 90 | `theorem` | [toList'_cons](declarations/tolist-cons-source-edition-2.md) | 547 | `BLOCKED_NATIVE_ADMISSION` |
| 91 | `theorem` | [toList'_think](declarations/tolist-think.md) | 561 | `BLOCKED_NATIVE_ADMISSION` |
| 92 | `theorem` | [toList'_map](declarations/tolist-map.md) | 574 | `BLOCKED_NATIVE_ADMISSION` |
| 93 | `theorem` | [toList_cons](declarations/tolist-cons.md) | 601 | `BLOCKED_NATIVE_ADMISSION` |
| 94 | `theorem` | [toList_nil](declarations/tolist-nil-source-edition-2.md) | 610 | `BLOCKED_NATIVE_ADMISSION` |
| 95 | `theorem` | [toList_ofList](declarations/tolist-oflist.md) | 613 | `BLOCKED_NATIVE_ADMISSION` |
| 96 | `theorem` | [destruct_ofSeq](declarations/destruct-ofseq.md) | 619 | `BLOCKED_NATIVE_ADMISSION` |
| 97 | `theorem` | [head_ofSeq](declarations/head-ofseq.md) | 631 | `BLOCKED_NATIVE_ADMISSION` |
| 98 | `theorem` | [tail_ofSeq](declarations/tail-ofseq.md) | 636 | `BLOCKED_NATIVE_ADMISSION` |
| 99 | `theorem` | [dropn_ofSeq](declarations/dropn-ofseq.md) | 643 | `BLOCKED_NATIVE_ADMISSION` |
| 100 | `theorem` | [get?_ofSeq](declarations/get-ofseq.md) | 649 | `BLOCKED_NATIVE_ADMISSION` |
| 101 | `theorem` | [map_nil](declarations/map-nil.md) | 653 | `BLOCKED_NATIVE_ADMISSION` |
| 102 | `theorem` | [map_cons](declarations/map-cons.md) | 657 | `BLOCKED_NATIVE_ADMISSION` |
| 103 | `theorem` | [map_think](declarations/map-think.md) | 661 | `BLOCKED_NATIVE_ADMISSION` |
| 104 | `theorem` | [map_id](declarations/map-id.md) | 665 | `BLOCKED_NATIVE_ADMISSION` |
| 105 | `theorem` | [map_ret](declarations/map-ret.md) | 668 | `BLOCKED_NATIVE_ADMISSION` |
| 106 | `theorem` | [map_append](declarations/map-append.md) | 671 | `BLOCKED_NATIVE_ADMISSION` |
| 107 | `theorem` | [map_comp](declarations/map-comp.md) | 674 | `BLOCKED_NATIVE_ADMISSION` |
| 108 | `theorem` | [mem_map](declarations/mem-map.md) | 679 | `BLOCKED_NATIVE_ADMISSION` |
| 109 | `theorem` | [exists_of_mem_join](declarations/exists-of-mem-join.md) | 683 | `BLOCKED_NATIVE_ADMISSION` |
| 110 | `theorem` | [exists_of_mem_bind](declarations/exists-of-mem-bind.md) | 714 | `BLOCKED_NATIVE_ADMISSION` |
| 111 | `theorem` | [destruct_map](declarations/destruct-map.md) | 720 | `BLOCKED_NATIVE_ADMISSION` |
| 112 | `def` | [destruct_append.aux](declarations/destruct-append-aux.md) | 736 | `BLOCKED_NATIVE_ADMISSION` |
| 113 | `theorem` | [destruct_append](declarations/destruct-append.md) | 740 | `BLOCKED_NATIVE_ADMISSION` |
| 114 | `def` | [destruct_join.aux](declarations/destruct-join-aux.md) | 755 | `BLOCKED_NATIVE_ADMISSION` |
| 115 | `theorem` | [destruct_join](declarations/destruct-join.md) | 759 | `BLOCKED_NATIVE_ADMISSION` |
| 116 | `theorem` | [map_join](declarations/map-join.md) | 775 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=130796edd795d79fd564e39bc7116a8dbe84428b418583958311b14601117452 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant1f099279f9abca3a9ecb84bd1ee87158ca07c549bf379dbcc23ce69ffa4989d4.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
