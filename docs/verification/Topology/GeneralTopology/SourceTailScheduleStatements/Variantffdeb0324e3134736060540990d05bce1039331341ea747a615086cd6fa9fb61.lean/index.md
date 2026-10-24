# Verification target: GRWTSK.Topology.GeneralTopology.SourceTailScheduleStatements.Variantffdeb0324e3134736060540990d05bce1039331341ea747a615086cd6fa9fb61

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d31f8361efd5940938d32c7c59d770fee41b661f",
  "lexical_observation_count": 18,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/SourceTailScheduleStatements/Variantffdeb0324e3134736060540990d05bce1039331341ea747a615086cd6fa9fb61.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/SourceTailScheduleStatements/Variantffdeb0324e3134736060540990d05bce1039331341ea747a615086cd6fa9fb61.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/SourceTailScheduleStatements/Variantffdeb0324e3134736060540990d05bce1039331341ea747a615086cd6fa9fb61.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d31f8361efd5940938d32c7c59d770fee41b661f`.

Source path: `GRWTSK/Topology/GeneralTopology/SourceTailScheduleStatements/Variantffdeb0324e3134736060540990d05bce1039331341ea747a615086cd6fa9fb61.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/SourceTailScheduleStatements/Variantffdeb0324e3134736060540990d05bce1039331341ea747a615086cd6fa9fb61.lean.json)

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
| 1 | `def` | [logScale](../../../../../mathematics/Topology/GeneralTopology/SourceTailScheduleStatements/Variantffdeb0324e3134736060540990d05bce1039331341ea747a615086cd6fa9fb61.lean/declarations/logscale--c1a499d58c207d78adf395ab.md) | 22 | `declaration-track:c1a499d58c207d78adf395abf4de5ce6557360d47bcdfd4c5b4f0a8ba8b80581` |
| 2 | `def` | [epsilonSchedule](../../../../../mathematics/Topology/GeneralTopology/SourceTailScheduleStatements/Variantffdeb0324e3134736060540990d05bce1039331341ea747a615086cd6fa9fb61.lean/declarations/epsilonschedule--cd356aacbb350c729a5ee341.md) | 25 | `declaration-track:cd356aacbb350c729a5ee341dd3f0f910e40910dc950db1af6ad6d47df5f5290` |
| 3 | `def` | [cutoffSchedule](../../../../../mathematics/Topology/GeneralTopology/SourceTailScheduleStatements/Variantffdeb0324e3134736060540990d05bce1039331341ea747a615086cd6fa9fb61.lean/declarations/cutoffschedule--b4212d972e75f90d3c02d328.md) | 28 | `declaration-track:b4212d972e75f90d3c02d3280357a7c848cf69e07f1a32a8809c7432ff8b7945` |
| 4 | `theorem` | [schedule_admissible](../../../../../mathematics/Topology/GeneralTopology/SourceTailScheduleStatements/Variantffdeb0324e3134736060540990d05bce1039331341ea747a615086cd6fa9fb61.lean/declarations/schedule-admissible--658e6274332b0f9f31463072.md) | 31 | `result-track:658e6274332b0f9f31463072e70dc9cb4557d23f3a38609163b4365ac9b1e24a` |
| 5 | `theorem` | [scheduled_endpoint_bounds](../../../../../mathematics/Topology/GeneralTopology/SourceTailScheduleStatements/Variantffdeb0324e3134736060540990d05bce1039331341ea747a615086cd6fa9fb61.lean/declarations/scheduled-endpoint-bounds--29fa1b4d481d5617578e2afd.md) | 47 | `result-track:29fa1b4d481d5617578e2afd6e062cb168ab4c93c94ce3ac1ca50d0e18f902af` |
| 6 | `theorem` | [explicit_tail_bounds_tendsto](../../../../../mathematics/Topology/GeneralTopology/SourceTailScheduleStatements/Variantffdeb0324e3134736060540990d05bce1039331341ea747a615086cd6fa9fb61.lean/declarations/explicit-tail-bounds-tendsto--b919fd005ceab9324648f3d9.md) | 81 | `result-track:b919fd005ceab9324648f3d973c269780caa48bccbe2a5fbc24dbfec28d7a4d8` |
| 7 | `theorem` | [scheduled_actual_tails_tendsto](../../../../../mathematics/Topology/GeneralTopology/SourceTailScheduleStatements/Variantffdeb0324e3134736060540990d05bce1039331341ea747a615086cd6fa9fb61.lean/declarations/scheduled-actual-tails-tendsto--2a276186fe9b9cda58188816.md) | 92 | `result-track:2a276186fe9b9cda5818881623624b8abbe747188e376b5eaa733adb0aa138fb` |
| 8 | `theorem` | [epsilonSchedule_tendsto_zero](../../../../../mathematics/Topology/GeneralTopology/SourceTailScheduleStatements/Variantffdeb0324e3134736060540990d05bce1039331341ea747a615086cd6fa9fb61.lean/declarations/epsilonschedule-tendsto-zero--ac9dfb718b30d2d79bf65042.md) | 107 | `result-track:ac9dfb718b30d2d79bf65042761e6d1b9187b1d22663582631ee913029dbb704` |
| 9 | `theorem` | [cutoffSchedule_tendsto_atTop](../../../../../mathematics/Topology/GeneralTopology/SourceTailScheduleStatements/Variantffdeb0324e3134736060540990d05bce1039331341ea747a615086cd6fa9fb61.lean/declarations/cutoffschedule-tendsto-attop--32bd3176f30aead7822b6d8c.md) | 115 | `result-track:32bd3176f30aead7822b6d8c3555e6f94aaef373dccd867d8ba37bf6083dc677` |
| 10 | `example` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/SourceTailScheduleStatements/Variantffdeb0324e3134736060540990d05bce1039331341ea747a615086cd6fa9fb61.lean/declarations/example--22055275bf35421ae561e6de.md) | 129 | `declaration-track:22055275bf35421ae561e6dedb4a2076c1b839b422dc093af7b9629803d22e7a` |
| 11 | `example` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/SourceTailScheduleStatements/Variantffdeb0324e3134736060540990d05bce1039331341ea747a615086cd6fa9fb61.lean/declarations/example--87304b15d73e7d5401c3d3c0.md) | 130 | `declaration-track:87304b15d73e7d5401c3d3c057552ea7f2f32e63726ea63d5e35df6313700255` |
| 12 | `example` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/SourceTailScheduleStatements/Variantffdeb0324e3134736060540990d05bce1039331341ea747a615086cd6fa9fb61.lean/declarations/example--fa4a8bc409fc95547288212a.md) | 131 | `declaration-track:fa4a8bc409fc95547288212a52aa7fe3ea8ce480594bc847269961eb5f8e75a3` |
| 13 | `example` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/SourceTailScheduleStatements/Variantffdeb0324e3134736060540990d05bce1039331341ea747a615086cd6fa9fb61.lean/declarations/example--d96ffc6c3750c0e03589fe4c.md) | 132 | `declaration-track:d96ffc6c3750c0e03589fe4cf899aa4abd20d3e4432b7fa905b17aacd69cfccf` |
| 14 | `example` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/SourceTailScheduleStatements/Variantffdeb0324e3134736060540990d05bce1039331341ea747a615086cd6fa9fb61.lean/declarations/example--b308231ed74d03f25a22e44f.md) | 135 | `declaration-track:b308231ed74d03f25a22e44f0230d6cc09d0af9345c0deda0fa99ee299074902` |
| 15 | `example` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/SourceTailScheduleStatements/Variantffdeb0324e3134736060540990d05bce1039331341ea747a615086cd6fa9fb61.lean/declarations/example--4dabd564f8b9aff15fa6b29f.md) | 141 | `declaration-track:4dabd564f8b9aff15fa6b29ff201840cae080eaa825ba9f9f01e91fe92b1e5db` |
| 16 | `example` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/SourceTailScheduleStatements/Variantffdeb0324e3134736060540990d05bce1039331341ea747a615086cd6fa9fb61.lean/declarations/example--3cf9538d72a8a815287c86dc.md) | 145 | `declaration-track:3cf9538d72a8a815287c86dc024e494379694464b015651f84047640e7c0060b` |
| 17 | `example` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/SourceTailScheduleStatements/Variantffdeb0324e3134736060540990d05bce1039331341ea747a615086cd6fa9fb61.lean/declarations/example--f31b2f3415069f182cbad5ac.md) | 152 | `declaration-track:f31b2f3415069f182cbad5acd3ae6c97a3db7f46609f54b389526e3487102a55` |
| 18 | `example` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/SourceTailScheduleStatements/Variantffdeb0324e3134736060540990d05bce1039331341ea747a615086cd6fa9fb61.lean/declarations/example--f00dda2351aaf82cb4aad33f.md) | 153 | `declaration-track:f00dda2351aaf82cb4aad33f09b5b8c1bc7470833a49442c9c2b99304001b498` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
