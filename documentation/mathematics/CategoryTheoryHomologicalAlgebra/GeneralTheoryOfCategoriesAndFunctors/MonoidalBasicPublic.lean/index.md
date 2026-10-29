# Monoidal Basic Public

[Complete source index](../../../complete-source-index.md) · [Up one directory](../../../complete-source-index.md) · [Full source](source.md)

**69 observed declarations and anonymous commands**, 52 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Algebra/LinearAlgebra/Basic/Variantb77ea42154481b4b38f24f61e123940d6b8c117f4c34bf067723a514439e647b.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `67d42177dc5f756671f7448ee7c3e54cd1c09b1e`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MonoidalBasicPublic.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [tensorObj](declarations/tensorobj.md) | 53 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `def` | [tensorHom](declarations/tensorhom.md) | 57 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `def` | [whiskerLeft](declarations/whiskerleft.md) | 62 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `def` | [whiskerRight](declarations/whiskerright.md) | 67 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [id_tensorHom_id](declarations/id-tensorhom-id.md) | 71 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [tensorHom_comp_tensorHom](declarations/tensorhom-comp-tensorhom.md) | 78 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `def` | [associator](declarations/associator.md) | 87 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `def` | [leftUnitor](declarations/leftunitor.md) | 92 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `def` | [rightUnitor](declarations/rightunitor.md) | 96 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `instance` | [instMonoidalCategoryStruct](declarations/instmonoidalcategorystruct.md) | 100 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [associator_naturality](declarations/associator-naturality.md) | 110 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [pentagon](declarations/pentagon.md) | 119 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [leftUnitor_naturality](declarations/leftunitor-naturality.md) | 128 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [rightUnitor_naturality](declarations/rightunitor-naturality.md) | 136 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [triangle](declarations/triangle.md) | 144 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `instance` | [monoidalCategory](declarations/monoidalcategory.md) | 156 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `instance` | [(anonymous)](declarations/instance-source-edition-3.md) | 166 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [hom_tensorHom](declarations/hom-tensorhom-source-edition-2.md) | 169 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [hom_whiskerLeft](declarations/hom-whiskerleft-source-edition-2.md) | 173 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [hom_whiskerRight](declarations/hom-whiskerright-source-edition-2.md) | 177 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [hom_hom_leftUnitor](declarations/hom-hom-leftunitor.md) | 181 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [hom_inv_leftUnitor](declarations/hom-inv-leftunitor-source-edition-2.md) | 185 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [hom_hom_rightUnitor](declarations/hom-hom-rightunitor.md) | 189 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [hom_inv_rightUnitor](declarations/hom-inv-rightunitor.md) | 193 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [hom_hom_associator](declarations/hom-hom-associator-source-edition-2.md) | 197 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [hom_inv_associator](declarations/hom-inv-associator.md) | 201 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [tensorHom_tmul](declarations/tensorhom-tmul-source-edition-2.md) | 208 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [whiskerLeft_apply](declarations/whiskerleft-apply.md) | 213 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [whiskerRight_apply](declarations/whiskerright-apply.md) | 219 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [leftUnitor_hom_apply](declarations/leftunitor-hom-apply-source-edition-2.md) | 225 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [leftUnitor_inv_apply](declarations/leftunitor-inv-apply-source-edition-2.md) | 230 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [rightUnitor_hom_apply](declarations/rightunitor-hom-apply.md) | 235 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [rightUnitor_inv_apply](declarations/rightunitor-inv-apply-source-edition-2.md) | 240 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [associator_hom_apply](declarations/associator-hom-apply-source-edition-2.md) | 245 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `theorem` | [associator_inv_apply](declarations/associator-inv-apply.md) | 250 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `def` | [tensorLift](declarations/tensorlift.md) | 264 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `lemma` | [tensorLift_tmul](declarations/tensorlift-tmul.md) | 268 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `lemma` | [tensor_ext](declarations/tensor-ext-source-edition-6.md) | 273 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `lemma` | [tensor_ext₃'](declarations/tensor-ext-source-edition-2.md) | 278 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `lemma` | [tensor_ext₃](declarations/tensor-ext-source-edition-4.md) | 284 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `instance` | [MonoidalCategory.instMonoidalCategoryStruct](declarations/monoidalcategory-instmonoidalcategorystruct.md) | 299 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `instance` | [monoidalCategory](declarations/monoidalcategory-source-edition-2.md) | 310 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `instance` | [(anonymous)](declarations/instance-source-edition-2.md) | 321 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `theorem` | [hom_tensorHom](declarations/hom-tensorhom.md) | 324 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `theorem` | [hom_whiskerLeft](declarations/hom-whiskerleft.md) | 328 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `theorem` | [hom_whiskerRight](declarations/hom-whiskerright.md) | 332 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `theorem` | [hom_hom_leftUnitor](declarations/hom-hom-leftunitor-source-edition-2.md) | 336 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `theorem` | [hom_inv_leftUnitor](declarations/hom-inv-leftunitor.md) | 340 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `theorem` | [hom_hom_rightUnitor](declarations/hom-hom-rightunitor-source-edition-2.md) | 344 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `theorem` | [hom_inv_rightUnitor](declarations/hom-inv-rightunitor-source-edition-2.md) | 348 | `BLOCKED_NATIVE_ADMISSION` |
| 51 | `theorem` | [hom_hom_associator](declarations/hom-hom-associator.md) | 352 | `BLOCKED_NATIVE_ADMISSION` |
| 52 | `theorem` | [hom_inv_associator](declarations/hom-inv-associator-source-edition-2.md) | 356 | `BLOCKED_NATIVE_ADMISSION` |
| 53 | `theorem` | [tensorHom_tmul](declarations/tensorhom-tmul.md) | 363 | `BLOCKED_NATIVE_ADMISSION` |
| 54 | `theorem` | [whiskerLeft_apply](declarations/whiskerleft-apply-source-edition-2.md) | 368 | `BLOCKED_NATIVE_ADMISSION` |
| 55 | `theorem` | [whiskerRight_apply](declarations/whiskerright-apply-source-edition-2.md) | 374 | `BLOCKED_NATIVE_ADMISSION` |
| 56 | `theorem` | [leftUnitor_hom_apply](declarations/leftunitor-hom-apply.md) | 380 | `BLOCKED_NATIVE_ADMISSION` |
| 57 | `theorem` | [leftUnitor_inv_apply](declarations/leftunitor-inv-apply.md) | 385 | `BLOCKED_NATIVE_ADMISSION` |
| 58 | `theorem` | [rightUnitor_hom_apply](declarations/rightunitor-hom-apply-source-edition-2.md) | 390 | `BLOCKED_NATIVE_ADMISSION` |
| 59 | `theorem` | [rightUnitor_inv_apply](declarations/rightunitor-inv-apply.md) | 395 | `BLOCKED_NATIVE_ADMISSION` |
| 60 | `theorem` | [associator_hom_apply](declarations/associator-hom-apply.md) | 400 | `BLOCKED_NATIVE_ADMISSION` |
| 61 | `theorem` | [associator_inv_apply](declarations/associator-inv-apply-source-edition-2.md) | 405 | `BLOCKED_NATIVE_ADMISSION` |
| 62 | `def` | [tensorLift](declarations/tensorlift-source-edition-2.md) | 419 | `BLOCKED_NATIVE_ADMISSION` |
| 63 | `lemma` | [tensorLift_tmul](declarations/tensorlift-tmul-source-edition-2.md) | 423 | `BLOCKED_NATIVE_ADMISSION` |
| 64 | `lemma` | [tensor_ext](declarations/tensor-ext-source-edition-5.md) | 428 | `BLOCKED_NATIVE_ADMISSION` |
| 65 | `lemma` | [tensor_ext₃'](declarations/tensor-ext-source-edition-3.md) | 433 | `BLOCKED_NATIVE_ADMISSION` |
| 66 | `lemma` | [tensor_ext₃](declarations/tensor-ext.md) | 439 | `BLOCKED_NATIVE_ADMISSION` |
| 67 | `instance` | [(anonymous)](declarations/instance-source-edition-4.md) | 449 | `BLOCKED_NATIVE_ADMISSION` |
| 68 | `instance` | [(anonymous)](declarations/instance.md) | 468 | `BLOCKED_NATIVE_ADMISSION` |
| 69 | `lemma` | [ofHom₂_compr₂](declarations/ofhom-compr.md) | 479 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=e46eea9a213bc61ce74456cc68dfb400d86909f39e3669d319cba8206bdbdd7e -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/Basic/Variantb77ea42154481b4b38f24f61e123940d6b8c117f4c34bf067723a514439e647b.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
