# Verification target: Sheaves Stalks Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0ec33ddcff63ecf8702fa7553958511a1dd4d021",
  "lexical_observation_count": 58,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Stalks/Variant566bae215b229a66309a520ddd223caccf3dfd8d1a47a7d6143b1287db783494.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../GeneralTopology/SheavesStalksNamespacedPublic.lean/index.md) · [Full source](../../../../GeneralTopology/SheavesStalksNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0ec33ddcff63ecf8702fa7553958511a1dd4d021`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Stalks/Variant566bae215b229a66309a520ddd223caccf3dfd8d1a47a7d6143b1287db783494.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Stalks/Variant566bae215b229a66309a520ddd223caccf3dfd8d1a47a7d6143b1287db783494.lean.json)

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
| 1 | `def` | [stalkFunctor](../../../../GeneralTopology/SheavesStalksNamespacedPublic.lean/declarations/stalkfunctor.md) | 84 | `declaration-track:94858f883fe5c3af03c7f090aae917412b8b010f0e9718da6b25cd3832cff5c7` |
| 2 | `def` | [stalk](../../../../GeneralTopology/SheavesStalksNamespacedPublic.lean/declarations/stalk.md) | 90 | `declaration-track:8aebe6c5063076b7313f7ec8f7143b4f8d756551f91523191f6de48b19ab4251` |
| 3 | `theorem` | [stalkFunctor_obj](../../../../GeneralTopology/SheavesStalksNamespacedPublic.lean/declarations/stalkfunctor-obj.md) | 95 | `result-track:73e1bbc04e7b5b0aa2c210279a5fce843b371962bf98b659afb7a93ffd9d7bb3` |
| 4 | `def` | [germ](../../../../GeneralTopology/SheavesStalksNamespacedPublic.lean/declarations/germ-source-edition-2.md) | 100 | `declaration-track:9693dbbaf84edbf6428305ed404cf0054fdac563c2ccee7db529200693ebb7e6` |
| 5 | `def` | [Γgerm](../../../../GeneralTopology/SheavesStalksNamespacedPublic.lean/declarations/germ.md) | 104 | `declaration-track:2f83ca31c1d53e18a61554de27043d9286bc753385e92dd441b3700c8161630e` |
| 6 | `theorem` | [germ_res](../../../../GeneralTopology/SheavesStalksNamespacedPublic.lean/declarations/germ-res-source-edition-2.md) | 108 | `result-track:b4ad9a60a659ec24d0cd48cc438a8ff080a731ae8517e53ec5847e61010010f7` |
| 7 | `theorem` | [germ_res'](../../../../GeneralTopology/SheavesStalksNamespacedPublic.lean/declarations/germ-res.md) | 116 | `result-track:61860fdf24e579f2dc31b3299f6529c6eed8b82441e660c2ed56ba25a5c5cf8a` |
| 8 | `lemma` | [map_germ_eq_Γgerm](../../../../GeneralTopology/SheavesStalksNamespacedPublic.lean/declarations/map-germ-eq-germ.md) | 122 | `result-track:05855ced8bdfab9e3cd9efffd29aae296b7dd15bf0b8684c5b748c8ef502834a` |
| 9 | `theorem` | [germ_res_apply](../../../../GeneralTopology/SheavesStalksNamespacedPublic.lean/declarations/germ-res-apply-source-edition-2.md) | 129 | `result-track:da638252e71ca4328a5ba4d2c67c0f29a495be81aadc161611ac3624bf8a919b` |
| 10 | `theorem` | [germ_res_apply'](../../../../GeneralTopology/SheavesStalksNamespacedPublic.lean/declarations/germ-res-apply-source-edition-3.md) | 134 | `result-track:f479f4c4f0b384316872ad214f5d2173bd525d6d1ba18a37fe3a496f2cca30d6` |
| 11 | `lemma` | [Γgerm_res_apply](../../../../GeneralTopology/SheavesStalksNamespacedPublic.lean/declarations/germ-res-apply.md) | 139 | `result-track:6850a6b77aeea187c66e5f1313edad3dd7c1bccaf34ebdce38c19bbe6a748336` |
| 12 | `theorem` | [stalk_hom_ext](../../../../GeneralTopology/SheavesStalksNamespacedPublic.lean/declarations/stalk-hom-ext.md) | 148 | `result-track:48811d1d38e670e2bb8282e4a1ebed5a999e54201bf2b42af51bb5fc0d2df7ba` |
| 13 | `theorem` | [stalkFunctor_map_germ](../../../../GeneralTopology/SheavesStalksNamespacedPublic.lean/declarations/stalkfunctor-map-germ.md) | 155 | `result-track:a68b47e636ffcc45c2472a089ef8a28bf6b090d899a812e56edef283886cd77e` |
| 14 | `theorem` | [stalkFunctor_map_germ_apply](../../../../GeneralTopology/SheavesStalksNamespacedPublic.lean/declarations/stalkfunctor-map-germ-apply-source-edition-2.md) | 160 | `result-track:a420e38000cbf954829d8eab2bba35da2c67e3426dd0437bd0189086d24b44d7` |
| 15 | `theorem` | [stalkFunctor_map_germ_apply'](../../../../GeneralTopology/SheavesStalksNamespacedPublic.lean/declarations/stalkfunctor-map-germ-apply.md) | 168 | `result-track:7ee5629a22d28c6cf0ccb07ffed3343eb4ae6e63abae7c961490f352b7b93b1e` |
| 16 | `def` | [stalkPushforward](../../../../GeneralTopology/SheavesStalksNamespacedPublic.lean/declarations/stalkpushforward.md) | 180 | `declaration-track:44cddfcd01fb20f25e90d012974768b875a16b219e5b9f595c234c646bf2b205` |
| 17 | `theorem` | [stalkPushforward_germ](../../../../GeneralTopology/SheavesStalksNamespacedPublic.lean/declarations/stalkpushforward-germ.md) | 188 | `result-track:01c095f7cd4b4379ffa9568f0b70eab0bd653cb3b8b4e2c2d572db735a439e2e` |
| 18 | `theorem` | [id](../../../../GeneralTopology/SheavesStalksNamespacedPublic.lean/declarations/id.md) | 212 | `result-track:28b1148b1136c6aa9b83f643ec2fb41c49c4b74f8eee48704bcc51287bfb6373` |
| 19 | `theorem` | [comp](../../../../GeneralTopology/SheavesStalksNamespacedPublic.lean/declarations/comp.md) | 222 | `result-track:c2089bf53513c3df27b46bb60db9dab42b66debc7a55f430108e1c9caae22955` |
| 20 | `theorem` | [stalkPushforward_iso_of_isInducing](../../../../GeneralTopology/SheavesStalksNamespacedPublic.lean/declarations/stalkpushforward-iso-of-isinducing.md) | 228 | `result-track:f464a05ac4e3079f66337f785f9a762b95b0e54a7dc5fd47a0c83059d02ed925` |
| 21 | `def` | [stalkPullbackHom](../../../../GeneralTopology/SheavesStalksNamespacedPublic.lean/declarations/stalkpullbackhom.md) | 242 | `declaration-track:0c6d6f77a5b841d1276090ffbc0740d8670afffe54c509eb695a4cb0df7acb02` |
| 22 | `lemma` | [germ_stalkPullbackHom](../../../../GeneralTopology/SheavesStalksNamespacedPublic.lean/declarations/germ-stalkpullbackhom.md) | 250 | `result-track:f3b8224f3e9561071bc44fc2bc0c2da3fca6ca50324ad6bc3b82ef554998618c` |
| 23 | `def` | [germToPullbackStalk](../../../../GeneralTopology/SheavesStalksNamespacedPublic.lean/declarations/germtopullbackstalk.md) | 260 | `declaration-track:ae4255c2a9a5e2547ab078be8c746a2055acae7bd4c2d29e225b32253fedd474` |
| 24 | `lemma` | [pullback_obj_obj_ext](../../../../GeneralTopology/SheavesStalksNamespacedPublic.lean/declarations/pullback-obj-obj-ext.md) | 272 | `result-track:b0de735925ecb951a0fadfc96352cd0af5bfd4bc78553f5bce5448faa4f47619` |
| 25 | `lemma` | [pullbackPushforwardAdjunction_unit_pullback_map_germToPullbackStalk](../../../../GeneralTopology/SheavesStalksNamespacedPublic.lean/declarations/pullbackpushforwardadjunction-unit-pullback-map-germtopullbackstalk.md) | 286 | `result-track:65725ba5d04127138d649302e828bfbae9b5cd5433351d0875d30dde7584403b` |
| 26 | `lemma` | [germToPullbackStalk_stalkPullbackHom](../../../../GeneralTopology/SheavesStalksNamespacedPublic.lean/declarations/germtopullbackstalk-stalkpullbackhom.md) | 298 | `result-track:520fdac08186876be0ebd4a0f58d7a3e6e5db88bdfe07b24ebb6ff7e784b699f` |
| 27 | `lemma` | [pullbackPushforwardAdjunction_unit_app_app_germToPullbackStalk](../../../../GeneralTopology/SheavesStalksNamespacedPublic.lean/declarations/pullbackpushforwardadjunction-unit-app-app-germtopullbackstalk.md) | 309 | `result-track:eeb2585c86b54b6cdff4a8b1fbd0f14ff438d9561264917a42b77846e1bf7af8` |
| 28 | `def` | [stalkPullbackInv](../../../../GeneralTopology/SheavesStalksNamespacedPublic.lean/declarations/stalkpullbackinv.md) | 319 | `declaration-track:d6cfe55e7e5be455b8ca2cd2e1a9c84401e72c6066b55f57198134ea853cff37` |
| 29 | `lemma` | [germ_stalkPullbackInv](../../../../GeneralTopology/SheavesStalksNamespacedPublic.lean/declarations/germ-stalkpullbackinv.md) | 334 | `result-track:b66fbf1784619e61742d8265b385fb2c145dcd6a9303bb96e040e41f60b47118` |
| 30 | `def` | [stalkPullbackIso](../../../../GeneralTopology/SheavesStalksNamespacedPublic.lean/declarations/stalkpullbackiso.md) | 341 | `declaration-track:56c1a02bca3171dbb5693b3576b3e174908083ad1c9f3d7fa36000528125ab6f` |
| 31 | `def` | [stalkSpecializes](../../../../GeneralTopology/SheavesStalksNamespacedPublic.lean/declarations/stalkspecializes.md) | 364 | `declaration-track:2a5a80d67f17e75538d23a469b9be5e77284595863917cbf13f77475fc44b6cc` |
| 32 | `theorem` | [germ_stalkSpecializes](../../../../GeneralTopology/SheavesStalksNamespacedPublic.lean/declarations/germ-stalkspecializes.md) | 378 | `result-track:b3841a278a64d10fa307d6971196e8ff11b0ae77700bd2f80aa56016beb88398` |
| 33 | `theorem` | [stalkSpecializes_refl](../../../../GeneralTopology/SheavesStalksNamespacedPublic.lean/declarations/stalkspecializes-refl.md) | 384 | `result-track:342218d24f73e8bbc8d59c2b8440f807494031418205c070c23562d1651ed7f0` |
| 34 | `theorem` | [stalkSpecializes_comp](../../../../GeneralTopology/SheavesStalksNamespacedPublic.lean/declarations/stalkspecializes-comp.md) | 390 | `result-track:ab39e0137622b09584ef2d16941c9ce6b15e30740b36f94de3000b926c516012` |
| 35 | `theorem` | [stalkSpecializes_stalkFunctor_map](../../../../GeneralTopology/SheavesStalksNamespacedPublic.lean/declarations/stalkspecializes-stalkfunctor-map.md) | 397 | `result-track:fcd66a548418817900f878665dd70eb2cf2b7b9fa58a8a1bf692c3dec8c8dea6` |
| 36 | `theorem` | [stalkSpecializes_stalkPushforward](../../../../GeneralTopology/SheavesStalksNamespacedPublic.lean/declarations/stalkspecializes-stalkpushforward.md) | 405 | `result-track:f0287e4f24ecb43757eceb3707529762513758dc49dcdd69dc3c857b20563122` |
| 37 | `def` | [stalkCongr](../../../../GeneralTopology/SheavesStalksNamespacedPublic.lean/declarations/stalkcongr.md) | 414 | `declaration-track:20e27e2568455debcf06e3ec88b47403fd6aadd8fdf41bb965be84845f02ff65` |
| 38 | `theorem` | [germ_ext](../../../../GeneralTopology/SheavesStalksNamespacedPublic.lean/declarations/germ-ext.md) | 425 | `result-track:2e5fb371c726fd832e40e04234542c65712123e4a943b9aa014a8a2e93a8f66c` |
| 39 | `theorem` | [exists_germ_eq](../../../../GeneralTopology/SheavesStalksNamespacedPublic.lean/declarations/exists-germ-eq.md) | 439 | `result-track:95c21253d83aa711b5f8ad7e1eb36379167cd49728c33ed33e2e9b3dbe88cde7` |
| 40 | `theorem` | [exists_le_germ_eq](../../../../GeneralTopology/SheavesStalksNamespacedPublic.lean/declarations/exists-le-germ-eq.md) | 453 | `result-track:755f2377e86f20bf8987e4aff25470d915a296095b92697b84f308f41db452ad` |
| 41 | `theorem` | [germ_eq](../../../../GeneralTopology/SheavesStalksNamespacedPublic.lean/declarations/germ-eq.md) | 462 | `result-track:6b50de697588408185f2a70eb5f57a1b2f6a13ac20cec1a871a9a8eac5d17891` |
| 42 | `theorem` | [stalkFunctor_map_injective_of_app_injective](../../../../GeneralTopology/SheavesStalksNamespacedPublic.lean/declarations/stalkfunctor-map-injective-of-app-injective.md) | 470 | `result-track:41289be7331965116e10d887b1e2e30ce41651006f6ecd1fe062eeb3b965a063` |
| 43 | `lemma` | [exists_mem_germ_eq_of_isBasis](../../../../GeneralTopology/SheavesStalksNamespacedPublic.lean/declarations/exists-mem-germ-eq-of-isbasis.md) | 490 | `result-track:51c31d25ac64ac6785cffc78df458309eaf45aea67b22aa289af58bbaae34cfb` |
| 44 | `lemma` | [germ_eq_of_isBasis](../../../../GeneralTopology/SheavesStalksNamespacedPublic.lean/declarations/germ-eq-of-isbasis.md) | 497 | `result-track:58211d29964be19412fd1e08fdaf6c67bfe32d623f2ca0e253a42f49e16c066e` |
| 45 | `lemma` | [stalkFunctor_map_injective_of_isBasis](../../../../GeneralTopology/SheavesStalksNamespacedPublic.lean/declarations/stalkfunctor-map-injective-of-isbasis.md) | 508 | `result-track:b0917e867996f14113f488ceb2819583ff9e67e7f347e849192f67a68d389bc1` |
| 46 | `theorem` | [section_ext](../../../../GeneralTopology/SheavesStalksNamespacedPublic.lean/declarations/section-ext.md) | 526 | `result-track:4ce520ba0c1ca64b5368fa2d4c308e05a9cafc1022edda6ae5a1aefd1e05909d` |
| 47 | `theorem` | [app_injective_of_stalkFunctor_map_injective](../../../../GeneralTopology/SheavesStalksNamespacedPublic.lean/declarations/app-injective-of-stalkfunctor-map-injective.md) | 546 | `result-track:8e30f35983fc8291d1840ce8eabb5705777988b60f3db156598cd5e96fad4792` |
| 48 | `theorem` | [app_injective_iff_stalkFunctor_map_injective](../../../../GeneralTopology/SheavesStalksNamespacedPublic.lean/declarations/app-injective-iff-stalkfunctor-map-injective.md) | 552 | `result-track:70fa3da9c8b70b397f75c3c32a369a0294c529e28c5af614e6c46d4db73cc392` |
| 49 | `instance` | [stalkFunctor_preserves_mono](../../../../GeneralTopology/SheavesStalksNamespacedPublic.lean/declarations/stalkfunctor-preserves-mono.md) | 560 | `declaration-track:2fd8351c9f06a0ac35af8a8a3a7ce339f49228b0f0ca4d57586a3b2eda722015` |
| 50 | `theorem` | [stalk_mono_of_mono](../../../../GeneralTopology/SheavesStalksNamespacedPublic.lean/declarations/stalk-mono-of-mono.md) | 573 | `result-track:bcd8849afe9bdfd1b4db8e6d8e5e44ead9492026a9a5c839916f9c15a544f67c` |
| 51 | `theorem` | [mono_of_stalk_mono](../../../../GeneralTopology/SheavesStalksNamespacedPublic.lean/declarations/mono-of-stalk-mono.md) | 578 | `result-track:a02c784d24bc0865b831847a68fbc09a24adfb2195046cadbd89e9bf7c420982` |
| 52 | `theorem` | [mono_iff_stalk_mono](../../../../GeneralTopology/SheavesStalksNamespacedPublic.lean/declarations/mono-iff-stalk-mono.md) | 588 | `result-track:32a9140cd6426029e38844fc1c8718d9dfa126b67af3ce6106b8ebdeec318530` |
| 53 | `theorem` | [app_surjective_of_injective_of_locally_surjective](../../../../GeneralTopology/SheavesStalksNamespacedPublic.lean/declarations/app-surjective-of-injective-of-locally-surjective.md) | 596 | `result-track:a35c4b23fd794a2d4e5c8434fb4f3c87314bc8039f18c28934fe6beeb1369075` |
| 54 | `theorem` | [app_surjective_of_stalkFunctor_map_bijective](../../../../GeneralTopology/SheavesStalksNamespacedPublic.lean/declarations/app-surjective-of-stalkfunctor-map-bijective.md) | 632 | `result-track:30b9f7e057f1389be21cafd598da9d3306e6ed5116e708073a78245c2754e826` |
| 55 | `theorem` | [app_bijective_of_stalkFunctor_map_bijective](../../../../GeneralTopology/SheavesStalksNamespacedPublic.lean/declarations/app-bijective-of-stalkfunctor-map-bijective.md) | 650 | `result-track:7402cb4582946e7356ec0fc5f961a8944591063806afbca283a2a16f5b4fe934` |
| 56 | `theorem` | [app_isIso_of_stalkFunctor_map_iso](../../../../GeneralTopology/SheavesStalksNamespacedPublic.lean/declarations/app-isiso-of-stalkfunctor-map-iso.md) | 657 | `result-track:d9b28f6a0e866326b3ffee77a330df90a5bc0bc5a2495479dc619a0cd527fabf` |
| 57 | `theorem` | [isIso_of_stalkFunctor_map_iso](../../../../GeneralTopology/SheavesStalksNamespacedPublic.lean/declarations/isiso-of-stalkfunctor-map-iso.md) | 675 | `result-track:37ab849898aee11db49c4d38b4abb736dbb34cf246800fc7431b2a7669c36375` |
| 58 | `theorem` | [isIso_iff_stalkFunctor_map_iso](../../../../GeneralTopology/SheavesStalksNamespacedPublic.lean/declarations/isiso-iff-stalkfunctor-map-iso.md) | 691 | `result-track:3ea14938dbb99ea0acb6bee5b1de631a7fa4b55c8f26f4171d93d74d6d694fed` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=316b95d7db04ddbfb5c1b908c3cb3a91ca7ab2a2a47b8315e201b12196587c9d -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Stalks/Variant566bae215b229a66309a520ddd223caccf3dfd8d1a47a7d6143b1287db783494.lean","GRWTSK/_verification/specifications/CategoriesAndHomologicalAlgebra/CategoryTheory/Stalks/Variant566bae215b229a66309a520ddd223caccf3dfd8d1a47a7d6143b1287db783494.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
