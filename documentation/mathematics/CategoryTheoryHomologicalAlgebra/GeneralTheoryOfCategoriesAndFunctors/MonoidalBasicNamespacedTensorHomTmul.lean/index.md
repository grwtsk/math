# Monoidal Basic Namespaced Tensor Hom Tmul

[Complete source index](../../../complete-source-index.md) · [Up one directory](../../../complete-source-index.md) · [Full source](source.md)

**34 observed declarations and anonymous commands**, 21 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Algebra/LinearAlgebra/Basic/Variant0088eb5e5d0f481287a983406010a6666c48651a1f943c9e3370a42e1b759c0e.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `3275e53e102bba32e4ab5cefbd0851101fe23e40`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MonoidalBasicNamespacedTensorHomTmul.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [tensorObj](declarations/tensorobj.md) | 59 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `def` | [tensorHom](declarations/tensorhom.md) | 63 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `def` | [whiskerLeft](declarations/whiskerleft.md) | 68 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `def` | [whiskerRight](declarations/whiskerright.md) | 73 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [tensor_id](declarations/tensor-id.md) | 77 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [tensor_comp](declarations/tensor-comp.md) | 83 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `def` | [associator](declarations/associator.md) | 91 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `def` | [leftUnitor](declarations/leftunitor.md) | 96 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `def` | [rightUnitor](declarations/rightunitor.md) | 100 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `instance` | [instMonoidalCategoryStruct](declarations/instmonoidalcategorystruct.md) | 104 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [associator_naturality](declarations/associator-naturality.md) | 114 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [pentagon](declarations/pentagon.md) | 123 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [leftUnitor_naturality](declarations/leftunitor-naturality.md) | 132 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [rightUnitor_naturality](declarations/rightunitor-naturality.md) | 143 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [triangle](declarations/triangle.md) | 154 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `instance` | [monoidalCategory](declarations/monoidalcategory.md) | 169 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `instance` | [(anonymous)](declarations/instance.md) | 179 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [tensorHom_tmul](declarations/tensorhom-tmul.md) | 185 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [whiskerLeft_apply](declarations/whiskerleft-apply.md) | 190 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [whiskerRight_apply](declarations/whiskerright-apply.md) | 196 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [leftUnitor_hom_apply](declarations/leftunitor-hom-apply.md) | 202 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [leftUnitor_inv_apply](declarations/leftunitor-inv-apply.md) | 207 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [rightUnitor_hom_apply](declarations/rightunitor-hom-apply.md) | 212 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [rightUnitor_inv_apply](declarations/rightunitor-inv-apply.md) | 217 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [associator_hom_apply](declarations/associator-hom-apply.md) | 222 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [associator_inv_apply](declarations/associator-inv-apply.md) | 227 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `def` | [tensorLift](declarations/tensorlift.md) | 241 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `lemma` | [tensorLift_tmul](declarations/tensorlift-tmul.md) | 245 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `lemma` | [tensor_ext](declarations/tensor-ext-source-edition-2.md) | 250 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `lemma` | [tensor_ext₃'](declarations/tensor-ext-source-edition-3.md) | 255 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `lemma` | [tensor_ext₃](declarations/tensor-ext.md) | 261 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `instance` | [(anonymous)](declarations/instance-source-edition-3.md) | 271 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `instance` | [(anonymous)](declarations/instance-source-edition-2.md) | 304 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `lemma` | [ofHom₂_compr₂](declarations/ofhom-compr.md) | 321 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=bd7833ef86f6edfeac25be054c1b1af0e709844a31002b52fc063b787cf99e63 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/Basic/Variant0088eb5e5d0f481287a983406010a6666c48651a1f943c9e3370a42e1b759c0e.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
