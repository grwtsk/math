# Verification target: GRWTSK.Topology.GeneralTopology.WithZeroTopology.Variant93553af4ab67bedb7df6242be6fe9e3ba664142bdfd97ee90027103d18816c14

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b6f9bf74f90af674577923372c7a4f507df5ece3",
  "lexical_observation_count": 23,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/WithZeroTopology/Variant93553af4ab67bedb7df6242be6fe9e3ba664142bdfd97ee90027103d18816c14.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/WithZeroTopology/Variant93553af4ab67bedb7df6242be6fe9e3ba664142bdfd97ee90027103d18816c14.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/WithZeroTopology/Variant93553af4ab67bedb7df6242be6fe9e3ba664142bdfd97ee90027103d18816c14.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b6f9bf74f90af674577923372c7a4f507df5ece3`.

Source path: `GRWTSK/Topology/GeneralTopology/WithZeroTopology/Variant93553af4ab67bedb7df6242be6fe9e3ba664142bdfd97ee90027103d18816c14.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/WithZeroTopology/Variant93553af4ab67bedb7df6242be6fe9e3ba664142bdfd97ee90027103d18816c14.lean.json)

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
| 1 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/WithZeroTopology/Variant93553af4ab67bedb7df6242be6fe9e3ba664142bdfd97ee90027103d18816c14.lean/declarations/instance--62ce414695f98d0835c513a3.md) | 50 | `declaration-track:62ce414695f98d0835c513a326d720ce34a5433c9c4400304ed16e89e85614bd` |
| 2 | `theorem` | [nhds_eq_update](../../../../../mathematics/Topology/GeneralTopology/WithZeroTopology/Variant93553af4ab67bedb7df6242be6fe9e3ba664142bdfd97ee90027103d18816c14.lean/declarations/nhds-eq-update--fe6bcfbfe10bc3c6148bdf50.md) | 53 | `result-track:fe6bcfbfe10bc3c6148bdf5013742338c56ad204975051e6ce7085efe6f5e862` |
| 3 | `theorem` | [nhds_zero](../../../../../mathematics/Topology/GeneralTopology/WithZeroTopology/Variant93553af4ab67bedb7df6242be6fe9e3ba664142bdfd97ee90027103d18816c14.lean/declarations/nhds-zero--11f88800db288a0249690168.md) | 61 | `result-track:11f88800db288a02496901683a49c400121e9d78326fd27198a81e01aff95d36` |
| 4 | `theorem` | [hasBasis_nhds_zero](../../../../../mathematics/Topology/GeneralTopology/WithZeroTopology/Variant93553af4ab67bedb7df6242be6fe9e3ba664142bdfd97ee90027103d18816c14.lean/declarations/hasbasis-nhds-zero--281a6989f8e15a0c1650d138.md) | 66 | `result-track:281a6989f8e15a0c1650d138aff54aec2716f5e6528fd42926d9d0b88fc0c765` |
| 5 | `theorem` | [Iio_mem_nhds_zero](../../../../../mathematics/Topology/GeneralTopology/WithZeroTopology/Variant93553af4ab67bedb7df6242be6fe9e3ba664142bdfd97ee90027103d18816c14.lean/declarations/iio-mem-nhds-zero--f6d6b4e96243f9d71bec390c.md) | 71 | `result-track:f6d6b4e96243f9d71bec390ce453b5253de034f37b096cb3c3c403c5e13a52fb` |
| 6 | `theorem` | [nhds_zero_of_units](../../../../../mathematics/Topology/GeneralTopology/WithZeroTopology/Variant93553af4ab67bedb7df6242be6fe9e3ba664142bdfd97ee90027103d18816c14.lean/declarations/nhds-zero-of-units--8bec261dcdcdfbe0547e3758.md) | 76 | `result-track:8bec261dcdcdfbe0547e37587ae3f9f7d1d5bf611c93d249207e32402a1ee94f` |
| 7 | `theorem` | [tendsto_zero](../../../../../mathematics/Topology/GeneralTopology/WithZeroTopology/Variant93553af4ab67bedb7df6242be6fe9e3ba664142bdfd97ee90027103d18816c14.lean/declarations/tendsto-zero--56bd1b25c40e86e585b6655b.md) | 79 | `result-track:56bd1b25c40e86e585b6655b71da4bead6c349e4ac6a7a6b45e6f014b2c60f3b` |
| 8 | `theorem` | [nhds_of_ne_zero](../../../../../mathematics/Topology/GeneralTopology/WithZeroTopology/Variant93553af4ab67bedb7df6242be6fe9e3ba664142bdfd97ee90027103d18816c14.lean/declarations/nhds-of-ne-zero--bf3b9f6ba08164d0ef2c371b.md) | 89 | `result-track:bf3b9f6ba08164d0ef2c371bbce44b7033b854291ab1e288889989c3992745c0` |
| 9 | `theorem` | [nhds_coe_units](../../../../../mathematics/Topology/GeneralTopology/WithZeroTopology/Variant93553af4ab67bedb7df6242be6fe9e3ba664142bdfd97ee90027103d18816c14.lean/declarations/nhds-coe-units--e06635451b3df690493edb53.md) | 94 | `result-track:e06635451b3df690493edb5329251051a77c4a894a4a152590e72b17eaa3cfb9` |
| 10 | `theorem` | [singleton_mem_nhds_of_units](../../../../../mathematics/Topology/GeneralTopology/WithZeroTopology/Variant93553af4ab67bedb7df6242be6fe9e3ba664142bdfd97ee90027103d18816c14.lean/declarations/singleton-mem-nhds-of-units--acc99c32f22ae501ac8dc4a6.md) | 99 | `result-track:acc99c32f22ae501ac8dc4a67362eeab3ae9277d2e18b7d2feeaaf95d7e6ab83` |
| 11 | `theorem` | [singleton_mem_nhds_of_ne_zero](../../../../../mathematics/Topology/GeneralTopology/WithZeroTopology/Variant93553af4ab67bedb7df6242be6fe9e3ba664142bdfd97ee90027103d18816c14.lean/declarations/singleton-mem-nhds-of-ne-zero--56beed02a63f32b129534561.md) | 103 | `result-track:56beed02a63f32b1295345610dbf361bc2416f982cfafd13dfd937b3f8257f6e` |
| 12 | `theorem` | [hasBasis_nhds_of_ne_zero](../../../../../mathematics/Topology/GeneralTopology/WithZeroTopology/Variant93553af4ab67bedb7df6242be6fe9e3ba664142bdfd97ee90027103d18816c14.lean/declarations/hasbasis-nhds-of-ne-zero--fe24a3c2c12a8bdfce592e12.md) | 105 | `result-track:fe24a3c2c12a8bdfce592e1206d3009783c9e3bae5f39bce0543d19b7d420a36` |
| 13 | `theorem` | [hasBasis_nhds_units](../../../../../mathematics/Topology/GeneralTopology/WithZeroTopology/Variant93553af4ab67bedb7df6242be6fe9e3ba664142bdfd97ee90027103d18816c14.lean/declarations/hasbasis-nhds-units--5554032e968e03864f22754a.md) | 110 | `result-track:5554032e968e03864f22754a4c9e2498c4256dacef3d627138d1ccbdeb4526e9` |
| 14 | `theorem` | [tendsto_of_ne_zero](../../../../../mathematics/Topology/GeneralTopology/WithZeroTopology/Variant93553af4ab67bedb7df6242be6fe9e3ba664142bdfd97ee90027103d18816c14.lean/declarations/tendsto-of-ne-zero--e75dbbd2731cf8779bbf2be8.md) | 114 | `result-track:e75dbbd2731cf8779bbf2be81c5e7c624014316bbf678bce11a99b0958cb1d6f` |
| 15 | `theorem` | [tendsto_units](../../../../../mathematics/Topology/GeneralTopology/WithZeroTopology/Variant93553af4ab67bedb7df6242be6fe9e3ba664142bdfd97ee90027103d18816c14.lean/declarations/tendsto-units--4267c040cf96a496e73d62d8.md) | 117 | `result-track:4267c040cf96a496e73d62d801ace4aefb73ae10d9fec006eeab6316a4547fe6` |
| 16 | `theorem` | [Iio_mem_nhds](../../../../../mathematics/Topology/GeneralTopology/WithZeroTopology/Variant93553af4ab67bedb7df6242be6fe9e3ba664142bdfd97ee90027103d18816c14.lean/declarations/iio-mem-nhds--cb6059f1573fe288b2bec333.md) | 120 | `result-track:cb6059f1573fe288b2bec333d558ce445b225fea60b8fe04538c269a9d8c8e09` |
| 17 | `theorem` | [isOpen_iff](../../../../../mathematics/Topology/GeneralTopology/WithZeroTopology/Variant93553af4ab67bedb7df6242be6fe9e3ba664142bdfd97ee90027103d18816c14.lean/declarations/isopen-iff--0575fa67d2ea7eb52cd84aff.md) | 127 | `result-track:0575fa67d2ea7eb52cd84affde9d881f50d7d69a7f422b617ffefd7bfbc9e04c` |
| 18 | `theorem` | [isClosed_iff](../../../../../mathematics/Topology/GeneralTopology/WithZeroTopology/Variant93553af4ab67bedb7df6242be6fe9e3ba664142bdfd97ee90027103d18816c14.lean/declarations/isclosed-iff--fc83b5837840e1f4f7880903.md) | 132 | `result-track:fc83b5837840e1f4f7880903b652143c2885dabcc0ea04eb1bd6b24a44770d6d` |
| 19 | `theorem` | [isOpen_Iio](../../../../../mathematics/Topology/GeneralTopology/WithZeroTopology/Variant93553af4ab67bedb7df6242be6fe9e3ba664142bdfd97ee90027103d18816c14.lean/declarations/isopen-iio--6db98a17b821c244de872919.md) | 136 | `result-track:6db98a17b821c244de872919bb7ab7b6a09e1d5c6f845ad48755b18aef79e2f4` |
| 20 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/WithZeroTopology/Variant93553af4ab67bedb7df6242be6fe9e3ba664142bdfd97ee90027103d18816c14.lean/declarations/instance--4ccb423c248e53126a894c13.md) | 145 | `declaration-track:4ccb423c248e53126a894c1317397228bab062832906f798000cafb0f8d1eeb5` |
| 21 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/WithZeroTopology/Variant93553af4ab67bedb7df6242be6fe9e3ba664142bdfd97ee90027103d18816c14.lean/declarations/instance--07cc9a4d45791a834751488b.md) | 153 | `declaration-track:07cc9a4d45791a834751488bd3e94580ec46273b9ee3824311f49908fc9f634d` |
| 22 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/WithZeroTopology/Variant93553af4ab67bedb7df6242be6fe9e3ba664142bdfd97ee90027103d18816c14.lean/declarations/instance--14784f60aed9f66381cc9328.md) | 162 | `declaration-track:14784f60aed9f66381cc93283046bf81f6a365dfefed7471dbcc2942d2547096` |
| 23 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/WithZeroTopology/Variant93553af4ab67bedb7df6242be6fe9e3ba664142bdfd97ee90027103d18816c14.lean/declarations/instance--b3874925ebf7a178d48d1ca5.md) | 184 | `declaration-track:b3874925ebf7a178d48d1ca5453cefd03b4bb0f9f87965c32a099d8aaa182346` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
