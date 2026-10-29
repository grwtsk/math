# Linear Algebra Contraction Aligned

[Complete source index](../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**27 observed declarations and anonymous commands**, 19 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Algebra/LinearAlgebra/Contraction/Variantba645fc2935e3f656cfc793e677ec5180857fac5527d5d36cb275eac144247fe.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `4bb163548c37f9186ce5655076c7a20d9ca3be09`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraContractionAligned.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [contractLeft](declarations/contractleft.md) | 50 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `def` | [contractRight](declarations/contractright.md) | 56 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `def` | [dualTensorHom](declarations/dualtensorhom.md) | 62 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `theorem` | [contractLeft_apply](declarations/contractleft-apply.md) | 70 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [contractRight_apply](declarations/contractright-apply.md) | 75 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [dualTensorHom_apply](declarations/dualtensorhom-apply.md) | 80 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [transpose_dualTensorHom](declarations/transpose-dualtensorhom.md) | 86 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [dualTensorHom_prodMap_zero](declarations/dualtensorhom-prodmap-zero.md) | 97 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [zero_prodMap_dualTensorHom](declarations/zero-prodmap-dualtensorhom.md) | 106 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [map_dualTensorHom](declarations/map-dualtensorhom.md) | 114 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [comp_dualTensorHom](declarations/comp-dualtensorhom.md) | 123 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [toMatrix_dualTensorHom](declarations/tomatrix-dualtensorhom.md) | 134 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `def` | [dualTensorHomEquivOfBasis](declarations/dualtensorhomequivofbasis.md) | 161 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [dualTensorHomEquivOfBasis_apply](declarations/dualtensorhomequivofbasis-apply.md) | 177 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [dualTensorHomEquivOfBasis_toLinearMap](declarations/dualtensorhomequivofbasis-tolinearmap.md) | 183 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [dualTensorHomEquivOfBasis_symm_cancel_left](declarations/dualtensorhomequivofbasis-symm-cancel-left.md) | 191 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [dualTensorHomEquivOfBasis_symm_cancel_right](declarations/dualtensorhomequivofbasis-symm-cancel-right.md) | 198 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `def` | [dualTensorHomEquiv](declarations/dualtensorhomequiv.md) | 210 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `def` | [lTensorHomEquivHomLTensor](declarations/ltensorhomequivhomltensor.md) | 238 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `def` | [rTensorHomEquivHomRTensor](declarations/rtensorhomequivhomrtensor.md) | 248 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [lTensorHomEquivHomLTensor_toLinearMap](declarations/ltensorhomequivhomltensor-tolinearmap.md) | 254 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [rTensorHomEquivHomRTensor_toLinearMap](declarations/rtensorhomequivhomrtensor-tolinearmap.md) | 269 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [lTensorHomEquivHomLTensor_apply](declarations/ltensorhomequivhomltensor-apply.md) | 286 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [rTensorHomEquivHomRTensor_apply](declarations/rtensorhomequivhomrtensor-apply.md) | 292 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `def` | [homTensorHomEquiv](declarations/homtensorhomequiv.md) | 303 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [homTensorHomEquiv_toLinearMap](declarations/homtensorhomequiv-tolinearmap.md) | 310 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [homTensorHomEquiv_apply](declarations/homtensorhomequiv-apply.md) | 323 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=388edb4aad7fc7f6bcbe3bc69af0851b2a57aa0a1de4e7650c958eb76c9e2bf5 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/Contraction/Variantba645fc2935e3f656cfc793e677ec5180857fac5527d5d36cb275eac144247fe.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
