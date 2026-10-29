# Verification target: Extension

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5f371e5ffbfee15904741b6096ae665ab84d65bb",
  "lexical_observation_count": 50,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Extension/Variant08aa93300da5a5308ac20efe2973ab72a257f0a6ced6a9f1d29ae38400dc8041.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/Extension.lean/index.md) · [Full source](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/Extension.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5f371e5ffbfee15904741b6096ae665ab84d65bb`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Extension/Variant08aa93300da5a5308ac20efe2973ab72a257f0a6ced6a9f1d29ae38400dc8041.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Extension/Variant08aa93300da5a5308ac20efe2973ab72a257f0a6ced6a9f1d29ae38400dc8041.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Bicategory.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Comma.StructuredArrow.Basic` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [LeftExtension](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/Extension.lean/declarations/leftextension.md) | 49 | `declaration-track:a8fa843430eb08d4a4c231ef4bccec8c6ad5ea61ec4503dbf297d5cd75897e63` |
| 2 | `abbrev` | [extension](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/Extension.lean/declarations/extension.md) | 56 | `declaration-track:6e088d16e9fea38f5280fc8eccc2e1ee915bb04e52e0e4de7d7566320cc8a644` |
| 3 | `abbrev` | [unit](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/Extension.lean/declarations/unit.md) | 59 | `declaration-track:4160af863280715a75d7dc4f9b7dbe729ccd7b555ee8772481e459fe81e0a9b9` |
| 4 | `abbrev` | [mk](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/Extension.lean/declarations/mk-source-edition-3.md) | 62 | `declaration-track:7b3713b3da882d32df356a316126af6e54996cdfd449b07a605634f075ff9540` |
| 5 | `abbrev` | [homMk](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/Extension.lean/declarations/hommk-source-edition-4.md) | 69 | `declaration-track:ed493429fda414afc17c3b0fff2fe21fa22d4ecab2e0b55dc4d7044ad080a944` |
| 6 | `theorem` | [w](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/Extension.lean/declarations/w-source-edition-2.md) | 74 | `result-track:8b0de311555ee85943cfac656d399292dfe20a513b2da1e733b9c0d4b2c56fa0` |
| 7 | `def` | [alongId](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/Extension.lean/declarations/alongid.md) | 78 | `declaration-track:06aa7648caa1d9b0558fd67600bcdd5047a16dc821e7be07f408b58e038d2446` |
| 8 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/Extension.lean/declarations/instance-source-edition-2.md) | 80 | `declaration-track:6f27847f3e523941006092d9f0dc8c8b06a7839b8e2ff3a953c57c016515deb6` |
| 9 | `def` | [ofCompId](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/Extension.lean/declarations/ofcompid.md) | 84 | `declaration-track:e95cfefdb451fc40ed9d3b2e40675c47ae0fc13f95bdde11d7300b48b8b0870d` |
| 10 | `def` | [whisker](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/Extension.lean/declarations/whisker-source-edition-2.md) | 98 | `declaration-track:fe098d4274a50a1ada7a20cb54eb7d9a2dc54aa5a3348fad70851a8b4ad0e19e` |
| 11 | `theorem` | [whisker_extension](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/Extension.lean/declarations/whisker-extension.md) | 102 | `result-track:bbf3163be8e6b0cb9b37e8e50fb2fbe7e3bee5faea6824f273ad4f233707de96` |
| 12 | `theorem` | [whisker_unit](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/Extension.lean/declarations/whisker-unit-source-edition-2.md) | 107 | `result-track:f6b7481f5c607cdd4485403f04ce815b7577fcc8aeebe77f4e97eac5048c9c61` |
| 13 | `def` | [whiskering](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/Extension.lean/declarations/whiskering-source-edition-2.md) | 113 | `declaration-track:e6fa40ff945d0c540bcffc1f20cb9e4ae676f451028a4b0dc4b7a3329493fb5c` |
| 14 | `def` | [whiskerIdCancel](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/Extension.lean/declarations/whiskeridcancel.md) | 120 | `declaration-track:97f1082feed074bf7cc5c9f5a5e0970385e9e2ef702f481e03c8abca4574fc6c` |
| 15 | `def` | [whiskerHom](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/Extension.lean/declarations/whiskerhom-source-edition-2.md) | 127 | `declaration-track:b97d93032536a795703467ef594dfc6daab4eac05c74db4055b9d03714988874` |
| 16 | `def` | [whiskerIso](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/Extension.lean/declarations/whiskeriso-source-edition-2.md) | 137 | `declaration-track:e0fff974bccc5d17284fc68e42385826c155c835a0741ff4aa018e6df84ed9db` |
| 17 | `def` | [whiskerOfCompIdIsoSelf](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/Extension.lean/declarations/whiskerofcompidisoself.md) | 151 | `declaration-track:a0f26d6076beea61810109bb177db9360b474f765da0551722980f3c28646880` |
| 18 | `abbrev` | [LeftLift](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/Extension.lean/declarations/leftlift.md) | 167 | `declaration-track:2857d88c7b39ea389a634fed8e79c3c5cdd3b5eecf2202b73ab9c0e6a1f53dc1` |
| 19 | `abbrev` | [lift](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/Extension.lean/declarations/lift.md) | 174 | `declaration-track:75912393a9335da4a43d16ea8a7e367d7b31829c94148d82702757d7c5582549` |
| 20 | `abbrev` | [unit](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/Extension.lean/declarations/unit-source-edition-2.md) | 177 | `declaration-track:95db5806c61e4ac0ba0171585d6fcdcab9a877923b61f88f5d8c728edb3cefcb` |
| 21 | `abbrev` | [mk](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/Extension.lean/declarations/mk-source-edition-2.md) | 180 | `declaration-track:5d944e1e9d33b98ac1546be600d8011399888ab0576dbabaa4d7b62a7a76c059` |
| 22 | `abbrev` | [homMk](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/Extension.lean/declarations/hommk-source-edition-2.md) | 187 | `declaration-track:6a545e6418a3bd8929cf42d6d5b8d72015cf3cf514ff799a716246c84d0908d9` |
| 23 | `theorem` | [w](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/Extension.lean/declarations/w-source-edition-4.md) | 192 | `result-track:fc85e04e8ba72c2775c9dc76e1097aa7134c672dfde9fb48adef988f5c80f896` |
| 24 | `def` | [alongId](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/Extension.lean/declarations/alongid-source-edition-3.md) | 196 | `declaration-track:43e25e06408e53471b557a5b6ce817e9b3c6a909b4698543cc8b2ef2de399a05` |
| 25 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/Extension.lean/declarations/instance-source-edition-4.md) | 198 | `declaration-track:b88119915caa6feebdecc59219fe3925344d4580fed4f0835584fd5caede71b7` |
| 26 | `def` | [ofIdComp](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/Extension.lean/declarations/ofidcomp.md) | 202 | `declaration-track:3ce473f5935521c1ffd5f5c55ac549dd76a282ff080b24535a605ca997fa30e1` |
| 27 | `def` | [whisker](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/Extension.lean/declarations/whisker.md) | 216 | `declaration-track:339876e2819973e6b90a011e56e6d2901f18002852a618f57914996a1549e918` |
| 28 | `theorem` | [whisker_lift](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/Extension.lean/declarations/whisker-lift.md) | 220 | `result-track:a1355af68318540008a44c36376bde7485ff22de4f2019a40973e6cfa9a43da4` |
| 29 | `theorem` | [whisker_unit](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/Extension.lean/declarations/whisker-unit.md) | 225 | `result-track:b4b669f8abc3c357c46a4677cc4465afd179477c2928e13ed07883c9aadebff3` |
| 30 | `def` | [whiskering](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/Extension.lean/declarations/whiskering.md) | 231 | `declaration-track:d036f128d6fd9b96aaa22916150f33db3b4eff05a790e0346a32eca1162823bd` |
| 31 | `def` | [whiskerIdCancel](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/Extension.lean/declarations/whiskeridcancel-source-edition-2.md) | 240 | `declaration-track:9b1a619538f8643fdb425ae6ffa6c95f24e3379f9f584013d42450b3568400f5` |
| 32 | `def` | [whiskerHom](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/Extension.lean/declarations/whiskerhom.md) | 247 | `declaration-track:0dd0969f2e84808694b28dfddc3b306967fa13009a9bea7bf1498d7d72838504` |
| 33 | `def` | [whiskerIso](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/Extension.lean/declarations/whiskeriso.md) | 257 | `declaration-track:d05292dc83121333a496761e6aedf4f8eb5e084b657a5e11771345c605daf1ec` |
| 34 | `def` | [whiskerOfIdCompIsoSelf](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/Extension.lean/declarations/whiskerofidcompisoself.md) | 271 | `declaration-track:04c89fbbb668737d15a14c8c58715b8e8a764e83f228619114167993bb471471` |
| 35 | `abbrev` | [RightExtension](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/Extension.lean/declarations/rightextension.md) | 287 | `declaration-track:0b0c2bd1fe54e5b159453d43f23a8d86375df5056e3b3b477271e9a24a32284a` |
| 36 | `abbrev` | [extension](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/Extension.lean/declarations/extension-source-edition-2.md) | 294 | `declaration-track:a740fadd7318b85a9bb391320b884365bdabbad6abc5f238783f9cc9fc69a268` |
| 37 | `abbrev` | [counit](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/Extension.lean/declarations/counit-source-edition-2.md) | 297 | `declaration-track:45de58b96153dc9a945452888ff2f4fb4fc5685ae0c8cb6aaa9ae82fe21a353a` |
| 38 | `abbrev` | [mk](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/Extension.lean/declarations/mk-source-edition-4.md) | 300 | `declaration-track:945c2172c4978cd63810b3ad90068df8b7760b6a1e99df7ccaed904c8041714c` |
| 39 | `abbrev` | [homMk](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/Extension.lean/declarations/hommk-source-edition-3.md) | 305 | `declaration-track:752446bbfa4c0d3d549589459cd33aad3b66e0f2a33eb8d57a826a26b0459d20` |
| 40 | `theorem` | [w](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/Extension.lean/declarations/w-source-edition-3.md) | 310 | `result-track:e410994d00304d9c7ab2311c2da97ee2a17c5cdaa34f8bc5640a36c157814901` |
| 41 | `def` | [alongId](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/Extension.lean/declarations/alongid-source-edition-2.md) | 315 | `declaration-track:3d1cf82d86c1f0b54deb7edd01dd6d4fccb672c9156aee05fde4c9601fb6ad96` |
| 42 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/Extension.lean/declarations/instance-source-edition-3.md) | 317 | `declaration-track:8b2d1ffb30d8465e94b9e0d81352f83965ee5795e047244bb0bc748f152893e1` |
| 43 | `abbrev` | [RightLift](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/Extension.lean/declarations/rightlift.md) | 332 | `declaration-track:e700584633c24b3c0a231dfcba84bbf5a802a5827849e4d7715f4d60d89cdf66` |
| 44 | `abbrev` | [lift](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/Extension.lean/declarations/lift-source-edition-2.md) | 339 | `declaration-track:8af6b8dbb5f3ca1efe5b5323d34d713e64816d47e3d0827dc9898f4e99cfc427` |
| 45 | `abbrev` | [counit](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/Extension.lean/declarations/counit.md) | 342 | `declaration-track:3bf7e80d7546b4e5a7a26c9871aa64d331dfdac730078cdcff00dba760851c6e` |
| 46 | `abbrev` | [mk](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/Extension.lean/declarations/mk.md) | 345 | `declaration-track:1f1fd80d4812d2f153056c6e429d6433c3df90a3b4ced8c4fe97c4b89b785897` |
| 47 | `abbrev` | [homMk](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/Extension.lean/declarations/hommk.md) | 350 | `declaration-track:48aef30de64769b84f293ad61c2ff5b52ba1dc666b6bd6240a52e74328be0dad` |
| 48 | `theorem` | [w](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/Extension.lean/declarations/w.md) | 355 | `result-track:02aeb80b2d93d8236c28147fbc3e4076c5a34129f121f0ec8b15583b1bf312a7` |
| 49 | `def` | [alongId](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/Extension.lean/declarations/alongid-source-edition-4.md) | 360 | `declaration-track:bc78c163cd0ecdfe4373f2975a10f9d23600a7f56391f26871f9175d7ef8835d` |
| 50 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/Extension.lean/declarations/instance.md) | 362 | `declaration-track:67cec4be7db87aced89bf7b8ca7b14d90cf811c8cdab9747f78b44237cfc7afa` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=261bab03f3d52d2f3e9abdb14f4f44ff1c587e0d8d197310481c966816145a56 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Extension/Variant08aa93300da5a5308ac20efe2973ab72a257f0a6ced6a9f1d29ae38400dc8041.lean","GRWTSK/_verification/specifications/CategoriesAndHomologicalAlgebra/CategoryTheory/Extension/Variant08aa93300da5a5308ac20efe2973ab72a257f0a6ced6a9f1d29ae38400dc8041.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
