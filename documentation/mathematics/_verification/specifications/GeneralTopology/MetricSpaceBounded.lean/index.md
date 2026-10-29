# Verification target: Metric Space Bounded

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "17414866de7bb9117ba33b7fc910fa445fee5aff",
  "lexical_observation_count": 95,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Bounded/Variantd91ea35ad124b203f280df4241a81a2a2dd7258f957d463d37ec80d9555ee59d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../GeneralTopology/MetricSpaceBounded.lean/index.md) · [Full source](../../../../GeneralTopology/MetricSpaceBounded.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `17414866de7bb9117ba33b7fc910fa445fee5aff`.

Source path: `GRWTSK/Topology/GeneralTopology/Bounded/Variantd91ea35ad124b203f280df4241a81a2a2dd7258f957d463d37ec80d9555ee59d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Bounded/Variantd91ea35ad124b203f280df4241a81a2a2dd7258f957d463d37ec80d9555ee59d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Topology.Order.Compact` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.MetricSpace.ProperSpace` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.MetricSpace.Cauchy` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.EMetricSpace.Diam` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [isBounded_closedBall](../../../../GeneralTopology/MetricSpaceBounded.lean/declarations/isbounded-closedball.md) | 50 | `result-track:e51a4c5a3b9ae248f518a358a70433b0538e495553696e1ca81e4cc5cb818b4f` |
| 2 | `theorem` | [isBounded_ball](../../../../GeneralTopology/MetricSpaceBounded.lean/declarations/isbounded-ball.md) | 56 | `result-track:3ae2bdc227ca62cfec153a5999d3f4bffe24ad5705188373e3dbd6e07af5597d` |
| 3 | `theorem` | [isBounded_sphere](../../../../GeneralTopology/MetricSpaceBounded.lean/declarations/isbounded-sphere.md) | 60 | `result-track:69129ac305280fc476d471dc2fe75eace925bbaf439f57d256079d74fc7a0979` |
| 4 | `theorem` | [isBounded_iff_subset_closedBall](../../../../GeneralTopology/MetricSpaceBounded.lean/declarations/isbounded-iff-subset-closedball.md) | 64 | `result-track:e86fedb204fe44e4d6b7d378529bc4ce53130d95bf5d8ed202d5b49092084292` |
| 5 | `theorem` | [_root_.Bornology.IsBounded.subset_closedBall](../../../../GeneralTopology/MetricSpaceBounded.lean/declarations/root-bornology-isbounded-subset-closedball.md) | 68 | `result-track:9d482d5b91e2be1dc90269d1c67b4eeb1f813aebe03c29bc78a75c66cfa1233e` |
| 6 | `theorem` | [_root_.Bornology.IsBounded.subset_ball_lt](../../../../GeneralTopology/MetricSpaceBounded.lean/declarations/root-bornology-isbounded-subset-ball-lt.md) | 72 | `result-track:479be41d277b5500d6df168eaaa6d3451c25d52e00b36f8d503e7dca26f01e11` |
| 7 | `theorem` | [_root_.Bornology.IsBounded.subset_ball](../../../../GeneralTopology/MetricSpaceBounded.lean/declarations/root-bornology-isbounded-subset-ball.md) | 78 | `result-track:272d7635c7dfa4f7d522ff7d89d3fd98445b4377813eed11c9f01d10de662936` |
| 8 | `theorem` | [isBounded_iff_subset_ball](../../../../GeneralTopology/MetricSpaceBounded.lean/declarations/isbounded-iff-subset-ball.md) | 81 | `result-track:60acab25cfdaef97971bf9c5df56ff905ecb5859279a2e5ac369f8f181c359e5` |
| 9 | `theorem` | [_root_.Bornology.IsBounded.subset_closedBall_lt](../../../../GeneralTopology/MetricSpaceBounded.lean/declarations/root-bornology-isbounded-subset-closedball-lt.md) | 84 | `result-track:5afefc99743b116ed3ee8d4ddd796f4b5fe163051ab5d0023c298086956d9719` |
| 10 | `theorem` | [isBounded_closure_of_isBounded](../../../../GeneralTopology/MetricSpaceBounded.lean/declarations/isbounded-closure-of-isbounded.md) | 89 | `result-track:2558837439edd5398d70e4a0a557c5b4924f06c910cbd94a26568505da595483` |
| 11 | `theorem` | [_root_.Bornology.IsBounded.closure](../../../../GeneralTopology/MetricSpaceBounded.lean/declarations/root-bornology-isbounded-closure.md) | 94 | `result-track:8f9a98a3f03643ef2be82a4ce697b58461749d3d7acb4a54577309013f220113` |
| 12 | `theorem` | [isBounded_closure_iff](../../../../GeneralTopology/MetricSpaceBounded.lean/declarations/isbounded-closure-iff.md) | 98 | `result-track:5f34af57f3e784fa1115e8dc61a8de0430fbaf10c9d51a2c8b154a0e8e767ae7` |
| 13 | `theorem` | [hasBasis_cobounded_compl_closedBall](../../../../GeneralTopology/MetricSpaceBounded.lean/declarations/hasbasis-cobounded-compl-closedball.md) | 101 | `result-track:dce6641ff3d250d98b8c651ed43177513f82464439ca1bc0361af3540f5d8c78` |
| 14 | `theorem` | [hasAntitoneBasis_cobounded_compl_closedBall](../../../../GeneralTopology/MetricSpaceBounded.lean/declarations/hasantitonebasis-cobounded-compl-closedball.md) | 105 | `result-track:ba848c326cbdc9367dc3ba527878bead1db6c16ff4a961918ebb68606906d22d` |
| 15 | `theorem` | [hasBasis_cobounded_compl_ball](../../../../GeneralTopology/MetricSpaceBounded.lean/declarations/hasbasis-cobounded-compl-ball.md) | 109 | `result-track:4164b6f51336bb00187a58f8f14dfe7a8262e1d0fb07952f80792af2b1712529` |
| 16 | `theorem` | [hasAntitoneBasis_cobounded_compl_ball](../../../../GeneralTopology/MetricSpaceBounded.lean/declarations/hasantitonebasis-cobounded-compl-ball.md) | 113 | `result-track:2e6db23bb65c61b8b80ffbdf85e11ee706c4c1e38c23bfc3b224417f08b84a30` |
| 17 | `theorem` | [comap_dist_right_atTop](../../../../GeneralTopology/MetricSpaceBounded.lean/declarations/comap-dist-right-attop.md) | 118 | `result-track:da3d4a046235c3a9472785579c87380a39ff1626548232dd7b03b16be5a672e1` |
| 18 | `theorem` | [comap_dist_left_atTop](../../../../GeneralTopology/MetricSpaceBounded.lean/declarations/comap-dist-left-attop.md) | 123 | `result-track:49753d53eb7252c0bbacab6252a23e81e7139980941f98bd366c00c7d1d10cf5` |
| 19 | `theorem` | [tendsto_dist_right_atTop_iff](../../../../GeneralTopology/MetricSpaceBounded.lean/declarations/tendsto-dist-right-attop-iff.md) | 127 | `result-track:3d6ce15f88691b0e086ab55c68ac62964b9e0b943fd5ad51b9806ba19211b77f` |
| 20 | `theorem` | [tendsto_dist_left_atTop_iff](../../../../GeneralTopology/MetricSpaceBounded.lean/declarations/tendsto-dist-left-attop-iff.md) | 132 | `result-track:e4ffb685a6e57996b0a0dad33a542b7da086e0cb4eed73b0e1e3d6367cabed32` |
| 21 | `theorem` | [tendsto_dist_right_cobounded_atTop](../../../../GeneralTopology/MetricSpaceBounded.lean/declarations/tendsto-dist-right-cobounded-attop.md) | 136 | `result-track:61e792c706d762229cbe4837469f2a091863d5e6dc0c5949ebcf08cd5db4a1ee` |
| 22 | `theorem` | [tendsto_dist_left_cobounded_atTop](../../../../GeneralTopology/MetricSpaceBounded.lean/declarations/tendsto-dist-left-cobounded-attop.md) | 139 | `result-track:6fb9aa115e11ec47766bc4aa04f756d0cf4f72c650ae8b7a7a335f3ab2e5908c` |
| 23 | `theorem` | [_root_.TotallyBounded.isBounded](../../../../GeneralTopology/MetricSpaceBounded.lean/declarations/root-totallybounded-isbounded.md) | 143 | `result-track:7e421eed6be6682cd0d3bc6c2a2860f034ed83ea121a4930a613175d551bcee9` |
| 24 | `theorem` | [_root_.IsCompact.isBounded](../../../../GeneralTopology/MetricSpaceBounded.lean/declarations/root-iscompact-isbounded.md) | 150 | `result-track:5d6b4d4a1f09ee2e8a4f03514e4d478de0a241791b55d740081810f2b6b6ee07` |
| 25 | `theorem` | [cobounded_le_cocompact](../../../../GeneralTopology/MetricSpaceBounded.lean/declarations/cobounded-le-cocompact.md) | 154 | `result-track:493d871d8fd70cf6ee36bad199c25fe474c61b6244caf8ac4ef2155bb0b01f78` |
| 26 | `theorem` | [isCobounded_iff_closedBall_compl_subset](../../../../GeneralTopology/MetricSpaceBounded.lean/declarations/iscobounded-iff-closedball-compl-subset.md) | 157 | `result-track:ace069a99c65c40486936573d0ff98d7075fcfe01cf75c5e1d814b23c3d41b13` |
| 27 | `theorem` | [_root_.Bornology.IsCobounded.closedBall_compl_subset](../../../../GeneralTopology/MetricSpaceBounded.lean/declarations/root-bornology-iscobounded-closedball-compl-subset.md) | 164 | `result-track:ed3670924322dcc8f8ad63843d641e0ee5716e3fbd4e06188877c6db2dbaab38` |
| 28 | `theorem` | [closedBall_compl_subset_of_mem_cocompact](../../../../GeneralTopology/MetricSpaceBounded.lean/declarations/closedball-compl-subset-of-mem-cocompact.md) | 168 | `result-track:14ba65144ded4b5b76cd19dba66540fc2a6074d47ab8fcdc01749a868343b2f2` |
| 29 | `theorem` | [mem_cocompact_of_closedBall_compl_subset](../../../../GeneralTopology/MetricSpaceBounded.lean/declarations/mem-cocompact-of-closedball-compl-subset.md) | 172 | `result-track:73078b409c35fb6a1966641e3a86f047a261d65d953e9b16af206c69ca235a1b` |
| 30 | `theorem` | [mem_cocompact_iff_closedBall_compl_subset](../../../../GeneralTopology/MetricSpaceBounded.lean/declarations/mem-cocompact-iff-closedball-compl-subset.md) | 178 | `result-track:21b2209ef0ba7caea30e1ecfa98e8372932d4bfb07b7291455a006b5305932c2` |
| 31 | `theorem` | [isBounded_range_iff](../../../../GeneralTopology/MetricSpaceBounded.lean/declarations/isbounded-range-iff.md) | 183 | `result-track:08f0fa11fa15a02c93922cc3eeb57437b9385efd5504a9c3fad979f6b25e3d27` |
| 32 | `theorem` | [isBounded_image_iff](../../../../GeneralTopology/MetricSpaceBounded.lean/declarations/isbounded-image-iff.md) | 186 | `result-track:bc78a02544449542315ee8399640c93d49f0e11d8f08263ebce94559dd17eded` |
| 33 | `theorem` | [isBounded_range_of_tendsto_cofinite_uniformity](../../../../GeneralTopology/MetricSpaceBounded.lean/declarations/isbounded-range-of-tendsto-cofinite-uniformity.md) | 190 | `result-track:2ed1ef77d1c671c6131d62ce3dfa312988021e96922c2839c3e0b37a618fda12` |
| 34 | `theorem` | [isBounded_range_of_cauchy_map_cofinite](../../../../GeneralTopology/MetricSpaceBounded.lean/declarations/isbounded-range-of-cauchy-map-cofinite.md) | 198 | `result-track:394337fe466b5cf4435b31fccef611a8d6ea4ff8ee8231eb2d41702113c47acb` |
| 35 | `theorem` | [_root_.CauchySeq.isBounded_range](../../../../GeneralTopology/MetricSpaceBounded.lean/declarations/root-cauchyseq-isbounded-range.md) | 202 | `result-track:99553c20e15ec2b83ba9ccb9d38f135f68dc9ac7dea4ef18d64deb3eb0d46996` |
| 36 | `theorem` | [isBounded_range_of_tendsto_cofinite](../../../../GeneralTopology/MetricSpaceBounded.lean/declarations/isbounded-range-of-tendsto-cofinite.md) | 205 | `result-track:83e933dcfcb639324245a69d418cc95c806c74baaa54c98f716eb51f704851e1` |
| 37 | `theorem` | [isBounded_of_compactSpace](../../../../GeneralTopology/MetricSpaceBounded.lean/declarations/isbounded-of-compactspace.md) | 211 | `result-track:06ee33b9a53bf08c3a7bef225f53db125ca59c787da9d3a1444dc2fb28a591a7` |
| 38 | `theorem` | [isBounded_range_of_tendsto](../../../../GeneralTopology/MetricSpaceBounded.lean/declarations/isbounded-range-of-tendsto.md) | 214 | `result-track:2dfa17a18ab54a8f8df16e2a414194b5a99037edd9305b678b277f8f1345aa7d` |
| 39 | `theorem` | [disjoint_nhds_cobounded](../../../../GeneralTopology/MetricSpaceBounded.lean/declarations/disjoint-nhds-cobounded.md) | 218 | `result-track:fc4774ce9ffe31a9ba4650fa42746fb8a27b97aac60870032b30c5ced8ce4d60` |
| 40 | `theorem` | [disjoint_cobounded_nhds](../../../../GeneralTopology/MetricSpaceBounded.lean/declarations/disjoint-cobounded-nhds.md) | 221 | `result-track:efaa18941c04a43f88c3e63bef154f7ee33797f82eb5ee939b42ebcbbb515c4e` |
| 41 | `theorem` | [disjoint_nhdsSet_cobounded](../../../../GeneralTopology/MetricSpaceBounded.lean/declarations/disjoint-nhdsset-cobounded.md) | 224 | `result-track:d55e25834ba192756f098c8ccd2dce97f32d18dd3c123087aa3134ffed05369a` |
| 42 | `theorem` | [disjoint_cobounded_nhdsSet](../../../../GeneralTopology/MetricSpaceBounded.lean/declarations/disjoint-cobounded-nhdsset.md) | 227 | `result-track:8fb1f2ae492f836dcfa8763034354ee1e265dfc07f5a7107feeb67b4d8e8b122` |
| 43 | `theorem` | [exists_isBounded_image_of_tendsto](../../../../GeneralTopology/MetricSpaceBounded.lean/declarations/exists-isbounded-image-of-tendsto.md) | 230 | `result-track:3093deeb47cf92500a26bf4427b04f063bd4693836d3db77103a3c267ffaf031` |
| 44 | `theorem` | [exists_isOpen_isBounded_image_inter_of_isCompact_of_forall_continuousWithinAt](../../../../GeneralTopology/MetricSpaceBounded.lean/declarations/exists-isopen-isbounded-image-inter-of-iscompact-of-forall-continuouswit.md) | 237 | `result-track:05236cc934bf276e49d40bd1772a830023b4e6867bdaa1be595d5593afa0469a` |
| 45 | `theorem` | [exists_isOpen_isBounded_image_of_isCompact_of_forall_continuousAt](../../../../GeneralTopology/MetricSpaceBounded.lean/declarations/exists-isopen-isbounded-image-of-iscompact-of-forall-continuousat.md) | 252 | `result-track:b363a9f8b6b0691db73e50261ac6de7f7101602487478e05c035db225231c9a8` |
| 46 | `theorem` | [exists_isOpen_isBounded_image_inter_of_isCompact_of_continuousOn](../../../../GeneralTopology/MetricSpaceBounded.lean/declarations/exists-isopen-isbounded-image-inter-of-iscompact-of-continuouson.md) | 261 | `result-track:9546b1d852cbee02160cf3c9d12bef7020e72d62036fb1fa69c3320cd815a914` |
| 47 | `theorem` | [exists_isOpen_isBounded_image_of_isCompact_of_continuousOn](../../../../GeneralTopology/MetricSpaceBounded.lean/declarations/exists-isopen-isbounded-image-of-iscompact-of-continuouson.md) | 269 | `result-track:7272e6ac48d7532192ab7e375097e4b7e9c6c4ec3c148b5089d34b483e6d13f6` |
| 48 | `theorem` | [isCompact_of_isClosed_isBounded](../../../../GeneralTopology/MetricSpaceBounded.lean/declarations/iscompact-of-isclosed-isbounded.md) | 276 | `result-track:6911c87b3f3138c85a89b42da9e7c9e21feb7d2695ebd01fef69e64d0b46ab47` |
| 49 | `theorem` | [_root_.Bornology.IsBounded.isCompact_closure](../../../../GeneralTopology/MetricSpaceBounded.lean/declarations/root-bornology-isbounded-iscompact-closure.md) | 284 | `result-track:2042376ba49d2cda420137c3493fbee4a3fab4d2b919ec8c2bae3c20f9573d41` |
| 50 | `theorem` | [isCompact_iff_isClosed_bounded](../../../../GeneralTopology/MetricSpaceBounded.lean/declarations/iscompact-iff-isclosed-bounded.md) | 291 | `result-track:97b29deffa984ef356b2aeebf123a1dd813f905f526e1af276a38ccdde5ac38c` |
| 51 | `theorem` | [compactSpace_iff_isBounded_univ](../../../../GeneralTopology/MetricSpaceBounded.lean/declarations/compactspace-iff-isbounded-univ.md) | 295 | `result-track:f6d59b7b49e816fdb43bc067e3ca73cf9fa33b06d651cf25d67e1b9371e0ed37` |
| 52 | `theorem` | [_root_.totallyBounded_Icc](../../../../GeneralTopology/MetricSpaceBounded.lean/declarations/root-totallybounded-icc.md) | 303 | `result-track:7b8f5e774b4293132a6ab0ffa97504749577f401b51222ca5db5189870a7286f` |
| 53 | `theorem` | [_root_.totallyBounded_Ico](../../../../GeneralTopology/MetricSpaceBounded.lean/declarations/root-totallybounded-ico.md) | 306 | `result-track:a80f7d7e39b87d7778178c105605e49a0cc2cde8800da5dc6136df57d990b4e1` |
| 54 | `theorem` | [_root_.totallyBounded_Ioc](../../../../GeneralTopology/MetricSpaceBounded.lean/declarations/root-totallybounded-ioc.md) | 309 | `result-track:5c7fa63870c1ab6bf1cc7cee9c0f43613e2d0f7a81ec6cb3d5169e6b04e40949` |
| 55 | `theorem` | [_root_.totallyBounded_Ioo](../../../../GeneralTopology/MetricSpaceBounded.lean/declarations/root-totallybounded-ioo.md) | 312 | `result-track:2f79cf1ec3c6c96228341a892684506787ede0c80c1093f8e9381510a5f26969` |
| 56 | `theorem` | [isBounded_Icc](../../../../GeneralTopology/MetricSpaceBounded.lean/declarations/isbounded-icc.md) | 315 | `result-track:ed1ef78cc85929fbf37d23494e682cf8d58e2401ce845239d0f181bd4b5f25d9` |
| 57 | `theorem` | [isBounded_Ico](../../../../GeneralTopology/MetricSpaceBounded.lean/declarations/isbounded-ico.md) | 318 | `result-track:a48f68842ed6f77a578561946891265a27ea72ef346be6c00da5479d83d234e3` |
| 58 | `theorem` | [isBounded_Ioc](../../../../GeneralTopology/MetricSpaceBounded.lean/declarations/isbounded-ioc.md) | 321 | `result-track:7a449e2ded26d3dd8276b3011e2b025cfd8fb3124e0cd5a85f2c8773e3e46e8a` |
| 59 | `theorem` | [isBounded_Ioo](../../../../GeneralTopology/MetricSpaceBounded.lean/declarations/isbounded-ioo.md) | 324 | `result-track:264e262a10724012aa33902fa5d4052191b7e4f952bd22faa09debc8d2628e02` |
| 60 | `theorem` | [isBounded_of_bddAbove_of_bddBelow](../../../../GeneralTopology/MetricSpaceBounded.lean/declarations/isbounded-of-bddabove-of-bddbelow.md) | 329 | `result-track:dd42ba7b5fed4934dfd05332627b0c66a306ad670205d2ee45d32a2acabca5b1` |
| 61 | `def` | [diam](../../../../GeneralTopology/MetricSpaceBounded.lean/declarations/diam.md) | 345 | `declaration-track:eec82b5642235d1f74098dc787fe433049eed4d84d3ad2aa3f73191d96ac71ec` |
| 62 | `theorem` | [diam_nonneg](../../../../GeneralTopology/MetricSpaceBounded.lean/declarations/diam-nonneg.md) | 349 | `result-track:c8d63368b419462abf328423893aa367257483effaef107c4a60308cc0f5c2d7` |
| 63 | `theorem` | [diam_subsingleton](../../../../GeneralTopology/MetricSpaceBounded.lean/declarations/diam-subsingleton.md) | 352 | `result-track:c5ab543b28b8def5b13776a81b21acfe583eb07e1e23cfcf60601ebc3c00dcc1` |
| 64 | `theorem` | [diam_empty](../../../../GeneralTopology/MetricSpaceBounded.lean/declarations/diam-empty.md) | 357 | `result-track:df94a9f3e96a82b1cade65f9815ed82a0f3e9ad426da117f17e943058912b54a` |
| 65 | `theorem` | [diam_singleton](../../../../GeneralTopology/MetricSpaceBounded.lean/declarations/diam-singleton.md) | 362 | `result-track:9a077022cc6bf1cb0acf79e4514e2207bfc8727f9e24a3686c3d29558219b068` |
| 66 | `theorem` | [diam_one](../../../../GeneralTopology/MetricSpaceBounded.lean/declarations/diam-one.md) | 366 | `result-track:7edda6a23b093d9200454f08ad076cb55bef62fb6b409258bba97bb24cf1cd2a` |
| 67 | `theorem` | [diam_pair](../../../../GeneralTopology/MetricSpaceBounded.lean/declarations/diam-pair.md) | 370 | `result-track:d49b6f604447bcc6a55149a85507fb84095cded597008dc25bb8084bbc332c93` |
| 68 | `theorem` | [diam_triple](../../../../GeneralTopology/MetricSpaceBounded.lean/declarations/diam-triple.md) | 374 | `result-track:81475ddf942e720b5e053bb1c57740a707327f896c4201abc1518b3580e4ff7c` |
| 69 | `theorem` | [ediam_le_of_forall_dist_le](../../../../GeneralTopology/MetricSpaceBounded.lean/declarations/ediam-le-of-forall-dist-le.md) | 381 | `result-track:ea1d0f0da57468ae91878c3daa00eb33015b3011509b1c2c2fba5156e6547bd0` |
| 70 | `theorem` | [diam_le_of_forall_dist_le](../../../../GeneralTopology/MetricSpaceBounded.lean/declarations/diam-le-of-forall-dist-le.md) | 387 | `result-track:5212a6072b2be9925e9941b04adb9d5d0ab9fa0685c595868732d6d68990f529` |
| 71 | `theorem` | [diam_le_of_forall_dist_le_of_nonempty](../../../../GeneralTopology/MetricSpaceBounded.lean/declarations/diam-le-of-forall-dist-le-of-nonempty.md) | 393 | `result-track:534d4f4773f7ea188e2e2c307583f0f3aecd7d1dd0ec408bd92a2e422f181fb1` |
| 72 | `theorem` | [dist_le_diam_of_mem'](../../../../GeneralTopology/MetricSpaceBounded.lean/declarations/dist-le-diam-of-mem-source-edition-2.md) | 401 | `result-track:b7deb892fd9c82bff3250239c8c6bd912c37f0c7704a03b152c134d84692b328` |
| 73 | `theorem` | [isBounded_iff_ediam_ne_top](../../../../GeneralTopology/MetricSpaceBounded.lean/declarations/isbounded-iff-ediam-ne-top.md) | 407 | `result-track:02037cf2cfc162af61fd90dda75a217c39aeb4460e68d43b69415ede34902826` |
| 74 | `theorem` | [ediam_eq_top_iff_unbounded](../../../../GeneralTopology/MetricSpaceBounded.lean/declarations/ediam-eq-top-iff-unbounded.md) | 414 | `result-track:1bac65a294e621f80c04eb135da451323f2460568da1dabf17acccea7af7e990` |
| 75 | `theorem` | [ediam_univ_eq_top_iff_noncompact](../../../../GeneralTopology/MetricSpaceBounded.lean/declarations/ediam-univ-eq-top-iff-noncompact.md) | 417 | `result-track:9ec4d59d3d560b46e75149b32e9b02c2f75b5e59a7f9ec930dc14b8fdc4141e6` |
| 76 | `theorem` | [ediam_univ_of_noncompact](../../../../GeneralTopology/MetricSpaceBounded.lean/declarations/ediam-univ-of-noncompact.md) | 423 | `result-track:bf427dacb65150f34cd05f655aa1932da77dc0a7213c82b24d0a040beffc57e8` |
| 77 | `theorem` | [diam_univ_of_noncompact](../../../../GeneralTopology/MetricSpaceBounded.lean/declarations/diam-univ-of-noncompact.md) | 428 | `result-track:88f96b49789feea264fa7e83b26d8be06b98375ce8c99abf989e8862efdfbda4` |
| 78 | `theorem` | [dist_le_diam_of_mem](../../../../GeneralTopology/MetricSpaceBounded.lean/declarations/dist-le-diam-of-mem.md) | 432 | `result-track:47a74a0f30f009dd4d5dfc5681228455de88ed854afafcc130c5a20505a77fe7` |
| 79 | `theorem` | [ediam_of_unbounded](../../../../GeneralTopology/MetricSpaceBounded.lean/declarations/ediam-of-unbounded.md) | 435 | `result-track:7a87237bd9e8f3deff2a49c78b00c5d70e0d9ea0390bc1573ca95470b8d7d6fc` |
| 80 | `theorem` | [diam_eq_zero_of_unbounded](../../../../GeneralTopology/MetricSpaceBounded.lean/declarations/diam-eq-zero-of-unbounded.md) | 439 | `result-track:ce8be411f752f4c8b2015e8269cbc6c31e31a89bc4e487cba00635f9339862eb` |
| 81 | `theorem` | [diam_mono](../../../../GeneralTopology/MetricSpaceBounded.lean/declarations/diam-mono.md) | 443 | `result-track:8456cc2bc87aa99ee3f874bc43a2cca28d219fbbe648ab98659fc5c1ba4cf704` |
| 82 | `theorem` | [diam_union](../../../../GeneralTopology/MetricSpaceBounded.lean/declarations/diam-union-source-edition-2.md) | 449 | `result-track:4f4ea8b675f1a2c093fc33a72e28983eef855cda48b3a1f42c55f6c8492ac4b8` |
| 83 | `theorem` | [diam_union'](../../../../GeneralTopology/MetricSpaceBounded.lean/declarations/diam-union.md) | 459 | `result-track:4e0a85aa9ebec451f7d0ad687a1aed3658322ecb5c3fbecb21389a217cf8b51f` |
| 84 | `theorem` | [diam_le_of_subset_closedBall](../../../../GeneralTopology/MetricSpaceBounded.lean/declarations/diam-le-of-subset-closedball.md) | 463 | `result-track:319f4ecf09bb3bd459b8bf70484e021a68fc9194ac19efe8342fae56b0854148` |
| 85 | `theorem` | [diam_closedBall](../../../../GeneralTopology/MetricSpaceBounded.lean/declarations/diam-closedball.md) | 472 | `result-track:fffa691e9dedfb151181ba2f705712121271b9e4183e708d7f11d841a6b89348` |
| 86 | `theorem` | [diam_ball](../../../../GeneralTopology/MetricSpaceBounded.lean/declarations/diam-ball.md) | 476 | `result-track:bd002a90193655dc93d51a4c39f1f4b13e1c4c783e4fcb4e29b1c9f51ccda67e` |
| 87 | `theorem` | [_root_.IsComplete.nonempty_iInter_of_nonempty_biInter](../../../../GeneralTopology/MetricSpaceBounded.lean/declarations/root-iscomplete-nonempty-iinter-of-nonempty-biinter.md) | 481 | `result-track:cfc7b3a425b841c8800504651c9f0a622e7b803e9d001928bb7fd97ed63043b0` |
| 88 | `theorem` | [nonempty_iInter_of_nonempty_biInter](../../../../GeneralTopology/MetricSpaceBounded.lean/declarations/nonempty-iinter-of-nonempty-biinter.md) | 505 | `result-track:05cb6ca344640c933b95b22d022208a014137d60647b4e4e2d515ed0d1c7decf` |
| 89 | `def` | [evalDiam](../../../../GeneralTopology/MetricSpaceBounded.lean/declarations/evaldiam.md) | 520 | `declaration-track:7bd0d0d4ba4d39f9debd1a0cb1da711dcf92e648ccc543d7f2875ed1b4b0c2b3` |
| 90 | `theorem` | [Metric.cobounded_eq_cocompact](../../../../GeneralTopology/MetricSpaceBounded.lean/declarations/metric-cobounded-eq-cocompact.md) | 531 | `result-track:9f4871a5415f529b605238662bca9694eadbed2a2707172cfa69e507ffd81485` |
| 91 | `theorem` | [tendsto_dist_right_cocompact_atTop](../../../../GeneralTopology/MetricSpaceBounded.lean/declarations/tendsto-dist-right-cocompact-attop.md) | 536 | `result-track:7f541823c6ba9346db755ebc6a8f315c20d3d1fa6eb4026a3e4bfc042ff60e7b` |
| 92 | `theorem` | [tendsto_dist_left_cocompact_atTop](../../../../GeneralTopology/MetricSpaceBounded.lean/declarations/tendsto-dist-left-cocompact-attop.md) | 540 | `result-track:4d6a3b13968b9643bf1581e880ab48b955a007a287c9324a6310846be2a51318` |
| 93 | `theorem` | [comap_dist_left_atTop_eq_cocompact](../../../../GeneralTopology/MetricSpaceBounded.lean/declarations/comap-dist-left-attop-eq-cocompact.md) | 544 | `result-track:6585d29689278a49e1bf01645b2d34f2bbfa3b863372350feb6dc1316697b247` |
| 94 | `theorem` | [tendsto_cocompact_of_tendsto_dist_comp_atTop](../../../../GeneralTopology/MetricSpaceBounded.lean/declarations/tendsto-cocompact-of-tendsto-dist-comp-attop.md) | 547 | `result-track:cdff9dd04d47c3ecde28a8655c2ad20ff831d3a0c6f53275ffbf38eccfc3e558` |
| 95 | `theorem` | [Metric.finite_isBounded_inter_isClosed](../../../../GeneralTopology/MetricSpaceBounded.lean/declarations/metric-finite-isbounded-inter-isclosed.md) | 551 | `result-track:18ac2a88497509ae9b65bcd3a151095501649655030de125ff88c54790d8b5d4` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=9f7d9c06ed266a1564107772cc8a5e320a82dbec7d4883af9f48555b641d1026 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/Bounded/Variantd91ea35ad124b203f280df4241a81a2a2dd7258f957d463d37ec80d9555ee59d.lean","GRWTSK/_verification/specifications/Topology/GeneralTopology/Bounded/Variantd91ea35ad124b203f280df4241a81a2a2dd7258f957d463d37ec80d9555ee59d.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
