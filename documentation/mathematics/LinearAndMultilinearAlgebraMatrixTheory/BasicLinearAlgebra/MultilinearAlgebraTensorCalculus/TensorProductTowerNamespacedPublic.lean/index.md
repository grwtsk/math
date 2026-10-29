# Tensor Product Tower Namespaced Public

[Complete source index](../../../../complete-source-index.md) · [Up one directory](../../../../complete-source-index.md) · [Full source](source.md)

**128 observed declarations and anonymous commands**, 102 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Algebra/LinearAlgebra/Tower/Variant9fa5a18001bd753ee3106de1084a4bb30b9f35fe8770e89d078dac2018160be9.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `673fe72784c3de8d32f0d53ad3a81ab369440e55`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../_verification/specifications/LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MultilinearAlgebraTensorCalculus/TensorProductTowerNamespacedPublic.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `theorem` | [smul_eq_lsmul_rTensor](declarations/smul-eq-lsmul-rtensor.md) | 83 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `def` | [curry](declarations/curry.md) | 91 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `theorem` | [restrictScalars_curry](declarations/restrictscalars-curry.md) | 96 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `theorem` | [curry_injective](declarations/curry-injective.md) | 105 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [ext](declarations/ext.md) | 110 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `def` | [lift](declarations/lift.md) | 118 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [lift_apply](declarations/lift-apply.md) | 132 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [lift_tmul](declarations/lift-tmul.md) | 137 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `def` | [uncurry](declarations/uncurry.md) | 151 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `def` | [lcurry](declarations/lcurry.md) | 161 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `def` | [lift.equiv](declarations/lift-equiv.md) | 171 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `def` | [mk](declarations/mk.md) | 180 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `lemma` | [mk_eq](declarations/mk-eq.md) | 188 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `def` | [map](declarations/map.md) | 191 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [map_tmul](declarations/map-tmul.md) | 197 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [map_id](declarations/map-id.md) | 202 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [map_comp](declarations/map-comp.md) | 205 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [map_one](declarations/map-one.md) | 210 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [map_mul](declarations/map-mul.md) | 212 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [map_add_left](declarations/map-add-left.md) | 215 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [map_add_right](declarations/map-add-right.md) | 221 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [map_smul_right](declarations/map-smul-right.md) | 227 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [map_smul_left](declarations/map-smul-left.md) | 232 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [map_eq](declarations/map-eq.md) | 238 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `def` | [lTensor](declarations/ltensor.md) | 242 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `lemma` | [coe_lTensor](declarations/coe-ltensor.md) | 248 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `lemma` | [restrictScalars_lTensor](declarations/restrictscalars-ltensor.md) | 252 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `lemma` | [lTensor_tmul](declarations/ltensor-tmul.md) | 255 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `lemma` | [lTensor_id](declarations/ltensor-id.md) | 259 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `lemma` | [lTensor_comp](declarations/ltensor-comp.md) | 262 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `lemma` | [lTensor_one](declarations/ltensor-one.md) | 267 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `lemma` | [lTensor_mul](declarations/ltensor-mul.md) | 269 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `def` | [rTensor](declarations/rtensor.md) | 274 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `lemma` | [coe_rTensor](declarations/coe-rtensor.md) | 280 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `lemma` | [restrictScalars_rTensor](declarations/restrictscalars-rtensor.md) | 284 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `lemma` | [rTensor_tmul](declarations/rtensor-tmul.md) | 287 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `lemma` | [rTensor_id](declarations/rtensor-id.md) | 291 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `lemma` | [rTensor_comp](declarations/rtensor-comp.md) | 294 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `lemma` | [rTensor_one](declarations/rtensor-one.md) | 299 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `lemma` | [rTensor_mul](declarations/rtensor-mul.md) | 301 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `def` | [mapBilinear](declarations/mapbilinear.md) | 307 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `theorem` | [mapBilinear_apply](declarations/mapbilinear-apply.md) | 313 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `def` | [homTensorHomMap](declarations/homtensorhommap.md) | 320 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `theorem` | [homTensorHomMap_apply](declarations/homtensorhommap-apply.md) | 325 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `def` | [congr](declarations/congr.md) | 330 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `theorem` | [congr_refl](declarations/congr-refl.md) | 336 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `theorem` | [congr_trans](declarations/congr-trans.md) | 339 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `theorem` | [congr_symm](declarations/congr-symm.md) | 343 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `theorem` | [congr_one](declarations/congr-one.md) | 346 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `theorem` | [congr_mul](declarations/congr-mul.md) | 348 | `BLOCKED_NATIVE_ADMISSION` |
| 51 | `theorem` | [congr_tmul](declarations/congr-tmul.md) | 351 | `BLOCKED_NATIVE_ADMISSION` |
| 52 | `theorem` | [congr_symm_tmul](declarations/congr-symm-tmul.md) | 355 | `BLOCKED_NATIVE_ADMISSION` |
| 53 | `theorem` | [congr_eq](declarations/congr-eq.md) | 359 | `BLOCKED_NATIVE_ADMISSION` |
| 54 | `def` | [rid](declarations/rid.md) | 365 | `BLOCKED_NATIVE_ADMISSION` |
| 55 | `theorem` | [rid_eq_rid](declarations/rid-eq-rid.md) | 373 | `BLOCKED_NATIVE_ADMISSION` |
| 56 | `theorem` | [rid_tmul](declarations/rid-tmul.md) | 377 | `BLOCKED_NATIVE_ADMISSION` |
| 57 | `theorem` | [rid_symm_apply](declarations/rid-symm-apply.md) | 381 | `BLOCKED_NATIVE_ADMISSION` |
| 58 | `def` | [assoc](declarations/assoc.md) | 410 | `BLOCKED_NATIVE_ADMISSION` |
| 59 | `theorem` | [assoc_tmul](declarations/assoc-tmul.md) | 420 | `BLOCKED_NATIVE_ADMISSION` |
| 60 | `theorem` | [assoc_symm_tmul](declarations/assoc-symm-tmul.md) | 425 | `BLOCKED_NATIVE_ADMISSION` |
| 61 | `theorem` | [assoc_eq](declarations/assoc-eq.md) | 430 | `BLOCKED_NATIVE_ADMISSION` |
| 62 | `theorem` | [rTensor_tensor](declarations/rtensor-tensor.md) | 432 | `BLOCKED_NATIVE_ADMISSION` |
| 63 | `def` | [cancelBaseChange](declarations/cancelbasechange.md) | 444 | `BLOCKED_NATIVE_ADMISSION` |
| 64 | `def` | [distribBaseChange](declarations/distribbasechange.md) | 449 | `BLOCKED_NATIVE_ADMISSION` |
| 65 | `theorem` | [cancelBaseChange_tmul](declarations/cancelbasechange-tmul.md) | 455 | `BLOCKED_NATIVE_ADMISSION` |
| 66 | `theorem` | [cancelBaseChange_symm_tmul](declarations/cancelbasechange-symm-tmul.md) | 460 | `BLOCKED_NATIVE_ADMISSION` |
| 67 | `theorem` | [lTensor_comp_cancelBaseChange](declarations/ltensor-comp-cancelbasechange.md) | 464 | `BLOCKED_NATIVE_ADMISSION` |
| 68 | `theorem` | [distribBaseChange_tmul](declarations/distribbasechange-tmul.md) | 470 | `BLOCKED_NATIVE_ADMISSION` |
| 69 | `theorem` | [distribBaseChange_symm_tmul](declarations/distribbasechange-symm-tmul.md) | 475 | `BLOCKED_NATIVE_ADMISSION` |
| 70 | `lemma` | [cancelBaseChange_self_eq_lid](declarations/cancelbasechange-self-eq-lid.md) | 482 | `BLOCKED_NATIVE_ADMISSION` |
| 71 | `def` | [leftComm](declarations/leftcomm.md) | 500 | `BLOCKED_NATIVE_ADMISSION` |
| 72 | `theorem` | [leftComm_tmul](declarations/leftcomm-tmul.md) | 509 | `BLOCKED_NATIVE_ADMISSION` |
| 73 | `theorem` | [leftComm_symm_tmul](declarations/leftcomm-symm-tmul.md) | 514 | `BLOCKED_NATIVE_ADMISSION` |
| 74 | `theorem` | [leftComm_eq](declarations/leftcomm-eq.md) | 519 | `BLOCKED_NATIVE_ADMISSION` |
| 75 | `def` | [rightComm](declarations/rightcomm.md) | 539 | `BLOCKED_NATIVE_ADMISSION` |
| 76 | `theorem` | [rightComm_tmul](declarations/rightcomm-tmul.md) | 550 | `BLOCKED_NATIVE_ADMISSION` |
| 77 | `theorem` | [rightComm_symm](declarations/rightcomm-symm.md) | 555 | `BLOCKED_NATIVE_ADMISSION` |
| 78 | `theorem` | [rightComm_symm_tmul](declarations/rightcomm-symm-tmul.md) | 559 | `BLOCKED_NATIVE_ADMISSION` |
| 79 | `theorem` | [rightComm_eq](declarations/rightcomm-eq.md) | 564 | `BLOCKED_NATIVE_ADMISSION` |
| 80 | `def` | [tensorTensorTensorComm](declarations/tensortensortensorcomm.md) | 588 | `BLOCKED_NATIVE_ADMISSION` |
| 81 | `theorem` | [tensorTensorTensorComm_tmul](declarations/tensortensortensorcomm-tmul.md) | 597 | `BLOCKED_NATIVE_ADMISSION` |
| 82 | `theorem` | [tensorTensorTensorComm_symm](declarations/tensortensortensorcomm-symm.md) | 602 | `BLOCKED_NATIVE_ADMISSION` |
| 83 | `theorem` | [tensorTensorTensorComm_symm_tmul](declarations/tensortensortensorcomm-symm-tmul.md) | 605 | `BLOCKED_NATIVE_ADMISSION` |
| 84 | `theorem` | [tensorTensorTensorComm_eq](declarations/tensortensortensorcomm-eq.md) | 610 | `BLOCKED_NATIVE_ADMISSION` |
| 85 | `def` | [uliftEquiv](declarations/uliftequiv.md) | 621 | `BLOCKED_NATIVE_ADMISSION` |
| 86 | `lemma` | [down_uliftEquiv_symm_tmul](declarations/down-uliftequiv-symm-tmul.md) | 629 | `BLOCKED_NATIVE_ADMISSION` |
| 87 | `lemma` | [uliftEquiv_tmul](declarations/uliftequiv-tmul.md) | 634 | `BLOCKED_NATIVE_ADMISSION` |
| 88 | `def` | [baseChange](declarations/basechange-source-edition-2.md) | 666 | `BLOCKED_NATIVE_ADMISSION` |
| 89 | `theorem` | [baseChange_tmul](declarations/basechange-tmul.md) | 670 | `BLOCKED_NATIVE_ADMISSION` |
| 90 | `theorem` | [baseChange_eq_ltensor](declarations/basechange-eq-ltensor.md) | 673 | `BLOCKED_NATIVE_ADMISSION` |
| 91 | `theorem` | [baseChange_add](declarations/basechange-add.md) | 677 | `BLOCKED_NATIVE_ADMISSION` |
| 92 | `theorem` | [baseChange_zero](declarations/basechange-zero.md) | 682 | `BLOCKED_NATIVE_ADMISSION` |
| 93 | `theorem` | [baseChange_smul](declarations/basechange-smul.md) | 687 | `BLOCKED_NATIVE_ADMISSION` |
| 94 | `lemma` | [baseChange_id](declarations/basechange-id.md) | 692 | `BLOCKED_NATIVE_ADMISSION` |
| 95 | `lemma` | [baseChange_comp](declarations/basechange-comp.md) | 695 | `BLOCKED_NATIVE_ADMISSION` |
| 96 | `lemma` | [baseChange_baseChange](declarations/basechange-basechange.md) | 700 | `BLOCKED_NATIVE_ADMISSION` |
| 97 | `lemma` | [baseChange_one](declarations/basechange-one.md) | 710 | `BLOCKED_NATIVE_ADMISSION` |
| 98 | `lemma` | [baseChange_mul](declarations/basechange-mul.md) | 712 | `BLOCKED_NATIVE_ADMISSION` |
| 99 | `def` | [baseChangeHom](declarations/basechangehom.md) | 722 | `BLOCKED_NATIVE_ADMISSION` |
| 100 | `def` | [Tensor Product Tower Namespaced Public](declarations/basechangehom-source-line-729-occurrence-2.md) | 729 | `BLOCKED_NATIVE_ADMISSION` |
| 101 | `lemma` | [baseChange_pow](declarations/basechange-pow.md) | 732 | `BLOCKED_NATIVE_ADMISSION` |
| 102 | `def` | [Tensor Product Tower Namespaced Public](declarations/basechange-source-line-737-occurrence-2.md) | 737 | `BLOCKED_NATIVE_ADMISSION` |
| 103 | `theorem` | [Tensor Product Tower Namespaced Public](declarations/coe-basechange.md) | 741 | `BLOCKED_NATIVE_ADMISSION` |
| 104 | `lemma` | [Tensor Product Tower Namespaced Public](declarations/basechange-tmul-source-line-745-occurrence-2.md) | 745 | `BLOCKED_NATIVE_ADMISSION` |
| 105 | `lemma` | [Tensor Product Tower Namespaced Public](declarations/basechange-symm-tmul.md) | 749 | `BLOCKED_NATIVE_ADMISSION` |
| 106 | `theorem` | [Tensor Product Tower Namespaced Public](declarations/basechange-one-source-line-754-occurrence-2.md) | 754 | `BLOCKED_NATIVE_ADMISSION` |
| 107 | `theorem` | [Tensor Product Tower Namespaced Public](declarations/basechange-trans.md) | 759 | `BLOCKED_NATIVE_ADMISSION` |
| 108 | `theorem` | [Tensor Product Tower Namespaced Public](declarations/basechange-mul-source-line-765-occurrence-2.md) | 765 | `BLOCKED_NATIVE_ADMISSION` |
| 109 | `theorem` | [Tensor Product Tower Namespaced Public](declarations/basechange-symm.md) | 769 | `BLOCKED_NATIVE_ADMISSION` |
| 110 | `theorem` | [Tensor Product Tower Namespaced Public](declarations/basechange-inv.md) | 776 | `BLOCKED_NATIVE_ADMISSION` |
| 111 | `lemma` | [Tensor Product Tower Namespaced Public](declarations/basechange-pow-source-line-780-occurrence-2.md) | 780 | `BLOCKED_NATIVE_ADMISSION` |
| 112 | `lemma` | [Tensor Product Tower Namespaced Public](declarations/basechange-zpow.md) | 787 | `BLOCKED_NATIVE_ADMISSION` |
| 113 | `theorem` | [rTensor_baseChange](declarations/rtensor-basechange.md) | 797 | `BLOCKED_NATIVE_ADMISSION` |
| 114 | `theorem` | [baseChange_sub](declarations/basechange-sub.md) | 812 | `BLOCKED_NATIVE_ADMISSION` |
| 115 | `theorem` | [baseChange_neg](declarations/basechange-neg.md) | 817 | `BLOCKED_NATIVE_ADMISSION` |
| 116 | `def` | [baseChange](declarations/basechange.md) | 836 | `BLOCKED_NATIVE_ADMISSION` |
| 117 | `lemma` | [tmul_mem_baseChange_of_mem](declarations/tmul-mem-basechange-of-mem.md) | 840 | `BLOCKED_NATIVE_ADMISSION` |
| 118 | `lemma` | [baseChange_eq_span](declarations/basechange-eq-span.md) | 844 | `BLOCKED_NATIVE_ADMISSION` |
| 119 | `lemma` | [baseChange_bot](declarations/basechange-bot.md) | 855 | `BLOCKED_NATIVE_ADMISSION` |
| 120 | `lemma` | [baseChange_top](declarations/basechange-top.md) | 858 | `BLOCKED_NATIVE_ADMISSION` |
| 121 | `theorem` | [baseChange_mono](declarations/basechange-mono.md) | 863 | `BLOCKED_NATIVE_ADMISSION` |
| 122 | `lemma` | [baseChange_span](declarations/basechange-span.md) | 869 | `BLOCKED_NATIVE_ADMISSION` |
| 123 | `def` | [toBaseChange](declarations/tobasechange.md) | 876 | `BLOCKED_NATIVE_ADMISSION` |
| 124 | `lemma` | [coe_toBaseChange_tmul](declarations/coe-tobasechange-tmul.md) | 879 | `BLOCKED_NATIVE_ADMISSION` |
| 125 | `lemma` | [toBaseChange_surjective](declarations/tobasechange-surjective-source-edition-2.md) | 882 | `BLOCKED_NATIVE_ADMISSION` |
| 126 | `lemma` | [toBaseChange_surjective'](declarations/tobasechange-surjective.md) | 886 | `BLOCKED_NATIVE_ADMISSION` |
| 127 | `lemma` | [baseChange_comp_cancelBaseChange_symm_self](declarations/basechange-comp-cancelbasechange-symm-self.md) | 898 | `BLOCKED_NATIVE_ADMISSION` |
| 128 | `lemma` | [ker_baseChange_comp_cancelBaseChange_symm](declarations/ker-basechange-comp-cancelbasechange-symm.md) | 904 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=78643b74dd66e7b572708f35d866e5b965591b8b50ddcf907e7ac2588a21546a -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/Tower/Variant9fa5a18001bd753ee3106de1084a4bb30b9f35fe8770e89d078dac2018160be9.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
