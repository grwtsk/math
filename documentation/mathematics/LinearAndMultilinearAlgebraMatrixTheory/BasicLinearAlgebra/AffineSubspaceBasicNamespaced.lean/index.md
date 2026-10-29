# Affine Subspace Basic Namespaced

[Complete source index](../../../complete-source-index.md) · [Up one directory](../../../complete-source-index.md) · [Full source](source.md)

**101 observed declarations and anonymous commands**, 92 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Geometry/ConvexGeometry/Basic/Variant0d4773aa6c469b6ff594aca8c77a2515a768743204ec1c2c4a05513cd8314047.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `64f0f720776871fe16dbdb8efbc65369b3c8789f`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineSubspaceBasicNamespaced.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `lemma` | [vectorSpan_vadd](declarations/vectorspan-vadd.md) | 42 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `theorem` | [vsub_right_mem_direction_iff_mem](declarations/vsub-right-mem-direction-iff-mem.md) | 58 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `theorem` | [vsub_left_mem_direction_iff_mem](declarations/vsub-left-mem-direction-iff-mem.md) | 65 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `abbrev` | [toAddTorsor](declarations/toaddtorsor.md) | 72 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [coe_vsub](declarations/coe-vsub.md) | 91 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [coe_vadd](declarations/coe-vadd.md) | 95 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `def` | [subtype](declarations/subtype.md) | 100 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [subtype_linear](declarations/subtype-linear.md) | 106 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [subtype_apply](declarations/subtype-apply.md) | 110 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [subtype_injective](declarations/subtype-injective.md) | 113 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [coe_subtype](declarations/coe-subtype.md) | 117 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [AffineMap.lineMap_mem](declarations/affinemap-linemap-mem.md) | 125 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [coe_affineSpan_singleton](declarations/coe-affinespan-singleton.md) | 140 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [mem_affineSpan_singleton](declarations/mem-affinespan-singleton.md) | 148 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `instance` | [unique_affineSpan_singleton](declarations/unique-affinespan-singleton.md) | 151 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [preimage_coe_affineSpan_singleton](declarations/preimage-coe-affinespan-singleton.md) | 156 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `def` | [topEquiv](declarations/topequiv.md) | 167 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [subsingleton_of_subsingleton_span_eq_top](declarations/subsingleton-of-subsingleton-span-eq-top.md) | 174 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [eq_univ_of_subsingleton_span_eq_top](declarations/eq-univ-of-subsingleton-span-eq-top.md) | 182 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [direction_lt_of_nonempty](declarations/direction-lt-of-nonempty.md) | 190 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [vectorSpan_eq_span_vsub_set_left](declarations/vectorspan-eq-span-vsub-set-left.md) | 213 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [vectorSpan_eq_span_vsub_set_right](declarations/vectorspan-eq-span-vsub-set-right.md) | 226 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [vectorSpan_eq_span_vsub_set_left_ne](declarations/vectorspan-eq-span-vsub-set-left-ne.md) | 240 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [vectorSpan_eq_span_vsub_set_right_ne](declarations/vectorspan-eq-span-vsub-set-right-ne.md) | 249 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [vectorSpan_eq_span_vsub_finset_right_ne](declarations/vectorspan-eq-span-vsub-finset-right-ne.md) | 258 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [vectorSpan_image_eq_span_vsub_set_left_ne](declarations/vectorspan-image-eq-span-vsub-set-left-ne.md) | 265 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [vectorSpan_image_eq_span_vsub_set_right_ne](declarations/vectorspan-image-eq-span-vsub-set-right-ne.md) | 274 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [vectorSpan_range_eq_span_range_vsub_left](declarations/vectorspan-range-eq-span-range-vsub-left.md) | 283 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [vectorSpan_range_eq_span_range_vsub_right](declarations/vectorspan-range-eq-span-range-vsub-right.md) | 290 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [vectorSpan_range_eq_span_range_vsub_left_ne](declarations/vectorspan-range-eq-span-range-vsub-left-ne.md) | 297 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [vectorSpan_range_eq_span_range_vsub_right_ne](declarations/vectorspan-range-eq-span-range-vsub-right-ne.md) | 311 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [affineSpan_coe_preimage_eq_top](declarations/affinespan-coe-preimage-eq-top.md) | 331 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [affineSpan_singleton_union_vadd_eq_top_of_span_eq_top](declarations/affinespan-singleton-union-vadd-eq-top-of-span-eq-top.md) | 343 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [vectorSpan_pair](declarations/vectorspan-pair.md) | 359 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `theorem` | [vectorSpan_pair_rev](declarations/vectorspan-pair-rev.md) | 364 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `theorem` | [mem_vectorSpan_pair](declarations/mem-vectorspan-pair.md) | 371 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `theorem` | [mem_vectorSpan_pair_rev](declarations/mem-vectorspan-pair-rev.md) | 377 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `theorem` | [AffineMap.lineMap_mem_affineSpan_pair](declarations/affinemap-linemap-mem-affinespan-pair.md) | 383 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `theorem` | [AffineMap.lineMap_rev_mem_affineSpan_pair](declarations/affinemap-linemap-rev-mem-affinespan-pair.md) | 389 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `theorem` | [smul_vsub_vadd_mem_affineSpan_pair](declarations/smul-vsub-vadd-mem-affinespan-pair.md) | 395 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `theorem` | [smul_vsub_rev_vadd_mem_affineSpan_pair](declarations/smul-vsub-rev-vadd-mem-affinespan-pair.md) | 401 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `theorem` | [vadd_left_mem_affineSpan_pair](declarations/vadd-left-mem-affinespan-pair.md) | 407 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `theorem` | [vadd_right_mem_affineSpan_pair](declarations/vadd-right-mem-affinespan-pair.md) | 414 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `theorem` | [direction_sup](declarations/direction-sup.md) | 428 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `lemma` | [direction_sup_eq_sup_direction](declarations/direction-sup-eq-sup-direction.md) | 458 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `theorem` | [direction_affineSpan_insert](declarations/direction-affinespan-insert.md) | 466 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `theorem` | [mem_affineSpan_insert_iff](declarations/mem-affinespan-insert-iff.md) | 476 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `lemma` | [vectorSpan_union_of_mem_of_mem](declarations/vectorspan-union-of-mem-of-mem.md) | 497 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `theorem` | [AffineMap.vectorSpan_image_eq_submodule_map](declarations/affinemap-vectorspan-image-eq-submodule-map.md) | 516 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `def` | [map](declarations/map.md) | 523 | `BLOCKED_NATIVE_ADMISSION` |
| 51 | `theorem` | [coe_map](declarations/coe-map.md) | 534 | `BLOCKED_NATIVE_ADMISSION` |
| 52 | `theorem` | [mem_map](declarations/mem-map.md) | 538 | `BLOCKED_NATIVE_ADMISSION` |
| 53 | `theorem` | [mem_map_of_mem](declarations/mem-map-of-mem.md) | 542 | `BLOCKED_NATIVE_ADMISSION` |
| 54 | `theorem` | [mem_map_iff_mem_of_injective](declarations/mem-map-iff-mem-of-injective.md) | 550 | `BLOCKED_NATIVE_ADMISSION` |
| 55 | `theorem` | [map_bot](declarations/map-bot.md) | 555 | `BLOCKED_NATIVE_ADMISSION` |
| 56 | `theorem` | [map_eq_bot_iff](declarations/map-eq-bot-iff.md) | 559 | `BLOCKED_NATIVE_ADMISSION` |
| 57 | `theorem` | [map_id](declarations/map-id.md) | 565 | `BLOCKED_NATIVE_ADMISSION` |
| 58 | `theorem` | [map_map](declarations/map-map.md) | 568 | `BLOCKED_NATIVE_ADMISSION` |
| 59 | `theorem` | [map_direction](declarations/map-direction.md) | 573 | `BLOCKED_NATIVE_ADMISSION` |
| 60 | `theorem` | [map_span](declarations/map-span.md) | 577 | `BLOCKED_NATIVE_ADMISSION` |
| 61 | `def` | [inclusion](declarations/inclusion.md) | 594 | `BLOCKED_NATIVE_ADMISSION` |
| 62 | `theorem` | [coe_inclusion_apply](declarations/coe-inclusion-apply.md) | 600 | `BLOCKED_NATIVE_ADMISSION` |
| 63 | `theorem` | [inclusion_rfl](declarations/inclusion-rfl.md) | 604 | `BLOCKED_NATIVE_ADMISSION` |
| 64 | `theorem` | [map_top_of_surjective](declarations/map-top-of-surjective.md) | 613 | `BLOCKED_NATIVE_ADMISSION` |
| 65 | `theorem` | [span_eq_top_of_surjective](declarations/span-eq-top-of-surjective.md) | 617 | `BLOCKED_NATIVE_ADMISSION` |
| 66 | `def` | [ofEq](declarations/ofeq.md) | 634 | `BLOCKED_NATIVE_ADMISSION` |
| 67 | `theorem` | [coe_ofEq_apply](declarations/coe-ofeq-apply.md) | 640 | `BLOCKED_NATIVE_ADMISSION` |
| 68 | `theorem` | [ofEq_symm](declarations/ofeq-symm.md) | 644 | `BLOCKED_NATIVE_ADMISSION` |
| 69 | `theorem` | [ofEq_rfl](declarations/ofeq-rfl.md) | 649 | `BLOCKED_NATIVE_ADMISSION` |
| 70 | `theorem` | [span_eq_top_iff](declarations/span-eq-top-iff.md) | 653 | `BLOCKED_NATIVE_ADMISSION` |
| 71 | `def` | [comap](declarations/comap.md) | 668 | `BLOCKED_NATIVE_ADMISSION` |
| 72 | `theorem` | [coe_comap](declarations/coe-comap.md) | 676 | `BLOCKED_NATIVE_ADMISSION` |
| 73 | `theorem` | [mem_comap](declarations/mem-comap.md) | 680 | `BLOCKED_NATIVE_ADMISSION` |
| 74 | `theorem` | [comap_mono](declarations/comap-mono.md) | 683 | `BLOCKED_NATIVE_ADMISSION` |
| 75 | `theorem` | [comap_top](declarations/comap-top.md) | 687 | `BLOCKED_NATIVE_ADMISSION` |
| 76 | `theorem` | [comap_bot](declarations/comap-bot.md) | 691 | `BLOCKED_NATIVE_ADMISSION` |
| 77 | `theorem` | [comap_id](declarations/comap-id.md) | 694 | `BLOCKED_NATIVE_ADMISSION` |
| 78 | `theorem` | [comap_comap](declarations/comap-comap.md) | 697 | `BLOCKED_NATIVE_ADMISSION` |
| 79 | `theorem` | [map_le_iff_le_comap](declarations/map-le-iff-le-comap.md) | 702 | `BLOCKED_NATIVE_ADMISSION` |
| 80 | `theorem` | [gc_map_comap](declarations/gc-map-comap.md) | 706 | `BLOCKED_NATIVE_ADMISSION` |
| 81 | `theorem` | [map_comap_le](declarations/map-comap-le.md) | 709 | `BLOCKED_NATIVE_ADMISSION` |
| 82 | `theorem` | [le_comap_map](declarations/le-comap-map.md) | 712 | `BLOCKED_NATIVE_ADMISSION` |
| 83 | `theorem` | [map_sup](declarations/map-sup.md) | 715 | `BLOCKED_NATIVE_ADMISSION` |
| 84 | `theorem` | [map_iSup](declarations/map-isup.md) | 718 | `BLOCKED_NATIVE_ADMISSION` |
| 85 | `theorem` | [comap_inf](declarations/comap-inf.md) | 722 | `BLOCKED_NATIVE_ADMISSION` |
| 86 | `theorem` | [comap_supr](declarations/comap-supr.md) | 726 | `BLOCKED_NATIVE_ADMISSION` |
| 87 | `theorem` | [comap_symm](declarations/comap-symm.md) | 731 | `BLOCKED_NATIVE_ADMISSION` |
| 88 | `theorem` | [map_symm](declarations/map-symm.md) | 736 | `BLOCKED_NATIVE_ADMISSION` |
| 89 | `theorem` | [comap_span](declarations/comap-span.md) | 740 | `BLOCKED_NATIVE_ADMISSION` |
| 90 | `def` | [Parallel](declarations/parallel.md) | 757 | `BLOCKED_NATIVE_ADMISSION` |
| 91 | `theorem` | [Parallel.symm](declarations/parallel-symm.md) | 764 | `BLOCKED_NATIVE_ADMISSION` |
| 92 | `theorem` | [parallel_comm](declarations/parallel-comm.md) | 770 | `BLOCKED_NATIVE_ADMISSION` |
| 93 | `theorem` | [Parallel.refl](declarations/parallel-refl.md) | 774 | `BLOCKED_NATIVE_ADMISSION` |
| 94 | `theorem` | [Parallel.trans](declarations/parallel-trans.md) | 778 | `BLOCKED_NATIVE_ADMISSION` |
| 95 | `theorem` | [Parallel.direction_eq](declarations/parallel-direction-eq.md) | 785 | `BLOCKED_NATIVE_ADMISSION` |
| 96 | `theorem` | [parallel_bot_iff_eq_bot](declarations/parallel-bot-iff-eq-bot.md) | 791 | `BLOCKED_NATIVE_ADMISSION` |
| 97 | `theorem` | [bot_parallel_iff_eq_bot](declarations/bot-parallel-iff-eq-bot.md) | 797 | `BLOCKED_NATIVE_ADMISSION` |
| 98 | `theorem` | [parallel_iff_direction_eq_and_eq_bot_iff_eq_bot](declarations/parallel-iff-direction-eq-and-eq-bot-iff-eq-bot.md) | 800 | `BLOCKED_NATIVE_ADMISSION` |
| 99 | `theorem` | [Parallel.vectorSpan_eq](declarations/parallel-vectorspan-eq.md) | 820 | `BLOCKED_NATIVE_ADMISSION` |
| 100 | `theorem` | [affineSpan_parallel_iff_vectorSpan_eq_and_eq_empty_iff_eq_empty](declarations/affinespan-parallel-iff-vectorspan-eq-and-eq-empty-iff-eq-empty.md) | 825 | `BLOCKED_NATIVE_ADMISSION` |
| 101 | `theorem` | [affineSpan_pair_parallel_iff_vectorSpan_eq](declarations/affinespan-pair-parallel-iff-vectorspan-eq.md) | 830 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=3906f79a935ba3ad884b78bbf747da01a69efc7cc39a9e335a287413e2760557 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Geometry/ConvexGeometry/Basic/Variant0d4773aa6c469b6ff594aca8c77a2515a768743204ec1c2c4a05513cd8314047.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
