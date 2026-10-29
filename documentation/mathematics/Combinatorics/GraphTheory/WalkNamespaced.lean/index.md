# Walk Namespaced

[Complete source index](../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**237 observed declarations and anonymous commands**, 203 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Walk/Variantd816791aaeac6b28f6975acd932e19f8c6ac120af451c633dffa60dbf791efff.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `e13256d3741c0138802880d961077409f7ed83df`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/Combinatorics/GraphTheory/WalkNamespaced.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `inductive` | [Walk](declarations/walk.md) | 61 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `instance` | [Walk.instInhabited](declarations/walk-instinhabited.md) | 69 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `def` | [Adj.toWalk](declarations/adj-towalk.md) | 73 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `abbrev` | [nil'](declarations/nil.md) | 82 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `abbrev` | [cons'](declarations/cons.md) | 86 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `def` | [copy](declarations/copy.md) | 94 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [copy_rfl_rfl](declarations/copy-rfl-rfl.md) | 98 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [copy_copy](declarations/copy-copy.md) | 101 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [copy_nil](declarations/copy-nil.md) | 108 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [copy_cons](declarations/copy-cons.md) | 112 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [cons_copy](declarations/cons-copy.md) | 118 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [exists_eq_cons_of_ne](declarations/exists-eq-cons-of-ne.md) | 123 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `def` | [length](declarations/length.md) | 129 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `def` | [append](declarations/append.md) | 135 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `def` | [concat](declarations/concat.md) | 141 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [concat_eq_append](declarations/concat-eq-append.md) | 143 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `def` | [reverseAux](declarations/reverseaux.md) | 147 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `def` | [reverse](declarations/reverse.md) | 153 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `def` | [getVert](declarations/getvert.md) | 158 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [getVert_zero](declarations/getvert-zero.md) | 164 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [getVert_nil](declarations/getvert-nil.md) | 167 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [getVert_of_length_le](declarations/getvert-of-length-le.md) | 169 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [getVert_length](declarations/getvert-length.md) | 179 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [adj_getVert_succ](declarations/adj-getvert-succ.md) | 182 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `lemma` | [getVert_cons_succ](declarations/getvert-cons-succ.md) | 192 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `lemma` | [getVert_cons](declarations/getvert-cons.md) | 195 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [cons_append](declarations/cons-append.md) | 201 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [cons_nil_append](declarations/cons-nil-append.md) | 205 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [nil_append](declarations/nil-append.md) | 209 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [append_nil](declarations/append-nil.md) | 213 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [append_assoc](declarations/append-assoc.md) | 218 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [append_copy_copy](declarations/append-copy-copy.md) | 225 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [concat_nil](declarations/concat-nil.md) | 231 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [concat_cons](declarations/concat-cons.md) | 234 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `theorem` | [append_concat](declarations/append-concat.md) | 237 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `theorem` | [concat_append](declarations/concat-append.md) | 240 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `theorem` | [exists_cons_eq_concat](declarations/exists-cons-eq-concat.md) | 245 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `theorem` | [exists_concat_eq_cons](declarations/exists-concat-eq-cons.md) | 255 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `theorem` | [reverse_nil](declarations/reverse-nil.md) | 262 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `theorem` | [reverse_singleton](declarations/reverse-singleton.md) | 264 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `theorem` | [cons_reverseAux](declarations/cons-reverseaux.md) | 268 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `theorem` | [append_reverseAux](declarations/append-reverseaux.md) | 272 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `theorem` | [reverseAux_append](declarations/reverseaux-append.md) | 280 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `theorem` | [reverseAux_eq_reverse_append](declarations/reverseaux-eq-reverse-append.md) | 287 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `theorem` | [reverse_cons](declarations/reverse-cons.md) | 291 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `theorem` | [reverse_copy](declarations/reverse-copy.md) | 295 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `theorem` | [reverse_append](declarations/reverse-append.md) | 301 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `theorem` | [reverse_concat](declarations/reverse-concat.md) | 305 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `theorem` | [reverse_reverse](declarations/reverse-reverse.md) | 309 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `theorem` | [reverse_surjective](declarations/reverse-surjective.md) | 314 | `BLOCKED_NATIVE_ADMISSION` |
| 51 | `theorem` | [reverse_injective](declarations/reverse-injective.md) | 317 | `BLOCKED_NATIVE_ADMISSION` |
| 52 | `theorem` | [reverse_bijective](declarations/reverse-bijective.md) | 320 | `BLOCKED_NATIVE_ADMISSION` |
| 53 | `theorem` | [length_nil](declarations/length-nil.md) | 324 | `BLOCKED_NATIVE_ADMISSION` |
| 54 | `theorem` | [length_cons](declarations/length-cons.md) | 327 | `BLOCKED_NATIVE_ADMISSION` |
| 55 | `theorem` | [length_copy](declarations/length-copy.md) | 331 | `BLOCKED_NATIVE_ADMISSION` |
| 56 | `theorem` | [length_append](declarations/length-append.md) | 337 | `BLOCKED_NATIVE_ADMISSION` |
| 57 | `theorem` | [length_concat](declarations/length-concat.md) | 344 | `BLOCKED_NATIVE_ADMISSION` |
| 58 | `theorem` | [length_reverseAux](declarations/length-reverseaux.md) | 348 | `BLOCKED_NATIVE_ADMISSION` |
| 59 | `theorem` | [length_reverse](declarations/length-reverse.md) | 355 | `BLOCKED_NATIVE_ADMISSION` |
| 60 | `theorem` | [eq_of_length_eq_zero](declarations/eq-of-length-eq-zero.md) | 357 | `BLOCKED_NATIVE_ADMISSION` |
| 61 | `theorem` | [adj_of_length_eq_one](declarations/adj-of-length-eq-one.md) | 360 | `BLOCKED_NATIVE_ADMISSION` |
| 62 | `theorem` | [exists_length_eq_zero_iff](declarations/exists-length-eq-zero-iff.md) | 364 | `BLOCKED_NATIVE_ADMISSION` |
| 63 | `lemma` | [exists_length_eq_one_iff](declarations/exists-length-eq-one-iff.md) | 372 | `BLOCKED_NATIVE_ADMISSION` |
| 64 | `theorem` | [length_eq_zero_iff](declarations/length-eq-zero-iff.md) | 382 | `BLOCKED_NATIVE_ADMISSION` |
| 65 | `theorem` | [getVert_append](declarations/getvert-append.md) | 384 | `BLOCKED_NATIVE_ADMISSION` |
| 66 | `theorem` | [getVert_reverse](declarations/getvert-reverse.md) | 390 | `BLOCKED_NATIVE_ADMISSION` |
| 67 | `def` | [concatRecAux](declarations/concatrecaux.md) | 412 | `BLOCKED_NATIVE_ADMISSION` |
| 68 | `def` | [concatRec](declarations/concatrec.md) | 421 | `BLOCKED_NATIVE_ADMISSION` |
| 69 | `theorem` | [concatRec_nil](declarations/concatrec-nil.md) | 425 | `BLOCKED_NATIVE_ADMISSION` |
| 70 | `theorem` | [concatRec_concat](declarations/concatrec-concat.md) | 429 | `BLOCKED_NATIVE_ADMISSION` |
| 71 | `theorem` | [concat_ne_nil](declarations/concat-ne-nil.md) | 443 | `BLOCKED_NATIVE_ADMISSION` |
| 72 | `theorem` | [concat_inj](declarations/concat-inj.md) | 446 | `BLOCKED_NATIVE_ADMISSION` |
| 73 | `def` | [support](declarations/support.md) | 472 | `BLOCKED_NATIVE_ADMISSION` |
| 74 | `def` | [darts](declarations/darts.md) | 477 | `BLOCKED_NATIVE_ADMISSION` |
| 75 | `def` | [edges](declarations/edges.md) | 483 | `BLOCKED_NATIVE_ADMISSION` |
| 76 | `theorem` | [support_nil](declarations/support-nil.md) | 486 | `BLOCKED_NATIVE_ADMISSION` |
| 77 | `theorem` | [support_cons](declarations/support-cons.md) | 489 | `BLOCKED_NATIVE_ADMISSION` |
| 78 | `theorem` | [support_concat](declarations/support-concat.md) | 493 | `BLOCKED_NATIVE_ADMISSION` |
| 79 | `theorem` | [support_copy](declarations/support-copy.md) | 498 | `BLOCKED_NATIVE_ADMISSION` |
| 80 | `theorem` | [support_append](declarations/support-append.md) | 503 | `BLOCKED_NATIVE_ADMISSION` |
| 81 | `theorem` | [support_reverse](declarations/support-reverse.md) | 508 | `BLOCKED_NATIVE_ADMISSION` |
| 82 | `theorem` | [support_ne_nil](declarations/support-ne-nil.md) | 512 | `BLOCKED_NATIVE_ADMISSION` |
| 83 | `theorem` | [head_support](declarations/head-support.md) | 515 | `BLOCKED_NATIVE_ADMISSION` |
| 84 | `theorem` | [getLast_support](declarations/getlast-support.md) | 519 | `BLOCKED_NATIVE_ADMISSION` |
| 85 | `theorem` | [tail_support_append](declarations/tail-support-append.md) | 525 | `BLOCKED_NATIVE_ADMISSION` |
| 86 | `theorem` | [support_eq_cons](declarations/support-eq-cons.md) | 529 | `BLOCKED_NATIVE_ADMISSION` |
| 87 | `theorem` | [start_mem_support](declarations/start-mem-support.md) | 533 | `BLOCKED_NATIVE_ADMISSION` |
| 88 | `theorem` | [end_mem_support](declarations/end-mem-support.md) | 536 | `BLOCKED_NATIVE_ADMISSION` |
| 89 | `theorem` | [support_nonempty](declarations/support-nonempty.md) | 539 | `BLOCKED_NATIVE_ADMISSION` |
| 90 | `theorem` | [mem_support_iff](declarations/mem-support-iff.md) | 542 | `BLOCKED_NATIVE_ADMISSION` |
| 91 | `theorem` | [getVert_mem_support](declarations/getvert-mem-support.md) | 546 | `BLOCKED_NATIVE_ADMISSION` |
| 92 | `theorem` | [mem_support_nil_iff](declarations/mem-support-nil-iff.md) | 554 | `BLOCKED_NATIVE_ADMISSION` |
| 93 | `theorem` | [mem_tail_support_append_iff](declarations/mem-tail-support-append-iff.md) | 557 | `BLOCKED_NATIVE_ADMISSION` |
| 94 | `theorem` | [end_mem_tail_support_of_ne](declarations/end-mem-tail-support-of-ne.md) | 562 | `BLOCKED_NATIVE_ADMISSION` |
| 95 | `theorem` | [mem_support_append_iff](declarations/mem-support-append-iff.md) | 567 | `BLOCKED_NATIVE_ADMISSION` |
| 96 | `theorem` | [subset_support_append_left](declarations/subset-support-append-left.md) | 575 | `BLOCKED_NATIVE_ADMISSION` |
| 97 | `theorem` | [subset_support_append_right](declarations/subset-support-append-right.md) | 580 | `BLOCKED_NATIVE_ADMISSION` |
| 98 | `lemma` | [getVert_eq_support_get?](declarations/getvert-eq-support-get.md) | 585 | `BLOCKED_NATIVE_ADMISSION` |
| 99 | `theorem` | [coe_support](declarations/coe-support.md) | 599 | `BLOCKED_NATIVE_ADMISSION` |
| 100 | `theorem` | [coe_support_append](declarations/coe-support-append.md) | 602 | `BLOCKED_NATIVE_ADMISSION` |
| 101 | `theorem` | [coe_support_append'](declarations/coe-support-append-source-edition-2.md) | 606 | `BLOCKED_NATIVE_ADMISSION` |
| 102 | `theorem` | [chain_adj_support](declarations/chain-adj-support.md) | 613 | `BLOCKED_NATIVE_ADMISSION` |
| 103 | `theorem` | [chain'_adj_support](declarations/chain-adj-support-source-edition-2.md) | 618 | `BLOCKED_NATIVE_ADMISSION` |
| 104 | `theorem` | [chain_dartAdj_darts](declarations/chain-dartadj-darts.md) | 622 | `BLOCKED_NATIVE_ADMISSION` |
| 105 | `theorem` | [chain'_dartAdj_darts](declarations/chain-dartadj-darts-source-edition-2.md) | 628 | `BLOCKED_NATIVE_ADMISSION` |
| 106 | `theorem` | [edges_subset_edgeSet](declarations/edges-subset-edgeset.md) | 635 | `BLOCKED_NATIVE_ADMISSION` |
| 107 | `theorem` | [adj_of_mem_edges](declarations/adj-of-mem-edges.md) | 642 | `BLOCKED_NATIVE_ADMISSION` |
| 108 | `theorem` | [darts_nil](declarations/darts-nil.md) | 646 | `BLOCKED_NATIVE_ADMISSION` |
| 109 | `theorem` | [darts_cons](declarations/darts-cons.md) | 649 | `BLOCKED_NATIVE_ADMISSION` |
| 110 | `theorem` | [darts_concat](declarations/darts-concat.md) | 653 | `BLOCKED_NATIVE_ADMISSION` |
| 111 | `theorem` | [darts_copy](declarations/darts-copy.md) | 658 | `BLOCKED_NATIVE_ADMISSION` |
| 112 | `theorem` | [darts_append](declarations/darts-append.md) | 664 | `BLOCKED_NATIVE_ADMISSION` |
| 113 | `theorem` | [darts_reverse](declarations/darts-reverse.md) | 669 | `BLOCKED_NATIVE_ADMISSION` |
| 114 | `theorem` | [mem_darts_reverse](declarations/mem-darts-reverse.md) | 673 | `BLOCKED_NATIVE_ADMISSION` |
| 115 | `theorem` | [cons_map_snd_darts](declarations/cons-map-snd-darts.md) | 676 | `BLOCKED_NATIVE_ADMISSION` |
| 116 | `theorem` | [map_snd_darts](declarations/map-snd-darts.md) | 679 | `BLOCKED_NATIVE_ADMISSION` |
| 117 | `theorem` | [map_fst_darts_append](declarations/map-fst-darts-append.md) | 682 | `BLOCKED_NATIVE_ADMISSION` |
| 118 | `theorem` | [map_fst_darts](declarations/map-fst-darts.md) | 686 | `BLOCKED_NATIVE_ADMISSION` |
| 119 | `theorem` | [head_darts_fst](declarations/head-darts-fst.md) | 690 | `BLOCKED_NATIVE_ADMISSION` |
| 120 | `theorem` | [getLast_darts_snd](declarations/getlast-darts-snd.md) | 697 | `BLOCKED_NATIVE_ADMISSION` |
| 121 | `theorem` | [edges_nil](declarations/edges-nil.md) | 704 | `BLOCKED_NATIVE_ADMISSION` |
| 122 | `theorem` | [edges_cons](declarations/edges-cons.md) | 707 | `BLOCKED_NATIVE_ADMISSION` |
| 123 | `theorem` | [edges_concat](declarations/edges-concat.md) | 711 | `BLOCKED_NATIVE_ADMISSION` |
| 124 | `theorem` | [edges_copy](declarations/edges-copy.md) | 715 | `BLOCKED_NATIVE_ADMISSION` |
| 125 | `theorem` | [edges_append](declarations/edges-append.md) | 721 | `BLOCKED_NATIVE_ADMISSION` |
| 126 | `theorem` | [edges_reverse](declarations/edges-reverse.md) | 725 | `BLOCKED_NATIVE_ADMISSION` |
| 127 | `theorem` | [length_support](declarations/length-support.md) | 729 | `BLOCKED_NATIVE_ADMISSION` |
| 128 | `theorem` | [length_darts](declarations/length-darts.md) | 733 | `BLOCKED_NATIVE_ADMISSION` |
| 129 | `theorem` | [length_edges](declarations/length-edges.md) | 737 | `BLOCKED_NATIVE_ADMISSION` |
| 130 | `theorem` | [dart_fst_mem_support_of_mem_darts](declarations/dart-fst-mem-support-of-mem-darts.md) | 739 | `BLOCKED_NATIVE_ADMISSION` |
| 131 | `theorem` | [dart_snd_mem_support_of_mem_darts](declarations/dart-snd-mem-support-of-mem-darts.md) | 747 | `BLOCKED_NATIVE_ADMISSION` |
| 132 | `theorem` | [fst_mem_support_of_mem_edges](declarations/fst-mem-support-of-mem-edges.md) | 751 | `BLOCKED_NATIVE_ADMISSION` |
| 133 | `theorem` | [snd_mem_support_of_mem_edges](declarations/snd-mem-support-of-mem-edges.md) | 759 | `BLOCKED_NATIVE_ADMISSION` |
| 134 | `theorem` | [darts_nodup_of_support_nodup](declarations/darts-nodup-of-support-nodup.md) | 764 | `BLOCKED_NATIVE_ADMISSION` |
| 135 | `theorem` | [edges_nodup_of_support_nodup](declarations/edges-nodup-of-support-nodup.md) | 772 | `BLOCKED_NATIVE_ADMISSION` |
| 136 | `theorem` | [nodup_tail_support_reverse](declarations/nodup-tail-support-reverse.md) | 780 | `BLOCKED_NATIVE_ADMISSION` |
| 137 | `theorem` | [edges_injective](declarations/edges-injective.md) | 788 | `BLOCKED_NATIVE_ADMISSION` |
| 138 | `theorem` | [darts_injective](declarations/darts-injective.md) | 798 | `BLOCKED_NATIVE_ADMISSION` |
| 139 | `def` | [edgeSet](declarations/edgeset.md) | 802 | `BLOCKED_NATIVE_ADMISSION` |
| 140 | `lemma` | [mem_edgeSet](declarations/mem-edgeset.md) | 805 | `BLOCKED_NATIVE_ADMISSION` |
| 141 | `lemma` | [edgeSet_nil](declarations/edgeset-nil.md) | 808 | `BLOCKED_NATIVE_ADMISSION` |
| 142 | `lemma` | [edgeSet_reverse](declarations/edgeset-reverse.md) | 811 | `BLOCKED_NATIVE_ADMISSION` |
| 143 | `theorem` | [edgeSet_cons](declarations/edgeset-cons.md) | 814 | `BLOCKED_NATIVE_ADMISSION` |
| 144 | `theorem` | [edgeSet_concat](declarations/edgeset-concat.md) | 818 | `BLOCKED_NATIVE_ADMISSION` |
| 145 | `theorem` | [edgeSet_append](declarations/edgeset-append.md) | 821 | `BLOCKED_NATIVE_ADMISSION` |
| 146 | `theorem` | [edgeSet_copy](declarations/edgeset-copy.md) | 825 | `BLOCKED_NATIVE_ADMISSION` |
| 147 | `theorem` | [coe_edges_toFinset](declarations/coe-edges-tofinset.md) | 828 | `BLOCKED_NATIVE_ADMISSION` |
| 148 | `inductive` | [Nil](declarations/nil-source-edition-2.md) | 836 | `BLOCKED_NATIVE_ADMISSION` |
| 149 | `lemma` | [nil_nil](declarations/nil-nil.md) | 841 | `BLOCKED_NATIVE_ADMISSION` |
| 150 | `lemma` | [not_nil_cons](declarations/not-nil-cons.md) | 843 | `BLOCKED_NATIVE_ADMISSION` |
| 151 | `instance` | [(anonymous)](declarations/instance.md) | 845 | `BLOCKED_NATIVE_ADMISSION` |
| 152 | `lemma` | [Nil.eq](declarations/nil-eq.md) | 850 | `BLOCKED_NATIVE_ADMISSION` |
| 153 | `lemma` | [not_nil_of_ne](declarations/not-nil-of-ne.md) | 852 | `BLOCKED_NATIVE_ADMISSION` |
| 154 | `lemma` | [nil_iff_support_eq](declarations/nil-iff-support-eq.md) | 854 | `BLOCKED_NATIVE_ADMISSION` |
| 155 | `lemma` | [nil_iff_length_eq](declarations/nil-iff-length-eq.md) | 857 | `BLOCKED_NATIVE_ADMISSION` |
| 156 | `lemma` | [not_nil_iff_lt_length](declarations/not-nil-iff-lt-length.md) | 860 | `BLOCKED_NATIVE_ADMISSION` |
| 157 | `lemma` | [not_nil_iff](declarations/not-nil-iff.md) | 863 | `BLOCKED_NATIVE_ADMISSION` |
| 158 | `lemma` | [nil_append_iff](declarations/nil-append-iff.md) | 868 | `BLOCKED_NATIVE_ADMISSION` |
| 159 | `lemma` | [Nil.append](declarations/nil-append-source-edition-2.md) | 871 | `BLOCKED_NATIVE_ADMISSION` |
| 160 | `lemma` | [nil_reverse](declarations/nil-reverse.md) | 875 | `BLOCKED_NATIVE_ADMISSION` |
| 161 | `lemma` | [nil_iff_eq_nil](declarations/nil-iff-eq-nil.md) | 879 | `BLOCKED_NATIVE_ADMISSION` |
| 162 | `def` | [notNilRec](declarations/notnilrec.md) | 886 | `BLOCKED_NATIVE_ADMISSION` |
| 163 | `lemma` | [notNilRec_cons](declarations/notnilrec-cons.md) | 894 | `BLOCKED_NATIVE_ADMISSION` |
| 164 | `theorem` | [end_mem_tail_support](declarations/end-mem-tail-support.md) | 899 | `BLOCKED_NATIVE_ADMISSION` |
| 165 | `def` | [drop](declarations/drop.md) | 903 | `BLOCKED_NATIVE_ADMISSION` |
| 166 | `abbrev` | [snd](declarations/snd.md) | 910 | `BLOCKED_NATIVE_ADMISSION` |
| 167 | `lemma` | [adj_snd](declarations/adj-snd.md) | 912 | `BLOCKED_NATIVE_ADMISSION` |
| 168 | `lemma` | [snd_cons](declarations/snd-cons.md) | 916 | `BLOCKED_NATIVE_ADMISSION` |
| 169 | `def` | [take](declarations/take.md) | 920 | `BLOCKED_NATIVE_ADMISSION` |
| 170 | `abbrev` | [penultimate](declarations/penultimate.md) | 927 | `BLOCKED_NATIVE_ADMISSION` |
| 171 | `lemma` | [penultimate_nil](declarations/penultimate-nil.md) | 930 | `BLOCKED_NATIVE_ADMISSION` |
| 172 | `lemma` | [penultimate_cons_nil](declarations/penultimate-cons-nil.md) | 933 | `BLOCKED_NATIVE_ADMISSION` |
| 173 | `lemma` | [penultimate_cons_cons](declarations/penultimate-cons-cons.md) | 936 | `BLOCKED_NATIVE_ADMISSION` |
| 174 | `lemma` | [penultimate_cons_of_not_nil](declarations/penultimate-cons-of-not-nil.md) | 939 | `BLOCKED_NATIVE_ADMISSION` |
| 175 | `lemma` | [penultimate_concat](declarations/penultimate-concat.md) | 944 | `BLOCKED_NATIVE_ADMISSION` |
| 176 | `lemma` | [adj_penultimate](declarations/adj-penultimate.md) | 948 | `BLOCKED_NATIVE_ADMISSION` |
| 177 | `lemma` | [snd_reverse](declarations/snd-reverse.md) | 955 | `BLOCKED_NATIVE_ADMISSION` |
| 178 | `lemma` | [penultimate_reverse](declarations/penultimate-reverse.md) | 959 | `BLOCKED_NATIVE_ADMISSION` |
| 179 | `def` | [tail](declarations/tail.md) | 963 | `BLOCKED_NATIVE_ADMISSION` |
| 180 | `def` | [dropLast](declarations/droplast.md) | 966 | `BLOCKED_NATIVE_ADMISSION` |
| 181 | `lemma` | [tail_nil](declarations/tail-nil.md) | 969 | `BLOCKED_NATIVE_ADMISSION` |
| 182 | `lemma` | [tail_cons_nil](declarations/tail-cons-nil.md) | 972 | `BLOCKED_NATIVE_ADMISSION` |
| 183 | `lemma` | [tail_cons_eq](declarations/tail-cons-eq.md) | 974 | `BLOCKED_NATIVE_ADMISSION` |
| 184 | `lemma` | [dropLast_nil](declarations/droplast-nil.md) | 981 | `BLOCKED_NATIVE_ADMISSION` |
| 185 | `lemma` | [dropLast_cons_nil](declarations/droplast-cons-nil.md) | 984 | `BLOCKED_NATIVE_ADMISSION` |
| 186 | `lemma` | [dropLast_cons_cons](declarations/droplast-cons-cons.md) | 987 | `BLOCKED_NATIVE_ADMISSION` |
| 187 | `lemma` | [dropLast_cons_of_not_nil](declarations/droplast-cons-of-not-nil.md) | 990 | `BLOCKED_NATIVE_ADMISSION` |
| 188 | `lemma` | [dropLast_concat](declarations/droplast-concat.md) | 995 | `BLOCKED_NATIVE_ADMISSION` |
| 189 | `def` | [firstDart](declarations/firstdart.md) | 1006 | `BLOCKED_NATIVE_ADMISSION` |
| 190 | `def` | [lastDart](declarations/lastdart.md) | 1013 | `BLOCKED_NATIVE_ADMISSION` |
| 191 | `lemma` | [edge_firstDart](declarations/edge-firstdart.md) | 1018 | `BLOCKED_NATIVE_ADMISSION` |
| 192 | `lemma` | [edge_lastDart](declarations/edge-lastdart.md) | 1021 | `BLOCKED_NATIVE_ADMISSION` |
| 193 | `lemma` | [cons_tail_eq](declarations/cons-tail-eq.md) | 1026 | `BLOCKED_NATIVE_ADMISSION` |
| 194 | `lemma` | [concat_dropLast](declarations/concat-droplast.md) | 1034 | `BLOCKED_NATIVE_ADMISSION` |
| 195 | `lemma` | [cons_support_tail](declarations/cons-support-tail.md) | 1043 | `BLOCKED_NATIVE_ADMISSION` |
| 196 | `lemma` | [length_tail_add_one](declarations/length-tail-add-one.md) | 1047 | `BLOCKED_NATIVE_ADMISSION` |
| 197 | `lemma` | [Nil.tail](declarations/nil-tail.md) | 1051 | `BLOCKED_NATIVE_ADMISSION` |
| 198 | `lemma` | [not_nil_of_tail_not_nil](declarations/not-nil-of-tail-not-nil.md) | 1053 | `BLOCKED_NATIVE_ADMISSION` |
| 199 | `lemma` | [nil_copy](declarations/nil-copy.md) | 1055 | `BLOCKED_NATIVE_ADMISSION` |
| 200 | `lemma` | [support_tail](declarations/support-tail.md) | 1059 | `BLOCKED_NATIVE_ADMISSION` |
| 201 | `lemma` | [tail_cons](declarations/tail-cons.md) | 1064 | `BLOCKED_NATIVE_ADMISSION` |
| 202 | `lemma` | [support_tail_of_not_nil](declarations/support-tail-of-not-nil.md) | 1070 | `BLOCKED_NATIVE_ADMISSION` |
| 203 | `theorem` | [exists_boundary_dart](declarations/exists-boundary-dart.md) | 1079 | `BLOCKED_NATIVE_ADMISSION` |
| 204 | `lemma` | [getVert_copy](declarations/getvert-copy.md) | 1090 | `BLOCKED_NATIVE_ADMISSION` |
| 205 | `lemma` | [getVert_tail](declarations/getvert-tail.md) | 1095 | `BLOCKED_NATIVE_ADMISSION` |
| 206 | `def` | [map](declarations/map.md) | 1111 | `BLOCKED_NATIVE_ADMISSION` |
| 207 | `theorem` | [map_nil](declarations/map-nil.md) | 1118 | `BLOCKED_NATIVE_ADMISSION` |
| 208 | `theorem` | [map_cons](declarations/map-cons.md) | 1121 | `BLOCKED_NATIVE_ADMISSION` |
| 209 | `theorem` | [map_copy](declarations/map-copy.md) | 1124 | `BLOCKED_NATIVE_ADMISSION` |
| 210 | `theorem` | [map_id](declarations/map-id.md) | 1130 | `BLOCKED_NATIVE_ADMISSION` |
| 211 | `theorem` | [map_map](declarations/map-map.md) | 1136 | `BLOCKED_NATIVE_ADMISSION` |
| 212 | `theorem` | [map_eq_of_eq](declarations/map-eq-of-eq.md) | 1143 | `BLOCKED_NATIVE_ADMISSION` |
| 213 | `theorem` | [map_eq_nil_iff](declarations/map-eq-nil-iff.md) | 1149 | `BLOCKED_NATIVE_ADMISSION` |
| 214 | `theorem` | [length_map](declarations/length-map.md) | 1152 | `BLOCKED_NATIVE_ADMISSION` |
| 215 | `theorem` | [map_append](declarations/map-append.md) | 1154 | `BLOCKED_NATIVE_ADMISSION` |
| 216 | `theorem` | [reverse_map](declarations/reverse-map.md) | 1158 | `BLOCKED_NATIVE_ADMISSION` |
| 217 | `theorem` | [support_map](declarations/support-map.md) | 1161 | `BLOCKED_NATIVE_ADMISSION` |
| 218 | `theorem` | [darts_map](declarations/darts-map.md) | 1164 | `BLOCKED_NATIVE_ADMISSION` |
| 219 | `theorem` | [edges_map](declarations/edges-map.md) | 1167 | `BLOCKED_NATIVE_ADMISSION` |
| 220 | `theorem` | [edgeSet_map](declarations/edgeset-map.md) | 1175 | `BLOCKED_NATIVE_ADMISSION` |
| 221 | `theorem` | [map_injective_of_injective](declarations/map-injective-of-injective.md) | 1177 | `BLOCKED_NATIVE_ADMISSION` |
| 222 | `abbrev` | [mapLe](declarations/maple.md) | 1196 | `BLOCKED_NATIVE_ADMISSION` |
| 223 | `def` | [transfer](declarations/transfer.md) | 1203 | `BLOCKED_NATIVE_ADMISSION` |
| 224 | `theorem` | [transfer_self](declarations/transfer-self.md) | 1212 | `BLOCKED_NATIVE_ADMISSION` |
| 225 | `theorem` | [transfer_eq_map_ofLE](declarations/transfer-eq-map-ofle.md) | 1217 | `BLOCKED_NATIVE_ADMISSION` |
| 226 | `theorem` | [edges_transfer](declarations/edges-transfer.md) | 1223 | `BLOCKED_NATIVE_ADMISSION` |
| 227 | `theorem` | [edgeSet_transfer](declarations/edgeset-transfer.md) | 1227 | `BLOCKED_NATIVE_ADMISSION` |
| 228 | `theorem` | [support_transfer](declarations/support-transfer.md) | 1230 | `BLOCKED_NATIVE_ADMISSION` |
| 229 | `theorem` | [length_transfer](declarations/length-transfer.md) | 1234 | `BLOCKED_NATIVE_ADMISSION` |
| 230 | `theorem` | [transfer_transfer](declarations/transfer-transfer.md) | 1238 | `BLOCKED_NATIVE_ADMISSION` |
| 231 | `theorem` | [transfer_append](declarations/transfer-append.md) | 1247 | `BLOCKED_NATIVE_ADMISSION` |
| 232 | `theorem` | [reverse_transfer](declarations/reverse-transfer.md) | 1256 | `BLOCKED_NATIVE_ADMISSION` |
| 233 | `abbrev` | [toDeleteEdges](declarations/todeleteedges.md) | 1273 | `BLOCKED_NATIVE_ADMISSION` |
| 234 | `theorem` | [toDeleteEdges_nil](declarations/todeleteedges-nil.md) | 1280 | `BLOCKED_NATIVE_ADMISSION` |
| 235 | `theorem` | [toDeleteEdges_cons](declarations/todeleteedges-cons.md) | 1284 | `BLOCKED_NATIVE_ADMISSION` |
| 236 | `abbrev` | [toDeleteEdge](declarations/todeleteedge.md) | 1294 | `BLOCKED_NATIVE_ADMISSION` |
| 237 | `theorem` | [map_toDeleteEdges_eq](declarations/map-todeleteedges-eq.md) | 1299 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=3c5a1681aca6ba84ad615625cfde2f064ebfa813496c1d819b241c4f27708a4c -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Walk/Variantd816791aaeac6b28f6975acd932e19f8c6ac120af451c633dffa60dbf791efff.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
