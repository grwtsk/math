# Monoidal Category Right Unitor Conjugation

[Complete source index](../../../complete-source-index.md) · [Up one directory](../../complete-source-index.md) · [Full source](source.md)

**73 observed declarations and anonymous commands**, 51 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Category/Variant35930ebe167f71243fc6089e85d7be636506350b1a9946f6b537f53f80d79ebb.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `5176d59083667e8a87b64c09475941b629b96d7b`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/MonoidalCategoryRightUnitorConjugation.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `class` | [MonoidalCategory](declarations/monoidalcategory.md) | 73 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `abbrev` | [MonoidalCategory.tensorUnit](declarations/monoidalcategory-tensorunit.md) | 166 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `theorem` | [id_tensorHom](declarations/id-tensorhom.md) | 197 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `theorem` | [tensorHom_id](declarations/tensorhom-id.md) | 201 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [whisker_exchange](declarations/whisker-exchange.md) | 205 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [tensorHom_def'](declarations/tensorhom-def.md) | 210 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `def` | [tensorIso](declarations/tensoriso.md) | 223 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `instance` | [tensor_isIso](declarations/tensor-isiso.md) | 240 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [inv_tensor](declarations/inv-tensor.md) | 245 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [tensor_dite](declarations/tensor-dite.md) | 254 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [dite_tensor](declarations/dite-tensor.md) | 259 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [comp_tensor_id](declarations/comp-tensor-id.md) | 265 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [id_tensor_comp](declarations/id-tensor-comp.md) | 271 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [id_tensor_comp_tensor_id](declarations/id-tensor-comp-tensor-id.md) | 277 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [tensor_id_comp_id_tensor](declarations/tensor-id-comp-id-tensor.md) | 283 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [rightUnitor_conjugation](declarations/rightunitor-conjugation.md) | 289 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [leftUnitor_conjugation](declarations/leftunitor-conjugation.md) | 295 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [leftUnitor_inv_naturality](declarations/leftunitor-inv-naturality.md) | 300 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [rightUnitor_inv_naturality](declarations/rightunitor-inv-naturality.md) | 305 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [tensor_left_iff](declarations/tensor-left-iff.md) | 309 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [tensor_right_iff](declarations/tensor-right-iff.md) | 312 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [pentagon_inv](declarations/pentagon-inv.md) | 322 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [rightUnitor_tensor](declarations/rightunitor-tensor.md) | 329 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [rightUnitor_tensor_inv](declarations/rightunitor-tensor-inv.md) | 337 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [triangle_assoc_comp_right](declarations/triangle-assoc-comp-right.md) | 343 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [triangle_assoc_comp_left_inv](declarations/triangle-assoc-comp-left-inv.md) | 349 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [associator_inv_naturality](declarations/associator-inv-naturality.md) | 359 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [associator_conjugation](declarations/associator-conjugation.md) | 366 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [associator_inv_conjugation](declarations/associator-inv-conjugation.md) | 372 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [id_tensor_associator_naturality](declarations/id-tensor-associator-naturality.md) | 380 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [id_tensor_associator_inv_naturality](declarations/id-tensor-associator-inv-naturality.md) | 386 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [hom_inv_id_tensor](declarations/hom-inv-id-tensor.md) | 392 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [inv_hom_id_tensor](declarations/inv-hom-id-tensor-source-edition-2.md) | 398 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [tensorHom_inv_id](declarations/tensorhom-inv-id-source-edition-2.md) | 404 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `theorem` | [tensor_inv_hom_id](declarations/tensor-inv-hom-id-source-edition-2.md) | 410 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `theorem` | [hom_inv_id_tensor'](declarations/hom-inv-id-tensor-source-edition-2.md) | 416 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `theorem` | [inv_hom_id_tensor'](declarations/inv-hom-id-tensor.md) | 422 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `theorem` | [tensorHom_inv_id'](declarations/tensorhom-inv-id.md) | 428 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `theorem` | [tensor_inv_hom_id'](declarations/tensor-inv-hom-id.md) | 434 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `def` | [ofTensorHom](declarations/oftensorhom.md) | 443 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `def` | [tensor](declarations/tensor.md) | 511 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `def` | [leftAssocTensor](declarations/leftassoctensor.md) | 517 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `theorem` | [leftAssocTensor_obj](declarations/leftassoctensor-obj.md) | 524 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `theorem` | [leftAssocTensor_map](declarations/leftassoctensor-map.md) | 529 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `def` | [rightAssocTensor](declarations/rightassoctensor.md) | 534 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `theorem` | [rightAssocTensor_obj](declarations/rightassoctensor-obj.md) | 541 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `theorem` | [rightAssocTensor_map](declarations/rightassoctensor-map.md) | 546 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `def` | [tensorUnitLeft](declarations/tensorunitleft.md) | 551 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `def` | [tensorUnitRight](declarations/tensorunitright.md) | 557 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `def` | [associatorNatIso](declarations/associatornatiso.md) | 567 | `BLOCKED_NATIVE_ADMISSION` |
| 51 | `def` | [leftUnitorNatIso](declarations/leftunitornatiso.md) | 580 | `BLOCKED_NATIVE_ADMISSION` |
| 52 | `def` | [rightUnitorNatIso](declarations/rightunitornatiso.md) | 593 | `BLOCKED_NATIVE_ADMISSION` |
| 53 | `def` | [tensorLeft](declarations/tensorleft.md) | 610 | `BLOCKED_NATIVE_ADMISSION` |
| 54 | `def` | [tensorLeftTensor](declarations/tensorlefttensor.md) | 618 | `BLOCKED_NATIVE_ADMISSION` |
| 55 | `theorem` | [tensorLeftTensor_hom_app](declarations/tensorlefttensor-hom-app.md) | 626 | `BLOCKED_NATIVE_ADMISSION` |
| 56 | `theorem` | [tensorLeftTensor_inv_app](declarations/tensorlefttensor-inv-app.md) | 632 | `BLOCKED_NATIVE_ADMISSION` |
| 57 | `def` | [tensorRight](declarations/tensorright.md) | 638 | `BLOCKED_NATIVE_ADMISSION` |
| 58 | `def` | [tensoringLeft](declarations/tensoringleft.md) | 651 | `BLOCKED_NATIVE_ADMISSION` |
| 59 | `instance` | [(anonymous)](declarations/instance.md) | 656 | `BLOCKED_NATIVE_ADMISSION` |
| 60 | `def` | [tensoringRight](declarations/tensoringright.md) | 667 | `BLOCKED_NATIVE_ADMISSION` |
| 61 | `instance` | [(anonymous)](declarations/instance-source-edition-2.md) | 672 | `BLOCKED_NATIVE_ADMISSION` |
| 62 | `def` | [tensorRightTensor](declarations/tensorrighttensor.md) | 684 | `BLOCKED_NATIVE_ADMISSION` |
| 63 | `theorem` | [tensorRightTensor_hom_app](declarations/tensorrighttensor-hom-app.md) | 692 | `BLOCKED_NATIVE_ADMISSION` |
| 64 | `theorem` | [tensorRightTensor_inv_app](declarations/tensorrighttensor-inv-app.md) | 698 | `BLOCKED_NATIVE_ADMISSION` |
| 65 | `instance` | [prodMonoidal](declarations/prodmonoidal.md) | 717 | `BLOCKED_NATIVE_ADMISSION` |
| 66 | `theorem` | [prodMonoidal_leftUnitor_hom_fst](declarations/prodmonoidal-leftunitor-hom-fst.md) | 730 | `BLOCKED_NATIVE_ADMISSION` |
| 67 | `theorem` | [prodMonoidal_leftUnitor_hom_snd](declarations/prodmonoidal-leftunitor-hom-snd.md) | 737 | `BLOCKED_NATIVE_ADMISSION` |
| 68 | `theorem` | [prodMonoidal_leftUnitor_inv_fst](declarations/prodmonoidal-leftunitor-inv-fst.md) | 744 | `BLOCKED_NATIVE_ADMISSION` |
| 69 | `theorem` | [prodMonoidal_leftUnitor_inv_snd](declarations/prodmonoidal-leftunitor-inv-snd.md) | 751 | `BLOCKED_NATIVE_ADMISSION` |
| 70 | `theorem` | [prodMonoidal_rightUnitor_hom_fst](declarations/prodmonoidal-rightunitor-hom-fst.md) | 758 | `BLOCKED_NATIVE_ADMISSION` |
| 71 | `theorem` | [prodMonoidal_rightUnitor_hom_snd](declarations/prodmonoidal-rightunitor-hom-snd.md) | 765 | `BLOCKED_NATIVE_ADMISSION` |
| 72 | `theorem` | [prodMonoidal_rightUnitor_inv_fst](declarations/prodmonoidal-rightunitor-inv-fst.md) | 772 | `BLOCKED_NATIVE_ADMISSION` |
| 73 | `theorem` | [prodMonoidal_rightUnitor_inv_snd](declarations/prodmonoidal-rightunitor-inv-snd.md) | 779 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=5579bf82f324d2bb71203ceab56e1c3e4ca0d55c6d41650ff60c72673d5e5539 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Category/Variant35930ebe167f71243fc6089e85d7be636506350b1a9946f6b537f53f80d79ebb.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
