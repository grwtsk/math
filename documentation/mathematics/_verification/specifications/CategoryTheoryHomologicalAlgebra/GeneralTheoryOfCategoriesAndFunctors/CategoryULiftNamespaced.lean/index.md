# Verification target: Category ULift Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ae2f02dd9621b3fb985d069005c73b43130b3e03",
  "lexical_observation_count": 22,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/ULift/Variant19e7d813604551431bcc1fff46cdffa4c0ee4f58c59fe3eaa9cda88d5298997a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryULiftNamespaced.lean/index.md) · [Full source](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryULiftNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ae2f02dd9621b3fb985d069005c73b43130b3e03`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/ULift/Variant19e7d813604551431bcc1fff46cdffa4c0ee4f58c59fe3eaa9cda88d5298997a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/ULift/Variant19e7d813604551431bcc1fff46cdffa4c0ee4f58c59fe3eaa9cda88d5298997a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Category.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Equivalence` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.EqToHom` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Data.ULift` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [ULift.upFunctor](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryULiftNamespaced.lean/declarations/ulift-upfunctor.md) | 57 | `declaration-track:fd527c22d1091a2b2182c3587c071fc4d16ffe2b1750076af64bd41ba2898bd2` |
| 2 | `def` | [ULift.downFunctor](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryULiftNamespaced.lean/declarations/ulift-downfunctor.md) | 63 | `declaration-track:4e294aca4fe2b60ebc96d55fd254a2a4f9c298628e380245dc16dbe68959adc0` |
| 3 | `def` | [ULift.equivalence](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryULiftNamespaced.lean/declarations/ulift-equivalence.md) | 69 | `declaration-track:2540ba6ffa43bd8677fbbe92b401150e7137063a1c5dcc9b00ad3690f654edd4` |
| 4 | `def` | [ULiftHom.](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryULiftNamespaced.lean/declarations/ulifthom.md) | 84 | `declaration-track:636c11d75916c8a9c1b546c8979bacbf7fc7069806b1b53f6af5ad3f7ac3ffb2` |
| 5 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryULiftNamespaced.lean/declarations/instance-source-edition-3.md) | 88 | `declaration-track:e07682f894308629381bd9e59dba70254d1874f6d0d5e379304cae02b12e43d4` |
| 6 | `def` | [ULiftHom.objDown](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryULiftNamespaced.lean/declarations/ulifthom-objdown.md) | 92 | `declaration-track:ee0f3f4e51f470b39c7f6834b0c2a244f2cf1ba84c745ec4dd3557cdb864eaca` |
| 7 | `def` | [ULiftHom.objUp](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryULiftNamespaced.lean/declarations/ulifthom-objup.md) | 96 | `declaration-track:ddc3be7baaf645041d459fa6863ec17d2ab075c1afb55731f380bc655b6717d0` |
| 8 | `theorem` | [objDown_objUp](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryULiftNamespaced.lean/declarations/objdown-objup.md) | 100 | `result-track:236e2582212f3025287444c096712103542046d5503cf6e6b13cb88c768eb2a7` |
| 9 | `theorem` | [objUp_objDown](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryULiftNamespaced.lean/declarations/objup-objdown.md) | 104 | `result-track:8a7c146d9cdc41fbb592f546ec366bf97fafc2aa8ebc36a16621967da3e5f8b9` |
| 10 | `instance` | [ULiftHom.category](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryULiftNamespaced.lean/declarations/ulifthom-category.md) | 107 | `declaration-track:3f054768ef758e4b531694844e743af18e174e19114973b4981cc2507d9fa887` |
| 11 | `def` | [ULiftHom.up](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryULiftNamespaced.lean/declarations/ulifthom-up.md) | 114 | `declaration-track:a55f32007c47be6f1221581303f7edd1c36c33ad10bdb6e3634131582490c664` |
| 12 | `def` | [ULiftHom.down](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryULiftNamespaced.lean/declarations/ulifthom-down.md) | 120 | `declaration-track:ecff5936fa380f905ec5cdd9c9317108885a980f94ab4394985c315219056580` |
| 13 | `def` | [ULiftHom.equiv](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryULiftNamespaced.lean/declarations/ulifthom-equiv.md) | 125 | `declaration-track:2373a1f7e4684da2e2a5254ee1386d0532ea87d38b94eac00488ce15b8bdef95` |
| 14 | `def` | [AsSmall.](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryULiftNamespaced.lean/declarations/assmall.md) | 144 | `declaration-track:d71b822da3c00f49eafc3033b7ac443c7b7170d0f52fe7a285052b064aac095e` |
| 15 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryULiftNamespaced.lean/declarations/instance.md) | 146 | `declaration-track:64df32f5906861bc1c55f55056530f3d32db5931d90732c01181f94bd6ecca19` |
| 16 | `def` | [AsSmall.up](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryULiftNamespaced.lean/declarations/assmall-up.md) | 153 | `declaration-track:f02ec93f3dcb988415c3efca175cffe8e0b8b188c497561c76276c40bbe9341d` |
| 17 | `def` | [AsSmall.down](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryULiftNamespaced.lean/declarations/assmall-down.md) | 159 | `declaration-track:bc3746e3a434e5327b535a758f4dcdfc883744fe7e9159813031383f4ebe3580` |
| 18 | `theorem` | [down_comp](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryULiftNamespaced.lean/declarations/down-comp.md) | 164 | `result-track:363ba32773a9d61fadf9216c155bcb4f68058642416c48fbede1f4fefe5587f6` |
| 19 | `theorem` | [eqToHom_down](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryULiftNamespaced.lean/declarations/eqtohom-down.md) | 168 | `result-track:e500056fa22ff156e2266e4d7328d00eb0e1b0352b8dd8b9338a7a5355142cf1` |
| 20 | `def` | [AsSmall.equiv](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryULiftNamespaced.lean/declarations/assmall-equiv.md) | 175 | `declaration-track:c7bfbaf72c303c97d6fcf93edfc6cce241c05dafc177851a7b1140b5ac370c35` |
| 21 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryULiftNamespaced.lean/declarations/instance-source-edition-2.md) | 181 | `declaration-track:b5449cb5a6eac95da1dfda01f648437ade7ab15e62aed0f89a4a874f97b5f8ab` |
| 22 | `def` | [ULiftHomULiftCategory.equiv.](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryULiftNamespaced.lean/declarations/ulifthomuliftcategory-equiv.md) | 185 | `declaration-track:684df719ffe741ae6df1a43d7c2b641f4de43da27d7841528ef1ec321e529a31` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=0da8e184eee18af506afaae5b6189acc779fe3e98fac15bccc807b79a4c2ba39 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/ULift/Variant19e7d813604551431bcc1fff46cdffa4c0ee4f58c59fe3eaa9cda88d5298997a.lean","GRWTSK/_verification/specifications/CategoriesAndHomologicalAlgebra/CategoryTheory/ULift/Variant19e7d813604551431bcc1fff46cdffa4c0ee4f58c59fe3eaa9cda88d5298997a.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
