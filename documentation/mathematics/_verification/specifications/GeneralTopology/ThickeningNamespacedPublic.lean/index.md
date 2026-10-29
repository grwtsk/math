# Verification target: Thickening Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "171028dd690792c08d89df66361b5edfaba72194",
  "lexical_observation_count": 98,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/MetricTopology/Thickening/Variant2dff1763f1f7c9ed4134069f0a2e96428bcc66e5651f23cd542aea2a268e9931.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../GeneralTopology/ThickeningNamespacedPublic.lean/index.md) · [Full source](../../../../GeneralTopology/ThickeningNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `171028dd690792c08d89df66361b5edfaba72194`.

Source path: `GRWTSK/Topology/MetricTopology/Thickening/Variant2dff1763f1f7c9ed4134069f0a2e96428bcc66e5651f23cd542aea2a268e9931.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/MetricTopology/Thickening/Variant2dff1763f1f7c9ed4134069f0a2e96428bcc66e5651f23cd542aea2a268e9931.lean.json)

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
| 1 | `def` | [thickening](../../../../GeneralTopology/ThickeningNamespacedPublic.lean/declarations/thickening.md) | 61 | `declaration-track:c2b1df865608875a2e81feb3f9355dc8a800707098b31b1911834bb510bd8c94` |
| 2 | `theorem` | [mem_thickening_iff_infEDist_lt](../../../../GeneralTopology/ThickeningNamespacedPublic.lean/declarations/mem-thickening-iff-infedist-lt.md) | 64 | `result-track:c33779953148f79a220c93c46432dca7b0ddc7191665752766fe26bdaedad50e` |
| 3 | `lemma` | [eventually_notMem_thickening_of_infEDist_pos](../../../../GeneralTopology/ThickeningNamespacedPublic.lean/declarations/eventually-notmem-thickening-of-infedist-pos.md) | 69 | `result-track:724a924522db71a632c0775ab020870544b9c7e9418112c2970ab91b13c1a71e` |
| 4 | `theorem` | [thickening_eq_preimage_infEDist](../../../../GeneralTopology/ThickeningNamespacedPublic.lean/declarations/thickening-eq-preimage-infedist.md) | 77 | `result-track:b65068e6d420cc1c06dc545a13ad2773e55057f7239f829727e5ede2bc7db740` |
| 5 | `theorem` | [isOpen_thickening](../../../../GeneralTopology/ThickeningNamespacedPublic.lean/declarations/isopen-thickening.md) | 82 | `result-track:6b7b0cb8444c74453333be97a7d13dd8171149899a55514c0935632b89e4a442` |
| 6 | `theorem` | [thickening_empty](../../../../GeneralTopology/ThickeningNamespacedPublic.lean/declarations/thickening-empty.md) | 87 | `result-track:f447b73b4c7403f85a398b6e058b8512b20385830ff54d95dfbe42d70a0ea7e4` |
| 7 | `theorem` | [thickening_of_nonpos](../../../../GeneralTopology/ThickeningNamespacedPublic.lean/declarations/thickening-of-nonpos.md) | 90 | `result-track:08a7a640686d201a7a6b08f339f7107ca7f28dd84b203f5f1c58700f29aafeca` |
| 8 | `theorem` | [thickening_mono](../../../../GeneralTopology/ThickeningNamespacedPublic.lean/declarations/thickening-mono.md) | 96 | `result-track:c53015eaebc575c49684aba7a2eaaae05c1c18e0f4a7d826524de695920839b3` |
| 9 | `theorem` | [thickening_subset_of_subset](../../../../GeneralTopology/ThickeningNamespacedPublic.lean/declarations/thickening-subset-of-subset.md) | 102 | `result-track:328cf1858f36fec1413c6efff70cae3a0760f9e80a67d61f5fb9148e054e9f5d` |
| 10 | `theorem` | [mem_thickening_iff_exists_edist_lt](../../../../GeneralTopology/ThickeningNamespacedPublic.lean/declarations/mem-thickening-iff-exists-edist-lt.md) | 105 | `result-track:af17e84dfd496d88aba8872fb8706e585a6831386aac2fe14c179786738e5b8b` |
| 11 | `theorem` | [frontier_thickening_subset](../../../../GeneralTopology/ThickeningNamespacedPublic.lean/declarations/frontier-thickening-subset.md) | 111 | `result-track:4099692897eb05581edf5dc9a4f745a84e7615b7ae723963ba0c9c08ef9414f2` |
| 12 | `theorem` | [frontier_thickening_disjoint](../../../../GeneralTopology/ThickeningNamespacedPublic.lean/declarations/frontier-thickening-disjoint.md) | 116 | `result-track:de4bc4416e22cdff84aa5eb9d3fb42978a803f9d9d6638e4d4cc7551e277104c` |
| 13 | `lemma` | [subset_compl_thickening_compl_thickening_self](../../../../GeneralTopology/ThickeningNamespacedPublic.lean/declarations/subset-compl-thickening-compl-thickening-self.md) | 128 | `result-track:49cbb683d1ef9340a658bf8816ef3c41db11724426bf9124d0499d9984803f70` |
| 14 | `lemma` | [thickening_compl_thickening_self_subset_compl](../../../../GeneralTopology/ThickeningNamespacedPublic.lean/declarations/thickening-compl-thickening-self-subset-compl.md) | 138 | `result-track:aec2532d028893e3745f19cf174f9408bd8eecb393a6d95a773d7bf0fac0b844` |
| 15 | `theorem` | [mem_thickening_iff_infDist_lt](../../../../GeneralTopology/ThickeningNamespacedPublic.lean/declarations/mem-thickening-iff-infdist-lt.md) | 145 | `result-track:358a841e5742fb15fd21c8071d76da7fe490dc2188f6814a4edb01d8074d2a2c` |
| 16 | `theorem` | [mem_thickening_iff](../../../../GeneralTopology/ThickeningNamespacedPublic.lean/declarations/mem-thickening-iff.md) | 151 | `result-track:52657e8534c25ea8a0591d9ac1db1b92e48e1f2e720a535f0f58a16434f208c0` |
| 17 | `theorem` | [thickening_singleton](../../../../GeneralTopology/ThickeningNamespacedPublic.lean/declarations/thickening-singleton.md) | 157 | `result-track:7e0b67e8d1faf58432d0cf9dbc9ca051ec16c879b39a66601eb6f53afa7ea7f7` |
| 18 | `theorem` | [ball_subset_thickening](../../../../GeneralTopology/ThickeningNamespacedPublic.lean/declarations/ball-subset-thickening.md) | 161 | `result-track:578fb240eb2274724405b257b16dfcb4a4a0e22342df6dd77e37a8600a7fe151` |
| 19 | `theorem` | [thickening_eq_biUnion_ball](../../../../GeneralTopology/ThickeningNamespacedPublic.lean/declarations/thickening-eq-biunion-ball.md) | 167 | `result-track:aecbc9fee12420872592b72d48774961ea25f951c4d1202fee852f697f9b449e` |
| 20 | `theorem` | [Thickening Namespaced Public](../../../../GeneralTopology/ThickeningNamespacedPublic.lean/declarations/thickening-source-line-172-occurrence-2.md) | 172 | `result-track:f801cdd01cc966a7f419511e2de8b2f83acd70f59b8814fb692db57818520544` |
| 21 | `def` | [cthickening](../../../../GeneralTopology/ThickeningNamespacedPublic.lean/declarations/cthickening.md) | 189 | `declaration-track:c62e5881678d967adadec4cb4e413952431fa803f4908927baeec4ca08a4edf1` |
| 22 | `theorem` | [mem_cthickening_iff](../../../../GeneralTopology/ThickeningNamespacedPublic.lean/declarations/mem-cthickening-iff.md) | 193 | `result-track:f33ae3f7ee92fe210707f529794a6fbc6d71cfe43625b6ff13c3705b1b2f2718` |
| 23 | `lemma` | [eventually_notMem_cthickening_of_infEDist_pos](../../../../GeneralTopology/ThickeningNamespacedPublic.lean/declarations/eventually-notmem-cthickening-of-infedist-pos.md) | 198 | `result-track:03b37776e15977281bcca152037a7621a0131302679e69c19c96612e4722b620` |
| 24 | `theorem` | [mem_cthickening_of_edist_le](../../../../GeneralTopology/ThickeningNamespacedPublic.lean/declarations/mem-cthickening-of-edist-le.md) | 205 | `result-track:45416a1f56af629057501a4af7904d3d59e0f186e8bb2ca3e85c3113d3e8ae1b` |
| 25 | `theorem` | [mem_cthickening_of_dist_le](../../../../GeneralTopology/ThickeningNamespacedPublic.lean/declarations/mem-cthickening-of-dist-le.md) | 209 | `result-track:64e21823d221b4c7b41d81f24297fa8fd41c50cdf1bbd6bb510db6f160acde53` |
| 26 | `theorem` | [cthickening_eq_preimage_infEDist](../../../../GeneralTopology/ThickeningNamespacedPublic.lean/declarations/cthickening-eq-preimage-infedist.md) | 215 | `result-track:ba1a3e50908c93324fb62579d83d0b225f6e3aa5d7a8b0b0946c0d5ef8e854a5` |
| 27 | `theorem` | [isClosed_cthickening](../../../../GeneralTopology/ThickeningNamespacedPublic.lean/declarations/isclosed-cthickening.md) | 220 | `result-track:dc714f387e7ce38733099a8320681c375833d3bbb888aa755d9512ffe54a259a` |
| 28 | `theorem` | [cthickening_empty](../../../../GeneralTopology/ThickeningNamespacedPublic.lean/declarations/cthickening-empty.md) | 225 | `result-track:069d19f599782046cebe38f6e88f057f4158725ee587e6d57b725e59c12f2065` |
| 29 | `theorem` | [cthickening_of_nonpos](../../../../GeneralTopology/ThickeningNamespacedPublic.lean/declarations/cthickening-of-nonpos.md) | 228 | `result-track:d5e45156f0d1f1a03d4a53c167224a4968b2a806c3fe923e772c5bd2616789c4` |
| 30 | `theorem` | [cthickening_zero](../../../../GeneralTopology/ThickeningNamespacedPublic.lean/declarations/cthickening-zero.md) | 234 | `result-track:666832e6a917aecbb7eb05ea7b664598ef1e9f5dccdcf9f2f06647815a3a935e` |
| 31 | `theorem` | [cthickening_max_zero](../../../../GeneralTopology/ThickeningNamespacedPublic.lean/declarations/cthickening-max-zero.md) | 237 | `result-track:cdd05be04f70a327f93bb541149b419a739fb041967a9ce9ccb122922bb14c43` |
| 32 | `theorem` | [cthickening_mono](../../../../GeneralTopology/ThickeningNamespacedPublic.lean/declarations/cthickening-mono.md) | 242 | `result-track:778d5c913716461f6d6f7d8d669f98e96af51e0430d21e14cb4d47e4c80b5258` |
| 33 | `theorem` | [cthickening_singleton](../../../../GeneralTopology/ThickeningNamespacedPublic.lean/declarations/cthickening-singleton.md) | 247 | `result-track:b65372c64dea6fbda416a16cbdab39476c2b9e0b3f9850d3fce819f54baaccf5` |
| 34 | `theorem` | [closedBall_subset_cthickening_singleton](../../../../GeneralTopology/ThickeningNamespacedPublic.lean/declarations/closedball-subset-cthickening-singleton.md) | 252 | `result-track:aaf0c35b647b3ba15e1e6680747806af4fedd7b657164e98438a6132531de5f1` |
| 35 | `theorem` | [cthickening_subset_of_subset](../../../../GeneralTopology/ThickeningNamespacedPublic.lean/declarations/cthickening-subset-of-subset.md) | 260 | `result-track:2d267bba8044030495d88f49298faaa9447f1b86093b58518eed63e9ecd10fd6` |
| 36 | `theorem` | [cthickening_subset_thickening](../../../../GeneralTopology/ThickeningNamespacedPublic.lean/declarations/cthickening-subset-thickening-source-edition-2.md) | 263 | `result-track:9ad5c9c22a332149da1a46c74009839e821a8e8be6df50b0d5506c26308794d3` |
| 37 | `theorem` | [cthickening_subset_thickening'](../../../../GeneralTopology/ThickeningNamespacedPublic.lean/declarations/cthickening-subset-thickening.md) | 269 | `result-track:98490b67f515ea50d919c28a76bcaf45201406058cb7b254a902538d30716bb3` |
| 38 | `theorem` | [thickening_subset_cthickening](../../../../GeneralTopology/ThickeningNamespacedPublic.lean/declarations/thickening-subset-cthickening.md) | 275 | `result-track:36d26673b180701828f071e105576556cd2a677e13a1fdb2d4a468b4c88dbd74` |
| 39 | `theorem` | [thickening_subset_cthickening_of_le](../../../../GeneralTopology/ThickeningNamespacedPublic.lean/declarations/thickening-subset-cthickening-of-le.md) | 280 | `result-track:bfa952e44b05799a713c9b485e6f493b29998de376d428d6f5fa38160f306dfd` |
| 40 | `theorem` | [Thickening Namespaced Public](../../../../GeneralTopology/ThickeningNamespacedPublic.lean/declarations/cthickening-source-line-284-occurrence-2.md) | 284 | `result-track:10c8fdf4735e702714853604c8aaf91ec6dff411b7cd515a57838af6c9b7cdb5` |
| 41 | `theorem` | [Thickening Namespaced Public](../../../../GeneralTopology/ThickeningNamespacedPublic.lean/declarations/cthickening-source-line-291-occurrence-2.md) | 291 | `result-track:4a6a8d4c0094e89f5665e34eef878eb1f5d8256e0576d2cb0b95d7acc80f71d0` |
| 42 | `theorem` | [thickening_subset_interior_cthickening](../../../../GeneralTopology/ThickeningNamespacedPublic.lean/declarations/thickening-subset-interior-cthickening.md) | 296 | `result-track:404c5a06e10d4eea8f4df9cfc6cbcd7cc0608f0a400cc4cabb2905b2ad5b04ca` |
| 43 | `theorem` | [closure_thickening_subset_cthickening](../../../../GeneralTopology/ThickeningNamespacedPublic.lean/declarations/closure-thickening-subset-cthickening.md) | 301 | `result-track:0fbdc518172a7529fdd1d3390f19928c1eb328e55cad39f3fcc3daff56380c68` |
| 44 | `theorem` | [closure_subset_cthickening](../../../../GeneralTopology/ThickeningNamespacedPublic.lean/declarations/closure-subset-cthickening.md) | 306 | `result-track:4ccae2897a979ab6c67e9dc45e1c41d3fc4a10fd8e917816c5b705f4684e5257` |
| 45 | `theorem` | [closure_subset_thickening](../../../../GeneralTopology/ThickeningNamespacedPublic.lean/declarations/closure-subset-thickening.md) | 311 | `result-track:6e6952e73be9312a1576b945ea56b947d3c9925e78fe9ddf7fa0f469938c33d8` |
| 46 | `theorem` | [self_subset_thickening](../../../../GeneralTopology/ThickeningNamespacedPublic.lean/declarations/self-subset-thickening.md) | 317 | `result-track:1f8845aa69c0874a119d55661e7f59286cf9489e6e8d24d3373d9d933d4f6f3e` |
| 47 | `theorem` | [self_subset_cthickening](../../../../GeneralTopology/ThickeningNamespacedPublic.lean/declarations/self-subset-cthickening.md) | 321 | `result-track:bc30073079813c246933a008a7a41178a21abc62dd24ba708e498a68730c72ec` |
| 48 | `theorem` | [thickening_mem_nhdsSet](../../../../GeneralTopology/ThickeningNamespacedPublic.lean/declarations/thickening-mem-nhdsset.md) | 324 | `result-track:c52464cc2c25aea0c6c40e84b3b520c9fd688aaee696fa90d2db71b8fa27b9ea` |
| 49 | `theorem` | [cthickening_mem_nhdsSet](../../../../GeneralTopology/ThickeningNamespacedPublic.lean/declarations/cthickening-mem-nhdsset.md) | 327 | `result-track:929bdabb5d818e315a3fb72b479c2ed8d769da34197468bfd7b54293c34f2743` |
| 50 | `theorem` | [thickening_union](../../../../GeneralTopology/ThickeningNamespacedPublic.lean/declarations/thickening-union.md) | 331 | `result-track:3dc8ff78610a29bf65e920776162ffce058363ed385e1e06c0e70ff7705f9ffe` |
| 51 | `theorem` | [cthickening_union](../../../../GeneralTopology/ThickeningNamespacedPublic.lean/declarations/cthickening-union.md) | 336 | `result-track:fbd262ef7020486a347f1b7f6e189577ae6c0db5c10ae4a89e8b6d47d905a4fe` |
| 52 | `theorem` | [thickening_iUnion](../../../../GeneralTopology/ThickeningNamespacedPublic.lean/declarations/thickening-iunion.md) | 341 | `result-track:972b38848de8d4e334c7b2b689418a9f1d01f5a525e4bd57eede5fe8d8e93533` |
| 53 | `lemma` | [thickening_biUnion](../../../../GeneralTopology/ThickeningNamespacedPublic.lean/declarations/thickening-biunion.md) | 345 | `result-track:dd260b87da1e1ffa13ca39586897d785f285b5f8d0425c24646915d23dafb83b` |
| 54 | `theorem` | [ediam_cthickening_le](../../../../GeneralTopology/ThickeningNamespacedPublic.lean/declarations/ediam-cthickening-le.md) | 348 | `result-track:746ebd8aa53f6930f32ad2a022b8cbb636d0da072d0128d600d8375a66c5d5b8` |
| 55 | `theorem` | [ediam_thickening_le](../../../../GeneralTopology/ThickeningNamespacedPublic.lean/declarations/ediam-thickening-le.md) | 362 | `result-track:43eff306ae64c56cfce568f4125f9570fb1f81bf6b5d8e2f3356a0194e778136` |
| 56 | `theorem` | [diam_cthickening_le](../../../../GeneralTopology/ThickeningNamespacedPublic.lean/declarations/diam-cthickening-le.md) | 365 | `result-track:3a3cb85a2cf973e541340abc37fd2a5687138a84b3a56bdcbe24956084c0e653` |
| 57 | `theorem` | [diam_thickening_le](../../../../GeneralTopology/ThickeningNamespacedPublic.lean/declarations/diam-thickening-le.md) | 373 | `result-track:0668deebf71cb80b437df99834196f24a798d1661a68412ecdf6bf6e1bff16a3` |
| 58 | `theorem` | [thickening_closure](../../../../GeneralTopology/ThickeningNamespacedPublic.lean/declarations/thickening-closure.md) | 384 | `result-track:f1f71eb58baf78225a9617fdc3d78d28ba8aacc3d32b7d60993a5d3bcdde9740` |
| 59 | `theorem` | [cthickening_closure](../../../../GeneralTopology/ThickeningNamespacedPublic.lean/declarations/cthickening-closure.md) | 388 | `result-track:3c00da10826a7c6b4561de16b2376a0323987a4e0dc87f260e81dee948d53ed6` |
| 60 | `lemma` | [thickening_eq_empty_iff_of_pos](../../../../GeneralTopology/ThickeningNamespacedPublic.lean/declarations/thickening-eq-empty-iff-of-pos.md) | 391 | `result-track:216b5ec7e2eae0c6b3b2338c37d23ff8f41e76366212e0d23148606d26552ef9` |
| 61 | `lemma` | [thickening_nonempty_iff_of_pos](../../../../GeneralTopology/ThickeningNamespacedPublic.lean/declarations/thickening-nonempty-iff-of-pos.md) | 395 | `result-track:65d8a04cdef1935bef913cacb94308e3bf4fefd9846b3182f1aff4c090be9e03` |
| 62 | `lemma` | [thickening_eq_empty_iff](../../../../GeneralTopology/ThickeningNamespacedPublic.lean/declarations/thickening-eq-empty-iff.md) | 399 | `result-track:bc7bd46d93b664a5683963dc6b6ea41b805a3e749c3dd29bdabb4477f8a75e95` |
| 63 | `lemma` | [thickening_nonempty_iff](../../../../GeneralTopology/ThickeningNamespacedPublic.lean/declarations/thickening-nonempty-iff.md) | 404 | `result-track:10a7e1c48189abd73eca25d7cba2a87539bda015bec3c7c502c708de337dc032` |
| 64 | `theorem` | [Thickening Namespaced Public](../../../../GeneralTopology/ThickeningNamespacedPublic.lean/declarations/exists-thickenings.md) | 409 | `result-track:a4811e8706f5369e3846859dc894bc74be544027f736eefd3630256ac5e3a257` |
| 65 | `theorem` | [Thickening Namespaced Public](../../../../GeneralTopology/ThickeningNamespacedPublic.lean/declarations/exists-cthickenings.md) | 426 | `result-track:26897fd8583aff248020627b86b22b973b0b92a3b3a837df564bded29180c975` |
| 66 | `theorem` | [Thickening Namespaced Public](../../../../GeneralTopology/ThickeningNamespacedPublic.lean/declarations/exists-cthickening-subset-open.md) | 434 | `result-track:c6713bcf6238d3dae6d118e46cb259eb809b0da290bbecd42faaba12466da84c` |
| 67 | `theorem` | [Thickening Namespaced Public](../../../../GeneralTopology/ThickeningNamespacedPublic.lean/declarations/exists-iscompact-cthickening.md) | 440 | `result-track:1ecbc976c7a0896c158e4d897c3f55354a2916aa314bb66332caf686e799ff6f` |
| 68 | `theorem` | [Thickening Namespaced Public](../../../../GeneralTopology/ThickeningNamespacedPublic.lean/declarations/exists-thickening-subset-open.md) | 447 | `result-track:27c54aee765e41da105ba21c198dd9125904c68da9cb1d06a80cdda07121cb24` |
| 69 | `theorem` | [hasBasis_nhdsSet_thickening](../../../../GeneralTopology/ThickeningNamespacedPublic.lean/declarations/hasbasis-nhdsset-thickening.md) | 452 | `result-track:5c9cd940d83bea65f207de2e8713600536b5bfb766f8592521b41c5f7b4c08b6` |
| 70 | `theorem` | [hasBasis_nhdsSet_cthickening](../../../../GeneralTopology/ThickeningNamespacedPublic.lean/declarations/hasbasis-nhdsset-cthickening.md) | 457 | `result-track:37d26679a49b7b5cbd5e8105d778cdbeab7851a97f6597390edccc8f099ce56c` |
| 71 | `theorem` | [cthickening_eq_iInter_cthickening'](../../../../GeneralTopology/ThickeningNamespacedPublic.lean/declarations/cthickening-eq-iinter-cthickening-source-edition-2.md) | 462 | `result-track:57e4671e1b87f98c81dc3a4452a4345ffab04e7a9275a8c285d0e50ba57653e9` |
| 72 | `theorem` | [cthickening_eq_iInter_cthickening](../../../../GeneralTopology/ThickeningNamespacedPublic.lean/declarations/cthickening-eq-iinter-cthickening.md) | 477 | `result-track:198958768d5e6fe9151773f9996908dbdfd679d416ab8e70e59268978cd58e54` |
| 73 | `theorem` | [cthickening_eq_iInter_thickening'](../../../../GeneralTopology/ThickeningNamespacedPublic.lean/declarations/cthickening-eq-iinter-thickening-source-edition-2.md) | 483 | `result-track:331b67a7bf0632dd63ddab779aee624d2d992073fc96ee9df475909d92b72b9e` |
| 74 | `theorem` | [cthickening_eq_iInter_thickening](../../../../GeneralTopology/ThickeningNamespacedPublic.lean/declarations/cthickening-eq-iinter-thickening-source-edition-3.md) | 493 | `result-track:704869d31afc5830170fac9d4c1a63767f2938513ffd1d0a2deed7b9e9254f66` |
| 75 | `theorem` | [cthickening_eq_iInter_thickening''](../../../../GeneralTopology/ThickeningNamespacedPublic.lean/declarations/cthickening-eq-iinter-thickening.md) | 499 | `result-track:1ea6ef52db76386efc742a4bab8d6a6f20cd284ee72999b9ac713d918597fd60` |
| 76 | `theorem` | [closure_eq_iInter_cthickening'](../../../../GeneralTopology/ThickeningNamespacedPublic.lean/declarations/closure-eq-iinter-cthickening-source-edition-2.md) | 506 | `result-track:2ad70ea3994710be6e02a58eed18c878900c552a6f765566329e26f499a1540c` |
| 77 | `theorem` | [closure_eq_iInter_cthickening](../../../../GeneralTopology/ThickeningNamespacedPublic.lean/declarations/closure-eq-iinter-cthickening.md) | 519 | `result-track:12b4ab20cb74b5ebf3faa57975cee640c1e34ad38252c33b17cddc584cb75a56` |
| 78 | `theorem` | [closure_eq_iInter_thickening'](../../../../GeneralTopology/ThickeningNamespacedPublic.lean/declarations/closure-eq-iinter-thickening.md) | 526 | `result-track:02b5786d624ceb03d03203f2acfcefacbd592f7d80b5e28bd9af3d914425aa0d` |
| 79 | `theorem` | [closure_eq_iInter_thickening](../../../../GeneralTopology/ThickeningNamespacedPublic.lean/declarations/closure-eq-iinter-thickening-source-edition-2.md) | 532 | `result-track:c09a8559d538211a093b032268ddf6c3d793928f85010d39eea51e02fc0b92e4` |
| 80 | `theorem` | [frontier_cthickening_subset](../../../../GeneralTopology/ThickeningNamespacedPublic.lean/declarations/frontier-cthickening-subset.md) | 539 | `result-track:6658779a5dc953ca8e232e1bdee6b7bc9bea52ee3082859a9c3d097882ad2912` |
| 81 | `theorem` | [closedBall_subset_cthickening](../../../../GeneralTopology/ThickeningNamespacedPublic.lean/declarations/closedball-subset-cthickening.md) | 545 | `result-track:5f0b2e6f16df3a58b206d7c28ea8e2518c1d5fb419a7650424c431ee0ed32274` |
| 82 | `theorem` | [cthickening_subset_iUnion_closedBall_of_lt](../../../../GeneralTopology/ThickeningNamespacedPublic.lean/declarations/cthickening-subset-iunion-closedball-of-lt.md) | 550 | `result-track:ffe973b19e09cd2f8ee517e80be1456a3da82e11c5eb03eb642f812104f01543` |
| 83 | `theorem` | [Thickening Namespaced Public](../../../../GeneralTopology/ThickeningNamespacedPublic.lean/declarations/cthickening-eq-biunion-closedball-source-line-560-occurrence-2.md) | 560 | `result-track:5e711bbf81f3c514754d3043cef92b9da797f07dffd6a4489f71148648e31585` |
| 84 | `theorem` | [cthickening_eq_biUnion_closedBall](../../../../GeneralTopology/ThickeningNamespacedPublic.lean/declarations/cthickening-eq-biunion-closedball.md) | 574 | `result-track:5730bf7c4eaaae7dad25abf4666325f9fadc44da99d67f45d7ebda897cfc3c6c` |
| 85 | `theorem` | [Thickening Namespaced Public](../../../../GeneralTopology/ThickeningNamespacedPublic.lean/declarations/cthickening-eq-biunion-closedball-source-line-588-occurrence-2.md) | 588 | `result-track:b2acae6da5c8d3498dfc5f38b631d4eb26098d6ccabf3f3b2d951138f6d238d6` |
| 86 | `theorem` | [infEDist_le_infEDist_cthickening_add](../../../../GeneralTopology/ThickeningNamespacedPublic.lean/declarations/infedist-le-infedist-cthickening-add.md) | 594 | `result-track:c2feaba83d1643b60c470542c4882b207dc0640fa25d9b4480a964ebf9cf0816` |
| 87 | `theorem` | [infEDist_le_infEDist_thickening_add](../../../../GeneralTopology/ThickeningNamespacedPublic.lean/declarations/infedist-le-infedist-thickening-add.md) | 604 | `result-track:54eb77bb6e358d81e3319eadbaf794e8819399e78309f884dd84f0b0b4586743` |
| 88 | `theorem` | [thickening_thickening_subset](../../../../GeneralTopology/ThickeningNamespacedPublic.lean/declarations/thickening-thickening-subset.md) | 610 | `result-track:0f4be420d92d7ba8266fd1028348e5b86668f619e3db6e85964ee213409c273f` |
| 89 | `theorem` | [thickening_cthickening_subset](../../../../GeneralTopology/ThickeningNamespacedPublic.lean/declarations/thickening-cthickening-subset.md) | 623 | `result-track:112523e28793fc205537095736533eb6d34bc653219db30677c44d6c48381de6` |
| 90 | `theorem` | [cthickening_thickening_subset](../../../../GeneralTopology/ThickeningNamespacedPublic.lean/declarations/cthickening-thickening-subset.md) | 636 | `result-track:2456b8298f4ad5758f51e214f2db07599fad0dffc38d650d189ab8319cc4b470` |
| 91 | `theorem` | [cthickening_cthickening_subset](../../../../GeneralTopology/ThickeningNamespacedPublic.lean/declarations/cthickening-cthickening-subset.md) | 646 | `result-track:5eeec7272d357f2a17996ff21abc483878161f7e3c1bb2bfef7349293850064d` |
| 92 | `theorem` | [frontier_cthickening_disjoint](../../../../GeneralTopology/ThickeningNamespacedPublic.lean/declarations/frontier-cthickening-disjoint.md) | 653 | `result-track:e2a23d6f96f50050549163ba73befd1167d2b188d52f4203ef930aa387294cc0` |
| 93 | `theorem` | [thickening_ball](../../../../GeneralTopology/ThickeningNamespacedPublic.lean/declarations/thickening-ball.md) | 664 | `result-track:d07d176ad292307717d599728e723e34d092ef651f96eea0b593e67e3161d323` |
| 94 | `theorem` | [tendsto_nhdsSet](../../../../GeneralTopology/ThickeningNamespacedPublic.lean/declarations/tendsto-nhdsset.md) | 669 | `result-track:e6e4a52e1ddeb89b4f5a53f2d7d8f7ea5d072bf54a72b2f4e7e8118ee5808285` |
| 95 | `theorem` | [mem_nhdsSet_iff](../../../../GeneralTopology/ThickeningNamespacedPublic.lean/declarations/mem-nhdsset-iff.md) | 675 | `result-track:339c3c2095ee9c5868cc6c6cb44ba2a8a314e065fe9626831e4916d46bfaec14` |
| 96 | `lemma` | [IsClopen.of_thickening_subset_self](../../../../GeneralTopology/ThickeningNamespacedPublic.lean/declarations/isclopen-of-thickening-subset-self.md) | 689 | `result-track:fdd8bdaaf8a5b5028bd1904c10f036fb20842ac13aac75022d31dfa246d5fd39` |
| 97 | `lemma` | [IsClopen.of_cthickening_subset_self](../../../../GeneralTopology/ThickeningNamespacedPublic.lean/declarations/isclopen-of-cthickening-subset-self.md) | 696 | `result-track:dacb1dc89d0fcdf178a53ef60d36f93c56faefbaaff27625ea209cbb8b372002` |
| 98 | `theorem` | [IsCompact.exists_thickening_image_subset](../../../../GeneralTopology/ThickeningNamespacedPublic.lean/declarations/iscompact-exists-thickening-image-subset.md) | 703 | `result-track:3459a95f684b2b17e71dab39f211de1cbe893a7904cd3da2e24a117d27291ce0` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=8cc34ccdc3749247f28bbda1d7a225068405429f2bb883fbad791737d8b3d165 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/MetricTopology/Thickening/Variant2dff1763f1f7c9ed4134069f0a2e96428bcc66e5651f23cd542aea2a268e9931.lean","GRWTSK/_verification/specifications/Topology/MetricTopology/Thickening/Variant2dff1763f1f7c9ed4134069f0a2e96428bcc66e5651f23cd542aea2a268e9931.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
