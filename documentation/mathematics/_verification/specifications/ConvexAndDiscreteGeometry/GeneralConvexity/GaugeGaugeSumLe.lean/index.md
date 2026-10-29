# Verification target: Gauge Gauge Sum Le

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "49c3a1f3e957a4dc8668df1f4f4e31e793690624",
  "lexical_observation_count": 67,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/FunctionalAnalysis/Gauge/Variantde3b213cccf4feb3df7a528a052164d751aad33f9f4fdcf9458954d0732ca682.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/GaugeGaugeSumLe.lean/index.md) · [Full source](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/GaugeGaugeSumLe.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `49c3a1f3e957a4dc8668df1f4f4e31e793690624`.

Source path: `GRWTSK/Analysis/FunctionalAnalysis/Gauge/Variantde3b213cccf4feb3df7a528a052164d751aad33f9f4fdcf9458954d0732ca682.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/FunctionalAnalysis/Gauge/Variantde3b213cccf4feb3df7a528a052164d751aad33f9f4fdcf9458954d0732ca682.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Convex.Topology` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.NormedSpace.Pointwise` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Seminorm` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.LocallyConvex.Bounded` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.RCLike.Basic` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [gauge](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/GaugeGaugeSumLe.lean/declarations/gauge.md) | 52 | `declaration-track:bc907fcf3093236155c3f586a6ec964d561d8797e467b93c0eb8e9085f168572` |
| 2 | `theorem` | [gauge_def](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/GaugeGaugeSumLe.lean/declarations/gauge-def-source-edition-2.md) | 57 | `result-track:f24e21175b10a00f211c79d4263cb81606ed0f797fa3091a53dfb8922904248a` |
| 3 | `theorem` | [gauge_def'](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/GaugeGaugeSumLe.lean/declarations/gauge-def.md) | 62 | `result-track:9aca2a2ac00d08c2f233dfebd69acc24a4f41894eb05794b8e884dc486e5f7b6` |
| 4 | `theorem` | [gauge_set_bddBelow](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/GaugeGaugeSumLe.lean/declarations/gauge-set-bddbelow.md) | 66 | `result-track:55c67ad206eb1831c49af98c2cb19c429e233e74752ad1662098d08c92d20424` |
| 5 | `theorem` | [Absorbent.gauge_set_nonempty](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/GaugeGaugeSumLe.lean/declarations/absorbent-gauge-set-nonempty.md) | 71 | `result-track:9c44593623d91cd8435964da0cb6bcf806e90a0e3606f10929f68ee4b63979bb` |
| 6 | `theorem` | [gauge_mono](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/GaugeGaugeSumLe.lean/declarations/gauge-mono.md) | 76 | `result-track:936d85da64a78907a2a90fcd8b96474631a331029be4e9540979f6075689e603` |
| 7 | `theorem` | [exists_lt_of_gauge_lt](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/GaugeGaugeSumLe.lean/declarations/exists-lt-of-gauge-lt.md) | 79 | `result-track:b670d97d19e4d505e2b99ce6307d9085d17f84d7d0cbe7ad876ded80d2475ee7` |
| 8 | `theorem` | [gauge_zero](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/GaugeGaugeSumLe.lean/declarations/gauge-zero-source-edition-2.md) | 87 | `result-track:622696f1511d7595e36d53cea4a6db6742dbc9855e8818d81c658a2654fedc6a` |
| 9 | `theorem` | [gauge_zero'](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/GaugeGaugeSumLe.lean/declarations/gauge-zero.md) | 94 | `result-track:43a01ed9fbaf6ddcf608ec2c4efe1a67b6c9d565505afda82d53659b792475c3` |
| 10 | `theorem` | [gauge_empty](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/GaugeGaugeSumLe.lean/declarations/gauge-empty.md) | 104 | `result-track:9bda27d0f641c57c4db70a6525c6c6ffa01062eda14d2958cd3ac8d89d31a5b6` |
| 11 | `theorem` | [gauge_of_subset_zero](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/GaugeGaugeSumLe.lean/declarations/gauge-of-subset-zero.md) | 108 | `result-track:1ec630105aa07d0493401da89b14911c2208e2e36b9b00f6148df44d754b10d9` |
| 12 | `theorem` | [gauge_nonneg](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/GaugeGaugeSumLe.lean/declarations/gauge-nonneg.md) | 113 | `result-track:732b4ecda484cc53e77690290b55d9263541857f754c1af5008ba32f92b130c1` |
| 13 | `theorem` | [gauge_neg](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/GaugeGaugeSumLe.lean/declarations/gauge-neg.md) | 116 | `result-track:9d2eac36f02943f3ff8cf8c5f30f8da4ff41feba5088859a51e47a442ed42781` |
| 14 | `theorem` | [gauge_neg_set_neg](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/GaugeGaugeSumLe.lean/declarations/gauge-neg-set-neg.md) | 120 | `result-track:12eb960916e7b9264e26447990cbca36a635e61ec1d32ab3706c64977b279091` |
| 15 | `theorem` | [gauge_neg_set_eq_gauge_neg](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/GaugeGaugeSumLe.lean/declarations/gauge-neg-set-eq-gauge-neg.md) | 123 | `result-track:8f8c96d25bf5df8cf57c35195e1bd6c6bd08f09ff556dfd9e3d3b844bc7eb6cb` |
| 16 | `theorem` | [gauge_le_of_mem](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/GaugeGaugeSumLe.lean/declarations/gauge-le-of-mem.md) | 126 | `result-track:a5f1e55186ccfdbb7b6ce94c39a3e7be808d52a97afe1249641fd29717cc96cc` |
| 17 | `theorem` | [gauge_le_eq](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/GaugeGaugeSumLe.lean/declarations/gauge-le-eq.md) | 131 | `result-track:327e197fc3292ae5cb7a1e054ae66062b99fac9b0cedb5642c86939131f2d158` |
| 18 | `theorem` | [gauge_lt_eq'](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/GaugeGaugeSumLe.lean/declarations/gauge-lt-eq-source-edition-2.md) | 148 | `result-track:892662b51d1d5b79c2ccf9175e373f3edf4072f764954054d790608d1594916e` |
| 19 | `theorem` | [gauge_lt_eq](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/GaugeGaugeSumLe.lean/declarations/gauge-lt-eq.md) | 156 | `result-track:5921d6f6c6eabce23d6d3c3015802407db4efea69ccdd767415887bfc2fa171a` |
| 20 | `theorem` | [mem_openSegment_of_gauge_lt_one](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/GaugeGaugeSumLe.lean/declarations/mem-opensegment-of-gauge-lt-one.md) | 164 | `result-track:d9753c682381e3672d5351b498dfb789796fe0d234cdfdd64ca12f561fd88762` |
| 21 | `theorem` | [gauge_lt_one_subset_self](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/GaugeGaugeSumLe.lean/declarations/gauge-lt-one-subset-self.md) | 170 | `result-track:ac8fe22c2e6418aa931cd0a0f4b9c3361c8bfb11d4e9becc4f513d3236a232f9` |
| 22 | `theorem` | [gauge_le_one_of_mem](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/GaugeGaugeSumLe.lean/declarations/gauge-le-one-of-mem.md) | 175 | `result-track:864be9701bd6f95d30c2883779206d59c65897c5e5fddc81b8bbbd7c58fcad0e` |
| 23 | `theorem` | [gauge_add_le](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/GaugeGaugeSumLe.lean/declarations/gauge-add-le.md) | 179 | `result-track:1e135eb96714e69d1497edfb070d4a01d81d30158b01cf17615f5f1f4a944aea` |
| 24 | `theorem` | [gauge_sum_le](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/GaugeGaugeSumLe.lean/declarations/gauge-sum-le.md) | 192 | `result-track:d4ffb327e47af5e10597c2631a0dee62e9e3a51d79fd9d406cea51f5c1a803a8` |
| 25 | `theorem` | [self_subset_gauge_le_one](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/GaugeGaugeSumLe.lean/declarations/self-subset-gauge-le-one.md) | 196 | `result-track:df31cee59293a40571e863fe58ad29b1a4a9d4c6d665df51f28c272874f9ff0d` |
| 26 | `theorem` | [Convex.gauge_le](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/GaugeGaugeSumLe.lean/declarations/convex-gauge-le.md) | 198 | `result-track:0bce9afa84894fc5cb209afa57c26b4fbfe3dde89c99bede00f57a16b2ff8988` |
| 27 | `theorem` | [Balanced.starConvex](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/GaugeGaugeSumLe.lean/declarations/balanced-starconvex.md) | 206 | `result-track:3e3c291e4c2ad8152aff3bae5a4c6ef6322e95f9223546ba05c75c5d0b4006b6` |
| 28 | `theorem` | [le_gauge_of_notMem](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/GaugeGaugeSumLe.lean/declarations/le-gauge-of-notmem.md) | 210 | `result-track:0a68abdd5de6eb370bdd2330e4aa6391b4a3d19a80379fa2742b02c4b9ea10ee` |
| 29 | `theorem` | [one_le_gauge_of_notMem](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/GaugeGaugeSumLe.lean/declarations/one-le-gauge-of-notmem.md) | 226 | `result-track:a3f83250c15bf79ca30298c109a0e7050240ee622689bdaf368409c5f199a9ef` |
| 30 | `theorem` | [gauge_smul_of_nonneg](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/GaugeGaugeSumLe.lean/declarations/gauge-smul-of-nonneg.md) | 237 | `result-track:d48391b9210774324f135b40a53407620e0f0b6c9a92d9f1c30e520a484be0c0` |
| 31 | `theorem` | [gauge_smul_left_of_nonneg](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/GaugeGaugeSumLe.lean/declarations/gauge-smul-left-of-nonneg.md) | 261 | `result-track:83f763a5f3e692d4764ed837a14dd053088cf3d4c861fd12fbf8c0457f64a1e5` |
| 32 | `theorem` | [gauge_smul_left](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/GaugeGaugeSumLe.lean/declarations/gauge-smul-left.md) | 281 | `result-track:e7079b17fea97970d44437d9eea80622a02735e68d7cd9aa53c9ea41d50005e9` |
| 33 | `theorem` | [gauge_norm_smul](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/GaugeGaugeSumLe.lean/declarations/gauge-norm-smul.md) | 302 | `result-track:75515ca12d224a3717fd4fa48530c176d76450899c8a44047663daeef242888d` |
| 34 | `theorem` | [gauge_smul](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/GaugeGaugeSumLe.lean/declarations/gauge-smul.md) | 311 | `result-track:356536f085eb91ce6fc1b2338ff92b19c21e40c0a312cb3e5fdb2415afea18dc` |
| 35 | `theorem` | [comap_gauge_nhds_zero_le](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/GaugeGaugeSumLe.lean/declarations/comap-gauge-nhds-zero-le.md) | 322 | `result-track:e1e28da62c9dd2cda77b637273845212463f9c399430361e83129cde7ce0d9a2` |
| 36 | `theorem` | [gauge_eq_zero](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/GaugeGaugeSumLe.lean/declarations/gauge-eq-zero.md) | 333 | `result-track:e7646047cc66e2589e6e79699b31049bd02fee53d036990901564bd824b2e467` |
| 37 | `theorem` | [gauge_pos](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/GaugeGaugeSumLe.lean/declarations/gauge-pos.md) | 341 | `result-track:d733ba4f34027bd8aa568a043dd1266aa806d465b3aea03e028f37a26917efa9` |
| 38 | `theorem` | [interior_subset_gauge_lt_one](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/GaugeGaugeSumLe.lean/declarations/interior-subset-gauge-lt-one.md) | 352 | `result-track:6f21d189d4558223dd66494e0976f65f7630323e89a88a4571fbc9b9b7721446` |
| 39 | `theorem` | [gauge_lt_one_eq_self_of_isOpen](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/GaugeGaugeSumLe.lean/declarations/gauge-lt-one-eq-self-of-isopen.md) | 363 | `result-track:a24acb48ac45c5dbb8723671b3f48c91f9a17c70a9c8e28f4fbcd4c47b748c28` |
| 40 | `theorem` | [gauge_lt_one_of_mem_of_isOpen](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/GaugeGaugeSumLe.lean/declarations/gauge-lt-one-of-mem-of-isopen.md) | 369 | `result-track:dfd532d3d6a898a044dbb7831a4d634e03c55863d836b9cef99b76a8b0bb1464` |
| 41 | `theorem` | [gauge_lt_of_mem_smul](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/GaugeGaugeSumLe.lean/declarations/gauge-lt-of-mem-smul.md) | 373 | `result-track:6d84f0c2d6e5de794279e2b159edf573be12d02c4c64e2d9a945c076ced1ce9d` |
| 42 | `theorem` | [mem_closure_of_gauge_le_one](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/GaugeGaugeSumLe.lean/declarations/mem-closure-of-gauge-le-one.md) | 380 | `result-track:9cf022bd8962c08885c53ae0b541727bcf5d3bf51f70e509afe8c6fa2e455da1` |
| 43 | `theorem` | [mem_frontier_of_gauge_eq_one](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/GaugeGaugeSumLe.lean/declarations/mem-frontier-of-gauge-eq-one.md) | 391 | `result-track:38f70f133befa08c4df4490dbdf02ffd162a5af46a92807092bdc582b3d2521e` |
| 44 | `theorem` | [tendsto_gauge_nhds_zero_nhdsGE](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/GaugeGaugeSumLe.lean/declarations/tendsto-gauge-nhds-zero-nhdsge.md) | 396 | `result-track:bb604e0fb2838d07ab2bcc2fb501da342fd2b1bd636142db3c75da9e9e7155a0` |
| 45 | `theorem` | [tendsto_gauge_nhds_zero](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/GaugeGaugeSumLe.lean/declarations/tendsto-gauge-nhds-zero.md) | 405 | `result-track:3783fbe628bec1c2ef72aea4ef85ff9b2a992c2d9cfc9443b63914e19db43d75` |
| 46 | `theorem` | [continuousAt_gauge_zero](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/GaugeGaugeSumLe.lean/declarations/continuousat-gauge-zero.md) | 410 | `result-track:b82456bfe0c14f3bd18e37b499be3c3ae559297472ec9bd4e13d56b57697ac8a` |
| 47 | `theorem` | [comap_gauge_nhds_zero](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/GaugeGaugeSumLe.lean/declarations/comap-gauge-nhds-zero.md) | 414 | `result-track:5c0163a0d76cee9956404816fbb44e4cfd5a7d2f86c86b377216bdbe6c8dc13a` |
| 48 | `theorem` | [continuousAt_gauge](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/GaugeGaugeSumLe.lean/declarations/continuousat-gauge.md) | 430 | `result-track:f63a19b424837fffd81b36dd56a961c3c7f8ad26b9f11ad8e54620e9b5300d6a` |
| 49 | `theorem` | [continuous_gauge](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/GaugeGaugeSumLe.lean/declarations/continuous-gauge.md) | 452 | `result-track:533318686db522344ecbbb81f6f7e7a8833e972b8b3882f08306d7b0e6cd4798` |
| 50 | `theorem` | [gauge_lt_one_eq_interior](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/GaugeGaugeSumLe.lean/declarations/gauge-lt-one-eq-interior.md) | 455 | `result-track:e7b5e68271a4cadee8db4c81aa8abe69ffadf521725759bb6ce503e9608e421e` |
| 51 | `theorem` | [gauge_lt_one_iff_mem_interior](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/GaugeGaugeSumLe.lean/declarations/gauge-lt-one-iff-mem-interior.md) | 461 | `result-track:1c591fbc43ef92470eff77314ca952a4895e83b7d9719a75c3b14d69d50e07c8` |
| 52 | `theorem` | [gauge_le_one_iff_mem_closure](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/GaugeGaugeSumLe.lean/declarations/gauge-le-one-iff-mem-closure.md) | 465 | `result-track:e3e5978ef14f4d3f885f52f3ef96ba7646a3078a7a722e4ebba84ac73672ccc6` |
| 53 | `theorem` | [gauge_eq_one_iff_mem_frontier](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/GaugeGaugeSumLe.lean/declarations/gauge-eq-one-iff-mem-frontier.md) | 471 | `result-track:823fd9a39a837c7ac7251526ebe9a135b834ee5a2acf110f931bd98910ed75f0` |
| 54 | `def` | [gaugeSeminorm](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/GaugeGaugeSumLe.lean/declarations/gaugeseminorm.md) | 484 | `declaration-track:9d7e37e9aae1be95d8056fcbe9a25c8f55e205cabd527d250bbab82d6e98715f` |
| 55 | `theorem` | [gaugeSeminorm_lt_one_of_isOpen](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/GaugeGaugeSumLe.lean/declarations/gaugeseminorm-lt-one-of-isopen.md) | 490 | `result-track:920b74635c1d9d3631d5f550ffe01b6d0ec9f3eaeaac2708fbecef68c7f68a80` |
| 56 | `theorem` | [gaugeSeminorm_ball_one](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/GaugeGaugeSumLe.lean/declarations/gaugeseminorm-ball-one.md) | 494 | `result-track:87bb51f20eb85bef99664555bfe599d8c67e44d2de89e5b02934b0540e1920e6` |
| 57 | `theorem` | [Seminorm.gauge_ball](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/GaugeGaugeSumLe.lean/declarations/seminorm-gauge-ball.md) | 502 | `result-track:0e0aab73a84122004daa67185eb1ca6cf7d2400bd5f842a3c577bf7b94b5cdc1` |
| 58 | `theorem` | [Seminorm.gaugeSeminorm_ball](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/GaugeGaugeSumLe.lean/declarations/seminorm-gaugeseminorm-ball.md) | 524 | `result-track:4f72e8942a491b4adb5294949b383794c2b43c129d076ff7933a8cffdcae31a8` |
| 59 | `theorem` | [gauge_unit_ball](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/GaugeGaugeSumLe.lean/declarations/gauge-unit-ball.md) | 536 | `result-track:a8b31db2a0e9edd55aa0e73d9f6d88b610d5a1dc5632a89cad48eeebc91fc228` |
| 60 | `theorem` | [gauge_ball](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/GaugeGaugeSumLe.lean/declarations/gauge-ball.md) | 539 | `result-track:8b4b215e740ab3b6658be2468f2ec94b2dfbef542dc6ac59c773d3656bb2d83d` |
| 61 | `theorem` | [gauge_closure_zero](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/GaugeGaugeSumLe.lean/declarations/gauge-closure-zero.md) | 548 | `result-track:18160c51d3e97380266ff611d95d49631f81ef345848ca2e65d7d3d7d34640dd` |
| 62 | `theorem` | [gauge_closedBall](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/GaugeGaugeSumLe.lean/declarations/gauge-closedball.md) | 558 | `result-track:1f428625bf23cca5b4771edc9f9e88faff7da212fe60cb757bf19f60fe551e8c` |
| 63 | `theorem` | [mul_gauge_le_norm](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/GaugeGaugeSumLe.lean/declarations/mul-gauge-le-norm.md) | 572 | `result-track:25b528528853479adbf068f6b332df7b04e93d9db44657c15ac2ff7446343e02` |
| 64 | `theorem` | [Convex.lipschitzWith_gauge](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/GaugeGaugeSumLe.lean/declarations/convex-lipschitzwith-gauge.md) | 578 | `result-track:c014bac533c84583b476ddcfbd4daeb95890c2b86272ba732286e449ff9844f8` |
| 65 | `theorem` | [Convex.lipschitz_gauge](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/GaugeGaugeSumLe.lean/declarations/convex-lipschitz-gauge.md) | 589 | `result-track:85a7e25746ada5dc0c414d67235ec39e879dcb2095fbd7fdc81177a646901f25` |
| 66 | `theorem` | [Convex.uniformContinuous_gauge](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/GaugeGaugeSumLe.lean/declarations/convex-uniformcontinuous-gauge.md) | 594 | `result-track:22e90addf381ef0673c990376707f67ecb7859b4c4179af3ce9c25146c479d90` |
| 67 | `theorem` | [le_gauge_of_subset_closedBall](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/GaugeGaugeSumLe.lean/declarations/le-gauge-of-subset-closedball.md) | 605 | `result-track:c00ab11ea885abadbb929558dd4e225c22b03d71d35e4c5c3c6c1ca64d636872` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=8c2de5086723aeb5497392b2ce2b3582b0b0c84706d96915651a90dc9ace1203 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/FunctionalAnalysis/Gauge/Variantde3b213cccf4feb3df7a528a052164d751aad33f9f4fdcf9458954d0732ca682.lean","GRWTSK/_verification/specifications/Analysis/FunctionalAnalysis/Gauge/Variantde3b213cccf4feb3df7a528a052164d751aad33f9f4fdcf9458954d0732ca682.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
