# Verification target: Cone

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d1010e9c7739c600a26f15f1c6c228a05bc424f7",
  "lexical_observation_count": 18,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Cone/Variant2d687b6b80f06bc30dabdf670dbb1fb3a89a77b3f1438739c4c78c0068a32098.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/Cone.lean/index.md) · [Full source](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/Cone.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d1010e9c7739c600a26f15f1c6c228a05bc424f7`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Cone/Variant2d687b6b80f06bc30dabdf670dbb1fb3a89a77b3f1438739c4c78c0068a32098.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Cone/Variant2d687b6b80f06bc30dabdf670dbb1fb3a89a77b3f1438739c4c78c0068a32098.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Comma.Over.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.WithTerminal.Basic` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [commaFromOver](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/Cone.lean/declarations/commafromover.md) | 35 | `declaration-track:db2fec18467ed75b9525961d3e76dfdf20583215898231fae99db304cbac1abb` |
| 2 | `def` | [liftFromOver](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/Cone.lean/declarations/liftfromover.md) | 49 | `declaration-track:284ebf16760a46a6c311e6f7eaae3c5ab3d489e461127f9fa62399532e1e8ab7` |
| 3 | `def` | [liftFromOverComp](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/Cone.lean/declarations/liftfromovercomp.md) | 53 | `declaration-track:51ea38ee44aecb21cb1af574b31775cb905f3c2a3898782ac8abbbf878478c7c` |
| 4 | `def` | [coneLift](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/Cone.lean/declarations/conelift.md) | 61 | `declaration-track:2b8a73a5c2006eceba736d89c1e9af580a326d8077767c756eda73c024a1ee8c` |
| 5 | `def` | [coneBack](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/Cone.lean/declarations/coneback.md) | 83 | `declaration-track:bbfb7557874f6746b34d7f92735eee632d2df476c6ba8420bb0a39fbd61776ad` |
| 6 | `def` | [coneEquiv](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/Cone.lean/declarations/coneequiv.md) | 105 | `declaration-track:5c406348a662765f7ed3c8b4aeba6c80cf7a859a5939f624813d6047fadecab8` |
| 7 | `lemma` | [coneEquiv_functor_obj_π_app_star](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/Cone.lean/declarations/coneequiv-functor-obj-app-star.md) | 112 | `result-track:a2aaa5cf4cb8059b90e00f021f8534e98ee78ef6ba9f49d483584abd5f780246` |
| 8 | `lemma` | [coneEquiv_functor_obj_π_app_of](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/Cone.lean/declarations/coneequiv-functor-obj-app-of.md) | 115 | `result-track:c109009a00fd3f8e9f32a9e0fe8998b543ddb85f3f67607386f03d943488281f` |
| 9 | `def` | [isLimitEquiv](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/Cone.lean/declarations/islimitequiv.md) | 121 | `declaration-track:0900375847a70fac73dee8fa8a35da9882f7925ea324248e7a917c71a8bc2830` |
| 10 | `def` | [commaFromUnder](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/Cone.lean/declarations/commafromunder.md) | 135 | `declaration-track:6afa2d543778d0382ed56c00596967d9c8f09652eee5364e3dc9544c82b289a4` |
| 11 | `def` | [liftFromUnder](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/Cone.lean/declarations/liftfromunder.md) | 149 | `declaration-track:a1f4aafcf79430c2496245a361d4b4ed370ccd0cbcc83a47a7a1fce6a66d1069` |
| 12 | `def` | [liftFromUnderComp](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/Cone.lean/declarations/liftfromundercomp.md) | 153 | `declaration-track:aa89fd853b6052ef22cdba2a8438aa78cda01535119e5f7f77a74228552eb855` |
| 13 | `def` | [coconeLift](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/Cone.lean/declarations/coconelift.md) | 161 | `declaration-track:2561240e67f0957d10dc06c1fbac8fca6b153040450674bb3f2d0dc3a940b997` |
| 14 | `def` | [coconeBack](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/Cone.lean/declarations/coconeback.md) | 183 | `declaration-track:78c4ec771c713f799a21372fe0a0d833bb2dfb6c0302ed40f7bb0763ea01f976` |
| 15 | `def` | [coconeEquiv](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/Cone.lean/declarations/coconeequiv.md) | 205 | `declaration-track:35cde43348c5fac6379cbb340598870c79051e89beb2d8d1c12b3fdd7f68bf25` |
| 16 | `lemma` | [coconeEquiv_functor_obj_ι_app_star](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/Cone.lean/declarations/coconeequiv-functor-obj-app-star.md) | 212 | `result-track:1b5982e59ae262c3bb0956d7dcdc26e8e41311bb98c1a1a1ed6b0d36806f3f95` |
| 17 | `lemma` | [coconeEquiv_functor_obj_ι_app_of](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/Cone.lean/declarations/coconeequiv-functor-obj-app-of.md) | 215 | `result-track:7a32a3a819521958f3e432bf3d3419d7c43c22637b671991e154b7263c853945` |
| 18 | `def` | [isColimitEquiv](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/Cone.lean/declarations/iscolimitequiv.md) | 221 | `declaration-track:5aeb24b975446dec256a554f5767496d8930e8383a9dae065e4b04f04ebd4616` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=4f500df74a95b0563e49fbf92ee29648eecf008387f3c35933631d5a2b1cef0e -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Cone/Variant2d687b6b80f06bc30dabdf670dbb1fb3a89a77b3f1438739c4c78c0068a32098.lean","GRWTSK/_verification/specifications/CategoriesAndHomologicalAlgebra/CategoryTheory/Cone/Variant2d687b6b80f06bc30dabdf670dbb1fb3a89a77b3f1438739c4c78c0068a32098.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
