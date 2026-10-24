# Verification target: GRWTSK.Topology.MetricTopology.Tube.Variante415a053d3bb7f4b88efa9b334138d75af33973f6d840926f32b924a9b529946

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "59317133200d256379ed3d5fc29bf825b0404f63",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/MetricTopology/Tube/Variante415a053d3bb7f4b88efa9b334138d75af33973f6d840926f32b924a9b529946.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/MetricTopology/Tube/Variante415a053d3bb7f4b88efa9b334138d75af33973f6d840926f32b924a9b529946.lean/index.md) · [Full source](../../../../../mathematics/Topology/MetricTopology/Tube/Variante415a053d3bb7f4b88efa9b334138d75af33973f6d840926f32b924a9b529946.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `59317133200d256379ed3d5fc29bf825b0404f63`.

Source path: `GRWTSK/Topology/MetricTopology/Tube/Variante415a053d3bb7f4b88efa9b334138d75af33973f6d840926f32b924a9b529946.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/MetricTopology/Tube/Variante415a053d3bb7f4b88efa9b334138d75af33973f6d840926f32b924a9b529946.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathematics.Geometry.Kakeya.Direction` — import line 6; external provider; requires a separately pinned dependency.
- `Mathematics.Geometry.Kakeya.Scale` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [Tube](../../../../../mathematics/Topology/MetricTopology/Tube/Variante415a053d3bb7f4b88efa9b334138d75af33973f6d840926f32b924a9b529946.lean/declarations/tube--fbebface9fb5288f6a01edb7.md) | 22 | `declaration-track:fbebface9fb5288f6a01edb745e05b3c9f00e0741416bcc24ae58cbdbf47abd3` |
| 2 | `def` | [axisPoint](../../../../../mathematics/Topology/MetricTopology/Tube/Variante415a053d3bb7f4b88efa9b334138d75af33973f6d840926f32b924a9b529946.lean/declarations/axispoint--ecb082c01cf1f5af5dd5e9ad.md) | 30 | `declaration-track:ecb082c01cf1f5af5dd5e9ad4243ccbb1f35111965ffd1aec26c460959ae579a` |
| 3 | `def` | [Contains](../../../../../mathematics/Topology/MetricTopology/Tube/Variante415a053d3bb7f4b88efa9b334138d75af33973f6d840926f32b924a9b529946.lean/declarations/contains--eef3473a2d09c79a579824e1.md) | 36 | `declaration-track:eef3473a2d09c79a579824e189589737cd0b6a53914b24b0dc754c409b9e5cca` |
| 4 | `def` | [carrier](../../../../../mathematics/Topology/MetricTopology/Tube/Variante415a053d3bb7f4b88efa9b334138d75af33973f6d840926f32b924a9b529946.lean/declarations/carrier--5f6778409f1ee2a9b4823e37.md) | 43 | `declaration-track:5f6778409f1ee2a9b4823e37c4f94e7bf639fd9bd55e14cf8f0598080e4ca53b` |
| 5 | `theorem` | [mem_carrier_iff](../../../../../mathematics/Topology/MetricTopology/Tube/Variante415a053d3bb7f4b88efa9b334138d75af33973f6d840926f32b924a9b529946.lean/declarations/mem-carrier-iff--2944539739462a7d936b1c95.md) | 47 | `result-track:2944539739462a7d936b1c955ba37a71482043f9beb5ca257aefd9996f8d6abf` |
| 6 | `theorem` | [center_mem](../../../../../mathematics/Topology/MetricTopology/Tube/Variante415a053d3bb7f4b88efa9b334138d75af33973f6d840926f32b924a9b529946.lean/declarations/center-mem--948d5498dc5f3ea95c560184.md) | 53 | `result-track:948d5498dc5f3ea95c560184cee4ed1e44be944a834f04427dd2e17fa24dfc62` |
| 7 | `theorem` | [carrier_nonempty](../../../../../mathematics/Topology/MetricTopology/Tube/Variante415a053d3bb7f4b88efa9b334138d75af33973f6d840926f32b924a9b529946.lean/declarations/carrier-nonempty--2bce24d665545079b564d04e.md) | 60 | `result-track:2bce24d665545079b564d04ecd5d3dafc66beca89ebd8d52df845d97d352dca5` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
