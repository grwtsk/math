# Tensor Product Tower Public

[Complete source index](../../../../complete-source-index.md) · [Up one directory](../../../../complete-source-index.md) · [Full source](source.md)

**128 observed declarations and anonymous commands**, 102 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Algebra/LinearAlgebra/Tower/Varianta0b9d030832b817e0be4626b899d33a57b25bf543c2e6226e40d0c770b5ef7b5.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `b09363a705b029ed1fc095ddc8f85f133e5f7099`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../_verification/specifications/LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MultilinearAlgebraTensorCalculus/TensorProductTowerPublic.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `theorem` | [smul_eq_lsmul_rTensor](declarations/smul-eq-lsmul-rtensor.md) | 75 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `def` | [curry](declarations/curry.md) | 83 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `theorem` | [restrictScalars_curry](declarations/restrictscalars-curry.md) | 88 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `theorem` | [curry_injective](declarations/curry-injective.md) | 97 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [ext](declarations/ext.md) | 102 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `def` | [lift](declarations/lift.md) | 110 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [lift_apply](declarations/lift-apply.md) | 124 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [lift_tmul](declarations/lift-tmul.md) | 129 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `def` | [uncurry](declarations/uncurry.md) | 143 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `def` | [lcurry](declarations/lcurry.md) | 153 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `def` | [lift.equiv](declarations/lift-equiv.md) | 163 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `def` | [mk](declarations/mk.md) | 172 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `lemma` | [mk_eq](declarations/mk-eq.md) | 180 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `def` | [map](declarations/map.md) | 183 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [map_tmul](declarations/map-tmul.md) | 189 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [map_id](declarations/map-id.md) | 194 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [map_comp](declarations/map-comp.md) | 197 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [map_one](declarations/map-one.md) | 202 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [map_mul](declarations/map-mul.md) | 204 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [map_add_left](declarations/map-add-left.md) | 207 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [map_add_right](declarations/map-add-right.md) | 213 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [map_smul_right](declarations/map-smul-right.md) | 219 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [map_smul_left](declarations/map-smul-left.md) | 224 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [map_eq](declarations/map-eq.md) | 230 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `def` | [lTensor](declarations/ltensor.md) | 234 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `lemma` | [coe_lTensor](declarations/coe-ltensor.md) | 240 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `lemma` | [restrictScalars_lTensor](declarations/restrictscalars-ltensor.md) | 244 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `lemma` | [lTensor_tmul](declarations/ltensor-tmul.md) | 247 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `lemma` | [lTensor_id](declarations/ltensor-id.md) | 251 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `lemma` | [lTensor_comp](declarations/ltensor-comp.md) | 254 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `lemma` | [lTensor_one](declarations/ltensor-one.md) | 259 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `lemma` | [lTensor_mul](declarations/ltensor-mul.md) | 261 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `def` | [rTensor](declarations/rtensor.md) | 266 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `lemma` | [coe_rTensor](declarations/coe-rtensor.md) | 272 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `lemma` | [restrictScalars_rTensor](declarations/restrictscalars-rtensor.md) | 276 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `lemma` | [rTensor_tmul](declarations/rtensor-tmul.md) | 279 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `lemma` | [rTensor_id](declarations/rtensor-id.md) | 283 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `lemma` | [rTensor_comp](declarations/rtensor-comp.md) | 286 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `lemma` | [rTensor_one](declarations/rtensor-one.md) | 291 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `lemma` | [rTensor_mul](declarations/rtensor-mul.md) | 293 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `def` | [mapBilinear](declarations/mapbilinear.md) | 299 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `theorem` | [mapBilinear_apply](declarations/mapbilinear-apply.md) | 305 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `def` | [homTensorHomMap](declarations/homtensorhommap.md) | 312 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `theorem` | [homTensorHomMap_apply](declarations/homtensorhommap-apply.md) | 317 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `def` | [congr](declarations/congr.md) | 322 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `theorem` | [congr_refl](declarations/congr-refl.md) | 328 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `theorem` | [congr_trans](declarations/congr-trans.md) | 331 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `theorem` | [congr_symm](declarations/congr-symm.md) | 335 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `theorem` | [congr_one](declarations/congr-one.md) | 338 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `theorem` | [congr_mul](declarations/congr-mul.md) | 340 | `BLOCKED_NATIVE_ADMISSION` |
| 51 | `theorem` | [congr_tmul](declarations/congr-tmul.md) | 343 | `BLOCKED_NATIVE_ADMISSION` |
| 52 | `theorem` | [congr_symm_tmul](declarations/congr-symm-tmul.md) | 347 | `BLOCKED_NATIVE_ADMISSION` |
| 53 | `theorem` | [congr_eq](declarations/congr-eq.md) | 351 | `BLOCKED_NATIVE_ADMISSION` |
| 54 | `def` | [rid](declarations/rid.md) | 357 | `BLOCKED_NATIVE_ADMISSION` |
| 55 | `theorem` | [rid_eq_rid](declarations/rid-eq-rid.md) | 365 | `BLOCKED_NATIVE_ADMISSION` |
| 56 | `theorem` | [rid_tmul](declarations/rid-tmul.md) | 369 | `BLOCKED_NATIVE_ADMISSION` |
| 57 | `theorem` | [rid_symm_apply](declarations/rid-symm-apply.md) | 373 | `BLOCKED_NATIVE_ADMISSION` |
| 58 | `def` | [assoc](declarations/assoc.md) | 402 | `BLOCKED_NATIVE_ADMISSION` |
| 59 | `theorem` | [assoc_tmul](declarations/assoc-tmul.md) | 412 | `BLOCKED_NATIVE_ADMISSION` |
| 60 | `theorem` | [assoc_symm_tmul](declarations/assoc-symm-tmul.md) | 417 | `BLOCKED_NATIVE_ADMISSION` |
| 61 | `theorem` | [assoc_eq](declarations/assoc-eq.md) | 422 | `BLOCKED_NATIVE_ADMISSION` |
| 62 | `theorem` | [rTensor_tensor](declarations/rtensor-tensor.md) | 424 | `BLOCKED_NATIVE_ADMISSION` |
| 63 | `def` | [cancelBaseChange](declarations/cancelbasechange.md) | 436 | `BLOCKED_NATIVE_ADMISSION` |
| 64 | `def` | [distribBaseChange](declarations/distribbasechange.md) | 441 | `BLOCKED_NATIVE_ADMISSION` |
| 65 | `theorem` | [cancelBaseChange_tmul](declarations/cancelbasechange-tmul.md) | 447 | `BLOCKED_NATIVE_ADMISSION` |
| 66 | `theorem` | [cancelBaseChange_symm_tmul](declarations/cancelbasechange-symm-tmul.md) | 452 | `BLOCKED_NATIVE_ADMISSION` |
| 67 | `theorem` | [lTensor_comp_cancelBaseChange](declarations/ltensor-comp-cancelbasechange.md) | 456 | `BLOCKED_NATIVE_ADMISSION` |
| 68 | `theorem` | [distribBaseChange_tmul](declarations/distribbasechange-tmul.md) | 462 | `BLOCKED_NATIVE_ADMISSION` |
| 69 | `theorem` | [distribBaseChange_symm_tmul](declarations/distribbasechange-symm-tmul.md) | 467 | `BLOCKED_NATIVE_ADMISSION` |
| 70 | `lemma` | [cancelBaseChange_self_eq_lid](declarations/cancelbasechange-self-eq-lid.md) | 474 | `BLOCKED_NATIVE_ADMISSION` |
| 71 | `def` | [leftComm](declarations/leftcomm.md) | 492 | `BLOCKED_NATIVE_ADMISSION` |
| 72 | `theorem` | [leftComm_tmul](declarations/leftcomm-tmul.md) | 501 | `BLOCKED_NATIVE_ADMISSION` |
| 73 | `theorem` | [leftComm_symm_tmul](declarations/leftcomm-symm-tmul.md) | 506 | `BLOCKED_NATIVE_ADMISSION` |
| 74 | `theorem` | [leftComm_eq](declarations/leftcomm-eq.md) | 511 | `BLOCKED_NATIVE_ADMISSION` |
| 75 | `def` | [rightComm](declarations/rightcomm.md) | 531 | `BLOCKED_NATIVE_ADMISSION` |
| 76 | `theorem` | [rightComm_tmul](declarations/rightcomm-tmul.md) | 542 | `BLOCKED_NATIVE_ADMISSION` |
| 77 | `theorem` | [rightComm_symm](declarations/rightcomm-symm.md) | 547 | `BLOCKED_NATIVE_ADMISSION` |
| 78 | `theorem` | [rightComm_symm_tmul](declarations/rightcomm-symm-tmul.md) | 551 | `BLOCKED_NATIVE_ADMISSION` |
| 79 | `theorem` | [rightComm_eq](declarations/rightcomm-eq.md) | 556 | `BLOCKED_NATIVE_ADMISSION` |
| 80 | `def` | [tensorTensorTensorComm](declarations/tensortensortensorcomm.md) | 580 | `BLOCKED_NATIVE_ADMISSION` |
| 81 | `theorem` | [tensorTensorTensorComm_tmul](declarations/tensortensortensorcomm-tmul.md) | 589 | `BLOCKED_NATIVE_ADMISSION` |
| 82 | `theorem` | [tensorTensorTensorComm_symm](declarations/tensortensortensorcomm-symm.md) | 594 | `BLOCKED_NATIVE_ADMISSION` |
| 83 | `theorem` | [tensorTensorTensorComm_symm_tmul](declarations/tensortensortensorcomm-symm-tmul.md) | 597 | `BLOCKED_NATIVE_ADMISSION` |
| 84 | `theorem` | [tensorTensorTensorComm_eq](declarations/tensortensortensorcomm-eq.md) | 602 | `BLOCKED_NATIVE_ADMISSION` |
| 85 | `def` | [uliftEquiv](declarations/uliftequiv.md) | 613 | `BLOCKED_NATIVE_ADMISSION` |
| 86 | `lemma` | [down_uliftEquiv_symm_tmul](declarations/down-uliftequiv-symm-tmul.md) | 621 | `BLOCKED_NATIVE_ADMISSION` |
| 87 | `lemma` | [uliftEquiv_tmul](declarations/uliftequiv-tmul.md) | 626 | `BLOCKED_NATIVE_ADMISSION` |
| 88 | `def` | [baseChange](declarations/basechange-source-edition-2.md) | 658 | `BLOCKED_NATIVE_ADMISSION` |
| 89 | `theorem` | [baseChange_tmul](declarations/basechange-tmul.md) | 662 | `BLOCKED_NATIVE_ADMISSION` |
| 90 | `theorem` | [baseChange_eq_ltensor](declarations/basechange-eq-ltensor.md) | 665 | `BLOCKED_NATIVE_ADMISSION` |
| 91 | `theorem` | [baseChange_add](declarations/basechange-add.md) | 669 | `BLOCKED_NATIVE_ADMISSION` |
| 92 | `theorem` | [baseChange_zero](declarations/basechange-zero.md) | 674 | `BLOCKED_NATIVE_ADMISSION` |
| 93 | `theorem` | [baseChange_smul](declarations/basechange-smul.md) | 679 | `BLOCKED_NATIVE_ADMISSION` |
| 94 | `lemma` | [baseChange_id](declarations/basechange-id.md) | 684 | `BLOCKED_NATIVE_ADMISSION` |
| 95 | `lemma` | [baseChange_comp](declarations/basechange-comp.md) | 687 | `BLOCKED_NATIVE_ADMISSION` |
| 96 | `lemma` | [baseChange_baseChange](declarations/basechange-basechange.md) | 692 | `BLOCKED_NATIVE_ADMISSION` |
| 97 | `lemma` | [baseChange_one](declarations/basechange-one.md) | 702 | `BLOCKED_NATIVE_ADMISSION` |
| 98 | `lemma` | [baseChange_mul](declarations/basechange-mul.md) | 704 | `BLOCKED_NATIVE_ADMISSION` |
| 99 | `def` | [baseChangeHom](declarations/basechangehom.md) | 714 | `BLOCKED_NATIVE_ADMISSION` |
| 100 | `def` | [_root_.Module.End.baseChangeHom](declarations/root-module-end-basechangehom.md) | 721 | `BLOCKED_NATIVE_ADMISSION` |
| 101 | `lemma` | [baseChange_pow](declarations/basechange-pow.md) | 724 | `BLOCKED_NATIVE_ADMISSION` |
| 102 | `def` | [_root_.LinearEquiv.baseChange](declarations/root-linearequiv-basechange.md) | 729 | `BLOCKED_NATIVE_ADMISSION` |
| 103 | `theorem` | [_root_.LinearEquiv.coe_baseChange](declarations/root-linearequiv-coe-basechange.md) | 733 | `BLOCKED_NATIVE_ADMISSION` |
| 104 | `lemma` | [_root_.LinearEquiv.baseChange_tmul](declarations/root-linearequiv-basechange-tmul.md) | 737 | `BLOCKED_NATIVE_ADMISSION` |
| 105 | `lemma` | [_root_.LinearEquiv.baseChange_symm_tmul](declarations/root-linearequiv-basechange-symm-tmul.md) | 741 | `BLOCKED_NATIVE_ADMISSION` |
| 106 | `theorem` | [_root_.LinearEquiv.baseChange_one](declarations/root-linearequiv-basechange-one.md) | 746 | `BLOCKED_NATIVE_ADMISSION` |
| 107 | `theorem` | [_root_.LinearEquiv.baseChange_trans](declarations/root-linearequiv-basechange-trans.md) | 751 | `BLOCKED_NATIVE_ADMISSION` |
| 108 | `theorem` | [_root_.LinearEquiv.baseChange_mul](declarations/root-linearequiv-basechange-mul.md) | 757 | `BLOCKED_NATIVE_ADMISSION` |
| 109 | `theorem` | [_root_.LinearEquiv.baseChange_symm](declarations/root-linearequiv-basechange-symm.md) | 761 | `BLOCKED_NATIVE_ADMISSION` |
| 110 | `theorem` | [_root_.LinearEquiv.baseChange_inv](declarations/root-linearequiv-basechange-inv.md) | 768 | `BLOCKED_NATIVE_ADMISSION` |
| 111 | `lemma` | [_root_.LinearEquiv.baseChange_pow](declarations/root-linearequiv-basechange-pow.md) | 772 | `BLOCKED_NATIVE_ADMISSION` |
| 112 | `lemma` | [_root_.LinearEquiv.baseChange_zpow](declarations/root-linearequiv-basechange-zpow.md) | 779 | `BLOCKED_NATIVE_ADMISSION` |
| 113 | `theorem` | [rTensor_baseChange](declarations/rtensor-basechange.md) | 789 | `BLOCKED_NATIVE_ADMISSION` |
| 114 | `theorem` | [baseChange_sub](declarations/basechange-sub.md) | 804 | `BLOCKED_NATIVE_ADMISSION` |
| 115 | `theorem` | [baseChange_neg](declarations/basechange-neg.md) | 809 | `BLOCKED_NATIVE_ADMISSION` |
| 116 | `def` | [baseChange](declarations/basechange.md) | 828 | `BLOCKED_NATIVE_ADMISSION` |
| 117 | `lemma` | [tmul_mem_baseChange_of_mem](declarations/tmul-mem-basechange-of-mem.md) | 832 | `BLOCKED_NATIVE_ADMISSION` |
| 118 | `lemma` | [baseChange_eq_span](declarations/basechange-eq-span.md) | 836 | `BLOCKED_NATIVE_ADMISSION` |
| 119 | `lemma` | [baseChange_bot](declarations/basechange-bot.md) | 847 | `BLOCKED_NATIVE_ADMISSION` |
| 120 | `lemma` | [baseChange_top](declarations/basechange-top.md) | 850 | `BLOCKED_NATIVE_ADMISSION` |
| 121 | `theorem` | [baseChange_mono](declarations/basechange-mono.md) | 855 | `BLOCKED_NATIVE_ADMISSION` |
| 122 | `lemma` | [baseChange_span](declarations/basechange-span.md) | 861 | `BLOCKED_NATIVE_ADMISSION` |
| 123 | `def` | [toBaseChange](declarations/tobasechange.md) | 868 | `BLOCKED_NATIVE_ADMISSION` |
| 124 | `lemma` | [coe_toBaseChange_tmul](declarations/coe-tobasechange-tmul.md) | 871 | `BLOCKED_NATIVE_ADMISSION` |
| 125 | `lemma` | [toBaseChange_surjective](declarations/tobasechange-surjective-source-edition-2.md) | 874 | `BLOCKED_NATIVE_ADMISSION` |
| 126 | `lemma` | [toBaseChange_surjective'](declarations/tobasechange-surjective.md) | 878 | `BLOCKED_NATIVE_ADMISSION` |
| 127 | `lemma` | [baseChange_comp_cancelBaseChange_symm_self](declarations/basechange-comp-cancelbasechange-symm-self.md) | 890 | `BLOCKED_NATIVE_ADMISSION` |
| 128 | `lemma` | [ker_baseChange_comp_cancelBaseChange_symm](declarations/ker-basechange-comp-cancelbasechange-symm.md) | 896 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=1d0150cf1112cd26f10cb2df1c253fa6cfcf016a23f39d0172903dfc0ebd9fc8 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/Tower/Varianta0b9d030832b817e0be4626b899d33a57b25bf543c2e6226e40d0c770b5ef7b5.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
