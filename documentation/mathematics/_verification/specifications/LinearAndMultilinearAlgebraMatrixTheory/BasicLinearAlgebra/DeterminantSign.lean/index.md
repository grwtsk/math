# Verification target: Determinant Sign

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0226ee1f3a8dc2d79258d1e30574c6ff2b0e40cd",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/MatrixTheory/Determinants/IntegralPermutationParity/Variant4694af98a3c046e2/DeterminantSign.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/DeterminantSign.lean/index.md) · [Full source](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/DeterminantSign.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0226ee1f3a8dc2d79258d1e30574c6ff2b0e40cd`.

Source path: `GRWTSK/Algebra/LinearAlgebra/MatrixTheory/Determinants/IntegralPermutationParity/Variant4694af98a3c046e2/DeterminantSign.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/MatrixTheory/Determinants/IntegralPermutationParity/Variant4694af98a3c046e2/DeterminantSign.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `BitMatrix.Algebra.InvolutionProjection` — import line 19; external provider; requires a separately pinned dependency.
- `Mathlib.GroupTheory.Perm.Sign` — import line 20; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Matrix.Determinant.Basic` — import line 21; external provider; requires a separately pinned dependency.
- [Integral Permutation Lift](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/IntegralPermutationLift.lean/index.md) — import line 23; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [det_integralMatrix_eq_sign](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/DeterminantSign.lean/declarations/det-integralmatrix-eq-sign.md) | 44 | `result-track:b43b2ee7f7355f9ee01d7972bb79b24e09cc8d80d0e786062d7586249488e626` |
| 2 | `theorem` | [det_integralMatrix_eq_one_or_neg_one](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/DeterminantSign.lean/declarations/det-integralmatrix-eq-one-or-neg-one.md) | 52 | `result-track:6b009349a2fee43e9c6062718c024e523a6586d5cd9d545a6ff614685d737e8b` |
| 3 | `theorem` | [abs_det_integralMatrix](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/DeterminantSign.lean/declarations/abs-det-integralmatrix.md) | 59 | `result-track:e0bf187ac0b531380f45903107943271235325d03397665cf167b2c541117078` |
| 4 | `theorem` | [integral_parity_agrees](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/DeterminantSign.lean/declarations/integral-parity-agrees.md) | 64 | `result-track:ed7ec908fb1c4e016e1f6f8892da67c46084ef9366d0c78e705de3c3e0e748c8` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=168847ca495a9f3ab6db39e5b1c62e59b8ad8e99f9858a3b24751f3b83a064bc -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/MatrixTheory/Determinants/IntegralPermutationParity/Variant4694af98a3c046e2/DeterminantSign.lean","GRWTSK/_verification/specifications/Algebra/LinearAlgebra/MatrixTheory/Determinants/IntegralPermutationParity/Variant4694af98a3c046e2/DeterminantSign.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
