# Verification target: Functor Categories

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "34c4f44f5ce722d3c937274184fc012e6a8fa78e",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorCategories/Variant1a3720df997faf967edd54b402c2b37983471508bc4b1671b020670b3973c638.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/FunctorCategories.lean/index.md) · [Full source](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/FunctorCategories.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `34c4f44f5ce722d3c937274184fc012e6a8fa78e`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorCategories/Variant1a3720df997faf967edd54b402c2b37983471508bc4b1671b020670b3973c638.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorCategories/Variant1a3720df997faf967edd54b402c2b37983471508bc4b1671b020670b3973c638.lean.json)

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
| 1 | `theorem` | [app_idem](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/FunctorCategories.lean/declarations/app-idem.md) | 36 | `result-track:6b913334426e03e482ff5391c0ff4d00d569735d6bd23f231809ee9366f83432` |
| 2 | `theorem` | [app_p_comp](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/FunctorCategories.lean/declarations/app-p-comp.md) | 42 | `result-track:f73bb563ebf3b9da3053076fafc358358a1fdbbc173589976af391a886b6a782` |
| 3 | `theorem` | [app_comp_p](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/FunctorCategories.lean/declarations/app-comp-p.md) | 46 | `result-track:43ba50f69387da128dfadb72d881e641e03f095ebfb4108a0f5bf476769a9ed9` |
| 4 | `theorem` | [app_p_comm](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/FunctorCategories.lean/declarations/app-p-comm.md) | 50 | `result-track:7ff0e1a17fc076fbbe76252b5220f5329a092f44639ff9abe29d6cc384e512a2` |
| 5 | `instance` | [functor_category_isIdempotentComplete](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/FunctorCategories.lean/declarations/functor-category-isidempotentcomplete.md) | 55 | `declaration-track:a1495cbb86dffb6870455f0d80961e8f2c660eb02ce10e6c33a7cc2ca5c3c1ba` |
| 6 | `def` | [obj](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/FunctorCategories.lean/declarations/obj.md) | 89 | `declaration-track:edd038ed82d8b611991120e947cd5c9eda36308eb7c10f6cfcc85ffede384d7e` |
| 7 | `def` | [map](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/FunctorCategories.lean/declarations/map.md) | 101 | `declaration-track:4795d0c0585552cb8a555737f5bb7f0d4ce738fcdc34b01ae32128a588441151` |
| 8 | `def` | [karoubiFunctorCategoryEmbedding](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/FunctorCategories.lean/declarations/karoubifunctorcategoryembedding.md) | 108 | `declaration-track:c561e08d5cbb2b50a835fc8600a73bdcdf831093fe4355880b836d7d93ac3e95` |
| 9 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/FunctorCategories.lean/declarations/instance.md) | 112 | `declaration-track:36f49d0384ef6ca285805273d443a1d1cc932ab9af9a467a7204355d43a14cdc` |
| 10 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/FunctorCategories.lean/declarations/instance-source-edition-2.md) | 126 | `declaration-track:ba01be4c11062548834a2313f0563c0f807b800933ba0ec1ee948a98c6abe69e` |
| 11 | `theorem` | [toKaroubi_comp_karoubiFunctorCategoryEmbedding](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/FunctorCategories.lean/declarations/tokaroubi-comp-karoubifunctorcategoryembedding.md) | 134 | `result-track:ea4d31f16fd883cd54f8f66ac2eb59296e75d3473bb07432172e0ec9c19afaea` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=29ddfcb953043bee524e7649d9b299639d752fc9203bc8c1ed9d89be826162ac -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorCategories/Variant1a3720df997faf967edd54b402c2b37983471508bc4b1671b020670b3973c638.lean","GRWTSK/_verification/specifications/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorCategories/Variant1a3720df997faf967edd54b402c2b37983471508bc4b1671b020670b3973c638.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
