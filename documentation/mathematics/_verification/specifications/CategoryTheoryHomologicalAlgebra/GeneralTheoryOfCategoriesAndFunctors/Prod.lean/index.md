# Verification target: Prod

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "adb58aa11fea4c5f420ef4c3364fb71db99d61df",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Prod/Variant39d11893fdae31c65c1e9181de05a918353e91f26d57410a26f5a30057fe7c2e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/Prod.lean/index.md) · [Full source](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/Prod.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `adb58aa11fea4c5f420ef4c3364fb71db99d61df`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Prod/Variant39d11893fdae31c65c1e9181de05a918353e91f26d57410a26f5a30057fe7c2e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Prod/Variant39d11893fdae31c65c1e9181de05a918353e91f26d57410a26f5a30057fe7c2e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Functor.Currying` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Localization.Predicate` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.MorphismProperty.Composition` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [prod_uniq](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/Prod.lean/declarations/prod-uniq.md) | 43 | `result-track:e3f26a03c87ed324e2618cd89aa2604e11dfba2c070724736747e09151c94926` |
| 2 | `def` | [prodLift₁](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/Prod.lean/declarations/prodlift.md) | 55 | `declaration-track:176ec2bdff1c2772afcaf12208b2d158479a165ec473c07285d3feb0be888cd4` |
| 3 | `lemma` | [prod_fac₁](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/Prod.lean/declarations/prod-fac-source-edition-3.md) | 65 | `result-track:ac7a088cb4cce2951ea7f72ca0f94823e66a106a8eab4b2c6fe197286f515741` |
| 4 | `def` | [prodLift](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/Prod.lean/declarations/prodlift-source-edition-2.md) | 73 | `declaration-track:4db4617712c0731f0beec47522e5b5a03a1629926876ef0182857dfa67f67e07` |
| 5 | `lemma` | [prod_fac₂](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/Prod.lean/declarations/prod-fac-source-edition-2.md) | 86 | `result-track:4f50c70a4360b916ad93e271e7105f15cc760b602f270d41c0fb99ff7920cb0d` |
| 6 | `lemma` | [prod_fac](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/Prod.lean/declarations/prod-fac.md) | 91 | `result-track:210ccf559b57122612df600f3d56f82e66704cc06d36c1fc92a0ac58d647e6f3` |
| 7 | `def` | [prod](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/Prod.lean/declarations/prod.md) | 100 | `declaration-track:7bee74e0c5c84fd6b5bcfc72c1705a1b2dffd8884c19d61a3bb6b24d461b3da0` |
| 8 | `lemma` | [Construction.prodIsLocalization](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/Prod.lean/declarations/construction-prodislocalization.md) | 112 | `result-track:05c11fe474798d4db0c59a5f2cce39c3709d815c74a266150a0b8b0054784d4f` |
| 9 | `instance` | [prod](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/Prod.lean/declarations/prod-source-edition-2.md) | 133 | `declaration-track:adf43dc0623de024c8fab9301894950421188138bac5df3869bc0967282ad6cf` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=6c5684600abefc6c7c6cfa87e024b9acb8344da4505049b1f3c288e248e58b75 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Prod/Variant39d11893fdae31c65c1e9181de05a918353e91f26d57410a26f5a30057fe7c2e.lean","GRWTSK/_verification/specifications/CategoriesAndHomologicalAlgebra/CategoryTheory/Prod/Variant39d11893fdae31c65c1e9181de05a918353e91f26d57410a26f5a30057fe7c2e.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
