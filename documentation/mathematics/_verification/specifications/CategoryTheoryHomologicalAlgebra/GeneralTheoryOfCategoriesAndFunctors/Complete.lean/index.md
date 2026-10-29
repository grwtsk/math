# Verification target: Complete

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "41c13c797d0bead40107a16e1b5f69303ecb6f53",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Complete/Variant070abc9271e64e86ac7b69314ec33823ad97e74bdf0061819c7d23bdb9d53e96.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/Complete.lean/index.md) · [Full source](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/Complete.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `41c13c797d0bead40107a16e1b5f69303ecb6f53`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Complete/Variant070abc9271e64e86ac7b69314ec33823ad97e74bdf0061819c7d23bdb9d53e96.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Complete/Variant070abc9271e64e86ac7b69314ec33823ad97e74bdf0061819c7d23bdb9d53e96.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Adjunction.Lifting.Right` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Closed.FunctorCategory.Groupoid` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Groupoid.Discrete` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Preserves.FunctorCategory` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Monad.Comonadicity` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [incl](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/Complete.lean/declarations/incl.md) | 30 | `declaration-track:de91a47604e8f5f248cecaa65b93c63b123063db383437802186998d1cc50f9d` |
| 2 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/Complete.lean/declarations/instance.md) | 37 | `declaration-track:54acb078020ce891f11b3a5d0dfecb1f3f6d81998d13ca4bc104ba7a63c24dd6` |
| 3 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/Complete.lean/declarations/instance-source-edition-3.md) | 45 | `declaration-track:cc17cdab8a699a18b2abcc8cd31ffbc85194118d826fa2fa419475a836b3588a` |
| 4 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/Complete.lean/declarations/instance-source-edition-4.md) | 48 | `declaration-track:e7683eb66045cc92a9cf2f023ad4a053ba3165b479d1f74cc4d4f3bd68b106d0` |
| 5 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/Complete.lean/declarations/instance-source-edition-2.md) | 52 | `declaration-track:c2fc8e8d2ff7599c311ccff983da1796024e4d4d5a43a09e6ccbd6482fcf201f` |
| 6 | `def` | [functorCategoryClosed](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/Complete.lean/declarations/functorcategoryclosed.md) | 56 | `declaration-track:d482efa7d21d7d7de1406b9f9b72d91c75c5b7c71827c34acb2974481b9f3bb9` |
| 7 | `def` | [functorCategoryMonoidalClosed](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/Complete.lean/declarations/functorcategorymonoidalclosed.md) | 70 | `declaration-track:b44fe85e6b6e60e6c387e4ad4766d490d6a413a9df57af1aba0b1779a2425e55` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=f7ed2144b74153a250302f08ab6b453eaef4572892a7e02cf5e0a26c1d71f243 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Complete/Variant070abc9271e64e86ac7b69314ec33823ad97e74bdf0061819c7d23bdb9d53e96.lean","GRWTSK/_verification/specifications/CategoriesAndHomologicalAlgebra/CategoryTheory/Complete/Variant070abc9271e64e86ac7b69314ec33823ad97e74bdf0061819c7d23bdb9d53e96.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
