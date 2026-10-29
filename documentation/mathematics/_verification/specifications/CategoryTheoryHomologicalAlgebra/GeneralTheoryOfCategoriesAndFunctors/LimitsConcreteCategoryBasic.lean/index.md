# Verification target: Limits Concrete Category Basic

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5601575c8364b834a1c130344f4d446baad85936",
  "lexical_observation_count": 21,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant30f6b63c3391869033aceaecbc9c31e2dd2609ffeb906da17485d883c0bfc485.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LimitsConcreteCategoryBasic.lean/index.md) · [Full source](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LimitsConcreteCategoryBasic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5601575c8364b834a1c130344f4d446baad85936`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant30f6b63c3391869033aceaecbc9c31e2dd2609ffeb906da17485d883c0bfc485.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant30f6b63c3391869033aceaecbc9c31e2dd2609ffeb906da17485d883c0bfc485.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.ConcreteCategory.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Preserves.Basic` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Types.Colimits` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Types.Images` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Types.Filtered` — import line 10; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Yoneda` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LimitsConcreteCategoryBasic.lean/declarations/instance-source-edition-5.md) | 41 | `declaration-track:cbf78b39b1f56a8c0f2f948753e9927da49d5545ecad7135e8ad14e581c3489a` |
| 2 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LimitsConcreteCategoryBasic.lean/declarations/instance-source-edition-7.md) | 44 | `declaration-track:dec39b90af7521ce27ca877c239530f1c9d34be33ad4c9ae1bfe370ab8c2001d` |
| 3 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LimitsConcreteCategoryBasic.lean/declarations/instance.md) | 46 | `declaration-track:26923588c99617f327abcec998485f37f9c974709ff51f17f089f6fa3225f0d2` |
| 4 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LimitsConcreteCategoryBasic.lean/declarations/instance-source-edition-3.md) | 49 | `declaration-track:38b105feb45fa42c5c2a514ae38d791534453b5f1a11b10831b7d0db22c23839` |
| 5 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LimitsConcreteCategoryBasic.lean/declarations/instance-source-edition-2.md) | 51 | `declaration-track:2b3c764a7d76af8ba6c6eba41b149f4e070a00da3a3ca69d731678321929a5fd` |
| 6 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LimitsConcreteCategoryBasic.lean/declarations/instance-source-edition-6.md) | 54 | `declaration-track:ce394a525dfdca64467b214ed15c19ebce61d244318eceba3f8ed1b7ee57f53f` |
| 7 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LimitsConcreteCategoryBasic.lean/declarations/instance-source-edition-4.md) | 57 | `declaration-track:5766135dc48a5a6a02683e6a9249c93f199985ff2ac4c3de6662442bde1cb35a` |
| 8 | `lemma` | [small_sections_of_hasLimit](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LimitsConcreteCategoryBasic.lean/declarations/small-sections-of-haslimit.md) | 68 | `result-track:314ac2e0a589d37c79683038c604a2c97f05aebff7d6949b57f874cd55ec5f5d` |
| 9 | `theorem` | [to_product_injective_of_isLimit](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LimitsConcreteCategoryBasic.lean/declarations/to-product-injective-of-islimit.md) | 79 | `result-track:e3f9a3959ce9253971d9169ee686a7d123fe467ae010384c45b0c2b3ba6122a9` |
| 10 | `theorem` | [isLimit_ext](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LimitsConcreteCategoryBasic.lean/declarations/islimit-ext.md) | 94 | `result-track:da88c4d1830ec877b0a4b91a48d52533a3a27cf748d25d4787e49596a30ce1a1` |
| 11 | `theorem` | [limit_ext](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LimitsConcreteCategoryBasic.lean/declarations/limit-ext.md) | 98 | `result-track:083119d471609f20faab4f0ec0ed8778a8313e9a9017387ffde4b0114a68e69f` |
| 12 | `lemma` | [surjective_π_app_zero_of_surjective_map](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LimitsConcreteCategoryBasic.lean/declarations/surjective-app-zero-of-surjective-map.md) | 108 | `result-track:46dfec143b8e51dce7e47787eacbab4607489755e8f7afa8372f2aebd6b2890e` |
| 13 | `theorem` | [from_union_surjective_of_isColimit](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LimitsConcreteCategoryBasic.lean/declarations/from-union-surjective-of-iscolimit.md) | 130 | `result-track:c560f7c67c1626365c598386c5e8cd3cfaba57af283270a8d5ecb8a3a84a2759` |
| 14 | `theorem` | [isColimit_exists_rep](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LimitsConcreteCategoryBasic.lean/declarations/iscolimit-exists-rep.md) | 139 | `result-track:301f292d2c7daae4e80102e63f36bb8f6411cde1506b4ce1b2e3fb694e0a4604` |
| 15 | `theorem` | [colimit_exists_rep](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LimitsConcreteCategoryBasic.lean/declarations/colimit-exists-rep.md) | 144 | `result-track:d3b293dc83843527651d21d5a22644456dcabcef5f699b898afd00c232fb4173` |
| 16 | `theorem` | [isColimit_rep_eq_of_exists](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LimitsConcreteCategoryBasic.lean/declarations/iscolimit-rep-eq-of-exists.md) | 150 | `result-track:f20205bdf10f8d8f78f458a2749a4030f77bfadc89ba0cf79e1ea24693eb7571` |
| 17 | `theorem` | [colimit_rep_eq_of_exists](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LimitsConcreteCategoryBasic.lean/declarations/colimit-rep-eq-of-exists.md) | 162 | `result-track:7fdc951d3d1c7323b30ccc3ed7f6993b62cd16030a5be0cd1f6c397e8c742ab2` |
| 18 | `theorem` | [isColimit_exists_of_rep_eq](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LimitsConcreteCategoryBasic.lean/declarations/iscolimit-exists-of-rep-eq.md) | 176 | `result-track:981c03a2ea687d323d4fc3b4ce36e9ef355c7ede4384b9bb4adfa8cd4debc3bd` |
| 19 | `theorem` | [isColimit_rep_eq_iff_exists](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LimitsConcreteCategoryBasic.lean/declarations/iscolimit-rep-eq-iff-exists.md) | 183 | `result-track:b4ca400eb9f760fd3feb6960fa63cfe6548d24b07501ae8a5163fb9cd6bd792e` |
| 20 | `theorem` | [colimit_exists_of_rep_eq](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LimitsConcreteCategoryBasic.lean/declarations/colimit-exists-of-rep-eq.md) | 189 | `result-track:bcc479ef0c0e55ee52c2b660d44d39c533d46912a6c4846f2ce07c55d6251c6e` |
| 21 | `theorem` | [colimit_rep_eq_iff_exists](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LimitsConcreteCategoryBasic.lean/declarations/colimit-rep-eq-iff-exists.md) | 194 | `result-track:427d8f252f0c7d3398004c4dcb49cc65ec8b01c20bf70cf26437c39c3bc23741` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=2dc8f46df5bb5cec0c347311b26083577a56cd7e61802e816d683b9ddc0b2990 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant30f6b63c3391869033aceaecbc9c31e2dd2609ffeb906da17485d883c0bfc485.lean","GRWTSK/_verification/specifications/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant30f6b63c3391869033aceaecbc9c31e2dd2609ffeb906da17485d883c0bfc485.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
