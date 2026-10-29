# Affine Map Ext Iff

[Complete source index](../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**123 observed declarations and anonymous commands**, 93 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Algebra/LinearAlgebra/AffineMap/Variantf32a9a69679c249e3f6d7dacfab1c61b481327fd81c42de54f742bcc9a01a86a.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `69df7267565349a9cc9f9b5214762b9eb062479c`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineMapExtIff.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `structure` | [AffineMap](declarations/affinemap.md) | 50 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `instance` | [AffineMap.funLike](declarations/affinemap-funlike.md) | 62 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `instance` | [AffineMap.hasCoeToFun](declarations/affinemap-hascoetofun.md) | 74 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `def` | [toAffineMap](declarations/toaffinemap.md) | 86 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [coe_toAffineMap](declarations/coe-toaffinemap.md) | 93 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [toAffineMap_linear](declarations/toaffinemap-linear.md) | 98 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [coe_mk](declarations/coe-mk-source-edition-2.md) | 114 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [toFun_eq_coe](declarations/tofun-eq-coe.md) | 120 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [map_vadd](declarations/map-vadd.md) | 128 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [linearMap_vsub](declarations/linearmap-vsub.md) | 136 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [ext](declarations/ext.md) | 142 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [ext_iff](declarations/ext-iff.md) | 146 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [coeFn_injective](declarations/coefn-injective.md) | 150 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [congr_arg](declarations/congr-arg.md) | 154 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [congr_fun](declarations/congr-fun.md) | 158 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `def` | [const](declarations/const.md) | 165 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [coe_const](declarations/coe-const.md) | 174 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [const_apply](declarations/const-apply.md) | 180 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [const_linear](declarations/const-linear.md) | 183 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [linear_eq_zero_iff_exists_const](declarations/linear-eq-zero-iff-exists-const.md) | 189 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `instance` | [nonempty](declarations/nonempty.md) | 200 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `def` | [mk'](declarations/mk.md) | 207 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [coe_mk'](declarations/coe-mk.md) | 215 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [mk'_linear](declarations/mk-linear.md) | 220 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `instance` | [mulAction](declarations/mulaction.md) | 228 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [coe_smul](declarations/coe-smul.md) | 235 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [smul_linear](declarations/smul-linear.md) | 240 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `instance` | [isCentralScalar](declarations/iscentralscalar.md) | 244 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `instance` | [(anonymous)](declarations/instance-source-edition-9.md) | 250 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `instance` | [(anonymous)](declarations/instance-source-edition-3.md) | 252 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `instance` | [(anonymous)](declarations/instance-source-edition-7.md) | 257 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `instance` | [(anonymous)](declarations/instance-source-edition-2.md) | 262 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [coe_zero](declarations/coe-zero.md) | 266 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [coe_add](declarations/coe-add.md) | 271 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `theorem` | [coe_neg](declarations/coe-neg.md) | 276 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `theorem` | [coe_sub](declarations/coe-sub.md) | 281 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `theorem` | [zero_linear](declarations/zero-linear.md) | 286 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `theorem` | [add_linear](declarations/add-linear.md) | 291 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `theorem` | [sub_linear](declarations/sub-linear.md) | 296 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `theorem` | [neg_linear](declarations/neg-linear.md) | 301 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `instance` | [(anonymous)](declarations/instance.md) | 306 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `instance` | [(anonymous)](declarations/instance-source-edition-6.md) | 312 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `theorem` | [vadd_apply](declarations/vadd-apply.md) | 329 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `theorem` | [vsub_apply](declarations/vsub-apply.md) | 334 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `def` | [fst](declarations/fst.md) | 339 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `theorem` | [coe_fst](declarations/coe-fst.md) | 346 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `theorem` | [fst_linear](declarations/fst-linear.md) | 351 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `def` | [snd](declarations/snd.md) | 356 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `theorem` | [coe_snd](declarations/coe-snd.md) | 363 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `theorem` | [snd_linear](declarations/snd-linear.md) | 368 | `BLOCKED_NATIVE_ADMISSION` |
| 51 | `def` | [id](declarations/id.md) | 374 | `BLOCKED_NATIVE_ADMISSION` |
| 52 | `theorem` | [coe_id](declarations/coe-id.md) | 382 | `BLOCKED_NATIVE_ADMISSION` |
| 53 | `theorem` | [id_linear](declarations/id-linear.md) | 387 | `BLOCKED_NATIVE_ADMISSION` |
| 54 | `theorem` | [id_apply](declarations/id-apply.md) | 394 | `BLOCKED_NATIVE_ADMISSION` |
| 55 | `instance` | [(anonymous)](declarations/instance-source-edition-8.md) | 400 | `BLOCKED_NATIVE_ADMISSION` |
| 56 | `def` | [comp](declarations/comp.md) | 404 | `BLOCKED_NATIVE_ADMISSION` |
| 57 | `theorem` | [coe_comp](declarations/coe-comp.md) | 415 | `BLOCKED_NATIVE_ADMISSION` |
| 58 | `theorem` | [comp_apply](declarations/comp-apply.md) | 420 | `BLOCKED_NATIVE_ADMISSION` |
| 59 | `theorem` | [comp_id](declarations/comp-id.md) | 425 | `BLOCKED_NATIVE_ADMISSION` |
| 60 | `theorem` | [id_comp](declarations/id-comp.md) | 430 | `BLOCKED_NATIVE_ADMISSION` |
| 61 | `theorem` | [comp_assoc](declarations/comp-assoc.md) | 434 | `BLOCKED_NATIVE_ADMISSION` |
| 62 | `instance` | [(anonymous)](declarations/instance-source-edition-5.md) | 439 | `BLOCKED_NATIVE_ADMISSION` |
| 63 | `theorem` | [coe_mul](declarations/coe-mul.md) | 447 | `BLOCKED_NATIVE_ADMISSION` |
| 64 | `theorem` | [coe_one](declarations/coe-one.md) | 452 | `BLOCKED_NATIVE_ADMISSION` |
| 65 | `def` | [linearHom](declarations/linearhom.md) | 458 | `BLOCKED_NATIVE_ADMISSION` |
| 66 | `theorem` | [linear_injective_iff](declarations/linear-injective-iff.md) | 465 | `BLOCKED_NATIVE_ADMISSION` |
| 67 | `theorem` | [linear_surjective_iff](declarations/linear-surjective-iff.md) | 475 | `BLOCKED_NATIVE_ADMISSION` |
| 68 | `theorem` | [linear_bijective_iff](declarations/linear-bijective-iff.md) | 485 | `BLOCKED_NATIVE_ADMISSION` |
| 69 | `theorem` | [image_vsub_image](declarations/image-vsub-image.md) | 490 | `BLOCKED_NATIVE_ADMISSION` |
| 70 | `def` | [lineMap](declarations/linemap.md) | 506 | `BLOCKED_NATIVE_ADMISSION` |
| 71 | `theorem` | [coe_lineMap](declarations/coe-linemap.md) | 510 | `BLOCKED_NATIVE_ADMISSION` |
| 72 | `theorem` | [lineMap_apply](declarations/linemap-apply.md) | 514 | `BLOCKED_NATIVE_ADMISSION` |
| 73 | `theorem` | [lineMap_apply_module'](declarations/linemap-apply-module-source-edition-2.md) | 518 | `BLOCKED_NATIVE_ADMISSION` |
| 74 | `theorem` | [lineMap_apply_module](declarations/linemap-apply-module.md) | 522 | `BLOCKED_NATIVE_ADMISSION` |
| 75 | `theorem` | [lineMap_apply_ring'](declarations/linemap-apply-ring.md) | 526 | `BLOCKED_NATIVE_ADMISSION` |
| 76 | `theorem` | [lineMap_apply_ring](declarations/linemap-apply-ring-source-edition-2.md) | 530 | `BLOCKED_NATIVE_ADMISSION` |
| 77 | `theorem` | [lineMap_vadd_apply](declarations/linemap-vadd-apply.md) | 534 | `BLOCKED_NATIVE_ADMISSION` |
| 78 | `theorem` | [lineMap_linear](declarations/linemap-linear.md) | 539 | `BLOCKED_NATIVE_ADMISSION` |
| 79 | `theorem` | [lineMap_same_apply](declarations/linemap-same-apply.md) | 544 | `BLOCKED_NATIVE_ADMISSION` |
| 80 | `theorem` | [lineMap_same](declarations/linemap-same.md) | 551 | `BLOCKED_NATIVE_ADMISSION` |
| 81 | `theorem` | [lineMap_apply_zero](declarations/linemap-apply-zero.md) | 556 | `BLOCKED_NATIVE_ADMISSION` |
| 82 | `theorem` | [lineMap_apply_one](declarations/linemap-apply-one.md) | 563 | `BLOCKED_NATIVE_ADMISSION` |
| 83 | `theorem` | [lineMap_eq_lineMap_iff](declarations/linemap-eq-linemap-iff.md) | 569 | `BLOCKED_NATIVE_ADMISSION` |
| 84 | `theorem` | [lineMap_eq_left_iff](declarations/linemap-eq-left-iff.md) | 576 | `BLOCKED_NATIVE_ADMISSION` |
| 85 | `theorem` | [lineMap_eq_right_iff](declarations/linemap-eq-right-iff.md) | 582 | `BLOCKED_NATIVE_ADMISSION` |
| 86 | `theorem` | [lineMap_injective](declarations/linemap-injective.md) | 589 | `BLOCKED_NATIVE_ADMISSION` |
| 87 | `theorem` | [apply_lineMap](declarations/apply-linemap.md) | 597 | `BLOCKED_NATIVE_ADMISSION` |
| 88 | `theorem` | [comp_lineMap](declarations/comp-linemap.md) | 604 | `BLOCKED_NATIVE_ADMISSION` |
| 89 | `theorem` | [fst_lineMap](declarations/fst-linemap.md) | 610 | `BLOCKED_NATIVE_ADMISSION` |
| 90 | `theorem` | [snd_lineMap](declarations/snd-linemap.md) | 615 | `BLOCKED_NATIVE_ADMISSION` |
| 91 | `theorem` | [lineMap_symm](declarations/linemap-symm.md) | 619 | `BLOCKED_NATIVE_ADMISSION` |
| 92 | `theorem` | [lineMap_apply_one_sub](declarations/linemap-apply-one-sub.md) | 625 | `BLOCKED_NATIVE_ADMISSION` |
| 93 | `theorem` | [lineMap_vsub_left](declarations/linemap-vsub-left.md) | 632 | `BLOCKED_NATIVE_ADMISSION` |
| 94 | `theorem` | [left_vsub_lineMap](declarations/left-vsub-linemap.md) | 637 | `BLOCKED_NATIVE_ADMISSION` |
| 95 | `theorem` | [lineMap_vsub_right](declarations/linemap-vsub-right.md) | 642 | `BLOCKED_NATIVE_ADMISSION` |
| 96 | `theorem` | [right_vsub_lineMap](declarations/right-vsub-linemap.md) | 647 | `BLOCKED_NATIVE_ADMISSION` |
| 97 | `theorem` | [lineMap_vadd_lineMap](declarations/linemap-vadd-linemap.md) | 651 | `BLOCKED_NATIVE_ADMISSION` |
| 98 | `theorem` | [lineMap_vsub_lineMap](declarations/linemap-vsub-linemap.md) | 656 | `BLOCKED_NATIVE_ADMISSION` |
| 99 | `theorem` | [decomp](declarations/decomp-source-edition-2.md) | 663 | `BLOCKED_NATIVE_ADMISSION` |
| 100 | `theorem` | [decomp'](declarations/decomp.md) | 672 | `BLOCKED_NATIVE_ADMISSION` |
| 101 | `theorem` | [image_uIcc](declarations/image-uicc.md) | 677 | `BLOCKED_NATIVE_ADMISSION` |
| 102 | `def` | [proj](declarations/proj.md) | 694 | `BLOCKED_NATIVE_ADMISSION` |
| 103 | `theorem` | [proj_apply](declarations/proj-apply.md) | 701 | `BLOCKED_NATIVE_ADMISSION` |
| 104 | `theorem` | [proj_linear](declarations/proj-linear.md) | 706 | `BLOCKED_NATIVE_ADMISSION` |
| 105 | `theorem` | [pi_lineMap_apply](declarations/pi-linemap-apply.md) | 710 | `BLOCKED_NATIVE_ADMISSION` |
| 106 | `instance` | [distribMulAction](declarations/distribmulaction.md) | 734 | `BLOCKED_NATIVE_ADMISSION` |
| 107 | `instance` | [(anonymous)](declarations/instance-source-edition-4.md) | 745 | `BLOCKED_NATIVE_ADMISSION` |
| 108 | `def` | [toConstProdLinearMap](declarations/toconstprodlinearmap.md) | 759 | `BLOCKED_NATIVE_ADMISSION` |
| 109 | `def` | [homothety](declarations/homothety.md) | 784 | `BLOCKED_NATIVE_ADMISSION` |
| 110 | `theorem` | [homothety_def](declarations/homothety-def.md) | 788 | `BLOCKED_NATIVE_ADMISSION` |
| 111 | `theorem` | [homothety_apply](declarations/homothety-apply.md) | 793 | `BLOCKED_NATIVE_ADMISSION` |
| 112 | `theorem` | [homothety_eq_lineMap](declarations/homothety-eq-linemap.md) | 797 | `BLOCKED_NATIVE_ADMISSION` |
| 113 | `theorem` | [homothety_one](declarations/homothety-one.md) | 802 | `BLOCKED_NATIVE_ADMISSION` |
| 114 | `theorem` | [homothety_apply_same](declarations/homothety-apply-same.md) | 808 | `BLOCKED_NATIVE_ADMISSION` |
| 115 | `theorem` | [homothety_mul_apply](declarations/homothety-mul-apply.md) | 812 | `BLOCKED_NATIVE_ADMISSION` |
| 116 | `theorem` | [homothety_mul](declarations/homothety-mul.md) | 817 | `BLOCKED_NATIVE_ADMISSION` |
| 117 | `theorem` | [homothety_zero](declarations/homothety-zero.md) | 823 | `BLOCKED_NATIVE_ADMISSION` |
| 118 | `theorem` | [homothety_add](declarations/homothety-add.md) | 829 | `BLOCKED_NATIVE_ADMISSION` |
| 119 | `def` | [homothetyHom](declarations/homothetyhom.md) | 835 | `BLOCKED_NATIVE_ADMISSION` |
| 120 | `theorem` | [coe_homothetyHom](declarations/coe-homothetyhom.md) | 842 | `BLOCKED_NATIVE_ADMISSION` |
| 121 | `def` | [homothetyAffine](declarations/homothetyaffine.md) | 847 | `BLOCKED_NATIVE_ADMISSION` |
| 122 | `theorem` | [coe_homothetyAffine](declarations/coe-homothetyaffine.md) | 853 | `BLOCKED_NATIVE_ADMISSION` |
| 123 | `theorem` | [Convex.combo_affine_apply](declarations/convex-combo-affine-apply.md) | 867 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=bc4856ff322e6618c0972ed8838f001308b9755d79815e62dcdaad07938d4ac5 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/AffineMap/Variantf32a9a69679c249e3f6d7dacfab1c61b481327fd81c42de54f742bcc9a01a86a.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
