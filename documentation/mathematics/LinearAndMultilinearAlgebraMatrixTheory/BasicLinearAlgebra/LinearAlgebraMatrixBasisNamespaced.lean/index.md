# Linear Algebra Matrix Basis Namespaced

[Complete source index](../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**30 observed declarations and anonymous commands**, 27 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Algebra/LinearAlgebra/Basis/Variant4184a9b649f42d8175b2bdd39359e765489f1052d61c0009d1dd1d0636a2a659.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `97e66729147e79bd440f7a386139b3a0ec5137b7`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraMatrixBasisNamespaced.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [Basis.toMatrix](declarations/basis-tomatrix.md) | 58 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `theorem` | [toMatrix_apply](declarations/tomatrix-apply.md) | 64 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `theorem` | [toMatrix_transpose_apply](declarations/tomatrix-transpose-apply.md) | 67 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `theorem` | [toMatrix_eq_toMatrix_constr](declarations/tomatrix-eq-tomatrix-constr.md) | 70 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [coePiBasisFun.toMatrix_eq_transpose](declarations/coepibasisfun-tomatrix-eq-transpose.md) | 76 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [toMatrix_self](declarations/tomatrix-self.md) | 82 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [toMatrix_update](declarations/tomatrix-update.md) | 87 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [toMatrix_unitsSMul](declarations/tomatrix-unitssmul.md) | 97 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [toMatrix_isUnitSMul](declarations/tomatrix-isunitsmul.md) | 106 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [toMatrix_smul_left](declarations/tomatrix-smul-left.md) | 110 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [sum_toMatrix_smul_self](declarations/sum-tomatrix-smul-self.md) | 114 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [toMatrix_smul](declarations/tomatrix-smul.md) | 117 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [toMatrix_map_vecMul](declarations/tomatrix-map-vecmul.md) | 124 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [toLin_toMatrix](declarations/tolin-tomatrix.md) | 131 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `def` | [toMatrixEquiv](declarations/tomatrixequiv.md) | 137 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [restrictScalars_toMatrix](declarations/restrictscalars-tomatrix.md) | 161 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [LinearMap.toMatrix_id_eq_basis_toMatrix](declarations/linearmap-tomatrix-id-eq-basis-tomatrix.md) | 184 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [basis_toMatrix_mul_linearMap_toMatrix](declarations/basis-tomatrix-mul-linearmap-tomatrix.md) | 192 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [basis_toMatrix_mul](declarations/basis-tomatrix-mul.md) | 198 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [linearMap_toMatrix_mul_basis_toMatrix](declarations/linearmap-tomatrix-mul-basis-tomatrix.md) | 207 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [basis_toMatrix_mul_linearMap_toMatrix_mul_basis_toMatrix](declarations/basis-tomatrix-mul-linearmap-tomatrix-mul-basis-tomatrix.md) | 212 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [mul_basis_toMatrix](declarations/mul-basis-tomatrix.md) | 218 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [basis_toMatrix_basisFun_mul](declarations/basis-tomatrix-basisfun-mul.md) | 225 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [Basis.toMatrix_reindex'](declarations/basis-tomatrix-reindex-source-edition-2.md) | 234 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `lemma` | [Basis.toMatrix_mulVec_repr](declarations/basis-tomatrix-mulvec-repr.md) | 244 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [Basis.toMatrix_mul_toMatrix](declarations/basis-tomatrix-mul-tomatrix.md) | 254 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [Basis.toMatrix_mul_toMatrix_flip](declarations/basis-tomatrix-mul-tomatrix-flip.md) | 263 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `def` | [Basis.invertibleToMatrix](declarations/basis-invertibletomatrix.md) | 267 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [Basis.toMatrix_reindex](declarations/basis-tomatrix-reindex.md) | 272 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [Basis.toMatrix_map](declarations/basis-tomatrix-map.md) | 279 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=52825dd6f63d9b96b62c666859cfdc05192a7d384cc74883cc76a8c8609bd918 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/Basis/Variant4184a9b649f42d8175b2bdd39359e765489f1052d61c0009d1dd1d0636a2a659.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
