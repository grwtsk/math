# Verification target: Morphism Property Functor Category Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2d9896a95e5a4d19a739b4d2e872749c53837918",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorCategory/Variant421f58bebc722f0bcee0f8081354ef6664eded2247911d5ee96c5b02488f8bb4.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MorphismPropertyFunctorCategoryNamespaced.lean/index.md) · [Full source](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MorphismPropertyFunctorCategoryNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2d9896a95e5a4d19a739b4d2e872749c53837918`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorCategory/Variant421f58bebc722f0bcee0f8081354ef6664eded2247911d5ee96c5b02488f8bb4.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorCategory/Variant421f58bebc722f0bcee0f8081354ef6664eded2247911d5ee96c5b02488f8bb4.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Limits.FunctorCategory.EpiMono` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.MorphismProperty.Retract` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.MorphismProperty.Limits` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.MorphismProperty.TransfiniteComposition` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MorphismPropertyFunctorCategoryNamespaced.lean/declarations/instance-source-edition-5.md) | 41 | `declaration-track:fb418030db09438f215682a6e6915afeb0ea5228695cae2a8dddd06352055662` |
| 2 | `instance` | [IsStableUnderLimitsOfShape.functorCategory](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MorphismPropertyFunctorCategoryNamespaced.lean/declarations/isstableunderlimitsofshape-functorcategory.md) | 48 | `declaration-track:7ed22452718ec7ee851f42daa5c85362d829298e34ff6d3360571550b1f14d45` |
| 3 | `instance` | [IsStableUnderColimitsOfShape.functorCategory](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MorphismPropertyFunctorCategoryNamespaced.lean/declarations/isstableundercolimitsofshape-functorcategory.md) | 58 | `declaration-track:20c1807f487a0a3cffaf4b7111835dde884cfb8c264ad40a8525eba0ce1fab65` |
| 4 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MorphismPropertyFunctorCategoryNamespaced.lean/declarations/instance-source-edition-4.md) | 68 | `declaration-track:bce18bd603381b2a1329a72e6e5637d89882986b8982b211662d3293b5024e04` |
| 5 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MorphismPropertyFunctorCategoryNamespaced.lean/declarations/instance.md) | 73 | `declaration-track:00429bd759ffa0a4ad189604a7775eb39005c3a4287f3fb3742534b479b33466` |
| 6 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MorphismPropertyFunctorCategoryNamespaced.lean/declarations/instance-source-edition-3.md) | 78 | `declaration-track:60c270c1fd07db27822f8f9bf6641552141550556d5df20165729c283cdc4f6f` |
| 7 | `lemma` | [functorCategory_isomorphisms](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MorphismPropertyFunctorCategoryNamespaced.lean/declarations/functorcategory-isomorphisms.md) | 89 | `result-track:6f1955928601745b9d24779facc6bcf50ac58cadab4448abc0a184fba8c9bf95` |
| 8 | `lemma` | [functorCategory_monomorphisms](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MorphismPropertyFunctorCategoryNamespaced.lean/declarations/functorcategory-monomorphisms.md) | 94 | `result-track:9fe0d8f0954c74c65965d7f23c68aa7abd2783f74419af4414cb78a08f42ce9e` |
| 9 | `lemma` | [functorCategory_epimorphisms](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MorphismPropertyFunctorCategoryNamespaced.lean/declarations/functorcategory-epimorphisms.md) | 99 | `result-track:04b19ddd903e0978a240215935f02c6a1097b87023f33b689bfaaa311c647402` |
| 10 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MorphismPropertyFunctorCategoryNamespaced.lean/declarations/instance-source-edition-2.md) | 104 | `declaration-track:49115e2ec7796cb5d160d8124ead662cab3db0ba5d797a2517502e4c7229617e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=18ac25383e944d55367d2bd9dfbd86b9ccee0735fd1647749f6079ce376db657 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorCategory/Variant421f58bebc722f0bcee0f8081354ef6664eded2247911d5ee96c5b02488f8bb4.lean","GRWTSK/_verification/specifications/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorCategory/Variant421f58bebc722f0bcee0f8081354ef6664eded2247911d5ee96c5b02488f8bb4.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
