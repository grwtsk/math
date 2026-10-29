# Affine Map Namespaced Ext Linear

[Complete source index](../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**134 observed declarations and anonymous commands**, 104 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Algebra/LinearAlgebra/AffineMap/Variant47fefc85c4319b60496b83e4aa35dd4761b12280236709a1238d4d661a9d5a63.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `dd5ca05270790780773fbc1ebd45ee59c5dad18e`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineMapNamespacedExtLinear.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `structure` | [AffineMap](declarations/affinemap.md) | 57 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `instance` | [AffineMap.instFunLike](declarations/affinemap-instfunlike.md) | 68 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `def` | [toAffineMap](declarations/toaffinemap.md) | 84 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `theorem` | [coe_toAffineMap](declarations/coe-toaffinemap.md) | 90 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [toAffineMap_linear](declarations/toaffinemap-linear.md) | 94 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [coe_mk](declarations/coe-mk-source-edition-2.md) | 109 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [toFun_eq_coe](declarations/tofun-eq-coe.md) | 114 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [map_vadd](declarations/map-vadd.md) | 121 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [linearMap_vsub](declarations/linearmap-vsub.md) | 128 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [ext](declarations/ext.md) | 133 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [coeFn_injective](declarations/coefn-injective.md) | 136 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [congr_arg](declarations/congr-arg.md) | 139 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [congr_fun](declarations/congr-fun.md) | 142 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [ext_linear](declarations/ext-linear.md) | 146 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [ext_linear_iff](declarations/ext-linear-iff.md) | 155 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `def` | [const](declarations/const.md) | 162 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [coe_const](declarations/coe-const.md) | 170 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [const_apply](declarations/const-apply.md) | 174 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [const_linear](declarations/const-linear.md) | 177 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [linear_eq_zero_iff_exists_const](declarations/linear-eq-zero-iff-exists-const.md) | 182 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `instance` | [nonempty](declarations/nonempty.md) | 192 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `def` | [mk'](declarations/mk.md) | 198 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [coe_mk'](declarations/coe-mk.md) | 205 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [mk'_linear](declarations/mk-linear.md) | 209 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `instance` | [mulAction](declarations/mulaction.md) | 216 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [coe_smul](declarations/coe-smul.md) | 222 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [smul_linear](declarations/smul-linear.md) | 226 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `instance` | [isCentralScalar](declarations/iscentralscalar.md) | 229 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `instance` | [(anonymous)](declarations/instance-source-edition-8.md) | 235 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `instance` | [(anonymous)](declarations/instance-source-edition-5.md) | 237 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `instance` | [(anonymous)](declarations/instance-source-edition-7.md) | 240 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `instance` | [(anonymous)](declarations/instance-source-edition-3.md) | 243 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [coe_zero](declarations/coe-zero.md) | 247 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [coe_add](declarations/coe-add.md) | 251 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `theorem` | [coe_neg](declarations/coe-neg.md) | 255 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `theorem` | [coe_sub](declarations/coe-sub.md) | 259 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `theorem` | [zero_linear](declarations/zero-linear.md) | 263 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `theorem` | [add_linear](declarations/add-linear.md) | 267 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `theorem` | [sub_linear](declarations/sub-linear.md) | 271 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `theorem` | [neg_linear](declarations/neg-linear.md) | 275 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `instance` | [(anonymous)](declarations/instance-source-edition-6.md) | 279 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `instance` | [(anonymous)](declarations/instance-source-edition-9.md) | 285 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `theorem` | [vadd_apply](declarations/vadd-apply.md) | 298 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `theorem` | [vsub_apply](declarations/vsub-apply.md) | 302 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `def` | [fst](declarations/fst.md) | 306 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `theorem` | [coe_fst](declarations/coe-fst.md) | 312 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `theorem` | [fst_linear](declarations/fst-linear.md) | 316 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `def` | [snd](declarations/snd.md) | 320 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `theorem` | [coe_snd](declarations/coe-snd.md) | 326 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `theorem` | [snd_linear](declarations/snd-linear.md) | 330 | `BLOCKED_NATIVE_ADMISSION` |
| 51 | `def` | [id](declarations/id.md) | 335 | `BLOCKED_NATIVE_ADMISSION` |
| 52 | `theorem` | [coe_id](declarations/coe-id.md) | 342 | `BLOCKED_NATIVE_ADMISSION` |
| 53 | `theorem` | [id_linear](declarations/id-linear.md) | 346 | `BLOCKED_NATIVE_ADMISSION` |
| 54 | `theorem` | [id_apply](declarations/id-apply.md) | 352 | `BLOCKED_NATIVE_ADMISSION` |
| 55 | `instance` | [(anonymous)](declarations/instance-source-edition-4.md) | 357 | `BLOCKED_NATIVE_ADMISSION` |
| 56 | `def` | [comp](declarations/comp.md) | 361 | `BLOCKED_NATIVE_ADMISSION` |
| 57 | `theorem` | [coe_comp](declarations/coe-comp.md) | 371 | `BLOCKED_NATIVE_ADMISSION` |
| 58 | `theorem` | [comp_apply](declarations/comp-apply.md) | 375 | `BLOCKED_NATIVE_ADMISSION` |
| 59 | `theorem` | [comp_id](declarations/comp-id.md) | 379 | `BLOCKED_NATIVE_ADMISSION` |
| 60 | `theorem` | [id_comp](declarations/id-comp.md) | 383 | `BLOCKED_NATIVE_ADMISSION` |
| 61 | `theorem` | [comp_assoc](declarations/comp-assoc.md) | 386 | `BLOCKED_NATIVE_ADMISSION` |
| 62 | `instance` | [(anonymous)](declarations/instance-source-edition-2.md) | 390 | `BLOCKED_NATIVE_ADMISSION` |
| 63 | `theorem` | [coe_mul](declarations/coe-mul.md) | 398 | `BLOCKED_NATIVE_ADMISSION` |
| 64 | `theorem` | [coe_one](declarations/coe-one.md) | 402 | `BLOCKED_NATIVE_ADMISSION` |
| 65 | `def` | [linearHom](declarations/linearhom.md) | 407 | `BLOCKED_NATIVE_ADMISSION` |
| 66 | `theorem` | [linear_injective_iff](declarations/linear-injective-iff.md) | 413 | `BLOCKED_NATIVE_ADMISSION` |
| 67 | `theorem` | [linear_surjective_iff](declarations/linear-surjective-iff.md) | 422 | `BLOCKED_NATIVE_ADMISSION` |
| 68 | `theorem` | [linear_bijective_iff](declarations/linear-bijective-iff.md) | 431 | `BLOCKED_NATIVE_ADMISSION` |
| 69 | `theorem` | [image_vsub_image](declarations/image-vsub-image.md) | 435 | `BLOCKED_NATIVE_ADMISSION` |
| 70 | `def` | [lineMap](declarations/linemap.md) | 449 | `BLOCKED_NATIVE_ADMISSION` |
| 71 | `theorem` | [coe_lineMap](declarations/coe-linemap.md) | 452 | `BLOCKED_NATIVE_ADMISSION` |
| 72 | `theorem` | [lineMap_apply](declarations/linemap-apply.md) | 455 | `BLOCKED_NATIVE_ADMISSION` |
| 73 | `theorem` | [lineMap_apply_module'](declarations/linemap-apply-module.md) | 458 | `BLOCKED_NATIVE_ADMISSION` |
| 74 | `theorem` | [lineMap_apply_module](declarations/linemap-apply-module-source-edition-2.md) | 461 | `BLOCKED_NATIVE_ADMISSION` |
| 75 | `theorem` | [lineMap_apply_ring'](declarations/linemap-apply-ring-source-edition-2.md) | 464 | `BLOCKED_NATIVE_ADMISSION` |
| 76 | `theorem` | [lineMap_apply_ring](declarations/linemap-apply-ring.md) | 467 | `BLOCKED_NATIVE_ADMISSION` |
| 77 | `theorem` | [lineMap_vadd_apply](declarations/linemap-vadd-apply.md) | 470 | `BLOCKED_NATIVE_ADMISSION` |
| 78 | `theorem` | [lineMap_linear](declarations/linemap-linear.md) | 474 | `BLOCKED_NATIVE_ADMISSION` |
| 79 | `theorem` | [lineMap_same_apply](declarations/linemap-same-apply.md) | 478 | `BLOCKED_NATIVE_ADMISSION` |
| 80 | `theorem` | [lineMap_same](declarations/linemap-same.md) | 482 | `BLOCKED_NATIVE_ADMISSION` |
| 81 | `theorem` | [lineMap_apply_zero](declarations/linemap-apply-zero.md) | 486 | `BLOCKED_NATIVE_ADMISSION` |
| 82 | `theorem` | [lineMap_apply_one](declarations/linemap-apply-one.md) | 490 | `BLOCKED_NATIVE_ADMISSION` |
| 83 | `theorem` | [lineMap_eq_lineMap_iff](declarations/linemap-eq-linemap-iff.md) | 494 | `BLOCKED_NATIVE_ADMISSION` |
| 84 | `theorem` | [lineMap_eq_left_iff](declarations/linemap-eq-left-iff.md) | 500 | `BLOCKED_NATIVE_ADMISSION` |
| 85 | `theorem` | [lineMap_eq_right_iff](declarations/linemap-eq-right-iff.md) | 505 | `BLOCKED_NATIVE_ADMISSION` |
| 86 | `theorem` | [lineMap_injective](declarations/linemap-injective.md) | 510 | `BLOCKED_NATIVE_ADMISSION` |
| 87 | `theorem` | [apply_lineMap](declarations/apply-linemap.md) | 515 | `BLOCKED_NATIVE_ADMISSION` |
| 88 | `theorem` | [comp_lineMap](declarations/comp-linemap.md) | 520 | `BLOCKED_NATIVE_ADMISSION` |
| 89 | `theorem` | [fst_lineMap](declarations/fst-linemap.md) | 525 | `BLOCKED_NATIVE_ADMISSION` |
| 90 | `theorem` | [snd_lineMap](declarations/snd-linemap.md) | 529 | `BLOCKED_NATIVE_ADMISSION` |
| 91 | `theorem` | [lineMap_symm](declarations/linemap-symm.md) | 532 | `BLOCKED_NATIVE_ADMISSION` |
| 92 | `theorem` | [lineMap_apply_one_sub](declarations/linemap-apply-one-sub.md) | 538 | `BLOCKED_NATIVE_ADMISSION` |
| 93 | `theorem` | [lineMap_vsub_left](declarations/linemap-vsub-left.md) | 544 | `BLOCKED_NATIVE_ADMISSION` |
| 94 | `theorem` | [left_vsub_lineMap](declarations/left-vsub-linemap.md) | 548 | `BLOCKED_NATIVE_ADMISSION` |
| 95 | `theorem` | [lineMap_vsub_right](declarations/linemap-vsub-right.md) | 552 | `BLOCKED_NATIVE_ADMISSION` |
| 96 | `theorem` | [right_vsub_lineMap](declarations/right-vsub-linemap.md) | 556 | `BLOCKED_NATIVE_ADMISSION` |
| 97 | `theorem` | [lineMap_vadd_lineMap](declarations/linemap-vadd-linemap.md) | 559 | `BLOCKED_NATIVE_ADMISSION` |
| 98 | `theorem` | [lineMap_vsub_lineMap](declarations/linemap-vsub-linemap.md) | 563 | `BLOCKED_NATIVE_ADMISSION` |
| 99 | `lemma` | [lineMap_lineMap_right](declarations/linemap-linemap-right.md) | 567 | `BLOCKED_NATIVE_ADMISSION` |
| 100 | `lemma` | [lineMap_lineMap_left](declarations/linemap-linemap-left.md) | 570 | `BLOCKED_NATIVE_ADMISSION` |
| 101 | `theorem` | [decomp](declarations/decomp.md) | 576 | `BLOCKED_NATIVE_ADMISSION` |
| 102 | `theorem` | [decomp'](declarations/decomp-source-edition-2.md) | 584 | `BLOCKED_NATIVE_ADMISSION` |
| 103 | `theorem` | [image_uIcc](declarations/image-uicc.md) | 588 | `BLOCKED_NATIVE_ADMISSION` |
| 104 | `def` | [proj](declarations/proj.md) | 605 | `BLOCKED_NATIVE_ADMISSION` |
| 105 | `theorem` | [proj_apply](declarations/proj-apply.md) | 611 | `BLOCKED_NATIVE_ADMISSION` |
| 106 | `theorem` | [proj_linear](declarations/proj-linear.md) | 615 | `BLOCKED_NATIVE_ADMISSION` |
| 107 | `theorem` | [pi_lineMap_apply](declarations/pi-linemap-apply.md) | 618 | `BLOCKED_NATIVE_ADMISSION` |
| 108 | `instance` | [distribMulAction](declarations/distribmulaction.md) | 640 | `BLOCKED_NATIVE_ADMISSION` |
| 109 | `instance` | [(anonymous)](declarations/instance.md) | 651 | `BLOCKED_NATIVE_ADMISSION` |
| 110 | `def` | [toConstProdLinearMap](declarations/toconstprodlinearmap.md) | 664 | `BLOCKED_NATIVE_ADMISSION` |
| 111 | `def` | [pi](declarations/pi.md) | 688 | `BLOCKED_NATIVE_ADMISSION` |
| 112 | `theorem` | [pi_apply](declarations/pi-apply.md) | 699 | `BLOCKED_NATIVE_ADMISSION` |
| 113 | `theorem` | [pi_comp](declarations/pi-comp.md) | 702 | `BLOCKED_NATIVE_ADMISSION` |
| 114 | `theorem` | [pi_eq_zero](declarations/pi-eq-zero.md) | 705 | `BLOCKED_NATIVE_ADMISSION` |
| 115 | `theorem` | [pi_zero](declarations/pi-zero.md) | 709 | `BLOCKED_NATIVE_ADMISSION` |
| 116 | `theorem` | [proj_pi](declarations/proj-pi.md) | 712 | `BLOCKED_NATIVE_ADMISSION` |
| 117 | `theorem` | [pi_ext_zero](declarations/pi-ext-zero.md) | 721 | `BLOCKED_NATIVE_ADMISSION` |
| 118 | `theorem` | [pi_ext_nonempty](declarations/pi-ext-nonempty-source-edition-2.md) | 738 | `BLOCKED_NATIVE_ADMISSION` |
| 119 | `theorem` | [pi_ext_nonempty'](declarations/pi-ext-nonempty.md) | 748 | `BLOCKED_NATIVE_ADMISSION` |
| 120 | `def` | [homothety](declarations/homothety.md) | 765 | `BLOCKED_NATIVE_ADMISSION` |
| 121 | `theorem` | [homothety_def](declarations/homothety-def.md) | 768 | `BLOCKED_NATIVE_ADMISSION` |
| 122 | `theorem` | [homothety_apply](declarations/homothety-apply.md) | 772 | `BLOCKED_NATIVE_ADMISSION` |
| 123 | `theorem` | [homothety_eq_lineMap](declarations/homothety-eq-linemap.md) | 775 | `BLOCKED_NATIVE_ADMISSION` |
| 124 | `theorem` | [homothety_one](declarations/homothety-one.md) | 779 | `BLOCKED_NATIVE_ADMISSION` |
| 125 | `theorem` | [homothety_apply_same](declarations/homothety-apply-same.md) | 784 | `BLOCKED_NATIVE_ADMISSION` |
| 126 | `theorem` | [homothety_mul_apply](declarations/homothety-mul-apply.md) | 787 | `BLOCKED_NATIVE_ADMISSION` |
| 127 | `theorem` | [homothety_mul](declarations/homothety-mul.md) | 791 | `BLOCKED_NATIVE_ADMISSION` |
| 128 | `theorem` | [homothety_zero](declarations/homothety-zero.md) | 796 | `BLOCKED_NATIVE_ADMISSION` |
| 129 | `theorem` | [homothety_add](declarations/homothety-add.md) | 801 | `BLOCKED_NATIVE_ADMISSION` |
| 130 | `def` | [homothetyHom](declarations/homothetyhom.md) | 806 | `BLOCKED_NATIVE_ADMISSION` |
| 131 | `theorem` | [coe_homothetyHom](declarations/coe-homothetyhom.md) | 812 | `BLOCKED_NATIVE_ADMISSION` |
| 132 | `def` | [homothetyAffine](declarations/homothetyaffine.md) | 816 | `BLOCKED_NATIVE_ADMISSION` |
| 133 | `theorem` | [coe_homothetyAffine](declarations/coe-homothetyaffine.md) | 821 | `BLOCKED_NATIVE_ADMISSION` |
| 134 | `theorem` | [Convex.combo_affine_apply](declarations/convex-combo-affine-apply.md) | 834 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=da28665dbc7d4761f7f9c2d444f7c13cf4618be4dba8e374762b4d9d5a3682af -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/AffineMap/Variant47fefc85c4319b60496b83e4aa35dd4761b12280236709a1238d4d661a9d5a63.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
