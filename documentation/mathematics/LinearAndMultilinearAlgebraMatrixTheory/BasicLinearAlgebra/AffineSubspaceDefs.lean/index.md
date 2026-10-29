# Affine Subspace Defs

[Complete source index](../../../complete-source-index.md) · [Up one directory](../../../complete-source-index.md) · [Full source](source.md)

**127 observed declarations and anonymous commands**, 111 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Geometry/ConvexGeometry/Defs/Variant6e329af15cc187e0292097c7d6f2e4270aa49b519021fa474951ef8c1219963c.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `5c5c3426696924de352f23248559894bf6f813be`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineSubspaceDefs.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [vectorSpan](declarations/vectorspan.md) | 59 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `theorem` | [vectorSpan_def](declarations/vectorspan-def.md) | 63 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `theorem` | [vectorSpan_mono](declarations/vectorspan-mono.md) | 67 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `theorem` | [vectorSpan_empty](declarations/vectorspan-empty.md) | 73 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [vectorSpan_singleton](declarations/vectorspan-singleton.md) | 78 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [vsub_set_subset_vectorSpan](declarations/vsub-set-subset-vectorspan.md) | 81 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [vsub_mem_vectorSpan](declarations/vsub-mem-vectorspan.md) | 85 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `def` | [spanPoints](declarations/spanpoints.md) | 91 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [mem_spanPoints](declarations/mem-spanpoints.md) | 95 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [subset_spanPoints](declarations/subset-spanpoints.md) | 99 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [spanPoints_nonempty](declarations/spanpoints-nonempty.md) | 103 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [vadd_mem_spanPoints_of_mem_spanPoints_of_mem_vectorSpan](declarations/vadd-mem-spanpoints-of-mem-spanpoints-of-mem-vectorspan.md) | 113 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [vsub_mem_vectorSpan_of_mem_spanPoints_of_mem_spanPoints](declarations/vsub-mem-vectorspan-of-mem-spanpoints-of-mem-spanpoints.md) | 120 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `structure` | [AffineSubspace](declarations/affinesubspace.md) | 133 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `def` | [toAffineSubspace](declarations/toaffinesubspace.md) | 146 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `instance` | [(anonymous)](declarations/instance.md) | 157 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [mem_coe](declarations/mem-coe.md) | 163 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `def` | [direction](declarations/direction.md) | 172 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [direction_eq_vectorSpan](declarations/direction-eq-vectorspan.md) | 176 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `def` | [directionOfNonempty](declarations/directionofnonempty.md) | 182 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [directionOfNonempty_eq_direction](declarations/directionofnonempty-eq-direction.md) | 200 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [coe_direction_eq_vsub_set](declarations/coe-direction-eq-vsub-set.md) | 208 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [mem_direction_iff_eq_vsub](declarations/mem-direction-iff-eq-vsub.md) | 214 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [vadd_mem_of_mem_direction](declarations/vadd-mem-of-mem-direction.md) | 221 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [vsub_mem_direction](declarations/vsub-mem-direction.md) | 230 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [vadd_mem_iff_mem_direction](declarations/vadd-mem-iff-mem-direction.md) | 236 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [vadd_mem_iff_mem_of_mem_direction](declarations/vadd-mem-iff-mem-of-mem-direction.md) | 242 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [coe_direction_eq_vsub_set_right](declarations/coe-direction-eq-vsub-set-right.md) | 250 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [coe_direction_eq_vsub_set_left](declarations/coe-direction-eq-vsub-set-left.md) | 262 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [mem_direction_iff_eq_vsub_right](declarations/mem-direction-iff-eq-vsub-right.md) | 274 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [mem_direction_iff_eq_vsub_left](declarations/mem-direction-iff-eq-vsub-left.md) | 281 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [coe_injective](declarations/coe-injective.md) | 287 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [ext](declarations/ext.md) | 291 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [ext_iff](declarations/ext-iff.md) | 294 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `theorem` | [ext_of_direction_eq](declarations/ext-of-direction-eq.md) | 298 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `theorem` | [eq_iff_direction_eq_of_mem](declarations/eq-iff-direction-eq-of-mem.md) | 317 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `def` | [mk'](declarations/mk.md) | 322 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `theorem` | [mem_mk'](declarations/mem-mk.md) | 329 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `theorem` | [self_mem_mk'](declarations/self-mem-mk.md) | 333 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `theorem` | [vadd_mem_mk'](declarations/vadd-mem-mk.md) | 338 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `theorem` | [mk'_nonempty](declarations/mk-nonempty.md) | 343 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `theorem` | [direction_mk'](declarations/direction-mk.md) | 348 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `theorem` | [mem_mk'_iff_vsub_mem](declarations/mem-mk-iff-vsub-mem.md) | 359 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `theorem` | [mk'_eq](declarations/mk-eq.md) | 370 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `theorem` | [spanPoints_subset_coe_of_subset_coe](declarations/spanpoints-subset-coe-of-subset-coe.md) | 374 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `theorem` | [mem_toAffineSubspace](declarations/mem-toaffinesubspace.md) | 392 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `theorem` | [toAffineSubspace_direction](declarations/toaffinesubspace-direction.md) | 397 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `def` | [affineSpan](declarations/affinespan.md) | 409 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `theorem` | [coe_affineSpan](declarations/coe-affinespan.md) | 418 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `lemma` | [mem_affineSpan_iff_exists](declarations/mem-affinespan-iff-exists.md) | 422 | `BLOCKED_NATIVE_ADMISSION` |
| 51 | `theorem` | [subset_affineSpan](declarations/subset-affinespan.md) | 427 | `BLOCKED_NATIVE_ADMISSION` |
| 52 | `theorem` | [direction_affineSpan](declarations/direction-affinespan.md) | 431 | `BLOCKED_NATIVE_ADMISSION` |
| 53 | `theorem` | [mem_affineSpan](declarations/mem-affinespan.md) | 442 | `BLOCKED_NATIVE_ADMISSION` |
| 54 | `lemma` | [vectorSpan_add_self](declarations/vectorspan-add-self.md) | 446 | `BLOCKED_NATIVE_ADMISSION` |
| 55 | `theorem` | [vadd_mem_affineSpan_of_mem_affineSpan_of_mem_vectorSpan](declarations/vadd-mem-affinespan-of-mem-affinespan-of-mem-vectorspan.md) | 455 | `BLOCKED_NATIVE_ADMISSION` |
| 56 | `theorem` | [vsub_mem_vectorSpan_of_mem_affineSpan_of_mem_affineSpan](declarations/vsub-mem-vectorspan-of-mem-affinespan-of-mem-affinespan.md) | 460 | `BLOCKED_NATIVE_ADMISSION` |
| 57 | `theorem` | [affineSpan_le_of_subset_coe](declarations/affinespan-le-of-subset-coe.md) | 465 | `BLOCKED_NATIVE_ADMISSION` |
| 58 | `instance` | [(anonymous)](declarations/instance-source-edition-3.md) | 476 | `BLOCKED_NATIVE_ADMISSION` |
| 59 | `instance` | [(anonymous)](declarations/instance-source-edition-2.md) | 514 | `BLOCKED_NATIVE_ADMISSION` |
| 60 | `theorem` | [le_def](declarations/le-def-source-edition-2.md) | 518 | `BLOCKED_NATIVE_ADMISSION` |
| 61 | `theorem` | [le_def'](declarations/le-def.md) | 523 | `BLOCKED_NATIVE_ADMISSION` |
| 62 | `theorem` | [lt_def](declarations/lt-def.md) | 527 | `BLOCKED_NATIVE_ADMISSION` |
| 63 | `theorem` | [not_le_iff_exists](declarations/not-le-iff-exists.md) | 532 | `BLOCKED_NATIVE_ADMISSION` |
| 64 | `theorem` | [exists_of_lt](declarations/exists-of-lt.md) | 536 | `BLOCKED_NATIVE_ADMISSION` |
| 65 | `theorem` | [lt_iff_le_and_exists](declarations/lt-iff-le-and-exists.md) | 541 | `BLOCKED_NATIVE_ADMISSION` |
| 66 | `theorem` | [eq_of_direction_eq_of_nonempty_of_le](declarations/eq-of-direction-eq-of-nonempty-of-le.md) | 547 | `BLOCKED_NATIVE_ADMISSION` |
| 67 | `theorem` | [affineSpan_eq_sInf](declarations/affinespan-eq-sinf.md) | 555 | `BLOCKED_NATIVE_ADMISSION` |
| 68 | `def` | [gi](declarations/gi.md) | 563 | `BLOCKED_NATIVE_ADMISSION` |
| 69 | `theorem` | [span_empty](declarations/span-empty.md) | 572 | `BLOCKED_NATIVE_ADMISSION` |
| 70 | `theorem` | [span_univ](declarations/span-univ.md) | 577 | `BLOCKED_NATIVE_ADMISSION` |
| 71 | `theorem` | [_root_.affineSpan_le](declarations/root-affinespan-le.md) | 582 | `BLOCKED_NATIVE_ADMISSION` |
| 72 | `theorem` | [span_union](declarations/span-union.md) | 589 | `BLOCKED_NATIVE_ADMISSION` |
| 73 | `theorem` | [span_iUnion](declarations/span-iunion.md) | 593 | `BLOCKED_NATIVE_ADMISSION` |
| 74 | `theorem` | [top_coe](declarations/top-coe.md) | 600 | `BLOCKED_NATIVE_ADMISSION` |
| 75 | `theorem` | [mem_top](declarations/mem-top.md) | 605 | `BLOCKED_NATIVE_ADMISSION` |
| 76 | `lemma` | [mk'_top](declarations/mk-top.md) | 608 | `BLOCKED_NATIVE_ADMISSION` |
| 77 | `theorem` | [direction_top](declarations/direction-top.md) | 616 | `BLOCKED_NATIVE_ADMISSION` |
| 78 | `theorem` | [bot_coe](declarations/bot-coe.md) | 626 | `BLOCKED_NATIVE_ADMISSION` |
| 79 | `theorem` | [bot_ne_top](declarations/bot-ne-top.md) | 629 | `BLOCKED_NATIVE_ADMISSION` |
| 80 | `instance` | [(anonymous)](declarations/instance-source-edition-5.md) | 634 | `BLOCKED_NATIVE_ADMISSION` |
| 81 | `theorem` | [nonempty_of_affineSpan_eq_top](declarations/nonempty-of-affinespan-eq-top.md) | 637 | `BLOCKED_NATIVE_ADMISSION` |
| 82 | `theorem` | [vectorSpan_eq_top_of_affineSpan_eq_top](declarations/vectorspan-eq-top-of-affinespan-eq-top.md) | 644 | `BLOCKED_NATIVE_ADMISSION` |
| 83 | `theorem` | [affineSpan_eq_top_iff_vectorSpan_eq_top_of_nonempty](declarations/affinespan-eq-top-iff-vectorspan-eq-top-of-nonempty.md) | 648 | `BLOCKED_NATIVE_ADMISSION` |
| 84 | `theorem` | [affineSpan_eq_top_iff_vectorSpan_eq_top_of_nontrivial](declarations/affinespan-eq-top-iff-vectorspan-eq-top-of-nontrivial.md) | 659 | `BLOCKED_NATIVE_ADMISSION` |
| 85 | `theorem` | [card_pos_of_affineSpan_eq_top](declarations/card-pos-of-affinespan-eq-top.md) | 665 | `BLOCKED_NATIVE_ADMISSION` |
| 86 | `instance` | [(anonymous)](declarations/instance-source-edition-6.md) | 671 | `BLOCKED_NATIVE_ADMISSION` |
| 87 | `theorem` | [notMem_bot](declarations/notmem-bot.md) | 676 | `BLOCKED_NATIVE_ADMISSION` |
| 88 | `instance` | [isEmpty_bot](declarations/isempty-bot.md) | 681 | `BLOCKED_NATIVE_ADMISSION` |
| 89 | `theorem` | [direction_bot](declarations/direction-bot.md) | 688 | `BLOCKED_NATIVE_ADMISSION` |
| 90 | `theorem` | [coe_eq_bot_iff](declarations/coe-eq-bot-iff.md) | 694 | `BLOCKED_NATIVE_ADMISSION` |
| 91 | `theorem` | [coe_eq_univ_iff](declarations/coe-eq-univ-iff.md) | 698 | `BLOCKED_NATIVE_ADMISSION` |
| 92 | `theorem` | [nonempty_iff_ne_bot](declarations/nonempty-iff-ne-bot.md) | 701 | `BLOCKED_NATIVE_ADMISSION` |
| 93 | `theorem` | [eq_bot_or_nonempty](declarations/eq-bot-or-nonempty.md) | 705 | `BLOCKED_NATIVE_ADMISSION` |
| 94 | `theorem` | [direction_eq_top_iff_of_nonempty](declarations/direction-eq-top-iff-of-nonempty.md) | 711 | `BLOCKED_NATIVE_ADMISSION` |
| 95 | `theorem` | [inf_coe](declarations/inf-coe.md) | 724 | `BLOCKED_NATIVE_ADMISSION` |
| 96 | `theorem` | [mem_inf_iff](declarations/mem-inf-iff.md) | 728 | `BLOCKED_NATIVE_ADMISSION` |
| 97 | `theorem` | [direction_inf](declarations/direction-inf.md) | 733 | `BLOCKED_NATIVE_ADMISSION` |
| 98 | `theorem` | [direction_inf_of_mem](declarations/direction-inf-of-mem.md) | 742 | `BLOCKED_NATIVE_ADMISSION` |
| 99 | `theorem` | [direction_inf_of_mem_inf](declarations/direction-inf-of-mem-inf.md) | 750 | `BLOCKED_NATIVE_ADMISSION` |
| 100 | `theorem` | [direction_le](declarations/direction-le.md) | 756 | `BLOCKED_NATIVE_ADMISSION` |
| 101 | `theorem` | [sup_direction_le](declarations/sup-direction-le.md) | 762 | `BLOCKED_NATIVE_ADMISSION` |
| 102 | `theorem` | [sup_direction_lt_of_nonempty_of_inter_empty](declarations/sup-direction-lt-of-nonempty-of-inter-empty.md) | 772 | `BLOCKED_NATIVE_ADMISSION` |
| 103 | `theorem` | [inter_nonempty_of_nonempty_of_sup_direction_eq_top](declarations/inter-nonempty-of-nonempty-of-sup-direction-eq-top.md) | 793 | `BLOCKED_NATIVE_ADMISSION` |
| 104 | `theorem` | [inter_eq_singleton_of_nonempty_of_isCompl](declarations/inter-eq-singleton-of-nonempty-of-iscompl.md) | 804 | `BLOCKED_NATIVE_ADMISSION` |
| 105 | `theorem` | [affineSpan_coe](declarations/affinespan-coe.md) | 820 | `BLOCKED_NATIVE_ADMISSION` |
| 106 | `theorem` | [affineSpan_nonempty](declarations/affinespan-nonempty.md) | 841 | `BLOCKED_NATIVE_ADMISSION` |
| 107 | `instance` | [(anonymous)](declarations/instance-source-edition-4.md) | 847 | `BLOCKED_NATIVE_ADMISSION` |
| 108 | `theorem` | [affineSpan_eq_bot](declarations/affinespan-eq-bot.md) | 852 | `BLOCKED_NATIVE_ADMISSION` |
| 109 | `theorem` | [bot_lt_affineSpan](declarations/bot-lt-affinespan.md) | 857 | `BLOCKED_NATIVE_ADMISSION` |
| 110 | `theorem` | [affineSpan_induction](declarations/affinespan-induction.md) | 868 | `BLOCKED_NATIVE_ADMISSION` |
| 111 | `theorem` | [affineSpan_induction'](declarations/affinespan-induction-source-edition-2.md) | 875 | `BLOCKED_NATIVE_ADMISSION` |
| 112 | `theorem` | [vsub_mem_vectorSpan_pair](declarations/vsub-mem-vectorspan-pair.md) | 895 | `BLOCKED_NATIVE_ADMISSION` |
| 113 | `theorem` | [vsub_rev_mem_vectorSpan_pair](declarations/vsub-rev-mem-vectorspan-pair.md) | 899 | `BLOCKED_NATIVE_ADMISSION` |
| 114 | `theorem` | [smul_vsub_mem_vectorSpan_pair](declarations/smul-vsub-mem-vectorspan-pair.md) | 905 | `BLOCKED_NATIVE_ADMISSION` |
| 115 | `theorem` | [smul_vsub_rev_mem_vectorSpan_pair](declarations/smul-vsub-rev-mem-vectorspan-pair.md) | 910 | `BLOCKED_NATIVE_ADMISSION` |
| 116 | `theorem` | [left_mem_affineSpan_pair](declarations/left-mem-affinespan-pair.md) | 921 | `BLOCKED_NATIVE_ADMISSION` |
| 117 | `theorem` | [right_mem_affineSpan_pair](declarations/right-mem-affinespan-pair.md) | 925 | `BLOCKED_NATIVE_ADMISSION` |
| 118 | `theorem` | [affineSpan_pair_le_of_mem_of_mem](declarations/affinespan-pair-le-of-mem-of-mem.md) | 931 | `BLOCKED_NATIVE_ADMISSION` |
| 119 | `theorem` | [affineSpan_pair_le_of_left_mem](declarations/affinespan-pair-le-of-left-mem.md) | 938 | `BLOCKED_NATIVE_ADMISSION` |
| 120 | `theorem` | [affineSpan_pair_le_of_right_mem](declarations/affinespan-pair-le-of-right-mem.md) | 944 | `BLOCKED_NATIVE_ADMISSION` |
| 121 | `theorem` | [affineSpan_mono](declarations/affinespan-mono.md) | 952 | `BLOCKED_NATIVE_ADMISSION` |
| 122 | `theorem` | [affineSpan_insert_affineSpan](declarations/affinespan-insert-affinespan.md) | 957 | `BLOCKED_NATIVE_ADMISSION` |
| 123 | `theorem` | [affineSpan_insert_eq_affineSpan](declarations/affinespan-insert-eq-affinespan.md) | 963 | `BLOCKED_NATIVE_ADMISSION` |
| 124 | `theorem` | [vectorSpan_insert_eq_vectorSpan](declarations/vectorspan-insert-eq-vectorspan.md) | 972 | `BLOCKED_NATIVE_ADMISSION` |
| 125 | `lemma` | [affineSpan_le_toAffineSubspace_span](declarations/affinespan-le-toaffinesubspace-span.md) | 978 | `BLOCKED_NATIVE_ADMISSION` |
| 126 | `lemma` | [affineSpan_subset_span](declarations/affinespan-subset-span.md) | 989 | `BLOCKED_NATIVE_ADMISSION` |
| 127 | `lemma` | [affineSpan_insert_zero](declarations/affinespan-insert-zero.md) | 995 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=064aaf6930956022cf418ae0ee112f111e2fc17bb9a08f21911161569ed25ed4 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Geometry/ConvexGeometry/Defs/Variant6e329af15cc187e0292097c7d6f2e4270aa49b519021fa474951ef8c1219963c.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
