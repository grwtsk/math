# Verification target: Average Set Laverage Eq Source

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9699ea9a856790438cc83928cc85a500e9bdbb55",
  "lexical_observation_count": 91,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/Average/Variant573342ff1b7acc829aaa28c0f8cbcf9fbaad9c7c681ace910009b41d6b6d1021.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/AverageSetLaverageEqSource.lean/index.md) · [Full source](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/AverageSetLaverageEqSource.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9699ea9a856790438cc83928cc85a500e9bdbb55`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/Average/Variant573342ff1b7acc829aaa28c0f8cbcf9fbaad9c7c681ace910009b41d6b6d1021.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/Average/Variant573342ff1b7acc829aaa28c0f8cbcf9fbaad9c7c681ace910009b41d6b6d1021.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.MeasureTheory.Integral.SetIntegral` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [laverage](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/AverageSetLaverageEqSource.lean/declarations/laverage.md) | 71 | `declaration-track:30c5ae5082d4e6485b218dd4b5ac3e8d1cc0c38f4a27aac5f8842bad465abf82` |
| 2 | `theorem` | [laverage_zero](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/AverageSetLaverageEqSource.lean/declarations/laverage-zero.md) | 81 | `result-track:0feec3f920ea4e3cdef599078c8d406a5baaddba345a2e5f12bd98e82c955df9` |
| 3 | `theorem` | [laverage_zero_measure](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/AverageSetLaverageEqSource.lean/declarations/laverage-zero-measure.md) | 85 | `result-track:b3c7b76869743fad22488f595837dd1ad2cf1b736431882593cad3ea3737261c` |
| 4 | `theorem` | [laverage_eq'](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/AverageSetLaverageEqSource.lean/declarations/laverage-eq-source-edition-2.md) | 88 | `result-track:d5645ba31b216e01fdf85677a2233c7ceb999369845e378d3a305e19c36d816a` |
| 5 | `theorem` | [laverage_eq](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/AverageSetLaverageEqSource.lean/declarations/laverage-eq.md) | 91 | `result-track:30802f0a1997d6aa77fac5858c3d2ba0a659f7a18e1d9f9c8f3beccc17fb7386` |
| 6 | `theorem` | [laverage_eq_lintegral](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/AverageSetLaverageEqSource.lean/declarations/laverage-eq-lintegral.md) | 95 | `result-track:2de93d08692e59f38548782c010409ffd8a05ad060fe13e1df8b68c432762691` |
| 7 | `theorem` | [measure_mul_laverage](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/AverageSetLaverageEqSource.lean/declarations/measure-mul-laverage.md) | 100 | `result-track:d2e2ae59fb911c2ccae7ae86181c4f53e64ac2bf89d682996922823192d46672` |
| 8 | `theorem` | [setLaverage_eq](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/AverageSetLaverageEqSource.lean/declarations/setlaverage-eq.md) | 107 | `result-track:03b428ba1973e28b938a8e4c50e131c5f68069d6080037821f254ccf3d3c45ce` |
| 9 | `theorem` | [setLaverage_eq'](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/AverageSetLaverageEqSource.lean/declarations/setlaverage-eq-source-edition-2.md) | 111 | `result-track:2aa8e64d6f5ceca73f0d895f13f46c252bb4e6cf1aca9a9acb5b6e9872ba41e9` |
| 10 | `theorem` | [laverage_congr](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/AverageSetLaverageEqSource.lean/declarations/laverage-congr.md) | 118 | `result-track:2a92614849a65f8a684f7cd6a748cd6081af20b7510785031d194a9e1d7f18b2` |
| 11 | `theorem` | [setLaverage_congr](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/AverageSetLaverageEqSource.lean/declarations/setlaverage-congr.md) | 122 | `result-track:61ab646e74e532a5f33c9581b44859173adc77742738b9ddc3db3641421d8857` |
| 12 | `theorem` | [setLaverage_congr_fun](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/AverageSetLaverageEqSource.lean/declarations/setlaverage-congr-fun.md) | 126 | `result-track:6e642f33efe7456678f5be0051dd0ad789b289d44f4f3d06173a72550d5fc339` |
| 13 | `theorem` | [laverage_lt_top](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/AverageSetLaverageEqSource.lean/declarations/laverage-lt-top.md) | 131 | `result-track:772d7fe51e983a17a403c4b17c0424f99afc34a5d73730070f4f792630af06eb` |
| 14 | `theorem` | [setLaverage_lt_top](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/AverageSetLaverageEqSource.lean/declarations/setlaverage-lt-top.md) | 138 | `result-track:05cd03df4a2277d7e850416807cedd241f129dfa5ab339d5a0333c40d11b6f54` |
| 15 | `theorem` | [laverage_add_measure](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/AverageSetLaverageEqSource.lean/declarations/laverage-add-measure.md) | 142 | `result-track:a5b62b423cd1423506aef6a33e564a0afe8dfc8d9b965af4cc187874e50d2249` |
| 16 | `theorem` | [measure_mul_setLaverage](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/AverageSetLaverageEqSource.lean/declarations/measure-mul-setlaverage.md) | 156 | `result-track:285c08c2e88f0c6722089b495ab56617bfa8026bb78230abc7f058c35ae32310` |
| 17 | `theorem` | [laverage_union](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/AverageSetLaverageEqSource.lean/declarations/laverage-union.md) | 162 | `result-track:ecfab54187d0332ee1a699aae84f9bb9de92c14bd3fb33009fbe6e96fd28e79e` |
| 18 | `theorem` | [laverage_union_mem_openSegment](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/AverageSetLaverageEqSource.lean/declarations/laverage-union-mem-opensegment.md) | 168 | `result-track:44a15aa897abb741b3355a255fcff30a02183ffc321a7be123e82a8fa1d80e54` |
| 19 | `theorem` | [laverage_union_mem_segment](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/AverageSetLaverageEqSource.lean/declarations/laverage-union-mem-segment.md) | 178 | `result-track:793ceff3cc4d9c27ffc5ba8788f74f64c1ab7c4c12baa01af726a2b20c81473e` |
| 20 | `theorem` | [laverage_mem_openSegment_compl_self](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/AverageSetLaverageEqSource.lean/declarations/laverage-mem-opensegment-compl-self.md) | 191 | `result-track:e10350b2fb3835e8a347e57151313bbf7e4b740aec67d131db5768a5738d98b4` |
| 21 | `theorem` | [laverage_const](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/AverageSetLaverageEqSource.lean/declarations/laverage-const.md) | 200 | `result-track:976d08ea994d8bddca5d6c38ee2fcd3618ba1e696505fd10f1fdbcc4991dcba4` |
| 22 | `theorem` | [setLaverage_const](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/AverageSetLaverageEqSource.lean/declarations/setlaverage-const.md) | 205 | `result-track:488a3d2ec12165b40f80df95c013f122f443a86c5311ce64d124af3aea085201` |
| 23 | `theorem` | [laverage_one](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/AverageSetLaverageEqSource.lean/declarations/laverage-one.md) | 210 | `result-track:476ae94855ff16c9011cf519ae8b5409a00f10a72344eede9e6ca7aab3bbcf97` |
| 24 | `theorem` | [setLaverage_one](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/AverageSetLaverageEqSource.lean/declarations/setlaverage-one.md) | 214 | `result-track:2d1f6a247d12396e1287660f0549d7f08c5229587e33b4859ee85146eed6ebfc` |
| 25 | `theorem` | [lintegral_laverage](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/AverageSetLaverageEqSource.lean/declarations/lintegral-laverage.md) | 220 | `result-track:0a367d96acbdfc12d137c8c0ce1fedc21b24bd07af2a6347842d7eb4919bfd78` |
| 26 | `theorem` | [setLintegral_setLaverage](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/AverageSetLaverageEqSource.lean/declarations/setlintegral-setlaverage.md) | 228 | `result-track:b4c2b55b7076c1dd2b1c09549992c347f4e804bf4dbb7f479c32c6cd4ae7896d` |
| 27 | `def` | [average](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/AverageSetLaverageEqSource.lean/declarations/average.md) | 247 | `declaration-track:4d90848d473c9362a2ad015e251dced1c756deb19c68f72d16f37d2f1c10085c` |
| 28 | `theorem` | [average_zero](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/AverageSetLaverageEqSource.lean/declarations/average-zero.md) | 264 | `result-track:9b9cffaf563e10927174f11af41e888ea58f2fc0a44252e8279e398616a1573c` |
| 29 | `theorem` | [average_zero_measure](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/AverageSetLaverageEqSource.lean/declarations/average-zero-measure.md) | 268 | `result-track:d4d9a1a9e73e4c057a3992cdbd2663f0dde3c61f6127e49db3ff87aab7a242f4` |
| 30 | `theorem` | [average_neg](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/AverageSetLaverageEqSource.lean/declarations/average-neg.md) | 273 | `result-track:d36a8f9a5bf7addc8175971771d121410f01f8594db94c69fb595b12f49377ee` |
| 31 | `theorem` | [average_eq'](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/AverageSetLaverageEqSource.lean/declarations/average-eq-source-edition-2.md) | 277 | `result-track:df681fef23eb170b68a87095be4a928b3e12b5f04a4657e8dd9467d0aa15adf7` |
| 32 | `theorem` | [average_eq](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/AverageSetLaverageEqSource.lean/declarations/average-eq.md) | 281 | `result-track:acee61040a0a0fbaa3e9fe1da6f3e93ed0cae08b84a7573f6a6362518606cac8` |
| 33 | `theorem` | [average_eq_integral](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/AverageSetLaverageEqSource.lean/declarations/average-eq-integral.md) | 285 | `result-track:29f9f15b19d8498fb61b73c6d730335cfc7df1147b141ef5cf8521faae5fa374` |
| 34 | `theorem` | [measure_smul_average](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/AverageSetLaverageEqSource.lean/declarations/measure-smul-average.md) | 290 | `result-track:e86e195a6d17afc8436987100df9add988d09922c0e7fa8383f49d0a59a1a3f0` |
| 35 | `theorem` | [setAverage_eq](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/AverageSetLaverageEqSource.lean/declarations/setaverage-eq-source-edition-2.md) | 299 | `result-track:ef73e1be2a6a5bfa43f8dd6d70386614127cab21ead1bdfa4ff0726b05bb2ddd` |
| 36 | `theorem` | [setAverage_eq'](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/AverageSetLaverageEqSource.lean/declarations/setaverage-eq.md) | 303 | `result-track:a2aaa7d8df0c051cf5ee1902335d6d8397e9fd794b960586e6430715ad93ad80` |
| 37 | `theorem` | [average_congr](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/AverageSetLaverageEqSource.lean/declarations/average-congr.md) | 310 | `result-track:8f671a6774c816eedca5358d9185be969de53884eb8d0acce8e0e8953a3a49cb` |
| 38 | `theorem` | [setAverage_congr](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/AverageSetLaverageEqSource.lean/declarations/setaverage-congr.md) | 314 | `result-track:e6849dd4278604bd828c0b60c8777aeec93cfd376f7882e6d5eb299152232b55` |
| 39 | `theorem` | [setAverage_congr_fun](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/AverageSetLaverageEqSource.lean/declarations/setaverage-congr-fun.md) | 318 | `result-track:767c10958d0dd357640af939e6172d794638f8362550866198e65e32f315616f` |
| 40 | `theorem` | [average_add_measure](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/AverageSetLaverageEqSource.lean/declarations/average-add-measure.md) | 322 | `result-track:b57063f97ba6645525a3ed70b97ce53fcfa8c61bc1ba7712c77359a7106c78f0` |
| 41 | `theorem` | [average_pair](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/AverageSetLaverageEqSource.lean/declarations/average-pair.md) | 332 | `result-track:375524d66880ba9635d330d5ac96c8dd3bdef1a5f18b71a67e3ee6f30a187878` |
| 42 | `theorem` | [measure_smul_setAverage](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/AverageSetLaverageEqSource.lean/declarations/measure-smul-setaverage.md) | 337 | `result-track:82cbe619f7444dd0258afa6a5fbced1a57b394edbf97f03dc73b9a3ce3a00ee6` |
| 43 | `theorem` | [average_union](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/AverageSetLaverageEqSource.lean/declarations/average-union.md) | 343 | `result-track:67912848bb25d858583ea3ea59e2b032420ae2acd43d7e7b12ec26bf73e84587` |
| 44 | `theorem` | [average_union_mem_openSegment](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/AverageSetLaverageEqSource.lean/declarations/average-union-mem-opensegment.md) | 352 | `result-track:62f03a8521ada25ec02dfa13e7ff2409761dbe484dbfe40d01f4e1e5631d5140` |
| 45 | `theorem` | [average_union_mem_segment](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/AverageSetLaverageEqSource.lean/declarations/average-union-mem-segment.md) | 362 | `result-track:64b5fb25d37b9a81907480e0357ffda05f3b75d042f3cd55f89f3e64c6aba959` |
| 46 | `theorem` | [average_mem_openSegment_compl_self](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/AverageSetLaverageEqSource.lean/declarations/average-mem-opensegment-compl-self.md) | 379 | `result-track:a16c4291a985fc34d2ff30a3a073ba7ad52f4702503e39575de8f7030402b187` |
| 47 | `theorem` | [average_const](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/AverageSetLaverageEqSource.lean/declarations/average-const.md) | 388 | `result-track:b7dfd971afcebbc5ff4c628dc04baddf1b1245256abea18945dfe30662f1964e` |
| 48 | `theorem` | [setAverage_const](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/AverageSetLaverageEqSource.lean/declarations/setaverage-const.md) | 393 | `result-track:8356f4b89e4cb20a2cd05ca04488dc5968dac5f27738d356c87c75cab5faf2d8` |
| 49 | `theorem` | [integral_average](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/AverageSetLaverageEqSource.lean/declarations/integral-average.md) | 399 | `result-track:47a257231cb3a367d6f2edce848d6ab1182381577cc30f3702510aba3a2e2ab4` |
| 50 | `theorem` | [setIntegral_setAverage](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/AverageSetLaverageEqSource.lean/declarations/setintegral-setaverage.md) | 403 | `result-track:dbb3979fc3dc9fa88870edd24ce22cd23eeb6a2ce2fe6ea3a8c789f918538790` |
| 51 | `theorem` | [integral_sub_average](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/AverageSetLaverageEqSource.lean/declarations/integral-sub-average.md) | 408 | `result-track:f46fcde091d4fe95ef72d86c4c2a284ad79353aeb4706b5225229b1f1b884757` |
| 52 | `theorem` | [setAverage_sub_setAverage](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/AverageSetLaverageEqSource.lean/declarations/setaverage-sub-setaverage.md) | 417 | `result-track:afb411f306acaa75ab5e1eb6941982ecaeee876e691fcfb85e4dd3e611a97ec2` |
| 53 | `theorem` | [integral_average_sub](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/AverageSetLaverageEqSource.lean/declarations/integral-average-sub.md) | 423 | `result-track:1c5ac56d08eb7b3166119069433a944e19b18ab97946dedd84e378bc9dbf2171` |
| 54 | `theorem` | [setIntegral_setAverage_sub](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/AverageSetLaverageEqSource.lean/declarations/setintegral-setaverage-sub.md) | 428 | `result-track:e04d46519111aae7e03d4961a72274ad51f6699d1da1ef1e381574fe5ef8c398` |
| 55 | `theorem` | [ofReal_average](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/AverageSetLaverageEqSource.lean/declarations/ofreal-average.md) | 436 | `result-track:2af1ee4acea0575805341b9bbe7be38ae6864bc6c21c8c2a4bf683cfbe722a3b` |
| 56 | `theorem` | [ofReal_setAverage](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/AverageSetLaverageEqSource.lean/declarations/ofreal-setaverage.md) | 445 | `result-track:9e6908f1e4d31c859b41205dd0017bbe3dbb899ea49aca7bd2515500dd79bbe4` |
| 57 | `theorem` | [toReal_laverage](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/AverageSetLaverageEqSource.lean/declarations/toreal-laverage.md) | 450 | `result-track:f52123e51a9ce66b94fbcf1108925b156c8643ebab21d673d930f3138502b44b` |
| 58 | `theorem` | [toReal_setLaverage](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/AverageSetLaverageEqSource.lean/declarations/toreal-setlaverage.md) | 456 | `result-track:a275c9ff03e3c20d331271c4eaf7aa174ce6abcd266aea22263a9d31c2a6264b` |
| 59 | `theorem` | [measure_le_setAverage_pos](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/AverageSetLaverageEqSource.lean/declarations/measure-le-setaverage-pos.md) | 469 | `result-track:97a0e3add9af4336378739343efdc3b536237fe09368b9f7c7dd04f7b860daf1` |
| 60 | `theorem` | [measure_setAverage_le_pos](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/AverageSetLaverageEqSource.lean/declarations/measure-setaverage-le-pos.md) | 489 | `result-track:420473f00422584e941fc95289fc58c8e4364c36af6e0729abcc7cccd5ce662d` |
| 61 | `theorem` | [exists_le_setAverage](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/AverageSetLaverageEqSource.lean/declarations/exists-le-setaverage.md) | 495 | `result-track:c5a8f449b3ce358eb53050ee4963f61a88abd49556c935d01d25fa827e7b2f2b` |
| 62 | `theorem` | [exists_setAverage_le](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/AverageSetLaverageEqSource.lean/declarations/exists-setaverage-le.md) | 502 | `result-track:3f50db78df4bcda3b141a6a716c7b6b4e6159f1826f8f4b96a41382dc16eadc4` |
| 63 | `theorem` | [measure_le_average_pos](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/AverageSetLaverageEqSource.lean/declarations/measure-le-average-pos.md) | 514 | `result-track:87d0e98170d4c0df9ae9a1a820adb11060a250a8d56b1751646ff400a96165ff` |
| 64 | `theorem` | [measure_average_le_pos](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/AverageSetLaverageEqSource.lean/declarations/measure-average-le-pos.md) | 522 | `result-track:1630ece4d960182d461b550ea86685bdfb787bb5f1acf28fc962673624b82403` |
| 65 | `theorem` | [exists_le_average](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/AverageSetLaverageEqSource.lean/declarations/exists-le-average.md) | 529 | `result-track:af455852298521bd16a529b2aa468f7e80104e65735abbf3e01c7cdd5590779b` |
| 66 | `theorem` | [exists_average_le](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/AverageSetLaverageEqSource.lean/declarations/exists-average-le.md) | 535 | `result-track:0296faaba48351540d809fd18264c2218bf5d994b7954a989f31a4cc3ab08d10` |
| 67 | `theorem` | [exists_not_mem_null_le_average](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/AverageSetLaverageEqSource.lean/declarations/exists-not-mem-null-le-average.md) | 542 | `result-track:72b24ee587aa7be89fdfb37cd9af88276edd02a54374dd28c70166f879b9478b` |
| 68 | `theorem` | [exists_not_mem_null_average_le](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/AverageSetLaverageEqSource.lean/declarations/exists-not-mem-null-average-le.md) | 552 | `result-track:73cd088fdda828018f9fada79b968a417de08c7b87ddf05f7415107761ccace6` |
| 69 | `theorem` | [measure_le_integral_pos](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/AverageSetLaverageEqSource.lean/declarations/measure-le-integral-pos.md) | 565 | `result-track:de24f2e86ce08f973ab5147ece74a74a2af5bea2f1163ee43ddc67ddde5ee9ef` |
| 70 | `theorem` | [measure_integral_le_pos](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/AverageSetLaverageEqSource.lean/declarations/measure-integral-le-pos.md) | 572 | `result-track:4c263877d114671b48a6caa6ef70491f6ac41c98e594a0beaae1541d53845447` |
| 71 | `theorem` | [exists_le_integral](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/AverageSetLaverageEqSource.lean/declarations/exists-le-integral.md) | 578 | `result-track:24763d312c3dd28aafb00acae7049fa7a688db758f9747fd3c83dbe72a2ca90f` |
| 72 | `theorem` | [exists_integral_le](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/AverageSetLaverageEqSource.lean/declarations/exists-integral-le.md) | 583 | `result-track:7ec3b7c1b568359621b6d19e8b2dcc277a83bd885c64d392a365f36c8e1d67b6` |
| 73 | `theorem` | [exists_not_mem_null_le_integral](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/AverageSetLaverageEqSource.lean/declarations/exists-not-mem-null-le-integral.md) | 589 | `result-track:ca94ecef84f85e7c1144329fc3cd3c64a2e8609ad7d9af0d331ec431de8a190a` |
| 74 | `theorem` | [exists_not_mem_null_integral_le](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/AverageSetLaverageEqSource.lean/declarations/exists-not-mem-null-integral-le.md) | 597 | `result-track:8f1c9b426229d03485d4b531f72063deca37796cd55566f4e23e7c7ef5b5f0c3` |
| 75 | `theorem` | [measure_le_setLaverage_pos](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/AverageSetLaverageEqSource.lean/declarations/measure-le-setlaverage-pos.md) | 611 | `result-track:3ee9c0e91dfdcda1023455f3dba264c8d255360120f2c030f0616c0b1b1f35c4` |
| 76 | `theorem` | [measure_setLaverage_le_pos](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/AverageSetLaverageEqSource.lean/declarations/measure-setlaverage-le-pos.md) | 631 | `result-track:5f3d83235c796acc6a40ed0468b1ff4c44e8fddc0a76afc1642c799e5054cabf` |
| 77 | `theorem` | [exists_le_setLaverage](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/AverageSetLaverageEqSource.lean/declarations/exists-le-setlaverage.md) | 653 | `result-track:65803df5ffd724125a5510ee6e9ab809e30dee98f116938787ea1438c7744e92` |
| 78 | `theorem` | [exists_setLaverage_le](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/AverageSetLaverageEqSource.lean/declarations/exists-setlaverage-le.md) | 660 | `result-track:94b4326568eecec53cac1f6fe180c3346bc0a2148a9c8400f0880904cbd5dd4f` |
| 79 | `theorem` | [measure_laverage_le_pos](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/AverageSetLaverageEqSource.lean/declarations/measure-laverage-le-pos.md) | 668 | `result-track:b1624c877caf579e9145c06980d61dc7337ba946d70c7c4dcb127882a4f04bce` |
| 80 | `theorem` | [exists_laverage_le](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/AverageSetLaverageEqSource.lean/declarations/exists-laverage-le.md) | 675 | `result-track:680d37a07f6ecf0129886fdf161a70c80ea494587b2c93b26f0ed0b34f3e90c2` |
| 81 | `theorem` | [exists_not_mem_null_laverage_le](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/AverageSetLaverageEqSource.lean/declarations/exists-not-mem-null-laverage-le.md) | 682 | `result-track:f28eac3e0c2f8b9b541f0cc96b39baa94a8c0eae7218d1a5886e56fa3753fadd` |
| 82 | `theorem` | [measure_le_laverage_pos](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/AverageSetLaverageEqSource.lean/declarations/measure-le-laverage-pos.md) | 695 | `result-track:43ec1bb0302d372e43e57ebf5be1847c4b623c8a8abbbdbf22d1ce733175c4a9` |
| 83 | `theorem` | [exists_le_laverage](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/AverageSetLaverageEqSource.lean/declarations/exists-le-laverage.md) | 702 | `result-track:3629ef146a1bfe8b3358322ee1d7e6d8a944a5c6479f21e72235113a09d1c008` |
| 84 | `theorem` | [exists_not_mem_null_le_laverage](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/AverageSetLaverageEqSource.lean/declarations/exists-not-mem-null-le-laverage.md) | 709 | `result-track:79a3b0b7436c94d08c0ce1bb0e1be11e64b44e325a18655df5dbaa7a02e409a3` |
| 85 | `theorem` | [measure_le_lintegral_pos](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/AverageSetLaverageEqSource.lean/declarations/measure-le-lintegral-pos.md) | 725 | `result-track:02c01160585f033444642d9cdba8b523ca37f1250f7189ee83246f150073d615` |
| 86 | `theorem` | [measure_lintegral_le_pos](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/AverageSetLaverageEqSource.lean/declarations/measure-lintegral-le-pos.md) | 732 | `result-track:b5ff3134ee207fb7e54c6fc21f15d5991215ad2605d2a20c939d3271d6fa830c` |
| 87 | `theorem` | [exists_le_lintegral](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/AverageSetLaverageEqSource.lean/declarations/exists-le-lintegral.md) | 738 | `result-track:c3f7dbc5a179bc6f7c83622fe862758b88a1b43fa1635783b2904ca6cb039e8d` |
| 88 | `theorem` | [exists_lintegral_le](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/AverageSetLaverageEqSource.lean/declarations/exists-lintegral-le.md) | 743 | `result-track:dda3e1edcef5f4e6a359172f07c5b4b5db3c144e552dedac0208849506162ee0` |
| 89 | `theorem` | [exists_not_mem_null_le_lintegral](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/AverageSetLaverageEqSource.lean/declarations/exists-not-mem-null-le-lintegral.md) | 750 | `result-track:bde791d1956d54ce27f9d05f62e1478a4156be230d102e692892b556c9fc2072` |
| 90 | `theorem` | [exists_not_mem_null_lintegral_le](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/AverageSetLaverageEqSource.lean/declarations/exists-not-mem-null-lintegral-le.md) | 758 | `result-track:d3e3ba534b72dba67bec4bd0c966d64730b07f477610575b2798556d458c52db` |
| 91 | `theorem` | [tendsto_integral_smul_of_tendsto_average_norm_sub](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/AverageSetLaverageEqSource.lean/declarations/tendsto-integral-smul-of-tendsto-average-norm-sub.md) | 771 | `result-track:5086e018ceb44c66ffcd76d05f82c56a7d8167f86aea2e44165faf2be59e18a9` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=c20babd4c4b4b316d26d31ba19ae214fe13c570661ddd6b822e5ae4b81a1c80c -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/RealAnalysis/Integration/Average/Variant573342ff1b7acc829aaa28c0f8cbcf9fbaad9c7c681ace910009b41d6b6d1021.lean","GRWTSK/_verification/specifications/Analysis/RealAnalysis/Integration/Average/Variant573342ff1b7acc829aaa28c0f8cbcf9fbaad9c7c681ace910009b41d6b6d1021.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
