# Verification target: Pointed

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "271cfa73611cc48c09f81ddb0755bf9f0939a059",
  "lexical_observation_count": 17,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Pointed/Variantf3066b9479fce3975503417c86507348e3272e4d324c368f428623931a480da5.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/Pointed.lean/index.md) · [Full source](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/Pointed.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `271cfa73611cc48c09f81ddb0755bf9f0939a059`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Pointed/Variantf3066b9479fce3975503417c86507348e3272e4d324c368f428623931a480da5.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Pointed/Variantf3066b9479fce3975503417c86507348e3272e4d324c368f428623931a480da5.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.ConcreteCategory.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Adjunction.Basic` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [Pointed](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/Pointed.lean/declarations/pointed.md) | 26 | `declaration-track:8736c76406d77823e4509bd3aa6e60bac1b285ec2d4350af5d2fc1bd14ca4bdc` |
| 2 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/Pointed.lean/declarations/instance-source-edition-3.md) | 34 | `declaration-track:cf6a1da471b395c9b10088f4650bc8cfa3e4f559a0fa55509ae2abf8e4c3e014` |
| 3 | `abbrev` | [of](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/Pointed.lean/declarations/of.md) | 38 | `declaration-track:a51e207529ad08a3da232d454ee3759ecdc25ecf171139de809bfe530de7ab77` |
| 4 | `theorem` | [coe_of](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/Pointed.lean/declarations/coe-of.md) | 41 | `result-track:aacf14630cca1533ba99a09e7c21e2d009c423be4df51398e6a8a9ce55a9063c` |
| 5 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/Pointed.lean/declarations/instance-source-edition-4.md) | 46 | `declaration-track:e0bc53669099162bb3b2b6bac187b77f2cbb5b5ff3107d33d7c70584b75a837c` |
| 6 | `structure` | [Hom](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/Pointed.lean/declarations/hom.md) | 51 | `declaration-track:e05eb78f1108b4522f9027b53cb17e01bb19ab6b121a1491553fc51d9d68fa15` |
| 7 | `def` | [id](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/Pointed.lean/declarations/id.md) | 61 | `declaration-track:580db122c37dfdf23d58e2ee8a131cf9fc176e2376ff5bbf5a23af2cf467213d` |
| 8 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/Pointed.lean/declarations/instance-source-edition-2.md) | 64 | `declaration-track:c5e9248ac20961ff43ddf511c63d1f0e661c305a8ad3f4f7064cac113aa0cb15` |
| 9 | `def` | [comp](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/Pointed.lean/declarations/comp.md) | 69 | `declaration-track:4dc40f88dc815804330d3eaf025c639fae6eb2f760fdeded20128b33d8516393` |
| 10 | `instance` | [largeCategory](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/Pointed.lean/declarations/largecategory.md) | 74 | `declaration-track:9c6baeca0a9b655764d1aeff03508ec8b6d034d7dedfd197117482444d0b8495` |
| 11 | `lemma` | [Hom.id_toFun'](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/Pointed.lean/declarations/hom-id-tofun.md) | 79 | `result-track:c0db35be7d72f63e97f693ca4dca1f83c0a4dda021331c565a6fcdb98c084644` |
| 12 | `lemma` | [Hom.comp_toFun'](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/Pointed.lean/declarations/hom-comp-tofun.md) | 81 | `result-track:589af4d9909c8511899747bb7dc709258b1cbe4cc858274ec74fb7efcf5a5537` |
| 13 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/Pointed.lean/declarations/instance.md) | 84 | `declaration-track:56a734f120325fb60c808f615dc714943540ee763e6ba2e5d7259bf0dba0438f` |
| 14 | `instance` | [hasForget](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/Pointed.lean/declarations/hasforget.md) | 88 | `declaration-track:640c7caf852a62e0579a6fccc980878859aa0be8f57bd220de9bc07f29b4c91d` |
| 15 | `def` | [Iso.mk](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/Pointed.lean/declarations/iso-mk.md) | 95 | `declaration-track:fccbd8eebfae17b03d9226a542ba618b1eebbff740ef5252b72a3d711dae36d1` |
| 16 | `def` | [typeToPointed](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/Pointed.lean/declarations/typetopointed.md) | 105 | `declaration-track:8b3170e8ca622880f6182611aae634f06d298db64db3decc338f6bb932c4e72f` |
| 17 | `def` | [typeToPointedForgetAdjunction](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/Pointed.lean/declarations/typetopointedforgetadjunction.md) | 112 | `declaration-track:f08a62a417af72f146b5334350b44d930ca3b30d2acd04742b9b6b34bb1ce897` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=26bc710869c893f55a2cca0196bb83f3f7e1ff0009618c70875dccb73227355e -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Pointed/Variantf3066b9479fce3975503417c86507348e3272e4d324c368f428623931a480da5.lean","GRWTSK/_verification/specifications/CategoriesAndHomologicalAlgebra/CategoryTheory/Pointed/Variantf3066b9479fce3975503417c86507348e3272e4d324c368f428623931a480da5.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
