# Tensor Product Basis Namespaced Public

[Complete source index](../../../../complete-source-index.md) · [Up one directory](../../complete-source-index.md) · [Full source](source.md)

**26 observed declarations and anonymous commands**, 21 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Algebra/LinearAlgebra/Basis/Variant634cb914342112930064db203c968e6e4cea00d00c1eb82bc118a36f75011c4c.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `a0724b492e51e77af5e4c439ce77714df427f929`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../_verification/specifications/LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MultilinearAlgebraTensorCalculus/TensorProductBasisNamespacedPublic.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [tensorProduct](declarations/tensorproduct.md) | 46 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `theorem` | [tensorProduct_apply](declarations/tensorproduct-apply.md) | 54 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `theorem` | [tensorProduct_apply'](declarations/tensorproduct-apply-source-edition-2.md) | 58 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `theorem` | [tensorProduct_repr_tmul_apply](declarations/tensorproduct-repr-tmul-apply.md) | 63 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `def` | [baseChange](declarations/basechange.md) | 72 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `lemma` | [baseChange_repr_tmul](declarations/basechange-repr-tmul.md) | 76 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `lemma` | [baseChange_apply](declarations/basechange-apply.md) | 81 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `def` | [TensorProduct.equivFinsuppOfBasisRight](declarations/tensorproduct-equivfinsuppofbasisright.md) | 96 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `lemma` | [TensorProduct.equivFinsuppOfBasisRight_apply_tmul](declarations/tensorproduct-equivfinsuppofbasisright-apply-tmul.md) | 100 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `lemma` | [TensorProduct.equivFinsuppOfBasisRight_apply_tmul_apply](declarations/tensorproduct-equivfinsuppofbasisright-apply-tmul-apply.md) | 105 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `lemma` | [TensorProduct.equivFinsuppOfBasisRight_symm](declarations/tensorproduct-equivfinsuppofbasisright-symm.md) | 111 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `lemma` | [TensorProduct.equivFinsuppOfBasisRight_symm_apply](declarations/tensorproduct-equivfinsuppofbasisright-symm-apply.md) | 117 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `lemma` | [TensorProduct.sum_tmul_basis_right_injective](declarations/tensorproduct-sum-tmul-basis-right-injective.md) | 122 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `lemma` | [TensorProduct.sum_tmul_basis_right_eq_zero](declarations/tensorproduct-sum-tmul-basis-right-eq-zero.md) | 129 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `def` | [TensorProduct.equivFinsuppOfBasisLeft](declarations/tensorproduct-equivfinsuppofbasisleft.md) | 138 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `lemma` | [TensorProduct.equivFinsuppOfBasisLeft_apply_tmul](declarations/tensorproduct-equivfinsuppofbasisleft-apply-tmul.md) | 142 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `lemma` | [TensorProduct.equivFinsuppOfBasisLeft_apply_tmul_apply](declarations/tensorproduct-equivfinsuppofbasisleft-apply-tmul-apply.md) | 147 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `lemma` | [TensorProduct.equivFinsuppOfBasisRight_apply](declarations/tensorproduct-equivfinsuppofbasisright-apply.md) | 155 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `lemma` | [TensorProduct.equivFinsuppOfBasisLeft_apply](declarations/tensorproduct-equivfinsuppofbasisleft-apply.md) | 161 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `lemma` | [TensorProduct.equivFinsuppOfBasisLeft_symm](declarations/tensorproduct-equivfinsuppofbasisleft-symm.md) | 165 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `lemma` | [TensorProduct.equivFinsuppOfBasisLeft_symm_apply](declarations/tensorproduct-equivfinsuppofbasisleft-symm-apply.md) | 171 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `lemma` | [TensorProduct.eq_repr_basis_right](declarations/tensorproduct-eq-repr-basis-right.md) | 178 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `lemma` | [TensorProduct.eq_repr_basis_left](declarations/tensorproduct-eq-repr-basis-left.md) | 185 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `lemma` | [TensorProduct.sum_tmul_basis_left_injective](declarations/tensorproduct-sum-tmul-basis-left-injective.md) | 191 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `lemma` | [TensorProduct.sum_tmul_basis_left_eq_zero](declarations/tensorproduct-sum-tmul-basis-left-eq-zero.md) | 198 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `instance` | [Module.Free.tensor](declarations/module-free-tensor.md) | 205 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=f922e0706def1a7766c03b6303516f260f740507c3ecb593894ea1f5899cbf7e -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/Basis/Variant634cb914342112930064db203c968e6e4cea00d00c1eb82bc118a36f75011c4c.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
