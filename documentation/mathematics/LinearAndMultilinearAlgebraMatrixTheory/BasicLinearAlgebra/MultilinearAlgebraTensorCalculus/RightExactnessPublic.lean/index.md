# Right Exactness Public

[Complete source index](../../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**40 observed declarations and anonymous commands**, 30 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Algebra/RightExactness/Variant00b11bfc5d034a6e1735f9d90b2a4e3dfa1ca3d1149183c3f3f9340f765f2629.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `ae212e71cf37d916051d32dfb64acce667287ba8`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../_verification/specifications/LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MultilinearAlgebraTensorCalculus/RightExactnessPublic.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `lemma` | [le_comap_range_lTensor](declarations/le-comap-range-ltensor.md) | 103 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `lemma` | [le_comap_range_rTensor](declarations/le-comap-range-rtensor.md) | 108 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `theorem` | [LinearMap.lTensor_surjective](declarations/linearmap-ltensor-surjective.md) | 117 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `theorem` | [LinearMap.lTensor_range](declarations/linearmap-ltensor-range.md) | 129 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [LinearMap.baseChange_surjective](declarations/linearmap-basechange-surjective.md) | 141 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [LinearMap.rTensor_surjective](declarations/linearmap-rtensor-surjective.md) | 147 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [LinearMap.rTensor_range](declarations/linearmap-rtensor-range.md) | 159 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `lemma` | [LinearMap.rTensor_exact_iff_lTensor_exact](declarations/linearmap-rtensor-exact-iff-ltensor-exact.md) | 170 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [TensorProduct.map_surjective](declarations/tensorproduct-map-surjective.md) | 182 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `def` | [lTensor.toFun](declarations/ltensor-tofun.md) | 199 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `def` | [lTensor.inverse_of_rightInverse](declarations/ltensor-inverse-of-rightinverse.md) | 206 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `lemma` | [lTensor.inverse_of_rightInverse_apply](declarations/ltensor-inverse-of-rightinverse-apply.md) | 224 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `lemma` | [lTensor.inverse_of_rightInverse_comp_lTensor](declarations/ltensor-inverse-of-rightinverse-comp-ltensor.md) | 239 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `def` | [lTensor.inverse](declarations/ltensor-inverse.md) | 250 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `lemma` | [lTensor.inverse_apply](declarations/ltensor-inverse-apply.md) | 254 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `lemma` | [lTensor.inverse_comp_lTensor](declarations/ltensor-inverse-comp-ltensor.md) | 259 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `def` | [lTensor.linearEquiv_of_rightInverse](declarations/ltensor-linearequiv-of-rightinverse.md) | 269 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `def` | [lTensor.equiv](declarations/ltensor-equiv.md) | 285 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [lTensor_exact](declarations/ltensor-exact.md) | 291 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `lemma` | [lTensor_mkQ](declarations/ltensor-mkq.md) | 300 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `def` | [rTensor.toFun](declarations/rtensor-tofun.md) | 306 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `def` | [rTensor.inverse_of_rightInverse](declarations/rtensor-inverse-of-rightinverse.md) | 313 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `lemma` | [rTensor.inverse_of_rightInverse_apply](declarations/rtensor-inverse-of-rightinverse-apply.md) | 331 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `lemma` | [rTensor.inverse_of_rightInverse_comp_rTensor](declarations/rtensor-inverse-of-rightinverse-comp-rtensor.md) | 345 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `def` | [rTensor.inverse](declarations/rtensor-inverse.md) | 356 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `lemma` | [rTensor.inverse_apply](declarations/rtensor-inverse-apply.md) | 360 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `lemma` | [rTensor.inverse_comp_rTensor](declarations/rtensor-inverse-comp-rtensor.md) | 365 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `def` | [rTensor.linearEquiv_of_rightInverse](declarations/rtensor-linearequiv-of-rightinverse.md) | 375 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `def` | [rTensor.equiv](declarations/rtensor-equiv.md) | 391 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [rTensor_exact](declarations/rtensor-exact.md) | 397 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `lemma` | [rTensor_mkQ](declarations/rtensor-mkq.md) | 402 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `lemma` | [LinearMap.ker_tensorProductMk](declarations/linearmap-ker-tensorproductmk.md) | 408 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [TensorProduct.map_ker](declarations/tensorproduct-map-ker.md) | 424 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `lemma` | [Ideal.map_includeLeft_eq](declarations/ideal-map-includeleft-eq.md) | 451 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `lemma` | [Ideal.map_includeRight_eq](declarations/ideal-map-includeright-eq.md) | 506 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `lemma` | [TensorProduct.AlgebraTensorModule.range_lTensor_idealMap](declarations/tensorproduct-algebratensormodule-range-ltensor-idealmap.md) | 561 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `lemma` | [Algebra.TensorProduct.lTensor_ker](declarations/algebra-tensorproduct-ltensor-ker.md) | 578 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `lemma` | [Algebra.TensorProduct.rTensor_ker](declarations/algebra-tensorproduct-rtensor-ker.md) | 589 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `theorem` | [Algebra.TensorProduct.map_surjective](declarations/algebra-tensorproduct-map-surjective.md) | 599 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `theorem` | [Algebra.TensorProduct.map_ker](declarations/algebra-tensorproduct-map-ker.md) | 606 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=f8a291f446d11e393e36413580a568f5537283cc0e58ac0651e21b36e3147198 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/RightExactness/Variant00b11bfc5d034a6e1735f9d90b2a4e3dfa1ca3d1149183c3f3f9340f765f2629.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
