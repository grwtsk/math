# Ring Theory Tensor Product Basic

[Complete source index](../../complete-source-index.md) · [Up one directory](../../complete-source-index.md) · [Full source](source.md)

**185 observed declarations and anonymous commands**, 119 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Algebra/LinearAlgebra/Basic/Variant94161574131a317ca750d9eb4e32942e2abcb1b2a7b39cc1e4f3810045ba0d21.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `77259d7ee7507bbea94c2c31ed99bc2a02014fb2`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../_verification/specifications/CommutativeAlgebra/RingTheoryTensorProductBasic.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [baseChange](declarations/basechange.md) | 68 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `theorem` | [baseChange_tmul](declarations/basechange-tmul.md) | 72 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `theorem` | [baseChange_eq_ltensor](declarations/basechange-eq-ltensor.md) | 75 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `theorem` | [baseChange_add](declarations/basechange-add.md) | 79 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [baseChange_zero](declarations/basechange-zero.md) | 85 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [baseChange_smul](declarations/basechange-smul.md) | 90 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `lemma` | [baseChange_id](declarations/basechange-id.md) | 95 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `lemma` | [baseChange_comp](declarations/basechange-comp.md) | 98 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `lemma` | [baseChange_one](declarations/basechange-one.md) | 104 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `lemma` | [baseChange_mul](declarations/basechange-mul.md) | 106 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `def` | [_root_.LinearEquiv.baseChange](declarations/root-linearequiv-basechange.md) | 113 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `def` | [baseChangeHom](declarations/basechangehom.md) | 120 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `def` | [_root_.Module.End.baseChangeHom](declarations/root-module-end-basechangehom.md) | 127 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `lemma` | [baseChange_pow](declarations/basechange-pow.md) | 130 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [baseChange_sub](declarations/basechange-sub.md) | 144 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [baseChange_neg](declarations/basechange-neg.md) | 149 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `def` | [liftBaseChangeEquiv](declarations/liftbasechangeequiv.md) | 165 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `abbrev` | [liftBaseChange](declarations/liftbasechange.md) | 170 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `lemma` | [liftBaseChange_tmul](declarations/liftbasechange-tmul.md) | 174 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `lemma` | [liftBaseChange_one_tmul](declarations/liftbasechange-one-tmul.md) | 176 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `lemma` | [liftBaseChangeEquiv_symm_apply](declarations/liftbasechangeequiv-symm-apply.md) | 179 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `lemma` | [liftBaseChange_comp](declarations/liftbasechange-comp.md) | 182 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `lemma` | [range_liftBaseChange](declarations/range-liftbasechange.md) | 189 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `def` | [lTensorAlgHom](declarations/ltensoralghom.md) | 216 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `def` | [rTensorAlgHom](declarations/rtensoralghom.md) | 221 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `instance` | [(anonymous)](declarations/instance.md) | 244 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [one_def](declarations/one-def.md) | 246 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `instance` | [instAddCommMonoidWithOne](declarations/instaddcommmonoidwithone.md) | 249 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [natCast_def](declarations/natcast-def-source-edition-2.md) | 255 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [natCast_def'](declarations/natcast-def.md) | 257 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `def` | [mul](declarations/mul.md) | 273 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [mul_apply](declarations/mul-apply.md) | 278 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `instance` | [instMul](declarations/instmul.md) | 283 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [tmul_mul_tmul](declarations/tmul-mul-tmul.md) | 288 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `theorem` | [_root_.SemiconjBy.tmul](declarations/root-semiconjby-tmul.md) | 293 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `theorem` | [_root_.Commute.tmul](declarations/root-commute-tmul.md) | 298 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `instance` | [instNonUnitalNonAssocSemiring](declarations/instnonunitalnonassocsemiring.md) | 303 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `instance` | [(anonymous)](declarations/instance-source-edition-3.md) | 310 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `instance` | [(anonymous)](declarations/instance-source-edition-4.md) | 325 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `theorem` | [one_mul](declarations/one-mul.md) | 347 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `theorem` | [mul_one](declarations/mul-one.md) | 350 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `instance` | [instNonAssocSemiring](declarations/instnonassocsemiring.md) | 353 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `theorem` | [mul_assoc](declarations/mul-assoc.md) | 367 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `instance` | [instNonUnitalSemiring](declarations/instnonunitalsemiring.md) | 375 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `instance` | [instSemiring](declarations/instsemiring.md) | 386 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `theorem` | [tmul_pow](declarations/tmul-pow.md) | 398 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `def` | [includeLeftRingHom](declarations/includeleftringhom.md) | 405 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `instance` | [leftAlgebra](declarations/leftalgebra.md) | 414 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `example` | [(anonymous)](declarations/example-source-edition-2.md) | 424 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `instance` | [instAlgebra](declarations/instalgebra.md) | 428 | `BLOCKED_NATIVE_ADMISSION` |
| 51 | `theorem` | [algebraMap_apply](declarations/algebramap-apply-source-edition-2.md) | 432 | `BLOCKED_NATIVE_ADMISSION` |
| 52 | `theorem` | [algebraMap_apply'](declarations/algebramap-apply.md) | 436 | `BLOCKED_NATIVE_ADMISSION` |
| 53 | `def` | [includeLeft](declarations/includeleft.md) | 441 | `BLOCKED_NATIVE_ADMISSION` |
| 54 | `theorem` | [includeLeft_apply](declarations/includeleft-apply.md) | 445 | `BLOCKED_NATIVE_ADMISSION` |
| 55 | `def` | [includeRight](declarations/includeright.md) | 450 | `BLOCKED_NATIVE_ADMISSION` |
| 56 | `theorem` | [includeRight_apply](declarations/includeright-apply.md) | 459 | `BLOCKED_NATIVE_ADMISSION` |
| 57 | `theorem` | [includeLeftRingHom_comp_algebraMap](declarations/includeleftringhom-comp-algebramap.md) | 462 | `BLOCKED_NATIVE_ADMISSION` |
| 58 | `theorem` | [ext](declarations/ext.md) | 479 | `BLOCKED_NATIVE_ADMISSION` |
| 59 | `theorem` | [ext'](declarations/ext-source-edition-2.md) | 489 | `BLOCKED_NATIVE_ADMISSION` |
| 60 | `instance` | [instAddCommGroupWithOne](declarations/instaddcommgroupwithone.md) | 501 | `BLOCKED_NATIVE_ADMISSION` |
| 61 | `theorem` | [intCast_def](declarations/intcast-def.md) | 508 | `BLOCKED_NATIVE_ADMISSION` |
| 62 | `instance` | [instNonUnitalNonAssocRing](declarations/instnonunitalnonassocring.md) | 517 | `BLOCKED_NATIVE_ADMISSION` |
| 63 | `instance` | [instNonAssocRing](declarations/instnonassocring.md) | 528 | `BLOCKED_NATIVE_ADMISSION` |
| 64 | `instance` | [instNonUnitalRing](declarations/instnonunitalring.md) | 540 | `BLOCKED_NATIVE_ADMISSION` |
| 65 | `instance` | [instCommSemiring](declarations/instcommsemiring.md) | 551 | `BLOCKED_NATIVE_ADMISSION` |
| 66 | `instance` | [instRing](declarations/instring.md) | 573 | `BLOCKED_NATIVE_ADMISSION` |
| 67 | `theorem` | [intCast_def'](declarations/intcast-def-source-edition-2.md) | 578 | `BLOCKED_NATIVE_ADMISSION` |
| 68 | `example` | [(anonymous)](declarations/example-source-edition-5.md) | 582 | `BLOCKED_NATIVE_ADMISSION` |
| 69 | `example` | [(anonymous)](declarations/example-source-edition-3.md) | 585 | `BLOCKED_NATIVE_ADMISSION` |
| 70 | `instance` | [instCommRing](declarations/instcommring.md) | 594 | `BLOCKED_NATIVE_ADMISSION` |
| 71 | `abbrev` | [rightAlgebra](declarations/rightalgebra.md) | 608 | `BLOCKED_NATIVE_ADMISSION` |
| 72 | `instance` | [right_isScalarTower](declarations/right-isscalartower.md) | 617 | `BLOCKED_NATIVE_ADMISSION` |
| 73 | `example` | [(anonymous)](declarations/example.md) | 625 | `BLOCKED_NATIVE_ADMISSION` |
| 74 | `example` | [(anonymous)](declarations/example-source-edition-4.md) | 630 | `BLOCKED_NATIVE_ADMISSION` |
| 75 | `lemma` | [_root_.LinearMap.map_mul_of_map_mul_tmul](declarations/root-linearmap-map-mul-of-map-mul-tmul.md) | 648 | `BLOCKED_NATIVE_ADMISSION` |
| 76 | `def` | [algHomOfLinearMapTensorProduct](declarations/alghomoflinearmaptensorproduct.md) | 665 | `BLOCKED_NATIVE_ADMISSION` |
| 77 | `theorem` | [algHomOfLinearMapTensorProduct_apply](declarations/alghomoflinearmaptensorproduct-apply.md) | 671 | `BLOCKED_NATIVE_ADMISSION` |
| 78 | `def` | [algEquivOfLinearEquivTensorProduct](declarations/algequivoflinearequivtensorproduct.md) | 681 | `BLOCKED_NATIVE_ADMISSION` |
| 79 | `theorem` | [algEquivOfLinearEquivTensorProduct_apply](declarations/algequivoflinearequivtensorproduct-apply.md) | 687 | `BLOCKED_NATIVE_ADMISSION` |
| 80 | `def` | [algEquivOfLinearEquivTripleTensorProduct](declarations/algequivoflinearequivtripletensorproduct.md) | 695 | `BLOCKED_NATIVE_ADMISSION` |
| 81 | `theorem` | [algEquivOfLinearEquivTripleTensorProduct_apply](declarations/algequivoflinearequivtripletensorproduct-apply.md) | 707 | `BLOCKED_NATIVE_ADMISSION` |
| 82 | `def` | [lift](declarations/lift.md) | 719 | `BLOCKED_NATIVE_ADMISSION` |
| 83 | `theorem` | [lift_tmul](declarations/lift-tmul.md) | 732 | `BLOCKED_NATIVE_ADMISSION` |
| 84 | `theorem` | [lift_includeLeft_includeRight](declarations/lift-includeleft-includeright.md) | 738 | `BLOCKED_NATIVE_ADMISSION` |
| 85 | `theorem` | [lift_comp_includeLeft](declarations/lift-comp-includeleft.md) | 744 | `BLOCKED_NATIVE_ADMISSION` |
| 86 | `theorem` | [lift_comp_includeRight](declarations/lift-comp-includeright.md) | 749 | `BLOCKED_NATIVE_ADMISSION` |
| 87 | `def` | [liftEquiv](declarations/liftequiv.md) | 762 | `BLOCKED_NATIVE_ADMISSION` |
| 88 | `def` | [lid](declarations/lid.md) | 788 | `BLOCKED_NATIVE_ADMISSION` |
| 89 | `theorem` | [lid_toLinearEquiv](declarations/lid-tolinearequiv.md) | 795 | `BLOCKED_NATIVE_ADMISSION` |
| 90 | `theorem` | [lid_tmul](declarations/lid-tmul.md) | 800 | `BLOCKED_NATIVE_ADMISSION` |
| 91 | `theorem` | [lid_symm_apply](declarations/lid-symm-apply.md) | 804 | `BLOCKED_NATIVE_ADMISSION` |
| 92 | `def` | [rid](declarations/rid.md) | 812 | `BLOCKED_NATIVE_ADMISSION` |
| 93 | `theorem` | [rid_toLinearEquiv](declarations/rid-tolinearequiv.md) | 817 | `BLOCKED_NATIVE_ADMISSION` |
| 94 | `theorem` | [rid_tmul](declarations/rid-tmul.md) | 822 | `BLOCKED_NATIVE_ADMISSION` |
| 95 | `theorem` | [rid_symm_apply](declarations/rid-symm-apply.md) | 826 | `BLOCKED_NATIVE_ADMISSION` |
| 96 | `def` | [mapOfCompatibleSMul](declarations/mapofcompatiblesmul-source-edition-2.md) | 837 | `BLOCKED_NATIVE_ADMISSION` |
| 97 | `theorem` | [mapOfCompatibleSMul_tmul](declarations/mapofcompatiblesmul-tmul.md) | 843 | `BLOCKED_NATIVE_ADMISSION` |
| 98 | `theorem` | [mapOfCompatibleSMul_surjective](declarations/mapofcompatiblesmul-surjective.md) | 846 | `BLOCKED_NATIVE_ADMISSION` |
| 99 | `def` | [mapOfCompatibleSMul'](declarations/mapofcompatiblesmul.md) | 852 | `BLOCKED_NATIVE_ADMISSION` |
| 100 | `def` | [equivOfCompatibleSMul](declarations/equivofcompatiblesmul.md) | 858 | `BLOCKED_NATIVE_ADMISSION` |
| 101 | `def` | [lidOfCompatibleSMul](declarations/lidofcompatiblesmul.md) | 868 | `BLOCKED_NATIVE_ADMISSION` |
| 102 | `theorem` | [lidOfCompatibleSMul_tmul](declarations/lidofcompatiblesmul-tmul.md) | 871 | `BLOCKED_NATIVE_ADMISSION` |
| 103 | `instance` | [(anonymous)](declarations/instance-source-edition-2.md) | 873 | `BLOCKED_NATIVE_ADMISSION` |
| 104 | `def` | [comm](declarations/comm.md) | 891 | `BLOCKED_NATIVE_ADMISSION` |
| 105 | `theorem` | [comm_toLinearEquiv](declarations/comm-tolinearequiv.md) | 894 | `BLOCKED_NATIVE_ADMISSION` |
| 106 | `theorem` | [comm_tmul](declarations/comm-tmul.md) | 899 | `BLOCKED_NATIVE_ADMISSION` |
| 107 | `theorem` | [comm_symm_tmul](declarations/comm-symm-tmul.md) | 905 | `BLOCKED_NATIVE_ADMISSION` |
| 108 | `theorem` | [comm_symm](declarations/comm-symm.md) | 909 | `BLOCKED_NATIVE_ADMISSION` |
| 109 | `lemma` | [comm_comp_includeLeft](declarations/comm-comp-includeleft.md) | 914 | `BLOCKED_NATIVE_ADMISSION` |
| 110 | `lemma` | [comm_comp_includeRight](declarations/comm-comp-includeright.md) | 918 | `BLOCKED_NATIVE_ADMISSION` |
| 111 | `theorem` | [adjoin_tmul_eq_top](declarations/adjoin-tmul-eq-top.md) | 921 | `BLOCKED_NATIVE_ADMISSION` |
| 112 | `theorem` | [assoc_aux_1](declarations/assoc-aux-1.md) | 931 | `BLOCKED_NATIVE_ADMISSION` |
| 113 | `theorem` | [assoc_aux_2](declarations/assoc-aux-2.md) | 937 | `BLOCKED_NATIVE_ADMISSION` |
| 114 | `def` | [assoc](declarations/assoc.md) | 944 | `BLOCKED_NATIVE_ADMISSION` |
| 115 | `theorem` | [assoc_toLinearEquiv](declarations/assoc-tolinearequiv.md) | 950 | `BLOCKED_NATIVE_ADMISSION` |
| 116 | `theorem` | [assoc_tmul](declarations/assoc-tmul.md) | 956 | `BLOCKED_NATIVE_ADMISSION` |
| 117 | `theorem` | [assoc_symm_tmul](declarations/assoc-symm-tmul.md) | 961 | `BLOCKED_NATIVE_ADMISSION` |
| 118 | `def` | [cancelBaseChange](declarations/cancelbasechange.md) | 974 | `BLOCKED_NATIVE_ADMISSION` |
| 119 | `lemma` | [cancelBaseChange_tmul](declarations/cancelbasechange-tmul.md) | 981 | `BLOCKED_NATIVE_ADMISSION` |
| 120 | `lemma` | [cancelBaseChange_symm_tmul](declarations/cancelbasechange-symm-tmul.md) | 986 | `BLOCKED_NATIVE_ADMISSION` |
| 121 | `def` | [map](declarations/map.md) | 995 | `BLOCKED_NATIVE_ADMISSION` |
| 122 | `theorem` | [map_tmul](declarations/map-tmul.md) | 1000 | `BLOCKED_NATIVE_ADMISSION` |
| 123 | `theorem` | [map_id](declarations/map-id.md) | 1004 | `BLOCKED_NATIVE_ADMISSION` |
| 124 | `theorem` | [map_comp](declarations/map-comp.md) | 1007 | `BLOCKED_NATIVE_ADMISSION` |
| 125 | `lemma` | [map_id_comp](declarations/map-id-comp.md) | 1012 | `BLOCKED_NATIVE_ADMISSION` |
| 126 | `lemma` | [map_comp_id](declarations/map-comp-id.md) | 1016 | `BLOCKED_NATIVE_ADMISSION` |
| 127 | `theorem` | [map_comp_includeLeft](declarations/map-comp-includeleft.md) | 1022 | `BLOCKED_NATIVE_ADMISSION` |
| 128 | `theorem` | [map_restrictScalars_comp_includeRight](declarations/map-restrictscalars-comp-includeright.md) | 1027 | `BLOCKED_NATIVE_ADMISSION` |
| 129 | `theorem` | [map_comp_includeRight](declarations/map-comp-includeright.md) | 1032 | `BLOCKED_NATIVE_ADMISSION` |
| 130 | `theorem` | [map_range](declarations/map-range.md) | 1036 | `BLOCKED_NATIVE_ADMISSION` |
| 131 | `lemma` | [comm_comp_map](declarations/comm-comp-map.md) | 1046 | `BLOCKED_NATIVE_ADMISSION` |
| 132 | `lemma` | [comm_comp_map_apply](declarations/comm-comp-map-apply.md) | 1051 | `BLOCKED_NATIVE_ADMISSION` |
| 133 | `def` | [congr](declarations/congr.md) | 1059 | `BLOCKED_NATIVE_ADMISSION` |
| 134 | `theorem` | [congr_toLinearEquiv](declarations/congr-tolinearequiv.md) | 1063 | `BLOCKED_NATIVE_ADMISSION` |
| 135 | `theorem` | [congr_apply](declarations/congr-apply.md) | 1068 | `BLOCKED_NATIVE_ADMISSION` |
| 136 | `theorem` | [congr_symm_apply](declarations/congr-symm-apply.md) | 1073 | `BLOCKED_NATIVE_ADMISSION` |
| 137 | `theorem` | [congr_refl](declarations/congr-refl.md) | 1078 | `BLOCKED_NATIVE_ADMISSION` |
| 138 | `theorem` | [congr_trans](declarations/congr-trans.md) | 1081 | `BLOCKED_NATIVE_ADMISSION` |
| 139 | `theorem` | [congr_symm](declarations/congr-symm.md) | 1086 | `BLOCKED_NATIVE_ADMISSION` |
| 140 | `def` | [leftComm](declarations/leftcomm.md) | 1092 | `BLOCKED_NATIVE_ADMISSION` |
| 141 | `theorem` | [leftComm_tmul](declarations/leftcomm-tmul.md) | 1099 | `BLOCKED_NATIVE_ADMISSION` |
| 142 | `theorem` | [leftComm_symm_tmul](declarations/leftcomm-symm-tmul.md) | 1104 | `BLOCKED_NATIVE_ADMISSION` |
| 143 | `theorem` | [leftComm_toLinearEquiv](declarations/leftcomm-tolinearequiv.md) | 1109 | `BLOCKED_NATIVE_ADMISSION` |
| 144 | `def` | [tensorTensorTensorComm](declarations/tensortensortensorcomm.md) | 1116 | `BLOCKED_NATIVE_ADMISSION` |
| 145 | `theorem` | [tensorTensorTensorComm_tmul](declarations/tensortensortensorcomm-tmul.md) | 1121 | `BLOCKED_NATIVE_ADMISSION` |
| 146 | `theorem` | [tensorTensorTensorComm_symm_tmul](declarations/tensortensortensorcomm-symm-tmul.md) | 1126 | `BLOCKED_NATIVE_ADMISSION` |
| 147 | `theorem` | [tensorTensorTensorComm_symm](declarations/tensortensortensorcomm-symm.md) | 1130 | `BLOCKED_NATIVE_ADMISSION` |
| 148 | `theorem` | [tensorTensorTensorComm_toLinearEquiv](declarations/tensortensortensorcomm-tolinearequiv.md) | 1134 | `BLOCKED_NATIVE_ADMISSION` |
| 149 | `theorem` | [toLinearEquiv_tensorTensorTensorComm](declarations/tolinearequiv-tensortensortensorcomm.md) | 1139 | `BLOCKED_NATIVE_ADMISSION` |
| 150 | `abbrev` | [productLeftAlgHom](declarations/productleftalghom.md) | 1161 | `BLOCKED_NATIVE_ADMISSION` |
| 151 | `lemma` | [tmul_one_eq_one_tmul](declarations/tmul-one-eq-one-tmul.md) | 1164 | `BLOCKED_NATIVE_ADMISSION` |
| 152 | `def` | [lmul''](declarations/lmul-source-edition-2.md) | 1177 | `BLOCKED_NATIVE_ADMISSION` |
| 153 | `theorem` | [lmul''_eq_lid_comp_mapOfCompatibleSMul](declarations/lmul-eq-lid-comp-mapofcompatiblesmul.md) | 1185 | `BLOCKED_NATIVE_ADMISSION` |
| 154 | `def` | [lmul'](declarations/lmul.md) | 1190 | `BLOCKED_NATIVE_ADMISSION` |
| 155 | `theorem` | [lmul'_toLinearMap](declarations/lmul-tolinearmap.md) | 1194 | `BLOCKED_NATIVE_ADMISSION` |
| 156 | `theorem` | [lmul'_apply_tmul](declarations/lmul-apply-tmul.md) | 1198 | `BLOCKED_NATIVE_ADMISSION` |
| 157 | `theorem` | [lmul'_comp_includeLeft](declarations/lmul-comp-includeleft.md) | 1202 | `BLOCKED_NATIVE_ADMISSION` |
| 158 | `theorem` | [lmul'_comp_includeRight](declarations/lmul-comp-includeright.md) | 1206 | `BLOCKED_NATIVE_ADMISSION` |
| 159 | `def` | [lmulEquiv](declarations/lmulequiv.md) | 1212 | `BLOCKED_NATIVE_ADMISSION` |
| 160 | `theorem` | [lmulEquiv_eq_lidOfCompatibleSMul](declarations/lmulequiv-eq-lidofcompatiblesmul.md) | 1218 | `BLOCKED_NATIVE_ADMISSION` |
| 161 | `def` | [productMap](declarations/productmap.md) | 1228 | `BLOCKED_NATIVE_ADMISSION` |
| 162 | `theorem` | [productMap_eq_comp_map](declarations/productmap-eq-comp-map.md) | 1230 | `BLOCKED_NATIVE_ADMISSION` |
| 163 | `theorem` | [productMap_apply_tmul](declarations/productmap-apply-tmul.md) | 1234 | `BLOCKED_NATIVE_ADMISSION` |
| 164 | `theorem` | [productMap_left_apply](declarations/productmap-left-apply.md) | 1236 | `BLOCKED_NATIVE_ADMISSION` |
| 165 | `theorem` | [productMap_left](declarations/productmap-left.md) | 1240 | `BLOCKED_NATIVE_ADMISSION` |
| 166 | `theorem` | [productMap_right_apply](declarations/productmap-right-apply.md) | 1243 | `BLOCKED_NATIVE_ADMISSION` |
| 167 | `theorem` | [productMap_right](declarations/productmap-right.md) | 1247 | `BLOCKED_NATIVE_ADMISSION` |
| 168 | `theorem` | [productMap_range](declarations/productmap-range.md) | 1250 | `BLOCKED_NATIVE_ADMISSION` |
| 169 | `lemma` | [mk_one_injective_of_isScalarTower](declarations/mk-one-injective-of-isscalartower.md) | 1262 | `BLOCKED_NATIVE_ADMISSION` |
| 170 | `lemma` | [Algebra.baseChange_lmul](declarations/algebra-basechange-lmul.md) | 1273 | `BLOCKED_NATIVE_ADMISSION` |
| 171 | `def` | [tensorProduct](declarations/tensorproduct.md) | 1294 | `BLOCKED_NATIVE_ADMISSION` |
| 172 | `def` | [tensorProductEnd](declarations/tensorproductend.md) | 1304 | `BLOCKED_NATIVE_ADMISSION` |
| 173 | `def` | [endTensorEndAlgHom](declarations/endtensorendalghom.md) | 1337 | `BLOCKED_NATIVE_ADMISSION` |
| 174 | `theorem` | [endTensorEndAlgHom_apply](declarations/endtensorendalghom-apply.md) | 1343 | `BLOCKED_NATIVE_ADMISSION` |
| 175 | `def` | [moduleAux](declarations/moduleaux.md) | 1360 | `BLOCKED_NATIVE_ADMISSION` |
| 176 | `theorem` | [moduleAux_apply](declarations/moduleaux-apply.md) | 1370 | `BLOCKED_NATIVE_ADMISSION` |
| 177 | `def` | [module](declarations/module.md) | 1389 | `BLOCKED_NATIVE_ADMISSION` |
| 178 | `theorem` | [smul_def](declarations/smul-def.md) | 1428 | `BLOCKED_NATIVE_ADMISSION` |
| 179 | `theorem` | [linearMap_comp_mul'](declarations/linearmap-comp-mul.md) | 1433 | `BLOCKED_NATIVE_ADMISSION` |
| 180 | `theorem` | [mul'_comp_tensorTensorTensorComm](declarations/mul-comp-tensortensortensorcomm.md) | 1442 | `BLOCKED_NATIVE_ADMISSION` |
| 181 | `lemma` | [Submodule.map_range_rTensor_subtype_lid](declarations/submodule-map-range-rtensor-subtype-lid.md) | 1453 | `BLOCKED_NATIVE_ADMISSION` |
| 182 | `theorem` | [TensorProduct.mk_surjective](declarations/tensorproduct-mk-surjective.md) | 1469 | `BLOCKED_NATIVE_ADMISSION` |
| 183 | `lemma` | [TensorProduct.flip_mk_surjective](declarations/tensorproduct-flip-mk-surjective.md) | 1478 | `BLOCKED_NATIVE_ADMISSION` |
| 184 | `lemma` | [Algebra.TensorProduct.includeRight_surjective](declarations/algebra-tensorproduct-includeright-surjective.md) | 1487 | `BLOCKED_NATIVE_ADMISSION` |
| 185 | `lemma` | [Algebra.TensorProduct.includeLeft_surjective](declarations/algebra-tensorproduct-includeleft-surjective.md) | 1491 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=84aa117afb8621e0ffdd42edd486eab5b06e8fd638a3c0f5828538379aa2d6d7 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/Basic/Variant94161574131a317ca750d9eb4e32942e2abcb1b2a7b39cc1e4f3810045ba0d21.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
