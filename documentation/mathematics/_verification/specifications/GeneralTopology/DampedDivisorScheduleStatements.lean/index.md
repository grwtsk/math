# Verification target: Damped Divisor Schedule Statements

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7a5d19bf98acf93abcc580c737c055b92cc1f2d3",
  "lexical_observation_count": 17,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/DampedDivisorScheduleStatements/Variant70cb1b474f1c82dff98187912a416ccb54990198a33ab61227939804f937baef.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../GeneralTopology/DampedDivisorScheduleStatements.lean/index.md) · [Full source](../../../../GeneralTopology/DampedDivisorScheduleStatements.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7a5d19bf98acf93abcc580c737c055b92cc1f2d3`.

Source path: `GRWTSK/Topology/GeneralTopology/DampedDivisorScheduleStatements/Variant70cb1b474f1c82dff98187912a416ccb54990198a33ab61227939804f937baef.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/DampedDivisorScheduleStatements/Variant70cb1b474f1c82dff98187912a416ccb54990198a33ab61227939804f937baef.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.SourceComparison.SourceTailSchedule` — import line 1; external provider; requires a separately pinned dependency.
- `FormalResearch.RiemannHypothesis.SourceComparison.LogarithmicResidualTail` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Pow.Asymptotics` — import line 3; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [fastEpsilon](../../../../GeneralTopology/DampedDivisorScheduleStatements.lean/declarations/fastepsilon.md) | 16 | `declaration-track:805b4b5031e0cf95424535194d9db2e08e855e558dbdcafa8f71f55afef714b8` |
| 2 | `theorem` | [scale_facts](../../../../GeneralTopology/DampedDivisorScheduleStatements.lean/declarations/scale-facts.md) | 18 | `result-track:2ecf988a8e99289ad4e22dfdd4dc3faa0151b3d9acbc4dc82414e6fac38f745c` |
| 3 | `theorem` | [cutoff_sqrt](../../../../GeneralTopology/DampedDivisorScheduleStatements.lean/declarations/cutoff-sqrt.md) | 26 | `result-track:e71fd9ff42d9064f07763e58c3f0b52586e5bc608403355151d27cd8ea9a3988` |
| 4 | `theorem` | [fast_schedule_admissible](../../../../GeneralTopology/DampedDivisorScheduleStatements.lean/declarations/fast-schedule-admissible.md) | 35 | `result-track:eca8a42d6f60ee3c78a0481be3c580cda6382a043a5ec5e4308a6c0597490dd9` |
| 5 | `theorem` | [fast_endpoint_bounds](../../../../GeneralTopology/DampedDivisorScheduleStatements.lean/declarations/fast-endpoint-bounds.md) | 43 | `result-track:10077b5c75c98011b98bed6a622e38be5503bb4f979baf2d809db4348545480b` |
| 6 | `theorem` | [fast_taylor_bound](../../../../GeneralTopology/DampedDivisorScheduleStatements.lean/declarations/fast-taylor-bound.md) | 63 | `result-track:0f2cb55a05d3f2f2320f9f63833e20e3fc9325a028755617c1a29e47b1af83b8` |
| 7 | `theorem` | [logScale_power_div_rpow_tendsto](../../../../GeneralTopology/DampedDivisorScheduleStatements.lean/declarations/logscale-power-div-rpow-tendsto.md) | 93 | `result-track:1bcce8a30125c0d231fc2f8bfa20f72f750c9c2d8c4cae50ab1124a6c201fc6c` |
| 8 | `theorem` | [fast_explicit_budgets_tendsto](../../../../GeneralTopology/DampedDivisorScheduleStatements.lean/declarations/fast-explicit-budgets-tendsto.md) | 113 | `result-track:a76d0f4573dbd581265180d59fba3b6e0e22fa19e7019c300d96ebe8e1ac1ddb` |
| 9 | `theorem` | [fast_actual_budgets_tendsto](../../../../GeneralTopology/DampedDivisorScheduleStatements.lean/declarations/fast-actual-budgets-tendsto.md) | 129 | `result-track:18658ee685ea2e6260b7a686832ed6b7580eb7c4ae70f77e75f23ffaf4dba489` |
| 10 | `theorem` | [fast_actual_tail_norm_bounds](../../../../GeneralTopology/DampedDivisorScheduleStatements.lean/declarations/fast-actual-tail-norm-bounds.md) | 149 | `result-track:2da87a5e644ff615d94010c4fba0ba57aec5fb41c382813a79db04238bc9b416` |
| 11 | `example` | [(anonymous)](../../../../GeneralTopology/DampedDivisorScheduleStatements.lean/declarations/example-source-edition-6.md) | 170 | `declaration-track:c0af5faa4cb71505d05c133957a6696445d26d411f554f8005b76aca70675639` |
| 12 | `example` | [(anonymous)](../../../../GeneralTopology/DampedDivisorScheduleStatements.lean/declarations/example-source-edition-4.md) | 172 | `declaration-track:a7807ba7db31b2faf4f0c5cf1448d984954e0b46237f02d39437a7111e58f893` |
| 13 | `example` | [(anonymous)](../../../../GeneralTopology/DampedDivisorScheduleStatements.lean/declarations/example-source-edition-3.md) | 176 | `declaration-track:917451d4b87fd5dfacec8c52f2970db39a0f31b436010fa45e6ab08194fea277` |
| 14 | `example` | [(anonymous)](../../../../GeneralTopology/DampedDivisorScheduleStatements.lean/declarations/example-source-edition-5.md) | 182 | `declaration-track:bf3d7d2d2239ba1d3df6050a9c3946b81f9e85896ee7198f670eed6693f9fca7` |
| 15 | `example` | [(anonymous)](../../../../GeneralTopology/DampedDivisorScheduleStatements.lean/declarations/example-source-edition-7.md) | 187 | `declaration-track:e3751488fc1f9906a0310994a167af3611004dd0c4e989a9d5975cdd2048a87d` |
| 16 | `example` | [(anonymous)](../../../../GeneralTopology/DampedDivisorScheduleStatements.lean/declarations/example.md) | 194 | `declaration-track:059e12aa178fb0284e81b37f26693b506f76fa8202d468aa653a1773d40091ae` |
| 17 | `example` | [(anonymous)](../../../../GeneralTopology/DampedDivisorScheduleStatements.lean/declarations/example-source-edition-2.md) | 204 | `declaration-track:1e46db028dbbd1fd5b3ffff6bbf2083911fe9af9f887f171192139d27ebf4c2b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=6b8fdaa1fddccc2e2ac4266659f7a8c0ce0cb07d3cbd6172643020701ed9b0fe -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/DampedDivisorScheduleStatements/Variant70cb1b474f1c82dff98187912a416ccb54990198a33ab61227939804f937baef.lean","GRWTSK/_verification/specifications/Topology/GeneralTopology/DampedDivisorScheduleStatements/Variant70cb1b474f1c82dff98187912a416ccb54990198a33ab61227939804f937baef.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
