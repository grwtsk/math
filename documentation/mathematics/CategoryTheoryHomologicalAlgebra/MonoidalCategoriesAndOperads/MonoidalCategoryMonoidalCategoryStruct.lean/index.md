# Monoidal Category Monoidal Category Struct

[Complete source index](../../../complete-source-index.md) · [Up one directory](../../complete-source-index.md) · [Full source](source.md)

**139 observed declarations and anonymous commands**, 109 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Category/Variant11087ab6466cf38d0ebd99fb7374a8813f670f73856fd7b7fbb79c92df9cae08.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `2b62fe1748616cc4cdd85503b3be627339a355db`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/MonoidalCategoryMonoidalCategoryStruct.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `class` | [MonoidalCategoryStruct](declarations/monoidalcategorystruct.md) | 81 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `def` | [Pentagon](declarations/pentagon.md) | 136 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `class` | [MonoidalCategory](declarations/monoidalcategory.md) | 153 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `theorem` | [id_tensorHom](declarations/id-tensorhom.md) | 219 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [tensorHom_id](declarations/tensorhom-id.md) | 224 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [whiskerLeft_comp](declarations/whiskerleft-comp.md) | 229 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [id_whiskerLeft](declarations/id-whiskerleft.md) | 234 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [tensor_whiskerLeft](declarations/tensor-whiskerleft.md) | 239 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [comp_whiskerRight](declarations/comp-whiskerright.md) | 246 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [whiskerRight_id](declarations/whiskerright-id.md) | 251 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [whiskerRight_tensor](declarations/whiskerright-tensor.md) | 256 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [whisker_assoc](declarations/whisker-assoc.md) | 263 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [whisker_exchange](declarations/whisker-exchange.md) | 270 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [tensorHom_def'](declarations/tensorhom-def.md) | 275 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [whiskerLeft_hom_inv](declarations/whiskerleft-hom-inv.md) | 280 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [hom_inv_whiskerRight](declarations/hom-inv-whiskerright-source-edition-2.md) | 285 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [whiskerLeft_inv_hom](declarations/whiskerleft-inv-hom.md) | 290 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [inv_hom_whiskerRight](declarations/inv-hom-whiskerright.md) | 295 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [whiskerLeft_hom_inv'](declarations/whiskerleft-hom-inv-source-edition-2.md) | 300 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [hom_inv_whiskerRight'](declarations/hom-inv-whiskerright.md) | 305 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [whiskerLeft_inv_hom'](declarations/whiskerleft-inv-hom-source-edition-2.md) | 310 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [inv_hom_whiskerRight'](declarations/inv-hom-whiskerright-source-edition-2.md) | 315 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `def` | [whiskerLeftIso](declarations/whiskerleftiso.md) | 321 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `instance` | [whiskerLeft_isIso](declarations/whiskerleft-isiso.md) | 325 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [inv_whiskerLeft](declarations/inv-whiskerleft.md) | 329 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `lemma` | [whiskerLeftIso_refl](declarations/whiskerleftiso-refl.md) | 334 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `lemma` | [whiskerLeftIso_trans](declarations/whiskerleftiso-trans.md) | 339 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `lemma` | [whiskerLeftIso_symm](declarations/whiskerleftiso-symm.md) | 344 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `def` | [whiskerRightIso](declarations/whiskerrightiso.md) | 349 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `instance` | [whiskerRight_isIso](declarations/whiskerright-isiso.md) | 353 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [inv_whiskerRight](declarations/inv-whiskerright.md) | 357 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `lemma` | [whiskerRightIso_refl](declarations/whiskerrightiso-refl.md) | 362 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `lemma` | [whiskerRightIso_trans](declarations/whiskerrightiso-trans.md) | 367 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `lemma` | [whiskerRightIso_symm](declarations/whiskerrightiso-symm.md) | 372 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `def` | [tensorIso](declarations/tensoriso.md) | 377 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `theorem` | [tensorIso_def](declarations/tensoriso-def-source-edition-2.md) | 387 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `theorem` | [tensorIso_def'](declarations/tensoriso-def.md) | 391 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `instance` | [tensor_isIso](declarations/tensor-isiso.md) | 395 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `theorem` | [inv_tensor](declarations/inv-tensor.md) | 399 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `theorem` | [whiskerLeft_dite](declarations/whiskerleft-dite.md) | 405 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `theorem` | [dite_whiskerRight](declarations/dite-whiskerright.md) | 410 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `theorem` | [tensor_dite](declarations/tensor-dite.md) | 415 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `theorem` | [dite_tensor](declarations/dite-tensor.md) | 419 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `theorem` | [whiskerLeft_eqToHom](declarations/whiskerleft-eqtohom.md) | 424 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `theorem` | [eqToHom_whiskerRight](declarations/eqtohom-whiskerright.md) | 430 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `theorem` | [associator_naturality_left](declarations/associator-naturality-left.md) | 436 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `theorem` | [associator_inv_naturality_left](declarations/associator-inv-naturality-left.md) | 440 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `theorem` | [whiskerRight_tensor_symm](declarations/whiskerright-tensor-symm.md) | 444 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `theorem` | [associator_naturality_middle](declarations/associator-naturality-middle.md) | 448 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `theorem` | [associator_inv_naturality_middle](declarations/associator-inv-naturality-middle.md) | 452 | `BLOCKED_NATIVE_ADMISSION` |
| 51 | `theorem` | [whisker_assoc_symm](declarations/whisker-assoc-symm.md) | 456 | `BLOCKED_NATIVE_ADMISSION` |
| 52 | `theorem` | [associator_naturality_right](declarations/associator-naturality-right.md) | 460 | `BLOCKED_NATIVE_ADMISSION` |
| 53 | `theorem` | [associator_inv_naturality_right](declarations/associator-inv-naturality-right.md) | 464 | `BLOCKED_NATIVE_ADMISSION` |
| 54 | `theorem` | [tensor_whiskerLeft_symm](declarations/tensor-whiskerleft-symm.md) | 468 | `BLOCKED_NATIVE_ADMISSION` |
| 55 | `theorem` | [leftUnitor_inv_naturality](declarations/leftunitor-inv-naturality.md) | 472 | `BLOCKED_NATIVE_ADMISSION` |
| 56 | `theorem` | [id_whiskerLeft_symm](declarations/id-whiskerleft-symm.md) | 476 | `BLOCKED_NATIVE_ADMISSION` |
| 57 | `theorem` | [rightUnitor_inv_naturality](declarations/rightunitor-inv-naturality.md) | 481 | `BLOCKED_NATIVE_ADMISSION` |
| 58 | `theorem` | [whiskerRight_id_symm](declarations/whiskerright-id-symm.md) | 485 | `BLOCKED_NATIVE_ADMISSION` |
| 59 | `theorem` | [whiskerLeft_iff](declarations/whiskerleft-iff.md) | 489 | `BLOCKED_NATIVE_ADMISSION` |
| 60 | `theorem` | [whiskerRight_iff](declarations/whiskerright-iff.md) | 491 | `BLOCKED_NATIVE_ADMISSION` |
| 61 | `theorem` | [pentagon_inv](declarations/pentagon-inv.md) | 499 | `BLOCKED_NATIVE_ADMISSION` |
| 62 | `theorem` | [pentagon_inv_inv_hom_hom_inv](declarations/pentagon-inv-inv-hom-hom-inv.md) | 505 | `BLOCKED_NATIVE_ADMISSION` |
| 63 | `theorem` | [pentagon_inv_hom_hom_hom_inv](declarations/pentagon-inv-hom-hom-hom-inv.md) | 512 | `BLOCKED_NATIVE_ADMISSION` |
| 64 | `theorem` | [pentagon_hom_inv_inv_inv_inv](declarations/pentagon-hom-inv-inv-inv-inv.md) | 518 | `BLOCKED_NATIVE_ADMISSION` |
| 65 | `theorem` | [pentagon_hom_hom_inv_hom_hom](declarations/pentagon-hom-hom-inv-hom-hom.md) | 524 | `BLOCKED_NATIVE_ADMISSION` |
| 66 | `theorem` | [pentagon_hom_inv_inv_inv_hom](declarations/pentagon-hom-inv-inv-inv-hom.md) | 530 | `BLOCKED_NATIVE_ADMISSION` |
| 67 | `theorem` | [pentagon_hom_hom_inv_inv_hom](declarations/pentagon-hom-hom-inv-inv-hom.md) | 537 | `BLOCKED_NATIVE_ADMISSION` |
| 68 | `theorem` | [pentagon_inv_hom_hom_hom_hom](declarations/pentagon-inv-hom-hom-hom-hom.md) | 543 | `BLOCKED_NATIVE_ADMISSION` |
| 69 | `theorem` | [pentagon_inv_inv_hom_inv_inv](declarations/pentagon-inv-inv-hom-inv-inv.md) | 549 | `BLOCKED_NATIVE_ADMISSION` |
| 70 | `theorem` | [triangle_assoc_comp_right](declarations/triangle-assoc-comp-right.md) | 555 | `BLOCKED_NATIVE_ADMISSION` |
| 71 | `theorem` | [triangle_assoc_comp_right_inv](declarations/triangle-assoc-comp-right-inv.md) | 560 | `BLOCKED_NATIVE_ADMISSION` |
| 72 | `theorem` | [triangle_assoc_comp_left_inv](declarations/triangle-assoc-comp-left-inv.md) | 565 | `BLOCKED_NATIVE_ADMISSION` |
| 73 | `theorem` | [leftUnitor_whiskerRight](declarations/leftunitor-whiskerright.md) | 573 | `BLOCKED_NATIVE_ADMISSION` |
| 74 | `theorem` | [leftUnitor_inv_whiskerRight](declarations/leftunitor-inv-whiskerright.md) | 580 | `BLOCKED_NATIVE_ADMISSION` |
| 75 | `theorem` | [whiskerLeft_rightUnitor](declarations/whiskerleft-rightunitor.md) | 585 | `BLOCKED_NATIVE_ADMISSION` |
| 76 | `theorem` | [whiskerLeft_rightUnitor_inv](declarations/whiskerleft-rightunitor-inv.md) | 593 | `BLOCKED_NATIVE_ADMISSION` |
| 77 | `theorem` | [leftUnitor_tensor](declarations/leftunitor-tensor.md) | 598 | `BLOCKED_NATIVE_ADMISSION` |
| 78 | `theorem` | [leftUnitor_tensor_inv](declarations/leftunitor-tensor-inv.md) | 602 | `BLOCKED_NATIVE_ADMISSION` |
| 79 | `theorem` | [rightUnitor_tensor](declarations/rightunitor-tensor.md) | 606 | `BLOCKED_NATIVE_ADMISSION` |
| 80 | `theorem` | [rightUnitor_tensor_inv](declarations/rightunitor-tensor-inv.md) | 610 | `BLOCKED_NATIVE_ADMISSION` |
| 81 | `theorem` | [associator_inv_naturality](declarations/associator-inv-naturality.md) | 616 | `BLOCKED_NATIVE_ADMISSION` |
| 82 | `theorem` | [associator_conjugation](declarations/associator-conjugation.md) | 621 | `BLOCKED_NATIVE_ADMISSION` |
| 83 | `theorem` | [associator_inv_conjugation](declarations/associator-inv-conjugation.md) | 626 | `BLOCKED_NATIVE_ADMISSION` |
| 84 | `theorem` | [id_tensor_associator_naturality](declarations/id-tensor-associator-naturality.md) | 633 | `BLOCKED_NATIVE_ADMISSION` |
| 85 | `theorem` | [id_tensor_associator_inv_naturality](declarations/id-tensor-associator-inv-naturality.md) | 638 | `BLOCKED_NATIVE_ADMISSION` |
| 86 | `theorem` | [hom_inv_id_tensor](declarations/hom-inv-id-tensor-source-edition-2.md) | 643 | `BLOCKED_NATIVE_ADMISSION` |
| 87 | `theorem` | [inv_hom_id_tensor](declarations/inv-hom-id-tensor.md) | 648 | `BLOCKED_NATIVE_ADMISSION` |
| 88 | `theorem` | [tensor_hom_inv_id](declarations/tensor-hom-inv-id.md) | 653 | `BLOCKED_NATIVE_ADMISSION` |
| 89 | `theorem` | [tensor_inv_hom_id](declarations/tensor-inv-hom-id-source-edition-2.md) | 658 | `BLOCKED_NATIVE_ADMISSION` |
| 90 | `theorem` | [hom_inv_id_tensor'](declarations/hom-inv-id-tensor.md) | 663 | `BLOCKED_NATIVE_ADMISSION` |
| 91 | `theorem` | [inv_hom_id_tensor'](declarations/inv-hom-id-tensor-source-edition-2.md) | 668 | `BLOCKED_NATIVE_ADMISSION` |
| 92 | `theorem` | [tensor_hom_inv_id'](declarations/tensor-hom-inv-id-source-edition-2.md) | 673 | `BLOCKED_NATIVE_ADMISSION` |
| 93 | `theorem` | [tensor_inv_hom_id'](declarations/tensor-inv-hom-id.md) | 678 | `BLOCKED_NATIVE_ADMISSION` |
| 94 | `abbrev` | [ofTensorHom](declarations/oftensorhom.md) | 686 | `BLOCKED_NATIVE_ADMISSION` |
| 95 | `theorem` | [comp_tensor_id](declarations/comp-tensor-id.md) | 729 | `BLOCKED_NATIVE_ADMISSION` |
| 96 | `theorem` | [id_tensor_comp](declarations/id-tensor-comp.md) | 733 | `BLOCKED_NATIVE_ADMISSION` |
| 97 | `theorem` | [id_tensor_comp_tensor_id](declarations/id-tensor-comp-tensor-id.md) | 737 | `BLOCKED_NATIVE_ADMISSION` |
| 98 | `theorem` | [tensor_id_comp_id_tensor](declarations/tensor-id-comp-id-tensor.md) | 742 | `BLOCKED_NATIVE_ADMISSION` |
| 99 | `theorem` | [tensor_left_iff](declarations/tensor-left-iff.md) | 746 | `BLOCKED_NATIVE_ADMISSION` |
| 100 | `theorem` | [tensor_right_iff](declarations/tensor-right-iff.md) | 748 | `BLOCKED_NATIVE_ADMISSION` |
| 101 | `def` | [tensor](declarations/tensor.md) | 758 | `BLOCKED_NATIVE_ADMISSION` |
| 102 | `def` | [leftAssocTensor](declarations/leftassoctensor.md) | 763 | `BLOCKED_NATIVE_ADMISSION` |
| 103 | `theorem` | [leftAssocTensor_obj](declarations/leftassoctensor-obj.md) | 768 | `BLOCKED_NATIVE_ADMISSION` |
| 104 | `theorem` | [leftAssocTensor_map](declarations/leftassoctensor-map.md) | 772 | `BLOCKED_NATIVE_ADMISSION` |
| 105 | `def` | [rightAssocTensor](declarations/rightassoctensor.md) | 776 | `BLOCKED_NATIVE_ADMISSION` |
| 106 | `theorem` | [rightAssocTensor_obj](declarations/rightassoctensor-obj.md) | 781 | `BLOCKED_NATIVE_ADMISSION` |
| 107 | `theorem` | [rightAssocTensor_map](declarations/rightassoctensor-map.md) | 785 | `BLOCKED_NATIVE_ADMISSION` |
| 108 | `def` | [curriedTensor](declarations/curriedtensor.md) | 790 | `BLOCKED_NATIVE_ADMISSION` |
| 109 | `def` | [tensorLeft](declarations/tensorleft.md) | 801 | `BLOCKED_NATIVE_ADMISSION` |
| 110 | `def` | [tensorRight](declarations/tensorright.md) | 805 | `BLOCKED_NATIVE_ADMISSION` |
| 111 | `abbrev` | [tensorUnitLeft](declarations/tensorunitleft.md) | 810 | `BLOCKED_NATIVE_ADMISSION` |
| 112 | `abbrev` | [tensorUnitRight](declarations/tensorunitright.md) | 813 | `BLOCKED_NATIVE_ADMISSION` |
| 113 | `def` | [associatorNatIso](declarations/associatornatiso.md) | 819 | `BLOCKED_NATIVE_ADMISSION` |
| 114 | `def` | [leftUnitorNatIso](declarations/leftunitornatiso.md) | 824 | `BLOCKED_NATIVE_ADMISSION` |
| 115 | `def` | [rightUnitorNatIso](declarations/rightunitornatiso.md) | 829 | `BLOCKED_NATIVE_ADMISSION` |
| 116 | `def` | [curriedAssociatorNatIso](declarations/curriedassociatornatiso.md) | 834 | `BLOCKED_NATIVE_ADMISSION` |
| 117 | `def` | [tensorLeftTensor](declarations/tensorlefttensor.md) | 847 | `BLOCKED_NATIVE_ADMISSION` |
| 118 | `theorem` | [tensorLeftTensor_hom_app](declarations/tensorlefttensor-hom-app.md) | 851 | `BLOCKED_NATIVE_ADMISSION` |
| 119 | `theorem` | [tensorLeftTensor_inv_app](declarations/tensorlefttensor-inv-app.md) | 856 | `BLOCKED_NATIVE_ADMISSION` |
| 120 | `abbrev` | [tensoringLeft](declarations/tensoringleft.md) | 865 | `BLOCKED_NATIVE_ADMISSION` |
| 121 | `instance` | [(anonymous)](declarations/instance.md) | 867 | `BLOCKED_NATIVE_ADMISSION` |
| 122 | `abbrev` | [tensoringRight](declarations/tensoringright.md) | 877 | `BLOCKED_NATIVE_ADMISSION` |
| 123 | `instance` | [(anonymous)](declarations/instance-source-edition-2.md) | 879 | `BLOCKED_NATIVE_ADMISSION` |
| 124 | `def` | [tensorRightTensor](declarations/tensorrighttensor.md) | 890 | `BLOCKED_NATIVE_ADMISSION` |
| 125 | `theorem` | [tensorRightTensor_hom_app](declarations/tensorrighttensor-hom-app.md) | 894 | `BLOCKED_NATIVE_ADMISSION` |
| 126 | `theorem` | [tensorRightTensor_inv_app](declarations/tensorrighttensor-inv-app.md) | 899 | `BLOCKED_NATIVE_ADMISSION` |
| 127 | `instance` | [prodMonoidal](declarations/prodmonoidal.md) | 916 | `BLOCKED_NATIVE_ADMISSION` |
| 128 | `theorem` | [prodMonoidal_leftUnitor_hom_fst](declarations/prodmonoidal-leftunitor-hom-fst.md) | 928 | `BLOCKED_NATIVE_ADMISSION` |
| 129 | `theorem` | [prodMonoidal_leftUnitor_hom_snd](declarations/prodmonoidal-leftunitor-hom-snd.md) | 934 | `BLOCKED_NATIVE_ADMISSION` |
| 130 | `theorem` | [prodMonoidal_leftUnitor_inv_fst](declarations/prodmonoidal-leftunitor-inv-fst.md) | 940 | `BLOCKED_NATIVE_ADMISSION` |
| 131 | `theorem` | [prodMonoidal_leftUnitor_inv_snd](declarations/prodmonoidal-leftunitor-inv-snd.md) | 946 | `BLOCKED_NATIVE_ADMISSION` |
| 132 | `theorem` | [prodMonoidal_rightUnitor_hom_fst](declarations/prodmonoidal-rightunitor-hom-fst.md) | 952 | `BLOCKED_NATIVE_ADMISSION` |
| 133 | `theorem` | [prodMonoidal_rightUnitor_hom_snd](declarations/prodmonoidal-rightunitor-hom-snd.md) | 958 | `BLOCKED_NATIVE_ADMISSION` |
| 134 | `theorem` | [prodMonoidal_rightUnitor_inv_fst](declarations/prodmonoidal-rightunitor-inv-fst.md) | 964 | `BLOCKED_NATIVE_ADMISSION` |
| 135 | `theorem` | [prodMonoidal_rightUnitor_inv_snd](declarations/prodmonoidal-rightunitor-inv-snd.md) | 970 | `BLOCKED_NATIVE_ADMISSION` |
| 136 | `lemma` | [tensor_naturality](declarations/tensor-naturality.md) | 985 | `BLOCKED_NATIVE_ADMISSION` |
| 137 | `lemma` | [whiskerRight_app_tensor_app](declarations/whiskerright-app-tensor-app.md) | 991 | `BLOCKED_NATIVE_ADMISSION` |
| 138 | `lemma` | [whiskerLeft_app_tensor_app](declarations/whiskerleft-app-tensor-app.md) | 997 | `BLOCKED_NATIVE_ADMISSION` |
| 139 | `abbrev` | [MonoidalCategory.fullSubcategory](declarations/monoidalcategory-fullsubcategory.md) | 1009 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=bda43de93a1575054b7fd9cb125d541e155d58d1c2d10ae4b253f78abb4114cb -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Category/Variant11087ab6466cf38d0ebd99fb7374a8813f670f73856fd7b7fbb79c92df9cae08.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
