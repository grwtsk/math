# Affine Subspace Basic Public

[Complete source index](../../../complete-source-index.md) · [Up one directory](../../../complete-source-index.md) · [Full source](source.md)

**143 observed declarations and anonymous commands**, 129 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Geometry/ConvexGeometry/Basic/Variantdb5899ae68516888a4a145c4db177581c763c35959f1928dee73631a0bc4b979.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `a77c46d9fd3c0a1f786a861aa9687a5198caf1d9`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineSubspaceBasicPublic.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `lemma` | [vectorSpan_vadd](declarations/vectorspan-vadd.md) | 39 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `theorem` | [vsub_right_mem_direction_iff_mem](declarations/vsub-right-mem-direction-iff-mem.md) | 55 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `theorem` | [vsub_left_mem_direction_iff_mem](declarations/vsub-left-mem-direction-iff-mem.md) | 62 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `instance` | [toAddTorsor](declarations/toaddtorsor.md) | 67 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [coe_vsub](declarations/coe-vsub.md) | 84 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [coe_vadd](declarations/coe-vadd.md) | 88 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `def` | [subtype](declarations/subtype.md) | 93 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [subtype_linear](declarations/subtype-linear.md) | 99 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [subtype_apply](declarations/subtype-apply.md) | 103 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [subtype_injective](declarations/subtype-injective.md) | 106 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [coe_subtype](declarations/coe-subtype.md) | 110 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [AffineMap.lineMap_mem](declarations/affinemap-linemap-mem.md) | 115 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [AffineMap.homothety_mem](declarations/affinemap-homothety-mem.md) | 121 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `lemma` | [affineSpan_singleton](declarations/affinespan-singleton.md) | 136 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [coe_affineSpan_singleton](declarations/coe-affinespan-singleton.md) | 142 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [coe_affineSpan_eq_singleton_iff](declarations/coe-affinespan-eq-singleton-iff.md) | 146 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [mem_affineSpan_singleton](declarations/mem-affinespan-singleton.md) | 151 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [singleton_ne_bot](declarations/singleton-ne-bot.md) | 155 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [singleton_ne_top](declarations/singleton-ne-top.md) | 159 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `instance` | [unique_affineSpan_singleton](declarations/unique-affinespan-singleton.md) | 162 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [preimage_coe_affineSpan_singleton](declarations/preimage-coe-affinespan-singleton.md) | 167 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `def` | [topEquiv](declarations/topequiv.md) | 176 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [subsingleton_of_subsingleton_span_eq_top](declarations/subsingleton-of-subsingleton-span-eq-top.md) | 183 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [eq_univ_of_subsingleton_span_eq_top](declarations/eq-univ-of-subsingleton-span-eq-top.md) | 191 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [direction_lt_of_nonempty](declarations/direction-lt-of-nonempty.md) | 199 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [vectorSpan_eq_span_vsub_set_left](declarations/vectorspan-eq-span-vsub-set-left.md) | 222 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [vectorSpan_eq_span_vsub_set_right](declarations/vectorspan-eq-span-vsub-set-right.md) | 235 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [vectorSpan_eq_span_vsub_set_left_ne](declarations/vectorspan-eq-span-vsub-set-left-ne.md) | 249 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [vectorSpan_eq_span_vsub_set_right_ne](declarations/vectorspan-eq-span-vsub-set-right-ne.md) | 258 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [vectorSpan_eq_span_vsub_finset_right_ne](declarations/vectorspan-eq-span-vsub-finset-right-ne.md) | 267 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [vectorSpan_image_eq_span_vsub_set_left_ne](declarations/vectorspan-image-eq-span-vsub-set-left-ne.md) | 274 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [vectorSpan_image_eq_span_vsub_set_right_ne](declarations/vectorspan-image-eq-span-vsub-set-right-ne.md) | 283 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [vectorSpan_range_eq_span_range_vsub_left](declarations/vectorspan-range-eq-span-range-vsub-left.md) | 292 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [vectorSpan_range_eq_span_range_vsub_right](declarations/vectorspan-range-eq-span-range-vsub-right.md) | 299 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `theorem` | [vectorSpan_range_eq_span_range_vsub_left_ne](declarations/vectorspan-range-eq-span-range-vsub-left-ne.md) | 306 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `theorem` | [vectorSpan_range_eq_span_range_vsub_right_ne](declarations/vectorspan-range-eq-span-range-vsub-right-ne.md) | 319 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `theorem` | [affineSpan_coe_preimage_eq_top](declarations/affinespan-coe-preimage-eq-top.md) | 334 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `theorem` | [affineSpan_singleton_union_vadd_eq_top_of_span_eq_top](declarations/affinespan-singleton-union-vadd-eq-top-of-span-eq-top.md) | 344 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `theorem` | [vectorSpan_pair](declarations/vectorspan-pair.md) | 361 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `theorem` | [vectorSpan_pair_rev](declarations/vectorspan-pair-rev.md) | 366 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `theorem` | [mem_vectorSpan_pair](declarations/mem-vectorspan-pair.md) | 373 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `theorem` | [mem_vectorSpan_pair_rev](declarations/mem-vectorspan-pair-rev.md) | 379 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `theorem` | [AffineMap.lineMap_mem_affineSpan_pair](declarations/affinemap-linemap-mem-affinespan-pair.md) | 385 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `theorem` | [AffineMap.lineMap_rev_mem_affineSpan_pair](declarations/affinemap-linemap-rev-mem-affinespan-pair.md) | 391 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `theorem` | [smul_vsub_vadd_mem_affineSpan_pair](declarations/smul-vsub-vadd-mem-affinespan-pair.md) | 397 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `theorem` | [smul_vsub_rev_vadd_mem_affineSpan_pair](declarations/smul-vsub-rev-vadd-mem-affinespan-pair.md) | 403 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `theorem` | [vadd_left_mem_affineSpan_pair](declarations/vadd-left-mem-affinespan-pair.md) | 409 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `theorem` | [vadd_right_mem_affineSpan_pair](declarations/vadd-right-mem-affinespan-pair.md) | 416 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `lemma` | [mem_affineSpan_pair_iff_exists_lineMap_eq](declarations/mem-affinespan-pair-iff-exists-linemap-eq.md) | 421 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `lemma` | [mem_affineSpan_pair_iff_exists_lineMap_rev_eq](declarations/mem-affinespan-pair-iff-exists-linemap-rev-eq.md) | 432 | `BLOCKED_NATIVE_ADMISSION` |
| 51 | `theorem` | [direction_sup](declarations/direction-sup.md) | 445 | `BLOCKED_NATIVE_ADMISSION` |
| 52 | `lemma` | [direction_sup_eq_sup_direction](declarations/direction-sup-eq-sup-direction.md) | 475 | `BLOCKED_NATIVE_ADMISSION` |
| 53 | `theorem` | [direction_affineSpan_insert](declarations/direction-affinespan-insert.md) | 483 | `BLOCKED_NATIVE_ADMISSION` |
| 54 | `theorem` | [mem_affineSpan_insert_iff](declarations/mem-affinespan-insert-iff.md) | 492 | `BLOCKED_NATIVE_ADMISSION` |
| 55 | `lemma` | [vectorSpan_union_of_mem_of_mem](declarations/vectorspan-union-of-mem-of-mem.md) | 513 | `BLOCKED_NATIVE_ADMISSION` |
| 56 | `theorem` | [AffineMap.map_vectorSpan](declarations/affinemap-map-vectorspan.md) | 533 | `BLOCKED_NATIVE_ADMISSION` |
| 57 | `def` | [map](declarations/map.md) | 540 | `BLOCKED_NATIVE_ADMISSION` |
| 58 | `theorem` | [coe_map](declarations/coe-map.md) | 551 | `BLOCKED_NATIVE_ADMISSION` |
| 59 | `theorem` | [mem_map](declarations/mem-map.md) | 555 | `BLOCKED_NATIVE_ADMISSION` |
| 60 | `theorem` | [mem_map_of_mem](declarations/mem-map-of-mem.md) | 559 | `BLOCKED_NATIVE_ADMISSION` |
| 61 | `theorem` | [mem_map_iff_mem_of_injective](declarations/mem-map-iff-mem-of-injective.md) | 563 | `BLOCKED_NATIVE_ADMISSION` |
| 62 | `theorem` | [map_bot](declarations/map-bot.md) | 568 | `BLOCKED_NATIVE_ADMISSION` |
| 63 | `theorem` | [map_eq_bot_iff](declarations/map-eq-bot-iff.md) | 572 | `BLOCKED_NATIVE_ADMISSION` |
| 64 | `theorem` | [map_id](declarations/map-id.md) | 578 | `BLOCKED_NATIVE_ADMISSION` |
| 65 | `theorem` | [map_map](declarations/map-map.md) | 581 | `BLOCKED_NATIVE_ADMISSION` |
| 66 | `theorem` | [map_direction](declarations/map-direction.md) | 586 | `BLOCKED_NATIVE_ADMISSION` |
| 67 | `theorem` | [map_span](declarations/map-span.md) | 590 | `BLOCKED_NATIVE_ADMISSION` |
| 68 | `theorem` | [map_mono](declarations/map-mono.md) | 599 | `BLOCKED_NATIVE_ADMISSION` |
| 69 | `lemma` | [map_inf_le](declarations/map-inf-le.md) | 602 | `BLOCKED_NATIVE_ADMISSION` |
| 70 | `lemma` | [map_inf_eq](declarations/map-inf-eq.md) | 605 | `BLOCKED_NATIVE_ADMISSION` |
| 71 | `lemma` | [map_mk'](declarations/map-mk.md) | 611 | `BLOCKED_NATIVE_ADMISSION` |
| 72 | `def` | [inclusion](declarations/inclusion.md) | 628 | `BLOCKED_NATIVE_ADMISSION` |
| 73 | `theorem` | [coe_inclusion_apply](declarations/coe-inclusion-apply.md) | 637 | `BLOCKED_NATIVE_ADMISSION` |
| 74 | `theorem` | [inclusion_rfl](declarations/inclusion-rfl.md) | 641 | `BLOCKED_NATIVE_ADMISSION` |
| 75 | `theorem` | [map_top_of_surjective](declarations/map-top-of-surjective.md) | 650 | `BLOCKED_NATIVE_ADMISSION` |
| 76 | `theorem` | [span_eq_top_of_surjective](declarations/span-eq-top-of-surjective.md) | 654 | `BLOCKED_NATIVE_ADMISSION` |
| 77 | `theorem` | [linear_eqOn_vectorSpan](declarations/linear-eqon-vectorspan.md) | 659 | `BLOCKED_NATIVE_ADMISSION` |
| 78 | `theorem` | [eqOn_affineSpan](declarations/eqon-affinespan.md) | 668 | `BLOCKED_NATIVE_ADMISSION` |
| 79 | `theorem` | [ext_on](declarations/ext-on-source-edition-2.md) | 676 | `BLOCKED_NATIVE_ADMISSION` |
| 80 | `theorem` | [ext_on](declarations/ext-on.md) | 687 | `BLOCKED_NATIVE_ADMISSION` |
| 81 | `def` | [ofEq](declarations/ofeq.md) | 699 | `BLOCKED_NATIVE_ADMISSION` |
| 82 | `theorem` | [coe_ofEq_apply](declarations/coe-ofeq-apply.md) | 705 | `BLOCKED_NATIVE_ADMISSION` |
| 83 | `theorem` | [ofEq_symm](declarations/ofeq-symm.md) | 709 | `BLOCKED_NATIVE_ADMISSION` |
| 84 | `theorem` | [ofEq_rfl](declarations/ofeq-rfl.md) | 714 | `BLOCKED_NATIVE_ADMISSION` |
| 85 | `theorem` | [span_eq_top_iff](declarations/span-eq-top-iff.md) | 718 | `BLOCKED_NATIVE_ADMISSION` |
| 86 | `def` | [comap](declarations/comap.md) | 733 | `BLOCKED_NATIVE_ADMISSION` |
| 87 | `theorem` | [coe_comap](declarations/coe-comap.md) | 741 | `BLOCKED_NATIVE_ADMISSION` |
| 88 | `theorem` | [mem_comap](declarations/mem-comap.md) | 745 | `BLOCKED_NATIVE_ADMISSION` |
| 89 | `theorem` | [comap_mono](declarations/comap-mono.md) | 749 | `BLOCKED_NATIVE_ADMISSION` |
| 90 | `theorem` | [comap_top](declarations/comap-top.md) | 753 | `BLOCKED_NATIVE_ADMISSION` |
| 91 | `theorem` | [comap_bot](declarations/comap-bot.md) | 757 | `BLOCKED_NATIVE_ADMISSION` |
| 92 | `theorem` | [comap_id](declarations/comap-id.md) | 760 | `BLOCKED_NATIVE_ADMISSION` |
| 93 | `theorem` | [comap_comap](declarations/comap-comap.md) | 763 | `BLOCKED_NATIVE_ADMISSION` |
| 94 | `theorem` | [map_le_iff_le_comap](declarations/map-le-iff-le-comap.md) | 768 | `BLOCKED_NATIVE_ADMISSION` |
| 95 | `theorem` | [gc_map_comap](declarations/gc-map-comap.md) | 772 | `BLOCKED_NATIVE_ADMISSION` |
| 96 | `theorem` | [map_comap_le](declarations/map-comap-le.md) | 775 | `BLOCKED_NATIVE_ADMISSION` |
| 97 | `theorem` | [le_comap_map](declarations/le-comap-map.md) | 778 | `BLOCKED_NATIVE_ADMISSION` |
| 98 | `theorem` | [map_sup](declarations/map-sup.md) | 781 | `BLOCKED_NATIVE_ADMISSION` |
| 99 | `theorem` | [map_iSup](declarations/map-isup.md) | 784 | `BLOCKED_NATIVE_ADMISSION` |
| 100 | `theorem` | [comap_inf](declarations/comap-inf.md) | 788 | `BLOCKED_NATIVE_ADMISSION` |
| 101 | `theorem` | [comap_supr](declarations/comap-supr.md) | 792 | `BLOCKED_NATIVE_ADMISSION` |
| 102 | `theorem` | [comap_symm](declarations/comap-symm.md) | 797 | `BLOCKED_NATIVE_ADMISSION` |
| 103 | `theorem` | [map_symm](declarations/map-symm.md) | 802 | `BLOCKED_NATIVE_ADMISSION` |
| 104 | `theorem` | [comap_span](declarations/comap-span.md) | 806 | `BLOCKED_NATIVE_ADMISSION` |
| 105 | `def` | [gciMapComap](declarations/gcimapcomap.md) | 811 | `BLOCKED_NATIVE_ADMISSION` |
| 106 | `lemma` | [comap_map_eq_of_injective](declarations/comap-map-eq-of-injective.md) | 815 | `BLOCKED_NATIVE_ADMISSION` |
| 107 | `def` | [prod](declarations/prod.md) | 831 | `BLOCKED_NATIVE_ADMISSION` |
| 108 | `theorem` | [coe_prod](declarations/coe-prod.md) | 837 | `BLOCKED_NATIVE_ADMISSION` |
| 109 | `theorem` | [mem_prod](declarations/mem-prod.md) | 842 | `BLOCKED_NATIVE_ADMISSION` |
| 110 | `theorem` | [prod_mono](declarations/prod-mono.md) | 847 | `BLOCKED_NATIVE_ADMISSION` |
| 111 | `theorem` | [prod_top_top](declarations/prod-top-top.md) | 852 | `BLOCKED_NATIVE_ADMISSION` |
| 112 | `theorem` | [prod_bot_right](declarations/prod-bot-right.md) | 856 | `BLOCKED_NATIVE_ADMISSION` |
| 113 | `theorem` | [prod_bot_left](declarations/prod-bot-left.md) | 860 | `BLOCKED_NATIVE_ADMISSION` |
| 114 | `theorem` | [prod_inf_prod](declarations/prod-inf-prod.md) | 863 | `BLOCKED_NATIVE_ADMISSION` |
| 115 | `theorem` | [_root_.vectorSpan_prod_le](declarations/root-vectorspan-prod-le.md) | 867 | `BLOCKED_NATIVE_ADMISSION` |
| 116 | `theorem` | [direction_prod_le](declarations/direction-prod-le.md) | 871 | `BLOCKED_NATIVE_ADMISSION` |
| 117 | `theorem` | [_root_.vectorSpan_prod_eq](declarations/root-vectorspan-prod-eq.md) | 875 | `BLOCKED_NATIVE_ADMISSION` |
| 118 | `theorem` | [direction_prod_eq](declarations/direction-prod-eq.md) | 880 | `BLOCKED_NATIVE_ADMISSION` |
| 119 | `theorem` | [_root_.affineSpan_prod_eq](declarations/root-affinespan-prod-eq.md) | 885 | `BLOCKED_NATIVE_ADMISSION` |
| 120 | `def` | [Parallel](declarations/parallel.md) | 902 | `BLOCKED_NATIVE_ADMISSION` |
| 121 | `theorem` | [Parallel.symm](declarations/parallel-symm.md) | 909 | `BLOCKED_NATIVE_ADMISSION` |
| 122 | `theorem` | [parallel_comm](declarations/parallel-comm.md) | 915 | `BLOCKED_NATIVE_ADMISSION` |
| 123 | `theorem` | [Parallel.refl](declarations/parallel-refl.md) | 919 | `BLOCKED_NATIVE_ADMISSION` |
| 124 | `theorem` | [Parallel.trans](declarations/parallel-trans.md) | 923 | `BLOCKED_NATIVE_ADMISSION` |
| 125 | `instance` | [(anonymous)](declarations/instance.md) | 930 | `BLOCKED_NATIVE_ADMISSION` |
| 126 | `instance` | [(anonymous)](declarations/instance-source-edition-2.md) | 933 | `BLOCKED_NATIVE_ADMISSION` |
| 127 | `instance` | [(anonymous)](declarations/instance-source-edition-3.md) | 936 | `BLOCKED_NATIVE_ADMISSION` |
| 128 | `theorem` | [Parallel.equivalence](declarations/parallel-equivalence.md) | 939 | `BLOCKED_NATIVE_ADMISSION` |
| 129 | `theorem` | [Parallel.direction_eq](declarations/parallel-direction-eq.md) | 942 | `BLOCKED_NATIVE_ADMISSION` |
| 130 | `theorem` | [parallel_bot_iff_eq_bot](declarations/parallel-bot-iff-eq-bot.md) | 948 | `BLOCKED_NATIVE_ADMISSION` |
| 131 | `theorem` | [bot_parallel_iff_eq_bot](declarations/bot-parallel-iff-eq-bot.md) | 954 | `BLOCKED_NATIVE_ADMISSION` |
| 132 | `theorem` | [parallel_iff_direction_eq_and_eq_bot_iff_eq_bot](declarations/parallel-iff-direction-eq-and-eq-bot-iff-eq-bot.md) | 957 | `BLOCKED_NATIVE_ADMISSION` |
| 133 | `theorem` | [Parallel.vectorSpan_eq](declarations/parallel-vectorspan-eq.md) | 977 | `BLOCKED_NATIVE_ADMISSION` |
| 134 | `theorem` | [affineSpan_parallel_iff_vectorSpan_eq_and_eq_empty_iff_eq_empty](declarations/affinespan-parallel-iff-vectorspan-eq-and-eq-empty-iff-eq-empty.md) | 982 | `BLOCKED_NATIVE_ADMISSION` |
| 135 | `theorem` | [affineSpan_pair_parallel_iff_vectorSpan_eq](declarations/affinespan-pair-parallel-iff-vectorspan-eq.md) | 987 | `BLOCKED_NATIVE_ADMISSION` |
| 136 | `lemma` | [affineSpan_pair_parallel_iff_exists_unit_smul'](declarations/affinespan-pair-parallel-iff-exists-unit-smul-source-edition-2.md) | 993 | `BLOCKED_NATIVE_ADMISSION` |
| 137 | `lemma` | [affineSpan_pair_parallel_iff_exists_unit_smul](declarations/affinespan-pair-parallel-iff-exists-unit-smul.md) | 999 | `BLOCKED_NATIVE_ADMISSION` |
| 138 | `lemma` | [direction_affineSpan_pair_le_iff_exists_smul](declarations/direction-affinespan-pair-le-iff-exists-smul.md) | 1005 | `BLOCKED_NATIVE_ADMISSION` |
| 139 | `theorem` | [affineSpan_pair_comm](declarations/affinespan-pair-comm.md) | 1010 | `BLOCKED_NATIVE_ADMISSION` |
| 140 | `lemma` | [affineSpan_pair_eq_of_mem_of_mem_of_ne](declarations/affinespan-pair-eq-of-mem-of-mem-of-ne.md) | 1023 | `BLOCKED_NATIVE_ADMISSION` |
| 141 | `lemma` | [affineSpan_pair_eq_of_left_mem_of_ne](declarations/affinespan-pair-eq-of-left-mem-of-ne.md) | 1045 | `BLOCKED_NATIVE_ADMISSION` |
| 142 | `lemma` | [affineSpan_pair_eq_of_right_mem_of_ne](declarations/affinespan-pair-eq-of-right-mem-of-ne.md) | 1051 | `BLOCKED_NATIVE_ADMISSION` |
| 143 | `theorem` | [exists_eq_smul_of_parallel](declarations/exists-eq-smul-of-parallel.md) | 1059 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=ae61ae7f7f3317251084fcc54bdcbd181055fb13c5f6b733b3a13dc690ce6e78 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Geometry/ConvexGeometry/Basic/Variantdb5899ae68516888a4a145c4db177581c763c35959f1928dee73631a0bc4b979.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
