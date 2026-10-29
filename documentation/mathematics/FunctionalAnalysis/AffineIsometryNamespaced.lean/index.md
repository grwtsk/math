# Affine Isometry Namespaced

[Complete source index](../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**147 observed declarations and anonymous commands**, 119 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Topology/GeneralTopology/AffineIsometry/Variant63399bcd0854e80e953531e5786fd9978542e148fcc4c8030d5505abba928cd5.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `12fbf96ab0aaf6b734fa7f0f304a81cf3aed6a4f`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../_verification/specifications/FunctionalAnalysis/AffineIsometryNamespaced.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `structure` | [AffineIsometry](declarations/affineisometry.md) | 58 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `def` | [linearIsometry](declarations/linearisometry.md) | 72 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `theorem` | [linear_eq_linearIsometry](declarations/linear-eq-linearisometry.md) | 77 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `instance` | [(anonymous)](declarations/instance-source-edition-3.md) | 82 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [coe_toAffineMap](declarations/coe-toaffinemap.md) | 87 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [toAffineMap_injective](declarations/toaffinemap-injective.md) | 91 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [coeFn_injective](declarations/coefn-injective.md) | 96 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [ext](declarations/ext.md) | 101 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `def` | [toAffineIsometry](declarations/toaffineisometry-source-edition-2.md) | 112 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [coe_toAffineIsometry](declarations/coe-toaffineisometry.md) | 117 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [toAffineIsometry_linearIsometry](declarations/toaffineisometry-linearisometry.md) | 122 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [toAffineIsometry_toAffineMap](declarations/toaffineisometry-toaffinemap.md) | 129 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [map_vadd](declarations/map-vadd.md) | 140 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [map_vsub](declarations/map-vsub.md) | 145 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [dist_map](declarations/dist-map-source-edition-2.md) | 150 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [nndist_map](declarations/nndist-map.md) | 156 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [edist_map](declarations/edist-map-source-edition-2.md) | 161 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [isometry](declarations/isometry.md) | 164 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [injective](declarations/injective.md) | 168 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [map_eq_iff](declarations/map-eq-iff-source-edition-2.md) | 173 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [map_ne](declarations/map-ne.md) | 177 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [lipschitz](declarations/lipschitz.md) | 181 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [antilipschitz](declarations/antilipschitz-source-edition-2.md) | 185 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [continuous](declarations/continuous-source-edition-2.md) | 190 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [ediam_image](declarations/ediam-image-source-edition-2.md) | 194 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [ediam_range](declarations/ediam-range.md) | 198 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [diam_image](declarations/diam-image-source-edition-2.md) | 202 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [diam_range](declarations/diam-range.md) | 206 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [comp_continuous_iff](declarations/comp-continuous-iff-source-edition-2.md) | 211 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `def` | [id](declarations/id.md) | 217 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [coe_id](declarations/coe-id.md) | 222 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [id_apply](declarations/id-apply.md) | 227 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [id_toAffineMap](declarations/id-toaffinemap.md) | 232 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `instance` | [(anonymous)](declarations/instance-source-edition-5.md) | 236 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `def` | [comp](declarations/comp.md) | 240 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `theorem` | [coe_comp](declarations/coe-comp.md) | 245 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `theorem` | [id_comp](declarations/id-comp.md) | 250 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `theorem` | [comp_id](declarations/comp-id.md) | 255 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `theorem` | [comp_assoc](declarations/comp-assoc.md) | 259 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `instance` | [(anonymous)](declarations/instance-source-edition-6.md) | 264 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `theorem` | [coe_one](declarations/coe-one-source-edition-2.md) | 272 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `theorem` | [coe_mul](declarations/coe-mul-source-edition-2.md) | 277 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `def` | [subtypeₐᵢ](declarations/subtype.md) | 286 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `theorem` | [subtypeₐᵢ_linear](declarations/subtype-linear.md) | 290 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `theorem` | [subtypeₐᵢ_linearIsometry](declarations/subtype-linearisometry.md) | 296 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `theorem` | [coe_subtypeₐᵢ](declarations/coe-subtype.md) | 302 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `theorem` | [subtypeₐᵢ_toAffineMap](declarations/subtype-toaffinemap.md) | 307 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `structure` | [AffineIsometryEquiv](declarations/affineisometryequiv.md) | 317 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `def` | [linearIsometryEquiv](declarations/linearisometryequiv.md) | 331 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `theorem` | [linear_eq_linear_isometry](declarations/linear-eq-linear-isometry.md) | 336 | `BLOCKED_NATIVE_ADMISSION` |
| 51 | `instance` | [(anonymous)](declarations/instance-source-edition-2.md) | 341 | `BLOCKED_NATIVE_ADMISSION` |
| 52 | `theorem` | [coe_mk](declarations/coe-mk.md) | 353 | `BLOCKED_NATIVE_ADMISSION` |
| 53 | `theorem` | [coe_toAffineEquiv](declarations/coe-toaffineequiv.md) | 358 | `BLOCKED_NATIVE_ADMISSION` |
| 54 | `theorem` | [toAffineEquiv_injective](declarations/toaffineequiv-injective.md) | 362 | `BLOCKED_NATIVE_ADMISSION` |
| 55 | `theorem` | [ext](declarations/ext-source-edition-2.md) | 367 | `BLOCKED_NATIVE_ADMISSION` |
| 56 | `def` | [toAffineIsometry](declarations/toaffineisometry.md) | 372 | `BLOCKED_NATIVE_ADMISSION` |
| 57 | `theorem` | [coe_toAffineIsometry](declarations/coe-toaffineisometry-source-edition-2.md) | 377 | `BLOCKED_NATIVE_ADMISSION` |
| 58 | `def` | [mk'](declarations/mk.md) | 385 | `BLOCKED_NATIVE_ADMISSION` |
| 59 | `theorem` | [coe_mk'](declarations/coe-mk-source-edition-2.md) | 391 | `BLOCKED_NATIVE_ADMISSION` |
| 60 | `theorem` | [linearIsometryEquiv_mk'](declarations/linearisometryequiv-mk.md) | 396 | `BLOCKED_NATIVE_ADMISSION` |
| 61 | `def` | [toAffineIsometryEquiv](declarations/toaffineisometryequiv.md) | 409 | `BLOCKED_NATIVE_ADMISSION` |
| 62 | `theorem` | [coe_toAffineIsometryEquiv](declarations/coe-toaffineisometryequiv.md) | 414 | `BLOCKED_NATIVE_ADMISSION` |
| 63 | `theorem` | [toAffineIsometryEquiv_linearIsometryEquiv](declarations/toaffineisometryequiv-linearisometryequiv.md) | 419 | `BLOCKED_NATIVE_ADMISSION` |
| 64 | `theorem` | [toAffineIsometryEquiv_toAffineEquiv](declarations/toaffineisometryequiv-toaffineequiv.md) | 427 | `BLOCKED_NATIVE_ADMISSION` |
| 65 | `theorem` | [toAffineIsometryEquiv_toAffineIsometry](declarations/toaffineisometryequiv-toaffineisometry.md) | 434 | `BLOCKED_NATIVE_ADMISSION` |
| 66 | `theorem` | [isometry](declarations/isometry-source-edition-2.md) | 445 | `BLOCKED_NATIVE_ADMISSION` |
| 67 | `def` | [toIsometryEquiv](declarations/toisometryequiv.md) | 450 | `BLOCKED_NATIVE_ADMISSION` |
| 68 | `theorem` | [coe_toIsometryEquiv](declarations/coe-toisometryequiv.md) | 455 | `BLOCKED_NATIVE_ADMISSION` |
| 69 | `theorem` | [range_eq_univ](declarations/range-eq-univ.md) | 459 | `BLOCKED_NATIVE_ADMISSION` |
| 70 | `def` | [toHomeomorph](declarations/tohomeomorph.md) | 465 | `BLOCKED_NATIVE_ADMISSION` |
| 71 | `theorem` | [coe_toHomeomorph](declarations/coe-tohomeomorph.md) | 470 | `BLOCKED_NATIVE_ADMISSION` |
| 72 | `theorem` | [continuous](declarations/continuous.md) | 474 | `BLOCKED_NATIVE_ADMISSION` |
| 73 | `theorem` | [continuousAt](declarations/continuousat.md) | 478 | `BLOCKED_NATIVE_ADMISSION` |
| 74 | `theorem` | [continuousOn](declarations/continuouson.md) | 482 | `BLOCKED_NATIVE_ADMISSION` |
| 75 | `theorem` | [continuousWithinAt](declarations/continuouswithinat.md) | 486 | `BLOCKED_NATIVE_ADMISSION` |
| 76 | `def` | [refl](declarations/refl.md) | 493 | `BLOCKED_NATIVE_ADMISSION` |
| 77 | `instance` | [(anonymous)](declarations/instance.md) | 499 | `BLOCKED_NATIVE_ADMISSION` |
| 78 | `theorem` | [coe_refl](declarations/coe-refl.md) | 503 | `BLOCKED_NATIVE_ADMISSION` |
| 79 | `theorem` | [toAffineEquiv_refl](declarations/toaffineequiv-refl.md) | 508 | `BLOCKED_NATIVE_ADMISSION` |
| 80 | `theorem` | [toIsometryEquiv_refl](declarations/toisometryequiv-refl.md) | 513 | `BLOCKED_NATIVE_ADMISSION` |
| 81 | `theorem` | [toHomeomorph_refl](declarations/tohomeomorph-refl.md) | 518 | `BLOCKED_NATIVE_ADMISSION` |
| 82 | `def` | [symm](declarations/symm.md) | 523 | `BLOCKED_NATIVE_ADMISSION` |
| 83 | `theorem` | [apply_symm_apply](declarations/apply-symm-apply.md) | 528 | `BLOCKED_NATIVE_ADMISSION` |
| 84 | `theorem` | [symm_apply_apply](declarations/symm-apply-apply.md) | 533 | `BLOCKED_NATIVE_ADMISSION` |
| 85 | `theorem` | [symm_symm](declarations/symm-symm.md) | 538 | `BLOCKED_NATIVE_ADMISSION` |
| 86 | `theorem` | [toAffineEquiv_symm](declarations/toaffineequiv-symm.md) | 543 | `BLOCKED_NATIVE_ADMISSION` |
| 87 | `theorem` | [toIsometryEquiv_symm](declarations/toisometryequiv-symm.md) | 548 | `BLOCKED_NATIVE_ADMISSION` |
| 88 | `theorem` | [toHomeomorph_symm](declarations/tohomeomorph-symm.md) | 553 | `BLOCKED_NATIVE_ADMISSION` |
| 89 | `def` | [trans](declarations/trans.md) | 558 | `BLOCKED_NATIVE_ADMISSION` |
| 90 | `theorem` | [coe_trans](declarations/coe-trans.md) | 563 | `BLOCKED_NATIVE_ADMISSION` |
| 91 | `theorem` | [trans_refl](declarations/trans-refl.md) | 568 | `BLOCKED_NATIVE_ADMISSION` |
| 92 | `theorem` | [refl_trans](declarations/refl-trans.md) | 573 | `BLOCKED_NATIVE_ADMISSION` |
| 93 | `theorem` | [self_trans_symm](declarations/self-trans-symm.md) | 578 | `BLOCKED_NATIVE_ADMISSION` |
| 94 | `theorem` | [symm_trans_self](declarations/symm-trans-self.md) | 583 | `BLOCKED_NATIVE_ADMISSION` |
| 95 | `theorem` | [coe_symm_trans](declarations/coe-symm-trans.md) | 588 | `BLOCKED_NATIVE_ADMISSION` |
| 96 | `theorem` | [trans_assoc](declarations/trans-assoc.md) | 593 | `BLOCKED_NATIVE_ADMISSION` |
| 97 | `instance` | [(anonymous)](declarations/instance-source-edition-4.md) | 599 | `BLOCKED_NATIVE_ADMISSION` |
| 98 | `theorem` | [coe_one](declarations/coe-one.md) | 609 | `BLOCKED_NATIVE_ADMISSION` |
| 99 | `theorem` | [coe_mul](declarations/coe-mul.md) | 614 | `BLOCKED_NATIVE_ADMISSION` |
| 100 | `theorem` | [coe_inv](declarations/coe-inv.md) | 619 | `BLOCKED_NATIVE_ADMISSION` |
| 101 | `theorem` | [map_vadd](declarations/map-vadd-source-edition-2.md) | 624 | `BLOCKED_NATIVE_ADMISSION` |
| 102 | `theorem` | [map_vsub](declarations/map-vsub-source-edition-2.md) | 629 | `BLOCKED_NATIVE_ADMISSION` |
| 103 | `theorem` | [dist_map](declarations/dist-map.md) | 634 | `BLOCKED_NATIVE_ADMISSION` |
| 104 | `theorem` | [edist_map](declarations/edist-map.md) | 639 | `BLOCKED_NATIVE_ADMISSION` |
| 105 | `theorem` | [bijective](declarations/bijective.md) | 643 | `BLOCKED_NATIVE_ADMISSION` |
| 106 | `theorem` | [injective](declarations/injective-source-edition-2.md) | 647 | `BLOCKED_NATIVE_ADMISSION` |
| 107 | `theorem` | [surjective](declarations/surjective.md) | 651 | `BLOCKED_NATIVE_ADMISSION` |
| 108 | `theorem` | [map_eq_iff](declarations/map-eq-iff.md) | 656 | `BLOCKED_NATIVE_ADMISSION` |
| 109 | `theorem` | [map_ne](declarations/map-ne-source-edition-2.md) | 660 | `BLOCKED_NATIVE_ADMISSION` |
| 110 | `theorem` | [lipschitz](declarations/lipschitz-source-edition-2.md) | 664 | `BLOCKED_NATIVE_ADMISSION` |
| 111 | `theorem` | [antilipschitz](declarations/antilipschitz.md) | 668 | `BLOCKED_NATIVE_ADMISSION` |
| 112 | `theorem` | [ediam_image](declarations/ediam-image.md) | 673 | `BLOCKED_NATIVE_ADMISSION` |
| 113 | `theorem` | [diam_image](declarations/diam-image.md) | 678 | `BLOCKED_NATIVE_ADMISSION` |
| 114 | `theorem` | [comp_continuousOn_iff](declarations/comp-continuouson-iff.md) | 685 | `BLOCKED_NATIVE_ADMISSION` |
| 115 | `theorem` | [comp_continuous_iff](declarations/comp-continuous-iff.md) | 690 | `BLOCKED_NATIVE_ADMISSION` |
| 116 | `def` | [vaddConst](declarations/vaddconst.md) | 699 | `BLOCKED_NATIVE_ADMISSION` |
| 117 | `theorem` | [coe_vaddConst](declarations/coe-vaddconst.md) | 706 | `BLOCKED_NATIVE_ADMISSION` |
| 118 | `theorem` | [coe_vaddConst'](declarations/coe-vaddconst-source-edition-2.md) | 711 | `BLOCKED_NATIVE_ADMISSION` |
| 119 | `theorem` | [coe_vaddConst_symm](declarations/coe-vaddconst-symm.md) | 715 | `BLOCKED_NATIVE_ADMISSION` |
| 120 | `theorem` | [vaddConst_toAffineEquiv](declarations/vaddconst-toaffineequiv.md) | 720 | `BLOCKED_NATIVE_ADMISSION` |
| 121 | `def` | [constVSub](declarations/constvsub.md) | 728 | `BLOCKED_NATIVE_ADMISSION` |
| 122 | `theorem` | [coe_constVSub](declarations/coe-constvsub.md) | 735 | `BLOCKED_NATIVE_ADMISSION` |
| 123 | `theorem` | [symm_constVSub](declarations/symm-constvsub.md) | 740 | `BLOCKED_NATIVE_ADMISSION` |
| 124 | `def` | [constVAdd](declarations/constvadd.md) | 751 | `BLOCKED_NATIVE_ADMISSION` |
| 125 | `theorem` | [coe_constVAdd](declarations/coe-constvadd.md) | 758 | `BLOCKED_NATIVE_ADMISSION` |
| 126 | `theorem` | [constVAdd_zero](declarations/constvadd-zero.md) | 763 | `BLOCKED_NATIVE_ADMISSION` |
| 127 | `theorem` | [vadd_vsub](declarations/vadd-vsub.md) | 769 | `BLOCKED_NATIVE_ADMISSION` |
| 128 | `def` | [pointReflection](declarations/pointreflection.md) | 778 | `BLOCKED_NATIVE_ADMISSION` |
| 129 | `theorem` | [pointReflection_apply](declarations/pointreflection-apply.md) | 784 | `BLOCKED_NATIVE_ADMISSION` |
| 130 | `theorem` | [pointReflection_toAffineEquiv](declarations/pointreflection-toaffineequiv.md) | 789 | `BLOCKED_NATIVE_ADMISSION` |
| 131 | `theorem` | [pointReflection_self](declarations/pointreflection-self.md) | 795 | `BLOCKED_NATIVE_ADMISSION` |
| 132 | `theorem` | [pointReflection_involutive](declarations/pointreflection-involutive.md) | 799 | `BLOCKED_NATIVE_ADMISSION` |
| 133 | `theorem` | [pointReflection_symm](declarations/pointreflection-symm.md) | 804 | `BLOCKED_NATIVE_ADMISSION` |
| 134 | `theorem` | [dist_pointReflection_fixed](declarations/dist-pointreflection-fixed.md) | 809 | `BLOCKED_NATIVE_ADMISSION` |
| 135 | `theorem` | [dist_pointReflection_self'](declarations/dist-pointreflection-self-source-edition-2.md) | 814 | `BLOCKED_NATIVE_ADMISSION` |
| 136 | `theorem` | [dist_pointReflection_self](declarations/dist-pointreflection-self.md) | 819 | `BLOCKED_NATIVE_ADMISSION` |
| 137 | `theorem` | [pointReflection_fixed_iff](declarations/pointreflection-fixed-iff.md) | 824 | `BLOCKED_NATIVE_ADMISSION` |
| 138 | `theorem` | [dist_pointReflection_self_real](declarations/dist-pointreflection-self-real.md) | 831 | `BLOCKED_NATIVE_ADMISSION` |
| 139 | `theorem` | [pointReflection_midpoint_left](declarations/pointreflection-midpoint-left.md) | 836 | `BLOCKED_NATIVE_ADMISSION` |
| 140 | `theorem` | [pointReflection_midpoint_right](declarations/pointreflection-midpoint-right.md) | 841 | `BLOCKED_NATIVE_ADMISSION` |
| 141 | `theorem` | [AffineMap.continuous_linear_iff](declarations/affinemap-continuous-linear-iff.md) | 850 | `BLOCKED_NATIVE_ADMISSION` |
| 142 | `theorem` | [AffineMap.isOpenMap_linear_iff](declarations/affinemap-isopenmap-linear-iff.md) | 866 | `BLOCKED_NATIVE_ADMISSION` |
| 143 | `def` | [equivMapOfInjective](declarations/equivmapofinjective.md) | 889 | `BLOCKED_NATIVE_ADMISSION` |
| 144 | `def` | [isometryEquivMap](declarations/isometryequivmap.md) | 904 | `BLOCKED_NATIVE_ADMISSION` |
| 145 | `theorem` | [isometryEquivMap.apply_symm_apply](declarations/isometryequivmap-apply-symm-apply.md) | 910 | `BLOCKED_NATIVE_ADMISSION` |
| 146 | `theorem` | [isometryEquivMap.coe_apply](declarations/isometryequivmap-coe-apply.md) | 916 | `BLOCKED_NATIVE_ADMISSION` |
| 147 | `theorem` | [isometryEquivMap.toAffineMap_eq](declarations/isometryequivmap-toaffinemap-eq.md) | 922 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=6762a03eda435e5b1b96feb1ef4db8d1ca2e861091fd160decc9cc7d5cfc6ae4 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/AffineIsometry/Variant63399bcd0854e80e953531e5786fd9978542e148fcc4c8030d5505abba928cd5.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
