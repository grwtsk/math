# Verification target: GRWTSK.Algebra.LinearAlgebra.LinearMap.FiniteMixingObstruction

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "64628d3e27638a1eec8c1abb350e8ed8e05938dd",
  "lexical_observation_count": 3,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/LinearMap/FiniteMixingObstruction.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearMapFiniteMixingObstructionHistoricalSourceEdition2.lean/index.md) · [Full source](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearMapFiniteMixingObstructionHistoricalSourceEdition2.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `64628d3e27638a1eec8c1abb350e8ed8e05938dd`.

Source path: `GRWTSK/Algebra/LinearAlgebra/LinearMap/FiniteMixingObstruction.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/LinearMap/FiniteMixingObstruction.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.LinearAlgebra.FiniteDimensional.Basic` — import line 4; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.LinearIndependent.Defs` — import line 5; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Pi` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [synthesis_eq_of_basis_realization](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearMapFiniteMixingObstructionHistoricalSourceEdition2.lean/declarations/synthesis-eq-of-basis-realization.md) | 34 | `result-track:9a2f042a66c5c12d948eced5b3ffa20ec94655cb05655d61af184d9f71b00e88` |
| 2 | `theorem` | [independent_linear_mix_requires_independent_input](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearMapFiniteMixingObstructionHistoricalSourceEdition2.lean/declarations/independent-linear-mix-requires-independent-input.md) | 50 | `result-track:4229f41feca5a05fbd6f142820dcbf58ab22609b962563bcf40f77d3ad9e68ff` |
| 3 | `theorem` | [zero_coordinate_no_independent_linear_mix](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearMapFiniteMixingObstructionHistoricalSourceEdition2.lean/declarations/zero-coordinate-no-independent-linear-mix.md) | 75 | `result-track:d00f6a7a6c25ad389c7fe8de1b94e667a8064bd4bf37a68ba8d9e53469fcc2a4` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=82ed1cc5ed5ca462febbc5dfe2d534f43ffc3af92244c3bf023537aa86d92685 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/LinearMap/FiniteMixingObstruction.lean","GRWTSK/_verification/specifications/Algebra/LinearAlgebra/LinearMap/FiniteMixingObstruction__SourceOccurrence962c388bb394d70603721d67.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
