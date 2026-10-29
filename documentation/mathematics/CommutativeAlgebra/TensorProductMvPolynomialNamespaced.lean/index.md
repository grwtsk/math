# Tensor Product Mv Polynomial Namespaced

[Complete source index](../../complete-source-index.md) · [Up one directory](../../complete-source-index.md) · [Full source](source.md)

**28 observed declarations and anonymous commands**, 20 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Algebra/CommutativeAlgebra/MvPolynomial/Variant91d7dd2b4528a0f65d40435b64bc9ff8bf44676de227302909e74ebe9edb500e.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `9194f3a7bf1caeb70022dc09a26c65cd7250cd1e`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../_verification/specifications/CommutativeAlgebra/TensorProductMvPolynomialNamespaced.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [rTensor](declarations/rtensor.md) | 73 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `lemma` | [rTensor_apply_tmul](declarations/rtensor-apply-tmul.md) | 77 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `lemma` | [rTensor_apply_tmul_apply](declarations/rtensor-apply-tmul-apply.md) | 81 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `lemma` | [rTensor_apply_monomial_tmul](declarations/rtensor-apply-monomial-tmul.md) | 85 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `lemma` | [rTensor_apply_X_tmul](declarations/rtensor-apply-x-tmul.md) | 89 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `lemma` | [rTensor_apply](declarations/rtensor-apply.md) | 93 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `lemma` | [rTensor_symm_apply_single](declarations/rtensor-symm-apply-single.md) | 98 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `def` | [scalarRTensor](declarations/scalarrtensor.md) | 105 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `lemma` | [scalarRTensor_apply_tmul](declarations/scalarrtensor-apply-tmul.md) | 109 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `lemma` | [scalarRTensor_apply_tmul_apply](declarations/scalarrtensor-apply-tmul-apply.md) | 113 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `lemma` | [scalarRTensor_apply_monomial_tmul](declarations/scalarrtensor-apply-monomial-tmul.md) | 117 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `lemma` | [scalarRTensor_apply_X_tmul_apply](declarations/scalarrtensor-apply-x-tmul-apply.md) | 121 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `lemma` | [scalarRTensor_symm_apply_single](declarations/scalarrtensor-symm-apply-single.md) | 125 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `def` | [rTensorAlgHom](declarations/rtensoralghom.md) | 137 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `lemma` | [coeff_rTensorAlgHom_tmul](declarations/coeff-rtensoralghom-tmul.md) | 145 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `lemma` | [coeff_rTensorAlgHom_monomial_tmul](declarations/coeff-rtensoralghom-monomial-tmul.md) | 157 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `lemma` | [rTensorAlgHom_toLinearMap](declarations/rtensoralghom-tolinearmap.md) | 163 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `lemma` | [rTensorAlgHom_apply_eq](declarations/rtensoralghom-apply-eq.md) | 176 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `def` | [rTensorAlgEquiv](declarations/rtensoralgequiv.md) | 183 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `lemma` | [rTensorAlgEquiv_apply](declarations/rtensoralgequiv-apply.md) | 196 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `def` | [scalarRTensorAlgEquiv](declarations/scalarrtensoralgequiv.md) | 205 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `def` | [algebraTensorAlgEquiv](declarations/algebratensoralgequiv.md) | 216 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `lemma` | [algebraTensorAlgEquiv_tmul](declarations/algebratensoralgequiv-tmul.md) | 226 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `lemma` | [algebraTensorAlgEquiv_symm_X](declarations/algebratensoralgequiv-symm-x.md) | 232 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `lemma` | [algebraTensorAlgEquiv_symm_monomial](declarations/algebratensoralgequiv-symm-monomial.md) | 237 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `lemma` | [aeval_one_tmul](declarations/aeval-one-tmul.md) | 248 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `instance` | [(anonymous)](declarations/instance-source-edition-2.md) | 262 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `instance` | [(anonymous)](declarations/instance.md) | 265 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=e5e363df258d720042e01a65d54b28e31b8c9882cc898412cfe44f4bea5a6cde -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/CommutativeAlgebra/MvPolynomial/Variant91d7dd2b4528a0f65d40435b64bc9ff8bf44676de227302909e74ebe9edb500e.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
