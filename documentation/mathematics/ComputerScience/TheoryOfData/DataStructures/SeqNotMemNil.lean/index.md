# Seq Not Mem Nil

[Complete source index](../../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**134 observed declarations and anonymous commands**, 79 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Seq/Variant1efeb7ab4c211cf7c48eb49706462c6ae71d910e438b7c445080c482f252cc74.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `9b9cade0f229dd73bcbb574a33aab9610a9fbd6e`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../_verification/specifications/ComputerScience/TheoryOfData/DataStructures/SeqNotMemNil.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [IsSeq](declarations/isseq.md) | 33 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `def` | [Seq](declarations/seq.md) | 40 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `def` | [Seq1](declarations/seq1.md) | 45 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `def` | [nil](declarations/nil.md) | 54 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `instance` | [(anonymous)](declarations/instance-source-edition-5.md) | 58 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `def` | [cons](declarations/cons.md) | 62 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [val_cons](declarations/val-cons.md) | 70 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `def` | [get?](declarations/get.md) | 75 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [get?_mk](declarations/get-mk.md) | 80 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [get?_nil](declarations/get-nil.md) | 85 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [get?_cons_zero](declarations/get-cons-zero.md) | 90 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [get?_cons_succ](declarations/get-cons-succ.md) | 95 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [ext](declarations/ext.md) | 100 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [cons_injective2](declarations/cons-injective2.md) | 104 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [cons_left_injective](declarations/cons-left-injective.md) | 109 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [cons_right_injective](declarations/cons-right-injective.md) | 113 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `def` | [TerminatedAt](declarations/terminatedat.md) | 118 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `instance` | [terminatedAtDecidable](declarations/terminatedatdecidable.md) | 123 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `def` | [Terminates](declarations/terminates.md) | 128 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [not_terminates_iff](declarations/not-terminates-iff.md) | 132 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `def` | [omap](declarations/omap.md) | 138 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `def` | [head](declarations/head.md) | 144 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `def` | [tail](declarations/tail.md) | 149 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `def` | [Mem](declarations/mem.md) | 156 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `instance` | [(anonymous)](declarations/instance-source-edition-3.md) | 160 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [le_stable](declarations/le-stable.md) | 163 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [terminated_stable](declarations/terminated-stable.md) | 170 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [ge_stable](declarations/ge-stable.md) | 177 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [not_mem_nil](declarations/not-mem-nil.md) | 184 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [mem_cons](declarations/mem-cons.md) | 187 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [mem_cons_of_mem](declarations/mem-cons-of-mem.md) | 191 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [eq_or_mem_of_mem_cons](declarations/eq-or-mem-of-mem-cons.md) | 195 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [mem_cons_iff](declarations/mem-cons-iff.md) | 200 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `def` | [destruct](declarations/destruct.md) | 206 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `theorem` | [destruct_eq_nil](declarations/destruct-eq-nil.md) | 210 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `theorem` | [destruct_eq_cons](declarations/destruct-eq-cons.md) | 220 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `theorem` | [destruct_nil](declarations/destruct-nil.md) | 235 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `theorem` | [destruct_cons](declarations/destruct-cons.md) | 240 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `theorem` | [head_eq_destruct](declarations/head-eq-destruct.md) | 248 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `theorem` | [head_nil](declarations/head-nil.md) | 253 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `theorem` | [head_cons](declarations/head-cons.md) | 258 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `theorem` | [tail_nil](declarations/tail-nil.md) | 263 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `theorem` | [tail_cons](declarations/tail-cons.md) | 268 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `theorem` | [get?_tail](declarations/get-tail.md) | 275 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `def` | [recOn](declarations/recon.md) | 280 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `theorem` | [mem_rec_on](declarations/mem-rec-on.md) | 290 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `def` | [Corec.f](declarations/corec-f.md) | 311 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `def` | [corec](declarations/corec.md) | 322 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `theorem` | [corec_eq](declarations/corec-eq.md) | 342 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `def` | [BisimO](declarations/bisimo.md) | 365 | `BLOCKED_NATIVE_ADMISSION` |
| 51 | `def` | [IsBisimulation](declarations/isbisimulation.md) | 374 | `BLOCKED_NATIVE_ADMISSION` |
| 52 | `theorem` | [eq_of_bisim](declarations/eq-of-bisim.md) | 379 | `BLOCKED_NATIVE_ADMISSION` |
| 53 | `theorem` | [coinduction](declarations/coinduction.md) | 413 | `BLOCKED_NATIVE_ADMISSION` |
| 54 | `theorem` | [coinduction2](declarations/coinduction2.md) | 421 | `BLOCKED_NATIVE_ADMISSION` |
| 55 | `def` | [ofList](declarations/oflist.md) | 434 | `BLOCKED_NATIVE_ADMISSION` |
| 56 | `instance` | [coeList](declarations/coelist.md) | 440 | `BLOCKED_NATIVE_ADMISSION` |
| 57 | `theorem` | [ofList_nil](declarations/oflist-nil.md) | 445 | `BLOCKED_NATIVE_ADMISSION` |
| 58 | `theorem` | [ofList_nth](declarations/oflist-nth.md) | 450 | `BLOCKED_NATIVE_ADMISSION` |
| 59 | `theorem` | [ofList_cons](declarations/oflist-cons.md) | 455 | `BLOCKED_NATIVE_ADMISSION` |
| 60 | `def` | [ofStream](declarations/ofstream.md) | 461 | `BLOCKED_NATIVE_ADMISSION` |
| 61 | `instance` | [coeStream](declarations/coestream.md) | 465 | `BLOCKED_NATIVE_ADMISSION` |
| 62 | `def` | [ofLazyList](declarations/oflazylist.md) | 472 | `BLOCKED_NATIVE_ADMISSION` |
| 63 | `instance` | [coeLazyList](declarations/coelazylist.md) | 479 | `BLOCKED_NATIVE_ADMISSION` |
| 64 | `def` | [toLazyList](declarations/tolazylist.md) | 485 | `BLOCKED_NATIVE_ADMISSION` |
| 65 | `def` | [forceToList](declarations/forcetolist.md) | 494 | `BLOCKED_NATIVE_ADMISSION` |
| 66 | `def` | [nats](declarations/nats.md) | 499 | `BLOCKED_NATIVE_ADMISSION` |
| 67 | `theorem` | [nats_get?](declarations/nats-get.md) | 504 | `BLOCKED_NATIVE_ADMISSION` |
| 68 | `def` | [append](declarations/append.md) | 510 | `BLOCKED_NATIVE_ADMISSION` |
| 69 | `def` | [map](declarations/map.md) | 520 | `BLOCKED_NATIVE_ADMISSION` |
| 70 | `def` | [join](declarations/join-source-edition-2.md) | 534 | `BLOCKED_NATIVE_ADMISSION` |
| 71 | `def` | [drop](declarations/drop.md) | 547 | `BLOCKED_NATIVE_ADMISSION` |
| 72 | `def` | [take](declarations/take.md) | 555 | `BLOCKED_NATIVE_ADMISSION` |
| 73 | `def` | [splitAt](declarations/splitat.md) | 565 | `BLOCKED_NATIVE_ADMISSION` |
| 74 | `def` | [zipWith](declarations/zipwith.md) | 578 | `BLOCKED_NATIVE_ADMISSION` |
| 75 | `theorem` | [get?_zipWith](declarations/get-zipwith.md) | 586 | `BLOCKED_NATIVE_ADMISSION` |
| 76 | `def` | [zip](declarations/zip.md) | 594 | `BLOCKED_NATIVE_ADMISSION` |
| 77 | `theorem` | [get?_zip](declarations/get-zip.md) | 598 | `BLOCKED_NATIVE_ADMISSION` |
| 78 | `def` | [unzip](declarations/unzip.md) | 604 | `BLOCKED_NATIVE_ADMISSION` |
| 79 | `def` | [enum](declarations/enum.md) | 609 | `BLOCKED_NATIVE_ADMISSION` |
| 80 | `theorem` | [get?_enum](declarations/get-enum.md) | 614 | `BLOCKED_NATIVE_ADMISSION` |
| 81 | `theorem` | [enum_nil](declarations/enum-nil.md) | 619 | `BLOCKED_NATIVE_ADMISSION` |
| 82 | `def` | [toList](declarations/tolist.md) | 624 | `BLOCKED_NATIVE_ADMISSION` |
| 83 | `def` | [toStream](declarations/tostream.md) | 629 | `BLOCKED_NATIVE_ADMISSION` |
| 84 | `def` | [toListOrStream](declarations/tolistorstream.md) | 636 | `BLOCKED_NATIVE_ADMISSION` |
| 85 | `theorem` | [nil_append](declarations/nil-append.md) | 641 | `BLOCKED_NATIVE_ADMISSION` |
| 86 | `theorem` | [cons_append](declarations/cons-append.md) | 653 | `BLOCKED_NATIVE_ADMISSION` |
| 87 | `theorem` | [append_nil](declarations/append-nil.md) | 660 | `BLOCKED_NATIVE_ADMISSION` |
| 88 | `theorem` | [append_assoc](declarations/append-assoc.md) | 671 | `BLOCKED_NATIVE_ADMISSION` |
| 89 | `theorem` | [map_nil](declarations/map-nil.md) | 690 | `BLOCKED_NATIVE_ADMISSION` |
| 90 | `theorem` | [map_cons](declarations/map-cons.md) | 695 | `BLOCKED_NATIVE_ADMISSION` |
| 91 | `theorem` | [map_id](declarations/map-id-source-edition-2.md) | 700 | `BLOCKED_NATIVE_ADMISSION` |
| 92 | `theorem` | [map_tail](declarations/map-tail.md) | 707 | `BLOCKED_NATIVE_ADMISSION` |
| 93 | `theorem` | [map_comp](declarations/map-comp.md) | 711 | `BLOCKED_NATIVE_ADMISSION` |
| 94 | `theorem` | [map_append](declarations/map-append.md) | 719 | `BLOCKED_NATIVE_ADMISSION` |
| 95 | `theorem` | [map_get?](declarations/map-get.md) | 736 | `BLOCKED_NATIVE_ADMISSION` |
| 96 | `instance` | [(anonymous)](declarations/instance-source-edition-2.md) | 740 | `BLOCKED_NATIVE_ADMISSION` |
| 97 | `instance` | [(anonymous)](declarations/instance-source-edition-4.md) | 742 | `BLOCKED_NATIVE_ADMISSION` |
| 98 | `theorem` | [join_nil](declarations/join-nil.md) | 748 | `BLOCKED_NATIVE_ADMISSION` |
| 99 | `theorem` | [join_cons_nil](declarations/join-cons-nil.md) | 753 | `BLOCKED_NATIVE_ADMISSION` |
| 100 | `theorem` | [join_cons_cons](declarations/join-cons-cons.md) | 758 | `BLOCKED_NATIVE_ADMISSION` |
| 101 | `theorem` | [join_cons](declarations/join-cons.md) | 764 | `BLOCKED_NATIVE_ADMISSION` |
| 102 | `theorem` | [join_append](declarations/join-append.md) | 786 | `BLOCKED_NATIVE_ADMISSION` |
| 103 | `theorem` | [ofStream_cons](declarations/ofstream-cons.md) | 810 | `BLOCKED_NATIVE_ADMISSION` |
| 104 | `theorem` | [ofList_append](declarations/oflist-append.md) | 815 | `BLOCKED_NATIVE_ADMISSION` |
| 105 | `theorem` | [ofStream_append](declarations/ofstream-append.md) | 820 | `BLOCKED_NATIVE_ADMISSION` |
| 106 | `def` | [toList'](declarations/tolist-source-edition-2.md) | 828 | `BLOCKED_NATIVE_ADMISSION` |
| 107 | `theorem` | [dropn_add](declarations/dropn-add.md) | 837 | `BLOCKED_NATIVE_ADMISSION` |
| 108 | `theorem` | [dropn_tail](declarations/dropn-tail.md) | 842 | `BLOCKED_NATIVE_ADMISSION` |
| 109 | `theorem` | [head_dropn](declarations/head-dropn.md) | 847 | `BLOCKED_NATIVE_ADMISSION` |
| 110 | `theorem` | [mem_map](declarations/mem-map.md) | 852 | `BLOCKED_NATIVE_ADMISSION` |
| 111 | `theorem` | [exists_of_mem_map](declarations/exists-of-mem-map.md) | 856 | `BLOCKED_NATIVE_ADMISSION` |
| 112 | `theorem` | [of_mem_append](declarations/of-mem-append.md) | 865 | `BLOCKED_NATIVE_ADMISSION` |
| 113 | `theorem` | [mem_append_left](declarations/mem-append-left.md) | 885 | `BLOCKED_NATIVE_ADMISSION` |
| 114 | `theorem` | [enum_cons](declarations/enum-cons.md) | 890 | `BLOCKED_NATIVE_ADMISSION` |
| 115 | `def` | [toSeq](declarations/toseq.md) | 907 | `BLOCKED_NATIVE_ADMISSION` |
| 116 | `instance` | [coeSeq](declarations/coeseq.md) | 911 | `BLOCKED_NATIVE_ADMISSION` |
| 117 | `def` | [map](declarations/map-source-edition-2.md) | 916 | `BLOCKED_NATIVE_ADMISSION` |
| 118 | `theorem` | [map_pair](declarations/map-pair.md) | 921 | `BLOCKED_NATIVE_ADMISSION` |
| 119 | `theorem` | [map_id](declarations/map-id.md) | 923 | `BLOCKED_NATIVE_ADMISSION` |
| 120 | `def` | [join](declarations/join.md) | 928 | `BLOCKED_NATIVE_ADMISSION` |
| 121 | `theorem` | [join_nil](declarations/join-nil-source-edition-2.md) | 936 | `BLOCKED_NATIVE_ADMISSION` |
| 122 | `theorem` | [join_cons](declarations/join-cons-source-edition-2.md) | 941 | `BLOCKED_NATIVE_ADMISSION` |
| 123 | `def` | [ret](declarations/ret.md) | 948 | `BLOCKED_NATIVE_ADMISSION` |
| 124 | `instance` | [(anonymous)](declarations/instance.md) | 952 | `BLOCKED_NATIVE_ADMISSION` |
| 125 | `def` | [bind](declarations/bind.md) | 959 | `BLOCKED_NATIVE_ADMISSION` |
| 126 | `theorem` | [join_map_ret](declarations/join-map-ret.md) | 964 | `BLOCKED_NATIVE_ADMISSION` |
| 127 | `theorem` | [bind_ret](declarations/bind-ret.md) | 969 | `BLOCKED_NATIVE_ADMISSION` |
| 128 | `theorem` | [ret_bind](declarations/ret-bind.md) | 978 | `BLOCKED_NATIVE_ADMISSION` |
| 129 | `theorem` | [map_join'](declarations/map-join-source-edition-2.md) | 985 | `BLOCKED_NATIVE_ADMISSION` |
| 130 | `theorem` | [map_join](declarations/map-join.md) | 1005 | `BLOCKED_NATIVE_ADMISSION` |
| 131 | `theorem` | [join_join](declarations/join-join.md) | 1010 | `BLOCKED_NATIVE_ADMISSION` |
| 132 | `theorem` | [bind_assoc](declarations/bind-assoc.md) | 1034 | `BLOCKED_NATIVE_ADMISSION` |
| 133 | `instance` | [monad](declarations/monad.md) | 1052 | `BLOCKED_NATIVE_ADMISSION` |
| 134 | `instance` | [lawfulMonad](declarations/lawfulmonad.md) | 1058 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=e84795f3307bb4ca71e57e615956947e7628a488f1e9f8011543157e4187ece3 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Seq/Variant1efeb7ab4c211cf7c48eb49706462c6ae71d910e438b7c445080c482f252cc74.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
