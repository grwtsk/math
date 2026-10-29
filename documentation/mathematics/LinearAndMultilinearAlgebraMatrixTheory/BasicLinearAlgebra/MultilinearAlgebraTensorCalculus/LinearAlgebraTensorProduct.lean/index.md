# Linear Algebra Tensor Product

[Complete source index](../../../../complete-source-index.md) · [Up one directory](../../../../complete-source-index.md) · [Full source](source.md)

**165 observed declarations and anonymous commands**, 112 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Algebra/LinearAlgebra/TensorProduct/Variant7976f18f742034b353d0e0a5aacafb5a9ca303aa4e020a601ced5c8764715cc9.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `1edd2ebd830e424561b73e65ebb0806ccce831c1`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../_verification/specifications/LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MultilinearAlgebraTensorCalculus/LinearAlgebraTensorProduct.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `inductive` | [Eqv](declarations/eqv.md) | 57 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `def` | [TensorProduct](declarations/tensorproduct.md) | 74 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `def` | [addMonoid](declarations/addmonoid.md) | 91 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `instance` | [addZeroClass](declarations/addzeroclass.md) | 94 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `instance` | [addCommSemigroup](declarations/addcommsemigroup.md) | 97 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `instance` | [(anonymous)](declarations/instance.md) | 103 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `def` | [tmul](declarations/tmul.md) | 110 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [induction_on](declarations/induction-on.md) | 122 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [zero_tmul](declarations/zero-tmul.md) | 135 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [add_tmul](declarations/add-tmul.md) | 141 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [tmul_zero](declarations/tmul-zero.md) | 148 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [tmul_add](declarations/tmul-add.md) | 154 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `class` | [CompatibleSMul](declarations/compatiblesmul.md) | 172 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `instance` | [(anonymous)](declarations/instance-source-edition-6.md) | 180 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [smul_tmul](declarations/smul-tmul-source-edition-2.md) | 190 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `def` | [SMul.aux](declarations/smul-aux.md) | 197 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [SMul.aux_of](declarations/smul-aux-of.md) | 202 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `instance` | [leftHasSMul](declarations/lefthassmul.md) | 221 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `instance` | [(anonymous)](declarations/instance-source-edition-2.md) | 240 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [smul_zero](declarations/smul-zero.md) | 243 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [smul_add](declarations/smul-add.md) | 247 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [zero_smul](declarations/zero-smul.md) | 251 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [one_smul](declarations/one-smul.md) | 258 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [add_smul](declarations/add-smul.md) | 265 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `instance` | [addCommMonoid](declarations/addcommmonoid.md) | 273 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `instance` | [leftDistribMulAction](declarations/leftdistribmulaction.md) | 281 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `instance` | [(anonymous)](declarations/instance-source-edition-3.md) | 294 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [smul_tmul'](declarations/smul-tmul.md) | 297 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [tmul_smul](declarations/tmul-smul.md) | 302 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [smul_tmul_smul](declarations/smul-tmul-smul.md) | 307 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `instance` | [leftModule](declarations/leftmodule.md) | 311 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `instance` | [(anonymous)](declarations/instance-source-edition-5.md) | 318 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `instance` | [(anonymous)](declarations/instance-source-edition-4.md) | 321 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `instance` | [smulCommClass_left](declarations/smulcommclass-left.md) | 334 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `instance` | [isScalarTower_left](declarations/isscalartower-left.md) | 344 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `instance` | [isScalarTower_right](declarations/isscalartower-right.md) | 355 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `instance` | [isScalarTower](declarations/isscalartower.md) | 366 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `def` | [mk](declarations/mk.md) | 374 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `theorem` | [mk_apply](declarations/mk-apply.md) | 382 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `theorem` | [ite_tmul](declarations/ite-tmul.md) | 386 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `theorem` | [tmul_ite](declarations/tmul-ite.md) | 390 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `theorem` | [sum_tmul](declarations/sum-tmul.md) | 398 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `theorem` | [tmul_sum](declarations/tmul-sum.md) | 406 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `theorem` | [span_tmul_eq_top](declarations/span-tmul-eq-top.md) | 419 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `theorem` | [map₂_mk_top_top_eq_top](declarations/map-mk-top-top-eq-top.md) | 431 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `theorem` | [exists_eq_tmul_of_forall](declarations/exists-eq-tmul-of-forall.md) | 436 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `def` | [liftAux](declarations/liftaux.md) | 459 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `theorem` | [liftAux_tmul](declarations/liftaux-tmul.md) | 477 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `theorem` | [liftAux.smul](declarations/liftaux-smul.md) | 484 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `def` | [lift](declarations/lift.md) | 495 | `BLOCKED_NATIVE_ADMISSION` |
| 51 | `theorem` | [lift.tmul](declarations/lift-tmul.md) | 502 | `BLOCKED_NATIVE_ADMISSION` |
| 52 | `theorem` | [lift.tmul'](declarations/lift-tmul-source-edition-2.md) | 507 | `BLOCKED_NATIVE_ADMISSION` |
| 53 | `theorem` | [ext'](declarations/ext.md) | 511 | `BLOCKED_NATIVE_ADMISSION` |
| 54 | `theorem` | [lift.unique](declarations/lift-unique.md) | 517 | `BLOCKED_NATIVE_ADMISSION` |
| 55 | `theorem` | [lift_mk](declarations/lift-mk.md) | 521 | `BLOCKED_NATIVE_ADMISSION` |
| 56 | `theorem` | [lift_compr₂](declarations/lift-compr.md) | 525 | `BLOCKED_NATIVE_ADMISSION` |
| 57 | `theorem` | [lift_mk_compr₂](declarations/lift-mk-compr.md) | 529 | `BLOCKED_NATIVE_ADMISSION` |
| 58 | `theorem` | [ext](declarations/ext-source-edition-2.md) | 539 | `BLOCKED_NATIVE_ADMISSION` |
| 59 | `example` | [(anonymous)](declarations/example.md) | 545 | `BLOCKED_NATIVE_ADMISSION` |
| 60 | `def` | [uncurry](declarations/uncurry.md) | 552 | `BLOCKED_NATIVE_ADMISSION` |
| 61 | `theorem` | [uncurry_apply](declarations/uncurry-apply.md) | 559 | `BLOCKED_NATIVE_ADMISSION` |
| 62 | `def` | [lift.equiv](declarations/lift-equiv.md) | 568 | `BLOCKED_NATIVE_ADMISSION` |
| 63 | `theorem` | [lift.equiv_apply](declarations/lift-equiv-apply.md) | 576 | `BLOCKED_NATIVE_ADMISSION` |
| 64 | `theorem` | [lift.equiv_symm_apply](declarations/lift-equiv-symm-apply.md) | 582 | `BLOCKED_NATIVE_ADMISSION` |
| 65 | `def` | [lcurry](declarations/lcurry.md) | 589 | `BLOCKED_NATIVE_ADMISSION` |
| 66 | `theorem` | [lcurry_apply](declarations/lcurry-apply.md) | 596 | `BLOCKED_NATIVE_ADMISSION` |
| 67 | `def` | [curry](declarations/curry.md) | 602 | `BLOCKED_NATIVE_ADMISSION` |
| 68 | `theorem` | [curry_apply](declarations/curry-apply.md) | 607 | `BLOCKED_NATIVE_ADMISSION` |
| 69 | `theorem` | [curry_injective](declarations/curry-injective.md) | 611 | `BLOCKED_NATIVE_ADMISSION` |
| 70 | `theorem` | [ext_threefold](declarations/ext-threefold.md) | 615 | `BLOCKED_NATIVE_ADMISSION` |
| 71 | `theorem` | [ext_fourfold](declarations/ext-fourfold-source-edition-2.md) | 622 | `BLOCKED_NATIVE_ADMISSION` |
| 72 | `theorem` | [ext_fourfold'](declarations/ext-fourfold.md) | 630 | `BLOCKED_NATIVE_ADMISSION` |
| 73 | `def` | [lid](declarations/lid.md) | 646 | `BLOCKED_NATIVE_ADMISSION` |
| 74 | `theorem` | [lid_tmul](declarations/lid-tmul.md) | 654 | `BLOCKED_NATIVE_ADMISSION` |
| 75 | `theorem` | [lid_symm_apply](declarations/lid-symm-apply.md) | 659 | `BLOCKED_NATIVE_ADMISSION` |
| 76 | `def` | [comm](declarations/comm.md) | 669 | `BLOCKED_NATIVE_ADMISSION` |
| 77 | `theorem` | [comm_tmul](declarations/comm-tmul.md) | 675 | `BLOCKED_NATIVE_ADMISSION` |
| 78 | `theorem` | [comm_symm_tmul](declarations/comm-symm-tmul.md) | 680 | `BLOCKED_NATIVE_ADMISSION` |
| 79 | `def` | [rid](declarations/rid.md) | 692 | `BLOCKED_NATIVE_ADMISSION` |
| 80 | `theorem` | [rid_tmul](declarations/rid-tmul.md) | 699 | `BLOCKED_NATIVE_ADMISSION` |
| 81 | `theorem` | [rid_symm_apply](declarations/rid-symm-apply.md) | 704 | `BLOCKED_NATIVE_ADMISSION` |
| 82 | `def` | [assoc](declarations/assoc.md) | 715 | `BLOCKED_NATIVE_ADMISSION` |
| 83 | `theorem` | [assoc_tmul](declarations/assoc-tmul.md) | 730 | `BLOCKED_NATIVE_ADMISSION` |
| 84 | `theorem` | [assoc_symm_tmul](declarations/assoc-symm-tmul.md) | 736 | `BLOCKED_NATIVE_ADMISSION` |
| 85 | `def` | [map](declarations/map.md) | 742 | `BLOCKED_NATIVE_ADMISSION` |
| 86 | `theorem` | [map_tmul](declarations/map-tmul.md) | 747 | `BLOCKED_NATIVE_ADMISSION` |
| 87 | `theorem` | [map_range_eq_span_tmul](declarations/map-range-eq-span-tmul.md) | 751 | `BLOCKED_NATIVE_ADMISSION` |
| 88 | `def` | [mapIncl](declarations/mapincl.md) | 767 | `BLOCKED_NATIVE_ADMISSION` |
| 89 | `theorem` | [map_comp](declarations/map-comp.md) | 777 | `BLOCKED_NATIVE_ADMISSION` |
| 90 | `theorem` | [lift_comp_map](declarations/lift-comp-map.md) | 782 | `BLOCKED_NATIVE_ADMISSION` |
| 91 | `theorem` | [map_id](declarations/map-id.md) | 790 | `BLOCKED_NATIVE_ADMISSION` |
| 92 | `theorem` | [map_one](declarations/map-one.md) | 796 | `BLOCKED_NATIVE_ADMISSION` |
| 93 | `theorem` | [map_mul](declarations/map-mul.md) | 800 | `BLOCKED_NATIVE_ADMISSION` |
| 94 | `theorem` | [map_pow](declarations/map-pow.md) | 806 | `BLOCKED_NATIVE_ADMISSION` |
| 95 | `theorem` | [map_add_left](declarations/map-add-left.md) | 813 | `BLOCKED_NATIVE_ADMISSION` |
| 96 | `theorem` | [map_add_right](declarations/map-add-right.md) | 819 | `BLOCKED_NATIVE_ADMISSION` |
| 97 | `theorem` | [map_smul_left](declarations/map-smul-left.md) | 825 | `BLOCKED_NATIVE_ADMISSION` |
| 98 | `theorem` | [map_smul_right](declarations/map-smul-right.md) | 830 | `BLOCKED_NATIVE_ADMISSION` |
| 99 | `def` | [mapBilinear](declarations/mapbilinear.md) | 838 | `BLOCKED_NATIVE_ADMISSION` |
| 100 | `def` | [lTensorHomToHomLTensor](declarations/ltensorhomtohomltensor.md) | 843 | `BLOCKED_NATIVE_ADMISSION` |
| 101 | `def` | [rTensorHomToHomRTensor](declarations/rtensorhomtohomrtensor.md) | 848 | `BLOCKED_NATIVE_ADMISSION` |
| 102 | `def` | [homTensorHomMap](declarations/homtensorhommap.md) | 854 | `BLOCKED_NATIVE_ADMISSION` |
| 103 | `theorem` | [mapBilinear_apply](declarations/mapbilinear-apply.md) | 861 | `BLOCKED_NATIVE_ADMISSION` |
| 104 | `theorem` | [lTensorHomToHomLTensor_apply](declarations/ltensorhomtohomltensor-apply.md) | 866 | `BLOCKED_NATIVE_ADMISSION` |
| 105 | `theorem` | [rTensorHomToHomRTensor_apply](declarations/rtensorhomtohomrtensor-apply.md) | 872 | `BLOCKED_NATIVE_ADMISSION` |
| 106 | `theorem` | [homTensorHomMap_apply](declarations/homtensorhommap-apply.md) | 878 | `BLOCKED_NATIVE_ADMISSION` |
| 107 | `def` | [congr](declarations/congr.md) | 887 | `BLOCKED_NATIVE_ADMISSION` |
| 108 | `theorem` | [congr_tmul](declarations/congr-tmul.md) | 894 | `BLOCKED_NATIVE_ADMISSION` |
| 109 | `theorem` | [congr_symm_tmul](declarations/congr-symm-tmul.md) | 900 | `BLOCKED_NATIVE_ADMISSION` |
| 110 | `def` | [leftComm](declarations/leftcomm.md) | 908 | `BLOCKED_NATIVE_ADMISSION` |
| 111 | `theorem` | [leftComm_tmul](declarations/leftcomm-tmul.md) | 918 | `BLOCKED_NATIVE_ADMISSION` |
| 112 | `theorem` | [leftComm_symm_tmul](declarations/leftcomm-symm-tmul.md) | 923 | `BLOCKED_NATIVE_ADMISSION` |
| 113 | `def` | [tensorTensorTensorComm](declarations/tensortensortensorcomm.md) | 940 | `BLOCKED_NATIVE_ADMISSION` |
| 114 | `theorem` | [tensorTensorTensorComm_tmul](declarations/tensortensortensorcomm-tmul.md) | 950 | `BLOCKED_NATIVE_ADMISSION` |
| 115 | `theorem` | [tensorTensorTensorComm_symm](declarations/tensortensortensorcomm-symm.md) | 957 | `BLOCKED_NATIVE_ADMISSION` |
| 116 | `def` | [tensorTensorTensorAssoc](declarations/tensortensortensorassoc.md) | 972 | `BLOCKED_NATIVE_ADMISSION` |
| 117 | `theorem` | [tensorTensorTensorAssoc_tmul](declarations/tensortensortensorassoc-tmul.md) | 980 | `BLOCKED_NATIVE_ADMISSION` |
| 118 | `theorem` | [tensorTensorTensorAssoc_symm_tmul](declarations/tensortensortensorassoc-symm-tmul.md) | 986 | `BLOCKED_NATIVE_ADMISSION` |
| 119 | `def` | [lTensor](declarations/ltensor.md) | 999 | `BLOCKED_NATIVE_ADMISSION` |
| 120 | `def` | [rTensor](declarations/rtensor.md) | 1004 | `BLOCKED_NATIVE_ADMISSION` |
| 121 | `theorem` | [lTensor_tmul](declarations/ltensor-tmul.md) | 1011 | `BLOCKED_NATIVE_ADMISSION` |
| 122 | `theorem` | [rTensor_tmul](declarations/rtensor-tmul.md) | 1016 | `BLOCKED_NATIVE_ADMISSION` |
| 123 | `def` | [lTensorHom](declarations/ltensorhom.md) | 1025 | `BLOCKED_NATIVE_ADMISSION` |
| 124 | `def` | [rTensorHom](declarations/rtensorhom.md) | 1037 | `BLOCKED_NATIVE_ADMISSION` |
| 125 | `theorem` | [coe_lTensorHom](declarations/coe-ltensorhom.md) | 1049 | `BLOCKED_NATIVE_ADMISSION` |
| 126 | `theorem` | [coe_rTensorHom](declarations/coe-rtensorhom.md) | 1054 | `BLOCKED_NATIVE_ADMISSION` |
| 127 | `theorem` | [lTensor_add](declarations/ltensor-add.md) | 1059 | `BLOCKED_NATIVE_ADMISSION` |
| 128 | `theorem` | [rTensor_add](declarations/rtensor-add.md) | 1064 | `BLOCKED_NATIVE_ADMISSION` |
| 129 | `theorem` | [lTensor_zero](declarations/ltensor-zero.md) | 1069 | `BLOCKED_NATIVE_ADMISSION` |
| 130 | `theorem` | [rTensor_zero](declarations/rtensor-zero.md) | 1074 | `BLOCKED_NATIVE_ADMISSION` |
| 131 | `theorem` | [lTensor_smul](declarations/ltensor-smul.md) | 1079 | `BLOCKED_NATIVE_ADMISSION` |
| 132 | `theorem` | [rTensor_smul](declarations/rtensor-smul.md) | 1084 | `BLOCKED_NATIVE_ADMISSION` |
| 133 | `theorem` | [lTensor_comp](declarations/ltensor-comp.md) | 1088 | `BLOCKED_NATIVE_ADMISSION` |
| 134 | `theorem` | [lTensor_comp_apply](declarations/ltensor-comp-apply.md) | 1093 | `BLOCKED_NATIVE_ADMISSION` |
| 135 | `theorem` | [rTensor_comp](declarations/rtensor-comp.md) | 1097 | `BLOCKED_NATIVE_ADMISSION` |
| 136 | `theorem` | [rTensor_comp_apply](declarations/rtensor-comp-apply.md) | 1102 | `BLOCKED_NATIVE_ADMISSION` |
| 137 | `theorem` | [lTensor_mul](declarations/ltensor-mul.md) | 1106 | `BLOCKED_NATIVE_ADMISSION` |
| 138 | `theorem` | [rTensor_mul](declarations/rtensor-mul.md) | 1110 | `BLOCKED_NATIVE_ADMISSION` |
| 139 | `theorem` | [lTensor_id](declarations/ltensor-id.md) | 1117 | `BLOCKED_NATIVE_ADMISSION` |
| 140 | `theorem` | [lTensor_id_apply](declarations/ltensor-id-apply.md) | 1122 | `BLOCKED_NATIVE_ADMISSION` |
| 141 | `theorem` | [rTensor_id](declarations/rtensor-id.md) | 1127 | `BLOCKED_NATIVE_ADMISSION` |
| 142 | `theorem` | [rTensor_id_apply](declarations/rtensor-id-apply.md) | 1132 | `BLOCKED_NATIVE_ADMISSION` |
| 143 | `theorem` | [lTensor_comp_rTensor](declarations/ltensor-comp-rtensor.md) | 1139 | `BLOCKED_NATIVE_ADMISSION` |
| 144 | `theorem` | [rTensor_comp_lTensor](declarations/rtensor-comp-ltensor.md) | 1145 | `BLOCKED_NATIVE_ADMISSION` |
| 145 | `theorem` | [map_comp_rTensor](declarations/map-comp-rtensor.md) | 1151 | `BLOCKED_NATIVE_ADMISSION` |
| 146 | `theorem` | [map_comp_lTensor](declarations/map-comp-ltensor.md) | 1157 | `BLOCKED_NATIVE_ADMISSION` |
| 147 | `theorem` | [rTensor_comp_map](declarations/rtensor-comp-map.md) | 1163 | `BLOCKED_NATIVE_ADMISSION` |
| 148 | `theorem` | [lTensor_comp_map](declarations/ltensor-comp-map.md) | 1169 | `BLOCKED_NATIVE_ADMISSION` |
| 149 | `theorem` | [rTensor_pow](declarations/rtensor-pow.md) | 1177 | `BLOCKED_NATIVE_ADMISSION` |
| 150 | `theorem` | [lTensor_pow](declarations/ltensor-pow.md) | 1183 | `BLOCKED_NATIVE_ADMISSION` |
| 151 | `def` | [Neg.aux](declarations/neg-aux.md) | 1208 | `BLOCKED_NATIVE_ADMISSION` |
| 152 | `theorem` | [Neg.aux_of](declarations/neg-aux-of.md) | 1214 | `BLOCKED_NATIVE_ADMISSION` |
| 153 | `instance` | [neg](declarations/neg.md) | 1218 | `BLOCKED_NATIVE_ADMISSION` |
| 154 | `theorem` | [add_left_neg](declarations/add-left-neg.md) | 1236 | `BLOCKED_NATIVE_ADMISSION` |
| 155 | `instance` | [addCommGroup](declarations/addcommgroup.md) | 1250 | `BLOCKED_NATIVE_ADMISSION` |
| 156 | `theorem` | [neg_tmul](declarations/neg-tmul.md) | 1265 | `BLOCKED_NATIVE_ADMISSION` |
| 157 | `theorem` | [tmul_neg](declarations/tmul-neg.md) | 1269 | `BLOCKED_NATIVE_ADMISSION` |
| 158 | `theorem` | [tmul_sub](declarations/tmul-sub.md) | 1273 | `BLOCKED_NATIVE_ADMISSION` |
| 159 | `theorem` | [sub_tmul](declarations/sub-tmul.md) | 1277 | `BLOCKED_NATIVE_ADMISSION` |
| 160 | `instance` | [CompatibleSMul.int](declarations/compatiblesmul-int.md) | 1289 | `BLOCKED_NATIVE_ADMISSION` |
| 161 | `instance` | [CompatibleSMul.unit](declarations/compatiblesmul-unit.md) | 1295 | `BLOCKED_NATIVE_ADMISSION` |
| 162 | `theorem` | [lTensor_sub](declarations/ltensor-sub.md) | 1305 | `BLOCKED_NATIVE_ADMISSION` |
| 163 | `theorem` | [rTensor_sub](declarations/rtensor-sub.md) | 1311 | `BLOCKED_NATIVE_ADMISSION` |
| 164 | `theorem` | [lTensor_neg](declarations/ltensor-neg.md) | 1317 | `BLOCKED_NATIVE_ADMISSION` |
| 165 | `theorem` | [rTensor_neg](declarations/rtensor-neg.md) | 1323 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=b0a4baed42f8d47cfe1c6aa54d33fea0e8caea2b29789f9364064b1619470dec -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/TensorProduct/Variant7976f18f742034b353d0e0a5aacafb5a9ca303aa4e020a601ced5c8764715cc9.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
