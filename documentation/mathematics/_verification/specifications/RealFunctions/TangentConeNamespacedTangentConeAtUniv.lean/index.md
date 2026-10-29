# Verification target: Tangent Cone Namespaced Tangent Cone At Univ

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "aeb23b20849a86a880f5b34cb2fc21550fcb7893",
  "lexical_observation_count": 61,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/FunctionalAnalysis/TangentCone/Variant4daa93e4e535aefb303c1002ceab4d9ccd4e0858a0026ea248ebf44e7d7cf73c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../RealFunctions/TangentConeNamespacedTangentConeAtUniv.lean/index.md) · [Full source](../../../../RealFunctions/TangentConeNamespacedTangentConeAtUniv.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `aeb23b20849a86a880f5b34cb2fc21550fcb7893`.

Source path: `GRWTSK/Analysis/FunctionalAnalysis/TangentCone/Variant4daa93e4e535aefb303c1002ceab4d9ccd4e0858a0026ea248ebf44e7d7cf73c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/FunctionalAnalysis/TangentCone/Variant4daa93e4e535aefb303c1002ceab4d9ccd4e0858a0026ea248ebf44e7d7cf73c.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Convex.Topology` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Normed.Module.Basic` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Seminorm` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecificLimits.Basic` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [tangentConeAt](../../../../RealFunctions/TangentConeNamespacedTangentConeAtUniv.lean/declarations/tangentconeat.md) | 54 | `declaration-track:eb03e3c6f0a40fc81812c0fd9c2141a6953a70422775f803b68399682d7bff8b` |
| 2 | `structure` | [UniqueDiffWithinAt](../../../../RealFunctions/TangentConeNamespacedTangentConeAtUniv.lean/declarations/uniquediffwithinat.md) | 67 | `declaration-track:8a9649bcf677b5b749141c47b1775faf614563e60c30336f96feae7bca1a66fb` |
| 3 | `def` | [UniqueDiffOn](../../../../RealFunctions/TangentConeNamespacedTangentConeAtUniv.lean/declarations/uniquediffon.md) | 78 | `declaration-track:fdef39a5013ca85ec604d0378f7af7bda5f46562a5b2a49cb361afd51513b2fa` |
| 4 | `theorem` | [mem_tangentConeAt_of_pow_smul](../../../../RealFunctions/TangentConeNamespacedTangentConeAtUniv.lean/declarations/mem-tangentconeat-of-pow-smul.md) | 95 | `result-track:c84cee8769fec85ab45a68b0d05b410845cb8247ff5a5c0489037323a6faf108` |
| 5 | `theorem` | [tangentConeAt_univ](../../../../RealFunctions/TangentConeNamespacedTangentConeAtUniv.lean/declarations/tangentconeat-univ.md) | 103 | `result-track:c77d444b0e96f974d9aa59c2bacf7b959e9406ec34f414591fcce420f40d43f8` |
| 6 | `theorem` | [tangentConeAt_mono](../../../../RealFunctions/TangentConeNamespacedTangentConeAtUniv.lean/declarations/tangentconeat-mono.md) | 111 | `result-track:ecd0ac4c7fd7b9919b5de27f2dc621b1214e323a6360eb6b0b41d22987c1e411` |
| 7 | `theorem` | [tangentConeAt_closure](../../../../RealFunctions/TangentConeNamespacedTangentConeAtUniv.lean/declarations/tangentconeat-closure.md) | 126 | `result-track:bef269a259b874b8e74343834403719a4cb69204c0f265793bb5e73b4e87c27b` |
| 8 | `theorem` | [tangentConeAt.lim_zero](../../../../RealFunctions/TangentConeNamespacedTangentConeAtUniv.lean/declarations/tangentconeat-lim-zero.md) | 144 | `result-track:a9b2a6ae3d88910b5280f346e39613e210b015d409f90296008de16854b83cdf` |
| 9 | `theorem` | [tangentConeAt_mono_nhds](../../../../RealFunctions/TangentConeNamespacedTangentConeAtUniv.lean/declarations/tangentconeat-mono-nhds.md) | 159 | `result-track:cd8fee7505db0544cda50f2d405de592605d60310a992c99fe2a3603ee115ec8` |
| 10 | `theorem` | [tangentConeAt_congr](../../../../RealFunctions/TangentConeNamespacedTangentConeAtUniv.lean/declarations/tangentconeat-congr.md) | 171 | `result-track:4a5edae99eeb8cfc41d3bffa0bd00b08eb40389ae69987fba1b4c415e9fdb3f1` |
| 11 | `theorem` | [tangentConeAt_inter_nhds](../../../../RealFunctions/TangentConeNamespacedTangentConeAtUniv.lean/declarations/tangentconeat-inter-nhds.md) | 177 | `result-track:b8a22a9aa7033249cb5acfbeaee4060db10d63c30db63bed6ac30dd6f804c251` |
| 12 | `theorem` | [subset_tangentConeAt_prod_left](../../../../RealFunctions/TangentConeNamespacedTangentConeAtUniv.lean/declarations/subset-tangentconeat-prod-left.md) | 183 | `result-track:cf27f188623bc39f0b395f602483f6f27b39665d4925e0285746b566af557dea` |
| 13 | `theorem` | [subset_tangentConeAt_prod_right](../../../../RealFunctions/TangentConeNamespacedTangentConeAtUniv.lean/declarations/subset-tangentconeat-prod-right.md) | 205 | `result-track:e011184feee92ecacaa1e9f7b19665d1d692ca18ed23b5f76f1da4b508b6b139` |
| 14 | `theorem` | [mapsTo_tangentConeAt_pi](../../../../RealFunctions/TangentConeNamespacedTangentConeAtUniv.lean/declarations/mapsto-tangentconeat-pi.md) | 227 | `result-track:233541046e4b77ef1d2ccf7739a9ad39ee603e265e3863db9a49cd164101bb59` |
| 15 | `theorem` | [mem_tangentConeAt_of_openSegment_subset](../../../../RealFunctions/TangentConeNamespacedTangentConeAtUniv.lean/declarations/mem-tangentconeat-of-opensegment-subset.md) | 252 | `result-track:2c15ad163eabb70dbf71b6d5a9ac32a58a7d97e3ea90d419fdf297d1f3ed7ef4` |
| 16 | `theorem` | [mem_tangentConeAt_of_segment_subset](../../../../RealFunctions/TangentConeNamespacedTangentConeAtUniv.lean/declarations/mem-tangentconeat-of-segment-subset.md) | 267 | `result-track:11b141057d7ed406812e11111a9c1e1c699946734896380c88f08ce1528041c3` |
| 17 | `theorem` | [zero_mem_tangentCone](../../../../RealFunctions/TangentConeNamespacedTangentConeAtUniv.lean/declarations/zero-mem-tangentcone.md) | 275 | `result-track:9cfec5917c5ab8541263c2f69a3b3b3e0f7c0a453872c9057da053a8bb894774` |
| 18 | `theorem` | [tangentConeAt_subset_zero](../../../../RealFunctions/TangentConeNamespacedTangentConeAtUniv.lean/declarations/tangentconeat-subset-zero.md) | 308 | `result-track:b6353740e0e3c367c6e91fdfa39aa41d6b9b9feab68ed85f85c6e8b2f15a30bb` |
| 19 | `theorem` | [UniqueDiffWithinAt.accPt](../../../../RealFunctions/TangentConeNamespacedTangentConeAtUniv.lean/declarations/uniquediffwithinat-accpt.md) | 318 | `result-track:30f597798505e3ba5217d24062c2a71563ea73437cdd4977a5e3d100389a1bb8` |
| 20 | `theorem` | [tangentConeAt_nonempty_of_properSpace](../../../../RealFunctions/TangentConeNamespacedTangentConeAtUniv.lean/declarations/tangentconeat-nonempty-of-properspace.md) | 325 | `result-track:16f96fd840b81dea05398d343b90d072d037d3fb714aa059d211d01e2b3f6065` |
| 21 | `theorem` | [tangentConeAt_eq_univ](../../../../RealFunctions/TangentConeNamespacedTangentConeAtUniv.lean/declarations/tangentconeat-eq-univ.md) | 378 | `result-track:13310c25e95ad3a1e4a8d750e5047a1c2435cb0a67879391db6ede527af34390` |
| 22 | `theorem` | [UniqueDiffOn.uniqueDiffWithinAt](../../../../RealFunctions/TangentConeNamespacedTangentConeAtUniv.lean/declarations/uniquediffon-uniquediffwithinat.md) | 427 | `result-track:a5029f569eede68c8f265532e15b0e525e8d7ac098e34d88b587932c488249a0` |
| 23 | `theorem` | [uniqueDiffWithinAt_univ](../../../../RealFunctions/TangentConeNamespacedTangentConeAtUniv.lean/declarations/uniquediffwithinat-univ.md) | 431 | `result-track:9fb49e5eb976b096e45237b61513159c5d82c9a7d134ccf450f7c0242031664f` |
| 24 | `theorem` | [uniqueDiffOn_univ](../../../../RealFunctions/TangentConeNamespacedTangentConeAtUniv.lean/declarations/uniquediffon-univ.md) | 435 | `result-track:96f9822800b2d6a75b26b5efc39b39b70aea7a5bdbc86ed7395944185f8afa28` |
| 25 | `theorem` | [uniqueDiffOn_empty](../../../../RealFunctions/TangentConeNamespacedTangentConeAtUniv.lean/declarations/uniquediffon-empty.md) | 438 | `result-track:da5854cfa078a8d767f582f8ece564c3d7e0e7dc2fee5d638b35130ba052d660` |
| 26 | `theorem` | [UniqueDiffWithinAt.congr_pt](../../../../RealFunctions/TangentConeNamespacedTangentConeAtUniv.lean/declarations/uniquediffwithinat-congr-pt.md) | 441 | `result-track:3e8b5870145059f2d5dc89fd491dfe3c028c09bdbfd8d9d00dea2c5619a1738d` |
| 27 | `theorem` | [uniqueDiffWithinAt_closure](../../../../RealFunctions/TangentConeNamespacedTangentConeAtUniv.lean/declarations/uniquediffwithinat-closure.md) | 452 | `result-track:879466818e9da0744233812fa3c03b92543e48214bc61e3abeac8d6fa20557e6` |
| 28 | `theorem` | [UniqueDiffWithinAt.mono_nhds](../../../../RealFunctions/TangentConeNamespacedTangentConeAtUniv.lean/declarations/uniquediffwithinat-mono-nhds.md) | 459 | `result-track:24826c667a8f52bec65b66d8e976a85355651085bb41b8ee5b9a244df0e091ab` |
| 29 | `theorem` | [UniqueDiffWithinAt.mono](../../../../RealFunctions/TangentConeNamespacedTangentConeAtUniv.lean/declarations/uniquediffwithinat-mono.md) | 465 | `result-track:38df2e2c9558d1f0650d0f0ac79ed73b7c071eabe8b49553b47016cea3a9ba3f` |
| 30 | `theorem` | [UniqueDiffWithinAt.mono_closure](../../../../RealFunctions/TangentConeNamespacedTangentConeAtUniv.lean/declarations/uniquediffwithinat-mono-closure.md) | 469 | `result-track:e57d559cecc92f88ec0288663255494f1cbdab27f7f96c13a1537c16a6a9d68a` |
| 31 | `theorem` | [uniqueDiffWithinAt_congr](../../../../RealFunctions/TangentConeNamespacedTangentConeAtUniv.lean/declarations/uniquediffwithinat-congr.md) | 473 | `result-track:2c35beb586b092d067cc6b610372e749892b601a427ab9cb3d5ff3fffff6bb56` |
| 32 | `theorem` | [uniqueDiffWithinAt_inter](../../../../RealFunctions/TangentConeNamespacedTangentConeAtUniv.lean/declarations/uniquediffwithinat-inter-source-edition-4.md) | 477 | `result-track:8b04fad2fc6a6a6d8e8d3beac4fd7ffb0a22c00705d3a0b903a290483b271b22` |
| 33 | `theorem` | [UniqueDiffWithinAt.inter](../../../../RealFunctions/TangentConeNamespacedTangentConeAtUniv.lean/declarations/uniquediffwithinat-inter-source-edition-3.md) | 481 | `result-track:79a76c059f2ca3fb9f3e5e926bfca4170ace9215844599ef970c6a0db3a50216` |
| 34 | `theorem` | [uniqueDiffWithinAt_inter'](../../../../RealFunctions/TangentConeNamespacedTangentConeAtUniv.lean/declarations/uniquediffwithinat-inter-source-edition-2.md) | 485 | `result-track:5532666515657a86234cf09d178b6de8b9a75990cba4bb5b1218cdf153a1b51c` |
| 35 | `theorem` | [UniqueDiffWithinAt.inter'](../../../../RealFunctions/TangentConeNamespacedTangentConeAtUniv.lean/declarations/uniquediffwithinat-inter.md) | 489 | `result-track:53f82e5bc96142dbb532c9664a7686c389f257117344c95efeed7445f3a84369` |
| 36 | `theorem` | [uniqueDiffWithinAt_of_mem_nhds](../../../../RealFunctions/TangentConeNamespacedTangentConeAtUniv.lean/declarations/uniquediffwithinat-of-mem-nhds.md) | 493 | `result-track:b88f7bd0841c9ab4131f566ec971a952a3fae49ef9a1a33926904efe0b6de395` |
| 37 | `theorem` | [IsOpen.uniqueDiffWithinAt](../../../../RealFunctions/TangentConeNamespacedTangentConeAtUniv.lean/declarations/isopen-uniquediffwithinat.md) | 496 | `result-track:839bb450ad4e438836bceb6849bc4f2351991e5668455af790d4b5ce89d52d37` |
| 38 | `theorem` | [UniqueDiffOn.inter](../../../../RealFunctions/TangentConeNamespacedTangentConeAtUniv.lean/declarations/uniquediffon-inter.md) | 499 | `result-track:c98fb0c27f7b5dd2a6516be3d4f871ebe7935f28fad2d0576e648e7c100af7ed` |
| 39 | `theorem` | [IsOpen.uniqueDiffOn](../../../../RealFunctions/TangentConeNamespacedTangentConeAtUniv.lean/declarations/isopen-uniquediffon.md) | 502 | `result-track:e3fddef83d0f2fde97a4cbcc66bd0e19531d2ffe3f17b3502cf54fcaaac5fca8` |
| 40 | `theorem` | [UniqueDiffWithinAt.prod](../../../../RealFunctions/TangentConeNamespacedTangentConeAtUniv.lean/declarations/uniquediffwithinat-prod.md) | 507 | `result-track:7800712e19a3812a24a000c70554a632fe3e61f0fea94c4dd8e7173255386113` |
| 41 | `theorem` | [UniqueDiffWithinAt.univ_pi](../../../../RealFunctions/TangentConeNamespacedTangentConeAtUniv.lean/declarations/uniquediffwithinat-univ-pi.md) | 517 | `result-track:b4336e33e42fa9185dab67838d80b9f707275960553ff311dcde1539505ab2e1` |
| 42 | `theorem` | [UniqueDiffWithinAt.pi](../../../../RealFunctions/TangentConeNamespacedTangentConeAtUniv.lean/declarations/uniquediffwithinat-pi.md) | 528 | `result-track:e65f83b5d8d72be93db1c979915a54ce8eeceb86f72da1eb283c67d0bb5d6958` |
| 43 | `theorem` | [UniqueDiffOn.prod](../../../../RealFunctions/TangentConeNamespacedTangentConeAtUniv.lean/declarations/uniquediffon-prod.md) | 538 | `result-track:39b5a17d06029ddc6dd3368096f4c3dbd402f6145f2ec6e94fb7c9292c979208` |
| 44 | `theorem` | [UniqueDiffOn.pi](../../../../RealFunctions/TangentConeNamespacedTangentConeAtUniv.lean/declarations/uniquediffon-pi.md) | 544 | `result-track:c2d9579e924b61b04c6e5d96e770eb0db8f1719381746017af19c0adacbc79a6` |
| 45 | `theorem` | [UniqueDiffOn.univ_pi](../../../../RealFunctions/TangentConeNamespacedTangentConeAtUniv.lean/declarations/uniquediffon-univ-pi.md) | 551 | `result-track:9f78ae07009e4d751acef289f2a8364b657755f74836e62b74b56d5aaaa0b2b6` |
| 46 | `theorem` | [uniqueDiffWithinAt_convex](../../../../RealFunctions/TangentConeNamespacedTangentConeAtUniv.lean/declarations/uniquediffwithinat-convex.md) | 563 | `result-track:fd4a98b867338c0c68aed86f93f9d5014790f19a3d26d63aa077bdefbc4d482f` |
| 47 | `theorem` | [uniqueDiffOn_convex](../../../../RealFunctions/TangentConeNamespacedTangentConeAtUniv.lean/declarations/uniquediffon-convex.md) | 579 | `result-track:a1b926de6f0a8a0420c6706f94775e5c6a8726cf0955a1b2dee00888c1cac299` |
| 48 | `theorem` | [uniqueDiffOn_Ici](../../../../RealFunctions/TangentConeNamespacedTangentConeAtUniv.lean/declarations/uniquediffon-ici.md) | 587 | `result-track:9758bea90f94931cc1e89bd2c61eef26f8d95be2c39d12b0e1d183e52e21ed7f` |
| 49 | `theorem` | [uniqueDiffOn_Iic](../../../../RealFunctions/TangentConeNamespacedTangentConeAtUniv.lean/declarations/uniquediffon-iic.md) | 590 | `result-track:b2cdc9af07de43c7083553d47842624c62e8b62d43fff217a5f6b550756c38d2` |
| 50 | `theorem` | [uniqueDiffOn_Ioi](../../../../RealFunctions/TangentConeNamespacedTangentConeAtUniv.lean/declarations/uniquediffon-ioi.md) | 593 | `result-track:b631ce57b5692d66113151172e304eb24d5f4970d35873759a66549912a749a6` |
| 51 | `theorem` | [uniqueDiffOn_Iio](../../../../RealFunctions/TangentConeNamespacedTangentConeAtUniv.lean/declarations/uniquediffon-iio.md) | 596 | `result-track:59d554cf64790e1971c11dc708b5e3aa70559490900582b6ae93b84dc3ae7976` |
| 52 | `theorem` | [uniqueDiffOn_Icc](../../../../RealFunctions/TangentConeNamespacedTangentConeAtUniv.lean/declarations/uniquediffon-icc.md) | 599 | `result-track:fbcc4431f9fb72391fc5b890cb1793c231352260be9ed27247f4392caecd2195` |
| 53 | `theorem` | [uniqueDiffOn_Ico](../../../../RealFunctions/TangentConeNamespacedTangentConeAtUniv.lean/declarations/uniquediffon-ico.md) | 602 | `result-track:6d1c6c174903bf57e14cd4c2936391dff57b6f075d9fc3504a022b9012aef6c4` |
| 54 | `theorem` | [uniqueDiffOn_Ioc](../../../../RealFunctions/TangentConeNamespacedTangentConeAtUniv.lean/declarations/uniquediffon-ioc.md) | 607 | `result-track:a6c095411f761236b4bd15adc5b260b0042b19b88324484357713295901ff6e6` |
| 55 | `theorem` | [uniqueDiffOn_Ioo](../../../../RealFunctions/TangentConeNamespacedTangentConeAtUniv.lean/declarations/uniquediffon-ioo.md) | 612 | `result-track:6c73ede61858de15fc67949f1972699d3e078f9589bede476bf4b9be17bfcc47` |
| 56 | `theorem` | [uniqueDiffOn_Icc_zero_one](../../../../RealFunctions/TangentConeNamespacedTangentConeAtUniv.lean/declarations/uniquediffon-icc-zero-one.md) | 616 | `result-track:4cc1b934f231a215dc0611b9c9ff62eca37b78a514ffffcd44c1e83fa9d969d7` |
| 57 | `theorem` | [uniqueDiffWithinAt_Ioo](../../../../RealFunctions/TangentConeNamespacedTangentConeAtUniv.lean/declarations/uniquediffwithinat-ioo.md) | 619 | `result-track:f652256e6abae35d9d0702cefa6664a4727d7d94a7787393b083eb8be48dde96` |
| 58 | `theorem` | [uniqueDiffWithinAt_Ioi](../../../../RealFunctions/TangentConeNamespacedTangentConeAtUniv.lean/declarations/uniquediffwithinat-ioi.md) | 623 | `result-track:4958331908c52331c5f737cb329cef3b44f0cad374021b7716990b9e64996a38` |
| 59 | `theorem` | [uniqueDiffWithinAt_Iio](../../../../RealFunctions/TangentConeNamespacedTangentConeAtUniv.lean/declarations/uniquediffwithinat-iio.md) | 626 | `result-track:ceab390a71d7258d6353e1102091ca8bb8de9556c2fd679a510a274c7a74b6ad` |
| 60 | `theorem` | [uniqueDiffWithinAt_iff_accPt](../../../../RealFunctions/TangentConeNamespacedTangentConeAtUniv.lean/declarations/uniquediffwithinat-iff-accpt.md) | 631 | `result-track:6d6dcb14ef13b9457bc71a45d45b7039d31df3c2faf55c7dbe665fd3c2eff526` |
| 61 | `theorem` | [uniqueDiffWithinAt_or_nhdsWithin_eq_bot](../../../../RealFunctions/TangentConeNamespacedTangentConeAtUniv.lean/declarations/uniquediffwithinat-or-nhdswithin-eq-bot.md) | 640 | `result-track:fdd2d7de0b114b563384c2cc8e92fc5dc766c27d4f315add2f69291e024f0588` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=abd8aa7e18a1c974493d01a3d5b7d3f86aaa9e05de7f8adbc9d6851d687be025 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/FunctionalAnalysis/TangentCone/Variant4daa93e4e535aefb303c1002ceab4d9ccd4e0858a0026ea248ebf44e7d7cf73c.lean","GRWTSK/_verification/specifications/Analysis/FunctionalAnalysis/TangentCone/Variant4daa93e4e535aefb303c1002ceab4d9ccd4e0858a0026ea248ebf44e7d7cf73c.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
