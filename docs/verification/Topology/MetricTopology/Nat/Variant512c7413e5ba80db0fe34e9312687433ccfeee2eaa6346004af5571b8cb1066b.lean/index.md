# Verification target: GRWTSK.Topology.MetricTopology.Nat.Variant512c7413e5ba80db0fe34e9312687433ccfeee2eaa6346004af5571b8cb1066b

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7a9e8f1c203901c9106a08f7827c2e4633c04c88",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/MetricTopology/Nat/Variant512c7413e5ba80db0fe34e9312687433ccfeee2eaa6346004af5571b8cb1066b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/MetricTopology/Nat/Variant512c7413e5ba80db0fe34e9312687433ccfeee2eaa6346004af5571b8cb1066b.lean/index.md) · [Full source](../../../../../mathematics/Topology/MetricTopology/Nat/Variant512c7413e5ba80db0fe34e9312687433ccfeee2eaa6346004af5571b8cb1066b.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7a9e8f1c203901c9106a08f7827c2e4633c04c88`.

Source path: `GRWTSK/Topology/MetricTopology/Nat/Variant512c7413e5ba80db0fe34e9312687433ccfeee2eaa6346004af5571b8cb1066b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/MetricTopology/Nat/Variant512c7413e5ba80db0fe34e9312687433ccfeee2eaa6346004af5571b8cb1066b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Topology.Instances.Int` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [(anonymous)](../../../../../mathematics/Topology/MetricTopology/Nat/Variant512c7413e5ba80db0fe34e9312687433ccfeee2eaa6346004af5571b8cb1066b.lean/declarations/instance--660f82b28cb253e64443865a.md) | 22 | `declaration-track:660f82b28cb253e64443865aba2ae69889e956fb6fc5a8db52dd906135a677fe` |
| 2 | `theorem` | [dist_eq](../../../../../mathematics/Topology/MetricTopology/Nat/Variant512c7413e5ba80db0fe34e9312687433ccfeee2eaa6346004af5571b8cb1066b.lean/declarations/dist-eq--64609e6c74417054d0a9a60e.md) | 25 | `result-track:64609e6c74417054d0a9a60e73d3bdd841648c7e62c79d65575be87a4e4bf468` |
| 3 | `theorem` | [dist_coe_int](../../../../../mathematics/Topology/MetricTopology/Nat/Variant512c7413e5ba80db0fe34e9312687433ccfeee2eaa6346004af5571b8cb1066b.lean/declarations/dist-coe-int--263423b83e573d8a91a686e3.md) | 28 | `result-track:263423b83e573d8a91a686e397b45cb77e0f30dcf37b5e26ca011aecfdc5e76c` |
| 4 | `theorem` | [dist_cast_real](../../../../../mathematics/Topology/MetricTopology/Nat/Variant512c7413e5ba80db0fe34e9312687433ccfeee2eaa6346004af5571b8cb1066b.lean/declarations/dist-cast-real--6d1ffc926ea116556670382b.md) | 32 | `result-track:6d1ffc926ea116556670382bd97e9b9b197d1a1a15261a7d6c1ccbf3bc121eec` |
| 5 | `theorem` | [pairwise_one_le_dist](../../../../../mathematics/Topology/MetricTopology/Nat/Variant512c7413e5ba80db0fe34e9312687433ccfeee2eaa6346004af5571b8cb1066b.lean/declarations/pairwise-one-le-dist--e0259262dc79a788431ec92f.md) | 35 | `result-track:e0259262dc79a788431ec92fc4519a438085dda6ad0c4570fa53ea4c09f955a9` |
| 6 | `theorem` | [uniformEmbedding_coe_real](../../../../../mathematics/Topology/MetricTopology/Nat/Variant512c7413e5ba80db0fe34e9312687433ccfeee2eaa6346004af5571b8cb1066b.lean/declarations/uniformembedding-coe-real--bc9375d706db3d748b1889d2.md) | 39 | `result-track:bc9375d706db3d748b1889d2e259e74b9865b2f1249c186d6e1a6aabaa370259` |
| 7 | `theorem` | [closedEmbedding_coe_real](../../../../../mathematics/Topology/MetricTopology/Nat/Variant512c7413e5ba80db0fe34e9312687433ccfeee2eaa6346004af5571b8cb1066b.lean/declarations/closedembedding-coe-real--166d5423beb709b015da42bd.md) | 43 | `result-track:166d5423beb709b015da42bd16b5a02fcc8de4405c0287806a8d6d7a241d7f15` |
| 8 | `instance` | [(anonymous)](../../../../../mathematics/Topology/MetricTopology/Nat/Variant512c7413e5ba80db0fe34e9312687433ccfeee2eaa6346004af5571b8cb1066b.lean/declarations/instance--63f1cf21ec47125ae1204c1b.md) | 47 | `declaration-track:63f1cf21ec47125ae1204c1b36d5342b0426f43b5b678ed614575068d218541e` |
| 9 | `theorem` | [preimage_ball](../../../../../mathematics/Topology/MetricTopology/Nat/Variant512c7413e5ba80db0fe34e9312687433ccfeee2eaa6346004af5571b8cb1066b.lean/declarations/preimage-ball--6925e509243be4c911f8980d.md) | 49 | `result-track:6925e509243be4c911f8980d478cf27ec19fd45561890d45cc01959e0d8e305b` |
| 10 | `theorem` | [preimage_closedBall](../../../../../mathematics/Topology/MetricTopology/Nat/Variant512c7413e5ba80db0fe34e9312687433ccfeee2eaa6346004af5571b8cb1066b.lean/declarations/preimage-closedball--d6ed18cf8574327b61630a88.md) | 52 | `result-track:d6ed18cf8574327b61630a88703cb21fc5ed7f2e04aec91da6bdc3ff7f20b1af` |
| 11 | `theorem` | [closedBall_eq_Icc](../../../../../mathematics/Topology/MetricTopology/Nat/Variant512c7413e5ba80db0fe34e9312687433ccfeee2eaa6346004af5571b8cb1066b.lean/declarations/closedball-eq-icc--d8f3060ad3e653e866dcf0ca.md) | 55 | `result-track:d8f3060ad3e653e866dcf0ca1e296f40e9029046ef9d77fcb86fc474f4146dde` |
| 12 | `instance` | [(anonymous)](../../../../../mathematics/Topology/MetricTopology/Nat/Variant512c7413e5ba80db0fe34e9312687433ccfeee2eaa6346004af5571b8cb1066b.lean/declarations/instance--f8722d83075c6745deb7d05f.md) | 66 | `declaration-track:f8722d83075c6745deb7d05fe91ae42dff409771966a91282087c5c3721e607f` |
| 13 | `instance` | [(anonymous)](../../../../../mathematics/Topology/MetricTopology/Nat/Variant512c7413e5ba80db0fe34e9312687433ccfeee2eaa6346004af5571b8cb1066b.lean/declarations/instance--02febb72e25322963fceb877.md) | 71 | `declaration-track:02febb72e25322963fceb877355ca73a50615b04f7e502ce343d607787b75bb7` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
