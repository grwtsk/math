# Verification target: GRWTSK.Topology.MetricTopology.Equicontinuity.Variantefa04bff777656cd09ebdf11e1d0614ad3012987958ff880f5054b8e9c6d827f

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c5446dbbddd6a4838ddb7213cc1ad703b1b10363",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/MetricTopology/Equicontinuity/Variantefa04bff777656cd09ebdf11e1d0614ad3012987958ff880f5054b8e9c6d827f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/MetricTopology/Equicontinuity/Variantefa04bff777656cd09ebdf11e1d0614ad3012987958ff880f5054b8e9c6d827f.lean/index.md) · [Full source](../../../../../mathematics/Topology/MetricTopology/Equicontinuity/Variantefa04bff777656cd09ebdf11e1d0614ad3012987958ff880f5054b8e9c6d827f.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c5446dbbddd6a4838ddb7213cc1ad703b1b10363`.

Source path: `GRWTSK/Topology/MetricTopology/Equicontinuity/Variantefa04bff777656cd09ebdf11e1d0614ad3012987958ff880f5054b8e9c6d827f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/MetricTopology/Equicontinuity/Variantefa04bff777656cd09ebdf11e1d0614ad3012987958ff880f5054b8e9c6d827f.lean.json)

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
| 1 | `theorem` | [equicontinuousAt_iff_right](../../../../../mathematics/Topology/MetricTopology/Equicontinuity/Variantefa04bff777656cd09ebdf11e1d0614ad3012987958ff880f5054b8e9c6d827f.lean/declarations/equicontinuousat-iff-right--301f36c93c0a30a028a184e6.md) | 49 | `result-track:301f36c93c0a30a028a184e6d6a94cd865912786623d9343a28bd821c6960397` |
| 2 | `theorem` | [equicontinuousAt_iff](../../../../../mathematics/Topology/MetricTopology/Equicontinuity/Variantefa04bff777656cd09ebdf11e1d0614ad3012987958ff880f5054b8e9c6d827f.lean/declarations/equicontinuousat-iff--a9098b64339cef245819c530.md) | 54 | `result-track:a9098b64339cef245819c530dea80673f4d4725d064aa34ae9dc90b87eb13449` |
| 3 | `theorem` | [equicontinuousAt_iff_pair](../../../../../mathematics/Topology/MetricTopology/Equicontinuity/Variantefa04bff777656cd09ebdf11e1d0614ad3012987958ff880f5054b8e9c6d827f.lean/declarations/equicontinuousat-iff-pair--301f09bf4e29a0d7dead15f2.md) | 60 | `result-track:301f09bf4e29a0d7dead15f2c828e66f725c2bd5a0a0e212817fd47aa5b2b4fe` |
| 4 | `theorem` | [uniformEquicontinuous_iff_right](../../../../../mathematics/Topology/MetricTopology/Equicontinuity/Variantefa04bff777656cd09ebdf11e1d0614ad3012987958ff880f5054b8e9c6d827f.lean/declarations/uniformequicontinuous-iff-right--977ddf5763589bcdedabe7fa.md) | 75 | `result-track:977ddf5763589bcdedabe7fa5f36d68c6aa1a59e396ff5a4c5c3db3b2fa9badd` |
| 5 | `theorem` | [uniformEquicontinuous_iff](../../../../../mathematics/Topology/MetricTopology/Equicontinuity/Variantefa04bff777656cd09ebdf11e1d0614ad3012987958ff880f5054b8e9c6d827f.lean/declarations/uniformequicontinuous-iff--7b6d047c69dc44d58f1afa39.md) | 81 | `result-track:7b6d047c69dc44d58f1afa39e0d51f0535df3fff918bd02256f7a6ce2079d2b8` |
| 6 | `theorem` | [equicontinuousAt_of_continuity_modulus](../../../../../mathematics/Topology/MetricTopology/Equicontinuity/Variantefa04bff777656cd09ebdf11e1d0614ad3012987958ff880f5054b8e9c6d827f.lean/declarations/equicontinuousat-of-continuity-modulus--e61a7d8f0b7e117793b0be71.md) | 89 | `result-track:e61a7d8f0b7e117793b0be719b050ace190c3c0648bdd065ff87c0020c63b5c5` |
| 7 | `theorem` | [uniformEquicontinuous_of_continuity_modulus](../../../../../mathematics/Topology/MetricTopology/Equicontinuity/Variantefa04bff777656cd09ebdf11e1d0614ad3012987958ff880f5054b8e9c6d827f.lean/declarations/uniformequicontinuous-of-continuity-modulus--f3085e9a0337d1a3de29ca21.md) | 99 | `result-track:f3085e9a0337d1a3de29ca21dafd033d21995a264a5405378a6f87cfea35309b` |
| 8 | `theorem` | [equicontinuous_of_continuity_modulus](../../../../../mathematics/Topology/MetricTopology/Equicontinuity/Variantefa04bff777656cd09ebdf11e1d0614ad3012987958ff880f5054b8e9c6d827f.lean/declarations/equicontinuous-of-continuity-modulus--b4b693b5208c03c70958a9c2.md) | 114 | `result-track:b4b693b5208c03c70958a9c2c9e274ede2137dde764ef5c416f23327a35adb90` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
