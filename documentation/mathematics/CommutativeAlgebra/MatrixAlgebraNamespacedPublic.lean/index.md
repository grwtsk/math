# Matrix Algebra Namespaced Public

[Complete source index](../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**41 observed declarations and anonymous commands**, 29 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Algebra/LinearAlgebra/MatrixAlgebra/Variant2ba13c01059859ba2c690cd8de36e9bca170165116c056a13467b2563118360f.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `c3320cc4f70dd5baa3cfef67229d1eaa307fefa6`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../_verification/specifications/CommutativeAlgebra/MatrixAlgebraNamespacedPublic.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [kroneckerTMulLinearEquiv](declarations/kroneckertmullinearequiv.md) | 53 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `theorem` | [kroneckerTMulLinearEquiv_tmul](declarations/kroneckertmullinearequiv-tmul.md) | 67 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `theorem` | [kroneckerTMulLinearEquiv_symm_kroneckerTMul](declarations/kroneckertmullinearequiv-symm-kroneckertmul.md) | 71 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `theorem` | [kroneckerTMulAlgEquiv_symm_single_tmul](declarations/kroneckertmulalgequiv-symm-single-tmul.md) | 76 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [kroneckerTMulLinearEquiv_one](declarations/kroneckertmullinearequiv-one.md) | 84 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [kroneckerTMulLinearEquiv_mul](declarations/kroneckertmullinearequiv-mul.md) | 90 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `def` | [kroneckerLinearEquiv](declarations/kroneckerlinearequiv.md) | 99 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [kroneckerLinearEquiv_tmul](declarations/kroneckerlinearequiv-tmul.md) | 104 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [kroneckerLinearEquiv_symm_kronecker](declarations/kroneckerlinearequiv-symm-kronecker.md) | 107 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `def` | [toFunBilinear](declarations/tofunbilinear.md) | 123 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [toFunBilinear_apply](declarations/tofunbilinear-apply.md) | 127 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `def` | [toFunLinear](declarations/tofunlinear.md) | 135 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `def` | [toFunAlgHom](declarations/tofunalghom.md) | 142 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [toFunAlgHom_apply](declarations/tofunalghom-apply.md) | 156 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `def` | [invFun](declarations/invfun.md) | 164 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [invFun_zero](declarations/invfun-zero.md) | 168 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [invFun_add](declarations/invfun-add.md) | 171 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [invFun_smul](declarations/invfun-smul.md) | 176 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [invFun_algebraMap](declarations/invfun-algebramap.md) | 181 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [right_inv](declarations/right-inv.md) | 188 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [left_inv](declarations/left-inv.md) | 194 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `def` | [equiv](declarations/equiv.md) | 205 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `def` | [matrixEquivTensor](declarations/matrixequivtensor.md) | 217 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [matrixEquivTensor_apply](declarations/matrixequivtensor-apply.md) | 221 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [matrixEquivTensor_apply_single](declarations/matrixequivtensor-apply-single.md) | 227 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [matrixEquivTensor_apply_symm](declarations/matrixequivtensor-apply-symm.md) | 233 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `def` | [kroneckerTMulAlgEquiv](declarations/kroneckertmulalgequiv.md) | 245 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [kroneckerTMulAlgEquiv_apply](declarations/kroneckertmulalgequiv-apply.md) | 254 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [kroneckerTMulAlgEquiv_symm_apply](declarations/kroneckertmulalgequiv-symm-apply.md) | 259 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `def` | [kroneckerTMulStarAlgEquiv](declarations/kroneckertmulstaralgequiv.md) | 269 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [toAlgEquiv_kroneckerTMulStarAlgEquiv](declarations/toalgequiv-kroneckertmulstaralgequiv.md) | 276 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [kroneckerTMulStarAlgEquiv_apply](declarations/kroneckertmulstaralgequiv-apply.md) | 280 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [kroneckerTMulStarAlgEquiv_symm_apply](declarations/kroneckertmulstaralgequiv-symm-apply.md) | 285 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `def` | [kroneckerAlgEquiv](declarations/kroneckeralgequiv.md) | 294 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `theorem` | [toLinearEquiv_kroneckerAlgEquiv](declarations/tolinearequiv-kroneckeralgequiv.md) | 297 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `theorem` | [kroneckerAlgEquiv_apply](declarations/kroneckeralgequiv-apply.md) | 300 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `theorem` | [kroneckerAlgEquiv_symm_apply](declarations/kroneckeralgequiv-symm-apply.md) | 303 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `def` | [kroneckerStarAlgEquiv](declarations/kroneckerstaralgequiv.md) | 308 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `theorem` | [toAlgEquiv_kroneckerStarAlgEquiv](declarations/toalgequiv-kroneckerstaralgequiv.md) | 315 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `theorem` | [kroneckerStarAlgEquiv_apply](declarations/kroneckerstaralgequiv-apply.md) | 318 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `theorem` | [kroneckerStarAlgEquiv_symm_apply](declarations/kroneckerstaralgequiv-symm-apply.md) | 321 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=63730e5b2eeeed7b9441c461282c5092a093dd29dc39249a57e29439ee66c5ad -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/MatrixAlgebra/Variant2ba13c01059859ba2c690cd8de36e9bca170165116c056a13467b2563118360f.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
