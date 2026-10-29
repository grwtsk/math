# Verification target: Preserves Functor Category Namespaced Preserves Limit Of Lan Preserves Limit

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "577d126e7630208808a43f1756e7c40928e9ab0e",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorCategory/Variantf5e7fa2a7850431fbc7f902d8f7c434fb83fe33870a92147f2bcb96f3578fc7b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PreservesFunctorCategoryNamespacedPreservesLimitOfLanPreservesLimit.lean/index.md) · [Full source](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PreservesFunctorCategoryNamespacedPreservesLimitOfLanPreservesLimit.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `577d126e7630208808a43f1756e7c40928e9ab0e`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorCategory/Variantf5e7fa2a7850431fbc7f902d8f7c434fb83fe33870a92147f2bcb96f3578fc7b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorCategory/Variantf5e7fa2a7850431fbc7f902d8f7c434fb83fe33870a92147f2bcb96f3578fc7b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Limits.FunctorCategory` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Preserves.Shapes.BinaryProducts` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Yoneda` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Presheaf` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [FunctorCategory.prodPreservesColimits](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PreservesFunctorCategoryNamespacedPreservesLimitOfLanPreservesLimit.lean/declarations/functorcategory-prodpreservescolimits.md) | 66 | `declaration-track:0d74710187414e1758e35be14cf0d705244ec516080dc61ecd0ca061666ae280` |
| 2 | `instance` | [whiskeringLeftPreservesLimits](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PreservesFunctorCategoryNamespacedPreservesLimitOfLanPreservesLimit.lean/declarations/whiskeringleftpreserveslimits.md) | 86 | `declaration-track:c34b9f0007eb2cccf009d2fe0889521b484f83674375864fb67130a5a59f81de` |
| 3 | `instance` | [whiskeringRightPreservesLimitsOfShape](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PreservesFunctorCategoryNamespacedPreservesLimitOfLanPreservesLimit.lean/declarations/whiskeringrightpreserveslimitsofshape.md) | 97 | `declaration-track:a56b527077b11c08c89271f7636ab7f22397671ec72a34285b78d001468c9798` |
| 4 | `instance` | [whiskeringRightPreservesLimits](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PreservesFunctorCategoryNamespacedPreservesLimitOfLanPreservesLimit.lean/declarations/whiskeringrightpreserveslimits.md) | 108 | `declaration-track:352929e6ca4832b12a0d2f1b5b4b42699159d22f39c2442d0bfbabae182d6687` |
| 5 | `def` | [preservesLimitOfLanPreservesLimit](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PreservesFunctorCategoryNamespacedPreservesLimitOfLanPreservesLimit.lean/declarations/preserveslimitoflanpreserveslimit.md) | 116 | `declaration-track:713ecc46eeabbbc31b2f77613d67af816f8063703efa3f3d2f5abe6de748a12e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=aca208cf3b41a5e707491d0aeb888269c7fa059e25ee54b081ce6dcf08d7a944 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorCategory/Variantf5e7fa2a7850431fbc7f902d8f7c434fb83fe33870a92147f2bcb96f3578fc7b.lean","GRWTSK/_verification/specifications/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorCategory/Variantf5e7fa2a7850431fbc7f902d8f7c434fb83fe33870a92147f2bcb96f3578fc7b.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
