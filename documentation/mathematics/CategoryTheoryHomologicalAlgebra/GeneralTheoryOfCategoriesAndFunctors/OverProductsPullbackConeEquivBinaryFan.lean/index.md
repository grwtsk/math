# Over Products Pullback Cone Equiv Binary Fan

[Complete source index](../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**25 observed declarations and anonymous commands**, 11 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Products/Variant6bbb8b26355f69a22b8af6a77f79e5f82400c7c8695f7cad8b1f0dd35d2083d8.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `d15f72b2b4ef22b60603e0b9f122ffc8f07bbca4`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/OverProductsPullbackConeEquivBinaryFan.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [pullbackConeEquivBinaryFan](declarations/pullbackconeequivbinaryfan.md) | 56 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `def` | [IsLimit.pullbackConeEquivBinaryFanFunctor](declarations/islimit-pullbackconeequivbinaryfanfunctor.md) | 75 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `def` | [IsLimit.pullbackConeEquivBinaryFanInverse](declarations/islimit-pullbackconeequivbinaryfaninverse.md) | 92 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `def` | [pushoutCoconeEquivBinaryCofan](declarations/pushoutcoconeequivbinarycofan.md) | 117 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `def` | [IsColimit.pushoutCoconeEquivBinaryCofanFunctor](declarations/iscolimit-pushoutcoconeequivbinarycofanfunctor.md) | 137 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `def` | [IsColimit.pushoutCoconeEquivBinaryCofanInverse](declarations/iscolimit-pushoutcoconeequivbinarycofaninverse.md) | 154 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `lemma` | [isPullback_of_binaryFan_isLimit](declarations/ispullback-of-binaryfan-islimit.md) | 181 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `def` | [prodLeftIsoPullback](declarations/prodleftisopullback.md) | 189 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `lemma` | [prodLeftIsoPullback_hom_fst](declarations/prodleftisopullback-hom-fst.md) | 194 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `lemma` | [prodLeftIsoPullback_hom_snd](declarations/prodleftisopullback-hom-snd.md) | 199 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `lemma` | [prodLeftIsoPullback_inv_fst](declarations/prodleftisopullback-inv-fst.md) | 204 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `lemma` | [prodLeftIsoPullback_inv_snd](declarations/prodleftisopullback-inv-snd.md) | 209 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `abbrev` | [widePullbackDiagramOfDiagramOver](declarations/widepullbackdiagramofdiagramover.md) | 228 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `def` | [conesEquivInverseObj](declarations/conesequivinverseobj.md) | 234 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `def` | [conesEquivInverse](declarations/conesequivinverse.md) | 248 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `def` | [conesEquivFunctor](declarations/conesequivfunctor.md) | 266 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `def` | [conesEquivUnitIso](declarations/conesequivunitiso.md) | 283 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `def` | [conesEquivCounitIso](declarations/conesequivcounitiso.md) | 295 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `def` | [conesEquiv](declarations/conesequiv.md) | 304 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [has_over_limit_discrete_of_widePullback_limit](declarations/has-over-limit-discrete-of-widepullback-limit.md) | 312 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [over_product_of_widePullback](declarations/over-product-of-widepullback.md) | 320 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [over_binaryProduct_of_pullback](declarations/over-binaryproduct-of-pullback.md) | 325 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [over_products_of_widePullbacks](declarations/over-products-of-widepullbacks.md) | 329 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [over_finiteProducts_of_finiteWidePullbacks](declarations/over-finiteproducts-of-finitewidepullbacks.md) | 334 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [over_hasTerminal](declarations/over-hasterminal.md) | 345 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=c7e442fe4f32f82f626b4cbf0f25b0125a13e4e864c91987b406ac2d70c5040b -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Products/Variant6bbb8b26355f69a22b8af6a77f79e5f82400c7c8695f7cad8b1f0dd35d2083d8.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
