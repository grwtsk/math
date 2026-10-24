# Verification target: GRWTSK.Topology.MetricTopology.ENormedSpace.Variant66c5520487f7f1615ee9969c81c27d2cfe148c1c6d3d8f0447c823b0218ffaa0

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9f31c51147c5d32ac6aba5c653c4f9568be61c5e",
  "lexical_observation_count": 28,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/MetricTopology/ENormedSpace/Variant66c5520487f7f1615ee9969c81c27d2cfe148c1c6d3d8f0447c823b0218ffaa0.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/MetricTopology/ENormedSpace/Variant66c5520487f7f1615ee9969c81c27d2cfe148c1c6d3d8f0447c823b0218ffaa0.lean/index.md) · [Full source](../../../../../mathematics/Topology/MetricTopology/ENormedSpace/Variant66c5520487f7f1615ee9969c81c27d2cfe148c1c6d3d8f0447c823b0218ffaa0.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9f31c51147c5d32ac6aba5c653c4f9568be61c5e`.

Source path: `GRWTSK/Topology/MetricTopology/ENormedSpace/Variant66c5520487f7f1615ee9969c81c27d2cfe148c1c6d3d8f0447c823b0218ffaa0.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/MetricTopology/ENormedSpace/Variant66c5520487f7f1615ee9969c81c27d2cfe148c1c6d3d8f0447c823b0218ffaa0.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Normed.Module.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Basis.VectorSpace` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [ENormedSpace](../../../../../mathematics/Topology/MetricTopology/ENormedSpace/Variant66c5520487f7f1615ee9969c81c27d2cfe148c1c6d3d8f0447c823b0218ffaa0.lean/declarations/enormedspace--94d42b2b1fdbedfaf652d2ce.md) | 56 | `declaration-track:94d42b2b1fdbedfaf652d2ce912e45de24f12ee23207e7f7de180d592a2d8bc4` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/Topology/MetricTopology/ENormedSpace/Variant66c5520487f7f1615ee9969c81c27d2cfe148c1c6d3d8f0447c823b0218ffaa0.lean/declarations/instance--97e3c554fc1e5c17ec1f0f88.md) | 72 | `declaration-track:97e3c554fc1e5c17ec1f0f88a40025b8219fa1ca215c5f2ae4866939b07bd30f` |
| 3 | `theorem` | [coeFn_injective](../../../../../mathematics/Topology/MetricTopology/ENormedSpace/Variant66c5520487f7f1615ee9969c81c27d2cfe148c1c6d3d8f0447c823b0218ffaa0.lean/declarations/coefn-injective--dc128db1310e8b04a0eed077.md) | 76 | `result-track:dc128db1310e8b04a0eed077f4dbb83dfa243b8376b782aad64fbefd3d0fc757` |
| 4 | `theorem` | [ext](../../../../../mathematics/Topology/MetricTopology/ENormedSpace/Variant66c5520487f7f1615ee9969c81c27d2cfe148c1c6d3d8f0447c823b0218ffaa0.lean/declarations/ext--1d137b1cd9f3cc800ba4ab47.md) | 84 | `result-track:1d137b1cd9f3cc800ba4ab4710e362ef93a8527f032cdd4b1a02fb8d950f9790` |
| 5 | `theorem` | [coe_inj](../../../../../mathematics/Topology/MetricTopology/ENormedSpace/Variant66c5520487f7f1615ee9969c81c27d2cfe148c1c6d3d8f0447c823b0218ffaa0.lean/declarations/coe-inj--ccb68a08a1e64999905a812b.md) | 89 | `result-track:ccb68a08a1e64999905a812b0b59865379d35c71e427ca8e5663ce48b5d6801c` |
| 6 | `theorem` | [map_smul](../../../../../mathematics/Topology/MetricTopology/ENormedSpace/Variant66c5520487f7f1615ee9969c81c27d2cfe148c1c6d3d8f0447c823b0218ffaa0.lean/declarations/map-smul--5379fd1bbf374451d0548442.md) | 94 | `result-track:5379fd1bbf374451d05484429723946e90043afb5a2dba75dece12622d075b84` |
| 7 | `theorem` | [map_zero](../../../../../mathematics/Topology/MetricTopology/ENormedSpace/Variant66c5520487f7f1615ee9969c81c27d2cfe148c1c6d3d8f0447c823b0218ffaa0.lean/declarations/map-zero--edea09669b857b7ae846cb85.md) | 108 | `result-track:edea09669b857b7ae846cb85b81882ed04b98238ac01f4bf7431d14c0dc7ab62` |
| 8 | `theorem` | [eq_zero_iff](../../../../../mathematics/Topology/MetricTopology/ENormedSpace/Variant66c5520487f7f1615ee9969c81c27d2cfe148c1c6d3d8f0447c823b0218ffaa0.lean/declarations/eq-zero-iff--83863d6106e5c8117093b9bf.md) | 114 | `result-track:83863d6106e5c8117093b9bf318fd785db0c72853715a302415c0b3f37065dd8` |
| 9 | `theorem` | [map_neg](../../../../../mathematics/Topology/MetricTopology/ENormedSpace/Variant66c5520487f7f1615ee9969c81c27d2cfe148c1c6d3d8f0447c823b0218ffaa0.lean/declarations/map-neg--85ccbec6198f59d306f1cecd.md) | 119 | `result-track:85ccbec6198f59d306f1cecd2aa64f9ce7999f8a4b368c77c9f65fd22f050858` |
| 10 | `theorem` | [map_sub_rev](../../../../../mathematics/Topology/MetricTopology/ENormedSpace/Variant66c5520487f7f1615ee9969c81c27d2cfe148c1c6d3d8f0447c823b0218ffaa0.lean/declarations/map-sub-rev--a157c626640951f20e48311c.md) | 125 | `result-track:a157c626640951f20e48311cf6d579b28d20fd85430f94d181c640fa7eebbe14` |
| 11 | `theorem` | [map_add_le](../../../../../mathematics/Topology/MetricTopology/ENormedSpace/Variant66c5520487f7f1615ee9969c81c27d2cfe148c1c6d3d8f0447c823b0218ffaa0.lean/declarations/map-add-le--b674c090ec50ec038b479f0a.md) | 128 | `result-track:b674c090ec50ec038b479f0aae70952aa136745a0c8de84f6e4416979f703614` |
| 12 | `theorem` | [map_sub_le](../../../../../mathematics/Topology/MetricTopology/ENormedSpace/Variant66c5520487f7f1615ee9969c81c27d2cfe148c1c6d3d8f0447c823b0218ffaa0.lean/declarations/map-sub-le--e0c725000f9df91443adc759.md) | 132 | `result-track:e0c725000f9df91443adc759b47a0b4a0078ffc5a9129d094b9fcd528aa268fd` |
| 13 | `instance` | [partialOrder](../../../../../mathematics/Topology/MetricTopology/ENormedSpace/Variant66c5520487f7f1615ee9969c81c27d2cfe148c1c6d3d8f0447c823b0218ffaa0.lean/declarations/partialorder--3ea631ee5c7bc3f6c8fd3d42.md) | 138 | `declaration-track:3ea631ee5c7bc3f6c8fd3d428008270077c7c79d1145b5ff63abc55df436551d` |
| 14 | `instance` | [(anonymous)](../../../../../mathematics/Topology/MetricTopology/ENormedSpace/Variant66c5520487f7f1615ee9969c81c27d2cfe148c1c6d3d8f0447c823b0218ffaa0.lean/declarations/instance--09dfd36456a4697529e10f20.md) | 145 | `declaration-track:09dfd36456a4697529e10f207b430273fb356f03ea7bb2de0faeefdf6aafaf05` |
| 15 | `instance` | [(anonymous)](../../../../../mathematics/Topology/MetricTopology/ENormedSpace/Variant66c5520487f7f1615ee9969c81c27d2cfe148c1c6d3d8f0447c823b0218ffaa0.lean/declarations/instance--0965618dd94ba1f3902e158c.md) | 159 | `declaration-track:0965618dd94ba1f3902e158cda9c08efda8b0138cefc9b686fbf33cd98074590` |
| 16 | `theorem` | [top_map](../../../../../mathematics/Topology/MetricTopology/ENormedSpace/Variant66c5520487f7f1615ee9969c81c27d2cfe148c1c6d3d8f0447c823b0218ffaa0.lean/declarations/top-map--ce55d2c5b8e9fd56334abea6.md) | 163 | `result-track:ce55d2c5b8e9fd56334abea6c08dc4e0b09930f0fb30a82e8b7d91c33b879175` |
| 17 | `instance` | [(anonymous)](../../../../../mathematics/Topology/MetricTopology/ENormedSpace/Variant66c5520487f7f1615ee9969c81c27d2cfe148c1c6d3d8f0447c823b0218ffaa0.lean/declarations/instance--f18fa3346df6660490a1515f.md) | 166 | `declaration-track:f18fa3346df6660490a1515f5eb6e2378adb45975dc7ffede59a0b13a87d641d` |
| 18 | `instance` | [(anonymous)](../../../../../mathematics/Topology/MetricTopology/ENormedSpace/Variant66c5520487f7f1615ee9969c81c27d2cfe148c1c6d3d8f0447c823b0218ffaa0.lean/declarations/instance--3ae78b07a17a42afae6bacdb.md) | 170 | `declaration-track:3ae78b07a17a42afae6bacdb1e3807ae9a5806d8af3015a9e33650d797c91540` |
| 19 | `theorem` | [coe_max](../../../../../mathematics/Topology/MetricTopology/ENormedSpace/Variant66c5520487f7f1615ee9969c81c27d2cfe148c1c6d3d8f0447c823b0218ffaa0.lean/declarations/coe-max--038d75c336f549bc700bd9fd.md) | 187 | `result-track:038d75c336f549bc700bd9fdb30d34dd54dec31c2f992a6d95d7bc24fab5ad43` |
| 20 | `theorem` | [max_map](../../../../../mathematics/Topology/MetricTopology/ENormedSpace/Variant66c5520487f7f1615ee9969c81c27d2cfe148c1c6d3d8f0447c823b0218ffaa0.lean/declarations/max-map--f18da175a2612c4f644a25bf.md) | 192 | `result-track:f18da175a2612c4f644a25bf8e299bf6461a2f83c9be2eb4c7f2a71cf84db83f` |
| 21 | `abbrev` | [emetricSpace](../../../../../mathematics/Topology/MetricTopology/ENormedSpace/Variant66c5520487f7f1615ee9969c81c27d2cfe148c1c6d3d8f0447c823b0218ffaa0.lean/declarations/emetricspace--17130d81f137f359b1673c67.md) | 197 | `declaration-track:17130d81f137f359b1673c67b4e090b0db73515d0be239f622321deb6760a8d4` |
| 22 | `def` | [finiteSubspace](../../../../../mathematics/Topology/MetricTopology/ENormedSpace/Variant66c5520487f7f1615ee9969c81c27d2cfe148c1c6d3d8f0447c823b0218ffaa0.lean/declarations/finitesubspace--2544e4998e9c29b4f753033d.md) | 209 | `declaration-track:2544e4998e9c29b4f753033d75d424cd30524b3a2dfa21def7e1427fdb4cd811` |
| 23 | `instance` | [metricSpace](../../../../../mathematics/Topology/MetricTopology/ENormedSpace/Variant66c5520487f7f1615ee9969c81c27d2cfe148c1c6d3d8f0447c823b0218ffaa0.lean/declarations/metricspace--931a96ed46ef4111c8311024.md) | 220 | `declaration-track:931a96ed46ef4111c8311024583dd5d5174b21c627e3528db1cb1f1d4217b75e` |
| 24 | `theorem` | [finite_dist_eq](../../../../../mathematics/Topology/MetricTopology/ENormedSpace/Variant66c5520487f7f1615ee9969c81c27d2cfe148c1c6d3d8f0447c823b0218ffaa0.lean/declarations/finite-dist-eq--b1df60c09af7d932413918b7.md) | 227 | `result-track:b1df60c09af7d932413918b7f443c62f3912c116ee6686af7b177dd5ed2efa81` |
| 25 | `theorem` | [finite_edist_eq](../../../../../mathematics/Topology/MetricTopology/ENormedSpace/Variant66c5520487f7f1615ee9969c81c27d2cfe148c1c6d3d8f0447c823b0218ffaa0.lean/declarations/finite-edist-eq--46699c9b72da994a5a480f3a.md) | 231 | `result-track:46699c9b72da994a5a480f3a1322d9fb251488cad91ab75098bf48ac987c52d6` |
| 26 | `instance` | [normedAddCommGroup](../../../../../mathematics/Topology/MetricTopology/ENormedSpace/Variant66c5520487f7f1615ee9969c81c27d2cfe148c1c6d3d8f0447c823b0218ffaa0.lean/declarations/normedaddcommgroup--f1682e160d2cf6baf41fb22d.md) | 235 | `declaration-track:f1682e160d2cf6baf41fb22d36dfa9b95ca7b12e96ea16ebf6d72d790199fa0c` |
| 27 | `theorem` | [finite_norm_eq](../../../../../mathematics/Topology/MetricTopology/ENormedSpace/Variant66c5520487f7f1615ee9969c81c27d2cfe148c1c6d3d8f0447c823b0218ffaa0.lean/declarations/finite-norm-eq--f28e66f6a62d4b47cfe98ec7.md) | 241 | `result-track:f28e66f6a62d4b47cfe98ec76563e7d546911aa77cbb034a3cbe6878127878f0` |
| 28 | `instance` | [normedSpace](../../../../../mathematics/Topology/MetricTopology/ENormedSpace/Variant66c5520487f7f1615ee9969c81c27d2cfe148c1c6d3d8f0447c823b0218ffaa0.lean/declarations/normedspace--dd892522074688d92f514332.md) | 245 | `declaration-track:dd892522074688d92f5143327b1ea4f3ea7b4481285edec926223d675182c735` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
