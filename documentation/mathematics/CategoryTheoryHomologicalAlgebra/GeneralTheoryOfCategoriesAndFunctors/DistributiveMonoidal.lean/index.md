# Distributive Monoidal

[Complete source index](../../../complete-source-index.md) · [Up one directory](../../../complete-source-index.md) · [Full source](source.md)

**26 observed declarations and anonymous commands**, 17 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Monoidal/Variantc10a67c24ac24fe8f3272f00985ca892ea4a967d3b2a050555d96644808dab61.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `25a05ea4ab1648b7d262c102e51884f23aef76e1`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/DistributiveMonoidal.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `class` | [IsMonoidalLeftDistrib](declarations/ismonoidalleftdistrib.md) | 68 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `class` | [IsMonoidalRightDistrib](declarations/ismonoidalrightdistrib.md) | 75 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `class` | [IsMonoidalDistrib](declarations/ismonoidaldistrib.md) | 82 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `def` | [leftDistrib](declarations/leftdistrib.md) | 93 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `lemma` | [IsMonoidalLeftDistrib.of_isIso_coprodComparisonTensorLeft](declarations/ismonoidalleftdistrib-of-isiso-coprodcomparisontensorleft.md) | 108 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `lemma` | [leftDistrib_hom](declarations/leftdistrib-hom.md) | 115 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `lemma` | [coprod_inl_leftDistrib_hom](declarations/coprod-inl-leftdistrib-hom.md) | 119 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `lemma` | [coprod_inr_leftDistrib_hom](declarations/coprod-inr-leftdistrib-hom.md) | 124 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `lemma` | [whiskerLeft_coprod_inl_leftDistrib_inv](declarations/whiskerleft-coprod-inl-leftdistrib-inv.md) | 132 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `lemma` | [whiskerLeft_coprod_inr_leftDistrib_inv](declarations/whiskerleft-coprod-inr-leftdistrib-inv.md) | 141 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `def` | [rightDistrib](declarations/rightdistrib.md) | 151 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `lemma` | [IsMonoidalRightDistrib.of_isIso_coprodComparisonTensorRight](declarations/ismonoidalrightdistrib-of-isiso-coprodcomparisontensorright.md) | 165 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `lemma` | [rightDistrib_hom](declarations/rightdistrib-hom.md) | 173 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `lemma` | [coprod_inl_rightDistrib_hom](declarations/coprod-inl-rightdistrib-hom.md) | 177 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `lemma` | [coprod_inr_rightDistrib_hom](declarations/coprod-inr-rightdistrib-hom.md) | 182 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `lemma` | [whiskerRight_coprod_inl_rightDistrib_inv](declarations/whiskerright-coprod-inl-rightdistrib-inv.md) | 190 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `lemma` | [whiskerRight_coprod_inr_rightDistrib_inv](declarations/whiskerright-coprod-inr-rightdistrib-inv.md) | 199 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `lemma` | [coprodComparison_tensorLeft_braiding_hom](declarations/coprodcomparison-tensorleft-braiding-hom.md) | 207 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `lemma` | [coprodComparison_tensorRight_braiding_hom](declarations/coprodcomparison-tensorright-braiding-hom.md) | 215 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `lemma` | [SymmetricCategory.isMonoidalDistrib_of_isMonoidalLeftDistrib](declarations/symmetriccategory-ismonoidaldistrib-of-ismonoidalleftdistrib.md) | 221 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `lemma` | [SymmetricCategory.rightDistrib_of_leftDistrib](declarations/symmetriccategory-rightdistrib-of-leftdistrib.md) | 229 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `instance` | [MonoidalClosed.isMonoidalLeftDistrib](declarations/monoidalclosed-ismonoidalleftdistrib.md) | 235 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `instance` | [isMonoidalDistrib.of_symmetric_monoidal_closed](declarations/ismonoidaldistrib-of-symmetric-monoidal-closed.md) | 240 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `lemma` | [MonoidalClosed.leftDistrib_inv](declarations/monoidalclosed-leftdistrib-inv.md) | 245 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `instance` | [isMonoidalLeftDistrib.of_endofunctors](declarations/ismonoidalleftdistrib-of-endofunctors.md) | 256 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `instance` | [IsMonoidalDistrib.of_MonoidalPreadditive_with_binary_coproducts](declarations/ismonoidaldistrib-of-monoidalpreadditive-with-binary-coproducts.md) | 268 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=d0d8219839c653e469c3001757265d76500a563fc14c89df74ad7a53779d7e96 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Monoidal/Variantc10a67c24ac24fe8f3272f00985ca892ea4a967d3b2a050555d96644808dab61.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
