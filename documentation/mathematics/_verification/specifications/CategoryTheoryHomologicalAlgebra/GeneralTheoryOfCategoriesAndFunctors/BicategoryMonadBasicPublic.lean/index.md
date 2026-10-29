# Verification target: Bicategory Monad Basic Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f803064bf5ce06d7006e68cad9ca5b876de53395",
  "lexical_observation_count": 20,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant244c9f0cbf17412c99044afbccce48e87a25a55952a2c0d8b571099849b1ff8a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/BicategoryMonadBasicPublic.lean/index.md) · [Full source](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/BicategoryMonadBasicPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f803064bf5ce06d7006e68cad9ca5b876de53395`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant244c9f0cbf17412c99044afbccce48e87a25a55952a2c0d8b571099849b1ff8a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant244c9f0cbf17412c99044afbccce48e87a25a55952a2c0d8b571099849b1ff8a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [Comonad](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/BicategoryMonadBasicPublic.lean/declarations/comonad.md) | 39 | `declaration-track:00a6aa1b1994488146a302efb2e43e00a93bf52c9ec75f7f3e7660b750868fad` |
| 2 | `abbrev` | [Comonad.counit](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/BicategoryMonadBasicPublic.lean/declarations/comonad-counit.md) | 42 | `declaration-track:26a85bae15950c9c472969f93e7bd50639e9ccab6a4c01c31e82ffb18cce3aae` |
| 3 | `abbrev` | [Comonad.comul](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/BicategoryMonadBasicPublic.lean/declarations/comonad-comul.md) | 45 | `declaration-track:557df59c21d57d96234b0b1ed834fa1f2f36f0e26b9a6688131ae3deba8a32e6` |
| 4 | `theorem` | [counit_comul](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/BicategoryMonadBasicPublic.lean/declarations/counit-comul.md) | 62 | `result-track:9b01b91310328436ae945bab0c58f513d05e3f02d81e5f3812caf3e02724aed0` |
| 5 | `theorem` | [comul_counit](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/BicategoryMonadBasicPublic.lean/declarations/comul-counit.md) | 65 | `result-track:440136e6738b5923e9df3254fa48c98302bb7f7cfb8022dd41a82f0236537267` |
| 6 | `theorem` | [comul_assoc](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/BicategoryMonadBasicPublic.lean/declarations/comul-assoc.md) | 68 | `result-track:1b00824f2cd4b313552f3c74d060e3d7040a5c7cfb5c0e0b0d765f9b2432a8e9` |
| 7 | `theorem` | [comul_assoc_flip](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/BicategoryMonadBasicPublic.lean/declarations/comul-assoc-flip.md) | 71 | `result-track:254d1b6185d2d257bdba63e10907e42f158822fb86c7be1cc9c2ea18ebb22731` |
| 8 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/BicategoryMonadBasicPublic.lean/declarations/instance-source-edition-3.md) | 76 | `declaration-track:f18d624ba59a9a1ae2c2b328ccf5fe37fd2a3e2cba95e1e5a4f586946192d6de` |
| 9 | `def` | [ofOplaxFromUnit](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/BicategoryMonadBasicPublic.lean/declarations/ofoplaxfromunit.md) | 81 | `declaration-track:9cbde63e86449109daad110c60d69a6195fc0355c169f87d627c5322243f3ec0` |
| 10 | `def` | [toOplax](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/BicategoryMonadBasicPublic.lean/declarations/tooplax-source-edition-2.md) | 99 | `declaration-track:50c96789593602d87659892409d0fc48a270c310dd5e25903858d6b2774c7732` |
| 11 | `def` | [ComonadBicat](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/BicategoryMonadBasicPublic.lean/declarations/comonadbicat.md) | 118 | `declaration-track:b8293bc31c3ec8d0e67ccbb65b778cb811f0a4d3305bd417fadcb6118e852d26` |
| 12 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/BicategoryMonadBasicPublic.lean/declarations/instance.md) | 125 | `declaration-track:41a19af086a355b610745b9d2cfbd0408ac01d5c0b84a3435d43ceae8da8c034` |
| 13 | `def` | [toOplax](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/BicategoryMonadBasicPublic.lean/declarations/tooplax.md) | 129 | `declaration-track:11614c21679675aeb7f8e7928eef43ffb3f179dc19a24735f79e1162e3f903b7` |
| 14 | `def` | [obj](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/BicategoryMonadBasicPublic.lean/declarations/obj.md) | 133 | `declaration-track:b969fa4219caf39eff8f3e5c8736b42a3850bcec191938c210d09f4cd9ad38f5` |
| 15 | `def` | [hom](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/BicategoryMonadBasicPublic.lean/declarations/hom.md) | 137 | `declaration-track:0e7c0908fdacc7f5f250b6bd9d2d3d7067c8c604fef4d5e9283629b351e57b9f` |
| 16 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/BicategoryMonadBasicPublic.lean/declarations/instance-source-edition-2.md) | 140 | `declaration-track:b26ed4ab1f3fc7a2c4b130212f54db51bb8f7a2d0662f595e2e84357eff8cd98` |
| 17 | `def` | [mkOfComonad](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/BicategoryMonadBasicPublic.lean/declarations/mkofcomonad.md) | 144 | `declaration-track:f97ff5b10a4c4527efef8b7b9889e0dbb78a86bbe59e1123e765d37b83665729` |
| 18 | `theorem` | [mkOfComonad_hom](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/BicategoryMonadBasicPublic.lean/declarations/mkofcomonad-hom.md) | 151 | `result-track:814f32232ca83fb6c82ca2d1c3b4e48e1bd7637ea305027fe0cf7c310490fd4f` |
| 19 | `theorem` | [mkOfComonad_counit](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/BicategoryMonadBasicPublic.lean/declarations/mkofcomonad-counit.md) | 153 | `result-track:c3770b8e254defd0e49b77f22d74756a457922a7f8851ca592bfcbcb74124496` |
| 20 | `theorem` | [mkOfComonad_comul](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/BicategoryMonadBasicPublic.lean/declarations/mkofcomonad-comul.md) | 155 | `result-track:95b51343e6182e26b1729a373e98b4203fdd39a2f04904d14092c573bd05cf11` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=0b7868b93480074437ca760c475436093b7beffeb315f707f9b4ff3a822247ae -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant244c9f0cbf17412c99044afbccce48e87a25a55952a2c0d8b571099849b1ff8a.lean","GRWTSK/_verification/specifications/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant244c9f0cbf17412c99044afbccce48e87a25a55952a2c0d8b571099849b1ff8a.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
