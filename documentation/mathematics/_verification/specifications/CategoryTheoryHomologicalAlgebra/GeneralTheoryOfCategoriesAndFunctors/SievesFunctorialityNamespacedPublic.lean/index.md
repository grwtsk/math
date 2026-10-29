# Verification target: Sieves Functoriality Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d0043ffdf5aed71e31b184125dfffae38423ff78",
  "lexical_observation_count": 67,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Functoriality/Variantb4cd4ffb4dc8bf1c7f0a4b269f9ff14a2493c4c82368c5c430de5c2c33181314.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SievesFunctorialityNamespacedPublic.lean/index.md) · [Full source](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SievesFunctorialityNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d0043ffdf5aed71e31b184125dfffae38423ff78`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Functoriality/Variantb4cd4ffb4dc8bf1c7f0a4b269f9ff14a2493c4c82368c5c430de5c2c33181314.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Functoriality/Variantb4cd4ffb4dc8bf1c7f0a4b269f9ff14a2493c4c82368c5c430de5c2c33181314.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [functorPullback](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SievesFunctorialityNamespacedPublic.lean/declarations/functorpullback.md) | 52 | `declaration-track:3d20c2f85cbae923c2ad8ec8d0b4f2dc9741f6e97bb2621f4283fba97e37082a` |
| 2 | `theorem` | [functorPullback_mem](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SievesFunctorialityNamespacedPublic.lean/declarations/functorpullback-mem.md) | 55 | `result-track:132b55db27ca6d4dbc234af30be563455c8789bd6601a6a078af8bb13f9a6d6f` |
| 3 | `theorem` | [functorPullback_id](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SievesFunctorialityNamespacedPublic.lean/declarations/functorpullback-id-source-edition-2.md) | 60 | `result-track:c70814f6eb1e2d33fb6d5f825af6b0f85af6aafcd5dad9e3f5aee02f92d97095` |
| 4 | `def` | [functorPushforward](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SievesFunctorialityNamespacedPublic.lean/declarations/functorpushforward.md) | 70 | `declaration-track:46b8518760b4d218055b1716068c439ce0ce1b64768e3bac1b5bb5aae14c7f89` |
| 5 | `lemma` | [functorPushforward_monotone](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SievesFunctorialityNamespacedPublic.lean/declarations/functorpushforward-monotone-source-edition-2.md) | 74 | `result-track:e94dc92b28aad8275afe85a72c568310925b58a88b6a1fd39df2a2df5bc12866` |
| 6 | `structure` | [FunctorPushforwardStructure](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SievesFunctorialityNamespacedPublic.lean/declarations/functorpushforwardstructure.md) | 80 | `declaration-track:4c4d07a993ef162016dc2cc8a62fffd96eb8e1d7dc36643278431cb8a6e91ebb` |
| 7 | `def` | [getFunctorPushforwardStructure](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SievesFunctorialityNamespacedPublic.lean/declarations/getfunctorpushforwardstructure.md) | 93 | `declaration-track:ef386b61a5f86e019043ede2a1fcca35bcfa8c67a84587d8c4bf57436093fed6` |
| 8 | `theorem` | [functorPushforward_comp](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SievesFunctorialityNamespacedPublic.lean/declarations/functorpushforward-comp.md) | 99 | `result-track:3356a72a7e8d0fdda673f51c5ec33ce54de935f0a56c1256b05e098c64920070` |
| 9 | `theorem` | [image_mem_functorPushforward](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SievesFunctorialityNamespacedPublic.lean/declarations/image-mem-functorpushforward.md) | 109 | `result-track:56f17b66193806f3235596659a1187742a9bb1af8adc85b9e38d782f7e646061` |
| 10 | `inductive` | [map](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SievesFunctorialityNamespacedPublic.lean/declarations/map.md) | 115 | `declaration-track:516a7bb6591a20dc363bb37dca721d8c2e528f8fa83df7502ac879dc01d1ec93` |
| 11 | `lemma` | [map_map](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SievesFunctorialityNamespacedPublic.lean/declarations/map-map.md) | 123 | `result-track:7c7c7425d372e999235e1d06a2d4de52033de55bbdf66f333f7c0b294b7507f0` |
| 12 | `lemma` | [map_iff](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SievesFunctorialityNamespacedPublic.lean/declarations/map-iff.md) | 126 | `result-track:30e0c47b0030357f9cff6ab8c4569f882a3499fa7259d875a5c4ad3076bf43b3` |
| 13 | `lemma` | [map_ofArrows](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SievesFunctorialityNamespacedPublic.lean/declarations/map-ofarrows.md) | 134 | `result-track:7e45f66608830b95274844dc76381c4a68035dd406f04e62a1bf12e264caa86d` |
| 14 | `lemma` | [map_singleton](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SievesFunctorialityNamespacedPublic.lean/declarations/map-singleton.md) | 142 | `result-track:a5745f5c90e29ca2c854fe4c848c77d009e3aa4bfff726f1a8ea7f205ad98101` |
| 15 | `lemma` | [map_le_iff_le_functorPullback](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SievesFunctorialityNamespacedPublic.lean/declarations/map-le-iff-le-functorpullback.md) | 145 | `result-track:e1107913a986d185ddcb01770be9ed79ec377313f2cfad9592b4e6c08bb48c71` |
| 16 | `lemma` | [galoisConnection_map_functorPullback](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SievesFunctorialityNamespacedPublic.lean/declarations/galoisconnection-map-functorpullback.md) | 150 | `result-track:20041ea3928834e8ea5f2fe0e4e49513119c78a173b2caaf68d07345467e03d8` |
| 17 | `lemma` | [map_functorPullback](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SievesFunctorialityNamespacedPublic.lean/declarations/map-functorpullback.md) | 154 | `result-track:9c9ed6b49c4339a595b9807339e469bc5466076f543f31d8ad502bc90191ac74` |
| 18 | `lemma` | [le_functorPullback_map](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SievesFunctorialityNamespacedPublic.lean/declarations/le-functorpullback-map.md) | 157 | `result-track:d96027ca146e952dd9995c03737a6a757e387e4790557ee908c08bda3f2ea33c` |
| 19 | `lemma` | [map_functorPullback_map](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SievesFunctorialityNamespacedPublic.lean/declarations/map-functorpullback-map.md) | 161 | `result-track:d932a7d3a9bb88bd465b59b79e15104412530f07ea1278b893f6b88682cbd346` |
| 20 | `lemma` | [functorPullback_map_functorPullback](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SievesFunctorialityNamespacedPublic.lean/declarations/functorpullback-map-functorpullback.md) | 166 | `result-track:4d022b671113a5ae47723252f9bc51b2d58de1d57b015a10d41c8039e46bae71` |
| 21 | `lemma` | [map_id](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SievesFunctorialityNamespacedPublic.lean/declarations/map-id.md) | 171 | `result-track:ad9f0e289b364df8ceb1d9cb3b40b0de016984e364b2589af9249fa7af282a1e` |
| 22 | `lemma` | [map_monotone](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SievesFunctorialityNamespacedPublic.lean/declarations/map-monotone.md) | 175 | `result-track:ecc52d6e12cda5f5597ba841a7d64e6a6b55efb5208ceb426ae6377aa548ad47` |
| 23 | `lemma` | [functorPullback_monotone](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SievesFunctorialityNamespacedPublic.lean/declarations/functorpullback-monotone-source-edition-2.md) | 179 | `result-track:c2a71861b7ca6e172324a9757abc9c1ed76a6a274b7bdcad13658599c0b448fb` |
| 24 | `lemma` | [map_bot](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SievesFunctorialityNamespacedPublic.lean/declarations/map-bot.md) | 183 | `result-track:373803a01bd5fa67da82fafcde551e3fd6363afb7ee12a2e162c77b9feafadf2` |
| 25 | `theorem` | [arrows_generate_map_eq_functorPushforward](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SievesFunctorialityNamespacedPublic.lean/declarations/arrows-generate-map-eq-functorpushforward.md) | 198 | `result-track:4d3c426ddfb38d471cbd64c80354d8551384649819b3503743a812dfeebb646b` |
| 26 | `def` | [functorPullback](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SievesFunctorialityNamespacedPublic.lean/declarations/functorpullback-source-edition-2.md) | 208 | `declaration-track:e38cffef2ee70838d5a8aa8b14a1a922eb5cf3bfb45ccc4a9e76777a9f683893` |
| 27 | `theorem` | [functorPullback_arrows](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SievesFunctorialityNamespacedPublic.lean/declarations/functorpullback-arrows.md) | 217 | `result-track:2bd6349a0fe7ccc12ab0775df55d4c156255808e95665f18b1bd8c067305ed72` |
| 28 | `theorem` | [functorPullback_id](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SievesFunctorialityNamespacedPublic.lean/declarations/functorpullback-id.md) | 222 | `result-track:c40eee6971ee9708d0de168ebaa84ae3af4121765e5fe48779b88f7941c21dea` |
| 29 | `theorem` | [functorPullback_comp](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SievesFunctorialityNamespacedPublic.lean/declarations/functorpullback-comp.md) | 226 | `result-track:9d2ac4593ebc6336813253b4aed07285b72b40b8c651a270320d8b4017da2088` |
| 30 | `lemma` | [generate_functorPullback_le](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SievesFunctorialityNamespacedPublic.lean/declarations/generate-functorpullback-le.md) | 231 | `result-track:161902ec50b18bf8925543671c1230918bb6642b08f6418844596b8a454374c3` |
| 31 | `lemma` | [functorPullback_pullback](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SievesFunctorialityNamespacedPublic.lean/declarations/functorpullback-pullback.md) | 237 | `result-track:42d361f6a54db3a7208aeafd7048ee8b4780a09e5e34f95fb3da454afb458a9e` |
| 32 | `theorem` | [functorPushforward_extend_eq](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SievesFunctorialityNamespacedPublic.lean/declarations/functorpushforward-extend-eq.md) | 242 | `result-track:747a902300cb1c31746c30f2f90b2c038f0737691f582b9190f883ad7f13d5a9` |
| 33 | `def` | [functorPushforward](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SievesFunctorialityNamespacedPublic.lean/declarations/functorpushforward-source-edition-2.md) | 254 | `declaration-track:8a8b157fe71a6f0c05091c357b86ed510fb75f5851fd7ac8b8bcc64b3b364f30` |
| 34 | `theorem` | [generate_map_eq_functorPushforward](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SievesFunctorialityNamespacedPublic.lean/declarations/generate-map-eq-functorpushforward.md) | 261 | `result-track:5a1342629e4527153374672f52d83499f3bc267f2d8b3522e2f7ca6e9b244290` |
| 35 | `lemma` | [functorPushforward_ofArrows](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SievesFunctorialityNamespacedPublic.lean/declarations/functorpushforward-ofarrows.md) | 267 | `result-track:667bfa3f149d6cfd2ad169298ffa374e446e9b4023af0b4f72fd0286b900d757` |
| 36 | `theorem` | [functorPushforward_id](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SievesFunctorialityNamespacedPublic.lean/declarations/functorpushforward-id.md) | 272 | `result-track:e0738f2dea85c2d2f22d319e6ec7bc4a727228d3ce97214936d1f3b4a4d7b587` |
| 37 | `theorem` | [functorPushforward_comp](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SievesFunctorialityNamespacedPublic.lean/declarations/functorpushforward-comp-source-edition-2.md) | 281 | `result-track:57dd3f402b2f590ff52eb042098f2f57533c070f117400fac97cb8dfd54c3134` |
| 38 | `theorem` | [functor_galoisConnection](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SievesFunctorialityNamespacedPublic.lean/declarations/functor-galoisconnection.md) | 286 | `result-track:0178722c8e3a8472bbf7e7124e2f8498c3bf676178795af26dd3d87fa69e5c14` |
| 39 | `lemma` | [functorPushforward_le_iff_le_functorPullback](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SievesFunctorialityNamespacedPublic.lean/declarations/functorpushforward-le-iff-le-functorpullback.md) | 299 | `result-track:d9cec1126f02700a185a70b4a6396b5136b01b0605ef83d2859081c5bba5a47f` |
| 40 | `theorem` | [functorPullback_monotone](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SievesFunctorialityNamespacedPublic.lean/declarations/functorpullback-monotone.md) | 303 | `result-track:2d8709297fa9c9882bca5c324b768840bf89c23a786c3ec89844f707755d93af` |
| 41 | `theorem` | [functorPushforward_monotone](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SievesFunctorialityNamespacedPublic.lean/declarations/functorpushforward-monotone.md) | 307 | `result-track:2535259ef9ce25c6167915cb3d36d6212199afea8a8078df0cf804f999b6a3fd` |
| 42 | `theorem` | [le_functorPushforward_pullback](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SievesFunctorialityNamespacedPublic.lean/declarations/le-functorpushforward-pullback.md) | 311 | `result-track:4badff7aec0bae841cd5de654803c393225e2968e59e0a65d2cddae908d2eb89` |
| 43 | `theorem` | [functorPullback_pushforward_le](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SievesFunctorialityNamespacedPublic.lean/declarations/functorpullback-pushforward-le.md) | 315 | `result-track:d753a7373470c623d843181014e4c6b159cbd5bc0114bde8e0d052b5c4358de2` |
| 44 | `theorem` | [functorPushforward_union](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SievesFunctorialityNamespacedPublic.lean/declarations/functorpushforward-union.md) | 319 | `result-track:0eb93054a27055b71a67c60f516b39687813529ef135fa7d392d866bbb2a8e1f` |
| 45 | `theorem` | [functorPullback_union](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SievesFunctorialityNamespacedPublic.lean/declarations/functorpullback-union.md) | 323 | `result-track:fa7a9875dc21d2e540bac4c23f92ef4f7bc621fb1b134c3bce9f17d3c11e6239` |
| 46 | `theorem` | [functorPullback_inter](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SievesFunctorialityNamespacedPublic.lean/declarations/functorpullback-inter.md) | 327 | `result-track:0111f9bfbfc5c8dab935d6453554c61892d23ead95159ac5fad13b99d459f056` |
| 47 | `theorem` | [functorPushforward_bot](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SievesFunctorialityNamespacedPublic.lean/declarations/functorpushforward-bot.md) | 332 | `result-track:e096a961ea170ff21072b05add612505dd9b3efa609d267b2d270d8849c6246b` |
| 48 | `theorem` | [functorPushforward_top](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SievesFunctorialityNamespacedPublic.lean/declarations/functorpushforward-top.md) | 336 | `result-track:d056169ffd51ec761a2e0485969c09467132b1c6c63ab759d3b56c0270c8c224` |
| 49 | `theorem` | [functorPullback_bot](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SievesFunctorialityNamespacedPublic.lean/declarations/functorpullback-bot.md) | 342 | `result-track:a432582e480ddff04e64e51e484ba43aa45b90e6653b60bd45d1385ff3b18acb` |
| 50 | `theorem` | [functorPullback_top](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SievesFunctorialityNamespacedPublic.lean/declarations/functorpullback-top.md) | 346 | `result-track:070d9557bfefed5ed7241cee7cbc6a9e5cd134951a3094e765731ef559f76493` |
| 51 | `theorem` | [image_mem_functorPushforward](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SievesFunctorialityNamespacedPublic.lean/declarations/image-mem-functorpushforward-source-edition-2.md) | 349 | `result-track:ee8534c06d82f652814b2143e87f46cc3c84ee767835c14fd9719001e645490f` |
| 52 | `lemma` | [functorPushforward_pullback_le](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SievesFunctorialityNamespacedPublic.lean/declarations/functorpushforward-pullback-le.md) | 353 | `result-track:482b58f2dee5e7d909dac225d1f0af1a0c9b845894da2c0d0d0e778f54238f24` |
| 53 | `def` | [essSurjFullFunctorGaloisInsertion](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SievesFunctorialityNamespacedPublic.lean/declarations/esssurjfullfunctorgaloisinsertion.md) | 360 | `declaration-track:a75659d3c35b5a608c85575e9187b54939d717fdfe921180d368e35430995e54` |
| 54 | `def` | [fullyFaithfulFunctorGaloisCoinsertion](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SievesFunctorialityNamespacedPublic.lean/declarations/fullyfaithfulfunctorgaloiscoinsertion.md) | 369 | `declaration-track:72e8f2d29fd1b9e374ec6dd8d3d9be9dc37ee33ddb0c869185b08688edc1beb1` |
| 55 | `lemma` | [functorPullback_functorPushforward_eq](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SievesFunctorialityNamespacedPublic.lean/declarations/functorpullback-functorpushforward-eq.md) | 378 | `result-track:3a8aa7fe0063280c24c379bb665eb0af662a52b7b7633c59ae37eee9b2c9cb94` |
| 56 | `lemma` | [functorPushforward_functor](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SievesFunctorialityNamespacedPublic.lean/declarations/functorpushforward-functor.md) | 383 | `result-track:0f49b1d616d62e2bd38847a9ce86c00ad2603326036f3162fcd0a8d51b677ad3` |
| 57 | `lemma` | [mem_functorPushforward_functor](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SievesFunctorialityNamespacedPublic.lean/declarations/mem-functorpushforward-functor.md) | 393 | `result-track:5c1bf742809b639e28913398f578db512fed4ea3746adb0bc058a47ab8c66ec3` |
| 58 | `lemma` | [functorPushforward_inverse](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SievesFunctorialityNamespacedPublic.lean/declarations/functorpushforward-inverse.md) | 397 | `result-track:5fee636163e8ad0522ac7779b1606231a645469d64b29d43bf9aa8f9b353e817` |
| 59 | `lemma` | [mem_functorPushforward_inverse](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SievesFunctorialityNamespacedPublic.lean/declarations/mem-functorpushforward-inverse.md) | 402 | `result-track:812331e885d1ea694d3da98b88a3baf6ff73bd2c4adfdf371b466abf08adc304` |
| 60 | `lemma` | [functorPushforward_equivalence_eq_pullback](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SievesFunctorialityNamespacedPublic.lean/declarations/functorpushforward-equivalence-eq-pullback.md) | 408 | `result-track:6013977bfe72c8372c909f6c12ad128d61ab3a8d41727623070e840263834c73` |
| 61 | `lemma` | [pullback_functorPushforward_equivalence_eq](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SievesFunctorialityNamespacedPublic.lean/declarations/pullback-functorpushforward-equivalence-eq.md) | 412 | `result-track:b94ab953b20fe50834a6b7d2a119387ab87b814b6603d8bf89d69940ef6dd0e7` |
| 62 | `lemma` | [mem_functorPushforward_iff_of_full](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SievesFunctorialityNamespacedPublic.lean/declarations/mem-functorpushforward-iff-of-full.md) | 416 | `result-track:50137ccbf80e4912b81ba20710b38fe85461beb59b59744c05fb68eaa103522f` |
| 63 | `lemma` | [mem_functorPushforward_iff_of_full_of_faithful](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SievesFunctorialityNamespacedPublic.lean/declarations/mem-functorpushforward-iff-of-full-of-faithful.md) | 426 | `result-track:fca034e180503ac5d07dd336ea0ac58f3995cb4f9cd46352c8295eeccd05baa5` |
| 64 | `lemma` | [functorPushforward_ofObjects_le](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SievesFunctorialityNamespacedPublic.lean/declarations/functorpushforward-ofobjects-le.md) | 433 | `result-track:268c2404add1aafa183d88db6648814073ea820ad3fa6952dba08747c84c4f3b` |
| 65 | `lemma` | [Presieve.functorPullback_arrows](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SievesFunctorialityNamespacedPublic.lean/declarations/presieve-functorpullback-arrows.md) | 445 | `result-track:755c8c7921b9388989f712431c136c6ae72aa6fb0687a85b35fe7c84923f2562` |
| 66 | `theorem` | [Presieve.map_le_functorPushforward](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SievesFunctorialityNamespacedPublic.lean/declarations/presieve-map-le-functorpushforward.md) | 449 | `result-track:1f500c24d90a415555e26cf8088765446c9f4dfd93ab7ae85a3d68d081f478a0` |
| 67 | `lemma` | [Presieve.functorPushforward_overForget](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SievesFunctorialityNamespacedPublic.lean/declarations/presieve-functorpushforward-overforget.md) | 453 | `result-track:f27f7b514efc68c2e5fcc0a914afc0c78e01ad5458484c79ebfd4b6a2bec4af0` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=8b58cfad6d7af82ce2f3255f8a6d0b471abbaff26c105453e763272db350e80f -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Functoriality/Variantb4cd4ffb4dc8bf1c7f0a4b269f9ff14a2493c4c82368c5c430de5c2c33181314.lean","GRWTSK/_verification/specifications/CategoriesAndHomologicalAlgebra/CategoryTheory/Functoriality/Variantb4cd4ffb4dc8bf1c7f0a4b269f9ff14a2493c4c82368c5c430de5c2c33181314.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
