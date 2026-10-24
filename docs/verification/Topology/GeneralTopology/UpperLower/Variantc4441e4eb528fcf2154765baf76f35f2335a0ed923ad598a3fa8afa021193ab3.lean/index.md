# Verification target: GRWTSK.Topology.GeneralTopology.UpperLower.Variantc4441e4eb528fcf2154765baf76f35f2335a0ed923ad598a3fa8afa021193ab3

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f5c63b61471335bf76a2c6d575c4371a594bf8ad",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/UpperLower/Variantc4441e4eb528fcf2154765baf76f35f2335a0ed923ad598a3fa8afa021193ab3.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/UpperLower/Variantc4441e4eb528fcf2154765baf76f35f2335a0ed923ad598a3fa8afa021193ab3.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/UpperLower/Variantc4441e4eb528fcf2154765baf76f35f2335a0ed923ad598a3fa8afa021193ab3.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f5c63b61471335bf76a2c6d575c4371a594bf8ad`.

Source path: `GRWTSK/Topology/GeneralTopology/UpperLower/Variantc4441e4eb528fcf2154765baf76f35f2335a0ed923ad598a3fa8afa021193ab3.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/UpperLower/Variantc4441e4eb528fcf2154765baf76f35f2335a0ed923ad598a3fa8afa021193ab3.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [HasUpperLowerClosure](../../../../../mathematics/Topology/GeneralTopology/UpperLower/Variantc4441e4eb528fcf2154765baf76f35f2335a0ed923ad598a3fa8afa021193ab3.lean/declarations/hasupperlowerclosure--1b99652ea1382d101e1c9637.md) | 42 | `declaration-track:1b99652ea1382d101e1c9637bfe83943e5a69281dc57f219f2310f7f9b3f88fd` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/UpperLower/Variantc4441e4eb528fcf2154765baf76f35f2335a0ed923ad598a3fa8afa021193ab3.lean/declarations/instance--4e252b57530d1444a273986a.md) | 52 | `declaration-track:4e252b57530d1444a273986a673eb2663f303be633faf6539914352a92eb9660` |
| 3 | `theorem` | [IsUpperSet.closure](../../../../../mathematics/Topology/GeneralTopology/UpperLower/Variantc4441e4eb528fcf2154765baf76f35f2335a0ed923ad598a3fa8afa021193ab3.lean/declarations/isupperset-closure--418c2e60891b9e8cdeafd4f6.md) | 72 | `result-track:418c2e60891b9e8cdeafd4f6573b7893bb7581f02d3465a59d2c364f204b3a29` |
| 4 | `theorem` | [IsLowerSet.closure](../../../../../mathematics/Topology/GeneralTopology/UpperLower/Variantc4441e4eb528fcf2154765baf76f35f2335a0ed923ad598a3fa8afa021193ab3.lean/declarations/islowerset-closure--68db07fe198606d11c3171b9.md) | 75 | `result-track:68db07fe198606d11c3171b91c317dc9ee08fe95dd6f0fa7600a333edcb1f098` |
| 5 | `theorem` | [IsOpen.upperClosure](../../../../../mathematics/Topology/GeneralTopology/UpperLower/Variantc4441e4eb528fcf2154765baf76f35f2335a0ed923ad598a3fa8afa021193ab3.lean/declarations/isopen-upperclosure--6538401be7d49ae87c30dafe.md) | 78 | `result-track:6538401be7d49ae87c30dafe8ba2ea60f8d3d1ee412967e09590598d7e0629fb` |
| 6 | `theorem` | [IsOpen.lowerClosure](../../../../../mathematics/Topology/GeneralTopology/UpperLower/Variantc4441e4eb528fcf2154765baf76f35f2335a0ed923ad598a3fa8afa021193ab3.lean/declarations/isopen-lowerclosure--84865789bb4d8226cac6c9d6.md) | 81 | `result-track:84865789bb4d8226cac6c9d6ffb0caa6cc0801017ee8a4e64b89a94b905a9ea7` |
| 7 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/UpperLower/Variantc4441e4eb528fcf2154765baf76f35f2335a0ed923ad598a3fa8afa021193ab3.lean/declarations/instance--6f573495734600761f84a8bc.md) | 84 | `declaration-track:6f573495734600761f84a8bcbd1beccba7abae41856bb06eb48358255e2ce6ff` |
| 8 | `theorem` | [IsUpperSet.interior](../../../../../mathematics/Topology/GeneralTopology/UpperLower/Variantc4441e4eb528fcf2154765baf76f35f2335a0ed923ad598a3fa8afa021193ab3.lean/declarations/isupperset-interior--3e5c85c42550cc181dc49b15.md) | 104 | `result-track:3e5c85c42550cc181dc49b150caa9844dee3c973e61630f8cae06bcdeb124521` |
| 9 | `theorem` | [IsLowerSet.interior](../../../../../mathematics/Topology/GeneralTopology/UpperLower/Variantc4441e4eb528fcf2154765baf76f35f2335a0ed923ad598a3fa8afa021193ab3.lean/declarations/islowerset-interior--06942b9e014f82e8069450ce.md) | 108 | `result-track:06942b9e014f82e8069450ce397c63eecfe9661ed55a3ad96dc323b1d286c488` |
| 10 | `theorem` | [Set.OrdConnected.interior](../../../../../mathematics/Topology/GeneralTopology/UpperLower/Variantc4441e4eb528fcf2154765baf76f35f2335a0ed923ad598a3fa8afa021193ab3.lean/declarations/set-ordconnected-interior--de7918a2a7802db67e4672db.md) | 111 | `result-track:de7918a2a7802db67e4672dbc3ae460288587640312d5cd30594594651f1675b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
