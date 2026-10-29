# Verification target: Functor Categories Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d9c389ddb27cbfd026a83822fae49b6294fb4467",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorCategories/Variante81d9976d54c2fe4ddd4448220be58d0302bcdeac785d11f8e91b39df4f78162.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/FunctorCategoriesNamespacedPublic.lean/index.md) · [Full source](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/FunctorCategoriesNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d9c389ddb27cbfd026a83822fae49b6294fb4467`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorCategories/Variante81d9976d54c2fe4ddd4448220be58d0302bcdeac785d11f8e91b39df4f78162.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorCategories/Variante81d9976d54c2fe4ddd4448220be58d0302bcdeac785d11f8e91b39df4f78162.lean.json)

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
| 1 | `theorem` | [app_idem](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/FunctorCategoriesNamespacedPublic.lean/declarations/app-idem.md) | 48 | `result-track:ed28ab0e9e95c57fc1eceaecff0cd45fad10b162e8a6a7e6a92be440bae00821` |
| 2 | `theorem` | [app_p_comp](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/FunctorCategoriesNamespacedPublic.lean/declarations/app-p-comp.md) | 54 | `result-track:8f231665f34ec36ec517c70183297cb5ec7bd35ad48c7efda916d49ccebd90db` |
| 3 | `theorem` | [app_comp_p](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/FunctorCategoriesNamespacedPublic.lean/declarations/app-comp-p.md) | 58 | `result-track:169f839f72a4fc0ac4895126f67caa65dcc80ca1402bc70d872ccbfac55ef1f9` |
| 4 | `theorem` | [app_p_comm](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/FunctorCategoriesNamespacedPublic.lean/declarations/app-p-comm.md) | 62 | `result-track:ff3336bf3c6d83bce3438841ad94da6679b9b8f85f4a2ff2aa5a3658d7627efc` |
| 5 | `instance` | [functor_category_isIdempotentComplete](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/FunctorCategoriesNamespacedPublic.lean/declarations/functor-category-isidempotentcomplete.md) | 67 | `declaration-track:0a68bab83deb1b80057ef57b61012e93af4f6bfdacf9632a63aaac2792486443` |
| 6 | `def` | [obj](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/FunctorCategoriesNamespacedPublic.lean/declarations/obj.md) | 101 | `declaration-track:bfaaf3fbef269c3ca0fa3ae07b2ab32e731416d1424a94977a17ec48586065c6` |
| 7 | `def` | [map](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/FunctorCategoriesNamespacedPublic.lean/declarations/map.md) | 114 | `declaration-track:c720058daf9b368f11b5afd74ce4a4aae4c633ba04a43771e57f5535937cdc85` |
| 8 | `def` | [karoubiFunctorCategoryEmbedding](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/FunctorCategoriesNamespacedPublic.lean/declarations/karoubifunctorcategoryembedding.md) | 121 | `declaration-track:76f7af0134030e7db671b0cd0f41b3b0e1eba093cbe3361bcfd97215a54cc785` |
| 9 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/FunctorCategoriesNamespacedPublic.lean/declarations/instance.md) | 127 | `declaration-track:8e7f6a5f3529ed6ec00342fe7fa13a1bc988642edcc7aa7ef649d6586f451a20` |
| 10 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/FunctorCategoriesNamespacedPublic.lean/declarations/instance-source-edition-2.md) | 143 | `declaration-track:fb8a58834fe1a70a3cb2a03935905a6c36bae292575a2a1a99561798e0c55f8e` |
| 11 | `theorem` | [toKaroubi_comp_karoubiFunctorCategoryEmbedding](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/FunctorCategoriesNamespacedPublic.lean/declarations/tokaroubi-comp-karoubifunctorcategoryembedding.md) | 153 | `result-track:c78bfb886d591776660672045ca2cd44317ddafbd1feca3661079e0121bbe5eb` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=20daa44a3b8a0c19fa2a7a1e67af07afbaa8e774d67fab5f4e027be08964f2c6 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorCategories/Variante81d9976d54c2fe4ddd4448220be58d0302bcdeac785d11f8e91b39df4f78162.lean","GRWTSK/_verification/specifications/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorCategories/Variante81d9976d54c2fe4ddd4448220be58d0302bcdeac785d11f8e91b39df4f78162.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
