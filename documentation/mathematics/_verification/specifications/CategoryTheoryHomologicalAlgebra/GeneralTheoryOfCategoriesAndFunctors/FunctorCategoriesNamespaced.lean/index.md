# Verification target: Functor Categories Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "940cab3eaf7ef4d04e51ff0de96ca5c9621aff51",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorCategories/Variant45c9e1b9c64e2e47cfcb77bd3c8735739e54fc35f4d7ba0d46f5aa75eebe346d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/FunctorCategoriesNamespaced.lean/index.md) · [Full source](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/FunctorCategoriesNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `940cab3eaf7ef4d04e51ff0de96ca5c9621aff51`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorCategories/Variant45c9e1b9c64e2e47cfcb77bd3c8735739e54fc35f4d7ba0d46f5aa75eebe346d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorCategories/Variant45c9e1b9c64e2e47cfcb77bd3c8735739e54fc35f4d7ba0d46f5aa75eebe346d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Idempotents.Karoubi` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [app_idem](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/FunctorCategoriesNamespaced.lean/declarations/app-idem.md) | 44 | `result-track:cb23daea33dcd24befa05fcfbcca5cb4d0db5c63e653b960c07a6a2bb51c51f1` |
| 2 | `theorem` | [app_p_comp](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/FunctorCategoriesNamespaced.lean/declarations/app-p-comp.md) | 50 | `result-track:c6a52be899bef897c172a82b2c76fbf79fb9bf6b5ee4e73d5fe6bfbace2c5b79` |
| 3 | `theorem` | [app_comp_p](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/FunctorCategoriesNamespaced.lean/declarations/app-comp-p.md) | 54 | `result-track:f17567cf5c6689ae18f650f358aed886b082457a4fecfd3b53c476daa54cb995` |
| 4 | `theorem` | [app_p_comm](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/FunctorCategoriesNamespaced.lean/declarations/app-p-comm.md) | 58 | `result-track:90b796751a7990d9c954553674478333b4e70dda37d96b07dce765fd7a631577` |
| 5 | `instance` | [functor_category_isIdempotentComplete](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/FunctorCategoriesNamespaced.lean/declarations/functor-category-isidempotentcomplete.md) | 63 | `declaration-track:7903249cda5bcf1039e3dd71f92cc6fc57558fde8a9a7b4373d9f321a1921e00` |
| 6 | `def` | [obj](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/FunctorCategoriesNamespaced.lean/declarations/obj.md) | 97 | `declaration-track:00f9e66b5760346873cac608d5c7fa0560e6fd962f8d36edf8cebecfad7a2a49` |
| 7 | `def` | [map](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/FunctorCategoriesNamespaced.lean/declarations/map.md) | 109 | `declaration-track:f3dd381025f3c989992b4c6e9b649d44ad4a16eca9accd1a7071cd37ce2d1c0a` |
| 8 | `def` | [karoubiFunctorCategoryEmbedding](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/FunctorCategoriesNamespaced.lean/declarations/karoubifunctorcategoryembedding.md) | 116 | `declaration-track:40ff3c8801e972060387df875f45aea897513fba67b23fc0abf555910739d241` |
| 9 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/FunctorCategoriesNamespaced.lean/declarations/instance.md) | 120 | `declaration-track:1d67427855167feada8d96474233a4ea879a332203b09228caed1cc52002a550` |
| 10 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/FunctorCategoriesNamespaced.lean/declarations/instance-source-edition-2.md) | 134 | `declaration-track:51bd13fe204b2a295e134ad0e7257db9b7280b8c67dfa0b2c2c7b198ae787062` |
| 11 | `theorem` | [toKaroubi_comp_karoubiFunctorCategoryEmbedding](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/FunctorCategoriesNamespaced.lean/declarations/tokaroubi-comp-karoubifunctorcategoryembedding.md) | 142 | `result-track:149c60acdb1901912199310bb26f92e1c5ab503afbb981d1feb9d357ff862176` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=8f4e985614b2a287e2c595962b5b78052589896b338ce251d2d53ebdb0aa15c9 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorCategories/Variant45c9e1b9c64e2e47cfcb77bd3c8735739e54fc35f4d7ba0d46f5aa75eebe346d.lean","GRWTSK/_verification/specifications/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorCategories/Variant45c9e1b9c64e2e47cfcb77bd3c8735739e54fc35f4d7ba0d46f5aa75eebe346d.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
