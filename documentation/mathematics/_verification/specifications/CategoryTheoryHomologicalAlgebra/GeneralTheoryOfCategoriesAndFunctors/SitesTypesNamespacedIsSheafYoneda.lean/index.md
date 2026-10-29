# Verification target: Sites Types Namespaced Is Sheaf Yoneda

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "14bf0b4ea3343f431d374f2abf28ca148b23002a",
  "lexical_observation_count": 20,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Types/Variantd510ca9e5f538359beb6e77173c9897f0743554f336023866024d52d8532bce1.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SitesTypesNamespacedIsSheafYoneda.lean/index.md) · [Full source](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SitesTypesNamespacedIsSheafYoneda.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `14bf0b4ea3343f431d374f2abf28ca148b23002a`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Types/Variantd510ca9e5f538359beb6e77173c9897f0743554f336023866024d52d8532bce1.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Types/Variantd510ca9e5f538359beb6e77173c9897f0743554f336023866024d52d8532bce1.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Sites.Canonical` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [typesGrothendieckTopology](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SitesTypesNamespacedIsSheafYoneda.lean/declarations/typesgrothendiecktopology.md) | 37 | `declaration-track:d3f9ae76264ea2aec18b2e4e042de4cbb204cd0f5057efe0aee4c360eb955113` |
| 2 | `def` | [discreteSieve](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SitesTypesNamespacedIsSheafYoneda.lean/declarations/discretesieve.md) | 46 | `declaration-track:f6c685b7b02746aa2afd2c46da8627e76b23cce46928d820442f3b83c8c9cd24` |
| 3 | `theorem` | [discreteSieve_mem](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SitesTypesNamespacedIsSheafYoneda.lean/declarations/discretesieve-mem.md) | 51 | `result-track:374923d40d3bd77e11a6bae13153281e80473923609d161b1bbe9f26c134048a` |
| 4 | `def` | [discretePresieve](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SitesTypesNamespacedIsSheafYoneda.lean/declarations/discretepresieve.md) | 56 | `declaration-track:619e8892514adf570a32447fe80515f3dc715fab7796ea01b08a98d17424c602` |
| 5 | `theorem` | [generate_discretePresieve_mem](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SitesTypesNamespacedIsSheafYoneda.lean/declarations/generate-discretepresieve-mem.md) | 60 | `result-track:a78e92f4fba2634474ee43e1513f747109642cff2e362c580daa94c09d372f0f` |
| 6 | `theorem` | [isSheaf_yoneda'](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SitesTypesNamespacedIsSheafYoneda.lean/declarations/issheaf-yoneda.md) | 67 | `result-track:d6dd80c13766690e54c808c167c7845017a04f30fd77bb209770d071d63a5a12` |
| 7 | `def` | [yoneda'](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SitesTypesNamespacedIsSheafYoneda.lean/declarations/yoneda.md) | 77 | `declaration-track:fce17a79c94cb0be3068bdb586030fad809fc61d1490a20bf3317037153163c4` |
| 8 | `theorem` | [yoneda'_comp](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SitesTypesNamespacedIsSheafYoneda.lean/declarations/yoneda-comp.md) | 83 | `result-track:cfd1eb3a9b312de238d11a9aa7b5f897825c0d21948e7974444b6009ae9891db` |
| 9 | `def` | [eval](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SitesTypesNamespacedIsSheafYoneda.lean/declarations/eval.md) | 91 | `declaration-track:dadd80db734f715f6b24775b0568e2116cdae0bba30858383520fa0e9bfd90ce` |
| 10 | `def` | [typesGlue](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SitesTypesNamespacedIsSheafYoneda.lean/declarations/typesglue.md) | 97 | `declaration-track:ff51738e42b75f3af4cfa6242c68f2adfa61f78c5738a05bf1d9932a18a8c96e` |
| 11 | `theorem` | [eval_typesGlue](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SitesTypesNamespacedIsSheafYoneda.lean/declarations/eval-typesglue.md) | 110 | `result-track:5a4b13a0adb1a4c7fcfe4820f1740d1fb18ed33108028de1a01d42c26f5aaa7c` |
| 12 | `theorem` | [typesGlue_eval](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SitesTypesNamespacedIsSheafYoneda.lean/declarations/typesglue-eval.md) | 116 | `result-track:ec3224e16a794923333002da117057c9fb01b63872c3297a32f19dd2c9cfb3a5` |
| 13 | `def` | [evalEquiv](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SitesTypesNamespacedIsSheafYoneda.lean/declarations/evalequiv.md) | 130 | `declaration-track:4debd8c830d47542217a7f2a754f723bc60ef50db840eeb3ba8652f0f7fa15f1` |
| 14 | `theorem` | [eval_map](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SitesTypesNamespacedIsSheafYoneda.lean/declarations/eval-map.md) | 138 | `result-track:78a3e468fa2cde1d917216e20ee577038eac93e0ae8e50c2854bd648a5ead760` |
| 15 | `def` | [equivYoneda](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SitesTypesNamespacedIsSheafYoneda.lean/declarations/equivyoneda-source-edition-2.md) | 145 | `declaration-track:97f015ac7b4930d5f4738a6fda86fb366c034c39ef48e1ec7c02b798cb3df536` |
| 16 | `def` | [equivYoneda'](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SitesTypesNamespacedIsSheafYoneda.lean/declarations/equivyoneda.md) | 153 | `declaration-track:92b1a5c282661ca27e185655037b49379ca61538f1a385e64b9dce5e7e050aa6` |
| 17 | `theorem` | [eval_app](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SitesTypesNamespacedIsSheafYoneda.lean/declarations/eval-app.md) | 161 | `result-track:8f049ccf0d39d9be3f4b7044bda6487ea0256d3bc3b441a2ca3f10858236d943` |
| 18 | `def` | [typeEquiv](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SitesTypesNamespacedIsSheafYoneda.lean/declarations/typeequiv.md) | 170 | `declaration-track:6c13988e928ffeb6138cf0573d539fd04ef3b4d4cdd4a35f91e97305dbd73e82` |
| 19 | `theorem` | [subcanonical_typesGrothendieckTopology](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SitesTypesNamespacedIsSheafYoneda.lean/declarations/subcanonical-typesgrothendiecktopology.md) | 186 | `result-track:cc320dbadafe8b1ad93179be9ebfb173ad90d208b85d1d9a40186dfbb92314ea` |
| 20 | `theorem` | [typesGrothendieckTopology_eq_canonical](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SitesTypesNamespacedIsSheafYoneda.lean/declarations/typesgrothendiecktopology-eq-canonical.md) | 190 | `result-track:c7ec9f41496d0c12dd1ac69f9615ad5b49efda6e580026416d7ae3abb060479e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=ec3be1ec144d5aa02005256c9890167821078df4ec4dcd2ee7a3c0713e27164f -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Types/Variantd510ca9e5f538359beb6e77173c9897f0743554f336023866024d52d8532bce1.lean","GRWTSK/_verification/specifications/CategoriesAndHomologicalAlgebra/CategoryTheory/Types/Variantd510ca9e5f538359beb6e77173c9897f0743554f336023866024d52d8532bce1.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
