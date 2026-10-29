# Associator Public

[Complete source index](../../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**51 observed declarations and anonymous commands**, 43 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Algebra/LinearAlgebra/Associator/Variant5789ba37d79f996b61eb78862e800d1da1f897a189d27ec7586da8102ccd7135.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `feccf5348a2553cb4f456aeca001d460c14e846e`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../_verification/specifications/LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MultilinearAlgebraTensorCalculus/AssociatorPublic.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [lid](declarations/lid.md) | 39 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `theorem` | [lid_tmul](declarations/lid-tmul.md) | 49 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `theorem` | [lid_symm_apply](declarations/lid-symm-apply.md) | 53 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `theorem` | [toLinearMap_symm_lid](declarations/tolinearmap-symm-lid.md) | 56 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `lemma` | [includeRight_lid](declarations/includeright-lid.md) | 58 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `def` | [rid](declarations/rid.md) | 72 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [rid_tmul](declarations/rid-tmul.md) | 82 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [rid_symm_apply](declarations/rid-symm-apply.md) | 86 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [toLinearMap_symm_rid](declarations/tolinearmap-symm-rid.md) | 89 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [comm_trans_lid](declarations/comm-trans-lid.md) | 92 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `lemma` | [lid_comm](declarations/lid-comm.md) | 96 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [comm_trans_rid](declarations/comm-trans-rid.md) | 101 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `lemma` | [rid_comm](declarations/rid-comm.md) | 105 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [lid_eq_rid](declarations/lid-eq-rid.md) | 110 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `def` | [lidOfCompatibleSMul](declarations/lidofcompatiblesmul.md) | 121 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [lidOfCompatibleSMul_tmul](declarations/lidofcompatiblesmul-tmul.md) | 124 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `lemma` | [CompatibleSMul.of_algebraMap_surjective](declarations/compatiblesmul-of-algebramap-surjective.md) | 127 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `def` | [assoc](declarations/assoc.md) | 145 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [assoc_tmul](declarations/assoc-tmul.md) | 155 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [assoc_symm_tmul](declarations/assoc-symm-tmul.md) | 160 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `lemma` | [map_map_comp_assoc_eq](declarations/map-map-comp-assoc-eq.md) | 167 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `lemma` | [map_map_assoc](declarations/map-map-assoc.md) | 172 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `lemma` | [map_map_comp_assoc_symm_eq](declarations/map-map-comp-assoc-symm-eq.md) | 180 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `lemma` | [map_map_assoc_symm](declarations/map-map-assoc-symm.md) | 185 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `lemma` | [assoc_tensor](declarations/assoc-tensor-source-edition-2.md) | 190 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `lemma` | [assoc_tensor'](declarations/assoc-tensor.md) | 196 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `lemma` | [assoc_tensor''](declarations/assoc-tensor-source-edition-3.md) | 202 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `lemma` | [lid_tensor](declarations/lid-tensor.md) | 208 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `def` | [leftComm](declarations/leftcomm.md) | 218 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [leftComm_tmul](declarations/leftcomm-tmul.md) | 227 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [leftComm_symm_tmul](declarations/leftcomm-symm-tmul.md) | 231 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `lemma` | [leftComm_def](declarations/leftcomm-def.md) | 236 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `def` | [rightComm](declarations/rightcomm.md) | 244 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [rightComm_tmul](declarations/rightcomm-tmul.md) | 251 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `theorem` | [rightComm_symm](declarations/rightcomm-symm.md) | 256 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `lemma` | [rightComm_def](declarations/rightcomm-def.md) | 259 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `def` | [tensorTensorTensorComm](declarations/tensortensortensorcomm.md) | 276 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `theorem` | [tensorTensorTensorComm_tmul](declarations/tensortensortensorcomm-tmul.md) | 284 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `theorem` | [tensorTensorTensorComm_symm](declarations/tensortensortensorcomm-symm.md) | 289 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `theorem` | [tensorTensorTensorComm_trans_tensorTensorTensorComm](declarations/tensortensortensorcomm-trans-tensortensortensorcomm.md) | 293 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `theorem` | [tensorTensorTensorComm_comp_map](declarations/tensortensortensorcomm-comp-map.md) | 298 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `def` | [tensorTensorTensorAssoc](declarations/tensortensortensorassoc.md) | 315 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `theorem` | [tensorTensorTensorAssoc_tmul](declarations/tensortensortensorassoc-tmul.md) | 322 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `theorem` | [tensorTensorTensorAssoc_symm_tmul](declarations/tensortensortensorassoc-symm-tmul.md) | 327 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `lemma` | [lTensor_tensor](declarations/ltensor-tensor.md) | 347 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `theorem` | [rTensor_tensor](declarations/rtensor-tensor.md) | 351 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `theorem` | [lid_comp_rTensor](declarations/lid-comp-rtensor.md) | 357 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `lemma` | [rid_comp_lTensor](declarations/rid-comp-ltensor.md) | 360 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `lemma` | [lTensor_rTensor_comp_assoc](declarations/ltensor-rtensor-comp-assoc.md) | 363 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `lemma` | [rTensor_lTensor_comp_assoc_symm](declarations/rtensor-ltensor-comp-assoc-symm.md) | 368 | `BLOCKED_NATIVE_ADMISSION` |
| 51 | `lemma` | [tensorProductAssoc_def](declarations/tensorproductassoc-def.md) | 383 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=b2e4c38f308d24f5f111a15007a29229f6012f8ab1821b17fa588f52939d8148 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/Associator/Variant5789ba37d79f996b61eb78862e800d1da1f897a189d27ec7586da8102ccd7135.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
