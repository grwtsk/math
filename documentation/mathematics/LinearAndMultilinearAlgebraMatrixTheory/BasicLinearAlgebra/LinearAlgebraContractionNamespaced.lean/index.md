# Linear Algebra Contraction Namespaced

[Complete source index](../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**27 observed declarations and anonymous commands**, 19 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Algebra/LinearAlgebra/Contraction/Variant4c325f97216342389bd22e5d3b934a7c7dcd3f4ca36de3ab9839f84684099cda.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `965d155bef25f4160989b036aa2e99aeef378675`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraContractionNamespaced.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [contractLeft](declarations/contractleft.md) | 50 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `def` | [contractRight](declarations/contractright.md) | 54 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `def` | [dualTensorHom](declarations/dualtensorhom.md) | 58 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `theorem` | [contractLeft_apply](declarations/contractleft-apply.md) | 65 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [contractRight_apply](declarations/contractright-apply.md) | 69 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [dualTensorHom_apply](declarations/dualtensorhom-apply.md) | 73 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [transpose_dualTensorHom](declarations/transpose-dualtensorhom.md) | 78 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [dualTensorHom_prodMap_zero](declarations/dualtensorhom-prodmap-zero.md) | 88 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [zero_prodMap_dualTensorHom](declarations/zero-prodmap-dualtensorhom.md) | 96 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [map_dualTensorHom](declarations/map-dualtensorhom.md) | 103 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [comp_dualTensorHom](declarations/comp-dualtensorhom.md) | 111 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [toMatrix_dualTensorHom](declarations/tomatrix-dualtensorhom.md) | 121 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `def` | [dualTensorHomEquivOfBasis](declarations/dualtensorhomequivofbasis.md) | 143 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [dualTensorHomEquivOfBasis_apply](declarations/dualtensorhomequivofbasis-apply.md) | 158 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [dualTensorHomEquivOfBasis_toLinearMap](declarations/dualtensorhomequivofbasis-tolinearmap.md) | 163 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [dualTensorHomEquivOfBasis_symm_cancel_left](declarations/dualtensorhomequivofbasis-symm-cancel-left.md) | 168 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [dualTensorHomEquivOfBasis_symm_cancel_right](declarations/dualtensorhomequivofbasis-symm-cancel-right.md) | 174 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `def` | [dualTensorHomEquiv](declarations/dualtensorhomequiv.md) | 184 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `def` | [lTensorHomEquivHomLTensor](declarations/ltensorhomequivhomltensor.md) | 208 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `def` | [rTensorHomEquivHomRTensor](declarations/rtensorhomequivhomrtensor.md) | 217 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [lTensorHomEquivHomLTensor_toLinearMap](declarations/ltensorhomequivhomltensor-tolinearmap.md) | 222 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [rTensorHomEquivHomRTensor_toLinearMap](declarations/rtensorhomequivhomrtensor-tolinearmap.md) | 234 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [lTensorHomEquivHomLTensor_apply](declarations/ltensorhomequivhomltensor-apply.md) | 249 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [rTensorHomEquivHomRTensor_apply](declarations/rtensorhomequivhomrtensor-apply.md) | 254 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `def` | [homTensorHomEquiv](declarations/homtensorhomequiv.md) | 264 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [homTensorHomEquiv_toLinearMap](declarations/homtensorhomequiv-tolinearmap.md) | 270 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [homTensorHomEquiv_apply](declarations/homtensorhomequiv-apply.md) | 282 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=1a521294fa3581a792c6ed48414102204ba7f86c80634dd92d98982439ef5b5c -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/Contraction/Variant4c325f97216342389bd22e5d3b934a7c7dcd3f4ca36de3ab9839f84684099cda.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
