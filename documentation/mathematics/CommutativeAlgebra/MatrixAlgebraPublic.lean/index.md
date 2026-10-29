# Matrix Algebra Public

[Complete source index](../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**41 observed declarations and anonymous commands**, 29 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Algebra/LinearAlgebra/MatrixAlgebra/Variant005ee9e0704ee18b963df5cf7c57e4bff1a5b72bb7d8c778d54c07d78b91bc58.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `5c97e0bf0185fc2c5c408d92f32d8a7681b39375`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../_verification/specifications/CommutativeAlgebra/MatrixAlgebraPublic.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [kroneckerTMulLinearEquiv](declarations/kroneckertmullinearequiv.md) | 45 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `theorem` | [kroneckerTMulLinearEquiv_tmul](declarations/kroneckertmullinearequiv-tmul.md) | 59 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `theorem` | [kroneckerTMulLinearEquiv_symm_kroneckerTMul](declarations/kroneckertmullinearequiv-symm-kroneckertmul.md) | 63 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `theorem` | [kroneckerTMulAlgEquiv_symm_single_tmul](declarations/kroneckertmulalgequiv-symm-single-tmul.md) | 68 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [kroneckerTMulLinearEquiv_one](declarations/kroneckertmullinearequiv-one.md) | 76 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [kroneckerTMulLinearEquiv_mul](declarations/kroneckertmullinearequiv-mul.md) | 82 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `def` | [kroneckerLinearEquiv](declarations/kroneckerlinearequiv.md) | 91 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [kroneckerLinearEquiv_tmul](declarations/kroneckerlinearequiv-tmul.md) | 96 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [kroneckerLinearEquiv_symm_kronecker](declarations/kroneckerlinearequiv-symm-kronecker.md) | 99 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `def` | [toFunBilinear](declarations/tofunbilinear.md) | 115 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [toFunBilinear_apply](declarations/tofunbilinear-apply.md) | 119 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `def` | [toFunLinear](declarations/tofunlinear.md) | 127 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `def` | [toFunAlgHom](declarations/tofunalghom.md) | 134 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [toFunAlgHom_apply](declarations/tofunalghom-apply.md) | 148 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `def` | [invFun](declarations/invfun.md) | 156 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [invFun_zero](declarations/invfun-zero.md) | 160 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [invFun_add](declarations/invfun-add.md) | 163 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [invFun_smul](declarations/invfun-smul.md) | 168 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [invFun_algebraMap](declarations/invfun-algebramap.md) | 173 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [right_inv](declarations/right-inv.md) | 180 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [left_inv](declarations/left-inv.md) | 186 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `def` | [equiv](declarations/equiv.md) | 197 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `def` | [matrixEquivTensor](declarations/matrixequivtensor.md) | 209 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [matrixEquivTensor_apply](declarations/matrixequivtensor-apply.md) | 213 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [matrixEquivTensor_apply_single](declarations/matrixequivtensor-apply-single.md) | 219 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [matrixEquivTensor_apply_symm](declarations/matrixequivtensor-apply-symm.md) | 225 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `def` | [kroneckerTMulAlgEquiv](declarations/kroneckertmulalgequiv.md) | 237 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [kroneckerTMulAlgEquiv_apply](declarations/kroneckertmulalgequiv-apply.md) | 246 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [kroneckerTMulAlgEquiv_symm_apply](declarations/kroneckertmulalgequiv-symm-apply.md) | 251 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `def` | [kroneckerTMulStarAlgEquiv](declarations/kroneckertmulstaralgequiv.md) | 261 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [toAlgEquiv_kroneckerTMulStarAlgEquiv](declarations/toalgequiv-kroneckertmulstaralgequiv.md) | 268 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [kroneckerTMulStarAlgEquiv_apply](declarations/kroneckertmulstaralgequiv-apply.md) | 272 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [kroneckerTMulStarAlgEquiv_symm_apply](declarations/kroneckertmulstaralgequiv-symm-apply.md) | 277 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `def` | [kroneckerAlgEquiv](declarations/kroneckeralgequiv.md) | 286 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `theorem` | [toLinearEquiv_kroneckerAlgEquiv](declarations/tolinearequiv-kroneckeralgequiv.md) | 289 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `theorem` | [kroneckerAlgEquiv_apply](declarations/kroneckeralgequiv-apply.md) | 292 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `theorem` | [kroneckerAlgEquiv_symm_apply](declarations/kroneckeralgequiv-symm-apply.md) | 295 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `def` | [kroneckerStarAlgEquiv](declarations/kroneckerstaralgequiv.md) | 300 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `theorem` | [toAlgEquiv_kroneckerStarAlgEquiv](declarations/toalgequiv-kroneckerstaralgequiv.md) | 307 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `theorem` | [kroneckerStarAlgEquiv_apply](declarations/kroneckerstaralgequiv-apply.md) | 310 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `theorem` | [kroneckerStarAlgEquiv_symm_apply](declarations/kroneckerstaralgequiv-symm-apply.md) | 313 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=0d227f50eee87327ab21dacf2926bd51a697b9a80ae6aa3cda7c119c6c7bfb9c -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/MatrixAlgebra/Variant005ee9e0704ee18b963df5cf7c57e4bff1a5b72bb7d8c778d54c07d78b91bc58.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
