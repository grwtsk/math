# Verification target: Matrix Algebra Namespaced Matrix Equiv Tensor Apply Std Basis

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "805766b4ef42cac78bb9c86a5fb7fae5b88719e5",
  "lexical_observation_count": 17,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/MatrixAlgebra/Varianted1b96b48223e922ac72f4d0bf1e6fc25c1e685e5a14f4f20db62a9065aa2147.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../CommutativeAlgebra/MatrixAlgebraNamespacedMatrixEquivTensorApplyStdBasis.lean/index.md) · [Full source](../../../../CommutativeAlgebra/MatrixAlgebraNamespacedMatrixEquivTensorApplyStdBasis.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `805766b4ef42cac78bb9c86a5fb7fae5b88719e5`.

Source path: `GRWTSK/Algebra/LinearAlgebra/MatrixAlgebra/Varianted1b96b48223e922ac72f4d0bf1e6fc25c1e685e5a14f4f20db62a9065aa2147.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/MatrixAlgebra/Varianted1b96b48223e922ac72f4d0bf1e6fc25c1e685e5a14f4f20db62a9065aa2147.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Matrix.Basis` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.TensorProduct` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [toFunBilinear](../../../../CommutativeAlgebra/MatrixAlgebraNamespacedMatrixEquivTensorApplyStdBasis.lean/declarations/tofunbilinear.md) | 50 | `declaration-track:f0c87b601004be2678f6266d5100d2db51c2137f0e96ec0ccb6b4b93bb82c973` |
| 2 | `theorem` | [toFunBilinear_apply](../../../../CommutativeAlgebra/MatrixAlgebraNamespacedMatrixEquivTensorApplyStdBasis.lean/declarations/tofunbilinear-apply.md) | 55 | `result-track:e21d2e981ae71cfce1db8a1506606a70e8f1ab073c1a8c8ef56d2dfccad893da` |
| 3 | `def` | [toFunLinear](../../../../CommutativeAlgebra/MatrixAlgebraNamespacedMatrixEquivTensorApplyStdBasis.lean/declarations/tofunlinear.md) | 64 | `declaration-track:c9269e98f488496ae44e870ef48b7157fcc7a634fee6627ea398566826d5b65a` |
| 4 | `def` | [toFunAlgHom](../../../../CommutativeAlgebra/MatrixAlgebraNamespacedMatrixEquivTensorApplyStdBasis.lean/declarations/tofunalghom.md) | 72 | `declaration-track:7dc3a34c1a946659cefd8630e2e65e06c5bda05492785855e4e08f238ba3be8e` |
| 5 | `theorem` | [toFunAlgHom_apply](../../../../CommutativeAlgebra/MatrixAlgebraNamespacedMatrixEquivTensorApplyStdBasis.lean/declarations/tofunalghom-apply.md) | 89 | `result-track:cfbde194af140044cc7ad67bfe1515f64743755c02846673bae46b2ccc7eb5bf` |
| 6 | `def` | [invFun](../../../../CommutativeAlgebra/MatrixAlgebraNamespacedMatrixEquivTensorApplyStdBasis.lean/declarations/invfun.md) | 99 | `declaration-track:594b1f74a1fbadeacbe10c6f7768392e761405b739686dc47707ab9a20b4a460` |
| 7 | `theorem` | [invFun_zero](../../../../CommutativeAlgebra/MatrixAlgebraNamespacedMatrixEquivTensorApplyStdBasis.lean/declarations/invfun-zero.md) | 104 | `result-track:d0b46719d421628ab2ddafda68e9093e4d53b5b22f49956b981e81b6a94ad68c` |
| 8 | `theorem` | [invFun_add](../../../../CommutativeAlgebra/MatrixAlgebraNamespacedMatrixEquivTensorApplyStdBasis.lean/declarations/invfun-add.md) | 108 | `result-track:c596366ab46128d4d7bc2270659b00cc67551bcb0e27b2282852dc92dbe5ad52` |
| 9 | `theorem` | [invFun_smul](../../../../CommutativeAlgebra/MatrixAlgebraNamespacedMatrixEquivTensorApplyStdBasis.lean/declarations/invfun-smul.md) | 113 | `result-track:0eadb9e99f4b0fc7c4f49ffca6cb5582dcadedc7cc538e136dd62f224ceb4a1f` |
| 10 | `theorem` | [invFun_algebraMap](../../../../CommutativeAlgebra/MatrixAlgebraNamespacedMatrixEquivTensorApplyStdBasis.lean/declarations/invfun-algebramap.md) | 118 | `result-track:44b3fdaea70aa779619316e88ca53a9d27722a29c0fd3068a17afaf138df7019` |
| 11 | `theorem` | [right_inv](../../../../CommutativeAlgebra/MatrixAlgebraNamespacedMatrixEquivTensorApplyStdBasis.lean/declarations/right-inv.md) | 126 | `result-track:9d126c1c63aba00643216ce0865a7322ebb0ab9e111fb9bb59699ccdc27ca78d` |
| 12 | `theorem` | [left_inv](../../../../CommutativeAlgebra/MatrixAlgebraNamespacedMatrixEquivTensorApplyStdBasis.lean/declarations/left-inv.md) | 137 | `result-track:1dc8a70a3f2895fc0c7c2259dd2c12f05ec24e9eb7354719b8d27f2d773810b1` |
| 13 | `def` | [equiv](../../../../CommutativeAlgebra/MatrixAlgebraNamespacedMatrixEquivTensorApplyStdBasis.lean/declarations/equiv.md) | 150 | `declaration-track:27b5a2c9dd383430e2116778525964b66325897addcf5b5f8d884e45633ba423` |
| 14 | `def` | [matrixEquivTensor](../../../../CommutativeAlgebra/MatrixAlgebraNamespacedMatrixEquivTensorApplyStdBasis.lean/declarations/matrixequivtensor.md) | 163 | `declaration-track:487e251ddce8682866c9adaeb3695c6e8a2c967533fc21684cbc64e33e8e6d8a` |
| 15 | `theorem` | [matrixEquivTensor_apply](../../../../CommutativeAlgebra/MatrixAlgebraNamespacedMatrixEquivTensorApplyStdBasis.lean/declarations/matrixequivtensor-apply.md) | 170 | `result-track:b509c7ab98cf9a7acf8ac1b1cb089ef033a45bc2c37728b6d7b346bd7ee04e8a` |
| 16 | `theorem` | [matrixEquivTensor_apply_std_basis](../../../../CommutativeAlgebra/MatrixAlgebraNamespacedMatrixEquivTensorApplyStdBasis.lean/declarations/matrixequivtensor-apply-std-basis.md) | 177 | `result-track:4709c5c7a1c279e91c8532feea1078d5cae682f91a07ec94d13780c403504f1f` |
| 17 | `theorem` | [matrixEquivTensor_apply_symm](../../../../CommutativeAlgebra/MatrixAlgebraNamespacedMatrixEquivTensorApplyStdBasis.lean/declarations/matrixequivtensor-apply-symm.md) | 184 | `result-track:c4d8cdf0e02c8f036fabebe45628faeb35683609559742479d8c0b145149b8b4` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=073989cdc11f4c1d0cf4602fc0ce315583d2e345d858704ecf42d4831e75d0ef -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/MatrixAlgebra/Varianted1b96b48223e922ac72f4d0bf1e6fc25c1e685e5a14f4f20db62a9065aa2147.lean","GRWTSK/_verification/specifications/Algebra/LinearAlgebra/MatrixAlgebra/Varianted1b96b48223e922ac72f4d0bf1e6fc25c1e685e5a14f4f20db62a9065aa2147.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
