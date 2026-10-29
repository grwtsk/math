# Tensor Product Basis Namespaced

[Complete source index](../../../../complete-source-index.md) · [Up one directory](../../complete-source-index.md) · [Full source](source.md)

**24 observed declarations and anonymous commands**, 19 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Algebra/LinearAlgebra/Basis/Variante408d8d04bef042a53397d1d4c634dcd2aa0ea21c02713ab43a462e996c978b9.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `0b269e75d93108351ad599ba49017d1124bdc98a`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../_verification/specifications/LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MultilinearAlgebraTensorCalculus/TensorProductBasisNamespaced.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [Basis.tensorProduct](declarations/basis-tensorproduct.md) | 40 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `theorem` | [Basis.tensorProduct_apply](declarations/basis-tensorproduct-apply-source-edition-2.md) | 48 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `theorem` | [Basis.tensorProduct_apply'](declarations/basis-tensorproduct-apply.md) | 52 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `theorem` | [Basis.tensorProduct_repr_tmul_apply](declarations/basis-tensorproduct-repr-tmul-apply.md) | 57 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `def` | [Basis.baseChange](declarations/basis-basechange.md) | 66 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `lemma` | [Basis.baseChange_repr_tmul](declarations/basis-basechange-repr-tmul.md) | 70 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `lemma` | [Basis.baseChange_apply](declarations/basis-basechange-apply.md) | 75 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `def` | [TensorProduct.equivFinsuppOfBasisRight](declarations/tensorproduct-equivfinsuppofbasisright.md) | 88 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `lemma` | [TensorProduct.equivFinsuppOfBasisRight_apply_tmul](declarations/tensorproduct-equivfinsuppofbasisright-apply-tmul.md) | 92 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `lemma` | [TensorProduct.equivFinsuppOfBasisRight_apply_tmul_apply](declarations/tensorproduct-equivfinsuppofbasisright-apply-tmul-apply.md) | 97 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `lemma` | [TensorProduct.equivFinsuppOfBasisRight_symm](declarations/tensorproduct-equivfinsuppofbasisright-symm.md) | 103 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `lemma` | [TensorProduct.equivFinsuppOfBasisRight_symm_apply](declarations/tensorproduct-equivfinsuppofbasisright-symm-apply.md) | 109 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `lemma` | [TensorProduct.sum_tmul_basis_right_injective](declarations/tensorproduct-sum-tmul-basis-right-injective.md) | 114 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `lemma` | [TensorProduct.sum_tmul_basis_right_eq_zero](declarations/tensorproduct-sum-tmul-basis-right-eq-zero.md) | 121 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `def` | [TensorProduct.equivFinsuppOfBasisLeft](declarations/tensorproduct-equivfinsuppofbasisleft.md) | 130 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `lemma` | [TensorProduct.equivFinsuppOfBasisLeft_apply_tmul](declarations/tensorproduct-equivfinsuppofbasisleft-apply-tmul.md) | 134 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `lemma` | [TensorProduct.equivFinsuppOfBasisLeft_apply_tmul_apply](declarations/tensorproduct-equivfinsuppofbasisleft-apply-tmul-apply.md) | 139 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `lemma` | [TensorProduct.equivFinsuppOfBasisLeft_symm](declarations/tensorproduct-equivfinsuppofbasisleft-symm.md) | 145 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `lemma` | [TensorProduct.equivFinsuppOfBasisLeft_symm_apply](declarations/tensorproduct-equivfinsuppofbasisleft-symm-apply.md) | 151 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `lemma` | [TensorProduct.eq_repr_basis_right](declarations/tensorproduct-eq-repr-basis-right.md) | 158 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `lemma` | [TensorProduct.eq_repr_basis_left](declarations/tensorproduct-eq-repr-basis-left.md) | 165 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `lemma` | [TensorProduct.sum_tmul_basis_left_injective](declarations/tensorproduct-sum-tmul-basis-left-injective.md) | 171 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `lemma` | [TensorProduct.sum_tmul_basis_left_eq_zero](declarations/tensorproduct-sum-tmul-basis-left-eq-zero.md) | 178 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `instance` | [Module.Free.tensor](declarations/module-free-tensor.md) | 188 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=edef49bf311245b2445f972b02b0f8836ef6a2eb2686b773d31e394d38134daf -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/Basis/Variante408d8d04bef042a53397d1d4c634dcd2aa0ea21c02713ab43a462e996c978b9.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
