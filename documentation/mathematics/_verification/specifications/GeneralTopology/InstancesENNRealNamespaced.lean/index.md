# Verification target: Instances ENNReal Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "fc556a2f6999b6b174e20b623d4cd1bc49508f65",
  "lexical_observation_count": 245,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/ENNReal/Variant410cb03a446bf07b910ba3e08c293a3005379432b0caf58e0a7bc3ecd50282f9.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../GeneralTopology/InstancesENNRealNamespaced.lean/index.md) · [Full source](../../../../GeneralTopology/InstancesENNRealNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `fc556a2f6999b6b174e20b623d4cd1bc49508f65`.

Source path: `GRWTSK/Topology/GeneralTopology/ENNReal/Variant410cb03a446bf07b910ba3e08c293a3005379432b0caf58e0a7bc3ecd50282f9.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/ENNReal/Variant410cb03a446bf07b910ba3e08c293a3005379432b0caf58e0a7bc3ecd50282f9.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Topology.Instances.NNReal` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Algebra.Order.MonotoneContinuity` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Algebra.InfiniteSum.Real` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Algebra.Order.LiminfLimsup` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Algebra.Order.T5` — import line 15; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.MetricSpace.Lipschitz` — import line 16; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [(anonymous)](../../../../GeneralTopology/InstancesENNRealNamespaced.lean/declarations/instance-source-edition-3.md) | 46 | `declaration-track:510c2817c6bac58434187e7707506cd003a3801db17c1b96649c752be6e1b6ea` |
| 2 | `instance` | [(anonymous)](../../../../GeneralTopology/InstancesENNRealNamespaced.lean/declarations/instance-source-edition-6.md) | 48 | `declaration-track:a5369f0461b8a2dec44e09b0133babe924822be43d7fcfabe8002580f56e8a7a` |
| 3 | `instance` | [(anonymous)](../../../../GeneralTopology/InstancesENNRealNamespaced.lean/declarations/instance-source-edition-5.md) | 51 | `declaration-track:9414f336dc8d89721bc2d20368ff81a0f9416aafc5c7cc3e57be52b263e31ade` |
| 4 | `instance` | [(anonymous)](../../../../GeneralTopology/InstancesENNRealNamespaced.lean/declarations/instance.md) | 52 | `declaration-track:0f6dc92ff3b2c6008491fabefd16dc547b849adc1ea257b3e7a4f6bc6b7169cf` |
| 5 | `instance` | [(anonymous)](../../../../GeneralTopology/InstancesENNRealNamespaced.lean/declarations/instance-source-edition-4.md) | 53 | `declaration-track:79b4ad09a9dfbd15672b78783842673c8b7d5f778357ab124cdaf6ab42faf72c` |
| 6 | `instance` | [(anonymous)](../../../../GeneralTopology/InstancesENNRealNamespaced.lean/declarations/instance-source-edition-8.md) | 55 | `declaration-track:f3035995ea40810ae0a21a15ef0c0412171aeec749d412aa6dd213e5fa722dfe` |
| 7 | `theorem` | [embedding_coe](../../../../GeneralTopology/InstancesENNRealNamespaced.lean/declarations/embedding-coe.md) | 58 | `result-track:1005d8d152da82df326cf02ce6ce017f1eb218a7d5c7d34f20d556d6f0d1efd4` |
| 8 | `theorem` | [isOpen_ne_top](../../../../GeneralTopology/InstancesENNRealNamespaced.lean/declarations/isopen-ne-top.md) | 62 | `result-track:9d4a864afd372c1c23a58b88f9d25c85a4e52b694993110401fae62c1c252b2c` |
| 9 | `theorem` | [isOpen_Ico_zero](../../../../GeneralTopology/InstancesENNRealNamespaced.lean/declarations/isopen-ico-zero.md) | 65 | `result-track:99e2caebfaa54dcf9416a31d2ba853abf26c8b60bcfa02ee926ea949be10a3aa` |
| 10 | `theorem` | [openEmbedding_coe](../../../../GeneralTopology/InstancesENNRealNamespaced.lean/declarations/openembedding-coe.md) | 70 | `result-track:352a881cd22b909bbcd7dccc3f83267a14012dc29dba5fc8c4403d28f46d8713` |
| 11 | `theorem` | [coe_range_mem_nhds](../../../../GeneralTopology/InstancesENNRealNamespaced.lean/declarations/coe-range-mem-nhds.md) | 74 | `result-track:b85d62f4973616a26992292ea6e37a209e905d146e11615d0edd1b815c02aea4` |
| 12 | `theorem` | [tendsto_coe](../../../../GeneralTopology/InstancesENNRealNamespaced.lean/declarations/tendsto-coe.md) | 79 | `result-track:7ea73e07d2f887c0c8eeb0039a7f7327e4a3c627c2ccc422acbe1b6ca9fabaf9` |
| 13 | `theorem` | [continuous_coe](../../../../GeneralTopology/InstancesENNRealNamespaced.lean/declarations/continuous-coe.md) | 84 | `result-track:e276a36a4183fcef357864a273f4f649b7a2f4f44faf0723985d404a7241256f` |
| 14 | `theorem` | [continuous_coe_iff](../../../../GeneralTopology/InstancesENNRealNamespaced.lean/declarations/continuous-coe-iff.md) | 88 | `result-track:9ce428fc91fd4d9d210370114e5c564619810652f8610333d5fb14e629095c54` |
| 15 | `theorem` | [nhds_coe](../../../../GeneralTopology/InstancesENNRealNamespaced.lean/declarations/nhds-coe.md) | 93 | `result-track:aa554b09d4d6d127507d841542395868412d0dd0e348536d163841c976869ea5` |
| 16 | `theorem` | [tendsto_nhds_coe_iff](../../../../GeneralTopology/InstancesENNRealNamespaced.lean/declarations/tendsto-nhds-coe-iff.md) | 97 | `result-track:afdb98383fa64eb6252bd90b89cdbaa48af6cab2382a5a5c1eae33d10746b712` |
| 17 | `theorem` | [continuousAt_coe_iff](../../../../GeneralTopology/InstancesENNRealNamespaced.lean/declarations/continuousat-coe-iff.md) | 102 | `result-track:4d73128998084fe1379e202c7f8bfdcc307b330ed84b1b693d1140957b7b6381` |
| 18 | `theorem` | [nhds_coe_coe](../../../../GeneralTopology/InstancesENNRealNamespaced.lean/declarations/nhds-coe-coe.md) | 107 | `result-track:ee7482a6410348907b488ffca33caf70fe88bf479e7ce69eaf792d24eab10ba6` |
| 19 | `theorem` | [continuous_ofReal](../../../../GeneralTopology/InstancesENNRealNamespaced.lean/declarations/continuous-ofreal.md) | 112 | `result-track:f1d4b1e16f2121bcaf6d0d6bc4d9e986874e85fe010dcd70044a6faed0d06f4e` |
| 20 | `theorem` | [tendsto_ofReal](../../../../GeneralTopology/InstancesENNRealNamespaced.lean/declarations/tendsto-ofreal.md) | 116 | `result-track:b073a0579bf95742fdec5311c678158e3d55114f0da635c981c195ff5480727e` |
| 21 | `theorem` | [tendsto_toNNReal](../../../../GeneralTopology/InstancesENNRealNamespaced.lean/declarations/tendsto-tonnreal.md) | 121 | `result-track:6aef074034d65adadd24599664d1ce1ecaa8b68024aee61a7c2b230635096865` |
| 22 | `theorem` | [eventuallyEq_of_toReal_eventuallyEq](../../../../GeneralTopology/InstancesENNRealNamespaced.lean/declarations/eventuallyeq-of-toreal-eventuallyeq.md) | 128 | `result-track:3449446e8599a30ed4a405ea9dcc5aed3062f0e4be76dcda35db6cc4d73ed689` |
| 23 | `theorem` | [continuousOn_toNNReal](../../../../GeneralTopology/InstancesENNRealNamespaced.lean/declarations/continuouson-tonnreal.md) | 135 | `result-track:effa710246a09de72696014e4add8538cc4b34945304908b7f8286f83a57c25a` |
| 24 | `theorem` | [tendsto_toReal](../../../../GeneralTopology/InstancesENNRealNamespaced.lean/declarations/tendsto-toreal.md) | 139 | `result-track:20806f3cae3060f1caf924f1a9455b95c5cfbfc3c0530e9c191f8160719427a4` |
| 25 | `def` | [neTopHomeomorphNNReal](../../../../GeneralTopology/InstancesENNRealNamespaced.lean/declarations/netophomeomorphnnreal.md) | 144 | `declaration-track:029c5bb2e054b5bc55b57a40693b3d91be03830294ee47bc04a59d17bdc9b110` |
| 26 | `def` | [ltTopHomeomorphNNReal](../../../../GeneralTopology/InstancesENNRealNamespaced.lean/declarations/lttophomeomorphnnreal.md) | 151 | `declaration-track:fd7af26d6782fc747ba37407d015d75979fa9f89905c4b780e20a87e7460121a` |
| 27 | `theorem` | [nhds_top](../../../../GeneralTopology/InstancesENNRealNamespaced.lean/declarations/nhds-top.md) | 156 | `result-track:16e080d31cab600d988651adfcf428bf8999b612c0c236ef8251872ce9dc7c5d` |
| 28 | `theorem` | [nhds_top'](../../../../GeneralTopology/InstancesENNRealNamespaced.lean/declarations/nhds-top-source-edition-2.md) | 160 | `result-track:a33b25300052f6c32c30ddb9e33876e5b4700be0fc2e509b304612c5cdccca1c` |
| 29 | `theorem` | [nhds_top_basis](../../../../GeneralTopology/InstancesENNRealNamespaced.lean/declarations/nhds-top-basis.md) | 164 | `result-track:7670a9713643b947b1ccb44be59e18c9f4e3ea39beeb2317f2b0fe710bb5e003` |
| 30 | `theorem` | [tendsto_nhds_top_iff_nnreal](../../../../GeneralTopology/InstancesENNRealNamespaced.lean/declarations/tendsto-nhds-top-iff-nnreal.md) | 168 | `result-track:fabe23585898774cf6b0624782a99d70368929b7315e14a94cd4dd293bebaf6d` |
| 31 | `theorem` | [tendsto_nhds_top_iff_nat](../../../../GeneralTopology/InstancesENNRealNamespaced.lean/declarations/tendsto-nhds-top-iff-nat.md) | 173 | `result-track:69ad0872e62a01179a808fe14c14f2ede2e2e7f1e2e61dd9d5ed1c5d9426ed1b` |
| 32 | `theorem` | [tendsto_nhds_top](../../../../GeneralTopology/InstancesENNRealNamespaced.lean/declarations/tendsto-nhds-top.md) | 181 | `result-track:b1d4c672bcbb0c748aa7a78b3e263f498c9d424c154a3ea7d79a4b2bad019389` |
| 33 | `theorem` | [tendsto_nat_nhds_top](../../../../GeneralTopology/InstancesENNRealNamespaced.lean/declarations/tendsto-nat-nhds-top.md) | 186 | `result-track:105cca6ddfedf5ff2caa6fed04a9a822c931305425e360953f3b7d1a3da5a9b9` |
| 34 | `theorem` | [tendsto_coe_nhds_top](../../../../GeneralTopology/InstancesENNRealNamespaced.lean/declarations/tendsto-coe-nhds-top.md) | 192 | `result-track:ebbcf04aabf20f35696a472b7a4386647a9cdc9a0a69eb209fd538b193061d88` |
| 35 | `theorem` | [tendsto_ofReal_atTop](../../../../GeneralTopology/InstancesENNRealNamespaced.lean/declarations/tendsto-ofreal-attop.md) | 197 | `result-track:329b7447d615f94a8f4683ef5663c6a63a1b6653e24e83ea8291e150db859c07` |
| 36 | `theorem` | [nhds_zero](../../../../GeneralTopology/InstancesENNRealNamespaced.lean/declarations/nhds-zero.md) | 201 | `result-track:d556e555b12202d9c34eff9bebd6d516ee560b60132d89a5c73f7bf99bd32213` |
| 37 | `theorem` | [nhds_zero_basis](../../../../GeneralTopology/InstancesENNRealNamespaced.lean/declarations/nhds-zero-basis.md) | 205 | `result-track:a67817bdb2d55c439bc09e2db483cb9fbad1c6903c274dbb632d941436697a48` |
| 38 | `theorem` | [nhds_zero_basis_Iic](../../../../GeneralTopology/InstancesENNRealNamespaced.lean/declarations/nhds-zero-basis-iic.md) | 209 | `result-track:038236404bfd81e332fe8353575dc80cb17469b97460587dece13b261af6c365` |
| 39 | `theorem` | [nhdsWithin_Ioi_coe_neBot](../../../../GeneralTopology/InstancesENNRealNamespaced.lean/declarations/nhdswithin-ioi-coe-nebot.md) | 215 | `result-track:8df10ca566b82952df31d949752deb80bb9668d4bc3e09058db8eec999f63be4` |
| 40 | `theorem` | [nhdsWithin_Ioi_zero_neBot](../../../../GeneralTopology/InstancesENNRealNamespaced.lean/declarations/nhdswithin-ioi-zero-nebot.md) | 220 | `result-track:a3457433ff39b1a91551d743087630c67c072866d225fc049007c57e1e2b767f` |
| 41 | `theorem` | [nhdsWithin_Ioi_one_neBot](../../../../GeneralTopology/InstancesENNRealNamespaced.lean/declarations/nhdswithin-ioi-one-nebot.md) | 225 | `result-track:bad16e626f1a37811b01546a5d6b3e5b11c87b54b05a206919373a142a7e66de` |
| 42 | `theorem` | [nhdsWithin_Ioi_nat_neBot](../../../../GeneralTopology/InstancesENNRealNamespaced.lean/declarations/nhdswithin-ioi-nat-nebot.md) | 228 | `result-track:eb61440db35ba27a572baf572dbaf4660360a4b054b059c40145d8a3e2e6921a` |
| 43 | `theorem` | [nhdsWithin_Ioi_ofNat_nebot](../../../../GeneralTopology/InstancesENNRealNamespaced.lean/declarations/nhdswithin-ioi-ofnat-nebot.md) | 231 | `result-track:a20424d33ee46a91cf131f9f0c0b79173aa373aa0fff644fc4d3e08f8ac5b80d` |
| 44 | `theorem` | [nhdsWithin_Iio_neBot](../../../../GeneralTopology/InstancesENNRealNamespaced.lean/declarations/nhdswithin-iio-nebot.md) | 235 | `result-track:e649c1f5e401ca6392d3bdf56dfc79e810ebef95930613980e0e4dba924fe72d` |
| 45 | `theorem` | [hasBasis_nhds_of_ne_top'](../../../../GeneralTopology/InstancesENNRealNamespaced.lean/declarations/hasbasis-nhds-of-ne-top.md) | 242 | `result-track:0fd5f0e2bff5b8567da1777c22cceee6432f4fa823c73e2036a337729ac8fc87` |
| 46 | `theorem` | [hasBasis_nhds_of_ne_top](../../../../GeneralTopology/InstancesENNRealNamespaced.lean/declarations/hasbasis-nhds-of-ne-top-source-edition-2.md) | 257 | `result-track:59799dfb6087408e1750a3790ca6eea941f4b92321acb529f04defde6eba6d60` |
| 47 | `theorem` | [Icc_mem_nhds](../../../../GeneralTopology/InstancesENNRealNamespaced.lean/declarations/icc-mem-nhds.md) | 261 | `result-track:87652f6a65956c33654fb26809b234541498dfeffd688ee197c50a01a625415f` |
| 48 | `theorem` | [nhds_of_ne_top](../../../../GeneralTopology/InstancesENNRealNamespaced.lean/declarations/nhds-of-ne-top.md) | 265 | `result-track:91f8f33d1ff12db0e16feaea974c9feec111a680e65491dfa4cda0dffa3d6074` |
| 49 | `theorem` | [biInf_le_nhds](../../../../GeneralTopology/InstancesENNRealNamespaced.lean/declarations/biinf-le-nhds.md) | 269 | `result-track:7b7c77181ff8e48ba98deda3eabd93f34dcd16ceae2bcf890fa8d158916220dc` |
| 50 | `theorem` | [tendsto_nhds_of_Icc](../../../../GeneralTopology/InstancesENNRealNamespaced.lean/declarations/tendsto-nhds-of-icc.md) | 275 | `result-track:8ac5914851f041b7e3f75ce6f56e989ccd0f1750e9fbdb20c0e116b28a2f4216` |
| 51 | `theorem` | [tendsto_nhds](../../../../GeneralTopology/InstancesENNRealNamespaced.lean/declarations/tendsto-nhds.md) | 282 | `result-track:9b42f758be81c8f125e28276e819a0346bc4a8afd03ae91e33cc68057b1f7597` |
| 52 | `theorem` | [tendsto_nhds_zero](../../../../GeneralTopology/InstancesENNRealNamespaced.lean/declarations/tendsto-nhds-zero.md) | 287 | `result-track:d77ae0c24a6ea6ed0a1b582bcafebf2ffaa1f3b0a8fe323e5c92522175532d69` |
| 53 | `theorem` | [tendsto_atTop](../../../../GeneralTopology/InstancesENNRealNamespaced.lean/declarations/tendsto-attop.md) | 292 | `result-track:5cba36ea4ed5250410919be0abb6576f0c854373fa4e5c3f900dcdbf5da79eb5` |
| 54 | `instance` | [(anonymous)](../../../../GeneralTopology/InstancesENNRealNamespaced.lean/declarations/instance-source-edition-7.md) | 297 | `declaration-track:cb40c749c014f3801484eb094d63cf36bef4f5b65e4e96a97b7896e1b400adeb` |
| 55 | `theorem` | [tendsto_atTop_zero](../../../../GeneralTopology/InstancesENNRealNamespaced.lean/declarations/tendsto-attop-zero.md) | 306 | `result-track:a453a320a1672c73751a26a81e32799175183ccd8166cc98d7fcb1d1b0cc964b` |
| 56 | `theorem` | [tendsto_sub](../../../../GeneralTopology/InstancesENNRealNamespaced.lean/declarations/tendsto-sub-source-edition-2.md) | 311 | `result-track:c8d140d0c35552a425b0ee0d74fb36708b89994c237091c18ebf7b5026397609` |
| 57 | `theorem` | [Tendsto.sub](../../../../GeneralTopology/InstancesENNRealNamespaced.lean/declarations/tendsto-sub.md) | 332 | `result-track:c2e11670c486d1fb0cb62970508c2c75a1bde31b2adaf38ae4ab1e056862949b` |
| 58 | `theorem` | [tendsto_mul](../../../../GeneralTopology/InstancesENNRealNamespaced.lean/declarations/tendsto-mul-source-edition-2.md) | 339 | `result-track:865512cefe6860f5c4dff3769ec005c69a6d8315a0d56de0094f92b8f8841a70` |
| 59 | `theorem` | [Tendsto.mul](../../../../GeneralTopology/InstancesENNRealNamespaced.lean/declarations/tendsto-mul.md) | 361 | `result-track:5b27d92a785bad2bd81c11d3eba2fe3bfea2cc85c39d03b7c1fb5c0dc171c348` |
| 60 | `theorem` | [Instances ENNReal Namespaced](../../../../GeneralTopology/InstancesENNRealNamespaced.lean/declarations/ennreal-mul.md) | 368 | `result-track:133e6280fcdec44d11ecb39aa25cfa9ad2595ababb6a878b63fa30a85787009f` |
| 61 | `theorem` | [Instances ENNReal Namespaced](../../../../GeneralTopology/InstancesENNRealNamespaced.lean/declarations/ennreal-mul-source-line-374-occurrence-2.md) | 374 | `result-track:a6ba850eff0097e847b0e171d982511d2e114867cf295c269128761eb419c12b` |
| 62 | `theorem` | [Tendsto.const_mul](../../../../GeneralTopology/InstancesENNRealNamespaced.lean/declarations/tendsto-const-mul.md) | 381 | `result-track:f82112a16986e0b810bf7b36b620526cc988e10db4473e48386d92bd1bc6fac9` |
| 63 | `theorem` | [Tendsto.mul_const](../../../../GeneralTopology/InstancesENNRealNamespaced.lean/declarations/tendsto-mul-const.md) | 387 | `result-track:69967f4725422585d9c16689779377358dc23905763a05d489770004f0b74c1a` |
| 64 | `theorem` | [tendsto_finset_prod_of_ne_top](../../../../GeneralTopology/InstancesENNRealNamespaced.lean/declarations/tendsto-finset-prod-of-ne-top.md) | 392 | `result-track:028a615f1009607a65ba083b85ed1d42e9ff22edbc7b9f5bb50d48d435e8c80c` |
| 65 | `theorem` | [continuousAt_const_mul](../../../../GeneralTopology/InstancesENNRealNamespaced.lean/declarations/continuousat-const-mul.md) | 406 | `result-track:21161f3b67e006c254b49ceb3d5642ee1d5743a860de8b77ac72d1d188697064` |
| 66 | `theorem` | [continuousAt_mul_const](../../../../GeneralTopology/InstancesENNRealNamespaced.lean/declarations/continuousat-mul-const.md) | 411 | `result-track:351d3b4ac3efe8def9395973775345e3a888469fd076d11497b415c4dde9cc83` |
| 67 | `theorem` | [continuous_const_mul](../../../../GeneralTopology/InstancesENNRealNamespaced.lean/declarations/continuous-const-mul.md) | 416 | `result-track:9c18fe99dcd20983e9d39d079682ad300f215e056bbb6d4f6206d309ecaa8461` |
| 68 | `theorem` | [continuous_mul_const](../../../../GeneralTopology/InstancesENNRealNamespaced.lean/declarations/continuous-mul-const.md) | 420 | `result-track:0a945638c64e085306ef73ef8a502ef1e401145c21dec78192354cf78612d328` |
| 69 | `theorem` | [continuous_div_const](../../../../GeneralTopology/InstancesENNRealNamespaced.lean/declarations/continuous-div-const.md) | 424 | `result-track:a58c516334ff4e0c10cd045908098fb806ffea126837d92d93cbbb6f4f5622e9` |
| 70 | `theorem` | [continuous_pow](../../../../GeneralTopology/InstancesENNRealNamespaced.lean/declarations/continuous-pow.md) | 432 | `result-track:83c6cc16eb71db8f829911d6132c21c3777928b5f6b7c1ffe9e489af0390ba1c` |
| 71 | `theorem` | [continuousOn_sub](../../../../GeneralTopology/InstancesENNRealNamespaced.lean/declarations/continuouson-sub.md) | 445 | `result-track:7723bf205654c16653b5889edac884d395b2608eb20d352b91e703480a43d493` |
| 72 | `theorem` | [continuous_sub_left](../../../../GeneralTopology/InstancesENNRealNamespaced.lean/declarations/continuous-sub-left.md) | 453 | `result-track:0e6270303a689d6c78d1719694d67c84c776f802a54e76ec39d65c703a40b71e` |
| 73 | `theorem` | [continuous_nnreal_sub](../../../../GeneralTopology/InstancesENNRealNamespaced.lean/declarations/continuous-nnreal-sub.md) | 459 | `result-track:5fb556bd05fb2bff5d7837b9074f6a12a91f2b1769a335fa46c4d29ab6c281f6` |
| 74 | `theorem` | [continuousOn_sub_left](../../../../GeneralTopology/InstancesENNRealNamespaced.lean/declarations/continuouson-sub-left.md) | 463 | `result-track:0167fd64d95b89b03dd69ecdf0f8c60782e54b44b3a77f5b00ad06cd1d4b47c3` |
| 75 | `theorem` | [continuous_sub_right](../../../../GeneralTopology/InstancesENNRealNamespaced.lean/declarations/continuous-sub-right.md) | 470 | `result-track:587bd92a544c30243e5c9c07b648f14ad1502b1fb80ed369523f4f938fec7bf6` |
| 76 | `theorem` | [Tendsto.pow](../../../../GeneralTopology/InstancesENNRealNamespaced.lean/declarations/tendsto-pow.md) | 479 | `result-track:defe75d73521dc3a2c6df2536e59f10bc2c9d6d390273d4970f5f9b4bb8d955f` |
| 77 | `theorem` | [le_of_forall_lt_one_mul_le](../../../../GeneralTopology/InstancesENNRealNamespaced.lean/declarations/le-of-forall-lt-one-mul-le.md) | 484 | `result-track:351c4f6a01ece1d31e65c25c57a1ca75b5973f6c85a71bd0ad19167662c352f5` |
| 78 | `theorem` | [iInf_mul_left'](../../../../GeneralTopology/InstancesENNRealNamespaced.lean/declarations/iinf-mul-left-source-edition-2.md) | 491 | `result-track:bcc4a53ce2c59360635e9e17f54c04d969b9cedd9728955200479fce0f09c49f` |
| 79 | `theorem` | [iInf_mul_left](../../../../GeneralTopology/InstancesENNRealNamespaced.lean/declarations/iinf-mul-left.md) | 505 | `result-track:210d95903ca90558f7c315c00d1488fcfa8209ad0b6a876cd87565335b72856c` |
| 80 | `theorem` | [iInf_mul_right'](../../../../GeneralTopology/InstancesENNRealNamespaced.lean/declarations/iinf-mul-right-source-edition-2.md) | 510 | `result-track:eaba1f16a2a6396bf465a5d3e4f2a99b9b53a67da8b1ea6b9f207f5a0d61920a` |
| 81 | `theorem` | [iInf_mul_right](../../../../GeneralTopology/InstancesENNRealNamespaced.lean/declarations/iinf-mul-right.md) | 515 | `result-track:47c5355f60403c13b8d8feb43b65f594edebcb0a23294d819393fbfe450d501e` |
| 82 | `theorem` | [inv_map_iInf](../../../../GeneralTopology/InstancesENNRealNamespaced.lean/declarations/inv-map-iinf.md) | 520 | `result-track:e31f874a8b34c0ab978ff9acee29e4fc20e345fa09a3c0aa9080742fa75672fa` |
| 83 | `theorem` | [inv_map_iSup](../../../../GeneralTopology/InstancesENNRealNamespaced.lean/declarations/inv-map-isup.md) | 524 | `result-track:adc52553206bbda65db8e2c5b9212187b0d1bc53f8065250f307164253f61ac0` |
| 84 | `theorem` | [inv_limsup](../../../../GeneralTopology/InstancesENNRealNamespaced.lean/declarations/inv-limsup.md) | 528 | `result-track:eb227d07494848c4ec7bcbdf05c3d8bfc730a3e0327be1882ae32842ea3a2b66` |
| 85 | `theorem` | [inv_liminf](../../../../GeneralTopology/InstancesENNRealNamespaced.lean/declarations/inv-liminf.md) | 533 | `result-track:ab5d4576bf5493f8a0146766a5368057179364c66fb99b6913ae03c86b0aff83` |
| 86 | `instance` | [(anonymous)](../../../../GeneralTopology/InstancesENNRealNamespaced.lean/declarations/instance-source-edition-2.md) | 538 | `declaration-track:1a0272c03c7ef2cd26f6d7da7d69694242eed1a38d8fd71f0be0e55f116dfd81` |
| 87 | `theorem` | [tendsto_inv_iff](../../../../GeneralTopology/InstancesENNRealNamespaced.lean/declarations/tendsto-inv-iff.md) | 541 | `result-track:9f036c5616b08efe692583ba23886680c7c9f5c37fd6d496d8d1bb36670a6dc2` |
| 88 | `theorem` | [Tendsto.div](../../../../GeneralTopology/InstancesENNRealNamespaced.lean/declarations/tendsto-div.md) | 546 | `result-track:a16d39a6f3815f775b342eee0efc20c1c5b34ececd9337ff30f4474255edccd0` |
| 89 | `theorem` | [Tendsto.const_div](../../../../GeneralTopology/InstancesENNRealNamespaced.lean/declarations/tendsto-const-div.md) | 552 | `result-track:b6cd608b3412e36b718dde1bdfc5a46e64e2a38bc58f6708d261f69183953b32` |
| 90 | `theorem` | [Tendsto.div_const](../../../../GeneralTopology/InstancesENNRealNamespaced.lean/declarations/tendsto-div-const.md) | 558 | `result-track:96cee780e8f7617ae68259f72354f9c360afdf94fc95b69756ff0f93c3c5c075` |
| 91 | `theorem` | [tendsto_inv_nat_nhds_zero](../../../../GeneralTopology/InstancesENNRealNamespaced.lean/declarations/tendsto-inv-nat-nhds-zero.md) | 564 | `result-track:73d51ddb81ea414d59e4de03ab69a7d443e8c2a6ce895a1df0efedd23a310ce3` |
| 92 | `theorem` | [iSup_add](../../../../GeneralTopology/InstancesENNRealNamespaced.lean/declarations/isup-add.md) | 568 | `result-track:2988c30b088eea1ae2cfd2c21ba6cefb95fb0044a48986fa00d95ddb32477ce5` |
| 93 | `theorem` | [biSup_add'](../../../../GeneralTopology/InstancesENNRealNamespaced.lean/declarations/bisup-add.md) | 573 | `result-track:17e9026a0571bdf3c4bbab2f6aea5105d7764f8dc44b19f223da60e869478289` |
| 94 | `theorem` | [add_biSup'](../../../../GeneralTopology/InstancesENNRealNamespaced.lean/declarations/add-bisup.md) | 579 | `result-track:7c52b0ce93525d67052d7ec88ca609bce152af678ce5d4f724919a0ed649515a` |
| 95 | `theorem` | [biSup_add](../../../../GeneralTopology/InstancesENNRealNamespaced.lean/declarations/bisup-add-source-edition-2.md) | 584 | `result-track:342e1f239009f8918d5b3c88865a90e8b0ca68cb54a0916d2cc904fe44704eee` |
| 96 | `theorem` | [add_biSup](../../../../GeneralTopology/InstancesENNRealNamespaced.lean/declarations/add-bisup-source-edition-2.md) | 589 | `result-track:dc3e73c2d9005447d4c417b8cfa4983e15e9161b40588e2d3495fc188df7ef4a` |
| 97 | `theorem` | [sSup_add](../../../../GeneralTopology/InstancesENNRealNamespaced.lean/declarations/ssup-add.md) | 594 | `result-track:1ce8b474cd9f88ab4dd14beb9fe312ff2874e3b05b1fc81bcf37d30665506115` |
| 98 | `theorem` | [add_iSup](../../../../GeneralTopology/InstancesENNRealNamespaced.lean/declarations/add-isup.md) | 598 | `result-track:00b7aade33692d9ef4f2aac2095b93ff85bf1258b3386f8bbfe2b716f8dd5002` |
| 99 | `theorem` | [iSup_add_iSup_le](../../../../GeneralTopology/InstancesENNRealNamespaced.lean/declarations/isup-add-isup-le.md) | 602 | `result-track:00496adfde3fc1cf99b18a97deebccfe0a8b2c4e3e9d3b3dacca1d19d8830b89` |
| 100 | `theorem` | [biSup_add_biSup_le'](../../../../GeneralTopology/InstancesENNRealNamespaced.lean/declarations/bisup-add-bisup-le-source-edition-2.md) | 607 | `result-track:9ea46acf3519fe7611bea7c41a50bc0ed66a479acfb3fb50358aad4408fb774b` |
| 101 | `theorem` | [biSup_add_biSup_le](../../../../GeneralTopology/InstancesENNRealNamespaced.lean/declarations/bisup-add-bisup-le.md) | 614 | `result-track:7f3bb1a4cd82d458a22c946530065d39fab96aca0d237f3c664b242c79ca106d` |
| 102 | `theorem` | [iSup_add_iSup](../../../../GeneralTopology/InstancesENNRealNamespaced.lean/declarations/isup-add-isup.md) | 620 | `result-track:626bb8123307c69732006c202c4daff60f556c5169842d11550bcc97355c301e` |
| 103 | `theorem` | [iSup_add_iSup_of_monotone](../../../../GeneralTopology/InstancesENNRealNamespaced.lean/declarations/isup-add-isup-of-monotone.md) | 630 | `result-track:8aae2d2b5fc3aa1564907dd0d9cde15eb6729107de430ce3c7152dd418bd2344` |
| 104 | `theorem` | [finset_sum_iSup_nat](../../../../GeneralTopology/InstancesENNRealNamespaced.lean/declarations/finset-sum-isup-nat.md) | 635 | `result-track:6ed720540bcd807cabeb8afa2d5788e986305a6d5e95e82ecc2dbfcca418aa74` |
| 105 | `theorem` | [mul_iSup](../../../../GeneralTopology/InstancesENNRealNamespaced.lean/declarations/mul-isup.md) | 646 | `result-track:d9cb47a01a89afc9c9addb2c839ac684cd053280dba70e831c66b361d1ff6cc4` |
| 106 | `theorem` | [mul_sSup](../../../../GeneralTopology/InstancesENNRealNamespaced.lean/declarations/mul-ssup.md) | 656 | `result-track:fe38d07cd127ff030ca0213f51a4af4c2044361a2160e83f90f2c0564a0614a0` |
| 107 | `theorem` | [iSup_mul](../../../../GeneralTopology/InstancesENNRealNamespaced.lean/declarations/isup-mul.md) | 660 | `result-track:3dddbc00fa0cbeeb8b59d75a4dea4e450a33427ead1ff7013acdc4e70755b328` |
| 108 | `theorem` | [smul_iSup](../../../../GeneralTopology/InstancesENNRealNamespaced.lean/declarations/smul-isup.md) | 664 | `result-track:9d14f94de9df817bd5caccb80cfaeca7008375b4f8259cfd8a030795a3ea5c51` |
| 109 | `theorem` | [smul_sSup](../../../../GeneralTopology/InstancesENNRealNamespaced.lean/declarations/smul-ssup.md) | 670 | `result-track:c178aba6a3d2272837ab51c2114d32d7ab88b688d33c7f42dc6a32f3696cc50a` |
| 110 | `theorem` | [iSup_div](../../../../GeneralTopology/InstancesENNRealNamespaced.lean/declarations/isup-div.md) | 676 | `result-track:5262e4b7478520c83e38a240d5b5baa12a555a85b18ea187e2eda50f87059cbc` |
| 111 | `theorem` | [tendsto_coe_sub](../../../../GeneralTopology/InstancesENNRealNamespaced.lean/declarations/tendsto-coe-sub.md) | 680 | `result-track:c3f4beccb34a6e44b1bbc28f47e1c578e5639785e36db7d4b188cfbd9f7e35f8` |
| 112 | `theorem` | [sub_iSup](../../../../GeneralTopology/InstancesENNRealNamespaced.lean/declarations/sub-isup.md) | 685 | `result-track:44c15be5647d31c635622438e5525603e49ffc746164258191297a7c4792077f` |
| 113 | `theorem` | [exists_countable_dense_no_zero_top](../../../../GeneralTopology/InstancesENNRealNamespaced.lean/declarations/exists-countable-dense-no-zero-top.md) | 690 | `result-track:268a77b9ddbe088be7c4d36f555b05e25396535f167a9b215ab1a2aca270c157` |
| 114 | `theorem` | [exists_lt_add_of_lt_add](../../../../GeneralTopology/InstancesENNRealNamespaced.lean/declarations/exists-lt-add-of-lt-add.md) | 698 | `result-track:323250f09e46b390abadecfeffba16c3d8e3fe0a0394931a23c082b38c43d0af` |
| 115 | `theorem` | [exists_frequently_lt_of_liminf_ne_top](../../../../GeneralTopology/InstancesENNRealNamespaced.lean/declarations/exists-frequently-lt-of-liminf-ne-top-source-edition-2.md) | 716 | `result-track:fdb35d55ee3949fef798953aa0d5674451ac12ece4c9dcde9f3fc0f7cc01dc03` |
| 116 | `theorem` | [exists_frequently_lt_of_liminf_ne_top'](../../../../GeneralTopology/InstancesENNRealNamespaced.lean/declarations/exists-frequently-lt-of-liminf-ne-top.md) | 725 | `result-track:412e2aa6f758dcb51302b32c328d682dbc76f52214b4c8e1132fd3c19c8e457a` |
| 117 | `theorem` | [exists_upcrossings_of_not_bounded_under](../../../../GeneralTopology/InstancesENNRealNamespaced.lean/declarations/exists-upcrossings-of-not-bounded-under.md) | 734 | `result-track:55fcf1be947a6985c703929e03755af1ceb6c53056e814d4ee57e2a3538271aa` |
| 118 | `theorem` | [hasSum_coe](../../../../GeneralTopology/InstancesENNRealNamespaced.lean/declarations/hassum-coe.md) | 767 | `result-track:e671872bb0a1548b663624062826b4419c4b891a787b3adbd6d425dad95d125f` |
| 119 | `theorem` | [tsum_coe_eq](../../../../GeneralTopology/InstancesENNRealNamespaced.lean/declarations/tsum-coe-eq.md) | 772 | `result-track:3b8141313863bd12496f04fc128228733f5241d70a86158bf988dabfb3f1ff30` |
| 120 | `theorem` | [coe_tsum](../../../../GeneralTopology/InstancesENNRealNamespaced.lean/declarations/coe-tsum.md) | 776 | `result-track:c515990f5690c23d8797e08104e2fdf5daa4901aa9cca07272a7b08f07622f1c` |
| 121 | `theorem` | [hasSum](../../../../GeneralTopology/InstancesENNRealNamespaced.lean/declarations/hassum.md) | 780 | `result-track:903f27cbcab92e0cb7ffb08b5089f1f5046e26c67bcb2e8bd5e473170079ed2a` |
| 122 | `theorem` | [summable](../../../../GeneralTopology/InstancesENNRealNamespaced.lean/declarations/summable.md) | 785 | `result-track:7290eb15a6ecca538365c732462a6418f5d23bd3b33af5335d9e45ab140accc9` |
| 123 | `theorem` | [tsum_coe_ne_top_iff_summable](../../../../GeneralTopology/InstancesENNRealNamespaced.lean/declarations/tsum-coe-ne-top-iff-summable.md) | 789 | `result-track:3b96af5cbd5a8b1352330a42f7587c58472adabcd6bec6358ce9fc434fe3686a` |
| 124 | `theorem` | [tsum_eq_iSup_sum](../../../../GeneralTopology/InstancesENNRealNamespaced.lean/declarations/tsum-eq-isup-sum.md) | 797 | `result-track:32103f953523e3669c02f30c99ba86f26fdd78b96e614ea034119455f30e226b` |
| 125 | `theorem` | [tsum_eq_iSup_sum'](../../../../GeneralTopology/InstancesENNRealNamespaced.lean/declarations/tsum-eq-isup-sum-source-edition-2.md) | 801 | `result-track:dff4a63c9ab08bd5221c8894665da50e2a4f44336e03c8e83a93a0f866167ddc` |
| 126 | `theorem` | [tsum_sigma](../../../../GeneralTopology/InstancesENNRealNamespaced.lean/declarations/tsum-sigma.md) | 809 | `result-track:166ca93b49e981c64b9fdfdd2338063bc6551d95039f0cf039b35edada39c548` |
| 127 | `theorem` | [tsum_sigma'](../../../../GeneralTopology/InstancesENNRealNamespaced.lean/declarations/tsum-sigma-source-edition-2.md) | 814 | `result-track:550af455b4651e1a0b71d345f46ed8db48ed9add508aa16bf52bf03825aeb4f3` |
| 128 | `theorem` | [tsum_prod](../../../../GeneralTopology/InstancesENNRealNamespaced.lean/declarations/tsum-prod-source-edition-2.md) | 819 | `result-track:b47072753202ceb1e577e6dea2e89839fb6d00f0385481c082d8c0346ddf430b` |
| 129 | `theorem` | [tsum_prod'](../../../../GeneralTopology/InstancesENNRealNamespaced.lean/declarations/tsum-prod.md) | 823 | `result-track:58a9be4bef5d2116edfe8c28ebc69a596660b786f6da58755ac9194c9da61908` |
| 130 | `theorem` | [tsum_comm](../../../../GeneralTopology/InstancesENNRealNamespaced.lean/declarations/tsum-comm.md) | 827 | `result-track:9370574f9968610a5a69fab53517ca0addd9b0a7759b157c94e463be019446e9` |
| 131 | `theorem` | [tsum_add](../../../../GeneralTopology/InstancesENNRealNamespaced.lean/declarations/tsum-add.md) | 831 | `result-track:600ebb4a0d4b9f3badb87d0d4380e2e12160ff94b02a8520f60a0829842f257b` |
| 132 | `theorem` | [tsum_le_tsum](../../../../GeneralTopology/InstancesENNRealNamespaced.lean/declarations/tsum-le-tsum.md) | 835 | `result-track:e7300cc6babee8c503d87bbfbc44029db9cd108185916ded2ed90d37d27295ea` |
| 133 | `theorem` | [sum_le_tsum](../../../../GeneralTopology/InstancesENNRealNamespaced.lean/declarations/sum-le-tsum.md) | 839 | `result-track:14649f6407fb13032ece05a80fc80f7ec240e591ddea7352762eb93fe279bb73` |
| 134 | `theorem` | [tsum_eq_iSup_nat'](../../../../GeneralTopology/InstancesENNRealNamespaced.lean/declarations/tsum-eq-isup-nat-source-edition-2.md) | 843 | `result-track:dd973f32d361852d26156923ac15522007e5cd9beba26ccedd4d18adfe7056db` |
| 135 | `theorem` | [tsum_eq_iSup_nat](../../../../GeneralTopology/InstancesENNRealNamespaced.lean/declarations/tsum-eq-isup-nat.md) | 851 | `result-track:8bb7a884dd4d70b187066213968ed7fe224259a5748ae6d25859d38c204458a0` |
| 136 | `theorem` | [tsum_eq_liminf_sum_nat](../../../../GeneralTopology/InstancesENNRealNamespaced.lean/declarations/tsum-eq-liminf-sum-nat.md) | 856 | `result-track:c804ad0d80fdc777680e2e695ad55256b6c1478072ae736a61fa2f57e0603d19` |
| 137 | `theorem` | [tsum_eq_limsup_sum_nat](../../../../GeneralTopology/InstancesENNRealNamespaced.lean/declarations/tsum-eq-limsup-sum-nat.md) | 861 | `result-track:6df57ea28934b1813ea096f3d8c22340e9ad8becd7f0266ff0a205853563b7b4` |
| 138 | `theorem` | [le_tsum](../../../../GeneralTopology/InstancesENNRealNamespaced.lean/declarations/le-tsum.md) | 865 | `result-track:7db95b6f42d214c8b6c5770bba0887994f3a4b86b062f2e99e1ce89c9192fffc` |
| 139 | `theorem` | [tsum_eq_zero](../../../../GeneralTopology/InstancesENNRealNamespaced.lean/declarations/tsum-eq-zero.md) | 870 | `result-track:c494767925129bdbd367cf8c419b5d10612052891f89272b540745661a9e5e13` |
| 140 | `theorem` | [tsum_eq_top_of_eq_top](../../../../GeneralTopology/InstancesENNRealNamespaced.lean/declarations/tsum-eq-top-of-eq-top.md) | 874 | `result-track:0e803ea726a5f5bd69b968945ec10b82c41d682c18a3c7ddcde7f1c09d9b7b5b` |
| 141 | `theorem` | [lt_top_of_tsum_ne_top](../../../../GeneralTopology/InstancesENNRealNamespaced.lean/declarations/lt-top-of-tsum-ne-top.md) | 878 | `result-track:16d0152495e6fbe7bbf43d075c370e5558c7bce418764dba4d9a0e9d9136625f` |
| 142 | `theorem` | [tsum_top](../../../../GeneralTopology/InstancesENNRealNamespaced.lean/declarations/tsum-top.md) | 885 | `result-track:5b69b7b132369665d032a520a4793b624adfc169816e172bf9ecbc892ef7aa96` |
| 143 | `theorem` | [tsum_const_eq_top_of_ne_zero](../../../../GeneralTopology/InstancesENNRealNamespaced.lean/declarations/tsum-const-eq-top-of-ne-zero.md) | 890 | `result-track:d8b84f1336a6557c304dda07c7dc78a762c8f7846f9d699d53a1bdc4da07ce8c` |
| 144 | `theorem` | [ne_top_of_tsum_ne_top](../../../../GeneralTopology/InstancesENNRealNamespaced.lean/declarations/ne-top-of-tsum-ne-top.md) | 901 | `result-track:1fe36d823b342dab80431ff28e861bf0ab7a416ad374cae68d47e099860f5ffb` |
| 145 | `theorem` | [tsum_mul_left](../../../../GeneralTopology/InstancesENNRealNamespaced.lean/declarations/tsum-mul-left.md) | 905 | `result-track:79c49857c051711891885cf482ed9fb0379b095885cf62791e1881b5940b8270` |
| 146 | `theorem` | [tsum_mul_right](../../../../GeneralTopology/InstancesENNRealNamespaced.lean/declarations/tsum-mul-right.md) | 915 | `result-track:79c8729c55961f64c5f0ca6ef91727d49f48a971afbed7c7b8b072aabfa35b38` |
| 147 | `theorem` | [tsum_const_smul](../../../../GeneralTopology/InstancesENNRealNamespaced.lean/declarations/tsum-const-smul.md) | 919 | `result-track:259cfc36dc38cbd181dd29153a25ac66e8a2f02764e30d8434c3a413c7f6f4da` |
| 148 | `theorem` | [tsum_iSup_eq](../../../../GeneralTopology/InstancesENNRealNamespaced.lean/declarations/tsum-isup-eq.md) | 925 | `result-track:6939151b13c1f852b13aa5ed32dca6467a192bac80b9ed4fb119c05877a4a455` |
| 149 | `theorem` | [hasSum_iff_tendsto_nat](../../../../GeneralTopology/InstancesENNRealNamespaced.lean/declarations/hassum-iff-tendsto-nat-source-edition-2.md) | 929 | `result-track:dc3ad54cde77f6f51616c9cdc49fc01401538483f5de19aa88c6ee613c3786ea` |
| 150 | `theorem` | [tendsto_nat_tsum](../../../../GeneralTopology/InstancesENNRealNamespaced.lean/declarations/tendsto-nat-tsum.md) | 937 | `result-track:e1bdebc0c0b375361f7335e01c6214711fa8f52b577484be0c2576b4b54eab1e` |
| 151 | `theorem` | [toNNReal_apply_of_tsum_ne_top](../../../../GeneralTopology/InstancesENNRealNamespaced.lean/declarations/tonnreal-apply-of-tsum-ne-top.md) | 943 | `result-track:768593928f6f4558423a880980a2d9e36c87f2f315599120bfc531a1cf928568` |
| 152 | `theorem` | [summable_toNNReal_of_tsum_ne_top](../../../../GeneralTopology/InstancesENNRealNamespaced.lean/declarations/summable-tonnreal-of-tsum-ne-top.md) | 948 | `result-track:1ceb2bb99a4d2743f1a9189ceaa278a7ac7badadf33930773040d86665041209` |
| 153 | `theorem` | [tendsto_cofinite_zero_of_tsum_ne_top](../../../../GeneralTopology/InstancesENNRealNamespaced.lean/declarations/tendsto-cofinite-zero-of-tsum-ne-top.md) | 953 | `result-track:6383d7542694433e0c5fb494f139f9b423573ce4ada358ecddf0036c0aca6c6e` |
| 154 | `theorem` | [tendsto_atTop_zero_of_tsum_ne_top](../../../../GeneralTopology/InstancesENNRealNamespaced.lean/declarations/tendsto-attop-zero-of-tsum-ne-top.md) | 962 | `result-track:fbc337eef98b6c251ab68b00babb12ca7dfea14203f1a2d7fffb5acb8ed817c0` |
| 155 | `theorem` | [tendsto_tsum_compl_atTop_zero](../../../../GeneralTopology/InstancesENNRealNamespaced.lean/declarations/tendsto-tsum-compl-attop-zero.md) | 970 | `result-track:9af85c5020fcf1fb95234fb775a83d701ab1344a3c2355d3832908144ff3c717` |
| 156 | `theorem` | [tsum_apply](../../../../GeneralTopology/InstancesENNRealNamespaced.lean/declarations/tsum-apply.md) | 978 | `result-track:914dd7150b58941b5b41e8e549a1d722301950ff1979685d72f0821b9610e1d2` |
| 157 | `theorem` | [tsum_sub](../../../../GeneralTopology/InstancesENNRealNamespaced.lean/declarations/tsum-sub.md) | 983 | `result-track:c85177a3dc37b258dcc18d3b0bc1b3886841dcde4c305c27b6ca3bb2e684bda4` |
| 158 | `theorem` | [tsum_comp_le_tsum_of_injective](../../../../GeneralTopology/InstancesENNRealNamespaced.lean/declarations/tsum-comp-le-tsum-of-injective.md) | 989 | `result-track:d0788b6e224267ed882298c1262dac83417f70724d531747d1a4fe8f128a17ee` |
| 159 | `theorem` | [tsum_le_tsum_comp_of_surjective](../../../../GeneralTopology/InstancesENNRealNamespaced.lean/declarations/tsum-le-tsum-comp-of-surjective.md) | 994 | `result-track:177c71d1cd25364fb81eb23406586841f0b6920663f157e4552a87690a52b9ae` |
| 160 | `theorem` | [tsum_mono_subtype](../../../../GeneralTopology/InstancesENNRealNamespaced.lean/declarations/tsum-mono-subtype.md) | 999 | `result-track:f51d96b3cb95ab1e0addb4eead2c5493ccfce66b31f78a06fadb2bc1b3d8514d` |
| 161 | `theorem` | [tsum_iUnion_le_tsum](../../../../GeneralTopology/InstancesENNRealNamespaced.lean/declarations/tsum-iunion-le-tsum.md) | 1004 | `result-track:d95b030ad84ae7a4446e00e5c542f3f3f2a669ba0083237902bbe170ff3bb713` |
| 162 | `theorem` | [tsum_biUnion_le_tsum](../../../../GeneralTopology/InstancesENNRealNamespaced.lean/declarations/tsum-biunion-le-tsum.md) | 1010 | `result-track:4baa7d3dd049dd35e792e05cd3c48ab3dbc7be753d978014cbc8ca7045bfb526` |
| 163 | `theorem` | [tsum_biUnion_le](../../../../GeneralTopology/InstancesENNRealNamespaced.lean/declarations/tsum-biunion-le.md) | 1015 | `result-track:fde2ceab81af9fadbcd1ea33f80b90002499c8c8120359d54969aac9d086b71c` |
| 164 | `theorem` | [tsum_iUnion_le](../../../../GeneralTopology/InstancesENNRealNamespaced.lean/declarations/tsum-iunion-le.md) | 1020 | `result-track:c5ad8eed1a4f4afaf36ae90e199f8a2f64584386c9222a5392124cfada1b5f53` |
| 165 | `theorem` | [tsum_union_le](../../../../GeneralTopology/InstancesENNRealNamespaced.lean/declarations/tsum-union-le.md) | 1026 | `result-track:9474bef78b511cfbb8023387a6fbce5ba9af1a9b13385253cf47b0cdb513f530` |
| 166 | `theorem` | [tsum_eq_add_tsum_ite](../../../../GeneralTopology/InstancesENNRealNamespaced.lean/declarations/tsum-eq-add-tsum-ite-source-edition-2.md) | 1032 | `result-track:f5e46f667ce34717c1713560723bf2a88ca3c1176e44b4e16d88721f5bd2fee7` |
| 167 | `theorem` | [tsum_add_one_eq_top](../../../../GeneralTopology/InstancesENNRealNamespaced.lean/declarations/tsum-add-one-eq-top.md) | 1037 | `result-track:29d9f2fe9746cca8ec36c299cd295616294eb5f50486948aaf3e1e51deb6b837` |
| 168 | `theorem` | [finite_const_le_of_tsum_ne_top](../../../../GeneralTopology/InstancesENNRealNamespaced.lean/declarations/finite-const-le-of-tsum-ne-top.md) | 1045 | `result-track:3f21f6159d128dbc7f11006d45afb663e7441fd5dc36a36e29d4417a5eaa7a18` |
| 169 | `theorem` | [finset_card_const_le_le_of_tsum_le](../../../../GeneralTopology/InstancesENNRealNamespaced.lean/declarations/finset-card-const-le-le-of-tsum-le.md) | 1056 | `result-track:066707c13746dcf738b75e0707c1c9b242216c83fd9505c6e321a1624eaf8250` |
| 170 | `theorem` | [tendsto_toReal_iff](../../../../GeneralTopology/InstancesENNRealNamespaced.lean/declarations/tendsto-toreal-iff.md) | 1070 | `result-track:14a96889d1cf42aa197995281ba36bce42e70a8a0af9bbaad90ef796fde61a82` |
| 171 | `theorem` | [tsum_coe_ne_top_iff_summable_coe](../../../../GeneralTopology/InstancesENNRealNamespaced.lean/declarations/tsum-coe-ne-top-iff-summable-coe.md) | 1077 | `result-track:23b00c569f12782b2baa24bc37d6776f658e5abca038a261c39647276df8c929` |
| 172 | `theorem` | [tsum_coe_eq_top_iff_not_summable_coe](../../../../GeneralTopology/InstancesENNRealNamespaced.lean/declarations/tsum-coe-eq-top-iff-not-summable-coe.md) | 1083 | `result-track:4de785e6f1cdb0ab9065b0c447d0578c3237228e41cf100e4a2c5e54ad545b89` |
| 173 | `theorem` | [hasSum_toReal](../../../../GeneralTopology/InstancesENNRealNamespaced.lean/declarations/hassum-toreal.md) | 1088 | `result-track:f1038bc1a8a432a010aa94279bb1adb35f99fa288124d5b0c95fd73d97f181b7` |
| 174 | `theorem` | [summable_toReal](../../../../GeneralTopology/InstancesENNRealNamespaced.lean/declarations/summable-toreal.md) | 1095 | `result-track:0a5b077e24250d63861d9f03ff4826ef021cac9a2805672fe87bd552e46d980a` |
| 175 | `theorem` | [tsum_eq_toNNReal_tsum](../../../../GeneralTopology/InstancesENNRealNamespaced.lean/declarations/tsum-eq-tonnreal-tsum.md) | 1103 | `result-track:e565f6bbd78b90a05a1f3ad23a402d2cbf5c001e1c20173c8d0d35c8be73536e` |
| 176 | `theorem` | [exists_le_hasSum_of_le](../../../../GeneralTopology/InstancesENNRealNamespaced.lean/declarations/exists-le-hassum-of-le.md) | 1112 | `result-track:f26b0fea7d823f44032acddb3e87931bfe56e20564d1bbd42936431a15077e1a` |
| 177 | `theorem` | [summable_of_le](../../../../GeneralTopology/InstancesENNRealNamespaced.lean/declarations/summable-of-le.md) | 1122 | `result-track:2df2690eeff84c33c34b72edbe8c40bd583a117944d99ee3159e2a3755987997` |
| 178 | `theorem` | [Instances ENNReal Namespaced](../../../../GeneralTopology/InstancesENNRealNamespaced.lean/declarations/countable-support-nnreal.md) | 1129 | `result-track:0fa23fab1a4120889193c4b8b2d25115e7ca962b806305a592fc712b6fe27fa6` |
| 179 | `theorem` | [hasSum_iff_tendsto_nat](../../../../GeneralTopology/InstancesENNRealNamespaced.lean/declarations/hassum-iff-tendsto-nat.md) | 1136 | `result-track:248327ef68facd4d81cc1b78b320bcf3cd249646789dd53e8fd6043551bc8cf1` |
| 180 | `theorem` | [not_summable_iff_tendsto_nat_atTop](../../../../GeneralTopology/InstancesENNRealNamespaced.lean/declarations/not-summable-iff-tendsto-nat-attop.md) | 1143 | `result-track:b6bbedcbcb5658907a8afa7299bcf45545e614b78fc86450933c13c180ce9304` |
| 181 | `theorem` | [summable_iff_not_tendsto_nat_atTop](../../../../GeneralTopology/InstancesENNRealNamespaced.lean/declarations/summable-iff-not-tendsto-nat-attop.md) | 1153 | `result-track:639234e4acebeba794686eb7935f93f3eaa54c3c45550e6ded029eef4ed2abd9` |
| 182 | `theorem` | [summable_of_sum_range_le](../../../../GeneralTopology/InstancesENNRealNamespaced.lean/declarations/summable-of-sum-range-le.md) | 1158 | `result-track:7fc7b953ed29d5cd799c775c1f9aae99ec3570285c37f30f8d7a7d96c732b185` |
| 183 | `theorem` | [tsum_le_of_sum_range_le](../../../../GeneralTopology/InstancesENNRealNamespaced.lean/declarations/tsum-le-of-sum-range-le.md) | 1165 | `result-track:52a09c0efeb76ae886c91d7d09918e5d8f1ea7306fdf52b33b13c5feee6c767a` |
| 184 | `theorem` | [tsum_comp_le_tsum_of_inj](../../../../GeneralTopology/InstancesENNRealNamespaced.lean/declarations/tsum-comp-le-tsum-of-inj.md) | 1170 | `result-track:1a8046430bf0778b1c1690fa7c160fe9eea14538285db800723264da51a28167` |
| 185 | `theorem` | [summable_sigma](../../../../GeneralTopology/InstancesENNRealNamespaced.lean/declarations/summable-sigma.md) | 1176 | `result-track:c4f4a6747b7afd0a5a5884b6190f28466420376bb2d7a81433035cf13bf12121` |
| 186 | `theorem` | [indicator_summable](../../../../GeneralTopology/InstancesENNRealNamespaced.lean/declarations/indicator-summable.md) | 1186 | `result-track:56d974ea369a735ca77ad93322059a7271598f5d2eb63ac7f4ac29e066d1b954` |
| 187 | `theorem` | [tsum_indicator_ne_zero](../../../../GeneralTopology/InstancesENNRealNamespaced.lean/declarations/tsum-indicator-ne-zero.md) | 1194 | `result-track:8e531567cb4ad4a6d1e81283de358a0df4c7a024fab7dd053f928d29b676715e` |
| 188 | `theorem` | [tendsto_sum_nat_add](../../../../GeneralTopology/InstancesENNRealNamespaced.lean/declarations/tendsto-sum-nat-add-source-edition-2.md) | 1205 | `result-track:93856a70565847e36307c0ede5e1c9b8fe7a5da6da9e29f3ae5a59ae892966bf` |
| 189 | `theorem` | [hasSum_lt](../../../../GeneralTopology/InstancesENNRealNamespaced.lean/declarations/hassum-lt-source-edition-2.md) | 1211 | `result-track:c4ed6508c50e4dcd66cd2f1785a5f9acef96e35c0ff6518333de3332a8701e33` |
| 190 | `theorem` | [hasSum_strict_mono](../../../../GeneralTopology/InstancesENNRealNamespaced.lean/declarations/hassum-strict-mono.md) | 1219 | `result-track:2d92fc24b799b56f1cc79721970a0343cc96e1433b187e6a31e817868381a668` |
| 191 | `theorem` | [tsum_lt_tsum](../../../../GeneralTopology/InstancesENNRealNamespaced.lean/declarations/tsum-lt-tsum-source-edition-2.md) | 1225 | `result-track:e221511ace593d8b0b941b83a195edd56294128a21d36ac29298a8dbea19e413` |
| 192 | `theorem` | [tsum_strict_mono](../../../../GeneralTopology/InstancesENNRealNamespaced.lean/declarations/tsum-strict-mono.md) | 1231 | `result-track:6165c74b6d656f8c998e254a5350581e53e6502f4e7885ad4d2f203b4cd06078` |
| 193 | `theorem` | [tsum_pos](../../../../GeneralTopology/InstancesENNRealNamespaced.lean/declarations/tsum-pos.md) | 1236 | `result-track:0956fa0a3335e2cc81c4fc2f2a668f3206e70667fd3fcb6fb04a1781d562cc23` |
| 194 | `theorem` | [tsum_eq_add_tsum_ite](../../../../GeneralTopology/InstancesENNRealNamespaced.lean/declarations/tsum-eq-add-tsum-ite.md) | 1241 | `result-track:aa09d043fd3a97487dfc52a2d6a025d525efda6b6bcebd67486928b34c83cd78` |
| 195 | `theorem` | [tsum_toNNReal_eq](../../../../GeneralTopology/InstancesENNRealNamespaced.lean/declarations/tsum-tonnreal-eq.md) | 1252 | `result-track:b09f692113b18a1a42451faa4474bf90f8c7175290fa0fa38af640a70b8e2142` |
| 196 | `theorem` | [tsum_toReal_eq](../../../../GeneralTopology/InstancesENNRealNamespaced.lean/declarations/tsum-toreal-eq.md) | 1258 | `result-track:829b3db7fe79625337ea407087ea3b9f57f18051ca0c41cbb3948a5041e6b849` |
| 197 | `theorem` | [tendsto_sum_nat_add](../../../../GeneralTopology/InstancesENNRealNamespaced.lean/declarations/tendsto-sum-nat-add.md) | 1263 | `result-track:259d12cf5632bef156ca1d2196829aaf1185ccae32fd2fd074230f149c35f52d` |
| 198 | `theorem` | [tsum_le_of_sum_range_le](../../../../GeneralTopology/InstancesENNRealNamespaced.lean/declarations/tsum-le-of-sum-range-le-source-edition-2.md) | 1271 | `result-track:f632870868b62c9a4659bb59285d69699f1166de7ceb3881ba8834bb68e71b7c` |
| 199 | `theorem` | [hasSum_lt](../../../../GeneralTopology/InstancesENNRealNamespaced.lean/declarations/hassum-lt.md) | 1276 | `result-track:66a3235d0371565b6d48513be35afd8cf0c5aaec9396567a163d762388af9b19` |
| 200 | `theorem` | [tsum_lt_tsum](../../../../GeneralTopology/InstancesENNRealNamespaced.lean/declarations/tsum-lt-tsum.md) | 1290 | `result-track:62c4d31aee5d6a90cb3eddeb7604c494b0742d918383710adb2b2f279fb8088f` |
| 201 | `theorem` | [tsum_comp_le_tsum_of_inj](../../../../GeneralTopology/InstancesENNRealNamespaced.lean/declarations/tsum-comp-le-tsum-of-inj-source-edition-2.md) | 1297 | `result-track:bfd26ae74a749f907089c470d8c86544a206471cbb0274d8e89a2cf32cb015e7` |
| 202 | `theorem` | [summable_of_nonneg_of_le](../../../../GeneralTopology/InstancesENNRealNamespaced.lean/declarations/summable-of-nonneg-of-le.md) | 1305 | `result-track:6e216a2a25158400916e91c0d52c6fc9a35e8953cfd388eb1ae23cb72814de3f` |
| 203 | `theorem` | [Summable.toNNReal](../../../../GeneralTopology/InstancesENNRealNamespaced.lean/declarations/summable-tonnreal.md) | 1313 | `result-track:7590d9feecc88c8d16206c65dba296c91444eecb1bbbe3edb8d85922a035f0fc` |
| 204 | `theorem` | [Instances ENNReal Namespaced](../../../../GeneralTopology/InstancesENNRealNamespaced.lean/declarations/countable-support-ennreal.md) | 1320 | `result-track:c306fdf884d867c7b474aa97f53dbf1d441667d9e5cb07ece4b45060484ddcd6` |
| 205 | `theorem` | [hasSum_iff_tendsto_nat_of_nonneg](../../../../GeneralTopology/InstancesENNRealNamespaced.lean/declarations/hassum-iff-tendsto-nat-of-nonneg.md) | 1327 | `result-track:7e086815b64923d7e073bfbbab2cefdba03a4c31f83e8957fbcadb3bea2cfc63` |
| 206 | `theorem` | [ENNReal.ofReal_tsum_of_nonneg](../../../../GeneralTopology/InstancesENNRealNamespaced.lean/declarations/ennreal-ofreal-tsum-of-nonneg.md) | 1334 | `result-track:37425ed5313e28e95f207127540608b3f83f6665a7c5c3877a29e22a463466b0` |
| 207 | `theorem` | [not_summable_iff_tendsto_nat_atTop_of_nonneg](../../../../GeneralTopology/InstancesENNRealNamespaced.lean/declarations/not-summable-iff-tendsto-nat-attop-of-nonneg.md) | 1339 | `result-track:e28c9c38c1fc7f7675676d1cdeb33b2aa80a55fea6f658be60ea48964f70e407` |
| 208 | `theorem` | [summable_iff_not_tendsto_nat_atTop_of_nonneg](../../../../GeneralTopology/InstancesENNRealNamespaced.lean/declarations/summable-iff-not-tendsto-nat-attop-of-nonneg.md) | 1345 | `result-track:8d9b22a09b1c9fff0561df2589cb8e97462eeb818d94a9bcbb993172d05577d5` |
| 209 | `theorem` | [summable_sigma_of_nonneg](../../../../GeneralTopology/InstancesENNRealNamespaced.lean/declarations/summable-sigma-of-nonneg.md) | 1350 | `result-track:9fc97df5458c3f0fb9c363e16f03dd49faf835cece0735ead450d10f6c6779cb` |
| 210 | `theorem` | [summable_prod_of_nonneg](../../../../GeneralTopology/InstancesENNRealNamespaced.lean/declarations/summable-prod-of-nonneg.md) | 1356 | `result-track:96a8c15787586681f053124ccfa5569ec6acee6bbdbbda93cd4c4c76acfdb927` |
| 211 | `theorem` | [summable_of_sum_le](../../../../GeneralTopology/InstancesENNRealNamespaced.lean/declarations/summable-of-sum-le.md) | 1360 | `result-track:fcbe21c2040d8e79c3aca035c85d457d09f30d6ddb3dd0ef48fa0665dd4fe512` |
| 212 | `theorem` | [summable_of_sum_range_le](../../../../GeneralTopology/InstancesENNRealNamespaced.lean/declarations/summable-of-sum-range-le-source-edition-2.md) | 1366 | `result-track:da57988ce99f318b8ecf027bf6a639acb937cd65d78e226eda69bc806924ff2f` |
| 213 | `theorem` | [Real.tsum_le_of_sum_range_le](../../../../GeneralTopology/InstancesENNRealNamespaced.lean/declarations/real-tsum-le-of-sum-range-le.md) | 1373 | `result-track:5ab4b21275f6d4dbdef6bdeeb7677f37dab521950d69a48d413b6f181b40b883` |
| 214 | `theorem` | [tsum_lt_tsum_of_nonneg](../../../../GeneralTopology/InstancesENNRealNamespaced.lean/declarations/tsum-lt-tsum-of-nonneg.md) | 1381 | `result-track:b767592a511195afda360d4931e35442e0a9b895fcbf6a3a4b53eb441378a6ae` |
| 215 | `theorem` | [edist_ne_top_of_mem_ball](../../../../GeneralTopology/InstancesENNRealNamespaced.lean/declarations/edist-ne-top-of-mem-ball.md) | 1393 | `result-track:0dab815f3ee8df2ffea96738f013d9bd894b8bb02741e3476e6ea7c67a1927b4` |
| 216 | `def` | [metricSpaceEMetricBall](../../../../GeneralTopology/InstancesENNRealNamespaced.lean/declarations/metricspaceemetricball.md) | 1403 | `declaration-track:cfd7808411aca2d86da53848bbbaad89a2f39712164670dd19cbfe1a5e057a73` |
| 217 | `theorem` | [nhds_eq_nhds_emetric_ball](../../../../GeneralTopology/InstancesENNRealNamespaced.lean/declarations/nhds-eq-nhds-emetric-ball.md) | 1407 | `result-track:2f17d0cccee9ec5b0fa0b215f23fe024068ae629cf11352da0d04f5bbf299cec` |
| 218 | `theorem` | [tendsto_iff_edist_tendsto_0](../../../../GeneralTopology/InstancesENNRealNamespaced.lean/declarations/tendsto-iff-edist-tendsto-0.md) | 1420 | `result-track:edc2a7035d2065c69331b1fadc4d7f65a99d51c9113329dbb8b17b215dd12c20` |
| 219 | `theorem` | [EMetric.cauchySeq_iff_le_tendsto_0](../../../../GeneralTopology/InstancesENNRealNamespaced.lean/declarations/emetric-cauchyseq-iff-le-tendsto-0.md) | 1428 | `result-track:3feb840996a7c814600c99a04a6d013135be59b2ee6c5e232e6450322aead40c` |
| 220 | `theorem` | [continuous_of_le_add_edist](../../../../GeneralTopology/InstancesENNRealNamespaced.lean/declarations/continuous-of-le-add-edist.md) | 1451 | `result-track:e0294e9bbf935462216e46ab7e5309c98f6c0e0bbbf76119f22e655ca530e1f4` |
| 221 | `theorem` | [continuous_edist](../../../../GeneralTopology/InstancesENNRealNamespaced.lean/declarations/continuous-edist-source-edition-2.md) | 1462 | `result-track:777b9ae946d4d8fa6c357869593e7bce93c8ef22dc544dccbd1f548b0b7fb679` |
| 222 | `theorem` | [Continuous.edist](../../../../GeneralTopology/InstancesENNRealNamespaced.lean/declarations/continuous-edist.md) | 1474 | `result-track:534103a777a072996bc8da51c2441caabfa2c432591beae2113d0be652664508` |
| 223 | `theorem` | [Filter.Tendsto.edist](../../../../GeneralTopology/InstancesENNRealNamespaced.lean/declarations/filter-tendsto-edist.md) | 1479 | `result-track:93dd7bf64f240c782ef8aeb6a55867eed81d318c70df69f27390a1b40fbb64f3` |
| 224 | `theorem` | [cauchySeq_of_edist_le_of_tsum_ne_top](../../../../GeneralTopology/InstancesENNRealNamespaced.lean/declarations/cauchyseq-of-edist-le-of-tsum-ne-top.md) | 1484 | `result-track:cd235bc0e2c035f1c0b69e83593f42bea4e451f047a7ea4385a46788972478b1` |
| 225 | `theorem` | [EMetric.isClosed_ball](../../../../GeneralTopology/InstancesENNRealNamespaced.lean/declarations/emetric-isclosed-ball.md) | 1491 | `result-track:cf2fd8ff59d1e6dc05e51dbc1d3504b642fd3db03f3573554b5fc79e70e398c9` |
| 226 | `theorem` | [EMetric.diam_closure](../../../../GeneralTopology/InstancesENNRealNamespaced.lean/declarations/emetric-diam-closure.md) | 1496 | `result-track:9a56073fc875b6698bc9c1c8961cdcc3d3683c68e85eb391077f58eb0abeeb2c` |
| 227 | `theorem` | [Metric.diam_closure](../../../../GeneralTopology/InstancesENNRealNamespaced.lean/declarations/metric-diam-closure.md) | 1504 | `result-track:2e8fcd1ee90593d42b79e26e652c12b8c7d47b4f3f78bb0fcdac1da55656b1e5` |
| 228 | `theorem` | [isClosed_setOf_lipschitzOnWith](../../../../GeneralTopology/InstancesENNRealNamespaced.lean/declarations/isclosed-setof-lipschitzonwith.md) | 1508 | `result-track:bdc8f3778dc6d4256867f3c73d263234e5d41c4876be6d28ec4d2a506fc49719` |
| 229 | `theorem` | [isClosed_setOf_lipschitzWith](../../../../GeneralTopology/InstancesENNRealNamespaced.lean/declarations/isclosed-setof-lipschitzwith.md) | 1515 | `result-track:6f3289559811df48d60ee66a3ca4fe91a551407a5ceade75f6eb546cb4769acc` |
| 230 | `theorem` | [ediam_eq](../../../../GeneralTopology/InstancesENNRealNamespaced.lean/declarations/ediam-eq.md) | 1524 | `result-track:c432258388abbd99e7c918cfa296ebc2d58f432ed25fda0256e10253fcd33bb5` |
| 231 | `theorem` | [diam_eq](../../../../GeneralTopology/InstancesENNRealNamespaced.lean/declarations/diam-eq.md) | 1540 | `result-track:694fdfe424f88aefe4b5b6e84b40f7b0d40ec684a6922b90fb91e57ced9eadfc` |
| 232 | `theorem` | [ediam_Ioo](../../../../GeneralTopology/InstancesENNRealNamespaced.lean/declarations/ediam-ioo.md) | 1547 | `result-track:53a315bd1e6e5c7a0d5dbe9c64700c1a5003faefccd8221bbf4fd39a24d3156e` |
| 233 | `theorem` | [ediam_Icc](../../../../GeneralTopology/InstancesENNRealNamespaced.lean/declarations/ediam-icc.md) | 1554 | `result-track:fb32e88940a6e1a1caa64904409a52081522de625dcc1b2ddbdd2de73ee6a190` |
| 234 | `theorem` | [ediam_Ico](../../../../GeneralTopology/InstancesENNRealNamespaced.lean/declarations/ediam-ico.md) | 1561 | `result-track:17e9915e518c4576d93d4150ceaa5e69434e791ea47d51dbc04e730adb19567e` |
| 235 | `theorem` | [ediam_Ioc](../../../../GeneralTopology/InstancesENNRealNamespaced.lean/declarations/ediam-ioc.md) | 1567 | `result-track:90b175869469a067d37a778eee0c73379c6378e8c3d702d2770845b500cfaefd` |
| 236 | `theorem` | [diam_Icc](../../../../GeneralTopology/InstancesENNRealNamespaced.lean/declarations/diam-icc.md) | 1572 | `result-track:52e1bb6f3ce19c1fe56f021662d42210c71a60292cd9e4f05adfbdbc8844e029` |
| 237 | `theorem` | [diam_Ico](../../../../GeneralTopology/InstancesENNRealNamespaced.lean/declarations/diam-ico.md) | 1576 | `result-track:04d5e585308b3d028224917e1c7c421c836c1096082ea0213e1ac8022cc7fd9d` |
| 238 | `theorem` | [diam_Ioc](../../../../GeneralTopology/InstancesENNRealNamespaced.lean/declarations/diam-ioc.md) | 1580 | `result-track:5c5b2dd7dd4999242a72cfb47433ce1d290f5ace699cf3489822ad1bcc6937d9` |
| 239 | `theorem` | [diam_Ioo](../../../../GeneralTopology/InstancesENNRealNamespaced.lean/declarations/diam-ioo.md) | 1584 | `result-track:ba008d0ea90fddbb1d125f50665450f513d31ebd572773328cf4bae739e6b7d6` |
| 240 | `theorem` | [edist_le_tsum_of_edist_le_of_tendsto](../../../../GeneralTopology/InstancesENNRealNamespaced.lean/declarations/edist-le-tsum-of-edist-le-of-tendsto-source-edition-2.md) | 1592 | `result-track:f9547b1da937f6aaf12a7d8bb9536089be9ed2c65dbcd0e64b9accceac3d565b` |
| 241 | `theorem` | [edist_le_tsum_of_edist_le_of_tendsto₀](../../../../GeneralTopology/InstancesENNRealNamespaced.lean/declarations/edist-le-tsum-of-edist-le-of-tendsto.md) | 1603 | `result-track:38472ed168c65c3a0c21f059071dbf52e560fcc421ce161a5a853300a8afcedf` |
| 242 | `lemma` | [limsup_sub_const](../../../../GeneralTopology/InstancesENNRealNamespaced.lean/declarations/limsup-sub-const.md) | 1615 | `result-track:02cc7c009e562df076f6e23288ac59366e38e37fcd818bbb719bc9630a1e2b72` |
| 243 | `lemma` | [liminf_sub_const](../../../../GeneralTopology/InstancesENNRealNamespaced.lean/declarations/liminf-sub-const.md) | 1620 | `result-track:ff2968053ae751d32b7615a6155ca947f00270e51656a9644f5de6a79f4f18a0` |
| 244 | `lemma` | [limsup_const_sub](../../../../GeneralTopology/InstancesENNRealNamespaced.lean/declarations/limsup-const-sub.md) | 1625 | `result-track:0aa61975513bf63fc22e86ac097d05a663de7cd5938ebea4166177ab0b4fbbfe` |
| 245 | `lemma` | [liminf_const_sub](../../../../GeneralTopology/InstancesENNRealNamespaced.lean/declarations/liminf-const-sub.md) | 1631 | `result-track:255edc107f835c1744b2a8e76a2f4706daf48dfebac38992e7a4c64404b341d2` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=98d033fbc60e16bdb01f8eb4fb5ef22af2186ea259f521adf7b2fffe2ef52cb8 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/ENNReal/Variant410cb03a446bf07b910ba3e08c293a3005379432b0caf58e0a7bc3ecd50282f9.lean","GRWTSK/_verification/specifications/Topology/GeneralTopology/ENNReal/Variant410cb03a446bf07b910ba3e08c293a3005379432b0caf58e0a7bc3ecd50282f9.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
