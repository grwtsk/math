# Verification target: Adic Topology Namespaced Aligned

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "58a90498b2a6754a53586c5ca5174f97b7548b2a",
  "lexical_observation_count": 24,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/AdicTopology/Variant4881effc3b84104f4dad3011a6128ad3ee76f6e4c17f1159d8c0f3618f7fe7a3.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AdicTopologyNamespacedAligned.lean/index.md) · [Full source](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AdicTopologyNamespacedAligned.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `58a90498b2a6754a53586c5ca5174f97b7548b2a`.

Source path: `GRWTSK/Algebra/LinearAlgebra/AdicTopology/Variant4881effc3b84104f4dad3011a6128ad3ee76f6e4c17f1159d8c0f3618f7fe7a3.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/AdicTopology/Variant4881effc3b84104f4dad3011a6128ad3ee76f6e4c17f1159d8c0f3618f7fe7a3.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.RingTheory.Ideal.Operations` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Algebra.Nonarchimedean.Bases` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.UniformSpace.Completion` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Algebra.UniformRing` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [adic_basis](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AdicTopologyNamespacedAligned.lean/declarations/adic-basis.md) | 63 | `result-track:5176443a6bbd2bca1f8d442c5970cce2bc3e1013cf3f56ba6caad67a34c2a256` |
| 2 | `def` | [ringFilterBasis](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AdicTopologyNamespacedAligned.lean/declarations/ringfilterbasis.md) | 86 | `declaration-track:975b1969793603f367341a55c59573351bff435d72a1742ee9b29d7f354466c8` |
| 3 | `def` | [adicTopology](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AdicTopologyNamespacedAligned.lean/declarations/adictopology.md) | 92 | `declaration-track:5dab33f11fa9c754f26e7f6b611046922030ce756d03d4a514e5888824a3aa4c` |
| 4 | `theorem` | [nonarchimedean](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AdicTopologyNamespacedAligned.lean/declarations/nonarchimedean.md) | 96 | `result-track:9b252188fbe4b543ad3a690718af9201de186ba931570897d8bdb5af5d2798f1` |
| 5 | `theorem` | [hasBasis_nhds_zero_adic](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AdicTopologyNamespacedAligned.lean/declarations/hasbasis-nhds-zero-adic.md) | 101 | `result-track:6b4fc61900b05592a6d95b303f7c8cc58605021628d354ec3186246792675902` |
| 6 | `theorem` | [hasBasis_nhds_adic](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AdicTopologyNamespacedAligned.lean/declarations/hasbasis-nhds-adic.md) | 115 | `result-track:3116bd9f70aefd5f17ba1b2b129396534f6c1f8edd9f7f58ce15a9d8c12ce5a2` |
| 7 | `theorem` | [adic_module_basis](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AdicTopologyNamespacedAligned.lean/declarations/adic-module-basis.md) | 125 | `result-track:301269c4c5a6b94e4d951e1ceb8f6f665e1473eb2630080ab2ff87cb1ea87654` |
| 8 | `def` | [adicModuleTopology](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AdicTopologyNamespacedAligned.lean/declarations/adicmoduletopology.md) | 140 | `declaration-track:d4e333f16127adddd30439a4c9e1dae0e94a6149888b35fddd293e357434999a` |
| 9 | `def` | [openAddSubgroup](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AdicTopologyNamespacedAligned.lean/declarations/openaddsubgroup.md) | 147 | `declaration-track:f23ff4ce966b459108d5ca67c6b5fa8e3d6ebd102027132ec60ac838b6d9d0d1` |
| 10 | `def` | [IsAdic](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AdicTopologyNamespacedAligned.lean/declarations/isadic.md) | 161 | `declaration-track:55d42efc6ff3882acd1dadf5369709ab1277683698b72ff00a5d397cf29cd61b` |
| 11 | `theorem` | [isAdic_iff](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AdicTopologyNamespacedAligned.lean/declarations/isadic-iff.md) | 167 | `result-track:d25944fbb3283eb882db3386e5be312681db4f69c38ad709020a25a57ab4ce6b` |
| 12 | `theorem` | [is_ideal_adic_pow](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AdicTopologyNamespacedAligned.lean/declarations/is-ideal-adic-pow.md) | 198 | `result-track:70b312c597f606a28eb4f91b5f14ae1e0ee32d8145e3341ecba0d84d1155df1c` |
| 13 | `theorem` | [is_bot_adic_iff](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AdicTopologyNamespacedAligned.lean/declarations/is-bot-adic-iff.md) | 216 | `result-track:0d26c9d168ac740606b409c2d3469a3fce590eee0230cb735429f10017c28f99` |
| 14 | `class` | [WithIdeal](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AdicTopologyNamespacedAligned.lean/declarations/withideal.md) | 234 | `declaration-track:1c893ccaf1a60b4e675003a0dae0a60db4b1429b83fac33cfe98a04e9d58d2cf` |
| 15 | `instance` | [(anonymous)](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AdicTopologyNamespacedAligned.lean/declarations/instance.md) | 244 | `declaration-track:03a7c262359efa4466dac218d5c627bfec1d701fc082ef38ad96b00a35531cfd` |
| 16 | `instance` | [(anonymous)](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AdicTopologyNamespacedAligned.lean/declarations/instance-source-edition-2.md) | 247 | `declaration-track:158910e6c5045cc26f6f4513af6002f0956274cd79b843d2bfa54a8f9e40a5cf` |
| 17 | `instance` | [(anonymous)](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AdicTopologyNamespacedAligned.lean/declarations/instance-source-edition-4.md) | 250 | `declaration-track:821e441759072fdfc9e35d25c51128e35894977138d34eddd786abb23b5fa621` |
| 18 | `instance` | [(anonymous)](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AdicTopologyNamespacedAligned.lean/declarations/instance-source-edition-3.md) | 253 | `declaration-track:73590f44e0d0d6c33defaf650599910875a373fd079ead0776cfcf54852057c5` |
| 19 | `def` | [topologicalSpaceModule](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AdicTopologyNamespacedAligned.lean/declarations/topologicalspacemodule.md) | 258 | `declaration-track:2092b34697965ef2cd99bb8f3916fff167e3e1268dc971eeff17677ec60ee8f6` |
| 20 | `example` | [(anonymous)](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AdicTopologyNamespacedAligned.lean/declarations/example.md) | 266 | `declaration-track:1844e21403ed6a5bf7e1139d503748740ed28b7b29690f756d1a590e82754582` |
| 21 | `example` | [(anonymous)](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AdicTopologyNamespacedAligned.lean/declarations/example-source-edition-5.md) | 268 | `declaration-track:e976afec129b3cb5a219931a2e96313c9d16bb5e47106acc5e00c4b99cbcba20` |
| 22 | `example` | [(anonymous)](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AdicTopologyNamespacedAligned.lean/declarations/example-source-edition-4.md) | 270 | `declaration-track:e2563d31c97393820846669c1cdcd91216b4a1d2a4f5770231a8876744f92681` |
| 23 | `example` | [(anonymous)](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AdicTopologyNamespacedAligned.lean/declarations/example-source-edition-2.md) | 273 | `declaration-track:2201bcd272d16eb533e9e181c7457f93073ec80dedf5446ddc53f6244c339f5c` |
| 24 | `example` | [(anonymous)](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AdicTopologyNamespacedAligned.lean/declarations/example-source-edition-3.md) | 276 | `declaration-track:4bc2e014a96f784f76a34c3416667266bbbff6679f6adeb3e1558cdd6f183335` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=30ad7efe2c053da484379f8c4aba532e78ede9ffdbbb77e4a4e178cfb8999805 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/AdicTopology/Variant4881effc3b84104f4dad3011a6128ad3ee76f6e4c17f1159d8c0f3618f7fe7a3.lean","GRWTSK/_verification/specifications/Algebra/LinearAlgebra/AdicTopology/Variant4881effc3b84104f4dad3011a6128ad3ee76f6e4c17f1159d8c0f3618f7fe7a3.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
