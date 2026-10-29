# Linear Algebra Contraction

[Complete source index](../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**27 observed declarations and anonymous commands**, 19 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Algebra/LinearAlgebra/Contraction/Variant0d82734153e27915e9bb6b3c62c2bbce1be790f722739311ec7f5c21f473bec6.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `965eb182c752b89837bcef4648c0ad893ffd2bae`.

**Verification:** `BLOCKED_SOURCE_DEPENDENCY`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraContraction.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [contractLeft](declarations/contractleft.md) | 42 | `BLOCKED_SOURCE_DEPENDENCY` |
| 2 | `def` | [contractRight](declarations/contractright.md) | 46 | `BLOCKED_SOURCE_DEPENDENCY` |
| 3 | `def` | [dualTensorHom](declarations/dualtensorhom.md) | 50 | `BLOCKED_SOURCE_DEPENDENCY` |
| 4 | `theorem` | [contractLeft_apply](declarations/contractleft-apply.md) | 57 | `BLOCKED_SOURCE_DEPENDENCY` |
| 5 | `theorem` | [contractRight_apply](declarations/contractright-apply.md) | 61 | `BLOCKED_SOURCE_DEPENDENCY` |
| 6 | `theorem` | [dualTensorHom_apply](declarations/dualtensorhom-apply.md) | 65 | `BLOCKED_SOURCE_DEPENDENCY` |
| 7 | `theorem` | [transpose_dualTensorHom](declarations/transpose-dualtensorhom.md) | 70 | `BLOCKED_SOURCE_DEPENDENCY` |
| 8 | `theorem` | [dualTensorHom_prodMap_zero](declarations/dualtensorhom-prodmap-zero.md) | 80 | `BLOCKED_SOURCE_DEPENDENCY` |
| 9 | `theorem` | [zero_prodMap_dualTensorHom](declarations/zero-prodmap-dualtensorhom.md) | 88 | `BLOCKED_SOURCE_DEPENDENCY` |
| 10 | `theorem` | [map_dualTensorHom](declarations/map-dualtensorhom.md) | 95 | `BLOCKED_SOURCE_DEPENDENCY` |
| 11 | `theorem` | [comp_dualTensorHom](declarations/comp-dualtensorhom.md) | 103 | `BLOCKED_SOURCE_DEPENDENCY` |
| 12 | `theorem` | [toMatrix_dualTensorHom](declarations/tomatrix-dualtensorhom.md) | 113 | `BLOCKED_SOURCE_DEPENDENCY` |
| 13 | `def` | [dualTensorHomEquivOfBasis](declarations/dualtensorhomequivofbasis.md) | 135 | `BLOCKED_SOURCE_DEPENDENCY` |
| 14 | `theorem` | [dualTensorHomEquivOfBasis_apply](declarations/dualtensorhomequivofbasis-apply.md) | 150 | `BLOCKED_SOURCE_DEPENDENCY` |
| 15 | `theorem` | [dualTensorHomEquivOfBasis_toLinearMap](declarations/dualtensorhomequivofbasis-tolinearmap.md) | 155 | `BLOCKED_SOURCE_DEPENDENCY` |
| 16 | `theorem` | [dualTensorHomEquivOfBasis_symm_cancel_left](declarations/dualtensorhomequivofbasis-symm-cancel-left.md) | 160 | `BLOCKED_SOURCE_DEPENDENCY` |
| 17 | `theorem` | [dualTensorHomEquivOfBasis_symm_cancel_right](declarations/dualtensorhomequivofbasis-symm-cancel-right.md) | 166 | `BLOCKED_SOURCE_DEPENDENCY` |
| 18 | `def` | [dualTensorHomEquiv](declarations/dualtensorhomequiv.md) | 176 | `BLOCKED_SOURCE_DEPENDENCY` |
| 19 | `def` | [lTensorHomEquivHomLTensor](declarations/ltensorhomequivhomltensor.md) | 200 | `BLOCKED_SOURCE_DEPENDENCY` |
| 20 | `def` | [rTensorHomEquivHomRTensor](declarations/rtensorhomequivhomrtensor.md) | 209 | `BLOCKED_SOURCE_DEPENDENCY` |
| 21 | `theorem` | [lTensorHomEquivHomLTensor_toLinearMap](declarations/ltensorhomequivhomltensor-tolinearmap.md) | 214 | `BLOCKED_SOURCE_DEPENDENCY` |
| 22 | `theorem` | [rTensorHomEquivHomRTensor_toLinearMap](declarations/rtensorhomequivhomrtensor-tolinearmap.md) | 226 | `BLOCKED_SOURCE_DEPENDENCY` |
| 23 | `theorem` | [lTensorHomEquivHomLTensor_apply](declarations/ltensorhomequivhomltensor-apply.md) | 241 | `BLOCKED_SOURCE_DEPENDENCY` |
| 24 | `theorem` | [rTensorHomEquivHomRTensor_apply](declarations/rtensorhomequivhomrtensor-apply.md) | 246 | `BLOCKED_SOURCE_DEPENDENCY` |
| 25 | `def` | [homTensorHomEquiv](declarations/homtensorhomequiv.md) | 256 | `BLOCKED_SOURCE_DEPENDENCY` |
| 26 | `theorem` | [homTensorHomEquiv_toLinearMap](declarations/homtensorhomequiv-tolinearmap.md) | 262 | `BLOCKED_SOURCE_DEPENDENCY` |
| 27 | `theorem` | [homTensorHomEquiv_apply](declarations/homtensorhomequiv-apply.md) | 274 | `BLOCKED_SOURCE_DEPENDENCY` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=437d5a6cff8567674cdfc694ec082d2ce54bffc62ecd0c5c263387459799e16d -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/Contraction/Variant0d82734153e27915e9bb6b3c62c2bbce1be790f722739311ec7f5c21f473bec6.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
