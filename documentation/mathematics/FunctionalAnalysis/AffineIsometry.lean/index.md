# Affine Isometry

[Complete source index](../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**147 observed declarations and anonymous commands**, 119 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Topology/GeneralTopology/AffineIsometry/Variantc0d437aa9ee7e38838011d43a5bf7890c2346930fbe68fec01fa438ccdb2438e.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `df394e86378880aa3d6ad65238b686d436e20d1f`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../_verification/specifications/FunctionalAnalysis/AffineIsometry.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `structure` | [AffineIsometry](declarations/affineisometry.md) | 50 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `def` | [linearIsometry](declarations/linearisometry.md) | 64 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `theorem` | [linear_eq_linearIsometry](declarations/linear-eq-linearisometry.md) | 69 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `instance` | [(anonymous)](declarations/instance-source-edition-4.md) | 74 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [coe_toAffineMap](declarations/coe-toaffinemap.md) | 79 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [toAffineMap_injective](declarations/toaffinemap-injective.md) | 83 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [coeFn_injective](declarations/coefn-injective.md) | 88 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [ext](declarations/ext.md) | 93 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `def` | [toAffineIsometry](declarations/toaffineisometry-source-edition-2.md) | 104 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [coe_toAffineIsometry](declarations/coe-toaffineisometry.md) | 109 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [toAffineIsometry_linearIsometry](declarations/toaffineisometry-linearisometry.md) | 114 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [toAffineIsometry_toAffineMap](declarations/toaffineisometry-toaffinemap.md) | 121 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [map_vadd](declarations/map-vadd.md) | 132 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [map_vsub](declarations/map-vsub.md) | 137 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [dist_map](declarations/dist-map-source-edition-2.md) | 142 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [nndist_map](declarations/nndist-map.md) | 148 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [edist_map](declarations/edist-map-source-edition-2.md) | 153 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [isometry](declarations/isometry.md) | 156 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [injective](declarations/injective.md) | 160 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [map_eq_iff](declarations/map-eq-iff-source-edition-2.md) | 165 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [map_ne](declarations/map-ne.md) | 169 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [lipschitz](declarations/lipschitz-source-edition-2.md) | 173 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [antilipschitz](declarations/antilipschitz.md) | 177 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [continuous](declarations/continuous-source-edition-2.md) | 182 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [ediam_image](declarations/ediam-image.md) | 186 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [ediam_range](declarations/ediam-range.md) | 190 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [diam_image](declarations/diam-image-source-edition-2.md) | 194 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [diam_range](declarations/diam-range.md) | 198 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [comp_continuous_iff](declarations/comp-continuous-iff.md) | 203 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `def` | [id](declarations/id.md) | 209 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [coe_id](declarations/coe-id.md) | 214 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [id_apply](declarations/id-apply.md) | 219 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [id_toAffineMap](declarations/id-toaffinemap.md) | 224 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `instance` | [(anonymous)](declarations/instance-source-edition-6.md) | 228 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `def` | [comp](declarations/comp.md) | 232 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `theorem` | [coe_comp](declarations/coe-comp.md) | 237 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `theorem` | [id_comp](declarations/id-comp.md) | 242 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `theorem` | [comp_id](declarations/comp-id.md) | 247 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `theorem` | [comp_assoc](declarations/comp-assoc.md) | 251 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `instance` | [(anonymous)](declarations/instance-source-edition-3.md) | 256 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `theorem` | [coe_one](declarations/coe-one.md) | 264 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `theorem` | [coe_mul](declarations/coe-mul.md) | 269 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `def` | [subtypeₐᵢ](declarations/subtype.md) | 278 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `theorem` | [subtypeₐᵢ_linear](declarations/subtype-linear.md) | 282 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `theorem` | [subtypeₐᵢ_linearIsometry](declarations/subtype-linearisometry.md) | 288 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `theorem` | [coe_subtypeₐᵢ](declarations/coe-subtype.md) | 294 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `theorem` | [subtypeₐᵢ_toAffineMap](declarations/subtype-toaffinemap.md) | 299 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `structure` | [AffineIsometryEquiv](declarations/affineisometryequiv.md) | 309 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `def` | [linearIsometryEquiv](declarations/linearisometryequiv.md) | 323 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `theorem` | [linear_eq_linear_isometry](declarations/linear-eq-linear-isometry.md) | 328 | `BLOCKED_NATIVE_ADMISSION` |
| 51 | `instance` | [(anonymous)](declarations/instance-source-edition-5.md) | 333 | `BLOCKED_NATIVE_ADMISSION` |
| 52 | `theorem` | [coe_mk](declarations/coe-mk.md) | 345 | `BLOCKED_NATIVE_ADMISSION` |
| 53 | `theorem` | [coe_toAffineEquiv](declarations/coe-toaffineequiv.md) | 350 | `BLOCKED_NATIVE_ADMISSION` |
| 54 | `theorem` | [toAffineEquiv_injective](declarations/toaffineequiv-injective.md) | 354 | `BLOCKED_NATIVE_ADMISSION` |
| 55 | `theorem` | [ext](declarations/ext-source-edition-2.md) | 359 | `BLOCKED_NATIVE_ADMISSION` |
| 56 | `def` | [toAffineIsometry](declarations/toaffineisometry.md) | 364 | `BLOCKED_NATIVE_ADMISSION` |
| 57 | `theorem` | [coe_toAffineIsometry](declarations/coe-toaffineisometry-source-edition-2.md) | 369 | `BLOCKED_NATIVE_ADMISSION` |
| 58 | `def` | [mk'](declarations/mk.md) | 377 | `BLOCKED_NATIVE_ADMISSION` |
| 59 | `theorem` | [coe_mk'](declarations/coe-mk-source-edition-2.md) | 383 | `BLOCKED_NATIVE_ADMISSION` |
| 60 | `theorem` | [linearIsometryEquiv_mk'](declarations/linearisometryequiv-mk.md) | 388 | `BLOCKED_NATIVE_ADMISSION` |
| 61 | `def` | [toAffineIsometryEquiv](declarations/toaffineisometryequiv.md) | 401 | `BLOCKED_NATIVE_ADMISSION` |
| 62 | `theorem` | [coe_toAffineIsometryEquiv](declarations/coe-toaffineisometryequiv.md) | 406 | `BLOCKED_NATIVE_ADMISSION` |
| 63 | `theorem` | [toAffineIsometryEquiv_linearIsometryEquiv](declarations/toaffineisometryequiv-linearisometryequiv.md) | 411 | `BLOCKED_NATIVE_ADMISSION` |
| 64 | `theorem` | [toAffineIsometryEquiv_toAffineEquiv](declarations/toaffineisometryequiv-toaffineequiv.md) | 419 | `BLOCKED_NATIVE_ADMISSION` |
| 65 | `theorem` | [toAffineIsometryEquiv_toAffineIsometry](declarations/toaffineisometryequiv-toaffineisometry.md) | 426 | `BLOCKED_NATIVE_ADMISSION` |
| 66 | `theorem` | [isometry](declarations/isometry-source-edition-2.md) | 437 | `BLOCKED_NATIVE_ADMISSION` |
| 67 | `def` | [toIsometryEquiv](declarations/toisometryequiv.md) | 442 | `BLOCKED_NATIVE_ADMISSION` |
| 68 | `theorem` | [coe_toIsometryEquiv](declarations/coe-toisometryequiv.md) | 447 | `BLOCKED_NATIVE_ADMISSION` |
| 69 | `theorem` | [range_eq_univ](declarations/range-eq-univ.md) | 451 | `BLOCKED_NATIVE_ADMISSION` |
| 70 | `def` | [toHomeomorph](declarations/tohomeomorph.md) | 457 | `BLOCKED_NATIVE_ADMISSION` |
| 71 | `theorem` | [coe_toHomeomorph](declarations/coe-tohomeomorph.md) | 462 | `BLOCKED_NATIVE_ADMISSION` |
| 72 | `theorem` | [continuous](declarations/continuous.md) | 466 | `BLOCKED_NATIVE_ADMISSION` |
| 73 | `theorem` | [continuousAt](declarations/continuousat.md) | 470 | `BLOCKED_NATIVE_ADMISSION` |
| 74 | `theorem` | [continuousOn](declarations/continuouson.md) | 474 | `BLOCKED_NATIVE_ADMISSION` |
| 75 | `theorem` | [continuousWithinAt](declarations/continuouswithinat.md) | 478 | `BLOCKED_NATIVE_ADMISSION` |
| 76 | `def` | [refl](declarations/refl.md) | 485 | `BLOCKED_NATIVE_ADMISSION` |
| 77 | `instance` | [(anonymous)](declarations/instance-source-edition-2.md) | 491 | `BLOCKED_NATIVE_ADMISSION` |
| 78 | `theorem` | [coe_refl](declarations/coe-refl.md) | 495 | `BLOCKED_NATIVE_ADMISSION` |
| 79 | `theorem` | [toAffineEquiv_refl](declarations/toaffineequiv-refl.md) | 500 | `BLOCKED_NATIVE_ADMISSION` |
| 80 | `theorem` | [toIsometryEquiv_refl](declarations/toisometryequiv-refl.md) | 505 | `BLOCKED_NATIVE_ADMISSION` |
| 81 | `theorem` | [toHomeomorph_refl](declarations/tohomeomorph-refl.md) | 510 | `BLOCKED_NATIVE_ADMISSION` |
| 82 | `def` | [symm](declarations/symm.md) | 515 | `BLOCKED_NATIVE_ADMISSION` |
| 83 | `theorem` | [apply_symm_apply](declarations/apply-symm-apply.md) | 520 | `BLOCKED_NATIVE_ADMISSION` |
| 84 | `theorem` | [symm_apply_apply](declarations/symm-apply-apply.md) | 525 | `BLOCKED_NATIVE_ADMISSION` |
| 85 | `theorem` | [symm_symm](declarations/symm-symm.md) | 530 | `BLOCKED_NATIVE_ADMISSION` |
| 86 | `theorem` | [toAffineEquiv_symm](declarations/toaffineequiv-symm.md) | 535 | `BLOCKED_NATIVE_ADMISSION` |
| 87 | `theorem` | [toIsometryEquiv_symm](declarations/toisometryequiv-symm.md) | 540 | `BLOCKED_NATIVE_ADMISSION` |
| 88 | `theorem` | [toHomeomorph_symm](declarations/tohomeomorph-symm.md) | 545 | `BLOCKED_NATIVE_ADMISSION` |
| 89 | `def` | [trans](declarations/trans.md) | 550 | `BLOCKED_NATIVE_ADMISSION` |
| 90 | `theorem` | [coe_trans](declarations/coe-trans.md) | 555 | `BLOCKED_NATIVE_ADMISSION` |
| 91 | `theorem` | [trans_refl](declarations/trans-refl.md) | 560 | `BLOCKED_NATIVE_ADMISSION` |
| 92 | `theorem` | [refl_trans](declarations/refl-trans.md) | 565 | `BLOCKED_NATIVE_ADMISSION` |
| 93 | `theorem` | [self_trans_symm](declarations/self-trans-symm.md) | 570 | `BLOCKED_NATIVE_ADMISSION` |
| 94 | `theorem` | [symm_trans_self](declarations/symm-trans-self.md) | 575 | `BLOCKED_NATIVE_ADMISSION` |
| 95 | `theorem` | [coe_symm_trans](declarations/coe-symm-trans.md) | 580 | `BLOCKED_NATIVE_ADMISSION` |
| 96 | `theorem` | [trans_assoc](declarations/trans-assoc.md) | 585 | `BLOCKED_NATIVE_ADMISSION` |
| 97 | `instance` | [(anonymous)](declarations/instance.md) | 591 | `BLOCKED_NATIVE_ADMISSION` |
| 98 | `theorem` | [coe_one](declarations/coe-one-source-edition-2.md) | 601 | `BLOCKED_NATIVE_ADMISSION` |
| 99 | `theorem` | [coe_mul](declarations/coe-mul-source-edition-2.md) | 606 | `BLOCKED_NATIVE_ADMISSION` |
| 100 | `theorem` | [coe_inv](declarations/coe-inv.md) | 611 | `BLOCKED_NATIVE_ADMISSION` |
| 101 | `theorem` | [map_vadd](declarations/map-vadd-source-edition-2.md) | 616 | `BLOCKED_NATIVE_ADMISSION` |
| 102 | `theorem` | [map_vsub](declarations/map-vsub-source-edition-2.md) | 621 | `BLOCKED_NATIVE_ADMISSION` |
| 103 | `theorem` | [dist_map](declarations/dist-map.md) | 626 | `BLOCKED_NATIVE_ADMISSION` |
| 104 | `theorem` | [edist_map](declarations/edist-map.md) | 631 | `BLOCKED_NATIVE_ADMISSION` |
| 105 | `theorem` | [bijective](declarations/bijective.md) | 635 | `BLOCKED_NATIVE_ADMISSION` |
| 106 | `theorem` | [injective](declarations/injective-source-edition-2.md) | 639 | `BLOCKED_NATIVE_ADMISSION` |
| 107 | `theorem` | [surjective](declarations/surjective.md) | 643 | `BLOCKED_NATIVE_ADMISSION` |
| 108 | `theorem` | [map_eq_iff](declarations/map-eq-iff.md) | 648 | `BLOCKED_NATIVE_ADMISSION` |
| 109 | `theorem` | [map_ne](declarations/map-ne-source-edition-2.md) | 652 | `BLOCKED_NATIVE_ADMISSION` |
| 110 | `theorem` | [lipschitz](declarations/lipschitz.md) | 656 | `BLOCKED_NATIVE_ADMISSION` |
| 111 | `theorem` | [antilipschitz](declarations/antilipschitz-source-edition-2.md) | 660 | `BLOCKED_NATIVE_ADMISSION` |
| 112 | `theorem` | [ediam_image](declarations/ediam-image-source-edition-2.md) | 665 | `BLOCKED_NATIVE_ADMISSION` |
| 113 | `theorem` | [diam_image](declarations/diam-image.md) | 670 | `BLOCKED_NATIVE_ADMISSION` |
| 114 | `theorem` | [comp_continuousOn_iff](declarations/comp-continuouson-iff.md) | 677 | `BLOCKED_NATIVE_ADMISSION` |
| 115 | `theorem` | [comp_continuous_iff](declarations/comp-continuous-iff-source-edition-2.md) | 682 | `BLOCKED_NATIVE_ADMISSION` |
| 116 | `def` | [vaddConst](declarations/vaddconst.md) | 691 | `BLOCKED_NATIVE_ADMISSION` |
| 117 | `theorem` | [coe_vaddConst](declarations/coe-vaddconst.md) | 698 | `BLOCKED_NATIVE_ADMISSION` |
| 118 | `theorem` | [coe_vaddConst'](declarations/coe-vaddconst-source-edition-2.md) | 703 | `BLOCKED_NATIVE_ADMISSION` |
| 119 | `theorem` | [coe_vaddConst_symm](declarations/coe-vaddconst-symm.md) | 707 | `BLOCKED_NATIVE_ADMISSION` |
| 120 | `theorem` | [vaddConst_toAffineEquiv](declarations/vaddconst-toaffineequiv.md) | 712 | `BLOCKED_NATIVE_ADMISSION` |
| 121 | `def` | [constVSub](declarations/constvsub.md) | 720 | `BLOCKED_NATIVE_ADMISSION` |
| 122 | `theorem` | [coe_constVSub](declarations/coe-constvsub.md) | 727 | `BLOCKED_NATIVE_ADMISSION` |
| 123 | `theorem` | [symm_constVSub](declarations/symm-constvsub.md) | 732 | `BLOCKED_NATIVE_ADMISSION` |
| 124 | `def` | [constVAdd](declarations/constvadd.md) | 743 | `BLOCKED_NATIVE_ADMISSION` |
| 125 | `theorem` | [coe_constVAdd](declarations/coe-constvadd.md) | 750 | `BLOCKED_NATIVE_ADMISSION` |
| 126 | `theorem` | [constVAdd_zero](declarations/constvadd-zero.md) | 755 | `BLOCKED_NATIVE_ADMISSION` |
| 127 | `theorem` | [vadd_vsub](declarations/vadd-vsub.md) | 761 | `BLOCKED_NATIVE_ADMISSION` |
| 128 | `def` | [pointReflection](declarations/pointreflection.md) | 770 | `BLOCKED_NATIVE_ADMISSION` |
| 129 | `theorem` | [pointReflection_apply](declarations/pointreflection-apply.md) | 776 | `BLOCKED_NATIVE_ADMISSION` |
| 130 | `theorem` | [pointReflection_toAffineEquiv](declarations/pointreflection-toaffineequiv.md) | 781 | `BLOCKED_NATIVE_ADMISSION` |
| 131 | `theorem` | [pointReflection_self](declarations/pointreflection-self.md) | 787 | `BLOCKED_NATIVE_ADMISSION` |
| 132 | `theorem` | [pointReflection_involutive](declarations/pointreflection-involutive.md) | 791 | `BLOCKED_NATIVE_ADMISSION` |
| 133 | `theorem` | [pointReflection_symm](declarations/pointreflection-symm.md) | 796 | `BLOCKED_NATIVE_ADMISSION` |
| 134 | `theorem` | [dist_pointReflection_fixed](declarations/dist-pointreflection-fixed.md) | 801 | `BLOCKED_NATIVE_ADMISSION` |
| 135 | `theorem` | [dist_pointReflection_self'](declarations/dist-pointreflection-self-source-edition-2.md) | 806 | `BLOCKED_NATIVE_ADMISSION` |
| 136 | `theorem` | [dist_pointReflection_self](declarations/dist-pointreflection-self.md) | 811 | `BLOCKED_NATIVE_ADMISSION` |
| 137 | `theorem` | [pointReflection_fixed_iff](declarations/pointreflection-fixed-iff.md) | 816 | `BLOCKED_NATIVE_ADMISSION` |
| 138 | `theorem` | [dist_pointReflection_self_real](declarations/dist-pointreflection-self-real.md) | 823 | `BLOCKED_NATIVE_ADMISSION` |
| 139 | `theorem` | [pointReflection_midpoint_left](declarations/pointreflection-midpoint-left.md) | 828 | `BLOCKED_NATIVE_ADMISSION` |
| 140 | `theorem` | [pointReflection_midpoint_right](declarations/pointreflection-midpoint-right.md) | 833 | `BLOCKED_NATIVE_ADMISSION` |
| 141 | `theorem` | [AffineMap.continuous_linear_iff](declarations/affinemap-continuous-linear-iff.md) | 842 | `BLOCKED_NATIVE_ADMISSION` |
| 142 | `theorem` | [AffineMap.isOpenMap_linear_iff](declarations/affinemap-isopenmap-linear-iff.md) | 858 | `BLOCKED_NATIVE_ADMISSION` |
| 143 | `def` | [equivMapOfInjective](declarations/equivmapofinjective.md) | 881 | `BLOCKED_NATIVE_ADMISSION` |
| 144 | `def` | [isometryEquivMap](declarations/isometryequivmap.md) | 896 | `BLOCKED_NATIVE_ADMISSION` |
| 145 | `theorem` | [isometryEquivMap.apply_symm_apply](declarations/isometryequivmap-apply-symm-apply.md) | 902 | `BLOCKED_NATIVE_ADMISSION` |
| 146 | `theorem` | [isometryEquivMap.coe_apply](declarations/isometryequivmap-coe-apply.md) | 908 | `BLOCKED_NATIVE_ADMISSION` |
| 147 | `theorem` | [isometryEquivMap.toAffineMap_eq](declarations/isometryequivmap-toaffinemap-eq.md) | 914 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=22c6d2060183a39c14a56603a7c79be3c38bdc7f6ce92866e78f43941460368a -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/AffineIsometry/Variantc0d437aa9ee7e38838011d43a5bf7890c2346930fbe68fec01fa438ccdb2438e.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
