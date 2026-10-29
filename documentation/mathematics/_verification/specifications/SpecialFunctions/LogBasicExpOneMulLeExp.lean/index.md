# Verification target: Log Basic Exp One Mul Le Exp

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5fe4380a167ceb6b20db4664740c8c4689c3eec0",
  "lexical_observation_count": 96,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Basic/Variant7a9330163b97b280680288661e2657652e863d8f53869c897d0fd250fd479898.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../SpecialFunctions/LogBasicExpOneMulLeExp.lean/index.md) · [Full source](../../../../SpecialFunctions/LogBasicExpOneMulLeExp.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5fe4380a167ceb6b20db4664740c8c4689c3eec0`.

Source path: `GRWTSK/Topology/GeneralTopology/Basic/Variant7a9330163b97b280680288661e2657652e863d8f53869c897d0fd250fd479898.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Basic/Variant7a9330163b97b280680288661e2657652e863d8f53869c897d0fd250fd479898.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.SpecialFunctions.Exp` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Nat.Factorization.Defs` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.NormedSpace.Real` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Rat.Cast.CharZero` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [log](../../../../SpecialFunctions/LogBasicExpOneMulLeExp.lean/declarations/log.md) | 40 | `declaration-track:6f9ea06ab7b1a85184df31eab7ba82dcb417a37c13dea5fa67447de3ebb016b2` |
| 2 | `theorem` | [log_of_ne_zero](../../../../SpecialFunctions/LogBasicExpOneMulLeExp.lean/declarations/log-of-ne-zero.md) | 43 | `result-track:254e78869938a10ab072c83fea046d0677f6ee8e83b544c6b370b5af7ab9d3e9` |
| 3 | `theorem` | [log_of_pos](../../../../SpecialFunctions/LogBasicExpOneMulLeExp.lean/declarations/log-of-pos.md) | 46 | `result-track:02f8fbe1ae548fc7f6562575dd302d5f1dbaacf0b833e28ed90a50606d8b4d85` |
| 4 | `theorem` | [exp_log_eq_abs](../../../../SpecialFunctions/LogBasicExpOneMulLeExp.lean/declarations/exp-log-eq-abs.md) | 51 | `result-track:12f852828e3ce656a27cb7d6591667dc1893bba4365dcbcf6462b9fc55cd6c37` |
| 5 | `theorem` | [exp_log](../../../../SpecialFunctions/LogBasicExpOneMulLeExp.lean/declarations/exp-log.md) | 54 | `result-track:7e1d40178c70d8864e4470e63d9bfc994acc6e49f9783e4d961af74717e041e4` |
| 6 | `theorem` | [exp_log_of_neg](../../../../SpecialFunctions/LogBasicExpOneMulLeExp.lean/declarations/exp-log-of-neg.md) | 58 | `result-track:7ed0628c92f8c6ce19c04a8ee5dfad7a7849931967196335735843d17e12262a` |
| 7 | `theorem` | [le_exp_log](../../../../SpecialFunctions/LogBasicExpOneMulLeExp.lean/declarations/le-exp-log.md) | 62 | `result-track:9ebbe237e576b6bb58cbff7ca507abf0c57a2e46880c7e0025f56d7de490b04c` |
| 8 | `theorem` | [log_exp](../../../../SpecialFunctions/LogBasicExpOneMulLeExp.lean/declarations/log-exp.md) | 70 | `result-track:ac0126362da6ef63ddffb6f05840e52374102711f4cb1256c953bf3d73b8f0bc` |
| 9 | `theorem` | [exp_one_mul_le_exp](../../../../SpecialFunctions/LogBasicExpOneMulLeExp.lean/declarations/exp-one-mul-le-exp.md) | 73 | `result-track:fbcfcc5787af6c74d4dc76faa69b8adb0623ea7d34847ff1c5c0fe8ce682a39c` |
| 10 | `theorem` | [two_mul_le_exp](../../../../SpecialFunctions/LogBasicExpOneMulLeExp.lean/declarations/two-mul-le-exp.md) | 79 | `result-track:c344b97abbe9fc6bd37c8089fc66a81ac8d0cb87592c8723c2a52ed89e15cbd7` |
| 11 | `theorem` | [surjOn_log](../../../../SpecialFunctions/LogBasicExpOneMulLeExp.lean/declarations/surjon-log.md) | 87 | `result-track:31399efbd0acf2c4d4ac5ec91b97eec9efa65607853cbdd5779d7de216cc3c3e` |
| 12 | `theorem` | [log_surjective](../../../../SpecialFunctions/LogBasicExpOneMulLeExp.lean/declarations/log-surjective.md) | 89 | `result-track:8ce3d703ed64c8231f8cca758b591782b968289bfb41d712d71b97c29fcb2206` |
| 13 | `theorem` | [range_log](../../../../SpecialFunctions/LogBasicExpOneMulLeExp.lean/declarations/range-log.md) | 92 | `result-track:281434fa117154a5df7d4a958578817fcb4e9236a03062f993e093522e368b3f` |
| 14 | `theorem` | [log_zero](../../../../SpecialFunctions/LogBasicExpOneMulLeExp.lean/declarations/log-zero.md) | 96 | `result-track:9821305faf6d47ba37364766194f9a584cb6281cafd422e7f966ca01de98d0ba` |
| 15 | `theorem` | [log_one](../../../../SpecialFunctions/LogBasicExpOneMulLeExp.lean/declarations/log-one.md) | 100 | `result-track:074f764aeb24550c66f6d98e8dbc071b229372311e8dd8380ae4df1d75557275` |
| 16 | `lemma` | [log_div_self](../../../../SpecialFunctions/LogBasicExpOneMulLeExp.lean/declarations/log-div-self.md) | 104 | `result-track:5729ce85ec34eed9970c22df459cdf2e3ad31ea76a6f0ddc8e8f454aea7a096d` |
| 17 | `theorem` | [log_abs](../../../../SpecialFunctions/LogBasicExpOneMulLeExp.lean/declarations/log-abs.md) | 108 | `result-track:00cb993082fb1abd6dda1a6e0bc112e321371e435be0fe007757463cc8c0fb46` |
| 18 | `theorem` | [log_neg_eq_log](../../../../SpecialFunctions/LogBasicExpOneMulLeExp.lean/declarations/log-neg-eq-log.md) | 114 | `result-track:fbf94d04545481d1a1d4a704482b906081d223eb20ce843f586f9ae119d7c01c` |
| 19 | `theorem` | [sinh_log](../../../../SpecialFunctions/LogBasicExpOneMulLeExp.lean/declarations/sinh-log.md) | 116 | `result-track:e119894d7fcadf91723c9e7b6b9fdc6fcc38f7d583539b1eeda90833a21b1a7d` |
| 20 | `theorem` | [cosh_log](../../../../SpecialFunctions/LogBasicExpOneMulLeExp.lean/declarations/cosh-log.md) | 119 | `result-track:f7a2a9278c92eb5ec25ed0825f5b4614631dada84968992c8a12ffee0c812579` |
| 21 | `theorem` | [surjOn_log'](../../../../SpecialFunctions/LogBasicExpOneMulLeExp.lean/declarations/surjon-log-source-edition-2.md) | 122 | `result-track:99fe4adb1e60ccb54043f6c30e97b0de6faaf71723261a28c01929b1ce8629ea` |
| 22 | `theorem` | [log_mul](../../../../SpecialFunctions/LogBasicExpOneMulLeExp.lean/declarations/log-mul.md) | 125 | `result-track:08b63023f72abcb97c953f059bd35ef53e45c067f17311b25495a9f9aac85fdb` |
| 23 | `theorem` | [log_div](../../../../SpecialFunctions/LogBasicExpOneMulLeExp.lean/declarations/log-div.md) | 129 | `result-track:ba33d0f385398404b69d7fa6cacffab17e908a11cff412406b1bf7fb6564f6ac` |
| 24 | `theorem` | [log_inv](../../../../SpecialFunctions/LogBasicExpOneMulLeExp.lean/declarations/log-inv.md) | 134 | `result-track:546d13f88fd3dabad3a2245799d2530e3a4f08479e41f7b7c52a6d7b86f566b1` |
| 25 | `theorem` | [log_le_log_iff](../../../../SpecialFunctions/LogBasicExpOneMulLeExp.lean/declarations/log-le-log-iff.md) | 138 | `result-track:1a741eed7b7be10e4b152cfeb0dcf50e514eb0d9a33898f4b7c342d2964b9d86` |
| 26 | `lemma` | [log_le_log](../../../../SpecialFunctions/LogBasicExpOneMulLeExp.lean/declarations/log-le-log.md) | 142 | `result-track:bb29806cbb0ac525e6f0d8d29d47d16f62d497d1309478aae8ff7875481b850f` |
| 27 | `theorem` | [log_lt_log](../../../../SpecialFunctions/LogBasicExpOneMulLeExp.lean/declarations/log-lt-log.md) | 146 | `result-track:820df0662e77621d4818a0b813017330c123eb600a2c491d0b53f110f83480cd` |
| 28 | `theorem` | [log_lt_log_iff](../../../../SpecialFunctions/LogBasicExpOneMulLeExp.lean/declarations/log-lt-log-iff.md) | 149 | `result-track:244d0d11dd29c12d5d11e98e96ffb01386110bbde44fde6d00a5f8daca2f2e43` |
| 29 | `theorem` | [log_le_iff_le_exp](../../../../SpecialFunctions/LogBasicExpOneMulLeExp.lean/declarations/log-le-iff-le-exp.md) | 152 | `result-track:82d9aaf0423f3820ded8be9367204775ec3e5d4210a1e4a6bbb85f255eb622a6` |
| 30 | `theorem` | [log_lt_iff_lt_exp](../../../../SpecialFunctions/LogBasicExpOneMulLeExp.lean/declarations/log-lt-iff-lt-exp.md) | 154 | `result-track:bf6943e78f09180cc5a9aeb8a0e89522623802c2d431272b48a85da9dda2b331` |
| 31 | `theorem` | [le_log_iff_exp_le](../../../../SpecialFunctions/LogBasicExpOneMulLeExp.lean/declarations/le-log-iff-exp-le.md) | 156 | `result-track:89fa46afdbc3f8a703c22de0e4600d1eb50fe43b2b21eaf378cc3b3cec4b84f4` |
| 32 | `theorem` | [lt_log_iff_exp_lt](../../../../SpecialFunctions/LogBasicExpOneMulLeExp.lean/declarations/lt-log-iff-exp-lt.md) | 158 | `result-track:f2958725f720ea39ad85b6a2afaa36554322c996ce57043924c85807fe53ffce` |
| 33 | `theorem` | [log_pos_iff](../../../../SpecialFunctions/LogBasicExpOneMulLeExp.lean/declarations/log-pos-iff.md) | 160 | `result-track:25cb803bdc0ee1d7db9d3a1b764bd3249e47486f97f41a8f91b52b4bfd3ef993` |
| 34 | `theorem` | [log_pos](../../../../SpecialFunctions/LogBasicExpOneMulLeExp.lean/declarations/log-pos.md) | 167 | `result-track:b2f7ed8e43eaa9751a0840df6dffe35bc80f5066f244b8eee92091262800e3ae` |
| 35 | `theorem` | [log_pos_of_lt_neg_one](../../../../SpecialFunctions/LogBasicExpOneMulLeExp.lean/declarations/log-pos-of-lt-neg-one.md) | 170 | `result-track:68f44cd2ab2a285b49437e6a3840a4bc3539c865b7a03766e24efcbea5bc372b` |
| 36 | `theorem` | [log_neg_iff](../../../../SpecialFunctions/LogBasicExpOneMulLeExp.lean/declarations/log-neg-iff.md) | 175 | `result-track:ffdc9e44ed47606ca34bf8a29dbee07ac1d672732fbf6d8d1c96f8a640b41438` |
| 37 | `theorem` | [log_neg](../../../../SpecialFunctions/LogBasicExpOneMulLeExp.lean/declarations/log-neg.md) | 180 | `result-track:abe5372cc07b32f033c40fda0e75e4d197543e4830ac41be8f93f4fd72566d29` |
| 38 | `theorem` | [log_neg_of_lt_zero](../../../../SpecialFunctions/LogBasicExpOneMulLeExp.lean/declarations/log-neg-of-lt-zero.md) | 183 | `result-track:631d7808dffb4f3b1ab5cf9434f34e73aaec1c90c1ac1d287507a3b0fa129406` |
| 39 | `theorem` | [log_nonneg_iff](../../../../SpecialFunctions/LogBasicExpOneMulLeExp.lean/declarations/log-nonneg-iff.md) | 189 | `result-track:5874c64428f14c9ff653942458c6bed4a2bd693116be8bdecdfb4aabcc797216` |
| 40 | `theorem` | [log_nonneg](../../../../SpecialFunctions/LogBasicExpOneMulLeExp.lean/declarations/log-nonneg.md) | 192 | `result-track:d5a8d0cd6ed65c84496fa9472ae5018a026dbd8a46b1429a6464b3ff57fdbbfb` |
| 41 | `theorem` | [log_nonpos_iff](../../../../SpecialFunctions/LogBasicExpOneMulLeExp.lean/declarations/log-nonpos-iff.md) | 195 | `result-track:e1ab854134b0aeca7412c53262b122f9026e7b767930b96d8b54ff683f3aa98d` |
| 42 | `theorem` | [log_nonpos](../../../../SpecialFunctions/LogBasicExpOneMulLeExp.lean/declarations/log-nonpos.md) | 204 | `result-track:dfb3a395ca890063432a9b1683ec101740184dac58f6a0ed6dcd42e2810f11ec` |
| 43 | `theorem` | [log_natCast_nonneg](../../../../SpecialFunctions/LogBasicExpOneMulLeExp.lean/declarations/log-natcast-nonneg.md) | 207 | `result-track:182ee8d15ad5f5b57be6dff6475c93b0a372cedce690a9490e14f9961040adc2` |
| 44 | `theorem` | [log_neg_natCast_nonneg](../../../../SpecialFunctions/LogBasicExpOneMulLeExp.lean/declarations/log-neg-natcast-nonneg.md) | 214 | `result-track:9a46d790b2840532e9979d028c455c7e55f7caf63dc254ec09b978450a26fbcb` |
| 45 | `theorem` | [log_intCast_nonneg](../../../../SpecialFunctions/LogBasicExpOneMulLeExp.lean/declarations/log-intcast-nonneg.md) | 218 | `result-track:c15511351e0b000e090b13ede9c63bce56a81e2f3f63dc0939eb8cb9dc558ba6` |
| 46 | `theorem` | [strictMonoOn_log](../../../../SpecialFunctions/LogBasicExpOneMulLeExp.lean/declarations/strictmonoon-log.md) | 231 | `result-track:00745fd1de5d4416d0264365252908b1ee1600c5188383b9cb6d53b6c17795b1` |
| 47 | `theorem` | [strictAntiOn_log](../../../../SpecialFunctions/LogBasicExpOneMulLeExp.lean/declarations/strictantion-log.md) | 233 | `result-track:a62fb1e7c43a1308ee9d83997e7a7cd47bc8ea260184e9b44b063d1c6a9d1eed` |
| 48 | `theorem` | [log_injOn_pos](../../../../SpecialFunctions/LogBasicExpOneMulLeExp.lean/declarations/log-injon-pos.md) | 239 | `result-track:4ad9178139625e3ce65410028d5f2cce5710dbf86101f8b6a91a748ae82c1362` |
| 49 | `theorem` | [log_lt_sub_one_of_pos](../../../../SpecialFunctions/LogBasicExpOneMulLeExp.lean/declarations/log-lt-sub-one-of-pos.md) | 242 | `result-track:5d0a00128ce5a72f49d98617ce62645a35193f1594f2d39aa545ff5dedeeffbc` |
| 50 | `theorem` | [eq_one_of_pos_of_log_eq_zero](../../../../SpecialFunctions/LogBasicExpOneMulLeExp.lean/declarations/eq-one-of-pos-of-log-eq-zero.md) | 248 | `result-track:683153163216ca1f0dba0faf96b53d07d81cdd7d548c4687df19b0a3eb73fb47` |
| 51 | `theorem` | [log_ne_zero_of_pos_of_ne_one](../../../../SpecialFunctions/LogBasicExpOneMulLeExp.lean/declarations/log-ne-zero-of-pos-of-ne-one.md) | 251 | `result-track:d5d402fbe306b4b416a316eb022ed65ae8ea57dac2b88a53039dfa93ba0aca7d` |
| 52 | `theorem` | [log_eq_zero](../../../../SpecialFunctions/LogBasicExpOneMulLeExp.lean/declarations/log-eq-zero.md) | 255 | `result-track:6e76b2db4dd19c3926e34c9e470a69d5596f667c10c156805159bf7b659fb6e6` |
| 53 | `theorem` | [log_ne_zero](../../../../SpecialFunctions/LogBasicExpOneMulLeExp.lean/declarations/log-ne-zero.md) | 266 | `result-track:a53df0c6ed6b0ebe65fc52ef73755f87e371bafba45df6edde9a66e28892d73a` |
| 54 | `theorem` | [log_pow](../../../../SpecialFunctions/LogBasicExpOneMulLeExp.lean/declarations/log-pow.md) | 270 | `result-track:7a5b5e71e3ae6eefebc215c47d7e22df43e7d379e53fdc1bdce350e27423e592` |
| 55 | `theorem` | [log_zpow](../../../../SpecialFunctions/LogBasicExpOneMulLeExp.lean/declarations/log-zpow.md) | 279 | `result-track:5ef84b837c5a8a8bcd198fd0b6bd7c60aa47ce193e2de810f60a0532e3e6219d` |
| 56 | `theorem` | [log_sqrt](../../../../SpecialFunctions/LogBasicExpOneMulLeExp.lean/declarations/log-sqrt.md) | 284 | `result-track:1be2ac0015966e4d808a2d5727f3daf18c27dc8e61adb1612c57e3a8decb9994` |
| 57 | `theorem` | [log_le_sub_one_of_pos](../../../../SpecialFunctions/LogBasicExpOneMulLeExp.lean/declarations/log-le-sub-one-of-pos.md) | 288 | `result-track:a152c2e1755865c450ef2577758767bab6eadc2275a5fa18d6b05d94d3eb8e7f` |
| 58 | `lemma` | [one_sub_inv_le_log_of_pos](../../../../SpecialFunctions/LogBasicExpOneMulLeExp.lean/declarations/one-sub-inv-le-log-of-pos.md) | 293 | `result-track:892869f93ebe04ddbbbe680bb669b7afb5df089219faf1cc26264897bfd0f0d0` |
| 59 | `lemma` | [log_le_self](../../../../SpecialFunctions/LogBasicExpOneMulLeExp.lean/declarations/log-le-self.md) | 297 | `result-track:0b34affe4cf12236653623ee615b6c38bdfabef1faa2663d04182d997e7a7762` |
| 60 | `lemma` | [neg_inv_le_log](../../../../SpecialFunctions/LogBasicExpOneMulLeExp.lean/declarations/neg-inv-le-log.md) | 303 | `result-track:e587733653c1e91b99b2b08dc0b798b40a6fb99a141873efa5c23e33e0eb1c72` |
| 61 | `theorem` | [abs_log_mul_self_lt](../../../../SpecialFunctions/LogBasicExpOneMulLeExp.lean/declarations/abs-log-mul-self-lt.md) | 307 | `result-track:c4c049954aa7c7a11186a9c39f1a63c11e45c58b69a4f5fd94bd6a05502157c9` |
| 62 | `theorem` | [tendsto_log_atTop](../../../../SpecialFunctions/LogBasicExpOneMulLeExp.lean/declarations/tendsto-log-attop.md) | 322 | `result-track:9a882ef2c15b76b62bb53ec101b1cb3fb529ae3b79e4d4532a43a9845d899b3c` |
| 63 | `lemma` | [tendsto_log_nhdsGT_zero](../../../../SpecialFunctions/LogBasicExpOneMulLeExp.lean/declarations/tendsto-log-nhdsgt-zero.md) | 325 | `result-track:77011c6598936fd25853e37097ac20cbb1fbdab75c852954ec9aa6df426ee252` |
| 64 | `theorem` | [tendsto_log_nhdsNE_zero](../../../../SpecialFunctions/LogBasicExpOneMulLeExp.lean/declarations/tendsto-log-nhdsne-zero.md) | 331 | `result-track:cd3c2990a61f4ec453c47b948ccbd5058d1877e9d02bb88bde07494ff3b9c3d2` |
| 65 | `lemma` | [tendsto_log_nhdsLT_zero](../../../../SpecialFunctions/LogBasicExpOneMulLeExp.lean/declarations/tendsto-log-nhdslt-zero.md) | 337 | `result-track:cd17b2d8468578b789c81fb6196673263f49e5829303b631e1f2118d33635137` |
| 66 | `theorem` | [continuousOn_log](../../../../SpecialFunctions/LogBasicExpOneMulLeExp.lean/declarations/continuouson-log-source-edition-2.md) | 343 | `result-track:5a4228763b54eaeaa2d337236412961392846c6ebca52a698a214e8bb749dc85` |
| 67 | `theorem` | [continuous_log](../../../../SpecialFunctions/LogBasicExpOneMulLeExp.lean/declarations/continuous-log-source-edition-2.md) | 351 | `result-track:8b78a3f321fec80de29eb8703b4949c466d596cada0f099dc7b55f2a3f5aa751` |
| 68 | `theorem` | [continuous_log'](../../../../SpecialFunctions/LogBasicExpOneMulLeExp.lean/declarations/continuous-log.md) | 356 | `result-track:0fb8af7f4bca12048f8691a8014e59ba9974e53f6b4d4100235a3f8d37afa3b7` |
| 69 | `theorem` | [continuousAt_log](../../../../SpecialFunctions/LogBasicExpOneMulLeExp.lean/declarations/continuousat-log.md) | 359 | `result-track:1dac0e767ef2e59f8463a232407e4846762252ee4ab006356728583f7cdf9e19` |
| 70 | `theorem` | [continuousAt_log_iff](../../../../SpecialFunctions/LogBasicExpOneMulLeExp.lean/declarations/continuousat-log-iff.md) | 363 | `result-track:91e4694267a2664783f6746bd9e6698f667a450bb91e0548846198dd1fa67f90` |
| 71 | `theorem` | [log_prod](../../../../SpecialFunctions/LogBasicExpOneMulLeExp.lean/declarations/log-prod.md) | 369 | `result-track:5acfff9d29fcd1626595d8fbb100e23e9cabdbb908f501ad513f83d1dec0eb32` |
| 72 | `theorem` | [_root_.Finsupp.log_prod](../../../../SpecialFunctions/LogBasicExpOneMulLeExp.lean/declarations/root-finsupp-log-prod.md) | 376 | `result-track:11fc0bef16a182e0c6a315009f1205d3d425e40799558f2c76bdc2517109e18d` |
| 73 | `theorem` | [log_nat_eq_sum_factorization](../../../../SpecialFunctions/LogBasicExpOneMulLeExp.lean/declarations/log-nat-eq-sum-factorization.md) | 380 | `result-track:95e6fef14d8b9c7a3b426e7dc7564b0b3e78099aa2fb12f272329d2c25e879b2` |
| 74 | `theorem` | [tendsto_pow_log_div_mul_add_atTop](../../../../SpecialFunctions/LogBasicExpOneMulLeExp.lean/declarations/tendsto-pow-log-div-mul-add-attop.md) | 389 | `result-track:07b07cb51ad8cda48547d3e20add90e1fa6d61fabde7405bb68d494ac7da9ff4` |
| 75 | `theorem` | [isLittleO_pow_log_id_atTop](../../../../SpecialFunctions/LogBasicExpOneMulLeExp.lean/declarations/islittleo-pow-log-id-attop.md) | 394 | `result-track:bded97e33e6b189eaaeaac24f79cfee835305da2b318145d8d738de91e2877bf` |
| 76 | `theorem` | [isLittleO_log_id_atTop](../../../../SpecialFunctions/LogBasicExpOneMulLeExp.lean/declarations/islittleo-log-id-attop.md) | 399 | `result-track:1f6edeb0ecdf0c41b7b4d3e5fdc2de6427a2829427c41da7089020714e777310` |
| 77 | `theorem` | [isLittleO_const_log_atTop](../../../../SpecialFunctions/LogBasicExpOneMulLeExp.lean/declarations/islittleo-const-log-attop.md) | 402 | `result-track:24ee4863b06c3ff9e09dd465e1a5c54a81efc36274af2eed85774569837a08c2` |
| 78 | `def` | [expPartialHomeomorph](../../../../SpecialFunctions/LogBasicExpOneMulLeExp.lean/declarations/exppartialhomeomorph.md) | 409 | `declaration-track:7c1552ffadccfac3dee0e4630b7ada741b3888b73be77b052ec49f11bf88a77c` |
| 79 | `theorem` | [Filter.Tendsto.log](../../../../SpecialFunctions/LogBasicExpOneMulLeExp.lean/declarations/filter-tendsto-log.md) | 431 | `result-track:4966749fcc868da1dfe75ec9977acfbc0e649d2876b782c4b71ddb0e7922037b` |
| 80 | `theorem` | [Continuous.log](../../../../SpecialFunctions/LogBasicExpOneMulLeExp.lean/declarations/continuous-log-source-edition-3.md) | 438 | `result-track:e70851081c49b09a5bdb56d2dcaf78d8ceaaf5cc7a0df542bed89d4905006677` |
| 81 | `theorem` | [ContinuousAt.log](../../../../SpecialFunctions/LogBasicExpOneMulLeExp.lean/declarations/continuousat-log-source-edition-2.md) | 442 | `result-track:4b2b16bc985dfb11e4bd1bb462fa4b66451ffe4d5be8a560262d7a993dfd6071` |
| 82 | `theorem` | [ContinuousWithinAt.log](../../../../SpecialFunctions/LogBasicExpOneMulLeExp.lean/declarations/continuouswithinat-log.md) | 446 | `result-track:13fd20b88df9a9079d6f70add3691d3ed369da8fe0dfdab54a8c8393be158e88` |
| 83 | `theorem` | [ContinuousOn.log](../../../../SpecialFunctions/LogBasicExpOneMulLeExp.lean/declarations/continuouson-log.md) | 451 | `result-track:3f08e942e372909e840c8c633bd267d82d13a0984d8415f01620fd8ec3383f27` |
| 84 | `theorem` | [tendsto_log_comp_add_sub_log](../../../../SpecialFunctions/LogBasicExpOneMulLeExp.lean/declarations/tendsto-log-comp-add-sub-log.md) | 462 | `result-track:50cbf28ed2f74e12795bbbf8f5e56be608ac825f6b2b2b2ff794e9f417d0526f` |
| 85 | `theorem` | [tendsto_log_nat_add_one_sub_log](../../../../SpecialFunctions/LogBasicExpOneMulLeExp.lean/declarations/tendsto-log-nat-add-one-sub-log.md) | 471 | `result-track:7b375dbed2a0e033585d0d25f8b7c6e58b9231dd7426af752805e076a04b152d` |
| 86 | `lemma` | [log_nonneg_of_isNat](../../../../SpecialFunctions/LogBasicExpOneMulLeExp.lean/declarations/log-nonneg-of-isnat.md) | 483 | `result-track:f91b53f0df2f87cd88490368d07f163c67719fe937623c624a6da4130ae4aacc` |
| 87 | `lemma` | [log_pos_of_isNat](../../../../SpecialFunctions/LogBasicExpOneMulLeExp.lean/declarations/log-pos-of-isnat.md) | 487 | `result-track:818207c69957f5c8c3875ffd538918456f78cc20fcff0d71fac9668ddd1ac2fa` |
| 88 | `lemma` | [log_nonneg_of_isNegNat](../../../../SpecialFunctions/LogBasicExpOneMulLeExp.lean/declarations/log-nonneg-of-isnegnat.md) | 493 | `result-track:fa78c5db2041500e7f698e938b8ce9b8e734d030586f861245780c880473c756` |
| 89 | `lemma` | [log_pos_of_isNegNat](../../../../SpecialFunctions/LogBasicExpOneMulLeExp.lean/declarations/log-pos-of-isnegnat.md) | 498 | `result-track:19f1ec7579e245dc7bcd90c7864307f4291d2072c3c6a875087b0197f21225d9` |
| 90 | `lemma` | [log_pos_of_isRat](../../../../SpecialFunctions/LogBasicExpOneMulLeExp.lean/declarations/log-pos-of-israt.md) | 505 | `result-track:8dd2588002b6ab0e39a3d48ed473ccc21e5e17f5d29765100d9b442c38d46203` |
| 91 | `lemma` | [log_pos_of_isRat_neg](../../../../SpecialFunctions/LogBasicExpOneMulLeExp.lean/declarations/log-pos-of-israt-neg.md) | 512 | `result-track:ef5201258f29bd8c54e8790c08e3bf08220a49d9b6d153321f9422902adc7203` |
| 92 | `lemma` | [log_nz_of_isRat](../../../../SpecialFunctions/LogBasicExpOneMulLeExp.lean/declarations/log-nz-of-israt.md) | 519 | `result-track:765a91237f779f6f90af1e4b56446045e1d6d4c74c4e9e9511859d77c3918404` |
| 93 | `lemma` | [log_nz_of_isRat_neg](../../../../SpecialFunctions/LogBasicExpOneMulLeExp.lean/declarations/log-nz-of-israt-neg.md) | 527 | `result-track:94bb9872716c1ab208997ccbfe477e8feb357f5246118f1886cb49367c6982ec` |
| 94 | `def` | [evalLogNatCast](../../../../SpecialFunctions/LogBasicExpOneMulLeExp.lean/declarations/evallognatcast.md) | 537 | `declaration-track:2557e556ca9efc255f1c55cb24caf5a494b44dbf800f8fc5b77a36ba31125924` |
| 95 | `def` | [evalLogIntCast](../../../../SpecialFunctions/LogBasicExpOneMulLeExp.lean/declarations/evallogintcast.md) | 546 | `declaration-track:4dd760bb775b4dda40d04e3cf3bd128631c730d4c80eb6ccf5f2e01fd9635786` |
| 96 | `def` | [evalLogNatLit](../../../../SpecialFunctions/LogBasicExpOneMulLeExp.lean/declarations/evallognatlit.md) | 555 | `declaration-track:0c058de0430f2613f6841c9f3ef427cbf9431e6be2d8933ea79a65906f11d287` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=38df3c3f895a1006c0d4234213b93006e3a9b884307f0ebf7bf95fb9b874240a -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/Basic/Variant7a9330163b97b280680288661e2657652e863d8f53869c897d0fd250fd479898.lean","GRWTSK/_verification/specifications/Topology/GeneralTopology/Basic/Variant7a9330163b97b280680288661e2657652e863d8f53869c897d0fd250fd479898.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
