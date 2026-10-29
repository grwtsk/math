# Verification target: Refl Quiv Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9a758752854e65a152db9e7334d96af89aa4a9b6",
  "lexical_observation_count": 70,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/ReflQuiv/Variant378e2be4abc7a0224a959257e281bb2abccaa4dfc89a8a276bfa5cb0d8672c73.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ReflQuivPublic.lean/index.md) · [Full source](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ReflQuivPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9a758752854e65a152db9e7334d96af89aa4a9b6`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/ReflQuiv/Variant378e2be4abc7a0224a959257e281bb2abccaa4dfc89a8a276bfa5cb0d8672c73.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/ReflQuiv/Variant378e2be4abc7a0224a959257e281bb2abccaa4dfc89a8a276bfa5cb0d8672c73.lean.json)

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
| 1 | `def` | [ReflQuiv](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ReflQuivPublic.lean/declarations/reflquiv.md) | 26 | `declaration-track:f2404398601ca76e041fb035061a3a2b4101542578fe4d9325523a66773e41c6` |
| 2 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ReflQuivPublic.lean/declarations/instance-source-edition-2.md) | 31 | `declaration-track:0feef037286b1ae441ffc6ef02e639893d9c5ae6e45070be708b9474730a949d` |
| 3 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ReflQuivPublic.lean/declarations/instance-source-edition-7.md) | 33 | `declaration-track:dc9179fe5255b832d7753797e8011cc0fe36fd586dd6651cf0454a0dd1fb4ad4` |
| 4 | `def` | [toQuiv](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ReflQuivPublic.lean/declarations/toquiv.md) | 36 | `declaration-track:8783e69d9f9f54b7da93b3e2ff3c3fee246b79bb250b19b393f8c5a7684dbd5a` |
| 5 | `def` | [of](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ReflQuivPublic.lean/declarations/of.md) | 39 | `declaration-track:ed23178e24a76eed7802e5276743077127632b26581f8f08ef8d1ee8730c8e78` |
| 6 | `def` | [delabOf](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ReflQuivPublic.lean/declarations/delabof.md) | 44 | `declaration-track:a89b5157ac06de3f7f3bbd822e7b718f3b7ccc864abb0fb02b0081690cfb256c` |
| 7 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ReflQuivPublic.lean/declarations/instance-source-edition-5.md) | 46 | `declaration-track:9df28438869663a37994fb0d358ca57ea85ccb6fbb73b98ae8b36ce14d29442c` |
| 8 | `theorem` | [of_val](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ReflQuivPublic.lean/declarations/of-val.md) | 48 | `result-track:4dae8f16366be27241107352aafd4f10e0b882d4810d3b3571751c71ff1da164` |
| 9 | `instance` | [category](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ReflQuivPublic.lean/declarations/category.md) | 51 | `declaration-track:2fbb6f1845ad42ccc0e50499f563f4f40d737e7609ffbbf612f53761b4d91185` |
| 10 | `theorem` | [id_eq_id](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ReflQuivPublic.lean/declarations/id-eq-id.md) | 56 | `result-track:47ec74c250e3364e906ea638d5abd04e9fecc9866406b41e42a11c8304f07a9f` |
| 11 | `theorem` | [comp_eq_comp](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ReflQuivPublic.lean/declarations/comp-eq-comp.md) | 57 | `result-track:d26701809a4acbbdfde3fc238ebe296d8d006c2b1c2fb3fc4b3e30a0364afbbd` |
| 12 | `lemma` | [id_obj](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ReflQuivPublic.lean/declarations/id-obj.md) | 60 | `result-track:a0ba6b569959e506e698305add826002ea8405c63414da21d8d687c23713f3b9` |
| 13 | `lemma` | [id_map](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ReflQuivPublic.lean/declarations/id-map.md) | 63 | `result-track:9c0e8888e25e55fe778ff04f5162c8055b3166c7424871bbecd3c5c812d6f0bb` |
| 14 | `lemma` | [comp_obj](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ReflQuivPublic.lean/declarations/comp-obj.md) | 67 | `result-track:4e8568d3f2253a72a4a34e333dbeda2ebe1757d7f9b26c3210383390c267cfc9` |
| 15 | `lemma` | [comp_map](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ReflQuivPublic.lean/declarations/comp-map.md) | 71 | `result-track:44594f4c4881bd6633cbabfa7b7f3608503c37a406ffdce24e4112470b48a38c` |
| 16 | `def` | [forget](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ReflQuivPublic.lean/declarations/forget.md) | 76 | `declaration-track:aef662b0e4c3855660592eb6fc65606f7c5c47a6e0b5c646778c8b7fb644e2f9` |
| 17 | `theorem` | [forget_faithful](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ReflQuivPublic.lean/declarations/forget-faithful-source-edition-2.md) | 80 | `result-track:917f999920afcde717a6ebe7e059ae49d98e4acce6e5384acbada289cedb27ce` |
| 18 | `instance` | [forget.Faithful](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ReflQuivPublic.lean/declarations/forget-faithful.md) | 84 | `declaration-track:7dca427a7406629fec7cbe07fd252696a98a47a3af70db76291c20007dbe1361` |
| 19 | `def` | [forgetToQuiv](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ReflQuivPublic.lean/declarations/forgettoquiv.md) | 89 | `declaration-track:dbea2513e51fbe3427ac1c8926d609c6d9d282e661fe71ce33cdddb94bd1cad6` |
| 20 | `theorem` | [forgetToQuiv_faithful](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ReflQuivPublic.lean/declarations/forgettoquiv-faithful.md) | 93 | `result-track:2b146b09c93880c50cf53902f98fef0410f25d9abef6c7202a78e36e0fde24e6` |
| 21 | `instance` | [forgetToQuiv.Faithful](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ReflQuivPublic.lean/declarations/forgettoquiv-faithful-source-edition-2.md) | 97 | `declaration-track:667406682f088e34a65a830450c6321f2a2a024f6819726f7b1a9be1425e9825` |
| 22 | `theorem` | [forget_forgetToQuiv](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ReflQuivPublic.lean/declarations/forget-forgettoquiv.md) | 100 | `result-track:a362ba5ef13268bc475086eca95e3389cfb7364a8707e5b9446e09ce6ab4d511` |
| 23 | `def` | [isoOfQuivIso](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ReflQuivPublic.lean/declarations/isoofquiviso.md) | 105 | `declaration-track:bd63ecd6db05d15b956aa97a8c9b52a1ac417dd9d92dd0d13f358c47e26b253f` |
| 24 | `def` | [isoOfEquiv](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ReflQuivPublic.lean/declarations/isoofequiv.md) | 120 | `declaration-track:81bd753b65052b7e7b519364e82e6c6f262e410d02e9d4d19968ee1feb0a337e` |
| 25 | `def` | [toFunctor](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ReflQuivPublic.lean/declarations/tofunctor.md) | 130 | `declaration-track:6b34b2f6a8efe5ef1512228ea6edf3b468079354f4be2d5a5b86ec6a07092cf0` |
| 26 | `inductive` | [FreeReflRel](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ReflQuivPublic.lean/declarations/freereflrel.md) | 146 | `declaration-track:b1c4eb124ecbb4bd2424ba8e5bf16822c6b7a0ac2c98f3762b941a86b98a13fa` |
| 27 | `def` | [FreeRefl](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ReflQuivPublic.lean/declarations/freerefl-source-edition-2.md) | 152 | `declaration-track:8bfababaa6851fbd2d9d07fd17c7fa215d21b7aad1f2c0c1d03059ce99a0de66` |
| 28 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ReflQuivPublic.lean/declarations/instance-source-edition-8.md) | 159 | `declaration-track:e585e38ae68add6677f61ed6a2216fe5cf069042da703ee14e8597d2cffc2164` |
| 29 | `def` | [mk](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ReflQuivPublic.lean/declarations/mk.md) | 163 | `declaration-track:40c00d2cde06b21bedfab80682dca23b683df617e69a593822b2ef6ccfd4a72c` |
| 30 | `def` | [induction](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ReflQuivPublic.lean/declarations/induction.md) | 167 | `declaration-track:55e80011f2f916e9a537d6195b3f7a13707f359b62344dbcb1b42456f83c5a0a` |
| 31 | `def` | [quotientFunctor](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ReflQuivPublic.lean/declarations/quotientfunctor.md) | 174 | `declaration-track:b0dfb749d6535c0c30a07cb257006f0bbf9c91ea3f82b7764231ea8b16c9b44a` |
| 32 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ReflQuivPublic.lean/declarations/instance-source-edition-3.md) | 177 | `declaration-track:25e532d3432beb89fe4af6cb4244bb22a2b84030506ef2d71effcc9174ab0ffa` |
| 33 | `def` | [homMk](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ReflQuivPublic.lean/declarations/hommk.md) | 181 | `declaration-track:6142770dd67723918fb26c2cb62000c1becc0abf7b877ca55e77a8d602ebfc14` |
| 34 | `lemma` | [homMk_id](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ReflQuivPublic.lean/declarations/hommk-id.md) | 184 | `result-track:7d9e4e60bc0458fa79d5f1354bc5e4286c84218ee078e23a316e10a492a988f4` |
| 35 | `lemma` | [quotientFunctor_map_nil](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ReflQuivPublic.lean/declarations/quotientfunctor-map-nil.md) | 188 | `result-track:f5ef5f6047b5ff1a70da8fcdba3453d876f6589cefe4f5ff1ab1db3fc42d2c8c` |
| 36 | `lemma` | [quotientFunctor_map_cons](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ReflQuivPublic.lean/declarations/quotientfunctor-map-cons.md) | 193 | `result-track:562c197bbf03e76bcdbb2a5a4b67fcd6d848eaff88068840d6eb420da38d98ba` |
| 37 | `def` | [morphismPropertyHomMk](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ReflQuivPublic.lean/declarations/morphismpropertyhommk.md) | 202 | `declaration-track:247aae5fb6043be62dd11b979e21854c77b96eee2cdda18ea6ec722592ef8e8e` |
| 38 | `lemma` | [morphismPropertyHomMk_homMk](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ReflQuivPublic.lean/declarations/morphismpropertyhommk-hommk.md) | 205 | `result-track:edfd8a972d6c471bf9474e1b11319c303f76bbdc10346740b4ef4e147255a45e` |
| 39 | `lemma` | [hom_induction](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ReflQuivPublic.lean/declarations/hom-induction.md) | 212 | `result-track:86d0ce4cf86d405541086c12dec3a0136c35cdd84f24abbb01f7e01ae477e6c7` |
| 40 | `lemma` | [multiplicativeClosure_morphismPropertyHomMk](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ReflQuivPublic.lean/declarations/multiplicativeclosure-morphismpropertyhommk.md) | 225 | `result-track:1afd9ecd9f39f82203e9cc2381d1413e87ddb609ed1ed00c8eb5ffa17dc19c27` |
| 41 | `lemma` | [morphismProperty_eq_top](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ReflQuivPublic.lean/declarations/morphismproperty-eq-top.md) | 235 | `result-track:c76fb28fc16748159d7fc1c531907ee81e15cd5842a420c6b45b0b567ecc3d8b` |
| 42 | `def` | [lift](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ReflQuivPublic.lean/declarations/lift.md) | 251 | `declaration-track:186a1ac120c7c5ca331eb0bba74221f48158ab18a8dfcebb1c00ff4abc4b0055` |
| 43 | `lemma` | [lift_obj](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ReflQuivPublic.lean/declarations/lift-obj.md) | 257 | `result-track:1ca0c67670e342aa7fea5537b644368b79242c6a4eda2f54cc9885137f82f941` |
| 44 | `lemma` | [lift_map](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ReflQuivPublic.lean/declarations/lift-map.md) | 260 | `result-track:802499ceb3ab1ade8c9e82a467d06419d97612f1ba07fdc1a03eca88b7eefba0` |
| 45 | `def` | [lift'](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ReflQuivPublic.lean/declarations/lift-source-edition-2.md) | 273 | `declaration-track:f065585f91d187de41837f1f00f46f60318574612ad8c9df37e2def9a4d0c5ac` |
| 46 | `lemma` | [lift'_obj](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ReflQuivPublic.lean/declarations/lift-obj-source-edition-2.md) | 277 | `result-track:a1743a46c13f5bf98796260d27bf9f9a39b015c2c49c2fd9efeeae6a1e9d5ce3` |
| 47 | `lemma` | [lift'_map](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ReflQuivPublic.lean/declarations/lift-map-source-edition-2.md) | 281 | `result-track:f22c2e6b5f1e261849eab3e08f03efe335c6002819803aed8f5b0c24a3594ac8` |
| 48 | `theorem` | [lift_unique'](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ReflQuivPublic.lean/declarations/lift-unique.md) | 289 | `result-track:3bf67f58d48d7528b5da3559d112e00ccfaecbb60afb2bb7bff605b4ebb052ec` |
| 49 | `lemma` | [functor_ext](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ReflQuivPublic.lean/declarations/functor-ext.md) | 294 | `result-track:c1403c9b9d7079a9dd2da0d052730c553edd5a3ea13f079d2b432e45d2efd216` |
| 50 | `lemma` | [quotientFunctor_map_id](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ReflQuivPublic.lean/declarations/quotientfunctor-map-id.md) | 301 | `result-track:0b7fde97ac3dfac42d5a127500b1efd87aa382664d2344c5fbc97519b6a4d0d4` |
| 51 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ReflQuivPublic.lean/declarations/instance-source-edition-6.md) | 306 | `declaration-track:adb98e90cf4e2955354805fc75e229426970b09a0a84c333ef4ca84e726b1c8b` |
| 52 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ReflQuivPublic.lean/declarations/instance-source-edition-4.md) | 310 | `declaration-track:4b8c59f38a9534b1edbc76e2b594cab7f54152d3c4b208ad4e6313aaa03a27c4` |
| 53 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ReflQuivPublic.lean/declarations/instance.md) | 322 | `declaration-track:04c5b7c1ced652ad6d9bebed1832f0d515b586e52fb1c0cd49d6d7f73d8d1b17` |
| 54 | `def` | [toFreeRefl](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ReflQuivPublic.lean/declarations/tofreerefl.md) | 335 | `declaration-track:b40f8ecfc3eac27cdd3aa35247ebd5948330a67f55d30cd79e7cd1c01fda1528` |
| 55 | `lemma` | [FreeRefl.lift_spec](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ReflQuivPublic.lean/declarations/freerefl-lift-spec.md) | 343 | `result-track:74b331700de569f477e0669c4c512fc6b3f89ec8f3bbd6c65c9485473f74d434` |
| 56 | `def` | [freeReflMap](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ReflQuivPublic.lean/declarations/freereflmap.md) | 350 | `declaration-track:32ea2235461d071f431d452b1ae890241f3112e9683ee2e5416fe49b382c1493` |
| 57 | `lemma` | [freeReflMap_obj](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ReflQuivPublic.lean/declarations/freereflmap-obj.md) | 355 | `result-track:2a5eb4bfae06344af765b2d5434c311e2db936df8486847c95ad97053e5953c5` |
| 58 | `lemma` | [freeReflMap_map](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ReflQuivPublic.lean/declarations/freereflmap-map.md) | 358 | `result-track:64f57fde54649f422bc7f302cc14c9a7fa70d0044e264c81c396b007f7221b01` |
| 59 | `theorem` | [freeReflMap_naturality](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ReflQuivPublic.lean/declarations/freereflmap-naturality.md) | 361 | `result-track:0c7c30e39b65c872b0a7a9c768cc36ec162b8dfae5bf218e7af80f32c728d625` |
| 60 | `def` | [freeRefl](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ReflQuivPublic.lean/declarations/freerefl.md) | 371 | `declaration-track:367df5c680e5a955290f05460d5ee87be3d8bb2e704be2b6be2814e08345d469` |
| 61 | `def` | [freeReflNatTrans](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ReflQuivPublic.lean/declarations/freereflnattrans.md) | 379 | `declaration-track:4ebee29b2f902736d979b376d56cdf7a8a1f16cdbeda5a938043003b7d33c584` |
| 62 | `def` | [homEquiv](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ReflQuivPublic.lean/declarations/homequiv.md) | 398 | `declaration-track:5af31bf5c7a20ab00c516a45c1223b9f9ea0afc4dcd61a7d4ff97a3c9f96c8a2` |
| 63 | `lemma` | [homEquiv_naturality_left_symm](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ReflQuivPublic.lean/declarations/homequiv-naturality-left-symm.md) | 405 | `result-track:fbd192f80a4a30b0af154e541dfa2d993d56cd47345d49149f26295c3434179d` |
| 64 | `lemma` | [homEquiv_naturality_right](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ReflQuivPublic.lean/declarations/homequiv-naturality-right.md) | 409 | `result-track:d445bbbdf1d8c72ce77c75567dd14ceb9d826108cf83bcef938ad472841f9c49` |
| 65 | `def` | [adj](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ReflQuivPublic.lean/declarations/adj.md) | 418 | `declaration-track:a30dcd15ab42ba2a73d7b591fc743d67639eb12d3b024fb4de63821cab022ee5` |
| 66 | `lemma` | [adj_unit_app](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ReflQuivPublic.lean/declarations/adj-unit-app.md) | 425 | `result-track:61bc58cd60a680a05757df254dd7f151d0c48c13dda332a864c0e78508e9ee04` |
| 67 | `lemma` | [adj_counit_app](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ReflQuivPublic.lean/declarations/adj-counit-app.md) | 428 | `result-track:65ba3ec17e159d2a7bfdb605f7ba1a06d416e97b46caf65a7618aa82bd062234` |
| 68 | `lemma` | [adj_homEquiv](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ReflQuivPublic.lean/declarations/adj-homequiv.md) | 434 | `result-track:af4bf9dbee2867be092d369dc2ba32345211e9b8e4068d040f358e8f179330b3` |
| 69 | `lemma` | [adj.unit.map_app_eq](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ReflQuivPublic.lean/declarations/adj-unit-map-app-eq.md) | 439 | `result-track:0f051037ea20b1e95161af46ed604ad4912121be8523c4fb875b08b4cd791082` |
| 70 | `lemma` | [adj.counit.comp_app_eq](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ReflQuivPublic.lean/declarations/adj-counit-comp-app-eq.md) | 445 | `result-track:6ab7a113276e671dabcbf105d82133e0891a3d127b0493b426f27e0e57e1fca9` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=f52e1e3bfcd750657bd88661f483a22204a89b638bbeff5063bba35053cceb45 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/ReflQuiv/Variant378e2be4abc7a0224a959257e281bb2abccaa4dfc89a8a276bfa5cb0d8672c73.lean","GRWTSK/_verification/specifications/CategoriesAndHomologicalAlgebra/CategoryTheory/ReflQuiv/Variant378e2be4abc7a0224a959257e281bb2abccaa4dfc89a8a276bfa5cb0d8672c73.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
