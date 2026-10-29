# Verification target: Exp Namespaced Exp Sub Sum Range Is Big OPow

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6292e48b94f7cf07b3bfcfcf263bcadc31717e5c",
  "lexical_observation_count": 69,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/AsymptoticAnalysis/Exp/Variant2dc1a3f186b067d054e1aa13edd89b68c1e1c497e030855d6d79997244d83ce2.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../SpecialFunctions/ExpNamespacedExpSubSumRangeIsBigOPow.lean/index.md) · [Full source](../../../../SpecialFunctions/ExpNamespacedExpSubSumRangeIsBigOPow.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6292e48b94f7cf07b3bfcfcf263bcadc31717e5c`.

Source path: `GRWTSK/Analysis/AsymptoticAnalysis/Exp/Variant2dc1a3f186b067d054e1aa13edd89b68c1e1c497e030855d6d79997244d83ce2.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/AsymptoticAnalysis/Exp/Variant2dc1a3f186b067d054e1aa13edd89b68c1e1c497e030855d6d79997244d83ce2.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Complex.Asymptotics` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecificLimits.Normed` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Complex.Trigonometric` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [exp_bound_sq](../../../../SpecialFunctions/ExpNamespacedExpSubSumRangeIsBigOPow.lean/declarations/exp-bound-sq.md) | 39 | `result-track:10dfe9a02b29175a25b93bcb8cef547070b8574e819903c13df6541b435f647e` |
| 2 | `theorem` | [locally_lipschitz_exp](../../../../SpecialFunctions/ExpNamespacedExpSubSumRangeIsBigOPow.lean/declarations/locally-lipschitz-exp.md) | 50 | `result-track:05509fe2bff8dfe414343b3dd766a8bce09ca4e32224aaa09fe80991d0a91227` |
| 3 | `theorem` | [continuous_exp](../../../../SpecialFunctions/ExpNamespacedExpSubSumRangeIsBigOPow.lean/declarations/continuous-exp.md) | 71 | `result-track:507c2819626c759062910ff3fb5d6ce4587931e7afdf3acd6c6580b6e7493620` |
| 4 | `theorem` | [continuousOn_exp](../../../../SpecialFunctions/ExpNamespacedExpSubSumRangeIsBigOPow.lean/declarations/continuouson-exp.md) | 79 | `result-track:12154dec0c95447cf3f2b3d020a11b05803695dbec744249d57f9fdee309e2c3` |
| 5 | `lemma` | [exp_sub_sum_range_isBigO_pow](../../../../SpecialFunctions/ExpNamespacedExpSubSumRangeIsBigOPow.lean/declarations/exp-sub-sum-range-isbigo-pow.md) | 82 | `result-track:9eb71dd940ff9b347fc56e89e09bca3e2ac7d81f1351092181e5d147f742131a` |
| 6 | `lemma` | [exp_sub_sum_range_succ_isLittleO_pow](../../../../SpecialFunctions/ExpNamespacedExpSubSumRangeIsBigOPow.lean/declarations/exp-sub-sum-range-succ-islittleo-pow.md) | 92 | `result-track:06c6bebc3ff6a4bac91b1a35a4fc2c19c48ccb086755066150016774b13677b1` |
| 7 | `theorem` | [Filter.Tendsto.cexp](../../../../SpecialFunctions/ExpNamespacedExpSubSumRangeIsBigOPow.lean/declarations/filter-tendsto-cexp.md) | 104 | `result-track:e4cf7302a22a8b0ba84030f373df8637d7eb6698736fdc3283eaf135a62ac065` |
| 8 | `theorem` | [ContinuousWithinAt.cexp](../../../../SpecialFunctions/ExpNamespacedExpSubSumRangeIsBigOPow.lean/declarations/continuouswithinat-cexp.md) | 111 | `result-track:997beb068e96d814f646731f818b8f267539b540c059e4be66f174573c80aefb` |
| 9 | `theorem` | [ContinuousAt.cexp](../../../../SpecialFunctions/ExpNamespacedExpSubSumRangeIsBigOPow.lean/declarations/continuousat-cexp.md) | 117 | `result-track:7f5f9751d1519711515208c351a018c8a3fa74906b6526196bd22e5e6e87b6a5` |
| 10 | `theorem` | [ContinuousOn.cexp](../../../../SpecialFunctions/ExpNamespacedExpSubSumRangeIsBigOPow.lean/declarations/continuouson-cexp.md) | 121 | `result-track:327cfc19ff7e2e4bfbd2c76e1f3d7889562c0e221569f952740c953e62118477` |
| 11 | `theorem` | [Continuous.cexp](../../../../SpecialFunctions/ExpNamespacedExpSubSumRangeIsBigOPow.lean/declarations/continuous-cexp.md) | 125 | `result-track:8f0351f213e76215ddab5b0279107b870f94805b7a115e13273acf2b5d286002` |
| 12 | `lemma` | [UniformContinuousOn.cexp](../../../../SpecialFunctions/ExpNamespacedExpSubSumRangeIsBigOPow.lean/declarations/uniformcontinuouson-cexp.md) | 129 | `result-track:2ba0763254d4086ac325a58974874c8897a2929367a9b41b897b0b09c1e9d755` |
| 13 | `theorem` | [continuous_exp](../../../../SpecialFunctions/ExpNamespacedExpSubSumRangeIsBigOPow.lean/declarations/continuous-exp-source-edition-2.md) | 165 | `result-track:70319e965977ade0bd08c0a2e36c75a3f9e934429ab60a1a0527e392dd42e39c` |
| 14 | `theorem` | [continuousOn_exp](../../../../SpecialFunctions/ExpNamespacedExpSubSumRangeIsBigOPow.lean/declarations/continuouson-exp-source-edition-2.md) | 168 | `result-track:af0b0eaaadc2ae2799636f8fa4c3cb3d957c67f018eb2f757ad728a330502977` |
| 15 | `lemma` | [exp_sub_sum_range_isBigO_pow](../../../../SpecialFunctions/ExpNamespacedExpSubSumRangeIsBigOPow.lean/declarations/exp-sub-sum-range-isbigo-pow-source-edition-2.md) | 171 | `result-track:f450d7fc5ff42b39baa4ea2cbd6ca0231eefc616e0dc1c1f742034139641f093` |
| 16 | `lemma` | [exp_sub_sum_range_succ_isLittleO_pow](../../../../SpecialFunctions/ExpNamespacedExpSubSumRangeIsBigOPow.lean/declarations/exp-sub-sum-range-succ-islittleo-pow-source-edition-2.md) | 178 | `result-track:e988a5d016b81d429897a8925abdc96da564ae7304d10be2c302f481efda5bc7` |
| 17 | `theorem` | [Filter.Tendsto.rexp](../../../../SpecialFunctions/ExpNamespacedExpSubSumRangeIsBigOPow.lean/declarations/filter-tendsto-rexp.md) | 190 | `result-track:d060a8d61cbf65ee6840f11a1b10431ed4bd248b13a750314d7b9dc30bcd673a` |
| 18 | `theorem` | [ContinuousWithinAt.rexp](../../../../SpecialFunctions/ExpNamespacedExpSubSumRangeIsBigOPow.lean/declarations/continuouswithinat-rexp.md) | 197 | `result-track:19f22751bf0862ffadcf7b250b8dbeb0592c8d8064fe31ebf0d17a61ef214c96` |
| 19 | `theorem` | [ContinuousAt.rexp](../../../../SpecialFunctions/ExpNamespacedExpSubSumRangeIsBigOPow.lean/declarations/continuousat-rexp.md) | 202 | `result-track:96a36d5fdeeaafaad4b7ff95c6ac19747100be9cbce4d22c7d6b98faf48b33f1` |
| 20 | `theorem` | [ContinuousOn.rexp](../../../../SpecialFunctions/ExpNamespacedExpSubSumRangeIsBigOPow.lean/declarations/continuouson-rexp.md) | 205 | `result-track:72de4a0b2383fed77daa69268ba9dd2188c4ec059da2cd629a287ed96d2e2bba` |
| 21 | `theorem` | [Continuous.rexp](../../../../SpecialFunctions/ExpNamespacedExpSubSumRangeIsBigOPow.lean/declarations/continuous-rexp.md) | 209 | `result-track:911313e4cde245ee8c5f2ccd223a040deb135cfc1a1f6dfa17a21acf3daa4365` |
| 22 | `theorem` | [exp_half](../../../../SpecialFunctions/ExpNamespacedExpSubSumRangeIsBigOPow.lean/declarations/exp-half.md) | 217 | `result-track:06bf90ebbbcacb432305be9c1582901d56f71ec39a09293469e727764b478142` |
| 23 | `theorem` | [tendsto_exp_atTop](../../../../SpecialFunctions/ExpNamespacedExpSubSumRangeIsBigOPow.lean/declarations/tendsto-exp-attop.md) | 221 | `result-track:d1b03d8161b8619d0aea79fec1a69412c6d5a43eec94c31b30633ef92147eaba` |
| 24 | `theorem` | [tendsto_exp_neg_atTop_nhds_zero](../../../../SpecialFunctions/ExpNamespacedExpSubSumRangeIsBigOPow.lean/declarations/tendsto-exp-neg-attop-nhds-zero.md) | 229 | `result-track:181f57b018ccad5e7defe613a9930093cdd8af8cbd1405e7ebad1105203439b7` |
| 25 | `theorem` | [tendsto_exp_nhds_zero_nhds_one](../../../../SpecialFunctions/ExpNamespacedExpSubSumRangeIsBigOPow.lean/declarations/tendsto-exp-nhds-zero-nhds-one.md) | 233 | `result-track:88866e013763ae2883cd57b68677ac6d5946b26f454be42999df58826137d94f` |
| 26 | `theorem` | [tendsto_exp_atBot](../../../../SpecialFunctions/ExpNamespacedExpSubSumRangeIsBigOPow.lean/declarations/tendsto-exp-atbot.md) | 237 | `result-track:27435a538782dfd0663981cb537b15606bbefb3e55ba72f6a77b6fe0d0407d8a` |
| 27 | `theorem` | [tendsto_exp_atBot_nhdsGT](../../../../SpecialFunctions/ExpNamespacedExpSubSumRangeIsBigOPow.lean/declarations/tendsto-exp-atbot-nhdsgt.md) | 241 | `result-track:6c12d20d68be4c8bd6592e32c209d90b4392d96f5ae08f393d91ce8af38c1192` |
| 28 | `theorem` | [isBoundedUnder_ge_exp_comp](../../../../SpecialFunctions/ExpNamespacedExpSubSumRangeIsBigOPow.lean/declarations/isboundedunder-ge-exp-comp.md) | 248 | `result-track:3f051f5f718e988e90c6da71683c12d757487dfc1113bd88cf7f0ea342784bca` |
| 29 | `theorem` | [isBoundedUnder_le_exp_comp](../../../../SpecialFunctions/ExpNamespacedExpSubSumRangeIsBigOPow.lean/declarations/isboundedunder-le-exp-comp.md) | 253 | `result-track:1e5250cffe5b0b89cfba3be3b3fbb9ba02551557199b01d7c7506adaf738c584` |
| 30 | `theorem` | [tendsto_exp_div_pow_atTop](../../../../SpecialFunctions/ExpNamespacedExpSubSumRangeIsBigOPow.lean/declarations/tendsto-exp-div-pow-attop.md) | 258 | `result-track:52b0cb010a789e95d4791eda83e2cf1d1c731a51f1ef1a3e8d86f7f9db7f3493` |
| 31 | `theorem` | [tendsto_pow_mul_exp_neg_atTop_nhds_zero](../../../../SpecialFunctions/ExpNamespacedExpSubSumRangeIsBigOPow.lean/declarations/tendsto-pow-mul-exp-neg-attop-nhds-zero.md) | 278 | `result-track:72693a18414387d56e99bd2053070efced9f0511e93ddde0a02fbdb60fc3fafd` |
| 32 | `theorem` | [tendsto_mul_exp_add_div_pow_atTop](../../../../SpecialFunctions/ExpNamespacedExpSubSumRangeIsBigOPow.lean/declarations/tendsto-mul-exp-add-div-pow-attop.md) | 285 | `result-track:37e16d855475fc7b0179d297783c93dcd15ead42899e079b4790c9127f0b48c6` |
| 33 | `theorem` | [tendsto_div_pow_mul_exp_add_atTop](../../../../SpecialFunctions/ExpNamespacedExpSubSumRangeIsBigOPow.lean/declarations/tendsto-div-pow-mul-exp-add-attop.md) | 297 | `result-track:039392d010d242dc38e68d1efa0853b3983f3761d31603fdc95244bbf07b1569` |
| 34 | `def` | [expOrderIso](../../../../SpecialFunctions/ExpNamespacedExpSubSumRangeIsBigOPow.lean/declarations/exporderiso.md) | 313 | `declaration-track:940da3ac011f8ceb083f9bca97c667472934e2c1b757f762ed03281fa9ad1ad9` |
| 35 | `theorem` | [coe_expOrderIso_apply](../../../../SpecialFunctions/ExpNamespacedExpSubSumRangeIsBigOPow.lean/declarations/coe-exporderiso-apply.md) | 320 | `result-track:8aee126d6d2b80fcccb565aa0b1f880f05c5a569b6fa247ffdd5211e42d61f6b` |
| 36 | `theorem` | [coe_comp_expOrderIso](../../../../SpecialFunctions/ExpNamespacedExpSubSumRangeIsBigOPow.lean/declarations/coe-comp-exporderiso.md) | 324 | `result-track:2704f2a3f81ba26cf37ac6cdd0a03fa6cbd32e1d9f9c182ba63916fe1b6054a7` |
| 37 | `theorem` | [range_exp](../../../../SpecialFunctions/ExpNamespacedExpSubSumRangeIsBigOPow.lean/declarations/range-exp.md) | 328 | `result-track:7c358a9492282dc4317b0c01a69f3e57220478bfe3a4560ecce69c314c1beae7` |
| 38 | `theorem` | [map_exp_atTop](../../../../SpecialFunctions/ExpNamespacedExpSubSumRangeIsBigOPow.lean/declarations/map-exp-attop.md) | 332 | `result-track:fe6712f14d76bbe8e506ab25b26a0465bdc60f6affd0d7215bc017f0d581320d` |
| 39 | `theorem` | [comap_exp_atTop](../../../../SpecialFunctions/ExpNamespacedExpSubSumRangeIsBigOPow.lean/declarations/comap-exp-attop.md) | 336 | `result-track:5c5ff156fc0195880e95ee81e496bd1e196a7212d31eedf77efe2f0b95a55018` |
| 40 | `theorem` | [tendsto_exp_comp_atTop](../../../../SpecialFunctions/ExpNamespacedExpSubSumRangeIsBigOPow.lean/declarations/tendsto-exp-comp-attop.md) | 340 | `result-track:534f76e19f72eca9a6aa212e2ed9d992fa53461f344062e1bd987b5b496d9640` |
| 41 | `theorem` | [tendsto_comp_exp_atTop](../../../../SpecialFunctions/ExpNamespacedExpSubSumRangeIsBigOPow.lean/declarations/tendsto-comp-exp-attop.md) | 344 | `result-track:1ab05c10924fe2359a794ea51eeadc0668c9380cde2c49ba75792c89851bf1b1` |
| 42 | `theorem` | [map_exp_atBot](../../../../SpecialFunctions/ExpNamespacedExpSubSumRangeIsBigOPow.lean/declarations/map-exp-atbot.md) | 349 | `result-track:9d47f4b0b81b22f9e3abb024b49b3d94bf96bf809d10f579c4c6cb49c2bc3637` |
| 43 | `theorem` | [comap_exp_nhdsGT_zero](../../../../SpecialFunctions/ExpNamespacedExpSubSumRangeIsBigOPow.lean/declarations/comap-exp-nhdsgt-zero.md) | 353 | `result-track:becad8a6af422086c42826525a47d10bc09fca91d18eac15a6ce14e71feaf50b` |
| 44 | `theorem` | [tendsto_comp_exp_atBot](../../../../SpecialFunctions/ExpNamespacedExpSubSumRangeIsBigOPow.lean/declarations/tendsto-comp-exp-atbot.md) | 359 | `result-track:2411604bd2f8efaadff7b0c41e2b2aa46f5afec497807ffdf0989535cde3638e` |
| 45 | `theorem` | [comap_exp_nhds_zero](../../../../SpecialFunctions/ExpNamespacedExpSubSumRangeIsBigOPow.lean/declarations/comap-exp-nhds-zero-source-edition-2.md) | 365 | `result-track:5f5317982c60c2fe175dba1a6fbd8ddbef7ebef7e70db0a7c5f287e5a861cf6d` |
| 46 | `theorem` | [tendsto_exp_comp_nhds_zero](../../../../SpecialFunctions/ExpNamespacedExpSubSumRangeIsBigOPow.lean/declarations/tendsto-exp-comp-nhds-zero.md) | 369 | `result-track:de5e859b06b9b2781ec4e8af443bd6786fd41077a58fe30b3f40c032644f0a6d` |
| 47 | `theorem` | [isOpenEmbedding_exp](../../../../SpecialFunctions/ExpNamespacedExpSubSumRangeIsBigOPow.lean/declarations/isopenembedding-exp.md) | 373 | `result-track:21350bffd5f233f7bd0366468c5f73a0ccc26e942a3ce25d4dd915de3d39304c` |
| 48 | `theorem` | [map_exp_nhds](../../../../SpecialFunctions/ExpNamespacedExpSubSumRangeIsBigOPow.lean/declarations/map-exp-nhds.md) | 377 | `result-track:1de98f69d5729617baf9658134a2485057789534e90d7f5949337d561f72e73e` |
| 49 | `theorem` | [comap_exp_nhds_exp](../../../../SpecialFunctions/ExpNamespacedExpSubSumRangeIsBigOPow.lean/declarations/comap-exp-nhds-exp.md) | 381 | `result-track:9ca52ffe823df8b060a3d280263dcaa3bc69571d559433156f5c487082b0b2fb` |
| 50 | `theorem` | [isLittleO_pow_exp_atTop](../../../../SpecialFunctions/ExpNamespacedExpSubSumRangeIsBigOPow.lean/declarations/islittleo-pow-exp-attop.md) | 384 | `result-track:6fbc8667659ba5c91fd489df3971b424f0cfa3e58353a9018e999fb074fa6ac2` |
| 51 | `theorem` | [isBigO_exp_comp_exp_comp](../../../../SpecialFunctions/ExpNamespacedExpSubSumRangeIsBigOPow.lean/declarations/isbigo-exp-comp-exp-comp.md) | 389 | `result-track:508607f7081ea799dc9a12300be50d9133db71768267f3d2ffdf864ad14f03a3` |
| 52 | `theorem` | [isTheta_exp_comp_exp_comp](../../../../SpecialFunctions/ExpNamespacedExpSubSumRangeIsBigOPow.lean/declarations/istheta-exp-comp-exp-comp.md) | 395 | `result-track:41b85c3475cd59812b0c1ec29b712f4c37b46efd956f920b4f5005ee9416d936` |
| 53 | `theorem` | [isLittleO_exp_comp_exp_comp](../../../../SpecialFunctions/ExpNamespacedExpSubSumRangeIsBigOPow.lean/declarations/islittleo-exp-comp-exp-comp.md) | 402 | `result-track:90368a5e26cd61f87a333f427d8427c3c6cf21ced8985a37677dbba975893f40` |
| 54 | `theorem` | [isLittleO_one_exp_comp](../../../../SpecialFunctions/ExpNamespacedExpSubSumRangeIsBigOPow.lean/declarations/islittleo-one-exp-comp.md) | 407 | `result-track:607147d741817ebd8f904175a57030b2b501ad8f79e627ed3bed8f977fb5dcd3` |
| 55 | `theorem` | [isBigO_one_exp_comp](../../../../SpecialFunctions/ExpNamespacedExpSubSumRangeIsBigOPow.lean/declarations/isbigo-one-exp-comp.md) | 414 | `result-track:3c79c0339269960a1621a88bec785ed75bc35cc161e7b888f3e9b1e720ac03be` |
| 56 | `theorem` | [isBigO_exp_comp_one](../../../../SpecialFunctions/ExpNamespacedExpSubSumRangeIsBigOPow.lean/declarations/isbigo-exp-comp-one.md) | 420 | `result-track:dd0b690406cf5f7a1a07678246aea478238b7b626613b47ae56f5661999c43bf` |
| 57 | `theorem` | [isTheta_exp_comp_one](../../../../SpecialFunctions/ExpNamespacedExpSubSumRangeIsBigOPow.lean/declarations/istheta-exp-comp-one.md) | 427 | `result-track:85e1e678f5b0df5cb359900b0a0be65cf72c9eae223cf1d2fa9ed75088302678` |
| 58 | `lemma` | [summable_exp_nat_mul_iff](../../../../SpecialFunctions/ExpNamespacedExpSubSumRangeIsBigOPow.lean/declarations/summable-exp-nat-mul-iff.md) | 431 | `result-track:5d5379b7d1fe5fc9da60cb3c8188fd7077bb316f9a804cd58e0e238b8be62f80` |
| 59 | `lemma` | [summable_exp_neg_nat](../../../../SpecialFunctions/ExpNamespacedExpSubSumRangeIsBigOPow.lean/declarations/summable-exp-neg-nat.md) | 436 | `result-track:c27f8b7d01965757cac2720efb1162add0c8cee8852ba8e480b1a905686f8916` |
| 60 | `lemma` | [summable_pow_mul_exp_neg_nat_mul](../../../../SpecialFunctions/ExpNamespacedExpSubSumRangeIsBigOPow.lean/declarations/summable-pow-mul-exp-neg-nat-mul.md) | 439 | `result-track:e31ad5c6369e21d1dee1749ef65da99431446149aa659144e1c71097396b9472` |
| 61 | `lemma` | [HasSum.rexp](../../../../SpecialFunctions/ExpNamespacedExpSubSumRangeIsBigOPow.lean/declarations/hassum-rexp.md) | 449 | `result-track:aedbec887dda978989146606f9a357bf0132e13765da0e885382234dfef17a4a` |
| 62 | `theorem` | [comap_exp_cobounded](../../../../SpecialFunctions/ExpNamespacedExpSubSumRangeIsBigOPow.lean/declarations/comap-exp-cobounded.md) | 455 | `result-track:d3c381fa29c10707a107c8869e278b3c74cbc706cded1f3a68311a75b51bd429` |
| 63 | `theorem` | [comap_exp_nhds_zero](../../../../SpecialFunctions/ExpNamespacedExpSubSumRangeIsBigOPow.lean/declarations/comap-exp-nhds-zero.md) | 462 | `result-track:4a03dfa7bfdc75af66d5644184b1b63d3a2e9599e1dd8e35b54a7c91db121391` |
| 64 | `theorem` | [comap_exp_nhdsNE](../../../../SpecialFunctions/ExpNamespacedExpSubSumRangeIsBigOPow.lean/declarations/comap-exp-nhdsne.md) | 469 | `result-track:f73a701d4e4918593e30e862bae2802f2e7579210421cc40a3bec8b21e47defa` |
| 65 | `theorem` | [tendsto_exp_nhds_zero_iff](../../../../SpecialFunctions/ExpNamespacedExpSubSumRangeIsBigOPow.lean/declarations/tendsto-exp-nhds-zero-iff.md) | 476 | `result-track:4e14aff79f8d49ceab46c17e1d3d1d6ecb17e884a06daf72500cee8ea32f7bab` |
| 66 | `theorem` | [tendsto_exp_comap_re_atTop](../../../../SpecialFunctions/ExpNamespacedExpSubSumRangeIsBigOPow.lean/declarations/tendsto-exp-comap-re-attop.md) | 482 | `result-track:15bfbb1348be0c527ccea0046fd8df77a0f5fb024525d995c03057aba4d3246e` |
| 67 | `theorem` | [tendsto_exp_comap_re_atBot](../../../../SpecialFunctions/ExpNamespacedExpSubSumRangeIsBigOPow.lean/declarations/tendsto-exp-comap-re-atbot.md) | 486 | `result-track:d8d9c2a8f88aa294b697e5c1da92106e1d056abaff288bae31097bea0964341c` |
| 68 | `theorem` | [tendsto_exp_comap_re_atBot_nhdsNE](../../../../SpecialFunctions/ExpNamespacedExpSubSumRangeIsBigOPow.lean/declarations/tendsto-exp-comap-re-atbot-nhdsne.md) | 489 | `result-track:0de05b5bc360132e8961eb58510a9664c568f413d91c6bfa92f0938da8cb2cfb` |
| 69 | `lemma` | [HasSum.cexp](../../../../SpecialFunctions/ExpNamespacedExpSubSumRangeIsBigOPow.lean/declarations/hassum-cexp.md) | 499 | `result-track:92e0f78bc322704652e7a89049f928227c9932d1a04a549f2f8a136894481d97` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=686189d19fd58ffb9410b3876b22d4ea7b6fdd6d917051e215620c6c6cd3b9a0 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/AsymptoticAnalysis/Exp/Variant2dc1a3f186b067d054e1aa13edd89b68c1e1c497e030855d6d79997244d83ce2.lean","GRWTSK/_verification/specifications/Analysis/AsymptoticAnalysis/Exp/Variant2dc1a3f186b067d054e1aa13edd89b68c1e1c497e030855d6d79997244d83ce2.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
