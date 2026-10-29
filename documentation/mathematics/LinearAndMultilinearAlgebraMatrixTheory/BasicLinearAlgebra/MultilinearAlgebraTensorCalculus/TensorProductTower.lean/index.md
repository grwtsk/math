# Tensor Product Tower

[Complete source index](../../../../complete-source-index.md) · [Up one directory](../../../../complete-source-index.md) · [Full source](source.md)

**39 observed declarations and anonymous commands**, 24 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Algebra/LinearAlgebra/Tower/Variante9ef998b5cd85ccb1c1dbbd557e4465563655eb55b52fd552e8218af809b00a1.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `a128a867aa6c1cf0b3fe9b1133327ecfee314d11`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../_verification/specifications/LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MultilinearAlgebraTensorCalculus/TensorProductTower.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `theorem` | [smul_eq_lsmul_rTensor](declarations/smul-eq-lsmul-rtensor.md) | 73 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `def` | [curry](declarations/curry.md) | 82 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `theorem` | [restrictScalars_curry](declarations/restrictscalars-curry.md) | 89 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `theorem` | [curry_injective](declarations/curry-injective.md) | 99 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [ext](declarations/ext.md) | 105 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `def` | [lift](declarations/lift.md) | 114 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [lift_apply](declarations/lift-apply.md) | 130 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [lift_tmul](declarations/lift-tmul.md) | 135 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `def` | [uncurry](declarations/uncurry.md) | 147 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `def` | [lcurry](declarations/lcurry.md) | 159 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `def` | [lift.equiv](declarations/lift-equiv.md) | 171 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `def` | [mk](declarations/mk.md) | 182 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `def` | [map](declarations/map.md) | 190 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [map_tmul](declarations/map-tmul.md) | 196 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [map_add_left](declarations/map-add-left.md) | 200 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [map_add_right](declarations/map-add-right.md) | 206 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [map_smul_right](declarations/map-smul-right.md) | 212 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [map_smul_left](declarations/map-smul-left.md) | 217 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `def` | [mapBilinear](declarations/mapbilinear.md) | 225 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [mapBilinear_apply](declarations/mapbilinear-apply.md) | 231 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `def` | [homTensorHomMap](declarations/homtensorhommap.md) | 238 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [homTensorHomMap_apply](declarations/homtensorhommap-apply.md) | 243 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `def` | [congr](declarations/congr.md) | 248 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [congr_tmul](declarations/congr-tmul.md) | 253 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [congr_symm_tmul](declarations/congr-symm-tmul.md) | 257 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `def` | [rid](declarations/rid.md) | 264 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [rid_tmul](declarations/rid-tmul.md) | 274 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `def` | [assoc](declarations/assoc.md) | 305 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [assoc_tmul](declarations/assoc-tmul.md) | 317 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [assoc_symm_tmul](declarations/assoc-symm-tmul.md) | 322 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `def` | [leftComm](declarations/leftcomm.md) | 331 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [leftComm_tmul](declarations/leftcomm-tmul.md) | 340 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [leftComm_symm_tmul](declarations/leftcomm-symm-tmul.md) | 345 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `def` | [rightComm](declarations/rightcomm.md) | 354 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `theorem` | [rightComm_tmul](declarations/rightcomm-tmul.md) | 371 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `theorem` | [rightComm_symm_tmul](declarations/rightcomm-symm-tmul.md) | 376 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `def` | [tensorTensorTensorComm](declarations/tensortensortensorcomm.md) | 385 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `theorem` | [tensorTensorTensorComm_tmul](declarations/tensortensortensorcomm-tmul.md) | 394 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `theorem` | [tensorTensorTensorComm_symm_tmul](declarations/tensortensortensorcomm-symm-tmul.md) | 399 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=fc63e7386d4e1ad3506971926fca7e8892dee16b22e3485fdd7561f4492b1fd2 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/Tower/Variante9ef998b5cd85ccb1c1dbbd557e4465563655eb55b52fd552e8218af809b00a1.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
