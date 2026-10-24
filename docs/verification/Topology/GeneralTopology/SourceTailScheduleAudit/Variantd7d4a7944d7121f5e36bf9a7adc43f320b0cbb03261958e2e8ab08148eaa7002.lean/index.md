# Verification target: GRWTSK.Topology.GeneralTopology.SourceTailScheduleAudit.Variantd7d4a7944d7121f5e36bf9a7adc43f320b0cbb03261958e2e8ab08148eaa7002

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "63343da2c6e4e3d1cee8bdea43fd692804dbaeeb",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/SourceTailScheduleAudit/Variantd7d4a7944d7121f5e36bf9a7adc43f320b0cbb03261958e2e8ab08148eaa7002.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/SourceTailScheduleAudit/Variantd7d4a7944d7121f5e36bf9a7adc43f320b0cbb03261958e2e8ab08148eaa7002.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/SourceTailScheduleAudit/Variantd7d4a7944d7121f5e36bf9a7adc43f320b0cbb03261958e2e8ab08148eaa7002.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `63343da2c6e4e3d1cee8bdea43fd692804dbaeeb`.

Source path: `GRWTSK/Topology/GeneralTopology/SourceTailScheduleAudit/Variantd7d4a7944d7121f5e36bf9a7adc43f320b0cbb03261958e2e8ab08148eaa7002.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/SourceTailScheduleAudit/Variantd7d4a7944d7121f5e36bf9a7adc43f320b0cbb03261958e2e8ab08148eaa7002.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.SourceComparison.MobiusEndpointBudget` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Sqrt` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [logScale](../../../../../mathematics/Topology/GeneralTopology/SourceTailScheduleAudit/Variantd7d4a7944d7121f5e36bf9a7adc43f320b0cbb03261958e2e8ab08148eaa7002.lean/declarations/logscale--21db1490c46dbfb328cc80b4.md) | 22 | `declaration-track:21db1490c46dbfb328cc80b48cfda5b6e6e8e1b697279e17cc967e6b75e8c531` |
| 2 | `def` | [epsilonSchedule](../../../../../mathematics/Topology/GeneralTopology/SourceTailScheduleAudit/Variantd7d4a7944d7121f5e36bf9a7adc43f320b0cbb03261958e2e8ab08148eaa7002.lean/declarations/epsilonschedule--a0c389651217100099fc5a16.md) | 25 | `declaration-track:a0c389651217100099fc5a1680df58599b617a17ce736945f989053fd9aca43a` |
| 3 | `def` | [cutoffSchedule](../../../../../mathematics/Topology/GeneralTopology/SourceTailScheduleAudit/Variantd7d4a7944d7121f5e36bf9a7adc43f320b0cbb03261958e2e8ab08148eaa7002.lean/declarations/cutoffschedule--be7ced33413d297cc4380443.md) | 28 | `declaration-track:be7ced33413d297cc4380443011d7cdb7cb2914b84c71f62fb93372c0e295c8a` |
| 4 | `theorem` | [schedule_admissible](../../../../../mathematics/Topology/GeneralTopology/SourceTailScheduleAudit/Variantd7d4a7944d7121f5e36bf9a7adc43f320b0cbb03261958e2e8ab08148eaa7002.lean/declarations/schedule-admissible--2207a01cfff3602db081f39e.md) | 31 | `result-track:2207a01cfff3602db081f39ef65d3edfd37ba102872d092609aba1172fd86e2a` |
| 5 | `theorem` | [scheduled_endpoint_bounds](../../../../../mathematics/Topology/GeneralTopology/SourceTailScheduleAudit/Variantd7d4a7944d7121f5e36bf9a7adc43f320b0cbb03261958e2e8ab08148eaa7002.lean/declarations/scheduled-endpoint-bounds--c23d6ba2adb0f4997a465dbc.md) | 47 | `result-track:c23d6ba2adb0f4997a465dbc637bd6ab25a805f82f605f31f78ddf9973344502` |
| 6 | `theorem` | [explicit_tail_bounds_tendsto](../../../../../mathematics/Topology/GeneralTopology/SourceTailScheduleAudit/Variantd7d4a7944d7121f5e36bf9a7adc43f320b0cbb03261958e2e8ab08148eaa7002.lean/declarations/explicit-tail-bounds-tendsto--b6888fd5bdca46f896604ae0.md) | 81 | `result-track:b6888fd5bdca46f896604ae0dcd4a06a6ee7fac8a8b176e566ec1048b253ceaf` |
| 7 | `theorem` | [scheduled_actual_tails_tendsto](../../../../../mathematics/Topology/GeneralTopology/SourceTailScheduleAudit/Variantd7d4a7944d7121f5e36bf9a7adc43f320b0cbb03261958e2e8ab08148eaa7002.lean/declarations/scheduled-actual-tails-tendsto--9023bc9acc9d1b3ce53ee68c.md) | 92 | `result-track:9023bc9acc9d1b3ce53ee68c36b78e188882303964fe3ae212d2a69617e056a2` |
| 8 | `theorem` | [epsilonSchedule_tendsto_zero](../../../../../mathematics/Topology/GeneralTopology/SourceTailScheduleAudit/Variantd7d4a7944d7121f5e36bf9a7adc43f320b0cbb03261958e2e8ab08148eaa7002.lean/declarations/epsilonschedule-tendsto-zero--685a613b3f362364e2ed1c56.md) | 107 | `result-track:685a613b3f362364e2ed1c56f41742197f72b6b6e816b738e03a790d0ba59039` |
| 9 | `theorem` | [cutoffSchedule_tendsto_atTop](../../../../../mathematics/Topology/GeneralTopology/SourceTailScheduleAudit/Variantd7d4a7944d7121f5e36bf9a7adc43f320b0cbb03261958e2e8ab08148eaa7002.lean/declarations/cutoffschedule-tendsto-attop--0f0bcab2ba2585924fd534b6.md) | 115 | `result-track:0f0bcab2ba2585924fd534b6c4d2fbbbe40786756afa0746877909d39ce8ba6b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
