# Seq Namespaced Val Eq Get

[Complete source index](../../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**197 observed declarations and anonymous commands**, 140 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Seq/Variant018d404b8967dbd77adfb784d7b847949e7a8c92b58c8d0a97dd92a845a72365.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `8b1e72a24fa2f1b522335a16cdfc004e7559bad4`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../_verification/specifications/ComputerScience/TheoryOfData/DataStructures/SeqNamespacedValEqGet.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [IsSeq](declarations/isseq.md) | 36 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `def` | [Seq](declarations/seq.md) | 42 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `def` | [Seq1](declarations/seq1.md) | 46 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `def` | [get?](declarations/get.md) | 54 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [val_eq_get](declarations/val-eq-get.md) | 58 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [get?_mk](declarations/get-mk.md) | 62 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [le_stable](declarations/le-stable.md) | 65 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [ge_stable](declarations/ge-stable.md) | 73 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [ext](declarations/ext.md) | 80 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `def` | [nil](declarations/nil.md) | 88 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `instance` | [(anonymous)](declarations/instance-source-edition-4.md) | 91 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `def` | [cons](declarations/cons.md) | 95 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [val_cons](declarations/val-cons.md) | 102 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [get?_nil](declarations/get-nil.md) | 106 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [get?_zero_eq_none](declarations/get-zero-eq-none.md) | 110 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [get?_cons_zero](declarations/get-cons-zero.md) | 116 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [get?_cons_succ](declarations/get-cons-succ.md) | 120 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [cons_ne_nil](declarations/cons-ne-nil.md) | 124 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [nil_ne_cons](declarations/nil-ne-cons.md) | 129 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [cons_injective2](declarations/cons-injective2.md) | 131 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [cons_left_injective](declarations/cons-left-injective.md) | 135 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [cons_right_injective](declarations/cons-right-injective.md) | 138 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [cons_eq_cons](declarations/cons-eq-cons.md) | 141 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `def` | [head](declarations/head.md) | 153 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `def` | [tail](declarations/tail.md) | 157 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `def` | [destruct](declarations/destruct.md) | 164 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [head_eq_destruct](declarations/head-eq-destruct.md) | 168 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [get?_tail](declarations/get-tail.md) | 172 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [destruct_nil](declarations/destruct-nil.md) | 176 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [destruct_cons](declarations/destruct-cons.md) | 180 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [destruct_eq_none](declarations/destruct-eq-none.md) | 186 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [destruct_eq_cons](declarations/destruct-eq-cons.md) | 195 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [head_nil](declarations/head-nil.md) | 209 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [head_cons](declarations/head-cons.md) | 213 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `theorem` | [tail_nil](declarations/tail-nil.md) | 217 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `theorem` | [tail_cons](declarations/tail-cons.md) | 221 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `theorem` | [head_eq_some](declarations/head-eq-some.md) | 226 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `theorem` | [head_eq_none](declarations/head-eq-none.md) | 232 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `theorem` | [head_eq_none_iff](declarations/head-eq-none-iff.md) | 236 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `def` | [recOn](declarations/recon.md) | 248 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `def` | [omap](declarations/omap.md) | 260 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `def` | [Corec.f](declarations/corec-f.md) | 265 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `def` | [corec](declarations/corec.md) | 274 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `theorem` | [corec_eq](declarations/corec-eq.md) | 293 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `theorem` | [corec_nil](declarations/corec-nil.md) | 306 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `theorem` | [corec_cons](declarations/corec-cons.md) | 311 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `def` | [BisimO](declarations/bisimo.md) | 327 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `def` | [IsBisimulation](declarations/isbisimulation.md) | 336 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `theorem` | [eq_of_bisim](declarations/eq-of-bisim.md) | 340 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `theorem` | [coinduction](declarations/coinduction.md) | 374 | `BLOCKED_NATIVE_ADMISSION` |
| 51 | `theorem` | [coinduction2](declarations/coinduction2.md) | 381 | `BLOCKED_NATIVE_ADMISSION` |
| 52 | `def` | [TerminatedAt](declarations/terminatedat.md) | 396 | `BLOCKED_NATIVE_ADMISSION` |
| 53 | `instance` | [terminatedAtDecidable](declarations/terminatedatdecidable.md) | 400 | `BLOCKED_NATIVE_ADMISSION` |
| 54 | `def` | [Terminates](declarations/terminates.md) | 404 | `BLOCKED_NATIVE_ADMISSION` |
| 55 | `def` | [length](declarations/length.md) | 408 | `BLOCKED_NATIVE_ADMISSION` |
| 56 | `theorem` | [terminated_stable](declarations/terminated-stable.md) | 412 | `BLOCKED_NATIVE_ADMISSION` |
| 57 | `theorem` | [not_terminates_iff](declarations/not-terminates-iff.md) | 415 | `BLOCKED_NATIVE_ADMISSION` |
| 58 | `theorem` | [terminatedAt_nil](declarations/terminatedat-nil.md) | 419 | `BLOCKED_NATIVE_ADMISSION` |
| 59 | `theorem` | [cons_not_terminatedAt_zero](declarations/cons-not-terminatedat-zero.md) | 422 | `BLOCKED_NATIVE_ADMISSION` |
| 60 | `theorem` | [cons_terminatedAt_succ_iff](declarations/cons-terminatedat-succ-iff.md) | 427 | `BLOCKED_NATIVE_ADMISSION` |
| 61 | `theorem` | [terminates_nil](declarations/terminates-nil.md) | 432 | `BLOCKED_NATIVE_ADMISSION` |
| 62 | `theorem` | [terminates_cons_iff](declarations/terminates-cons-iff.md) | 435 | `BLOCKED_NATIVE_ADMISSION` |
| 63 | `theorem` | [length_nil](declarations/length-nil.md) | 442 | `BLOCKED_NATIVE_ADMISSION` |
| 64 | `theorem` | [length_eq_zero](declarations/length-eq-zero.md) | 444 | `BLOCKED_NATIVE_ADMISSION` |
| 65 | `theorem` | [terminatedAt_zero_iff](declarations/terminatedat-zero-iff.md) | 448 | `BLOCKED_NATIVE_ADMISSION` |
| 66 | `theorem` | [length_le_iff'](declarations/length-le-iff.md) | 459 | `BLOCKED_NATIVE_ADMISSION` |
| 67 | `theorem` | [length_le_iff](declarations/length-le-iff-source-edition-2.md) | 470 | `BLOCKED_NATIVE_ADMISSION` |
| 68 | `theorem` | [lt_length_iff'](declarations/lt-length-iff.md) | 476 | `BLOCKED_NATIVE_ADMISSION` |
| 69 | `theorem` | [lt_length_iff](declarations/lt-length-iff-source-edition-2.md) | 488 | `BLOCKED_NATIVE_ADMISSION` |
| 70 | `def` | [Mem](declarations/mem.md) | 497 | `BLOCKED_NATIVE_ADMISSION` |
| 71 | `instance` | [(anonymous)](declarations/instance-source-edition-5.md) | 500 | `BLOCKED_NATIVE_ADMISSION` |
| 72 | `theorem` | [get?_mem](declarations/get-mem.md) | 504 | `BLOCKED_NATIVE_ADMISSION` |
| 73 | `theorem` | [notMem_nil](declarations/notmem-nil.md) | 506 | `BLOCKED_NATIVE_ADMISSION` |
| 74 | `theorem` | [mem_cons](declarations/mem-cons.md) | 510 | `BLOCKED_NATIVE_ADMISSION` |
| 75 | `theorem` | [mem_cons_of_mem](declarations/mem-cons-of-mem.md) | 513 | `BLOCKED_NATIVE_ADMISSION` |
| 76 | `theorem` | [eq_or_mem_of_mem_cons](declarations/eq-or-mem-of-mem-cons.md) | 516 | `BLOCKED_NATIVE_ADMISSION` |
| 77 | `theorem` | [mem_cons_iff](declarations/mem-cons-iff.md) | 520 | `BLOCKED_NATIVE_ADMISSION` |
| 78 | `theorem` | [mem_rec_on](declarations/mem-rec-on.md) | 523 | `BLOCKED_NATIVE_ADMISSION` |
| 79 | `def` | [ofList](declarations/oflist.md) | 547 | `BLOCKED_NATIVE_ADMISSION` |
| 80 | `instance` | [coeList](declarations/coelist.md) | 552 | `BLOCKED_NATIVE_ADMISSION` |
| 81 | `theorem` | [ofList_nil](declarations/oflist-nil.md) | 556 | `BLOCKED_NATIVE_ADMISSION` |
| 82 | `theorem` | [ofList_get?](declarations/oflist-get.md) | 560 | `BLOCKED_NATIVE_ADMISSION` |
| 83 | `theorem` | [ofList_cons](declarations/oflist-cons.md) | 567 | `BLOCKED_NATIVE_ADMISSION` |
| 84 | `theorem` | [ofList_injective](declarations/oflist-injective.md) | 570 | `BLOCKED_NATIVE_ADMISSION` |
| 85 | `def` | [ofStream](declarations/ofstream.md) | 575 | `BLOCKED_NATIVE_ADMISSION` |
| 86 | `instance` | [coeStream](declarations/coestream.md) | 578 | `BLOCKED_NATIVE_ADMISSION` |
| 87 | `def` | [ofMLList](declarations/ofmllist.md) | 586 | `BLOCKED_NATIVE_ADMISSION` |
| 88 | `instance` | [coeMLList](declarations/coemllist.md) | 592 | `BLOCKED_NATIVE_ADMISSION` |
| 89 | `def` | [toMLList](declarations/tomllist.md) | 596 | `BLOCKED_NATIVE_ADMISSION` |
| 90 | `def` | [forceToList](declarations/forcetolist.md) | 606 | `BLOCKED_NATIVE_ADMISSION` |
| 91 | `def` | [take](declarations/take.md) | 610 | `BLOCKED_NATIVE_ADMISSION` |
| 92 | `def` | [toList](declarations/tolist.md) | 618 | `BLOCKED_NATIVE_ADMISSION` |
| 93 | `def` | [toStream](declarations/tostream.md) | 622 | `BLOCKED_NATIVE_ADMISSION` |
| 94 | `def` | [toListOrStream](declarations/tolistorstream.md) | 628 | `BLOCKED_NATIVE_ADMISSION` |
| 95 | `def` | [toList'](declarations/tolist-source-edition-2.md) | 634 | `BLOCKED_NATIVE_ADMISSION` |
| 96 | `def` | [append](declarations/append.md) | 648 | `BLOCKED_NATIVE_ADMISSION` |
| 97 | `def` | [map](declarations/map-source-edition-2.md) | 657 | `BLOCKED_NATIVE_ADMISSION` |
| 98 | `def` | [join](declarations/join.md) | 670 | `BLOCKED_NATIVE_ADMISSION` |
| 99 | `def` | [drop](declarations/drop.md) | 682 | `BLOCKED_NATIVE_ADMISSION` |
| 100 | `def` | [splitAt](declarations/splitat.md) | 688 | `BLOCKED_NATIVE_ADMISSION` |
| 101 | `def` | [zipWith](declarations/zipwith.md) | 698 | `BLOCKED_NATIVE_ADMISSION` |
| 102 | `def` | [zip](declarations/zip.md) | 703 | `BLOCKED_NATIVE_ADMISSION` |
| 103 | `def` | [unzip](declarations/unzip.md) | 707 | `BLOCKED_NATIVE_ADMISSION` |
| 104 | `def` | [nats](declarations/nats.md) | 711 | `BLOCKED_NATIVE_ADMISSION` |
| 105 | `def` | [enum](declarations/enum.md) | 715 | `BLOCKED_NATIVE_ADMISSION` |
| 106 | `def` | [fold](declarations/fold.md) | 720 | `BLOCKED_NATIVE_ADMISSION` |
| 107 | `theorem` | [ofStream_cons](declarations/ofstream-cons.md) | 730 | `BLOCKED_NATIVE_ADMISSION` |
| 108 | `theorem` | [terminatedAt_ofList](declarations/terminatedat-oflist.md) | 737 | `BLOCKED_NATIVE_ADMISSION` |
| 109 | `theorem` | [terminates_ofList](declarations/terminates-oflist.md) | 741 | `BLOCKED_NATIVE_ADMISSION` |
| 110 | `theorem` | [take_nil](declarations/take-nil.md) | 749 | `BLOCKED_NATIVE_ADMISSION` |
| 111 | `theorem` | [take_zero](declarations/take-zero.md) | 753 | `BLOCKED_NATIVE_ADMISSION` |
| 112 | `theorem` | [take_succ_cons](declarations/take-succ-cons.md) | 757 | `BLOCKED_NATIVE_ADMISSION` |
| 113 | `theorem` | [getElem?_take](declarations/getelem-take.md) | 762 | `BLOCKED_NATIVE_ADMISSION` |
| 114 | `theorem` | [get?_mem_take](declarations/get-mem-take.md) | 779 | `BLOCKED_NATIVE_ADMISSION` |
| 115 | `theorem` | [length_take_le](declarations/length-take-le.md) | 799 | `BLOCKED_NATIVE_ADMISSION` |
| 116 | `theorem` | [length_take_of_le_length](declarations/length-take-of-le-length.md) | 810 | `BLOCKED_NATIVE_ADMISSION` |
| 117 | `theorem` | [length_toList](declarations/length-tolist.md) | 831 | `BLOCKED_NATIVE_ADMISSION` |
| 118 | `theorem` | [getElem?_toList](declarations/getelem-tolist.md) | 837 | `BLOCKED_NATIVE_ADMISSION` |
| 119 | `theorem` | [ofList_toList](declarations/oflist-tolist.md) | 846 | `BLOCKED_NATIVE_ADMISSION` |
| 120 | `theorem` | [toList_ofList](declarations/tolist-oflist.md) | 851 | `BLOCKED_NATIVE_ADMISSION` |
| 121 | `theorem` | [toList_nil](declarations/tolist-nil.md) | 855 | `BLOCKED_NATIVE_ADMISSION` |
| 122 | `theorem` | [getLast?_toList](declarations/getlast-tolist.md) | 858 | `BLOCKED_NATIVE_ADMISSION` |
| 123 | `theorem` | [cons_append](declarations/cons-append.md) | 867 | `BLOCKED_NATIVE_ADMISSION` |
| 124 | `theorem` | [nil_append](declarations/nil-append.md) | 873 | `BLOCKED_NATIVE_ADMISSION` |
| 125 | `theorem` | [append_nil](declarations/append-nil.md) | 884 | `BLOCKED_NATIVE_ADMISSION` |
| 126 | `theorem` | [append_assoc](declarations/append-assoc.md) | 893 | `BLOCKED_NATIVE_ADMISSION` |
| 127 | `theorem` | [of_mem_append](declarations/of-mem-append.md) | 909 | `BLOCKED_NATIVE_ADMISSION` |
| 128 | `theorem` | [mem_append_left](declarations/mem-append-left.md) | 930 | `BLOCKED_NATIVE_ADMISSION` |
| 129 | `theorem` | [ofList_append](declarations/oflist-append.md) | 934 | `BLOCKED_NATIVE_ADMISSION` |
| 130 | `theorem` | [ofStream_append](declarations/ofstream-append.md) | 938 | `BLOCKED_NATIVE_ADMISSION` |
| 131 | `theorem` | [map_get?](declarations/map-get.md) | 947 | `BLOCKED_NATIVE_ADMISSION` |
| 132 | `theorem` | [map_nil](declarations/map-nil.md) | 951 | `BLOCKED_NATIVE_ADMISSION` |
| 133 | `theorem` | [map_cons](declarations/map-cons.md) | 955 | `BLOCKED_NATIVE_ADMISSION` |
| 134 | `theorem` | [map_id](declarations/map-id-source-edition-2.md) | 959 | `BLOCKED_NATIVE_ADMISSION` |
| 135 | `theorem` | [map_tail](declarations/map-tail.md) | 965 | `BLOCKED_NATIVE_ADMISSION` |
| 136 | `theorem` | [map_comp](declarations/map-comp.md) | 968 | `BLOCKED_NATIVE_ADMISSION` |
| 137 | `theorem` | [terminatedAt_map_iff](declarations/terminatedat-map-iff.md) | 975 | `BLOCKED_NATIVE_ADMISSION` |
| 138 | `theorem` | [terminates_map_iff](declarations/terminates-map-iff.md) | 980 | `BLOCKED_NATIVE_ADMISSION` |
| 139 | `theorem` | [length_map](declarations/length-map.md) | 985 | `BLOCKED_NATIVE_ADMISSION` |
| 140 | `theorem` | [mem_map](declarations/mem-map.md) | 992 | `BLOCKED_NATIVE_ADMISSION` |
| 141 | `theorem` | [exists_of_mem_map](declarations/exists-of-mem-map.md) | 995 | `BLOCKED_NATIVE_ADMISSION` |
| 142 | `theorem` | [map_append](declarations/map-append.md) | 1004 | `BLOCKED_NATIVE_ADMISSION` |
| 143 | `theorem` | [join_nil](declarations/join-nil-source-edition-2.md) | 1024 | `BLOCKED_NATIVE_ADMISSION` |
| 144 | `theorem` | [join_cons_nil](declarations/join-cons-nil.md) | 1028 | `BLOCKED_NATIVE_ADMISSION` |
| 145 | `theorem` | [join_cons_cons](declarations/join-cons-cons.md) | 1032 | `BLOCKED_NATIVE_ADMISSION` |
| 146 | `theorem` | [join_cons](declarations/join-cons.md) | 1037 | `BLOCKED_NATIVE_ADMISSION` |
| 147 | `theorem` | [join_append](declarations/join-append.md) | 1055 | `BLOCKED_NATIVE_ADMISSION` |
| 148 | `theorem` | [drop_get?](declarations/drop-get.md) | 1083 | `BLOCKED_NATIVE_ADMISSION` |
| 149 | `theorem` | [dropn_add](declarations/dropn-add.md) | 1091 | `BLOCKED_NATIVE_ADMISSION` |
| 150 | `theorem` | [dropn_tail](declarations/dropn-tail.md) | 1095 | `BLOCKED_NATIVE_ADMISSION` |
| 151 | `theorem` | [head_dropn](declarations/head-dropn.md) | 1099 | `BLOCKED_NATIVE_ADMISSION` |
| 152 | `theorem` | [drop_succ_cons](declarations/drop-succ-cons.md) | 1104 | `BLOCKED_NATIVE_ADMISSION` |
| 153 | `theorem` | [drop_nil](declarations/drop-nil.md) | 1109 | `BLOCKED_NATIVE_ADMISSION` |
| 154 | `theorem` | [take_drop](declarations/take-drop.md) | 1114 | `BLOCKED_NATIVE_ADMISSION` |
| 155 | `theorem` | [get?_zipWith](declarations/get-zipwith.md) | 1134 | `BLOCKED_NATIVE_ADMISSION` |
| 156 | `theorem` | [get?_zip](declarations/get-zip.md) | 1139 | `BLOCKED_NATIVE_ADMISSION` |
| 157 | `theorem` | [nats_get?](declarations/nats-get.md) | 1144 | `BLOCKED_NATIVE_ADMISSION` |
| 158 | `theorem` | [get?_enum](declarations/get-enum.md) | 1148 | `BLOCKED_NATIVE_ADMISSION` |
| 159 | `theorem` | [zipWith_nil_left](declarations/zipwith-nil-left.md) | 1152 | `BLOCKED_NATIVE_ADMISSION` |
| 160 | `theorem` | [zipWith_nil_right](declarations/zipwith-nil-right.md) | 1157 | `BLOCKED_NATIVE_ADMISSION` |
| 161 | `theorem` | [zipWith_cons_cons](declarations/zipwith-cons-cons.md) | 1163 | `BLOCKED_NATIVE_ADMISSION` |
| 162 | `theorem` | [zip_nil_left](declarations/zip-nil-left.md) | 1169 | `BLOCKED_NATIVE_ADMISSION` |
| 163 | `theorem` | [zip_nil_right](declarations/zip-nil-right.md) | 1174 | `BLOCKED_NATIVE_ADMISSION` |
| 164 | `theorem` | [zip_cons_cons](declarations/zip-cons-cons.md) | 1179 | `BLOCKED_NATIVE_ADMISSION` |
| 165 | `theorem` | [enum_nil](declarations/enum-nil.md) | 1184 | `BLOCKED_NATIVE_ADMISSION` |
| 166 | `theorem` | [enum_cons](declarations/enum-cons.md) | 1188 | `BLOCKED_NATIVE_ADMISSION` |
| 167 | `theorem` | [zipWith_map](declarations/zipwith-map.md) | 1198 | `BLOCKED_NATIVE_ADMISSION` |
| 168 | `theorem` | [zipWith_map_left](declarations/zipwith-map-left.md) | 1204 | `BLOCKED_NATIVE_ADMISSION` |
| 169 | `theorem` | [zipWith_map_right](declarations/zipwith-map-right.md) | 1209 | `BLOCKED_NATIVE_ADMISSION` |
| 170 | `theorem` | [zip_map](declarations/zip-map.md) | 1214 | `BLOCKED_NATIVE_ADMISSION` |
| 171 | `theorem` | [zip_map_left](declarations/zip-map-left.md) | 1220 | `BLOCKED_NATIVE_ADMISSION` |
| 172 | `theorem` | [zip_map_right](declarations/zip-map-right.md) | 1225 | `BLOCKED_NATIVE_ADMISSION` |
| 173 | `theorem` | [fold_nil](declarations/fold-nil.md) | 1235 | `BLOCKED_NATIVE_ADMISSION` |
| 174 | `theorem` | [fold_cons](declarations/fold-cons.md) | 1241 | `BLOCKED_NATIVE_ADMISSION` |
| 175 | `theorem` | [fold_head](declarations/fold-head.md) | 1250 | `BLOCKED_NATIVE_ADMISSION` |
| 176 | `instance` | [(anonymous)](declarations/instance-source-edition-3.md) | 1256 | `BLOCKED_NATIVE_ADMISSION` |
| 177 | `instance` | [(anonymous)](declarations/instance.md) | 1258 | `BLOCKED_NATIVE_ADMISSION` |
| 178 | `def` | [toSeq](declarations/toseq.md) | 1272 | `BLOCKED_NATIVE_ADMISSION` |
| 179 | `instance` | [coeSeq](declarations/coeseq.md) | 1275 | `BLOCKED_NATIVE_ADMISSION` |
| 180 | `def` | [map](declarations/map.md) | 1279 | `BLOCKED_NATIVE_ADMISSION` |
| 181 | `theorem` | [map_pair](declarations/map-pair.md) | 1282 | `BLOCKED_NATIVE_ADMISSION` |
| 182 | `theorem` | [map_id](declarations/map-id.md) | 1284 | `BLOCKED_NATIVE_ADMISSION` |
| 183 | `def` | [join](declarations/join-source-edition-2.md) | 1288 | `BLOCKED_NATIVE_ADMISSION` |
| 184 | `theorem` | [join_nil](declarations/join-nil.md) | 1295 | `BLOCKED_NATIVE_ADMISSION` |
| 185 | `theorem` | [join_cons](declarations/join-cons-source-edition-2.md) | 1299 | `BLOCKED_NATIVE_ADMISSION` |
| 186 | `def` | [ret](declarations/ret.md) | 1305 | `BLOCKED_NATIVE_ADMISSION` |
| 187 | `instance` | [(anonymous)](declarations/instance-source-edition-2.md) | 1308 | `BLOCKED_NATIVE_ADMISSION` |
| 188 | `def` | [bind](declarations/bind.md) | 1315 | `BLOCKED_NATIVE_ADMISSION` |
| 189 | `theorem` | [join_map_ret](declarations/join-map-ret.md) | 1319 | `BLOCKED_NATIVE_ADMISSION` |
| 190 | `theorem` | [bind_ret](declarations/bind-ret.md) | 1323 | `BLOCKED_NATIVE_ADMISSION` |
| 191 | `theorem` | [ret_bind](declarations/ret-bind.md) | 1327 | `BLOCKED_NATIVE_ADMISSION` |
| 192 | `theorem` | [map_join'](declarations/map-join-source-edition-2.md) | 1333 | `BLOCKED_NATIVE_ADMISSION` |
| 193 | `theorem` | [map_join](declarations/map-join.md) | 1352 | `BLOCKED_NATIVE_ADMISSION` |
| 194 | `theorem` | [join_join](declarations/join-join.md) | 1356 | `BLOCKED_NATIVE_ADMISSION` |
| 195 | `theorem` | [bind_assoc](declarations/bind-assoc.md) | 1379 | `BLOCKED_NATIVE_ADMISSION` |
| 196 | `instance` | [monad](declarations/monad.md) | 1393 | `BLOCKED_NATIVE_ADMISSION` |
| 197 | `instance` | [lawfulMonad](declarations/lawfulmonad.md) | 1398 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=fba96ecfd685f4421be075ab7019dcede60cdc1deae94d7ac9e02736b279fb8d -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Seq/Variant018d404b8967dbd77adfb784d7b847949e7a8c92b58c8d0a97dd92a845a72365.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
