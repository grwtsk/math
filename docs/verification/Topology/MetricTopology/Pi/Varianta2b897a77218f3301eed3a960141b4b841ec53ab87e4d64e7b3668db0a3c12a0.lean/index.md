# Verification target: GRWTSK.Topology.MetricTopology.Pi.Varianta2b897a77218f3301eed3a960141b4b841ec53ab87e4d64e7b3668db0a3c12a0

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1fb9255104c67944055cad0726de0707403f047f",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/MetricTopology/Pi/Varianta2b897a77218f3301eed3a960141b4b841ec53ab87e4d64e7b3668db0a3c12a0.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/MetricTopology/Pi/Varianta2b897a77218f3301eed3a960141b4b841ec53ab87e4d64e7b3668db0a3c12a0.lean/index.md) · [Full source](../../../../../mathematics/Topology/MetricTopology/Pi/Varianta2b897a77218f3301eed3a960141b4b841ec53ab87e4d64e7b3668db0a3c12a0.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1fb9255104c67944055cad0726de0707403f047f`.

Source path: `GRWTSK/Topology/MetricTopology/Pi/Varianta2b897a77218f3301eed3a960141b4b841ec53ab87e4d64e7b3668db0a3c12a0.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/MetricTopology/Pi/Varianta2b897a77218f3301eed3a960141b4b841ec53ab87e4d64e7b3668db0a3c12a0.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Topology.EMetricSpace.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.UniformSpace.Pi` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [(anonymous)](../../../../../mathematics/Topology/MetricTopology/Pi/Varianta2b897a77218f3301eed3a960141b4b841ec53ab87e4d64e7b3668db0a3c12a0.lean/declarations/instance--bda4daa94f18de464053dfda.md) | 31 | `declaration-track:bda4daa94f18de464053dfda837d8f4339364db1290dfa99045ce12c2b097fea` |
| 2 | `theorem` | [edist_pi_def](../../../../../mathematics/Topology/MetricTopology/Pi/Varianta2b897a77218f3301eed3a960141b4b841ec53ab87e4d64e7b3668db0a3c12a0.lean/declarations/edist-pi-def--037de5cf517e70aeb45fd09c.md) | 34 | `result-track:037de5cf517e70aeb45fd09c554472f230634b8cb3cd4f67b5d47219d714a6b4` |
| 3 | `theorem` | [edist_le_pi_edist](../../../../../mathematics/Topology/MetricTopology/Pi/Varianta2b897a77218f3301eed3a960141b4b841ec53ab87e4d64e7b3668db0a3c12a0.lean/declarations/edist-le-pi-edist--4bcb9e82c6f15c8c105a69a0.md) | 38 | `result-track:4bcb9e82c6f15c8c105a69a0ecdd36197516cd7fa812c91d7173fd4ce3bd2707` |
| 4 | `theorem` | [edist_pi_le_iff](../../../../../mathematics/Topology/MetricTopology/Pi/Varianta2b897a77218f3301eed3a960141b4b841ec53ab87e4d64e7b3668db0a3c12a0.lean/declarations/edist-pi-le-iff--8cf9046ef0cf2512fb2fe26e.md) | 42 | `result-track:8cf9046ef0cf2512fb2fe26eb63ac9d5d6bfbb3675de50c5420e482997b167b4` |
| 5 | `theorem` | [edist_pi_const_le](../../../../../mathematics/Topology/MetricTopology/Pi/Varianta2b897a77218f3301eed3a960141b4b841ec53ab87e4d64e7b3668db0a3c12a0.lean/declarations/edist-pi-const-le--60a297cf282cf74dc630b8a8.md) | 46 | `result-track:60a297cf282cf74dc630b8a822f105b0e6367c9236a7b94f13508651cc8fed5e` |
| 6 | `theorem` | [edist_pi_const](../../../../../mathematics/Topology/MetricTopology/Pi/Varianta2b897a77218f3301eed3a960141b4b841ec53ab87e4d64e7b3668db0a3c12a0.lean/declarations/edist-pi-const--aad521fe8de2177633181d39.md) | 50 | `result-track:aad521fe8de2177633181d39b2f279579faffa5e8b4582c7d8ae41b4bb1c7b59` |
| 7 | `instance` | [pseudoEMetricSpacePi](../../../../../mathematics/Topology/MetricTopology/Pi/Varianta2b897a77218f3301eed3a960141b4b841ec53ab87e4d64e7b3668db0a3c12a0.lean/declarations/pseudoemetricspacepi--083932b0b7ec16ab1ad95fc2.md) | 58 | `declaration-track:083932b0b7ec16ab1ad95fc24fe67064fed62bc5cdd2879cfb0ce445e80d288e` |
| 8 | `instance` | [emetricSpacePi](../../../../../mathematics/Topology/MetricTopology/Pi/Varianta2b897a77218f3301eed3a960141b4b841ec53ab87e4d64e7b3668db0a3c12a0.lean/declarations/emetricspacepi--96fb01a82e1ad13be13a2b9b.md) | 86 | `declaration-track:96fb01a82e1ad13be13a2b9b684d26a50191a0b584b87454979bb68dac400052` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
