# Verification target: GRWTSK.Topology.MetricTopology.Nat.Variant6f6b3182855056ce871125b2580278d6b99be924b03c330bd4113dfdf664a126

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e7acb72834e6465bfbeccd49d07452f041322586",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/MetricTopology/Nat/Variant6f6b3182855056ce871125b2580278d6b99be924b03c330bd4113dfdf664a126.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/MetricTopology/Nat/Variant6f6b3182855056ce871125b2580278d6b99be924b03c330bd4113dfdf664a126.lean/index.md) · [Full source](../../../../../mathematics/Topology/MetricTopology/Nat/Variant6f6b3182855056ce871125b2580278d6b99be924b03c330bd4113dfdf664a126.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e7acb72834e6465bfbeccd49d07452f041322586`.

Source path: `GRWTSK/Topology/MetricTopology/Nat/Variant6f6b3182855056ce871125b2580278d6b99be924b03c330bd4113dfdf664a126.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/MetricTopology/Nat/Variant6f6b3182855056ce871125b2580278d6b99be924b03c330bd4113dfdf664a126.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Topology.Instances.Int` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [(anonymous)](../../../../../mathematics/Topology/MetricTopology/Nat/Variant6f6b3182855056ce871125b2580278d6b99be924b03c330bd4113dfdf664a126.lean/declarations/instance--7b3ea651df7500bd699c8b0d.md) | 30 | `declaration-track:7b3ea651df7500bd699c8b0df4270355b7c23ee62069597d484a6e16aa361a7c` |
| 2 | `theorem` | [dist_eq](../../../../../mathematics/Topology/MetricTopology/Nat/Variant6f6b3182855056ce871125b2580278d6b99be924b03c330bd4113dfdf664a126.lean/declarations/dist-eq--3951561477079b62cb913052.md) | 33 | `result-track:3951561477079b62cb9130523411a216815875954e8e078c39950318b077f305` |
| 3 | `theorem` | [dist_coe_int](../../../../../mathematics/Topology/MetricTopology/Nat/Variant6f6b3182855056ce871125b2580278d6b99be924b03c330bd4113dfdf664a126.lean/declarations/dist-coe-int--543b7cb193e3e8398c59cd2f.md) | 36 | `result-track:543b7cb193e3e8398c59cd2f4179713a704eb206b37c9abe6d6d3a1ccc99e711` |
| 4 | `theorem` | [dist_cast_real](../../../../../mathematics/Topology/MetricTopology/Nat/Variant6f6b3182855056ce871125b2580278d6b99be924b03c330bd4113dfdf664a126.lean/declarations/dist-cast-real--b7aa4cd72ffa79e73ea194f0.md) | 40 | `result-track:b7aa4cd72ffa79e73ea194f026d300ec3e345ca4c6e8d03f52defd52ae945fdd` |
| 5 | `theorem` | [pairwise_one_le_dist](../../../../../mathematics/Topology/MetricTopology/Nat/Variant6f6b3182855056ce871125b2580278d6b99be924b03c330bd4113dfdf664a126.lean/declarations/pairwise-one-le-dist--20d0d282c806aa417926399e.md) | 43 | `result-track:20d0d282c806aa417926399e3673317bc225b69dbbdf5f32b1607ccbbee0ac13` |
| 6 | `theorem` | [uniformEmbedding_coe_real](../../../../../mathematics/Topology/MetricTopology/Nat/Variant6f6b3182855056ce871125b2580278d6b99be924b03c330bd4113dfdf664a126.lean/declarations/uniformembedding-coe-real--c100a10669d8f11e7c3bcc74.md) | 47 | `result-track:c100a10669d8f11e7c3bcc745e8177e5089ba36f46c34a2c7d60d5a220e1ee0c` |
| 7 | `theorem` | [closedEmbedding_coe_real](../../../../../mathematics/Topology/MetricTopology/Nat/Variant6f6b3182855056ce871125b2580278d6b99be924b03c330bd4113dfdf664a126.lean/declarations/closedembedding-coe-real--424356e9a6404d3c681b908a.md) | 51 | `result-track:424356e9a6404d3c681b908a63d580dd1551d752b94dd32baafd2c9d50666285` |
| 8 | `instance` | [(anonymous)](../../../../../mathematics/Topology/MetricTopology/Nat/Variant6f6b3182855056ce871125b2580278d6b99be924b03c330bd4113dfdf664a126.lean/declarations/instance--6b4fd0fad9d9238e159085e4.md) | 55 | `declaration-track:6b4fd0fad9d9238e159085e451190ca9b14a7fd3d65628900558e57f187bd6e0` |
| 9 | `theorem` | [preimage_ball](../../../../../mathematics/Topology/MetricTopology/Nat/Variant6f6b3182855056ce871125b2580278d6b99be924b03c330bd4113dfdf664a126.lean/declarations/preimage-ball--e126469c22376e38315f83ce.md) | 57 | `result-track:e126469c22376e38315f83cecfcc994e9d6cb301254270b018d412ad738db1f8` |
| 10 | `theorem` | [preimage_closedBall](../../../../../mathematics/Topology/MetricTopology/Nat/Variant6f6b3182855056ce871125b2580278d6b99be924b03c330bd4113dfdf664a126.lean/declarations/preimage-closedball--045df2f204aeddccfcfcc90d.md) | 60 | `result-track:045df2f204aeddccfcfcc90de229a902bd0d756b1e011c3372e83a9e2f0d826f` |
| 11 | `theorem` | [closedBall_eq_Icc](../../../../../mathematics/Topology/MetricTopology/Nat/Variant6f6b3182855056ce871125b2580278d6b99be924b03c330bd4113dfdf664a126.lean/declarations/closedball-eq-icc--8e2344af497c3b492508c4cb.md) | 63 | `result-track:8e2344af497c3b492508c4cb88356ba8e2ea4c65dcb40b7c4d1abb1faececa46` |
| 12 | `instance` | [(anonymous)](../../../../../mathematics/Topology/MetricTopology/Nat/Variant6f6b3182855056ce871125b2580278d6b99be924b03c330bd4113dfdf664a126.lean/declarations/instance--2af318ecd7621d59922c354f.md) | 74 | `declaration-track:2af318ecd7621d59922c354f6ecb1539c0246b1ed3478197967af4ae34c86c31` |
| 13 | `instance` | [(anonymous)](../../../../../mathematics/Topology/MetricTopology/Nat/Variant6f6b3182855056ce871125b2580278d6b99be924b03c330bd4113dfdf664a126.lean/declarations/instance--7cdafa9348912f087018188e.md) | 79 | `declaration-track:7cdafa9348912f087018188e7c19156d6851c3e3164d36217c504ff55d8f6e70` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
