# Verification target: GRWTSK.Topology.MetricTopology.ENormedSpace.Variant7282c4b1cd7f7e04d9d904e9879a17137da244fa7177938a85e0ef58bfc19feb

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0818fd284093455ed5b3545c85496fbf1e4e021f",
  "lexical_observation_count": 28,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/MetricTopology/ENormedSpace/Variant7282c4b1cd7f7e04d9d904e9879a17137da244fa7177938a85e0ef58bfc19feb.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/MetricTopology/ENormedSpace/Variant7282c4b1cd7f7e04d9d904e9879a17137da244fa7177938a85e0ef58bfc19feb.lean/index.md) · [Full source](../../../../../mathematics/Topology/MetricTopology/ENormedSpace/Variant7282c4b1cd7f7e04d9d904e9879a17137da244fa7177938a85e0ef58bfc19feb.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0818fd284093455ed5b3545c85496fbf1e4e021f`.

Source path: `GRWTSK/Topology/MetricTopology/ENormedSpace/Variant7282c4b1cd7f7e04d9d904e9879a17137da244fa7177938a85e0ef58bfc19feb.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/MetricTopology/ENormedSpace/Variant7282c4b1cd7f7e04d9d904e9879a17137da244fa7177938a85e0ef58bfc19feb.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Normed.Module.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Basis.VectorSpace` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [ENormedSpace](../../../../../mathematics/Topology/MetricTopology/ENormedSpace/Variant7282c4b1cd7f7e04d9d904e9879a17137da244fa7177938a85e0ef58bfc19feb.lean/declarations/enormedspace--946386d1f50a012b1a2a172d.md) | 48 | `declaration-track:946386d1f50a012b1a2a172ddd66e0badccc0e6faf933eff6026a910af904fdc` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/Topology/MetricTopology/ENormedSpace/Variant7282c4b1cd7f7e04d9d904e9879a17137da244fa7177938a85e0ef58bfc19feb.lean/declarations/instance--d11e2bb797bb8a32d67cc524.md) | 64 | `declaration-track:d11e2bb797bb8a32d67cc524772b3f3dc85a090ba7194299a89bdf6a68301301` |
| 3 | `theorem` | [coeFn_injective](../../../../../mathematics/Topology/MetricTopology/ENormedSpace/Variant7282c4b1cd7f7e04d9d904e9879a17137da244fa7177938a85e0ef58bfc19feb.lean/declarations/coefn-injective--2064c055ca74b8fb5c7ba52d.md) | 68 | `result-track:2064c055ca74b8fb5c7ba52d11e6acc2eb1b683b24345c23a783f30948aa4233` |
| 4 | `theorem` | [ext](../../../../../mathematics/Topology/MetricTopology/ENormedSpace/Variant7282c4b1cd7f7e04d9d904e9879a17137da244fa7177938a85e0ef58bfc19feb.lean/declarations/ext--6f09195ddf3f8c3e4f594493.md) | 76 | `result-track:6f09195ddf3f8c3e4f5944936f477a3e385d0338e1ea1522d80b5955de1de9fb` |
| 5 | `theorem` | [coe_inj](../../../../../mathematics/Topology/MetricTopology/ENormedSpace/Variant7282c4b1cd7f7e04d9d904e9879a17137da244fa7177938a85e0ef58bfc19feb.lean/declarations/coe-inj--9d33b34b30204dafc3da53e0.md) | 81 | `result-track:9d33b34b30204dafc3da53e0fa798c5a3f95c64ae87b15423cb55478af7ba021` |
| 6 | `theorem` | [map_smul](../../../../../mathematics/Topology/MetricTopology/ENormedSpace/Variant7282c4b1cd7f7e04d9d904e9879a17137da244fa7177938a85e0ef58bfc19feb.lean/declarations/map-smul--196522ba78abe55691029f43.md) | 86 | `result-track:196522ba78abe55691029f43c89b7b21d7b8705fef456698a3c8d378992d2992` |
| 7 | `theorem` | [map_zero](../../../../../mathematics/Topology/MetricTopology/ENormedSpace/Variant7282c4b1cd7f7e04d9d904e9879a17137da244fa7177938a85e0ef58bfc19feb.lean/declarations/map-zero--c8012053fc2ba8eecec2daf3.md) | 100 | `result-track:c8012053fc2ba8eecec2daf33d7a92dfd247ac8a4dbee02c989b43a4c361a54b` |
| 8 | `theorem` | [eq_zero_iff](../../../../../mathematics/Topology/MetricTopology/ENormedSpace/Variant7282c4b1cd7f7e04d9d904e9879a17137da244fa7177938a85e0ef58bfc19feb.lean/declarations/eq-zero-iff--8360a6b65c72600f2b0e6ddf.md) | 106 | `result-track:8360a6b65c72600f2b0e6ddf5d2ec4005fbe33ae9dd6387651ff085cc925e9a9` |
| 9 | `theorem` | [map_neg](../../../../../mathematics/Topology/MetricTopology/ENormedSpace/Variant7282c4b1cd7f7e04d9d904e9879a17137da244fa7177938a85e0ef58bfc19feb.lean/declarations/map-neg--026e9a55298ad2eeaedb100f.md) | 111 | `result-track:026e9a55298ad2eeaedb100f0b54a4a04ce33dbb0227b3bb1f4198fa102e7ecd` |
| 10 | `theorem` | [map_sub_rev](../../../../../mathematics/Topology/MetricTopology/ENormedSpace/Variant7282c4b1cd7f7e04d9d904e9879a17137da244fa7177938a85e0ef58bfc19feb.lean/declarations/map-sub-rev--f137438103404b7a7658c7a0.md) | 117 | `result-track:f137438103404b7a7658c7a0184317fb501e6614a862460bdb9f282813aef6bb` |
| 11 | `theorem` | [map_add_le](../../../../../mathematics/Topology/MetricTopology/ENormedSpace/Variant7282c4b1cd7f7e04d9d904e9879a17137da244fa7177938a85e0ef58bfc19feb.lean/declarations/map-add-le--e30099fe38aeb239cd8f2907.md) | 120 | `result-track:e30099fe38aeb239cd8f2907f233afc10f890c182bfff763cdb1134f5c67baae` |
| 12 | `theorem` | [map_sub_le](../../../../../mathematics/Topology/MetricTopology/ENormedSpace/Variant7282c4b1cd7f7e04d9d904e9879a17137da244fa7177938a85e0ef58bfc19feb.lean/declarations/map-sub-le--c02e4d9384f9fc85d5bee279.md) | 124 | `result-track:c02e4d9384f9fc85d5bee279e8d9aabf1f3828b5b0f46684b9178dc75ecc2b69` |
| 13 | `instance` | [partialOrder](../../../../../mathematics/Topology/MetricTopology/ENormedSpace/Variant7282c4b1cd7f7e04d9d904e9879a17137da244fa7177938a85e0ef58bfc19feb.lean/declarations/partialorder--e1c9a4cbf75291da9a99cbd9.md) | 130 | `declaration-track:e1c9a4cbf75291da9a99cbd9fc9d2be66919c17f57790cf644a1ed01a7d69c26` |
| 14 | `instance` | [(anonymous)](../../../../../mathematics/Topology/MetricTopology/ENormedSpace/Variant7282c4b1cd7f7e04d9d904e9879a17137da244fa7177938a85e0ef58bfc19feb.lean/declarations/instance--4e1de325c5beeda9464c9105.md) | 137 | `declaration-track:4e1de325c5beeda9464c9105f796733ac829dc5bf2ce9fb3fa2a51b03aac7785` |
| 15 | `instance` | [(anonymous)](../../../../../mathematics/Topology/MetricTopology/ENormedSpace/Variant7282c4b1cd7f7e04d9d904e9879a17137da244fa7177938a85e0ef58bfc19feb.lean/declarations/instance--140c269b712c61c1535c41a9.md) | 151 | `declaration-track:140c269b712c61c1535c41a97aa079ac323b1b714cb1fa8247f4b7160ac8fe53` |
| 16 | `theorem` | [top_map](../../../../../mathematics/Topology/MetricTopology/ENormedSpace/Variant7282c4b1cd7f7e04d9d904e9879a17137da244fa7177938a85e0ef58bfc19feb.lean/declarations/top-map--91a93470e3ed26b252aaa943.md) | 155 | `result-track:91a93470e3ed26b252aaa943fa9504fbf895289c8b2a42fb874ec763983ea3d3` |
| 17 | `instance` | [(anonymous)](../../../../../mathematics/Topology/MetricTopology/ENormedSpace/Variant7282c4b1cd7f7e04d9d904e9879a17137da244fa7177938a85e0ef58bfc19feb.lean/declarations/instance--fbc8f4de5549d2eaae8f5216.md) | 158 | `declaration-track:fbc8f4de5549d2eaae8f521628147c2305395f0b2c96b6d0c01964613050ea7d` |
| 18 | `instance` | [(anonymous)](../../../../../mathematics/Topology/MetricTopology/ENormedSpace/Variant7282c4b1cd7f7e04d9d904e9879a17137da244fa7177938a85e0ef58bfc19feb.lean/declarations/instance--bde4d03a36057e5a88ea2337.md) | 162 | `declaration-track:bde4d03a36057e5a88ea23372e465ee1f436257d87c84f1bd119063f69862ff3` |
| 19 | `theorem` | [coe_max](../../../../../mathematics/Topology/MetricTopology/ENormedSpace/Variant7282c4b1cd7f7e04d9d904e9879a17137da244fa7177938a85e0ef58bfc19feb.lean/declarations/coe-max--e2d144004ca0cfd36d265bcd.md) | 179 | `result-track:e2d144004ca0cfd36d265bcd18398fab6ea1820d7b090d807d2f0d967d032c73` |
| 20 | `theorem` | [max_map](../../../../../mathematics/Topology/MetricTopology/ENormedSpace/Variant7282c4b1cd7f7e04d9d904e9879a17137da244fa7177938a85e0ef58bfc19feb.lean/declarations/max-map--95eb75659b72e4ef4b575705.md) | 184 | `result-track:95eb75659b72e4ef4b575705a435fd45200e205e8056e11f991a0b02cd62c3aa` |
| 21 | `abbrev` | [emetricSpace](../../../../../mathematics/Topology/MetricTopology/ENormedSpace/Variant7282c4b1cd7f7e04d9d904e9879a17137da244fa7177938a85e0ef58bfc19feb.lean/declarations/emetricspace--9156156fa31e9c6886145d0b.md) | 189 | `declaration-track:9156156fa31e9c6886145d0b5a855a681a6439e0455696b8fd983607e130b637` |
| 22 | `def` | [finiteSubspace](../../../../../mathematics/Topology/MetricTopology/ENormedSpace/Variant7282c4b1cd7f7e04d9d904e9879a17137da244fa7177938a85e0ef58bfc19feb.lean/declarations/finitesubspace--52ed9f031535348dd63e8c1f.md) | 201 | `declaration-track:52ed9f031535348dd63e8c1fbdbb91f686381bff2e839b79a142339a384938cc` |
| 23 | `instance` | [metricSpace](../../../../../mathematics/Topology/MetricTopology/ENormedSpace/Variant7282c4b1cd7f7e04d9d904e9879a17137da244fa7177938a85e0ef58bfc19feb.lean/declarations/metricspace--0dad92bd4b71e72588c9cb82.md) | 212 | `declaration-track:0dad92bd4b71e72588c9cb82cc9aee8c15fedb7a78df916ba99e513cd09815e9` |
| 24 | `theorem` | [finite_dist_eq](../../../../../mathematics/Topology/MetricTopology/ENormedSpace/Variant7282c4b1cd7f7e04d9d904e9879a17137da244fa7177938a85e0ef58bfc19feb.lean/declarations/finite-dist-eq--20fc306e32f2dad46e1d800d.md) | 219 | `result-track:20fc306e32f2dad46e1d800d04298bb3df251c924202c9e34441b536d4656892` |
| 25 | `theorem` | [finite_edist_eq](../../../../../mathematics/Topology/MetricTopology/ENormedSpace/Variant7282c4b1cd7f7e04d9d904e9879a17137da244fa7177938a85e0ef58bfc19feb.lean/declarations/finite-edist-eq--44e61536d63e22d7b65a2eb0.md) | 223 | `result-track:44e61536d63e22d7b65a2eb0de4ccb64640ae82fc3f075ff935f30b29bfeb7f0` |
| 26 | `instance` | [normedAddCommGroup](../../../../../mathematics/Topology/MetricTopology/ENormedSpace/Variant7282c4b1cd7f7e04d9d904e9879a17137da244fa7177938a85e0ef58bfc19feb.lean/declarations/normedaddcommgroup--2ef24f394c17602191e7860f.md) | 227 | `declaration-track:2ef24f394c17602191e7860f999019088991c591a2153fe111a3ad6005b0ae0e` |
| 27 | `theorem` | [finite_norm_eq](../../../../../mathematics/Topology/MetricTopology/ENormedSpace/Variant7282c4b1cd7f7e04d9d904e9879a17137da244fa7177938a85e0ef58bfc19feb.lean/declarations/finite-norm-eq--1227d27bd1736d74f1fa31fe.md) | 233 | `result-track:1227d27bd1736d74f1fa31fe5e9378a4400d55399f21448e02fd6492528278a8` |
| 28 | `instance` | [normedSpace](../../../../../mathematics/Topology/MetricTopology/ENormedSpace/Variant7282c4b1cd7f7e04d9d904e9879a17137da244fa7177938a85e0ef58bfc19feb.lean/declarations/normedspace--40452beac33506c4999df3d5.md) | 237 | `declaration-track:40452beac33506c4999df3d5fb951c9bec6f79f2726409da264f1d16c199cf84` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
