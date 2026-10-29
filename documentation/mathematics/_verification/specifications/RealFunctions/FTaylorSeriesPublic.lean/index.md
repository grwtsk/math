# Verification target: FTaylor Series Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ad3dee4ba3e3f6a9fd4030b170538f3f7d6f7099",
  "lexical_observation_count": 111,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/FTaylorSeries/Variantf6ebee83905f13d5648f1a9bff39c15b6109f161fdf5d482af9c5f22176ba535.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../RealFunctions/FTaylorSeriesPublic.lean/index.md) · [Full source](../../../../RealFunctions/FTaylorSeriesPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ad3dee4ba3e3f6a9fd4030b170538f3f7d6f7099`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/FTaylorSeries/Variantf6ebee83905f13d5648f1a9bff39c15b6109f161fdf5d482af9c5f22176ba535.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/FTaylorSeries/Variantf6ebee83905f13d5648f1a9bff39c15b6109f161fdf5d482af9c5f22176ba535.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [HasFTaylorSeriesUpToOn](../../../../RealFunctions/FTaylorSeriesPublic.lean/declarations/hasftaylorseriesuptoon.md) | 139 | `declaration-track:b4ce53ba93d3383a8508e9e75cb5fbd39fe725567595c9b9ce3df52375b0cce1` |
| 2 | `theorem` | [HasFTaylorSeriesUpToOn.zero_eq'](../../../../RealFunctions/FTaylorSeriesPublic.lean/declarations/hasftaylorseriesuptoon-zero-eq.md) | 146 | `result-track:570c611bca3acbc95ae4a5eed563860ddb41a63ef25b7bc2a82217d010e9ffe4` |
| 3 | `theorem` | [hasFTaylorSeriesUpToOn_empty](../../../../RealFunctions/FTaylorSeriesPublic.lean/declarations/hasftaylorseriesuptoon-empty.md) | 151 | `result-track:4afd0432835c590078fc8cc68abccfc85015f433e95095a252ac272875e5d78b` |
| 4 | `theorem` | [HasFTaylorSeriesUpToOn.congr](../../../../RealFunctions/FTaylorSeriesPublic.lean/declarations/hasftaylorseriesuptoon-congr.md) | 156 | `result-track:e518f7e849e0ef6e0ca6b7042f6801ac7f44bffc736134d689d6776441dfa3fb` |
| 5 | `theorem` | [HasFTaylorSeriesUpToOn.congr_series](../../../../RealFunctions/FTaylorSeriesPublic.lean/declarations/hasftaylorseriesuptoon-congr-series.md) | 162 | `result-track:ca177bca3fededf9b906cbc129f71cd338f313e69b06029dedca9892e519d45a` |
| 6 | `theorem` | [HasFTaylorSeriesUpToOn.mono](../../../../RealFunctions/FTaylorSeriesPublic.lean/declarations/hasftaylorseriesuptoon-mono.md) | 172 | `result-track:649c720b8a7d7ac9dd85693501261cc342259a52b738e387cc9d800a4fd08c57` |
| 7 | `theorem` | [HasFTaylorSeriesUpToOn.of_le](../../../../RealFunctions/FTaylorSeriesPublic.lean/declarations/hasftaylorseriesuptoon-of-le.md) | 177 | `result-track:39c0dc49216819096d93dc493856bbeb893dd4822bdc02b1fd8bce4f27f1b29a` |
| 8 | `theorem` | [HasFTaylorSeriesUpToOn.continuousOn](../../../../RealFunctions/FTaylorSeriesPublic.lean/declarations/hasftaylorseriesuptoon-continuouson.md) | 182 | `result-track:d8aaa3174bd6b72b45f56fe7de1f34e44d8e8b2a498c6f68d109ef47233eed34` |
| 9 | `theorem` | [hasFTaylorSeriesUpToOn_zero_iff](../../../../RealFunctions/FTaylorSeriesPublic.lean/declarations/hasftaylorseriesuptoon-zero-iff.md) | 187 | `result-track:08bef747aab9cccd14b8f126a7e41b40a0e35c092cdfb60c87cd7908e392aa33` |
| 10 | `theorem` | [hasFTaylorSeriesUpToOn_top_iff_add](../../../../RealFunctions/FTaylorSeriesPublic.lean/declarations/hasftaylorseriesuptoon-top-iff-add.md) | 197 | `result-track:afe7376a95477c1a1c88afa586a5fd55b813a864d243e9cafcb628dbf7491207` |
| 11 | `theorem` | [hasFTaylorSeriesUpToOn_top_iff](../../../../RealFunctions/FTaylorSeriesPublic.lean/declarations/hasftaylorseriesuptoon-top-iff.md) | 210 | `result-track:c9d8bafd4512ae43faa02eca757ec71756be503444e2c8d7d4f709987d847033` |
| 12 | `theorem` | [hasFTaylorSeriesUpToOn_top_iff'](../../../../RealFunctions/FTaylorSeriesPublic.lean/declarations/hasftaylorseriesuptoon-top-iff-source-edition-2.md) | 216 | `result-track:ef4c0b2e82dd32b30fc3069007f9edfcdbde5695f31830b5c0b8e557ed0ab943` |
| 13 | `theorem` | [HasFTaylorSeriesUpToOn.hasFDerivWithinAt](../../../../RealFunctions/FTaylorSeriesPublic.lean/declarations/hasftaylorseriesuptoon-hasfderivwithinat.md) | 228 | `result-track:f53a154043fd203d57e763eeb93f4e72ccf37372f83b6087f89bffdfe6e6f4e1` |
| 14 | `theorem` | [HasFTaylorSeriesUpToOn.differentiableOn](../../../../RealFunctions/FTaylorSeriesPublic.lean/declarations/hasftaylorseriesuptoon-differentiableon.md) | 243 | `result-track:dbe59db80485bff4aa144932b569a8ce8bbe8a6511ac115120cba438f2e74738` |
| 15 | `theorem` | [HasFTaylorSeriesUpToOn.hasFDerivAt](../../../../RealFunctions/FTaylorSeriesPublic.lean/declarations/hasftaylorseriesuptoon-hasfderivat.md) | 248 | `result-track:84fcdabe6c905bb622147e28964a07aeb62489c53357cf6435c1e832ef312ee4` |
| 16 | `theorem` | [HasFTaylorSeriesUpToOn.eventually_hasFDerivAt](../../../../RealFunctions/FTaylorSeriesPublic.lean/declarations/hasftaylorseriesuptoon-eventually-hasfderivat.md) | 254 | `result-track:d857f793bc18203a4379fb18faad89203b563590e9e33486c31d49c6e554defa` |
| 17 | `theorem` | [HasFTaylorSeriesUpToOn.differentiableAt](../../../../RealFunctions/FTaylorSeriesPublic.lean/declarations/hasftaylorseriesuptoon-differentiableat.md) | 261 | `result-track:bfac5825d7a90dca3567dc3737122ba1fceb99dc60f1266342aaf812c12c2301` |
| 18 | `theorem` | [hasFTaylorSeriesUpToOn_succ_iff_left](../../../../RealFunctions/FTaylorSeriesPublic.lean/declarations/hasftaylorseriesuptoon-succ-iff-left.md) | 267 | `result-track:7415ac979c5942e4bef5f90875d97fbf71ce47c480e3ebc04774f66e8531726a` |
| 19 | `theorem` | [HasFTaylorSeriesUpToOn.shift_of_succ](../../../../RealFunctions/FTaylorSeriesPublic.lean/declarations/hasftaylorseriesuptoon-shift-of-succ.md) | 291 | `result-track:f41290709139c1ef254b7d5ceb347584385fa4c745993cedea08e3a8b6a60bd0` |
| 20 | `theorem` | [hasFTaylorSeriesUpToOn_succ_nat_iff_right](../../../../RealFunctions/FTaylorSeriesPublic.lean/declarations/hasftaylorseriesuptoon-succ-nat-iff-right.md) | 318 | `result-track:a2b18d16c9b8512bb4ed4cb681da4b9cd505b06bfe616590b04b7e14a77da449` |
| 21 | `theorem` | [hasFTaylorSeriesUpToOn_top_iff_right](../../../../RealFunctions/FTaylorSeriesPublic.lean/declarations/hasftaylorseriesuptoon-top-iff-right.md) | 360 | `result-track:aad04d694a6a391d3da0f0f5387cc93542a73c4b06e1b2747b86b6d8f8a2ed1b` |
| 22 | `theorem` | [hasFTaylorSeriesUpToOn_succ_iff_right](../../../../RealFunctions/FTaylorSeriesPublic.lean/declarations/hasftaylorseriesuptoon-succ-iff-right.md) | 378 | `result-track:e4e741baee8c9dcf2f8a8493e7cfed7c8a507b053f8ec4ed37caf3b25724de67` |
| 23 | `def` | [iteratedFDerivWithin](../../../../RealFunctions/FTaylorSeriesPublic.lean/declarations/iteratedfderivwithin.md) | 398 | `declaration-track:9d233b0186db37a9460f29aa749e9ba93220b84b4e2a0a58cc2c1992440bb71f` |
| 24 | `def` | [ftaylorSeriesWithin](../../../../RealFunctions/FTaylorSeriesPublic.lean/declarations/ftaylorserieswithin.md) | 403 | `declaration-track:0c23c0cbc0ec4c37bd6adafb2e0dca3fd31b70501401acd0d79636568b613a0d` |
| 25 | `theorem` | [iteratedFDerivWithin_zero_apply](../../../../RealFunctions/FTaylorSeriesPublic.lean/declarations/iteratedfderivwithin-zero-apply.md) | 409 | `result-track:5952e43a8d7b2ae9d59286fa94420cfa14774032142cd528389c4cbaa6977d40` |
| 26 | `theorem` | [iteratedFDerivWithin_zero_eq_comp](../../../../RealFunctions/FTaylorSeriesPublic.lean/declarations/iteratedfderivwithin-zero-eq-comp.md) | 413 | `result-track:71a7a4b8cf1b061621136beca1bc6a1f117717a8d15205734e345b6fb75f12a3` |
| 27 | `theorem` | [dist_iteratedFDerivWithin_zero](../../../../RealFunctions/FTaylorSeriesPublic.lean/declarations/dist-iteratedfderivwithin-zero.md) | 418 | `result-track:721c6dbd8fd69d67f33b3bc02a97665338699fc0c4ff2d160e6ab36bada115f8` |
| 28 | `theorem` | [norm_iteratedFDerivWithin_zero](../../../../RealFunctions/FTaylorSeriesPublic.lean/declarations/norm-iteratedfderivwithin-zero.md) | 424 | `result-track:18c1ecf8ca175b690132f7dd99cc22b18e49f313f489013b7e8e8deecaf74506` |
| 29 | `theorem` | [iteratedFDerivWithin_succ_apply_left](../../../../RealFunctions/FTaylorSeriesPublic.lean/declarations/iteratedfderivwithin-succ-apply-left.md) | 427 | `result-track:925526b8a48ca67e2013b6d356662ea3ea10263b9f87ac17ac629389d04349db` |
| 30 | `theorem` | [iteratedFDerivWithin_succ_eq_comp_left](../../../../RealFunctions/FTaylorSeriesPublic.lean/declarations/iteratedfderivwithin-succ-eq-comp-left.md) | 434 | `result-track:12c2b2c543bf9c2fe48f02b3624800d4119df2a561dde8215d806fe18f5c23eb` |
| 31 | `theorem` | [fderivWithin_iteratedFDerivWithin](../../../../RealFunctions/FTaylorSeriesPublic.lean/declarations/fderivwithin-iteratedfderivwithin.md) | 440 | `result-track:0c653c80aed71237ef3008ff40b75fc34271839a24863a6e1648f465f95e7656` |
| 32 | `theorem` | [norm_fderivWithin_iteratedFDerivWithin](../../../../RealFunctions/FTaylorSeriesPublic.lean/declarations/norm-fderivwithin-iteratedfderivwithin.md) | 446 | `result-track:3f61521e41daf154de957c92cf27bb5e3e112b44b6e13e62c8cd5522232678d6` |
| 33 | `theorem` | [dist_iteratedFDerivWithin_one](../../../../RealFunctions/FTaylorSeriesPublic.lean/declarations/dist-iteratedfderivwithin-one.md) | 452 | `result-track:5c7fc08a650e4562b17b5499e391783025da65e164f38db63262f8875f18cba2` |
| 34 | `theorem` | [norm_iteratedFDerivWithin_one](../../../../RealFunctions/FTaylorSeriesPublic.lean/declarations/norm-iteratedfderivwithin-one.md) | 462 | `result-track:f7225934a29906b2b15abc6e1b2180e8b6f2e963159cb2b81f852eb11153961e` |
| 35 | `theorem` | [iteratedFDerivWithin_succ_apply_right](../../../../RealFunctions/FTaylorSeriesPublic.lean/declarations/iteratedfderivwithin-succ-apply-right.md) | 468 | `result-track:ebfa59ad4ce2269f16fcd75e997c10eb098b3404cda08ce89ef07794349da5d0` |
| 36 | `theorem` | [iteratedFDerivWithin_succ_eq_comp_right](../../../../RealFunctions/FTaylorSeriesPublic.lean/declarations/iteratedfderivwithin-succ-eq-comp-right.md) | 505 | `result-track:0caa798dbe24388d54976813648cfcfc6203ee8a6ab83d5ed0022835359ebea5` |
| 37 | `theorem` | [norm_iteratedFDerivWithin_fderivWithin](../../../../RealFunctions/FTaylorSeriesPublic.lean/declarations/norm-iteratedfderivwithin-fderivwithin.md) | 512 | `result-track:a9ab27ee74e2b01132d5ac452bfbc36888cb6104f5a822b0ef9bf9ac830674cc` |
| 38 | `theorem` | [iteratedFDerivWithin_one_apply](../../../../RealFunctions/FTaylorSeriesPublic.lean/declarations/iteratedfderivwithin-one-apply.md) | 518 | `result-track:91e4ecb9e00b186b845bb5716bc51c9faafe445645b87d978b912a893d637d97` |
| 39 | `lemma` | [iteratedFDerivWithin_two_apply](../../../../RealFunctions/FTaylorSeriesPublic.lean/declarations/iteratedfderivwithin-two-apply.md) | 525 | `result-track:22230bd5768dc1831b65e6c4be4defad43ca4fa9ab57885effb9e0ebdeb621d7` |
| 40 | `lemma` | [iteratedFDerivWithin_two_apply'](../../../../RealFunctions/FTaylorSeriesPublic.lean/declarations/iteratedfderivwithin-two-apply-source-edition-2.md) | 533 | `result-track:f03c3d656f0b3b6ec3c4b8935da2461544fd1f76fc690371a5ddabc189d87141` |
| 41 | `theorem` | [Filter.EventuallyEq.iteratedFDerivWithin'](../../../../RealFunctions/FTaylorSeriesPublic.lean/declarations/filter-eventuallyeq-iteratedfderivwithin-source-edition-2.md) | 538 | `result-track:ed0f3ff84a7064404d9bd79840c12d736c3d338c9b8b77e1c1054e084aad0362` |
| 42 | `theorem` | [Filter.EventuallyEq.iteratedFDerivWithin](../../../../RealFunctions/FTaylorSeriesPublic.lean/declarations/filter-eventuallyeq-iteratedfderivwithin.md) | 549 | `result-track:54491289ab26e0628507b659e7d130e499ad560b2e3b2b44160718d774237b4c` |
| 43 | `theorem` | [Filter.EventuallyEq.ftaylorSeriesWithin](../../../../RealFunctions/FTaylorSeriesPublic.lean/declarations/filter-eventuallyeq-ftaylorserieswithin.md) | 555 | `result-track:07c461c59303aefceb4750cd6645f828f36ba8feac24d6f8747f5444e88c7a62` |
| 44 | `theorem` | [Filter.EventuallyEq.iteratedFDerivWithin_eq](../../../../RealFunctions/FTaylorSeriesPublic.lean/declarations/filter-eventuallyeq-iteratedfderivwithin-eq.md) | 563 | `result-track:6d3cbe7ca9de1e0e47b50ad1d0d032e90ad8724e78d495f0cf817610bae55721` |
| 45 | `theorem` | [iteratedFDerivWithin_congr](../../../../RealFunctions/FTaylorSeriesPublic.lean/declarations/iteratedfderivwithin-congr.md) | 571 | `result-track:7e932f3204c33cc609f7eaef08fab345471f456568398ad821500300873ba70b` |
| 46 | `theorem` | [Set.EqOn.iteratedFDerivWithin](../../../../RealFunctions/FTaylorSeriesPublic.lean/declarations/set-eqon-iteratedfderivwithin.md) | 578 | `result-track:a822758d2e58a6006437b3c7c4f53f99dc96fc914974bd8467e23c921dca3663` |
| 47 | `theorem` | [iteratedFDerivWithin_eventually_congr_set'](../../../../RealFunctions/FTaylorSeriesPublic.lean/declarations/iteratedfderivwithin-eventually-congr-set-source-edition-2.md) | 582 | `result-track:a8039e7d81be7312a858dc2cf2bb785cbd1718772c88d35f1111384e50fc9c03` |
| 48 | `theorem` | [iteratedFDerivWithin_eventually_congr_set](../../../../RealFunctions/FTaylorSeriesPublic.lean/declarations/iteratedfderivwithin-eventually-congr-set.md) | 591 | `result-track:3bec9492aec464350c12ffbaa3a7a001c2da18e976aa84997d3a856808aef31c` |
| 49 | `theorem` | [iteratedFDerivWithin_congr_set'](../../../../RealFunctions/FTaylorSeriesPublic.lean/declarations/iteratedfderivwithin-congr-set.md) | 600 | `result-track:03865c973b3b3ec6c5556db2b9ced187f3caae4687f77d00208f85c008fccc60` |
| 50 | `theorem` | [iteratedFDerivWithin_insert](../../../../RealFunctions/FTaylorSeriesPublic.lean/declarations/iteratedfderivwithin-insert.md) | 605 | `result-track:038016707620406ed35fce636b81146ba63f1ca0057615e93d642ffd3fced274` |
| 51 | `theorem` | [iteratedFDerivWithin_congr_set](../../../../RealFunctions/FTaylorSeriesPublic.lean/declarations/iteratedfderivwithin-congr-set-source-edition-2.md) | 610 | `result-track:7391f0e28f97ee1dd4f6b0fb00def42d562b8ce6ef758313879c8494b82874db` |
| 52 | `theorem` | [ftaylorSeriesWithin_insert](../../../../RealFunctions/FTaylorSeriesPublic.lean/declarations/ftaylorserieswithin-insert.md) | 615 | `result-track:cd1b6425bec3c34a5915d123111cdf7dba8441024ab3f837e4a7c0385d4bdeca` |
| 53 | `theorem` | [iteratedFDerivWithin_inter'](../../../../RealFunctions/FTaylorSeriesPublic.lean/declarations/iteratedfderivwithin-inter.md) | 622 | `result-track:36799ed1d5ed543ab6bd0e8e71fbe36b1a68c46b41dc9efda634fface1af836a` |
| 54 | `theorem` | [iteratedFDerivWithin_inter](../../../../RealFunctions/FTaylorSeriesPublic.lean/declarations/iteratedfderivwithin-inter-source-edition-2.md) | 629 | `result-track:d12565c3f7332b675bbda43b7aa43777a2d9a9d0b402d88653defb6fd7cd7de4` |
| 55 | `theorem` | [iteratedFDerivWithin_inter_open](../../../../RealFunctions/FTaylorSeriesPublic.lean/declarations/iteratedfderivwithin-inter-open.md) | 635 | `result-track:4062f1cb3f3f6e5720814925f5820ede9c2b26978a43775f1ff55d482187e676` |
| 56 | `theorem` | [HasFTaylorSeriesUpToOn.eq_iteratedFDerivWithin_of_uniqueDiffOn](../../../../RealFunctions/FTaylorSeriesPublic.lean/declarations/hasftaylorseriesuptoon-eq-iteratedfderivwithin-of-uniquediffon.md) | 641 | `result-track:dd7a7a5816e8698fdb9233e83e1b6722dff4d0235ae4cba5e548899487d3f9e2` |
| 57 | `lemma` | [iteratedFDerivWithin_comp_add_left'](../../../../RealFunctions/FTaylorSeriesPublic.lean/declarations/iteratedfderivwithin-comp-add-left.md) | 657 | `result-track:0e0a25547a3d374dc3c4f98f767570b6123df69aea185e7d8d6a74f90f1be70c` |
| 58 | `lemma` | [iteratedFDerivWithin_comp_add_left](../../../../RealFunctions/FTaylorSeriesPublic.lean/declarations/iteratedfderivwithin-comp-add-left-source-edition-2.md) | 667 | `result-track:ecfe1a51cfe0948d84d54c66a28d6ac3ebc31a6cfc755d6b1d306564f45b79de` |
| 59 | `lemma` | [iteratedFDerivWithin_comp_add_right'](../../../../RealFunctions/FTaylorSeriesPublic.lean/declarations/iteratedfderivwithin-comp-add-right-source-edition-2.md) | 673 | `result-track:5c85602cc2bd0b8a1d31e94349bcec7a5be157b00bfc132a9dc40035cde22c9e` |
| 60 | `lemma` | [iteratedFDerivWithin_comp_add_right](../../../../RealFunctions/FTaylorSeriesPublic.lean/declarations/iteratedfderivwithin-comp-add-right.md) | 679 | `result-track:33da690690d060ec98155401839cc5452dc1ebff5e48ea4b159a19e02ffae37b` |
| 61 | `lemma` | [iteratedFDerivWithin_comp_sub'](../../../../RealFunctions/FTaylorSeriesPublic.lean/declarations/iteratedfderivwithin-comp-sub-source-edition-2.md) | 685 | `result-track:c8c106e8718222502e3a485c1345c6b2e497ec030fa1efb2d3d9804a412196d9` |
| 62 | `lemma` | [iteratedFDerivWithin_comp_sub](../../../../RealFunctions/FTaylorSeriesPublic.lean/declarations/iteratedfderivwithin-comp-sub.md) | 691 | `result-track:c273a78a11f12581b1569d10776716b84bbd91890fe61852921143b6ebf0d5ff` |
| 63 | `structure` | [HasFTaylorSeriesUpTo](../../../../RealFunctions/FTaylorSeriesPublic.lean/declarations/hasftaylorseriesupto.md) | 704 | `declaration-track:918fabb765dd5241045fd3e7f7f4393d464d92288f5a7e95530cb7c7040d8b62` |
| 64 | `theorem` | [HasFTaylorSeriesUpTo.zero_eq'](../../../../RealFunctions/FTaylorSeriesPublic.lean/declarations/hasftaylorseriesupto-zero-eq.md) | 710 | `result-track:c6d274ee0d2878cf04fc91e23a0ea41c378c67837a81b923cd40421d016c288f` |
| 65 | `lemma` | [HasFTaylorSeriesUpTo.fderiv_eq](../../../../RealFunctions/FTaylorSeriesPublic.lean/declarations/hasftaylorseriesupto-fderiv-eq.md) | 715 | `result-track:0f94110870ae8b879c450eaff0f4c3a867fd7fa781bb2cd15c8bca8e2c8130df` |
| 66 | `theorem` | [hasFTaylorSeriesUpToOn_univ_iff](../../../../RealFunctions/FTaylorSeriesPublic.lean/declarations/hasftaylorseriesuptoon-univ-iff.md) | 719 | `result-track:61c9e5611f72f385624eff821fc11389c6c17b0c77fbcb33b1e3896629c90e36` |
| 67 | `theorem` | [HasFTaylorSeriesUpTo.hasFTaylorSeriesUpToOn](../../../../RealFunctions/FTaylorSeriesPublic.lean/declarations/hasftaylorseriesupto-hasftaylorseriesuptoon.md) | 725 | `result-track:ce8325545b8eb8f339434b3e102c9d9680e2b12933e3a824390896d5f2fd699e` |
| 68 | `theorem` | [HasFTaylorSeriesUpTo.of_le](../../../../RealFunctions/FTaylorSeriesPublic.lean/declarations/hasftaylorseriesupto-of-le.md) | 729 | `result-track:93052cd874e2fa49dc8408e5d9ae1e9a8846a3a6e405e8099c0e70e234ddb57e` |
| 69 | `theorem` | [HasFTaylorSeriesUpTo.continuous](../../../../RealFunctions/FTaylorSeriesPublic.lean/declarations/hasftaylorseriesupto-continuous.md) | 733 | `result-track:d85cb2af73ef185d7037051420be5e844b49869990cf33b6074b9aa71e338e8a` |
| 70 | `theorem` | [hasFTaylorSeriesUpTo_zero_iff](../../../../RealFunctions/FTaylorSeriesPublic.lean/declarations/hasftaylorseriesupto-zero-iff.md) | 738 | `result-track:3e2de4f05e0695b2356e3920cc6e371974d6b185ca9e7439bd864e2e4ee5538d` |
| 71 | `theorem` | [hasFTaylorSeriesUpTo_top_iff](../../../../RealFunctions/FTaylorSeriesPublic.lean/declarations/hasftaylorseriesupto-top-iff-source-edition-2.md) | 743 | `result-track:d05de72b3634341fd049eaecc83ab893ceaf41b104fd2db443868dc19d925969` |
| 72 | `theorem` | [hasFTaylorSeriesUpTo_top_iff'](../../../../RealFunctions/FTaylorSeriesPublic.lean/declarations/hasftaylorseriesupto-top-iff.md) | 749 | `result-track:b1e2ce19326eda6b698562936e7eba1f4e38d784e4bb78704063afb8ac909465` |
| 73 | `theorem` | [HasFTaylorSeriesUpTo.hasFDerivAt](../../../../RealFunctions/FTaylorSeriesPublic.lean/declarations/hasftaylorseriesupto-hasfderivat.md) | 758 | `result-track:ab919ab79cf774a021d18e5a8df876f6ae69930d03dd5540fb7b0bdaf2137d19` |
| 74 | `theorem` | [HasFTaylorSeriesUpTo.differentiable](../../../../RealFunctions/FTaylorSeriesPublic.lean/declarations/hasftaylorseriesupto-differentiable.md) | 763 | `result-track:a38cc4b9a4f79e0677ee8745c9dbd97f4bc07bc493e8d1641e290799112602c1` |
| 75 | `theorem` | [hasFTaylorSeriesUpTo_succ_nat_iff_right](../../../../RealFunctions/FTaylorSeriesPublic.lean/declarations/hasftaylorseriesupto-succ-nat-iff-right.md) | 768 | `result-track:46fe749da88adb372b0d4b4dba26f81a216081ba55763157b59fcc4f6e7e0dac` |
| 76 | `lemma` | [HasFTaylorSeriesUpTo.tsupport_mono](../../../../RealFunctions/FTaylorSeriesPublic.lean/declarations/hasftaylorseriesupto-tsupport-mono.md) | 777 | `result-track:c045151409e27f006d438743c8a506d3a6512c3f93af446b6d4983ee983fb471` |
| 77 | `lemma` | [HasFTaylorSeriesUpTo.tsupport_subset](../../../../RealFunctions/FTaylorSeriesPublic.lean/declarations/hasftaylorseriesupto-tsupport-subset.md) | 790 | `result-track:eda4ebec0d00065c2b6a93638209db1b9419272204eff0393b76ebb1dcbbe2db` |
| 78 | `def` | [iteratedFDeriv](../../../../RealFunctions/FTaylorSeriesPublic.lean/declarations/iteratedfderiv.md) | 804 | `declaration-track:ed51bf56f1f04a92890f2df02ebc8d592030d0ea9d0c35e679ee961fe73c39b4` |
| 79 | `def` | [ftaylorSeries](../../../../RealFunctions/FTaylorSeriesPublic.lean/declarations/ftaylorseries.md) | 809 | `declaration-track:83508eb40ad0cb9ef82692a8845f87e3b072aa176d70914362d022dd3d18df65` |
| 80 | `theorem` | [iteratedFDeriv_zero_apply](../../../../RealFunctions/FTaylorSeriesPublic.lean/declarations/iteratedfderiv-zero-apply.md) | 815 | `result-track:0274d3e4f3e2aa55948cad8c4c7eed2ff05536361636e977673891149901737d` |
| 81 | `theorem` | [iteratedFDeriv_zero_eq_comp](../../../../RealFunctions/FTaylorSeriesPublic.lean/declarations/iteratedfderiv-zero-eq-comp.md) | 819 | `result-track:af0fa446bc87a93c6c354d857ca3d12402e40f6af907961b49a04add1a067ed9` |
| 82 | `theorem` | [norm_iteratedFDeriv_zero](../../../../RealFunctions/FTaylorSeriesPublic.lean/declarations/norm-iteratedfderiv-zero.md) | 824 | `result-track:cf9232443262826cc04422ad26f76d59ba1a816733a9cdb0b6752f51936fc787` |
| 83 | `theorem` | [iteratedFDerivWithin_zero_eq](../../../../RealFunctions/FTaylorSeriesPublic.lean/declarations/iteratedfderivwithin-zero-eq.md) | 827 | `result-track:e0cdebd11cefd670319dd440700320ec50c31d4f70088f31a9890fe7198e821f` |
| 84 | `theorem` | [iteratedFDeriv_succ_apply_left](../../../../RealFunctions/FTaylorSeriesPublic.lean/declarations/iteratedfderiv-succ-apply-left.md) | 829 | `result-track:ee57b4d1b255256b84ee86add45bab734efc05fa4976cf96ad7676a5fd7afcf7` |
| 85 | `theorem` | [DifferentiableAt.iteratedFDeriv_succ_apply_left'](../../../../RealFunctions/FTaylorSeriesPublic.lean/declarations/differentiableat-iteratedfderiv-succ-apply-left.md) | 835 | `result-track:fd782c2a0dac3c62988fc4d1f390b823e3a2db11e0a46ff7944e3bfd33abf1e8` |
| 86 | `theorem` | [iteratedFDeriv_succ_eq_comp_left](../../../../RealFunctions/FTaylorSeriesPublic.lean/declarations/iteratedfderiv-succ-eq-comp-left.md) | 844 | `result-track:357b90c63d5c98e253a04b964f51fe7f360d0acc771c3743a93387c08e8248e0` |
| 87 | `theorem` | [fderiv_iteratedFDeriv](../../../../RealFunctions/FTaylorSeriesPublic.lean/declarations/fderiv-iteratedfderiv.md) | 852 | `result-track:58043ac9c65c5f7f779232a6bd4597844680bc0afe207a3e42fbbac01f30fbd7` |
| 88 | `theorem` | [tsupport_iteratedFDeriv_subset](../../../../RealFunctions/FTaylorSeriesPublic.lean/declarations/tsupport-iteratedfderiv-subset.md) | 858 | `result-track:53d0ae39b9966100c3f8372adfac3061e745912d9ac864df232a308d07ca4f68` |
| 89 | `theorem` | [support_iteratedFDeriv_subset](../../../../RealFunctions/FTaylorSeriesPublic.lean/declarations/support-iteratedfderiv-subset.md) | 869 | `result-track:417d7aa7edc53d9ad65e5284446b846b7d5ee24692734042fdc6c6973361e9ef` |
| 90 | `theorem` | [HasCompactSupport.iteratedFDeriv](../../../../RealFunctions/FTaylorSeriesPublic.lean/declarations/hascompactsupport-iteratedfderiv.md) | 872 | `result-track:eec12aa6e3c096a808145483fb5d5f7c3cd11eb9ad08405706864492cd08b7a5` |
| 91 | `theorem` | [norm_fderiv_iteratedFDeriv](../../../../RealFunctions/FTaylorSeriesPublic.lean/declarations/norm-fderiv-iteratedfderiv.md) | 876 | `result-track:a1a80973d3689c13dceb1d5e476dbf8b51d82ca1c3297bac8ae360b619fe9006` |
| 92 | `theorem` | [iteratedFDerivWithin_univ](../../../../RealFunctions/FTaylorSeriesPublic.lean/declarations/iteratedfderivwithin-univ.md) | 880 | `result-track:f06ad308bb07f74c8506c0b7b5d6cd41dd22125e172ba1e7fd7778648d0c05bf` |
| 93 | `theorem` | [Filter.EventuallyEq.iteratedFDeriv](../../../../RealFunctions/FTaylorSeriesPublic.lean/declarations/filter-eventuallyeq-iteratedfderiv.md) | 886 | `result-track:310b5668224b83f4a736bbe1c87ce02739e19e18e8db7c4e0e5b7c579a426cac` |
| 94 | `theorem` | [Filter.EventuallyEq.ftaylorSeries](../../../../RealFunctions/FTaylorSeriesPublic.lean/declarations/filter-eventuallyeq-ftaylorseries.md) | 893 | `result-track:d9baedbef9d22f6be4535fa0696883f72f542dfdaffe4c5a28bdf2d35cea534e` |
| 95 | `theorem` | [HasFTaylorSeriesUpTo.eq_iteratedFDeriv](../../../../RealFunctions/FTaylorSeriesPublic.lean/declarations/hasftaylorseriesupto-eq-iteratedfderiv.md) | 899 | `result-track:0e264afa7fba7bde4e82eb7584237fcbf17224985b49c25a60036d3bc35663ba` |
| 96 | `theorem` | [iteratedFDerivWithin_of_isOpen](../../../../RealFunctions/FTaylorSeriesPublic.lean/declarations/iteratedfderivwithin-of-isopen.md) | 908 | `result-track:1460c7fbd751cb9ca62701842ae68015f9342da9d2999128e84ce241b29396dd` |
| 97 | `theorem` | [ftaylorSeriesWithin_univ](../../../../RealFunctions/FTaylorSeriesPublic.lean/declarations/ftaylorserieswithin-univ.md) | 914 | `result-track:5252f5da97fb30850fa53fc5eb6c4074c6ea988ea560dbe6b1ec3666ecde19b9` |
| 98 | `theorem` | [iteratedFDeriv_succ_apply_right](../../../../RealFunctions/FTaylorSeriesPublic.lean/declarations/iteratedfderiv-succ-apply-right.md) | 919 | `result-track:2a30478c92a1c1a04e6878433ea2ee7bdfe59761c3c80a365ccc69078a6e2dfd` |
| 99 | `theorem` | [iteratedFDeriv_succ_eq_comp_right](../../../../RealFunctions/FTaylorSeriesPublic.lean/declarations/iteratedfderiv-succ-eq-comp-right.md) | 927 | `result-track:f30ba6be672e90e66c5ec62c88ab325ac0dab3a5042959f70fe3b8f1f7163007` |
| 100 | `theorem` | [norm_iteratedFDeriv_fderiv](../../../../RealFunctions/FTaylorSeriesPublic.lean/declarations/norm-iteratedfderiv-fderiv.md) | 934 | `result-track:c3caa5225562b0b8a8da53871ed39b27939d0598815f568096d116bb2faed872` |
| 101 | `theorem` | [iteratedFDeriv_one_apply](../../../../RealFunctions/FTaylorSeriesPublic.lean/declarations/iteratedfderiv-one-apply.md) | 939 | `result-track:365925664af8868383eee5aa70d7e086037ad7729b74d88bf110248fbd9696d9` |
| 102 | `theorem` | [norm_iteratedFDeriv_one](../../../../RealFunctions/FTaylorSeriesPublic.lean/declarations/norm-iteratedfderiv-one.md) | 944 | `result-track:451a49aa9eaf20ebb9576c3ef24c1090120744ee57bc126511aebed22023f0b5` |
| 103 | `lemma` | [iteratedFDeriv_two_apply](../../../../RealFunctions/FTaylorSeriesPublic.lean/declarations/iteratedfderiv-two-apply.md) | 949 | `result-track:ff7587fb82c97da6a8185c0fb78aaaba788e1ee0ca650f2bd8d2477a3a1b844c` |
| 104 | `lemma` | [iteratedFDeriv_comp_add_left'](../../../../RealFunctions/FTaylorSeriesPublic.lean/declarations/iteratedfderiv-comp-add-left-source-edition-2.md) | 954 | `result-track:b9c1c401a63f6bedcc5ad185f0e4960fd72b641879ffd79fb83ad0bc65e67a5a` |
| 105 | `lemma` | [iteratedFDeriv_comp_add_left](../../../../RealFunctions/FTaylorSeriesPublic.lean/declarations/iteratedfderiv-comp-add-left.md) | 959 | `result-track:3e1ebc3832d5ffa262385e9ce8485ab0ec598459352b852992bb3f8b74ef49ee` |
| 106 | `lemma` | [iteratedFDeriv_comp_add_right'](../../../../RealFunctions/FTaylorSeriesPublic.lean/declarations/iteratedfderiv-comp-add-right.md) | 964 | `result-track:8cfbcd56d9e35bc91a8797cc1d1315bda074935c94fbd44f468e1ac62554907c` |
| 107 | `lemma` | [iteratedFDeriv_comp_add_right](../../../../RealFunctions/FTaylorSeriesPublic.lean/declarations/iteratedfderiv-comp-add-right-source-edition-2.md) | 969 | `result-track:debf3aa38b34aad003f94c041d4c4e9aa69f1ca300293ba62e25f50b3309e042` |
| 108 | `lemma` | [iteratedFDeriv_comp_sub'](../../../../RealFunctions/FTaylorSeriesPublic.lean/declarations/iteratedfderiv-comp-sub.md) | 974 | `result-track:bd6cdc166d1f2752d0ae792a620c29a2c66d6895e7991c8c56b868296febb096` |
| 109 | `lemma` | [iteratedFDeriv_comp_sub](../../../../RealFunctions/FTaylorSeriesPublic.lean/declarations/iteratedfderiv-comp-sub-source-edition-2.md) | 979 | `result-track:ce176609cc8ba087098a37d53a265abbe09ff60a035b99a3d50d12363b91bac6` |
| 110 | `lemma` | [iteratedFDerivWithin_comp_neg](../../../../RealFunctions/FTaylorSeriesPublic.lean/declarations/iteratedfderivwithin-comp-neg.md) | 983 | `result-track:96ac0d2d3833d4fbb1db61455f227d0a3afa8414566009076b9dc372e7f22772` |
| 111 | `theorem` | [iteratedFDerivWithin_comp_const_sub](../../../../RealFunctions/FTaylorSeriesPublic.lean/declarations/iteratedfderivwithin-comp-const-sub.md) | 1000 | `result-track:35a2df1cac9d891947ddc5915263ab247c729884f08de1c729a7adb2c3e92ed1` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=bbaa2d5cf486757a36eed7cb3f53eed580c150c675bb5d70648cb88af4c0d238 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/FTaylorSeries/Variantf6ebee83905f13d5648f1a9bff39c15b6109f161fdf5d482af9c5f22176ba535.lean","GRWTSK/_verification/specifications/Analysis/RealAnalysis/DifferentialCalculus/FTaylorSeries/Variantf6ebee83905f13d5648f1a9bff39c15b6109f161fdf5d482af9c5f22176ba535.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
