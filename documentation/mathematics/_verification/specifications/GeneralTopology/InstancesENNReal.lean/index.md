# Verification target: Instances ENNReal

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2178a4bd5c2665c9cb5596199ee5c4ef842991c1",
  "lexical_observation_count": 245,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/ENNReal/Variant6dccd5c1abe8c1e96286ef89682bf3f0927a6e27f33392dd893e98feab7be245.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../GeneralTopology/InstancesENNReal.lean/index.md) · [Full source](../../../../GeneralTopology/InstancesENNReal.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2178a4bd5c2665c9cb5596199ee5c4ef842991c1`.

Source path: `GRWTSK/Topology/GeneralTopology/ENNReal/Variant6dccd5c1abe8c1e96286ef89682bf3f0927a6e27f33392dd893e98feab7be245.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/ENNReal/Variant6dccd5c1abe8c1e96286ef89682bf3f0927a6e27f33392dd893e98feab7be245.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Topology.Instances.NNReal` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Algebra.Order.MonotoneContinuity` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Algebra.InfiniteSum.Real` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Algebra.Order.LiminfLimsup` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Algebra.Order.T5` — import line 10; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.MetricSpace.Lipschitz` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [(anonymous)](../../../../GeneralTopology/InstancesENNReal.lean/declarations/instance-source-edition-3.md) | 38 | `declaration-track:811399263ab7d60d8c90bc5352765031e18cf21a157c11c43a720fd6aab641d5` |
| 2 | `instance` | [(anonymous)](../../../../GeneralTopology/InstancesENNReal.lean/declarations/instance-source-edition-5.md) | 40 | `declaration-track:8e023813b49086314f91204c4434b8192f96f5b42815a59cc1a963df46688244` |
| 3 | `instance` | [(anonymous)](../../../../GeneralTopology/InstancesENNReal.lean/declarations/instance-source-edition-8.md) | 43 | `declaration-track:e0f7c929970a7f7219cacf3984ce981c1487718b556c56cb7192b013b0a7f272` |
| 4 | `instance` | [(anonymous)](../../../../GeneralTopology/InstancesENNReal.lean/declarations/instance-source-edition-4.md) | 44 | `declaration-track:8dec51792d17557e2a03902776e318e2a0b754381df5adb51e8943b6313ea32a` |
| 5 | `instance` | [(anonymous)](../../../../GeneralTopology/InstancesENNReal.lean/declarations/instance-source-edition-6.md) | 45 | `declaration-track:9e9b3c6c30bfe551a11a7db171a2eed73b2adda5d127d6cb30a909d18b135c7b` |
| 6 | `instance` | [(anonymous)](../../../../GeneralTopology/InstancesENNReal.lean/declarations/instance-source-edition-7.md) | 47 | `declaration-track:dcb551ef02d9a128d3cb95aa21073ef10d6159e9ae8fc899881df7525ec8c6c4` |
| 7 | `theorem` | [embedding_coe](../../../../GeneralTopology/InstancesENNReal.lean/declarations/embedding-coe.md) | 50 | `result-track:da82d8773130edda45b7d16d5784affb9bd072943aeb47f8cc1f6fe5ac3ebd85` |
| 8 | `theorem` | [isOpen_ne_top](../../../../GeneralTopology/InstancesENNReal.lean/declarations/isopen-ne-top.md) | 54 | `result-track:03ab056937c2e0c33360432df45f9b2dd9fd3ad78f58756dea2f39b3f8101f30` |
| 9 | `theorem` | [isOpen_Ico_zero](../../../../GeneralTopology/InstancesENNReal.lean/declarations/isopen-ico-zero.md) | 57 | `result-track:c133d8a999beef504d129d3ccbdf6d5132e362ebf99dbc267b1ceb38b7a8b50c` |
| 10 | `theorem` | [openEmbedding_coe](../../../../GeneralTopology/InstancesENNReal.lean/declarations/openembedding-coe.md) | 62 | `result-track:ce92c0be1bec2bf4ffe93a353d5439fdde17ea9e4d2f61ec42c8e7a9baec58b3` |
| 11 | `theorem` | [coe_range_mem_nhds](../../../../GeneralTopology/InstancesENNReal.lean/declarations/coe-range-mem-nhds.md) | 66 | `result-track:87f98342c0bf5a56db785484f183e35332a59e16596e7c602e2bf15db935face` |
| 12 | `theorem` | [tendsto_coe](../../../../GeneralTopology/InstancesENNReal.lean/declarations/tendsto-coe.md) | 71 | `result-track:e0353accba8c32a3218a6e5519809b456c0ad0f7dabcb8a6d2f62126b8cdf539` |
| 13 | `theorem` | [continuous_coe](../../../../GeneralTopology/InstancesENNReal.lean/declarations/continuous-coe.md) | 76 | `result-track:c66b93a577795e31ce810275b282410b77bf15f895db92936d33159469db9fec` |
| 14 | `theorem` | [continuous_coe_iff](../../../../GeneralTopology/InstancesENNReal.lean/declarations/continuous-coe-iff.md) | 80 | `result-track:e54ac1ca436a8b4b81267727d24d70f8badb0eae1e0f0ca0fb516e7dd61ceef6` |
| 15 | `theorem` | [nhds_coe](../../../../GeneralTopology/InstancesENNReal.lean/declarations/nhds-coe.md) | 85 | `result-track:6216ea4a2fca7552c38b3996d66b7eff2bd3b18f0cbcdef12cc60f3c3158c2aa` |
| 16 | `theorem` | [tendsto_nhds_coe_iff](../../../../GeneralTopology/InstancesENNReal.lean/declarations/tendsto-nhds-coe-iff.md) | 89 | `result-track:1a99505120e1569219519330723195d5ba9b1c8ae161552f8d0dd5097b89a2fd` |
| 17 | `theorem` | [continuousAt_coe_iff](../../../../GeneralTopology/InstancesENNReal.lean/declarations/continuousat-coe-iff.md) | 94 | `result-track:edb5e4fc17304e8f932db1e2fca6271c8b8b19962f98cc15a6e5ae57d4523d9b` |
| 18 | `theorem` | [nhds_coe_coe](../../../../GeneralTopology/InstancesENNReal.lean/declarations/nhds-coe-coe.md) | 99 | `result-track:36d3809fc2715188c03b52a903091b0ca4cab44055a4e432e8318cf2038b365d` |
| 19 | `theorem` | [continuous_ofReal](../../../../GeneralTopology/InstancesENNReal.lean/declarations/continuous-ofreal.md) | 104 | `result-track:bd5f2f04260a92410eb276ac9157ae4c6050d0ec85892cb869f6b32b0e16b20a` |
| 20 | `theorem` | [tendsto_ofReal](../../../../GeneralTopology/InstancesENNReal.lean/declarations/tendsto-ofreal.md) | 108 | `result-track:971bae32f398eb771913a6e957af098f0fcac521b766b860abca54bcda2478fe` |
| 21 | `theorem` | [tendsto_toNNReal](../../../../GeneralTopology/InstancesENNReal.lean/declarations/tendsto-tonnreal.md) | 113 | `result-track:cce8e185ca152f85b836dd7a2eda6991c3e16afc503834365bb9ee3dd87acc32` |
| 22 | `theorem` | [eventuallyEq_of_toReal_eventuallyEq](../../../../GeneralTopology/InstancesENNReal.lean/declarations/eventuallyeq-of-toreal-eventuallyeq.md) | 120 | `result-track:c4c8ef48a01f8275535e0a3d64363409c0e2051fc75ee040c0f58d38e54f32cb` |
| 23 | `theorem` | [continuousOn_toNNReal](../../../../GeneralTopology/InstancesENNReal.lean/declarations/continuouson-tonnreal.md) | 127 | `result-track:98b980401be9c72ae1ff28169338b2dafcd74722297238618b17b39f35703290` |
| 24 | `theorem` | [tendsto_toReal](../../../../GeneralTopology/InstancesENNReal.lean/declarations/tendsto-toreal.md) | 131 | `result-track:8fd523410c508b8148a8573caa66ed32d7c3170f0f876d66be4092f61b89ed80` |
| 25 | `def` | [neTopHomeomorphNNReal](../../../../GeneralTopology/InstancesENNReal.lean/declarations/netophomeomorphnnreal.md) | 136 | `declaration-track:1b560dcfee7f2767d39cef4c24ef35dab04c353048e76405af4d443b0735852f` |
| 26 | `def` | [ltTopHomeomorphNNReal](../../../../GeneralTopology/InstancesENNReal.lean/declarations/lttophomeomorphnnreal.md) | 143 | `declaration-track:e5938c4232647489a85238d33dd3d70568d6d031103b54fda026d2d8346f6db8` |
| 27 | `theorem` | [nhds_top](../../../../GeneralTopology/InstancesENNReal.lean/declarations/nhds-top.md) | 148 | `result-track:39a69508a12b4e2d9f4733dcea03c79dd3e025d5f0855184dd6a358a33d3270c` |
| 28 | `theorem` | [nhds_top'](../../../../GeneralTopology/InstancesENNReal.lean/declarations/nhds-top-source-edition-2.md) | 152 | `result-track:47522b65706857a185060f944d898a01cdb607452989e972b7129daef4f124ee` |
| 29 | `theorem` | [nhds_top_basis](../../../../GeneralTopology/InstancesENNReal.lean/declarations/nhds-top-basis.md) | 156 | `result-track:7bb7fe00c717b700c9dbd132d513415bfa1300d729164ad6200f72b1da4c27e5` |
| 30 | `theorem` | [tendsto_nhds_top_iff_nnreal](../../../../GeneralTopology/InstancesENNReal.lean/declarations/tendsto-nhds-top-iff-nnreal.md) | 160 | `result-track:589ff0d6329deb0d4d63d1659290e1e45619df98241c9f0c408511c28e00de45` |
| 31 | `theorem` | [tendsto_nhds_top_iff_nat](../../../../GeneralTopology/InstancesENNReal.lean/declarations/tendsto-nhds-top-iff-nat.md) | 165 | `result-track:e600f36fa3fe25924681afef984def818aee75463fea08da17420199aebca1bd` |
| 32 | `theorem` | [tendsto_nhds_top](../../../../GeneralTopology/InstancesENNReal.lean/declarations/tendsto-nhds-top.md) | 173 | `result-track:487f1ef62bcbcde41083afee0ed9c333c6b24b62fa5c577256dce5ce6e93bd7e` |
| 33 | `theorem` | [tendsto_nat_nhds_top](../../../../GeneralTopology/InstancesENNReal.lean/declarations/tendsto-nat-nhds-top.md) | 178 | `result-track:c26dcfa2dffc3adeaf887916c597085fb1cf10c693cc8ef9be312eedf26961c8` |
| 34 | `theorem` | [tendsto_coe_nhds_top](../../../../GeneralTopology/InstancesENNReal.lean/declarations/tendsto-coe-nhds-top.md) | 184 | `result-track:7950edc7628da3a0167710027ff12594ea71f46cf247017b3cd5279ec13013df` |
| 35 | `theorem` | [tendsto_ofReal_atTop](../../../../GeneralTopology/InstancesENNReal.lean/declarations/tendsto-ofreal-attop.md) | 189 | `result-track:d7f3ebc04958845c9e103236a69def8c26a3515b845bc3b8c07f39ccc14a3631` |
| 36 | `theorem` | [nhds_zero](../../../../GeneralTopology/InstancesENNReal.lean/declarations/nhds-zero.md) | 193 | `result-track:894a5c1d4b5b3857478a518bd312e7719aafaff9d99144aeabad022c64958244` |
| 37 | `theorem` | [nhds_zero_basis](../../../../GeneralTopology/InstancesENNReal.lean/declarations/nhds-zero-basis.md) | 197 | `result-track:1490eb070f9b187b50abcd8f890f37660916f881c09c77c55f9b9d6e76a6f99d` |
| 38 | `theorem` | [nhds_zero_basis_Iic](../../../../GeneralTopology/InstancesENNReal.lean/declarations/nhds-zero-basis-iic.md) | 201 | `result-track:94f6b53f16d69568c23a6c7512f0b9851fceb206afe5a9b4497bee5964b4d4a8` |
| 39 | `theorem` | [nhdsWithin_Ioi_coe_neBot](../../../../GeneralTopology/InstancesENNReal.lean/declarations/nhdswithin-ioi-coe-nebot.md) | 207 | `result-track:e178c4fa6a4555097b7f920684ae382399ebc8750c98d0670303c84fede25e2b` |
| 40 | `theorem` | [nhdsWithin_Ioi_zero_neBot](../../../../GeneralTopology/InstancesENNReal.lean/declarations/nhdswithin-ioi-zero-nebot.md) | 212 | `result-track:5597a9edaf0e8f534df49834691e34af5b3f60bf8dc46837e0213d4b48fc404e` |
| 41 | `theorem` | [nhdsWithin_Ioi_one_neBot](../../../../GeneralTopology/InstancesENNReal.lean/declarations/nhdswithin-ioi-one-nebot.md) | 217 | `result-track:51d0d50e61bf55651e55bd5fdabaecfbbc347a6c12c3ad53a2af66b26294cbbc` |
| 42 | `theorem` | [nhdsWithin_Ioi_nat_neBot](../../../../GeneralTopology/InstancesENNReal.lean/declarations/nhdswithin-ioi-nat-nebot.md) | 220 | `result-track:ead184b858a9b23e1cea458593e16b4973c2ff2ef5b53912d06e9974fb77cb0a` |
| 43 | `theorem` | [nhdsWithin_Ioi_ofNat_nebot](../../../../GeneralTopology/InstancesENNReal.lean/declarations/nhdswithin-ioi-ofnat-nebot.md) | 223 | `result-track:309f5f8af0d392c6e796d66df102ad650b885fc720a9f2c8626ba12db254bb90` |
| 44 | `theorem` | [nhdsWithin_Iio_neBot](../../../../GeneralTopology/InstancesENNReal.lean/declarations/nhdswithin-iio-nebot.md) | 227 | `result-track:9cc7522a96a560de6c33a568e45281760bfa3f82cedfc657a68a7f2894d78c3e` |
| 45 | `theorem` | [hasBasis_nhds_of_ne_top'](../../../../GeneralTopology/InstancesENNReal.lean/declarations/hasbasis-nhds-of-ne-top-source-edition-2.md) | 234 | `result-track:d1f2680830c625a2eeed935e2b084da60016d393a3c3c096a6de61e5a873b300` |
| 46 | `theorem` | [hasBasis_nhds_of_ne_top](../../../../GeneralTopology/InstancesENNReal.lean/declarations/hasbasis-nhds-of-ne-top.md) | 249 | `result-track:7d98c49107a312445cdaf78b4b5f8ed10cc23b4cf5c607b012819dbd4dbe64b4` |
| 47 | `theorem` | [Icc_mem_nhds](../../../../GeneralTopology/InstancesENNReal.lean/declarations/icc-mem-nhds.md) | 253 | `result-track:3e877f735181bba3923364f7601cb705f80b2fff5330193a06418e9f7963bdf2` |
| 48 | `theorem` | [nhds_of_ne_top](../../../../GeneralTopology/InstancesENNReal.lean/declarations/nhds-of-ne-top.md) | 257 | `result-track:08ba281165cf8e8af809fa4e3cfbea4ee4979d73200938433e1d72dbba030192` |
| 49 | `theorem` | [biInf_le_nhds](../../../../GeneralTopology/InstancesENNReal.lean/declarations/biinf-le-nhds.md) | 261 | `result-track:710370618b3c7319442cb0b2affc4277428604b14a95690bd4b1404f32755214` |
| 50 | `theorem` | [tendsto_nhds_of_Icc](../../../../GeneralTopology/InstancesENNReal.lean/declarations/tendsto-nhds-of-icc.md) | 267 | `result-track:4512612badf10cf5d2855ecc2aab150958003d3847cf779450bbae19f4d0159e` |
| 51 | `theorem` | [tendsto_nhds](../../../../GeneralTopology/InstancesENNReal.lean/declarations/tendsto-nhds.md) | 274 | `result-track:8dbb2d7fda059f141888f92cba4bffbd7cbf75891dbb8a7c245ffb93125afd25` |
| 52 | `theorem` | [tendsto_nhds_zero](../../../../GeneralTopology/InstancesENNReal.lean/declarations/tendsto-nhds-zero.md) | 279 | `result-track:21485aca3ad7b6be6d662f8286e17de30d5b2f374192e7650f99388fe03c822e` |
| 53 | `theorem` | [tendsto_atTop](../../../../GeneralTopology/InstancesENNReal.lean/declarations/tendsto-attop.md) | 284 | `result-track:840af9f3aac53c4defa5a6cb36ca81c42dd6c5af036d946b6c924817fcd599ad` |
| 54 | `instance` | [(anonymous)](../../../../GeneralTopology/InstancesENNReal.lean/declarations/instance.md) | 289 | `declaration-track:128a56e559f38ca97eda821351eedb46e749320e1092a1591646efd31ef604fe` |
| 55 | `theorem` | [tendsto_atTop_zero](../../../../GeneralTopology/InstancesENNReal.lean/declarations/tendsto-attop-zero.md) | 298 | `result-track:9ae30cab4992192ddb8e978d2d3046b3da57a30aae3bf9ad2d8da1e8deeee18d` |
| 56 | `theorem` | [tendsto_sub](../../../../GeneralTopology/InstancesENNReal.lean/declarations/tendsto-sub.md) | 303 | `result-track:4b521741436c02db470a7f7bc79b59cd3f8e55d0c5d5960a495f886bf7846c90` |
| 57 | `theorem` | [Tendsto.sub](../../../../GeneralTopology/InstancesENNReal.lean/declarations/tendsto-sub-source-edition-2.md) | 324 | `result-track:81ae726c4ede359ea6deb3e649a7a2bd152af7da4afc5f6c81332ac3ad6840f0` |
| 58 | `theorem` | [tendsto_mul](../../../../GeneralTopology/InstancesENNReal.lean/declarations/tendsto-mul-source-edition-2.md) | 331 | `result-track:afcfeb9e4b5ce023d5e5609743e787bfdab86c130c3db079a26ed61a374d0f87` |
| 59 | `theorem` | [Tendsto.mul](../../../../GeneralTopology/InstancesENNReal.lean/declarations/tendsto-mul.md) | 353 | `result-track:775e7d54a1fc97cbb0ac2c407e970472b400ac1b4497a36102b281328ef63ce5` |
| 60 | `theorem` | [_root_.ContinuousOn.ennreal_mul](../../../../GeneralTopology/InstancesENNReal.lean/declarations/root-continuouson-ennreal-mul.md) | 360 | `result-track:6b94b4523ebbe604befb1d9e1e221a3d99c3e09e754d9f4ba0c9f65d5c25db3a` |
| 61 | `theorem` | [_root_.Continuous.ennreal_mul](../../../../GeneralTopology/InstancesENNReal.lean/declarations/root-continuous-ennreal-mul.md) | 366 | `result-track:74ab0bfdff3a6760b9993fb94c4d6e71c2b55fbaaf9c0c26c9af6633e571473b` |
| 62 | `theorem` | [Tendsto.const_mul](../../../../GeneralTopology/InstancesENNReal.lean/declarations/tendsto-const-mul.md) | 373 | `result-track:49343b9b8d1adfe2ecd091e4322a6a715ad8e1fc120c2d039689d4544719433f` |
| 63 | `theorem` | [Tendsto.mul_const](../../../../GeneralTopology/InstancesENNReal.lean/declarations/tendsto-mul-const.md) | 379 | `result-track:29c2986b49c99948b3309c901cb1d8415db0e665227e9ebd092540415a2280cc` |
| 64 | `theorem` | [tendsto_finset_prod_of_ne_top](../../../../GeneralTopology/InstancesENNReal.lean/declarations/tendsto-finset-prod-of-ne-top.md) | 384 | `result-track:8e977fc5267a64efa62aac888e84a403d4ce015d54eb5042277c105fb1ef2a00` |
| 65 | `theorem` | [continuousAt_const_mul](../../../../GeneralTopology/InstancesENNReal.lean/declarations/continuousat-const-mul.md) | 398 | `result-track:54ccb261751c0da080416cd3c6662a3956cb780322783c4a81bd33fda525f9de` |
| 66 | `theorem` | [continuousAt_mul_const](../../../../GeneralTopology/InstancesENNReal.lean/declarations/continuousat-mul-const.md) | 403 | `result-track:f0ea8e9315d3cde5cb87f68e1663c67e8976faca40f81dad46bfe3ea84cc1a44` |
| 67 | `theorem` | [continuous_const_mul](../../../../GeneralTopology/InstancesENNReal.lean/declarations/continuous-const-mul.md) | 408 | `result-track:f948a2bdbbf46c56a635794f6aa042bb4c7daa4ba481d3acfb89b01619b5ec11` |
| 68 | `theorem` | [continuous_mul_const](../../../../GeneralTopology/InstancesENNReal.lean/declarations/continuous-mul-const.md) | 412 | `result-track:0a6595dd5828b85e3e3131b86003bde07669e571daa719fd068ec0925e54abf3` |
| 69 | `theorem` | [continuous_div_const](../../../../GeneralTopology/InstancesENNReal.lean/declarations/continuous-div-const.md) | 416 | `result-track:2e7c2fc132d3ce308932d3321c974a2ddd117fa40a21681a79b83987bb773468` |
| 70 | `theorem` | [continuous_pow](../../../../GeneralTopology/InstancesENNReal.lean/declarations/continuous-pow.md) | 424 | `result-track:b4f2781ea49202eba0828bd1477e18c7d98cb5e42deac353c4aa599bba79a800` |
| 71 | `theorem` | [continuousOn_sub](../../../../GeneralTopology/InstancesENNReal.lean/declarations/continuouson-sub.md) | 437 | `result-track:10613c157b8961bf33adff4eb07b5de8f8aff79ab870fa567589777c8fe211b2` |
| 72 | `theorem` | [continuous_sub_left](../../../../GeneralTopology/InstancesENNReal.lean/declarations/continuous-sub-left.md) | 445 | `result-track:39108bdcf2d9ef37e55e9e362b4b61ff485069fbc8fdd54abc5049c58000d6ca` |
| 73 | `theorem` | [continuous_nnreal_sub](../../../../GeneralTopology/InstancesENNReal.lean/declarations/continuous-nnreal-sub.md) | 451 | `result-track:1935b9bb03edbee9019e0a93ed23cfc892d282a40bfe98a136ceae24dbc5a2bb` |
| 74 | `theorem` | [continuousOn_sub_left](../../../../GeneralTopology/InstancesENNReal.lean/declarations/continuouson-sub-left.md) | 455 | `result-track:3cfbc1df42f9cd0a489c1903e02f13e2f0e507e589b74712a2c51a281164e9e7` |
| 75 | `theorem` | [continuous_sub_right](../../../../GeneralTopology/InstancesENNReal.lean/declarations/continuous-sub-right.md) | 462 | `result-track:01071d06a0624f59beee2810e761f543491bd28f4bcb3d82939397fc6a2b2c33` |
| 76 | `theorem` | [Tendsto.pow](../../../../GeneralTopology/InstancesENNReal.lean/declarations/tendsto-pow.md) | 471 | `result-track:d272516fc79845f22dca1a1597a616d680685a83d5ad6b7cdd96d30086cfe5df` |
| 77 | `theorem` | [le_of_forall_lt_one_mul_le](../../../../GeneralTopology/InstancesENNReal.lean/declarations/le-of-forall-lt-one-mul-le.md) | 476 | `result-track:06f60bdf701e840dcaf5032005fa6bab93cc8be2b1d03acc40de66255330a8ca` |
| 78 | `theorem` | [iInf_mul_left'](../../../../GeneralTopology/InstancesENNReal.lean/declarations/iinf-mul-left-source-edition-2.md) | 483 | `result-track:910bd752755b7c291deae1ddfec9619880b367f9fec2fb6413c474ae4fff51ef` |
| 79 | `theorem` | [iInf_mul_left](../../../../GeneralTopology/InstancesENNReal.lean/declarations/iinf-mul-left.md) | 497 | `result-track:7f6c9b79ab22266315c0c46e9376096bad32709b5add166fd4170719b49683eb` |
| 80 | `theorem` | [iInf_mul_right'](../../../../GeneralTopology/InstancesENNReal.lean/declarations/iinf-mul-right.md) | 502 | `result-track:5b8af54996d2b57ff6f7245663299ece49a482c2a737273581b591230a65d826` |
| 81 | `theorem` | [iInf_mul_right](../../../../GeneralTopology/InstancesENNReal.lean/declarations/iinf-mul-right-source-edition-2.md) | 507 | `result-track:6907cc27fe9bacf02b3160673bd3bbfc79b9076276c5996e1a3da41739ed9b32` |
| 82 | `theorem` | [inv_map_iInf](../../../../GeneralTopology/InstancesENNReal.lean/declarations/inv-map-iinf.md) | 512 | `result-track:ac5b863f9a1cf8fee6a8fe118242ababed99781037008770eb0a51342849a082` |
| 83 | `theorem` | [inv_map_iSup](../../../../GeneralTopology/InstancesENNReal.lean/declarations/inv-map-isup.md) | 516 | `result-track:ae59509fe60ff68cc737ffaf5b73c6ebdd9bc654ade02917d21e79794b559bfd` |
| 84 | `theorem` | [inv_limsup](../../../../GeneralTopology/InstancesENNReal.lean/declarations/inv-limsup.md) | 520 | `result-track:209c8249992e6fe526816eaf3584ee65687290d854527038534f9471abf73288` |
| 85 | `theorem` | [inv_liminf](../../../../GeneralTopology/InstancesENNReal.lean/declarations/inv-liminf.md) | 525 | `result-track:2525e376bb4ea2c35163171615d80184eda64c41ecf8748f018e06a1c66364ce` |
| 86 | `instance` | [(anonymous)](../../../../GeneralTopology/InstancesENNReal.lean/declarations/instance-source-edition-2.md) | 530 | `declaration-track:34eed702cb4976b8fd583194a5a76ab6db6508bf66dbe94031274891aacf283a` |
| 87 | `theorem` | [tendsto_inv_iff](../../../../GeneralTopology/InstancesENNReal.lean/declarations/tendsto-inv-iff.md) | 533 | `result-track:d7cd52e75f770f06ae580e03a3a8e5fcdee51784981adddacfd888c7ead87a8a` |
| 88 | `theorem` | [Tendsto.div](../../../../GeneralTopology/InstancesENNReal.lean/declarations/tendsto-div.md) | 538 | `result-track:9ba821b7389b860f554adab0eac9393b955614d8451c1a4b2d06ee19fe4daca4` |
| 89 | `theorem` | [Tendsto.const_div](../../../../GeneralTopology/InstancesENNReal.lean/declarations/tendsto-const-div.md) | 544 | `result-track:ad4d22ac34a49da2900ac431f16e000719037e65e883180fa37554ed137786c9` |
| 90 | `theorem` | [Tendsto.div_const](../../../../GeneralTopology/InstancesENNReal.lean/declarations/tendsto-div-const.md) | 550 | `result-track:c0d3a24872b447fa9a46ef0cac127de062815100f2b268b523e89f8105d1da77` |
| 91 | `theorem` | [tendsto_inv_nat_nhds_zero](../../../../GeneralTopology/InstancesENNReal.lean/declarations/tendsto-inv-nat-nhds-zero.md) | 556 | `result-track:facc023db15e2d464f3beb31012bfeac9f854d0be4a4bde1468071ca484415c6` |
| 92 | `theorem` | [iSup_add](../../../../GeneralTopology/InstancesENNReal.lean/declarations/isup-add.md) | 560 | `result-track:7ff1ae62a70293dffca1cc4ab6705789ab68355deff91ac1af9de82a1f5f17e0` |
| 93 | `theorem` | [biSup_add'](../../../../GeneralTopology/InstancesENNReal.lean/declarations/bisup-add.md) | 565 | `result-track:c13bcfece7538c58017953fa8f90e2505cb91c2c09ec8be4e92b85c9efbe4cc9` |
| 94 | `theorem` | [add_biSup'](../../../../GeneralTopology/InstancesENNReal.lean/declarations/add-bisup.md) | 571 | `result-track:bf6405830f68873f110bac06b32d0157fbcb271b7088d4781c21963e3b04c14a` |
| 95 | `theorem` | [biSup_add](../../../../GeneralTopology/InstancesENNReal.lean/declarations/bisup-add-source-edition-2.md) | 576 | `result-track:ce025c7e877c82321753d94e5e70225049e305258218901fb03cc4b38cb0e715` |
| 96 | `theorem` | [add_biSup](../../../../GeneralTopology/InstancesENNReal.lean/declarations/add-bisup-source-edition-2.md) | 581 | `result-track:dd79434402810b560622ae0df0debd691a9149edd894e223837e015e22d35786` |
| 97 | `theorem` | [sSup_add](../../../../GeneralTopology/InstancesENNReal.lean/declarations/ssup-add.md) | 586 | `result-track:9a510bedcee84bef8d362763545b4875a1618eefa1921a54efc93acc31ba9980` |
| 98 | `theorem` | [add_iSup](../../../../GeneralTopology/InstancesENNReal.lean/declarations/add-isup.md) | 590 | `result-track:3a974e2ef99ba470919080ea2d96d3caf8e69ec1b75d8f504e421e70bb8d8318` |
| 99 | `theorem` | [iSup_add_iSup_le](../../../../GeneralTopology/InstancesENNReal.lean/declarations/isup-add-isup-le.md) | 594 | `result-track:2a4461a2e4d71c0e8884e160c80cd0cb044ec174e1c4bda1ba76c0b391e8e441` |
| 100 | `theorem` | [biSup_add_biSup_le'](../../../../GeneralTopology/InstancesENNReal.lean/declarations/bisup-add-bisup-le-source-edition-2.md) | 599 | `result-track:edcdc84740da4593f7ed2aa540baf7d045d11ef9eb8d933aec04d8421dc2e78a` |
| 101 | `theorem` | [biSup_add_biSup_le](../../../../GeneralTopology/InstancesENNReal.lean/declarations/bisup-add-bisup-le.md) | 606 | `result-track:e2e8c94c5fb2761f01b937d1199d94c4cb8df1cc7c1c43d891961e1701dbf565` |
| 102 | `theorem` | [iSup_add_iSup](../../../../GeneralTopology/InstancesENNReal.lean/declarations/isup-add-isup.md) | 612 | `result-track:691f3c169466e4ea9c3e5ee3ff5a4f486b4ae9cf17a72a87ce6bac3eafaed75b` |
| 103 | `theorem` | [iSup_add_iSup_of_monotone](../../../../GeneralTopology/InstancesENNReal.lean/declarations/isup-add-isup-of-monotone.md) | 622 | `result-track:2d9bd2cf13e909c3991916765178a87f2661922c26cf4e6ab5510a81bd772be5` |
| 104 | `theorem` | [finset_sum_iSup_nat](../../../../GeneralTopology/InstancesENNReal.lean/declarations/finset-sum-isup-nat.md) | 627 | `result-track:c68d4032765653028d19d612013c7232565559429035d6c9b75a58ddc2fe4033` |
| 105 | `theorem` | [mul_iSup](../../../../GeneralTopology/InstancesENNReal.lean/declarations/mul-isup.md) | 638 | `result-track:34fc0c283961552e427ff93e54e7cbfc78b8d66e891130381f687a812474d281` |
| 106 | `theorem` | [mul_sSup](../../../../GeneralTopology/InstancesENNReal.lean/declarations/mul-ssup.md) | 648 | `result-track:f128325ac9ff3bf0c3d9148f783e1eb34bb6d5759e2e4b71243094398db8afa7` |
| 107 | `theorem` | [iSup_mul](../../../../GeneralTopology/InstancesENNReal.lean/declarations/isup-mul.md) | 652 | `result-track:2bef623816d998e3134496008d345eb1aedf16706baf15814126ffb6b14e1042` |
| 108 | `theorem` | [smul_iSup](../../../../GeneralTopology/InstancesENNReal.lean/declarations/smul-isup.md) | 656 | `result-track:211d1d33fc6839ef2600ce645480db3e36016a965da5aaecb62ebab427acc370` |
| 109 | `theorem` | [smul_sSup](../../../../GeneralTopology/InstancesENNReal.lean/declarations/smul-ssup.md) | 662 | `result-track:e979ff285f2d75ee6f0170603308fc107f42605cd4259e3329aae521ad713153` |
| 110 | `theorem` | [iSup_div](../../../../GeneralTopology/InstancesENNReal.lean/declarations/isup-div.md) | 668 | `result-track:bb05d027664b26d374d2eeb25e7305ef6d18a514078455f2cd270a7674658496` |
| 111 | `theorem` | [tendsto_coe_sub](../../../../GeneralTopology/InstancesENNReal.lean/declarations/tendsto-coe-sub.md) | 672 | `result-track:b8f9fa6c9a452400dd4c4d889b2479b128a543ab802f522b21f746da9ae0228a` |
| 112 | `theorem` | [sub_iSup](../../../../GeneralTopology/InstancesENNReal.lean/declarations/sub-isup.md) | 677 | `result-track:e39b783c9e595fbe81a3a366b61dda303112703eadac1d17becbdd1ec5525f56` |
| 113 | `theorem` | [exists_countable_dense_no_zero_top](../../../../GeneralTopology/InstancesENNReal.lean/declarations/exists-countable-dense-no-zero-top.md) | 682 | `result-track:d761c57645f9e9c96050dff9d41135c33a6f947250991daa950245e11d9e1e8c` |
| 114 | `theorem` | [exists_lt_add_of_lt_add](../../../../GeneralTopology/InstancesENNReal.lean/declarations/exists-lt-add-of-lt-add.md) | 690 | `result-track:6d8e32f56fee0f18872f044622907506c5b42621b644ddd7d1655ca4c891a1cb` |
| 115 | `theorem` | [exists_frequently_lt_of_liminf_ne_top](../../../../GeneralTopology/InstancesENNReal.lean/declarations/exists-frequently-lt-of-liminf-ne-top.md) | 708 | `result-track:2f2bcf56dd8c02bc4414e6f5abe1d93e40be45aa72cef6f25e3efa3d349cf312` |
| 116 | `theorem` | [exists_frequently_lt_of_liminf_ne_top'](../../../../GeneralTopology/InstancesENNReal.lean/declarations/exists-frequently-lt-of-liminf-ne-top-source-edition-2.md) | 717 | `result-track:e6e1e8dd1f13667efa49c3461f99511f065521c3a62de5b3af5160a2a9ad43ab` |
| 117 | `theorem` | [exists_upcrossings_of_not_bounded_under](../../../../GeneralTopology/InstancesENNReal.lean/declarations/exists-upcrossings-of-not-bounded-under.md) | 726 | `result-track:22db628b0a863d4e082dd24464fb94721c728cac4cd792f8c4220f4e27d3a30a` |
| 118 | `theorem` | [hasSum_coe](../../../../GeneralTopology/InstancesENNReal.lean/declarations/hassum-coe.md) | 759 | `result-track:c2ce51ee43191827bf1c9c410d70ab56e447ee0fb077951acce40279bcd78858` |
| 119 | `theorem` | [tsum_coe_eq](../../../../GeneralTopology/InstancesENNReal.lean/declarations/tsum-coe-eq.md) | 764 | `result-track:c923e4846911a2e8f184a2a48f963bdca7a8a8d8da09c6cf92d3c9d3f9fa644e` |
| 120 | `theorem` | [coe_tsum](../../../../GeneralTopology/InstancesENNReal.lean/declarations/coe-tsum.md) | 768 | `result-track:eb1a2fdaf10d738d917bf6015364687f5cf2b338bc7ced389eeb7a2f59092124` |
| 121 | `theorem` | [hasSum](../../../../GeneralTopology/InstancesENNReal.lean/declarations/hassum.md) | 772 | `result-track:6f2b962bc2f1befc8456d2d1f2822b7bf0b69059a9e07ca10a0b80e409b47369` |
| 122 | `theorem` | [summable](../../../../GeneralTopology/InstancesENNReal.lean/declarations/summable.md) | 777 | `result-track:8bd848708bd19cf39b96905a91663405ec0e41f8fa2c2d2222cff9e2c9db25cc` |
| 123 | `theorem` | [tsum_coe_ne_top_iff_summable](../../../../GeneralTopology/InstancesENNReal.lean/declarations/tsum-coe-ne-top-iff-summable.md) | 781 | `result-track:a164776232ddde29d7773d2fa8ba10ffa71d41f3846b44c17ade687d22cf9637` |
| 124 | `theorem` | [tsum_eq_iSup_sum](../../../../GeneralTopology/InstancesENNReal.lean/declarations/tsum-eq-isup-sum.md) | 789 | `result-track:88fc136e279a2b2a33c713ba9f6239c2c4f6ec5ff9d6f208fd92d0e9de861758` |
| 125 | `theorem` | [tsum_eq_iSup_sum'](../../../../GeneralTopology/InstancesENNReal.lean/declarations/tsum-eq-isup-sum-source-edition-2.md) | 793 | `result-track:e0ad697047e5eb7fb97d8da5eed7b24e6cf93d7edd38a5e4bd57bd87b638698e` |
| 126 | `theorem` | [tsum_sigma](../../../../GeneralTopology/InstancesENNReal.lean/declarations/tsum-sigma.md) | 801 | `result-track:5089c7dda4f6d548b79df9a994159368999e34ab21c5bf38ac0e723b6c424e09` |
| 127 | `theorem` | [tsum_sigma'](../../../../GeneralTopology/InstancesENNReal.lean/declarations/tsum-sigma-source-edition-2.md) | 806 | `result-track:8efcbc64e88991e8209dc037f804654810c894d1609a908fca4b21123af27385` |
| 128 | `theorem` | [tsum_prod](../../../../GeneralTopology/InstancesENNReal.lean/declarations/tsum-prod.md) | 811 | `result-track:1a355c65e27819a28bdb5b12252d1da3b274cc159b235ce35ee5055295773dd4` |
| 129 | `theorem` | [tsum_prod'](../../../../GeneralTopology/InstancesENNReal.lean/declarations/tsum-prod-source-edition-2.md) | 815 | `result-track:d8c7b4449abd49ef4b438873eebdc73c33b5a3c78a18a714cb5d635d43741261` |
| 130 | `theorem` | [tsum_comm](../../../../GeneralTopology/InstancesENNReal.lean/declarations/tsum-comm.md) | 819 | `result-track:a73df8cb9c85a5b6d374613fd47ce4e8b48da7fc60e8cabc5891f586fa00ca3f` |
| 131 | `theorem` | [tsum_add](../../../../GeneralTopology/InstancesENNReal.lean/declarations/tsum-add.md) | 823 | `result-track:ee95534dc57a1500879a788ccc2fba9e5b188d347afe62344d59c3a416aa630c` |
| 132 | `theorem` | [tsum_le_tsum](../../../../GeneralTopology/InstancesENNReal.lean/declarations/tsum-le-tsum.md) | 827 | `result-track:cec9dac75e7d6852d1ec6e2b7b7e6e0d842fbe4fdc146663d628cec25535ee3b` |
| 133 | `theorem` | [sum_le_tsum](../../../../GeneralTopology/InstancesENNReal.lean/declarations/sum-le-tsum.md) | 831 | `result-track:00a7db55e92e339ab143e5f77ccab7427a94364170db6161c4c0e78fef43bb72` |
| 134 | `theorem` | [tsum_eq_iSup_nat'](../../../../GeneralTopology/InstancesENNReal.lean/declarations/tsum-eq-isup-nat.md) | 835 | `result-track:5d42176a87f657749973095b16daaed33e5ded43a1853f103c0d66c5afcd2f85` |
| 135 | `theorem` | [tsum_eq_iSup_nat](../../../../GeneralTopology/InstancesENNReal.lean/declarations/tsum-eq-isup-nat-source-edition-2.md) | 843 | `result-track:8975c4586ae9ded751f6ccf40e15e2889000c72ff6842a19271154616bf9d432` |
| 136 | `theorem` | [tsum_eq_liminf_sum_nat](../../../../GeneralTopology/InstancesENNReal.lean/declarations/tsum-eq-liminf-sum-nat.md) | 848 | `result-track:1eb7b61ea5d49cef7fb58cac31ba3d41a6b6ac99c098ee64552c8046e0484ca5` |
| 137 | `theorem` | [tsum_eq_limsup_sum_nat](../../../../GeneralTopology/InstancesENNReal.lean/declarations/tsum-eq-limsup-sum-nat.md) | 853 | `result-track:0a798186eece562c9e15db409033a0f5df55b2dd641e4f9e5bde7b489a0e3adc` |
| 138 | `theorem` | [le_tsum](../../../../GeneralTopology/InstancesENNReal.lean/declarations/le-tsum.md) | 857 | `result-track:2a5c6bdd5a8803bfe1254db1a2ddf1f07f68cef4de5482c7c0489f3bb05201c3` |
| 139 | `theorem` | [tsum_eq_zero](../../../../GeneralTopology/InstancesENNReal.lean/declarations/tsum-eq-zero.md) | 862 | `result-track:9725f5c9960ff73709b06109f7862bcc2f5a87b5bb29ef8ffbcfe05e6f210077` |
| 140 | `theorem` | [tsum_eq_top_of_eq_top](../../../../GeneralTopology/InstancesENNReal.lean/declarations/tsum-eq-top-of-eq-top.md) | 866 | `result-track:01eea09b7e24d4ee6a88a9f914f8625840e92eed4dcb1be66738b28d1a4fe28b` |
| 141 | `theorem` | [lt_top_of_tsum_ne_top](../../../../GeneralTopology/InstancesENNReal.lean/declarations/lt-top-of-tsum-ne-top.md) | 870 | `result-track:273fd04afda2ce3fb8f39d392d0f47cd38fa99c3eeec08060b84fc2694da9d82` |
| 142 | `theorem` | [tsum_top](../../../../GeneralTopology/InstancesENNReal.lean/declarations/tsum-top.md) | 877 | `result-track:b08c94482b74375778ffa2123e864e155dbc73a2b3f97ad1d5c77592bec76118` |
| 143 | `theorem` | [tsum_const_eq_top_of_ne_zero](../../../../GeneralTopology/InstancesENNReal.lean/declarations/tsum-const-eq-top-of-ne-zero.md) | 882 | `result-track:cdc0c44893681037bf91438a464bc47ed820de2ed61f3d9e656896ed88b7869c` |
| 144 | `theorem` | [ne_top_of_tsum_ne_top](../../../../GeneralTopology/InstancesENNReal.lean/declarations/ne-top-of-tsum-ne-top.md) | 893 | `result-track:a535da057ed9169f8fed5b238e85a7f65d2997404523e5b894696d2f0bbf0aed` |
| 145 | `theorem` | [tsum_mul_left](../../../../GeneralTopology/InstancesENNReal.lean/declarations/tsum-mul-left.md) | 897 | `result-track:487ee2a1e92560a7a5d8e9bbf5fabc1c26561384a1509f47625ced393bcf3c87` |
| 146 | `theorem` | [tsum_mul_right](../../../../GeneralTopology/InstancesENNReal.lean/declarations/tsum-mul-right.md) | 907 | `result-track:b60ef48b9dd2ed1af38737c8eeeed3ec323cf72133e519488ad7a5c92ebbdc48` |
| 147 | `theorem` | [tsum_const_smul](../../../../GeneralTopology/InstancesENNReal.lean/declarations/tsum-const-smul.md) | 911 | `result-track:b9ccac2bd343086179d3c36e96809482d6e12b61fa51c2283ca71fc308bdd588` |
| 148 | `theorem` | [tsum_iSup_eq](../../../../GeneralTopology/InstancesENNReal.lean/declarations/tsum-isup-eq.md) | 917 | `result-track:0f82613484176b24a14a9d21f2e33fa3b0fb13ab501f0e495a968c7d97c36627` |
| 149 | `theorem` | [hasSum_iff_tendsto_nat](../../../../GeneralTopology/InstancesENNReal.lean/declarations/hassum-iff-tendsto-nat-source-edition-2.md) | 921 | `result-track:e3529b670ef383a7e06dfa1d51b3876d08ea8f99b36b59d354782407f80bf23f` |
| 150 | `theorem` | [tendsto_nat_tsum](../../../../GeneralTopology/InstancesENNReal.lean/declarations/tendsto-nat-tsum.md) | 929 | `result-track:941ed9ce41ba244cacc390495616f7d70dd0d1da4a1e2f15d348f475ac7d08f7` |
| 151 | `theorem` | [toNNReal_apply_of_tsum_ne_top](../../../../GeneralTopology/InstancesENNReal.lean/declarations/tonnreal-apply-of-tsum-ne-top.md) | 935 | `result-track:7b776ff3ee9373870ecbdc64273763d6a7607459996d7dad360e185527d72c67` |
| 152 | `theorem` | [summable_toNNReal_of_tsum_ne_top](../../../../GeneralTopology/InstancesENNReal.lean/declarations/summable-tonnreal-of-tsum-ne-top.md) | 940 | `result-track:8f77ef8544d2782de4b843311d9285122ee9e067fbbe398590d0df74733f0860` |
| 153 | `theorem` | [tendsto_cofinite_zero_of_tsum_ne_top](../../../../GeneralTopology/InstancesENNReal.lean/declarations/tendsto-cofinite-zero-of-tsum-ne-top.md) | 945 | `result-track:c26e2ef577a2b323532be69b7477847f727b88f306ccd860c82aa4a6e86bc777` |
| 154 | `theorem` | [tendsto_atTop_zero_of_tsum_ne_top](../../../../GeneralTopology/InstancesENNReal.lean/declarations/tendsto-attop-zero-of-tsum-ne-top.md) | 954 | `result-track:cbfbdce02fb25a32a88094a77f501eb7cdc01eec2d1f1581802d0fc65c6648a7` |
| 155 | `theorem` | [tendsto_tsum_compl_atTop_zero](../../../../GeneralTopology/InstancesENNReal.lean/declarations/tendsto-tsum-compl-attop-zero.md) | 962 | `result-track:5a513b4d5fe230ef8b013b306de8f97acd052af60e79e6461376cd3340baa331` |
| 156 | `theorem` | [tsum_apply](../../../../GeneralTopology/InstancesENNReal.lean/declarations/tsum-apply.md) | 970 | `result-track:417051f24ff8e34eaf73053ae69ccad37b109a3baa0bb47df7d70abd4c64bf4e` |
| 157 | `theorem` | [tsum_sub](../../../../GeneralTopology/InstancesENNReal.lean/declarations/tsum-sub.md) | 975 | `result-track:fc11dfb85eef5f4b9ac3a2cfe3bc32dce235d1f84f3bc84d7f0417ad158ddc48` |
| 158 | `theorem` | [tsum_comp_le_tsum_of_injective](../../../../GeneralTopology/InstancesENNReal.lean/declarations/tsum-comp-le-tsum-of-injective.md) | 981 | `result-track:bc30df5b57073a1ff7e40cb54cc2613422316513ec87fa4c1f33086417854ee3` |
| 159 | `theorem` | [tsum_le_tsum_comp_of_surjective](../../../../GeneralTopology/InstancesENNReal.lean/declarations/tsum-le-tsum-comp-of-surjective.md) | 986 | `result-track:9c5c5fa4e9b1c6d66c9de0c62113bddcaa347158b1abb0eccc007081e301df90` |
| 160 | `theorem` | [tsum_mono_subtype](../../../../GeneralTopology/InstancesENNReal.lean/declarations/tsum-mono-subtype.md) | 991 | `result-track:30f5d999be647cdde5a27f3bd112d224bd1639fbbe45b3fbbc318eb6e903ad7b` |
| 161 | `theorem` | [tsum_iUnion_le_tsum](../../../../GeneralTopology/InstancesENNReal.lean/declarations/tsum-iunion-le-tsum.md) | 996 | `result-track:a67e93b2c9fc2d990ad17c931fce5e9ff483cc9cec5b47749db154e327fdb947` |
| 162 | `theorem` | [tsum_biUnion_le_tsum](../../../../GeneralTopology/InstancesENNReal.lean/declarations/tsum-biunion-le-tsum.md) | 1002 | `result-track:09cb42b8a4c541d37284f843844b20828b92ff3d5589c0b80ab20245f87e4f34` |
| 163 | `theorem` | [tsum_biUnion_le](../../../../GeneralTopology/InstancesENNReal.lean/declarations/tsum-biunion-le.md) | 1007 | `result-track:6c6e558e8a8b9027dbedf81f3ac0d410bfe6f77e9421513836fe995bd965a4df` |
| 164 | `theorem` | [tsum_iUnion_le](../../../../GeneralTopology/InstancesENNReal.lean/declarations/tsum-iunion-le.md) | 1012 | `result-track:039347a66d4d9cf9321606ce031d9ba823da6a21cd555064c0a1af32f30206b5` |
| 165 | `theorem` | [tsum_union_le](../../../../GeneralTopology/InstancesENNReal.lean/declarations/tsum-union-le.md) | 1018 | `result-track:1f04ade83ec08b1628a4ec5c9f95970745298953db942074823f276e10b291db` |
| 166 | `theorem` | [tsum_eq_add_tsum_ite](../../../../GeneralTopology/InstancesENNReal.lean/declarations/tsum-eq-add-tsum-ite-source-edition-2.md) | 1024 | `result-track:7cf482417fd04f7e94240753c84b0fdca50efafd9b72060c6820843787e73ba4` |
| 167 | `theorem` | [tsum_add_one_eq_top](../../../../GeneralTopology/InstancesENNReal.lean/declarations/tsum-add-one-eq-top.md) | 1029 | `result-track:12de7e9c03d3c21755290f1a420f907305c938e3a8b25f7302e7591d30dc97c6` |
| 168 | `theorem` | [finite_const_le_of_tsum_ne_top](../../../../GeneralTopology/InstancesENNReal.lean/declarations/finite-const-le-of-tsum-ne-top.md) | 1037 | `result-track:02302851d3afdb2f27f377697e47136d1ea2157dfb16f1d9bab8437cbd58897d` |
| 169 | `theorem` | [finset_card_const_le_le_of_tsum_le](../../../../GeneralTopology/InstancesENNReal.lean/declarations/finset-card-const-le-le-of-tsum-le.md) | 1048 | `result-track:eb561bf31fb0433a4d2ac920ce3aeeed666bcf63fc67e4e505a0526d5d8a7698` |
| 170 | `theorem` | [tendsto_toReal_iff](../../../../GeneralTopology/InstancesENNReal.lean/declarations/tendsto-toreal-iff.md) | 1062 | `result-track:a4d44369c64db9c99c38f060f730ead79b0fd7433f8cb2c91ea2add2948e04fa` |
| 171 | `theorem` | [tsum_coe_ne_top_iff_summable_coe](../../../../GeneralTopology/InstancesENNReal.lean/declarations/tsum-coe-ne-top-iff-summable-coe.md) | 1069 | `result-track:78ef6bb0aea9c5ce5f872f2b7d9072e237e99539131a3e6adf450a38e53f4d32` |
| 172 | `theorem` | [tsum_coe_eq_top_iff_not_summable_coe](../../../../GeneralTopology/InstancesENNReal.lean/declarations/tsum-coe-eq-top-iff-not-summable-coe.md) | 1075 | `result-track:a8f95ecdd6b3a212282f36566c79478e6a20f1ef00f69b7dce26218def456606` |
| 173 | `theorem` | [hasSum_toReal](../../../../GeneralTopology/InstancesENNReal.lean/declarations/hassum-toreal.md) | 1080 | `result-track:b4df2d5b692893938de636651ec8c111e208b74551ab9339407b261770758108` |
| 174 | `theorem` | [summable_toReal](../../../../GeneralTopology/InstancesENNReal.lean/declarations/summable-toreal.md) | 1087 | `result-track:6eec62b86c51960d65500066b8b995c9e744fe18dee5c843a95853c13fb6ac75` |
| 175 | `theorem` | [tsum_eq_toNNReal_tsum](../../../../GeneralTopology/InstancesENNReal.lean/declarations/tsum-eq-tonnreal-tsum.md) | 1095 | `result-track:ef54d4e77272e3fcc2fd39d2f110ed07cbd68830ddaea17635fa7b752986153e` |
| 176 | `theorem` | [exists_le_hasSum_of_le](../../../../GeneralTopology/InstancesENNReal.lean/declarations/exists-le-hassum-of-le.md) | 1104 | `result-track:48c0f0b3952b65e9fc352126a850e05b70fcf472cec36e06d759c7deeae7b5a6` |
| 177 | `theorem` | [summable_of_le](../../../../GeneralTopology/InstancesENNReal.lean/declarations/summable-of-le.md) | 1114 | `result-track:094eb79435f97931f71ddb13bd087435831e7580da70d02764e150639ddcd467` |
| 178 | `theorem` | [_root_.Summable.countable_support_nnreal](../../../../GeneralTopology/InstancesENNReal.lean/declarations/root-summable-countable-support-nnreal.md) | 1121 | `result-track:9d7ec1b22b0081abe6bcd9aab48c22ec2690ae54a2fa43affe038e5783886a59` |
| 179 | `theorem` | [hasSum_iff_tendsto_nat](../../../../GeneralTopology/InstancesENNReal.lean/declarations/hassum-iff-tendsto-nat.md) | 1128 | `result-track:0c70dcc5cd176658f57c6036b519e93645ef6bab450ba5922811c2b74b193413` |
| 180 | `theorem` | [not_summable_iff_tendsto_nat_atTop](../../../../GeneralTopology/InstancesENNReal.lean/declarations/not-summable-iff-tendsto-nat-attop.md) | 1135 | `result-track:2ff9c6e7a242ed4c4f7cf881772575735224094591fbc91a082e57fcf07c143a` |
| 181 | `theorem` | [summable_iff_not_tendsto_nat_atTop](../../../../GeneralTopology/InstancesENNReal.lean/declarations/summable-iff-not-tendsto-nat-attop.md) | 1145 | `result-track:f3385ba4ad454b7f1d0df7cd4e33c6da29c412fb478fbafe9b4286ab2d1c4958` |
| 182 | `theorem` | [summable_of_sum_range_le](../../../../GeneralTopology/InstancesENNReal.lean/declarations/summable-of-sum-range-le.md) | 1150 | `result-track:206d297deed7b12d7615a3ddb3eadeb8c65d0449a0a392a343ffdf69876bcecb` |
| 183 | `theorem` | [tsum_le_of_sum_range_le](../../../../GeneralTopology/InstancesENNReal.lean/declarations/tsum-le-of-sum-range-le-source-edition-2.md) | 1157 | `result-track:81f83bbbe7d97a68d31932577245a4ef4c3a0d5103307e7229b1ff10ded5840e` |
| 184 | `theorem` | [tsum_comp_le_tsum_of_inj](../../../../GeneralTopology/InstancesENNReal.lean/declarations/tsum-comp-le-tsum-of-inj.md) | 1162 | `result-track:3e903eeabb7fd637a359bd89d05c296a51be9493ef4440d2975125c60eaa98bf` |
| 185 | `theorem` | [summable_sigma](../../../../GeneralTopology/InstancesENNReal.lean/declarations/summable-sigma.md) | 1168 | `result-track:555a091fc2daa09a8288756d03314305616e1fa37b4ea197744ed7ca0a01d1d2` |
| 186 | `theorem` | [indicator_summable](../../../../GeneralTopology/InstancesENNReal.lean/declarations/indicator-summable.md) | 1178 | `result-track:5c15628acc6e16ffb55d85b211887c37943bf631b1607877a4e0ca6336a24ff7` |
| 187 | `theorem` | [tsum_indicator_ne_zero](../../../../GeneralTopology/InstancesENNReal.lean/declarations/tsum-indicator-ne-zero.md) | 1186 | `result-track:1692e64e9b7ef507e09918082ed98dc03521ac923c4e946ffaa4910e1f8d92dc` |
| 188 | `theorem` | [tendsto_sum_nat_add](../../../../GeneralTopology/InstancesENNReal.lean/declarations/tendsto-sum-nat-add-source-edition-2.md) | 1197 | `result-track:2867137541fc704caf852e348a514669cd2b09b0c10e898e8d9a4f267026e876` |
| 189 | `theorem` | [hasSum_lt](../../../../GeneralTopology/InstancesENNReal.lean/declarations/hassum-lt-source-edition-2.md) | 1203 | `result-track:ec4dd2b16266e8ba8922bed20ba36285521dd972e37a2162f7f65be2dd09067f` |
| 190 | `theorem` | [hasSum_strict_mono](../../../../GeneralTopology/InstancesENNReal.lean/declarations/hassum-strict-mono.md) | 1211 | `result-track:e365973b4e01f4876565546b98d7736704e4011f30c0645062293bd480163fb8` |
| 191 | `theorem` | [tsum_lt_tsum](../../../../GeneralTopology/InstancesENNReal.lean/declarations/tsum-lt-tsum.md) | 1217 | `result-track:5df55cd6271d8564ae9aea15e8cbfbffe5f8566fd54c5bf421aacf589886a3cf` |
| 192 | `theorem` | [tsum_strict_mono](../../../../GeneralTopology/InstancesENNReal.lean/declarations/tsum-strict-mono.md) | 1223 | `result-track:25912c2dd88d03b1901bc337d6d33154bf67d86de88c45c2e0e4ebfea7e97e7d` |
| 193 | `theorem` | [tsum_pos](../../../../GeneralTopology/InstancesENNReal.lean/declarations/tsum-pos.md) | 1228 | `result-track:9376edf902c7906836b41ad83046dc3875096fcd47d22cee547b79a18b6ffe1b` |
| 194 | `theorem` | [tsum_eq_add_tsum_ite](../../../../GeneralTopology/InstancesENNReal.lean/declarations/tsum-eq-add-tsum-ite.md) | 1233 | `result-track:17336782df54af75810a94313a06ecf6d65da42a58e1cd7d194b8072e8022e4d` |
| 195 | `theorem` | [tsum_toNNReal_eq](../../../../GeneralTopology/InstancesENNReal.lean/declarations/tsum-tonnreal-eq.md) | 1244 | `result-track:79b7db0310fdf7eb43f11dc0004cc471e39265e581cb9de62b6b6f50eec0a104` |
| 196 | `theorem` | [tsum_toReal_eq](../../../../GeneralTopology/InstancesENNReal.lean/declarations/tsum-toreal-eq.md) | 1250 | `result-track:3484519397fb4095918ff8f163217d13b9d21a9ba9ecf6ffe09f6642bf5e4942` |
| 197 | `theorem` | [tendsto_sum_nat_add](../../../../GeneralTopology/InstancesENNReal.lean/declarations/tendsto-sum-nat-add.md) | 1255 | `result-track:05388fd1e13c9a1286ef756c632c476a7050ca5d013536191634fa10b06d5745` |
| 198 | `theorem` | [tsum_le_of_sum_range_le](../../../../GeneralTopology/InstancesENNReal.lean/declarations/tsum-le-of-sum-range-le.md) | 1263 | `result-track:04ff8aafae8e8d82ae0b9ce21142556f80fbaed65a650c182847a58c7b9baeca` |
| 199 | `theorem` | [hasSum_lt](../../../../GeneralTopology/InstancesENNReal.lean/declarations/hassum-lt.md) | 1268 | `result-track:1fc42ada6d131e29c2814ec5c41ccaa6058e491c8c626ecf2828558ff3790f51` |
| 200 | `theorem` | [tsum_lt_tsum](../../../../GeneralTopology/InstancesENNReal.lean/declarations/tsum-lt-tsum-source-edition-2.md) | 1282 | `result-track:e45097ec9b1588ce14cb71317e6e66a779aab657d179f55f94b15ff0cbcc13ac` |
| 201 | `theorem` | [tsum_comp_le_tsum_of_inj](../../../../GeneralTopology/InstancesENNReal.lean/declarations/tsum-comp-le-tsum-of-inj-source-edition-2.md) | 1289 | `result-track:7e8637e333296898ded6ae00ecef27c501aba9c077961827aee7c10e2a6279e5` |
| 202 | `theorem` | [summable_of_nonneg_of_le](../../../../GeneralTopology/InstancesENNReal.lean/declarations/summable-of-nonneg-of-le.md) | 1297 | `result-track:731f6c1c86fddebe88ece249f2a38e3a51dda84c0894825ed5f029984bfab889` |
| 203 | `theorem` | [Summable.toNNReal](../../../../GeneralTopology/InstancesENNReal.lean/declarations/summable-tonnreal.md) | 1305 | `result-track:ee3ccffb786d55fda3010915b8a40d1f9d3bfb0f998da0a678f013a3790655b1` |
| 204 | `theorem` | [_root_.Summable.countable_support_ennreal](../../../../GeneralTopology/InstancesENNReal.lean/declarations/root-summable-countable-support-ennreal.md) | 1312 | `result-track:9ef43a557d9ffafd6e839176099fe1c2b9a9ba646cb0f3444d07ecd954f05d97` |
| 205 | `theorem` | [hasSum_iff_tendsto_nat_of_nonneg](../../../../GeneralTopology/InstancesENNReal.lean/declarations/hassum-iff-tendsto-nat-of-nonneg.md) | 1319 | `result-track:96bdf24567702c16d2af5b144d3e8d88d981bc128381f5de069ae1d67e9340e7` |
| 206 | `theorem` | [ENNReal.ofReal_tsum_of_nonneg](../../../../GeneralTopology/InstancesENNReal.lean/declarations/ennreal-ofreal-tsum-of-nonneg.md) | 1326 | `result-track:591c8e87d2c04f1a1b072bd205d14c08e0441af614aa7cb2c69e985c4033eba2` |
| 207 | `theorem` | [not_summable_iff_tendsto_nat_atTop_of_nonneg](../../../../GeneralTopology/InstancesENNReal.lean/declarations/not-summable-iff-tendsto-nat-attop-of-nonneg.md) | 1331 | `result-track:1cb150283017a3460e09f86cbadd9bc7b723eb2459ab800993674e7271f829b1` |
| 208 | `theorem` | [summable_iff_not_tendsto_nat_atTop_of_nonneg](../../../../GeneralTopology/InstancesENNReal.lean/declarations/summable-iff-not-tendsto-nat-attop-of-nonneg.md) | 1337 | `result-track:b5023742b5d78caa9c468ee620478e923aaa0718ba1bd456a7cb3b70ec9a0686` |
| 209 | `theorem` | [summable_sigma_of_nonneg](../../../../GeneralTopology/InstancesENNReal.lean/declarations/summable-sigma-of-nonneg.md) | 1342 | `result-track:11fec5cecc24247df1ccf6809a3c5a21949d627b8e130d55d743e66215474784` |
| 210 | `theorem` | [summable_prod_of_nonneg](../../../../GeneralTopology/InstancesENNReal.lean/declarations/summable-prod-of-nonneg.md) | 1348 | `result-track:541b0254ee6d12c1619639f4b1954234adfe83a08afd10b0ebf9e84fd424eabb` |
| 211 | `theorem` | [summable_of_sum_le](../../../../GeneralTopology/InstancesENNReal.lean/declarations/summable-of-sum-le.md) | 1352 | `result-track:83a1ee79881454d3912d39a4512facd48853a3a4f299040afcf29ec60f7c61c0` |
| 212 | `theorem` | [summable_of_sum_range_le](../../../../GeneralTopology/InstancesENNReal.lean/declarations/summable-of-sum-range-le-source-edition-2.md) | 1358 | `result-track:3f078432a1c5cd473ec607957f1f506b07d8607b842ac85ba91fa65f0599e95a` |
| 213 | `theorem` | [Real.tsum_le_of_sum_range_le](../../../../GeneralTopology/InstancesENNReal.lean/declarations/real-tsum-le-of-sum-range-le.md) | 1365 | `result-track:de6653c8d56cf588787ce9cb3e6d1e83dde38fe56f5c7b6b626ef31d0d550279` |
| 214 | `theorem` | [tsum_lt_tsum_of_nonneg](../../../../GeneralTopology/InstancesENNReal.lean/declarations/tsum-lt-tsum-of-nonneg.md) | 1373 | `result-track:6c2da75d7ac8bad29a02491528f1cd776d4dd8ff0b0d8ea39c202ee4c95f3998` |
| 215 | `theorem` | [edist_ne_top_of_mem_ball](../../../../GeneralTopology/InstancesENNReal.lean/declarations/edist-ne-top-of-mem-ball.md) | 1385 | `result-track:16d189ca07b60741c31790a4958ccefa6ffc069f7069e58026f6c33e9fea963f` |
| 216 | `def` | [metricSpaceEMetricBall](../../../../GeneralTopology/InstancesENNReal.lean/declarations/metricspaceemetricball.md) | 1395 | `declaration-track:15e8040efd4320114a42b597cbca91c431b5acc2edfe21d1c14215a68839bcba` |
| 217 | `theorem` | [nhds_eq_nhds_emetric_ball](../../../../GeneralTopology/InstancesENNReal.lean/declarations/nhds-eq-nhds-emetric-ball.md) | 1399 | `result-track:3ac9df060a8d19cc2d3c132c79e6ddc0c75c13d078d66e1a6e9924637d288e2b` |
| 218 | `theorem` | [tendsto_iff_edist_tendsto_0](../../../../GeneralTopology/InstancesENNReal.lean/declarations/tendsto-iff-edist-tendsto-0.md) | 1412 | `result-track:e9276c5d72646452e10cd1f82767cd1ac5812bf00174b9dd9a4adcf154ba9a79` |
| 219 | `theorem` | [EMetric.cauchySeq_iff_le_tendsto_0](../../../../GeneralTopology/InstancesENNReal.lean/declarations/emetric-cauchyseq-iff-le-tendsto-0.md) | 1420 | `result-track:c5ae3d424aa7768665442d3a4cbbdf34ca71643dd6da8cd6e2a3782dea23e4e3` |
| 220 | `theorem` | [continuous_of_le_add_edist](../../../../GeneralTopology/InstancesENNReal.lean/declarations/continuous-of-le-add-edist.md) | 1443 | `result-track:29153c05164ea71b7d99adec562dbcd651c2385993e8e303d71763641cf800e5` |
| 221 | `theorem` | [continuous_edist](../../../../GeneralTopology/InstancesENNReal.lean/declarations/continuous-edist.md) | 1454 | `result-track:5e8b49ac712333a87dc52c60d912551f65873b20d1bc62237b2aae621988fecf` |
| 222 | `theorem` | [Continuous.edist](../../../../GeneralTopology/InstancesENNReal.lean/declarations/continuous-edist-source-edition-2.md) | 1466 | `result-track:6d9ded11e36aa50295ab45dfdfe7725406205ee49d861b3d17cfd8817f494940` |
| 223 | `theorem` | [Filter.Tendsto.edist](../../../../GeneralTopology/InstancesENNReal.lean/declarations/filter-tendsto-edist.md) | 1471 | `result-track:bd0a6bc6b675e7701a04b9ff9d971a2a6cf583eb0a07e0f9e0051f74c6d239c3` |
| 224 | `theorem` | [cauchySeq_of_edist_le_of_tsum_ne_top](../../../../GeneralTopology/InstancesENNReal.lean/declarations/cauchyseq-of-edist-le-of-tsum-ne-top.md) | 1476 | `result-track:5f9bad76464b49ce28380e3c468819eab7902d4be30ad6816c565de77f5fadd9` |
| 225 | `theorem` | [EMetric.isClosed_ball](../../../../GeneralTopology/InstancesENNReal.lean/declarations/emetric-isclosed-ball.md) | 1483 | `result-track:27adc8e24186f5c421b8c88e553287d05f66456048337d439089e1dd18420be5` |
| 226 | `theorem` | [EMetric.diam_closure](../../../../GeneralTopology/InstancesENNReal.lean/declarations/emetric-diam-closure.md) | 1488 | `result-track:cb6ba162c8148c909d6228ba2bd51204777ca0ae2487402c5058372a2c051c53` |
| 227 | `theorem` | [Metric.diam_closure](../../../../GeneralTopology/InstancesENNReal.lean/declarations/metric-diam-closure.md) | 1496 | `result-track:2c050d27f9f3c35b6af679cdce5fb779b917e4ff4ffed680ea3c50bde715a13a` |
| 228 | `theorem` | [isClosed_setOf_lipschitzOnWith](../../../../GeneralTopology/InstancesENNReal.lean/declarations/isclosed-setof-lipschitzonwith.md) | 1500 | `result-track:b3af7d938102f41bde4a9af122d7bdd7a4df5cc394e0f5dd5d22bed131a94f51` |
| 229 | `theorem` | [isClosed_setOf_lipschitzWith](../../../../GeneralTopology/InstancesENNReal.lean/declarations/isclosed-setof-lipschitzwith.md) | 1507 | `result-track:4988555708c577244f68d096228c1337612bfe996b24f4adbc7ea5f3b53942d6` |
| 230 | `theorem` | [ediam_eq](../../../../GeneralTopology/InstancesENNReal.lean/declarations/ediam-eq.md) | 1516 | `result-track:945d93c8c7b90fa0e3ef411cb98d8083bb5caa7d1ace00df30ac81319bbdb4f6` |
| 231 | `theorem` | [diam_eq](../../../../GeneralTopology/InstancesENNReal.lean/declarations/diam-eq.md) | 1532 | `result-track:81deca2666422280de1dc0061eb3aedec30408575b180184080c8f237ad0d5a5` |
| 232 | `theorem` | [ediam_Ioo](../../../../GeneralTopology/InstancesENNReal.lean/declarations/ediam-ioo.md) | 1539 | `result-track:48d3f1c790a6382ae8aa96624e620586ae374a15592458aeb83ef240eb48f9a6` |
| 233 | `theorem` | [ediam_Icc](../../../../GeneralTopology/InstancesENNReal.lean/declarations/ediam-icc.md) | 1546 | `result-track:aeaa0201808efe81662b8f28956588016d1f9ea97cf83f3c57077302e3ce6a3e` |
| 234 | `theorem` | [ediam_Ico](../../../../GeneralTopology/InstancesENNReal.lean/declarations/ediam-ico.md) | 1553 | `result-track:f2171de89d9f770daac4a32e3f6e3dde102104694a8520595ffb70a05f3db992` |
| 235 | `theorem` | [ediam_Ioc](../../../../GeneralTopology/InstancesENNReal.lean/declarations/ediam-ioc.md) | 1559 | `result-track:a66b6cedbc377d001ae1fc37530767aa6a5f94ba58d6e32dc7d0bf4a019ff887` |
| 236 | `theorem` | [diam_Icc](../../../../GeneralTopology/InstancesENNReal.lean/declarations/diam-icc.md) | 1564 | `result-track:4525005f3077f3d8839488f3f37d60b1445da35f96a4209944cd32e0edffd005` |
| 237 | `theorem` | [diam_Ico](../../../../GeneralTopology/InstancesENNReal.lean/declarations/diam-ico.md) | 1568 | `result-track:a68acb2a05972d7c6e1ac5e5028e834510f2b5ed1a6d7704bb37f3152d9a97d8` |
| 238 | `theorem` | [diam_Ioc](../../../../GeneralTopology/InstancesENNReal.lean/declarations/diam-ioc.md) | 1572 | `result-track:cf4b7eb2aea9f2a7193fc954e6b6563c68e0a854440e6aee6dbce913dbe22c3e` |
| 239 | `theorem` | [diam_Ioo](../../../../GeneralTopology/InstancesENNReal.lean/declarations/diam-ioo.md) | 1576 | `result-track:bfdb0e7c2c92605ce5ce5391b2580a8609087e0d6463bcc1e5f3e45123af57ee` |
| 240 | `theorem` | [edist_le_tsum_of_edist_le_of_tendsto](../../../../GeneralTopology/InstancesENNReal.lean/declarations/edist-le-tsum-of-edist-le-of-tendsto-source-edition-2.md) | 1584 | `result-track:fe928ff5f0703bcd93f7a2684471dbd9ac45fe401e7cfe52dd94a3d5af8f1f97` |
| 241 | `theorem` | [edist_le_tsum_of_edist_le_of_tendsto₀](../../../../GeneralTopology/InstancesENNReal.lean/declarations/edist-le-tsum-of-edist-le-of-tendsto.md) | 1595 | `result-track:07759aafe36a16596bca68bfdb1eac2b4cd4f5c275006dd0df819976a83b7c18` |
| 242 | `lemma` | [limsup_sub_const](../../../../GeneralTopology/InstancesENNReal.lean/declarations/limsup-sub-const.md) | 1607 | `result-track:a57abf053be2bab4ce1d1cc9a4d9aedc6f8d61c9118f902a517d53a9fe277750` |
| 243 | `lemma` | [liminf_sub_const](../../../../GeneralTopology/InstancesENNReal.lean/declarations/liminf-sub-const.md) | 1612 | `result-track:59e4b773f844c9f89fe1c4ce111bc7e10b9fb0dc254a5e58e8e9e7e2d6df26ec` |
| 244 | `lemma` | [limsup_const_sub](../../../../GeneralTopology/InstancesENNReal.lean/declarations/limsup-const-sub.md) | 1617 | `result-track:a4252afdb3f8531a6d678278589f72e707dda6f8a03388b9cea0d64d9b1ffbdd` |
| 245 | `lemma` | [liminf_const_sub](../../../../GeneralTopology/InstancesENNReal.lean/declarations/liminf-const-sub.md) | 1623 | `result-track:1d63f52c6085e81b69a99204aa25fa70fa6b2d85513ddcd856e52c0942c186c3` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=768aac50a3c627d86e27268b8950c982d400a9c1d398f9451a1b76847b29b3b7 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/ENNReal/Variant6dccd5c1abe8c1e96286ef89682bf3f0927a6e27f33392dd893e98feab7be245.lean","GRWTSK/_verification/specifications/Topology/GeneralTopology/ENNReal/Variant6dccd5c1abe8c1e96286ef89682bf3f0927a6e27f33392dd893e98feab7be245.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
