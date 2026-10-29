# Monoidal Preadditive

[Complete source index](../../../complete-source-index.md) · [Up one directory](../../complete-source-index.md) · [Full source](source.md)

**41 observed declarations and anonymous commands**, 32 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Preadditive/Variant35bfc674a6b9bb047e218bf124799d8b9d607ae990911458301918ee9e7246c7.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `5be455d772ab2d7a6b9c1328ace80df2e2953acc`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/MonoidalPreadditive.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `class` | [MonoidalPreadditive](declarations/monoidalpreadditive.md) | 31 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `theorem` | [tensor_zero](declarations/tensor-zero.md) | 47 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `theorem` | [zero_tensor](declarations/zero-tensor.md) | 52 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `theorem` | [tensor_add](declarations/tensor-add.md) | 55 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [add_tensor](declarations/add-tensor.md) | 58 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `instance` | [tensorLeft_additive](declarations/tensorleft-additive.md) | 63 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `instance` | [tensorRight_additive](declarations/tensorright-additive.md) | 65 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `instance` | [tensoringLeft_additive](declarations/tensoringleft-additive.md) | 67 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `instance` | [tensoringRight_additive](declarations/tensoringright-additive.md) | 69 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [monoidalPreadditive_of_faithful](declarations/monoidalpreadditive-of-faithful.md) | 73 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [whiskerLeft_sum](declarations/whiskerleft-sum.md) | 95 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [sum_whiskerRight](declarations/sum-whiskerright.md) | 99 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [tensor_sum](declarations/tensor-sum.md) | 103 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [sum_tensor](declarations/sum-tensor.md) | 107 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `instance` | [(anonymous)](declarations/instance-source-edition-2.md) | 114 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `instance` | [(anonymous)](declarations/instance.md) | 124 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `def` | [leftDistributor](declarations/leftdistributor.md) | 137 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [leftDistributor_hom](declarations/leftdistributor-hom.md) | 140 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [leftDistributor_inv](declarations/leftdistributor-inv.md) | 150 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [leftDistributor_hom_comp_biproduct_π](declarations/leftdistributor-hom-comp-biproduct.md) | 160 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [biproduct_ι_comp_leftDistributor_hom](declarations/biproduct-comp-leftdistributor-hom.md) | 167 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [leftDistributor_inv_comp_biproduct_π](declarations/leftdistributor-inv-comp-biproduct.md) | 175 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [biproduct_ι_comp_leftDistributor_inv](declarations/biproduct-comp-leftdistributor-inv.md) | 183 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [leftDistributor_assoc](declarations/leftdistributor-assoc.md) | 189 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `def` | [rightDistributor](declarations/rightdistributor.md) | 205 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [rightDistributor_hom](declarations/rightdistributor-hom.md) | 208 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [rightDistributor_inv](declarations/rightdistributor-inv.md) | 218 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [rightDistributor_hom_comp_biproduct_π](declarations/rightdistributor-hom-comp-biproduct.md) | 227 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [biproduct_ι_comp_rightDistributor_hom](declarations/biproduct-comp-rightdistributor-hom.md) | 234 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [rightDistributor_inv_comp_biproduct_π](declarations/rightdistributor-inv-comp-biproduct.md) | 242 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [biproduct_ι_comp_rightDistributor_inv](declarations/biproduct-comp-rightdistributor-inv.md) | 250 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [rightDistributor_assoc](declarations/rightdistributor-assoc.md) | 257 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [leftDistributor_rightDistributor_assoc](declarations/leftdistributor-rightdistributor-assoc.md) | 272 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [leftDistributor_ext_left](declarations/leftdistributor-ext-left.md) | 292 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `theorem` | [leftDistributor_ext_right](declarations/leftdistributor-ext-right.md) | 304 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `theorem` | [leftDistributor_ext₂_left](declarations/leftdistributor-ext-left-source-edition-2.md) | 319 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `theorem` | [leftDistributor_ext₂_right](declarations/leftdistributor-ext-right-source-edition-2.md) | 328 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `theorem` | [rightDistributor_ext_left](declarations/rightdistributor-ext-left-source-edition-2.md) | 337 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `theorem` | [rightDistributor_ext_right](declarations/rightdistributor-ext-right-source-edition-2.md) | 350 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `theorem` | [rightDistributor_ext₂_left](declarations/rightdistributor-ext-left.md) | 364 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `theorem` | [rightDistributor_ext₂_right](declarations/rightdistributor-ext-right.md) | 373 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=f76a01745f1c388dcd205b6f8afa3559570dfef75f95694cc87523c2912d6bde -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Preadditive/Variant35bfc674a6b9bb047e218bf124799d8b9d607ae990911458301918ee9e7246c7.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
