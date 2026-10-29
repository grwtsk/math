# Seq Namespaced Not Mem Nil

[Complete source index](../../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**134 observed declarations and anonymous commands**, 79 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Seq/Variant29242684fd61ce4af008eca3979c6772d14231fbc68a4a02aba734e9a822069b.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `8a3e9a50d1697033f3b87a25f41335471b28c923`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../_verification/specifications/ComputerScience/TheoryOfData/DataStructures/SeqNamespacedNotMemNil.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [IsSeq](declarations/isseq.md) | 41 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `def` | [Seq](declarations/seq.md) | 48 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `def` | [Seq1](declarations/seq1.md) | 53 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `def` | [nil](declarations/nil.md) | 62 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `instance` | [(anonymous)](declarations/instance-source-edition-2.md) | 66 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `def` | [cons](declarations/cons.md) | 70 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [val_cons](declarations/val-cons.md) | 78 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `def` | [get?](declarations/get.md) | 83 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [get?_mk](declarations/get-mk.md) | 88 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [get?_nil](declarations/get-nil.md) | 93 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [get?_cons_zero](declarations/get-cons-zero.md) | 98 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [get?_cons_succ](declarations/get-cons-succ.md) | 103 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [ext](declarations/ext.md) | 108 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [cons_injective2](declarations/cons-injective2.md) | 112 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [cons_left_injective](declarations/cons-left-injective.md) | 117 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [cons_right_injective](declarations/cons-right-injective.md) | 121 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `def` | [TerminatedAt](declarations/terminatedat.md) | 126 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `instance` | [terminatedAtDecidable](declarations/terminatedatdecidable.md) | 131 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `def` | [Terminates](declarations/terminates.md) | 136 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [not_terminates_iff](declarations/not-terminates-iff.md) | 140 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `def` | [omap](declarations/omap.md) | 146 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `def` | [head](declarations/head.md) | 152 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `def` | [tail](declarations/tail.md) | 157 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `def` | [Mem](declarations/mem.md) | 164 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `instance` | [(anonymous)](declarations/instance.md) | 168 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [le_stable](declarations/le-stable.md) | 171 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [terminated_stable](declarations/terminated-stable.md) | 178 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [ge_stable](declarations/ge-stable.md) | 185 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [not_mem_nil](declarations/not-mem-nil.md) | 192 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [mem_cons](declarations/mem-cons.md) | 195 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [mem_cons_of_mem](declarations/mem-cons-of-mem.md) | 199 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [eq_or_mem_of_mem_cons](declarations/eq-or-mem-of-mem-cons.md) | 203 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [mem_cons_iff](declarations/mem-cons-iff.md) | 208 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `def` | [destruct](declarations/destruct.md) | 214 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `theorem` | [destruct_eq_nil](declarations/destruct-eq-nil.md) | 218 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `theorem` | [destruct_eq_cons](declarations/destruct-eq-cons.md) | 228 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `theorem` | [destruct_nil](declarations/destruct-nil.md) | 243 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `theorem` | [destruct_cons](declarations/destruct-cons.md) | 248 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `theorem` | [head_eq_destruct](declarations/head-eq-destruct.md) | 256 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `theorem` | [head_nil](declarations/head-nil.md) | 261 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `theorem` | [head_cons](declarations/head-cons.md) | 266 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `theorem` | [tail_nil](declarations/tail-nil.md) | 271 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `theorem` | [tail_cons](declarations/tail-cons.md) | 276 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `theorem` | [get?_tail](declarations/get-tail.md) | 283 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `def` | [recOn](declarations/recon.md) | 288 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `theorem` | [mem_rec_on](declarations/mem-rec-on.md) | 298 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `def` | [Corec.f](declarations/corec-f.md) | 319 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `def` | [corec](declarations/corec.md) | 330 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `theorem` | [corec_eq](declarations/corec-eq.md) | 350 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `def` | [BisimO](declarations/bisimo.md) | 373 | `BLOCKED_NATIVE_ADMISSION` |
| 51 | `def` | [IsBisimulation](declarations/isbisimulation.md) | 382 | `BLOCKED_NATIVE_ADMISSION` |
| 52 | `theorem` | [eq_of_bisim](declarations/eq-of-bisim.md) | 387 | `BLOCKED_NATIVE_ADMISSION` |
| 53 | `theorem` | [coinduction](declarations/coinduction.md) | 421 | `BLOCKED_NATIVE_ADMISSION` |
| 54 | `theorem` | [coinduction2](declarations/coinduction2.md) | 429 | `BLOCKED_NATIVE_ADMISSION` |
| 55 | `def` | [ofList](declarations/oflist.md) | 442 | `BLOCKED_NATIVE_ADMISSION` |
| 56 | `instance` | [coeList](declarations/coelist.md) | 448 | `BLOCKED_NATIVE_ADMISSION` |
| 57 | `theorem` | [ofList_nil](declarations/oflist-nil.md) | 453 | `BLOCKED_NATIVE_ADMISSION` |
| 58 | `theorem` | [ofList_nth](declarations/oflist-nth.md) | 458 | `BLOCKED_NATIVE_ADMISSION` |
| 59 | `theorem` | [ofList_cons](declarations/oflist-cons.md) | 463 | `BLOCKED_NATIVE_ADMISSION` |
| 60 | `def` | [ofStream](declarations/ofstream.md) | 469 | `BLOCKED_NATIVE_ADMISSION` |
| 61 | `instance` | [coeStream](declarations/coestream.md) | 473 | `BLOCKED_NATIVE_ADMISSION` |
| 62 | `def` | [ofLazyList](declarations/oflazylist.md) | 480 | `BLOCKED_NATIVE_ADMISSION` |
| 63 | `instance` | [coeLazyList](declarations/coelazylist.md) | 487 | `BLOCKED_NATIVE_ADMISSION` |
| 64 | `def` | [toLazyList](declarations/tolazylist.md) | 493 | `BLOCKED_NATIVE_ADMISSION` |
| 65 | `def` | [forceToList](declarations/forcetolist.md) | 502 | `BLOCKED_NATIVE_ADMISSION` |
| 66 | `def` | [nats](declarations/nats.md) | 507 | `BLOCKED_NATIVE_ADMISSION` |
| 67 | `theorem` | [nats_get?](declarations/nats-get.md) | 512 | `BLOCKED_NATIVE_ADMISSION` |
| 68 | `def` | [append](declarations/append.md) | 518 | `BLOCKED_NATIVE_ADMISSION` |
| 69 | `def` | [map](declarations/map-source-edition-2.md) | 528 | `BLOCKED_NATIVE_ADMISSION` |
| 70 | `def` | [join](declarations/join.md) | 542 | `BLOCKED_NATIVE_ADMISSION` |
| 71 | `def` | [drop](declarations/drop.md) | 555 | `BLOCKED_NATIVE_ADMISSION` |
| 72 | `def` | [take](declarations/take.md) | 563 | `BLOCKED_NATIVE_ADMISSION` |
| 73 | `def` | [splitAt](declarations/splitat.md) | 573 | `BLOCKED_NATIVE_ADMISSION` |
| 74 | `def` | [zipWith](declarations/zipwith.md) | 586 | `BLOCKED_NATIVE_ADMISSION` |
| 75 | `theorem` | [get?_zipWith](declarations/get-zipwith.md) | 594 | `BLOCKED_NATIVE_ADMISSION` |
| 76 | `def` | [zip](declarations/zip.md) | 602 | `BLOCKED_NATIVE_ADMISSION` |
| 77 | `theorem` | [get?_zip](declarations/get-zip.md) | 606 | `BLOCKED_NATIVE_ADMISSION` |
| 78 | `def` | [unzip](declarations/unzip.md) | 612 | `BLOCKED_NATIVE_ADMISSION` |
| 79 | `def` | [enum](declarations/enum.md) | 617 | `BLOCKED_NATIVE_ADMISSION` |
| 80 | `theorem` | [get?_enum](declarations/get-enum.md) | 622 | `BLOCKED_NATIVE_ADMISSION` |
| 81 | `theorem` | [enum_nil](declarations/enum-nil.md) | 627 | `BLOCKED_NATIVE_ADMISSION` |
| 82 | `def` | [toList](declarations/tolist-source-edition-2.md) | 632 | `BLOCKED_NATIVE_ADMISSION` |
| 83 | `def` | [toStream](declarations/tostream.md) | 637 | `BLOCKED_NATIVE_ADMISSION` |
| 84 | `def` | [toListOrStream](declarations/tolistorstream.md) | 644 | `BLOCKED_NATIVE_ADMISSION` |
| 85 | `theorem` | [nil_append](declarations/nil-append.md) | 649 | `BLOCKED_NATIVE_ADMISSION` |
| 86 | `theorem` | [cons_append](declarations/cons-append.md) | 661 | `BLOCKED_NATIVE_ADMISSION` |
| 87 | `theorem` | [append_nil](declarations/append-nil.md) | 668 | `BLOCKED_NATIVE_ADMISSION` |
| 88 | `theorem` | [append_assoc](declarations/append-assoc.md) | 679 | `BLOCKED_NATIVE_ADMISSION` |
| 89 | `theorem` | [map_nil](declarations/map-nil.md) | 698 | `BLOCKED_NATIVE_ADMISSION` |
| 90 | `theorem` | [map_cons](declarations/map-cons.md) | 703 | `BLOCKED_NATIVE_ADMISSION` |
| 91 | `theorem` | [map_id](declarations/map-id-source-edition-2.md) | 708 | `BLOCKED_NATIVE_ADMISSION` |
| 92 | `theorem` | [map_tail](declarations/map-tail.md) | 715 | `BLOCKED_NATIVE_ADMISSION` |
| 93 | `theorem` | [map_comp](declarations/map-comp.md) | 719 | `BLOCKED_NATIVE_ADMISSION` |
| 94 | `theorem` | [map_append](declarations/map-append.md) | 727 | `BLOCKED_NATIVE_ADMISSION` |
| 95 | `theorem` | [map_get?](declarations/map-get.md) | 744 | `BLOCKED_NATIVE_ADMISSION` |
| 96 | `instance` | [(anonymous)](declarations/instance-source-edition-4.md) | 748 | `BLOCKED_NATIVE_ADMISSION` |
| 97 | `instance` | [(anonymous)](declarations/instance-source-edition-3.md) | 750 | `BLOCKED_NATIVE_ADMISSION` |
| 98 | `theorem` | [join_nil](declarations/join-nil-source-edition-2.md) | 756 | `BLOCKED_NATIVE_ADMISSION` |
| 99 | `theorem` | [join_cons_nil](declarations/join-cons-nil.md) | 761 | `BLOCKED_NATIVE_ADMISSION` |
| 100 | `theorem` | [join_cons_cons](declarations/join-cons-cons.md) | 766 | `BLOCKED_NATIVE_ADMISSION` |
| 101 | `theorem` | [join_cons](declarations/join-cons.md) | 772 | `BLOCKED_NATIVE_ADMISSION` |
| 102 | `theorem` | [join_append](declarations/join-append.md) | 794 | `BLOCKED_NATIVE_ADMISSION` |
| 103 | `theorem` | [ofStream_cons](declarations/ofstream-cons.md) | 818 | `BLOCKED_NATIVE_ADMISSION` |
| 104 | `theorem` | [ofList_append](declarations/oflist-append.md) | 823 | `BLOCKED_NATIVE_ADMISSION` |
| 105 | `theorem` | [ofStream_append](declarations/ofstream-append.md) | 828 | `BLOCKED_NATIVE_ADMISSION` |
| 106 | `def` | [toList'](declarations/tolist.md) | 836 | `BLOCKED_NATIVE_ADMISSION` |
| 107 | `theorem` | [dropn_add](declarations/dropn-add.md) | 845 | `BLOCKED_NATIVE_ADMISSION` |
| 108 | `theorem` | [dropn_tail](declarations/dropn-tail.md) | 850 | `BLOCKED_NATIVE_ADMISSION` |
| 109 | `theorem` | [head_dropn](declarations/head-dropn.md) | 855 | `BLOCKED_NATIVE_ADMISSION` |
| 110 | `theorem` | [mem_map](declarations/mem-map.md) | 860 | `BLOCKED_NATIVE_ADMISSION` |
| 111 | `theorem` | [exists_of_mem_map](declarations/exists-of-mem-map.md) | 864 | `BLOCKED_NATIVE_ADMISSION` |
| 112 | `theorem` | [of_mem_append](declarations/of-mem-append.md) | 873 | `BLOCKED_NATIVE_ADMISSION` |
| 113 | `theorem` | [mem_append_left](declarations/mem-append-left.md) | 893 | `BLOCKED_NATIVE_ADMISSION` |
| 114 | `theorem` | [enum_cons](declarations/enum-cons.md) | 898 | `BLOCKED_NATIVE_ADMISSION` |
| 115 | `def` | [toSeq](declarations/toseq.md) | 915 | `BLOCKED_NATIVE_ADMISSION` |
| 116 | `instance` | [coeSeq](declarations/coeseq.md) | 919 | `BLOCKED_NATIVE_ADMISSION` |
| 117 | `def` | [map](declarations/map.md) | 924 | `BLOCKED_NATIVE_ADMISSION` |
| 118 | `theorem` | [map_pair](declarations/map-pair.md) | 929 | `BLOCKED_NATIVE_ADMISSION` |
| 119 | `theorem` | [map_id](declarations/map-id.md) | 931 | `BLOCKED_NATIVE_ADMISSION` |
| 120 | `def` | [join](declarations/join-source-edition-2.md) | 936 | `BLOCKED_NATIVE_ADMISSION` |
| 121 | `theorem` | [join_nil](declarations/join-nil.md) | 944 | `BLOCKED_NATIVE_ADMISSION` |
| 122 | `theorem` | [join_cons](declarations/join-cons-source-edition-2.md) | 949 | `BLOCKED_NATIVE_ADMISSION` |
| 123 | `def` | [ret](declarations/ret.md) | 956 | `BLOCKED_NATIVE_ADMISSION` |
| 124 | `instance` | [(anonymous)](declarations/instance-source-edition-5.md) | 960 | `BLOCKED_NATIVE_ADMISSION` |
| 125 | `def` | [bind](declarations/bind.md) | 967 | `BLOCKED_NATIVE_ADMISSION` |
| 126 | `theorem` | [join_map_ret](declarations/join-map-ret.md) | 972 | `BLOCKED_NATIVE_ADMISSION` |
| 127 | `theorem` | [bind_ret](declarations/bind-ret.md) | 977 | `BLOCKED_NATIVE_ADMISSION` |
| 128 | `theorem` | [ret_bind](declarations/ret-bind.md) | 986 | `BLOCKED_NATIVE_ADMISSION` |
| 129 | `theorem` | [map_join'](declarations/map-join-source-edition-2.md) | 993 | `BLOCKED_NATIVE_ADMISSION` |
| 130 | `theorem` | [map_join](declarations/map-join.md) | 1013 | `BLOCKED_NATIVE_ADMISSION` |
| 131 | `theorem` | [join_join](declarations/join-join.md) | 1018 | `BLOCKED_NATIVE_ADMISSION` |
| 132 | `theorem` | [bind_assoc](declarations/bind-assoc.md) | 1042 | `BLOCKED_NATIVE_ADMISSION` |
| 133 | `instance` | [monad](declarations/monad.md) | 1060 | `BLOCKED_NATIVE_ADMISSION` |
| 134 | `instance` | [lawfulMonad](declarations/lawfulmonad.md) | 1066 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=f3e807fa880b4d7a8557ad73bd962c3803962fa4547dac003ea72594fb960926 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Seq/Variant29242684fd61ce4af008eca3979c6772d14231fbc68a4a02aba734e9a822069b.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
