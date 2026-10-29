# Verification target: Shift Localization Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b0162f9929b9bb912004f088fe06061f882d2e9f",
  "lexical_observation_count": 27,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Localization/Variantad5301c9c122bdfd63d4a5851d1161328dbb6e45b5aecd596278b6b7d5648e92.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ShiftLocalizationPublic.lean/index.md) · [Full source](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ShiftLocalizationPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b0162f9929b9bb912004f088fe06061f882d2e9f`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Localization/Variantad5301c9c122bdfd63d4a5851d1161328dbb6e45b5aecd596278b6b7d5648e92.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Localization/Variantad5301c9c122bdfd63d4a5851d1161328dbb6e45b5aecd596278b6b7d5648e92.lean.json)

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
| 1 | `class` | [IsCompatibleWithShift](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ShiftLocalizationPublic.lean/declarations/iscompatiblewithshift.md) | 40 | `declaration-track:98582bd74302b65961d02d62fd0414b5bb2a9583da990cae365b044595eb96e7` |
| 2 | `lemma` | [iff](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ShiftLocalizationPublic.lean/declarations/iff.md) | 51 | `result-track:332e147cfc52734814a08a6bb6e05debe47fd0517d7c455470f061dd50a76fbb` |
| 3 | `lemma` | [shiftFunctor_comp_inverts](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ShiftLocalizationPublic.lean/declarations/shiftfunctor-comp-inverts.md) | 55 | `result-track:463cc27b83c27861f969ce71ddd1024144e5a1db6e2560d5936c9fb89fa9b25b` |
| 4 | `lemma` | [shift](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ShiftLocalizationPublic.lean/declarations/shift.md) | 62 | `result-track:b0d699d76108c9d1b26dc90a83cc8e3b370ea16f60c7b7ae88837fb808d213a3` |
| 5 | `abbrev` | [shiftLocalizerMorphism](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ShiftLocalizationPublic.lean/declarations/shiftlocalizermorphism.md) | 68 | `declaration-track:6e3ae73607f56b9de5d9574c7f3caf279bfb1f4bdca46d12c48456aee7d5b0c9` |
| 6 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ShiftLocalizationPublic.lean/declarations/instance-source-edition-4.md) | 72 | `declaration-track:fc17f2601501776a0fbd64160e56a9dda899315a06fdcfca317f044a27f0e06d` |
| 7 | `def` | [HasShift.localized](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ShiftLocalizationPublic.lean/declarations/hasshift-localized.md) | 86 | `declaration-track:287c8e3707e7ec7a37137350a8a3c3cb2ded26e2ec1bbfe195808e67bca10fbe` |
| 8 | `def` | [Functor.CommShift.localized](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ShiftLocalizationPublic.lean/declarations/functor-commshift-localized.md) | 96 | `declaration-track:5b17e3a4e254b6b93db6c63d6b39b551581371234e4c455883c02516b6e6ecfd` |
| 9 | `instance` | [HasShift.localization](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ShiftLocalizationPublic.lean/declarations/hasshift-localization.md) | 105 | `declaration-track:80e1d54f458ee17b5521b50558cced7ed02d22bb537f87db941cee5f5889da14` |
| 10 | `instance` | [MorphismProperty.commShift_Q](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ShiftLocalizationPublic.lean/declarations/morphismproperty-commshift-q-source-edition-2.md) | 110 | `declaration-track:8ac6f5002f210ec1c0f737947373ef8fdd9cd63b15449800b44719b0c7dc1b9d` |
| 11 | `instance` | [HasShift.localization'](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ShiftLocalizationPublic.lean/declarations/hasshift-localization-source-edition-2.md) | 119 | `declaration-track:b0e8ef3f143e40c3acdb7e06892525cc5c2f8863be90431b7c0a732dc1cf02f8` |
| 12 | `instance` | [MorphismProperty.commShift_Q'](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ShiftLocalizationPublic.lean/declarations/morphismproperty-commshift-q.md) | 124 | `declaration-track:511d26982670a52db7a7eae66310fca1ff88614b51a7d699d4f06ee027b7bae1` |
| 13 | `def` | [iso](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ShiftLocalizationPublic.lean/declarations/iso.md) | 146 | `declaration-track:146c739c1107da07a26342c877fcc98008fe8990d33e7d2b440607babcf595c9` |
| 14 | `lemma` | [iso_hom_app](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ShiftLocalizationPublic.lean/declarations/iso-hom-app.md) | 158 | `result-track:61aecce1bcb4636c3268d667e07c79c4806a0307b40b3533f9baaf04adb6a25f` |
| 15 | `lemma` | [iso_inv_app](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ShiftLocalizationPublic.lean/declarations/iso-inv-app.md) | 167 | `result-track:8e33ed620f2b3c4a6308667b42896592f169a2613b4453908fb20f28b4f91db8` |
| 16 | `def` | [commShiftOfLocalization](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ShiftLocalizationPublic.lean/declarations/commshiftoflocalization.md) | 181 | `declaration-track:655d119a08036c6165737d9761a0d849d189db2af57d0a204e6094532f7d2b5e` |
| 17 | `lemma` | [commShiftOfLocalization_iso_hom_app](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ShiftLocalizationPublic.lean/declarations/commshiftoflocalization-iso-hom-app.md) | 223 | `result-track:e18d985086feaefe199c640bd4caa73d9d0e5130206d208aa45213b947a70bc2` |
| 18 | `lemma` | [commShiftOfLocalization_iso_inv_app](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ShiftLocalizationPublic.lean/declarations/commshiftoflocalization-iso-inv-app.md) | 231 | `result-track:9b50a44ec0481489aaef0d0809382a4b3df8719ade064d3a51966105e0986271` |
| 19 | `instance` | [NatTrans.commShift_iso_hom_of_localization](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ShiftLocalizationPublic.lean/declarations/nattrans-commshift-iso-hom-of-localization.md) | 241 | `declaration-track:d7a25242867630f6a7aca42adf5ca1e52bf0bc99466e13f1a1908d60a5fa3d7b` |
| 20 | `def` | [commShift](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ShiftLocalizationPublic.lean/declarations/commshift.md) | 279 | `declaration-track:51b1ef0057886dbed8b13645ad6f9413ef2c1619fbd86e1d807b74faea063ac9` |
| 21 | `lemma` | [commShift_iso_hom_app](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ShiftLocalizationPublic.lean/declarations/commshift-iso-hom-app.md) | 284 | `result-track:3816f5bfd9f632ca8d3cfd0963e5e67f1081366b6f56db3a035cd86303a9ffd6` |
| 22 | `lemma` | [commShift_iso_inv_app](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ShiftLocalizationPublic.lean/declarations/commshift-iso-inv-app.md) | 294 | `result-track:63bdb31536a85e989f799b8c4f5b2bb603a18b3abe45a3fff8bc381126ff5faf` |
| 23 | `lemma` | [natTransCommShift_hom](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ShiftLocalizationPublic.lean/declarations/nattranscommshift-hom.md) | 303 | `result-track:b33aa9038c16cda3cd125b594760682ca73c27810874884627e710e388f20161` |
| 24 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ShiftLocalizationPublic.lean/declarations/instance-source-edition-2.md) | 316 | `declaration-track:a9208de29b33027f5afcf20297c9b073b92b30a6b7dc999aef5fe189d61e1518` |
| 25 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ShiftLocalizationPublic.lean/declarations/instance.md) | 319 | `declaration-track:0c568d4fd49e2d09fa50d0aec5783832f2b6becae60fda562985100d655d9bdd` |
| 26 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ShiftLocalizationPublic.lean/declarations/instance-source-edition-3.md) | 332 | `declaration-track:dd4ee315a44ae736e41f4183622c760ec83b42d13fcf6d6e2c6b6070051520cb` |
| 27 | `instance` | [liftNatTrans](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ShiftLocalizationPublic.lean/declarations/liftnattrans.md) | 336 | `declaration-track:7d74c6236cef8a541ff2b5c70f3ee9e137cafabd09880f37d052d47265d4285c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=b7909ef6bb842e99d0a9a99c4f4496a3565717a7ad0635d47e09c4266678e05d -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Localization/Variantad5301c9c122bdfd63d4a5851d1161328dbb6e45b5aecd596278b6b7d5648e92.lean","GRWTSK/_verification/specifications/CategoriesAndHomologicalAlgebra/CategoryTheory/Localization/Variantad5301c9c122bdfd63d4a5851d1161328dbb6e45b5aecd596278b6b7d5648e92.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
