# Monoidal Category Namespaced Monoidal Category Struct

[Complete source index](../../../complete-source-index.md) · [Up one directory](../../complete-source-index.md) · [Full source](source.md)

**139 observed declarations and anonymous commands**, 109 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Category/Variantdc25db16e2db514a02dc26a0e2da5f31528d10d4159ea0059e7d97c858c1ddbe.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `b160d5bd73637a9be6086f84521a1acee436c141`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/MonoidalCategoryNamespacedMonoidalCategoryStruct.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `class` | [MonoidalCategoryStruct](declarations/monoidalcategorystruct.md) | 89 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `def` | [Pentagon](declarations/pentagon.md) | 144 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `class` | [MonoidalCategory](declarations/monoidalcategory.md) | 161 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `theorem` | [id_tensorHom](declarations/id-tensorhom.md) | 227 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [tensorHom_id](declarations/tensorhom-id.md) | 232 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [whiskerLeft_comp](declarations/whiskerleft-comp.md) | 237 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [id_whiskerLeft](declarations/id-whiskerleft.md) | 242 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [tensor_whiskerLeft](declarations/tensor-whiskerleft.md) | 247 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [comp_whiskerRight](declarations/comp-whiskerright.md) | 254 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [whiskerRight_id](declarations/whiskerright-id.md) | 259 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [whiskerRight_tensor](declarations/whiskerright-tensor.md) | 264 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [whisker_assoc](declarations/whisker-assoc.md) | 271 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [whisker_exchange](declarations/whisker-exchange.md) | 278 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [tensorHom_def'](declarations/tensorhom-def.md) | 283 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [whiskerLeft_hom_inv](declarations/whiskerleft-hom-inv-source-edition-2.md) | 288 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [hom_inv_whiskerRight](declarations/hom-inv-whiskerright-source-edition-2.md) | 293 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [whiskerLeft_inv_hom](declarations/whiskerleft-inv-hom-source-edition-2.md) | 298 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [inv_hom_whiskerRight](declarations/inv-hom-whiskerright.md) | 303 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [whiskerLeft_hom_inv'](declarations/whiskerleft-hom-inv.md) | 308 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [hom_inv_whiskerRight'](declarations/hom-inv-whiskerright.md) | 313 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [whiskerLeft_inv_hom'](declarations/whiskerleft-inv-hom.md) | 318 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [inv_hom_whiskerRight'](declarations/inv-hom-whiskerright-source-edition-2.md) | 323 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `def` | [whiskerLeftIso](declarations/whiskerleftiso.md) | 329 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `instance` | [whiskerLeft_isIso](declarations/whiskerleft-isiso.md) | 333 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [inv_whiskerLeft](declarations/inv-whiskerleft.md) | 337 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `lemma` | [whiskerLeftIso_refl](declarations/whiskerleftiso-refl.md) | 342 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `lemma` | [whiskerLeftIso_trans](declarations/whiskerleftiso-trans.md) | 347 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `lemma` | [whiskerLeftIso_symm](declarations/whiskerleftiso-symm.md) | 352 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `def` | [whiskerRightIso](declarations/whiskerrightiso.md) | 357 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `instance` | [whiskerRight_isIso](declarations/whiskerright-isiso.md) | 361 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [inv_whiskerRight](declarations/inv-whiskerright.md) | 365 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `lemma` | [whiskerRightIso_refl](declarations/whiskerrightiso-refl.md) | 370 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `lemma` | [whiskerRightIso_trans](declarations/whiskerrightiso-trans.md) | 375 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `lemma` | [whiskerRightIso_symm](declarations/whiskerrightiso-symm.md) | 380 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `def` | [tensorIso](declarations/tensoriso.md) | 385 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `theorem` | [tensorIso_def](declarations/tensoriso-def-source-edition-2.md) | 395 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `theorem` | [tensorIso_def'](declarations/tensoriso-def.md) | 399 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `instance` | [tensor_isIso](declarations/tensor-isiso.md) | 403 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `theorem` | [inv_tensor](declarations/inv-tensor.md) | 407 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `theorem` | [whiskerLeft_dite](declarations/whiskerleft-dite.md) | 413 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `theorem` | [dite_whiskerRight](declarations/dite-whiskerright.md) | 418 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `theorem` | [tensor_dite](declarations/tensor-dite.md) | 423 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `theorem` | [dite_tensor](declarations/dite-tensor.md) | 427 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `theorem` | [whiskerLeft_eqToHom](declarations/whiskerleft-eqtohom.md) | 432 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `theorem` | [eqToHom_whiskerRight](declarations/eqtohom-whiskerright.md) | 438 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `theorem` | [associator_naturality_left](declarations/associator-naturality-left.md) | 444 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `theorem` | [associator_inv_naturality_left](declarations/associator-inv-naturality-left.md) | 448 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `theorem` | [whiskerRight_tensor_symm](declarations/whiskerright-tensor-symm.md) | 452 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `theorem` | [associator_naturality_middle](declarations/associator-naturality-middle.md) | 456 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `theorem` | [associator_inv_naturality_middle](declarations/associator-inv-naturality-middle.md) | 460 | `BLOCKED_NATIVE_ADMISSION` |
| 51 | `theorem` | [whisker_assoc_symm](declarations/whisker-assoc-symm.md) | 464 | `BLOCKED_NATIVE_ADMISSION` |
| 52 | `theorem` | [associator_naturality_right](declarations/associator-naturality-right.md) | 468 | `BLOCKED_NATIVE_ADMISSION` |
| 53 | `theorem` | [associator_inv_naturality_right](declarations/associator-inv-naturality-right.md) | 472 | `BLOCKED_NATIVE_ADMISSION` |
| 54 | `theorem` | [tensor_whiskerLeft_symm](declarations/tensor-whiskerleft-symm.md) | 476 | `BLOCKED_NATIVE_ADMISSION` |
| 55 | `theorem` | [leftUnitor_inv_naturality](declarations/leftunitor-inv-naturality.md) | 480 | `BLOCKED_NATIVE_ADMISSION` |
| 56 | `theorem` | [id_whiskerLeft_symm](declarations/id-whiskerleft-symm.md) | 484 | `BLOCKED_NATIVE_ADMISSION` |
| 57 | `theorem` | [rightUnitor_inv_naturality](declarations/rightunitor-inv-naturality.md) | 489 | `BLOCKED_NATIVE_ADMISSION` |
| 58 | `theorem` | [whiskerRight_id_symm](declarations/whiskerright-id-symm.md) | 493 | `BLOCKED_NATIVE_ADMISSION` |
| 59 | `theorem` | [whiskerLeft_iff](declarations/whiskerleft-iff.md) | 497 | `BLOCKED_NATIVE_ADMISSION` |
| 60 | `theorem` | [whiskerRight_iff](declarations/whiskerright-iff.md) | 499 | `BLOCKED_NATIVE_ADMISSION` |
| 61 | `theorem` | [pentagon_inv](declarations/pentagon-inv.md) | 507 | `BLOCKED_NATIVE_ADMISSION` |
| 62 | `theorem` | [pentagon_inv_inv_hom_hom_inv](declarations/pentagon-inv-inv-hom-hom-inv.md) | 513 | `BLOCKED_NATIVE_ADMISSION` |
| 63 | `theorem` | [pentagon_inv_hom_hom_hom_inv](declarations/pentagon-inv-hom-hom-hom-inv.md) | 520 | `BLOCKED_NATIVE_ADMISSION` |
| 64 | `theorem` | [pentagon_hom_inv_inv_inv_inv](declarations/pentagon-hom-inv-inv-inv-inv.md) | 526 | `BLOCKED_NATIVE_ADMISSION` |
| 65 | `theorem` | [pentagon_hom_hom_inv_hom_hom](declarations/pentagon-hom-hom-inv-hom-hom.md) | 532 | `BLOCKED_NATIVE_ADMISSION` |
| 66 | `theorem` | [pentagon_hom_inv_inv_inv_hom](declarations/pentagon-hom-inv-inv-inv-hom.md) | 538 | `BLOCKED_NATIVE_ADMISSION` |
| 67 | `theorem` | [pentagon_hom_hom_inv_inv_hom](declarations/pentagon-hom-hom-inv-inv-hom.md) | 545 | `BLOCKED_NATIVE_ADMISSION` |
| 68 | `theorem` | [pentagon_inv_hom_hom_hom_hom](declarations/pentagon-inv-hom-hom-hom-hom.md) | 551 | `BLOCKED_NATIVE_ADMISSION` |
| 69 | `theorem` | [pentagon_inv_inv_hom_inv_inv](declarations/pentagon-inv-inv-hom-inv-inv.md) | 557 | `BLOCKED_NATIVE_ADMISSION` |
| 70 | `theorem` | [triangle_assoc_comp_right](declarations/triangle-assoc-comp-right.md) | 563 | `BLOCKED_NATIVE_ADMISSION` |
| 71 | `theorem` | [triangle_assoc_comp_right_inv](declarations/triangle-assoc-comp-right-inv.md) | 568 | `BLOCKED_NATIVE_ADMISSION` |
| 72 | `theorem` | [triangle_assoc_comp_left_inv](declarations/triangle-assoc-comp-left-inv.md) | 573 | `BLOCKED_NATIVE_ADMISSION` |
| 73 | `theorem` | [leftUnitor_whiskerRight](declarations/leftunitor-whiskerright.md) | 581 | `BLOCKED_NATIVE_ADMISSION` |
| 74 | `theorem` | [leftUnitor_inv_whiskerRight](declarations/leftunitor-inv-whiskerright.md) | 588 | `BLOCKED_NATIVE_ADMISSION` |
| 75 | `theorem` | [whiskerLeft_rightUnitor](declarations/whiskerleft-rightunitor.md) | 593 | `BLOCKED_NATIVE_ADMISSION` |
| 76 | `theorem` | [whiskerLeft_rightUnitor_inv](declarations/whiskerleft-rightunitor-inv.md) | 601 | `BLOCKED_NATIVE_ADMISSION` |
| 77 | `theorem` | [leftUnitor_tensor](declarations/leftunitor-tensor.md) | 606 | `BLOCKED_NATIVE_ADMISSION` |
| 78 | `theorem` | [leftUnitor_tensor_inv](declarations/leftunitor-tensor-inv.md) | 610 | `BLOCKED_NATIVE_ADMISSION` |
| 79 | `theorem` | [rightUnitor_tensor](declarations/rightunitor-tensor.md) | 614 | `BLOCKED_NATIVE_ADMISSION` |
| 80 | `theorem` | [rightUnitor_tensor_inv](declarations/rightunitor-tensor-inv.md) | 618 | `BLOCKED_NATIVE_ADMISSION` |
| 81 | `theorem` | [associator_inv_naturality](declarations/associator-inv-naturality.md) | 624 | `BLOCKED_NATIVE_ADMISSION` |
| 82 | `theorem` | [associator_conjugation](declarations/associator-conjugation.md) | 629 | `BLOCKED_NATIVE_ADMISSION` |
| 83 | `theorem` | [associator_inv_conjugation](declarations/associator-inv-conjugation.md) | 634 | `BLOCKED_NATIVE_ADMISSION` |
| 84 | `theorem` | [id_tensor_associator_naturality](declarations/id-tensor-associator-naturality.md) | 641 | `BLOCKED_NATIVE_ADMISSION` |
| 85 | `theorem` | [id_tensor_associator_inv_naturality](declarations/id-tensor-associator-inv-naturality.md) | 646 | `BLOCKED_NATIVE_ADMISSION` |
| 86 | `theorem` | [hom_inv_id_tensor](declarations/hom-inv-id-tensor-source-edition-2.md) | 651 | `BLOCKED_NATIVE_ADMISSION` |
| 87 | `theorem` | [inv_hom_id_tensor](declarations/inv-hom-id-tensor.md) | 656 | `BLOCKED_NATIVE_ADMISSION` |
| 88 | `theorem` | [tensor_hom_inv_id](declarations/tensor-hom-inv-id-source-edition-2.md) | 661 | `BLOCKED_NATIVE_ADMISSION` |
| 89 | `theorem` | [tensor_inv_hom_id](declarations/tensor-inv-hom-id-source-edition-2.md) | 666 | `BLOCKED_NATIVE_ADMISSION` |
| 90 | `theorem` | [hom_inv_id_tensor'](declarations/hom-inv-id-tensor.md) | 671 | `BLOCKED_NATIVE_ADMISSION` |
| 91 | `theorem` | [inv_hom_id_tensor'](declarations/inv-hom-id-tensor-source-edition-2.md) | 676 | `BLOCKED_NATIVE_ADMISSION` |
| 92 | `theorem` | [tensor_hom_inv_id'](declarations/tensor-hom-inv-id.md) | 681 | `BLOCKED_NATIVE_ADMISSION` |
| 93 | `theorem` | [tensor_inv_hom_id'](declarations/tensor-inv-hom-id.md) | 686 | `BLOCKED_NATIVE_ADMISSION` |
| 94 | `abbrev` | [ofTensorHom](declarations/oftensorhom.md) | 694 | `BLOCKED_NATIVE_ADMISSION` |
| 95 | `theorem` | [comp_tensor_id](declarations/comp-tensor-id.md) | 737 | `BLOCKED_NATIVE_ADMISSION` |
| 96 | `theorem` | [id_tensor_comp](declarations/id-tensor-comp.md) | 741 | `BLOCKED_NATIVE_ADMISSION` |
| 97 | `theorem` | [id_tensor_comp_tensor_id](declarations/id-tensor-comp-tensor-id.md) | 745 | `BLOCKED_NATIVE_ADMISSION` |
| 98 | `theorem` | [tensor_id_comp_id_tensor](declarations/tensor-id-comp-id-tensor.md) | 750 | `BLOCKED_NATIVE_ADMISSION` |
| 99 | `theorem` | [tensor_left_iff](declarations/tensor-left-iff.md) | 754 | `BLOCKED_NATIVE_ADMISSION` |
| 100 | `theorem` | [tensor_right_iff](declarations/tensor-right-iff.md) | 756 | `BLOCKED_NATIVE_ADMISSION` |
| 101 | `def` | [tensor](declarations/tensor.md) | 766 | `BLOCKED_NATIVE_ADMISSION` |
| 102 | `def` | [leftAssocTensor](declarations/leftassoctensor.md) | 771 | `BLOCKED_NATIVE_ADMISSION` |
| 103 | `theorem` | [leftAssocTensor_obj](declarations/leftassoctensor-obj.md) | 776 | `BLOCKED_NATIVE_ADMISSION` |
| 104 | `theorem` | [leftAssocTensor_map](declarations/leftassoctensor-map.md) | 780 | `BLOCKED_NATIVE_ADMISSION` |
| 105 | `def` | [rightAssocTensor](declarations/rightassoctensor.md) | 784 | `BLOCKED_NATIVE_ADMISSION` |
| 106 | `theorem` | [rightAssocTensor_obj](declarations/rightassoctensor-obj.md) | 789 | `BLOCKED_NATIVE_ADMISSION` |
| 107 | `theorem` | [rightAssocTensor_map](declarations/rightassoctensor-map.md) | 793 | `BLOCKED_NATIVE_ADMISSION` |
| 108 | `def` | [curriedTensor](declarations/curriedtensor.md) | 798 | `BLOCKED_NATIVE_ADMISSION` |
| 109 | `def` | [tensorLeft](declarations/tensorleft.md) | 809 | `BLOCKED_NATIVE_ADMISSION` |
| 110 | `def` | [tensorRight](declarations/tensorright.md) | 813 | `BLOCKED_NATIVE_ADMISSION` |
| 111 | `abbrev` | [tensorUnitLeft](declarations/tensorunitleft.md) | 818 | `BLOCKED_NATIVE_ADMISSION` |
| 112 | `abbrev` | [tensorUnitRight](declarations/tensorunitright.md) | 821 | `BLOCKED_NATIVE_ADMISSION` |
| 113 | `def` | [associatorNatIso](declarations/associatornatiso.md) | 827 | `BLOCKED_NATIVE_ADMISSION` |
| 114 | `def` | [leftUnitorNatIso](declarations/leftunitornatiso.md) | 832 | `BLOCKED_NATIVE_ADMISSION` |
| 115 | `def` | [rightUnitorNatIso](declarations/rightunitornatiso.md) | 837 | `BLOCKED_NATIVE_ADMISSION` |
| 116 | `def` | [curriedAssociatorNatIso](declarations/curriedassociatornatiso.md) | 842 | `BLOCKED_NATIVE_ADMISSION` |
| 117 | `def` | [tensorLeftTensor](declarations/tensorlefttensor.md) | 855 | `BLOCKED_NATIVE_ADMISSION` |
| 118 | `theorem` | [tensorLeftTensor_hom_app](declarations/tensorlefttensor-hom-app.md) | 859 | `BLOCKED_NATIVE_ADMISSION` |
| 119 | `theorem` | [tensorLeftTensor_inv_app](declarations/tensorlefttensor-inv-app.md) | 864 | `BLOCKED_NATIVE_ADMISSION` |
| 120 | `abbrev` | [tensoringLeft](declarations/tensoringleft.md) | 873 | `BLOCKED_NATIVE_ADMISSION` |
| 121 | `instance` | [(anonymous)](declarations/instance.md) | 875 | `BLOCKED_NATIVE_ADMISSION` |
| 122 | `abbrev` | [tensoringRight](declarations/tensoringright.md) | 885 | `BLOCKED_NATIVE_ADMISSION` |
| 123 | `instance` | [(anonymous)](declarations/instance-source-edition-2.md) | 887 | `BLOCKED_NATIVE_ADMISSION` |
| 124 | `def` | [tensorRightTensor](declarations/tensorrighttensor.md) | 898 | `BLOCKED_NATIVE_ADMISSION` |
| 125 | `theorem` | [tensorRightTensor_hom_app](declarations/tensorrighttensor-hom-app.md) | 902 | `BLOCKED_NATIVE_ADMISSION` |
| 126 | `theorem` | [tensorRightTensor_inv_app](declarations/tensorrighttensor-inv-app.md) | 907 | `BLOCKED_NATIVE_ADMISSION` |
| 127 | `instance` | [prodMonoidal](declarations/prodmonoidal.md) | 924 | `BLOCKED_NATIVE_ADMISSION` |
| 128 | `theorem` | [prodMonoidal_leftUnitor_hom_fst](declarations/prodmonoidal-leftunitor-hom-fst.md) | 936 | `BLOCKED_NATIVE_ADMISSION` |
| 129 | `theorem` | [prodMonoidal_leftUnitor_hom_snd](declarations/prodmonoidal-leftunitor-hom-snd.md) | 942 | `BLOCKED_NATIVE_ADMISSION` |
| 130 | `theorem` | [prodMonoidal_leftUnitor_inv_fst](declarations/prodmonoidal-leftunitor-inv-fst.md) | 948 | `BLOCKED_NATIVE_ADMISSION` |
| 131 | `theorem` | [prodMonoidal_leftUnitor_inv_snd](declarations/prodmonoidal-leftunitor-inv-snd.md) | 954 | `BLOCKED_NATIVE_ADMISSION` |
| 132 | `theorem` | [prodMonoidal_rightUnitor_hom_fst](declarations/prodmonoidal-rightunitor-hom-fst.md) | 960 | `BLOCKED_NATIVE_ADMISSION` |
| 133 | `theorem` | [prodMonoidal_rightUnitor_hom_snd](declarations/prodmonoidal-rightunitor-hom-snd.md) | 966 | `BLOCKED_NATIVE_ADMISSION` |
| 134 | `theorem` | [prodMonoidal_rightUnitor_inv_fst](declarations/prodmonoidal-rightunitor-inv-fst.md) | 972 | `BLOCKED_NATIVE_ADMISSION` |
| 135 | `theorem` | [prodMonoidal_rightUnitor_inv_snd](declarations/prodmonoidal-rightunitor-inv-snd.md) | 978 | `BLOCKED_NATIVE_ADMISSION` |
| 136 | `lemma` | [tensor_naturality](declarations/tensor-naturality.md) | 993 | `BLOCKED_NATIVE_ADMISSION` |
| 137 | `lemma` | [whiskerRight_app_tensor_app](declarations/whiskerright-app-tensor-app.md) | 999 | `BLOCKED_NATIVE_ADMISSION` |
| 138 | `lemma` | [whiskerLeft_app_tensor_app](declarations/whiskerleft-app-tensor-app.md) | 1005 | `BLOCKED_NATIVE_ADMISSION` |
| 139 | `abbrev` | [MonoidalCategory.fullSubcategory](declarations/monoidalcategory-fullsubcategory.md) | 1017 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=e0df65058328180c06e47862aa0e4e695bee98d36d0c24448daa5f01a15377d1 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Category/Variantdc25db16e2db514a02dc26a0e2da5f31528d10d4159ea0059e7d97c858c1ddbe.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
