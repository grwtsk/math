# Verification target: Fin Category Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "18799d09adcf0962b024ddd99ce45d64dd750574",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/FinCategory/Variantbbec428cfa3b937470edfc1fd1560313f10470e8df0f83de3be41f5fcd96ce94.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/FinCategoryNamespaced.lean/index.md) · [Full source](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/FinCategoryNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `18799d09adcf0962b024ddd99ce45d64dd750574`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/FinCategory/Variantbbec428cfa3b937470edfc1fd1560313f10470e8df0f83de3be41f5fcd96ce94.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/FinCategory/Variantbbec428cfa3b937470edfc1fd1560313f10470e8df0f83de3be41f5fcd96ce94.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.FinCategory.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.WithTerminal.Basic` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Fintype.Option` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [optionEquiv](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/FinCategoryNamespaced.lean/declarations/optionequiv.md) | 36 | `declaration-track:9fdf121ead81af63699068941aee45462491c594a3aa24ec6803d8e1dd86ea0d` |
| 2 | `instance` | [instFintype](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/FinCategoryNamespaced.lean/declarations/instfintype-source-edition-2.md) | 46 | `declaration-track:f0285f6241ae310bdeea38df69e624a7918db1a827498adf42b640191ca77879` |
| 3 | `instance` | [instFinCategory](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/FinCategoryNamespaced.lean/declarations/instfincategory.md) | 49 | `declaration-track:bd3bad82513a402b371d5bcdf7398f4004af80ab10b7397992315e100c4b8244` |
| 4 | `def` | [optionEquiv](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/FinCategoryNamespaced.lean/declarations/optionequiv-source-edition-2.md) | 64 | `declaration-track:e5cc600b0e40aa75780149af106cdd2b5586e7e39abb9712350be1b3c15de4ea` |
| 5 | `instance` | [instFintype](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/FinCategoryNamespaced.lean/declarations/instfintype.md) | 74 | `declaration-track:1896b58e1d7c918e847e57a2bc5d8d9d151286c4cb416fcadac1ab91acd56e42` |
| 6 | `instance` | [instFinCategory](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/FinCategoryNamespaced.lean/declarations/instfincategory-source-edition-2.md) | 77 | `declaration-track:cb27626bb4d473c22744c30ddd7c825c06629d0ec48bf1b2c4c7e4c25918fa9a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=a70bab26d034097709cb514b1f29537a89078c8ced1dcbdc7ea310ab8ff4d21f -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/FinCategory/Variantbbec428cfa3b937470edfc1fd1560313f10470e8df0f83de3be41f5fcd96ce94.lean","GRWTSK/_verification/specifications/CategoriesAndHomologicalAlgebra/CategoryTheory/FinCategory/Variantbbec428cfa3b937470edfc1fd1560313f10470e8df0f83de3be41f5fcd96ce94.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
