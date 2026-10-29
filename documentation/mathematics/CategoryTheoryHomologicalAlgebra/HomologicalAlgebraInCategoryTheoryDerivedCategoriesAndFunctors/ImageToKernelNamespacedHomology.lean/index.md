# Image To Kernel Namespaced Homology

[Complete source index](../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**40 observed declarations and anonymous commands**, 24 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/ImageToKernel/Variant4bf1486ec2a370c1b40c67c7be09a9b68306edd9808bc38c93dd6cf6b34a48e0.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `f8107fb238bbb7de1f436388dd2bdeec886f6d73`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/ImageToKernelNamespacedHomology.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `theorem` | [image_le_kernel](declarations/image-le-kernel.md) | 49 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `def` | [imageToKernel](declarations/imagetokernel.md) | 55 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `instance` | [(anonymous)](declarations/instance.md) | 59 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `theorem` | [subobject_ofLE_as_imageToKernel](declarations/subobject-ofle-as-imagetokernel.md) | 65 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [imageToKernel_arrow](declarations/imagetokernel-arrow.md) | 75 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `lemma` | [imageToKernel_arrow_apply](declarations/imagetokernel-arrow-apply.md) | 81 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [factorThruImageSubobject_comp_imageToKernel](declarations/factorthruimagesubobject-comp-imagetokernel.md) | 89 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [imageToKernel_zero_left](declarations/imagetokernel-zero-left.md) | 102 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [imageToKernel_zero_right](declarations/imagetokernel-zero-right.md) | 108 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [imageToKernel_comp_right](declarations/imagetokernel-comp-right.md) | 119 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [imageToKernel_comp_left](declarations/imagetokernel-comp-left.md) | 126 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [imageToKernel_comp_mono](declarations/imagetokernel-comp-mono.md) | 134 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [imageToKernel_epi_comp](declarations/imagetokernel-epi-comp.md) | 143 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [imageToKernel_comp_hom_inv_comp](declarations/imagetokernel-comp-hom-inv-comp.md) | 154 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `instance` | [imageToKernel_epi_of_zero_of_mono](declarations/imagetokernel-epi-of-zero-of-mono.md) | 167 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `instance` | [imageToKernel_epi_of_epi_of_zero](declarations/imagetokernel-epi-of-epi-of-zero.md) | 175 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `def` | [homology](declarations/homology-source-edition-2.md) | 192 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `def` | [homology.π](declarations/homology.md) | 202 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [homology.condition](declarations/homology-condition.md) | 207 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `def` | [homology.desc](declarations/homology-desc.md) | 214 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [homology.π_desc](declarations/homology-desc-source-edition-2.md) | 221 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [homology.ext](declarations/homology-ext.md) | 228 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `def` | [homologyOfZeroRight](declarations/homologyofzeroright.md) | 234 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `def` | [homologyOfZeroLeft](declarations/homologyofzeroleft.md) | 243 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `def` | [homologyZeroZero](declarations/homologyzerozero.md) | 252 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [imageSubobjectMap_comp_imageToKernel](declarations/imagesubobjectmap-comp-imagetokernel.md) | 277 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `def` | [homology.map](declarations/homology-map-source-edition-2.md) | 292 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [homology.π_map](declarations/homology-map.md) | 301 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `lemma` | [homology.π_map_apply](declarations/homology-map-apply.md) | 311 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [homology.map_desc](declarations/homology-map-desc.md) | 320 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [homology.map_id](declarations/homology-map-id.md) | 330 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [homology.comp_right_eq_comp_left](declarations/homology-comp-right-eq-comp-left.md) | 336 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [homology.map_comp](declarations/homology-map-comp.md) | 345 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `def` | [homology.mapIso](declarations/homology-mapiso.md) | 353 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `def` | [homology.congr](declarations/homology-congr.md) | 388 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `def` | [imageToKernel'](declarations/imagetokernel-source-edition-2.md) | 422 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `theorem` | [imageSubobjectIso_imageToKernel'](declarations/imagesubobjectiso-imagetokernel.md) | 429 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `theorem` | [imageToKernel'_kernelSubobjectIso](declarations/imagetokernel-kernelsubobjectiso.md) | 437 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `def` | [homologyIsoCokernelImageToKernel'](declarations/homologyisocokernelimagetokernel.md) | 448 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `def` | [homologyIsoCokernelLift](declarations/homologyisocokernellift.md) | 472 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=cfbf3fadf1f168c482ed3153c8549f29b25d41e82c7c12a9d1dd1a39c2e802c0 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/ImageToKernel/Variant4bf1486ec2a370c1b40c67c7be09a9b68306edd9808bc38c93dd6cf6b34a48e0.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
