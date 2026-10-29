# Verification target: Matrix Std Basis Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "209e95ca5c6b819b413d2c17ae2fe1d2fd612a52",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/StdBasis/Variant0c810c80a295dbcae88e39a3cd18f532c33bf67567ab445303ce469f4bc925fb.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixStdBasisNamespaced.lean/index.md) · [Full source](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixStdBasisNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `209e95ca5c6b819b413d2c17ae2fe1d2fd612a52`.

Source path: `GRWTSK/Algebra/LinearAlgebra/StdBasis/Variant0c810c80a295dbcae88e39a3cd18f532c33bf67567ab445303ce469f4bc925fb.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/StdBasis/Variant0c810c80a295dbcae88e39a3cd18f532c33bf67567ab445303ce469f4bc925fb.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Matrix.Basis` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.StdBasis` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [matrix](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixStdBasisNamespaced.lean/declarations/matrix.md) | 30 | `declaration-track:3ac0f88fa33a24bb256a492177c32ac09a55a68349386e854485d2e5364cd3e5` |
| 2 | `theorem` | [matrix_apply](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixStdBasisNamespaced.lean/declarations/matrix-apply.md) | 39 | `result-track:f77d6d71f13b7c95916dcaf92776529af59e1c9ddc874fd8b079bd41f7e1b774` |
| 3 | `def` | [stdBasis](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixStdBasisNamespaced.lean/declarations/stdbasis.md) | 50 | `declaration-track:a33ef1baaa91ae4844075b1d4eede259df290e5b58b87aaf67fda57578ff1d7b` |
| 4 | `theorem` | [stdBasis_eq_single](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixStdBasisNamespaced.lean/declarations/stdbasis-eq-single.md) | 56 | `result-track:c827271d114fec6bffc0e2538d6c5129f1314744cab92444e3b85f43f3547a7e` |
| 5 | `instance` | [matrix](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixStdBasisNamespaced.lean/declarations/matrix-source-edition-2.md) | 69 | `declaration-track:f4eb7838a68b4d08dd7ea442f40e26e7e72139165a6daf78d2236141cd8050e3` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=7df05e161b17bb55fffce10ad3387227fcbbffe9abe85a107ee7226881209473 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/StdBasis/Variant0c810c80a295dbcae88e39a3cd18f532c33bf67567ab445303ce469f4bc925fb.lean","GRWTSK/_verification/specifications/Algebra/LinearAlgebra/StdBasis/Variant0c810c80a295dbcae88e39a3cd18f532c33bf67567ab445303ce469f4bc925fb.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
