# Verification target: Category Theory Whiskering Left Unitor

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1a9a8b0ad2966e00bb7177a3b9ac5ec379474216",
  "lexical_observation_count": 28,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Whiskering/Variant1ca16c0e3c3d4537b83e53cc089d554745a236d0124151d21695b930d68fc038.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryWhiskeringLeftUnitor.lean/index.md) · [Full source](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryWhiskeringLeftUnitor.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1a9a8b0ad2966e00bb7177a3b9ac5ec379474216`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Whiskering/Variant1ca16c0e3c3d4537b83e53cc089d554745a236d0124151d21695b930d68fc038.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Whiskering/Variant1ca16c0e3c3d4537b83e53cc089d554745a236d0124151d21695b930d68fc038.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Iso` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Functor.Category` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Functor.FullyFaithful` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [whiskerLeft](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryWhiskeringLeftUnitor.lean/declarations/whiskerleft.md) | 47 | `declaration-track:126252b2c5603373e260fc53152942f57404e41bac0b63bcec9db4b5e4295f99` |
| 2 | `def` | [whiskerRight](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryWhiskeringLeftUnitor.lean/declarations/whiskerright.md) | 58 | `declaration-track:4f210e31126f7e8ad9bd9750100d73577fae11375c1c81f946dda4a2250a5de6` |
| 3 | `def` | [whiskeringLeft](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryWhiskeringLeftUnitor.lean/declarations/whiskeringleft.md) | 74 | `declaration-track:6773b5bc1111817b19e8410a7576d33f0d171961a4c5e939ec9a811238fa1b10` |
| 4 | `def` | [whiskeringRight](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryWhiskeringLeftUnitor.lean/declarations/whiskeringright.md) | 94 | `declaration-track:303e06958e0b3bf096d532090fb5f0674cae17f92f43059f62a90649078c7bf9` |
| 5 | `instance` | [faithful_whiskeringRight_obj](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryWhiskeringLeftUnitor.lean/declarations/faithful-whiskeringright-obj.md) | 110 | `declaration-track:901724a2c9c1cfe2e17f0dc6d568fc1323673284e4487c666f9bdc363893693d` |
| 6 | `theorem` | [whiskerLeft_id](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryWhiskeringLeftUnitor.lean/declarations/whiskerleft-id-source-edition-2.md) | 118 | `result-track:69a5d7122cad3326068b5cfea9debb3ebc69627dc566a4be9a447770def9d6b8` |
| 7 | `theorem` | [whiskerLeft_id'](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryWhiskeringLeftUnitor.lean/declarations/whiskerleft-id.md) | 124 | `result-track:24c160be26da1055616a05cd4115c8c64f49ff61539efa04b23273491dcda003` |
| 8 | `theorem` | [whiskerRight_id](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryWhiskeringLeftUnitor.lean/declarations/whiskerright-id-source-edition-2.md) | 129 | `result-track:d9cd238a97975e03a5aea4a5122f4ccce4fe9a4c6701ff11b7fc4bf5dd619926` |
| 9 | `theorem` | [whiskerRight_id'](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryWhiskeringLeftUnitor.lean/declarations/whiskerright-id.md) | 135 | `result-track:c70c4b5389c54ee19116bf8b81213e6ac379aa2d523276a673e56dcb18b87dd3` |
| 10 | `theorem` | [whiskerLeft_comp](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryWhiskeringLeftUnitor.lean/declarations/whiskerleft-comp.md) | 140 | `result-track:dbca0b7da375e2424d7673492ac9852fb2f242926bd35366e1438a716e1b85a2` |
| 11 | `theorem` | [whiskerRight_comp](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryWhiskeringLeftUnitor.lean/declarations/whiskerright-comp.md) | 146 | `result-track:5fcec51d73db3600b94ef80c3d729fc45ae953f8ce1a2a9bf5a0b36e91c5cf61` |
| 12 | `def` | [isoWhiskerLeft](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryWhiskeringLeftUnitor.lean/declarations/isowhiskerleft.md) | 154 | `declaration-track:7d2db19359d8892a853c55b111cbdc715ef5be6f2279cd26a5840204f6e5bba0` |
| 13 | `theorem` | [isoWhiskerLeft_hom](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryWhiskeringLeftUnitor.lean/declarations/isowhiskerleft-hom.md) | 159 | `result-track:60c79a3e968b879cf9105476e25fb08ee63f06b94621b741d92811a13fb9d63b` |
| 14 | `theorem` | [isoWhiskerLeft_inv](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryWhiskeringLeftUnitor.lean/declarations/isowhiskerleft-inv.md) | 165 | `result-track:8d5e044e78f71645b936c3c7da2ffb45398d6443d47cd690df016b7577a0d3fc` |
| 15 | `def` | [isoWhiskerRight](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryWhiskeringLeftUnitor.lean/declarations/isowhiskerright.md) | 173 | `declaration-track:6ac2708dcb1c01eaf1f2e2c4987bf77ece04a19ef0182a24706ac4ddf0557ea4` |
| 16 | `theorem` | [isoWhiskerRight_hom](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryWhiskeringLeftUnitor.lean/declarations/isowhiskerright-hom.md) | 178 | `result-track:884ac8c70a00d0ec7a414b67ce4ff89e1721d33d6e16cff61dff9e29052b37d0` |
| 17 | `theorem` | [isoWhiskerRight_inv](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryWhiskeringLeftUnitor.lean/declarations/isowhiskerright-inv.md) | 184 | `result-track:297306748eb281774a75f95254e1526fa58f5285a08a4844b38de4ca22ee1040` |
| 18 | `instance` | [isIso_whiskerLeft](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryWhiskeringLeftUnitor.lean/declarations/isiso-whiskerleft.md) | 189 | `declaration-track:e4d6b46f8555e979bc3394c9db8abd0e11f0bf73b4907bd6b77128cab08e3cb1` |
| 19 | `instance` | [isIso_whiskerRight](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryWhiskeringLeftUnitor.lean/declarations/isiso-whiskerright.md) | 194 | `declaration-track:c9b67f376e34561874780bf781a958ad6948c2b75f2b7a2ce8155007fe5795b5` |
| 20 | `theorem` | [whiskerLeft_twice](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryWhiskeringLeftUnitor.lean/declarations/whiskerleft-twice.md) | 206 | `result-track:f374e9127075b226b83cfe5a70fc19363284e250d534297c1500b905301785a0` |
| 21 | `theorem` | [whiskerRight_twice](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryWhiskeringLeftUnitor.lean/declarations/whiskerright-twice.md) | 212 | `result-track:a7e0a58725e5903ab6644058e8a92676b2e2bf75577a5af52a04d19098d66ed8` |
| 22 | `theorem` | [whiskerRight_left](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryWhiskeringLeftUnitor.lean/declarations/whiskerright-left.md) | 217 | `result-track:f6e207e6bb4a024fb869aa344ffccc520742fb4f9fc0527cbc364e0537e74b3f` |
| 23 | `def` | [leftUnitor](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryWhiskeringLeftUnitor.lean/declarations/leftunitor.md) | 235 | `declaration-track:68c3650ad8c752670b943a4ea26f084b97efa8a5ae4b9930f760f895c0a8064d` |
| 24 | `def` | [rightUnitor](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryWhiskeringLeftUnitor.lean/declarations/rightunitor.md) | 246 | `declaration-track:2cf002ab56c1957cdcfc3d68c016ef2d89969a48f57c7bfd8ecab3936d88a935` |
| 25 | `def` | [associator](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryWhiskeringLeftUnitor.lean/declarations/associator.md) | 264 | `declaration-track:c0a8ef40f1a5504c47ea9328a942bb28fc80368242a00c1e348d2a8baa466ea4` |
| 26 | `theorem` | [assoc](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryWhiskeringLeftUnitor.lean/declarations/assoc.md) | 272 | `result-track:803b65abde3dbe83b6f205874ccb243caa82b5ed00b3757553db91604c43373f` |
| 27 | `theorem` | [triangle](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryWhiskeringLeftUnitor.lean/declarations/triangle.md) | 276 | `result-track:039cc33f92036fb1d31f5a5dd734d8e52a850d8d99e30b1bc4daa5b85a756b3c` |
| 28 | `theorem` | [pentagon](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryWhiskeringLeftUnitor.lean/declarations/pentagon.md) | 286 | `result-track:de714e69f4747325737e36de1b78e07f608f5192fb0c14e3825ca0294939c6cb` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=22ab7ae24632b650b0330cfbcefc758e2a932137e8f74b020bf49aff01c7d855 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Whiskering/Variant1ca16c0e3c3d4537b83e53cc089d554745a236d0124151d21695b930d68fc038.lean","GRWTSK/_verification/specifications/CategoriesAndHomologicalAlgebra/CategoryTheory/Whiskering/Variant1ca16c0e3c3d4537b83e53cc089d554745a236d0124151d21695b930d68fc038.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
