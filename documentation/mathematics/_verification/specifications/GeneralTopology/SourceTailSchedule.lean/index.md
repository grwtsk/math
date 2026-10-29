# Verification target: Source Tail Schedule

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "dd49ced25bbb9580b5f5db23df8cdd9451317e1d",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/SourceTailSchedule/Variantd9ad33241a9b5cfefd52143995cc95b22fffc0a31a4f69921e0991a06713027c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../GeneralTopology/SourceTailSchedule.lean/index.md) · [Full source](../../../../GeneralTopology/SourceTailSchedule.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `dd49ced25bbb9580b5f5db23df8cdd9451317e1d`.

Source path: `GRWTSK/Topology/GeneralTopology/SourceTailSchedule/Variantd9ad33241a9b5cfefd52143995cc95b22fffc0a31a4f69921e0991a06713027c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/SourceTailSchedule/Variantd9ad33241a9b5cfefd52143995cc95b22fffc0a31a4f69921e0991a06713027c.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.SourceComparison.MobiusEndpointBudget` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Sqrt` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [logScale](../../../../GeneralTopology/SourceTailSchedule.lean/declarations/logscale.md) | 14 | `declaration-track:d00b6eb2933e57abbf3c7c95ecfbb5520c8e23d44df96dd0862225c1e9c28a87` |
| 2 | `def` | [epsilonSchedule](../../../../GeneralTopology/SourceTailSchedule.lean/declarations/epsilonschedule.md) | 17 | `declaration-track:8d53808315a59622734005055a233cafe47761b7ef080fad8d873c40c3533700` |
| 3 | `def` | [cutoffSchedule](../../../../GeneralTopology/SourceTailSchedule.lean/declarations/cutoffschedule.md) | 20 | `declaration-track:4a0250ad407e316c2bea1d26034763e6758ef85479f8b925077fb6819ec837e9` |
| 4 | `theorem` | [schedule_admissible](../../../../GeneralTopology/SourceTailSchedule.lean/declarations/schedule-admissible.md) | 23 | `result-track:98045e98505ae9f5a664138684fa6c499f10e2dc77dea75b01009bb088beb86e` |
| 5 | `theorem` | [scheduled_endpoint_bounds](../../../../GeneralTopology/SourceTailSchedule.lean/declarations/scheduled-endpoint-bounds.md) | 39 | `result-track:fba704634fa6ce3657638fb04400f65c50ec1385b70c709304cd8031c8f17f1c` |
| 6 | `theorem` | [explicit_tail_bounds_tendsto](../../../../GeneralTopology/SourceTailSchedule.lean/declarations/explicit-tail-bounds-tendsto.md) | 73 | `result-track:6abb09ac859545178f836b091aa74fee9d25822d89336bbeedd5669a2e476af4` |
| 7 | `theorem` | [scheduled_actual_tails_tendsto](../../../../GeneralTopology/SourceTailSchedule.lean/declarations/scheduled-actual-tails-tendsto.md) | 84 | `result-track:c0f828aa211190a6bc939a9c8f6834666abc630727c20c8754417896fc2110fa` |
| 8 | `theorem` | [epsilonSchedule_tendsto_zero](../../../../GeneralTopology/SourceTailSchedule.lean/declarations/epsilonschedule-tendsto-zero.md) | 99 | `result-track:b6302f739edb8716da1bdc4f916fd7020d74a08bef862af3b29ca8555e4be28b` |
| 9 | `theorem` | [cutoffSchedule_tendsto_atTop](../../../../GeneralTopology/SourceTailSchedule.lean/declarations/cutoffschedule-tendsto-attop.md) | 107 | `result-track:b3ddaa6a3fa2291bb6c0df3d23de15231c56dd6e8ff005ef7fb1a9d2f3d9a9f2` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=b10bf51dd9973f525d944aef454c4a7fda746daec83addba4181d86ebe591bc9 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/SourceTailSchedule/Variantd9ad33241a9b5cfefd52143995cc95b22fffc0a31a4f69921e0991a06713027c.lean","GRWTSK/_verification/specifications/Topology/GeneralTopology/SourceTailSchedule/Variantd9ad33241a9b5cfefd52143995cc95b22fffc0a31a4f69921e0991a06713027c.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
