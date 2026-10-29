# Normed Group Basic Namespaced ENorm

[Complete source index](../../../complete-source-index.md) · [Up one directory](../../../complete-source-index.md) · [Full source](source.md)

**242 observed declarations and anonymous commands**, 189 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Topology/GeneralTopology/Basic/Variantb63776bcc52b22a9dedba729e05931981d3943f3ae0ef866845ebd9de68bbdff.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `fc7e567424b3e3f8e5965592a4b464df71d87ca2`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/NormedGroupBasicNamespacedENorm.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `class` | [Norm](declarations/norm.md) | 60 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `class` | [NNNorm](declarations/nnnorm.md) | 66 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `class` | [ENorm](declarations/enorm.md) | 72 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `instance` | [NNNorm.toENorm](declarations/nnnorm-toenorm.md) | 87 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `lemma` | [enorm_eq_nnnorm](declarations/enorm-eq-nnnorm.md) | 89 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `lemma` | [toNNReal_enorm](declarations/tonnreal-enorm.md) | 91 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `lemma` | [coe_le_enorm](declarations/coe-le-enorm.md) | 93 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `lemma` | [enorm_le_coe](declarations/enorm-le-coe.md) | 94 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `lemma` | [coe_lt_enorm](declarations/coe-lt-enorm.md) | 95 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `lemma` | [enorm_lt_coe](declarations/enorm-lt-coe.md) | 96 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `lemma` | [enorm_ne_top](declarations/enorm-ne-top.md) | 99 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `lemma` | [enorm_lt_top](declarations/enorm-lt-top.md) | 100 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `class` | [ContinuousENorm](declarations/continuousenorm.md) | 108 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `class` | [ENormedAddMonoid](declarations/enormedaddmonoid.md) | 112 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `class` | [ENormedMonoid](declarations/enormedmonoid.md) | 118 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `class` | [ENormedAddCommMonoid](declarations/enormedaddcommmonoid.md) | 128 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `class` | [ENormedCommMonoid](declarations/enormedcommmonoid.md) | 133 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `class` | [SeminormedAddGroup](declarations/seminormedaddgroup.md) | 137 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `class` | [SeminormedGroup](declarations/seminormedgroup.md) | 145 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `class` | [NormedAddGroup](declarations/normedaddgroup.md) | 152 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `class` | [NormedGroup](declarations/normedgroup.md) | 160 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `class` | [SeminormedAddCommGroup](declarations/seminormedaddcommgroup.md) | 167 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `class` | [SeminormedCommGroup](declarations/seminormedcommgroup.md) | 176 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `class` | [NormedAddCommGroup](declarations/normedaddcommgroup.md) | 183 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `class` | [NormedCommGroup](declarations/normedcommgroup.md) | 191 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `instance` | [(anonymous)](declarations/instance-source-edition-4.md) | 198 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `instance` | [(anonymous)](declarations/instance-source-edition-3.md) | 203 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `instance` | [(anonymous)](declarations/instance-source-edition-2.md) | 209 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `instance` | [(anonymous)](declarations/instance-source-edition-7.md) | 215 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `abbrev` | [NormedGroup.ofSeparation](declarations/normedgroup-ofseparation.md) | 226 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `abbrev` | [NormedCommGroup.ofSeparation](declarations/normedcommgroup-ofseparation.md) | 242 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `abbrev` | [SeminormedGroup.ofMulDist](declarations/seminormedgroup-ofmuldist-source-edition-2.md) | 250 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `abbrev` | [SeminormedGroup.ofMulDist'](declarations/seminormedgroup-ofmuldist.md) | 262 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `abbrev` | [SeminormedCommGroup.ofMulDist](declarations/seminormedcommgroup-ofmuldist.md) | 274 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `abbrev` | [SeminormedCommGroup.ofMulDist'](declarations/seminormedcommgroup-ofmuldist-source-edition-2.md) | 284 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `abbrev` | [NormedGroup.ofMulDist](declarations/normedgroup-ofmuldist-source-edition-2.md) | 294 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `abbrev` | [NormedGroup.ofMulDist'](declarations/normedgroup-ofmuldist.md) | 303 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `abbrev` | [NormedCommGroup.ofMulDist](declarations/normedcommgroup-ofmuldist.md) | 312 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `abbrev` | [NormedCommGroup.ofMulDist'](declarations/normedcommgroup-ofmuldist-source-edition-2.md) | 322 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `instance` | [creates](declarations/creates.md) | 336 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `abbrev` | [GroupSeminorm.toSeminormedGroup](declarations/groupseminorm-toseminormedgroup.md) | 338 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `instance` | [creates](declarations/creates-source-edition-2.md) | 354 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `abbrev` | [GroupSeminorm.toSeminormedCommGroup](declarations/groupseminorm-toseminormedcommgroup.md) | 356 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `instance` | [on](declarations/on.md) | 370 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `abbrev` | [GroupNorm.toNormedGroup](declarations/groupnorm-tonormedgroup.md) | 371 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `instance` | [on](declarations/on-source-edition-2.md) | 384 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `abbrev` | [GroupNorm.toNormedCommGroup](declarations/groupnorm-tonormedcommgroup.md) | 385 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `theorem` | [dist_eq_norm_div](declarations/dist-eq-norm-div.md) | 395 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `theorem` | [dist_eq_norm_div'](declarations/dist-eq-norm-div-source-edition-2.md) | 399 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `lemma` | [DiscreteTopology.of_forall_le_norm'](declarations/discretetopology-of-forall-le-norm.md) | 406 | `BLOCKED_NATIVE_ADMISSION` |
| 51 | `theorem` | [dist_one_right](declarations/dist-one-right.md) | 413 | `BLOCKED_NATIVE_ADMISSION` |
| 52 | `theorem` | [inseparable_one_iff_norm](declarations/inseparable-one-iff-norm.md) | 416 | `BLOCKED_NATIVE_ADMISSION` |
| 53 | `lemma` | [dist_one_left](declarations/dist-one-left.md) | 420 | `BLOCKED_NATIVE_ADMISSION` |
| 54 | `lemma` | [dist_one](declarations/dist-one.md) | 423 | `BLOCKED_NATIVE_ADMISSION` |
| 55 | `theorem` | [norm_div_rev](declarations/norm-div-rev.md) | 426 | `BLOCKED_NATIVE_ADMISSION` |
| 56 | `theorem` | [norm_inv'](declarations/norm-inv.md) | 430 | `BLOCKED_NATIVE_ADMISSION` |
| 57 | `theorem` | [norm_zpow_abs](declarations/norm-zpow-abs.md) | 433 | `BLOCKED_NATIVE_ADMISSION` |
| 58 | `theorem` | [norm_pow_natAbs](declarations/norm-pow-natabs.md) | 437 | `BLOCKED_NATIVE_ADMISSION` |
| 59 | `theorem` | [norm_zpow_isUnit](declarations/norm-zpow-isunit.md) | 441 | `BLOCKED_NATIVE_ADMISSION` |
| 60 | `theorem` | [norm_units_zsmul](declarations/norm-units-zsmul.md) | 445 | `BLOCKED_NATIVE_ADMISSION` |
| 61 | `theorem` | [dist_mulIndicator](declarations/dist-mulindicator.md) | 450 | `BLOCKED_NATIVE_ADMISSION` |
| 62 | `theorem` | [norm_mul_le'](declarations/norm-mul-le-source-edition-2.md) | 456 | `BLOCKED_NATIVE_ADMISSION` |
| 63 | `theorem` | [norm_mul_le_of_le'](declarations/norm-mul-le-of-le.md) | 461 | `BLOCKED_NATIVE_ADMISSION` |
| 64 | `lemma` | [norm_mul₃_le'](declarations/norm-mul-le.md) | 466 | `BLOCKED_NATIVE_ADMISSION` |
| 65 | `lemma` | [norm_div_le_norm_div_add_norm_div](declarations/norm-div-le-norm-div-add-norm-div.md) | 469 | `BLOCKED_NATIVE_ADMISSION` |
| 66 | `theorem` | [norm_nonneg'](declarations/norm-nonneg.md) | 473 | `BLOCKED_NATIVE_ADMISSION` |
| 67 | `theorem` | [abs_norm'](declarations/abs-norm.md) | 480 | `BLOCKED_NATIVE_ADMISSION` |
| 68 | `theorem` | [norm_one'](declarations/norm-one.md) | 483 | `BLOCKED_NATIVE_ADMISSION` |
| 69 | `theorem` | [ne_one_of_norm_ne_zero](declarations/ne-one-of-norm-ne-zero.md) | 486 | `BLOCKED_NATIVE_ADMISSION` |
| 70 | `theorem` | [norm_of_subsingleton'](declarations/norm-of-subsingleton.md) | 492 | `BLOCKED_NATIVE_ADMISSION` |
| 71 | `theorem` | [zero_lt_one_add_norm_sq'](declarations/zero-lt-one-add-norm-sq.md) | 496 | `BLOCKED_NATIVE_ADMISSION` |
| 72 | `theorem` | [norm_div_le](declarations/norm-div-le.md) | 500 | `BLOCKED_NATIVE_ADMISSION` |
| 73 | `theorem` | [norm_div_le_of_le](declarations/norm-div-le-of-le.md) | 506 | `BLOCKED_NATIVE_ADMISSION` |
| 74 | `theorem` | [dist_le_norm_add_norm'](declarations/dist-le-norm-add-norm.md) | 510 | `BLOCKED_NATIVE_ADMISSION` |
| 75 | `theorem` | [abs_norm_sub_norm_le'](declarations/abs-norm-sub-norm-le.md) | 515 | `BLOCKED_NATIVE_ADMISSION` |
| 76 | `theorem` | [norm_sub_norm_le'](declarations/norm-sub-norm-le.md) | 519 | `BLOCKED_NATIVE_ADMISSION` |
| 77 | `theorem` | [norm_sub_le_norm_mul](declarations/norm-sub-le-norm-mul.md) | 523 | `BLOCKED_NATIVE_ADMISSION` |
| 78 | `theorem` | [dist_norm_norm_le'](declarations/dist-norm-norm-le.md) | 527 | `BLOCKED_NATIVE_ADMISSION` |
| 79 | `theorem` | [norm_le_norm_add_norm_div'](declarations/norm-le-norm-add-norm-div-source-edition-2.md) | 531 | `BLOCKED_NATIVE_ADMISSION` |
| 80 | `theorem` | [norm_le_norm_add_norm_div](declarations/norm-le-norm-add-norm-div.md) | 537 | `BLOCKED_NATIVE_ADMISSION` |
| 81 | `theorem` | [norm_le_mul_norm_add](declarations/norm-le-mul-norm-add-source-edition-2.md) | 545 | `BLOCKED_NATIVE_ADMISSION` |
| 82 | `theorem` | [norm_le_mul_norm_add'](declarations/norm-le-mul-norm-add.md) | 552 | `BLOCKED_NATIVE_ADMISSION` |
| 83 | `lemma` | [norm_mul_eq_norm_right](declarations/norm-mul-eq-norm-right.md) | 559 | `BLOCKED_NATIVE_ADMISSION` |
| 84 | `lemma` | [norm_mul_eq_norm_left](declarations/norm-mul-eq-norm-left.md) | 565 | `BLOCKED_NATIVE_ADMISSION` |
| 85 | `lemma` | [norm_div_eq_norm_right](declarations/norm-div-eq-norm-right.md) | 571 | `BLOCKED_NATIVE_ADMISSION` |
| 86 | `lemma` | [norm_div_eq_norm_left](declarations/norm-div-eq-norm-left.md) | 577 | `BLOCKED_NATIVE_ADMISSION` |
| 87 | `theorem` | [ball_eq'](declarations/ball-eq.md) | 583 | `BLOCKED_NATIVE_ADMISSION` |
| 88 | `theorem` | [ball_one_eq](declarations/ball-one-eq.md) | 587 | `BLOCKED_NATIVE_ADMISSION` |
| 89 | `theorem` | [mem_ball_iff_norm''](declarations/mem-ball-iff-norm-source-edition-2.md) | 591 | `BLOCKED_NATIVE_ADMISSION` |
| 90 | `theorem` | [mem_ball_iff_norm'''](declarations/mem-ball-iff-norm.md) | 594 | `BLOCKED_NATIVE_ADMISSION` |
| 91 | `theorem` | [mem_ball_one_iff](declarations/mem-ball-one-iff.md) | 597 | `BLOCKED_NATIVE_ADMISSION` |
| 92 | `theorem` | [mem_closedBall_iff_norm''](declarations/mem-closedball-iff-norm-source-edition-2.md) | 600 | `BLOCKED_NATIVE_ADMISSION` |
| 93 | `theorem` | [mem_closedBall_one_iff](declarations/mem-closedball-one-iff.md) | 604 | `BLOCKED_NATIVE_ADMISSION` |
| 94 | `theorem` | [mem_closedBall_iff_norm'''](declarations/mem-closedball-iff-norm.md) | 608 | `BLOCKED_NATIVE_ADMISSION` |
| 95 | `theorem` | [norm_le_of_mem_closedBall'](declarations/norm-le-of-mem-closedball.md) | 612 | `BLOCKED_NATIVE_ADMISSION` |
| 96 | `theorem` | [norm_le_norm_add_const_of_dist_le'](declarations/norm-le-norm-add-const-of-dist-le.md) | 616 | `BLOCKED_NATIVE_ADMISSION` |
| 97 | `theorem` | [norm_lt_of_mem_ball'](declarations/norm-lt-of-mem-ball.md) | 620 | `BLOCKED_NATIVE_ADMISSION` |
| 98 | `theorem` | [norm_div_sub_norm_div_le_norm_div](declarations/norm-div-sub-norm-div-le-norm-div.md) | 624 | `BLOCKED_NATIVE_ADMISSION` |
| 99 | `theorem` | [mem_sphere_iff_norm'](declarations/mem-sphere-iff-norm.md) | 629 | `BLOCKED_NATIVE_ADMISSION` |
| 100 | `theorem` | [mem_sphere_one_iff_norm](declarations/mem-sphere-one-iff-norm.md) | 632 | `BLOCKED_NATIVE_ADMISSION` |
| 101 | `theorem` | [norm_eq_of_mem_sphere'](declarations/norm-eq-of-mem-sphere.md) | 635 | `BLOCKED_NATIVE_ADMISSION` |
| 102 | `theorem` | [ne_one_of_mem_sphere](declarations/ne-one-of-mem-sphere.md) | 639 | `BLOCKED_NATIVE_ADMISSION` |
| 103 | `theorem` | [ne_one_of_mem_unit_sphere](declarations/ne-one-of-mem-unit-sphere.md) | 643 | `BLOCKED_NATIVE_ADMISSION` |
| 104 | `def` | [normGroupSeminorm](declarations/normgroupseminorm.md) | 650 | `BLOCKED_NATIVE_ADMISSION` |
| 105 | `theorem` | [coe_normGroupSeminorm](declarations/coe-normgroupseminorm.md) | 654 | `BLOCKED_NATIVE_ADMISSION` |
| 106 | `theorem` | [NormedCommGroup.tendsto_nhds_one](declarations/normedcommgroup-tendsto-nhds-one.md) | 660 | `BLOCKED_NATIVE_ADMISSION` |
| 107 | `theorem` | [NormedCommGroup.tendsto_nhds_nhds](declarations/normedcommgroup-tendsto-nhds-nhds.md) | 665 | `BLOCKED_NATIVE_ADMISSION` |
| 108 | `theorem` | [NormedCommGroup.nhds_basis_norm_lt](declarations/normedcommgroup-nhds-basis-norm-lt.md) | 670 | `BLOCKED_NATIVE_ADMISSION` |
| 109 | `theorem` | [NormedCommGroup.nhds_one_basis_norm_lt](declarations/normedcommgroup-nhds-one-basis-norm-lt.md) | 676 | `BLOCKED_NATIVE_ADMISSION` |
| 110 | `theorem` | [NormedCommGroup.uniformity_basis_dist](declarations/normedcommgroup-uniformity-basis-dist.md) | 682 | `BLOCKED_NATIVE_ADMISSION` |
| 111 | `instance` | [(anonymous)](declarations/instance-source-edition-6.md) | 695 | `BLOCKED_NATIVE_ADMISSION` |
| 112 | `theorem` | [coe_nnnorm'](declarations/coe-nnnorm.md) | 699 | `BLOCKED_NATIVE_ADMISSION` |
| 113 | `theorem` | [coe_comp_nnnorm'](declarations/coe-comp-nnnorm.md) | 702 | `BLOCKED_NATIVE_ADMISSION` |
| 114 | `theorem` | [norm_toNNReal'](declarations/norm-tonnreal.md) | 706 | `BLOCKED_NATIVE_ADMISSION` |
| 115 | `lemma` | [toReal_enorm'](declarations/toreal-enorm.md) | 710 | `BLOCKED_NATIVE_ADMISSION` |
| 116 | `lemma` | [ofReal_norm'](declarations/ofreal-norm.md) | 713 | `BLOCKED_NATIVE_ADMISSION` |
| 117 | `theorem` | [enorm'_eq_iff_norm_eq](declarations/enorm-eq-iff-norm-eq.md) | 717 | `BLOCKED_NATIVE_ADMISSION` |
| 118 | `theorem` | [enorm'_le_iff_norm_le](declarations/enorm-le-iff-norm-le.md) | 723 | `BLOCKED_NATIVE_ADMISSION` |
| 119 | `theorem` | [nndist_eq_nnnorm_div](declarations/nndist-eq-nnnorm-div.md) | 730 | `BLOCKED_NATIVE_ADMISSION` |
| 120 | `theorem` | [nndist_one_right](declarations/nndist-one-right.md) | 736 | `BLOCKED_NATIVE_ADMISSION` |
| 121 | `lemma` | [edist_one_right](declarations/edist-one-right.md) | 739 | `BLOCKED_NATIVE_ADMISSION` |
| 122 | `theorem` | [nnnorm_one'](declarations/nnnorm-one.md) | 742 | `BLOCKED_NATIVE_ADMISSION` |
| 123 | `theorem` | [ne_one_of_nnnorm_ne_zero](declarations/ne-one-of-nnnorm-ne-zero.md) | 745 | `BLOCKED_NATIVE_ADMISSION` |
| 124 | `theorem` | [nnnorm_mul_le'](declarations/nnnorm-mul-le.md) | 751 | `BLOCKED_NATIVE_ADMISSION` |
| 125 | `lemma` | [norm_pow_le_mul_norm](declarations/norm-pow-le-mul-norm.md) | 755 | `BLOCKED_NATIVE_ADMISSION` |
| 126 | `lemma` | [nnnorm_pow_le_mul_norm](declarations/nnnorm-pow-le-mul-norm.md) | 760 | `BLOCKED_NATIVE_ADMISSION` |
| 127 | `theorem` | [nnnorm_inv'](declarations/nnnorm-inv.md) | 764 | `BLOCKED_NATIVE_ADMISSION` |
| 128 | `theorem` | [nnnorm_zpow_abs](declarations/nnnorm-zpow-abs.md) | 768 | `BLOCKED_NATIVE_ADMISSION` |
| 129 | `theorem` | [nnnorm_pow_natAbs](declarations/nnnorm-pow-natabs.md) | 772 | `BLOCKED_NATIVE_ADMISSION` |
| 130 | `theorem` | [nnnorm_zpow_isUnit](declarations/nnnorm-zpow-isunit.md) | 776 | `BLOCKED_NATIVE_ADMISSION` |
| 131 | `theorem` | [nnnorm_units_zsmul](declarations/nnnorm-units-zsmul.md) | 780 | `BLOCKED_NATIVE_ADMISSION` |
| 132 | `theorem` | [nndist_one_left](declarations/nndist-one-left.md) | 784 | `BLOCKED_NATIVE_ADMISSION` |
| 133 | `theorem` | [edist_one_left](declarations/edist-one-left.md) | 787 | `BLOCKED_NATIVE_ADMISSION` |
| 134 | `theorem` | [nndist_mulIndicator](declarations/nndist-mulindicator.md) | 792 | `BLOCKED_NATIVE_ADMISSION` |
| 135 | `theorem` | [nnnorm_div_le](declarations/nnnorm-div-le.md) | 797 | `BLOCKED_NATIVE_ADMISSION` |
| 136 | `lemma` | [enorm_div_le](declarations/enorm-div-le.md) | 801 | `BLOCKED_NATIVE_ADMISSION` |
| 137 | `theorem` | [nndist_nnnorm_nnnorm_le'](declarations/nndist-nnnorm-nnnorm-le.md) | 805 | `BLOCKED_NATIVE_ADMISSION` |
| 138 | `theorem` | [nnnorm_le_nnnorm_add_nnnorm_div](declarations/nnnorm-le-nnnorm-add-nnnorm-div-source-edition-2.md) | 809 | `BLOCKED_NATIVE_ADMISSION` |
| 139 | `theorem` | [nnnorm_le_nnnorm_add_nnnorm_div'](declarations/nnnorm-le-nnnorm-add-nnnorm-div.md) | 813 | `BLOCKED_NATIVE_ADMISSION` |
| 140 | `theorem` | [nnnorm_le_mul_nnnorm_add](declarations/nnnorm-le-mul-nnnorm-add.md) | 821 | `BLOCKED_NATIVE_ADMISSION` |
| 141 | `theorem` | [nnnorm_le_mul_nnnorm_add'](declarations/nnnorm-le-mul-nnnorm-add-source-edition-2.md) | 826 | `BLOCKED_NATIVE_ADMISSION` |
| 142 | `lemma` | [nnnorm_mul_eq_nnnorm_right](declarations/nnnorm-mul-eq-nnnorm-right.md) | 830 | `BLOCKED_NATIVE_ADMISSION` |
| 143 | `lemma` | [nnnorm_mul_eq_nnnorm_left](declarations/nnnorm-mul-eq-nnnorm-left.md) | 834 | `BLOCKED_NATIVE_ADMISSION` |
| 144 | `lemma` | [nnnorm_div_eq_nnnorm_right](declarations/nnnorm-div-eq-nnnorm-right.md) | 838 | `BLOCKED_NATIVE_ADMISSION` |
| 145 | `lemma` | [nnnorm_div_eq_nnnorm_left](declarations/nnnorm-div-eq-nnnorm-left.md) | 842 | `BLOCKED_NATIVE_ADMISSION` |
| 146 | `theorem` | [toReal_coe_nnnorm'](declarations/toreal-coe-nnnorm.md) | 848 | `BLOCKED_NATIVE_ADMISSION` |
| 147 | `theorem` | [edist_mulIndicator](declarations/edist-mulindicator.md) | 852 | `BLOCKED_NATIVE_ADMISSION` |
| 148 | `lemma` | [enorm_one'](declarations/enorm-one.md) | 861 | `BLOCKED_NATIVE_ADMISSION` |
| 149 | `lemma` | [exists_enorm_lt'](declarations/exists-enorm-lt.md) | 865 | `BLOCKED_NATIVE_ADMISSION` |
| 150 | `lemma` | [enorm_inv'](declarations/enorm-inv.md) | 872 | `BLOCKED_NATIVE_ADMISSION` |
| 151 | `lemma` | [ofReal_norm_eq_enorm'](declarations/ofreal-norm-eq-enorm.md) | 875 | `BLOCKED_NATIVE_ADMISSION` |
| 152 | `instance` | [(anonymous)](declarations/instance.md) | 880 | `BLOCKED_NATIVE_ADMISSION` |
| 153 | `lemma` | [enorm_eq_self](declarations/enorm-eq-self.md) | 883 | `BLOCKED_NATIVE_ADMISSION` |
| 154 | `theorem` | [edist_eq_enorm_div](declarations/edist-eq-enorm-div.md) | 886 | `BLOCKED_NATIVE_ADMISSION` |
| 155 | `theorem` | [edist_one_eq_enorm](declarations/edist-one-eq-enorm.md) | 893 | `BLOCKED_NATIVE_ADMISSION` |
| 156 | `theorem` | [mem_emetric_ball_one_iff](declarations/mem-emetric-ball-one-iff.md) | 899 | `BLOCKED_NATIVE_ADMISSION` |
| 157 | `lemma` | [continuous_enorm](declarations/continuous-enorm.md) | 909 | `BLOCKED_NATIVE_ADMISSION` |
| 158 | `lemma` | [Continuous.enorm](declarations/continuous-enorm-source-edition-2.md) | 914 | `BLOCKED_NATIVE_ADMISSION` |
| 159 | `lemma` | [ContinuousAt.enorm](declarations/continuousat-enorm.md) | 917 | `BLOCKED_NATIVE_ADMISSION` |
| 160 | `lemma` | [ContinuousWithinAt.enorm](declarations/continuouswithinat-enorm.md) | 920 | `BLOCKED_NATIVE_ADMISSION` |
| 161 | `lemma` | [ContinuousOn.enorm](declarations/continuouson-enorm.md) | 926 | `BLOCKED_NATIVE_ADMISSION` |
| 162 | `lemma` | [enorm_mul_le'](declarations/enorm-mul-le.md) | 936 | `BLOCKED_NATIVE_ADMISSION` |
| 163 | `lemma` | [enorm_eq_zero'](declarations/enorm-eq-zero.md) | 939 | `BLOCKED_NATIVE_ADMISSION` |
| 164 | `lemma` | [enorm_ne_zero'](declarations/enorm-ne-zero.md) | 943 | `BLOCKED_NATIVE_ADMISSION` |
| 165 | `lemma` | [enorm_pos'](declarations/enorm-pos.md) | 947 | `BLOCKED_NATIVE_ADMISSION` |
| 166 | `instance` | [(anonymous)](declarations/instance-source-edition-5.md) | 952 | `BLOCKED_NATIVE_ADMISSION` |
| 167 | `lemma` | [SeminormedGroup.disjoint_nhds](declarations/seminormedgroup-disjoint-nhds.md) | 959 | `BLOCKED_NATIVE_ADMISSION` |
| 168 | `lemma` | [SeminormedGroup.disjoint_nhds_one](declarations/seminormedgroup-disjoint-nhds-one.md) | 964 | `BLOCKED_NATIVE_ADMISSION` |
| 169 | `abbrev` | [SeminormedGroup.induced](declarations/seminormedgroup-induced.md) | 980 | `BLOCKED_NATIVE_ADMISSION` |
| 170 | `abbrev` | [SeminormedCommGroup.induced](declarations/seminormedcommgroup-induced.md) | 991 | `BLOCKED_NATIVE_ADMISSION` |
| 171 | `abbrev` | [NormedGroup.induced](declarations/normedgroup-induced.md) | 1002 | `BLOCKED_NATIVE_ADMISSION` |
| 172 | `abbrev` | [NormedCommGroup.induced](declarations/normedcommgroup-induced.md) | 1012 | `BLOCKED_NATIVE_ADMISSION` |
| 173 | `instance` | [norm](declarations/norm-source-edition-2.md) | 1023 | `BLOCKED_NATIVE_ADMISSION` |
| 174 | `theorem` | [norm_eq_abs](declarations/norm-eq-abs.md) | 1027 | `BLOCKED_NATIVE_ADMISSION` |
| 175 | `instance` | [normedAddCommGroup](declarations/normedaddcommgroup-source-edition-2.md) | 1030 | `BLOCKED_NATIVE_ADMISSION` |
| 176 | `theorem` | [norm_of_nonneg](declarations/norm-of-nonneg.md) | 1033 | `BLOCKED_NATIVE_ADMISSION` |
| 177 | `theorem` | [norm_of_nonpos](declarations/norm-of-nonpos.md) | 1036 | `BLOCKED_NATIVE_ADMISSION` |
| 178 | `theorem` | [le_norm_self](declarations/le-norm-self.md) | 1039 | `BLOCKED_NATIVE_ADMISSION` |
| 179 | `lemma` | [norm_natCast](declarations/norm-natcast.md) | 1042 | `BLOCKED_NATIVE_ADMISSION` |
| 180 | `lemma` | [nnnorm_natCast](declarations/nnnorm-natcast.md) | 1043 | `BLOCKED_NATIVE_ADMISSION` |
| 181 | `lemma` | [enorm_natCast](declarations/enorm-natcast.md) | 1044 | `BLOCKED_NATIVE_ADMISSION` |
| 182 | `lemma` | [norm_ofNat](declarations/norm-ofnat.md) | 1046 | `BLOCKED_NATIVE_ADMISSION` |
| 183 | `lemma` | [nnnorm_ofNat](declarations/nnnorm-ofnat.md) | 1049 | `BLOCKED_NATIVE_ADMISSION` |
| 184 | `lemma` | [norm_two](declarations/norm-two.md) | 1052 | `BLOCKED_NATIVE_ADMISSION` |
| 185 | `lemma` | [nnnorm_two](declarations/nnnorm-two.md) | 1053 | `BLOCKED_NATIVE_ADMISSION` |
| 186 | `lemma` | [norm_nnratCast](declarations/norm-nnratcast.md) | 1056 | `BLOCKED_NATIVE_ADMISSION` |
| 187 | `lemma` | [nnnorm_nnratCast](declarations/nnnorm-nnratcast.md) | 1059 | `BLOCKED_NATIVE_ADMISSION` |
| 188 | `theorem` | [nnnorm_of_nonneg](declarations/nnnorm-of-nonneg.md) | 1061 | `BLOCKED_NATIVE_ADMISSION` |
| 189 | `lemma` | [enorm_of_nonneg](declarations/enorm-of-nonneg.md) | 1064 | `BLOCKED_NATIVE_ADMISSION` |
| 190 | `lemma` | [enorm_ofReal_of_nonneg](declarations/enorm-ofreal-of-nonneg.md) | 1067 | `BLOCKED_NATIVE_ADMISSION` |
| 191 | `lemma` | [nnnorm_abs](declarations/nnnorm-abs.md) | 1070 | `BLOCKED_NATIVE_ADMISSION` |
| 192 | `lemma` | [enorm_abs](declarations/enorm-abs.md) | 1071 | `BLOCKED_NATIVE_ADMISSION` |
| 193 | `theorem` | [enorm_eq_ofReal](declarations/enorm-eq-ofreal.md) | 1073 | `BLOCKED_NATIVE_ADMISSION` |
| 194 | `theorem` | [enorm_eq_ofReal_abs](declarations/enorm-eq-ofreal-abs.md) | 1078 | `BLOCKED_NATIVE_ADMISSION` |
| 195 | `theorem` | [toNNReal_eq_nnnorm_of_nonneg](declarations/tonnreal-eq-nnnorm-of-nonneg.md) | 1083 | `BLOCKED_NATIVE_ADMISSION` |
| 196 | `theorem` | [ofReal_le_enorm](declarations/ofreal-le-enorm.md) | 1089 | `BLOCKED_NATIVE_ADMISSION` |
| 197 | `instance` | [(anonymous)](declarations/instance-source-edition-8.md) | 1098 | `BLOCKED_NATIVE_ADMISSION` |
| 198 | `lemma` | [nnnorm_eq_self](declarations/nnnorm-eq-self.md) | 1101 | `BLOCKED_NATIVE_ADMISSION` |
| 199 | `theorem` | [dist_inv](declarations/dist-inv.md) | 1110 | `BLOCKED_NATIVE_ADMISSION` |
| 200 | `theorem` | [norm_multiset_sum_le](declarations/norm-multiset-sum-le.md) | 1113 | `BLOCKED_NATIVE_ADMISSION` |
| 201 | `theorem` | [norm_multiset_prod_le](declarations/norm-multiset-prod-le.md) | 1118 | `BLOCKED_NATIVE_ADMISSION` |
| 202 | `theorem` | [norm_sum_le](declarations/norm-sum-le.md) | 1125 | `BLOCKED_NATIVE_ADMISSION` |
| 203 | `theorem` | [norm_prod_le](declarations/norm-prod-le.md) | 1130 | `BLOCKED_NATIVE_ADMISSION` |
| 204 | `theorem` | [norm_prod_le_of_le](declarations/norm-prod-le-of-le.md) | 1137 | `BLOCKED_NATIVE_ADMISSION` |
| 205 | `theorem` | [dist_prod_prod_le_of_le](declarations/dist-prod-prod-le-of-le.md) | 1142 | `BLOCKED_NATIVE_ADMISSION` |
| 206 | `theorem` | [dist_prod_prod_le](declarations/dist-prod-prod-le.md) | 1149 | `BLOCKED_NATIVE_ADMISSION` |
| 207 | `theorem` | [mul_mem_ball_iff_norm](declarations/mul-mem-ball-iff-norm.md) | 1154 | `BLOCKED_NATIVE_ADMISSION` |
| 208 | `theorem` | [mul_mem_closedBall_iff_norm](declarations/mul-mem-closedball-iff-norm.md) | 1158 | `BLOCKED_NATIVE_ADMISSION` |
| 209 | `theorem` | [preimage_mul_ball](declarations/preimage-mul-ball.md) | 1163 | `BLOCKED_NATIVE_ADMISSION` |
| 210 | `theorem` | [preimage_mul_closedBall](declarations/preimage-mul-closedball.md) | 1169 | `BLOCKED_NATIVE_ADMISSION` |
| 211 | `theorem` | [preimage_mul_sphere](declarations/preimage-mul-sphere.md) | 1175 | `BLOCKED_NATIVE_ADMISSION` |
| 212 | `theorem` | [pow_mem_closedBall](declarations/pow-mem-closedball.md) | 1181 | `BLOCKED_NATIVE_ADMISSION` |
| 213 | `theorem` | [pow_mem_ball](declarations/pow-mem-ball.md) | 1188 | `BLOCKED_NATIVE_ADMISSION` |
| 214 | `theorem` | [mul_mem_closedBall_mul_iff](declarations/mul-mem-closedball-mul-iff.md) | 1196 | `BLOCKED_NATIVE_ADMISSION` |
| 215 | `theorem` | [mul_mem_ball_mul_iff](declarations/mul-mem-ball-mul-iff.md) | 1200 | `BLOCKED_NATIVE_ADMISSION` |
| 216 | `theorem` | [smul_closedBall''](declarations/smul-closedball.md) | 1204 | `BLOCKED_NATIVE_ADMISSION` |
| 217 | `theorem` | [smul_ball''](declarations/smul-ball.md) | 1210 | `BLOCKED_NATIVE_ADMISSION` |
| 218 | `theorem` | [nnnorm_multiset_prod_le](declarations/nnnorm-multiset-prod-le.md) | 1216 | `BLOCKED_NATIVE_ADMISSION` |
| 219 | `theorem` | [nnnorm_prod_le](declarations/nnnorm-prod-le.md) | 1223 | `BLOCKED_NATIVE_ADMISSION` |
| 220 | `theorem` | [nnnorm_prod_le_of_le](declarations/nnnorm-prod-le-of-le.md) | 1229 | `BLOCKED_NATIVE_ADMISSION` |
| 221 | `lemma` | [norm_norm'](declarations/norm-norm.md) | 1235 | `BLOCKED_NATIVE_ADMISSION` |
| 222 | `lemma` | [nnnorm_norm'](declarations/nnnorm-norm.md) | 1238 | `BLOCKED_NATIVE_ADMISSION` |
| 223 | `lemma` | [enorm_norm'](declarations/enorm-norm.md) | 1241 | `BLOCKED_NATIVE_ADMISSION` |
| 224 | `lemma` | [enorm_enorm](declarations/enorm-enorm.md) | 1243 | `BLOCKED_NATIVE_ADMISSION` |
| 225 | `lemma` | [norm_le_zero_iff'](declarations/norm-le-zero-iff.md) | 1252 | `BLOCKED_NATIVE_ADMISSION` |
| 226 | `lemma` | [norm_pos_iff'](declarations/norm-pos-iff.md) | 1255 | `BLOCKED_NATIVE_ADMISSION` |
| 227 | `lemma` | [norm_eq_zero'](declarations/norm-eq-zero.md) | 1258 | `BLOCKED_NATIVE_ADMISSION` |
| 228 | `lemma` | [norm_ne_zero_iff'](declarations/norm-ne-zero-iff.md) | 1261 | `BLOCKED_NATIVE_ADMISSION` |
| 229 | `theorem` | [norm_div_eq_zero_iff](declarations/norm-div-eq-zero-iff.md) | 1270 | `BLOCKED_NATIVE_ADMISSION` |
| 230 | `theorem` | [norm_div_pos_iff](declarations/norm-div-pos-iff.md) | 1273 | `BLOCKED_NATIVE_ADMISSION` |
| 231 | `theorem` | [eq_of_norm_div_le_zero](declarations/eq-of-norm-div-le-zero.md) | 1278 | `BLOCKED_NATIVE_ADMISSION` |
| 232 | `theorem` | [eq_one_or_norm_pos](declarations/eq-one-or-norm-pos.md) | 1286 | `BLOCKED_NATIVE_ADMISSION` |
| 233 | `theorem` | [eq_one_or_nnnorm_pos](declarations/eq-one-or-nnnorm-pos.md) | 1290 | `BLOCKED_NATIVE_ADMISSION` |
| 234 | `theorem` | [nnnorm_eq_zero'](declarations/nnnorm-eq-zero.md) | 1294 | `BLOCKED_NATIVE_ADMISSION` |
| 235 | `theorem` | [nnnorm_ne_zero_iff'](declarations/nnnorm-ne-zero-iff.md) | 1298 | `BLOCKED_NATIVE_ADMISSION` |
| 236 | `lemma` | [nnnorm_pos'](declarations/nnnorm-pos.md) | 1302 | `BLOCKED_NATIVE_ADMISSION` |
| 237 | `def` | [normGroupNorm](declarations/normgroupnorm.md) | 1308 | `BLOCKED_NATIVE_ADMISSION` |
| 238 | `theorem` | [coe_normGroupNorm](declarations/coe-normgroupnorm.md) | 1312 | `BLOCKED_NATIVE_ADMISSION` |
| 239 | `theorem` | [hasCompactSupport_norm_iff](declarations/hascompactsupport-norm-iff.md) | 1323 | `BLOCKED_NATIVE_ADMISSION` |
| 240 | `lemma` | [tendsto_norm_atTop_atTop](declarations/tendsto-norm-attop-attop.md) | 1330 | `BLOCKED_NATIVE_ADMISSION` |
| 241 | `def` | [evalMulNorm](declarations/evalmulnorm.md) | 1341 | `BLOCKED_NATIVE_ADMISSION` |
| 242 | `def` | [evalAddNorm](declarations/evaladdnorm.md) | 1363 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=58ee10bd5934a8b91cc519003cad570e5d61959d563601a8d83923b76806f763 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/Basic/Variantb63776bcc52b22a9dedba729e05931981d3943f3ae0ef866845ebd9de68bbdff.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
