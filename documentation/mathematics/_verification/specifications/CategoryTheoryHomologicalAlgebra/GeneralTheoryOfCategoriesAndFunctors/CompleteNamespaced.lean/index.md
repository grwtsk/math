# Verification target: Complete Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6783bd6b43ff5f94184a40768321c08be8949bdd",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Complete/Variant39721834fd31a2013f4aa553c5316fcb36748585309cf1bc17bbc096e0dec792.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CompleteNamespaced.lean/index.md) · [Full source](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CompleteNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6783bd6b43ff5f94184a40768321c08be8949bdd`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Complete/Variant39721834fd31a2013f4aa553c5316fcb36748585309cf1bc17bbc096e0dec792.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Complete/Variant39721834fd31a2013f4aa553c5316fcb36748585309cf1bc17bbc096e0dec792.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Adjunction.Lifting.Right` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Closed.FunctorCategory.Groupoid` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Groupoid.Discrete` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Preserves.FunctorCategory` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Monad.Comonadicity` — import line 15; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [incl](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CompleteNamespaced.lean/declarations/incl.md) | 38 | `declaration-track:c2acf5c543b28ccf0b994dd63c5706f65b81e90baad08cb4952f9d894efd2dc0` |
| 2 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CompleteNamespaced.lean/declarations/instance-source-edition-2.md) | 45 | `declaration-track:6ba1536aeb8441050d6bf7a98ca8dda1460c002022344216c8daeb8a52f6d6a1` |
| 3 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CompleteNamespaced.lean/declarations/instance-source-edition-3.md) | 53 | `declaration-track:ef316d3651d7f3ea3fa3a533f84c380be6df5ac6977927b29fec6e4ab9536e27` |
| 4 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CompleteNamespaced.lean/declarations/instance.md) | 56 | `declaration-track:15aceeb7453df400519bb483bd8deee0457f2d71915ea3e56bde0798a03ce4c5` |
| 5 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CompleteNamespaced.lean/declarations/instance-source-edition-4.md) | 60 | `declaration-track:f5b2d733d13b885f6117a93d90803461d5b4b0d189f41a5ed87edef2e595d91c` |
| 6 | `def` | [functorCategoryClosed](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CompleteNamespaced.lean/declarations/functorcategoryclosed.md) | 64 | `declaration-track:a6b09be2f90ed27033be4b82869e9531cd3414d204cec16c9eb7a84ca9b96aa9` |
| 7 | `def` | [functorCategoryMonoidalClosed](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CompleteNamespaced.lean/declarations/functorcategorymonoidalclosed.md) | 78 | `declaration-track:d3b4f86c1ea54c1bf3eabfe1faa25963b4f0a3dc8554257348e8ca6e09f039ab` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=67325df1e0ec1973abf54850a4b5ff2efb5ff2beb1a0f6c4e047677b9d4877d8 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Complete/Variant39721834fd31a2013f4aa553c5316fcb36748585309cf1bc17bbc096e0dec792.lean","GRWTSK/_verification/specifications/CategoriesAndHomologicalAlgebra/CategoryTheory/Complete/Variant39721834fd31a2013f4aa553c5316fcb36748585309cf1bc17bbc096e0dec792.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
