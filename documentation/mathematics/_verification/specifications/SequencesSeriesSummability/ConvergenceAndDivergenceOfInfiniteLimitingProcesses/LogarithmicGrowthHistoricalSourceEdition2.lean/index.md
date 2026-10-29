# Verification target: GRWTSK.Analysis.AsymptoticAnalysis.LogarithmicGrowth

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7ee2b0992c61692d0d1bea138fe5ba4e217d0a9d",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/AsymptoticAnalysis/LogarithmicGrowth.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../SequencesSeriesSummability/ConvergenceAndDivergenceOfInfiniteLimitingProcesses/LogarithmicGrowthHistoricalSourceEdition2.lean/index.md) · [Full source](../../../../../SequencesSeriesSummability/ConvergenceAndDivergenceOfInfiniteLimitingProcesses/LogarithmicGrowthHistoricalSourceEdition2.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7ee2b0992c61692d0d1bea138fe5ba4e217d0a9d`.

Source path: `GRWTSK/Analysis/AsymptoticAnalysis/LogarithmicGrowth.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/AsymptoticAnalysis/LogarithmicGrowth.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Ring.IsFormallyReal` — import line 1; external provider; requires a separately pinned dependency.
- [`GRWTSK.Analysis.AsymptoticAnalysis.SublinearDyadic`](../../../../../SequencesSeriesSummability/ConvergenceAndDivergenceOfInfiniteLimitingProcesses/SublinearDyadic.lean/index.md) — import line 2; pinned internal source present.
- [`GRWTSK.Analysis.Inequalities.ResidualGrowthComparison`](../../../../../RealFunctions/InequalitiesInRealAnalysis/ResidualGrowthComparison.lean/index.md) — import line 3; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [constant_upperSublinear](../../../../../SequencesSeriesSummability/ConvergenceAndDivergenceOfInfiniteLimitingProcesses/LogarithmicGrowthHistoricalSourceEdition2.lean/declarations/constant-uppersublinear.md) | 14 | `result-track:af7659f7df0f42ca8c832c06ca7cb25684ae16b063a8cae703caf63e62824107` |
| 2 | `theorem` | [scale_upperSublinear](../../../../../SequencesSeriesSummability/ConvergenceAndDivergenceOfInfiniteLimitingProcesses/LogarithmicGrowthHistoricalSourceEdition2.lean/declarations/scale-uppersublinear.md) | 20 | `result-track:a0f1629df5e46667475db52a120624e1fa15b193bd3f2ec2fbcc477a74c6a45d` |
| 3 | `lemma` | [log_one_add_le_two_sqrt](../../../../../SequencesSeriesSummability/ConvergenceAndDivergenceOfInfiniteLimitingProcesses/LogarithmicGrowthHistoricalSourceEdition2.lean/declarations/log-one-add-le-two-sqrt.md) | 34 | `result-track:ffc587f8d68ce470aa4f215623546fa1d96137bff7c465e13ccef7088d9a61e1` |
| 4 | `theorem` | [log_one_add_nat_upperSublinear](../../../../../SequencesSeriesSummability/ConvergenceAndDivergenceOfInfiniteLimitingProcesses/LogarithmicGrowthHistoricalSourceEdition2.lean/declarations/log-one-add-nat-uppersublinear.md) | 46 | `result-track:284c15a8254c1086b3e9f04f75e96b82d323d2fd43e25c8f652649a7d063da9d` |
| 5 | `theorem` | [residual_growth_iff](../../../../../SequencesSeriesSummability/ConvergenceAndDivergenceOfInfiniteLimitingProcesses/LogarithmicGrowthHistoricalSourceEdition2.lean/declarations/residual-growth-iff.md) | 67 | `result-track:6df90358c64b3d891e2531327465028ad62d50f309d8399067259e580e7bc0ae` |
| 6 | `theorem` | [positive_floor_not_sublinear](../../../../../SequencesSeriesSummability/ConvergenceAndDivergenceOfInfiniteLimitingProcesses/LogarithmicGrowthHistoricalSourceEdition2.lean/declarations/positive-floor-not-sublinear.md) | 94 | `result-track:e8ddaeccd0e649999fe0cebcbc8d4d44188a1ec7ec7250f849aeb566b03dc661` |
| 7 | `theorem` | [finite_prefix_does_not_force_sublinear](../../../../../SequencesSeriesSummability/ConvergenceAndDivergenceOfInfiniteLimitingProcesses/LogarithmicGrowthHistoricalSourceEdition2.lean/declarations/finite-prefix-does-not-force-sublinear.md) | 103 | `result-track:856e5c4ba3ddd427b2c3995fc34f09926fd9fe7d6223adc56f0ee1fc8e33edad` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=7fd709fe6dccd03814b95e3a3c54aeac9f14d567ec01a68fa88cbf69c6a634c1 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/AsymptoticAnalysis/LogarithmicGrowth.lean","GRWTSK/_verification/specifications/Analysis/AsymptoticAnalysis/LogarithmicGrowth__SourceOccurrencec507ae2f60ddd596db274801.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
