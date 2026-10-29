# Verification target: GRWTSK.Algebra.LinearAlgebra.MatrixTheory.TraceRank

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0fa306c9fd6975db2cec273e39e150fca4423cb4",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/MatrixTheory/TraceRank.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixTheoryTraceRank.lean/index.md) · [Full source](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixTheoryTraceRank.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0fa306c9fd6975db2cec273e39e150fca4423cb4`.

Source path: `GRWTSK/Algebra/LinearAlgebra/MatrixTheory/TraceRank.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/MatrixTheory/TraceRank.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.Analysis.Inequalities.FiniteSquareSum`](../../../../../RealFunctions/InequalitiesInRealAnalysis/FiniteSquareSum.lean/index.md) — import line 12; pinned internal source present.
- `Mathlib.Analysis.Matrix.Spectrum` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [hermitian_trace_sq_eq_sum_eigenvalues_sq](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixTheoryTraceRank.lean/declarations/hermitian-trace-sq-eq-sum-eigenvalues-sq.md) | 31 | `result-track:e36304c0469a5414ebcac0cecfb9cade8b57f9f2cd381a65a5ae1c12a202d35e` |
| 2 | `theorem` | [hermitian_trace_sq_le_rank_mul_trace_sq](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixTheoryTraceRank.lean/declarations/hermitian-trace-sq-le-rank-mul-trace-sq.md) | 40 | `result-track:6f40ff0d39617d71a1874c6e689e91494e4eb7bed1eb674a8cb01c2c8ee224f8` |
| 3 | `theorem` | [hermitian_trace_sq_pos](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixTheoryTraceRank.lean/declarations/hermitian-trace-sq-pos.md) | 49 | `result-track:fc861968427b7e7de06fec718104132a1f381f63ea8afe0565d570ec45816692` |
| 4 | `theorem` | [hermitian_rank_ge_trace_ratio](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixTheoryTraceRank.lean/declarations/hermitian-rank-ge-trace-ratio.md) | 61 | `result-track:46c7099adf1a97e53ca35294ebfb905e216c73bf5235b74f1b022eaad8981174` |
| 5 | `theorem` | [gram_rank_ge_trace_ratio](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixTheoryTraceRank.lean/declarations/gram-rank-ge-trace-ratio.md) | 69 | `result-track:826eea478c8fdcd0b05bb222935b69da2270bacb485a2bceceef4b3dca2a7b71` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=e12bbfd3ad4636a0cd3158dc438451410a713f09a408595a98ac0057bc0be2ee -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/MatrixTheory/TraceRank.lean","GRWTSK/_verification/specifications/Algebra/LinearAlgebra/MatrixTheory/TraceRank__SourceOccurrence65258207def83ae64533fa4c.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
