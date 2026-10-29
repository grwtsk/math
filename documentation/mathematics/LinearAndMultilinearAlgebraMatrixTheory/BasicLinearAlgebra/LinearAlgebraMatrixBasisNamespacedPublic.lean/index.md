# Linear Algebra Matrix Basis Namespaced Public

[Complete source index](../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**31 observed declarations and anonymous commands**, 28 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Algebra/LinearAlgebra/Basis/Variantefebd488c3aa4589a1d466704ad7710e50ef4ab4303006ce3a59e83326e50f13.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `c38e864d6fd53b999e7533a3e7edadc68f8dece7`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraMatrixBasisNamespacedPublic.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [toMatrix](declarations/tomatrix.md) | 59 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `theorem` | [toMatrix_apply](declarations/tomatrix-apply.md) | 63 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `theorem` | [toMatrix_transpose_apply](declarations/tomatrix-transpose-apply.md) | 66 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `theorem` | [toMatrix_eq_toMatrix_constr](declarations/tomatrix-eq-tomatrix-constr.md) | 69 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [coePiBasisFun.toMatrix_eq_transpose](declarations/coepibasisfun-tomatrix-eq-transpose.md) | 75 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [toMatrix_self](declarations/tomatrix-self.md) | 81 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [toMatrix_update](declarations/tomatrix-update.md) | 86 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [toMatrix_unitsSMul](declarations/tomatrix-unitssmul.md) | 96 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [toMatrix_isUnitSMul](declarations/tomatrix-isunitsmul.md) | 104 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [toMatrix_smul_left](declarations/tomatrix-smul-left.md) | 108 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [sum_toMatrix_smul_self](declarations/sum-tomatrix-smul-self.md) | 112 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [toMatrix_smul](declarations/tomatrix-smul.md) | 115 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [toMatrix_map_vecMul](declarations/tomatrix-map-vecmul.md) | 122 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [toLin_toMatrix](declarations/tolin-tomatrix.md) | 129 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `def` | [toMatrixEquiv](declarations/tomatrixequiv.md) | 135 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [restrictScalars_toMatrix](declarations/restrictscalars-tomatrix.md) | 158 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [LinearMap.toMatrix_id_eq_basis_toMatrix](declarations/linearmap-tomatrix-id-eq-basis-tomatrix.md) | 181 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [basis_toMatrix_mul_linearMap_toMatrix](declarations/basis-tomatrix-mul-linearmap-tomatrix.md) | 189 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [basis_toMatrix_mul](declarations/basis-tomatrix-mul.md) | 195 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [linearMap_toMatrix_mul_basis_toMatrix](declarations/linearmap-tomatrix-mul-basis-tomatrix.md) | 204 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [basis_toMatrix_mul_linearMap_toMatrix_mul_basis_toMatrix](declarations/basis-tomatrix-mul-linearmap-tomatrix-mul-basis-tomatrix.md) | 209 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [mul_basis_toMatrix](declarations/mul-basis-tomatrix.md) | 215 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [basis_toMatrix_basisFun_mul](declarations/basis-tomatrix-basisfun-mul.md) | 222 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [toMatrix_reindex'](declarations/tomatrix-reindex-source-edition-2.md) | 233 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `lemma` | [toMatrix_mulVec_repr](declarations/tomatrix-mulvec-repr.md) | 241 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [toMatrix_mul_toMatrix](declarations/tomatrix-mul-tomatrix.md) | 253 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [toMatrix_mul_toMatrix_flip](declarations/tomatrix-mul-tomatrix-flip.md) | 262 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `def` | [invertibleToMatrix](declarations/invertibletomatrix.md) | 267 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [toMatrix_reindex](declarations/tomatrix-reindex.md) | 272 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [toMatrix_map](declarations/tomatrix-map.md) | 278 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `lemma` | [Linear Algebra Matrix Basis Namespaced Public](declarations/tomatrix-eq-basistomatrix.md) | 283 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=6fbc8605121bcfe5dd513ade71ba847059da81d2fe1653ba659ec460bf1b54c8 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/Basis/Variantefebd488c3aa4589a1d466704ad7710e50ef4ab4303006ce3a59e83326e50f13.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
