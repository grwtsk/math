# Verification target: Natural Transformation Namespaced Monoidal Nat Trans

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e2a5b410ace7011e5dc8d05ac6220df5e67ca5e8",
  "lexical_observation_count": 19,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/NaturalTransformation/Variantd21b32b759fd95134f9bdd6e780816426e16dfb23e708271e7b8244a29e08c02.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/NaturalTransformationNamespacedMonoidalNatTrans.lean/index.md) · [Full source](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/NaturalTransformationNamespacedMonoidalNatTrans.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e2a5b410ace7011e5dc8d05ac6220df5e67ca5e8`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/NaturalTransformation/Variantd21b32b759fd95134f9bdd6e780816426e16dfb23e708271e7b8244a29e08c02.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/NaturalTransformation/Variantd21b32b759fd95134f9bdd6e780816426e16dfb23e708271e7b8244a29e08c02.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Monoidal.Functor` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.FullSubcategory` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [MonoidalNatTrans](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/NaturalTransformationNamespacedMonoidalNatTrans.lean/declarations/monoidalnattrans.md) | 50 | `declaration-track:b5fdf71cf6fe60f4d8738fffeb7f66b4e15002b00918baf579540f6fde985df9` |
| 2 | `def` | [id](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/NaturalTransformationNamespacedMonoidalNatTrans.lean/declarations/id.md) | 74 | `declaration-track:26741fa702bc8f3869c5b6d151ee48cbae73a66a03088c5b14e70bb2f05daca2` |
| 3 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/NaturalTransformationNamespacedMonoidalNatTrans.lean/declarations/instance-source-edition-2.md) | 78 | `declaration-track:5591b23e3799f4ce6cfefdab7756e6e0ab60a9984c6cdac537c210a627a14c64` |
| 4 | `def` | [vcomp](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/NaturalTransformationNamespacedMonoidalNatTrans.lean/declarations/vcomp.md) | 83 | `declaration-track:4956900ad0a69ff8a148e633fa5998a7befee4afb9d92a33978df22741c0cf49` |
| 5 | `instance` | [categoryLaxMonoidalFunctor](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/NaturalTransformationNamespacedMonoidalNatTrans.lean/declarations/categorylaxmonoidalfunctor.md) | 88 | `declaration-track:26bc72b8267e19852078ffb6a4833d1a1ae162ab112dbb7e8bda672b42c4c1f7` |
| 6 | `theorem` | [comp_toNatTrans_lax](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/NaturalTransformationNamespacedMonoidalNatTrans.lean/declarations/comp-tonattrans-lax.md) | 95 | `result-track:ca95b3cf4dfa905319642d8892b2f84d3b2322bcbeffec79a8eb6b4253a689f7` |
| 7 | `instance` | [categoryMonoidalFunctor](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/NaturalTransformationNamespacedMonoidalNatTrans.lean/declarations/categorymonoidalfunctor.md) | 100 | `declaration-track:190d85d5dfdb494e7b7d412bd6cc1fdaa7792383c51a46999fa6b225d20d35cb` |
| 8 | `lemma` | [ext'](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/NaturalTransformationNamespacedMonoidalNatTrans.lean/declarations/ext.md) | 106 | `result-track:256fa0b3cd8d2a6e3b242c2d96e813e7c1c5005c551cf320bd590617463b1215` |
| 9 | `theorem` | [comp_toNatTrans](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/NaturalTransformationNamespacedMonoidalNatTrans.lean/declarations/comp-tonattrans.md) | 110 | `result-track:d1e93f214ae76e65a2d979faf1f50a914b0e2f4561ddd246a4a185da69150445` |
| 10 | `def` | [hcomp](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/NaturalTransformationNamespacedMonoidalNatTrans.lean/declarations/hcomp.md) | 119 | `declaration-track:2b3cdad1047cbcdf6ba4f37de808578c9e8d7219aabfa53a07386e1ed8ffdc4c` |
| 11 | `def` | [prod](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/NaturalTransformationNamespacedMonoidalNatTrans.lean/declarations/prod.md) | 136 | `declaration-track:17ef036c7247d64103926c6cffd02f8fc72090e6b159525c916f861b5b4837f1` |
| 12 | `def` | [ofComponents](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/NaturalTransformationNamespacedMonoidalNatTrans.lean/declarations/ofcomponents.md) | 151 | `declaration-track:b218e44d5f71446d70a48652c3327f3fcacf2ff291c747a77d42ccfa138ab139` |
| 13 | `theorem` | [ofComponents.hom_app](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/NaturalTransformationNamespacedMonoidalNatTrans.lean/declarations/ofcomponents-hom-app.md) | 170 | `result-track:a1626ec94249020d3eb9302ba8b9832f132ab1b075407836334a6c51a4d590ea` |
| 14 | `theorem` | [ofComponents.inv_app](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/NaturalTransformationNamespacedMonoidalNatTrans.lean/declarations/ofcomponents-inv-app.md) | 176 | `result-track:6a2c68e608b37a563761ad8a49cc1bb6e73901a50f825674770a54e7986f67f4` |
| 15 | `instance` | [isIso_of_isIso_app](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/NaturalTransformationNamespacedMonoidalNatTrans.lean/declarations/isiso-of-isiso-app.md) | 180 | `declaration-track:3dc09e77960f6507b116484c7cfde55b16e4e2c9ebda50830672df662076720a` |
| 16 | `def` | [monoidalUnit](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/NaturalTransformationNamespacedMonoidalNatTrans.lean/declarations/monoidalunit.md) | 192 | `declaration-track:c4ea3eb4c6d56d8f293f5c46cd2f4bb255706e601e50030ab1c031801b56d095` |
| 17 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/NaturalTransformationNamespacedMonoidalNatTrans.lean/declarations/instance.md) | 215 | `declaration-track:4ae817727c04a8c1fa03a6612a65b45ecdfea7bd087cb8e21cc1781b9923af05` |
| 18 | `def` | [monoidalCounit](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/NaturalTransformationNamespacedMonoidalNatTrans.lean/declarations/monoidalcounit.md) | 222 | `declaration-track:b3aeefe115f928c301b81c74780f1f714e74c83b12198449cd3245b9f5749b0a` |
| 19 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/NaturalTransformationNamespacedMonoidalNatTrans.lean/declarations/instance-source-edition-3.md) | 248 | `declaration-track:68d153c61b8e6945be5fdde330fa54d2018b59d40e39a4dbc738c78859aff7a5` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=9e190fc1cfa9b4b188ec0069b93161c3c81d0d798b7c9c2fb18218cd260912c1 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/NaturalTransformation/Variantd21b32b759fd95134f9bdd6e780816426e16dfb23e708271e7b8244a29e08c02.lean","GRWTSK/_verification/specifications/CategoriesAndHomologicalAlgebra/CategoryTheory/NaturalTransformation/Variantd21b32b759fd95134f9bdd6e780816426e16dfb23e708271e7b8244a29e08c02.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
