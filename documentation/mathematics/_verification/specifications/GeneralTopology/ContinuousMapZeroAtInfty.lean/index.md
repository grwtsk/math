# Verification target: Continuous Map Zero At Infty

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4cf65c11e95f0d175085259c970c46c8851939e0",
  "lexical_observation_count": 91,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/ZeroAtInfty/Variant2a3383b93b0dc1636557e55cc2f51a2ceb79605aa03af5f2b42d407580b0f373.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../GeneralTopology/ContinuousMapZeroAtInfty.lean/index.md) · [Full source](../../../../GeneralTopology/ContinuousMapZeroAtInfty.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4cf65c11e95f0d175085259c970c46c8851939e0`.

Source path: `GRWTSK/Topology/GeneralTopology/ZeroAtInfty/Variant2a3383b93b0dc1636557e55cc2f51a2ceb79605aa03af5f2b42d407580b0f373.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/ZeroAtInfty/Variant2a3383b93b0dc1636557e55cc2f51a2ceb79605aa03af5f2b42d407580b0f373.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Topology.ContinuousMap.Bounded.Star` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.ContinuousMap.CocompactMap` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [ZeroAtInftyContinuousMap](../../../../GeneralTopology/ContinuousMapZeroAtInfty.lean/declarations/zeroatinftycontinuousmap.md) | 40 | `declaration-track:6c9fd04a81a5e56c66fc9b798505ef5e48c5db6bae662ee6164116883cbea390` |
| 2 | `class` | [ZeroAtInftyContinuousMapClass](../../../../GeneralTopology/ContinuousMapZeroAtInfty.lean/declarations/zeroatinftycontinuousmapclass.md) | 59 | `declaration-track:2417d73dc7b9c44989591ce0d9b842653b270353522f2081a236cd7d92706bc2` |
| 3 | `instance` | [instFunLike](../../../../GeneralTopology/ContinuousMapZeroAtInfty.lean/declarations/instfunlike.md) | 74 | `declaration-track:9e93a5d06ae9c03366fa1dcd106f456a8db2fa8067ce564f72d7ad1d21da3a21` |
| 4 | `instance` | [instZeroAtInftyContinuousMapClass](../../../../GeneralTopology/ContinuousMapZeroAtInfty.lean/declarations/instzeroatinftycontinuousmapclass.md) | 81 | `declaration-track:299a7a22e0670af17ed3c404e1e41ac755ed24e5ea2c55792bbfafc6ff2d33ec` |
| 5 | `instance` | [instCoeTC](../../../../GeneralTopology/ContinuousMapZeroAtInfty.lean/declarations/instcoetc.md) | 85 | `declaration-track:203c942be0a6d270424489dcc151d49c08664bfe682f0b4813870eedc06f23e2` |
| 6 | `theorem` | [coe_toContinuousMap](../../../../GeneralTopology/ContinuousMapZeroAtInfty.lean/declarations/coe-tocontinuousmap.md) | 92 | `result-track:e7a19daf98e89e6ed9f788346c17b27121dc1fa662d21ae705326eb7d134081a` |
| 7 | `theorem` | [ext](../../../../GeneralTopology/ContinuousMapZeroAtInfty.lean/declarations/ext.md) | 96 | `result-track:d6760d276aa425af491fda93bd02a3c0753d8fd2408efe6113feeb824a9fc81a` |
| 8 | `lemma` | [coe_mk](../../../../GeneralTopology/ContinuousMapZeroAtInfty.lean/declarations/coe-mk.md) | 100 | `result-track:30aac801359ba9be2e8229cc18270db9f5a7d50365570641259e4458f962b994` |
| 9 | `def` | [copy](../../../../GeneralTopology/ContinuousMapZeroAtInfty.lean/declarations/copy.md) | 108 | `declaration-track:f49be14d676392f0c02c447fb13b41cb363848d3937902f498fc8fd1e009bc4b` |
| 10 | `theorem` | [coe_copy](../../../../GeneralTopology/ContinuousMapZeroAtInfty.lean/declarations/coe-copy.md) | 118 | `result-track:ebb976baf98cd0f4edca81bfcc195eb579e1da000bccf41c513def7472a3410f` |
| 11 | `theorem` | [copy_eq](../../../../GeneralTopology/ContinuousMapZeroAtInfty.lean/declarations/copy-eq.md) | 121 | `result-track:c769d81e7a9c8c1f8d0ad2dca09d3c5275173b05847f434122d22e063439010b` |
| 12 | `theorem` | [eq_of_empty](../../../../GeneralTopology/ContinuousMapZeroAtInfty.lean/declarations/eq-of-empty.md) | 124 | `result-track:7c337e75397e5c3742c8a17e89061cbe9aee889a49e89f6426a524c182968ff7` |
| 13 | `def` | [ContinuousMap.liftZeroAtInfty](../../../../GeneralTopology/ContinuousMapZeroAtInfty.lean/declarations/continuousmap-liftzeroatinfty.md) | 130 | `declaration-track:bb2bc6ad50a5d317fb35d70a90218f9b31d2fe268e0f64ce261d00b4b00c8358` |
| 14 | `lemma` | [zeroAtInftyContinuousMapClass.ofCompact](../../../../GeneralTopology/ContinuousMapZeroAtInfty.lean/declarations/zeroatinftycontinuousmapclass-ofcompact.md) | 145 | `result-track:974b832dd7bd29f7505e123fc4367a3e1b523018b27f184fd98a980edabf6875` |
| 15 | `instance` | [instZero](../../../../GeneralTopology/ContinuousMapZeroAtInfty.lean/declarations/instzero.md) | 164 | `declaration-track:03ec895e713cd455ebdbd8b0fd1a1ea810f2a7519e77d3fd7914f8933b912240` |
| 16 | `instance` | [instInhabited](../../../../GeneralTopology/ContinuousMapZeroAtInfty.lean/declarations/instinhabited.md) | 167 | `declaration-track:67671c0c26bdb04502524e33895697cf6dee109fc282c3a48f605b6978c89cc5` |
| 17 | `theorem` | [coe_zero](../../../../GeneralTopology/ContinuousMapZeroAtInfty.lean/declarations/coe-zero.md) | 171 | `result-track:4484c5a4f6c7ad1aef36b872f2253b6309cd6ac824d89f10026fa60a2fcb9355` |
| 18 | `theorem` | [zero_apply](../../../../GeneralTopology/ContinuousMapZeroAtInfty.lean/declarations/zero-apply.md) | 174 | `result-track:f4e49987f833911ec1e0962f29c997dfe9416ee8068a047c1892a2086ed84b89` |
| 19 | `instance` | [instMul](../../../../GeneralTopology/ContinuousMapZeroAtInfty.lean/declarations/instmul.md) | 177 | `declaration-track:10deb6e72f2523950e74d3fc2d5bdc115a7739a5c14181886e719e7153c6c8b8` |
| 20 | `theorem` | [coe_mul](../../../../GeneralTopology/ContinuousMapZeroAtInfty.lean/declarations/coe-mul.md) | 182 | `result-track:74b5ea844e3aa0c24e06d664d8efd4a96010401e963a4d5fd19f9176732a62db` |
| 21 | `theorem` | [mul_apply](../../../../GeneralTopology/ContinuousMapZeroAtInfty.lean/declarations/mul-apply.md) | 185 | `result-track:c153fe35d5804c9344fd39e927373e0f412119236b8afa7d2f4c4213804d6ee7` |
| 22 | `instance` | [instMulZeroClass](../../../../GeneralTopology/ContinuousMapZeroAtInfty.lean/declarations/instmulzeroclass.md) | 188 | `declaration-track:bbcab72a2dd38818b89a8109e58e16615757e7818b4dccbb915eb45aa7efb990` |
| 23 | `instance` | [instSemigroupWithZero](../../../../GeneralTopology/ContinuousMapZeroAtInfty.lean/declarations/instsemigroupwithzero.md) | 191 | `declaration-track:42a826b3da5d6c3b09c9b641a5762df56133702d6fb0c633de56054f1f041607` |
| 24 | `instance` | [instAdd](../../../../GeneralTopology/ContinuousMapZeroAtInfty.lean/declarations/instadd.md) | 195 | `declaration-track:fc4fdb6a7c81be9e9008e3d22a4c61c0643f32eb561ed6658f33e463c5a4976d` |
| 25 | `theorem` | [coe_add](../../../../GeneralTopology/ContinuousMapZeroAtInfty.lean/declarations/coe-add.md) | 199 | `result-track:9c0bb9ce68fc66f31d4af5944ff3350c83e4053e644c59a7189b12c7a8e51e21` |
| 26 | `theorem` | [add_apply](../../../../GeneralTopology/ContinuousMapZeroAtInfty.lean/declarations/add-apply.md) | 202 | `result-track:2997b9dc26d55a34fa45c82479bd69c3bb57897d8bdb5b9c0b329ff5ce9807d8` |
| 27 | `instance` | [instAddZeroClass](../../../../GeneralTopology/ContinuousMapZeroAtInfty.lean/declarations/instaddzeroclass.md) | 205 | `declaration-track:c07c184ecac0df43ca8c74d73c81e78c8d8d86c04bf78b192d88db0ee3f9c36e` |
| 28 | `instance` | [instSMul](../../../../GeneralTopology/ContinuousMapZeroAtInfty.lean/declarations/instsmul.md) | 208 | `declaration-track:d6b5080c935a74f3ff6f4dfe613ac3346087ebc3793e9d773658b16cec6ca500` |
| 29 | `theorem` | [coe_smul](../../../../GeneralTopology/ContinuousMapZeroAtInfty.lean/declarations/coe-smul.md) | 215 | `result-track:68690d66ce444fec052efb9f9ce9c9139ab661dfc66c9231881a2f20d5404363` |
| 30 | `theorem` | [smul_apply](../../../../GeneralTopology/ContinuousMapZeroAtInfty.lean/declarations/smul-apply.md) | 219 | `result-track:d72d799a2af5174cceb5ce3abe7f3243bb88c805dbc64ec7eb9e6d2848529159` |
| 31 | `instance` | [instAddMonoid](../../../../GeneralTopology/ContinuousMapZeroAtInfty.lean/declarations/instaddmonoid.md) | 227 | `declaration-track:b01e74ea2d3930683000a55dceea2c2fe4ee71c514b46d90b5c680fcb950c38b` |
| 32 | `instance` | [instAddCommMonoid](../../../../GeneralTopology/ContinuousMapZeroAtInfty.lean/declarations/instaddcommmonoid.md) | 232 | `declaration-track:26d7d2c62350ca9595ae3f776ab8a1e62af558c7d225feb6e5df9d4240a724ee` |
| 33 | `instance` | [instNeg](../../../../GeneralTopology/ContinuousMapZeroAtInfty.lean/declarations/instneg.md) | 239 | `declaration-track:839de1fbc634c1992b43dc90850f96807ec112c99d283580bf734e5f1fc599ab` |
| 34 | `theorem` | [coe_neg](../../../../GeneralTopology/ContinuousMapZeroAtInfty.lean/declarations/coe-neg.md) | 243 | `result-track:ebc9e41c8ad6711cf2024855f32a53d9b662dc05d97578a8f7a2a06bbb1121bc` |
| 35 | `theorem` | [neg_apply](../../../../GeneralTopology/ContinuousMapZeroAtInfty.lean/declarations/neg-apply.md) | 246 | `result-track:a401cc34b7acb56496a8b7a907449535aa53aa8761fcfbc956e4e2f4eca4640e` |
| 36 | `instance` | [instSub](../../../../GeneralTopology/ContinuousMapZeroAtInfty.lean/declarations/instsub.md) | 249 | `declaration-track:d010b4f90e3b9a2c6b2ef729d15ebeaf1f861d499d688bc17291099545fbc1af` |
| 37 | `theorem` | [coe_sub](../../../../GeneralTopology/ContinuousMapZeroAtInfty.lean/declarations/coe-sub.md) | 253 | `result-track:5bee58eb88da684a02096e8d31539de0b69198a2bc72a260068a2ccdf777c719` |
| 38 | `theorem` | [sub_apply](../../../../GeneralTopology/ContinuousMapZeroAtInfty.lean/declarations/sub-apply.md) | 256 | `result-track:f3f4c399ffd85d1705d014b29c4b25110968556837133a93bd0178e38b2d223e` |
| 39 | `instance` | [instAddGroup](../../../../GeneralTopology/ContinuousMapZeroAtInfty.lean/declarations/instaddgroup.md) | 259 | `declaration-track:f095accca069fa9e1edf5fe19fc14a5b906882395821096ab8e4e5cf06d0a367` |
| 40 | `instance` | [instAddCommGroup](../../../../GeneralTopology/ContinuousMapZeroAtInfty.lean/declarations/instaddcommgroup.md) | 264 | `declaration-track:4891114df96f38056abb017c8063fa105837066a745425c5f529f42a4c651380` |
| 41 | `instance` | [instIsCentralScalar](../../../../GeneralTopology/ContinuousMapZeroAtInfty.lean/declarations/instiscentralscalar.md) | 268 | `declaration-track:e732148e54ceac0370facc350b65151346bdb21a81ea975d6e2e88599d2a399e` |
| 42 | `instance` | [instSMulWithZero](../../../../GeneralTopology/ContinuousMapZeroAtInfty.lean/declarations/instsmulwithzero.md) | 272 | `declaration-track:97172ce873ff4150991233b1fe909e5a77f6e2957e370847b8df0b9e96436fd7` |
| 43 | `instance` | [instMulActionWithZero](../../../../GeneralTopology/ContinuousMapZeroAtInfty.lean/declarations/instmulactionwithzero.md) | 276 | `declaration-track:43c6a082112c9a80cd507454a6178ec3cff229f676302a5b0140dc2b0760413c` |
| 44 | `instance` | [instModule](../../../../GeneralTopology/ContinuousMapZeroAtInfty.lean/declarations/instmodule.md) | 280 | `declaration-track:a10864ae746b920cd06ef024ff23f4f28092d734d43206c6e0d9970cd653340f` |
| 45 | `instance` | [instNonUnitalNonAssocSemiring](../../../../GeneralTopology/ContinuousMapZeroAtInfty.lean/declarations/instnonunitalnonassocsemiring.md) | 284 | `declaration-track:25642b4dddc2dfdee0d4e0cee415c510fe1950634858da95985e900835f162a7` |
| 46 | `instance` | [instNonUnitalSemiring](../../../../GeneralTopology/ContinuousMapZeroAtInfty.lean/declarations/instnonunitalsemiring.md) | 288 | `declaration-track:94a4c1af80f3dce871252517d67e2e0ea7479f3315ca01b578ab72510373d5ea` |
| 47 | `instance` | [instNonUnitalCommSemiring](../../../../GeneralTopology/ContinuousMapZeroAtInfty.lean/declarations/instnonunitalcommsemiring.md) | 292 | `declaration-track:9ca7dff02886703802fbc11f768b4937b906c2181270e4c7ce7c8787ed3ebe96` |
| 48 | `instance` | [instNonUnitalNonAssocRing](../../../../GeneralTopology/ContinuousMapZeroAtInfty.lean/declarations/instnonunitalnonassocring.md) | 296 | `declaration-track:0c029f32fb8d01a8727f13fcce0029763de64c130142f766ff70705d054515ee` |
| 49 | `instance` | [instNonUnitalRing](../../../../GeneralTopology/ContinuousMapZeroAtInfty.lean/declarations/instnonunitalring.md) | 301 | `declaration-track:46983d27a6435aeb802b5f20ee4773a06f206901cf763a0e0bb2834836886c75` |
| 50 | `instance` | [instNonUnitalCommRing](../../../../GeneralTopology/ContinuousMapZeroAtInfty.lean/declarations/instnonunitalcommring.md) | 305 | `declaration-track:e9193b01be5e86ed9cbe96277ae5b22cfb04a5223e48a22d4f9f15e351e196cd` |
| 51 | `instance` | [instIsScalarTower](../../../../GeneralTopology/ContinuousMapZeroAtInfty.lean/declarations/instisscalartower.md) | 310 | `declaration-track:8658817a4d024b629934a73cfbce032473c23bf54d39b67e8db1b7b9835d3345` |
| 52 | `instance` | [instSMulCommClass](../../../../GeneralTopology/ContinuousMapZeroAtInfty.lean/declarations/instsmulcommclass.md) | 318 | `declaration-track:74407142d282c3ae04c38d3c329c2344844b1f4c2c1623e47e23019a6ea468b4` |
| 53 | `theorem` | [uniformContinuous](../../../../GeneralTopology/ContinuousMapZeroAtInfty.lean/declarations/uniformcontinuous.md) | 333 | `result-track:07a3a867bca4312688d7d6fe640f8885dd8e5199519b16c0daf1a7f6f78950e8` |
| 54 | `theorem` | [bounded](../../../../GeneralTopology/ContinuousMapZeroAtInfty.lean/declarations/bounded.md) | 353 | `result-track:119d80663fe683b5d51d8b7779ece755838908466bf489136d5b4e9bf4eed1a4` |
| 55 | `theorem` | [isBounded_range](../../../../GeneralTopology/ContinuousMapZeroAtInfty.lean/declarations/isbounded-range.md) | 366 | `result-track:83385db39d0b42247860125dfb2d882acadc90b8d4cda8e7a77dbc59fef1bd94` |
| 56 | `theorem` | [isBounded_image](../../../../GeneralTopology/ContinuousMapZeroAtInfty.lean/declarations/isbounded-image.md) | 369 | `result-track:682d8b01f6fea5c6ec4637ce53982748c17c5cfb6975ed1d08e5ce77cc697c97` |
| 57 | `instance` | [(anonymous)](../../../../GeneralTopology/ContinuousMapZeroAtInfty.lean/declarations/instance.md) | 372 | `declaration-track:82b0f2cdcd0977c90f4ee510b9d99813987d1f03e4d29910d203915340abc476` |
| 58 | `def` | [toBCF](../../../../GeneralTopology/ContinuousMapZeroAtInfty.lean/declarations/tobcf.md) | 378 | `declaration-track:19cd35ef1d23c8ae3c3d445c0fa3d0382de17b4cb5c647394b09cd2accf8f5d2` |
| 59 | `theorem` | [toBCF_injective](../../../../GeneralTopology/ContinuousMapZeroAtInfty.lean/declarations/tobcf-injective.md) | 385 | `result-track:9758410bf68eeba6e15d80e637a47093615b4f0389af477767940c08a4e2a3de` |
| 60 | `instance` | [instPseudoMetricSpace](../../../../GeneralTopology/ContinuousMapZeroAtInfty.lean/declarations/instpseudometricspace.md) | 395 | `declaration-track:f78b625fcf91a80d06aa15e3c54b8a3c927cf26b59490c9d2f56596841316acc` |
| 61 | `instance` | [instMetricSpace](../../../../GeneralTopology/ContinuousMapZeroAtInfty.lean/declarations/instmetricspace.md) | 400 | `declaration-track:3363314c1bcf12109bdbc4ddf74c77aeef4c4300d5e8cc0c1b0efdfc78ea30cf` |
| 62 | `theorem` | [dist_toBCF_eq_dist](../../../../GeneralTopology/ContinuousMapZeroAtInfty.lean/declarations/dist-tobcf-eq-dist.md) | 405 | `result-track:c494c6969313c1fc423c60e96d6b758a44b851bcc45cc0f541d80133841289f5` |
| 63 | `theorem` | [tendsto_iff_tendstoUniformly](../../../../GeneralTopology/ContinuousMapZeroAtInfty.lean/declarations/tendsto-iff-tendstouniformly.md) | 411 | `result-track:d78ac46092b87745446df883c9817584c24b8f6b6bcd0aed7b808cb8a638549b` |
| 64 | `theorem` | [isometry_toBCF](../../../../GeneralTopology/ContinuousMapZeroAtInfty.lean/declarations/isometry-tobcf.md) | 417 | `result-track:f9e4ef2d87b4f833eec207cc0c2da28889669f815eec17c9ed2923d0094e94e2` |
| 65 | `theorem` | [isClosed_range_toBCF](../../../../GeneralTopology/ContinuousMapZeroAtInfty.lean/declarations/isclosed-range-tobcf.md) | 419 | `result-track:1e1e6deb10fe0da76df0de5e45539bd91543a1d783cf89ef01aee4b2ff20adc3` |
| 66 | `instance` | [instCompleteSpace](../../../../GeneralTopology/ContinuousMapZeroAtInfty.lean/declarations/instcompletespace.md) | 436 | `declaration-track:c2ba3804eadf6723dabe0e20f46bf67fd0b87d84e340ef7e9f3ef4076373d9b6` |
| 67 | `instance` | [instSeminormedAddCommGroup](../../../../GeneralTopology/ContinuousMapZeroAtInfty.lean/declarations/instseminormedaddcommgroup.md) | 454 | `declaration-track:b0f2528288a662ee0a7463a01c7d809a49ce4cf472616198579875569bbe43c7` |
| 68 | `instance` | [instNormedAddCommGroup](../../../../GeneralTopology/ContinuousMapZeroAtInfty.lean/declarations/instnormedaddcommgroup.md) | 458 | `declaration-track:2817c2e3703337d703045c5e7000ac9e5da9614b66b405c6c41fed7c59b1943c` |
| 69 | `theorem` | [norm_toBCF_eq_norm](../../../../GeneralTopology/ContinuousMapZeroAtInfty.lean/declarations/norm-tobcf-eq-norm.md) | 466 | `result-track:eb57cc67040e1f27bfdba58bfa06380898d6fb494f3d8998f111104af1b505c4` |
| 70 | `instance` | [(anonymous)](../../../../GeneralTopology/ContinuousMapZeroAtInfty.lean/declarations/instance-source-edition-2.md) | 469 | `declaration-track:c726b5a0d06a16aa526a08775f3aaf88917219ddb49a97b79d2fee37a9ec424d` |
| 71 | `instance` | [instNonUnitalSeminormedRing](../../../../GeneralTopology/ContinuousMapZeroAtInfty.lean/declarations/instnonunitalseminormedring.md) | 476 | `declaration-track:895275c420d58fb805545e3a531c43eddacfdee886aacc7cc8a4a10cf1a8e7e9` |
| 72 | `instance` | [instNonUnitalNormedRing](../../../../GeneralTopology/ContinuousMapZeroAtInfty.lean/declarations/instnonunitalnormedring.md) | 481 | `declaration-track:1736e2af48af85067fad238ea5a747a864546d2c6cbbeef70bf72a52fd740270` |
| 73 | `instance` | [instNonUnitalSeminormedCommRing](../../../../GeneralTopology/ContinuousMapZeroAtInfty.lean/declarations/instnonunitalseminormedcommring.md) | 485 | `declaration-track:fb2c831807fac736e6b6ecd8462cad98ea5a55d9c2fb41e0023cb1d5109b11e7` |
| 74 | `instance` | [instNonUnitalNormedCommRing](../../../../GeneralTopology/ContinuousMapZeroAtInfty.lean/declarations/instnonunitalnormedcommring.md) | 489 | `declaration-track:741de7afcffcb8b92ad1147aca0673635c8be0b2d7c71d2bf3efe98bc9d54e41` |
| 75 | `instance` | [instStar](../../../../GeneralTopology/ContinuousMapZeroAtInfty.lean/declarations/inststar.md) | 512 | `declaration-track:c43d7582fab3d4a25e024dfcbbd253d29bb336ca109889d9ab899ebed00f56f2` |
| 76 | `theorem` | [coe_star](../../../../GeneralTopology/ContinuousMapZeroAtInfty.lean/declarations/coe-star.md) | 520 | `result-track:d97a6a8085e6a07543c280112e0f14f915011814703958b4d220956ba6fd5dd0` |
| 77 | `theorem` | [star_apply](../../../../GeneralTopology/ContinuousMapZeroAtInfty.lean/declarations/star-apply.md) | 523 | `result-track:4bcfd94881defb0efa6fb4e9397179950efddcbf89d5f2fe92ed4df9d8171a08` |
| 78 | `instance` | [instStarAddMonoid](../../../../GeneralTopology/ContinuousMapZeroAtInfty.lean/declarations/inststaraddmonoid.md) | 526 | `declaration-track:e4c161545d52d9185e39fef453d932085204e7168c9e7d82f1b1db1b6fc6b72c` |
| 79 | `instance` | [instNormedStarGroup](../../../../GeneralTopology/ContinuousMapZeroAtInfty.lean/declarations/instnormedstargroup.md) | 536 | `declaration-track:48ac9ae7b8836c056d9731debac4f058c2d436206c48c2c16723370940ae176f` |
| 80 | `instance` | [instStarModule](../../../../GeneralTopology/ContinuousMapZeroAtInfty.lean/declarations/inststarmodule.md) | 546 | `declaration-track:3397183bb128e51387bcfd7dbae23edc9ae77023be7762cbc7e5a1f25df8a78a` |
| 81 | `instance` | [instStarRing](../../../../GeneralTopology/ContinuousMapZeroAtInfty.lean/declarations/inststarring.md) | 556 | `declaration-track:f21c7944750b3c3548a8809f10281350cbaa8cb002cef327458946d1a4780a52` |
| 82 | `instance` | [instCStarRing](../../../../GeneralTopology/ContinuousMapZeroAtInfty.lean/declarations/instcstarring.md) | 564 | `declaration-track:1b54e67f7ac12ca8a9afdac776e6b7bb52d2fedaa3364cf3468f6633f2ca06fa` |
| 83 | `def` | [comp](../../../../GeneralTopology/ContinuousMapZeroAtInfty.lean/declarations/comp.md) | 586 | `declaration-track:6ab3e4e4b0bbcb456aa1109b3ebad030f97c8c09317e808cf7cbaa4aa380027f` |
| 84 | `theorem` | [coe_comp_to_continuous_fun](../../../../GeneralTopology/ContinuousMapZeroAtInfty.lean/declarations/coe-comp-to-continuous-fun.md) | 591 | `result-track:e2a2ad68e628ebbbb9ae5731c99f26e8cedd917e114f11304d8e5beaba807c88` |
| 85 | `theorem` | [comp_id](../../../../GeneralTopology/ContinuousMapZeroAtInfty.lean/declarations/comp-id.md) | 595 | `result-track:216b3b99c80c150b502cb09d26fb0dcdeba60f2d94378bfb6994b29b355a8f4b` |
| 86 | `theorem` | [comp_assoc](../../../../GeneralTopology/ContinuousMapZeroAtInfty.lean/declarations/comp-assoc.md) | 599 | `result-track:d59bc66dacc45897801f587914759f3c7d6a4d4c0004726a1128cb6ea47db32d` |
| 87 | `theorem` | [zero_comp](../../../../GeneralTopology/ContinuousMapZeroAtInfty.lean/declarations/zero-comp.md) | 604 | `result-track:6ea24b18ca517597278b091ed96c29966ba0cb6a51cf4b7b547ee05ac77072cc` |
| 88 | `def` | [compAddMonoidHom](../../../../GeneralTopology/ContinuousMapZeroAtInfty.lean/declarations/compaddmonoidhom.md) | 610 | `declaration-track:74ee1397a35b86d3be405331ac7e31c68718b963a6699752672bf889e5bdcd81` |
| 89 | `def` | [compMulHom](../../../../GeneralTopology/ContinuousMapZeroAtInfty.lean/declarations/compmulhom.md) | 616 | `declaration-track:cb51ac2dcb513085ce5b2eb3d7206c28c4b6b89607065f0df1ab5eb5a529fd5e` |
| 90 | `def` | [compLinearMap](../../../../GeneralTopology/ContinuousMapZeroAtInfty.lean/declarations/complinearmap.md) | 621 | `declaration-track:f796c0ead4dc6dc25dfbb50f9e14964523268054682ee8385229003d82a91254` |
| 91 | `def` | [compNonUnitalAlgHom](../../../../GeneralTopology/ContinuousMapZeroAtInfty.lean/declarations/compnonunitalalghom.md) | 628 | `declaration-track:009efee396a6f605bf07ec209fd16eca00241bfaa8d85fccfbad27d04a494d12` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=c5d6cc478a4ef8759b94d540f5bbc44ed05908fd98f63cd612e7773befd04153 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/ZeroAtInfty/Variant2a3383b93b0dc1636557e55cc2f51a2ceb79605aa03af5f2b42d407580b0f373.lean","GRWTSK/_verification/specifications/Topology/GeneralTopology/ZeroAtInfty/Variant2a3383b93b0dc1636557e55cc2f51a2ceb79605aa03af5f2b42d407580b0f373.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
