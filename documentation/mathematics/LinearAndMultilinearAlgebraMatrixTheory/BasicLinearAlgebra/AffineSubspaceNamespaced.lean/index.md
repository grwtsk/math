# Affine Subspace Namespaced

[Complete source index](../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**204 observed declarations and anonymous commands**, 185 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Geometry/ConvexGeometry/AffineSubspace/Variant8e8ab7f0c29b846101387508ab6900739bd127c8209a662d5231a75f80d614df.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `6c557cf5ad79eb22b8af5075d902d7d3ee0c80f4`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineSubspaceNamespaced.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [vectorSpan](declarations/vectorspan.md) | 69 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `theorem` | [vectorSpan_def](declarations/vectorspan-def.md) | 74 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `theorem` | [vectorSpan_mono](declarations/vectorspan-mono.md) | 79 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `theorem` | [vectorSpan_empty](declarations/vectorspan-empty.md) | 87 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [vectorSpan_singleton](declarations/vectorspan-singleton.md) | 95 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [vsub_set_subset_vectorSpan](declarations/vsub-set-subset-vectorspan.md) | 99 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [vsub_mem_vectorSpan](declarations/vsub-mem-vectorspan.md) | 104 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `def` | [spanPoints](declarations/spanpoints.md) | 111 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [mem_spanPoints](declarations/mem-spanpoints.md) | 116 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [subset_spanPoints](declarations/subset-spanpoints.md) | 121 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [spanPoints_nonempty](declarations/spanpoints-nonempty.md) | 126 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [vadd_mem_spanPoints_of_mem_spanPoints_of_mem_vectorSpan](declarations/vadd-mem-spanpoints-of-mem-spanpoints-of-mem-vectorspan.md) | 137 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [vsub_mem_vectorSpan_of_mem_spanPoints_of_mem_spanPoints](declarations/vsub-mem-vectorspan-of-mem-spanpoints-of-mem-spanpoints.md) | 145 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `structure` | [AffineSubspace](declarations/affinesubspace.md) | 163 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `def` | [toAffineSubspace](declarations/toaffinesubspace.md) | 176 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `instance` | [(anonymous)](declarations/instance.md) | 188 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [mem_coe](declarations/mem-coe.md) | 195 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `def` | [direction](declarations/direction.md) | 206 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [direction_eq_vectorSpan](declarations/direction-eq-vectorspan.md) | 211 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `def` | [directionOfNonempty](declarations/directionofnonempty.md) | 218 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [directionOfNonempty_eq_direction](declarations/directionofnonempty-eq-direction.md) | 240 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [coe_direction_eq_vsub_set](declarations/coe-direction-eq-vsub-set.md) | 249 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [mem_direction_iff_eq_vsub](declarations/mem-direction-iff-eq-vsub.md) | 256 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [vadd_mem_of_mem_direction](declarations/vadd-mem-of-mem-direction.md) | 266 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [vsub_mem_direction](declarations/vsub-mem-direction.md) | 277 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [vadd_mem_iff_mem_direction](declarations/vadd-mem-iff-mem-direction.md) | 284 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [vadd_mem_iff_mem_of_mem_direction](declarations/vadd-mem-iff-mem-of-mem-direction.md) | 291 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [coe_direction_eq_vsub_set_right](declarations/coe-direction-eq-vsub-set-right.md) | 300 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [coe_direction_eq_vsub_set_left](declarations/coe-direction-eq-vsub-set-left.md) | 312 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [mem_direction_iff_eq_vsub_right](declarations/mem-direction-iff-eq-vsub-right.md) | 325 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [mem_direction_iff_eq_vsub_left](declarations/mem-direction-iff-eq-vsub-left.md) | 333 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [vsub_right_mem_direction_iff_mem](declarations/vsub-right-mem-direction-iff-mem.md) | 341 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [vsub_left_mem_direction_iff_mem](declarations/vsub-left-mem-direction-iff-mem.md) | 349 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [coe_injective](declarations/coe-injective.md) | 356 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `theorem` | [ext](declarations/ext.md) | 361 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `theorem` | [ext_iff](declarations/ext-iff.md) | 366 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `theorem` | [ext_of_direction_eq](declarations/ext-of-direction-eq.md) | 371 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `def` | [toAddTorsor](declarations/toaddtorsor.md) | 392 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `theorem` | [coe_vsub](declarations/coe-vsub.md) | 413 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `theorem` | [coe_vadd](declarations/coe-vadd.md) | 418 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `def` | [subtype](declarations/subtype.md) | 424 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `theorem` | [subtype_linear](declarations/subtype-linear.md) | 431 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `theorem` | [subtype_apply](declarations/subtype-apply.md) | 435 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `theorem` | [coeSubtype](declarations/coesubtype.md) | 440 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `theorem` | [injective_subtype](declarations/injective-subtype.md) | 444 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `theorem` | [eq_iff_direction_eq_of_mem](declarations/eq-iff-direction-eq-of-mem.md) | 450 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `def` | [mk'](declarations/mk.md) | 456 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `theorem` | [self_mem_mk'](declarations/self-mem-mk.md) | 467 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `theorem` | [vadd_mem_mk'](declarations/vadd-mem-mk.md) | 473 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `theorem` | [mk'_nonempty](declarations/mk-nonempty.md) | 479 | `BLOCKED_NATIVE_ADMISSION` |
| 51 | `theorem` | [direction_mk'](declarations/direction-mk.md) | 485 | `BLOCKED_NATIVE_ADMISSION` |
| 52 | `theorem` | [mem_mk'_iff_vsub_mem](declarations/mem-mk-iff-vsub-mem.md) | 498 | `BLOCKED_NATIVE_ADMISSION` |
| 53 | `theorem` | [mk'_eq](declarations/mk-eq.md) | 510 | `BLOCKED_NATIVE_ADMISSION` |
| 54 | `theorem` | [spanPoints_subset_coe_of_subset_coe](declarations/spanpoints-subset-coe-of-subset-coe.md) | 515 | `BLOCKED_NATIVE_ADMISSION` |
| 55 | `theorem` | [mem_toAffineSubspace](declarations/mem-toaffinesubspace.md) | 534 | `BLOCKED_NATIVE_ADMISSION` |
| 56 | `theorem` | [toAffineSubspace_direction](declarations/toaffinesubspace-direction.md) | 539 | `BLOCKED_NATIVE_ADMISSION` |
| 57 | `theorem` | [AffineMap.lineMap_mem](declarations/affinemap-linemap-mem.md) | 544 | `BLOCKED_NATIVE_ADMISSION` |
| 58 | `def` | [affineSpan](declarations/affinespan.md) | 558 | `BLOCKED_NATIVE_ADMISSION` |
| 59 | `theorem` | [coe_affineSpan](declarations/coe-affinespan.md) | 568 | `BLOCKED_NATIVE_ADMISSION` |
| 60 | `theorem` | [subset_affineSpan](declarations/subset-affinespan.md) | 573 | `BLOCKED_NATIVE_ADMISSION` |
| 61 | `theorem` | [direction_affineSpan](declarations/direction-affinespan.md) | 578 | `BLOCKED_NATIVE_ADMISSION` |
| 62 | `theorem` | [mem_affineSpan](declarations/mem-affinespan.md) | 590 | `BLOCKED_NATIVE_ADMISSION` |
| 63 | `instance` | [(anonymous)](declarations/instance-source-edition-3.md) | 601 | `BLOCKED_NATIVE_ADMISSION` |
| 64 | `instance` | [(anonymous)](declarations/instance-source-edition-5.md) | 640 | `BLOCKED_NATIVE_ADMISSION` |
| 65 | `theorem` | [le_def](declarations/le-def.md) | 644 | `BLOCKED_NATIVE_ADMISSION` |
| 66 | `theorem` | [le_def'](declarations/le-def-source-edition-2.md) | 650 | `BLOCKED_NATIVE_ADMISSION` |
| 67 | `theorem` | [lt_def](declarations/lt-def.md) | 655 | `BLOCKED_NATIVE_ADMISSION` |
| 68 | `theorem` | [not_le_iff_exists](declarations/not-le-iff-exists.md) | 661 | `BLOCKED_NATIVE_ADMISSION` |
| 69 | `theorem` | [exists_of_lt](declarations/exists-of-lt.md) | 666 | `BLOCKED_NATIVE_ADMISSION` |
| 70 | `theorem` | [lt_iff_le_and_exists](declarations/lt-iff-le-and-exists.md) | 672 | `BLOCKED_NATIVE_ADMISSION` |
| 71 | `theorem` | [eq_of_direction_eq_of_nonempty_of_le](declarations/eq-of-direction-eq-of-nonempty-of-le.md) | 678 | `BLOCKED_NATIVE_ADMISSION` |
| 72 | `theorem` | [affineSpan_eq_sInf](declarations/affinespan-eq-sinf.md) | 687 | `BLOCKED_NATIVE_ADMISSION` |
| 73 | `def` | [gi](declarations/gi.md) | 696 | `BLOCKED_NATIVE_ADMISSION` |
| 74 | `theorem` | [span_empty](declarations/span-empty.md) | 706 | `BLOCKED_NATIVE_ADMISSION` |
| 75 | `theorem` | [span_univ](declarations/span-univ.md) | 712 | `BLOCKED_NATIVE_ADMISSION` |
| 76 | `theorem` | [Affine Subspace Namespaced](declarations/affinespan-le.md) | 718 | `BLOCKED_NATIVE_ADMISSION` |
| 77 | `theorem` | [coe_affineSpan_singleton](declarations/coe-affinespan-singleton.md) | 727 | `BLOCKED_NATIVE_ADMISSION` |
| 78 | `theorem` | [mem_affineSpan_singleton](declarations/mem-affinespan-singleton.md) | 736 | `BLOCKED_NATIVE_ADMISSION` |
| 79 | `theorem` | [preimage_coe_affineSpan_singleton](declarations/preimage-coe-affinespan-singleton.md) | 741 | `BLOCKED_NATIVE_ADMISSION` |
| 80 | `theorem` | [span_union](declarations/span-union.md) | 747 | `BLOCKED_NATIVE_ADMISSION` |
| 81 | `theorem` | [span_iUnion](declarations/span-iunion.md) | 752 | `BLOCKED_NATIVE_ADMISSION` |
| 82 | `theorem` | [top_coe](declarations/top-coe.md) | 761 | `BLOCKED_NATIVE_ADMISSION` |
| 83 | `theorem` | [mem_top](declarations/mem-top.md) | 769 | `BLOCKED_NATIVE_ADMISSION` |
| 84 | `theorem` | [direction_top](declarations/direction-top.md) | 777 | `BLOCKED_NATIVE_ADMISSION` |
| 85 | `theorem` | [bot_coe](declarations/bot-coe.md) | 788 | `BLOCKED_NATIVE_ADMISSION` |
| 86 | `theorem` | [bot_ne_top](declarations/bot-ne-top.md) | 792 | `BLOCKED_NATIVE_ADMISSION` |
| 87 | `instance` | [(anonymous)](declarations/instance-source-edition-2.md) | 798 | `BLOCKED_NATIVE_ADMISSION` |
| 88 | `theorem` | [nonempty_of_affineSpan_eq_top](declarations/nonempty-of-affinespan-eq-top.md) | 801 | `BLOCKED_NATIVE_ADMISSION` |
| 89 | `theorem` | [vectorSpan_eq_top_of_affineSpan_eq_top](declarations/vectorspan-eq-top-of-affinespan-eq-top.md) | 809 | `BLOCKED_NATIVE_ADMISSION` |
| 90 | `theorem` | [affineSpan_eq_top_iff_vectorSpan_eq_top_of_nonempty](declarations/affinespan-eq-top-iff-vectorspan-eq-top-of-nonempty.md) | 814 | `BLOCKED_NATIVE_ADMISSION` |
| 91 | `theorem` | [affineSpan_eq_top_iff_vectorSpan_eq_top_of_nontrivial](declarations/affinespan-eq-top-iff-vectorspan-eq-top-of-nontrivial.md) | 826 | `BLOCKED_NATIVE_ADMISSION` |
| 92 | `theorem` | [card_pos_of_affineSpan_eq_top](declarations/card-pos-of-affinespan-eq-top.md) | 833 | `BLOCKED_NATIVE_ADMISSION` |
| 93 | `theorem` | [not_mem_bot](declarations/not-mem-bot.md) | 842 | `BLOCKED_NATIVE_ADMISSION` |
| 94 | `theorem` | [direction_bot](declarations/direction-bot.md) | 850 | `BLOCKED_NATIVE_ADMISSION` |
| 95 | `theorem` | [coe_eq_bot_iff](declarations/coe-eq-bot-iff.md) | 857 | `BLOCKED_NATIVE_ADMISSION` |
| 96 | `theorem` | [coe_eq_univ_iff](declarations/coe-eq-univ-iff.md) | 862 | `BLOCKED_NATIVE_ADMISSION` |
| 97 | `theorem` | [nonempty_iff_ne_bot](declarations/nonempty-iff-ne-bot.md) | 866 | `BLOCKED_NATIVE_ADMISSION` |
| 98 | `theorem` | [eq_bot_or_nonempty](declarations/eq-bot-or-nonempty.md) | 871 | `BLOCKED_NATIVE_ADMISSION` |
| 99 | `theorem` | [subsingleton_of_subsingleton_span_eq_top](declarations/subsingleton-of-subsingleton-span-eq-top.md) | 876 | `BLOCKED_NATIVE_ADMISSION` |
| 100 | `theorem` | [eq_univ_of_subsingleton_span_eq_top](declarations/eq-univ-of-subsingleton-span-eq-top.md) | 885 | `BLOCKED_NATIVE_ADMISSION` |
| 101 | `theorem` | [direction_eq_top_iff_of_nonempty](declarations/direction-eq-top-iff-of-nonempty.md) | 895 | `BLOCKED_NATIVE_ADMISSION` |
| 102 | `theorem` | [inf_coe](declarations/inf-coe.md) | 909 | `BLOCKED_NATIVE_ADMISSION` |
| 103 | `theorem` | [mem_inf_iff](declarations/mem-inf-iff.md) | 914 | `BLOCKED_NATIVE_ADMISSION` |
| 104 | `theorem` | [direction_inf](declarations/direction-inf.md) | 920 | `BLOCKED_NATIVE_ADMISSION` |
| 105 | `theorem` | [direction_inf_of_mem](declarations/direction-inf-of-mem.md) | 930 | `BLOCKED_NATIVE_ADMISSION` |
| 106 | `theorem` | [direction_inf_of_mem_inf](declarations/direction-inf-of-mem-inf.md) | 939 | `BLOCKED_NATIVE_ADMISSION` |
| 107 | `theorem` | [direction_le](declarations/direction-le.md) | 946 | `BLOCKED_NATIVE_ADMISSION` |
| 108 | `theorem` | [direction_lt_of_nonempty](declarations/direction-lt-of-nonempty.md) | 952 | `BLOCKED_NATIVE_ADMISSION` |
| 109 | `theorem` | [sup_direction_le](declarations/sup-direction-le.md) | 966 | `BLOCKED_NATIVE_ADMISSION` |
| 110 | `theorem` | [sup_direction_lt_of_nonempty_of_inter_empty](declarations/sup-direction-lt-of-nonempty-of-inter-empty.md) | 977 | `BLOCKED_NATIVE_ADMISSION` |
| 111 | `theorem` | [inter_nonempty_of_nonempty_of_sup_direction_eq_top](declarations/inter-nonempty-of-nonempty-of-sup-direction-eq-top.md) | 999 | `BLOCKED_NATIVE_ADMISSION` |
| 112 | `theorem` | [inter_eq_singleton_of_nonempty_of_isCompl](declarations/inter-eq-singleton-of-nonempty-of-iscompl.md) | 1011 | `BLOCKED_NATIVE_ADMISSION` |
| 113 | `theorem` | [affineSpan_coe](declarations/affinespan-coe.md) | 1028 | `BLOCKED_NATIVE_ADMISSION` |
| 114 | `theorem` | [vectorSpan_eq_span_vsub_set_left](declarations/vectorspan-eq-span-vsub-set-left.md) | 1046 | `BLOCKED_NATIVE_ADMISSION` |
| 115 | `theorem` | [vectorSpan_eq_span_vsub_set_right](declarations/vectorspan-eq-span-vsub-set-right.md) | 1060 | `BLOCKED_NATIVE_ADMISSION` |
| 116 | `theorem` | [vectorSpan_eq_span_vsub_set_left_ne](declarations/vectorspan-eq-span-vsub-set-left-ne.md) | 1075 | `BLOCKED_NATIVE_ADMISSION` |
| 117 | `theorem` | [vectorSpan_eq_span_vsub_set_right_ne](declarations/vectorspan-eq-span-vsub-set-right-ne.md) | 1085 | `BLOCKED_NATIVE_ADMISSION` |
| 118 | `theorem` | [vectorSpan_eq_span_vsub_finset_right_ne](declarations/vectorspan-eq-span-vsub-finset-right-ne.md) | 1095 | `BLOCKED_NATIVE_ADMISSION` |
| 119 | `theorem` | [vectorSpan_image_eq_span_vsub_set_left_ne](declarations/vectorspan-image-eq-span-vsub-set-left-ne.md) | 1103 | `BLOCKED_NATIVE_ADMISSION` |
| 120 | `theorem` | [vectorSpan_image_eq_span_vsub_set_right_ne](declarations/vectorspan-image-eq-span-vsub-set-right-ne.md) | 1113 | `BLOCKED_NATIVE_ADMISSION` |
| 121 | `theorem` | [vectorSpan_range_eq_span_range_vsub_left](declarations/vectorspan-range-eq-span-range-vsub-left.md) | 1123 | `BLOCKED_NATIVE_ADMISSION` |
| 122 | `theorem` | [vectorSpan_range_eq_span_range_vsub_right](declarations/vectorspan-range-eq-span-range-vsub-right.md) | 1131 | `BLOCKED_NATIVE_ADMISSION` |
| 123 | `theorem` | [vectorSpan_range_eq_span_range_vsub_left_ne](declarations/vectorspan-range-eq-span-range-vsub-left-ne.md) | 1139 | `BLOCKED_NATIVE_ADMISSION` |
| 124 | `theorem` | [vectorSpan_range_eq_span_range_vsub_right_ne](declarations/vectorspan-range-eq-span-range-vsub-right-ne.md) | 1154 | `BLOCKED_NATIVE_ADMISSION` |
| 125 | `theorem` | [affineSpan_nonempty](declarations/affinespan-nonempty.md) | 1172 | `BLOCKED_NATIVE_ADMISSION` |
| 126 | `instance` | [(anonymous)](declarations/instance-source-edition-4.md) | 1180 | `BLOCKED_NATIVE_ADMISSION` |
| 127 | `theorem` | [affineSpan_eq_bot](declarations/affinespan-eq-bot.md) | 1185 | `BLOCKED_NATIVE_ADMISSION` |
| 128 | `theorem` | [bot_lt_affineSpan](declarations/bot-lt-affinespan.md) | 1191 | `BLOCKED_NATIVE_ADMISSION` |
| 129 | `theorem` | [affineSpan_induction](declarations/affinespan-induction-source-edition-2.md) | 1202 | `BLOCKED_NATIVE_ADMISSION` |
| 130 | `theorem` | [affineSpan_induction'](declarations/affinespan-induction.md) | 1209 | `BLOCKED_NATIVE_ADMISSION` |
| 131 | `theorem` | [affineSpan_coe_preimage_eq_top](declarations/affinespan-coe-preimage-eq-top.md) | 1233 | `BLOCKED_NATIVE_ADMISSION` |
| 132 | `theorem` | [affineSpan_singleton_union_vadd_eq_top_of_span_eq_top](declarations/affinespan-singleton-union-vadd-eq-top-of-span-eq-top.md) | 1248 | `BLOCKED_NATIVE_ADMISSION` |
| 133 | `theorem` | [vectorSpan_pair](declarations/vectorspan-pair.md) | 1265 | `BLOCKED_NATIVE_ADMISSION` |
| 134 | `theorem` | [vectorSpan_pair_rev](declarations/vectorspan-pair-rev.md) | 1271 | `BLOCKED_NATIVE_ADMISSION` |
| 135 | `theorem` | [vsub_mem_vectorSpan_pair](declarations/vsub-mem-vectorspan-pair.md) | 1276 | `BLOCKED_NATIVE_ADMISSION` |
| 136 | `theorem` | [vsub_rev_mem_vectorSpan_pair](declarations/vsub-rev-mem-vectorspan-pair.md) | 1281 | `BLOCKED_NATIVE_ADMISSION` |
| 137 | `theorem` | [smul_vsub_mem_vectorSpan_pair](declarations/smul-vsub-mem-vectorspan-pair.md) | 1288 | `BLOCKED_NATIVE_ADMISSION` |
| 138 | `theorem` | [smul_vsub_rev_mem_vectorSpan_pair](declarations/smul-vsub-rev-mem-vectorspan-pair.md) | 1294 | `BLOCKED_NATIVE_ADMISSION` |
| 139 | `theorem` | [mem_vectorSpan_pair](declarations/mem-vectorspan-pair.md) | 1301 | `BLOCKED_NATIVE_ADMISSION` |
| 140 | `theorem` | [mem_vectorSpan_pair_rev](declarations/mem-vectorspan-pair-rev.md) | 1308 | `BLOCKED_NATIVE_ADMISSION` |
| 141 | `theorem` | [left_mem_affineSpan_pair](declarations/left-mem-affinespan-pair.md) | 1319 | `BLOCKED_NATIVE_ADMISSION` |
| 142 | `theorem` | [right_mem_affineSpan_pair](declarations/right-mem-affinespan-pair.md) | 1324 | `BLOCKED_NATIVE_ADMISSION` |
| 143 | `theorem` | [AffineMap.lineMap_mem_affineSpan_pair](declarations/affinemap-linemap-mem-affinespan-pair.md) | 1331 | `BLOCKED_NATIVE_ADMISSION` |
| 144 | `theorem` | [AffineMap.lineMap_rev_mem_affineSpan_pair](declarations/affinemap-linemap-rev-mem-affinespan-pair.md) | 1338 | `BLOCKED_NATIVE_ADMISSION` |
| 145 | `theorem` | [smul_vsub_vadd_mem_affineSpan_pair](declarations/smul-vsub-vadd-mem-affinespan-pair.md) | 1345 | `BLOCKED_NATIVE_ADMISSION` |
| 146 | `theorem` | [smul_vsub_rev_vadd_mem_affineSpan_pair](declarations/smul-vsub-rev-vadd-mem-affinespan-pair.md) | 1352 | `BLOCKED_NATIVE_ADMISSION` |
| 147 | `theorem` | [vadd_left_mem_affineSpan_pair](declarations/vadd-left-mem-affinespan-pair.md) | 1359 | `BLOCKED_NATIVE_ADMISSION` |
| 148 | `theorem` | [vadd_right_mem_affineSpan_pair](declarations/vadd-right-mem-affinespan-pair.md) | 1367 | `BLOCKED_NATIVE_ADMISSION` |
| 149 | `theorem` | [affineSpan_pair_le_of_mem_of_mem](declarations/affinespan-pair-le-of-mem-of-mem.md) | 1374 | `BLOCKED_NATIVE_ADMISSION` |
| 150 | `theorem` | [affineSpan_pair_le_of_left_mem](declarations/affinespan-pair-le-of-left-mem.md) | 1382 | `BLOCKED_NATIVE_ADMISSION` |
| 151 | `theorem` | [affineSpan_pair_le_of_right_mem](declarations/affinespan-pair-le-of-right-mem.md) | 1389 | `BLOCKED_NATIVE_ADMISSION` |
| 152 | `theorem` | [affineSpan_mono](declarations/affinespan-mono.md) | 1398 | `BLOCKED_NATIVE_ADMISSION` |
| 153 | `theorem` | [affineSpan_insert_affineSpan](declarations/affinespan-insert-affinespan.md) | 1404 | `BLOCKED_NATIVE_ADMISSION` |
| 154 | `theorem` | [affineSpan_insert_eq_affineSpan](declarations/affinespan-insert-eq-affinespan.md) | 1411 | `BLOCKED_NATIVE_ADMISSION` |
| 155 | `theorem` | [vectorSpan_insert_eq_vectorSpan](declarations/vectorspan-insert-eq-vectorspan.md) | 1421 | `BLOCKED_NATIVE_ADMISSION` |
| 156 | `theorem` | [direction_sup](declarations/direction-sup.md) | 1435 | `BLOCKED_NATIVE_ADMISSION` |
| 157 | `theorem` | [direction_affineSpan_insert](declarations/direction-affinespan-insert.md) | 1467 | `BLOCKED_NATIVE_ADMISSION` |
| 158 | `theorem` | [mem_affineSpan_insert_iff](declarations/mem-affinespan-insert-iff.md) | 1478 | `BLOCKED_NATIVE_ADMISSION` |
| 159 | `theorem` | [AffineMap.vectorSpan_image_eq_submodule_map](declarations/affinemap-vectorspan-image-eq-submodule-map.md) | 1515 | `BLOCKED_NATIVE_ADMISSION` |
| 160 | `def` | [map](declarations/map.md) | 1524 | `BLOCKED_NATIVE_ADMISSION` |
| 161 | `theorem` | [coe_map](declarations/coe-map.md) | 1536 | `BLOCKED_NATIVE_ADMISSION` |
| 162 | `theorem` | [mem_map](declarations/mem-map.md) | 1541 | `BLOCKED_NATIVE_ADMISSION` |
| 163 | `theorem` | [mem_map_of_mem](declarations/mem-map-of-mem.md) | 1546 | `BLOCKED_NATIVE_ADMISSION` |
| 164 | `theorem` | [mem_map_iff_mem_of_injective](declarations/mem-map-iff-mem-of-injective.md) | 1554 | `BLOCKED_NATIVE_ADMISSION` |
| 165 | `theorem` | [map_bot](declarations/map-bot.md) | 1560 | `BLOCKED_NATIVE_ADMISSION` |
| 166 | `theorem` | [map_eq_bot_iff](declarations/map-eq-bot-iff.md) | 1565 | `BLOCKED_NATIVE_ADMISSION` |
| 167 | `theorem` | [map_id](declarations/map-id.md) | 1572 | `BLOCKED_NATIVE_ADMISSION` |
| 168 | `theorem` | [map_map](declarations/map-map.md) | 1576 | `BLOCKED_NATIVE_ADMISSION` |
| 169 | `theorem` | [map_direction](declarations/map-direction.md) | 1582 | `BLOCKED_NATIVE_ADMISSION` |
| 170 | `theorem` | [map_span](declarations/map-span.md) | 1588 | `BLOCKED_NATIVE_ADMISSION` |
| 171 | `theorem` | [map_top_of_surjective](declarations/map-top-of-surjective.md) | 1604 | `BLOCKED_NATIVE_ADMISSION` |
| 172 | `theorem` | [span_eq_top_of_surjective](declarations/span-eq-top-of-surjective.md) | 1609 | `BLOCKED_NATIVE_ADMISSION` |
| 173 | `theorem` | [span_eq_top_iff](declarations/span-eq-top-iff.md) | 1618 | `BLOCKED_NATIVE_ADMISSION` |
| 174 | `def` | [comap](declarations/comap.md) | 1634 | `BLOCKED_NATIVE_ADMISSION` |
| 175 | `theorem` | [coe_comap](declarations/coe-comap.md) | 1643 | `BLOCKED_NATIVE_ADMISSION` |
| 176 | `theorem` | [mem_comap](declarations/mem-comap.md) | 1648 | `BLOCKED_NATIVE_ADMISSION` |
| 177 | `theorem` | [comap_mono](declarations/comap-mono.md) | 1652 | `BLOCKED_NATIVE_ADMISSION` |
| 178 | `theorem` | [comap_top](declarations/comap-top.md) | 1657 | `BLOCKED_NATIVE_ADMISSION` |
| 179 | `theorem` | [comap_bot](declarations/comap-bot.md) | 1662 | `BLOCKED_NATIVE_ADMISSION` |
| 180 | `theorem` | [comap_id](declarations/comap-id.md) | 1665 | `BLOCKED_NATIVE_ADMISSION` |
| 181 | `theorem` | [comap_comap](declarations/comap-comap.md) | 1669 | `BLOCKED_NATIVE_ADMISSION` |
| 182 | `theorem` | [map_le_iff_le_comap](declarations/map-le-iff-le-comap.md) | 1675 | `BLOCKED_NATIVE_ADMISSION` |
| 183 | `theorem` | [gc_map_comap](declarations/gc-map-comap.md) | 1680 | `BLOCKED_NATIVE_ADMISSION` |
| 184 | `theorem` | [map_comap_le](declarations/map-comap-le.md) | 1684 | `BLOCKED_NATIVE_ADMISSION` |
| 185 | `theorem` | [le_comap_map](declarations/le-comap-map.md) | 1688 | `BLOCKED_NATIVE_ADMISSION` |
| 186 | `theorem` | [map_sup](declarations/map-sup.md) | 1692 | `BLOCKED_NATIVE_ADMISSION` |
| 187 | `theorem` | [map_iSup](declarations/map-isup.md) | 1696 | `BLOCKED_NATIVE_ADMISSION` |
| 188 | `theorem` | [comap_inf](declarations/comap-inf.md) | 1701 | `BLOCKED_NATIVE_ADMISSION` |
| 189 | `theorem` | [comap_supr](declarations/comap-supr.md) | 1706 | `BLOCKED_NATIVE_ADMISSION` |
| 190 | `theorem` | [comap_symm](declarations/comap-symm.md) | 1712 | `BLOCKED_NATIVE_ADMISSION` |
| 191 | `theorem` | [map_symm](declarations/map-symm.md) | 1718 | `BLOCKED_NATIVE_ADMISSION` |
| 192 | `theorem` | [comap_span](declarations/comap-span.md) | 1723 | `BLOCKED_NATIVE_ADMISSION` |
| 193 | `def` | [Parallel](declarations/parallel.md) | 1742 | `BLOCKED_NATIVE_ADMISSION` |
| 194 | `theorem` | [Parallel.symm](declarations/parallel-symm.md) | 1749 | `BLOCKED_NATIVE_ADMISSION` |
| 195 | `theorem` | [parallel_comm](declarations/parallel-comm.md) | 1756 | `BLOCKED_NATIVE_ADMISSION` |
| 196 | `theorem` | [Parallel.refl](declarations/parallel-refl.md) | 1761 | `BLOCKED_NATIVE_ADMISSION` |
| 197 | `theorem` | [Parallel.trans](declarations/parallel-trans.md) | 1766 | `BLOCKED_NATIVE_ADMISSION` |
| 198 | `theorem` | [Parallel.direction_eq](declarations/parallel-direction-eq.md) | 1774 | `BLOCKED_NATIVE_ADMISSION` |
| 199 | `theorem` | [parallel_bot_iff_eq_bot](declarations/parallel-bot-iff-eq-bot.md) | 1781 | `BLOCKED_NATIVE_ADMISSION` |
| 200 | `theorem` | [bot_parallel_iff_eq_bot](declarations/bot-parallel-iff-eq-bot.md) | 1788 | `BLOCKED_NATIVE_ADMISSION` |
| 201 | `theorem` | [parallel_iff_direction_eq_and_eq_bot_iff_eq_bot](declarations/parallel-iff-direction-eq-and-eq-bot-iff-eq-bot.md) | 1792 | `BLOCKED_NATIVE_ADMISSION` |
| 202 | `theorem` | [Parallel.vectorSpan_eq](declarations/parallel-vectorspan-eq.md) | 1813 | `BLOCKED_NATIVE_ADMISSION` |
| 203 | `theorem` | [affineSpan_parallel_iff_vectorSpan_eq_and_eq_empty_iff_eq_empty](declarations/affinespan-parallel-iff-vectorspan-eq-and-eq-empty-iff-eq-empty.md) | 1819 | `BLOCKED_NATIVE_ADMISSION` |
| 204 | `theorem` | [affineSpan_pair_parallel_iff_vectorSpan_eq](declarations/affinespan-pair-parallel-iff-vectorspan-eq.md) | 1826 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=8cbb168d9ad80fb8831438cfa36c29809204b92ce6bec2c78f77fcaeddb68520 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Geometry/ConvexGeometry/AffineSubspace/Variant8e8ab7f0c29b846101387508ab6900739bd127c8209a662d5231a75f80d614df.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
