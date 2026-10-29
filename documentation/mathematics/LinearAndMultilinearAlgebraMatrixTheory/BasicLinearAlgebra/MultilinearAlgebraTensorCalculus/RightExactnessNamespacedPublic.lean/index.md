# Right Exactness Namespaced Public

[Complete source index](../../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**40 observed declarations and anonymous commands**, 30 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Algebra/RightExactness/Variant53f7844a2c726a21385b358df8c1cec3f628266f5b190b6d4e7e65a0cb870629.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `b1dc5533a78a54da60f8f336052f02e6c1a67f6a`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../_verification/specifications/LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MultilinearAlgebraTensorCalculus/RightExactnessNamespacedPublic.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `lemma` | [le_comap_range_lTensor](declarations/le-comap-range-ltensor.md) | 111 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `lemma` | [le_comap_range_rTensor](declarations/le-comap-range-rtensor.md) | 116 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `theorem` | [LinearMap.lTensor_surjective](declarations/linearmap-ltensor-surjective.md) | 125 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `theorem` | [LinearMap.lTensor_range](declarations/linearmap-ltensor-range.md) | 137 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [LinearMap.baseChange_surjective](declarations/linearmap-basechange-surjective.md) | 149 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [LinearMap.rTensor_surjective](declarations/linearmap-rtensor-surjective.md) | 155 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [LinearMap.rTensor_range](declarations/linearmap-rtensor-range.md) | 167 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `lemma` | [LinearMap.rTensor_exact_iff_lTensor_exact](declarations/linearmap-rtensor-exact-iff-ltensor-exact.md) | 178 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [TensorProduct.map_surjective](declarations/tensorproduct-map-surjective.md) | 190 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `def` | [lTensor.toFun](declarations/ltensor-tofun.md) | 207 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `def` | [lTensor.inverse_of_rightInverse](declarations/ltensor-inverse-of-rightinverse.md) | 214 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `lemma` | [lTensor.inverse_of_rightInverse_apply](declarations/ltensor-inverse-of-rightinverse-apply.md) | 232 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `lemma` | [lTensor.inverse_of_rightInverse_comp_lTensor](declarations/ltensor-inverse-of-rightinverse-comp-ltensor.md) | 247 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `def` | [lTensor.inverse](declarations/ltensor-inverse.md) | 258 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `lemma` | [lTensor.inverse_apply](declarations/ltensor-inverse-apply.md) | 262 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `lemma` | [lTensor.inverse_comp_lTensor](declarations/ltensor-inverse-comp-ltensor.md) | 267 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `def` | [lTensor.linearEquiv_of_rightInverse](declarations/ltensor-linearequiv-of-rightinverse.md) | 277 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `def` | [lTensor.equiv](declarations/ltensor-equiv.md) | 293 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [lTensor_exact](declarations/ltensor-exact.md) | 299 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `lemma` | [lTensor_mkQ](declarations/ltensor-mkq.md) | 308 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `def` | [rTensor.toFun](declarations/rtensor-tofun.md) | 314 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `def` | [rTensor.inverse_of_rightInverse](declarations/rtensor-inverse-of-rightinverse.md) | 321 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `lemma` | [rTensor.inverse_of_rightInverse_apply](declarations/rtensor-inverse-of-rightinverse-apply.md) | 339 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `lemma` | [rTensor.inverse_of_rightInverse_comp_rTensor](declarations/rtensor-inverse-of-rightinverse-comp-rtensor.md) | 353 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `def` | [rTensor.inverse](declarations/rtensor-inverse.md) | 364 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `lemma` | [rTensor.inverse_apply](declarations/rtensor-inverse-apply.md) | 368 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `lemma` | [rTensor.inverse_comp_rTensor](declarations/rtensor-inverse-comp-rtensor.md) | 373 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `def` | [rTensor.linearEquiv_of_rightInverse](declarations/rtensor-linearequiv-of-rightinverse.md) | 383 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `def` | [rTensor.equiv](declarations/rtensor-equiv.md) | 399 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [rTensor_exact](declarations/rtensor-exact.md) | 405 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `lemma` | [rTensor_mkQ](declarations/rtensor-mkq.md) | 410 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `lemma` | [LinearMap.ker_tensorProductMk](declarations/linearmap-ker-tensorproductmk.md) | 416 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [TensorProduct.map_ker](declarations/tensorproduct-map-ker.md) | 432 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `lemma` | [Ideal.map_includeLeft_eq](declarations/ideal-map-includeleft-eq.md) | 459 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `lemma` | [Ideal.map_includeRight_eq](declarations/ideal-map-includeright-eq.md) | 514 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `lemma` | [TensorProduct.AlgebraTensorModule.range_lTensor_idealMap](declarations/tensorproduct-algebratensormodule-range-ltensor-idealmap.md) | 569 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `lemma` | [Algebra.TensorProduct.lTensor_ker](declarations/algebra-tensorproduct-ltensor-ker.md) | 586 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `lemma` | [Algebra.TensorProduct.rTensor_ker](declarations/algebra-tensorproduct-rtensor-ker.md) | 597 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `theorem` | [Algebra.TensorProduct.map_surjective](declarations/algebra-tensorproduct-map-surjective.md) | 607 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `theorem` | [Algebra.TensorProduct.map_ker](declarations/algebra-tensorproduct-map-ker.md) | 614 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=f6911b8db75446b5be86be3dabb2d118417fab8f7e4cbcc85665dce361ca00c0 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/RightExactness/Variant53f7844a2c726a21385b358df8c1cec3f628266f5b190b6d4e7e65a0cb870629.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
