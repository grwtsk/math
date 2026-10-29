# Verification target: Closed Functor Category Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ec6e84493f9feccba0f436aec61ec73a9f131754",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorCategory/Varianta2bf4face1ce4b19a4352ddedb853eeabc66264f43311c1603abf55a72aa8617.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ClosedFunctorCategoryNamespaced.lean/index.md) · [Full source](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ClosedFunctorCategoryNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ec6e84493f9feccba0f436aec61ec73a9f131754`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorCategory/Varianta2bf4face1ce4b19a4352ddedb853eeabc66264f43311c1603abf55a72aa8617.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorCategory/Varianta2bf4face1ce4b19a4352ddedb853eeabc66264f43311c1603abf55a72aa8617.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Closed.Monoidal` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Monoidal.FunctorCategory` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [closedIhom](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ClosedFunctorCategoryNamespaced.lean/declarations/closedihom.md) | 37 | `declaration-track:2889be923be010523e42d1c9e3b0c8b9bd5967597d490a7def5f3cf9dd61cd55` |
| 2 | `def` | [closedUnit](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ClosedFunctorCategoryNamespaced.lean/declarations/closedunit.md) | 44 | `declaration-track:68102ed8d156cb906cc3e40330ac00d28e6df7758f4546739305bc862b4ae520` |
| 3 | `def` | [closedCounit](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ClosedFunctorCategoryNamespaced.lean/declarations/closedcounit.md) | 59 | `declaration-track:beeb843520130ef7dada33c5e42a3b4ac61229888cf9b1659d2dbbfc7ddaa296` |
| 4 | `instance` | [closed](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ClosedFunctorCategoryNamespaced.lean/declarations/closed.md) | 74 | `declaration-track:01f5a5ff6af73cd36d29131fec69e278f05af99b1cf659196b7b529155d79d25` |
| 5 | `instance` | [monoidalClosed](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ClosedFunctorCategoryNamespaced.lean/declarations/monoidalclosed.md) | 85 | `declaration-track:c73b964835037c7fbca64af46334f182b7bc531853c72c36abf905fdaa2450e6` |
| 6 | `theorem` | [ihom_map](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ClosedFunctorCategoryNamespaced.lean/declarations/ihom-map.md) | 89 | `result-track:d3a6db9c7544872c72cfa92e3a864505a22b36c8c27d41f272fed824c9bea13d` |
| 7 | `theorem` | [ihom_ev_app](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ClosedFunctorCategoryNamespaced.lean/declarations/ihom-ev-app.md) | 93 | `result-track:276382ae9bf7dd64b6ae39100daf89cce346a766068769f80075c31e0b4cb77a` |
| 8 | `theorem` | [ihom_coev_app](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ClosedFunctorCategoryNamespaced.lean/declarations/ihom-coev-app.md) | 97 | `result-track:3571bbce4a8823f0e4c9436028f5d54c68bf789feeb5a5dd99bd733ad5a69551` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=ad805ba5812f5705c69cde8be012a30c3ef6e415d713036f654b251a58f2807d -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorCategory/Varianta2bf4face1ce4b19a4352ddedb853eeabc66264f43311c1603abf55a72aa8617.lean","GRWTSK/_verification/specifications/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorCategory/Varianta2bf4face1ce4b19a4352ddedb853eeabc66264f43311c1603abf55a72aa8617.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
