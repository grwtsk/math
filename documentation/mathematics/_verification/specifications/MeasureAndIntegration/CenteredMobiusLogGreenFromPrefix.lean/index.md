# Verification target: GRWTSK.NumberTheory.Zeta.Riemann.CenteredMobiusLogGreenFromPrefix

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7a07ba4dac6de74a96ee2f64ee3561122e7c41e1",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Zeta/Riemann/CenteredMobiusLogGreenFromPrefix.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../MeasureAndIntegration/CenteredMobiusLogGreenFromPrefix.lean/index.md) · [Full source](../../../../MeasureAndIntegration/CenteredMobiusLogGreenFromPrefix.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7a07ba4dac6de74a96ee2f64ee3561122e7c41e1`.

Source path: `GRWTSK/NumberTheory/Zeta/Riemann/CenteredMobiusLogGreenFromPrefix.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Zeta/Riemann/CenteredMobiusLogGreenFromPrefix.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Zeta.Riemann.CenteredMobiusLogCumulativeCutoff`](../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/CenteredMobiusLogCumulativeCutoff.lean/index.md) — import line 5; pinned internal source present.
- `Mathlib.Tactic` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [abs_cumulative_le_of_prefix_bound](../../../../MeasureAndIntegration/CenteredMobiusLogGreenFromPrefix.lean/declarations/abs-cumulative-le-of-prefix-bound.md) | 14 | `result-track:e0961bf35811cd98a3820bced57dbe3631611011c7e1ccab0b4b09f1c45646dd` |
| 2 | `theorem` | [abs_normalizedMangoldtDiscrepancy_le_of_prefix_bound](../../../../MeasureAndIntegration/CenteredMobiusLogGreenFromPrefix.lean/declarations/abs-normalizedmangoldtdiscrepancy-le-of-prefix-bound.md) | 29 | `result-track:5a6825646c46cd5c232d1585f76caeebb74102c6ba31d8067c42042906f4ff81` |
| 3 | `theorem` | [abs_mass1_le_of_prefix_bound](../../../../MeasureAndIntegration/CenteredMobiusLogGreenFromPrefix.lean/declarations/abs-mass1-le-of-prefix-bound.md) | 40 | `result-track:7745486089d07a3b662021d3b3566b33d011bfb4473b3f44bd7bc6a85bd973a2` |
| 4 | `theorem` | [abs_center_le_of_prefix_bound](../../../../MeasureAndIntegration/CenteredMobiusLogGreenFromPrefix.lean/declarations/abs-center-le-of-prefix-bound.md) | 49 | `result-track:711813aceb38f6757316743582f8e841787e6789383b7123ba382e60ecb82e68` |
| 5 | `theorem` | [abs_greenResidual_le_of_prefix_bound](../../../../MeasureAndIntegration/CenteredMobiusLogGreenFromPrefix.lean/declarations/abs-greenresidual-le-of-prefix-bound.md) | 59 | `result-track:cfefbe4e217ba6f7e3f8be39ed8ff10bf4bdcaea4b92fb54948178343c7812e7` |
| 6 | `theorem` | [greenEnergy_le_of_prefix_bound](../../../../MeasureAndIntegration/CenteredMobiusLogGreenFromPrefix.lean/declarations/greenenergy-le-of-prefix-bound.md) | 70 | `result-track:9de7a18f443fd7dddacbe7229815c824b7e7ad8021da83a3b55d73ff6e522428` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=32638c2d019ab475439b94cd9d52d715a6e4f2c46472ac371d592f51f0baa47c -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/Zeta/Riemann/CenteredMobiusLogGreenFromPrefix.lean","GRWTSK/_verification/specifications/NumberTheory/Zeta/Riemann/CenteredMobiusLogGreenFromPrefix.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
