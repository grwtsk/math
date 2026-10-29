# Verification target: Matrix Edition2

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e13ff85cceab2a7dcdb20b7a4e2c223a5244c66c",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Matrix/Variantbdbdd5ddce2af521b3399183e4d9a426d8ec928e32a0653506e5b4a20cf6acb0.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixEdition2.lean/index.md) · [Full source](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixEdition2.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e13ff85cceab2a7dcdb20b7a4e2c223a5244c66c`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Matrix/Variantbdbdd5ddce2af521b3399183e4d9a426d8ec928e32a0653506e5b4a20cf6acb0.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Matrix/Variantbdbdd5ddce2af521b3399183e4d9a426d8ec928e32a0653506e5b4a20cf6acb0.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Matrix.Notation` — import line 5; external provider; requires a separately pinned dependency.
- `Mathlib.GroupTheory.Perm.Fin` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Matrix.Determinant` — import line 7; external provider; requires a separately pinned dependency.
- `Qq` — import line 8; external provider; requires a separately pinned dependency.
- `Std.Tactic.GuardExpr` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `elab` | [(anonymous)](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixEdition2.lean/declarations/elab.md) | 31 | `declaration-track:d411a1f8474f9810201d1a1d94d39190c78b60a3b98d4a0b1cb5bcb703d6d02a` |
| 2 | `def` | [mkMatrix](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixEdition2.lean/declarations/mkmatrix.md) | 60 | `declaration-track:ceed64d65226a69e545855959bbb444ff6094da930140abeb641631ff7e2ada3` |
| 3 | `def` | [mkColumnVector](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixEdition2.lean/declarations/mkcolumnvector.md) | 62 | `declaration-track:92a4173891e4d5259e60abe934bdccb58d5d6f559ed3ad9fe1fc898c4c82552e` |
| 4 | `example` | [(anonymous)](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixEdition2.lean/declarations/example-source-edition-5.md) | 84 | `declaration-track:aea5136eaa8b6264cf4e8c11ac710d3f24d7a47b914dda3243f7167907deab15` |
| 5 | `example` | [(anonymous)](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixEdition2.lean/declarations/example.md) | 88 | `declaration-track:26ca8aced5ab5e65bd9fde3a836249708dc62edf33b35ba8527c8d5ccacb6479` |
| 6 | `example` | [(anonymous)](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixEdition2.lean/declarations/example-source-edition-2.md) | 92 | `declaration-track:767b02705c137263366976d5ca13233143b697b895d7afc84523e2ae9c7e2ada` |
| 7 | `example` | [(anonymous)](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixEdition2.lean/declarations/example-source-edition-4.md) | 97 | `declaration-track:a4402613da29293daa886b8d68501c098a786568274796fb0df8a1df16e8f963` |
| 8 | `example` | [(anonymous)](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixEdition2.lean/declarations/example-source-edition-6.md) | 138 | `declaration-track:ca2406e46e66b3d2885888145a607202729d425900ef637c93474ec69c05b1d5` |
| 9 | `example` | [(anonymous)](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixEdition2.lean/declarations/example-source-edition-3.md) | 148 | `declaration-track:779083be89df8f770bde0c6bc082e0a5ea10bc7d29770aa453dee3d95653c2ac` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=27ca5ce9a8305df266b686d259d2486bb5233e44fa23fce940d00765e6b4d49a -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/Matrix/Variantbdbdd5ddce2af521b3399183e4d9a426d8ec928e32a0653506e5b4a20cf6acb0.lean","GRWTSK/_verification/specifications/Algebra/LinearAlgebra/MatrixTheory/Variantbdbdd5ddce2af521b3399183e4d9a426d8ec928e32a0653506e5b4a20cf6acb0.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
