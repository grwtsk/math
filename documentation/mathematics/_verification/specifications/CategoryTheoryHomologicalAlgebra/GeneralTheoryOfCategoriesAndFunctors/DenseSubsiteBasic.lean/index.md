# Verification target: Dense Subsite Basic

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4b212f27853154d34f4bf2084c6eb6a8933e0d90",
  "lexical_observation_count": 51,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant00b2b4b6cb14e542c6ccc2d5ac970a2a2e1237b5f806315a95d113df49260b36.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/DenseSubsiteBasic.lean/index.md) · [Full source](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/DenseSubsiteBasic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4b212f27853154d34f4bf2084c6eb6a8933e0d90`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant00b2b4b6cb14e542c6ccc2d5ac970a2a2e1237b5f806315a95d113df49260b36.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant00b2b4b6cb14e542c6ccc2d5ac970a2a2e1237b5f806315a95d113df49260b36.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Sites.Sheaf` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Sites.CoverLifting` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Sites.CoverPreserving` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Adjunction.FullyFaithful` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Sites.LocallyFullyFaithful` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [Presieve.CoverByImageStructure](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/DenseSubsiteBasic.lean/declarations/presieve-coverbyimagestructure.md) | 51 | `declaration-track:023a2939533302fce4d74e48aa37ab226713c1a2909a12a8c169664765f1e8be` |
| 2 | `def` | [Presieve.coverByImage](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/DenseSubsiteBasic.lean/declarations/presieve-coverbyimage.md) | 64 | `declaration-track:68ad07b0712c964de9f8de4a4e8b6f066415ecbd8c8c693cc5eec8e91e4d0b96` |
| 3 | `def` | [Sieve.coverByImage](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/DenseSubsiteBasic.lean/declarations/sieve-coverbyimage.md) | 70 | `declaration-track:ee786079f5d0efc7f0551fe5a38ecb09dc5323af0172e7b907232b815495bd80` |
| 4 | `theorem` | [Presieve.in_coverByImage](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/DenseSubsiteBasic.lean/declarations/presieve-in-coverbyimage.md) | 74 | `result-track:7a28377748e03ede614c9a79c17adaf34db7002dfc44e6d4a173e4e26e2722f2` |
| 5 | `class` | [Functor.IsCoverDense](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/DenseSubsiteBasic.lean/declarations/functor-iscoverdense.md) | 83 | `declaration-track:1b9e3425efd4dc68ec6f77a4a9fa30fdb068b55bab6d05fc3cb54b0aaa6d6012` |
| 6 | `lemma` | [Functor.is_cover_of_isCoverDense](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/DenseSubsiteBasic.lean/declarations/functor-is-cover-of-iscoverdense.md) | 86 | `result-track:2410f5ed3ad32ce1610624b38212b6f3194fa9e4b30d575c653fb52f1ebb73b3` |
| 7 | `lemma` | [Functor.isCoverDense_of_generate_singleton_functor_π_mem](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/DenseSubsiteBasic.lean/declarations/functor-iscoverdense-of-generate-singleton-functor-mem.md) | 90 | `result-track:58f22214c783e213f9ec983c597320d9468b53956b9fe4799de8e51817c11c40` |
| 8 | `theorem` | [ext](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/DenseSubsiteBasic.lean/declarations/ext.md) | 113 | `result-track:3cda46949304e1bc75dd5c9d469046062eba6990bcfc22eeb637772ad579af37` |
| 9 | `theorem` | [functorPullback_pushforward_covering](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/DenseSubsiteBasic.lean/declarations/functorpullback-pushforward-covering.md) | 122 | `result-track:56c833a09c2fec6e20b44052c87fa61d11aa0def21330ec706405c6f35086860` |
| 10 | `def` | [homOver](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/DenseSubsiteBasic.lean/declarations/homover.md) | 136 | `declaration-track:27f3947c9440d32bbaeb479432a273088e22d39c7d10ee8e6cd5d26ed0951273` |
| 11 | `def` | [isoOver](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/DenseSubsiteBasic.lean/declarations/isoover.md) | 144 | `declaration-track:956b15c8075afcbdb28fb24076ad61be273f99b08c929423a779499b458b810a` |
| 12 | `theorem` | [sheaf_eq_amalgamation](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/DenseSubsiteBasic.lean/declarations/sheaf-eq-amalgamation.md) | 148 | `result-track:378aa470d80e1c872f86dd50975ffb8b6234fbb79697aa7dc59460ed8ef437ff` |
| 13 | `theorem` | [naturality_apply](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/DenseSubsiteBasic.lean/declarations/naturality-apply.md) | 157 | `result-track:95aa337c7904354bec0a9686848afeb44b56df2aea2bda7730f080f5c1012fcb` |
| 14 | `theorem` | [naturality](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/DenseSubsiteBasic.lean/declarations/naturality.md) | 166 | `result-track:2a24a679b8bffd220d581ba6a67f668e9b35662eb86702a4a53b8d3473cabef5` |
| 15 | `def` | [pushforwardFamily](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/DenseSubsiteBasic.lean/declarations/pushforwardfamily.md) | 172 | `declaration-track:6785ad377fb5ad45b2709f15a95c0fee10f7398c6df9e44708e9a4237ffd1f6d` |
| 16 | `theorem` | [pushforwardFamily_def](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/DenseSubsiteBasic.lean/declarations/pushforwardfamily-def.md) | 176 | `result-track:dd0a8e3bb9f8bf386ed9ad06f83973197343ec9599db6e2c3230a61a4d5a7c4a` |
| 17 | `theorem` | [pushforwardFamily_apply](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/DenseSubsiteBasic.lean/declarations/pushforwardfamily-apply.md) | 181 | `result-track:d9967e5c571b49ea325c2c95fb352e97d9b43802c81d1c965acc0027103b6bbb` |
| 18 | `theorem` | [pushforwardFamily_compatible](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/DenseSubsiteBasic.lean/declarations/pushforwardfamily-compatible.md) | 192 | `result-track:9001d9a6468d88a371271920bbeea631e145dcc80cb9eab8f5c4222c4a05f33f` |
| 19 | `def` | [appHom](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/DenseSubsiteBasic.lean/declarations/apphom.md) | 210 | `declaration-track:648aeb14c0e361ffc3dddbe1e586e645d31f314fc75794d07d7409a7f65674e8` |
| 20 | `theorem` | [appHom_restrict](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/DenseSubsiteBasic.lean/declarations/apphom-restrict.md) | 216 | `result-track:3417b7a08ca49ffa34de8d10e84bdf16ae706fa26c5c0d8196c0e41364d2b81c` |
| 21 | `theorem` | [appHom_valid_glue](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/DenseSubsiteBasic.lean/declarations/apphom-valid-glue.md) | 223 | `result-track:7cb3b27268582f2e402d2d35be051982c2a5648915088b6c5d79005ddadd0980` |
| 22 | `def` | [appIso](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/DenseSubsiteBasic.lean/declarations/appiso.md) | 232 | `declaration-track:2248a71a6ce02be858d0c8e35f7ffc4b155fcfbbf25a37897e41850ae8d7a5fe` |
| 23 | `def` | [presheafHom](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/DenseSubsiteBasic.lean/declarations/presheafhom.md) | 253 | `declaration-track:132bac66d647e8eba97e3c7e3e0f81d50600f84dfa9602c9e46103aaba37b217` |
| 24 | `def` | [presheafIso](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/DenseSubsiteBasic.lean/declarations/presheafiso-source-edition-2.md) | 267 | `declaration-track:9c9850abdeae3f49a1daca376d99f60ae6784f528b29925d3b8e37b99629d48d` |
| 25 | `def` | [sheafIso](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/DenseSubsiteBasic.lean/declarations/sheafiso.md) | 277 | `declaration-track:68ed6769e8b90ad7cfdd6f63bce35b5ad5b18423b285c170633f8e9b7801abb3` |
| 26 | `def` | [sheafCoyonedaHom](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/DenseSubsiteBasic.lean/declarations/sheafcoyonedahom.md) | 296 | `declaration-track:d4bb97505a8545db5498cbc05ec9d4dd3ccb902ac171a41acde2ee0f489e2ec8` |
| 27 | `def` | [sheafYonedaHom](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/DenseSubsiteBasic.lean/declarations/sheafyonedahom.md) | 323 | `declaration-track:99a7adf9646c5cb6f341e597546b39bce5c7aba5993d9b82bcdf170710a3788f` |
| 28 | `def` | [sheafHom](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/DenseSubsiteBasic.lean/declarations/sheafhom.md) | 338 | `declaration-track:bf6a81525e434b579b894588b179c6857f13e279d6a248a91b4fbd746c9e0702` |
| 29 | `def` | [presheafIso](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/DenseSubsiteBasic.lean/declarations/presheafiso.md) | 349 | `declaration-track:152a9fea6369bb877bc2dbe488666450f239a23c9c121962171d1873e287098e` |
| 30 | `def` | [sheafIso](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/DenseSubsiteBasic.lean/declarations/sheafiso-source-edition-2.md) | 368 | `declaration-track:b5b1ac8b3bbc07b95bd062f405cb832c70e3292e607bf015cb683b7e2c57c304` |
| 31 | `theorem` | [sheafHom_restrict_eq](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/DenseSubsiteBasic.lean/declarations/sheafhom-restrict-eq.md) | 379 | `result-track:3eac7707b2fb3e08b3eca406c5b4b43ca22280d06f6d2d3f989beceda054f124` |
| 32 | `theorem` | [sheafHom_eq](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/DenseSubsiteBasic.lean/declarations/sheafhom-eq.md) | 408 | `result-track:5a0cffdd2b1b85b782a045cdc5566069eb75256197a74b25ed4a2a60d5ad8709` |
| 33 | `def` | [restrictHomEquivHom](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/DenseSubsiteBasic.lean/declarations/restricthomequivhom.md) | 427 | `declaration-track:e76dcd7ef6b370c85b23e15fd1e5e0fd95d5fc5ab3e3ef722188210d211a7fe3` |
| 34 | `theorem` | [iso_of_restrict_iso](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/DenseSubsiteBasic.lean/declarations/iso-of-restrict-iso.md) | 436 | `result-track:80a5e795025727f94d0bb684df2c9539639db294141493d7afaa433c65b0cc48` |
| 35 | `lemma` | [compatiblePreserving](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/DenseSubsiteBasic.lean/declarations/compatiblepreserving.md) | 445 | `result-track:3de45ee569d3b2824b07825beff721555e87c5a42751ac12aeeb51dfc8a17f60` |
| 36 | `lemma` | [isContinuous](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/DenseSubsiteBasic.lean/declarations/iscontinuous.md) | 458 | `result-track:53ce808450017fdb0ba38fd5c3125d44384b791cf82c5653c8603c2d1ac59c7e` |
| 37 | `instance` | [full_sheafPushforwardContinuous](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/DenseSubsiteBasic.lean/declarations/full-sheafpushforwardcontinuous.md) | 461 | `declaration-track:3c749cf6a64b0bd14716e7cd56a35f0d663c3485880fd30435f718aeb5bec2aa` |
| 38 | `instance` | [faithful_sheafPushforwardContinuous](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/DenseSubsiteBasic.lean/declarations/faithful-sheafpushforwardcontinuous.md) | 465 | `declaration-track:ca6d952dd6dc6071a8a731d29edba735d89c3af8aaeb6da226071d5280dab3ee` |
| 39 | `lemma` | [whiskerLeft_obj_map_bijective_of_isCoverDense](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/DenseSubsiteBasic.lean/declarations/whiskerleft-obj-map-bijective-of-iscoverdense.md) | 478 | `result-track:60c09a46143b1aeb3e649dee10c4219d385d0c92fc1c353311b5f860b9f68e67` |
| 40 | `class` | [IsDenseSubsite](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/DenseSubsiteBasic.lean/declarations/isdensesubsite.md) | 489 | `declaration-track:45ba7a544e1ef38435eb472fa96d953de6c54858b27ef953eb52b1c6afccb7db` |
| 41 | `lemma` | [functorPushforward_mem_iff](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/DenseSubsiteBasic.lean/declarations/functorpushforward-mem-iff.md) | 495 | `result-track:7430831f76765378a02a8caec8931f436b2117ed2da4b188f09db1c2f3188df2` |
| 42 | `lemma` | [isCoverDense](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/DenseSubsiteBasic.lean/declarations/iscoverdense.md) | 504 | `result-track:526ca1d18f5323105aa4052016f50439b8046079ebaa1f1badceb5dd4a12ba90` |
| 43 | `lemma` | [isLocallyFull](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/DenseSubsiteBasic.lean/declarations/islocallyfull.md) | 505 | `result-track:4854118d6c4700e27c84484f427c8c6b45741e61cb98ef947c36818c8c4e6972` |
| 44 | `lemma` | [isLocallyFaithful](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/DenseSubsiteBasic.lean/declarations/islocallyfaithful.md) | 506 | `result-track:07cfde347b9c572cc2a4243bf5ed0b0fc55af2b316f2a5d06807e43107fea7ce` |
| 45 | `lemma` | [coverPreserving](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/DenseSubsiteBasic.lean/declarations/coverpreserving.md) | 508 | `result-track:69c619a834fd30f24f26b93e365f743ab9477d02248bae2d26dfc476193bb9e0` |
| 46 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/DenseSubsiteBasic.lean/declarations/instance.md) | 511 | `declaration-track:15f7c985fd91a01d362aa623904b61c47e265a402a5b00b7d934d1d5750a05be` |
| 47 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/DenseSubsiteBasic.lean/declarations/instance-source-edition-2.md) | 517 | `declaration-track:a31fea00dff7f13150d92947299a7e0f33e3cf24507f42000e0d9c01ebd1ef23` |
| 48 | `instance` | [full_sheafPushforwardContinuous](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/DenseSubsiteBasic.lean/declarations/full-sheafpushforwardcontinuous-source-edition-2.md) | 524 | `declaration-track:af559dcb986105d7260b92c64a75ccc4e958b2777c3b8a7abf3e2d1c658047d4` |
| 49 | `instance` | [faithful_sheafPushforwardContinuous](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/DenseSubsiteBasic.lean/declarations/faithful-sheafpushforwardcontinuous-source-edition-2.md) | 530 | `declaration-track:e5c3c1677c1c33b33a5e7a48ae03824c9897505311a50d4e12989fec370a79a4` |
| 50 | `lemma` | [imageSieve_mem](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/DenseSubsiteBasic.lean/declarations/imagesieve-mem.md) | 536 | `result-track:1571a82782c1b612384e1b1b3b90ea9f30a41486e52433423414c26cf646feb3` |
| 51 | `lemma` | [equalizer_mem](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/DenseSubsiteBasic.lean/declarations/equalizer-mem.md) | 541 | `result-track:39458c8acee2466ed2041f358f9efee6de80c15a06315dc941c22b788aa4717b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=a4d502839ee7e1b05d6d7869f837c104520111040be60c6350440e7b4567b728 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant00b2b4b6cb14e542c6ccc2d5ac970a2a2e1237b5f806315a95d113df49260b36.lean","GRWTSK/_verification/specifications/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant00b2b4b6cb14e542c6ccc2d5ac970a2a2e1237b5f806315a95d113df49260b36.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
