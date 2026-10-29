# Verification target: Has Kan Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9818efbd4da005c88cb4ae916705b6f3562d0f75",
  "lexical_observation_count": 52,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/HasKan/Variant6c5ab07a9627994310edaaab59c02f1bcb7516950dee9706503d9fcdb079ed06.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/HasKanNamespaced.lean/index.md) · [Full source](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/HasKanNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9818efbd4da005c88cb4ae916705b6f3562d0f75`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/HasKan/Variant6c5ab07a9627994310edaaab59c02f1bcb7516950dee9706503d9fcdb079ed06.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/HasKan/Variant6c5ab07a9627994310edaaab59c02f1bcb7516950dee9706503d9fcdb079ed06.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Limits.Shapes.Terminal` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Bicategory.Kan.IsKan` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [HasLeftKanExtension](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/HasKanNamespaced.lean/declarations/hasleftkanextension.md) | 59 | `declaration-track:9307b49485e56f901875e743381e7f15b68ff10bb717061472b5a5f150bdcd7a` |
| 2 | `theorem` | [LeftExtension.IsKan.hasLeftKanExtension](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/HasKanNamespaced.lean/declarations/leftextension-iskan-hasleftkanextension.md) | 62 | `result-track:a3eeb3cfa4ed122ba2c32b4f5fc5fa73beebb8c450c2d74e9259fbb07d404a1b` |
| 3 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/HasKanNamespaced.lean/declarations/instance-source-edition-3.md) | 66 | `declaration-track:22d75746aceb927b3b6fec05a1a7e367545189158d87abfbf0700277d1ab3d27` |
| 4 | `def` | [lanLeftExtension](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/HasKanNamespaced.lean/declarations/lanleftextension.md) | 70 | `declaration-track:28a447eeeeab0c38d5e70423717c3047287acde8c72d1f9df0aa5815b9555970` |
| 5 | `def` | [lan](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/HasKanNamespaced.lean/declarations/lan.md) | 74 | `declaration-track:c55812e54c7cf860800e5302e17f274bb67c6052d8680d717770724dc48b0e64` |
| 6 | `theorem` | [lanLeftExtension_extension](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/HasKanNamespaced.lean/declarations/lanleftextension-extension.md) | 91 | `result-track:8c185185eaf8e797ab875ac15e89ed608a77152d1d384b2cb51600d228ccceb2` |
| 7 | `def` | [lanUnit](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/HasKanNamespaced.lean/declarations/lanunit.md) | 95 | `declaration-track:1dfa3fbfbae346bce7f7dc67195c0b8d3bfab93b0c06e15f70b4a97e85968b72` |
| 8 | `theorem` | [lanLeftExtension_unit](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/HasKanNamespaced.lean/declarations/lanleftextension-unit.md) | 99 | `result-track:bde0c6e83c227da28fc7634f9d58147711ee61671ea17a946d73cd00a5e6a384` |
| 9 | `def` | [lanIsKan](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/HasKanNamespaced.lean/declarations/laniskan.md) | 103 | `declaration-track:1050780b4d0705c33f0b91df586f42a35057cac76e31dcdded26b191a2504b02` |
| 10 | `def` | [lanDesc](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/HasKanNamespaced.lean/declarations/landesc.md) | 109 | `declaration-track:9b03cac5edb44034710ce4c8d01a46b660c067d947300e0ca83e06e204e9fada` |
| 11 | `theorem` | [lanUnit_desc](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/HasKanNamespaced.lean/declarations/lanunit-desc.md) | 114 | `result-track:0a1ee87757a53ad3cbcf4dd20b0bae4c547e0ba58cb537d8e0652aba26568823` |
| 12 | `theorem` | [lanIsKan_desc](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/HasKanNamespaced.lean/declarations/laniskan-desc.md) | 119 | `result-track:dc726b0db0781930a98a729aaafa1906acc0e8b3c3b0f74976a8898d7e69b5ab` |
| 13 | `theorem` | [Lan.existsUnique](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/HasKanNamespaced.lean/declarations/lan-existsunique.md) | 123 | `result-track:a88ffc1933447e10bd4f38c4d81d62c79bf670357eda8732beeaadebede10dbd` |
| 14 | `class` | [Lan.CommuteWith](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/HasKanNamespaced.lean/declarations/lan-commutewith.md) | 129 | `declaration-track:6dfe8c60668b8311bf87eb5fad55e8fdbe8bb9362140a7e3c877903a6b597124` |
| 15 | `theorem` | [of_isKan_whisker](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/HasKanNamespaced.lean/declarations/of-iskan-whisker-source-edition-2.md) | 135 | `result-track:fee7a130c3a6e896e47aff643c859b4dbd9a80b03407dc533055602999025917` |
| 16 | `theorem` | [of_lan_comp_iso](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/HasKanNamespaced.lean/declarations/of-lan-comp-iso.md) | 140 | `result-track:5e67baefa70c2c0b57f5d576406ec431f6a3e5700a6507432d36f6bb1176a0d3` |
| 17 | `def` | [isKan](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/HasKanNamespaced.lean/declarations/iskan-source-edition-2.md) | 151 | `declaration-track:8d5d5f68c7c22f8e68479047f11558cbec2778c759491dd31eb7a89998a15695` |
| 18 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/HasKanNamespaced.lean/declarations/instance-source-edition-5.md) | 153 | `declaration-track:b0f8bcc90c1402c3e6b5047b29bdbc00999c3f962d46be7f764a1f15e96e3351` |
| 19 | `def` | [isKanWhisker](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/HasKanNamespaced.lean/declarations/iskanwhisker-source-edition-2.md) | 157 | `declaration-track:7eeba1224179ccd68df9f6e96032c8b9f72316ea55a329b913732401800f032b` |
| 20 | `def` | [lanCompIsoWhisker](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/HasKanNamespaced.lean/declarations/lancompisowhisker.md) | 164 | `declaration-track:a18da48bf90be0cb695beb76e7ad8bc147c3bcdcd212e7f1b389a79da4afda37` |
| 21 | `theorem` | [lanCompIsoWhisker_hom_right](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/HasKanNamespaced.lean/declarations/lancompisowhisker-hom-right.md) | 168 | `result-track:27b61e0b538417890fa6a0440bc8791ded4625831a057dadcb14fc663acbb262` |
| 22 | `theorem` | [lanCompIsoWhisker_inv_right](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/HasKanNamespaced.lean/declarations/lancompisowhisker-inv-right.md) | 173 | `result-track:bd331d30c9c6b864e50742f6920cecaf1d3e36cc1d61b520673e8bae46cc31d7` |
| 23 | `def` | [lanCompIso](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/HasKanNamespaced.lean/declarations/lancompiso.md) | 179 | `declaration-track:63f1714a802468396e9c46789be7df1c2fab7c371271fd1c66840ca946605969` |
| 24 | `class` | [HasAbsLeftKanExtension](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/HasKanNamespaced.lean/declarations/hasabsleftkanextension.md) | 185 | `declaration-track:c579c3e834c592c389c9e5830d22fc98d0db02533f8d31270545540519131434` |
| 25 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/HasKanNamespaced.lean/declarations/instance-source-edition-2.md) | 188 | `declaration-track:13c30b5fd8729fb055833f2973dbdd90d934b2cd5e94fffcbc4ba5b53912ea35` |
| 26 | `theorem` | [LeftExtension.IsAbsKan.hasAbsLeftKanExtension](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/HasKanNamespaced.lean/declarations/leftextension-isabskan-hasabsleftkanextension.md) | 191 | `result-track:486e6cb0fa1b01381b365d49ecdcba4046966663a02986698632d38494064167` |
| 27 | `class` | [HasLeftKanLift](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/HasKanNamespaced.lean/declarations/hasleftkanlift.md) | 205 | `declaration-track:5527d95b53089869a99d8dd1cc72cb2f29c45270d8b47dfc7d11f69e0440d883` |
| 28 | `theorem` | [LeftLift.IsKan.hasLeftKanLift](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/HasKanNamespaced.lean/declarations/leftlift-iskan-hasleftkanlift.md) | 208 | `result-track:de23e13ff031a23ad9184e3f2bebba11aab705c9429f75c39951a703bdeccb20` |
| 29 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/HasKanNamespaced.lean/declarations/instance.md) | 211 | `declaration-track:031823a0144d4add9c4875c3897c44111ad7822826e8d5922b10b35ec2aa501e` |
| 30 | `def` | [lanLiftLeftLift](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/HasKanNamespaced.lean/declarations/lanliftleftlift.md) | 214 | `declaration-track:9551db6530dbbdc4360f262285cf95a948fa7c700b091683247531fafd9dead5` |
| 31 | `def` | [lanLift](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/HasKanNamespaced.lean/declarations/lanlift.md) | 218 | `declaration-track:ee6abbb90acbf668926ca0d56c501bd6dbb6ba2a1b2a7c18b580d34586643650` |
| 32 | `theorem` | [lanLiftLeftLift_lift](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/HasKanNamespaced.lean/declarations/lanliftleftlift-lift.md) | 235 | `result-track:d5e8d16ef97d7615131ebbb5abb879d53c446946a45862853a5bd44548d1ca9c` |
| 33 | `def` | [lanLiftUnit](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/HasKanNamespaced.lean/declarations/lanliftunit.md) | 239 | `declaration-track:4cd28828cc391d88d9d3a81bc4c7e18435e2fd88cdbf42d662fe43e423a5c0d7` |
| 34 | `theorem` | [lanLiftLeftLift_unit](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/HasKanNamespaced.lean/declarations/lanliftleftlift-unit.md) | 243 | `result-track:42a4592a76102591d5d1819a14a72345dd0b15d5c58760b65278b6b2df818f67` |
| 35 | `def` | [lanLiftIsKan](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/HasKanNamespaced.lean/declarations/lanliftiskan.md) | 247 | `declaration-track:4aa2f0ce8ff01045655c92949c8851cf81269e5a202ffaa72093858036e1189e` |
| 36 | `def` | [lanLiftDesc](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/HasKanNamespaced.lean/declarations/lanliftdesc.md) | 253 | `declaration-track:81f9a494b5bedcc3b66716112a4cf56ffc419f6921969c78d41d95eb4516c266` |
| 37 | `theorem` | [lanLiftUnit_desc](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/HasKanNamespaced.lean/declarations/lanliftunit-desc.md) | 258 | `result-track:9350ef4c10ac2ca14e0c405167d06445dd02b11199c840eebc85297fd4184de2` |
| 38 | `theorem` | [lanLiftIsKan_desc](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/HasKanNamespaced.lean/declarations/lanliftiskan-desc.md) | 263 | `result-track:2bbe6ff0b473199e7f6bff44d2bde1080be0994a0edfb2acc977ca15ec8dc6a3` |
| 39 | `theorem` | [LanLift.existsUnique](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/HasKanNamespaced.lean/declarations/lanlift-existsunique.md) | 267 | `result-track:325c85771e2cd5e4a38e4a980d65c4a04246fec110d63068b90e401bb3833a79` |
| 40 | `class` | [LanLift.CommuteWith](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/HasKanNamespaced.lean/declarations/lanlift-commutewith.md) | 273 | `declaration-track:1e29fe62c2f7baf9e69600c052400f148c56deee0e0df6ef9d9e140cbfff9995` |
| 41 | `theorem` | [of_isKan_whisker](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/HasKanNamespaced.lean/declarations/of-iskan-whisker.md) | 279 | `result-track:1a86fdff0dc8a0ea0a59f582355b261c09d011d63dd10d72c1e8cdc3454d9a34` |
| 42 | `theorem` | [of_lanLift_comp_iso](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/HasKanNamespaced.lean/declarations/of-lanlift-comp-iso.md) | 284 | `result-track:90b9b0a2f88d8940954cf91d603c3f56bda1f9c2541c470e075ac78f99d20e74` |
| 43 | `def` | [isKan](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/HasKanNamespaced.lean/declarations/iskan.md) | 295 | `declaration-track:7b822d16189b56de44fc58f60c91cb710113c93fcdc98dab27aec525e0caed7e` |
| 44 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/HasKanNamespaced.lean/declarations/instance-source-edition-4.md) | 298 | `declaration-track:8982fb4354789ca03173c0b58626519cf761c68d5425177b464e34df3f8a274f` |
| 45 | `def` | [isKanWhisker](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/HasKanNamespaced.lean/declarations/iskanwhisker.md) | 302 | `declaration-track:1c8ee34aa478a6fb8a946a010b007e1545bf6c0e1546d85c806899309dbac26b` |
| 46 | `def` | [lanLiftCompIsoWhisker](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/HasKanNamespaced.lean/declarations/lanliftcompisowhisker.md) | 309 | `declaration-track:833da4388c96e346d3474334f2973559de54751ada0744508955672ec980e023` |
| 47 | `theorem` | [lanLiftCompIsoWhisker_hom_right](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/HasKanNamespaced.lean/declarations/lanliftcompisowhisker-hom-right.md) | 314 | `result-track:dffe2ba04edbf4c309c63d91b699052c97e3e19dddc1703f798ed4f60f6352f0` |
| 48 | `theorem` | [lanLiftCompIsoWhisker_inv_right](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/HasKanNamespaced.lean/declarations/lanliftcompisowhisker-inv-right.md) | 319 | `result-track:7b6cb41b79dd58c14b1455f4b27a0c77c7d229c97972741d70746e0c5f3694ad` |
| 49 | `def` | [lanLiftCompIso](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/HasKanNamespaced.lean/declarations/lanliftcompiso.md) | 325 | `declaration-track:e686f9a0acc056a6feb18fd5b86612f858c13c8d027772bc11703ac375ff2cd3` |
| 50 | `class` | [HasAbsLeftKanLift](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/HasKanNamespaced.lean/declarations/hasabsleftkanlift.md) | 331 | `declaration-track:3e504941c07937d4706b1990413a65a0a0862321c78fd71dbf6b01b9e1e69831` |
| 51 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/HasKanNamespaced.lean/declarations/instance-source-edition-6.md) | 334 | `declaration-track:cdd4eb0163fbdf508e284a66a4fdbd7bb37bf38d0a9da66e6772b8e47e07c12f` |
| 52 | `theorem` | [LeftLift.IsAbsKan.hasAbsLeftKanLift](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/HasKanNamespaced.lean/declarations/leftlift-isabskan-hasabsleftkanlift.md) | 337 | `result-track:3dbb38baf0152bddeaae02c19e7c91747843fc58228e3801cb7fbf0ff8bb3d1c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=7424b470bdff9f9138826e74b8f0b41564ea735cb4d46390d4a339c647ad3284 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/HasKan/Variant6c5ab07a9627994310edaaab59c02f1bcb7516950dee9706503d9fcdb079ed06.lean","GRWTSK/_verification/specifications/CategoriesAndHomologicalAlgebra/CategoryTheory/HasKan/Variant6c5ab07a9627994310edaaab59c02f1bcb7516950dee9706503d9fcdb079ed06.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
