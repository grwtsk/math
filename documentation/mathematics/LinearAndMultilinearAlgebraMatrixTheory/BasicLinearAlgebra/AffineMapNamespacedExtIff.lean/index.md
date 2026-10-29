# Affine Map Namespaced Ext Iff

[Complete source index](../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**123 observed declarations and anonymous commands**, 93 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Algebra/LinearAlgebra/AffineMap/Variant0024da5ef0792c94ce227b0d6cfe5f0a9510502f1ef46705375791cff07b6618.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `b8eb55b475fd0610e2d892d9bb6a30472a3a1f85`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineMapNamespacedExtIff.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `structure` | [AffineMap](declarations/affinemap.md) | 58 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `instance` | [AffineMap.funLike](declarations/affinemap-funlike.md) | 70 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `instance` | [AffineMap.hasCoeToFun](declarations/affinemap-hascoetofun.md) | 82 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `def` | [toAffineMap](declarations/toaffinemap.md) | 94 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [coe_toAffineMap](declarations/coe-toaffinemap.md) | 101 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [toAffineMap_linear](declarations/toaffinemap-linear.md) | 106 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [coe_mk](declarations/coe-mk.md) | 122 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [toFun_eq_coe](declarations/tofun-eq-coe.md) | 128 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [map_vadd](declarations/map-vadd.md) | 136 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [linearMap_vsub](declarations/linearmap-vsub.md) | 144 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [ext](declarations/ext.md) | 150 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [ext_iff](declarations/ext-iff.md) | 154 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [coeFn_injective](declarations/coefn-injective.md) | 158 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [congr_arg](declarations/congr-arg.md) | 162 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [congr_fun](declarations/congr-fun.md) | 166 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `def` | [const](declarations/const.md) | 173 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [coe_const](declarations/coe-const.md) | 182 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [const_apply](declarations/const-apply.md) | 188 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [const_linear](declarations/const-linear.md) | 191 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [linear_eq_zero_iff_exists_const](declarations/linear-eq-zero-iff-exists-const.md) | 197 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `instance` | [nonempty](declarations/nonempty.md) | 208 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `def` | [mk'](declarations/mk.md) | 215 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [coe_mk'](declarations/coe-mk-source-edition-2.md) | 223 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [mk'_linear](declarations/mk-linear.md) | 228 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `instance` | [mulAction](declarations/mulaction.md) | 236 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [coe_smul](declarations/coe-smul.md) | 243 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [smul_linear](declarations/smul-linear.md) | 248 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `instance` | [isCentralScalar](declarations/iscentralscalar.md) | 252 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `instance` | [(anonymous)](declarations/instance-source-edition-8.md) | 258 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `instance` | [(anonymous)](declarations/instance-source-edition-7.md) | 260 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `instance` | [(anonymous)](declarations/instance-source-edition-4.md) | 265 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `instance` | [(anonymous)](declarations/instance-source-edition-2.md) | 270 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [coe_zero](declarations/coe-zero.md) | 274 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [coe_add](declarations/coe-add.md) | 279 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `theorem` | [coe_neg](declarations/coe-neg.md) | 284 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `theorem` | [coe_sub](declarations/coe-sub.md) | 289 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `theorem` | [zero_linear](declarations/zero-linear.md) | 294 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `theorem` | [add_linear](declarations/add-linear.md) | 299 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `theorem` | [sub_linear](declarations/sub-linear.md) | 304 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `theorem` | [neg_linear](declarations/neg-linear.md) | 309 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `instance` | [(anonymous)](declarations/instance-source-edition-3.md) | 314 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `instance` | [(anonymous)](declarations/instance.md) | 320 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `theorem` | [vadd_apply](declarations/vadd-apply.md) | 337 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `theorem` | [vsub_apply](declarations/vsub-apply.md) | 342 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `def` | [fst](declarations/fst.md) | 347 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `theorem` | [coe_fst](declarations/coe-fst.md) | 354 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `theorem` | [fst_linear](declarations/fst-linear.md) | 359 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `def` | [snd](declarations/snd.md) | 364 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `theorem` | [coe_snd](declarations/coe-snd.md) | 371 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `theorem` | [snd_linear](declarations/snd-linear.md) | 376 | `BLOCKED_NATIVE_ADMISSION` |
| 51 | `def` | [id](declarations/id.md) | 382 | `BLOCKED_NATIVE_ADMISSION` |
| 52 | `theorem` | [coe_id](declarations/coe-id.md) | 390 | `BLOCKED_NATIVE_ADMISSION` |
| 53 | `theorem` | [id_linear](declarations/id-linear.md) | 395 | `BLOCKED_NATIVE_ADMISSION` |
| 54 | `theorem` | [id_apply](declarations/id-apply.md) | 402 | `BLOCKED_NATIVE_ADMISSION` |
| 55 | `instance` | [(anonymous)](declarations/instance-source-edition-6.md) | 408 | `BLOCKED_NATIVE_ADMISSION` |
| 56 | `def` | [comp](declarations/comp.md) | 412 | `BLOCKED_NATIVE_ADMISSION` |
| 57 | `theorem` | [coe_comp](declarations/coe-comp.md) | 423 | `BLOCKED_NATIVE_ADMISSION` |
| 58 | `theorem` | [comp_apply](declarations/comp-apply.md) | 428 | `BLOCKED_NATIVE_ADMISSION` |
| 59 | `theorem` | [comp_id](declarations/comp-id.md) | 433 | `BLOCKED_NATIVE_ADMISSION` |
| 60 | `theorem` | [id_comp](declarations/id-comp.md) | 438 | `BLOCKED_NATIVE_ADMISSION` |
| 61 | `theorem` | [comp_assoc](declarations/comp-assoc.md) | 442 | `BLOCKED_NATIVE_ADMISSION` |
| 62 | `instance` | [(anonymous)](declarations/instance-source-edition-5.md) | 447 | `BLOCKED_NATIVE_ADMISSION` |
| 63 | `theorem` | [coe_mul](declarations/coe-mul.md) | 455 | `BLOCKED_NATIVE_ADMISSION` |
| 64 | `theorem` | [coe_one](declarations/coe-one.md) | 460 | `BLOCKED_NATIVE_ADMISSION` |
| 65 | `def` | [linearHom](declarations/linearhom.md) | 466 | `BLOCKED_NATIVE_ADMISSION` |
| 66 | `theorem` | [linear_injective_iff](declarations/linear-injective-iff.md) | 473 | `BLOCKED_NATIVE_ADMISSION` |
| 67 | `theorem` | [linear_surjective_iff](declarations/linear-surjective-iff.md) | 483 | `BLOCKED_NATIVE_ADMISSION` |
| 68 | `theorem` | [linear_bijective_iff](declarations/linear-bijective-iff.md) | 493 | `BLOCKED_NATIVE_ADMISSION` |
| 69 | `theorem` | [image_vsub_image](declarations/image-vsub-image.md) | 498 | `BLOCKED_NATIVE_ADMISSION` |
| 70 | `def` | [lineMap](declarations/linemap.md) | 514 | `BLOCKED_NATIVE_ADMISSION` |
| 71 | `theorem` | [coe_lineMap](declarations/coe-linemap.md) | 518 | `BLOCKED_NATIVE_ADMISSION` |
| 72 | `theorem` | [lineMap_apply](declarations/linemap-apply.md) | 522 | `BLOCKED_NATIVE_ADMISSION` |
| 73 | `theorem` | [lineMap_apply_module'](declarations/linemap-apply-module-source-edition-2.md) | 526 | `BLOCKED_NATIVE_ADMISSION` |
| 74 | `theorem` | [lineMap_apply_module](declarations/linemap-apply-module.md) | 530 | `BLOCKED_NATIVE_ADMISSION` |
| 75 | `theorem` | [lineMap_apply_ring'](declarations/linemap-apply-ring.md) | 534 | `BLOCKED_NATIVE_ADMISSION` |
| 76 | `theorem` | [lineMap_apply_ring](declarations/linemap-apply-ring-source-edition-2.md) | 538 | `BLOCKED_NATIVE_ADMISSION` |
| 77 | `theorem` | [lineMap_vadd_apply](declarations/linemap-vadd-apply.md) | 542 | `BLOCKED_NATIVE_ADMISSION` |
| 78 | `theorem` | [lineMap_linear](declarations/linemap-linear.md) | 547 | `BLOCKED_NATIVE_ADMISSION` |
| 79 | `theorem` | [lineMap_same_apply](declarations/linemap-same-apply.md) | 552 | `BLOCKED_NATIVE_ADMISSION` |
| 80 | `theorem` | [lineMap_same](declarations/linemap-same.md) | 559 | `BLOCKED_NATIVE_ADMISSION` |
| 81 | `theorem` | [lineMap_apply_zero](declarations/linemap-apply-zero.md) | 564 | `BLOCKED_NATIVE_ADMISSION` |
| 82 | `theorem` | [lineMap_apply_one](declarations/linemap-apply-one.md) | 571 | `BLOCKED_NATIVE_ADMISSION` |
| 83 | `theorem` | [lineMap_eq_lineMap_iff](declarations/linemap-eq-linemap-iff.md) | 577 | `BLOCKED_NATIVE_ADMISSION` |
| 84 | `theorem` | [lineMap_eq_left_iff](declarations/linemap-eq-left-iff.md) | 584 | `BLOCKED_NATIVE_ADMISSION` |
| 85 | `theorem` | [lineMap_eq_right_iff](declarations/linemap-eq-right-iff.md) | 590 | `BLOCKED_NATIVE_ADMISSION` |
| 86 | `theorem` | [lineMap_injective](declarations/linemap-injective.md) | 597 | `BLOCKED_NATIVE_ADMISSION` |
| 87 | `theorem` | [apply_lineMap](declarations/apply-linemap.md) | 605 | `BLOCKED_NATIVE_ADMISSION` |
| 88 | `theorem` | [comp_lineMap](declarations/comp-linemap.md) | 612 | `BLOCKED_NATIVE_ADMISSION` |
| 89 | `theorem` | [fst_lineMap](declarations/fst-linemap.md) | 618 | `BLOCKED_NATIVE_ADMISSION` |
| 90 | `theorem` | [snd_lineMap](declarations/snd-linemap.md) | 623 | `BLOCKED_NATIVE_ADMISSION` |
| 91 | `theorem` | [lineMap_symm](declarations/linemap-symm.md) | 627 | `BLOCKED_NATIVE_ADMISSION` |
| 92 | `theorem` | [lineMap_apply_one_sub](declarations/linemap-apply-one-sub.md) | 633 | `BLOCKED_NATIVE_ADMISSION` |
| 93 | `theorem` | [lineMap_vsub_left](declarations/linemap-vsub-left.md) | 640 | `BLOCKED_NATIVE_ADMISSION` |
| 94 | `theorem` | [left_vsub_lineMap](declarations/left-vsub-linemap.md) | 645 | `BLOCKED_NATIVE_ADMISSION` |
| 95 | `theorem` | [lineMap_vsub_right](declarations/linemap-vsub-right.md) | 650 | `BLOCKED_NATIVE_ADMISSION` |
| 96 | `theorem` | [right_vsub_lineMap](declarations/right-vsub-linemap.md) | 655 | `BLOCKED_NATIVE_ADMISSION` |
| 97 | `theorem` | [lineMap_vadd_lineMap](declarations/linemap-vadd-linemap.md) | 659 | `BLOCKED_NATIVE_ADMISSION` |
| 98 | `theorem` | [lineMap_vsub_lineMap](declarations/linemap-vsub-linemap.md) | 664 | `BLOCKED_NATIVE_ADMISSION` |
| 99 | `theorem` | [decomp](declarations/decomp-source-edition-2.md) | 671 | `BLOCKED_NATIVE_ADMISSION` |
| 100 | `theorem` | [decomp'](declarations/decomp.md) | 680 | `BLOCKED_NATIVE_ADMISSION` |
| 101 | `theorem` | [image_uIcc](declarations/image-uicc.md) | 685 | `BLOCKED_NATIVE_ADMISSION` |
| 102 | `def` | [proj](declarations/proj.md) | 702 | `BLOCKED_NATIVE_ADMISSION` |
| 103 | `theorem` | [proj_apply](declarations/proj-apply.md) | 709 | `BLOCKED_NATIVE_ADMISSION` |
| 104 | `theorem` | [proj_linear](declarations/proj-linear.md) | 714 | `BLOCKED_NATIVE_ADMISSION` |
| 105 | `theorem` | [pi_lineMap_apply](declarations/pi-linemap-apply.md) | 718 | `BLOCKED_NATIVE_ADMISSION` |
| 106 | `instance` | [distribMulAction](declarations/distribmulaction.md) | 742 | `BLOCKED_NATIVE_ADMISSION` |
| 107 | `instance` | [(anonymous)](declarations/instance-source-edition-9.md) | 753 | `BLOCKED_NATIVE_ADMISSION` |
| 108 | `def` | [toConstProdLinearMap](declarations/toconstprodlinearmap.md) | 767 | `BLOCKED_NATIVE_ADMISSION` |
| 109 | `def` | [homothety](declarations/homothety.md) | 792 | `BLOCKED_NATIVE_ADMISSION` |
| 110 | `theorem` | [homothety_def](declarations/homothety-def.md) | 796 | `BLOCKED_NATIVE_ADMISSION` |
| 111 | `theorem` | [homothety_apply](declarations/homothety-apply.md) | 801 | `BLOCKED_NATIVE_ADMISSION` |
| 112 | `theorem` | [homothety_eq_lineMap](declarations/homothety-eq-linemap.md) | 805 | `BLOCKED_NATIVE_ADMISSION` |
| 113 | `theorem` | [homothety_one](declarations/homothety-one.md) | 810 | `BLOCKED_NATIVE_ADMISSION` |
| 114 | `theorem` | [homothety_apply_same](declarations/homothety-apply-same.md) | 816 | `BLOCKED_NATIVE_ADMISSION` |
| 115 | `theorem` | [homothety_mul_apply](declarations/homothety-mul-apply.md) | 820 | `BLOCKED_NATIVE_ADMISSION` |
| 116 | `theorem` | [homothety_mul](declarations/homothety-mul.md) | 825 | `BLOCKED_NATIVE_ADMISSION` |
| 117 | `theorem` | [homothety_zero](declarations/homothety-zero.md) | 831 | `BLOCKED_NATIVE_ADMISSION` |
| 118 | `theorem` | [homothety_add](declarations/homothety-add.md) | 837 | `BLOCKED_NATIVE_ADMISSION` |
| 119 | `def` | [homothetyHom](declarations/homothetyhom.md) | 843 | `BLOCKED_NATIVE_ADMISSION` |
| 120 | `theorem` | [coe_homothetyHom](declarations/coe-homothetyhom.md) | 850 | `BLOCKED_NATIVE_ADMISSION` |
| 121 | `def` | [homothetyAffine](declarations/homothetyaffine.md) | 855 | `BLOCKED_NATIVE_ADMISSION` |
| 122 | `theorem` | [coe_homothetyAffine](declarations/coe-homothetyaffine.md) | 861 | `BLOCKED_NATIVE_ADMISSION` |
| 123 | `theorem` | [Convex.combo_affine_apply](declarations/convex-combo-affine-apply.md) | 875 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=34248fcc3e31fa9be00c67785da41e48ced3626567df45513d2b283adbd15418 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/AffineMap/Variant0024da5ef0792c94ce227b0d6cfe5f0a9510502f1ef46705375791cff07b6618.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
