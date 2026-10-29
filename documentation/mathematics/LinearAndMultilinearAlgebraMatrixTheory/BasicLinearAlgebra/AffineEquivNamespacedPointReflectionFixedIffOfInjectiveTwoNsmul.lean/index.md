# Affine Equiv Namespaced Point Reflection Fixed Iff Of Injective Two Nsmul

[Complete source index](../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**98 observed declarations and anonymous commands**, 76 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Algebra/LinearAlgebra/AffineEquiv/Variant0c95ed705f51fb5799b1b78af5154e89bcbd3f7008f91e5122e1f50a287904dc.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `71b5fbd6b72dd95db69b1dc91a88c1dc3d424cf9`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineEquivNamespacedPointReflectionFixedIffOfInjectiveTwoNsmul.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `structure` | [AffineEquiv](declarations/affineequiv.md) | 51 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `def` | [toAffineMap](declarations/toaffinemap.md) | 68 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `theorem` | [toAffineMap_mk](declarations/toaffinemap-mk.md) | 72 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `theorem` | [linear_toAffineMap](declarations/linear-toaffinemap.md) | 77 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [toAffineMap_injective](declarations/toaffinemap-injective.md) | 80 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [toAffineMap_inj](declarations/toaffinemap-inj.md) | 85 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `instance` | [equivLike](declarations/equivlike.md) | 88 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `instance` | [(anonymous)](declarations/instance.md) | 95 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [map_vadd](declarations/map-vadd.md) | 99 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [coe_toEquiv](declarations/coe-toequiv.md) | 103 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `instance` | [(anonymous)](declarations/instance-source-edition-2.md) | 106 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [coe_toAffineMap](declarations/coe-toaffinemap.md) | 110 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [coe_coe](declarations/coe-coe.md) | 114 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [coe_linear](declarations/coe-linear.md) | 118 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [ext](declarations/ext.md) | 122 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [coeFn_injective](declarations/coefn-injective.md) | 125 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [coeFn_inj](declarations/coefn-inj.md) | 129 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [toEquiv_injective](declarations/toequiv-injective.md) | 131 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [toEquiv_inj](declarations/toequiv-inj.md) | 135 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [coe_mk](declarations/coe-mk-source-edition-2.md) | 139 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `def` | [mk'](declarations/mk.md) | 146 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [coe_mk'](declarations/coe-mk.md) | 156 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [linear_mk'](declarations/linear-mk.md) | 160 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `def` | [symm](declarations/symm.md) | 165 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [symm_toEquiv](declarations/symm-toequiv.md) | 174 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [symm_linear](declarations/symm-linear.md) | 178 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `def` | [Simps.apply](declarations/simps-apply.md) | 182 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `def` | [Simps.symm_apply](declarations/simps-symm-apply.md) | 186 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [bijective](declarations/bijective.md) | 192 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [surjective](declarations/surjective.md) | 195 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [injective](declarations/injective.md) | 198 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `def` | [ofBijective](declarations/ofbijective.md) | 203 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [ofBijective.symm_eq](declarations/ofbijective-symm-eq.md) | 208 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [range_eq](declarations/range-eq.md) | 212 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `theorem` | [apply_symm_apply](declarations/apply-symm-apply.md) | 215 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `theorem` | [symm_apply_apply](declarations/symm-apply-apply.md) | 219 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `theorem` | [apply_eq_iff_eq_symm_apply](declarations/apply-eq-iff-eq-symm-apply.md) | 222 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `theorem` | [apply_eq_iff_eq](declarations/apply-eq-iff-eq.md) | 225 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `theorem` | [image_symm](declarations/image-symm.md) | 228 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `theorem` | [preimage_symm](declarations/preimage-symm.md) | 232 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `def` | [refl](declarations/refl.md) | 239 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `theorem` | [coe_refl](declarations/coe-refl.md) | 245 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `theorem` | [coe_refl_to_affineMap](declarations/coe-refl-to-affinemap.md) | 249 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `theorem` | [refl_apply](declarations/refl-apply.md) | 253 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `theorem` | [toEquiv_refl](declarations/toequiv-refl.md) | 257 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `theorem` | [linear_refl](declarations/linear-refl.md) | 261 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `theorem` | [symm_refl](declarations/symm-refl.md) | 265 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `def` | [trans](declarations/trans.md) | 272 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `theorem` | [coe_trans](declarations/coe-trans.md) | 279 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `theorem` | [coe_trans_to_affineMap](declarations/coe-trans-to-affinemap.md) | 283 | `BLOCKED_NATIVE_ADMISSION` |
| 51 | `theorem` | [trans_apply](declarations/trans-apply.md) | 288 | `BLOCKED_NATIVE_ADMISSION` |
| 52 | `theorem` | [trans_assoc](declarations/trans-assoc.md) | 291 | `BLOCKED_NATIVE_ADMISSION` |
| 53 | `theorem` | [trans_refl](declarations/trans-refl.md) | 296 | `BLOCKED_NATIVE_ADMISSION` |
| 54 | `theorem` | [refl_trans](declarations/refl-trans.md) | 300 | `BLOCKED_NATIVE_ADMISSION` |
| 55 | `theorem` | [self_trans_symm](declarations/self-trans-symm.md) | 304 | `BLOCKED_NATIVE_ADMISSION` |
| 56 | `theorem` | [symm_trans_self](declarations/symm-trans-self.md) | 308 | `BLOCKED_NATIVE_ADMISSION` |
| 57 | `theorem` | [apply_lineMap](declarations/apply-linemap.md) | 312 | `BLOCKED_NATIVE_ADMISSION` |
| 58 | `instance` | [group](declarations/group.md) | 316 | `BLOCKED_NATIVE_ADMISSION` |
| 59 | `theorem` | [one_def](declarations/one-def.md) | 325 | `BLOCKED_NATIVE_ADMISSION` |
| 60 | `theorem` | [coe_one](declarations/coe-one.md) | 329 | `BLOCKED_NATIVE_ADMISSION` |
| 61 | `theorem` | [mul_def](declarations/mul-def.md) | 332 | `BLOCKED_NATIVE_ADMISSION` |
| 62 | `theorem` | [coe_mul](declarations/coe-mul.md) | 336 | `BLOCKED_NATIVE_ADMISSION` |
| 63 | `theorem` | [inv_def](declarations/inv-def.md) | 339 | `BLOCKED_NATIVE_ADMISSION` |
| 64 | `def` | [linearHom](declarations/linearhom.md) | 344 | `BLOCKED_NATIVE_ADMISSION` |
| 65 | `def` | [equivUnitsAffineMap](declarations/equivunitsaffinemap.md) | 353 | `BLOCKED_NATIVE_ADMISSION` |
| 66 | `def` | [vaddConst](declarations/vaddconst.md) | 375 | `BLOCKED_NATIVE_ADMISSION` |
| 67 | `def` | [constVSub](declarations/constvsub.md) | 381 | `BLOCKED_NATIVE_ADMISSION` |
| 68 | `theorem` | [coe_constVSub](declarations/coe-constvsub.md) | 387 | `BLOCKED_NATIVE_ADMISSION` |
| 69 | `theorem` | [coe_constVSub_symm](declarations/coe-constvsub-symm.md) | 391 | `BLOCKED_NATIVE_ADMISSION` |
| 70 | `def` | [constVAdd](declarations/constvadd.md) | 401 | `BLOCKED_NATIVE_ADMISSION` |
| 71 | `theorem` | [constVAdd_zero](declarations/constvadd-zero.md) | 407 | `BLOCKED_NATIVE_ADMISSION` |
| 72 | `theorem` | [constVAdd_add](declarations/constvadd-add.md) | 411 | `BLOCKED_NATIVE_ADMISSION` |
| 73 | `theorem` | [constVAdd_symm](declarations/constvadd-symm.md) | 416 | `BLOCKED_NATIVE_ADMISSION` |
| 74 | `def` | [constVAddHom](declarations/constvaddhom.md) | 421 | `BLOCKED_NATIVE_ADMISSION` |
| 75 | `theorem` | [constVAdd_nsmul](declarations/constvadd-nsmul.md) | 426 | `BLOCKED_NATIVE_ADMISSION` |
| 76 | `theorem` | [constVAdd_zsmul](declarations/constvadd-zsmul.md) | 429 | `BLOCKED_NATIVE_ADMISSION` |
| 77 | `def` | [homothetyUnitsMulHom](declarations/homothetyunitsmulhom.md) | 438 | `BLOCKED_NATIVE_ADMISSION` |
| 78 | `theorem` | [coe_homothetyUnitsMulHom_apply](declarations/coe-homothetyunitsmulhom-apply.md) | 442 | `BLOCKED_NATIVE_ADMISSION` |
| 79 | `theorem` | [coe_homothetyUnitsMulHom_apply_symm](declarations/coe-homothetyunitsmulhom-apply-symm.md) | 447 | `BLOCKED_NATIVE_ADMISSION` |
| 80 | `theorem` | [coe_homothetyUnitsMulHom_eq_homothetyHom_coe](declarations/coe-homothetyunitsmulhom-eq-homothetyhom-coe.md) | 452 | `BLOCKED_NATIVE_ADMISSION` |
| 81 | `def` | [pointReflection](declarations/pointreflection.md) | 464 | `BLOCKED_NATIVE_ADMISSION` |
| 82 | `lemma` | [pointReflection_apply_eq_equivPointReflection_apply](declarations/pointreflection-apply-eq-equivpointreflection-apply.md) | 467 | `BLOCKED_NATIVE_ADMISSION` |
| 83 | `theorem` | [pointReflection_apply](declarations/pointreflection-apply.md) | 471 | `BLOCKED_NATIVE_ADMISSION` |
| 84 | `theorem` | [pointReflection_symm](declarations/pointreflection-symm.md) | 475 | `BLOCKED_NATIVE_ADMISSION` |
| 85 | `theorem` | [toEquiv_pointReflection](declarations/toequiv-pointreflection.md) | 479 | `BLOCKED_NATIVE_ADMISSION` |
| 86 | `theorem` | [pointReflection_self](declarations/pointreflection-self.md) | 483 | `BLOCKED_NATIVE_ADMISSION` |
| 87 | `theorem` | [pointReflection_involutive](declarations/pointreflection-involutive.md) | 486 | `BLOCKED_NATIVE_ADMISSION` |
| 88 | `theorem` | [pointReflection_fixed_iff_of_injective_two_nsmul](declarations/pointreflection-fixed-iff-of-injective-two-nsmul.md) | 491 | `BLOCKED_NATIVE_ADMISSION` |
| 89 | `theorem` | [injective_pointReflection_left_of_injective_two_nsmul](declarations/injective-pointreflection-left-of-injective-two-nsmul.md) | 498 | `BLOCKED_NATIVE_ADMISSION` |
| 90 | `theorem` | [injective_pointReflection_left_of_module](declarations/injective-pointreflection-left-of-module.md) | 506 | `BLOCKED_NATIVE_ADMISSION` |
| 91 | `theorem` | [pointReflection_fixed_iff_of_module](declarations/pointreflection-fixed-iff-of-module.md) | 513 | `BLOCKED_NATIVE_ADMISSION` |
| 92 | `def` | [toAffineEquiv](declarations/toaffineequiv.md) | 522 | `BLOCKED_NATIVE_ADMISSION` |
| 93 | `theorem` | [coe_toAffineEquiv](declarations/coe-toaffineequiv.md) | 528 | `BLOCKED_NATIVE_ADMISSION` |
| 94 | `theorem` | [lineMap_vadd](declarations/linemap-vadd.md) | 537 | `BLOCKED_NATIVE_ADMISSION` |
| 95 | `theorem` | [lineMap_vsub](declarations/linemap-vsub.md) | 541 | `BLOCKED_NATIVE_ADMISSION` |
| 96 | `theorem` | [vsub_lineMap](declarations/vsub-linemap.md) | 545 | `BLOCKED_NATIVE_ADMISSION` |
| 97 | `theorem` | [vadd_lineMap](declarations/vadd-linemap.md) | 549 | `BLOCKED_NATIVE_ADMISSION` |
| 98 | `theorem` | [homothety_neg_one_apply](declarations/homothety-neg-one-apply.md) | 555 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=392484ae8588894484ddbae53508cbc643753c8a8a4340441fa8449a4fab363b -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/AffineEquiv/Variant0c95ed705f51fb5799b1b78af5154e89bcbd3f7008f91e5122e1f50a287904dc.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
