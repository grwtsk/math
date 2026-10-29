# Verification target: Partition Basic Namespaced Not Mem Bot

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e1be81b81ab6c388fd903f9c02d7a4554228138b",
  "lexical_observation_count": 112,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Basic/Variant256119ecb480b87c3658c443f4fb16f2f7fb3eb63f693f5666e22775006129db.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../FunctionalAnalysis/PartitionBasicNamespacedNotMemBot.lean/index.md) · [Full source](../../../../FunctionalAnalysis/PartitionBasicNamespacedNotMemBot.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e1be81b81ab6c388fd903f9c02d7a4554228138b`.

Source path: `GRWTSK/Topology/GeneralTopology/Basic/Variant256119ecb480b87c3658c443f4fb16f2f7fb3eb63f693f5666e22775006129db.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Basic/Variant256119ecb480b87c3658c443f4fb16f2f7fb3eb63f693f5666e22775006129db.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.BigOperators.Option` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.BoxIntegral.Box.Basic` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Set.Pairwise.Lattice` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [Prepartition](../../../../FunctionalAnalysis/PartitionBasicNamespacedNotMemBot.lean/declarations/prepartition.md) | 58 | `declaration-track:38a5c075b844888a326b4b87724556901fcec58d2d061dcd736e376f46e31c55` |
| 2 | `instance` | [(anonymous)](../../../../FunctionalAnalysis/PartitionBasicNamespacedNotMemBot.lean/declarations/instance.md) | 70 | `declaration-track:2dd8c841bc02d6e7fd438a10a7e6ffdbc92ce79e3d1fd11088e441cf65cdf66d` |
| 3 | `theorem` | [mem_boxes](../../../../FunctionalAnalysis/PartitionBasicNamespacedNotMemBot.lean/declarations/mem-boxes.md) | 74 | `result-track:25c5eb14ae1833441e3cdec53282dcc07719fb2fae355bd332de3b91e3709c67` |
| 4 | `theorem` | [mem_mk](../../../../FunctionalAnalysis/PartitionBasicNamespacedNotMemBot.lean/declarations/mem-mk.md) | 77 | `result-track:9760cade57c007b136fecc7c9df010603dd0df11f050e182a362ccf5b54d363d` |
| 5 | `theorem` | [disjoint_coe_of_mem](../../../../FunctionalAnalysis/PartitionBasicNamespacedNotMemBot.lean/declarations/disjoint-coe-of-mem.md) | 79 | `result-track:cdc20f0be374694a19c467b95b1172ddf9461153565c160fac3af824bcac5c92` |
| 6 | `theorem` | [eq_of_mem_of_mem](../../../../FunctionalAnalysis/PartitionBasicNamespacedNotMemBot.lean/declarations/eq-of-mem-of-mem.md) | 83 | `result-track:98bd79d94dfbb7db3bb9fe79eb49280f1cef56bccf5f5c22a092baa8e80c350f` |
| 7 | `theorem` | [eq_of_le_of_le](../../../../FunctionalAnalysis/PartitionBasicNamespacedNotMemBot.lean/declarations/eq-of-le-of-le.md) | 86 | `result-track:2f5e1de3277853f83419138800abd8d3e1f2234d1c94a6d104283e870b138054` |
| 8 | `theorem` | [eq_of_le](../../../../FunctionalAnalysis/PartitionBasicNamespacedNotMemBot.lean/declarations/eq-of-le.md) | 89 | `result-track:738c08370a17ec761082ba22d51f63666b6874602bf4d03c70bff4dc4d273020` |
| 9 | `theorem` | [le_of_mem](../../../../FunctionalAnalysis/PartitionBasicNamespacedNotMemBot.lean/declarations/le-of-mem.md) | 92 | `result-track:9c7094445a4694759dbb7c53f16599b9d3410d681646b12e0356691ef74392ae` |
| 10 | `theorem` | [lower_le_lower](../../../../FunctionalAnalysis/PartitionBasicNamespacedNotMemBot.lean/declarations/lower-le-lower.md) | 95 | `result-track:4df5f26b430592d86eb9c29ecd80509af3b2896722439e50bb972354d517a4f4` |
| 11 | `theorem` | [upper_le_upper](../../../../FunctionalAnalysis/PartitionBasicNamespacedNotMemBot.lean/declarations/upper-le-upper.md) | 98 | `result-track:7e94ff620be3ba129124ff78b3e268bb88439fff18aacadde4c212d00d897ed9` |
| 12 | `theorem` | [injective_boxes](../../../../FunctionalAnalysis/PartitionBasicNamespacedNotMemBot.lean/declarations/injective-boxes.md) | 101 | `result-track:deb2da15ccac36dc7b9911d2852d26f213cc1edd186915489fa607ec66c4e361` |
| 13 | `theorem` | [ext](../../../../FunctionalAnalysis/PartitionBasicNamespacedNotMemBot.lean/declarations/ext.md) | 106 | `result-track:7ba2f9f1e8892be6db126bd3d571067c1df2c26a959887cad4e2da4e308011e8` |
| 14 | `def` | [single](../../../../FunctionalAnalysis/PartitionBasicNamespacedNotMemBot.lean/declarations/single.md) | 111 | `declaration-track:d170868ec1496ceaa8ff5990785356030874f893a261520a28413b1d7b671036` |
| 15 | `theorem` | [mem_single](../../../../FunctionalAnalysis/PartitionBasicNamespacedNotMemBot.lean/declarations/mem-single.md) | 115 | `result-track:e20fdcefc0a56c213c70bc2923e8181fc9f6b5566a0c18e0ddebd87ed16603e5` |
| 16 | `instance` | [(anonymous)](../../../../FunctionalAnalysis/PartitionBasicNamespacedNotMemBot.lean/declarations/instance-source-edition-4.md) | 119 | `declaration-track:9f24fcf63e122b1ecce49bec2fa248831d945e8a8f1a573bc5a2c35d98bff374` |
| 17 | `instance` | [partialOrder](../../../../FunctionalAnalysis/PartitionBasicNamespacedNotMemBot.lean/declarations/partialorder.md) | 122 | `declaration-track:cfe52390b8e0f6946c340fb10cb71250cedb91b2b741dd414a6f3ff5a3515d48` |
| 18 | `instance` | [(anonymous)](../../../../FunctionalAnalysis/PartitionBasicNamespacedNotMemBot.lean/declarations/instance-source-edition-6.md) | 138 | `declaration-track:b1f569b163792af16c071e0fe0cca1f3dc82e0591d71518bff1a07ba21a3bca0` |
| 19 | `instance` | [(anonymous)](../../../../FunctionalAnalysis/PartitionBasicNamespacedNotMemBot.lean/declarations/instance-source-edition-3.md) | 142 | `declaration-track:8b95e67efd09db0c3f77b80357d3481a48ec2db72ac0d4242275278552d29131` |
| 20 | `instance` | [(anonymous)](../../../../FunctionalAnalysis/PartitionBasicNamespacedNotMemBot.lean/declarations/instance-source-edition-5.md) | 148 | `declaration-track:a200af8c40999b44264df8079672e997c1ea8611325b98b767c73bd5fb91064e` |
| 21 | `theorem` | [le_def](../../../../FunctionalAnalysis/PartitionBasicNamespacedNotMemBot.lean/declarations/le-def.md) | 150 | `result-track:6c9247af9921828f3ed41bed2ce6d110baaef8137490229db718f9d4dbf369b0` |
| 22 | `theorem` | [mem_top](../../../../FunctionalAnalysis/PartitionBasicNamespacedNotMemBot.lean/declarations/mem-top.md) | 153 | `result-track:91e8cba64fa7c5569556f549d0735fc516a59794d472f1c373045ca5126ce6b1` |
| 23 | `theorem` | [top_boxes](../../../../FunctionalAnalysis/PartitionBasicNamespacedNotMemBot.lean/declarations/top-boxes.md) | 157 | `result-track:5391313d09e81c516c0d2710d76166cd48553a34cc195ab379a1f92a66de9ed9` |
| 24 | `theorem` | [notMem_bot](../../../../FunctionalAnalysis/PartitionBasicNamespacedNotMemBot.lean/declarations/notmem-bot.md) | 160 | `result-track:b3becd7b9a504849b3cb242282ad1b46e4602b9282675d0f2702a9a0ab099a42` |
| 25 | `theorem` | [bot_boxes](../../../../FunctionalAnalysis/PartitionBasicNamespacedNotMemBot.lean/declarations/bot-boxes.md) | 166 | `result-track:2089a439b7eb504a5da056cdeb64f5261a7de88ca15f4b9bacd042abba717bcb` |
| 26 | `theorem` | [injOn_setOf_mem_Icc_setOf_lower_eq](../../../../FunctionalAnalysis/PartitionBasicNamespacedNotMemBot.lean/declarations/injon-setof-mem-icc-setof-lower-eq.md) | 170 | `result-track:0cad7ce66a386dc93d634176d2ad1278c2cde3512ee4383b966d328975f8b3ea` |
| 27 | `theorem` | [card_filter_mem_Icc_le](../../../../FunctionalAnalysis/PartitionBasicNamespacedNotMemBot.lean/declarations/card-filter-mem-icc-le.md) | 190 | `result-track:4948a09f6cb4e257503505663ad2ea87061cb87d46cbe517a50f90b5ceff37b9` |
| 28 | `def` | [iUnion](../../../../FunctionalAnalysis/PartitionBasicNamespacedNotMemBot.lean/declarations/iunion.md) | 199 | `declaration-track:7fddf0d3d62d84cf72490e75cee16f502665a6532800f281dcc933dc1dff3c28` |
| 29 | `theorem` | [iUnion_def](../../../../FunctionalAnalysis/PartitionBasicNamespacedNotMemBot.lean/declarations/iunion-def-source-edition-2.md) | 202 | `result-track:8f4771db849179268cd81861d36b1693f4677bf0a96466d67a68db6f683d6595` |
| 30 | `theorem` | [iUnion_def'](../../../../FunctionalAnalysis/PartitionBasicNamespacedNotMemBot.lean/declarations/iunion-def.md) | 204 | `result-track:55b74fdff5c6f38bca8420a0e633bc29e46ba673f6209099fe0d31940e79cc9f` |
| 31 | `theorem` | [mem_iUnion](../../../../FunctionalAnalysis/PartitionBasicNamespacedNotMemBot.lean/declarations/mem-iunion.md) | 208 | `result-track:87ea6e18a0e86599fb5b3b39e82b4a4b79a3afb999b0cdaf28b830b7f375010c` |
| 32 | `theorem` | [iUnion_single](../../../../FunctionalAnalysis/PartitionBasicNamespacedNotMemBot.lean/declarations/iunion-single.md) | 213 | `result-track:46be85e04623d78b154f3011b4aebe22c9d0a2ed131cc824fb62dea1196f6f9c` |
| 33 | `theorem` | [iUnion_top](../../../../FunctionalAnalysis/PartitionBasicNamespacedNotMemBot.lean/declarations/iunion-top.md) | 216 | `result-track:28607ff397db0076525433780472cb49670301bc747c8805db523f1f7465bf2e` |
| 34 | `theorem` | [iUnion_eq_empty](../../../../FunctionalAnalysis/PartitionBasicNamespacedNotMemBot.lean/declarations/iunion-eq-empty.md) | 219 | `result-track:59ce67de25b16061e429e71f6eeae97134f26439fa4f256a915f2c3049c224c9` |
| 35 | `theorem` | [iUnion_bot](../../../../FunctionalAnalysis/PartitionBasicNamespacedNotMemBot.lean/declarations/iunion-bot.md) | 223 | `result-track:7c5d540a2b485529756413a0952fa8caa2fbdfe9366296124dbf810f754b9daa` |
| 36 | `theorem` | [subset_iUnion](../../../../FunctionalAnalysis/PartitionBasicNamespacedNotMemBot.lean/declarations/subset-iunion.md) | 226 | `result-track:f9a0df4f301d2562ff6a04e70938d96bfa3fa2582c6b38896e99bb503b3d1f59` |
| 37 | `theorem` | [iUnion_subset](../../../../FunctionalAnalysis/PartitionBasicNamespacedNotMemBot.lean/declarations/iunion-subset.md) | 229 | `result-track:4a469e6bcf18b97404001ac855e017606c37ed5188081973af89edb504cb7038` |
| 38 | `theorem` | [iUnion_mono](../../../../FunctionalAnalysis/PartitionBasicNamespacedNotMemBot.lean/declarations/iunion-mono.md) | 233 | `result-track:e9f92c639e0d14e7900c8a9916ea2298eecc13b459e486647e0f54ed15bc7063` |
| 39 | `theorem` | [disjoint_boxes_of_disjoint_iUnion](../../../../FunctionalAnalysis/PartitionBasicNamespacedNotMemBot.lean/declarations/disjoint-boxes-of-disjoint-iunion.md) | 238 | `result-track:e32cfaca9a1557ed9719a39f0285229a1041bc0ef31b2f521bad125f68dfa223` |
| 40 | `theorem` | [le_iff_nonempty_imp_le_and_iUnion_subset](../../../../FunctionalAnalysis/PartitionBasicNamespacedNotMemBot.lean/declarations/le-iff-nonempty-imp-le-and-iunion-subset.md) | 243 | `result-track:9759543a737cafce937d1135b60ce458de40d9c0b66b8e0ef60863df03be4688` |
| 41 | `theorem` | [eq_of_boxes_subset_iUnion_superset](../../../../FunctionalAnalysis/PartitionBasicNamespacedNotMemBot.lean/declarations/eq-of-boxes-subset-iunion-superset.md) | 256 | `result-track:1024e5b6c50d5581ad90146a1e42512dd9d0ee22eda50e77a79cad9ad3f4d094` |
| 42 | `def` | [biUnion](../../../../FunctionalAnalysis/PartitionBasicNamespacedNotMemBot.lean/declarations/biunion.md) | 270 | `declaration-track:35f0d2e8cb3dfc3caded6815275465405fe48cbfc5c57c68530b0d1033bb0bd4` |
| 43 | `theorem` | [mem_biUnion](../../../../FunctionalAnalysis/PartitionBasicNamespacedNotMemBot.lean/declarations/mem-biunion.md) | 288 | `result-track:fb7c67ccedd2a80c8439af7981378d78bf3229525a80bb23d0e2d0193f2b4487` |
| 44 | `theorem` | [biUnion_le](../../../../FunctionalAnalysis/PartitionBasicNamespacedNotMemBot.lean/declarations/biunion-le.md) | 290 | `result-track:b74a7db346ec1c7e103d993a6a2fc65645e33e02111214cb86c619db1c9267df` |
| 45 | `theorem` | [biUnion_top](../../../../FunctionalAnalysis/PartitionBasicNamespacedNotMemBot.lean/declarations/biunion-top.md) | 295 | `result-track:31c40648ff4a3f99528ef12bc80b4f51713694bfd774bb8c7ead694c40849f60` |
| 46 | `theorem` | [biUnion_congr](../../../../FunctionalAnalysis/PartitionBasicNamespacedNotMemBot.lean/declarations/biunion-congr.md) | 300 | `result-track:828153389d07742df609237bbafc7b184a17e7d619f80563110357c02f028269` |
| 47 | `theorem` | [biUnion_congr_of_le](../../../../FunctionalAnalysis/PartitionBasicNamespacedNotMemBot.lean/declarations/biunion-congr-of-le.md) | 307 | `result-track:9c4a1b56a8a8e800c8957594c189295f57fd7f012acce55d117a002bb8cbd03a` |
| 48 | `theorem` | [iUnion_biUnion](../../../../FunctionalAnalysis/PartitionBasicNamespacedNotMemBot.lean/declarations/iunion-biunion.md) | 312 | `result-track:0c04af67a4440eae902be2062324f2dc91bac417594475286f248bfd111449c8` |
| 49 | `theorem` | [sum_biUnion_boxes](../../../../FunctionalAnalysis/PartitionBasicNamespacedNotMemBot.lean/declarations/sum-biunion-boxes.md) | 317 | `result-track:fb889de424ae8ac4ca11f93b38d44d312ffc0bc3a7941f759d40a7077be4ce77` |
| 50 | `def` | [biUnionIndex](../../../../FunctionalAnalysis/PartitionBasicNamespacedNotMemBot.lean/declarations/biunionindex.md) | 327 | `declaration-track:454ace550630cafe1bb0e616db29cd820f0162e37c8b0788e22cadd9539a83a6` |
| 51 | `theorem` | [biUnionIndex_mem](../../../../FunctionalAnalysis/PartitionBasicNamespacedNotMemBot.lean/declarations/biunionindex-mem.md) | 330 | `result-track:fd7b4b3a5cafabc0742937f52791da757e1f4ab23a90128ee52b739c34bd1a0b` |
| 52 | `theorem` | [biUnionIndex_le](../../../../FunctionalAnalysis/PartitionBasicNamespacedNotMemBot.lean/declarations/biunionindex-le.md) | 334 | `result-track:4817f0fda3fe427926aa98c784bd39385a4afdff2d9bd56cd43078707006652e` |
| 53 | `theorem` | [mem_biUnionIndex](../../../../FunctionalAnalysis/PartitionBasicNamespacedNotMemBot.lean/declarations/mem-biunionindex.md) | 339 | `result-track:61690cea9caa8f91f8209727b5b100d43d3d45f42f08e4949d9e72a3e4f5c69a` |
| 54 | `theorem` | [le_biUnionIndex](../../../../FunctionalAnalysis/PartitionBasicNamespacedNotMemBot.lean/declarations/le-biunionindex.md) | 342 | `result-track:4c910ff217362caa139944804ff3808518d57f66f6a863b0c23290864180d55e` |
| 55 | `theorem` | [biUnionIndex_of_mem](../../../../FunctionalAnalysis/PartitionBasicNamespacedNotMemBot.lean/declarations/biunionindex-of-mem.md) | 346 | `result-track:7d3f485e227c94e934bc6ad75c79dc737226229e6fb54f003234bb7b3625d0ef` |
| 56 | `theorem` | [biUnion_assoc](../../../../FunctionalAnalysis/PartitionBasicNamespacedNotMemBot.lean/declarations/biunion-assoc.md) | 350 | `result-track:81b0cf4a18720e49c773ea731dcc92adede55aa2348610bcd5b46cd1539716f9` |
| 57 | `def` | [ofWithBot](../../../../FunctionalAnalysis/PartitionBasicNamespacedNotMemBot.lean/declarations/ofwithbot.md) | 365 | `declaration-track:37850269ee650a482b3358a83883ee31ee4aeb52fdc089f3fee2d54a3c6cceec` |
| 58 | `theorem` | [mem_ofWithBot](../../../../FunctionalAnalysis/PartitionBasicNamespacedNotMemBot.lean/declarations/mem-ofwithbot.md) | 378 | `result-track:ba912d94a87c053b8b4bff9831e1201d8718627141fe1bd5da0101e8237eb77b` |
| 59 | `theorem` | [iUnion_ofWithBot](../../../../FunctionalAnalysis/PartitionBasicNamespacedNotMemBot.lean/declarations/iunion-ofwithbot.md) | 383 | `result-track:29ac265ea7014f7e08c72b11134394f558b946cdaf36bfd5c79fa9263809254c` |
| 60 | `theorem` | [ofWithBot_le](../../../../FunctionalAnalysis/PartitionBasicNamespacedNotMemBot.lean/declarations/ofwithbot-le.md) | 392 | `result-track:db9a3a2678196581e86735da159d0645edf13c0347ef95c644e3b46a768ebbf0` |
| 61 | `theorem` | [le_ofWithBot](../../../../FunctionalAnalysis/PartitionBasicNamespacedNotMemBot.lean/declarations/le-ofwithbot.md) | 401 | `result-track:1d7209b84505fadc130479a0b1396463583fc345836582099f08bd5c6a728f59` |
| 62 | `theorem` | [ofWithBot_mono](../../../../FunctionalAnalysis/PartitionBasicNamespacedNotMemBot.lean/declarations/ofwithbot-mono.md) | 410 | `result-track:43d65c490a230536e326d282698ba1f305cc70b3029f2d2f0d1fbd8ec01badd8` |
| 63 | `theorem` | [sum_ofWithBot](../../../../FunctionalAnalysis/PartitionBasicNamespacedNotMemBot.lean/declarations/sum-ofwithbot.md) | 420 | `result-track:5d8993574170d01ba19372e6785e3aaa8009d4582956c7c64a18c7b596d2f09e` |
| 64 | `def` | [restrict](../../../../FunctionalAnalysis/PartitionBasicNamespacedNotMemBot.lean/declarations/restrict-source-edition-2.md) | 429 | `declaration-track:9db0a5b1d71fe6ce64beee1c3ac46a5a3f4aa83bbbf959efae61766a500ed689` |
| 65 | `theorem` | [mem_restrict](../../../../FunctionalAnalysis/PartitionBasicNamespacedNotMemBot.lean/declarations/mem-restrict-source-edition-2.md) | 443 | `result-track:edf4eaf58bd9fbcf30a318cde0539dd1f8ad0f5a5bf45a8b8500cbc32c396ae4` |
| 66 | `theorem` | [mem_restrict'](../../../../FunctionalAnalysis/PartitionBasicNamespacedNotMemBot.lean/declarations/mem-restrict.md) | 446 | `result-track:d8b39c58116dc17b7df528d17f4ec902d86dc32202000515bcb77417d3a72a49` |
| 67 | `theorem` | [restrict_mono](../../../../FunctionalAnalysis/PartitionBasicNamespacedNotMemBot.lean/declarations/restrict-mono.md) | 450 | `result-track:6936cad01a81bfeeb786d994f4d4758cd42ba72da18c06a72308f6d5010501dc` |
| 68 | `theorem` | [monotone_restrict](../../../../FunctionalAnalysis/PartitionBasicNamespacedNotMemBot.lean/declarations/monotone-restrict.md) | 457 | `result-track:3d8f2b3fc1ac5fb5e453cdaf53fff0813dcf52663abd9eb07ceefb64de2ad60c` |
| 69 | `theorem` | [restrict_boxes_of_le](../../../../FunctionalAnalysis/PartitionBasicNamespacedNotMemBot.lean/declarations/restrict-boxes-of-le.md) | 462 | `result-track:b7544e3e6a6271b04eefb1620e359bd3519008b56d1de0b64f7da9427397fc25` |
| 70 | `theorem` | [restrict_self](../../../../FunctionalAnalysis/PartitionBasicNamespacedNotMemBot.lean/declarations/restrict-self.md) | 472 | `result-track:96ad4a548fe15e7f53e35df799c2cafb5c1139ba72da6779f2eebba54c13606e` |
| 71 | `theorem` | [iUnion_restrict](../../../../FunctionalAnalysis/PartitionBasicNamespacedNotMemBot.lean/declarations/iunion-restrict.md) | 476 | `result-track:232127f99c1ac92a14e817485ec07e87699950bbf20f01f59d266b0f014f8832` |
| 72 | `theorem` | [restrict_biUnion](../../../../FunctionalAnalysis/PartitionBasicNamespacedNotMemBot.lean/declarations/restrict-biunion.md) | 480 | `result-track:6886c4893e127d051ddcbda969356cb330fcf94bfcc798f61ca304ae3957c9cd` |
| 73 | `theorem` | [biUnion_le_iff](../../../../FunctionalAnalysis/PartitionBasicNamespacedNotMemBot.lean/declarations/biunion-le-iff.md) | 490 | `result-track:882fafc563fae119eae733c9c21c38ad4fb18c3d3a9fbb2181ebef073d97b0e7` |
| 74 | `theorem` | [le_biUnion_iff](../../../../FunctionalAnalysis/PartitionBasicNamespacedNotMemBot.lean/declarations/le-biunion-iff.md) | 501 | `result-track:5ae61418103b2207049ec2bed5901edcca092ef35e50030c367c183f5a9f90aa` |
| 75 | `instance` | [(anonymous)](../../../../FunctionalAnalysis/PartitionBasicNamespacedNotMemBot.lean/declarations/instance-source-edition-2.md) | 513 | `declaration-track:4824e6c976a66b1d54fdaca76b1ec660b0e912a24ef69b44e8d763085db6f332` |
| 76 | `theorem` | [inf_def](../../../../FunctionalAnalysis/PartitionBasicNamespacedNotMemBot.lean/declarations/inf-def.md) | 519 | `result-track:5abf30c35e02cf738110b6da446e4e0e181df23d12aa5290e9900a4d06aa4e67` |
| 77 | `theorem` | [mem_inf](../../../../FunctionalAnalysis/PartitionBasicNamespacedNotMemBot.lean/declarations/mem-inf.md) | 522 | `result-track:2fac629c759fe2164e936d1f8843818c096cdedb91e1800a7a39537fa16f1683` |
| 78 | `theorem` | [iUnion_inf](../../../../FunctionalAnalysis/PartitionBasicNamespacedNotMemBot.lean/declarations/iunion-inf.md) | 527 | `result-track:c0ebfd107e04d1982372348febbaec442168df9ee2f9bd5f842525f3a0eac5d5` |
| 79 | `def` | [filter](../../../../FunctionalAnalysis/PartitionBasicNamespacedNotMemBot.lean/declarations/filter.md) | 533 | `declaration-track:5cc40d3da285cbe3f8c16565d13c2b4b42e98009d8199f865a4c14bdaaa6ca1f` |
| 80 | `theorem` | [mem_filter](../../../../FunctionalAnalysis/PartitionBasicNamespacedNotMemBot.lean/declarations/mem-filter.md) | 539 | `result-track:222d1b66ed394541429ae9f7e1f6adab54f3145b3d15a6cfce171e8bf75934ce` |
| 81 | `theorem` | [filter_le](../../../../FunctionalAnalysis/PartitionBasicNamespacedNotMemBot.lean/declarations/filter-le.md) | 543 | `result-track:b6d0d108d01d0e33e19164f1fef2cf8894989c209fcf552a1ae809227e109f3e` |
| 82 | `theorem` | [filter_of_true](../../../../FunctionalAnalysis/PartitionBasicNamespacedNotMemBot.lean/declarations/filter-of-true.md) | 547 | `result-track:423b791bbf88d2eb9fa26defa84f93752818ef0b40ebf87fbe5bd35387bb9d7d` |
| 83 | `theorem` | [filter_true](../../../../FunctionalAnalysis/PartitionBasicNamespacedNotMemBot.lean/declarations/filter-true.md) | 552 | `result-track:96e9b1ac5c0ab934b15ca9f5e7791ffb74c295346a4a37663d94c584303a3e01` |
| 84 | `theorem` | [iUnion_filter_not](../../../../FunctionalAnalysis/PartitionBasicNamespacedNotMemBot.lean/declarations/iunion-filter-not.md) | 556 | `result-track:3bac0ec118502f119bf0e2d7ac8182494c0e9b43ffb02d101af59f735bd6796b` |
| 85 | `theorem` | [sum_fiberwise](../../../../FunctionalAnalysis/PartitionBasicNamespacedNotMemBot.lean/declarations/sum-fiberwise.md) | 568 | `result-track:9b051f0fadcee69142bd6bd8b2c9095f25f6b1dcc20f6bfc63a85d3301b4994e` |
| 86 | `def` | [disjUnion](../../../../FunctionalAnalysis/PartitionBasicNamespacedNotMemBot.lean/declarations/disjunion.md) | 576 | `declaration-track:47ed6742bdea5bf36c8feb090e6ac52b0ef86012386c49bacaf946aa9884fcc5` |
| 87 | `theorem` | [mem_disjUnion](../../../../FunctionalAnalysis/PartitionBasicNamespacedNotMemBot.lean/declarations/mem-disjunion.md) | 585 | `result-track:94a9ac6335c582199310744d669980f38cd81aa71635bbab8ef9ec2aa5ddfe6a` |
| 88 | `theorem` | [iUnion_disjUnion](../../../../FunctionalAnalysis/PartitionBasicNamespacedNotMemBot.lean/declarations/iunion-disjunion.md) | 590 | `result-track:0574631d0a11edb7158d99b130bbd6c8ca8e0e2304bb146f473b68599b29523d` |
| 89 | `theorem` | [sum_disj_union_boxes](../../../../FunctionalAnalysis/PartitionBasicNamespacedNotMemBot.lean/declarations/sum-disj-union-boxes.md) | 596 | `result-track:4dc89b4a116e22b4c4c5435ad516a1e8df2059a1a4ba0b610b9d9c4630ae98d1` |
| 90 | `def` | [distortion](../../../../FunctionalAnalysis/PartitionBasicNamespacedNotMemBot.lean/declarations/distortion.md) | 607 | `declaration-track:c40dd23e12ba5d871382b8ceb6eb16883ea02d7d21f6ee0ef2a561ae506606bc` |
| 91 | `theorem` | [distortion_le_of_mem](../../../../FunctionalAnalysis/PartitionBasicNamespacedNotMemBot.lean/declarations/distortion-le-of-mem.md) | 610 | `result-track:46af41a36a61e8d186d508949c8413582bd58437b766ef4d8aead8769a89f72a` |
| 92 | `theorem` | [distortion_le_iff](../../../../FunctionalAnalysis/PartitionBasicNamespacedNotMemBot.lean/declarations/distortion-le-iff.md) | 613 | `result-track:6488828c41781ab105b10da816cd7140b244f526a0092de0d17151647c61004c` |
| 93 | `theorem` | [distortion_biUnion](../../../../FunctionalAnalysis/PartitionBasicNamespacedNotMemBot.lean/declarations/distortion-biunion.md) | 616 | `result-track:a05857f287ab5363bfedd2f85fd928d63940498281afa78ac952d511ce6d3f4a` |
| 94 | `theorem` | [distortion_disjUnion](../../../../FunctionalAnalysis/PartitionBasicNamespacedNotMemBot.lean/declarations/distortion-disjunion.md) | 621 | `result-track:53fa7b8603e61c287e363571a744f8c278a9e052a00577abf8835c9fe195a299` |
| 95 | `theorem` | [distortion_of_const](../../../../FunctionalAnalysis/PartitionBasicNamespacedNotMemBot.lean/declarations/distortion-of-const.md) | 625 | `result-track:6c835492d592aff5e58f6eb3a3f1b4396b2256ba5386c8b1619fbce9ddfbab1f` |
| 96 | `theorem` | [distortion_top](../../../../FunctionalAnalysis/PartitionBasicNamespacedNotMemBot.lean/declarations/distortion-top.md) | 630 | `result-track:fba7c242a1c35eaf5d36a9b07094f111bbb45eb731add60744760dc68d085714` |
| 97 | `theorem` | [distortion_bot](../../../../FunctionalAnalysis/PartitionBasicNamespacedNotMemBot.lean/declarations/distortion-bot.md) | 634 | `result-track:5e79bedc48ea102030e3cf7b2a4ae20be08311c35d2d8e2e7dc268a78bbc2ca2` |
| 98 | `def` | [IsPartition](../../../../FunctionalAnalysis/PartitionBasicNamespacedNotMemBot.lean/declarations/ispartition.md) | 640 | `declaration-track:3711d6b0fb6acc7ff549fbce3ef81e4652626111c13d7ac60ab6008e65b019ff` |
| 99 | `theorem` | [isPartition_iff_iUnion_eq](../../../../FunctionalAnalysis/PartitionBasicNamespacedNotMemBot.lean/declarations/ispartition-iff-iunion-eq.md) | 643 | `result-track:7b4238bc6e90e79db55ee7eef62ec8df0abba7c6078b54ab80a8c19e367b03a2` |
| 100 | `theorem` | [isPartition_single_iff](../../../../FunctionalAnalysis/PartitionBasicNamespacedNotMemBot.lean/declarations/ispartition-single-iff.md) | 648 | `result-track:4ab674a83b09d8696c4b73446fa14f91061dfbe46d0ede3e50180b08a99c1601` |
| 101 | `theorem` | [isPartitionTop](../../../../FunctionalAnalysis/PartitionBasicNamespacedNotMemBot.lean/declarations/ispartitiontop.md) | 651 | `result-track:501405c31da3754726236a71a2527806bcbdbfd7e3995349eca6eac5af80bab6` |
| 102 | `theorem` | [iUnion_eq](../../../../FunctionalAnalysis/PartitionBasicNamespacedNotMemBot.lean/declarations/iunion-eq.md) | 658 | `result-track:946d9cc6c97d00f11bbf4d454a1073bba16fc6c4c9595ec67c45def518c14bd3` |
| 103 | `theorem` | [iUnion_subset](../../../../FunctionalAnalysis/PartitionBasicNamespacedNotMemBot.lean/declarations/iunion-subset-source-edition-2.md) | 661 | `result-track:b5af6951c8ba1033adcfb730c78469f8c0f80170183a0da03d90539c0cf99f2a` |
| 104 | `theorem` | [existsUnique](../../../../FunctionalAnalysis/PartitionBasicNamespacedNotMemBot.lean/declarations/existsunique.md) | 664 | `result-track:6c46a295659f42c14da0ae15c0a66c0b46e03e9d4bf829edc892b610dccf86a2` |
| 105 | `theorem` | [nonempty_boxes](../../../../FunctionalAnalysis/PartitionBasicNamespacedNotMemBot.lean/declarations/nonempty-boxes.md) | 669 | `result-track:30ce5fcdca85cf06152a00b227afe001d2c6fa01e1eb4fdcbc3f5b33c5af290d` |
| 106 | `theorem` | [eq_of_boxes_subset](../../../../FunctionalAnalysis/PartitionBasicNamespacedNotMemBot.lean/declarations/eq-of-boxes-subset.md) | 673 | `result-track:31624d959f70ef809ea8582019cac9e034a3f95bfa571d9d0d9609bc6de50f78` |
| 107 | `theorem` | [le_iff](../../../../FunctionalAnalysis/PartitionBasicNamespacedNotMemBot.lean/declarations/le-iff.md) | 676 | `result-track:57afe24078a8839c57510a95347e3b8440b6ee0c702eeab9a3b45f8c260a85a7` |
| 108 | `theorem` | [biUnion](../../../../FunctionalAnalysis/PartitionBasicNamespacedNotMemBot.lean/declarations/biunion-source-edition-2.md) | 680 | `result-track:dbcc7dbcfc5245c1ef53ab1cfe7924b3c91e4938d4373a21cf6a0e4323a6aec7` |
| 109 | `theorem` | [restrict](../../../../FunctionalAnalysis/PartitionBasicNamespacedNotMemBot.lean/declarations/restrict.md) | 686 | `result-track:593a83c1d0ab8fd6331758d04bc55f9b1fb05c104fb8eeceb8772116a342f05b` |
| 110 | `theorem` | [inf](../../../../FunctionalAnalysis/PartitionBasicNamespacedNotMemBot.lean/declarations/inf.md) | 689 | `result-track:ca9392cff6d516d3589068fa5a8dcb8d02be47cee0cad59c04633a3eb024bae1` |
| 111 | `theorem` | [iUnion_biUnion_partition](../../../../FunctionalAnalysis/PartitionBasicNamespacedNotMemBot.lean/declarations/iunion-biunion-partition.md) | 694 | `result-track:b57d9f6ad809899491f1d2537b8dd5a494f1c3d6ff36e31b10e9ea68c49384c5` |
| 112 | `theorem` | [isPartitionDisjUnionOfEqDiff](../../../../FunctionalAnalysis/PartitionBasicNamespacedNotMemBot.lean/declarations/ispartitiondisjunionofeqdiff.md) | 700 | `result-track:01c5e5f2b85d20fd6551feef889f2227b732a25e1328b7e8daa3146079184f2a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=5dc829f3996e0565b6a4d11313720ed6d6654183e8a29dc065d41b018f91b07c -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/Basic/Variant256119ecb480b87c3658c443f4fb16f2f7fb3eb63f693f5666e22775006129db.lean","GRWTSK/_verification/specifications/Topology/GeneralTopology/Basic/Variant256119ecb480b87c3658c443f4fb16f2f7fb3eb63f693f5666e22775006129db.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
