# Verification target: GRWTSK.Topology.GeneralTopology.WithZeroTopology.Variant644433c650b2c55eb092b03e71791738ec81da719f6bcb95d6942a78c83babd7

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7b887dd686f96aee5346fbf703867567f1de6cdd",
  "lexical_observation_count": 23,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/WithZeroTopology/Variant644433c650b2c55eb092b03e71791738ec81da719f6bcb95d6942a78c83babd7.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/WithZeroTopology/Variant644433c650b2c55eb092b03e71791738ec81da719f6bcb95d6942a78c83babd7.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/WithZeroTopology/Variant644433c650b2c55eb092b03e71791738ec81da719f6bcb95d6942a78c83babd7.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7b887dd686f96aee5346fbf703867567f1de6cdd`.

Source path: `GRWTSK/Topology/GeneralTopology/WithZeroTopology/Variant644433c650b2c55eb092b03e71791738ec81da719f6bcb95d6942a78c83babd7.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/WithZeroTopology/Variant644433c650b2c55eb092b03e71791738ec81da719f6bcb95d6942a78c83babd7.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Order.GroupWithZero.Canonical` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Algebra.GroupWithZero` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Order.OrderClosed` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Separation.Regular` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/WithZeroTopology/Variant644433c650b2c55eb092b03e71791738ec81da719f6bcb95d6942a78c83babd7.lean/declarations/instance--d3e4955563e2844be2355709.md) | 51 | `declaration-track:d3e4955563e2844be235570999effa61b2369cd063184d76dbb822317017800e` |
| 2 | `theorem` | [nhds_eq_update](../../../../../mathematics/Topology/GeneralTopology/WithZeroTopology/Variant644433c650b2c55eb092b03e71791738ec81da719f6bcb95d6942a78c83babd7.lean/declarations/nhds-eq-update--d8ed5d695f96516e44602396.md) | 54 | `result-track:d8ed5d695f96516e44602396881ec0f6dd28653b6ffb34d4628b081a7db35c26` |
| 3 | `theorem` | [nhds_zero](../../../../../mathematics/Topology/GeneralTopology/WithZeroTopology/Variant644433c650b2c55eb092b03e71791738ec81da719f6bcb95d6942a78c83babd7.lean/declarations/nhds-zero--7ff4ba3936180012f440ed2c.md) | 62 | `result-track:7ff4ba3936180012f440ed2c2755784c32c8f089a0a65e14f7a49581fbb58e40` |
| 4 | `theorem` | [hasBasis_nhds_zero](../../../../../mathematics/Topology/GeneralTopology/WithZeroTopology/Variant644433c650b2c55eb092b03e71791738ec81da719f6bcb95d6942a78c83babd7.lean/declarations/hasbasis-nhds-zero--8a19bd8bab82b7f444946f7f.md) | 67 | `result-track:8a19bd8bab82b7f444946f7f9fbb3f28096ad35093212591f0143c9a6b5d25af` |
| 5 | `theorem` | [Iio_mem_nhds_zero](../../../../../mathematics/Topology/GeneralTopology/WithZeroTopology/Variant644433c650b2c55eb092b03e71791738ec81da719f6bcb95d6942a78c83babd7.lean/declarations/iio-mem-nhds-zero--f85764e183abbbb06136f988.md) | 72 | `result-track:f85764e183abbbb06136f98817903c71b275f61631d50665dfb7bf40d122583c` |
| 6 | `theorem` | [nhds_zero_of_units](../../../../../mathematics/Topology/GeneralTopology/WithZeroTopology/Variant644433c650b2c55eb092b03e71791738ec81da719f6bcb95d6942a78c83babd7.lean/declarations/nhds-zero-of-units--47a04c23ee68b201d2963532.md) | 77 | `result-track:47a04c23ee68b201d29635323dd92da2fe4b9e6b677f6938bf53b61bb423f6e3` |
| 7 | `theorem` | [tendsto_zero](../../../../../mathematics/Topology/GeneralTopology/WithZeroTopology/Variant644433c650b2c55eb092b03e71791738ec81da719f6bcb95d6942a78c83babd7.lean/declarations/tendsto-zero--ec4907123488c25f987d1f65.md) | 80 | `result-track:ec4907123488c25f987d1f6525a9f4f48a4696c4b7044f2318e72c8751735965` |
| 8 | `theorem` | [nhds_of_ne_zero](../../../../../mathematics/Topology/GeneralTopology/WithZeroTopology/Variant644433c650b2c55eb092b03e71791738ec81da719f6bcb95d6942a78c83babd7.lean/declarations/nhds-of-ne-zero--c54b6ec5360e25d30ae0cdc6.md) | 90 | `result-track:c54b6ec5360e25d30ae0cdc6a652d44a18baf41b41984a15488d0421b8ae0435` |
| 9 | `theorem` | [nhds_coe_units](../../../../../mathematics/Topology/GeneralTopology/WithZeroTopology/Variant644433c650b2c55eb092b03e71791738ec81da719f6bcb95d6942a78c83babd7.lean/declarations/nhds-coe-units--c100b99fdc51dbf21ed1b3f1.md) | 95 | `result-track:c100b99fdc51dbf21ed1b3f1ce9fdd6abefad11ebff60fce307ea93e1a3d3eaa` |
| 10 | `theorem` | [singleton_mem_nhds_of_units](../../../../../mathematics/Topology/GeneralTopology/WithZeroTopology/Variant644433c650b2c55eb092b03e71791738ec81da719f6bcb95d6942a78c83babd7.lean/declarations/singleton-mem-nhds-of-units--a6cb91c869be1bcb8703add6.md) | 100 | `result-track:a6cb91c869be1bcb8703add62ef04b549a320aa0fa5e5387e0fc384c6a49325d` |
| 11 | `theorem` | [singleton_mem_nhds_of_ne_zero](../../../../../mathematics/Topology/GeneralTopology/WithZeroTopology/Variant644433c650b2c55eb092b03e71791738ec81da719f6bcb95d6942a78c83babd7.lean/declarations/singleton-mem-nhds-of-ne-zero--cf619cf4274037bdb27e33a3.md) | 104 | `result-track:cf619cf4274037bdb27e33a37aa042641df6de737e77e0e2586f70ea3ce58f79` |
| 12 | `theorem` | [hasBasis_nhds_of_ne_zero](../../../../../mathematics/Topology/GeneralTopology/WithZeroTopology/Variant644433c650b2c55eb092b03e71791738ec81da719f6bcb95d6942a78c83babd7.lean/declarations/hasbasis-nhds-of-ne-zero--6115200bffd27160ab3f8893.md) | 106 | `result-track:6115200bffd27160ab3f8893c13c10cad35fcdf9f83b18c72767cfac0cef0858` |
| 13 | `theorem` | [hasBasis_nhds_units](../../../../../mathematics/Topology/GeneralTopology/WithZeroTopology/Variant644433c650b2c55eb092b03e71791738ec81da719f6bcb95d6942a78c83babd7.lean/declarations/hasbasis-nhds-units--e961cdbc1510fec8e47770b4.md) | 111 | `result-track:e961cdbc1510fec8e47770b42ed49007531fe5c9b8d8b10a0705b6736d555b10` |
| 14 | `theorem` | [tendsto_of_ne_zero](../../../../../mathematics/Topology/GeneralTopology/WithZeroTopology/Variant644433c650b2c55eb092b03e71791738ec81da719f6bcb95d6942a78c83babd7.lean/declarations/tendsto-of-ne-zero--5d7ccad06d51649512f8c536.md) | 115 | `result-track:5d7ccad06d51649512f8c5369dbf187257dd36d950825f115fb11578ccb01c9b` |
| 15 | `theorem` | [tendsto_units](../../../../../mathematics/Topology/GeneralTopology/WithZeroTopology/Variant644433c650b2c55eb092b03e71791738ec81da719f6bcb95d6942a78c83babd7.lean/declarations/tendsto-units--766e8f55448218402970ee6d.md) | 118 | `result-track:766e8f55448218402970ee6d060d338eef01a240a8a2c17d560f8e86eaa5d364` |
| 16 | `theorem` | [Iio_mem_nhds](../../../../../mathematics/Topology/GeneralTopology/WithZeroTopology/Variant644433c650b2c55eb092b03e71791738ec81da719f6bcb95d6942a78c83babd7.lean/declarations/iio-mem-nhds--41ad9a3f6cbfdfda2d374d53.md) | 121 | `result-track:41ad9a3f6cbfdfda2d374d53c2839fe0fef9358591d9bf31e801666301c0372b` |
| 17 | `theorem` | [isOpen_iff](../../../../../mathematics/Topology/GeneralTopology/WithZeroTopology/Variant644433c650b2c55eb092b03e71791738ec81da719f6bcb95d6942a78c83babd7.lean/declarations/isopen-iff--a37742585ff6101fd6e0cb1c.md) | 128 | `result-track:a37742585ff6101fd6e0cb1cca93dee2dbb8bbc9066713d08f5572cc01d99c12` |
| 18 | `theorem` | [isClosed_iff](../../../../../mathematics/Topology/GeneralTopology/WithZeroTopology/Variant644433c650b2c55eb092b03e71791738ec81da719f6bcb95d6942a78c83babd7.lean/declarations/isclosed-iff--7da35d9bdb74989e1e60b553.md) | 133 | `result-track:7da35d9bdb74989e1e60b553e1a82d809e36e61230abb46f7a0be510d033ea85` |
| 19 | `theorem` | [isOpen_Iio](../../../../../mathematics/Topology/GeneralTopology/WithZeroTopology/Variant644433c650b2c55eb092b03e71791738ec81da719f6bcb95d6942a78c83babd7.lean/declarations/isopen-iio--c5aad963a220f70dced45f3d.md) | 137 | `result-track:c5aad963a220f70dced45f3de27c6f32493ac588dc9cb7296df635b6bd85e8bb` |
| 20 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/WithZeroTopology/Variant644433c650b2c55eb092b03e71791738ec81da719f6bcb95d6942a78c83babd7.lean/declarations/instance--584fabf2a3fbf3ed68f493f4.md) | 147 | `declaration-track:584fabf2a3fbf3ed68f493f45470d49baacd9729584c90e74abd8d3974f453d5` |
| 21 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/WithZeroTopology/Variant644433c650b2c55eb092b03e71791738ec81da719f6bcb95d6942a78c83babd7.lean/declarations/instance--af279a94e1eed684c7e0caf2.md) | 156 | `declaration-track:af279a94e1eed684c7e0caf241e20617961f18b698c9e99ce941b8d20c384cc1` |
| 22 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/WithZeroTopology/Variant644433c650b2c55eb092b03e71791738ec81da719f6bcb95d6942a78c83babd7.lean/declarations/instance--eb3c096e3de037ba13df2b29.md) | 166 | `declaration-track:eb3c096e3de037ba13df2b297ff8194c94ebe7359a33cd1adf02e6b9bde01564` |
| 23 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/WithZeroTopology/Variant644433c650b2c55eb092b03e71791738ec81da719f6bcb95d6942a78c83babd7.lean/declarations/instance--f337a956b6d4094698a71d8c.md) | 189 | `declaration-track:f337a956b6d4094698a71d8c0f15a183d5b3927b49b195c87e31706a4ae7a6ee` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
