# Verification target: Rigid Braided Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "28348e5eab67237e25bf142e991a4163d75e0c2a",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Braided/Variantda8fc44b7a3fb52277b5c0335c6138b5d479e4c6f39cf54551d8b03df3b16b41.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/RigidBraidedNamespaced.lean/index.md) · [Full source](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/RigidBraidedNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `28348e5eab67237e25bf142e991a4163d75e0c2a`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Braided/Variantda8fc44b7a3fb52277b5c0335c6138b5d479e4c6f39cf54551d8b03df3b16b41.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Braided/Variantda8fc44b7a3fb52277b5c0335c6138b5d479e4c6f39cf54551d8b03df3b16b41.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Monoidal.Rigid.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Monoidal.Braided.Basic` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [coevaluation_evaluation_braided'](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/RigidBraidedNamespaced.lean/declarations/coevaluation-evaluation-braided.md) | 28 | `result-track:ab81b635a9dbe8639e2961332f1e759d781606eb9dd09ce15c8317af9d52ef40` |
| 2 | `theorem` | [evaluation_coevaluation_braided'](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/RigidBraidedNamespaced.lean/declarations/evaluation-coevaluation-braided.md) | 54 | `result-track:9efad9d4d5d6144896e524bb1dc8a18b1d314bfc8d7dde61629494c4401f5a2d` |
| 3 | `def` | [exactPairing_swap](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/RigidBraidedNamespaced.lean/declarations/exactpairing-swap.md) | 77 | `declaration-track:808d58e4e9ceccc828cb2f08206e871999231e5998b445783a2960be478c3989` |
| 4 | `def` | [hasLeftDualOfHasRightDual](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/RigidBraidedNamespaced.lean/declarations/hasleftdualofhasrightdual.md) | 84 | `declaration-track:c2f2eeaf5ea7e0c417dd68772668a49dc293c9e8797416b1d19b42d36467369d` |
| 5 | `def` | [hasRightDualOfHasLeftDual](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/RigidBraidedNamespaced.lean/declarations/hasrightdualofhasleftdual.md) | 89 | `declaration-track:e90ede53864f016134fcfca816b52d76bef248cb57c4b3671dfc1c317ebab730` |
| 6 | `instance` | [leftRigidCategoryOfRightRigidCategory](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/RigidBraidedNamespaced.lean/declarations/leftrigidcategoryofrightrigidcategory.md) | 93 | `declaration-track:956c956e13347c4f63ceee0db7d07379eaf7be1c48afc076ce94d10e0c435f4d` |
| 7 | `instance` | [rightRigidCategoryOfLeftRigidCategory](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/RigidBraidedNamespaced.lean/declarations/rightrigidcategoryofleftrigidcategory.md) | 96 | `declaration-track:4de1a50882e499441352da574375b22b82761e5382ac268943445ab3853a8caf` |
| 8 | `instance` | [rigidCategoryOfRightRigidCategory](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/RigidBraidedNamespaced.lean/declarations/rigidcategoryofrightrigidcategory.md) | 100 | `declaration-track:56a722dc013dfadff09fa7859991d79a7242a9017601d19ae88830ed55cecff2` |
| 9 | `instance` | [rigidCategoryOfLeftRigidCategory](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/RigidBraidedNamespaced.lean/declarations/rigidcategoryofleftrigidcategory.md) | 105 | `declaration-track:ad31e3ea1c1a7e2925a1b42977c506f43f288a7589a9a7081563f90bf94b2468` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=0e3b723bb24c6bcacb4f6960b9481f32dde0e7f9d8a1cdd8bd54bcf684b39f29 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Braided/Variantda8fc44b7a3fb52277b5c0335c6138b5d479e4c6f39cf54551d8b03df3b16b41.lean","GRWTSK/_verification/specifications/CategoriesAndHomologicalAlgebra/CategoryTheory/Braided/Variantda8fc44b7a3fb52277b5c0335c6138b5d479e4c6f39cf54551d8b03df3b16b41.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
