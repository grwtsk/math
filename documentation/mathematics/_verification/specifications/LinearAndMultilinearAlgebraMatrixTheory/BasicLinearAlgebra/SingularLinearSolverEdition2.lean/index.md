# Verification target: Singular Linear Solver Edition2

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3e57560c49f628749ee1b5da6a0737600f44340d",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/SingularLinearSolver/Variantf18ceb602010c21e677d2d3c8f4b5f6599a80925a9a9f2f86d2b09ac7f15818e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SingularLinearSolverEdition2.lean/index.md) · [Full source](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SingularLinearSolverEdition2.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3e57560c49f628749ee1b5da6a0737600f44340d`.

Source path: `GRWTSK/Algebra/LinearAlgebra/SingularLinearSolver/Variantf18ceb602010c21e677d2d3c8f4b5f6599a80925a9a9f2f86d2b09ac7f15818e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/SingularLinearSolver/Variantf18ceb602010c21e677d2d3c8f4b5f6599a80925a9a9f2f86d2b09ac7f15818e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.PositiveAtlas.ProvenanceRange` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Module.Projective` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.FiniteDimensional.Basic` — import line 3; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [LinearRangeFactorization](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SingularLinearSolverEdition2.lean/declarations/linearrangefactorization.md) | 32 | `declaration-track:053ba39db2c3c83bc37afa84b47714974951e95ae14e611bf2df2b69706ea111` |
| 2 | `def` | [ofRangeLe](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SingularLinearSolverEdition2.lean/declarations/ofrangele.md) | 42 | `declaration-track:a739620aa7363bff7c68cc7b2fd9e45206ee7d562244937aba66a2053acbef55` |
| 3 | `theorem` | [factor_apply](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SingularLinearSolverEdition2.lean/declarations/factor-apply.md) | 67 | `result-track:8337729cffaa95e1f2868f8c7e48b38229ffec1ffeb355a41f9dd84849cdcc87` |
| 4 | `def` | [singularProvenanceFactorization](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SingularLinearSolverEdition2.lean/declarations/singularprovenancefactorization.md) | 78 | `declaration-track:1673d89dd36cbf2608d880943db1fa6f2ed09eb81e59c904619358ea9563596a` |
| 5 | `theorem` | [singularProvenanceFactorization_apply](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SingularLinearSolverEdition2.lean/declarations/singularprovenancefactorization-apply.md) | 94 | `result-track:29c918d2804475588f454d5bf6b1d587f6274ee50887b5ec7dd5df50ab661740` |
| 6 | `def` | [singularBlockSchurSolver](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SingularLinearSolverEdition2.lean/declarations/singularblockschursolver.md) | 110 | `declaration-track:a6104448df6a3890004a37587dfe1a625fbcb13948d605775defa82e10d4ecaf` |
| 7 | `theorem` | [singular_schur_nonnegative](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SingularLinearSolverEdition2.lean/declarations/singular-schur-nonnegative.md) | 145 | `result-track:ae2bcc425f0f082bbbf071440a477e567df211fd35aec47d5dbd9ac585646da5` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=a65cbc83ab2d15a542dc3c29e5018a177b291ad4e926a9e0dfcd6e59d2a27cf3 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/SingularLinearSolver/Variantf18ceb602010c21e677d2d3c8f4b5f6599a80925a9a9f2f86d2b09ac7f15818e.lean","GRWTSK/_verification/specifications/Algebra/LinearAlgebra/SingularLinearSolver/Variantf18ceb602010c21e677d2d3c8f4b5f6599a80925a9a9f2f86d2b09ac7f15818e.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
