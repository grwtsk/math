# Tensor Product Namespaced Public

[Complete source index](../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**188 observed declarations and anonymous commands**, 168 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Analysis/FunctionalAnalysis/TensorProduct/Variant07fa84ab8f9831406977aeb3b0dc0946731b97d47b5c468e4ff693fe69d69539.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `17f075855009ed0bf9e9d2410af4603666bebdf1`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../_verification/specifications/FunctionalAnalysis/TensorProductNamespacedPublic.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `instance` | [instInner](declarations/instinner.md) | 70 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `lemma` | [inner_def](declarations/inner-def.md) | 73 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `theorem` | [inner_tmul](declarations/inner-tmul.md) | 78 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `lemma` | [inner_map_map](declarations/inner-map-map.md) | 81 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `lemma` | [inner_mapIncl_mapIncl](declarations/inner-mapincl-mapincl.md) | 86 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [inner_self](declarations/inner-self.md) | 95 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [inner_definite](declarations/inner-definite.md) | 107 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [re_inner_self_nonneg](declarations/re-inner-self-nonneg.md) | 126 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `instance` | [instNormedAddCommGroup](declarations/instnormedaddcommgroup.md) | 142 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `instance` | [instInnerProductSpace](declarations/instinnerproductspace.md) | 153 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [norm_tmul](declarations/norm-tmul.md) | 155 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [nnnorm_tmul](declarations/nnnorm-tmul.md) | 159 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [enorm_tmul](declarations/enorm-tmul.md) | 162 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [dist_tmul_le](declarations/dist-tmul-le.md) | 165 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [nndist_tmul_le](declarations/nndist-tmul-le.md) | 169 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [edist_tmul_le](declarations/edist-tmul-le.md) | 173 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [Tensor Product Namespaced Public](declarations/inner-tmul-eq.md) | 179 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [ext_iff_inner_right](declarations/ext-iff-inner-right.md) | 184 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [ext_iff_inner_left](declarations/ext-iff-inner-left.md) | 189 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [ext_iff_inner_right_threefold](declarations/ext-iff-inner-right-threefold.md) | 197 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [ext_iff_inner_left_threefold](declarations/ext-iff-inner-left-threefold.md) | 204 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `def` | [mkL](declarations/mkl.md) | 212 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `lemma` | [coe_mkL_apply](declarations/coe-mkl-apply.md) | 214 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `lemma` | [toLinearMap₁₂_mkL](declarations/tolinearmap-mkl.md) | 215 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `lemma` | [toLinearMap_mkL_apply](declarations/tolinearmap-mkl-apply.md) | 216 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `lemma` | [mkL_apply_apply](declarations/mkl-apply-apply.md) | 217 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `lemma` | [continuous_tmul](declarations/continuous-tmul.md) | 219 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `def` | [mapIsometry](declarations/mapisometry.md) | 226 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `lemma` | [mapIsometry_apply](declarations/mapisometry-apply.md) | 230 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `lemma` | [toLinearMap_mapIsometry](declarations/tolinearmap-mapisometry.md) | 233 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `lemma` | [norm_map](declarations/norm-map.md) | 236 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `lemma` | [nnnorm_map](declarations/nnnorm-map.md) | 238 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `lemma` | [enorm_map](declarations/enorm-map.md) | 240 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `lemma` | [mapIsometry_id_id](declarations/mapisometry-id-id.md) | 243 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `def` | [Tensor Product Namespaced Public](declarations/ltensor-source-line-248-occurrence-2.md) | 248 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `def` | [Tensor Product Namespaced Public](declarations/rtensor-source-line-253-occurrence-2.md) | 253 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `lemma` | [Tensor Product Namespaced Public](declarations/ltensor-def.md) | 256 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `lemma` | [Tensor Product Namespaced Public](declarations/rtensor-def.md) | 259 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `lemma` | [Tensor Product Namespaced Public](declarations/tolinearmap-ltensor-source-line-262-occurrence-2.md) | 262 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `lemma` | [Tensor Product Namespaced Public](declarations/tolinearmap-rtensor-source-line-265-occurrence-2.md) | 265 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `lemma` | [Tensor Product Namespaced Public](declarations/ltensor-apply-source-line-268-occurrence-2.md) | 268 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `lemma` | [Tensor Product Namespaced Public](declarations/rtensor-apply-source-line-271-occurrence-2.md) | 271 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `def` | [congrIsometry](declarations/congrisometry.md) | 277 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `lemma` | [congrIsometry_apply](declarations/congrisometry-apply.md) | 282 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `lemma` | [congrIsometry_symm](declarations/congrisometry-symm.md) | 285 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `lemma` | [toLinearEquiv_congrIsometry](declarations/tolinearequiv-congrisometry.md) | 288 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `lemma` | [congrIsometry_refl_refl](declarations/congrisometry-refl-refl.md) | 291 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `def` | [Tensor Product Namespaced Public](declarations/ltensor-source-line-297-occurrence-2.md) | 297 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `def` | [Tensor Product Namespaced Public](declarations/rtensor-source-line-302-occurrence-2.md) | 302 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `lemma` | [Tensor Product Namespaced Public](declarations/ltensor-def-source-line-305-occurrence-2.md) | 305 | `BLOCKED_NATIVE_ADMISSION` |
| 51 | `lemma` | [Tensor Product Namespaced Public](declarations/rtensor-def-source-line-308-occurrence-2.md) | 308 | `BLOCKED_NATIVE_ADMISSION` |
| 52 | `lemma` | [Tensor Product Namespaced Public](declarations/symm-ltensor.md) | 311 | `BLOCKED_NATIVE_ADMISSION` |
| 53 | `lemma` | [Tensor Product Namespaced Public](declarations/symm-rtensor.md) | 314 | `BLOCKED_NATIVE_ADMISSION` |
| 54 | `lemma` | [Tensor Product Namespaced Public](declarations/tolinearequiv-ltensor.md) | 317 | `BLOCKED_NATIVE_ADMISSION` |
| 55 | `lemma` | [Tensor Product Namespaced Public](declarations/tolinearisometry-ltensor.md) | 320 | `BLOCKED_NATIVE_ADMISSION` |
| 56 | `lemma` | [Tensor Product Namespaced Public](declarations/tolinearequiv-rtensor.md) | 323 | `BLOCKED_NATIVE_ADMISSION` |
| 57 | `lemma` | [Tensor Product Namespaced Public](declarations/tolinearisometry-rtensor.md) | 326 | `BLOCKED_NATIVE_ADMISSION` |
| 58 | `lemma` | [Tensor Product Namespaced Public](declarations/ltensor-apply-source-line-329-occurrence-2.md) | 329 | `BLOCKED_NATIVE_ADMISSION` |
| 59 | `lemma` | [Tensor Product Namespaced Public](declarations/rtensor-apply-source-line-332-occurrence-2.md) | 332 | `BLOCKED_NATIVE_ADMISSION` |
| 60 | `def` | [mapInclIsometry](declarations/mapinclisometry.md) | 336 | `BLOCKED_NATIVE_ADMISSION` |
| 61 | `lemma` | [mapInclIsometry_apply](declarations/mapinclisometry-apply.md) | 340 | `BLOCKED_NATIVE_ADMISSION` |
| 62 | `lemma` | [toLinearMap_mapInclIsometry](declarations/tolinearmap-mapinclisometry.md) | 343 | `BLOCKED_NATIVE_ADMISSION` |
| 63 | `theorem` | [inner_comm_comm](declarations/inner-comm-comm.md) | 346 | `BLOCKED_NATIVE_ADMISSION` |
| 64 | `def` | [commIsometry](declarations/commisometry.md) | 355 | `BLOCKED_NATIVE_ADMISSION` |
| 65 | `lemma` | [commIsometry_apply](declarations/commisometry-apply.md) | 358 | `BLOCKED_NATIVE_ADMISSION` |
| 66 | `lemma` | [commIsometry_symm](declarations/commisometry-symm.md) | 360 | `BLOCKED_NATIVE_ADMISSION` |
| 67 | `lemma` | [toLinearEquiv_commIsometry](declarations/tolinearequiv-commisometry.md) | 363 | `BLOCKED_NATIVE_ADMISSION` |
| 68 | `lemma` | [norm_comm](declarations/norm-comm.md) | 366 | `BLOCKED_NATIVE_ADMISSION` |
| 69 | `lemma` | [nnnorm_comm](declarations/nnnorm-comm.md) | 368 | `BLOCKED_NATIVE_ADMISSION` |
| 70 | `lemma` | [enorm_comm](declarations/enorm-comm.md) | 370 | `BLOCKED_NATIVE_ADMISSION` |
| 71 | `theorem` | [inner_lid_lid](declarations/inner-lid-lid.md) | 373 | `BLOCKED_NATIVE_ADMISSION` |
| 72 | `def` | [lidIsometry](declarations/lidisometry.md) | 382 | `BLOCKED_NATIVE_ADMISSION` |
| 73 | `lemma` | [toLinearEquiv_lidIsometry](declarations/tolinearequiv-lidisometry.md) | 385 | `BLOCKED_NATIVE_ADMISSION` |
| 74 | `lemma` | [toContinuousLinearMap_symm_lidIsometry](declarations/tocontinuouslinearmap-symm-lidisometry.md) | 388 | `BLOCKED_NATIVE_ADMISSION` |
| 75 | `lemma` | [lidIsometry_apply](declarations/lidisometry-apply.md) | 391 | `BLOCKED_NATIVE_ADMISSION` |
| 76 | `lemma` | [lidIsometry_symm_apply](declarations/lidisometry-symm-apply.md) | 392 | `BLOCKED_NATIVE_ADMISSION` |
| 77 | `lemma` | [norm_lid](declarations/norm-lid.md) | 394 | `BLOCKED_NATIVE_ADMISSION` |
| 78 | `lemma` | [nnnorm_lid](declarations/nnnorm-lid.md) | 395 | `BLOCKED_NATIVE_ADMISSION` |
| 79 | `lemma` | [enorm_lid](declarations/enorm-lid.md) | 397 | `BLOCKED_NATIVE_ADMISSION` |
| 80 | `theorem` | [inner_rid_rid](declarations/inner-rid-rid.md) | 400 | `BLOCKED_NATIVE_ADMISSION` |
| 81 | `def` | [ridIsometry](declarations/ridisometry.md) | 406 | `BLOCKED_NATIVE_ADMISSION` |
| 82 | `lemma` | [toLinearEquiv_ridIsometry](declarations/tolinearequiv-ridisometry.md) | 409 | `BLOCKED_NATIVE_ADMISSION` |
| 83 | `lemma` | [toContinuousLinearMap_symm_ridIsometry](declarations/tocontinuouslinearmap-symm-ridisometry.md) | 412 | `BLOCKED_NATIVE_ADMISSION` |
| 84 | `lemma` | [ridIsometry_apply](declarations/ridisometry-apply.md) | 415 | `BLOCKED_NATIVE_ADMISSION` |
| 85 | `lemma` | [symm_ridIsometry_apply](declarations/symm-ridisometry-apply.md) | 416 | `BLOCKED_NATIVE_ADMISSION` |
| 86 | `lemma` | [lidIsometry_eq_ridIsometry](declarations/lidisometry-eq-ridisometry.md) | 418 | `BLOCKED_NATIVE_ADMISSION` |
| 87 | `lemma` | [norm_rid](declarations/norm-rid.md) | 420 | `BLOCKED_NATIVE_ADMISSION` |
| 88 | `lemma` | [nnnorm_rid](declarations/nnnorm-rid.md) | 421 | `BLOCKED_NATIVE_ADMISSION` |
| 89 | `lemma` | [enorm_rid](declarations/enorm-rid.md) | 423 | `BLOCKED_NATIVE_ADMISSION` |
| 90 | `lemma` | [commIsometry_trans_lidIsometry](declarations/commisometry-trans-lidisometry.md) | 426 | `BLOCKED_NATIVE_ADMISSION` |
| 91 | `lemma` | [commIsometry_trans_ridIsometry](declarations/commisometry-trans-ridisometry.md) | 429 | `BLOCKED_NATIVE_ADMISSION` |
| 92 | `theorem` | [inner_assoc_assoc](declarations/inner-assoc-assoc.md) | 432 | `BLOCKED_NATIVE_ADMISSION` |
| 93 | `def` | [assocIsometry](declarations/associsometry.md) | 445 | `BLOCKED_NATIVE_ADMISSION` |
| 94 | `lemma` | [assocIsometry_apply](declarations/associsometry-apply.md) | 448 | `BLOCKED_NATIVE_ADMISSION` |
| 95 | `lemma` | [assocIsometry_symm_apply](declarations/associsometry-symm-apply.md) | 451 | `BLOCKED_NATIVE_ADMISSION` |
| 96 | `lemma` | [toLinearEquiv_assocIsometry](declarations/tolinearequiv-associsometry.md) | 454 | `BLOCKED_NATIVE_ADMISSION` |
| 97 | `lemma` | [norm_assoc](declarations/norm-assoc.md) | 457 | `BLOCKED_NATIVE_ADMISSION` |
| 98 | `lemma` | [nnnorm_assoc](declarations/nnnorm-assoc.md) | 460 | `BLOCKED_NATIVE_ADMISSION` |
| 99 | `lemma` | [enorm_assoc](declarations/enorm-assoc.md) | 463 | `BLOCKED_NATIVE_ADMISSION` |
| 100 | `def` | [rTensor](declarations/rtensor.md) | 478 | `BLOCKED_NATIVE_ADMISSION` |
| 101 | `lemma` | [rTensor_apply](declarations/rtensor-apply.md) | 504 | `BLOCKED_NATIVE_ADMISSION` |
| 102 | `lemma` | [rTensor_tmul](declarations/rtensor-tmul.md) | 508 | `BLOCKED_NATIVE_ADMISSION` |
| 103 | `lemma` | [toLinearMap_rTensor](declarations/tolinearmap-rtensor.md) | 510 | `BLOCKED_NATIVE_ADMISSION` |
| 104 | `lemma` | [Tensor Product Namespaced Public](declarations/tocontinuouslinearmap-rtensor.md) | 513 | `BLOCKED_NATIVE_ADMISSION` |
| 105 | `theorem` | [norm_rTensor_le](declarations/norm-rtensor-le.md) | 516 | `BLOCKED_NATIVE_ADMISSION` |
| 106 | `lemma` | [rTensor_add](declarations/rtensor-add.md) | 519 | `BLOCKED_NATIVE_ADMISSION` |
| 107 | `lemma` | [rTensor_smul](declarations/rtensor-smul.md) | 522 | `BLOCKED_NATIVE_ADMISSION` |
| 108 | `lemma` | [rTensor_id](declarations/rtensor-id.md) | 525 | `BLOCKED_NATIVE_ADMISSION` |
| 109 | `lemma` | [rTensor_one](declarations/rtensor-one.md) | 526 | `BLOCKED_NATIVE_ADMISSION` |
| 110 | `lemma` | [rTensor_zero](declarations/rtensor-zero.md) | 527 | `BLOCKED_NATIVE_ADMISSION` |
| 111 | `lemma` | [rTensor_neg](declarations/rtensor-neg.md) | 528 | `BLOCKED_NATIVE_ADMISSION` |
| 112 | `lemma` | [rTensor_sub](declarations/rtensor-sub.md) | 530 | `BLOCKED_NATIVE_ADMISSION` |
| 113 | `lemma` | [rTensor_comp](declarations/rtensor-comp.md) | 533 | `BLOCKED_NATIVE_ADMISSION` |
| 114 | `lemma` | [rTensor_mul](declarations/rtensor-mul.md) | 536 | `BLOCKED_NATIVE_ADMISSION` |
| 115 | `lemma` | [rTensor_pow](declarations/rtensor-pow.md) | 539 | `BLOCKED_NATIVE_ADMISSION` |
| 116 | `def` | [lTensor](declarations/ltensor.md) | 544 | `BLOCKED_NATIVE_ADMISSION` |
| 117 | `lemma` | [lTensor_apply](declarations/ltensor-apply.md) | 548 | `BLOCKED_NATIVE_ADMISSION` |
| 118 | `lemma` | [lTensor_tmul](declarations/ltensor-tmul.md) | 552 | `BLOCKED_NATIVE_ADMISSION` |
| 119 | `theorem` | [commIsometry_comp_lTensor_comp_commIsometry_eq](declarations/commisometry-comp-ltensor-comp-commisometry-eq.md) | 554 | `BLOCKED_NATIVE_ADMISSION` |
| 120 | `theorem` | [commIsometry_comp_rTensor_comp_commIsometry_eq](declarations/commisometry-comp-rtensor-comp-commisometry-eq.md) | 558 | `BLOCKED_NATIVE_ADMISSION` |
| 121 | `theorem` | [lTensor_comp_commIsometry](declarations/ltensor-comp-commisometry.md) | 562 | `BLOCKED_NATIVE_ADMISSION` |
| 122 | `theorem` | [rTensor_comp_commIsometry](declarations/rtensor-comp-commisometry.md) | 566 | `BLOCKED_NATIVE_ADMISSION` |
| 123 | `lemma` | [toLinearMap_lTensor](declarations/tolinearmap-ltensor.md) | 570 | `BLOCKED_NATIVE_ADMISSION` |
| 124 | `lemma` | [Tensor Product Namespaced Public](declarations/tocontinuouslinearmap-ltensor.md) | 573 | `BLOCKED_NATIVE_ADMISSION` |
| 125 | `theorem` | [norm_lTensor_le](declarations/norm-ltensor-le.md) | 576 | `BLOCKED_NATIVE_ADMISSION` |
| 126 | `lemma` | [lTensor_add](declarations/ltensor-add.md) | 581 | `BLOCKED_NATIVE_ADMISSION` |
| 127 | `lemma` | [lTensor_smul](declarations/ltensor-smul.md) | 584 | `BLOCKED_NATIVE_ADMISSION` |
| 128 | `lemma` | [lTensor_id](declarations/ltensor-id.md) | 587 | `BLOCKED_NATIVE_ADMISSION` |
| 129 | `lemma` | [lTensor_one](declarations/ltensor-one.md) | 588 | `BLOCKED_NATIVE_ADMISSION` |
| 130 | `lemma` | [lTensor_zero](declarations/ltensor-zero.md) | 589 | `BLOCKED_NATIVE_ADMISSION` |
| 131 | `lemma` | [lTensor_neg](declarations/ltensor-neg.md) | 590 | `BLOCKED_NATIVE_ADMISSION` |
| 132 | `lemma` | [lTensor_sub](declarations/ltensor-sub.md) | 592 | `BLOCKED_NATIVE_ADMISSION` |
| 133 | `lemma` | [lTensor_comp](declarations/ltensor-comp.md) | 595 | `BLOCKED_NATIVE_ADMISSION` |
| 134 | `lemma` | [lTensor_mul](declarations/ltensor-mul.md) | 598 | `BLOCKED_NATIVE_ADMISSION` |
| 135 | `lemma` | [lTensor_pow](declarations/ltensor-pow.md) | 601 | `BLOCKED_NATIVE_ADMISSION` |
| 136 | `def` | [mapL](declarations/mapl.md) | 610 | `BLOCKED_NATIVE_ADMISSION` |
| 137 | `theorem` | [norm_mapL_le](declarations/norm-mapl-le.md) | 613 | `BLOCKED_NATIVE_ADMISSION` |
| 138 | `lemma` | [mapL_apply](declarations/mapl-apply.md) | 617 | `BLOCKED_NATIVE_ADMISSION` |
| 139 | `lemma` | [mapL_tmul](declarations/mapl-tmul.md) | 621 | `BLOCKED_NATIVE_ADMISSION` |
| 140 | `lemma` | [mapL_zero_left](declarations/mapl-zero-left.md) | 624 | `BLOCKED_NATIVE_ADMISSION` |
| 141 | `lemma` | [mapL_zero_right](declarations/mapl-zero-right.md) | 625 | `BLOCKED_NATIVE_ADMISSION` |
| 142 | `lemma` | [mapL_id_id](declarations/mapl-id-id.md) | 626 | `BLOCKED_NATIVE_ADMISSION` |
| 143 | `lemma` | [mapL_comp_commIsometry](declarations/mapl-comp-commisometry.md) | 628 | `BLOCKED_NATIVE_ADMISSION` |
| 144 | `lemma` | [mapL_add_left](declarations/mapl-add-left.md) | 631 | `BLOCKED_NATIVE_ADMISSION` |
| 145 | `lemma` | [mapL_add_right](declarations/mapl-add-right.md) | 634 | `BLOCKED_NATIVE_ADMISSION` |
| 146 | `lemma` | [mapL_smul_left](declarations/mapl-smul-left.md) | 637 | `BLOCKED_NATIVE_ADMISSION` |
| 147 | `lemma` | [mapL_smul_right](declarations/mapl-smul-right.md) | 640 | `BLOCKED_NATIVE_ADMISSION` |
| 148 | `lemma` | [toLinearMap_mapL](declarations/tolinearmap-mapl.md) | 643 | `BLOCKED_NATIVE_ADMISSION` |
| 149 | `lemma` | [toContinuousLinearMap_mapIsometry](declarations/tocontinuouslinearmap-mapisometry.md) | 646 | `BLOCKED_NATIVE_ADMISSION` |
| 150 | `lemma` | [mapL_comp](declarations/mapl-comp.md) | 656 | `BLOCKED_NATIVE_ADMISSION` |
| 151 | `lemma` | [mapL_mul](declarations/mapl-mul.md) | 659 | `BLOCKED_NATIVE_ADMISSION` |
| 152 | `lemma` | [mapL_pow](declarations/mapl-pow.md) | 662 | `BLOCKED_NATIVE_ADMISSION` |
| 153 | `lemma` | [Tensor Product Namespaced Public](declarations/mapl-comp-rtensor.md) | 665 | `BLOCKED_NATIVE_ADMISSION` |
| 154 | `lemma` | [Tensor Product Namespaced Public](declarations/mapl-comp-ltensor.md) | 668 | `BLOCKED_NATIVE_ADMISSION` |
| 155 | `lemma` | [Tensor Product Namespaced Public](declarations/rtensor-comp-mapl.md) | 671 | `BLOCKED_NATIVE_ADMISSION` |
| 156 | `lemma` | [Tensor Product Namespaced Public](declarations/ltensor-comp-mapl.md) | 674 | `BLOCKED_NATIVE_ADMISSION` |
| 157 | `theorem` | [Tensor Product Namespaced Public](declarations/rtensor-eq-mapl.md) | 680 | `BLOCKED_NATIVE_ADMISSION` |
| 158 | `theorem` | [Tensor Product Namespaced Public](declarations/ltensor-eq-mapl.md) | 684 | `BLOCKED_NATIVE_ADMISSION` |
| 159 | `lemma` | [Tensor Product Namespaced Public](declarations/ltensor-comp-rtensor.md) | 687 | `BLOCKED_NATIVE_ADMISSION` |
| 160 | `lemma` | [Tensor Product Namespaced Public](declarations/rtensor-comp-ltensor.md) | 690 | `BLOCKED_NATIVE_ADMISSION` |
| 161 | `theorem` | [adjoint_mapL](declarations/adjoint-mapl.md) | 693 | `BLOCKED_NATIVE_ADMISSION` |
| 162 | `theorem` | [Tensor Product Namespaced Public](declarations/adjoint-rtensor.md) | 701 | `BLOCKED_NATIVE_ADMISSION` |
| 163 | `theorem` | [Tensor Product Namespaced Public](declarations/adjoint-ltensor.md) | 707 | `BLOCKED_NATIVE_ADMISSION` |
| 164 | `theorem` | [adjoint_map](declarations/adjoint-map.md) | 713 | `BLOCKED_NATIVE_ADMISSION` |
| 165 | `theorem` | [Tensor Product Namespaced Public](declarations/adjoint-rtensor-source-line-718-occurrence-2.md) | 718 | `BLOCKED_NATIVE_ADMISSION` |
| 166 | `theorem` | [Tensor Product Namespaced Public](declarations/adjoint-ltensor-source-line-722-occurrence-2.md) | 722 | `BLOCKED_NATIVE_ADMISSION` |
| 167 | `def` | [congrL](declarations/congrl.md) | 728 | `BLOCKED_NATIVE_ADMISSION` |
| 168 | `theorem` | [congrL_tmul](declarations/congrl-tmul.md) | 734 | `BLOCKED_NATIVE_ADMISSION` |
| 169 | `theorem` | [symm_congrL_tmul](declarations/symm-congrl-tmul.md) | 738 | `BLOCKED_NATIVE_ADMISSION` |
| 170 | `theorem` | [symm_congrL](declarations/symm-congrl.md) | 743 | `BLOCKED_NATIVE_ADMISSION` |
| 171 | `lemma` | [toContinuousLinearMap_congrL](declarations/tocontinuouslinearmap-congrl.md) | 748 | `BLOCKED_NATIVE_ADMISSION` |
| 172 | `lemma` | [toLinearEquiv_congrL](declarations/tolinearequiv-congrl.md) | 753 | `BLOCKED_NATIVE_ADMISSION` |
| 173 | `theorem` | [congrL_refl_refl](declarations/congrl-refl-refl.md) | 758 | `BLOCKED_NATIVE_ADMISSION` |
| 174 | `theorem` | [congrL_trans_trans](declarations/congrl-trans-trans.md) | 765 | `BLOCKED_NATIVE_ADMISSION` |
| 175 | `theorem` | [congrL_congrL](declarations/congrl-congrl.md) | 769 | `BLOCKED_NATIVE_ADMISSION` |
| 176 | `theorem` | [congrL_mul_mul](declarations/congrl-mul-mul.md) | 775 | `BLOCKED_NATIVE_ADMISSION` |
| 177 | `theorem` | [congrL_pow](declarations/congrl-pow.md) | 779 | `BLOCKED_NATIVE_ADMISSION` |
| 178 | `theorem` | [congrL_zpow](declarations/congrl-zpow.md) | 785 | `BLOCKED_NATIVE_ADMISSION` |
| 179 | `theorem` | [ext_iff_inner_right_threefold'](declarations/ext-iff-inner-right-threefold-source-edition-2.md) | 794 | `BLOCKED_NATIVE_ADMISSION` |
| 180 | `theorem` | [ext_iff_inner_left_threefold'](declarations/ext-iff-inner-left-threefold-source-edition-2.md) | 804 | `BLOCKED_NATIVE_ADMISSION` |
| 181 | `theorem` | [Orthonormal.tmul](declarations/orthonormal-tmul.md) | 817 | `BLOCKED_NATIVE_ADMISSION` |
| 182 | `theorem` | [Orthonormal.basisTensorProduct](declarations/orthonormal-basistensorproduct.md) | 826 | `BLOCKED_NATIVE_ADMISSION` |
| 183 | `def` | [tensorProduct](declarations/tensorproduct.md) | 836 | `BLOCKED_NATIVE_ADMISSION` |
| 184 | `lemma` | [tensorProduct_apply](declarations/tensorproduct-apply-source-edition-2.md) | 843 | `BLOCKED_NATIVE_ADMISSION` |
| 185 | `lemma` | [tensorProduct_apply'](declarations/tensorproduct-apply.md) | 847 | `BLOCKED_NATIVE_ADMISSION` |
| 186 | `lemma` | [tensorProduct_repr_tmul_apply](declarations/tensorproduct-repr-tmul-apply-source-edition-2.md) | 852 | `BLOCKED_NATIVE_ADMISSION` |
| 187 | `lemma` | [tensorProduct_repr_tmul_apply'](declarations/tensorproduct-repr-tmul-apply.md) | 857 | `BLOCKED_NATIVE_ADMISSION` |
| 188 | `lemma` | [toBasis_tensorProduct](declarations/tobasis-tensorproduct.md) | 863 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=2c2eb1034aecc984c5fa106036a373fefee5da37d7076b0b909e3369f42b5727 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/FunctionalAnalysis/TensorProduct/Variant07fa84ab8f9831406977aeb3b0dc0946731b97d47b5c468e4ff693fe69d69539.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
