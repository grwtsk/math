# Seq Val Eq Get

[Complete source index](../../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**197 observed declarations and anonymous commands**, 140 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Seq/Variant7bc5353e7098aab4a99afdfbc7e19a6dd134159b389e7e00c0e4f21a3110cbcb.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `831ef166fc2d6e9bf7e7ddd5eb9ab320850f4478`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../_verification/specifications/ComputerScience/TheoryOfData/DataStructures/SeqValEqGet.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [IsSeq](declarations/isseq.md) | 28 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `def` | [Seq](declarations/seq.md) | 34 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `def` | [Seq1](declarations/seq1.md) | 38 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `def` | [get?](declarations/get.md) | 46 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [val_eq_get](declarations/val-eq-get.md) | 50 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [get?_mk](declarations/get-mk.md) | 54 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [le_stable](declarations/le-stable.md) | 57 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [ge_stable](declarations/ge-stable.md) | 65 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [ext](declarations/ext.md) | 72 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `def` | [nil](declarations/nil.md) | 80 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `instance` | [(anonymous)](declarations/instance-source-edition-4.md) | 83 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `def` | [cons](declarations/cons.md) | 87 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [val_cons](declarations/val-cons.md) | 94 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [get?_nil](declarations/get-nil.md) | 98 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [get?_zero_eq_none](declarations/get-zero-eq-none.md) | 102 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [get?_cons_zero](declarations/get-cons-zero.md) | 108 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [get?_cons_succ](declarations/get-cons-succ.md) | 112 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [cons_ne_nil](declarations/cons-ne-nil.md) | 116 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [nil_ne_cons](declarations/nil-ne-cons.md) | 121 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [cons_injective2](declarations/cons-injective2.md) | 123 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [cons_left_injective](declarations/cons-left-injective.md) | 127 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [cons_right_injective](declarations/cons-right-injective.md) | 130 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [cons_eq_cons](declarations/cons-eq-cons.md) | 133 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `def` | [head](declarations/head.md) | 145 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `def` | [tail](declarations/tail.md) | 149 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `def` | [destruct](declarations/destruct.md) | 156 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [head_eq_destruct](declarations/head-eq-destruct.md) | 160 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [get?_tail](declarations/get-tail.md) | 164 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [destruct_nil](declarations/destruct-nil.md) | 168 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [destruct_cons](declarations/destruct-cons.md) | 172 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [destruct_eq_none](declarations/destruct-eq-none.md) | 178 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [destruct_eq_cons](declarations/destruct-eq-cons.md) | 187 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [head_nil](declarations/head-nil.md) | 201 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [head_cons](declarations/head-cons.md) | 205 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `theorem` | [tail_nil](declarations/tail-nil.md) | 209 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `theorem` | [tail_cons](declarations/tail-cons.md) | 213 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `theorem` | [head_eq_some](declarations/head-eq-some.md) | 218 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `theorem` | [head_eq_none](declarations/head-eq-none.md) | 224 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `theorem` | [head_eq_none_iff](declarations/head-eq-none-iff.md) | 228 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `def` | [recOn](declarations/recon.md) | 240 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `def` | [omap](declarations/omap.md) | 252 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `def` | [Corec.f](declarations/corec-f.md) | 257 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `def` | [corec](declarations/corec.md) | 266 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `theorem` | [corec_eq](declarations/corec-eq.md) | 285 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `theorem` | [corec_nil](declarations/corec-nil.md) | 298 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `theorem` | [corec_cons](declarations/corec-cons.md) | 303 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `def` | [BisimO](declarations/bisimo.md) | 319 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `def` | [IsBisimulation](declarations/isbisimulation.md) | 328 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `theorem` | [eq_of_bisim](declarations/eq-of-bisim.md) | 332 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `theorem` | [coinduction](declarations/coinduction.md) | 366 | `BLOCKED_NATIVE_ADMISSION` |
| 51 | `theorem` | [coinduction2](declarations/coinduction2.md) | 373 | `BLOCKED_NATIVE_ADMISSION` |
| 52 | `def` | [TerminatedAt](declarations/terminatedat.md) | 388 | `BLOCKED_NATIVE_ADMISSION` |
| 53 | `instance` | [terminatedAtDecidable](declarations/terminatedatdecidable.md) | 392 | `BLOCKED_NATIVE_ADMISSION` |
| 54 | `def` | [Terminates](declarations/terminates.md) | 396 | `BLOCKED_NATIVE_ADMISSION` |
| 55 | `def` | [length](declarations/length.md) | 400 | `BLOCKED_NATIVE_ADMISSION` |
| 56 | `theorem` | [terminated_stable](declarations/terminated-stable.md) | 404 | `BLOCKED_NATIVE_ADMISSION` |
| 57 | `theorem` | [not_terminates_iff](declarations/not-terminates-iff.md) | 407 | `BLOCKED_NATIVE_ADMISSION` |
| 58 | `theorem` | [terminatedAt_nil](declarations/terminatedat-nil.md) | 411 | `BLOCKED_NATIVE_ADMISSION` |
| 59 | `theorem` | [cons_not_terminatedAt_zero](declarations/cons-not-terminatedat-zero.md) | 414 | `BLOCKED_NATIVE_ADMISSION` |
| 60 | `theorem` | [cons_terminatedAt_succ_iff](declarations/cons-terminatedat-succ-iff.md) | 419 | `BLOCKED_NATIVE_ADMISSION` |
| 61 | `theorem` | [terminates_nil](declarations/terminates-nil.md) | 424 | `BLOCKED_NATIVE_ADMISSION` |
| 62 | `theorem` | [terminates_cons_iff](declarations/terminates-cons-iff.md) | 427 | `BLOCKED_NATIVE_ADMISSION` |
| 63 | `theorem` | [length_nil](declarations/length-nil.md) | 434 | `BLOCKED_NATIVE_ADMISSION` |
| 64 | `theorem` | [length_eq_zero](declarations/length-eq-zero.md) | 436 | `BLOCKED_NATIVE_ADMISSION` |
| 65 | `theorem` | [terminatedAt_zero_iff](declarations/terminatedat-zero-iff.md) | 440 | `BLOCKED_NATIVE_ADMISSION` |
| 66 | `theorem` | [length_le_iff'](declarations/length-le-iff.md) | 451 | `BLOCKED_NATIVE_ADMISSION` |
| 67 | `theorem` | [length_le_iff](declarations/length-le-iff-source-edition-2.md) | 462 | `BLOCKED_NATIVE_ADMISSION` |
| 68 | `theorem` | [lt_length_iff'](declarations/lt-length-iff-source-edition-2.md) | 468 | `BLOCKED_NATIVE_ADMISSION` |
| 69 | `theorem` | [lt_length_iff](declarations/lt-length-iff.md) | 480 | `BLOCKED_NATIVE_ADMISSION` |
| 70 | `def` | [Mem](declarations/mem.md) | 489 | `BLOCKED_NATIVE_ADMISSION` |
| 71 | `instance` | [(anonymous)](declarations/instance-source-edition-3.md) | 492 | `BLOCKED_NATIVE_ADMISSION` |
| 72 | `theorem` | [get?_mem](declarations/get-mem.md) | 496 | `BLOCKED_NATIVE_ADMISSION` |
| 73 | `theorem` | [notMem_nil](declarations/notmem-nil.md) | 498 | `BLOCKED_NATIVE_ADMISSION` |
| 74 | `theorem` | [mem_cons](declarations/mem-cons.md) | 502 | `BLOCKED_NATIVE_ADMISSION` |
| 75 | `theorem` | [mem_cons_of_mem](declarations/mem-cons-of-mem.md) | 505 | `BLOCKED_NATIVE_ADMISSION` |
| 76 | `theorem` | [eq_or_mem_of_mem_cons](declarations/eq-or-mem-of-mem-cons.md) | 508 | `BLOCKED_NATIVE_ADMISSION` |
| 77 | `theorem` | [mem_cons_iff](declarations/mem-cons-iff.md) | 512 | `BLOCKED_NATIVE_ADMISSION` |
| 78 | `theorem` | [mem_rec_on](declarations/mem-rec-on.md) | 515 | `BLOCKED_NATIVE_ADMISSION` |
| 79 | `def` | [ofList](declarations/oflist.md) | 539 | `BLOCKED_NATIVE_ADMISSION` |
| 80 | `instance` | [coeList](declarations/coelist.md) | 544 | `BLOCKED_NATIVE_ADMISSION` |
| 81 | `theorem` | [ofList_nil](declarations/oflist-nil.md) | 548 | `BLOCKED_NATIVE_ADMISSION` |
| 82 | `theorem` | [ofList_get?](declarations/oflist-get.md) | 552 | `BLOCKED_NATIVE_ADMISSION` |
| 83 | `theorem` | [ofList_cons](declarations/oflist-cons.md) | 559 | `BLOCKED_NATIVE_ADMISSION` |
| 84 | `theorem` | [ofList_injective](declarations/oflist-injective.md) | 562 | `BLOCKED_NATIVE_ADMISSION` |
| 85 | `def` | [ofStream](declarations/ofstream.md) | 567 | `BLOCKED_NATIVE_ADMISSION` |
| 86 | `instance` | [coeStream](declarations/coestream.md) | 570 | `BLOCKED_NATIVE_ADMISSION` |
| 87 | `def` | [ofMLList](declarations/ofmllist.md) | 578 | `BLOCKED_NATIVE_ADMISSION` |
| 88 | `instance` | [coeMLList](declarations/coemllist.md) | 584 | `BLOCKED_NATIVE_ADMISSION` |
| 89 | `def` | [toMLList](declarations/tomllist.md) | 588 | `BLOCKED_NATIVE_ADMISSION` |
| 90 | `def` | [forceToList](declarations/forcetolist.md) | 598 | `BLOCKED_NATIVE_ADMISSION` |
| 91 | `def` | [take](declarations/take.md) | 602 | `BLOCKED_NATIVE_ADMISSION` |
| 92 | `def` | [toList](declarations/tolist-source-edition-2.md) | 610 | `BLOCKED_NATIVE_ADMISSION` |
| 93 | `def` | [toStream](declarations/tostream.md) | 614 | `BLOCKED_NATIVE_ADMISSION` |
| 94 | `def` | [toListOrStream](declarations/tolistorstream.md) | 620 | `BLOCKED_NATIVE_ADMISSION` |
| 95 | `def` | [toList'](declarations/tolist.md) | 626 | `BLOCKED_NATIVE_ADMISSION` |
| 96 | `def` | [append](declarations/append.md) | 640 | `BLOCKED_NATIVE_ADMISSION` |
| 97 | `def` | [map](declarations/map-source-edition-2.md) | 649 | `BLOCKED_NATIVE_ADMISSION` |
| 98 | `def` | [join](declarations/join.md) | 662 | `BLOCKED_NATIVE_ADMISSION` |
| 99 | `def` | [drop](declarations/drop.md) | 674 | `BLOCKED_NATIVE_ADMISSION` |
| 100 | `def` | [splitAt](declarations/splitat.md) | 680 | `BLOCKED_NATIVE_ADMISSION` |
| 101 | `def` | [zipWith](declarations/zipwith.md) | 690 | `BLOCKED_NATIVE_ADMISSION` |
| 102 | `def` | [zip](declarations/zip.md) | 695 | `BLOCKED_NATIVE_ADMISSION` |
| 103 | `def` | [unzip](declarations/unzip.md) | 699 | `BLOCKED_NATIVE_ADMISSION` |
| 104 | `def` | [nats](declarations/nats.md) | 703 | `BLOCKED_NATIVE_ADMISSION` |
| 105 | `def` | [enum](declarations/enum.md) | 707 | `BLOCKED_NATIVE_ADMISSION` |
| 106 | `def` | [fold](declarations/fold.md) | 712 | `BLOCKED_NATIVE_ADMISSION` |
| 107 | `theorem` | [ofStream_cons](declarations/ofstream-cons.md) | 722 | `BLOCKED_NATIVE_ADMISSION` |
| 108 | `theorem` | [terminatedAt_ofList](declarations/terminatedat-oflist.md) | 729 | `BLOCKED_NATIVE_ADMISSION` |
| 109 | `theorem` | [terminates_ofList](declarations/terminates-oflist.md) | 733 | `BLOCKED_NATIVE_ADMISSION` |
| 110 | `theorem` | [take_nil](declarations/take-nil.md) | 741 | `BLOCKED_NATIVE_ADMISSION` |
| 111 | `theorem` | [take_zero](declarations/take-zero.md) | 745 | `BLOCKED_NATIVE_ADMISSION` |
| 112 | `theorem` | [take_succ_cons](declarations/take-succ-cons.md) | 749 | `BLOCKED_NATIVE_ADMISSION` |
| 113 | `theorem` | [getElem?_take](declarations/getelem-take.md) | 754 | `BLOCKED_NATIVE_ADMISSION` |
| 114 | `theorem` | [get?_mem_take](declarations/get-mem-take.md) | 771 | `BLOCKED_NATIVE_ADMISSION` |
| 115 | `theorem` | [length_take_le](declarations/length-take-le.md) | 791 | `BLOCKED_NATIVE_ADMISSION` |
| 116 | `theorem` | [length_take_of_le_length](declarations/length-take-of-le-length.md) | 802 | `BLOCKED_NATIVE_ADMISSION` |
| 117 | `theorem` | [length_toList](declarations/length-tolist.md) | 823 | `BLOCKED_NATIVE_ADMISSION` |
| 118 | `theorem` | [getElem?_toList](declarations/getelem-tolist.md) | 829 | `BLOCKED_NATIVE_ADMISSION` |
| 119 | `theorem` | [ofList_toList](declarations/oflist-tolist.md) | 838 | `BLOCKED_NATIVE_ADMISSION` |
| 120 | `theorem` | [toList_ofList](declarations/tolist-oflist.md) | 843 | `BLOCKED_NATIVE_ADMISSION` |
| 121 | `theorem` | [toList_nil](declarations/tolist-nil.md) | 847 | `BLOCKED_NATIVE_ADMISSION` |
| 122 | `theorem` | [getLast?_toList](declarations/getlast-tolist.md) | 850 | `BLOCKED_NATIVE_ADMISSION` |
| 123 | `theorem` | [cons_append](declarations/cons-append.md) | 859 | `BLOCKED_NATIVE_ADMISSION` |
| 124 | `theorem` | [nil_append](declarations/nil-append.md) | 865 | `BLOCKED_NATIVE_ADMISSION` |
| 125 | `theorem` | [append_nil](declarations/append-nil.md) | 876 | `BLOCKED_NATIVE_ADMISSION` |
| 126 | `theorem` | [append_assoc](declarations/append-assoc.md) | 885 | `BLOCKED_NATIVE_ADMISSION` |
| 127 | `theorem` | [of_mem_append](declarations/of-mem-append.md) | 901 | `BLOCKED_NATIVE_ADMISSION` |
| 128 | `theorem` | [mem_append_left](declarations/mem-append-left.md) | 922 | `BLOCKED_NATIVE_ADMISSION` |
| 129 | `theorem` | [ofList_append](declarations/oflist-append.md) | 926 | `BLOCKED_NATIVE_ADMISSION` |
| 130 | `theorem` | [ofStream_append](declarations/ofstream-append.md) | 930 | `BLOCKED_NATIVE_ADMISSION` |
| 131 | `theorem` | [map_get?](declarations/map-get.md) | 939 | `BLOCKED_NATIVE_ADMISSION` |
| 132 | `theorem` | [map_nil](declarations/map-nil.md) | 943 | `BLOCKED_NATIVE_ADMISSION` |
| 133 | `theorem` | [map_cons](declarations/map-cons.md) | 947 | `BLOCKED_NATIVE_ADMISSION` |
| 134 | `theorem` | [map_id](declarations/map-id.md) | 951 | `BLOCKED_NATIVE_ADMISSION` |
| 135 | `theorem` | [map_tail](declarations/map-tail.md) | 957 | `BLOCKED_NATIVE_ADMISSION` |
| 136 | `theorem` | [map_comp](declarations/map-comp.md) | 960 | `BLOCKED_NATIVE_ADMISSION` |
| 137 | `theorem` | [terminatedAt_map_iff](declarations/terminatedat-map-iff.md) | 967 | `BLOCKED_NATIVE_ADMISSION` |
| 138 | `theorem` | [terminates_map_iff](declarations/terminates-map-iff.md) | 972 | `BLOCKED_NATIVE_ADMISSION` |
| 139 | `theorem` | [length_map](declarations/length-map.md) | 977 | `BLOCKED_NATIVE_ADMISSION` |
| 140 | `theorem` | [mem_map](declarations/mem-map.md) | 984 | `BLOCKED_NATIVE_ADMISSION` |
| 141 | `theorem` | [exists_of_mem_map](declarations/exists-of-mem-map.md) | 987 | `BLOCKED_NATIVE_ADMISSION` |
| 142 | `theorem` | [map_append](declarations/map-append.md) | 996 | `BLOCKED_NATIVE_ADMISSION` |
| 143 | `theorem` | [join_nil](declarations/join-nil.md) | 1016 | `BLOCKED_NATIVE_ADMISSION` |
| 144 | `theorem` | [join_cons_nil](declarations/join-cons-nil.md) | 1020 | `BLOCKED_NATIVE_ADMISSION` |
| 145 | `theorem` | [join_cons_cons](declarations/join-cons-cons.md) | 1024 | `BLOCKED_NATIVE_ADMISSION` |
| 146 | `theorem` | [join_cons](declarations/join-cons-source-edition-2.md) | 1029 | `BLOCKED_NATIVE_ADMISSION` |
| 147 | `theorem` | [join_append](declarations/join-append.md) | 1047 | `BLOCKED_NATIVE_ADMISSION` |
| 148 | `theorem` | [drop_get?](declarations/drop-get.md) | 1075 | `BLOCKED_NATIVE_ADMISSION` |
| 149 | `theorem` | [dropn_add](declarations/dropn-add.md) | 1083 | `BLOCKED_NATIVE_ADMISSION` |
| 150 | `theorem` | [dropn_tail](declarations/dropn-tail.md) | 1087 | `BLOCKED_NATIVE_ADMISSION` |
| 151 | `theorem` | [head_dropn](declarations/head-dropn.md) | 1091 | `BLOCKED_NATIVE_ADMISSION` |
| 152 | `theorem` | [drop_succ_cons](declarations/drop-succ-cons.md) | 1096 | `BLOCKED_NATIVE_ADMISSION` |
| 153 | `theorem` | [drop_nil](declarations/drop-nil.md) | 1101 | `BLOCKED_NATIVE_ADMISSION` |
| 154 | `theorem` | [take_drop](declarations/take-drop.md) | 1106 | `BLOCKED_NATIVE_ADMISSION` |
| 155 | `theorem` | [get?_zipWith](declarations/get-zipwith.md) | 1126 | `BLOCKED_NATIVE_ADMISSION` |
| 156 | `theorem` | [get?_zip](declarations/get-zip.md) | 1131 | `BLOCKED_NATIVE_ADMISSION` |
| 157 | `theorem` | [nats_get?](declarations/nats-get.md) | 1136 | `BLOCKED_NATIVE_ADMISSION` |
| 158 | `theorem` | [get?_enum](declarations/get-enum.md) | 1140 | `BLOCKED_NATIVE_ADMISSION` |
| 159 | `theorem` | [zipWith_nil_left](declarations/zipwith-nil-left.md) | 1144 | `BLOCKED_NATIVE_ADMISSION` |
| 160 | `theorem` | [zipWith_nil_right](declarations/zipwith-nil-right.md) | 1149 | `BLOCKED_NATIVE_ADMISSION` |
| 161 | `theorem` | [zipWith_cons_cons](declarations/zipwith-cons-cons.md) | 1155 | `BLOCKED_NATIVE_ADMISSION` |
| 162 | `theorem` | [zip_nil_left](declarations/zip-nil-left.md) | 1161 | `BLOCKED_NATIVE_ADMISSION` |
| 163 | `theorem` | [zip_nil_right](declarations/zip-nil-right.md) | 1166 | `BLOCKED_NATIVE_ADMISSION` |
| 164 | `theorem` | [zip_cons_cons](declarations/zip-cons-cons.md) | 1171 | `BLOCKED_NATIVE_ADMISSION` |
| 165 | `theorem` | [enum_nil](declarations/enum-nil.md) | 1176 | `BLOCKED_NATIVE_ADMISSION` |
| 166 | `theorem` | [enum_cons](declarations/enum-cons.md) | 1180 | `BLOCKED_NATIVE_ADMISSION` |
| 167 | `theorem` | [zipWith_map](declarations/zipwith-map.md) | 1190 | `BLOCKED_NATIVE_ADMISSION` |
| 168 | `theorem` | [zipWith_map_left](declarations/zipwith-map-left.md) | 1196 | `BLOCKED_NATIVE_ADMISSION` |
| 169 | `theorem` | [zipWith_map_right](declarations/zipwith-map-right.md) | 1201 | `BLOCKED_NATIVE_ADMISSION` |
| 170 | `theorem` | [zip_map](declarations/zip-map.md) | 1206 | `BLOCKED_NATIVE_ADMISSION` |
| 171 | `theorem` | [zip_map_left](declarations/zip-map-left.md) | 1212 | `BLOCKED_NATIVE_ADMISSION` |
| 172 | `theorem` | [zip_map_right](declarations/zip-map-right.md) | 1217 | `BLOCKED_NATIVE_ADMISSION` |
| 173 | `theorem` | [fold_nil](declarations/fold-nil.md) | 1227 | `BLOCKED_NATIVE_ADMISSION` |
| 174 | `theorem` | [fold_cons](declarations/fold-cons.md) | 1233 | `BLOCKED_NATIVE_ADMISSION` |
| 175 | `theorem` | [fold_head](declarations/fold-head.md) | 1242 | `BLOCKED_NATIVE_ADMISSION` |
| 176 | `instance` | [(anonymous)](declarations/instance-source-edition-5.md) | 1248 | `BLOCKED_NATIVE_ADMISSION` |
| 177 | `instance` | [(anonymous)](declarations/instance.md) | 1250 | `BLOCKED_NATIVE_ADMISSION` |
| 178 | `def` | [toSeq](declarations/toseq.md) | 1264 | `BLOCKED_NATIVE_ADMISSION` |
| 179 | `instance` | [coeSeq](declarations/coeseq.md) | 1267 | `BLOCKED_NATIVE_ADMISSION` |
| 180 | `def` | [map](declarations/map.md) | 1271 | `BLOCKED_NATIVE_ADMISSION` |
| 181 | `theorem` | [map_pair](declarations/map-pair.md) | 1274 | `BLOCKED_NATIVE_ADMISSION` |
| 182 | `theorem` | [map_id](declarations/map-id-source-edition-2.md) | 1276 | `BLOCKED_NATIVE_ADMISSION` |
| 183 | `def` | [join](declarations/join-source-edition-2.md) | 1280 | `BLOCKED_NATIVE_ADMISSION` |
| 184 | `theorem` | [join_nil](declarations/join-nil-source-edition-2.md) | 1287 | `BLOCKED_NATIVE_ADMISSION` |
| 185 | `theorem` | [join_cons](declarations/join-cons.md) | 1291 | `BLOCKED_NATIVE_ADMISSION` |
| 186 | `def` | [ret](declarations/ret.md) | 1297 | `BLOCKED_NATIVE_ADMISSION` |
| 187 | `instance` | [(anonymous)](declarations/instance-source-edition-2.md) | 1300 | `BLOCKED_NATIVE_ADMISSION` |
| 188 | `def` | [bind](declarations/bind.md) | 1307 | `BLOCKED_NATIVE_ADMISSION` |
| 189 | `theorem` | [join_map_ret](declarations/join-map-ret.md) | 1311 | `BLOCKED_NATIVE_ADMISSION` |
| 190 | `theorem` | [bind_ret](declarations/bind-ret.md) | 1315 | `BLOCKED_NATIVE_ADMISSION` |
| 191 | `theorem` | [ret_bind](declarations/ret-bind.md) | 1319 | `BLOCKED_NATIVE_ADMISSION` |
| 192 | `theorem` | [map_join'](declarations/map-join.md) | 1325 | `BLOCKED_NATIVE_ADMISSION` |
| 193 | `theorem` | [map_join](declarations/map-join-source-edition-2.md) | 1344 | `BLOCKED_NATIVE_ADMISSION` |
| 194 | `theorem` | [join_join](declarations/join-join.md) | 1348 | `BLOCKED_NATIVE_ADMISSION` |
| 195 | `theorem` | [bind_assoc](declarations/bind-assoc.md) | 1371 | `BLOCKED_NATIVE_ADMISSION` |
| 196 | `instance` | [monad](declarations/monad.md) | 1385 | `BLOCKED_NATIVE_ADMISSION` |
| 197 | `instance` | [lawfulMonad](declarations/lawfulmonad.md) | 1390 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=2afa3b8159efe6da607f1e935e0f0e1aa59bb98e11eb9f3e5543e9a31cd4ffa3 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Seq/Variant7bc5353e7098aab4a99afdfbc7e19a6dd134159b389e7e00c0e4f21a3110cbcb.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
