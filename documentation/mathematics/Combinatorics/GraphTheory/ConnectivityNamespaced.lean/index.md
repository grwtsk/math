# Connectivity Namespaced

[Complete source index](../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**378 observed declarations and anonymous commands**, 309 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/Connectivity/Variant59709ea228fca278a9b001f3d77e465abaaa064a57a67c8f6bbdf367b4cb0f72.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `53c05f5b92557ea8bfa7db27d4385cf57276d5ae`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/Combinatorics/GraphTheory/ConnectivityNamespaced.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


Declaration pages: [1](index.md) · [2](declarations-2.md)

| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `inductive` | [Walk](declarations/walk.md) | 99 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `instance` | [Walk.instInhabited](declarations/walk-instinhabited.md) | 108 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `def` | [Adj.toWalk](declarations/adj-towalk.md) | 113 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `abbrev` | [nil'](declarations/nil-source-edition-2.md) | 123 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `abbrev` | [cons'](declarations/cons.md) | 128 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `def` | [copy](declarations/copy.md) | 137 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [copy_rfl_rfl](declarations/copy-rfl-rfl.md) | 142 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [copy_copy](declarations/copy-copy.md) | 146 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [copy_nil](declarations/copy-nil.md) | 154 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [copy_cons](declarations/copy-cons.md) | 159 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [cons_copy](declarations/cons-copy.md) | 166 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [exists_eq_cons_of_ne](declarations/exists-eq-cons-of-ne.md) | 172 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `def` | [length](declarations/length.md) | 179 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `def` | [append](declarations/append.md) | 186 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `def` | [concat](declarations/concat.md) | 193 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [concat_eq_append](declarations/concat-eq-append.md) | 196 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `def` | [reverseAux](declarations/reverseaux.md) | 201 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `def` | [reverse](declarations/reverse-source-edition-2.md) | 208 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `def` | [getVert](declarations/getvert.md) | 214 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [getVert_zero](declarations/getvert-zero.md) | 221 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [getVert_of_length_le](declarations/getvert-of-length-le.md) | 224 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [getVert_length](declarations/getvert-length.md) | 235 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [adj_getVert_succ](declarations/adj-getvert-succ.md) | 239 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [cons_append](declarations/cons-append.md) | 250 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [cons_nil_append](declarations/cons-nil-append.md) | 255 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [append_nil](declarations/append-nil.md) | 260 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [nil_append](declarations/nil-append.md) | 267 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [append_assoc](declarations/append-assoc.md) | 271 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [append_copy_copy](declarations/append-copy-copy.md) | 281 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [concat_nil](declarations/concat-nil.md) | 288 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [concat_cons](declarations/concat-cons.md) | 292 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [append_concat](declarations/append-concat.md) | 296 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [concat_append](declarations/concat-append.md) | 300 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [exists_cons_eq_concat](declarations/exists-cons-eq-concat.md) | 306 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `theorem` | [exists_concat_eq_cons](declarations/exists-concat-eq-cons.md) | 317 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `theorem` | [reverse_nil](declarations/reverse-nil.md) | 325 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `theorem` | [reverse_singleton](declarations/reverse-singleton.md) | 328 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `theorem` | [cons_reverseAux](declarations/cons-reverseaux.md) | 333 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `theorem` | [append_reverseAux](declarations/append-reverseaux.md) | 338 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `theorem` | [reverseAux_append](declarations/reverseaux-append.md) | 347 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `theorem` | [reverseAux_eq_reverse_append](declarations/reverseaux-eq-reverse-append.md) | 355 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `theorem` | [reverse_cons](declarations/reverse-cons.md) | 360 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `theorem` | [reverse_copy](declarations/reverse-copy.md) | 365 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `theorem` | [reverse_append](declarations/reverse-append.md) | 372 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `theorem` | [reverse_concat](declarations/reverse-concat.md) | 377 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `theorem` | [reverse_reverse](declarations/reverse-reverse.md) | 382 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `theorem` | [length_nil](declarations/length-nil.md) | 389 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `theorem` | [length_cons](declarations/length-cons.md) | 393 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `theorem` | [length_copy](declarations/length-copy.md) | 398 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `theorem` | [length_append](declarations/length-append.md) | 405 | `BLOCKED_NATIVE_ADMISSION` |
| 51 | `theorem` | [length_concat](declarations/length-concat.md) | 413 | `BLOCKED_NATIVE_ADMISSION` |
| 52 | `theorem` | [length_reverseAux](declarations/length-reverseaux.md) | 418 | `BLOCKED_NATIVE_ADMISSION` |
| 53 | `theorem` | [length_reverse](declarations/length-reverse.md) | 426 | `BLOCKED_NATIVE_ADMISSION` |
| 54 | `theorem` | [eq_of_length_eq_zero](declarations/eq-of-length-eq-zero.md) | 429 | `BLOCKED_NATIVE_ADMISSION` |
| 55 | `theorem` | [exists_length_eq_zero_iff](declarations/exists-length-eq-zero-iff.md) | 434 | `BLOCKED_NATIVE_ADMISSION` |
| 56 | `theorem` | [length_eq_zero_iff](declarations/length-eq-zero-iff.md) | 443 | `BLOCKED_NATIVE_ADMISSION` |
| 57 | `def` | [concatRecAux](declarations/concatrecaux.md) | 452 | `BLOCKED_NATIVE_ADMISSION` |
| 58 | `def` | [concatRec](declarations/concatrec.md) | 462 | `BLOCKED_NATIVE_ADMISSION` |
| 59 | `theorem` | [concatRec_nil](declarations/concatrec-nil.md) | 467 | `BLOCKED_NATIVE_ADMISSION` |
| 60 | `theorem` | [concatRec_concat](declarations/concatrec-concat.md) | 472 | `BLOCKED_NATIVE_ADMISSION` |
| 61 | `theorem` | [concat_ne_nil](declarations/concat-ne-nil.md) | 487 | `BLOCKED_NATIVE_ADMISSION` |
| 62 | `theorem` | [concat_inj](declarations/concat-inj.md) | 491 | `BLOCKED_NATIVE_ADMISSION` |
| 63 | `def` | [support](declarations/support.md) | 518 | `BLOCKED_NATIVE_ADMISSION` |
| 64 | `def` | [darts](declarations/darts.md) | 524 | `BLOCKED_NATIVE_ADMISSION` |
| 65 | `def` | [edges](declarations/edges.md) | 531 | `BLOCKED_NATIVE_ADMISSION` |
| 66 | `theorem` | [support_nil](declarations/support-nil.md) | 535 | `BLOCKED_NATIVE_ADMISSION` |
| 67 | `theorem` | [support_cons](declarations/support-cons.md) | 539 | `BLOCKED_NATIVE_ADMISSION` |
| 68 | `theorem` | [support_concat](declarations/support-concat.md) | 544 | `BLOCKED_NATIVE_ADMISSION` |
| 69 | `theorem` | [support_copy](declarations/support-copy.md) | 550 | `BLOCKED_NATIVE_ADMISSION` |
| 70 | `theorem` | [support_append](declarations/support-append.md) | 556 | `BLOCKED_NATIVE_ADMISSION` |
| 71 | `theorem` | [support_reverse](declarations/support-reverse.md) | 562 | `BLOCKED_NATIVE_ADMISSION` |
| 72 | `theorem` | [support_ne_nil](declarations/support-ne-nil.md) | 567 | `BLOCKED_NATIVE_ADMISSION` |
| 73 | `theorem` | [tail_support_append](declarations/tail-support-append.md) | 570 | `BLOCKED_NATIVE_ADMISSION` |
| 74 | `theorem` | [support_eq_cons](declarations/support-eq-cons.md) | 575 | `BLOCKED_NATIVE_ADMISSION` |
| 75 | `theorem` | [start_mem_support](declarations/start-mem-support.md) | 580 | `BLOCKED_NATIVE_ADMISSION` |
| 76 | `theorem` | [end_mem_support](declarations/end-mem-support.md) | 584 | `BLOCKED_NATIVE_ADMISSION` |
| 77 | `theorem` | [support_nonempty](declarations/support-nonempty.md) | 588 | `BLOCKED_NATIVE_ADMISSION` |
| 78 | `theorem` | [mem_support_iff](declarations/mem-support-iff.md) | 592 | `BLOCKED_NATIVE_ADMISSION` |
| 79 | `theorem` | [mem_support_nil_iff](declarations/mem-support-nil-iff.md) | 596 | `BLOCKED_NATIVE_ADMISSION` |
| 80 | `theorem` | [mem_tail_support_append_iff](declarations/mem-tail-support-append-iff.md) | 600 | `BLOCKED_NATIVE_ADMISSION` |
| 81 | `theorem` | [end_mem_tail_support_of_ne](declarations/end-mem-tail-support-of-ne.md) | 606 | `BLOCKED_NATIVE_ADMISSION` |
| 82 | `theorem` | [mem_support_append_iff](declarations/mem-support-append-iff.md) | 612 | `BLOCKED_NATIVE_ADMISSION` |
| 83 | `theorem` | [subset_support_append_left](declarations/subset-support-append-left.md) | 621 | `BLOCKED_NATIVE_ADMISSION` |
| 84 | `theorem` | [subset_support_append_right](declarations/subset-support-append-right.md) | 627 | `BLOCKED_NATIVE_ADMISSION` |
| 85 | `theorem` | [coe_support](declarations/coe-support.md) | 633 | `BLOCKED_NATIVE_ADMISSION` |
| 86 | `theorem` | [coe_support_append](declarations/coe-support-append-source-edition-2.md) | 637 | `BLOCKED_NATIVE_ADMISSION` |
| 87 | `theorem` | [coe_support_append'](declarations/coe-support-append.md) | 642 | `BLOCKED_NATIVE_ADMISSION` |
| 88 | `theorem` | [chain_adj_support](declarations/chain-adj-support-source-edition-2.md) | 650 | `BLOCKED_NATIVE_ADMISSION` |
| 89 | `theorem` | [chain'_adj_support](declarations/chain-adj-support.md) | 656 | `BLOCKED_NATIVE_ADMISSION` |
| 90 | `theorem` | [chain_dartAdj_darts](declarations/chain-dartadj-darts-source-edition-2.md) | 661 | `BLOCKED_NATIVE_ADMISSION` |
| 91 | `theorem` | [chain'_dartAdj_darts](declarations/chain-dartadj-darts.md) | 669 | `BLOCKED_NATIVE_ADMISSION` |
| 92 | `theorem` | [edges_subset_edgeSet](declarations/edges-subset-edgeset.md) | 677 | `BLOCKED_NATIVE_ADMISSION` |
| 93 | `theorem` | [adj_of_mem_edges](declarations/adj-of-mem-edges.md) | 685 | `BLOCKED_NATIVE_ADMISSION` |
| 94 | `theorem` | [darts_nil](declarations/darts-nil.md) | 690 | `BLOCKED_NATIVE_ADMISSION` |
| 95 | `theorem` | [darts_cons](declarations/darts-cons.md) | 694 | `BLOCKED_NATIVE_ADMISSION` |
| 96 | `theorem` | [darts_concat](declarations/darts-concat.md) | 699 | `BLOCKED_NATIVE_ADMISSION` |
| 97 | `theorem` | [darts_copy](declarations/darts-copy.md) | 705 | `BLOCKED_NATIVE_ADMISSION` |
| 98 | `theorem` | [darts_append](declarations/darts-append.md) | 712 | `BLOCKED_NATIVE_ADMISSION` |
| 99 | `theorem` | [darts_reverse](declarations/darts-reverse.md) | 718 | `BLOCKED_NATIVE_ADMISSION` |
| 100 | `theorem` | [mem_darts_reverse](declarations/mem-darts-reverse.md) | 723 | `BLOCKED_NATIVE_ADMISSION` |
| 101 | `theorem` | [cons_map_snd_darts](declarations/cons-map-snd-darts.md) | 727 | `BLOCKED_NATIVE_ADMISSION` |
| 102 | `theorem` | [map_snd_darts](declarations/map-snd-darts.md) | 731 | `BLOCKED_NATIVE_ADMISSION` |
| 103 | `theorem` | [map_fst_darts_append](declarations/map-fst-darts-append.md) | 735 | `BLOCKED_NATIVE_ADMISSION` |
| 104 | `theorem` | [map_fst_darts](declarations/map-fst-darts.md) | 740 | `BLOCKED_NATIVE_ADMISSION` |
| 105 | `theorem` | [edges_nil](declarations/edges-nil.md) | 745 | `BLOCKED_NATIVE_ADMISSION` |
| 106 | `theorem` | [edges_cons](declarations/edges-cons.md) | 749 | `BLOCKED_NATIVE_ADMISSION` |
| 107 | `theorem` | [edges_concat](declarations/edges-concat.md) | 754 | `BLOCKED_NATIVE_ADMISSION` |
| 108 | `theorem` | [edges_copy](declarations/edges-copy.md) | 759 | `BLOCKED_NATIVE_ADMISSION` |
| 109 | `theorem` | [edges_append](declarations/edges-append.md) | 766 | `BLOCKED_NATIVE_ADMISSION` |
| 110 | `theorem` | [edges_reverse](declarations/edges-reverse.md) | 771 | `BLOCKED_NATIVE_ADMISSION` |
| 111 | `theorem` | [length_support](declarations/length-support.md) | 776 | `BLOCKED_NATIVE_ADMISSION` |
| 112 | `theorem` | [length_darts](declarations/length-darts.md) | 781 | `BLOCKED_NATIVE_ADMISSION` |
| 113 | `theorem` | [length_edges](declarations/length-edges.md) | 786 | `BLOCKED_NATIVE_ADMISSION` |
| 114 | `theorem` | [dart_fst_mem_support_of_mem_darts](declarations/dart-fst-mem-support-of-mem-darts.md) | 789 | `BLOCKED_NATIVE_ADMISSION` |
| 115 | `theorem` | [dart_snd_mem_support_of_mem_darts](declarations/dart-snd-mem-support-of-mem-darts.md) | 798 | `BLOCKED_NATIVE_ADMISSION` |
| 116 | `theorem` | [fst_mem_support_of_mem_edges](declarations/fst-mem-support-of-mem-edges.md) | 803 | `BLOCKED_NATIVE_ADMISSION` |
| 117 | `theorem` | [snd_mem_support_of_mem_edges](declarations/snd-mem-support-of-mem-edges.md) | 812 | `BLOCKED_NATIVE_ADMISSION` |
| 118 | `theorem` | [darts_nodup_of_support_nodup](declarations/darts-nodup-of-support-nodup.md) | 818 | `BLOCKED_NATIVE_ADMISSION` |
| 119 | `theorem` | [edges_nodup_of_support_nodup](declarations/edges-nodup-of-support-nodup.md) | 827 | `BLOCKED_NATIVE_ADMISSION` |
| 120 | `inductive` | [Nil](declarations/nil-source-edition-3.md) | 840 | `BLOCKED_NATIVE_ADMISSION` |
| 121 | `lemma` | [nil_nil](declarations/nil-nil.md) | 843 | `BLOCKED_NATIVE_ADMISSION` |
| 122 | `lemma` | [not_nil_cons](declarations/not-nil-cons.md) | 845 | `BLOCKED_NATIVE_ADMISSION` |
| 123 | `instance` | [(anonymous)](declarations/instance-source-edition-3.md) | 847 | `BLOCKED_NATIVE_ADMISSION` |
| 124 | `lemma` | [Nil.eq](declarations/nil-eq.md) | 852 | `BLOCKED_NATIVE_ADMISSION` |
| 125 | `lemma` | [not_nil_of_ne](declarations/not-nil-of-ne.md) | 854 | `BLOCKED_NATIVE_ADMISSION` |
| 126 | `lemma` | [nil_iff_support_eq](declarations/nil-iff-support-eq.md) | 856 | `BLOCKED_NATIVE_ADMISSION` |
| 127 | `lemma` | [nil_iff_length_eq](declarations/nil-iff-length-eq.md) | 859 | `BLOCKED_NATIVE_ADMISSION` |
| 128 | `lemma` | [not_nil_iff](declarations/not-nil-iff.md) | 862 | `BLOCKED_NATIVE_ADMISSION` |
| 129 | `def` | [notNilRec](declarations/notnilrec.md) | 867 | `BLOCKED_NATIVE_ADMISSION` |
| 130 | `def` | [sndOfNotNil](declarations/sndofnotnil.md) | 875 | `BLOCKED_NATIVE_ADMISSION` |
| 131 | `lemma` | [adj_sndOfNotNil](declarations/adj-sndofnotnil.md) | 878 | `BLOCKED_NATIVE_ADMISSION` |
| 132 | `def` | [tail](declarations/tail.md) | 883 | `BLOCKED_NATIVE_ADMISSION` |
| 133 | `def` | [firstDart](declarations/firstdart.md) | 888 | `BLOCKED_NATIVE_ADMISSION` |
| 134 | `lemma` | [edge_firstDart](declarations/edge-firstdart.md) | 893 | `BLOCKED_NATIVE_ADMISSION` |
| 135 | `lemma` | [cons_tail_eq](declarations/cons-tail-eq.md) | 896 | `BLOCKED_NATIVE_ADMISSION` |
| 136 | `lemma` | [cons_support_tail](declarations/cons-support-tail.md) | 900 | `BLOCKED_NATIVE_ADMISSION` |
| 137 | `lemma` | [length_tail_add_one](declarations/length-tail-add-one.md) | 904 | `BLOCKED_NATIVE_ADMISSION` |
| 138 | `lemma` | [nil_copy](declarations/nil-copy.md) | 908 | `BLOCKED_NATIVE_ADMISSION` |
| 139 | `structure` | [IsTrail](declarations/istrail.md) | 915 | `BLOCKED_NATIVE_ADMISSION` |
| 140 | `structure` | [IsPath](declarations/ispath-source-edition-2.md) | 921 | `BLOCKED_NATIVE_ADMISSION` |
| 141 | `lemma` | [IsPath.isTrail](declarations/ispath-istrail.md) | 926 | `BLOCKED_NATIVE_ADMISSION` |
| 142 | `structure` | [IsCircuit](declarations/iscircuit.md) | 930 | `BLOCKED_NATIVE_ADMISSION` |
| 143 | `lemma` | [IsCircuit.isTrail](declarations/iscircuit-istrail.md) | 935 | `BLOCKED_NATIVE_ADMISSION` |
| 144 | `structure` | [IsCycle](declarations/iscycle.md) | 940 | `BLOCKED_NATIVE_ADMISSION` |
| 145 | `lemma` | [IsCycle.isCircuit](declarations/iscycle-iscircuit.md) | 945 | `BLOCKED_NATIVE_ADMISSION` |
| 146 | `theorem` | [isTrail_def](declarations/istrail-def.md) | 948 | `BLOCKED_NATIVE_ADMISSION` |
| 147 | `theorem` | [isTrail_copy](declarations/istrail-copy.md) | 953 | `BLOCKED_NATIVE_ADMISSION` |
| 148 | `theorem` | [IsPath.mk'](declarations/ispath-mk.md) | 959 | `BLOCKED_NATIVE_ADMISSION` |
| 149 | `theorem` | [isPath_def](declarations/ispath-def.md) | 963 | `BLOCKED_NATIVE_ADMISSION` |
| 150 | `theorem` | [isPath_copy](declarations/ispath-copy.md) | 968 | `BLOCKED_NATIVE_ADMISSION` |
| 151 | `theorem` | [isCircuit_def](declarations/iscircuit-def.md) | 974 | `BLOCKED_NATIVE_ADMISSION` |
| 152 | `theorem` | [isCircuit_copy](declarations/iscircuit-copy.md) | 979 | `BLOCKED_NATIVE_ADMISSION` |
| 153 | `theorem` | [isCycle_def](declarations/iscycle-def.md) | 985 | `BLOCKED_NATIVE_ADMISSION` |
| 154 | `theorem` | [isCycle_copy](declarations/iscycle-copy.md) | 991 | `BLOCKED_NATIVE_ADMISSION` |
| 155 | `theorem` | [IsTrail.nil](declarations/istrail-nil.md) | 998 | `BLOCKED_NATIVE_ADMISSION` |
| 156 | `theorem` | [IsTrail.of_cons](declarations/istrail-of-cons.md) | 1002 | `BLOCKED_NATIVE_ADMISSION` |
| 157 | `theorem` | [cons_isTrail_iff](declarations/cons-istrail-iff.md) | 1007 | `BLOCKED_NATIVE_ADMISSION` |
| 158 | `theorem` | [IsTrail.reverse](declarations/istrail-reverse.md) | 1011 | `BLOCKED_NATIVE_ADMISSION` |
| 159 | `theorem` | [reverse_isTrail_iff](declarations/reverse-istrail-iff.md) | 1016 | `BLOCKED_NATIVE_ADMISSION` |
| 160 | `theorem` | [IsTrail.of_append_left](declarations/istrail-of-append-left.md) | 1023 | `BLOCKED_NATIVE_ADMISSION` |
| 161 | `theorem` | [IsTrail.of_append_right](declarations/istrail-of-append-right.md) | 1029 | `BLOCKED_NATIVE_ADMISSION` |
| 162 | `theorem` | [IsTrail.count_edges_le_one](declarations/istrail-count-edges-le-one.md) | 1035 | `BLOCKED_NATIVE_ADMISSION` |
| 163 | `theorem` | [IsTrail.count_edges_eq_one](declarations/istrail-count-edges-eq-one.md) | 1040 | `BLOCKED_NATIVE_ADMISSION` |
| 164 | `theorem` | [IsPath.nil](declarations/ispath-nil.md) | 1045 | `BLOCKED_NATIVE_ADMISSION` |
| 165 | `theorem` | [IsPath.of_cons](declarations/ispath-of-cons.md) | 1048 | `BLOCKED_NATIVE_ADMISSION` |
| 166 | `theorem` | [cons_isPath_iff](declarations/cons-ispath-iff.md) | 1053 | `BLOCKED_NATIVE_ADMISSION` |
| 167 | `lemma` | [IsPath.cons](declarations/ispath-cons.md) | 1058 | `BLOCKED_NATIVE_ADMISSION` |
| 168 | `theorem` | [isPath_iff_eq_nil](declarations/ispath-iff-eq-nil.md) | 1063 | `BLOCKED_NATIVE_ADMISSION` |
| 169 | `theorem` | [IsPath.reverse](declarations/ispath-reverse.md) | 1067 | `BLOCKED_NATIVE_ADMISSION` |
| 170 | `theorem` | [isPath_reverse_iff](declarations/ispath-reverse-iff.md) | 1072 | `BLOCKED_NATIVE_ADMISSION` |
| 171 | `theorem` | [IsPath.of_append_left](declarations/ispath-of-append-left.md) | 1076 | `BLOCKED_NATIVE_ADMISSION` |
| 172 | `theorem` | [IsPath.of_append_right](declarations/ispath-of-append-right.md) | 1082 | `BLOCKED_NATIVE_ADMISSION` |
| 173 | `theorem` | [IsCycle.not_of_nil](declarations/iscycle-not-of-nil.md) | 1090 | `BLOCKED_NATIVE_ADMISSION` |
| 174 | `theorem` | [cons_isCycle_iff](declarations/cons-iscycle-iff.md) | 1093 | `BLOCKED_NATIVE_ADMISSION` |
| 175 | `lemma` | [IsPath.tail](declarations/ispath-tail.md) | 1101 | `BLOCKED_NATIVE_ADMISSION` |
| 176 | `instance` | [(anonymous)](declarations/instance-source-edition-8.md) | 1108 | `BLOCKED_NATIVE_ADMISSION` |
| 177 | `theorem` | [IsPath.length_lt](declarations/ispath-length-lt.md) | 1112 | `BLOCKED_NATIVE_ADMISSION` |
| 178 | `def` | [takeUntil](declarations/takeuntil.md) | 1126 | `BLOCKED_NATIVE_ADMISSION` |
| 179 | `def` | [dropUntil](declarations/dropuntil.md) | 1138 | `BLOCKED_NATIVE_ADMISSION` |
| 180 | `theorem` | [take_spec](declarations/take-spec.md) | 1150 | `BLOCKED_NATIVE_ADMISSION` |
| 181 | `theorem` | [mem_support_iff_exists_append](declarations/mem-support-iff-exists-append.md) | 1162 | `BLOCKED_NATIVE_ADMISSION` |
| 182 | `theorem` | [count_support_takeUntil_eq_one](declarations/count-support-takeuntil-eq-one.md) | 1172 | `BLOCKED_NATIVE_ADMISSION` |
| 183 | `theorem` | [count_edges_takeUntil_le_one](declarations/count-edges-takeuntil-le-one.md) | 1184 | `BLOCKED_NATIVE_ADMISSION` |
| 184 | `theorem` | [takeUntil_copy](declarations/takeuntil-copy.md) | 1206 | `BLOCKED_NATIVE_ADMISSION` |
| 185 | `theorem` | [dropUntil_copy](declarations/dropuntil-copy.md) | 1214 | `BLOCKED_NATIVE_ADMISSION` |
| 186 | `theorem` | [support_takeUntil_subset](declarations/support-takeuntil-subset.md) | 1221 | `BLOCKED_NATIVE_ADMISSION` |
| 187 | `theorem` | [support_dropUntil_subset](declarations/support-dropuntil-subset.md) | 1227 | `BLOCKED_NATIVE_ADMISSION` |
| 188 | `theorem` | [darts_takeUntil_subset](declarations/darts-takeuntil-subset.md) | 1233 | `BLOCKED_NATIVE_ADMISSION` |
| 189 | `theorem` | [darts_dropUntil_subset](declarations/darts-dropuntil-subset.md) | 1239 | `BLOCKED_NATIVE_ADMISSION` |
| 190 | `theorem` | [edges_takeUntil_subset](declarations/edges-takeuntil-subset.md) | 1245 | `BLOCKED_NATIVE_ADMISSION` |
| 191 | `theorem` | [edges_dropUntil_subset](declarations/edges-dropuntil-subset.md) | 1250 | `BLOCKED_NATIVE_ADMISSION` |
| 192 | `theorem` | [length_takeUntil_le](declarations/length-takeuntil-le.md) | 1255 | `BLOCKED_NATIVE_ADMISSION` |
| 193 | `theorem` | [length_dropUntil_le](declarations/length-dropuntil-le.md) | 1262 | `BLOCKED_NATIVE_ADMISSION` |
| 194 | `theorem` | [IsTrail.takeUntil](declarations/istrail-takeuntil.md) | 1269 | `BLOCKED_NATIVE_ADMISSION` |
| 195 | `theorem` | [IsTrail.dropUntil](declarations/istrail-dropuntil.md) | 1274 | `BLOCKED_NATIVE_ADMISSION` |
| 196 | `theorem` | [IsPath.takeUntil](declarations/ispath-takeuntil.md) | 1279 | `BLOCKED_NATIVE_ADMISSION` |
| 197 | `theorem` | [IsPath.dropUntil](declarations/ispath-dropuntil.md) | 1285 | `BLOCKED_NATIVE_ADMISSION` |
| 198 | `def` | [rotate](declarations/rotate.md) | 1291 | `BLOCKED_NATIVE_ADMISSION` |
| 199 | `theorem` | [support_rotate](declarations/support-rotate.md) | 1296 | `BLOCKED_NATIVE_ADMISSION` |
| 200 | `theorem` | [rotate_darts](declarations/rotate-darts.md) | 1303 | `BLOCKED_NATIVE_ADMISSION` |
| 201 | `theorem` | [rotate_edges](declarations/rotate-edges.md) | 1310 | `BLOCKED_NATIVE_ADMISSION` |
| 202 | `theorem` | [IsTrail.rotate](declarations/istrail-rotate.md) | 1315 | `BLOCKED_NATIVE_ADMISSION` |
| 203 | `theorem` | [IsCircuit.rotate](declarations/iscircuit-rotate.md) | 1321 | `BLOCKED_NATIVE_ADMISSION` |
| 204 | `theorem` | [IsCycle.rotate](declarations/iscycle-rotate.md) | 1332 | `BLOCKED_NATIVE_ADMISSION` |
| 205 | `theorem` | [exists_boundary_dart](declarations/exists-boundary-dart.md) | 1343 | `BLOCKED_NATIVE_ADMISSION` |
| 206 | `abbrev` | [Path](declarations/path.md) | 1359 | `BLOCKED_NATIVE_ADMISSION` |
| 207 | `theorem` | [isPath](declarations/ispath.md) | 1367 | `BLOCKED_NATIVE_ADMISSION` |
| 208 | `theorem` | [isTrail](declarations/istrail-source-edition-2.md) | 1371 | `BLOCKED_NATIVE_ADMISSION` |
| 209 | `def` | [nil](declarations/nil.md) | 1377 | `BLOCKED_NATIVE_ADMISSION` |
| 210 | `def` | [singleton](declarations/singleton.md) | 1383 | `BLOCKED_NATIVE_ADMISSION` |
| 211 | `theorem` | [mk'_mem_edges_singleton](declarations/mk-mem-edges-singleton.md) | 1387 | `BLOCKED_NATIVE_ADMISSION` |
| 212 | `def` | [reverse](declarations/reverse.md) | 1393 | `BLOCKED_NATIVE_ADMISSION` |
| 213 | `theorem` | [count_support_eq_one](declarations/count-support-eq-one.md) | 1397 | `BLOCKED_NATIVE_ADMISSION` |
| 214 | `theorem` | [count_edges_eq_one](declarations/count-edges-eq-one.md) | 1402 | `BLOCKED_NATIVE_ADMISSION` |
| 215 | `theorem` | [nodup_support](declarations/nodup-support.md) | 1408 | `BLOCKED_NATIVE_ADMISSION` |
| 216 | `theorem` | [loop_eq](declarations/loop-eq.md) | 1412 | `BLOCKED_NATIVE_ADMISSION` |
| 217 | `theorem` | [not_mem_edges_of_loop](declarations/not-mem-edges-of-loop.md) | 1418 | `BLOCKED_NATIVE_ADMISSION` |
| 218 | `theorem` | [cons_isCycle](declarations/cons-iscycle.md) | 1422 | `BLOCKED_NATIVE_ADMISSION` |
| 219 | `def` | [bypass](declarations/bypass.md) | 1439 | `BLOCKED_NATIVE_ADMISSION` |
| 220 | `theorem` | [bypass_copy](declarations/bypass-copy.md) | 1450 | `BLOCKED_NATIVE_ADMISSION` |
| 221 | `theorem` | [bypass_isPath](declarations/bypass-ispath.md) | 1456 | `BLOCKED_NATIVE_ADMISSION` |
| 222 | `theorem` | [length_bypass_le](declarations/length-bypass-le.md) | 1466 | `BLOCKED_NATIVE_ADMISSION` |
| 223 | `def` | [toPath](declarations/topath.md) | 1481 | `BLOCKED_NATIVE_ADMISSION` |
| 224 | `theorem` | [support_bypass_subset](declarations/support-bypass-subset.md) | 1485 | `BLOCKED_NATIVE_ADMISSION` |
| 225 | `theorem` | [support_toPath_subset](declarations/support-topath-subset.md) | 1499 | `BLOCKED_NATIVE_ADMISSION` |
| 226 | `theorem` | [darts_bypass_subset](declarations/darts-bypass-subset.md) | 1504 | `BLOCKED_NATIVE_ADMISSION` |
| 227 | `theorem` | [edges_bypass_subset](declarations/edges-bypass-subset.md) | 1516 | `BLOCKED_NATIVE_ADMISSION` |
| 228 | `theorem` | [darts_toPath_subset](declarations/darts-topath-subset.md) | 1520 | `BLOCKED_NATIVE_ADMISSION` |
| 229 | `theorem` | [edges_toPath_subset](declarations/edges-topath-subset.md) | 1524 | `BLOCKED_NATIVE_ADMISSION` |
| 230 | `def` | [map](declarations/map-source-edition-3.md) | 1538 | `BLOCKED_NATIVE_ADMISSION` |
| 231 | `theorem` | [map_nil](declarations/map-nil.md) | 1546 | `BLOCKED_NATIVE_ADMISSION` |
| 232 | `theorem` | [map_cons](declarations/map-cons.md) | 1550 | `BLOCKED_NATIVE_ADMISSION` |
| 233 | `theorem` | [map_copy](declarations/map-copy.md) | 1554 | `BLOCKED_NATIVE_ADMISSION` |
| 234 | `theorem` | [map_id](declarations/map-id-source-edition-2.md) | 1561 | `BLOCKED_NATIVE_ADMISSION` |
| 235 | `theorem` | [map_map](declarations/map-map.md) | 1568 | `BLOCKED_NATIVE_ADMISSION` |
| 236 | `theorem` | [map_eq_of_eq](declarations/map-eq-of-eq.md) | 1576 | `BLOCKED_NATIVE_ADMISSION` |
| 237 | `theorem` | [map_eq_nil_iff](declarations/map-eq-nil-iff.md) | 1583 | `BLOCKED_NATIVE_ADMISSION` |
| 238 | `theorem` | [length_map](declarations/length-map.md) | 1587 | `BLOCKED_NATIVE_ADMISSION` |
| 239 | `theorem` | [map_append](declarations/map-append.md) | 1590 | `BLOCKED_NATIVE_ADMISSION` |
| 240 | `theorem` | [reverse_map](declarations/reverse-map.md) | 1595 | `BLOCKED_NATIVE_ADMISSION` |
| 241 | `theorem` | [support_map](declarations/support-map.md) | 1599 | `BLOCKED_NATIVE_ADMISSION` |
| 242 | `theorem` | [darts_map](declarations/darts-map.md) | 1603 | `BLOCKED_NATIVE_ADMISSION` |
| 243 | `theorem` | [edges_map](declarations/edges-map.md) | 1607 | `BLOCKED_NATIVE_ADMISSION` |
| 244 | `theorem` | [map_isPath_of_injective](declarations/map-ispath-of-injective.md) | 1617 | `BLOCKED_NATIVE_ADMISSION` |
| 245 | `theorem` | [IsPath.of_map](declarations/ispath-of-map.md) | 1629 | `BLOCKED_NATIVE_ADMISSION` |
| 246 | `theorem` | [map_isPath_iff_of_injective](declarations/map-ispath-iff-of-injective.md) | 1641 | `BLOCKED_NATIVE_ADMISSION` |
| 247 | `theorem` | [map_isTrail_iff_of_injective](declarations/map-istrail-iff-of-injective.md) | 1645 | `BLOCKED_NATIVE_ADMISSION` |
| 248 | `theorem` | [map_isCycle_iff_of_injective](declarations/map-iscycle-iff-of-injective.md) | 1658 | `BLOCKED_NATIVE_ADMISSION` |
| 249 | `theorem` | [map_injective_of_injective](declarations/map-injective-of-injective.md) | 1669 | `BLOCKED_NATIVE_ADMISSION` |
| 250 | `def` | [mapLe](declarations/maple.md) | 1690 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=c13809ef1f64aa21b7c2a1718ba71cb95da5c35b104d528cb425291f45b97178 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/Connectivity/Variant59709ea228fca278a9b001f3d77e465abaaa064a57a67c8f6bbdf367b4cb0f72.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
