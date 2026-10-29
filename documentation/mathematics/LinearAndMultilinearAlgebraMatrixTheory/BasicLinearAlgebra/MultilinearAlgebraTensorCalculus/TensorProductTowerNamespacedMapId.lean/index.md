# Tensor Product Tower Namespaced Map Id

[Complete source index](../../../../complete-source-index.md) · [Up one directory](../../../../complete-source-index.md) · [Full source](source.md)

**78 observed declarations and anonymous commands**, 58 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Algebra/LinearAlgebra/Tower/Variantf4f98dfffb422ef15779321c10a34917a2b668190327ef33aa66233708aa9dbc.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `624f1927be2eb375292dafce54cd1d30eba01e63`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../_verification/specifications/LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MultilinearAlgebraTensorCalculus/TensorProductTowerNamespacedMapId.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `theorem` | [smul_eq_lsmul_rTensor](declarations/smul-eq-lsmul-rtensor.md) | 80 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `def` | [curry](declarations/curry.md) | 88 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `theorem` | [restrictScalars_curry](declarations/restrictscalars-curry.md) | 93 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `theorem` | [curry_injective](declarations/curry-injective.md) | 102 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [ext](declarations/ext.md) | 107 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `def` | [lift](declarations/lift.md) | 115 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [lift_apply](declarations/lift-apply.md) | 129 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [lift_tmul](declarations/lift-tmul.md) | 134 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `def` | [uncurry](declarations/uncurry.md) | 148 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `def` | [lcurry](declarations/lcurry.md) | 158 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `def` | [lift.equiv](declarations/lift-equiv.md) | 168 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `def` | [mk](declarations/mk.md) | 177 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `def` | [map](declarations/map.md) | 183 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [map_tmul](declarations/map-tmul.md) | 189 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [map_id](declarations/map-id.md) | 194 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [map_comp](declarations/map-comp.md) | 197 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [map_one](declarations/map-one.md) | 202 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [map_mul](declarations/map-mul.md) | 204 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [map_add_left](declarations/map-add-left.md) | 207 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [map_add_right](declarations/map-add-right.md) | 213 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [map_smul_right](declarations/map-smul-right.md) | 219 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [map_smul_left](declarations/map-smul-left.md) | 224 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `def` | [lTensor](declarations/ltensor.md) | 231 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `lemma` | [coe_lTensor](declarations/coe-ltensor.md) | 237 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `lemma` | [restrictScalars_lTensor](declarations/restrictscalars-ltensor.md) | 241 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `lemma` | [lTensor_tmul](declarations/ltensor-tmul.md) | 244 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `lemma` | [lTensor_id](declarations/ltensor-id.md) | 248 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `lemma` | [lTensor_comp](declarations/ltensor-comp.md) | 251 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `lemma` | [lTensor_one](declarations/ltensor-one.md) | 256 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `lemma` | [lTensor_mul](declarations/ltensor-mul.md) | 258 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `def` | [rTensor](declarations/rtensor.md) | 263 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `lemma` | [coe_rTensor](declarations/coe-rtensor.md) | 269 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `lemma` | [restrictScalars_rTensor](declarations/restrictscalars-rtensor.md) | 273 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `lemma` | [rTensor_tmul](declarations/rtensor-tmul.md) | 276 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `lemma` | [rTensor_id](declarations/rtensor-id.md) | 280 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `lemma` | [rTensor_comp](declarations/rtensor-comp.md) | 283 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `lemma` | [rTensor_one](declarations/rtensor-one.md) | 288 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `lemma` | [rTensor_mul](declarations/rtensor-mul.md) | 290 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `def` | [mapBilinear](declarations/mapbilinear.md) | 296 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `theorem` | [mapBilinear_apply](declarations/mapbilinear-apply.md) | 302 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `def` | [homTensorHomMap](declarations/homtensorhommap.md) | 309 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `theorem` | [homTensorHomMap_apply](declarations/homtensorhommap-apply.md) | 314 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `def` | [congr](declarations/congr.md) | 319 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `theorem` | [congr_refl](declarations/congr-refl.md) | 325 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `theorem` | [congr_trans](declarations/congr-trans.md) | 328 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `theorem` | [congr_symm](declarations/congr-symm.md) | 332 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `theorem` | [congr_one](declarations/congr-one.md) | 335 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `theorem` | [congr_mul](declarations/congr-mul.md) | 337 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `theorem` | [congr_tmul](declarations/congr-tmul.md) | 340 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `theorem` | [congr_symm_tmul](declarations/congr-symm-tmul.md) | 344 | `BLOCKED_NATIVE_ADMISSION` |
| 51 | `def` | [rid](declarations/rid.md) | 351 | `BLOCKED_NATIVE_ADMISSION` |
| 52 | `theorem` | [rid_eq_rid](declarations/rid-eq-rid.md) | 358 | `BLOCKED_NATIVE_ADMISSION` |
| 53 | `theorem` | [rid_tmul](declarations/rid-tmul.md) | 363 | `BLOCKED_NATIVE_ADMISSION` |
| 54 | `theorem` | [rid_symm_apply](declarations/rid-symm-apply.md) | 367 | `BLOCKED_NATIVE_ADMISSION` |
| 55 | `def` | [assoc](declarations/assoc.md) | 396 | `BLOCKED_NATIVE_ADMISSION` |
| 56 | `theorem` | [assoc_tmul](declarations/assoc-tmul.md) | 406 | `BLOCKED_NATIVE_ADMISSION` |
| 57 | `theorem` | [assoc_symm_tmul](declarations/assoc-symm-tmul.md) | 411 | `BLOCKED_NATIVE_ADMISSION` |
| 58 | `theorem` | [rTensor_tensor](declarations/rtensor-tensor.md) | 415 | `BLOCKED_NATIVE_ADMISSION` |
| 59 | `def` | [cancelBaseChange](declarations/cancelbasechange.md) | 427 | `BLOCKED_NATIVE_ADMISSION` |
| 60 | `def` | [distribBaseChange](declarations/distribbasechange.md) | 432 | `BLOCKED_NATIVE_ADMISSION` |
| 61 | `theorem` | [cancelBaseChange_tmul](declarations/cancelbasechange-tmul.md) | 438 | `BLOCKED_NATIVE_ADMISSION` |
| 62 | `theorem` | [cancelBaseChange_symm_tmul](declarations/cancelbasechange-symm-tmul.md) | 443 | `BLOCKED_NATIVE_ADMISSION` |
| 63 | `theorem` | [lTensor_comp_cancelBaseChange](declarations/ltensor-comp-cancelbasechange.md) | 447 | `BLOCKED_NATIVE_ADMISSION` |
| 64 | `def` | [leftComm](declarations/leftcomm.md) | 458 | `BLOCKED_NATIVE_ADMISSION` |
| 65 | `theorem` | [leftComm_tmul](declarations/leftcomm-tmul.md) | 467 | `BLOCKED_NATIVE_ADMISSION` |
| 66 | `theorem` | [leftComm_symm_tmul](declarations/leftcomm-symm-tmul.md) | 472 | `BLOCKED_NATIVE_ADMISSION` |
| 67 | `def` | [rightComm](declarations/rightcomm.md) | 481 | `BLOCKED_NATIVE_ADMISSION` |
| 68 | `theorem` | [rightComm_tmul](declarations/rightcomm-tmul.md) | 498 | `BLOCKED_NATIVE_ADMISSION` |
| 69 | `theorem` | [rightComm_symm_tmul](declarations/rightcomm-symm-tmul.md) | 503 | `BLOCKED_NATIVE_ADMISSION` |
| 70 | `def` | [tensorTensorTensorComm](declarations/tensortensortensorcomm.md) | 513 | `BLOCKED_NATIVE_ADMISSION` |
| 71 | `theorem` | [tensorTensorTensorComm_tmul](declarations/tensortensortensorcomm-tmul.md) | 522 | `BLOCKED_NATIVE_ADMISSION` |
| 72 | `theorem` | [tensorTensorTensorComm_symm_tmul](declarations/tensortensortensorcomm-symm-tmul.md) | 527 | `BLOCKED_NATIVE_ADMISSION` |
| 73 | `theorem` | [tensorTensorTensorComm_eq](declarations/tensortensortensorcomm-eq.md) | 532 | `BLOCKED_NATIVE_ADMISSION` |
| 74 | `def` | [baseChange](declarations/basechange.md) | 557 | `BLOCKED_NATIVE_ADMISSION` |
| 75 | `lemma` | [baseChange_bot](declarations/basechange-bot.md) | 561 | `BLOCKED_NATIVE_ADMISSION` |
| 76 | `lemma` | [baseChange_top](declarations/basechange-top.md) | 564 | `BLOCKED_NATIVE_ADMISSION` |
| 77 | `lemma` | [tmul_mem_baseChange_of_mem](declarations/tmul-mem-basechange-of-mem.md) | 573 | `BLOCKED_NATIVE_ADMISSION` |
| 78 | `lemma` | [baseChange_span](declarations/basechange-span.md) | 579 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=620f8b59bf885763bf21da516e4530cc9c86d7cc05fe1028223a397dc03a69a0 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/Tower/Variantf4f98dfffb422ef15779321c10a34917a2b668190327ef33aa66233708aa9dbc.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
