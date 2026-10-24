# Verification target: GRWTSK.Topology.MetricTopology.Nat.Variant470977f8b53891993ee066f0b1283e9c8f1c66095f01e487df6308e503a4361b

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "545dcfdcce1ed3fbab2dbd41cdc4e61077bf828a",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/MetricTopology/Nat/Variant470977f8b53891993ee066f0b1283e9c8f1c66095f01e487df6308e503a4361b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/MetricTopology/Nat/Variant470977f8b53891993ee066f0b1283e9c8f1c66095f01e487df6308e503a4361b.lean/index.md) · [Full source](../../../../../mathematics/Topology/MetricTopology/Nat/Variant470977f8b53891993ee066f0b1283e9c8f1c66095f01e487df6308e503a4361b.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `545dcfdcce1ed3fbab2dbd41cdc4e61077bf828a`.

Source path: `GRWTSK/Topology/MetricTopology/Nat/Variant470977f8b53891993ee066f0b1283e9c8f1c66095f01e487df6308e503a4361b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/MetricTopology/Nat/Variant470977f8b53891993ee066f0b1283e9c8f1c66095f01e487df6308e503a4361b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Topology.Instances.Int` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Nat.Lattice` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [(anonymous)](../../../../../mathematics/Topology/MetricTopology/Nat/Variant470977f8b53891993ee066f0b1283e9c8f1c66095f01e487df6308e503a4361b.lean/declarations/instance--2290b47af8c6464a38e7cb4c.md) | 21 | `declaration-track:2290b47af8c6464a38e7cb4c342a0acbba1afdf55ab18dbff15b3c0d27c89e09` |
| 2 | `theorem` | [dist_eq](../../../../../mathematics/Topology/MetricTopology/Nat/Variant470977f8b53891993ee066f0b1283e9c8f1c66095f01e487df6308e503a4361b.lean/declarations/dist-eq--aba23eb8d45b5b2ec2c8d6f2.md) | 24 | `result-track:aba23eb8d45b5b2ec2c8d6f2d393a6518b8a81b5eb6954bf22b224f46ce973a3` |
| 3 | `theorem` | [dist_coe_int](../../../../../mathematics/Topology/MetricTopology/Nat/Variant470977f8b53891993ee066f0b1283e9c8f1c66095f01e487df6308e503a4361b.lean/declarations/dist-coe-int--ca3b58c90fec6d145de14f33.md) | 26 | `result-track:ca3b58c90fec6d145de14f33b7b834c6b81184fd63215733dd954599130ce583` |
| 4 | `theorem` | [dist_cast_real](../../../../../mathematics/Topology/MetricTopology/Nat/Variant470977f8b53891993ee066f0b1283e9c8f1c66095f01e487df6308e503a4361b.lean/declarations/dist-cast-real--eb21e3b4012a056fc9b5b1b1.md) | 29 | `result-track:eb21e3b4012a056fc9b5b1b1fd336da461de3dafbd7bf601e606596e7b989478` |
| 5 | `theorem` | [pairwise_one_le_dist](../../../../../mathematics/Topology/MetricTopology/Nat/Variant470977f8b53891993ee066f0b1283e9c8f1c66095f01e487df6308e503a4361b.lean/declarations/pairwise-one-le-dist--2960a934ab3236120d388bdf.md) | 31 | `result-track:2960a934ab3236120d388bdf76582f5b83117192b4ccbc399dbd37d6b4046ec6` |
| 6 | `theorem` | [isUniformEmbedding_coe_real](../../../../../mathematics/Topology/MetricTopology/Nat/Variant470977f8b53891993ee066f0b1283e9c8f1c66095f01e487df6308e503a4361b.lean/declarations/isuniformembedding-coe-real--f391bdb10f91e5182dadf1e2.md) | 34 | `result-track:f391bdb10f91e5182dadf1e27bc646f553fe41727e55c5048c858466138cf40f` |
| 7 | `theorem` | [isClosedEmbedding_coe_real](../../../../../mathematics/Topology/MetricTopology/Nat/Variant470977f8b53891993ee066f0b1283e9c8f1c66095f01e487df6308e503a4361b.lean/declarations/isclosedembedding-coe-real--e06085d670deddec92122b31.md) | 37 | `result-track:e06085d670deddec92122b31849f04bb9022251f399023d79f52f6a6a70809dd` |
| 8 | `instance` | [(anonymous)](../../../../../mathematics/Topology/MetricTopology/Nat/Variant470977f8b53891993ee066f0b1283e9c8f1c66095f01e487df6308e503a4361b.lean/declarations/instance--18e6d5cd128b60f9fa65729e.md) | 40 | `declaration-track:18e6d5cd128b60f9fa65729ecd8b9c7dacb4445c32230cf576b5ba3c22acf409` |
| 9 | `theorem` | [preimage_ball](../../../../../mathematics/Topology/MetricTopology/Nat/Variant470977f8b53891993ee066f0b1283e9c8f1c66095f01e487df6308e503a4361b.lean/declarations/preimage-ball--e4bc3324ec7e5e1f24228611.md) | 42 | `result-track:e4bc3324ec7e5e1f24228611926ee7531caf22aa81d42c3449434670d4b72b26` |
| 10 | `theorem` | [preimage_closedBall](../../../../../mathematics/Topology/MetricTopology/Nat/Variant470977f8b53891993ee066f0b1283e9c8f1c66095f01e487df6308e503a4361b.lean/declarations/preimage-closedball--f5b1f8ea0d010ac8a1902a23.md) | 44 | `result-track:f5b1f8ea0d010ac8a1902a2319d9d674a41a1c8f079993dc1441c47b2636a2ca` |
| 11 | `theorem` | [closedBall_eq_Icc](../../../../../mathematics/Topology/MetricTopology/Nat/Variant470977f8b53891993ee066f0b1283e9c8f1c66095f01e487df6308e503a4361b.lean/declarations/closedball-eq-icc--c229c701a35e8bda0454c75f.md) | 46 | `result-track:c229c701a35e8bda0454c75fa180a0d8e1e5a96e1e9fb84a61b0f08201f9cf38` |
| 12 | `instance` | [(anonymous)](../../../../../mathematics/Topology/MetricTopology/Nat/Variant470977f8b53891993ee066f0b1283e9c8f1c66095f01e487df6308e503a4361b.lean/declarations/instance--35c5d3f73938ee7efec0f160.md) | 56 | `declaration-track:35c5d3f73938ee7efec0f160231071b87f99082ddd8b2210803dd05262ea9707` |
| 13 | `instance` | [(anonymous)](../../../../../mathematics/Topology/MetricTopology/Nat/Variant470977f8b53891993ee066f0b1283e9c8f1c66095f01e487df6308e503a4361b.lean/declarations/instance--df68a80b6446f267ca5bc847.md) | 61 | `declaration-track:df68a80b6446f267ca5bc8472591632a0796c64d8cbcf7b33cff4f8d8f2306bf` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
