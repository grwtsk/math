# Seq Basic Public

[Complete source index](../../../../complete-source-index.md) · [Up one directory](../../../../complete-source-index.md) · [Full source](source.md)

**139 observed declarations and anonymous commands**, 128 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant48e00d17ab95f26b057c8cbb57d81bcb94b0951c11fa42c8c67c0aaf588728a1.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `590f8d1b96a021da3414c501f01d0c9c564748a6`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../_verification/specifications/ComputerScience/TheoryOfData/DataStructures/SeqBasicPublic.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `theorem` | [length'_of_terminates](declarations/length-of-terminates.md) | 32 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `theorem` | [length'_of_not_terminates](declarations/length-of-not-terminates.md) | 36 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `theorem` | [length_nil](declarations/length-nil-source-edition-2.md) | 41 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `theorem` | [length'_nil](declarations/length-nil.md) | 45 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [length_cons](declarations/length-cons.md) | 48 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [length'_cons](declarations/length-cons-source-edition-2.md) | 54 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [length_eq_zero](declarations/length-eq-zero.md) | 62 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [length'_eq_zero_iff_nil](declarations/length-eq-zero-iff-nil.md) | 67 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [length'_ne_zero_iff_cons](declarations/length-ne-zero-iff-cons.md) | 71 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [length_le_iff'](declarations/length-le-iff.md) | 78 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [length_le_iff](declarations/length-le-iff-source-edition-3.md) | 89 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [length'_le_iff](declarations/length-le-iff-source-edition-2.md) | 93 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [lt_length_iff'](declarations/lt-length-iff-source-edition-2.md) | 102 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [lt_length_iff](declarations/lt-length-iff.md) | 114 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [lt_length'_iff](declarations/lt-length-iff-source-edition-3.md) | 118 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [ofStream_cons](declarations/ofstream-cons.md) | 132 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [terminatedAt_ofList](declarations/terminatedat-oflist.md) | 140 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [terminates_ofList](declarations/terminates-oflist.md) | 144 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [take_nil](declarations/take-nil.md) | 152 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [take_zero](declarations/take-zero.md) | 156 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [take_succ_cons](declarations/take-succ-cons.md) | 160 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [getElem?_take](declarations/getelem-take.md) | 165 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [get?_mem_take](declarations/get-mem-take.md) | 181 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [length_take_le](declarations/length-take-le.md) | 200 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [length_take_of_le_length](declarations/length-take-of-le-length.md) | 212 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [length_toList](declarations/length-tolist.md) | 234 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [getElem?_toList](declarations/getelem-tolist.md) | 241 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [ofList_toList](declarations/oflist-tolist.md) | 251 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [toList_ofList](declarations/tolist-oflist.md) | 256 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [toList_nil](declarations/tolist-nil.md) | 261 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [getLast?_toList](declarations/getlast-tolist.md) | 264 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [cons_append](declarations/cons-append.md) | 273 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [nil_append](declarations/nil-append.md) | 279 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [append_nil](declarations/append-nil.md) | 290 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `theorem` | [append_assoc](declarations/append-assoc.md) | 299 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `theorem` | [of_mem_append](declarations/of-mem-append.md) | 313 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `theorem` | [mem_append_left](declarations/mem-append-left.md) | 334 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `theorem` | [ofList_append](declarations/oflist-append.md) | 338 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `theorem` | [ofStream_append](declarations/ofstream-append.md) | 342 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `theorem` | [map_get?](declarations/map-get.md) | 351 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `theorem` | [map_nil](declarations/map-nil.md) | 355 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `theorem` | [map_cons](declarations/map-cons.md) | 359 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `theorem` | [map_id](declarations/map-id.md) | 363 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `theorem` | [map_tail](declarations/map-tail.md) | 369 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `theorem` | [map_comp](declarations/map-comp.md) | 372 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `theorem` | [terminatedAt_map_iff](declarations/terminatedat-map-iff.md) | 379 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `theorem` | [terminates_map_iff](declarations/terminates-map-iff.md) | 384 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `theorem` | [length_map](declarations/length-map-source-edition-2.md) | 389 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `theorem` | [length'_map](declarations/length-map.md) | 397 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `theorem` | [mem_map](declarations/mem-map.md) | 403 | `BLOCKED_NATIVE_ADMISSION` |
| 51 | `theorem` | [exists_of_mem_map](declarations/exists-of-mem-map.md) | 406 | `BLOCKED_NATIVE_ADMISSION` |
| 52 | `theorem` | [map_append](declarations/map-append.md) | 415 | `BLOCKED_NATIVE_ADMISSION` |
| 53 | `theorem` | [join_nil](declarations/join-nil.md) | 432 | `BLOCKED_NATIVE_ADMISSION` |
| 54 | `theorem` | [join_cons_nil](declarations/join-cons-nil.md) | 437 | `BLOCKED_NATIVE_ADMISSION` |
| 55 | `theorem` | [join_cons_cons](declarations/join-cons-cons.md) | 442 | `BLOCKED_NATIVE_ADMISSION` |
| 56 | `theorem` | [join_cons](declarations/join-cons.md) | 447 | `BLOCKED_NATIVE_ADMISSION` |
| 57 | `theorem` | [join_append](declarations/join-append.md) | 467 | `BLOCKED_NATIVE_ADMISSION` |
| 58 | `theorem` | [drop_get?](declarations/drop-get.md) | 492 | `BLOCKED_NATIVE_ADMISSION` |
| 59 | `theorem` | [dropn_add](declarations/dropn-add.md) | 500 | `BLOCKED_NATIVE_ADMISSION` |
| 60 | `theorem` | [dropn_tail](declarations/dropn-tail.md) | 504 | `BLOCKED_NATIVE_ADMISSION` |
| 61 | `theorem` | [head_dropn](declarations/head-dropn.md) | 508 | `BLOCKED_NATIVE_ADMISSION` |
| 62 | `theorem` | [drop_zero](declarations/drop-zero.md) | 514 | `BLOCKED_NATIVE_ADMISSION` |
| 63 | `theorem` | [drop_succ_cons](declarations/drop-succ-cons.md) | 517 | `BLOCKED_NATIVE_ADMISSION` |
| 64 | `theorem` | [drop_nil](declarations/drop-nil.md) | 522 | `BLOCKED_NATIVE_ADMISSION` |
| 65 | `theorem` | [drop_length'](declarations/drop-length.md) | 528 | `BLOCKED_NATIVE_ADMISSION` |
| 66 | `theorem` | [take_drop](declarations/take-drop.md) | 542 | `BLOCKED_NATIVE_ADMISSION` |
| 67 | `theorem` | [get?_zipWith](declarations/get-zipwith.md) | 552 | `BLOCKED_NATIVE_ADMISSION` |
| 68 | `theorem` | [get?_zip](declarations/get-zip.md) | 557 | `BLOCKED_NATIVE_ADMISSION` |
| 69 | `theorem` | [nats_get?](declarations/nats-get.md) | 562 | `BLOCKED_NATIVE_ADMISSION` |
| 70 | `theorem` | [get?_enum](declarations/get-enum.md) | 566 | `BLOCKED_NATIVE_ADMISSION` |
| 71 | `theorem` | [zipWith_nil_left](declarations/zipwith-nil-left.md) | 570 | `BLOCKED_NATIVE_ADMISSION` |
| 72 | `theorem` | [zipWith_nil_right](declarations/zipwith-nil-right.md) | 575 | `BLOCKED_NATIVE_ADMISSION` |
| 73 | `theorem` | [zipWith_cons_cons](declarations/zipwith-cons-cons.md) | 581 | `BLOCKED_NATIVE_ADMISSION` |
| 74 | `theorem` | [zip_nil_left](declarations/zip-nil-left.md) | 587 | `BLOCKED_NATIVE_ADMISSION` |
| 75 | `theorem` | [zip_nil_right](declarations/zip-nil-right.md) | 592 | `BLOCKED_NATIVE_ADMISSION` |
| 76 | `theorem` | [zip_cons_cons](declarations/zip-cons-cons.md) | 597 | `BLOCKED_NATIVE_ADMISSION` |
| 77 | `theorem` | [enum_nil](declarations/enum-nil.md) | 602 | `BLOCKED_NATIVE_ADMISSION` |
| 78 | `theorem` | [enum_cons](declarations/enum-cons.md) | 606 | `BLOCKED_NATIVE_ADMISSION` |
| 79 | `theorem` | [zipWith_map](declarations/zipwith-map.md) | 616 | `BLOCKED_NATIVE_ADMISSION` |
| 80 | `theorem` | [zipWith_map_left](declarations/zipwith-map-left.md) | 622 | `BLOCKED_NATIVE_ADMISSION` |
| 81 | `theorem` | [zipWith_map_right](declarations/zipwith-map-right.md) | 627 | `BLOCKED_NATIVE_ADMISSION` |
| 82 | `theorem` | [zip_map](declarations/zip-map.md) | 632 | `BLOCKED_NATIVE_ADMISSION` |
| 83 | `theorem` | [zip_map_left](declarations/zip-map-left.md) | 638 | `BLOCKED_NATIVE_ADMISSION` |
| 84 | `theorem` | [zip_map_right](declarations/zip-map-right.md) | 643 | `BLOCKED_NATIVE_ADMISSION` |
| 85 | `theorem` | [fold_nil](declarations/fold-nil.md) | 654 | `BLOCKED_NATIVE_ADMISSION` |
| 86 | `theorem` | [fold_cons](declarations/fold-cons.md) | 660 | `BLOCKED_NATIVE_ADMISSION` |
| 87 | `theorem` | [fold_head](declarations/fold-head.md) | 669 | `BLOCKED_NATIVE_ADMISSION` |
| 88 | `theorem` | [get?_update](declarations/get-update.md) | 680 | `BLOCKED_NATIVE_ADMISSION` |
| 89 | `theorem` | [update_nil](declarations/update-nil.md) | 688 | `BLOCKED_NATIVE_ADMISSION` |
| 90 | `theorem` | [set_nil](declarations/set-nil.md) | 693 | `BLOCKED_NATIVE_ADMISSION` |
| 91 | `theorem` | [update_cons_zero](declarations/update-cons-zero.md) | 696 | `BLOCKED_NATIVE_ADMISSION` |
| 92 | `theorem` | [set_cons_zero](declarations/set-cons-zero.md) | 701 | `BLOCKED_NATIVE_ADMISSION` |
| 93 | `theorem` | [update_cons_succ](declarations/update-cons-succ.md) | 705 | `BLOCKED_NATIVE_ADMISSION` |
| 94 | `theorem` | [set_cons_succ](declarations/set-cons-succ.md) | 710 | `BLOCKED_NATIVE_ADMISSION` |
| 95 | `theorem` | [get?_set_of_not_terminatedAt](declarations/get-set-of-not-terminatedat.md) | 714 | `BLOCKED_NATIVE_ADMISSION` |
| 96 | `theorem` | [get?_set_of_terminatedAt](declarations/get-set-of-terminatedat.md) | 718 | `BLOCKED_NATIVE_ADMISSION` |
| 97 | `theorem` | [get?_set_of_ne](declarations/get-set-of-ne.md) | 722 | `BLOCKED_NATIVE_ADMISSION` |
| 98 | `theorem` | [drop_set_of_lt](declarations/drop-set-of-lt.md) | 725 | `BLOCKED_NATIVE_ADMISSION` |
| 99 | `theorem` | [all_cons](declarations/all-cons.md) | 733 | `BLOCKED_NATIVE_ADMISSION` |
| 100 | `theorem` | [all_get](declarations/all-get.md) | 738 | `BLOCKED_NATIVE_ADMISSION` |
| 101 | `theorem` | [all_of_get](declarations/all-of-get.md) | 743 | `BLOCKED_NATIVE_ADMISSION` |
| 102 | `lemma` | [all_coind_drop_motive](declarations/all-coind-drop-motive.md) | 748 | `BLOCKED_NATIVE_ADMISSION` |
| 103 | `theorem` | [all_coind](declarations/all-coind.md) | 761 | `BLOCKED_NATIVE_ADMISSION` |
| 104 | `theorem` | [map_all_iff](declarations/map-all-iff.md) | 774 | `BLOCKED_NATIVE_ADMISSION` |
| 105 | `theorem` | [take_all](declarations/take-all.md) | 782 | `BLOCKED_NATIVE_ADMISSION` |
| 106 | `theorem` | [set_all](declarations/set-all.md) | 794 | `BLOCKED_NATIVE_ADMISSION` |
| 107 | `theorem` | [Pairwise.nil](declarations/pairwise-nil.md) | 811 | `BLOCKED_NATIVE_ADMISSION` |
| 108 | `theorem` | [Pairwise.cons](declarations/pairwise-cons.md) | 814 | `BLOCKED_NATIVE_ADMISSION` |
| 109 | `theorem` | [Pairwise.cons_elim](declarations/pairwise-cons-elim.md) | 829 | `BLOCKED_NATIVE_ADMISSION` |
| 110 | `theorem` | [Pairwise_cons_nil](declarations/pairwise-cons-nil.md) | 839 | `BLOCKED_NATIVE_ADMISSION` |
| 111 | `theorem` | [Pairwise_cons_cons_head](declarations/pairwise-cons-cons-head.md) | 842 | `BLOCKED_NATIVE_ADMISSION` |
| 112 | `theorem` | [Pairwise.cons_cons_of_trans](declarations/pairwise-cons-cons-of-trans.md) | 848 | `BLOCKED_NATIVE_ADMISSION` |
| 113 | `theorem` | [Pairwise.coind](declarations/pairwise-coind.md) | 857 | `BLOCKED_NATIVE_ADMISSION` |
| 114 | `theorem` | [Pairwise.coind_trans](declarations/pairwise-coind-trans.md) | 876 | `BLOCKED_NATIVE_ADMISSION` |
| 115 | `theorem` | [Pairwise_tail](declarations/pairwise-tail.md) | 894 | `BLOCKED_NATIVE_ADMISSION` |
| 116 | `theorem` | [Pairwise_drop](declarations/pairwise-drop.md) | 900 | `BLOCKED_NATIVE_ADMISSION` |
| 117 | `theorem` | [at_least_as_long_as_coind](declarations/at-least-as-long-as-coind.md) | 909 | `BLOCKED_NATIVE_ADMISSION` |
| 118 | `instance` | [(anonymous)](declarations/instance-source-edition-3.md) | 947 | `BLOCKED_NATIVE_ADMISSION` |
| 119 | `instance` | [(anonymous)](declarations/instance.md) | 949 | `BLOCKED_NATIVE_ADMISSION` |
| 120 | `def` | [toSeq](declarations/toseq.md) | 963 | `BLOCKED_NATIVE_ADMISSION` |
| 121 | `instance` | [coeSeq](declarations/coeseq.md) | 966 | `BLOCKED_NATIVE_ADMISSION` |
| 122 | `def` | [map](declarations/map.md) | 970 | `BLOCKED_NATIVE_ADMISSION` |
| 123 | `theorem` | [map_pair](declarations/map-pair.md) | 973 | `BLOCKED_NATIVE_ADMISSION` |
| 124 | `theorem` | [map_id](declarations/map-id-source-edition-2.md) | 976 | `BLOCKED_NATIVE_ADMISSION` |
| 125 | `def` | [join](declarations/join.md) | 980 | `BLOCKED_NATIVE_ADMISSION` |
| 126 | `theorem` | [join_nil](declarations/join-nil-source-edition-2.md) | 987 | `BLOCKED_NATIVE_ADMISSION` |
| 127 | `theorem` | [join_cons](declarations/join-cons-source-edition-2.md) | 991 | `BLOCKED_NATIVE_ADMISSION` |
| 128 | `def` | [ret](declarations/ret.md) | 997 | `BLOCKED_NATIVE_ADMISSION` |
| 129 | `instance` | [(anonymous)](declarations/instance-source-edition-2.md) | 1000 | `BLOCKED_NATIVE_ADMISSION` |
| 130 | `def` | [bind](declarations/bind.md) | 1007 | `BLOCKED_NATIVE_ADMISSION` |
| 131 | `theorem` | [join_map_ret](declarations/join-map-ret.md) | 1011 | `BLOCKED_NATIVE_ADMISSION` |
| 132 | `theorem` | [bind_ret](declarations/bind-ret.md) | 1016 | `BLOCKED_NATIVE_ADMISSION` |
| 133 | `theorem` | [ret_bind](declarations/ret-bind.md) | 1021 | `BLOCKED_NATIVE_ADMISSION` |
| 134 | `theorem` | [map_join'](declarations/map-join.md) | 1028 | `BLOCKED_NATIVE_ADMISSION` |
| 135 | `theorem` | [map_join](declarations/map-join-source-edition-2.md) | 1046 | `BLOCKED_NATIVE_ADMISSION` |
| 136 | `theorem` | [join_join](declarations/join-join.md) | 1051 | `BLOCKED_NATIVE_ADMISSION` |
| 137 | `theorem` | [bind_assoc](declarations/bind-assoc.md) | 1072 | `BLOCKED_NATIVE_ADMISSION` |
| 138 | `instance` | [monad](declarations/monad.md) | 1087 | `BLOCKED_NATIVE_ADMISSION` |
| 139 | `instance` | [lawfulMonad](declarations/lawfulmonad.md) | 1092 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=bd60b8e127110995da149073494e6506b89d502e2863a707ac25a175e8a43388 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant48e00d17ab95f26b057c8cbb57d81bcb94b0951c11fa42c8c67c0aaf588728a1.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
