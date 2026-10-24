# Verification target: GRWTSK.Topology.GeneralTopology.SourceTailScheduleAudit.Variant19dc9bfb284a95afb9663a8063c7c1c55728e8b2faceb906044a88e9323d27b5

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b9ddd9f14d0da1e7fbf320793aedd340316bc918",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/SourceTailScheduleAudit/Variant19dc9bfb284a95afb9663a8063c7c1c55728e8b2faceb906044a88e9323d27b5.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/SourceTailScheduleAudit/Variant19dc9bfb284a95afb9663a8063c7c1c55728e8b2faceb906044a88e9323d27b5.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/SourceTailScheduleAudit/Variant19dc9bfb284a95afb9663a8063c7c1c55728e8b2faceb906044a88e9323d27b5.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b9ddd9f14d0da1e7fbf320793aedd340316bc918`.

Source path: `GRWTSK/Topology/GeneralTopology/SourceTailScheduleAudit/Variant19dc9bfb284a95afb9663a8063c7c1c55728e8b2faceb906044a88e9323d27b5.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/SourceTailScheduleAudit/Variant19dc9bfb284a95afb9663a8063c7c1c55728e8b2faceb906044a88e9323d27b5.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.SourceComparison.MobiusEndpointBudget` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Sqrt` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [logScale](../../../../../mathematics/Topology/GeneralTopology/SourceTailScheduleAudit/Variant19dc9bfb284a95afb9663a8063c7c1c55728e8b2faceb906044a88e9323d27b5.lean/declarations/logscale--8804381f13996f166059b2b7.md) | 14 | `declaration-track:8804381f13996f166059b2b7bb93c7fa8141b4e08b73f735d46dfb30a9ce12f0` |
| 2 | `def` | [epsilonSchedule](../../../../../mathematics/Topology/GeneralTopology/SourceTailScheduleAudit/Variant19dc9bfb284a95afb9663a8063c7c1c55728e8b2faceb906044a88e9323d27b5.lean/declarations/epsilonschedule--6139a208179e769a7bcf40de.md) | 17 | `declaration-track:6139a208179e769a7bcf40dec96a8c7391cd976f94f3ec13115df8db17d03bef` |
| 3 | `def` | [cutoffSchedule](../../../../../mathematics/Topology/GeneralTopology/SourceTailScheduleAudit/Variant19dc9bfb284a95afb9663a8063c7c1c55728e8b2faceb906044a88e9323d27b5.lean/declarations/cutoffschedule--b7527de7190ad404bb216615.md) | 20 | `declaration-track:b7527de7190ad404bb216615591f725ad2ef7c4c9c4af36d79bbd51828f714e4` |
| 4 | `theorem` | [schedule_admissible](../../../../../mathematics/Topology/GeneralTopology/SourceTailScheduleAudit/Variant19dc9bfb284a95afb9663a8063c7c1c55728e8b2faceb906044a88e9323d27b5.lean/declarations/schedule-admissible--8c4741f0f3de47977ca61af9.md) | 23 | `result-track:8c4741f0f3de47977ca61af95fad255b74a8df204c41beceb09f2f6ec6e22fd3` |
| 5 | `theorem` | [scheduled_endpoint_bounds](../../../../../mathematics/Topology/GeneralTopology/SourceTailScheduleAudit/Variant19dc9bfb284a95afb9663a8063c7c1c55728e8b2faceb906044a88e9323d27b5.lean/declarations/scheduled-endpoint-bounds--e9aaf05ac7f7b33c658fb310.md) | 39 | `result-track:e9aaf05ac7f7b33c658fb3107199269fbb3f6ccd80b5e07c9d53dea8a22c3eb8` |
| 6 | `theorem` | [explicit_tail_bounds_tendsto](../../../../../mathematics/Topology/GeneralTopology/SourceTailScheduleAudit/Variant19dc9bfb284a95afb9663a8063c7c1c55728e8b2faceb906044a88e9323d27b5.lean/declarations/explicit-tail-bounds-tendsto--1593e9a61284fa25c4b1c0ec.md) | 73 | `result-track:1593e9a61284fa25c4b1c0ec51319580c34dfac5ed20939d63c5d35b041c4af3` |
| 7 | `theorem` | [scheduled_actual_tails_tendsto](../../../../../mathematics/Topology/GeneralTopology/SourceTailScheduleAudit/Variant19dc9bfb284a95afb9663a8063c7c1c55728e8b2faceb906044a88e9323d27b5.lean/declarations/scheduled-actual-tails-tendsto--511ecd53d79eaf91f853ea44.md) | 84 | `result-track:511ecd53d79eaf91f853ea44d6bcdc021b4a8e15c5094ff57e6e888bfd1fca59` |
| 8 | `theorem` | [epsilonSchedule_tendsto_zero](../../../../../mathematics/Topology/GeneralTopology/SourceTailScheduleAudit/Variant19dc9bfb284a95afb9663a8063c7c1c55728e8b2faceb906044a88e9323d27b5.lean/declarations/epsilonschedule-tendsto-zero--186af15d65dcc0dc0ed105ca.md) | 99 | `result-track:186af15d65dcc0dc0ed105ca5003c77c866f18d1ffc78b90ebba9768ea689068` |
| 9 | `theorem` | [cutoffSchedule_tendsto_atTop](../../../../../mathematics/Topology/GeneralTopology/SourceTailScheduleAudit/Variant19dc9bfb284a95afb9663a8063c7c1c55728e8b2faceb906044a88e9323d27b5.lean/declarations/cutoffschedule-tendsto-attop--cdb451501aaa6d54e54f2a8d.md) | 107 | `result-track:cdb451501aaa6d54e54f2a8dcab8fdbf35b0684e9c1b489fe5d13fafd348d5c1` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
