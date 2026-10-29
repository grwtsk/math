# Affine Subspace Defs Public

[Complete source index](../../../complete-source-index.md) · [Up one directory](../../../complete-source-index.md) · [Full source](source.md)

**164 observed declarations and anonymous commands**, 139 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Geometry/ConvexGeometry/Defs/Variant0a043ac5e4e0f365488fe0888d0f769175856e46943d00b59c39d661fd8ba799.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `27a949c5746d98dddc95b9b7dbb6c47fd2de22cd`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineSubspaceDefsPublic.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [vectorSpan](declarations/vectorspan.md) | 63 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `theorem` | [vectorSpan_def](declarations/vectorspan-def.md) | 67 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `theorem` | [vectorSpan_mono](declarations/vectorspan-mono.md) | 71 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `theorem` | [vectorSpan_empty](declarations/vectorspan-empty.md) | 77 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [vectorSpan_singleton](declarations/vectorspan-singleton.md) | 82 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [vsub_set_subset_vectorSpan](declarations/vsub-set-subset-vectorspan.md) | 85 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [vsub_mem_vectorSpan](declarations/vsub-mem-vectorspan.md) | 89 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `lemma` | [vectorSpan_of_subsingleton](declarations/vectorspan-of-subsingleton.md) | 93 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `lemma` | [vectorSpan_eq_bot_iff_subsingleton](declarations/vectorspan-eq-bot-iff-subsingleton.md) | 97 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `def` | [spanPoints](declarations/spanpoints.md) | 107 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [mem_spanPoints](declarations/mem-spanpoints.md) | 111 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [subset_spanPoints](declarations/subset-spanpoints.md) | 115 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [spanPoints_nonempty](declarations/spanpoints-nonempty.md) | 119 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [vadd_mem_spanPoints_of_mem_spanPoints_of_mem_vectorSpan](declarations/vadd-mem-spanpoints-of-mem-spanpoints-of-mem-vectorspan.md) | 129 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [vsub_mem_vectorSpan_of_mem_spanPoints_of_mem_spanPoints](declarations/vsub-mem-vectorspan-of-mem-spanpoints-of-mem-spanpoints.md) | 136 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `structure` | [AffineSubspace](declarations/affinesubspace.md) | 149 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `instance` | [(anonymous)](declarations/instance-source-edition-9.md) | 160 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `instance` | [(anonymous)](declarations/instance-source-edition-11.md) | 164 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `instance` | [(anonymous)](declarations/instance-source-edition-4.md) | 166 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [coe_singleton](declarations/coe-singleton.md) | 171 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [mem_singleton_iff](declarations/mem-singleton-iff.md) | 174 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [notMem_singleton_iff](declarations/notmem-singleton-iff.md) | 177 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [mem_singleton](declarations/mem-singleton.md) | 180 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [eq_of_mem_singleton](declarations/eq-of-mem-singleton.md) | 182 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [singleton_eq_singleton_iff](declarations/singleton-eq-singleton-iff.md) | 186 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `lemma` | [carrier_eq_coe](declarations/carrier-eq-coe.md) | 189 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `lemma` | [smul_vsub_vadd_mem](declarations/smul-vsub-vadd-mem.md) | 191 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [mem_coe](declarations/mem-coe.md) | 197 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [coe_injective](declarations/coe-injective.md) | 200 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [ext](declarations/ext.md) | 204 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [ext_iff](declarations/ext-iff.md) | 207 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `def` | [toAffineSubspace](declarations/toaffinesubspace.md) | 217 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `instance` | [(anonymous)](declarations/instance-source-edition-10.md) | 221 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [mem_toAffineSubspace](declarations/mem-toaffinesubspace.md) | 224 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `lemma` | [vsub_self_of_zero_mem](declarations/vsub-self-of-zero-mem.md) | 234 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `lemma` | [vsub_self_eq_iff_zero_mem](declarations/vsub-self-eq-iff-zero-mem.md) | 242 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `def` | [direction](declarations/direction.md) | 259 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `theorem` | [direction_eq_vectorSpan](declarations/direction-eq-vectorspan.md) | 263 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `theorem` | [direction_singleton](declarations/direction-singleton.md) | 267 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `theorem` | [direction_eq_bot_iff](declarations/direction-eq-bot-iff.md) | 271 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `def` | [directionOfNonempty](declarations/directionofnonempty.md) | 278 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `theorem` | [directionOfNonempty_eq_direction](declarations/directionofnonempty-eq-direction.md) | 297 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `theorem` | [coe_direction_eq_vsub_set](declarations/coe-direction-eq-vsub-set.md) | 305 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `theorem` | [mem_direction_iff_eq_vsub](declarations/mem-direction-iff-eq-vsub.md) | 311 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `theorem` | [vadd_mem_of_mem_direction](declarations/vadd-mem-of-mem-direction.md) | 318 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `theorem` | [vsub_mem_direction](declarations/vsub-mem-direction.md) | 327 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `theorem` | [vadd_mem_iff_mem_direction](declarations/vadd-mem-iff-mem-direction.md) | 333 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `theorem` | [vadd_mem_iff_mem_of_mem_direction](declarations/vadd-mem-iff-mem-of-mem-direction.md) | 339 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `theorem` | [coe_direction_eq_vsub_set_right](declarations/coe-direction-eq-vsub-set-right.md) | 347 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `theorem` | [coe_direction_eq_vsub_set_left](declarations/coe-direction-eq-vsub-set-left.md) | 359 | `BLOCKED_NATIVE_ADMISSION` |
| 51 | `theorem` | [mem_direction_iff_eq_vsub_right](declarations/mem-direction-iff-eq-vsub-right.md) | 371 | `BLOCKED_NATIVE_ADMISSION` |
| 52 | `theorem` | [mem_direction_iff_eq_vsub_left](declarations/mem-direction-iff-eq-vsub-left.md) | 378 | `BLOCKED_NATIVE_ADMISSION` |
| 53 | `lemma` | [direction_eq_self_iff_zero_mem](declarations/direction-eq-self-iff-zero-mem.md) | 384 | `BLOCKED_NATIVE_ADMISSION` |
| 54 | `instance` | [(anonymous)](declarations/instance-source-edition-5.md) | 392 | `BLOCKED_NATIVE_ADMISSION` |
| 55 | `theorem` | [le_of_direction_le](declarations/le-of-direction-le.md) | 395 | `BLOCKED_NATIVE_ADMISSION` |
| 56 | `theorem` | [ext_of_direction_eq](declarations/ext-of-direction-eq.md) | 406 | `BLOCKED_NATIVE_ADMISSION` |
| 57 | `theorem` | [eq_iff_direction_eq_of_mem](declarations/eq-iff-direction-eq-of-mem.md) | 412 | `BLOCKED_NATIVE_ADMISSION` |
| 58 | `def` | [mk'](declarations/mk.md) | 417 | `BLOCKED_NATIVE_ADMISSION` |
| 59 | `theorem` | [mem_mk'](declarations/mem-mk.md) | 426 | `BLOCKED_NATIVE_ADMISSION` |
| 60 | `theorem` | [self_mem_mk'](declarations/self-mem-mk.md) | 430 | `BLOCKED_NATIVE_ADMISSION` |
| 61 | `theorem` | [vadd_mem_mk'](declarations/vadd-mem-mk.md) | 435 | `BLOCKED_NATIVE_ADMISSION` |
| 62 | `theorem` | [mk'_nonempty](declarations/mk-nonempty.md) | 440 | `BLOCKED_NATIVE_ADMISSION` |
| 63 | `instance` | [(anonymous)](declarations/instance-source-edition-8.md) | 443 | `BLOCKED_NATIVE_ADMISSION` |
| 64 | `theorem` | [direction_mk'](declarations/direction-mk.md) | 448 | `BLOCKED_NATIVE_ADMISSION` |
| 65 | `theorem` | [mk'_eq](declarations/mk-eq.md) | 460 | `BLOCKED_NATIVE_ADMISSION` |
| 66 | `theorem` | [spanPoints_subset_coe_of_subset_coe](declarations/spanpoints-subset-coe-of-subset-coe.md) | 464 | `BLOCKED_NATIVE_ADMISSION` |
| 67 | `theorem` | [toAffineSubspace_direction](declarations/toaffinesubspace-direction.md) | 482 | `BLOCKED_NATIVE_ADMISSION` |
| 68 | `def` | [affineSpan](declarations/affinespan.md) | 494 | `BLOCKED_NATIVE_ADMISSION` |
| 69 | `theorem` | [coe_affineSpan](declarations/coe-affinespan.md) | 502 | `BLOCKED_NATIVE_ADMISSION` |
| 70 | `lemma` | [mem_affineSpan_iff_exists](declarations/mem-affinespan-iff-exists.md) | 506 | `BLOCKED_NATIVE_ADMISSION` |
| 71 | `theorem` | [subset_affineSpan](declarations/subset-affinespan.md) | 511 | `BLOCKED_NATIVE_ADMISSION` |
| 72 | `theorem` | [direction_affineSpan](declarations/direction-affinespan.md) | 515 | `BLOCKED_NATIVE_ADMISSION` |
| 73 | `theorem` | [mem_affineSpan](declarations/mem-affinespan.md) | 526 | `BLOCKED_NATIVE_ADMISSION` |
| 74 | `lemma` | [vectorSpan_add_self](declarations/vectorspan-add-self.md) | 530 | `BLOCKED_NATIVE_ADMISSION` |
| 75 | `theorem` | [vadd_mem_affineSpan_of_mem_affineSpan_of_mem_vectorSpan](declarations/vadd-mem-affinespan-of-mem-affinespan-of-mem-vectorspan.md) | 539 | `BLOCKED_NATIVE_ADMISSION` |
| 76 | `theorem` | [vsub_mem_vectorSpan_of_mem_affineSpan_of_mem_affineSpan](declarations/vsub-mem-vectorspan-of-mem-affinespan-of-mem-affinespan.md) | 544 | `BLOCKED_NATIVE_ADMISSION` |
| 77 | `theorem` | [affineSpan_le_of_subset_coe](declarations/affinespan-le-of-subset-coe.md) | 549 | `BLOCKED_NATIVE_ADMISSION` |
| 78 | `instance` | [(anonymous)](declarations/instance-source-edition-7.md) | 560 | `BLOCKED_NATIVE_ADMISSION` |
| 79 | `instance` | [(anonymous)](declarations/instance-source-edition-3.md) | 592 | `BLOCKED_NATIVE_ADMISSION` |
| 80 | `theorem` | [le_def](declarations/le-def-source-edition-2.md) | 596 | `BLOCKED_NATIVE_ADMISSION` |
| 81 | `theorem` | [le_def'](declarations/le-def.md) | 601 | `BLOCKED_NATIVE_ADMISSION` |
| 82 | `theorem` | [lt_def](declarations/lt-def.md) | 605 | `BLOCKED_NATIVE_ADMISSION` |
| 83 | `theorem` | [not_le_iff_exists](declarations/not-le-iff-exists.md) | 610 | `BLOCKED_NATIVE_ADMISSION` |
| 84 | `theorem` | [exists_of_lt](declarations/exists-of-lt.md) | 614 | `BLOCKED_NATIVE_ADMISSION` |
| 85 | `theorem` | [lt_iff_le_and_exists](declarations/lt-iff-le-and-exists.md) | 619 | `BLOCKED_NATIVE_ADMISSION` |
| 86 | `theorem` | [eq_of_direction_eq_of_nonempty_of_le](declarations/eq-of-direction-eq-of-nonempty-of-le.md) | 625 | `BLOCKED_NATIVE_ADMISSION` |
| 87 | `instance` | [nonempty_sup_left](declarations/nonempty-sup-left.md) | 630 | `BLOCKED_NATIVE_ADMISSION` |
| 88 | `instance` | [nonempty_sup_right](declarations/nonempty-sup-right.md) | 634 | `BLOCKED_NATIVE_ADMISSION` |
| 89 | `theorem` | [affineSpan_eq_sInf](declarations/affinespan-eq-sinf.md) | 641 | `BLOCKED_NATIVE_ADMISSION` |
| 90 | `def` | [gi](declarations/gi.md) | 649 | `BLOCKED_NATIVE_ADMISSION` |
| 91 | `theorem` | [span_empty](declarations/span-empty.md) | 658 | `BLOCKED_NATIVE_ADMISSION` |
| 92 | `theorem` | [span_univ](declarations/span-univ.md) | 663 | `BLOCKED_NATIVE_ADMISSION` |
| 93 | `theorem` | [_root_.affineSpan_le](declarations/root-affinespan-le.md) | 668 | `BLOCKED_NATIVE_ADMISSION` |
| 94 | `theorem` | [span_union](declarations/span-union.md) | 675 | `BLOCKED_NATIVE_ADMISSION` |
| 95 | `theorem` | [span_iUnion](declarations/span-iunion.md) | 679 | `BLOCKED_NATIVE_ADMISSION` |
| 96 | `theorem` | [top_coe](declarations/top-coe.md) | 686 | `BLOCKED_NATIVE_ADMISSION` |
| 97 | `theorem` | [mem_top](declarations/mem-top.md) | 691 | `BLOCKED_NATIVE_ADMISSION` |
| 98 | `lemma` | [mk'_top](declarations/mk-top.md) | 694 | `BLOCKED_NATIVE_ADMISSION` |
| 99 | `theorem` | [direction_top](declarations/direction-top.md) | 702 | `BLOCKED_NATIVE_ADMISSION` |
| 100 | `theorem` | [bot_coe](declarations/bot-coe.md) | 712 | `BLOCKED_NATIVE_ADMISSION` |
| 101 | `theorem` | [bot_ne_top](declarations/bot-ne-top.md) | 715 | `BLOCKED_NATIVE_ADMISSION` |
| 102 | `instance` | [(anonymous)](declarations/instance-source-edition-2.md) | 720 | `BLOCKED_NATIVE_ADMISSION` |
| 103 | `theorem` | [nonempty_of_affineSpan_eq_top](declarations/nonempty-of-affinespan-eq-top.md) | 723 | `BLOCKED_NATIVE_ADMISSION` |
| 104 | `theorem` | [vectorSpan_eq_top_of_affineSpan_eq_top](declarations/vectorspan-eq-top-of-affinespan-eq-top.md) | 730 | `BLOCKED_NATIVE_ADMISSION` |
| 105 | `theorem` | [affineSpan_eq_top_iff_vectorSpan_eq_top_of_nonempty](declarations/affinespan-eq-top-iff-vectorspan-eq-top-of-nonempty.md) | 734 | `BLOCKED_NATIVE_ADMISSION` |
| 106 | `theorem` | [affineSpan_eq_top_iff_vectorSpan_eq_top_of_nontrivial](declarations/affinespan-eq-top-iff-vectorspan-eq-top-of-nontrivial.md) | 745 | `BLOCKED_NATIVE_ADMISSION` |
| 107 | `theorem` | [card_pos_of_affineSpan_eq_top](declarations/card-pos-of-affinespan-eq-top.md) | 751 | `BLOCKED_NATIVE_ADMISSION` |
| 108 | `instance` | [(anonymous)](declarations/instance.md) | 757 | `BLOCKED_NATIVE_ADMISSION` |
| 109 | `theorem` | [notMem_bot](declarations/notmem-bot.md) | 762 | `BLOCKED_NATIVE_ADMISSION` |
| 110 | `instance` | [isEmpty_bot](declarations/isempty-bot.md) | 765 | `BLOCKED_NATIVE_ADMISSION` |
| 111 | `theorem` | [direction_bot](declarations/direction-bot.md) | 772 | `BLOCKED_NATIVE_ADMISSION` |
| 112 | `theorem` | [coe_eq_bot_iff](declarations/coe-eq-bot-iff.md) | 778 | `BLOCKED_NATIVE_ADMISSION` |
| 113 | `theorem` | [coe_eq_univ_iff](declarations/coe-eq-univ-iff.md) | 782 | `BLOCKED_NATIVE_ADMISSION` |
| 114 | `theorem` | [nonempty_iff_ne_bot](declarations/nonempty-iff-ne-bot.md) | 785 | `BLOCKED_NATIVE_ADMISSION` |
| 115 | `theorem` | [eq_bot_or_nonempty](declarations/eq-bot-or-nonempty.md) | 789 | `BLOCKED_NATIVE_ADMISSION` |
| 116 | `instance` | [(anonymous)](declarations/instance-source-edition-13.md) | 793 | `BLOCKED_NATIVE_ADMISSION` |
| 117 | `theorem` | [direction_eq_top_iff_of_nonempty](declarations/direction-eq-top-iff-of-nonempty.md) | 802 | `BLOCKED_NATIVE_ADMISSION` |
| 118 | `theorem` | [coe_inf](declarations/coe-inf.md) | 815 | `BLOCKED_NATIVE_ADMISSION` |
| 119 | `theorem` | [mem_inf_iff](declarations/mem-inf-iff.md) | 819 | `BLOCKED_NATIVE_ADMISSION` |
| 120 | `theorem` | [direction_inf](declarations/direction-inf.md) | 824 | `BLOCKED_NATIVE_ADMISSION` |
| 121 | `theorem` | [direction_inf_of_mem](declarations/direction-inf-of-mem.md) | 833 | `BLOCKED_NATIVE_ADMISSION` |
| 122 | `theorem` | [direction_inf_of_mem_inf](declarations/direction-inf-of-mem-inf.md) | 841 | `BLOCKED_NATIVE_ADMISSION` |
| 123 | `theorem` | [coe_sInf](declarations/coe-sinf.md) | 846 | `BLOCKED_NATIVE_ADMISSION` |
| 124 | `theorem` | [mem_sInf_iff](declarations/mem-sinf-iff.md) | 850 | `BLOCKED_NATIVE_ADMISSION` |
| 125 | `theorem` | [direction_sInf](declarations/direction-sinf.md) | 853 | `BLOCKED_NATIVE_ADMISSION` |
| 126 | `theorem` | [direction_sInf_of_mem](declarations/direction-sinf-of-mem.md) | 858 | `BLOCKED_NATIVE_ADMISSION` |
| 127 | `theorem` | [direction_sInf_of_mem_sInf](declarations/direction-sinf-of-mem-sinf.md) | 868 | `BLOCKED_NATIVE_ADMISSION` |
| 128 | `theorem` | [coe_iInf](declarations/coe-iinf.md) | 873 | `BLOCKED_NATIVE_ADMISSION` |
| 129 | `theorem` | [mem_iInf_iff](declarations/mem-iinf-iff.md) | 877 | `BLOCKED_NATIVE_ADMISSION` |
| 130 | `theorem` | [direction_iInf](declarations/direction-iinf.md) | 880 | `BLOCKED_NATIVE_ADMISSION` |
| 131 | `theorem` | [direction_iInf_of_mem](declarations/direction-iinf-of-mem.md) | 885 | `BLOCKED_NATIVE_ADMISSION` |
| 132 | `theorem` | [direction_iInf_of_mem_iInf](declarations/direction-iinf-of-mem-iinf.md) | 890 | `BLOCKED_NATIVE_ADMISSION` |
| 133 | `theorem` | [direction_le](declarations/direction-le.md) | 896 | `BLOCKED_NATIVE_ADMISSION` |
| 134 | `theorem` | [sup_direction_le](declarations/sup-direction-le.md) | 902 | `BLOCKED_NATIVE_ADMISSION` |
| 135 | `theorem` | [sup_direction_lt_of_nonempty_of_inter_empty](declarations/sup-direction-lt-of-nonempty-of-inter-empty.md) | 912 | `BLOCKED_NATIVE_ADMISSION` |
| 136 | `theorem` | [inter_nonempty_of_nonempty_of_sup_direction_eq_top](declarations/inter-nonempty-of-nonempty-of-sup-direction-eq-top.md) | 933 | `BLOCKED_NATIVE_ADMISSION` |
| 137 | `theorem` | [inter_eq_singleton_of_nonempty_of_isCompl](declarations/inter-eq-singleton-of-nonempty-of-iscompl.md) | 944 | `BLOCKED_NATIVE_ADMISSION` |
| 138 | `theorem` | [affineSpan_coe](declarations/affinespan-coe.md) | 960 | `BLOCKED_NATIVE_ADMISSION` |
| 139 | `theorem` | [mk'_le_mk'_iff](declarations/mk-le-mk-iff.md) | 966 | `BLOCKED_NATIVE_ADMISSION` |
| 140 | `theorem` | [mk'_strictMono](declarations/mk-strictmono.md) | 971 | `BLOCKED_NATIVE_ADMISSION` |
| 141 | `theorem` | [affineSpan_nonempty](declarations/affinespan-nonempty.md) | 988 | `BLOCKED_NATIVE_ADMISSION` |
| 142 | `instance` | [(anonymous)](declarations/instance-source-edition-12.md) | 994 | `BLOCKED_NATIVE_ADMISSION` |
| 143 | `instance` | [(anonymous)](declarations/instance-source-edition-6.md) | 998 | `BLOCKED_NATIVE_ADMISSION` |
| 144 | `theorem` | [affineSpan_eq_bot](declarations/affinespan-eq-bot.md) | 1003 | `BLOCKED_NATIVE_ADMISSION` |
| 145 | `theorem` | [bot_lt_affineSpan](declarations/bot-lt-affinespan.md) | 1008 | `BLOCKED_NATIVE_ADMISSION` |
| 146 | `lemma` | [affineSpan_eq_top_iff_nonempty_of_subsingleton](declarations/affinespan-eq-top-iff-nonempty-of-subsingleton.md) | 1013 | `BLOCKED_NATIVE_ADMISSION` |
| 147 | `theorem` | [affineSpan_induction](declarations/affinespan-induction-source-edition-2.md) | 1024 | `BLOCKED_NATIVE_ADMISSION` |
| 148 | `theorem` | [affineSpan_induction'](declarations/affinespan-induction.md) | 1031 | `BLOCKED_NATIVE_ADMISSION` |
| 149 | `theorem` | [vsub_mem_vectorSpan_pair](declarations/vsub-mem-vectorspan-pair.md) | 1051 | `BLOCKED_NATIVE_ADMISSION` |
| 150 | `theorem` | [vsub_rev_mem_vectorSpan_pair](declarations/vsub-rev-mem-vectorspan-pair.md) | 1055 | `BLOCKED_NATIVE_ADMISSION` |
| 151 | `theorem` | [smul_vsub_mem_vectorSpan_pair](declarations/smul-vsub-mem-vectorspan-pair.md) | 1061 | `BLOCKED_NATIVE_ADMISSION` |
| 152 | `theorem` | [smul_vsub_rev_mem_vectorSpan_pair](declarations/smul-vsub-rev-mem-vectorspan-pair.md) | 1066 | `BLOCKED_NATIVE_ADMISSION` |
| 153 | `theorem` | [left_mem_affineSpan_pair](declarations/left-mem-affinespan-pair.md) | 1077 | `BLOCKED_NATIVE_ADMISSION` |
| 154 | `theorem` | [right_mem_affineSpan_pair](declarations/right-mem-affinespan-pair.md) | 1081 | `BLOCKED_NATIVE_ADMISSION` |
| 155 | `theorem` | [affineSpan_pair_le_of_mem_of_mem](declarations/affinespan-pair-le-of-mem-of-mem.md) | 1087 | `BLOCKED_NATIVE_ADMISSION` |
| 156 | `theorem` | [affineSpan_pair_le_of_left_mem](declarations/affinespan-pair-le-of-left-mem.md) | 1094 | `BLOCKED_NATIVE_ADMISSION` |
| 157 | `theorem` | [affineSpan_pair_le_of_right_mem](declarations/affinespan-pair-le-of-right-mem.md) | 1100 | `BLOCKED_NATIVE_ADMISSION` |
| 158 | `theorem` | [affineSpan_mono](declarations/affinespan-mono.md) | 1108 | `BLOCKED_NATIVE_ADMISSION` |
| 159 | `theorem` | [affineSpan_insert_affineSpan](declarations/affinespan-insert-affinespan.md) | 1113 | `BLOCKED_NATIVE_ADMISSION` |
| 160 | `theorem` | [affineSpan_insert_eq_affineSpan](declarations/affinespan-insert-eq-affinespan.md) | 1119 | `BLOCKED_NATIVE_ADMISSION` |
| 161 | `theorem` | [vectorSpan_insert_eq_vectorSpan](declarations/vectorspan-insert-eq-vectorspan.md) | 1128 | `BLOCKED_NATIVE_ADMISSION` |
| 162 | `lemma` | [affineSpan_le_toAffineSubspace_span](declarations/affinespan-le-toaffinesubspace-span.md) | 1134 | `BLOCKED_NATIVE_ADMISSION` |
| 163 | `lemma` | [affineSpan_subset_span](declarations/affinespan-subset-span.md) | 1145 | `BLOCKED_NATIVE_ADMISSION` |
| 164 | `lemma` | [affineSpan_insert_zero](declarations/affinespan-insert-zero.md) | 1151 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=74cc7432cc7b6e67953c1ad6b17a6a4beb5821c4bdb29c8511ed297734d72817 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Geometry/ConvexGeometry/Defs/Variant0a043ac5e4e0f365488fe0888d0f769175856e46943d00b59c39d661fd8ba799.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
