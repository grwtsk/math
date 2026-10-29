# Verification target: Order Field Topological Ring

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9d9b5b1bd09e0a534c466806f580604d4a2d257c",
  "lexical_observation_count": 26,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Field/Variant17c7d07cb6435899c386e5c5838d558ecbc2cb9aadc4480ead8c5f9d847a4629.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/OrderFieldTopologicalRing.lean/index.md) · [Full source](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/OrderFieldTopologicalRing.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9d9b5b1bd09e0a534c466806f580604d4a2d257c`.

Source path: `GRWTSK/Topology/GeneralTopology/Field/Variant17c7d07cb6435899c386e5c5838d558ecbc2cb9aadc4480ead8c5f9d847a4629.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Field/Variant17c7d07cb6435899c386e5c5838d558ecbc2cb9aadc4480ead8c5f9d847a4629.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Tactic.Positivity` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Algebra.Order.Group` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Algebra.Field` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [TopologicalRing.of_norm](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/OrderFieldTopologicalRing.lean/declarations/topologicalring-of-norm.md) | 29 | `result-track:3b12bbbfe09b7484a42e09ba76ebc843512e627781de058647171f825f8a0fa4` |
| 2 | `instance` | [(anonymous)](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/OrderFieldTopologicalRing.lean/declarations/instance-source-edition-2.md) | 55 | `declaration-track:2a3abf2536bec5d9f3f88a83e5505d6ac93a3f81dffe7e4796fb28f34af8dc66` |
| 3 | `theorem` | [Filter.Tendsto.atTop_mul](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/OrderFieldTopologicalRing.lean/declarations/filter-tendsto-attop-mul.md) | 61 | `result-track:bd8cccc36f21c206f1460a5842c3daad80ad0df91d0ea154a2f57905bbcc8152` |
| 4 | `theorem` | [Filter.Tendsto.mul_atTop](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/OrderFieldTopologicalRing.lean/declarations/filter-tendsto-mul-attop.md) | 70 | `result-track:9f9b9b5c677c8cfecb254491cafe04f207ae7562357e58319610bf2518c1a5fa` |
| 5 | `theorem` | [Filter.Tendsto.atTop_mul_neg](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/OrderFieldTopologicalRing.lean/declarations/filter-tendsto-attop-mul-neg.md) | 77 | `result-track:f687ef3a677209dbb244df72112a63ca09967254550e7d9c7ad1ce187f1e6d41` |
| 6 | `theorem` | [Filter.Tendsto.neg_mul_atTop](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/OrderFieldTopologicalRing.lean/declarations/filter-tendsto-neg-mul-attop.md) | 85 | `result-track:50240c086bbb65fe278cd3babdbb906876ae9cdaee03b296e907e706864f026c` |
| 7 | `theorem` | [Filter.Tendsto.atBot_mul](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/OrderFieldTopologicalRing.lean/declarations/filter-tendsto-atbot-mul.md) | 92 | `result-track:1a5e5a64fcbe8551059df5dc966b536635c46dc1a30793045aceb19c85f6bb82` |
| 8 | `theorem` | [Filter.Tendsto.atBot_mul_neg](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/OrderFieldTopologicalRing.lean/declarations/filter-tendsto-atbot-mul-neg.md) | 100 | `result-track:5d908a8269195745607cfd4572c23bd795874cc1ae01f7249850b36660767b50` |
| 9 | `theorem` | [Filter.Tendsto.mul_atBot](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/OrderFieldTopologicalRing.lean/declarations/filter-tendsto-mul-atbot.md) | 108 | `result-track:42a90f9c8d467bc6d2bcf4c29eed8eacc839fb754bcbedc7b94d5f9749a3f852` |
| 10 | `theorem` | [Filter.Tendsto.neg_mul_atBot](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/OrderFieldTopologicalRing.lean/declarations/filter-tendsto-neg-mul-atbot.md) | 115 | `result-track:a07be10d98b653a022dcd7f4ba176c667da3eef92d289fabf92fefb7dee305be` |
| 11 | `theorem` | [tendsto_inv_zero_atTop](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/OrderFieldTopologicalRing.lean/declarations/tendsto-inv-zero-attop.md) | 121 | `result-track:2384938f1545def5d8e03e217728f1e37574e6fdad18e18155aac71a4a777397` |
| 12 | `theorem` | [tendsto_inv_atTop_zero'](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/OrderFieldTopologicalRing.lean/declarations/tendsto-inv-attop-zero.md) | 129 | `result-track:16b3d5e9e4dd918b3f4c4df7088f3c9652c7e57810da9e4cdf7fd5f856658930` |
| 13 | `theorem` | [tendsto_inv_atTop_zero](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/OrderFieldTopologicalRing.lean/declarations/tendsto-inv-attop-zero-source-edition-2.md) | 136 | `result-track:8151a6762160a3948fd28408a37c327fa6fb0db34142be04105c51a67562cad7` |
| 14 | `theorem` | [Filter.Tendsto.div_atTop](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/OrderFieldTopologicalRing.lean/declarations/filter-tendsto-div-attop.md) | 140 | `result-track:42af3011d85637752037e6076ed5c79f6b174bb9fb4a9426108c3cce6ae78a4d` |
| 15 | `theorem` | [Filter.Tendsto.inv_tendsto_atTop](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/OrderFieldTopologicalRing.lean/declarations/filter-tendsto-inv-tendsto-attop.md) | 146 | `result-track:038d3c26a29fe070f9f8bf4ec92c7482d35502d75a2e0c34dfc9324c83085bde` |
| 16 | `theorem` | [Filter.Tendsto.inv_tendsto_zero](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/OrderFieldTopologicalRing.lean/declarations/filter-tendsto-inv-tendsto-zero.md) | 150 | `result-track:1aabf67317d77e3c2050ae3968b2a605c38a9a42a0b23acfb78d4ae32af64e50` |
| 17 | `theorem` | [tendsto_pow_neg_atTop](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/OrderFieldTopologicalRing.lean/declarations/tendsto-pow-neg-attop.md) | 156 | `result-track:1949d0f313ff6c31161f7fa5ae05204f2e665d89459b19df576f772c140973e1` |
| 18 | `theorem` | [tendsto_zpow_atTop_zero](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/OrderFieldTopologicalRing.lean/declarations/tendsto-zpow-attop-zero.md) | 161 | `result-track:0c924db033da2a705cf2bf1333247bdd2ef7f41751e02bbbe2c3c88f56cf4b97` |
| 19 | `theorem` | [tendsto_const_mul_zpow_atTop_zero](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/OrderFieldTopologicalRing.lean/declarations/tendsto-const-mul-zpow-attop-zero.md) | 168 | `result-track:9ce7d9c9d715fa2168939cebbed115f65eaa94da98ef3af4c5eeef2fd9c739ec` |
| 20 | `theorem` | [tendsto_const_mul_pow_nhds_iff'](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/OrderFieldTopologicalRing.lean/declarations/tendsto-const-mul-pow-nhds-iff-source-edition-2.md) | 173 | `result-track:7233ef10b254051350e8bd03182c7f35e3e6a021e8c5bca30e76293686ade22c` |
| 21 | `theorem` | [tendsto_const_mul_pow_nhds_iff](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/OrderFieldTopologicalRing.lean/declarations/tendsto-const-mul-pow-nhds-iff.md) | 185 | `result-track:44e2a0d03a91e1e70588f9982db27dff18811d632347d141dd7d49418cab69f9` |
| 22 | `theorem` | [tendsto_const_mul_zpow_atTop_nhds_iff](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/OrderFieldTopologicalRing.lean/declarations/tendsto-const-mul-zpow-attop-nhds-iff.md) | 190 | `result-track:f5ceee30c8c935e201257cd166145e209309541fcdb9685686b1f5b248ed4280` |
| 23 | `instance` | [(anonymous)](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/OrderFieldTopologicalRing.lean/declarations/instance-source-edition-3.md) | 207 | `declaration-track:f35418b304349e5c908ac49e213d7a20cd47c5c9ffdb0bc153bc2fc036d78cde` |
| 24 | `instance` | [(anonymous)](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/OrderFieldTopologicalRing.lean/declarations/instance.md) | 219 | `declaration-track:26873b45c09a546de620e611d366be87777238d7151e3e6af86df7d19f6c0327` |
| 25 | `theorem` | [nhdsWithin_pos_comap_mul_left](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/OrderFieldTopologicalRing.lean/declarations/nhdswithin-pos-comap-mul-left.md) | 224 | `result-track:40ed605d64f3c5633df0c5a676d98a7d129197990e089c517b4091f16380516a` |
| 26 | `theorem` | [eventually_nhdsWithin_pos_mul_left](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/OrderFieldTopologicalRing.lean/declarations/eventually-nhdswithin-pos-mul-left.md) | 232 | `result-track:88c0b968c38d31b88f8138afee73d1b833315f59a6669e311ffa551b9a0e1b15` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=906f0a59412459dacd27e5e91bad4e0ae61300b24a43265ea10e96e20b3e2a4a -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/Field/Variant17c7d07cb6435899c386e5c5838d558ecbc2cb9aadc4480ead8c5f9d847a4629.lean","GRWTSK/_verification/specifications/Topology/GeneralTopology/Field/Variant17c7d07cb6435899c386e5c5838d558ecbc2cb9aadc4480ead8c5f9d847a4629.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
