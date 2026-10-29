# Linear Algebra Tensor Product Basic Namespaced

[Complete source index](../../../../complete-source-index.md) · [Up one directory](../../../../complete-source-index.md) · [Full source](source.md)

**220 observed declarations and anonymous commands**, 160 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Algebra/LinearAlgebra/Basic/Variante852c9c92f74be6024928f28538b2bf659ec48392075a434beebaab80cdfe944.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `8c786d93b4b8cd0749f4b0d3a41c52c1464a6c6c`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../_verification/specifications/LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MultilinearAlgebraTensorCalculus/LinearAlgebraTensorProductBasicNamespaced.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `inductive` | [Eqv](declarations/eqv.md) | 72 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `def` | [TensorProduct](declarations/tensorproduct.md) | 87 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `instance` | [zero](declarations/zero.md) | 99 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `instance` | [add](declarations/add.md) | 102 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `instance` | [addZeroClass](declarations/addzeroclass.md) | 105 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `instance` | [addSemigroup](declarations/addsemigroup.md) | 113 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `instance` | [addCommSemigroup](declarations/addcommsemigroup.md) | 117 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `instance` | [(anonymous)](declarations/instance-source-edition-4.md) | 124 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `def` | [tmul](declarations/tmul.md) | 132 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [induction_on](declarations/induction-on.md) | 142 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `def` | [liftAddHom](declarations/liftaddhom.md) | 160 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [liftAddHom_tmul](declarations/liftaddhom-tmul.md) | 182 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [zero_tmul](declarations/zero-tmul.md) | 189 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [add_tmul](declarations/add-tmul.md) | 192 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [tmul_zero](declarations/tmul-zero.md) | 197 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [tmul_add](declarations/tmul-add.md) | 200 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `instance` | [uniqueLeft](declarations/uniqueleft.md) | 203 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `instance` | [uniqueRight](declarations/uniqueright.md) | 208 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `class` | [CompatibleSMul](declarations/compatiblesmul.md) | 227 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `instance` | [(anonymous)](declarations/instance-source-edition-5.md) | 234 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [smul_tmul](declarations/smul-tmul-source-edition-2.md) | 243 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `def` | [addMonoidWithWrongNSMul](declarations/addmonoidwithwrongnsmul.md) | 247 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `def` | [SMul.aux](declarations/smul-aux.md) | 252 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [SMul.aux_of](declarations/smul-aux-of.md) | 255 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `instance` | [leftHasSMul](declarations/lefthassmul.md) | 273 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `instance` | [(anonymous)](declarations/instance.md) | 291 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [smul_zero](declarations/smul-zero.md) | 294 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [smul_add](declarations/smul-add.md) | 297 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [zero_smul](declarations/zero-smul.md) | 300 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [one_smul](declarations/one-smul.md) | 306 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [add_smul](declarations/add-smul.md) | 312 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `instance` | [addMonoid](declarations/addmonoid.md) | 319 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `instance` | [addCommMonoid](declarations/addcommmonoid.md) | 328 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `instance` | [leftDistribMulAction](declarations/leftdistribmulaction.md) | 332 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `instance` | [(anonymous)](declarations/instance-source-edition-3.md) | 343 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `theorem` | [smul_tmul'](declarations/smul-tmul.md) | 346 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `theorem` | [tmul_smul](declarations/tmul-smul.md) | 350 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `theorem` | [smul_tmul_smul](declarations/smul-tmul-smul.md) | 354 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `instance` | [leftModule](declarations/leftmodule.md) | 357 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `instance` | [(anonymous)](declarations/instance-source-edition-6.md) | 361 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `instance` | [(anonymous)](declarations/instance-source-edition-2.md) | 364 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `instance` | [smulCommClass_left](declarations/smulcommclass-left.md) | 377 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `instance` | [isScalarTower_left](declarations/isscalartower-left.md) | 386 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `instance` | [isScalarTower_right](declarations/isscalartower-right.md) | 396 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `instance` | [isScalarTower](declarations/isscalartower.md) | 406 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `def` | [mk](declarations/mk.md) | 412 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `theorem` | [mk_apply](declarations/mk-apply.md) | 417 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `theorem` | [ite_tmul](declarations/ite-tmul.md) | 420 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `theorem` | [tmul_ite](declarations/tmul-ite.md) | 423 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `lemma` | [tmul_single](declarations/tmul-single.md) | 426 | `BLOCKED_NATIVE_ADMISSION` |
| 51 | `lemma` | [single_tmul](declarations/single-tmul.md) | 431 | `BLOCKED_NATIVE_ADMISSION` |
| 52 | `theorem` | [sum_tmul](declarations/sum-tmul.md) | 438 | `BLOCKED_NATIVE_ADMISSION` |
| 53 | `theorem` | [tmul_sum](declarations/tmul-sum.md) | 445 | `BLOCKED_NATIVE_ADMISSION` |
| 54 | `theorem` | [span_tmul_eq_top](declarations/span-tmul-eq-top.md) | 457 | `BLOCKED_NATIVE_ADMISSION` |
| 55 | `theorem` | [map₂_mk_top_top_eq_top](declarations/map-mk-top-top-eq-top.md) | 468 | `BLOCKED_NATIVE_ADMISSION` |
| 56 | `theorem` | [exists_eq_tmul_of_forall](declarations/exists-eq-tmul-of-forall.md) | 472 | `BLOCKED_NATIVE_ADMISSION` |
| 57 | `def` | [liftAux](declarations/liftaux.md) | 497 | `BLOCKED_NATIVE_ADMISSION` |
| 58 | `theorem` | [liftAux_tmul](declarations/liftaux-tmul.md) | 501 | `BLOCKED_NATIVE_ADMISSION` |
| 59 | `theorem` | [liftAux.smul](declarations/liftaux-smul.md) | 507 | `BLOCKED_NATIVE_ADMISSION` |
| 60 | `def` | [lift](declarations/lift.md) | 516 | `BLOCKED_NATIVE_ADMISSION` |
| 61 | `theorem` | [lift.tmul](declarations/lift-tmul.md) | 520 | `BLOCKED_NATIVE_ADMISSION` |
| 62 | `theorem` | [lift.tmul'](declarations/lift-tmul-source-edition-2.md) | 524 | `BLOCKED_NATIVE_ADMISSION` |
| 63 | `theorem` | [ext'](declarations/ext.md) | 527 | `BLOCKED_NATIVE_ADMISSION` |
| 64 | `theorem` | [lift.unique](declarations/lift-unique.md) | 532 | `BLOCKED_NATIVE_ADMISSION` |
| 65 | `theorem` | [lift_mk](declarations/lift-mk.md) | 535 | `BLOCKED_NATIVE_ADMISSION` |
| 66 | `theorem` | [lift_compr₂](declarations/lift-compr.md) | 538 | `BLOCKED_NATIVE_ADMISSION` |
| 67 | `theorem` | [lift_mk_compr₂](declarations/lift-mk-compr.md) | 541 | `BLOCKED_NATIVE_ADMISSION` |
| 68 | `theorem` | [ext](declarations/ext-source-edition-2.md) | 550 | `BLOCKED_NATIVE_ADMISSION` |
| 69 | `example` | [(anonymous)](declarations/example.md) | 555 | `BLOCKED_NATIVE_ADMISSION` |
| 70 | `def` | [uncurry](declarations/uncurry.md) | 561 | `BLOCKED_NATIVE_ADMISSION` |
| 71 | `theorem` | [uncurry_apply](declarations/uncurry-apply.md) | 565 | `BLOCKED_NATIVE_ADMISSION` |
| 72 | `def` | [lift.equiv](declarations/lift-equiv.md) | 573 | `BLOCKED_NATIVE_ADMISSION` |
| 73 | `theorem` | [lift.equiv_apply](declarations/lift-equiv-apply.md) | 580 | `BLOCKED_NATIVE_ADMISSION` |
| 74 | `theorem` | [lift.equiv_symm_apply](declarations/lift-equiv-symm-apply.md) | 585 | `BLOCKED_NATIVE_ADMISSION` |
| 75 | `def` | [lcurry](declarations/lcurry.md) | 591 | `BLOCKED_NATIVE_ADMISSION` |
| 76 | `theorem` | [lcurry_apply](declarations/lcurry-apply.md) | 597 | `BLOCKED_NATIVE_ADMISSION` |
| 77 | `def` | [curry](declarations/curry.md) | 602 | `BLOCKED_NATIVE_ADMISSION` |
| 78 | `theorem` | [curry_apply](declarations/curry-apply.md) | 606 | `BLOCKED_NATIVE_ADMISSION` |
| 79 | `theorem` | [curry_injective](declarations/curry-injective.md) | 609 | `BLOCKED_NATIVE_ADMISSION` |
| 80 | `theorem` | [ext_threefold](declarations/ext-threefold.md) | 612 | `BLOCKED_NATIVE_ADMISSION` |
| 81 | `theorem` | [ext_fourfold](declarations/ext-fourfold-source-edition-2.md) | 618 | `BLOCKED_NATIVE_ADMISSION` |
| 82 | `theorem` | [ext_fourfold'](declarations/ext-fourfold.md) | 625 | `BLOCKED_NATIVE_ADMISSION` |
| 83 | `def` | [comm](declarations/comm.md) | 639 | `BLOCKED_NATIVE_ADMISSION` |
| 84 | `theorem` | [comm_tmul](declarations/comm-tmul.md) | 644 | `BLOCKED_NATIVE_ADMISSION` |
| 85 | `theorem` | [comm_symm_tmul](declarations/comm-symm-tmul.md) | 648 | `BLOCKED_NATIVE_ADMISSION` |
| 86 | `lemma` | [lift_comp_comm_eq](declarations/lift-comp-comm-eq.md) | 651 | `BLOCKED_NATIVE_ADMISSION` |
| 87 | `def` | [mapOfCompatibleSMul](declarations/mapofcompatiblesmul.md) | 664 | `BLOCKED_NATIVE_ADMISSION` |
| 88 | `theorem` | [mapOfCompatibleSMul_tmul](declarations/mapofcompatiblesmul-tmul.md) | 672 | `BLOCKED_NATIVE_ADMISSION` |
| 89 | `theorem` | [mapOfCompatibleSMul_surjective](declarations/mapofcompatiblesmul-surjective.md) | 675 | `BLOCKED_NATIVE_ADMISSION` |
| 90 | `def` | [mapOfCompatibleSMul'](declarations/mapofcompatiblesmul-source-edition-2.md) | 682 | `BLOCKED_NATIVE_ADMISSION` |
| 91 | `def` | [equivOfCompatibleSMul](declarations/equivofcompatiblesmul.md) | 689 | `BLOCKED_NATIVE_ADMISSION` |
| 92 | `def` | [map](declarations/map-source-edition-2.md) | 704 | `BLOCKED_NATIVE_ADMISSION` |
| 93 | `theorem` | [map_tmul](declarations/map-tmul.md) | 708 | `BLOCKED_NATIVE_ADMISSION` |
| 94 | `lemma` | [map_comp_comm_eq](declarations/map-comp-comm-eq.md) | 713 | `BLOCKED_NATIVE_ADMISSION` |
| 95 | `lemma` | [map_comm](declarations/map-comm.md) | 717 | `BLOCKED_NATIVE_ADMISSION` |
| 96 | `theorem` | [map_range_eq_span_tmul](declarations/map-range-eq-span-tmul.md) | 721 | `BLOCKED_NATIVE_ADMISSION` |
| 97 | `def` | [mapIncl](declarations/mapincl.md) | 736 | `BLOCKED_NATIVE_ADMISSION` |
| 98 | `lemma` | [range_mapIncl](declarations/range-mapincl.md) | 739 | `BLOCKED_NATIVE_ADMISSION` |
| 99 | `theorem` | [map₂_eq_range_lift_comp_mapIncl](declarations/map-eq-range-lift-comp-mapincl.md) | 744 | `BLOCKED_NATIVE_ADMISSION` |
| 100 | `theorem` | [map_comp](declarations/map-comp.md) | 756 | `BLOCKED_NATIVE_ADMISSION` |
| 101 | `lemma` | [range_mapIncl_mono](declarations/range-mapincl-mono.md) | 760 | `BLOCKED_NATIVE_ADMISSION` |
| 102 | `theorem` | [lift_comp_map](declarations/lift-comp-map.md) | 765 | `BLOCKED_NATIVE_ADMISSION` |
| 103 | `theorem` | [map_id](declarations/map-id.md) | 772 | `BLOCKED_NATIVE_ADMISSION` |
| 104 | `theorem` | [map_one](declarations/map-one.md) | 777 | `BLOCKED_NATIVE_ADMISSION` |
| 105 | `theorem` | [map_mul](declarations/map-mul.md) | 780 | `BLOCKED_NATIVE_ADMISSION` |
| 106 | `theorem` | [map_pow](declarations/map-pow.md) | 785 | `BLOCKED_NATIVE_ADMISSION` |
| 107 | `theorem` | [map_add_left](declarations/map-add-left.md) | 791 | `BLOCKED_NATIVE_ADMISSION` |
| 108 | `theorem` | [map_add_right](declarations/map-add-right.md) | 796 | `BLOCKED_NATIVE_ADMISSION` |
| 109 | `theorem` | [map_smul_left](declarations/map-smul-left.md) | 801 | `BLOCKED_NATIVE_ADMISSION` |
| 110 | `theorem` | [map_smul_right](declarations/map-smul-right.md) | 805 | `BLOCKED_NATIVE_ADMISSION` |
| 111 | `def` | [mapBilinear](declarations/mapbilinear.md) | 812 | `BLOCKED_NATIVE_ADMISSION` |
| 112 | `def` | [lTensorHomToHomLTensor](declarations/ltensorhomtohomltensor.md) | 816 | `BLOCKED_NATIVE_ADMISSION` |
| 113 | `def` | [rTensorHomToHomRTensor](declarations/rtensorhomtohomrtensor.md) | 820 | `BLOCKED_NATIVE_ADMISSION` |
| 114 | `def` | [homTensorHomMap](declarations/homtensorhommap.md) | 825 | `BLOCKED_NATIVE_ADMISSION` |
| 115 | `def` | [map₂](declarations/map.md) | 839 | `BLOCKED_NATIVE_ADMISSION` |
| 116 | `theorem` | [mapBilinear_apply](declarations/mapbilinear-apply.md) | 844 | `BLOCKED_NATIVE_ADMISSION` |
| 117 | `theorem` | [lTensorHomToHomLTensor_apply](declarations/ltensorhomtohomltensor-apply.md) | 848 | `BLOCKED_NATIVE_ADMISSION` |
| 118 | `theorem` | [rTensorHomToHomRTensor_apply](declarations/rtensorhomtohomrtensor-apply.md) | 853 | `BLOCKED_NATIVE_ADMISSION` |
| 119 | `theorem` | [homTensorHomMap_apply](declarations/homtensorhommap-apply.md) | 858 | `BLOCKED_NATIVE_ADMISSION` |
| 120 | `theorem` | [map₂_apply_tmul](declarations/map-apply-tmul.md) | 863 | `BLOCKED_NATIVE_ADMISSION` |
| 121 | `theorem` | [map_zero_left](declarations/map-zero-left.md) | 867 | `BLOCKED_NATIVE_ADMISSION` |
| 122 | `theorem` | [map_zero_right](declarations/map-zero-right.md) | 871 | `BLOCKED_NATIVE_ADMISSION` |
| 123 | `def` | [congr](declarations/congr.md) | 878 | `BLOCKED_NATIVE_ADMISSION` |
| 124 | `theorem` | [congr_tmul](declarations/congr-tmul.md) | 884 | `BLOCKED_NATIVE_ADMISSION` |
| 125 | `theorem` | [congr_symm_tmul](declarations/congr-symm-tmul.md) | 889 | `BLOCKED_NATIVE_ADMISSION` |
| 126 | `theorem` | [congr_symm](declarations/congr-symm.md) | 893 | `BLOCKED_NATIVE_ADMISSION` |
| 127 | `theorem` | [congr_refl_refl](declarations/congr-refl-refl.md) | 895 | `BLOCKED_NATIVE_ADMISSION` |
| 128 | `theorem` | [congr_trans](declarations/congr-trans.md) | 898 | `BLOCKED_NATIVE_ADMISSION` |
| 129 | `theorem` | [congr_mul](declarations/congr-mul.md) | 902 | `BLOCKED_NATIVE_ADMISSION` |
| 130 | `theorem` | [congr_pow](declarations/congr-pow.md) | 905 | `BLOCKED_NATIVE_ADMISSION` |
| 131 | `theorem` | [congr_zpow](declarations/congr-zpow.md) | 911 | `BLOCKED_NATIVE_ADMISSION` |
| 132 | `def` | [lTensor](declarations/ltensor.md) | 929 | `BLOCKED_NATIVE_ADMISSION` |
| 133 | `def` | [rTensor](declarations/rtensor-source-edition-2.md) | 934 | `BLOCKED_NATIVE_ADMISSION` |
| 134 | `theorem` | [lTensor_def](declarations/ltensor-def.md) | 939 | `BLOCKED_NATIVE_ADMISSION` |
| 135 | `theorem` | [rTensor_def](declarations/rtensor-def.md) | 941 | `BLOCKED_NATIVE_ADMISSION` |
| 136 | `theorem` | [lTensor_tmul](declarations/ltensor-tmul-source-edition-2.md) | 944 | `BLOCKED_NATIVE_ADMISSION` |
| 137 | `theorem` | [rTensor_tmul](declarations/rtensor-tmul-source-edition-2.md) | 948 | `BLOCKED_NATIVE_ADMISSION` |
| 138 | `theorem` | [lTensor_comp_mk](declarations/ltensor-comp-mk.md) | 952 | `BLOCKED_NATIVE_ADMISSION` |
| 139 | `theorem` | [rTensor_comp_flip_mk](declarations/rtensor-comp-flip-mk.md) | 957 | `BLOCKED_NATIVE_ADMISSION` |
| 140 | `lemma` | [comm_comp_rTensor_comp_comm_eq](declarations/comm-comp-rtensor-comp-comm-eq.md) | 961 | `BLOCKED_NATIVE_ADMISSION` |
| 141 | `lemma` | [comm_comp_lTensor_comp_comm_eq](declarations/comm-comp-ltensor-comp-comm-eq.md) | 966 | `BLOCKED_NATIVE_ADMISSION` |
| 142 | `theorem` | [lTensor_inj_iff_rTensor_inj](declarations/ltensor-inj-iff-rtensor-inj.md) | 972 | `BLOCKED_NATIVE_ADMISSION` |
| 143 | `theorem` | [lTensor_surj_iff_rTensor_surj](declarations/ltensor-surj-iff-rtensor-surj.md) | 977 | `BLOCKED_NATIVE_ADMISSION` |
| 144 | `theorem` | [lTensor_bij_iff_rTensor_bij](declarations/ltensor-bij-iff-rtensor-bij.md) | 982 | `BLOCKED_NATIVE_ADMISSION` |
| 145 | `def` | [lTensorHom](declarations/ltensorhom.md) | 993 | `BLOCKED_NATIVE_ADMISSION` |
| 146 | `def` | [rTensorHom](declarations/rtensorhom.md) | 1006 | `BLOCKED_NATIVE_ADMISSION` |
| 147 | `theorem` | [coe_lTensorHom](declarations/coe-ltensorhom.md) | 1017 | `BLOCKED_NATIVE_ADMISSION` |
| 148 | `theorem` | [coe_rTensorHom](declarations/coe-rtensorhom.md) | 1021 | `BLOCKED_NATIVE_ADMISSION` |
| 149 | `theorem` | [lTensor_add](declarations/ltensor-add.md) | 1025 | `BLOCKED_NATIVE_ADMISSION` |
| 150 | `theorem` | [rTensor_add](declarations/rtensor-add.md) | 1029 | `BLOCKED_NATIVE_ADMISSION` |
| 151 | `theorem` | [lTensor_zero](declarations/ltensor-zero.md) | 1033 | `BLOCKED_NATIVE_ADMISSION` |
| 152 | `theorem` | [rTensor_zero](declarations/rtensor-zero.md) | 1037 | `BLOCKED_NATIVE_ADMISSION` |
| 153 | `theorem` | [lTensor_smul](declarations/ltensor-smul.md) | 1041 | `BLOCKED_NATIVE_ADMISSION` |
| 154 | `theorem` | [rTensor_smul](declarations/rtensor-smul.md) | 1045 | `BLOCKED_NATIVE_ADMISSION` |
| 155 | `theorem` | [lTensor_comp](declarations/ltensor-comp.md) | 1048 | `BLOCKED_NATIVE_ADMISSION` |
| 156 | `theorem` | [lTensor_comp_apply](declarations/ltensor-comp-apply.md) | 1052 | `BLOCKED_NATIVE_ADMISSION` |
| 157 | `theorem` | [rTensor_comp](declarations/rtensor-comp.md) | 1055 | `BLOCKED_NATIVE_ADMISSION` |
| 158 | `theorem` | [rTensor_comp_apply](declarations/rtensor-comp-apply.md) | 1059 | `BLOCKED_NATIVE_ADMISSION` |
| 159 | `theorem` | [lTensor_mul](declarations/ltensor-mul.md) | 1062 | `BLOCKED_NATIVE_ADMISSION` |
| 160 | `theorem` | [rTensor_mul](declarations/rtensor-mul.md) | 1065 | `BLOCKED_NATIVE_ADMISSION` |
| 161 | `theorem` | [lTensor_id](declarations/ltensor-id.md) | 1071 | `BLOCKED_NATIVE_ADMISSION` |
| 162 | `theorem` | [lTensor_id_apply](declarations/ltensor-id-apply.md) | 1075 | `BLOCKED_NATIVE_ADMISSION` |
| 163 | `theorem` | [rTensor_id](declarations/rtensor-id.md) | 1079 | `BLOCKED_NATIVE_ADMISSION` |
| 164 | `theorem` | [rTensor_id_apply](declarations/rtensor-id-apply.md) | 1083 | `BLOCKED_NATIVE_ADMISSION` |
| 165 | `theorem` | [lTensor_smul_action](declarations/ltensor-smul-action.md) | 1087 | `BLOCKED_NATIVE_ADMISSION` |
| 166 | `theorem` | [rTensor_smul_action](declarations/rtensor-smul-action.md) | 1093 | `BLOCKED_NATIVE_ADMISSION` |
| 167 | `theorem` | [lTensor_comp_rTensor](declarations/ltensor-comp-rtensor.md) | 1101 | `BLOCKED_NATIVE_ADMISSION` |
| 168 | `theorem` | [rTensor_comp_lTensor](declarations/rtensor-comp-ltensor.md) | 1106 | `BLOCKED_NATIVE_ADMISSION` |
| 169 | `theorem` | [map_comp_rTensor](declarations/map-comp-rtensor.md) | 1111 | `BLOCKED_NATIVE_ADMISSION` |
| 170 | `theorem` | [map_comp_lTensor](declarations/map-comp-ltensor.md) | 1116 | `BLOCKED_NATIVE_ADMISSION` |
| 171 | `theorem` | [rTensor_comp_map](declarations/rtensor-comp-map.md) | 1121 | `BLOCKED_NATIVE_ADMISSION` |
| 172 | `theorem` | [lTensor_comp_map](declarations/ltensor-comp-map.md) | 1126 | `BLOCKED_NATIVE_ADMISSION` |
| 173 | `theorem` | [rTensor_pow](declarations/rtensor-pow-source-edition-2.md) | 1133 | `BLOCKED_NATIVE_ADMISSION` |
| 174 | `theorem` | [lTensor_pow](declarations/ltensor-pow.md) | 1138 | `BLOCKED_NATIVE_ADMISSION` |
| 175 | `def` | [lTensor](declarations/ltensor-source-edition-2.md) | 1150 | `BLOCKED_NATIVE_ADMISSION` |
| 176 | `def` | [rTensor](declarations/rtensor.md) | 1154 | `BLOCKED_NATIVE_ADMISSION` |
| 177 | `theorem` | [coe_lTensor](declarations/coe-ltensor.md) | 1158 | `BLOCKED_NATIVE_ADMISSION` |
| 178 | `theorem` | [coe_lTensor_symm](declarations/coe-ltensor-symm.md) | 1160 | `BLOCKED_NATIVE_ADMISSION` |
| 179 | `theorem` | [coe_rTensor](declarations/coe-rtensor.md) | 1162 | `BLOCKED_NATIVE_ADMISSION` |
| 180 | `theorem` | [coe_rTensor_symm](declarations/coe-rtensor-symm.md) | 1164 | `BLOCKED_NATIVE_ADMISSION` |
| 181 | `theorem` | [lTensor_tmul](declarations/ltensor-tmul.md) | 1166 | `BLOCKED_NATIVE_ADMISSION` |
| 182 | `theorem` | [lTensor_symm_tmul](declarations/ltensor-symm-tmul.md) | 1168 | `BLOCKED_NATIVE_ADMISSION` |
| 183 | `theorem` | [rTensor_tmul](declarations/rtensor-tmul.md) | 1170 | `BLOCKED_NATIVE_ADMISSION` |
| 184 | `theorem` | [rTensor_symm_tmul](declarations/rtensor-symm-tmul.md) | 1172 | `BLOCKED_NATIVE_ADMISSION` |
| 185 | `lemma` | [comm_trans_rTensor_trans_comm_eq](declarations/comm-trans-rtensor-trans-comm-eq.md) | 1174 | `BLOCKED_NATIVE_ADMISSION` |
| 186 | `lemma` | [comm_trans_lTensor_trans_comm_eq](declarations/comm-trans-ltensor-trans-comm-eq.md) | 1178 | `BLOCKED_NATIVE_ADMISSION` |
| 187 | `theorem` | [lTensor_trans](declarations/ltensor-trans.md) | 1182 | `BLOCKED_NATIVE_ADMISSION` |
| 188 | `theorem` | [lTensor_trans_apply](declarations/ltensor-trans-apply.md) | 1185 | `BLOCKED_NATIVE_ADMISSION` |
| 189 | `theorem` | [rTensor_trans](declarations/rtensor-trans.md) | 1188 | `BLOCKED_NATIVE_ADMISSION` |
| 190 | `theorem` | [rTensor_trans_apply](declarations/rtensor-trans-apply.md) | 1191 | `BLOCKED_NATIVE_ADMISSION` |
| 191 | `theorem` | [lTensor_mul](declarations/ltensor-mul-source-edition-2.md) | 1194 | `BLOCKED_NATIVE_ADMISSION` |
| 192 | `theorem` | [rTensor_mul](declarations/rtensor-mul-source-edition-2.md) | 1197 | `BLOCKED_NATIVE_ADMISSION` |
| 193 | `theorem` | [lTensor_refl](declarations/ltensor-refl.md) | 1202 | `BLOCKED_NATIVE_ADMISSION` |
| 194 | `theorem` | [lTensor_refl_apply](declarations/ltensor-refl-apply.md) | 1204 | `BLOCKED_NATIVE_ADMISSION` |
| 195 | `theorem` | [rTensor_refl](declarations/rtensor-refl.md) | 1206 | `BLOCKED_NATIVE_ADMISSION` |
| 196 | `theorem` | [rTensor_refl_apply](declarations/rtensor-refl-apply.md) | 1208 | `BLOCKED_NATIVE_ADMISSION` |
| 197 | `theorem` | [rTensor_trans_lTensor](declarations/rtensor-trans-ltensor.md) | 1212 | `BLOCKED_NATIVE_ADMISSION` |
| 198 | `theorem` | [lTensor_trans_rTensor](declarations/ltensor-trans-rtensor.md) | 1216 | `BLOCKED_NATIVE_ADMISSION` |
| 199 | `theorem` | [rTensor_trans_congr](declarations/rtensor-trans-congr.md) | 1220 | `BLOCKED_NATIVE_ADMISSION` |
| 200 | `theorem` | [lTensor_trans_congr](declarations/ltensor-trans-congr.md) | 1224 | `BLOCKED_NATIVE_ADMISSION` |
| 201 | `theorem` | [congr_trans_rTensor](declarations/congr-trans-rtensor.md) | 1228 | `BLOCKED_NATIVE_ADMISSION` |
| 202 | `theorem` | [congr_trans_lTensor](declarations/congr-trans-ltensor.md) | 1232 | `BLOCKED_NATIVE_ADMISSION` |
| 203 | `theorem` | [rTensor_pow](declarations/rtensor-pow.md) | 1238 | `BLOCKED_NATIVE_ADMISSION` |
| 204 | `theorem` | [rTensor_zpow](declarations/rtensor-zpow.md) | 1241 | `BLOCKED_NATIVE_ADMISSION` |
| 205 | `theorem` | [lTensor_pow](declarations/ltensor-pow-source-edition-2.md) | 1244 | `BLOCKED_NATIVE_ADMISSION` |
| 206 | `theorem` | [lTensor_zpow](declarations/ltensor-zpow.md) | 1247 | `BLOCKED_NATIVE_ADMISSION` |
| 207 | `def` | [Neg.aux](declarations/neg-aux.md) | 1269 | `BLOCKED_NATIVE_ADMISSION` |
| 208 | `instance` | [neg](declarations/neg.md) | 1272 | `BLOCKED_NATIVE_ADMISSION` |
| 209 | `theorem` | [neg_add_cancel](declarations/neg-add-cancel.md) | 1275 | `BLOCKED_NATIVE_ADMISSION` |
| 210 | `instance` | [addCommGroup](declarations/addcommgroup.md) | 1288 | `BLOCKED_NATIVE_ADMISSION` |
| 211 | `theorem` | [neg_tmul](declarations/neg-tmul.md) | 1303 | `BLOCKED_NATIVE_ADMISSION` |
| 212 | `theorem` | [tmul_neg](declarations/tmul-neg.md) | 1306 | `BLOCKED_NATIVE_ADMISSION` |
| 213 | `theorem` | [tmul_sub](declarations/tmul-sub.md) | 1309 | `BLOCKED_NATIVE_ADMISSION` |
| 214 | `theorem` | [sub_tmul](declarations/sub-tmul.md) | 1312 | `BLOCKED_NATIVE_ADMISSION` |
| 215 | `instance` | [CompatibleSMul.int](declarations/compatiblesmul-int.md) | 1323 | `BLOCKED_NATIVE_ADMISSION` |
| 216 | `instance` | [CompatibleSMul.unit](declarations/compatiblesmul-unit.md) | 1328 | `BLOCKED_NATIVE_ADMISSION` |
| 217 | `theorem` | [lTensor_sub](declarations/ltensor-sub.md) | 1337 | `BLOCKED_NATIVE_ADMISSION` |
| 218 | `theorem` | [rTensor_sub](declarations/rtensor-sub.md) | 1342 | `BLOCKED_NATIVE_ADMISSION` |
| 219 | `theorem` | [lTensor_neg](declarations/ltensor-neg.md) | 1347 | `BLOCKED_NATIVE_ADMISSION` |
| 220 | `theorem` | [rTensor_neg](declarations/rtensor-neg.md) | 1352 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=9be5e271b7b0a1ed408a006168fe3614469f8a37314ddea4a42022a3b683824d -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/Basic/Variante852c9c92f74be6024928f28538b2bf659ec48392075a434beebaab80cdfe944.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
