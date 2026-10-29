# Verification target: Singular Linear Solver Namespaced Edition1

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7ec6901a856dbfff934b333f5aa01d78707740ba",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/SingularLinearSolver/Variante66adb078afec7338dbaa334cb1a2b10fbe936bd8628f5ea68d7102daed76903.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SingularLinearSolverNamespacedEdition1.lean/index.md) · [Full source](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SingularLinearSolverNamespacedEdition1.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7ec6901a856dbfff934b333f5aa01d78707740ba`.

Source path: `GRWTSK/Algebra/LinearAlgebra/SingularLinearSolver/Variante66adb078afec7338dbaa334cb1a2b10fbe936bd8628f5ea68d7102daed76903.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/SingularLinearSolver/Variante66adb078afec7338dbaa334cb1a2b10fbe936bd8628f5ea68d7102daed76903.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.PositiveAtlas.ProvenanceRange` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Module.Projective` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.FiniteDimensional.Basic` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [LinearRangeFactorization](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SingularLinearSolverNamespacedEdition1.lean/declarations/linearrangefactorization.md) | 40 | `declaration-track:3fdf7759114a3bb672be3f1afe8a12d78f1c031474e3b10ab568a2f0f30b1281` |
| 2 | `def` | [ofRangeLe](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SingularLinearSolverNamespacedEdition1.lean/declarations/ofrangele.md) | 49 | `declaration-track:71f37c25a2506b68666e0f0ccf2b989c2a3c8340b796f2e497ae09ae3af51946` |
| 3 | `theorem` | [factor_apply](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SingularLinearSolverNamespacedEdition1.lean/declarations/factor-apply.md) | 70 | `result-track:4801f4ce6d4c7917108227a9515b5c3b1d02291aa8103dc63cd7cfe8529829b0` |
| 4 | `def` | [singularProvenanceFactorization](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SingularLinearSolverNamespacedEdition1.lean/declarations/singularprovenancefactorization.md) | 81 | `declaration-track:15199d6a0dd03e6b7f0d7402274814e310771c2d7fb60b62d67e76990ff1bad5` |
| 5 | `theorem` | [singularProvenanceFactorization_apply](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SingularLinearSolverNamespacedEdition1.lean/declarations/singularprovenancefactorization-apply.md) | 97 | `result-track:d44e4795a8fdfa4a0ee461e288fd58cc8f0783bafe240a10da661ed8336a917e` |
| 6 | `def` | [singularBlockSchurSolver](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SingularLinearSolverNamespacedEdition1.lean/declarations/singularblockschursolver.md) | 113 | `declaration-track:b2244aa44f039b6f8393851210b34e6f437e38c2e70c1d5cdcc9eaf8b9b6d0b7` |
| 7 | `theorem` | [singular_schur_nonnegative](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SingularLinearSolverNamespacedEdition1.lean/declarations/singular-schur-nonnegative.md) | 148 | `result-track:5a07cd7e8f8a0d9f5d00adc5316b4acdd464927ef8e37dd63271363201de0179` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=a94dcc5946b320bb0eae34f9baeb68f09aa6bbbacfca6b856fbf9350b4f56be5 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/SingularLinearSolver/Variante66adb078afec7338dbaa334cb1a2b10fbe936bd8628f5ea68d7102daed76903.lean","GRWTSK/_verification/specifications/Algebra/LinearAlgebra/SingularLinearSolver/Variante66adb078afec7338dbaa334cb1a2b10fbe936bd8628f5ea68d7102daed76903.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
