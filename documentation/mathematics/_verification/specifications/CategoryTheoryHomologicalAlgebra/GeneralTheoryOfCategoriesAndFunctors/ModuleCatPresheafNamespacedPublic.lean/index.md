# Verification target: Module Cat Presheaf Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4d6e99bfe5fce8a5b2785963d1cab19164da408f",
  "lexical_observation_count": 59,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Presheaf/Variant598a4751ff411291652b8acce93c167e0eb8e86d42701bc7cc6764383ce86b54.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ModuleCatPresheafNamespacedPublic.lean/index.md) · [Full source](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ModuleCatPresheafNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4d6e99bfe5fce8a5b2785963d1cab19164da408f`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Presheaf/Variant598a4751ff411291652b8acce93c167e0eb8e86d42701bc7cc6764383ce86b54.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Presheaf/Variant598a4751ff411291652b8acce93c167e0eb8e86d42701bc7cc6764383ce86b54.lean.json)

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
| 1 | `structure` | [PresheafOfModules](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ModuleCatPresheafNamespacedPublic.lean/declarations/presheafofmodules.md) | 51 | `declaration-track:1c56b2e25f5f64067adc91355edbab215e6f0054025c073a3ccc2ecb16bc64a7` |
| 2 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ModuleCatPresheafNamespacedPublic.lean/declarations/instance-source-edition-11.md) | 72 | `declaration-track:e7d65693ef6de385764833d27c90f0647f41dacb2ed280ffb06ef625d1dc97e1` |
| 3 | `lemma` | [map_smul](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ModuleCatPresheafNamespacedPublic.lean/declarations/map-smul.md) | 78 | `result-track:e925034abb72d741e3f2b90f05e0b4860977d35891d5f44269669f6fccbb0e9f` |
| 4 | `lemma` | [congr_map_apply](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ModuleCatPresheafNamespacedPublic.lean/declarations/congr-map-apply.md) | 81 | `result-track:39c576b1aefc2158229bf7538981ef07e1eb30ae58908e8a341a5a10d1915a7d` |
| 5 | `lemma` | [map_comp_apply](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ModuleCatPresheafNamespacedPublic.lean/declarations/map-comp-apply.md) | 84 | `result-track:9b213e9327d0a990aaf1df4a59a8a593103bfb218df777429aaac386e76f8792` |
| 6 | `def` | [restrictₛₗ](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ModuleCatPresheafNamespacedPublic.lean/declarations/restrict.md) | 90 | `declaration-track:873e14f2134b143949698b4485fa340c4d25d69d9478ba2bce0d0cfdece9b07a` |
| 7 | `lemma` | [restrictₛₗ_apply](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ModuleCatPresheafNamespacedPublic.lean/declarations/restrict-apply.md) | 97 | `result-track:665f6206dece805fab8e6e5c52bb3629b6f57508365cd38bae09919ab4bb8f38` |
| 8 | `structure` | [Hom](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ModuleCatPresheafNamespacedPublic.lean/declarations/hom.md) | 103 | `declaration-track:9c51780ea4507b60b69414c6f0aebdf9d43d138bb988e33e8460d4fa6403e140` |
| 9 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ModuleCatPresheafNamespacedPublic.lean/declarations/instance-source-edition-4.md) | 112 | `declaration-track:719286a9791b75a9fd65ed8d974353c302086d1052d739f6341e81d1f60c24e4` |
| 10 | `lemma` | [hom_ext](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ModuleCatPresheafNamespacedPublic.lean/declarations/hom-ext.md) | 120 | `result-track:fca3bdf7ec2615958b02b9f18a598c713313ca722e1bfac18804e5178a7b976b` |
| 11 | `lemma` | [id_app](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ModuleCatPresheafNamespacedPublic.lean/declarations/id-app.md) | 124 | `result-track:04082aeb873910d6f7aeaafd7e3a49efa71aa9b32d95a156ade2c4850b91abc0` |
| 12 | `lemma` | [comp_app](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ModuleCatPresheafNamespacedPublic.lean/declarations/comp-app.md) | 128 | `result-track:edf44a2bbdfde93d686e02e1a7d49c8460008a81cbb86ca33fb02ef52611fe06` |
| 13 | `lemma` | [naturality_apply](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ModuleCatPresheafNamespacedPublic.lean/declarations/naturality-apply.md) | 132 | `result-track:63468bc75ac315e55ff1619adc7692a68277f76e3a30afd4df73d16f63bfcdd7` |
| 14 | `def` | [isoMk](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ModuleCatPresheafNamespacedPublic.lean/declarations/isomk.md) | 138 | `declaration-track:03d57de97acffebba6255986d2c286413590330a9052f2534239edbb0e68384d` |
| 15 | `def` | [presheaf](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ModuleCatPresheafNamespacedPublic.lean/declarations/presheaf.md) | 151 | `declaration-track:1b7de45a4f9c57d4f0351a7180b7aecbace9caea2e654fbe661cd907267569f1` |
| 16 | `lemma` | [presheaf_obj_coe](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ModuleCatPresheafNamespacedPublic.lean/declarations/presheaf-obj-coe.md) | 156 | `result-track:d4e26483d77316ad0b7a81247cfe112033a6a5c9e6070e5a76a88d88a702dd7e` |
| 17 | `lemma` | [presheaf_map_apply_coe](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ModuleCatPresheafNamespacedPublic.lean/declarations/presheaf-map-apply-coe.md) | 160 | `result-track:7892a1998ac34d7dd18f56d0cae100302f27d2d193f762ee9730d722d30a2f4e` |
| 18 | `lemma` | [smul_map](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ModuleCatPresheafNamespacedPublic.lean/declarations/smul-map.md) | 164 | `result-track:a187ca374fb749d6be43ee5a91808fbac3e6bd40e3df0deb522545f9b71df57d` |
| 19 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ModuleCatPresheafNamespacedPublic.lean/declarations/instance-source-edition-5.md) | 170 | `declaration-track:846e35183d2b3d164358f66e56328b92b6915ec4f50780377e842d80e85bd059` |
| 20 | `def` | [toPresheaf](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ModuleCatPresheafNamespacedPublic.lean/declarations/topresheaf.md) | 176 | `declaration-track:d8592da12ccc8e97422d3766227d508c21f01501e5082bd9e8e0cb362cb45b95` |
| 21 | `lemma` | [toPresheaf_obj_coe](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ModuleCatPresheafNamespacedPublic.lean/declarations/topresheaf-obj-coe.md) | 183 | `result-track:233a8d155a66718f024dd08b70bf5d79469c53ec541ed3662dd41b4358c1b867` |
| 22 | `lemma` | [toPresheaf_map_app_apply](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ModuleCatPresheafNamespacedPublic.lean/declarations/topresheaf-map-app-apply.md) | 187 | `result-track:a0fa6942639cdf4d92b2559264732f3c566c3b26f7b472366810f73bd9998fe6` |
| 23 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ModuleCatPresheafNamespacedPublic.lean/declarations/instance-source-edition-6.md) | 191 | `declaration-track:85acff19bbbf2e1083ce6a2b0c7457f71d6e7bb0633e45ff7cf26b4e74c724c6` |
| 24 | `def` | [ofPresheaf](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ModuleCatPresheafNamespacedPublic.lean/declarations/ofpresheaf.md) | 208 | `declaration-track:1535fae2ecfb035f77e59f7dc81bfb756ed900c5e17041f83f5404c385521069` |
| 25 | `lemma` | [ofPresheaf_presheaf](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ModuleCatPresheafNamespacedPublic.lean/declarations/ofpresheaf-presheaf.md) | 219 | `result-track:3f0f95c0fa75481bb2786336adcbd8b30d9ed909ea3d86c8bdbd298364caf24e` |
| 26 | `def` | [homMk](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ModuleCatPresheafNamespacedPublic.lean/declarations/hommk.md) | 228 | `declaration-track:4f215aec7b3eb8ba379e4d2319bfb3761d81c67ea21a1bb31f3d74b74ddd2d11` |
| 27 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ModuleCatPresheafNamespacedPublic.lean/declarations/instance.md) | 239 | `declaration-track:176f079910ca6af1335bc02a73727e0426df56be90f665a866a34ada981f4f73` |
| 28 | `lemma` | [zero_app](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ModuleCatPresheafNamespacedPublic.lean/declarations/zero-app.md) | 243 | `result-track:9c68bc5dbd0569580475345d625b4220e513ab0f0a2fdba360003beda7c1e5b3` |
| 29 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ModuleCatPresheafNamespacedPublic.lean/declarations/instance-source-edition-12.md) | 245 | `declaration-track:f34d1b97a060509f9dea118bf59a44401ccb50e3fa8e95c5bef7873e978331cf` |
| 30 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ModuleCatPresheafNamespacedPublic.lean/declarations/instance-source-edition-9.md) | 252 | `declaration-track:ba5ab248dd9a663a76a2e51ef7759330ba784a483b6e7b954049733bed239e2b` |
| 31 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ModuleCatPresheafNamespacedPublic.lean/declarations/instance-source-edition-8.md) | 259 | `declaration-track:93d74144933a4feb2cfbaf59d3e9a5d3ebfb86301a8b6507cc1358892185d1c5` |
| 32 | `lemma` | [neg_app](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ModuleCatPresheafNamespacedPublic.lean/declarations/neg-app.md) | 266 | `result-track:63d0724985d51ff46421460da02a2cc83602142c523b645c3851ee3bd0aa778d` |
| 33 | `lemma` | [add_app](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ModuleCatPresheafNamespacedPublic.lean/declarations/add-app.md) | 267 | `result-track:8c75c179dab9d789815e35d0f3ef94fd2a3b60288b8bf00883bf4862ce853d76` |
| 34 | `lemma` | [sub_app](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ModuleCatPresheafNamespacedPublic.lean/declarations/sub-app.md) | 268 | `result-track:10f936f0331377914980aa18d3435fa6748476a6c4a979fb085f030d40d9a529` |
| 35 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ModuleCatPresheafNamespacedPublic.lean/declarations/instance-source-edition-2.md) | 270 | `declaration-track:38889af62088c6e058d5e68e783d546a04894887e252ed05d0c600a9b6d651c0` |
| 36 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ModuleCatPresheafNamespacedPublic.lean/declarations/instance-source-edition-10.md) | 280 | `declaration-track:ba6f36a312b02151df332ced5a34986c11c1c33119a249f4f23b99e9293030d4` |
| 37 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ModuleCatPresheafNamespacedPublic.lean/declarations/instance-source-edition-7.md) | 282 | `declaration-track:8e443c8225e45684d802a6fd98f0d0c4ced78327401d3915d884cbbbc960e7a1` |
| 38 | `lemma` | [zsmul_app](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ModuleCatPresheafNamespacedPublic.lean/declarations/zsmul-app.md) | 284 | `result-track:dd3a0c391b3b8c6ca86aad6d724c575eacde135e7baab1856ca583c42f12ed7c` |
| 39 | `def` | [evaluation](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ModuleCatPresheafNamespacedPublic.lean/declarations/evaluation.md) | 295 | `declaration-track:4f2b64e76b2b693269a7c19de49990d6dfa1a57654e8bdf773e923e3a5c21192` |
| 40 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ModuleCatPresheafNamespacedPublic.lean/declarations/instance-source-edition-3.md) | 299 | `declaration-track:60be1fedc6f0a94e3a3b6da64a70b8d62acf3ea1ad9129737909214dd3b5a1bf` |
| 41 | `def` | [restriction](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ModuleCatPresheafNamespacedPublic.lean/declarations/restriction.md) | 305 | `declaration-track:75f7a7b41aa8f5df0551e573c5201b747238c420a58371deace452dae4572af8` |
| 42 | `def` | [unit](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ModuleCatPresheafNamespacedPublic.lean/declarations/unit.md) | 311 | `declaration-track:3dfefa572b74b5f175087c4489dee6e658c3e88f3bafc7030bc3088a2e97abf2` |
| 43 | `lemma` | [unit_map_one](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ModuleCatPresheafNamespacedPublic.lean/declarations/unit-map-one.md) | 321 | `result-track:7bc9d13f105204975439c23a65854b35ec3529121c32854c699613166f47b82b` |
| 44 | `def` | [sections](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ModuleCatPresheafNamespacedPublic.lean/declarations/sections.md) | 327 | `declaration-track:8b085c72c16e94bdbc0726d083b38522384b5fed95c75d5b91c0926f92fc812a` |
| 45 | `abbrev` | [sections.eval](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ModuleCatPresheafNamespacedPublic.lean/declarations/sections-eval.md) | 331 | `declaration-track:24bf20012a128eec3def4f150d8f843cd27c4cc109804c6998c1abffca6b9a14` |
| 46 | `lemma` | [sections_property](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ModuleCatPresheafNamespacedPublic.lean/declarations/sections-property.md) | 334 | `result-track:b47dc93d3f18045b7b4d295fd60e3431fb34f9a6533527e3115119cc4f4554a1` |
| 47 | `def` | [sectionsMk](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ModuleCatPresheafNamespacedPublic.lean/declarations/sectionsmk.md) | 339 | `declaration-track:ebf6a03b5ad0f7ea7229f33f54f19da7222b446a374379d74ece45263f0004c6` |
| 48 | `lemma` | [sections_ext](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ModuleCatPresheafNamespacedPublic.lean/declarations/sections-ext.md) | 345 | `result-track:a40a9eff8e0cd3caeb740106bb9cefeb77e0c0925500acb9bfb9f9282c2b3945` |
| 49 | `def` | [sectionsMap](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ModuleCatPresheafNamespacedPublic.lean/declarations/sectionsmap.md) | 352 | `declaration-track:d9a702d9ef290b1936c9b19458814318bb397ce45cd530405f3b1c687de805d2` |
| 50 | `lemma` | [sectionsMap_comp](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ModuleCatPresheafNamespacedPublic.lean/declarations/sectionsmap-comp.md) | 357 | `result-track:5baadb91b17a6f969d336c12dcb5e239a86f5fae09d470e8cebe2ba3ca7a9ca8` |
| 51 | `lemma` | [sectionsMap_id](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ModuleCatPresheafNamespacedPublic.lean/declarations/sectionsmap-id.md) | 361 | `result-track:d87e2fb7d9dfa2d3590ac244466903b7b3a2aac87c0c3907c29291d8a373fec5` |
| 52 | `def` | [unitHomEquiv](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ModuleCatPresheafNamespacedPublic.lean/declarations/unithomequiv.md) | 368 | `declaration-track:500125970e625555523c7a2305f77fa418a916e2b45472da9cf1de501a2fd690` |
| 53 | `abbrev` | [forgetToPresheafModuleCatObjObj](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ModuleCatPresheafNamespacedPublic.lean/declarations/forgettopresheafmodulecatobjobj.md) | 403 | `declaration-track:932681dd8c768f12ee935c797f8f75827e7289a6dd34606be60875ac3e3b61a3` |
| 54 | `lemma` | [forgetToPresheafModuleCatObjObj_coe](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ModuleCatPresheafNamespacedPublic.lean/declarations/forgettopresheafmodulecatobjobj-coe.md) | 408 | `result-track:c185af86f96050bb7253484635bd8ebb065a73c69a169d98256874554d1322bc` |
| 55 | `def` | [forgetToPresheafModuleCatObjMap](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ModuleCatPresheafNamespacedPublic.lean/declarations/forgettopresheafmodulecatobjmap.md) | 413 | `declaration-track:5ddf7440fe9115820b3824a522904fa7960578d0616632606c4767cb4fac8ef5` |
| 56 | `lemma` | [forgetToPresheafModuleCatObjMap_apply](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ModuleCatPresheafNamespacedPublic.lean/declarations/forgettopresheafmodulecatobjmap-apply.md) | 427 | `result-track:c183dc6d0a5aa8a164f4cd1f8c674a2671dcb1fd3fd2c7d87d79967a8af9d336` |
| 57 | `def` | [forgetToPresheafModuleCatObj](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ModuleCatPresheafNamespacedPublic.lean/declarations/forgettopresheafmodulecatobj.md) | 440 | `declaration-track:42e959223d80f21e02932dcbe379b59d13780a666f76101338f9cf9bf3fb27c5` |
| 58 | `def` | [forgetToPresheafModuleCatMap](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ModuleCatPresheafNamespacedPublic.lean/declarations/forgettopresheafmodulecatmap.md) | 457 | `declaration-track:0323b822c3439ff85f5e459361f8f9e4cf628c6e9b509b9339b2f870cb17fd25` |
| 59 | `def` | [forgetToPresheafModuleCat](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ModuleCatPresheafNamespacedPublic.lean/declarations/forgettopresheafmodulecat.md) | 479 | `declaration-track:2c06380b61f4309f888d17d371b8ab2133061fb470007fcbdc36fb2f2d01627a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=4e7c689cad5ed43d12ed408d007cb4e2e70243df03ae1856c0ece800e9857bf8 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Presheaf/Variant598a4751ff411291652b8acce93c167e0eb8e86d42701bc7cc6764383ce86b54.lean","GRWTSK/_verification/specifications/CategoriesAndHomologicalAlgebra/CategoryTheory/Presheaf/Variant598a4751ff411291652b8acce93c167e0eb8e86d42701bc7cc6764383ce86b54.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
