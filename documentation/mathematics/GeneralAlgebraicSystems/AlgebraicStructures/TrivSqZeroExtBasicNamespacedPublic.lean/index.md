# Triv Sq Zero Ext Basic Namespaced Public

[Complete source index](../../../complete-source-index.md) · [Up one directory](../../../complete-source-index.md) · [Full source](source.md)

**168 observed declarations and anonymous commands**, 111 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Algebra/LinearAlgebra/Basic/Variant1c56966449f3f0925d313dd5c3970a61234b19ea4936eab8502ff3bc99bddcb5.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `b5dd863ad3b4b556472a3901a746fab5290d4bb8`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/GeneralAlgebraicSystems/AlgebraicStructures/TrivSqZeroExtBasicNamespacedPublic.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [TrivSqZeroExt](declarations/trivsqzeroext.md) | 77 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `def` | [inl](declarations/inl.md) | 93 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `def` | [inr](declarations/inr.md) | 97 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `def` | [fst](declarations/fst.md) | 101 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `def` | [snd](declarations/snd.md) | 105 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [fst_mk](declarations/fst-mk.md) | 109 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [snd_mk](declarations/snd-mk.md) | 113 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [ext](declarations/ext.md) | 117 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [fst_inl](declarations/fst-inl.md) | 125 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [snd_inl](declarations/snd-inl.md) | 129 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [fst_comp_inl](declarations/fst-comp-inl.md) | 133 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [snd_comp_inl](declarations/snd-comp-inl.md) | 137 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [fst_inr](declarations/fst-inr.md) | 147 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [snd_inr](declarations/snd-inr.md) | 151 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [fst_comp_inr](declarations/fst-comp-inr.md) | 155 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [snd_comp_inr](declarations/snd-comp-inr.md) | 159 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [fst_surjective](declarations/fst-surjective.md) | 164 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [snd_surjective](declarations/snd-surjective.md) | 167 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [inl_injective](declarations/inl-injective.md) | 170 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [inr_injective](declarations/inr-injective.md) | 173 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `instance` | [inhabited](declarations/inhabited.md) | 187 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `instance` | [zero](declarations/zero.md) | 190 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `instance` | [add](declarations/add.md) | 193 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `instance` | [sub](declarations/sub.md) | 196 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `instance` | [neg](declarations/neg.md) | 199 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `instance` | [addSemigroup](declarations/addsemigroup.md) | 202 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `instance` | [addZeroClass](declarations/addzeroclass.md) | 205 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `instance` | [smul](declarations/smul.md) | 208 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `instance` | [addMonoid](declarations/addmonoid.md) | 211 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `instance` | [addGroup](declarations/addgroup.md) | 215 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `instance` | [addCommSemigroup](declarations/addcommsemigroup.md) | 219 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `instance` | [addCommMonoid](declarations/addcommmonoid.md) | 222 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `instance` | [addCommGroup](declarations/addcommgroup.md) | 225 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `instance` | [isScalarTower](declarations/isscalartower.md) | 228 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `instance` | [smulCommClass](declarations/smulcommclass.md) | 232 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `instance` | [isCentralScalar](declarations/iscentralscalar.md) | 236 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `instance` | [mulAction](declarations/mulaction.md) | 240 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `instance` | [distribMulAction](declarations/distribmulaction.md) | 243 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `instance` | [module](declarations/module.md) | 247 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `instance` | [instNontrivial_of_left](declarations/instnontrivial-of-left.md) | 252 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `instance` | [instNontrivial_of_right](declarations/instnontrivial-of-right.md) | 257 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `theorem` | [fst_zero](declarations/fst-zero.md) | 262 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `theorem` | [snd_zero](declarations/snd-zero.md) | 266 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `theorem` | [fst_add](declarations/fst-add.md) | 270 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `theorem` | [snd_add](declarations/snd-add.md) | 274 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `theorem` | [fst_neg](declarations/fst-neg.md) | 278 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `theorem` | [snd_neg](declarations/snd-neg.md) | 282 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `theorem` | [fst_sub](declarations/fst-sub.md) | 286 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `theorem` | [snd_sub](declarations/snd-sub.md) | 290 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `theorem` | [fst_smul](declarations/fst-smul.md) | 294 | `BLOCKED_NATIVE_ADMISSION` |
| 51 | `theorem` | [snd_smul](declarations/snd-smul.md) | 298 | `BLOCKED_NATIVE_ADMISSION` |
| 52 | `theorem` | [fst_sum](declarations/fst-sum.md) | 301 | `BLOCKED_NATIVE_ADMISSION` |
| 53 | `theorem` | [snd_sum](declarations/snd-sum.md) | 305 | `BLOCKED_NATIVE_ADMISSION` |
| 54 | `theorem` | [inl_zero](declarations/inl-zero.md) | 314 | `BLOCKED_NATIVE_ADMISSION` |
| 55 | `theorem` | [inl_add](declarations/inl-add.md) | 318 | `BLOCKED_NATIVE_ADMISSION` |
| 56 | `theorem` | [inl_neg](declarations/inl-neg.md) | 323 | `BLOCKED_NATIVE_ADMISSION` |
| 57 | `theorem` | [inl_sub](declarations/inl-sub.md) | 327 | `BLOCKED_NATIVE_ADMISSION` |
| 58 | `theorem` | [inl_smul](declarations/inl-smul.md) | 332 | `BLOCKED_NATIVE_ADMISSION` |
| 59 | `theorem` | [inl_sum](declarations/inl-sum.md) | 336 | `BLOCKED_NATIVE_ADMISSION` |
| 60 | `theorem` | [inr_zero](declarations/inr-zero.md) | 347 | `BLOCKED_NATIVE_ADMISSION` |
| 61 | `theorem` | [inr_add](declarations/inr-add.md) | 351 | `BLOCKED_NATIVE_ADMISSION` |
| 62 | `theorem` | [inr_neg](declarations/inr-neg.md) | 356 | `BLOCKED_NATIVE_ADMISSION` |
| 63 | `theorem` | [inr_sub](declarations/inr-sub.md) | 360 | `BLOCKED_NATIVE_ADMISSION` |
| 64 | `theorem` | [inr_smul](declarations/inr-smul.md) | 365 | `BLOCKED_NATIVE_ADMISSION` |
| 65 | `theorem` | [inr_sum](declarations/inr-sum.md) | 369 | `BLOCKED_NATIVE_ADMISSION` |
| 66 | `theorem` | [inl_fst_add_inr_snd_eq](declarations/inl-fst-add-inr-snd-eq.md) | 375 | `BLOCKED_NATIVE_ADMISSION` |
| 67 | `theorem` | [ind](declarations/ind.md) | 382 | `BLOCKED_NATIVE_ADMISSION` |
| 68 | `theorem` | [linearMap_ext](declarations/linearmap-ext.md) | 388 | `BLOCKED_NATIVE_ADMISSION` |
| 69 | `def` | [inrHom](declarations/inrhom.md) | 397 | `BLOCKED_NATIVE_ADMISSION` |
| 70 | `def` | [sndHom](declarations/sndhom.md) | 402 | `BLOCKED_NATIVE_ADMISSION` |
| 71 | `instance` | [one](declarations/one.md) | 414 | `BLOCKED_NATIVE_ADMISSION` |
| 72 | `instance` | [mul](declarations/mul.md) | 417 | `BLOCKED_NATIVE_ADMISSION` |
| 73 | `theorem` | [fst_one](declarations/fst-one.md) | 421 | `BLOCKED_NATIVE_ADMISSION` |
| 74 | `theorem` | [snd_one](declarations/snd-one.md) | 425 | `BLOCKED_NATIVE_ADMISSION` |
| 75 | `theorem` | [fst_mul](declarations/fst-mul.md) | 429 | `BLOCKED_NATIVE_ADMISSION` |
| 76 | `theorem` | [snd_mul](declarations/snd-mul.md) | 434 | `BLOCKED_NATIVE_ADMISSION` |
| 77 | `theorem` | [inl_one](declarations/inl-one.md) | 443 | `BLOCKED_NATIVE_ADMISSION` |
| 78 | `theorem` | [inl_mul](declarations/inl-mul.md) | 447 | `BLOCKED_NATIVE_ADMISSION` |
| 79 | `theorem` | [inl_mul_inl](declarations/inl-mul-inl.md) | 451 | `BLOCKED_NATIVE_ADMISSION` |
| 80 | `theorem` | [inr_mul_inr](declarations/inr-mul-inr.md) | 462 | `BLOCKED_NATIVE_ADMISSION` |
| 81 | `theorem` | [inl_mul_inr](declarations/inl-mul-inr.md) | 469 | `BLOCKED_NATIVE_ADMISSION` |
| 82 | `theorem` | [inr_mul_inl](declarations/inr-mul-inl.md) | 474 | `BLOCKED_NATIVE_ADMISSION` |
| 83 | `theorem` | [inl_mul_eq_smul](declarations/inl-mul-eq-smul.md) | 479 | `BLOCKED_NATIVE_ADMISSION` |
| 84 | `theorem` | [mul_inl_eq_op_smul](declarations/mul-inl-eq-op-smul.md) | 484 | `BLOCKED_NATIVE_ADMISSION` |
| 85 | `instance` | [mulOneClass](declarations/muloneclass.md) | 489 | `BLOCKED_NATIVE_ADMISSION` |
| 86 | `instance` | [addMonoidWithOne](declarations/addmonoidwithone.md) | 498 | `BLOCKED_NATIVE_ADMISSION` |
| 87 | `theorem` | [fst_natCast](declarations/fst-natcast.md) | 504 | `BLOCKED_NATIVE_ADMISSION` |
| 88 | `theorem` | [snd_natCast](declarations/snd-natcast.md) | 508 | `BLOCKED_NATIVE_ADMISSION` |
| 89 | `theorem` | [inl_natCast](declarations/inl-natcast.md) | 512 | `BLOCKED_NATIVE_ADMISSION` |
| 90 | `instance` | [addGroupWithOne](declarations/addgroupwithone.md) | 515 | `BLOCKED_NATIVE_ADMISSION` |
| 91 | `theorem` | [fst_intCast](declarations/fst-intcast.md) | 521 | `BLOCKED_NATIVE_ADMISSION` |
| 92 | `theorem` | [snd_intCast](declarations/snd-intcast.md) | 525 | `BLOCKED_NATIVE_ADMISSION` |
| 93 | `theorem` | [inl_intCast](declarations/inl-intcast.md) | 529 | `BLOCKED_NATIVE_ADMISSION` |
| 94 | `instance` | [nonAssocSemiring](declarations/nonassocsemiring.md) | 532 | `BLOCKED_NATIVE_ADMISSION` |
| 95 | `instance` | [nonAssocRing](declarations/nonassocring.md) | 553 | `BLOCKED_NATIVE_ADMISSION` |
| 96 | `instance` | [(anonymous)](declarations/instance.md) | 565 | `BLOCKED_NATIVE_ADMISSION` |
| 97 | `theorem` | [fst_pow](declarations/fst-pow.md) | 571 | `BLOCKED_NATIVE_ADMISSION` |
| 98 | `theorem` | [snd_pow_eq_sum](declarations/snd-pow-eq-sum.md) | 575 | `BLOCKED_NATIVE_ADMISSION` |
| 99 | `theorem` | [snd_pow_of_smul_comm](declarations/snd-pow-of-smul-comm.md) | 580 | `BLOCKED_NATIVE_ADMISSION` |
| 100 | `theorem` | [snd_pow_of_smul_comm'](declarations/snd-pow-of-smul-comm-source-edition-2.md) | 598 | `BLOCKED_NATIVE_ADMISSION` |
| 101 | `theorem` | [snd_pow](declarations/snd-pow.md) | 604 | `BLOCKED_NATIVE_ADMISSION` |
| 102 | `theorem` | [inl_pow](declarations/inl-pow.md) | 609 | `BLOCKED_NATIVE_ADMISSION` |
| 103 | `instance` | [monoid](declarations/monoid.md) | 613 | `BLOCKED_NATIVE_ADMISSION` |
| 104 | `theorem` | [fst_list_prod](declarations/fst-list-prod.md) | 635 | `BLOCKED_NATIVE_ADMISSION` |
| 105 | `instance` | [semiring](declarations/semiring.md) | 639 | `BLOCKED_NATIVE_ADMISSION` |
| 106 | `theorem` | [snd_list_prod](declarations/snd-list-prod.md) | 644 | `BLOCKED_NATIVE_ADMISSION` |
| 107 | `instance` | [ring](declarations/ring.md) | 659 | `BLOCKED_NATIVE_ADMISSION` |
| 108 | `instance` | [commMonoid](declarations/commmonoid.md) | 662 | `BLOCKED_NATIVE_ADMISSION` |
| 109 | `instance` | [commSemiring](declarations/commsemiring.md) | 670 | `BLOCKED_NATIVE_ADMISSION` |
| 110 | `instance` | [commRing](declarations/commring.md) | 673 | `BLOCKED_NATIVE_ADMISSION` |
| 111 | `def` | [inlHom](declarations/inlhom.md) | 680 | `BLOCKED_NATIVE_ADMISSION` |
| 112 | `instance` | [instInv](declarations/instinv.md) | 696 | `BLOCKED_NATIVE_ADMISSION` |
| 113 | `theorem` | [fst_inv](declarations/fst-inv.md) | 699 | `BLOCKED_NATIVE_ADMISSION` |
| 114 | `theorem` | [snd_inv](declarations/snd-inv.md) | 702 | `BLOCKED_NATIVE_ADMISSION` |
| 115 | `abbrev` | [invertibleFstOfInvertible](declarations/invertiblefstofinvertible.md) | 713 | `BLOCKED_NATIVE_ADMISSION` |
| 116 | `theorem` | [fst_invOf](declarations/fst-invof.md) | 718 | `BLOCKED_NATIVE_ADMISSION` |
| 117 | `theorem` | [mul_left_eq_one](declarations/mul-left-eq-one.md) | 722 | `BLOCKED_NATIVE_ADMISSION` |
| 118 | `theorem` | [mul_right_eq_one](declarations/mul-right-eq-one.md) | 729 | `BLOCKED_NATIVE_ADMISSION` |
| 119 | `abbrev` | [invertibleOfInvertibleFst](declarations/invertibleofinvertiblefst.md) | 739 | `BLOCKED_NATIVE_ADMISSION` |
| 120 | `theorem` | [snd_invOf](declarations/snd-invof.md) | 748 | `BLOCKED_NATIVE_ADMISSION` |
| 121 | `def` | [invertibleEquivInvertibleFst](declarations/invertibleequivinvertiblefst.md) | 757 | `BLOCKED_NATIVE_ADMISSION` |
| 122 | `theorem` | [isUnit_iff_isUnit_fst](declarations/isunit-iff-isunit-fst.md) | 764 | `BLOCKED_NATIVE_ADMISSION` |
| 123 | `theorem` | [isUnit_inl_iff](declarations/isunit-inl-iff.md) | 768 | `BLOCKED_NATIVE_ADMISSION` |
| 124 | `theorem` | [isUnit_inr_iff](declarations/isunit-inr-iff.md) | 772 | `BLOCKED_NATIVE_ADMISSION` |
| 125 | `theorem` | [inv_inl](declarations/inv-inl.md) | 781 | `BLOCKED_NATIVE_ADMISSION` |
| 126 | `theorem` | [inv_inr](declarations/inv-inr.md) | 788 | `BLOCKED_NATIVE_ADMISSION` |
| 127 | `theorem` | [inv_zero](declarations/inv-zero.md) | 794 | `BLOCKED_NATIVE_ADMISSION` |
| 128 | `theorem` | [inv_one](declarations/inv-one.md) | 798 | `BLOCKED_NATIVE_ADMISSION` |
| 129 | `theorem` | [inv_mul_cancel](declarations/inv-mul-cancel.md) | 801 | `BLOCKED_NATIVE_ADMISSION` |
| 130 | `theorem` | [invOf_eq_inv](declarations/invof-eq-inv.md) | 807 | `BLOCKED_NATIVE_ADMISSION` |
| 131 | `theorem` | [mul_inv_cancel](declarations/mul-inv-cancel.md) | 811 | `BLOCKED_NATIVE_ADMISSION` |
| 132 | `theorem` | [mul_inv_rev](declarations/mul-inv-rev.md) | 816 | `BLOCKED_NATIVE_ADMISSION` |
| 133 | `theorem` | [inv_inv](declarations/inv-inv.md) | 829 | `BLOCKED_NATIVE_ADMISSION` |
| 134 | `theorem` | [isUnit_inv_iff](declarations/isunit-inv-iff.md) | 840 | `BLOCKED_NATIVE_ADMISSION` |
| 135 | `theorem` | [inv_neg](declarations/inv-neg.md) | 849 | `BLOCKED_NATIVE_ADMISSION` |
| 136 | `instance` | [algebra'](declarations/algebra.md) | 862 | `BLOCKED_NATIVE_ADMISSION` |
| 137 | `instance` | [(anonymous)](declarations/instance-source-edition-2.md) | 877 | `BLOCKED_NATIVE_ADMISSION` |
| 138 | `theorem` | [algebraMap_eq_inl](declarations/algebramap-eq-inl.md) | 880 | `BLOCKED_NATIVE_ADMISSION` |
| 139 | `theorem` | [algebraMap_eq_inlHom](declarations/algebramap-eq-inlhom.md) | 883 | `BLOCKED_NATIVE_ADMISSION` |
| 140 | `theorem` | [algebraMap_eq_inl'](declarations/algebramap-eq-inl-source-edition-2.md) | 886 | `BLOCKED_NATIVE_ADMISSION` |
| 141 | `def` | [fstHom](declarations/fsthom.md) | 891 | `BLOCKED_NATIVE_ADMISSION` |
| 142 | `abbrev` | [algebraBase](declarations/algebrabase.md) | 901 | `BLOCKED_NATIVE_ADMISSION` |
| 143 | `instance` | [(anonymous)](declarations/instance-source-edition-3.md) | 908 | `BLOCKED_NATIVE_ADMISSION` |
| 144 | `def` | [inlAlgHom](declarations/inlalghom.md) | 913 | `BLOCKED_NATIVE_ADMISSION` |
| 145 | `theorem` | [algHom_ext](declarations/alghom-ext.md) | 923 | `BLOCKED_NATIVE_ADMISSION` |
| 146 | `theorem` | [algHom_ext'](declarations/alghom-ext-source-edition-2.md) | 929 | `BLOCKED_NATIVE_ADMISSION` |
| 147 | `def` | [lift](declarations/lift.md) | 954 | `BLOCKED_NATIVE_ADMISSION` |
| 148 | `theorem` | [lift_def](declarations/lift-def.md) | 967 | `BLOCKED_NATIVE_ADMISSION` |
| 149 | `theorem` | [lift_apply_inl](declarations/lift-apply-inl.md) | 975 | `BLOCKED_NATIVE_ADMISSION` |
| 150 | `theorem` | [lift_apply_inr](declarations/lift-apply-inr.md) | 984 | `BLOCKED_NATIVE_ADMISSION` |
| 151 | `theorem` | [lift_comp_inlHom](declarations/lift-comp-inlhom.md) | 993 | `BLOCKED_NATIVE_ADMISSION` |
| 152 | `theorem` | [lift_comp_inrHom](declarations/lift-comp-inrhom.md) | 1001 | `BLOCKED_NATIVE_ADMISSION` |
| 153 | `theorem` | [lift_inlAlgHom_inrHom](declarations/lift-inlalghom-inrhom.md) | 1010 | `BLOCKED_NATIVE_ADMISSION` |
| 154 | `theorem` | [range_inlAlgHom_sup_adjoin_range_inr](declarations/range-inlalghom-sup-adjoin-range-inr.md) | 1018 | `BLOCKED_NATIVE_ADMISSION` |
| 155 | `theorem` | [range_liftAux](declarations/range-liftaux.md) | 1027 | `BLOCKED_NATIVE_ADMISSION` |
| 156 | `def` | [liftEquiv](declarations/liftequiv.md) | 1043 | `BLOCKED_NATIVE_ADMISSION` |
| 157 | `def` | [liftEquivOfComm](declarations/liftequivofcomm.md) | 1060 | `BLOCKED_NATIVE_ADMISSION` |
| 158 | `def` | [map](declarations/map.md) | 1080 | `BLOCKED_NATIVE_ADMISSION` |
| 159 | `theorem` | [map_inl](declarations/map-inl.md) | 1084 | `BLOCKED_NATIVE_ADMISSION` |
| 160 | `theorem` | [map_inr](declarations/map-inr.md) | 1088 | `BLOCKED_NATIVE_ADMISSION` |
| 161 | `theorem` | [fst_map](declarations/fst-map.md) | 1092 | `BLOCKED_NATIVE_ADMISSION` |
| 162 | `theorem` | [snd_map](declarations/snd-map.md) | 1096 | `BLOCKED_NATIVE_ADMISSION` |
| 163 | `theorem` | [map_comp_inlAlgHom](declarations/map-comp-inlalghom.md) | 1100 | `BLOCKED_NATIVE_ADMISSION` |
| 164 | `theorem` | [map_comp_inrHom](declarations/map-comp-inrhom.md) | 1105 | `BLOCKED_NATIVE_ADMISSION` |
| 165 | `theorem` | [fstHom_comp_map](declarations/fsthom-comp-map.md) | 1110 | `BLOCKED_NATIVE_ADMISSION` |
| 166 | `theorem` | [sndHom_comp_map](declarations/sndhom-comp-map.md) | 1115 | `BLOCKED_NATIVE_ADMISSION` |
| 167 | `theorem` | [map_id](declarations/map-id.md) | 1120 | `BLOCKED_NATIVE_ADMISSION` |
| 168 | `theorem` | [map_comp_map](declarations/map-comp-map.md) | 1124 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=40a73f09b06c79a4f6cce6a9d3dddf6b7a44238a28f1982e582a307d99e1d2d6 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/Basic/Variant1c56966449f3f0925d313dd5c3970a61234b19ea4936eab8502ff3bc99bddcb5.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
