# Verification target: Site Category Mathlib

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "428e1398108878c3537d4a983198391178210e94",
  "lexical_observation_count": 17,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/SiteCategoryMathlib/Variant8527a28b86b45bdad51c9b0ebc8dd264f946ac754227ef8ad264647f1a0d99ec.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SiteCategoryMathlib.lean/index.md) · [Full source](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SiteCategoryMathlib.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `428e1398108878c3537d4a983198391178210e94`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/SiteCategoryMathlib/Variant8527a28b86b45bdad51c9b0ebc8dd264f946ac754227ef8ad264647f1a0d99ec.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/SiteCategoryMathlib/Variant8527a28b86b45bdad51c9b0ebc8dd264f946ac754227ef8ad264647f1a0d99ec.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Category.Basic` — import line 1; external provider; requires a separately pinned dependency.
- `Think.SourceTree.Legacy.Compression.SiteCategory` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [SiteHom](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SiteCategoryMathlib.lean/declarations/sitehom.md) | 21 | `declaration-track:1bf64c4be5d82ec77813299374722cf17d85a908665d7795fb3ffbec166210d0` |
| 2 | `def` | [id](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SiteCategoryMathlib.lean/declarations/id.md) | 27 | `declaration-track:0ad3577a711e7308045585222383bea1e21cb694cf7c52cf754e9d63ede519b4` |
| 3 | `def` | [comp](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SiteCategoryMathlib.lean/declarations/comp.md) | 31 | `declaration-track:a7bded418b9c43f7e86607942c743bce2ffde4462d9b3db90575fa431be0888b` |
| 4 | `instance` | [siteObjectCategory](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SiteCategoryMathlib.lean/declarations/siteobjectcategory.md) | 38 | `declaration-track:44ff02a68f77ce0ee362bed1f2a004d43e49852b5e48a56de9e1f82b71141a33` |
| 5 | `structure` | [SiteCategoryMathlibSurface](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SiteCategoryMathlib.lean/declarations/sitecategorymathlibsurface.md) | 58 | `declaration-track:a9f7a23251521a5a54dd0f614a14c98af4443b555249f9bb04f0d7397bafd40c` |
| 6 | `def` | [defaultSiteCategoryMathlibSurface](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SiteCategoryMathlib.lean/declarations/defaultsitecategorymathlibsurface.md) | 68 | `declaration-track:4c3b6af1d5c13bc9fd42b351d300f777a3464ac0b94b6662a387b891075cfd63` |
| 7 | `theorem` | [siteObjectCategory_hom_eq_siteMorphism](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SiteCategoryMathlib.lean/declarations/siteobjectcategory-hom-eq-sitemorphism.md) | 78 | `result-track:f380be70832bf3b9ac2881e6036a658434968703cfeffc2e7d137562cd195593` |
| 8 | `def` | [siteHomToSiteMorphism](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SiteCategoryMathlib.lean/declarations/sitehomtositemorphism.md) | 83 | `declaration-track:487499360240aa9696204dc025c79d9a36a09a0d47f98c5288a778f3f7e99093` |
| 9 | `theorem` | [siteObjectCategory_id_eq_siteMorphism_id](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SiteCategoryMathlib.lean/declarations/siteobjectcategory-id-eq-sitemorphism-id.md) | 88 | `result-track:1e386f8ab9ce963ada8d8c0b9ec83587821ad8c28042a78042f112fcd3cda6df` |
| 10 | `theorem` | [siteObjectCategory_comp_eq_siteMorphism_comp](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SiteCategoryMathlib.lean/declarations/siteobjectcategory-comp-eq-sitemorphism-comp.md) | 94 | `result-track:acd4e04eb906930b720b0b4d5a8ef960a239ea92e6006ce53d24add244c4ec2f` |
| 11 | `theorem` | [default_site_category_mathlib_has_category_instance](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SiteCategoryMathlib.lean/declarations/default-site-category-mathlib-has-category-instance.md) | 102 | `result-track:c4d5177d477609eb8424d32894d998d6a66b73bb52efdde442d5257cc013598d` |
| 12 | `theorem` | [site_category_mathlib_denies_grothendieck_topology_instance](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SiteCategoryMathlib.lean/declarations/site-category-mathlib-denies-grothendieck-topology-instance.md) | 108 | `result-track:1b12b216cd44d487acad8312ea4aba1bf86ba675bb15a03af59159b1e7ca3737` |
| 13 | `theorem` | [site_category_mathlib_denies_sheaf_category](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SiteCategoryMathlib.lean/declarations/site-category-mathlib-denies-sheaf-category.md) | 114 | `result-track:fa06128aef78ec8a17a5d57dbaf2a81ae61cf21cd7232c1b8b88b627d1336b44` |
| 14 | `theorem` | [site_category_mathlib_denies_lawvere_tierney_topology](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SiteCategoryMathlib.lean/declarations/site-category-mathlib-denies-lawvere-tierney-topology.md) | 119 | `result-track:349f13f31c4a4cc98fc30a895f409f8895025492083477dbc2ea026df56f8be8` |
| 15 | `theorem` | [site_category_mathlib_denies_essential_geometric_morphism](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SiteCategoryMathlib.lean/declarations/site-category-mathlib-denies-essential-geometric-morphism.md) | 125 | `result-track:bce02fcd7022962a971d2b9c930e9fdac8f16425e0a14dabf10fd46e53288eaf` |
| 16 | `theorem` | [site_category_mathlib_denies_topos](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SiteCategoryMathlib.lean/declarations/site-category-mathlib-denies-topos.md) | 131 | `result-track:89096d5aee1f1099dd37d1bad35516b6f881788689bcc209d96568ca9e07bfdc` |
| 17 | `theorem` | [site_category_mathlib_denies_theorem_promotion](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SiteCategoryMathlib.lean/declarations/site-category-mathlib-denies-theorem-promotion.md) | 136 | `result-track:e24a1c0b9a8f09a5b7ce1cd7754a917f5a4c19b134747edda71efcd7f66d292e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=927a77070f375aadf27f615b4c4438daab3832e91ca5c5e698f1d70145ffbad0 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/SiteCategoryMathlib/Variant8527a28b86b45bdad51c9b0ebc8dd264f946ac754227ef8ad264647f1a0d99ec.lean","GRWTSK/_verification/specifications/CategoriesAndHomologicalAlgebra/CategoryTheory/SiteCategoryMathlib/Variant8527a28b86b45bdad51c9b0ebc8dd264f946ac754227ef8ad264647f1a0d99ec.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
