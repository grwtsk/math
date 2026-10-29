# WSeq Basic Namespaced Public

[Complete source index](../../../../complete-source-index.md) · [Up one directory](../../../../complete-source-index.md) · [Full source](source.md)

**116 observed declarations and anonymous commands**, 85 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant21c4707e22bf2caa43fab98adeace839d894b567d995743c0bcca975aad25333.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `7b136e2ec978e1a0fdd188c1d10f308eca7d5540`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../_verification/specifications/ComputerScience/TheoryOfData/DataStructures/WSeqBasicNamespacedPublic.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [WSeq](declarations/wseq.md) | 44 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `def` | [ofSeq](declarations/ofseq.md) | 53 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `def` | [ofList](declarations/oflist.md) | 58 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `def` | [ofStream](declarations/ofstream.md) | 63 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `instance` | [coeSeq](declarations/coeseq.md) | 66 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `instance` | [coeList](declarations/coelist.md) | 69 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `instance` | [coeStream](declarations/coestream.md) | 72 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `def` | [nil](declarations/nil.md) | 76 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `instance` | [inhabited](declarations/inhabited.md) | 79 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `def` | [cons](declarations/cons.md) | 83 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `def` | [think](declarations/think.md) | 87 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `def` | [destruct](declarations/destruct.md) | 92 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `def` | [recOn](declarations/recon.md) | 101 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `def` | [Mem](declarations/mem.md) | 106 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `instance` | [membership](declarations/membership.md) | 109 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [notMem_nil](declarations/notmem-nil.md) | 112 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `def` | [head](declarations/head.md) | 117 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `def` | [flatten](declarations/flatten.md) | 122 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `def` | [tail](declarations/tail.md) | 131 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `def` | [drop](declarations/drop.md) | 135 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `def` | [get?](declarations/get.md) | 140 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `def` | [toList](declarations/tolist.md) | 144 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `def` | [append](declarations/append.md) | 155 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `def` | [join](declarations/join.md) | 160 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `def` | [map](declarations/map.md) | 169 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `def` | [ret](declarations/ret.md) | 173 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `def` | [bind](declarations/bind.md) | 177 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `instance` | [monad](declarations/monad.md) | 184 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [destruct_nil](declarations/destruct-nil.md) | 192 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [destruct_cons](declarations/destruct-cons.md) | 197 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [destruct_think](declarations/destruct-think.md) | 202 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [seq_destruct_nil](declarations/seq-destruct-nil.md) | 206 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [seq_destruct_cons](declarations/seq-destruct-cons.md) | 210 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [seq_destruct_think](declarations/seq-destruct-think.md) | 214 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `theorem` | [head_nil](declarations/head-nil.md) | 218 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `theorem` | [head_cons](declarations/head-cons.md) | 221 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `theorem` | [head_think](declarations/head-think.md) | 224 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `theorem` | [flatten_pure](declarations/flatten-pure.md) | 228 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `theorem` | [flatten_think](declarations/flatten-think.md) | 241 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `theorem` | [destruct_flatten](declarations/destruct-flatten.md) | 245 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `theorem` | [head_terminates_iff](declarations/head-terminates-iff.md) | 259 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `theorem` | [tail_nil](declarations/tail-nil.md) | 263 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `theorem` | [tail_cons](declarations/tail-cons.md) | 266 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `theorem` | [tail_think](declarations/tail-think.md) | 269 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `theorem` | [dropn_nil](declarations/dropn-nil.md) | 272 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `theorem` | [dropn_cons](declarations/dropn-cons.md) | 275 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `theorem` | [dropn_think](declarations/dropn-think.md) | 282 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `theorem` | [dropn_add](declarations/dropn-add.md) | 285 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `theorem` | [dropn_tail](declarations/dropn-tail.md) | 289 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `theorem` | [get?_add](declarations/get-add.md) | 294 | `BLOCKED_NATIVE_ADMISSION` |
| 51 | `theorem` | [get?_tail](declarations/get-tail.md) | 297 | `BLOCKED_NATIVE_ADMISSION` |
| 52 | `theorem` | [join_nil](declarations/join-nil.md) | 301 | `BLOCKED_NATIVE_ADMISSION` |
| 53 | `theorem` | [join_think](declarations/join-think.md) | 306 | `BLOCKED_NATIVE_ADMISSION` |
| 54 | `theorem` | [join_cons](declarations/join-cons.md) | 313 | `BLOCKED_NATIVE_ADMISSION` |
| 55 | `theorem` | [nil_append](declarations/nil-append.md) | 319 | `BLOCKED_NATIVE_ADMISSION` |
| 56 | `theorem` | [cons_append](declarations/cons-append.md) | 323 | `BLOCKED_NATIVE_ADMISSION` |
| 57 | `theorem` | [think_append](declarations/think-append.md) | 327 | `BLOCKED_NATIVE_ADMISSION` |
| 58 | `theorem` | [append_nil](declarations/append-nil.md) | 331 | `BLOCKED_NATIVE_ADMISSION` |
| 59 | `theorem` | [append_assoc](declarations/append-assoc.md) | 335 | `BLOCKED_NATIVE_ADMISSION` |
| 60 | `def` | [tail.aux](declarations/tail-aux.md) | 340 | `BLOCKED_NATIVE_ADMISSION` |
| 61 | `theorem` | [destruct_tail](declarations/destruct-tail.md) | 344 | `BLOCKED_NATIVE_ADMISSION` |
| 62 | `def` | [drop.aux](declarations/drop-aux.md) | 350 | `BLOCKED_NATIVE_ADMISSION` |
| 63 | `theorem` | [drop.aux_none](declarations/drop-aux-none.md) | 354 | `BLOCKED_NATIVE_ADMISSION` |
| 64 | `theorem` | [destruct_dropn](declarations/destruct-dropn.md) | 360 | `BLOCKED_NATIVE_ADMISSION` |
| 65 | `theorem` | [head_terminates_of_head_tail_terminates](declarations/head-terminates-of-head-tail-terminates.md) | 366 | `BLOCKED_NATIVE_ADMISSION` |
| 66 | `theorem` | [destruct_some_of_destruct_tail_some](declarations/destruct-some-of-destruct-tail-some.md) | 374 | `BLOCKED_NATIVE_ADMISSION` |
| 67 | `theorem` | [head_some_of_head_tail_some](declarations/head-some-of-head-tail-some.md) | 384 | `BLOCKED_NATIVE_ADMISSION` |
| 68 | `theorem` | [head_some_of_get?_some](declarations/head-some-of-get-some.md) | 392 | `BLOCKED_NATIVE_ADMISSION` |
| 69 | `theorem` | [get?_terminates_le](declarations/get-terminates-le.md) | 400 | `BLOCKED_NATIVE_ADMISSION` |
| 70 | `theorem` | [head_terminates_of_get?_terminates](declarations/head-terminates-of-get-terminates.md) | 406 | `BLOCKED_NATIVE_ADMISSION` |
| 71 | `theorem` | [destruct_terminates_of_get?_terminates](declarations/destruct-terminates-of-get-terminates.md) | 410 | `BLOCKED_NATIVE_ADMISSION` |
| 72 | `theorem` | [mem_rec_on](declarations/mem-rec-on.md) | 414 | `BLOCKED_NATIVE_ADMISSION` |
| 73 | `theorem` | [mem_think](declarations/mem-think.md) | 428 | `BLOCKED_NATIVE_ADMISSION` |
| 74 | `theorem` | [eq_or_mem_iff_mem](declarations/eq-or-mem-iff-mem.md) | 437 | `BLOCKED_NATIVE_ADMISSION` |
| 75 | `theorem` | [mem_cons_iff](declarations/mem-cons-iff.md) | 462 | `BLOCKED_NATIVE_ADMISSION` |
| 76 | `theorem` | [mem_cons_of_mem](declarations/mem-cons-of-mem.md) | 465 | `BLOCKED_NATIVE_ADMISSION` |
| 77 | `theorem` | [mem_cons](declarations/mem-cons.md) | 468 | `BLOCKED_NATIVE_ADMISSION` |
| 78 | `theorem` | [mem_of_mem_tail](declarations/mem-of-mem-tail.md) | 471 | `BLOCKED_NATIVE_ADMISSION` |
| 79 | `theorem` | [mem_of_mem_dropn](declarations/mem-of-mem-dropn.md) | 485 | `BLOCKED_NATIVE_ADMISSION` |
| 80 | `theorem` | [get?_mem](declarations/get-mem.md) | 489 | `BLOCKED_NATIVE_ADMISSION` |
| 81 | `theorem` | [exists_get?_of_mem](declarations/exists-get-of-mem.md) | 503 | `BLOCKED_NATIVE_ADMISSION` |
| 82 | `theorem` | [exists_dropn_of_mem](declarations/exists-dropn-of-mem.md) | 520 | `BLOCKED_NATIVE_ADMISSION` |
| 83 | `theorem` | [head_terminates_of_mem](declarations/head-terminates-of-mem.md) | 534 | `BLOCKED_NATIVE_ADMISSION` |
| 84 | `theorem` | [of_mem_append](declarations/of-mem-append.md) | 538 | `BLOCKED_NATIVE_ADMISSION` |
| 85 | `theorem` | [mem_append_left](declarations/mem-append-left.md) | 541 | `BLOCKED_NATIVE_ADMISSION` |
| 86 | `theorem` | [exists_of_mem_map](declarations/exists-of-mem-map.md) | 544 | `BLOCKED_NATIVE_ADMISSION` |
| 87 | `theorem` | [ofList_nil](declarations/oflist-nil.md) | 553 | `BLOCKED_NATIVE_ADMISSION` |
| 88 | `theorem` | [ofList_cons](declarations/oflist-cons.md) | 557 | `BLOCKED_NATIVE_ADMISSION` |
| 89 | `theorem` | [toList'_nil](declarations/tolist-nil.md) | 561 | `BLOCKED_NATIVE_ADMISSION` |
| 90 | `theorem` | [toList'_cons](declarations/tolist-cons.md) | 571 | `BLOCKED_NATIVE_ADMISSION` |
| 91 | `theorem` | [toList'_think](declarations/tolist-think.md) | 586 | `BLOCKED_NATIVE_ADMISSION` |
| 92 | `theorem` | [toList'_map](declarations/tolist-map.md) | 599 | `BLOCKED_NATIVE_ADMISSION` |
| 93 | `theorem` | [toList_cons](declarations/tolist-cons-source-edition-2.md) | 627 | `BLOCKED_NATIVE_ADMISSION` |
| 94 | `theorem` | [toList_nil](declarations/tolist-nil-source-edition-2.md) | 636 | `BLOCKED_NATIVE_ADMISSION` |
| 95 | `theorem` | [toList_ofList](declarations/tolist-oflist.md) | 639 | `BLOCKED_NATIVE_ADMISSION` |
| 96 | `theorem` | [destruct_ofSeq](declarations/destruct-ofseq.md) | 646 | `BLOCKED_NATIVE_ADMISSION` |
| 97 | `theorem` | [head_ofSeq](declarations/head-ofseq.md) | 658 | `BLOCKED_NATIVE_ADMISSION` |
| 98 | `theorem` | [tail_ofSeq](declarations/tail-ofseq.md) | 664 | `BLOCKED_NATIVE_ADMISSION` |
| 99 | `theorem` | [dropn_ofSeq](declarations/dropn-ofseq.md) | 671 | `BLOCKED_NATIVE_ADMISSION` |
| 100 | `theorem` | [get?_ofSeq](declarations/get-ofseq.md) | 677 | `BLOCKED_NATIVE_ADMISSION` |
| 101 | `theorem` | [map_nil](declarations/map-nil.md) | 681 | `BLOCKED_NATIVE_ADMISSION` |
| 102 | `theorem` | [map_cons](declarations/map-cons.md) | 685 | `BLOCKED_NATIVE_ADMISSION` |
| 103 | `theorem` | [map_think](declarations/map-think.md) | 689 | `BLOCKED_NATIVE_ADMISSION` |
| 104 | `theorem` | [map_id](declarations/map-id.md) | 694 | `BLOCKED_NATIVE_ADMISSION` |
| 105 | `theorem` | [map_ret](declarations/map-ret.md) | 697 | `BLOCKED_NATIVE_ADMISSION` |
| 106 | `theorem` | [map_append](declarations/map-append.md) | 700 | `BLOCKED_NATIVE_ADMISSION` |
| 107 | `theorem` | [map_comp](declarations/map-comp.md) | 704 | `BLOCKED_NATIVE_ADMISSION` |
| 108 | `theorem` | [mem_map](declarations/mem-map.md) | 709 | `BLOCKED_NATIVE_ADMISSION` |
| 109 | `theorem` | [exists_of_mem_join](declarations/exists-of-mem-join.md) | 714 | `BLOCKED_NATIVE_ADMISSION` |
| 110 | `theorem` | [exists_of_mem_bind](declarations/exists-of-mem-bind.md) | 744 | `BLOCKED_NATIVE_ADMISSION` |
| 111 | `theorem` | [destruct_map](declarations/destruct-map.md) | 750 | `BLOCKED_NATIVE_ADMISSION` |
| 112 | `def` | [destruct_append.aux](declarations/destruct-append-aux.md) | 767 | `BLOCKED_NATIVE_ADMISSION` |
| 113 | `theorem` | [destruct_append](declarations/destruct-append.md) | 771 | `BLOCKED_NATIVE_ADMISSION` |
| 114 | `def` | [destruct_join.aux](declarations/destruct-join-aux.md) | 789 | `BLOCKED_NATIVE_ADMISSION` |
| 115 | `theorem` | [destruct_join](declarations/destruct-join.md) | 793 | `BLOCKED_NATIVE_ADMISSION` |
| 116 | `theorem` | [map_join](declarations/map-join.md) | 811 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=47b8d9cdaba19f617fbfe85a508f48f4e4e7b5a1ac81a17b5691741b0aafeb3d -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant21c4707e22bf2caa43fab98adeace839d894b567d995743c0bcca975aad25333.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
