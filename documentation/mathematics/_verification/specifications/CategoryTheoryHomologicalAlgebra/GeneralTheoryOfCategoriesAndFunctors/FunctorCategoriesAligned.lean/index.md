# Verification target: Functor Categories Aligned

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1f98d555003d064430fc6d76904a6182d41f0149",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorCategories/Variantfcd0a307f41ff6ca23b8a35ae1c281a32d22e800d8a029bc2b99ae84e980a9c2.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/FunctorCategoriesAligned.lean/index.md) · [Full source](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/FunctorCategoriesAligned.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1f98d555003d064430fc6d76904a6182d41f0149`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorCategories/Variantfcd0a307f41ff6ca23b8a35ae1c281a32d22e800d8a029bc2b99ae84e980a9c2.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorCategories/Variantfcd0a307f41ff6ca23b8a35ae1c281a32d22e800d8a029bc2b99ae84e980a9c2.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Idempotents.Karoubi` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [app_idem](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/FunctorCategoriesAligned.lean/declarations/app-idem.md) | 38 | `result-track:e9f65b50688c9dd5118e1b83d58f5a8372a1f4a5c4a7082e44e3beb08dfdbc9c` |
| 2 | `theorem` | [app_p_comp](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/FunctorCategoriesAligned.lean/declarations/app-p-comp.md) | 45 | `result-track:22b5bfabd92c60d649a69a99e488b6de5942e5286e1773473d680f59b63aa1eb` |
| 3 | `theorem` | [app_comp_p](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/FunctorCategoriesAligned.lean/declarations/app-comp-p.md) | 50 | `result-track:cca5906cdaa531678e81c6d32979c6dc12e01cf8529d89c3a1d25bb0a6a4e38a` |
| 4 | `theorem` | [app_p_comm](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/FunctorCategoriesAligned.lean/declarations/app-p-comm.md) | 55 | `result-track:8b069508cccb6eb538b6fe0b6c817bca0eeb60be58097e62c6152ea7d9703bf9` |
| 5 | `instance` | [functor_category_isIdempotentComplete](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/FunctorCategoriesAligned.lean/declarations/functor-category-isidempotentcomplete.md) | 61 | `declaration-track:f09615d8cdccb22723cc1fca5d867c44f354f985656c1365c43f4fdbc5349a09` |
| 6 | `def` | [obj](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/FunctorCategoriesAligned.lean/declarations/obj.md) | 96 | `declaration-track:3b331687cd51f4a7de26b1f3655fe0d2c3381477b3593935f3e12ba82df795ad` |
| 7 | `def` | [map](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/FunctorCategoriesAligned.lean/declarations/map.md) | 109 | `declaration-track:2f981288abc0417902797854ad34ad4cb2a90723f66d0cce0f8c454b46ae7a7e` |
| 8 | `def` | [karoubiFunctorCategoryEmbedding](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/FunctorCategoriesAligned.lean/declarations/karoubifunctorcategoryembedding.md) | 117 | `declaration-track:87e2f760b39ea13d249073194396663c1063146e21dfb0676d81db6edd5c92aa` |
| 9 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/FunctorCategoriesAligned.lean/declarations/instance-source-edition-2.md) | 122 | `declaration-track:df95e4b5196c0106e1d38079f5b4a4b9330fe3d9d1b1c3c9f1d553cc970a3cb3` |
| 10 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/FunctorCategoriesAligned.lean/declarations/instance.md) | 137 | `declaration-track:44f8a899988d345273cfdddc7dd56ad1ac27f695a110a7616bdea445289f78d9` |
| 11 | `theorem` | [toKaroubi_comp_karoubiFunctorCategoryEmbedding](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/FunctorCategoriesAligned.lean/declarations/tokaroubi-comp-karoubifunctorcategoryembedding.md) | 145 | `result-track:1835fc931e8ad1d80df5fcc534e347aac5a5bb1b2de5e9616bbc3b03384ae344` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=6d0ffdc81f07bb871a9e00c85f2fa8bda585722fbdf57540d45f4fa04acb350b -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorCategories/Variantfcd0a307f41ff6ca23b8a35ae1c281a32d22e800d8a029bc2b99ae84e980a9c2.lean","GRWTSK/_verification/specifications/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorCategories/Variantfcd0a307f41ff6ca23b8a35ae1c281a32d22e800d8a029bc2b99ae84e980a9c2.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
