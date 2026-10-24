# Verification target: GRWTSK.Topology.MetricTopology.GromovProduct.Variant9f9d8b5c2ce52d2d5083d1912b9710122a2ba6e0562a6873226650aa715d0ee5

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "dd67ddd4a512fcdab1383255902ec8f2b9534374",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/MetricTopology/GromovProduct/Variant9f9d8b5c2ce52d2d5083d1912b9710122a2ba6e0562a6873226650aa715d0ee5.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/MetricTopology/GromovProduct/Variant9f9d8b5c2ce52d2d5083d1912b9710122a2ba6e0562a6873226650aa715d0ee5.lean/index.md) · [Full source](../../../../../mathematics/Topology/MetricTopology/GromovProduct/Variant9f9d8b5c2ce52d2d5083d1912b9710122a2ba6e0562a6873226650aa715d0ee5.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `dd67ddd4a512fcdab1383255902ec8f2b9534374`.

Source path: `GRWTSK/Topology/MetricTopology/GromovProduct/Variant9f9d8b5c2ce52d2d5083d1912b9710122a2ba6e0562a6873226650aa715d0ee5.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/MetricTopology/GromovProduct/Variant9f9d8b5c2ce52d2d5083d1912b9710122a2ba6e0562a6873226650aa715d0ee5.lean.json)

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
| 1 | `def` | [gromovProduct](../../../../../mathematics/Topology/MetricTopology/GromovProduct/Variant9f9d8b5c2ce52d2d5083d1912b9710122a2ba6e0562a6873226650aa715d0ee5.lean/declarations/gromovproduct--fcb3735c9c93e1901d9fa18d.md) | 47 | `declaration-track:fcb3735c9c93e1901d9fa18ddc85eb8139cebef00fbb61997e7cf341a14e76c2` |
| 2 | `lemma` | [gromovProduct_eq](../../../../../mathematics/Topology/MetricTopology/GromovProduct/Variant9f9d8b5c2ce52d2d5083d1912b9710122a2ba6e0562a6873226650aa715d0ee5.lean/declarations/gromovproduct-eq--172bdd7cb642fd807dd99eb9.md) | 49 | `result-track:172bdd7cb642fd807dd99eb953eb164c05b3503b3a79c48cd8662c1bc8eab18a` |
| 3 | `lemma` | [gromovProduct_comm](../../../../../mathematics/Topology/MetricTopology/GromovProduct/Variant9f9d8b5c2ce52d2d5083d1912b9710122a2ba6e0562a6873226650aa715d0ee5.lean/declarations/gromovproduct-comm--4f3bfd6098d8daf79e4f6108.md) | 51 | `result-track:4f3bfd6098d8daf79e4f61088ac8cddd049c329d2584e803825ce57e9dd1fa57` |
| 4 | `lemma` | [gromovProduct_nonneg](../../../../../mathematics/Topology/MetricTopology/GromovProduct/Variant9f9d8b5c2ce52d2d5083d1912b9710122a2ba6e0562a6873226650aa715d0ee5.lean/declarations/gromovproduct-nonneg--a0f83cbd904dc263ff839b59.md) | 57 | `result-track:a0f83cbd904dc263ff839b592c68ea273f373b5921962ddb44683b56ac60d528` |
| 5 | `lemma` | [gromovProduct_le_dist_left](../../../../../mathematics/Topology/MetricTopology/GromovProduct/Variant9f9d8b5c2ce52d2d5083d1912b9710122a2ba6e0562a6873226650aa715d0ee5.lean/declarations/gromovproduct-le-dist-left--ea20f805f2d5ad799c2cb379.md) | 60 | `result-track:ea20f805f2d5ad799c2cb3794619216a7d2b4fb13e0cc6b45943d618a65a3d6f` |
| 6 | `lemma` | [gromovProduct_le_dist_right](../../../../../mathematics/Topology/MetricTopology/GromovProduct/Variant9f9d8b5c2ce52d2d5083d1912b9710122a2ba6e0562a6873226650aa715d0ee5.lean/declarations/gromovproduct-le-dist-right--0759e97bcfc62360df7f370f.md) | 63 | `result-track:0759e97bcfc62360df7f370ff76c24ad0cf823dceebe6d26f1176d91e0419265` |
| 7 | `lemma` | [gromovProduct_self_left](../../../../../mathematics/Topology/MetricTopology/GromovProduct/Variant9f9d8b5c2ce52d2d5083d1912b9710122a2ba6e0562a6873226650aa715d0ee5.lean/declarations/gromovproduct-self-left--62a0915c1c47107afbae1d55.md) | 67 | `result-track:62a0915c1c47107afbae1d55351f63cf68be0f87413d809f07d8dcc7b3d6e6ea` |
| 8 | `lemma` | [gromovProduct_self_right](../../../../../mathematics/Topology/MetricTopology/GromovProduct/Variant9f9d8b5c2ce52d2d5083d1912b9710122a2ba6e0562a6873226650aa715d0ee5.lean/declarations/gromovproduct-self-right--23386482c2eddfc6ee45093a.md) | 71 | `result-track:23386482c2eddfc6ee45093acf6d54e22168258f1a9d26f850ca77138dfb9838` |
| 9 | `lemma` | [gromovProduct_self](../../../../../mathematics/Topology/MetricTopology/GromovProduct/Variant9f9d8b5c2ce52d2d5083d1912b9710122a2ba6e0562a6873226650aa715d0ee5.lean/declarations/gromovproduct-self--01c1e10dae2fa943ec7d4b4d.md) | 75 | `result-track:01c1e10dae2fa943ec7d4b4db0c0dbfc7ab767f64fe4cedc3198a3a39983e96f` |
| 10 | `lemma` | [gromovProduct_add_gromovProduct₁₃](../../../../../mathematics/Topology/MetricTopology/GromovProduct/Variant9f9d8b5c2ce52d2d5083d1912b9710122a2ba6e0562a6873226650aa715d0ee5.lean/declarations/gromovproduct-add-gromovproduct--02fa1c19f2c14b208c27f765.md) | 78 | `result-track:02fa1c19f2c14b208c27f765a346a53b96346d9a9e35b3e4d2a8ba3e2426d0a3` |
| 11 | `lemma` | [gromovProduct_add_gromovProduct₁₂](../../../../../mathematics/Topology/MetricTopology/GromovProduct/Variant9f9d8b5c2ce52d2d5083d1912b9710122a2ba6e0562a6873226650aa715d0ee5.lean/declarations/gromovproduct-add-gromovproduct--de378624fc058960fcdfd6aa.md) | 81 | `result-track:de378624fc058960fcdfd6aa57e83efb693f2fa99137d67ade0dcc252327a545` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
