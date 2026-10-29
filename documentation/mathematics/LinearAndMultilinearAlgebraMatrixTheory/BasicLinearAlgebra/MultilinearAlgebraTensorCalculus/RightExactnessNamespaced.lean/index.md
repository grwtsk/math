# Right Exactness Namespaced

[Complete source index](../../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**37 observed declarations and anonymous commands**, 27 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Algebra/RightExactness/Variant09180e6195240348e25f7fe89d4b084f55888133a3485b63cb76de5fd6a4e177.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `64f840108666754bc713e9eaa353006c83f90c0c`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../_verification/specifications/LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MultilinearAlgebraTensorCalculus/RightExactnessNamespaced.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `lemma` | [le_comap_range_lTensor](declarations/le-comap-range-ltensor.md) | 106 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `lemma` | [le_comap_range_rTensor](declarations/le-comap-range-rtensor.md) | 111 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `theorem` | [LinearMap.lTensor_surjective](declarations/linearmap-ltensor-surjective.md) | 120 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `theorem` | [LinearMap.lTensor_range](declarations/linearmap-ltensor-range.md) | 133 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [LinearMap.rTensor_surjective](declarations/linearmap-rtensor-surjective.md) | 145 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [LinearMap.rTensor_range](declarations/linearmap-rtensor-range.md) | 158 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `lemma` | [LinearMap.rTensor_exact_iff_lTensor_exact](declarations/linearmap-rtensor-exact-iff-ltensor-exact.md) | 169 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [TensorProduct.map_surjective](declarations/tensorproduct-map-surjective.md) | 181 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `def` | [lTensor.toFun](declarations/ltensor-tofun.md) | 198 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `def` | [lTensor.inverse_of_rightInverse](declarations/ltensor-inverse-of-rightinverse.md) | 205 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `lemma` | [lTensor.inverse_of_rightInverse_apply](declarations/ltensor-inverse-of-rightinverse-apply.md) | 223 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `lemma` | [lTensor.inverse_of_rightInverse_comp_lTensor](declarations/ltensor-inverse-of-rightinverse-comp-ltensor.md) | 239 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `def` | [lTensor.inverse](declarations/ltensor-inverse.md) | 250 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `lemma` | [lTensor.inverse_apply](declarations/ltensor-inverse-apply.md) | 254 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `lemma` | [lTensor.inverse_comp_lTensor](declarations/ltensor-inverse-comp-ltensor.md) | 259 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `def` | [lTensor.linearEquiv_of_rightInverse](declarations/ltensor-linearequiv-of-rightinverse.md) | 268 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `def` | [lTensor.equiv](declarations/ltensor-equiv.md) | 284 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [lTensor_exact](declarations/ltensor-exact.md) | 290 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `lemma` | [lTensor_mkQ](declarations/ltensor-mkq.md) | 299 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `def` | [rTensor.toFun](declarations/rtensor-tofun.md) | 305 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `def` | [rTensor.inverse_of_rightInverse](declarations/rtensor-inverse-of-rightinverse.md) | 312 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `lemma` | [rTensor.inverse_of_rightInverse_apply](declarations/rtensor-inverse-of-rightinverse-apply.md) | 330 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `lemma` | [rTensor.inverse_of_rightInverse_comp_rTensor](declarations/rtensor-inverse-of-rightinverse-comp-rtensor.md) | 346 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `def` | [rTensor.inverse](declarations/rtensor-inverse.md) | 357 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `lemma` | [rTensor.inverse_apply](declarations/rtensor-inverse-apply.md) | 361 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `lemma` | [rTensor.inverse_comp_rTensor](declarations/rtensor-inverse-comp-rtensor.md) | 366 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `def` | [rTensor.linearEquiv_of_rightInverse](declarations/rtensor-linearequiv-of-rightinverse.md) | 375 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `def` | [rTensor.equiv](declarations/rtensor-equiv.md) | 391 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [rTensor_exact](declarations/rtensor-exact.md) | 397 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `lemma` | [rTensor_mkQ](declarations/rtensor-mkq.md) | 402 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `lemma` | [LinearMap.ker_tensorProductMk](declarations/linearmap-ker-tensorproductmk.md) | 408 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [TensorProduct.map_ker](declarations/tensorproduct-map-ker.md) | 425 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `lemma` | [Ideal.map_includeLeft_eq](declarations/ideal-map-includeleft-eq.md) | 452 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `lemma` | [Ideal.map_includeRight_eq](declarations/ideal-map-includeright-eq.md) | 517 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `lemma` | [Algebra.TensorProduct.lTensor_ker](declarations/algebra-tensorproduct-ltensor-ker.md) | 590 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `lemma` | [Algebra.TensorProduct.rTensor_ker](declarations/algebra-tensorproduct-rtensor-ker.md) | 601 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `theorem` | [Algebra.TensorProduct.map_ker](declarations/algebra-tensorproduct-map-ker.md) | 613 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=73bc03df565af60f7dcaa42cdb5aea694c1eea8573069f75fd255139604992c8 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/RightExactness/Variant09180e6195240348e25f7fe89d4b084f55888133a3485b63cb76de5fd6a4e177.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
