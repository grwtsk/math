# Verification target: Factorization Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6200283e213a2171b1c8f09d0531e9810ad63c7a",
  "lexical_observation_count": 21,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Factorization/Variant569542c1d0b57a4030242f0b16d9b4f94c211fd4d2887c522deac27d4b0d104a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/FactorizationNamespaced.lean/index.md) · [Full source](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/FactorizationNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6200283e213a2171b1c8f09d0531e9810ad63c7a`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Factorization/Variant569542c1d0b57a4030242f0b16d9b4f94c211fd4d2887c522deac27d4b0d104a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Factorization/Variant569542c1d0b57a4030242f0b16d9b4f94c211fd4d2887c522deac27d4b0d104a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.MorphismProperty.Basic` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [MapFactorizationData](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/FactorizationNamespaced.lean/declarations/mapfactorizationdata.md) | 51 | `declaration-track:d1d716d370b4c3058f64cb6263e66d4d19aecd97f3e3adb4066ff3b6f7439b48` |
| 2 | `abbrev` | [FactorizationData](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/FactorizationNamespaced.lean/declarations/factorizationdata-source-edition-3.md) | 65 | `declaration-track:b4aed642c3fce2454c7fb83cc4bdcb09968731a8e4b082a70e865c26954d145c` |
| 3 | `class` | [HasFactorization](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/FactorizationNamespaced.lean/declarations/hasfactorization.md) | 70 | `declaration-track:f3779231278b9adb59ee3fb1eb15c16edaccb58c645f130bc180d07fad283458` |
| 4 | `def` | [factorizationData](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/FactorizationNamespaced.lean/declarations/factorizationdata.md) | 74 | `declaration-track:8d010df58014ad3fc1c5181e829feb50439e971a2ca6f3d1dfb790daf1a895f3` |
| 5 | `def` | [comp](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/FactorizationNamespaced.lean/declarations/comp.md) | 78 | `declaration-track:12af91aedfd13c1223c7b39e1be9858d6e6d77f849a4d0982b6022fc5ffde8de` |
| 6 | `lemma` | [comp_eq_top_iff](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/FactorizationNamespaced.lean/declarations/comp-eq-top-iff.md) | 80 | `result-track:edd90c1d2219df2e64f14bd13961df3ed510b407e3b1dea2698f30d123f410da` |
| 7 | `structure` | [FunctorialFactorizationData](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/FactorizationNamespaced.lean/declarations/functorialfactorizationdata.md) | 93 | `declaration-track:25496806f23c8a37d9a54a2e30ab9bf728fb600e915e3958f12f266224471080` |
| 8 | `lemma` | [fac_app](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/FactorizationNamespaced.lean/declarations/fac-app.md) | 112 | `result-track:360efc45952d51ff8983f21e32299f8fe065bf982f6137541b0e1b5d99bb52b9` |
| 9 | `def` | [ofLE](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/FactorizationNamespaced.lean/declarations/ofle.md) | 117 | `declaration-track:f96954a742a6c6a97296aceadbd56638c0c3e6bbc1164d77ef497ed3173fbe8d` |
| 10 | `def` | [factorizationData](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/FactorizationNamespaced.lean/declarations/factorizationdata-source-edition-2.md) | 126 | `declaration-track:a941eb9bb3046180462acf320c83c249657fccf90856388b1858834d85bfb06d` |
| 11 | `def` | [mapZ](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/FactorizationNamespaced.lean/declarations/mapz.md) | 141 | `declaration-track:6e731d33b3a46b3d8e8a339636c1c95274bde6ebda008e09b2efa1dda96e2ba7` |
| 12 | `lemma` | [i_mapZ](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/FactorizationNamespaced.lean/declarations/i-mapz.md) | 144 | `result-track:28ada27d89d1fe14729ceecce9ed8f5244bb312664357d2fe585990a2a949dc0` |
| 13 | `lemma` | [mapZ_p](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/FactorizationNamespaced.lean/declarations/mapz-p.md) | 149 | `result-track:dc1668bd25fac3f19cfa2ab5f00699ebd0e60c6b45bd61d311dc3d4b0cb2a2a8` |
| 14 | `lemma` | [mapZ_id](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/FactorizationNamespaced.lean/declarations/mapz-id.md) | 155 | `result-track:830628af6a33e0198e2341a6f79978bc7758bbeaef5abbe808a7e6c58696122b` |
| 15 | `lemma` | [mapZ_comp](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/FactorizationNamespaced.lean/declarations/mapz-comp.md) | 159 | `result-track:6a2aa61e44209b8b57a760d57e23e5102bbbe8f1153d8985842225673eec5f3e` |
| 16 | `def` | [functorCategory.Z](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/FactorizationNamespaced.lean/declarations/functorcategory-z.md) | 171 | `declaration-track:10eb02d13ddc1d76b92910b2cf9436bea9ac3cd3574db9f6c76beb95f7893577` |
| 17 | `def` | [functorCategory](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/FactorizationNamespaced.lean/declarations/functorcategory.md) | 207 | `declaration-track:93a6adaf6d0c5617118f663f28aa545d984cea35caf50a0bf9aeba42391dc129` |
| 18 | `class` | [HasFunctorialFactorization](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/FactorizationNamespaced.lean/declarations/hasfunctorialfactorization.md) | 222 | `declaration-track:71627981f738e234865a05b22daadf6b86afeb89ec06454dc286d79f04d95c6c` |
| 19 | `def` | [functorialFactorizationData](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/FactorizationNamespaced.lean/declarations/functorialfactorizationdata-source-edition-2.md) | 227 | `declaration-track:28a239ef071e0c29b9befd39bf82904a0b11bec2b76c889cd120f1093ce63283` |
| 20 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/FactorizationNamespaced.lean/declarations/instance-source-edition-2.md) | 231 | `declaration-track:831e2591057c58b1a7ce7956aea3fb1d07c26013b0edba4b05654ce6737788ab` |
| 21 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/FactorizationNamespaced.lean/declarations/instance.md) | 234 | `declaration-track:68b8d1b625d6258e644bb2be59d83ebf51d590eb2ff002b63f23b54ffdf024f5` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=02497fe6fa24436a39b9857e7e6a8c7cf3c1cdb5ebb98d664d6fd52ed93b8462 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Factorization/Variant569542c1d0b57a4030242f0b16d9b4f94c211fd4d2887c522deac27d4b0d104a.lean","GRWTSK/_verification/specifications/CategoriesAndHomologicalAlgebra/CategoryTheory/Factorization/Variant569542c1d0b57a4030242f0b16d9b4f94c211fd4d2887c522deac27d4b0d104a.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
