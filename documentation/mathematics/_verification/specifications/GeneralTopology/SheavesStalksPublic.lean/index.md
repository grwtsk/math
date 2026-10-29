# Verification target: Sheaves Stalks Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5cf610099b7edd0ef4b3d67f025f522bd12c45e2",
  "lexical_observation_count": 58,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Stalks/Variant83700ffdae1fefc720d03ff0da6877837de2fc3f9cb85d87b2b09d928bcd423b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../GeneralTopology/SheavesStalksPublic.lean/index.md) · [Full source](../../../../GeneralTopology/SheavesStalksPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5cf610099b7edd0ef4b3d67f025f522bd12c45e2`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Stalks/Variant83700ffdae1fefc720d03ff0da6877837de2fc3f9cb85d87b2b09d928bcd423b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Stalks/Variant83700ffdae1fefc720d03ff0da6877837de2fc3f9cb85d87b2b09d928bcd423b.lean.json)

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
| 1 | `def` | [stalkFunctor](../../../../GeneralTopology/SheavesStalksPublic.lean/declarations/stalkfunctor.md) | 76 | `declaration-track:783153b0a62ca2e9991305b103e3c54d9c51b5efd8052dc3f4b46d7df395ae00` |
| 2 | `def` | [stalk](../../../../GeneralTopology/SheavesStalksPublic.lean/declarations/stalk.md) | 82 | `declaration-track:e9506a1f6eee528822f85c8f142510816ab7429be96540375a0194a805a84750` |
| 3 | `theorem` | [stalkFunctor_obj](../../../../GeneralTopology/SheavesStalksPublic.lean/declarations/stalkfunctor-obj.md) | 87 | `result-track:5818e7edf38451cb8cf0f23b30b03a0d9690be36cb104e30d2c909a6c8aa1658` |
| 4 | `def` | [germ](../../../../GeneralTopology/SheavesStalksPublic.lean/declarations/germ-source-edition-2.md) | 92 | `declaration-track:ffa15b663e718ecb77a06d7a333bffc3c3a15f917a7de2a354989efa730183b9` |
| 5 | `def` | [Γgerm](../../../../GeneralTopology/SheavesStalksPublic.lean/declarations/germ.md) | 96 | `declaration-track:ea1568ae83869d048a3f102b6690eb2e8afceed4fcf9d2786b64bf2ff8f82063` |
| 6 | `theorem` | [germ_res](../../../../GeneralTopology/SheavesStalksPublic.lean/declarations/germ-res.md) | 100 | `result-track:33272c24297ca7882b772a4bd2ff690b238d3c3fc75575216a7adc56c527c0f0` |
| 7 | `theorem` | [germ_res'](../../../../GeneralTopology/SheavesStalksPublic.lean/declarations/germ-res-source-edition-2.md) | 108 | `result-track:d2d21cfc146fd65f3007efc6582f621f8715a208c1a4675b11f1d6779cfc4208` |
| 8 | `lemma` | [map_germ_eq_Γgerm](../../../../GeneralTopology/SheavesStalksPublic.lean/declarations/map-germ-eq-germ.md) | 114 | `result-track:78ff197a5acb3e6120158abd0e3fa612e1113e8a8fdcbaf97302be1f1095d3b8` |
| 9 | `theorem` | [germ_res_apply](../../../../GeneralTopology/SheavesStalksPublic.lean/declarations/germ-res-apply-source-edition-2.md) | 121 | `result-track:54ee7fba2348646409b13d292ae508cdad49c1de583b194aa539c02c8a94e4ed` |
| 10 | `theorem` | [germ_res_apply'](../../../../GeneralTopology/SheavesStalksPublic.lean/declarations/germ-res-apply-source-edition-3.md) | 126 | `result-track:8216ac112bb87e2c7d15e1ded5f745824eb38bd09aee6bba14a7bef1ca6b8cdd` |
| 11 | `lemma` | [Γgerm_res_apply](../../../../GeneralTopology/SheavesStalksPublic.lean/declarations/germ-res-apply.md) | 131 | `result-track:4024fdb7e155efc28605e04723ef31bf09642e03666e9546adb05c1323ebc11e` |
| 12 | `theorem` | [stalk_hom_ext](../../../../GeneralTopology/SheavesStalksPublic.lean/declarations/stalk-hom-ext.md) | 140 | `result-track:09251a923b26f8f7cfb88b71d2a60d63778fc4560b78408dba274e6f764304f0` |
| 13 | `theorem` | [stalkFunctor_map_germ](../../../../GeneralTopology/SheavesStalksPublic.lean/declarations/stalkfunctor-map-germ.md) | 147 | `result-track:b0dc2736e65fe554702465398acf6d51581ecbd3aabaa526b09c783ce284bc8f` |
| 14 | `theorem` | [stalkFunctor_map_germ_apply](../../../../GeneralTopology/SheavesStalksPublic.lean/declarations/stalkfunctor-map-germ-apply-source-edition-2.md) | 152 | `result-track:f95ef44c5ce900e69aab06432a745d9829ff4d35b1a55961fe170ba55d1e513d` |
| 15 | `theorem` | [stalkFunctor_map_germ_apply'](../../../../GeneralTopology/SheavesStalksPublic.lean/declarations/stalkfunctor-map-germ-apply.md) | 160 | `result-track:70bd232df9073d12737d8ece5508a093497e390e1a968a74ad8571cb335ead62` |
| 16 | `def` | [stalkPushforward](../../../../GeneralTopology/SheavesStalksPublic.lean/declarations/stalkpushforward.md) | 172 | `declaration-track:1fd20443eafb2db7d32f5b562e360c3265a20e8700126a3febad24ab325f46cf` |
| 17 | `theorem` | [stalkPushforward_germ](../../../../GeneralTopology/SheavesStalksPublic.lean/declarations/stalkpushforward-germ.md) | 180 | `result-track:28732a62bd7acbb0fcb5cfe2211a5355d6d64ed5cbba9fe250a069711942afc7` |
| 18 | `theorem` | [id](../../../../GeneralTopology/SheavesStalksPublic.lean/declarations/id.md) | 204 | `result-track:593da538edb4b54f2f243e7c4df47ed95984162135ae5463ff0df35ff6ed99d9` |
| 19 | `theorem` | [comp](../../../../GeneralTopology/SheavesStalksPublic.lean/declarations/comp.md) | 214 | `result-track:979c838310930feedea65e8801f5b36dde2a04ae592ba702e6d2828dd0f60bd4` |
| 20 | `theorem` | [stalkPushforward_iso_of_isInducing](../../../../GeneralTopology/SheavesStalksPublic.lean/declarations/stalkpushforward-iso-of-isinducing.md) | 220 | `result-track:d558b11facb69281e0b58d66e26cdd771330e5dbfef5406a89368a3547472f5c` |
| 21 | `def` | [stalkPullbackHom](../../../../GeneralTopology/SheavesStalksPublic.lean/declarations/stalkpullbackhom.md) | 234 | `declaration-track:f0faccfba9abcf5e418d0fb632f69f10069d7d113a18880a3c958c2efe66a5dd` |
| 22 | `lemma` | [germ_stalkPullbackHom](../../../../GeneralTopology/SheavesStalksPublic.lean/declarations/germ-stalkpullbackhom.md) | 242 | `result-track:4296cff183ba70fa91d64ffaac5a9f1960fa4fc648b6010ebd9a454f8c55f258` |
| 23 | `def` | [germToPullbackStalk](../../../../GeneralTopology/SheavesStalksPublic.lean/declarations/germtopullbackstalk.md) | 252 | `declaration-track:1c87529a68419a78c5aa8340b30fccc4331ed3d551c9cb2314bc7006b689fb9a` |
| 24 | `lemma` | [pullback_obj_obj_ext](../../../../GeneralTopology/SheavesStalksPublic.lean/declarations/pullback-obj-obj-ext.md) | 264 | `result-track:bab26c9cd700eea65b387132e6ac1459288f5a2a9ace6bad64582c32683d430d` |
| 25 | `lemma` | [pullbackPushforwardAdjunction_unit_pullback_map_germToPullbackStalk](../../../../GeneralTopology/SheavesStalksPublic.lean/declarations/pullbackpushforwardadjunction-unit-pullback-map-germtopullbackstalk.md) | 278 | `result-track:36f3a6f144fe5cf06f032bb121cbac6ebaeb68bc5a4af87a47619f2c43ce08a4` |
| 26 | `lemma` | [germToPullbackStalk_stalkPullbackHom](../../../../GeneralTopology/SheavesStalksPublic.lean/declarations/germtopullbackstalk-stalkpullbackhom.md) | 290 | `result-track:04fd2412cbd36ab64c59d3c89b193b0c374a499df003cf0a2cfef6920b08bfa0` |
| 27 | `lemma` | [pullbackPushforwardAdjunction_unit_app_app_germToPullbackStalk](../../../../GeneralTopology/SheavesStalksPublic.lean/declarations/pullbackpushforwardadjunction-unit-app-app-germtopullbackstalk.md) | 301 | `result-track:aaedb46455caa452b07852d64a41d58516d0ba99f62b0df7d66435af382c5d73` |
| 28 | `def` | [stalkPullbackInv](../../../../GeneralTopology/SheavesStalksPublic.lean/declarations/stalkpullbackinv.md) | 311 | `declaration-track:15c75e58065924c5d67baa9add4d2f0b514812548ba8655e0aad2e486f90359f` |
| 29 | `lemma` | [germ_stalkPullbackInv](../../../../GeneralTopology/SheavesStalksPublic.lean/declarations/germ-stalkpullbackinv.md) | 326 | `result-track:1d8692968750db17188640047af6f93a70da42a014721b080c1fef4fe5764af5` |
| 30 | `def` | [stalkPullbackIso](../../../../GeneralTopology/SheavesStalksPublic.lean/declarations/stalkpullbackiso.md) | 333 | `declaration-track:e4520360ad15f5842270f4edcb9f32569504cb179d1f4a282868215f9002fb2e` |
| 31 | `def` | [stalkSpecializes](../../../../GeneralTopology/SheavesStalksPublic.lean/declarations/stalkspecializes.md) | 356 | `declaration-track:faf160e75c6f4bbc0cf077bba421990de3f7ce9d28ef0fa3ff814a4cc4e9ef03` |
| 32 | `theorem` | [germ_stalkSpecializes](../../../../GeneralTopology/SheavesStalksPublic.lean/declarations/germ-stalkspecializes.md) | 370 | `result-track:bc0efc3bade8497b311041d5445f0cb2b7d51d2732e160c3e12f443626eb0a53` |
| 33 | `theorem` | [stalkSpecializes_refl](../../../../GeneralTopology/SheavesStalksPublic.lean/declarations/stalkspecializes-refl.md) | 376 | `result-track:8c5eed46b3b2d91082c0ea1cf8037ab91327fe927320288bb1d3cc71d0e67623` |
| 34 | `theorem` | [stalkSpecializes_comp](../../../../GeneralTopology/SheavesStalksPublic.lean/declarations/stalkspecializes-comp.md) | 382 | `result-track:7671b32b8b6db7c5c16af748641b585f64bc64bc183cd1bea8bc46cb47a28dc0` |
| 35 | `theorem` | [stalkSpecializes_stalkFunctor_map](../../../../GeneralTopology/SheavesStalksPublic.lean/declarations/stalkspecializes-stalkfunctor-map.md) | 389 | `result-track:22c1e4170313d815beecbe1e6875a51eb48ba062054d4e758b2902eba75a4653` |
| 36 | `theorem` | [stalkSpecializes_stalkPushforward](../../../../GeneralTopology/SheavesStalksPublic.lean/declarations/stalkspecializes-stalkpushforward.md) | 397 | `result-track:133610bb8fa1c522570b3d382fd08f29a340392e66cb940ccb201d388ea6b56c` |
| 37 | `def` | [stalkCongr](../../../../GeneralTopology/SheavesStalksPublic.lean/declarations/stalkcongr.md) | 406 | `declaration-track:81fee83da746c6fd5555423580eb4b57680aaa61d7290414b72b939d3bc1ea80` |
| 38 | `theorem` | [germ_ext](../../../../GeneralTopology/SheavesStalksPublic.lean/declarations/germ-ext.md) | 417 | `result-track:ea9e646150a6f5bd859d4b0fd00f4ded5afb42f4857b2a3e33f0ee8605cfd36b` |
| 39 | `theorem` | [exists_germ_eq](../../../../GeneralTopology/SheavesStalksPublic.lean/declarations/exists-germ-eq.md) | 431 | `result-track:646db8ad1fb7bc82d6effc371fa113f7df50d295abe827be5795b0705ccf371d` |
| 40 | `theorem` | [exists_le_germ_eq](../../../../GeneralTopology/SheavesStalksPublic.lean/declarations/exists-le-germ-eq.md) | 445 | `result-track:8932f5984e805f8841acd90caafbd63f7ae2205cb79bb1ea50a511e9673ecd8d` |
| 41 | `theorem` | [germ_eq](../../../../GeneralTopology/SheavesStalksPublic.lean/declarations/germ-eq.md) | 454 | `result-track:ecdba31fdb17b560e9d59e56b41dde5c29d5bf93d5d1e78b9727b99fa263cba3` |
| 42 | `theorem` | [stalkFunctor_map_injective_of_app_injective](../../../../GeneralTopology/SheavesStalksPublic.lean/declarations/stalkfunctor-map-injective-of-app-injective.md) | 462 | `result-track:5a9e51f78d5f923c41ae880c824349a488b547777dc86564d12c6f1fb5924a67` |
| 43 | `lemma` | [exists_mem_germ_eq_of_isBasis](../../../../GeneralTopology/SheavesStalksPublic.lean/declarations/exists-mem-germ-eq-of-isbasis.md) | 482 | `result-track:4e05e45b480afb9fe72c5a5d10279449a234c338ac570e81ef3c36a2fae2e8cf` |
| 44 | `lemma` | [germ_eq_of_isBasis](../../../../GeneralTopology/SheavesStalksPublic.lean/declarations/germ-eq-of-isbasis.md) | 489 | `result-track:17d71cd0a28d1d522e194064778329b9d23f628bb21e0417b6dcf6c1ef70ba8f` |
| 45 | `lemma` | [stalkFunctor_map_injective_of_isBasis](../../../../GeneralTopology/SheavesStalksPublic.lean/declarations/stalkfunctor-map-injective-of-isbasis.md) | 500 | `result-track:76792b04d55dd7ee3ae8b73fa17b42e452e8459d0c8a55c98820bc23ed1146e1` |
| 46 | `theorem` | [section_ext](../../../../GeneralTopology/SheavesStalksPublic.lean/declarations/section-ext.md) | 518 | `result-track:8a7ce53ccbbf4c613d1009074e31e9dd224ef4af66c54ab8f8af6b9c9565aac2` |
| 47 | `theorem` | [app_injective_of_stalkFunctor_map_injective](../../../../GeneralTopology/SheavesStalksPublic.lean/declarations/app-injective-of-stalkfunctor-map-injective.md) | 538 | `result-track:d67fab43de792878968fd6434ec7b20ca830d6fbbc8f6e5187b95a0e703c8608` |
| 48 | `theorem` | [app_injective_iff_stalkFunctor_map_injective](../../../../GeneralTopology/SheavesStalksPublic.lean/declarations/app-injective-iff-stalkfunctor-map-injective.md) | 544 | `result-track:eae56e86994adaed6339cf7f1b7e489ec18553f178e7142ee63bc594f79cc4f2` |
| 49 | `instance` | [stalkFunctor_preserves_mono](../../../../GeneralTopology/SheavesStalksPublic.lean/declarations/stalkfunctor-preserves-mono.md) | 552 | `declaration-track:5229396112e9098e559093d9ab5f7a39c7b34e018fca77d605294d0aa2c0c0e0` |
| 50 | `theorem` | [stalk_mono_of_mono](../../../../GeneralTopology/SheavesStalksPublic.lean/declarations/stalk-mono-of-mono.md) | 565 | `result-track:11184ec8d39157a7c447ae5d4fdc76eba5fc237ed0c037704c9d5df4a73ff11e` |
| 51 | `theorem` | [mono_of_stalk_mono](../../../../GeneralTopology/SheavesStalksPublic.lean/declarations/mono-of-stalk-mono.md) | 570 | `result-track:272c5440f323d9b2d7700642bab8b6835f90fea7bf9306a31ec96caba48de73b` |
| 52 | `theorem` | [mono_iff_stalk_mono](../../../../GeneralTopology/SheavesStalksPublic.lean/declarations/mono-iff-stalk-mono.md) | 580 | `result-track:dd000d23c43dbf5cf794ce845fc003691776c9805a61e5dbd2bb37b555cb65a9` |
| 53 | `theorem` | [app_surjective_of_injective_of_locally_surjective](../../../../GeneralTopology/SheavesStalksPublic.lean/declarations/app-surjective-of-injective-of-locally-surjective.md) | 588 | `result-track:dacabac6847d43bc966871c20dee49f151a360f011ce5b290090527510e83135` |
| 54 | `theorem` | [app_surjective_of_stalkFunctor_map_bijective](../../../../GeneralTopology/SheavesStalksPublic.lean/declarations/app-surjective-of-stalkfunctor-map-bijective.md) | 624 | `result-track:63529b035ef8ebe8757785a4b7728dbfc5206d14ac20f839a3e93acfe4b54a00` |
| 55 | `theorem` | [app_bijective_of_stalkFunctor_map_bijective](../../../../GeneralTopology/SheavesStalksPublic.lean/declarations/app-bijective-of-stalkfunctor-map-bijective.md) | 642 | `result-track:ee3d6e3e2a777fe593b0add9dc76e34771a85cd596a93fde9ad4a87b603f9ca1` |
| 56 | `theorem` | [app_isIso_of_stalkFunctor_map_iso](../../../../GeneralTopology/SheavesStalksPublic.lean/declarations/app-isiso-of-stalkfunctor-map-iso.md) | 649 | `result-track:e78852f5e55b97886006a016c30b873d0c394f87b15724651e6585dc74eddb13` |
| 57 | `theorem` | [isIso_of_stalkFunctor_map_iso](../../../../GeneralTopology/SheavesStalksPublic.lean/declarations/isiso-of-stalkfunctor-map-iso.md) | 667 | `result-track:ddfa433cf1c2075d6b7e1fa3ad1ef51606c484400a7839f88974168d6a5f0149` |
| 58 | `theorem` | [isIso_iff_stalkFunctor_map_iso](../../../../GeneralTopology/SheavesStalksPublic.lean/declarations/isiso-iff-stalkfunctor-map-iso.md) | 683 | `result-track:9dfea47124df14dfa6b61d81e751010216ea337090dee5568a59c389f2b40838` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=1c453850a2f7d01d77604afe696aa33a8c7b3cac9bb189782da40d711c2b6944 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Stalks/Variant83700ffdae1fefc720d03ff0da6877837de2fc3f9cb85d87b2b09d928bcd423b.lean","GRWTSK/_verification/specifications/CategoriesAndHomologicalAlgebra/CategoryTheory/Stalks/Variant83700ffdae1fefc720d03ff0da6877837de2fc3f9cb85d87b2b09d928bcd423b.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
