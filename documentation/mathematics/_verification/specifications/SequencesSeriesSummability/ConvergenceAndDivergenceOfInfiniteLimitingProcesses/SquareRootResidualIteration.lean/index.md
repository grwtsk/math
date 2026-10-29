# Verification target: GRWTSK.Analysis.AsymptoticAnalysis.SquareRootResidualIteration

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4c1cc3b0057f1c307da2f6fb9c80f8b9c1036b2a",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/AsymptoticAnalysis/SquareRootResidualIteration.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../SequencesSeriesSummability/ConvergenceAndDivergenceOfInfiniteLimitingProcesses/SquareRootResidualIteration.lean/index.md) · [Full source](../../../../../SequencesSeriesSummability/ConvergenceAndDivergenceOfInfiniteLimitingProcesses/SquareRootResidualIteration.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4c1cc3b0057f1c307da2f6fb9c80f8b9c1036b2a`.

Source path: `GRWTSK/Analysis/AsymptoticAnalysis/SquareRootResidualIteration.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/AsymptoticAnalysis/SquareRootResidualIteration.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [step](../../../../../SequencesSeriesSummability/ConvergenceAndDivergenceOfInfiniteLimitingProcesses/SquareRootResidualIteration.lean/declarations/step.md) | 14 | `declaration-track:61d39fcd3b8a97a5f78e40db0d30def7467ae4620fd714da0e3866141a96e85d` |
| 2 | `def` | [bound](../../../../../SequencesSeriesSummability/ConvergenceAndDivergenceOfInfiniteLimitingProcesses/SquareRootResidualIteration.lean/declarations/bound.md) | 16 | `declaration-track:d319607593353627dccccffb1b07fdb6a472e700f55a108a414d2548fb63a9c8` |
| 3 | `theorem` | [step_mono](../../../../../SequencesSeriesSummability/ConvergenceAndDivergenceOfInfiniteLimitingProcesses/SquareRootResidualIteration.lean/declarations/step-mono.md) | 20 | `result-track:d5a2290319c1346e3c71d0ff40f7d2b04aeb580dbbc686ccf3fbc5022b83116f` |
| 4 | `theorem` | [finite_return](../../../../../SequencesSeriesSummability/ConvergenceAndDivergenceOfInfiniteLimitingProcesses/SquareRootResidualIteration.lean/declarations/finite-return.md) | 26 | `result-track:7166f1555c37878c61df73e2efec3d69170d6ecd95660a7f75fb6bd3c6b4de0f` |
| 5 | `def` | [exponent](../../../../../SequencesSeriesSummability/ConvergenceAndDivergenceOfInfiniteLimitingProcesses/SquareRootResidualIteration.lean/declarations/exponent.md) | 36 | `declaration-track:468f50b62f49fc87fe7d6b9d49e2e0cd3cdb63ae4a43aa76748843180bb0eca7` |
| 6 | `theorem` | [exponent_step](../../../../../SequencesSeriesSummability/ConvergenceAndDivergenceOfInfiniteLimitingProcesses/SquareRootResidualIteration.lean/declarations/exponent-step.md) | 40 | `result-track:a2f50dd71f0a072c3d84396f367c0cb335ea10944849a7aa8af2190534c4c03d` |
| 7 | `theorem` | [zero_loss](../../../../../SequencesSeriesSummability/ConvergenceAndDivergenceOfInfiniteLimitingProcesses/SquareRootResidualIteration.lean/declarations/zero-loss.md) | 44 | `result-track:fcdc141b8c3ebcbc8d8a7f2479675a4693816fd8cb0c5b59fab26b4b782a1dc3` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=d05dd9f56542107fd379c3109760bc027c888f9430cd7126540a3d9b4a3027e9 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/AsymptoticAnalysis/SquareRootResidualIteration.lean","GRWTSK/_verification/specifications/Analysis/AsymptoticAnalysis/SquareRootResidualIteration__SourceOccurrencea7ee1b34f9dba07e937f5bf0.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
