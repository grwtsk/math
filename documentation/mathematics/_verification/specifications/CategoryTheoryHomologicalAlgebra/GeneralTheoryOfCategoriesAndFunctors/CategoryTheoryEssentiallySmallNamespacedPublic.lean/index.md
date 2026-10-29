# Verification target: Category Theory Essentially Small Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "fb78ea32526e1c8f100d7dfcea2273c7fa2aceb4",
  "lexical_observation_count": 48,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/EssentiallySmall/Variant1519c35afc3be323a73bd4fa8b9e15a3233300c3237b3a3af84a2d1e68dd2e91.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryEssentiallySmallNamespacedPublic.lean/index.md) · [Full source](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryEssentiallySmallNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `fb78ea32526e1c8f100d7dfcea2273c7fa2aceb4`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/EssentiallySmall/Variant1519c35afc3be323a73bd4fa8b9e15a3233300c3237b3a3af84a2d1e68dd2e91.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/EssentiallySmall/Variant1519c35afc3be323a73bd4fa8b9e15a3233300c3237b3a3af84a2d1e68dd2e91.lean.json)

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
| 1 | `class` | [EssentiallySmall](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryEssentiallySmallNamespacedPublic.lean/declarations/essentiallysmall.md) | 52 | `declaration-track:442f9868930ef2a1e2a76606b6ca62b139d3b0e8c997c6aba1b5d10352f4a143` |
| 2 | `theorem` | [EssentiallySmall.mk'](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryEssentiallySmallNamespacedPublic.lean/declarations/essentiallysmall-mk.md) | 57 | `result-track:b8537b1be3a85c9ffc2da89df134033ffa978c204f93026bf66db3878f362d32` |
| 3 | `def` | [SmallModel](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryEssentiallySmallNamespacedPublic.lean/declarations/smallmodel.md) | 64 | `declaration-track:2f241662030847e0ad4372d6f14ee5a03677670f96c943ad93e62fd4e3e1574b` |
| 4 | `instance` | [smallCategorySmallModel](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryEssentiallySmallNamespacedPublic.lean/declarations/smallcategorysmallmodel.md) | 67 | `declaration-track:ff3b9f9879883a46369a8247baf95e67d627b597b3f0ca20dd0b2cffb737f9ad` |
| 5 | `def` | [equivSmallModel](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryEssentiallySmallNamespacedPublic.lean/declarations/equivsmallmodel.md) | 74 | `declaration-track:50c423b43d49056867d6d449e84190085591601b64f86e13d07e8288df2bfa85` |
| 6 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryEssentiallySmallNamespacedPublic.lean/declarations/instance-source-edition-16.md) | 79 | `declaration-track:d558b438403fe098494bb447e3a67d83ad14abed20ca4bf37128219c6afa7efc` |
| 7 | `theorem` | [essentiallySmall_congr](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryEssentiallySmallNamespacedPublic.lean/declarations/essentiallysmall-congr.md) | 82 | `result-track:4fbf575ddb8ed3ccf6ecf82a6827ee50faee68e9da89f7a1dc926f4d2789f180` |
| 8 | `theorem` | [Discrete.essentiallySmallOfSmall](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryEssentiallySmallNamespacedPublic.lean/declarations/discrete-essentiallysmallofsmall.md) | 90 | `result-track:874335e181ecbe23d9dff41e5c11573534523fcd651d6ba639daf76b9ca4fe64` |
| 9 | `theorem` | [essentiallySmallSelf](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryEssentiallySmallNamespacedPublic.lean/declarations/essentiallysmallself.md) | 94 | `result-track:1d4e396f435c4f815292042d61a2bf24a60afe4674d149fe6e50240274dbae3c` |
| 10 | `class` | [LocallySmall](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryEssentiallySmallNamespacedPublic.lean/declarations/locallysmall.md) | 103 | `declaration-track:ee1baee71d7e982f1f9f5720e8d54848fca334c88ae67dbd2ccc5a55c1e57af9` |
| 11 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryEssentiallySmallNamespacedPublic.lean/declarations/instance-source-edition-10.md) | 107 | `declaration-track:a36039b4958cfe13b27e81302d2876b17e2a4518f5d4042b99231356f4a9ae24` |
| 12 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryEssentiallySmallNamespacedPublic.lean/declarations/instance-source-edition-9.md) | 110 | `declaration-track:9957eb601fb278fc78e25dc09c51ad3904f4b3a9e5191b0de81d6cd38151b2e5` |
| 13 | `theorem` | [locallySmall_of_faithful](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryEssentiallySmallNamespacedPublic.lean/declarations/locallysmall-of-faithful.md) | 113 | `result-track:27c6496c5a6c17d4bf47101bbe12ae65a904d22ccb4e2e2557fdcee566e0210c` |
| 14 | `theorem` | [locallySmall_congr](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryEssentiallySmallNamespacedPublic.lean/declarations/locallysmall-congr.md) | 117 | `result-track:94531667fee8894eac5272d2b48b0f01374eadfc710d981e6e599ce823a5d1d7` |
| 15 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryEssentiallySmallNamespacedPublic.lean/declarations/instance-source-edition-11.md) | 121 | `declaration-track:a3ac7b6b34613a30e1e2080583539141935e62ee2c159ad79faa1af4e1a176e8` |
| 16 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryEssentiallySmallNamespacedPublic.lean/declarations/instance-source-edition-13.md) | 125 | `declaration-track:c588ff4e40f9da0e604e2fa7bb2176848a901cdf71d842605efd8aa858aa8578` |
| 17 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryEssentiallySmallNamespacedPublic.lean/declarations/instance-source-edition-4.md) | 128 | `declaration-track:313fe36038354876c9dba27a078fa991e4b1acab5088874ca79be806fa43ccf4` |
| 18 | `theorem` | [locallySmall_max](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryEssentiallySmallNamespacedPublic.lean/declarations/locallysmall-max.md) | 131 | `result-track:996576f2ba551bd9ee6c2d14cf9b16175d1c0228c6fc65c5885db3cb313042d6` |
| 19 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryEssentiallySmallNamespacedPublic.lean/declarations/instance-source-edition-18.md) | 134 | `declaration-track:e546d1ecd0b5d9fe700f24ee66743a3312394587859f7026af70f3e7d53b673d` |
| 20 | `def` | [ShrinkHoms](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryEssentiallySmallNamespacedPublic.lean/declarations/shrinkhoms.md) | 142 | `declaration-track:412bc80bcde14449b3a6721d56f8b00eb7d12c3e6e9a2b8584569b29fe0221c5` |
| 21 | `def` | [toShrinkHoms](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryEssentiallySmallNamespacedPublic.lean/declarations/toshrinkhoms.md) | 153 | `declaration-track:2d44b34dc6c44f222b173a18e382259116c3269bc53bbc61e4b3bda389a11cf7` |
| 22 | `def` | [fromShrinkHoms](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryEssentiallySmallNamespacedPublic.lean/declarations/fromshrinkhoms.md) | 157 | `declaration-track:12b2d7c899840073dba39707e1371e93295678c05a0f70394e070fa315767980` |
| 23 | `theorem` | [to_from](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryEssentiallySmallNamespacedPublic.lean/declarations/to-from.md) | 161 | `result-track:6c7ce336d9173673561b326653c27b143ded0ec80b05485305ebc2f91dc675b8` |
| 24 | `theorem` | [from_to](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryEssentiallySmallNamespacedPublic.lean/declarations/from-to.md) | 165 | `result-track:33db56bf4317c3aba2f78bf63ddcdc39c57587c6dee69501777967fe1bb68636` |
| 25 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryEssentiallySmallNamespacedPublic.lean/declarations/instance-source-edition-12.md) | 173 | `declaration-track:ae3175695704d228b2fbc7acad5b23fbe2d6850a71598e95a2828e870436ce1f` |
| 26 | `def` | [functor](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryEssentiallySmallNamespacedPublic.lean/declarations/functor.md) | 181 | `declaration-track:d9e17b4a982a8590b61504d12b71076b3d836fb3316ed714107b9801fcc8f80d` |
| 27 | `def` | [inverse](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryEssentiallySmallNamespacedPublic.lean/declarations/inverse.md) | 187 | `declaration-track:db0e5ba9a5cd4f0c3d435219fab07a102ecc20a48ecac3ed7d5532e0d885831b` |
| 28 | `def` | [equivalence](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryEssentiallySmallNamespacedPublic.lean/declarations/equivalence-source-edition-2.md) | 196 | `declaration-track:daa7cc188809a17bcbaeca4ecd24d5197ff73ef9b4bc45cba84cd00c7171c48b` |
| 29 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryEssentiallySmallNamespacedPublic.lean/declarations/instance-source-edition-17.md) | 202 | `declaration-track:def0a35cebd8a154309f81ea9fe679337df3955029e77098dd23caca1f8c5888` |
| 30 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryEssentiallySmallNamespacedPublic.lean/declarations/instance-source-edition-19.md) | 203 | `declaration-track:fd75db2cfb935c3cabb863f114cd28b592461fe65b8675c33a55a785abb9d4a6` |
| 31 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryEssentiallySmallNamespacedPublic.lean/declarations/instance-source-edition-15.md) | 205 | `declaration-track:c8cbc92fd2e91c19338921d04509a744fc188ec433b3c30bfb6e8296eb718bc3` |
| 32 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryEssentiallySmallNamespacedPublic.lean/declarations/instance-source-edition-3.md) | 209 | `declaration-track:31239b54fffa9f6aba5000453f3480ffa4ee3064e3b39ee5aa1d9c840347ee1e` |
| 33 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryEssentiallySmallNamespacedPublic.lean/declarations/instance-source-edition-5.md) | 220 | `declaration-track:5cc4797270c97194738785963913e8f7b5e48337a6f903c89379ef331cb4ce63` |
| 34 | `def` | [equivalence](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryEssentiallySmallNamespacedPublic.lean/declarations/equivalence.md) | 224 | `declaration-track:822b59156d9eeab1029a2a3443131d2ae343cae2795b2a0bf30b15d0e3dad159` |
| 35 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryEssentiallySmallNamespacedPublic.lean/declarations/instance-source-edition-14.md) | 227 | `declaration-track:c77022ac2b778fd3c26f6afc52b5913f507f05eb021eb30e4d89534629794a47` |
| 36 | `theorem` | [essentiallySmall_iff](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryEssentiallySmallNamespacedPublic.lean/declarations/essentiallysmall-iff.md) | 237 | `result-track:d81943a9b555508c95ed13fe847ebc8aba1013ca12338fc71c7dc3a356c0b73b` |
| 37 | `instance` | [essentiallySmall_of_small_of_locallySmall](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryEssentiallySmallNamespacedPublic.lean/declarations/essentiallysmall-of-small-of-locallysmall.md) | 254 | `declaration-track:6bfebe6e6d19f578bfe4a80e1341688c7481b1de3694b4b9ef17006baf38ffcc` |
| 38 | `example` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryEssentiallySmallNamespacedPublic.lean/declarations/example.md) | 258 | `declaration-track:f6d60426660e90ff72e7746f661101c2beeb3727645cd29f5d9ffa0263997362` |
| 39 | `instance` | [small_skeleton_of_essentiallySmall](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryEssentiallySmallNamespacedPublic.lean/declarations/small-skeleton-of-essentiallysmall.md) | 260 | `declaration-track:a34db3c110614be9e17b94c863998519cbfb6d8d620f47ee2f4fd24d33734fed` |
| 40 | `theorem` | [essentiallySmall_of_fully_faithful](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryEssentiallySmallNamespacedPublic.lean/declarations/essentiallysmall-of-fully-faithful.md) | 264 | `result-track:a404234392eaf77783cb2b5bf72881c54cf1c1b2a1a98f32ec8b602596163561` |
| 41 | `instance` | [locallySmall_fullSubcategory](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryEssentiallySmallNamespacedPublic.lean/declarations/locallysmall-fullsubcategory.md) | 271 | `declaration-track:7682c1fb955176480d7cf51ac24b9685755316948b775e84ee399e73f14704d2` |
| 42 | `instance` | [essentiallySmall_fullSubcategory_mem](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryEssentiallySmallNamespacedPublic.lean/declarations/essentiallysmall-fullsubcategory-mem.md) | 275 | `declaration-track:14b58eeb8bcee191bfcf2d5aeaf60fea5d3813c5f4c0eff0198d91f14bbbce48` |
| 43 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryEssentiallySmallNamespacedPublic.lean/declarations/instance-source-edition-6.md) | 285 | `declaration-track:865deeb695572edea3caadec8e8eef3fa277d1b5f90aac8c423ad97751cd2804` |
| 44 | `theorem` | [essentiallySmall_iff_of_thin](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryEssentiallySmallNamespacedPublic.lean/declarations/essentiallysmall-iff-of-thin.md) | 291 | `result-track:2cdb07419265450e75ab4ece133bb112d7a2d754b60ffe5832798cebb1f401bd` |
| 45 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryEssentiallySmallNamespacedPublic.lean/declarations/instance-source-edition-2.md) | 295 | `declaration-track:2b5b6535b4483bd949b3baf5b7fd5d9830ee70b9b4e44ff1248640fd556beeab` |
| 46 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryEssentiallySmallNamespacedPublic.lean/declarations/instance-source-edition-7.md) | 297 | `declaration-track:8a86d74a255d07b6fe5456122d07be2e33201e8b3cf5fa3cad916e958de8d890` |
| 47 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryEssentiallySmallNamespacedPublic.lean/declarations/instance-source-edition-8.md) | 308 | `declaration-track:95dad06c533aa48caf5245fc4bb9990963e91d3367454fd1a50ea0dbc1087b5f` |
| 48 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryEssentiallySmallNamespacedPublic.lean/declarations/instance.md) | 318 | `declaration-track:00500e2068fe7010e83cee058f2d55d6fdc383c2482fa72d0ec1d4ad0b601dc4` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=1b7bc4e5f1eea1eab3f9d44276bf2ef5fe925d3535215ed262420d07dbe6c8d5 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/EssentiallySmall/Variant1519c35afc3be323a73bd4fa8b9e15a3233300c3237b3a3af84a2d1e68dd2e91.lean","GRWTSK/_verification/specifications/CategoriesAndHomologicalAlgebra/CategoryTheory/EssentiallySmall/Variant1519c35afc3be323a73bd4fa8b9e15a3233300c3237b3a3af84a2d1e68dd2e91.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
