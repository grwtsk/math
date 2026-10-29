# Verification target: GRWTSK.Algebra.LinearAlgebra.MatrixTheory.PositiveKernelHermitianSymmetry

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "23bbc86012d9600d8cec192116d93d467d8d1719",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/MatrixTheory/PositiveKernelHermitianSymmetry.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/PositiveKernelHermitianSymmetry.lean/index.md) · [Full source](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/PositiveKernelHermitianSymmetry.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `23bbc86012d9600d8cec192116d93d467d8d1719`.

Source path: `GRWTSK/Algebra/LinearAlgebra/MatrixTheory/PositiveKernelHermitianSymmetry.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/MatrixTheory/PositiveKernelHermitianSymmetry.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Complex.Order` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Matrix.PosDef` — import line 15; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [PositiveKernel](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/PositiveKernelHermitianSymmetry.lean/declarations/positivekernel.md) | 35 | `declaration-track:8e67e6b175434e9ca6047071334870b12a2f83092db97e9babe29d94f7b5e0f6` |
| 2 | `instance` | [(anonymous)](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/PositiveKernelHermitianSymmetry.lean/declarations/instance.md) | 43 | `declaration-track:1b5a32e9991a5a8042137f36f981c73bd0ab4824fd3a8062c74e30d06b49bf15` |
| 3 | `theorem` | [isHermitian](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/PositiveKernelHermitianSymmetry.lean/declarations/ishermitian.md) | 47 | `result-track:a5de0a459f8913f994bd20569efd0440197c3571e85a798a000a1b0df17eef99` |
| 4 | `theorem` | [conj_apply_symm](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/PositiveKernelHermitianSymmetry.lean/declarations/conj-apply-symm.md) | 53 | `result-track:83b7c43a88e7afc93ed4b6b5659c44e7d1ac345d3450c3ec91aa2d3eb929d3b8` |
| 5 | `theorem` | [conj_matrix_apply_symm](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/PositiveKernelHermitianSymmetry.lean/declarations/conj-matrix-apply-symm.md) | 59 | `result-track:61001dfc57ae234464cda81438be9d9bbae1a4fe97452c974a47f30251dda7b8` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=27b8f20214705116d352e8e93e729d1adc9963c5acd9ac49aa7d39f272faebae -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/MatrixTheory/PositiveKernelHermitianSymmetry.lean","GRWTSK/_verification/specifications/Algebra/LinearAlgebra/MatrixTheory/PositiveKernelHermitianSymmetry.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
