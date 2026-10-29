# Verification target: Localization Finite Products

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8c00f9c945bb58cc17633e39a506e96a7d7e6e44",
  "lexical_observation_count": 16,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/FiniteProducts/Variant6a22b57ff07407d58f2bdb7388bb96adb8f5c74bc46718e72a911a9d238987f6.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LocalizationFiniteProducts.lean/index.md) · [Full source](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LocalizationFiniteProducts.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8c00f9c945bb58cc17633e39a506e96a7d7e6e44`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/FiniteProducts/Variant6a22b57ff07407d58f2bdb7388bb96adb8f5c74bc46718e72a911a9d238987f6.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/FiniteProducts/Variant6a22b57ff07407d58f2bdb7388bb96adb8f5c74bc46718e72a911a9d238987f6.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Limits.ConeCategory` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Preserves.Finite` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Localization.Adjunction` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Localization.HasLocalization` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Localization.Pi` — import line 10; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.MorphismProperty.Limits` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [inverts](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LocalizationFiniteProducts.lean/declarations/inverts.md) | 37 | `result-track:bee9856ce7b29e87b73c44f4c5644b6739403e4834d6e40fc98c6285381bca3d` |
| 2 | `abbrev` | [limitFunctor](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LocalizationFiniteProducts.lean/declarations/limitfunctor.md) | 45 | `declaration-track:3f590fe24b31c12c03fdc6d1ec0cfd4e9e85dc832d919c20ee42e48ee4d098f4` |
| 3 | `def` | [compLimitFunctorIso](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LocalizationFiniteProducts.lean/declarations/complimitfunctoriso.md) | 51 | `declaration-track:3cca21c6493bfc5b8f8ab2b599237aff95094adc591ea8fbdd7c94c155fa19a5` |
| 4 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LocalizationFiniteProducts.lean/declarations/instance-source-edition-5.md) | 56 | `declaration-track:a0edaa4aad5b9c64f45f1ed41db9de4c453c8e77216bbe2aab1851fef454c1f0` |
| 5 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LocalizationFiniteProducts.lean/declarations/instance.md) | 61 | `declaration-track:15b3f7b32181c89e6825a1575cd22b6b7fe26fec2394ae71f7b23b2413041dd7` |
| 6 | `def` | [adj](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LocalizationFiniteProducts.lean/declarations/adj.md) | 67 | `declaration-track:9c4809a1cb2ad095efb252cbc8991b0207014b90c94f36794a3b600ab0887cd3` |
| 7 | `lemma` | [adj_counit_app](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LocalizationFiniteProducts.lean/declarations/adj-counit-app.md) | 72 | `result-track:2dc7f69ed6a5be2fff47b1ca4b9857e85c573b58ee9895a5499f66b1cbc05270` |
| 8 | `def` | [isLimitMapCone](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LocalizationFiniteProducts.lean/declarations/islimitmapcone.md) | 80 | `declaration-track:689ae8f507ae19a8b8aa54b946f9ef91492890b6a9cf47c04d8d7babb08038b6` |
| 9 | `lemma` | [hasProductsOfShape](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LocalizationFiniteProducts.lean/declarations/hasproductsofshape.md) | 90 | `result-track:8dd2f8a82719e419a029c2c7654e9fbef22c9fa049cdec72027d434d1026f053` |
| 10 | `lemma` | [preservesProductsOfShape](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LocalizationFiniteProducts.lean/declarations/preservesproductsofshape.md) | 99 | `result-track:fef393c9f247203439302305a04a11ab86e8a8a568be6b17c53465fc37bab531` |
| 11 | `lemma` | [hasFiniteProducts](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LocalizationFiniteProducts.lean/declarations/hasfiniteproducts.md) | 108 | `result-track:a379d49b50654ca890086c3c1f314a8efc95a6885b00a7508cf1c2f8434f7f96` |
| 12 | `lemma` | [preservesFiniteProducts](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LocalizationFiniteProducts.lean/declarations/preservesfiniteproducts.md) | 115 | `result-track:a3aa893841924d097389ec7094bccc689178753465bd4d5bff1777fc20c3028c` |
| 13 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LocalizationFiniteProducts.lean/declarations/instance-source-edition-4.md) | 119 | `declaration-track:8a49bfaaf7e18b3a396200b13d080fa6032ea80376ba4934768648fdbc26425f` |
| 14 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LocalizationFiniteProducts.lean/declarations/instance-source-edition-2.md) | 121 | `declaration-track:50d1ba170018fafdf6e0ac26d5bd51786d76ff80bda95fb4fe16fd3ec5dd33d7` |
| 15 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LocalizationFiniteProducts.lean/declarations/instance-source-edition-3.md) | 123 | `declaration-track:652ccecf132686787412bd00a31895bbdbc541b95f566d4abed0943a56aefad6` |
| 16 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LocalizationFiniteProducts.lean/declarations/instance-source-edition-6.md) | 127 | `declaration-track:d99ceaf944043eef5174d42690c67b33c793710ebf06064c4648832b953b1761` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=179867c32cfa4e586cb15cbdaa83df4ae0e81a112699c4b85e6c2ac4c1a36865 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/FiniteProducts/Variant6a22b57ff07407d58f2bdb7388bb96adb8f5c74bc46718e72a911a9d238987f6.lean","GRWTSK/_verification/specifications/CategoriesAndHomologicalAlgebra/CategoryTheory/FiniteProducts/Variant6a22b57ff07407d58f2bdb7388bb96adb8f5c74bc46718e72a911a9d238987f6.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
