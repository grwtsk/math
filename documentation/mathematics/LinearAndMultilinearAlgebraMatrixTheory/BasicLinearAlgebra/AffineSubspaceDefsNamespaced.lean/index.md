# Affine Subspace Defs Namespaced

[Complete source index](../../../complete-source-index.md) · [Up one directory](../../../complete-source-index.md) · [Full source](source.md)

**127 observed declarations and anonymous commands**, 111 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Geometry/ConvexGeometry/Defs/Variant44c5175bddf722c482289b9cbb5e41eff8c5029cf67a8003177feb43f1c28e2f.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `c5b23f6e1e00b88dfd8e552d56bd1ac6fcffae35`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineSubspaceDefsNamespaced.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [vectorSpan](declarations/vectorspan.md) | 67 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `theorem` | [vectorSpan_def](declarations/vectorspan-def.md) | 71 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `theorem` | [vectorSpan_mono](declarations/vectorspan-mono.md) | 75 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `theorem` | [vectorSpan_empty](declarations/vectorspan-empty.md) | 81 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [vectorSpan_singleton](declarations/vectorspan-singleton.md) | 86 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [vsub_set_subset_vectorSpan](declarations/vsub-set-subset-vectorspan.md) | 89 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [vsub_mem_vectorSpan](declarations/vsub-mem-vectorspan.md) | 93 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `def` | [spanPoints](declarations/spanpoints.md) | 99 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [mem_spanPoints](declarations/mem-spanpoints.md) | 103 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [subset_spanPoints](declarations/subset-spanpoints.md) | 107 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [spanPoints_nonempty](declarations/spanpoints-nonempty.md) | 111 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [vadd_mem_spanPoints_of_mem_spanPoints_of_mem_vectorSpan](declarations/vadd-mem-spanpoints-of-mem-spanpoints-of-mem-vectorspan.md) | 121 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [vsub_mem_vectorSpan_of_mem_spanPoints_of_mem_spanPoints](declarations/vsub-mem-vectorspan-of-mem-spanpoints-of-mem-spanpoints.md) | 128 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `structure` | [AffineSubspace](declarations/affinesubspace.md) | 141 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `def` | [toAffineSubspace](declarations/toaffinesubspace.md) | 154 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `instance` | [(anonymous)](declarations/instance-source-edition-5.md) | 165 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [mem_coe](declarations/mem-coe.md) | 171 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `def` | [direction](declarations/direction.md) | 180 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [direction_eq_vectorSpan](declarations/direction-eq-vectorspan.md) | 184 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `def` | [directionOfNonempty](declarations/directionofnonempty.md) | 190 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [directionOfNonempty_eq_direction](declarations/directionofnonempty-eq-direction.md) | 208 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [coe_direction_eq_vsub_set](declarations/coe-direction-eq-vsub-set.md) | 216 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [mem_direction_iff_eq_vsub](declarations/mem-direction-iff-eq-vsub.md) | 222 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [vadd_mem_of_mem_direction](declarations/vadd-mem-of-mem-direction.md) | 229 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [vsub_mem_direction](declarations/vsub-mem-direction.md) | 238 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [vadd_mem_iff_mem_direction](declarations/vadd-mem-iff-mem-direction.md) | 244 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [vadd_mem_iff_mem_of_mem_direction](declarations/vadd-mem-iff-mem-of-mem-direction.md) | 250 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [coe_direction_eq_vsub_set_right](declarations/coe-direction-eq-vsub-set-right.md) | 258 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [coe_direction_eq_vsub_set_left](declarations/coe-direction-eq-vsub-set-left.md) | 270 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [mem_direction_iff_eq_vsub_right](declarations/mem-direction-iff-eq-vsub-right.md) | 282 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [mem_direction_iff_eq_vsub_left](declarations/mem-direction-iff-eq-vsub-left.md) | 289 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [coe_injective](declarations/coe-injective.md) | 295 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [ext](declarations/ext.md) | 299 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [ext_iff](declarations/ext-iff.md) | 302 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `theorem` | [ext_of_direction_eq](declarations/ext-of-direction-eq.md) | 306 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `theorem` | [eq_iff_direction_eq_of_mem](declarations/eq-iff-direction-eq-of-mem.md) | 325 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `def` | [mk'](declarations/mk.md) | 330 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `theorem` | [mem_mk'](declarations/mem-mk.md) | 337 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `theorem` | [self_mem_mk'](declarations/self-mem-mk.md) | 341 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `theorem` | [vadd_mem_mk'](declarations/vadd-mem-mk.md) | 346 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `theorem` | [mk'_nonempty](declarations/mk-nonempty.md) | 351 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `theorem` | [direction_mk'](declarations/direction-mk.md) | 356 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `theorem` | [mem_mk'_iff_vsub_mem](declarations/mem-mk-iff-vsub-mem.md) | 367 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `theorem` | [mk'_eq](declarations/mk-eq.md) | 378 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `theorem` | [spanPoints_subset_coe_of_subset_coe](declarations/spanpoints-subset-coe-of-subset-coe.md) | 382 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `theorem` | [mem_toAffineSubspace](declarations/mem-toaffinesubspace.md) | 400 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `theorem` | [toAffineSubspace_direction](declarations/toaffinesubspace-direction.md) | 405 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `def` | [affineSpan](declarations/affinespan.md) | 417 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `theorem` | [coe_affineSpan](declarations/coe-affinespan.md) | 426 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `lemma` | [mem_affineSpan_iff_exists](declarations/mem-affinespan-iff-exists.md) | 430 | `BLOCKED_NATIVE_ADMISSION` |
| 51 | `theorem` | [subset_affineSpan](declarations/subset-affinespan.md) | 435 | `BLOCKED_NATIVE_ADMISSION` |
| 52 | `theorem` | [direction_affineSpan](declarations/direction-affinespan.md) | 439 | `BLOCKED_NATIVE_ADMISSION` |
| 53 | `theorem` | [mem_affineSpan](declarations/mem-affinespan.md) | 450 | `BLOCKED_NATIVE_ADMISSION` |
| 54 | `lemma` | [vectorSpan_add_self](declarations/vectorspan-add-self.md) | 454 | `BLOCKED_NATIVE_ADMISSION` |
| 55 | `theorem` | [vadd_mem_affineSpan_of_mem_affineSpan_of_mem_vectorSpan](declarations/vadd-mem-affinespan-of-mem-affinespan-of-mem-vectorspan.md) | 463 | `BLOCKED_NATIVE_ADMISSION` |
| 56 | `theorem` | [vsub_mem_vectorSpan_of_mem_affineSpan_of_mem_affineSpan](declarations/vsub-mem-vectorspan-of-mem-affinespan-of-mem-affinespan.md) | 468 | `BLOCKED_NATIVE_ADMISSION` |
| 57 | `theorem` | [affineSpan_le_of_subset_coe](declarations/affinespan-le-of-subset-coe.md) | 473 | `BLOCKED_NATIVE_ADMISSION` |
| 58 | `instance` | [(anonymous)](declarations/instance-source-edition-3.md) | 484 | `BLOCKED_NATIVE_ADMISSION` |
| 59 | `instance` | [(anonymous)](declarations/instance-source-edition-6.md) | 522 | `BLOCKED_NATIVE_ADMISSION` |
| 60 | `theorem` | [le_def](declarations/le-def-source-edition-2.md) | 526 | `BLOCKED_NATIVE_ADMISSION` |
| 61 | `theorem` | [le_def'](declarations/le-def.md) | 531 | `BLOCKED_NATIVE_ADMISSION` |
| 62 | `theorem` | [lt_def](declarations/lt-def.md) | 535 | `BLOCKED_NATIVE_ADMISSION` |
| 63 | `theorem` | [not_le_iff_exists](declarations/not-le-iff-exists.md) | 540 | `BLOCKED_NATIVE_ADMISSION` |
| 64 | `theorem` | [exists_of_lt](declarations/exists-of-lt.md) | 544 | `BLOCKED_NATIVE_ADMISSION` |
| 65 | `theorem` | [lt_iff_le_and_exists](declarations/lt-iff-le-and-exists.md) | 549 | `BLOCKED_NATIVE_ADMISSION` |
| 66 | `theorem` | [eq_of_direction_eq_of_nonempty_of_le](declarations/eq-of-direction-eq-of-nonempty-of-le.md) | 555 | `BLOCKED_NATIVE_ADMISSION` |
| 67 | `theorem` | [affineSpan_eq_sInf](declarations/affinespan-eq-sinf.md) | 563 | `BLOCKED_NATIVE_ADMISSION` |
| 68 | `def` | [gi](declarations/gi.md) | 571 | `BLOCKED_NATIVE_ADMISSION` |
| 69 | `theorem` | [span_empty](declarations/span-empty.md) | 580 | `BLOCKED_NATIVE_ADMISSION` |
| 70 | `theorem` | [span_univ](declarations/span-univ.md) | 585 | `BLOCKED_NATIVE_ADMISSION` |
| 71 | `theorem` | [Affine Subspace Defs Namespaced](declarations/affinespan-le.md) | 590 | `BLOCKED_NATIVE_ADMISSION` |
| 72 | `theorem` | [span_union](declarations/span-union.md) | 597 | `BLOCKED_NATIVE_ADMISSION` |
| 73 | `theorem` | [span_iUnion](declarations/span-iunion.md) | 601 | `BLOCKED_NATIVE_ADMISSION` |
| 74 | `theorem` | [top_coe](declarations/top-coe.md) | 608 | `BLOCKED_NATIVE_ADMISSION` |
| 75 | `theorem` | [mem_top](declarations/mem-top.md) | 613 | `BLOCKED_NATIVE_ADMISSION` |
| 76 | `lemma` | [mk'_top](declarations/mk-top.md) | 616 | `BLOCKED_NATIVE_ADMISSION` |
| 77 | `theorem` | [direction_top](declarations/direction-top.md) | 624 | `BLOCKED_NATIVE_ADMISSION` |
| 78 | `theorem` | [bot_coe](declarations/bot-coe.md) | 634 | `BLOCKED_NATIVE_ADMISSION` |
| 79 | `theorem` | [bot_ne_top](declarations/bot-ne-top.md) | 637 | `BLOCKED_NATIVE_ADMISSION` |
| 80 | `instance` | [(anonymous)](declarations/instance-source-edition-2.md) | 642 | `BLOCKED_NATIVE_ADMISSION` |
| 81 | `theorem` | [nonempty_of_affineSpan_eq_top](declarations/nonempty-of-affinespan-eq-top.md) | 645 | `BLOCKED_NATIVE_ADMISSION` |
| 82 | `theorem` | [vectorSpan_eq_top_of_affineSpan_eq_top](declarations/vectorspan-eq-top-of-affinespan-eq-top.md) | 652 | `BLOCKED_NATIVE_ADMISSION` |
| 83 | `theorem` | [affineSpan_eq_top_iff_vectorSpan_eq_top_of_nonempty](declarations/affinespan-eq-top-iff-vectorspan-eq-top-of-nonempty.md) | 656 | `BLOCKED_NATIVE_ADMISSION` |
| 84 | `theorem` | [affineSpan_eq_top_iff_vectorSpan_eq_top_of_nontrivial](declarations/affinespan-eq-top-iff-vectorspan-eq-top-of-nontrivial.md) | 667 | `BLOCKED_NATIVE_ADMISSION` |
| 85 | `theorem` | [card_pos_of_affineSpan_eq_top](declarations/card-pos-of-affinespan-eq-top.md) | 673 | `BLOCKED_NATIVE_ADMISSION` |
| 86 | `instance` | [(anonymous)](declarations/instance-source-edition-4.md) | 679 | `BLOCKED_NATIVE_ADMISSION` |
| 87 | `theorem` | [notMem_bot](declarations/notmem-bot.md) | 684 | `BLOCKED_NATIVE_ADMISSION` |
| 88 | `instance` | [isEmpty_bot](declarations/isempty-bot.md) | 689 | `BLOCKED_NATIVE_ADMISSION` |
| 89 | `theorem` | [direction_bot](declarations/direction-bot.md) | 696 | `BLOCKED_NATIVE_ADMISSION` |
| 90 | `theorem` | [coe_eq_bot_iff](declarations/coe-eq-bot-iff.md) | 702 | `BLOCKED_NATIVE_ADMISSION` |
| 91 | `theorem` | [coe_eq_univ_iff](declarations/coe-eq-univ-iff.md) | 706 | `BLOCKED_NATIVE_ADMISSION` |
| 92 | `theorem` | [nonempty_iff_ne_bot](declarations/nonempty-iff-ne-bot.md) | 709 | `BLOCKED_NATIVE_ADMISSION` |
| 93 | `theorem` | [eq_bot_or_nonempty](declarations/eq-bot-or-nonempty.md) | 713 | `BLOCKED_NATIVE_ADMISSION` |
| 94 | `theorem` | [direction_eq_top_iff_of_nonempty](declarations/direction-eq-top-iff-of-nonempty.md) | 719 | `BLOCKED_NATIVE_ADMISSION` |
| 95 | `theorem` | [inf_coe](declarations/inf-coe.md) | 732 | `BLOCKED_NATIVE_ADMISSION` |
| 96 | `theorem` | [mem_inf_iff](declarations/mem-inf-iff.md) | 736 | `BLOCKED_NATIVE_ADMISSION` |
| 97 | `theorem` | [direction_inf](declarations/direction-inf.md) | 741 | `BLOCKED_NATIVE_ADMISSION` |
| 98 | `theorem` | [direction_inf_of_mem](declarations/direction-inf-of-mem.md) | 750 | `BLOCKED_NATIVE_ADMISSION` |
| 99 | `theorem` | [direction_inf_of_mem_inf](declarations/direction-inf-of-mem-inf.md) | 758 | `BLOCKED_NATIVE_ADMISSION` |
| 100 | `theorem` | [direction_le](declarations/direction-le.md) | 764 | `BLOCKED_NATIVE_ADMISSION` |
| 101 | `theorem` | [sup_direction_le](declarations/sup-direction-le.md) | 770 | `BLOCKED_NATIVE_ADMISSION` |
| 102 | `theorem` | [sup_direction_lt_of_nonempty_of_inter_empty](declarations/sup-direction-lt-of-nonempty-of-inter-empty.md) | 780 | `BLOCKED_NATIVE_ADMISSION` |
| 103 | `theorem` | [inter_nonempty_of_nonempty_of_sup_direction_eq_top](declarations/inter-nonempty-of-nonempty-of-sup-direction-eq-top.md) | 801 | `BLOCKED_NATIVE_ADMISSION` |
| 104 | `theorem` | [inter_eq_singleton_of_nonempty_of_isCompl](declarations/inter-eq-singleton-of-nonempty-of-iscompl.md) | 812 | `BLOCKED_NATIVE_ADMISSION` |
| 105 | `theorem` | [affineSpan_coe](declarations/affinespan-coe.md) | 828 | `BLOCKED_NATIVE_ADMISSION` |
| 106 | `theorem` | [affineSpan_nonempty](declarations/affinespan-nonempty.md) | 849 | `BLOCKED_NATIVE_ADMISSION` |
| 107 | `instance` | [(anonymous)](declarations/instance.md) | 855 | `BLOCKED_NATIVE_ADMISSION` |
| 108 | `theorem` | [affineSpan_eq_bot](declarations/affinespan-eq-bot.md) | 860 | `BLOCKED_NATIVE_ADMISSION` |
| 109 | `theorem` | [bot_lt_affineSpan](declarations/bot-lt-affinespan.md) | 865 | `BLOCKED_NATIVE_ADMISSION` |
| 110 | `theorem` | [affineSpan_induction](declarations/affinespan-induction.md) | 876 | `BLOCKED_NATIVE_ADMISSION` |
| 111 | `theorem` | [affineSpan_induction'](declarations/affinespan-induction-source-edition-2.md) | 883 | `BLOCKED_NATIVE_ADMISSION` |
| 112 | `theorem` | [vsub_mem_vectorSpan_pair](declarations/vsub-mem-vectorspan-pair.md) | 903 | `BLOCKED_NATIVE_ADMISSION` |
| 113 | `theorem` | [vsub_rev_mem_vectorSpan_pair](declarations/vsub-rev-mem-vectorspan-pair.md) | 907 | `BLOCKED_NATIVE_ADMISSION` |
| 114 | `theorem` | [smul_vsub_mem_vectorSpan_pair](declarations/smul-vsub-mem-vectorspan-pair.md) | 913 | `BLOCKED_NATIVE_ADMISSION` |
| 115 | `theorem` | [smul_vsub_rev_mem_vectorSpan_pair](declarations/smul-vsub-rev-mem-vectorspan-pair.md) | 918 | `BLOCKED_NATIVE_ADMISSION` |
| 116 | `theorem` | [left_mem_affineSpan_pair](declarations/left-mem-affinespan-pair.md) | 929 | `BLOCKED_NATIVE_ADMISSION` |
| 117 | `theorem` | [right_mem_affineSpan_pair](declarations/right-mem-affinespan-pair.md) | 933 | `BLOCKED_NATIVE_ADMISSION` |
| 118 | `theorem` | [affineSpan_pair_le_of_mem_of_mem](declarations/affinespan-pair-le-of-mem-of-mem.md) | 939 | `BLOCKED_NATIVE_ADMISSION` |
| 119 | `theorem` | [affineSpan_pair_le_of_left_mem](declarations/affinespan-pair-le-of-left-mem.md) | 946 | `BLOCKED_NATIVE_ADMISSION` |
| 120 | `theorem` | [affineSpan_pair_le_of_right_mem](declarations/affinespan-pair-le-of-right-mem.md) | 952 | `BLOCKED_NATIVE_ADMISSION` |
| 121 | `theorem` | [affineSpan_mono](declarations/affinespan-mono.md) | 960 | `BLOCKED_NATIVE_ADMISSION` |
| 122 | `theorem` | [affineSpan_insert_affineSpan](declarations/affinespan-insert-affinespan.md) | 965 | `BLOCKED_NATIVE_ADMISSION` |
| 123 | `theorem` | [affineSpan_insert_eq_affineSpan](declarations/affinespan-insert-eq-affinespan.md) | 971 | `BLOCKED_NATIVE_ADMISSION` |
| 124 | `theorem` | [vectorSpan_insert_eq_vectorSpan](declarations/vectorspan-insert-eq-vectorspan.md) | 980 | `BLOCKED_NATIVE_ADMISSION` |
| 125 | `lemma` | [affineSpan_le_toAffineSubspace_span](declarations/affinespan-le-toaffinesubspace-span.md) | 986 | `BLOCKED_NATIVE_ADMISSION` |
| 126 | `lemma` | [affineSpan_subset_span](declarations/affinespan-subset-span.md) | 997 | `BLOCKED_NATIVE_ADMISSION` |
| 127 | `lemma` | [affineSpan_insert_zero](declarations/affinespan-insert-zero.md) | 1003 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=f49d7053861690bbe7029b20de4fbae2aca484dc85e54ebd0e32dd7806551e24 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Geometry/ConvexGeometry/Defs/Variant44c5175bddf722c482289b9cbb5e41eff8c5029cf67a8003177feb43f1c28e2f.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
