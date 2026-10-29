# Over Products Namespaced Pullback Cone Equiv Binary Fan

[Complete source index](../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**25 observed declarations and anonymous commands**, 11 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Products/Variant9c0f6fdfcc619f9551a005eff566e0fe9a6a57555b71581e4d81d02e14a78076.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `889956f476b6ce70bcee65f8a5dd540d4050a287`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/OverProductsNamespacedPullbackConeEquivBinaryFan.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [pullbackConeEquivBinaryFan](declarations/pullbackconeequivbinaryfan.md) | 64 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `def` | [IsLimit.pullbackConeEquivBinaryFanFunctor](declarations/islimit-pullbackconeequivbinaryfanfunctor.md) | 83 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `def` | [IsLimit.pullbackConeEquivBinaryFanInverse](declarations/islimit-pullbackconeequivbinaryfaninverse.md) | 100 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `def` | [pushoutCoconeEquivBinaryCofan](declarations/pushoutcoconeequivbinarycofan.md) | 125 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `def` | [IsColimit.pushoutCoconeEquivBinaryCofanFunctor](declarations/iscolimit-pushoutcoconeequivbinarycofanfunctor.md) | 145 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `def` | [IsColimit.pushoutCoconeEquivBinaryCofanInverse](declarations/iscolimit-pushoutcoconeequivbinarycofaninverse.md) | 162 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `lemma` | [isPullback_of_binaryFan_isLimit](declarations/ispullback-of-binaryfan-islimit.md) | 189 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `def` | [prodLeftIsoPullback](declarations/prodleftisopullback.md) | 197 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `lemma` | [prodLeftIsoPullback_hom_fst](declarations/prodleftisopullback-hom-fst.md) | 202 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `lemma` | [prodLeftIsoPullback_hom_snd](declarations/prodleftisopullback-hom-snd.md) | 207 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `lemma` | [prodLeftIsoPullback_inv_fst](declarations/prodleftisopullback-inv-fst.md) | 212 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `lemma` | [prodLeftIsoPullback_inv_snd](declarations/prodleftisopullback-inv-snd.md) | 217 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `abbrev` | [widePullbackDiagramOfDiagramOver](declarations/widepullbackdiagramofdiagramover.md) | 236 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `def` | [conesEquivInverseObj](declarations/conesequivinverseobj.md) | 242 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `def` | [conesEquivInverse](declarations/conesequivinverse.md) | 256 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `def` | [conesEquivFunctor](declarations/conesequivfunctor.md) | 274 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `def` | [conesEquivUnitIso](declarations/conesequivunitiso.md) | 291 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `def` | [conesEquivCounitIso](declarations/conesequivcounitiso.md) | 303 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `def` | [conesEquiv](declarations/conesequiv.md) | 312 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [has_over_limit_discrete_of_widePullback_limit](declarations/has-over-limit-discrete-of-widepullback-limit.md) | 320 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [over_product_of_widePullback](declarations/over-product-of-widepullback.md) | 328 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [over_binaryProduct_of_pullback](declarations/over-binaryproduct-of-pullback.md) | 333 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [over_products_of_widePullbacks](declarations/over-products-of-widepullbacks.md) | 337 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [over_finiteProducts_of_finiteWidePullbacks](declarations/over-finiteproducts-of-finitewidepullbacks.md) | 342 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [over_hasTerminal](declarations/over-hasterminal.md) | 353 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=e8b9aad2ea2149a093ecb4e49427f6ab7d02452f23df00ce7a2687e9c9a4c8d7 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Products/Variant9c0f6fdfcc619f9551a005eff566e0fe9a6a57555b71581e4d81d02e14a78076.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
