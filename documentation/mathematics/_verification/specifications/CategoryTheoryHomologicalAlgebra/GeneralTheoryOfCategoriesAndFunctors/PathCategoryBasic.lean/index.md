# Verification target: Path Category Basic

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2b530deff283762ef6cca417f1b6be76d626506a",
  "lexical_observation_count": 28,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant2c9dba59b33e89a3537778ceaa0c47343d77e793861f0b905d28e0fd2bae1ddd.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PathCategoryBasic.lean/index.md) · [Full source](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PathCategoryBasic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2b530deff283762ef6cca417f1b6be76d626506a`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant2c9dba59b33e89a3537778ceaa0c47343d77e793861f0b905d28e0fd2bae1ddd.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant2c9dba59b33e89a3537778ceaa0c47343d77e793861f0b905d28e0fd2bae1ddd.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.EqToHom` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Quotient` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Combinatorics.Quiver.Path` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [Paths](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PathCategoryBasic.lean/declarations/paths.md) | 30 | `declaration-track:bd0f05e055468ae696652e677fa1c018148c55de5a225bf12fa3764b2f6fa44e` |
| 2 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PathCategoryBasic.lean/declarations/instance.md) | 32 | `declaration-track:941830eb3ab6aad652ebf4e6736621ba0ad6d882d92234bd17d1f0f8cb7fae95` |
| 3 | `instance` | [categoryPaths](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PathCategoryBasic.lean/declarations/categorypaths.md) | 38 | `declaration-track:4352c5a40def1f4a7f1920eabe9b8958b788598511dc573f6c67b112a5141318` |
| 4 | `def` | [of](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PathCategoryBasic.lean/declarations/of.md) | 46 | `declaration-track:1e68327945b32119cd7ed6bc04b2cdf2a9fbd9c86a3c4db774ea2b950f0b11de` |
| 5 | `lemma` | [induction_fixed_source](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PathCategoryBasic.lean/declarations/induction-fixed-source.md) | 55 | `result-track:29253ac76d65a39f084d164c9c51d839f9932e3570bac49b3fec1a2e038ce476` |
| 6 | `lemma` | [induction_fixed_target](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PathCategoryBasic.lean/declarations/induction-fixed-target.md) | 67 | `result-track:92b279c12a79ab77a0663c42811ce5a665d4e91bc65ed69f80d4801a4e6e6422` |
| 7 | `lemma` | [induction](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PathCategoryBasic.lean/declarations/induction.md) | 83 | `result-track:a0b74a09d9108b44809f3cf90181d7d70e18e59f005cf755e9bb85da1846b26e` |
| 8 | `lemma` | [induction'](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PathCategoryBasic.lean/declarations/induction-source-edition-2.md) | 92 | `result-track:d0abf763e72eb8db5cdba614dea8f8f02edd537f431be4aee7d395d8674645ea` |
| 9 | `def` | [lift](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PathCategoryBasic.lean/declarations/lift.md) | 104 | `declaration-track:ab85f3a10211573ffbd59333c5f24668ea952309e46560567acca7030e969a62` |
| 10 | `theorem` | [lift_nil](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PathCategoryBasic.lean/declarations/lift-nil.md) | 122 | `result-track:3dff5fba132d30f227821d962e932321882ff59fa76aed25ef5095d05092fa5a` |
| 11 | `theorem` | [lift_cons](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PathCategoryBasic.lean/declarations/lift-cons.md) | 126 | `result-track:9c5d2e498eec101366f5ae0c45dbaaa98b220ecbebfccf7667b1d1bd8031cf08` |
| 12 | `theorem` | [lift_toPath](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PathCategoryBasic.lean/declarations/lift-topath.md) | 130 | `result-track:57eac0d3b4140fd35357c6f43ef3d12de0d4473563aa49917f82965eb3c8d4d2` |
| 13 | `theorem` | [lift_spec](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PathCategoryBasic.lean/declarations/lift-spec.md) | 135 | `result-track:5f8874c8810befb4c8ca6624f7d3c037ce86e56dc74f9f0b9aa76679007fd438` |
| 14 | `theorem` | [lift_unique](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PathCategoryBasic.lean/declarations/lift-unique.md) | 144 | `result-track:d04ccd4b3267e22d062f92968ecdf9eb522d9686da5eac42a976f478b8eacbf4` |
| 15 | `theorem` | [ext_functor](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PathCategoryBasic.lean/declarations/ext-functor.md) | 166 | `result-track:b9892a9551b40886459b59fe4ea5410641dd23bb0285d85b174ae6cdb6fa721f` |
| 16 | `theorem` | [Prefunctor.mapPath_comp'](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PathCategoryBasic.lean/declarations/prefunctor-mappath-comp.md) | 186 | `result-track:1503c6bc1ad6b9f5aae0735189c665057fb85c3a8f3e1986317dc617c5788694` |
| 17 | `def` | [composePath](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PathCategoryBasic.lean/declarations/composepath.md) | 202 | `declaration-track:ab74e23bd1998b1162b9a7ef9887e5d39d7fc93e2d9ea7f2e691554c012b931e` |
| 18 | `lemma` | [composePath_nil](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PathCategoryBasic.lean/declarations/composepath-nil.md) | 206 | `result-track:53e6b38bc51be09e7bf4938d0093952733e55354077bac4fa72ee72ed2f9a375` |
| 19 | `lemma` | [composePath_cons](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PathCategoryBasic.lean/declarations/composepath-cons.md) | 208 | `result-track:34ea26862203b8d7aac17477839e036a8da75b6668b434cfe3dd45836ca06672` |
| 20 | `theorem` | [composePath_toPath](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PathCategoryBasic.lean/declarations/composepath-topath.md) | 212 | `result-track:f8e902b7413dc5d853729e68fbf7a20f85cb41c9dce1179c87d98ccb51e690e1` |
| 21 | `theorem` | [composePath_comp](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PathCategoryBasic.lean/declarations/composepath-comp-source-edition-2.md) | 215 | `result-track:5d02f662f72b2e2faaa4e760fe3a209e7e50e161272e13320ecb4efbc7a125e3` |
| 22 | `theorem` | [composePath_id](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PathCategoryBasic.lean/declarations/composepath-id.md) | 223 | `result-track:d7c442bfea4fcdb092c5589114c75c3af61005a9298eea52012de66bf527c3ca` |
| 23 | `theorem` | [composePath_comp'](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PathCategoryBasic.lean/declarations/composepath-comp.md) | 226 | `result-track:167265b30b4b8d91891d5a92c3b6c59bb7e83fd913697d822f64eca57fc927e2` |
| 24 | `def` | [pathComposition](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PathCategoryBasic.lean/declarations/pathcomposition.md) | 234 | `declaration-track:c2337d15fc3eaa6aa98be81ba79835524898fa581474e2b8feb9884b421ada19` |
| 25 | `def` | [pathsHomRel](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PathCategoryBasic.lean/declarations/pathshomrel.md) | 245 | `declaration-track:61770fcdf57215795d85260f31d7f93d32ed6c71d8d1a3ff364bbadfe1de4515` |
| 26 | `def` | [toQuotientPaths](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PathCategoryBasic.lean/declarations/toquotientpaths.md) | 250 | `declaration-track:86332153f4ced7b64aececc8118340fea192dcc9f05acb58a0c0426fa9c1a9f1` |
| 27 | `def` | [quotientPathsTo](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PathCategoryBasic.lean/declarations/quotientpathsto.md) | 259 | `declaration-track:61b984ac15ac03e092ff28d22549c8e03e27e49b5b39ed84f10e7f29f397e90e` |
| 28 | `def` | [quotientPathsEquiv](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PathCategoryBasic.lean/declarations/quotientpathsequiv.md) | 264 | `declaration-track:7d8c5c72f60a19f912764c9d5c7e26f50d8ae34bb2a4191ed10b6f6625301b18` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=e71d445c1a7d74ee31b1f1b1c6f813aa38fc8918df34244cc357e249ebddc67c -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant2c9dba59b33e89a3537778ceaa0c47343d77e793861f0b905d28e0fd2bae1ddd.lean","GRWTSK/_verification/specifications/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant2c9dba59b33e89a3537778ceaa0c47343d77e793861f0b905d28e0fd2bae1ddd.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
