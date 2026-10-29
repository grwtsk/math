# Tensor Product Mv Polynomial

[Complete source index](../../complete-source-index.md) · [Up one directory](../../complete-source-index.md) · [Full source](source.md)

**28 observed declarations and anonymous commands**, 20 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Algebra/CommutativeAlgebra/MvPolynomial/Variantddbdd86baabcf758891b9f92ee4e6a887d9a4be0b33abf4cc1929c6236a382e5.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `4fe9e8aad4c4a5ad8c593ef2b3c88a81fbc77439`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../_verification/specifications/CommutativeAlgebra/TensorProductMvPolynomial.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [rTensor](declarations/rtensor.md) | 65 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `lemma` | [rTensor_apply_tmul](declarations/rtensor-apply-tmul.md) | 69 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `lemma` | [rTensor_apply_tmul_apply](declarations/rtensor-apply-tmul-apply.md) | 73 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `lemma` | [rTensor_apply_monomial_tmul](declarations/rtensor-apply-monomial-tmul.md) | 77 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `lemma` | [rTensor_apply_X_tmul](declarations/rtensor-apply-x-tmul.md) | 81 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `lemma` | [rTensor_apply](declarations/rtensor-apply.md) | 85 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `lemma` | [rTensor_symm_apply_single](declarations/rtensor-symm-apply-single.md) | 90 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `def` | [scalarRTensor](declarations/scalarrtensor.md) | 97 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `lemma` | [scalarRTensor_apply_tmul](declarations/scalarrtensor-apply-tmul.md) | 101 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `lemma` | [scalarRTensor_apply_tmul_apply](declarations/scalarrtensor-apply-tmul-apply.md) | 105 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `lemma` | [scalarRTensor_apply_monomial_tmul](declarations/scalarrtensor-apply-monomial-tmul.md) | 109 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `lemma` | [scalarRTensor_apply_X_tmul_apply](declarations/scalarrtensor-apply-x-tmul-apply.md) | 113 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `lemma` | [scalarRTensor_symm_apply_single](declarations/scalarrtensor-symm-apply-single.md) | 117 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `def` | [rTensorAlgHom](declarations/rtensoralghom.md) | 129 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `lemma` | [coeff_rTensorAlgHom_tmul](declarations/coeff-rtensoralghom-tmul.md) | 137 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `lemma` | [coeff_rTensorAlgHom_monomial_tmul](declarations/coeff-rtensoralghom-monomial-tmul.md) | 149 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `lemma` | [rTensorAlgHom_toLinearMap](declarations/rtensoralghom-tolinearmap.md) | 155 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `lemma` | [rTensorAlgHom_apply_eq](declarations/rtensoralghom-apply-eq.md) | 168 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `def` | [rTensorAlgEquiv](declarations/rtensoralgequiv.md) | 175 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `lemma` | [rTensorAlgEquiv_apply](declarations/rtensoralgequiv-apply.md) | 188 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `def` | [scalarRTensorAlgEquiv](declarations/scalarrtensoralgequiv.md) | 197 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `def` | [algebraTensorAlgEquiv](declarations/algebratensoralgequiv.md) | 208 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `lemma` | [algebraTensorAlgEquiv_tmul](declarations/algebratensoralgequiv-tmul.md) | 218 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `lemma` | [algebraTensorAlgEquiv_symm_X](declarations/algebratensoralgequiv-symm-x.md) | 224 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `lemma` | [algebraTensorAlgEquiv_symm_monomial](declarations/algebratensoralgequiv-symm-monomial.md) | 229 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `lemma` | [aeval_one_tmul](declarations/aeval-one-tmul.md) | 240 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `instance` | [(anonymous)](declarations/instance.md) | 254 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `instance` | [(anonymous)](declarations/instance-source-edition-2.md) | 257 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=85a474a3cea82c4c00dc28bac778e2305e2992c0dc1e91edc9a211f3ef1f6c23 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/CommutativeAlgebra/MvPolynomial/Variantddbdd86baabcf758891b9f92ee4e6a887d9a4be0b33abf4cc1929c6236a382e5.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
