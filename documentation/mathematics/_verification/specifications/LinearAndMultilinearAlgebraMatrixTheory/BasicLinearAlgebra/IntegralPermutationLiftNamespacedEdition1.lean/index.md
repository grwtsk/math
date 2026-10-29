# Verification target: Integral Permutation Lift Namespaced Edition1

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "95af10c527ec983316c8659923aa37eb2d345fe4",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/IntegralPermutationLift/Variantb960d329773dd2f91cac1fb307492ac1485bfd06a7195c7ee1502d76da1c60e7.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/IntegralPermutationLiftNamespacedEdition1.lean/index.md) · [Full source](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/IntegralPermutationLiftNamespacedEdition1.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `95af10c527ec983316c8659923aa37eb2d345fe4`.

Source path: `GRWTSK/Algebra/LinearAlgebra/IntegralPermutationLift/Variantb960d329773dd2f91cac1fb307492ac1485bfd06a7195c7ee1502d76da1c60e7.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/IntegralPermutationLift/Variantb960d329773dd2f91cac1fb307492ac1485bfd06a7195c7ee1502d76da1c60e7.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `BinaryMatrix.InvolutionProjection` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.GroupTheory.Perm.Sign` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Matrix.Determinant.Basic` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [encodedPerm](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/IntegralPermutationLiftNamespacedEdition1.lean/declarations/encodedperm.md) | 32 | `declaration-track:19a9f7c98557e2c89b0e22b523e7666e82755736c70798f40d387f0913478767` |
| 2 | `theorem` | [encodedPerm_apply](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/IntegralPermutationLiftNamespacedEdition1.lean/declarations/encodedperm-apply.md) | 35 | `result-track:b49dab3025dda3120c36ebcbcc99f20aa1f007a193d3c63d29fcc7ec9b390e70` |
| 3 | `theorem` | [encodedPerm_symm](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/IntegralPermutationLiftNamespacedEdition1.lean/declarations/encodedperm-symm.md) | 40 | `result-track:dff2256e0ccfff8fe38ab37898ab23ea3812110f26c4d4bf2c9916538399ea60` |
| 4 | `theorem` | [encodedPerm_apply_self](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/IntegralPermutationLiftNamespacedEdition1.lean/declarations/encodedperm-apply-self.md) | 49 | `result-track:07e848cf98f7ff748e28f39eb56c4e3deea8eace3c5e0934722f73ff5bd9743d` |
| 5 | `def` | [integralMatrix](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/IntegralPermutationLiftNamespacedEdition1.lean/declarations/integralmatrix.md) | 55 | `declaration-track:646fe5cec4a2da73f59331e76977fb1c24d7744fada7eefd770fddb04f2aa42d` |
| 6 | `theorem` | [integralMatrix_eq_ite](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/IntegralPermutationLiftNamespacedEdition1.lean/declarations/integralmatrix-eq-ite.md) | 58 | `result-track:93d814e41817773cfa2cf14f25b70fc99e1b33a5e3b0cd8ade28b475dd290ded` |
| 7 | `theorem` | [integralMatrix_eq_one_submatrix](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/IntegralPermutationLiftNamespacedEdition1.lean/declarations/integralmatrix-eq-one-submatrix.md) | 72 | `result-track:e855dcc2ced873e50022ec1ce409b7d2d74043e3e7fc777d2bf129cd5cc6630f` |
| 8 | `theorem` | [integralMatrix_mul_self](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/IntegralPermutationLiftNamespacedEdition1.lean/declarations/integralmatrix-mul-self.md) | 80 | `result-track:a58f80e156acd2701a173660be4bcb50c882b9ea2834f22606a23afe8e2dc2bb` |
| 9 | `theorem` | [det_integralMatrix_eq_sign](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/IntegralPermutationLiftNamespacedEdition1.lean/declarations/det-integralmatrix-eq-sign.md) | 96 | `result-track:7780af68ecaa6dc69c9a550b51627f8d0ea7bfc6de34e1ca102fc79c8b12e9cb` |
| 10 | `theorem` | [det_integralMatrix_eq_one_or_neg_one](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/IntegralPermutationLiftNamespacedEdition1.lean/declarations/det-integralmatrix-eq-one-or-neg-one.md) | 104 | `result-track:8c5cbf9e62e86b8d59c2a7fb170a03d513424738ba8addc02d518e2ef18f4a1d` |
| 11 | `theorem` | [abs_det_integralMatrix](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/IntegralPermutationLiftNamespacedEdition1.lean/declarations/abs-det-integralmatrix.md) | 111 | `result-track:84bfbbc45b0fc2be22260c141f088d8f86f0dd120e2ca4948649ebf81e88b572` |
| 12 | `theorem` | [integral_parity_agrees](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/IntegralPermutationLiftNamespacedEdition1.lean/declarations/integral-parity-agrees.md) | 116 | `result-track:548dd83a814d3f058113d5707193ce37b38ca56ecbacccbeab684974d15d60f9` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=a0fca88a1e4cdda3d9f07dbadda350498457a4446123d60b5079ae16b3de2ff7 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/IntegralPermutationLift/Variantb960d329773dd2f91cac1fb307492ac1485bfd06a7195c7ee1502d76da1c60e7.lean","GRWTSK/_verification/specifications/Algebra/LinearAlgebra/IntegralPermutationLift/Variantb960d329773dd2f91cac1fb307492ac1485bfd06a7195c7ee1502d76da1c60e7.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
