# Linear Algebra Contraction Public

[Complete source index](../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**56 observed declarations and anonymous commands**, 45 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Algebra/LinearAlgebra/Contraction/Variant1abf6c66f43938add29c3a32394d10d51680dc3cc8ffc90a22d75121e7bd90ab.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `d210e084a69630c862113256299d4d9bded7fb6f`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraContractionPublic.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [contractLeft](declarations/contractleft.md) | 52 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `def` | [contractRight](declarations/contractright.md) | 57 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `def` | [dualTensorHom](declarations/dualtensorhom.md) | 62 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `theorem` | [contractLeft_apply](declarations/contractleft-apply.md) | 67 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [contractRight_apply](declarations/contractright-apply.md) | 71 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [dualTensorHom_apply](declarations/dualtensorhom-apply.md) | 75 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [dualTensorHom_comp_lTensor](declarations/dualtensorhom-comp-ltensor.md) | 79 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [dualTensorHom_comp_rTensor_dualMap](declarations/dualtensorhom-comp-rtensor-dualmap.md) | 83 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [transpose_dualTensorHom](declarations/transpose-dualtensorhom.md) | 88 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [dualTensorHom_prodMap_zero](declarations/dualtensorhom-prodmap-zero.md) | 98 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [zero_prodMap_dualTensorHom](declarations/zero-prodmap-dualtensorhom.md) | 106 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [map_dualTensorHom](declarations/map-dualtensorhom.md) | 114 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [comp_dualTensorHom](declarations/comp-dualtensorhom.md) | 122 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [toMatrix_dualTensorHom](declarations/tomatrix-dualtensorhom.md) | 131 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [finite_projective_of_one_mem_range_dualTensorHom](declarations/finite-projective-of-one-mem-range-dualtensorhom.md) | 145 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [Module.Finite.of_one_mem_range_dualTensorHom](declarations/module-finite-of-one-mem-range-dualtensorhom.md) | 156 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [Module.Projective.of_one_mem_range_dualTensorHom](declarations/module-projective-of-one-mem-range-dualtensorhom.md) | 161 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `def` | [dualTensorHomEquivOfBasis](declarations/dualtensorhomequivofbasis.md) | 174 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [coe_dualTensorHomEquivOfBasis](declarations/coe-dualtensorhomequivofbasis.md) | 188 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [dualTensorHomEquivOfBasis_apply](declarations/dualtensorhomequivofbasis-apply.md) | 192 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [dualTensorHomEquivOfBasis_toLinearMap](declarations/dualtensorhomequivofbasis-tolinearmap.md) | 197 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [dualTensorHomEquivOfBasis_symm_cancel_left](declarations/dualtensorhomequivofbasis-symm-cancel-left.md) | 202 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [dualTensorHomEquivOfBasis_symm_cancel_right](declarations/dualtensorhomequivofbasis-symm-cancel-right.md) | 208 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [dualTensorHom_self_right](declarations/dualtensorhom-self-right.md) | 214 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [dualTensorHom_self_right_bijective](declarations/dualtensorhom-self-right-bijective.md) | 218 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [dualTensorHom_finsupp](declarations/dualtensorhom-finsupp.md) | 221 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [dualTensorHom_finsupp_bijective](declarations/dualtensorhom-finsupp-bijective.md) | 226 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [dualTensorHom_bijective_of_comp_eq_id_right](declarations/dualtensorhom-bijective-of-comp-eq-id-right.md) | 235 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [dualTensorHom_fun_bijective](declarations/dualtensorhom-fun-bijective.md) | 247 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [dualTensorHom_bijective_of_finite_projective_right](declarations/dualtensorhom-bijective-of-finite-projective-right.md) | 254 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [dualTensorHom_bijective_of_finite_left_projective_right](declarations/dualtensorhom-bijective-of-finite-left-projective-right.md) | 260 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `lemma` | [dualTensorHom_bijective](declarations/dualtensorhom-bijective.md) | 269 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `def` | [dualTensorHomEquiv](declarations/dualtensorhomequiv.md) | 284 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `lemma` | [toLinearMap_dualTensorHomEquiv](declarations/tolinearmap-dualtensorhomequiv.md) | 287 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `lemma` | [dualTensorHomEquiv_tmul](declarations/dualtensorhomequiv-tmul.md) | 290 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `lemma` | [dualTensorHomEquiv_symm_dualTensorHom](declarations/dualtensorhomequiv-symm-dualtensorhom.md) | 293 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `lemma` | [dualTensorHom_dualTensorHomEquiv_symm](declarations/dualtensorhom-dualtensorhomequiv-symm.md) | 297 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `lemma` | [dualTensorHomEquivOfBasis_eq_dualTensorHomEquiv](declarations/dualtensorhomequivofbasis-eq-dualtensorhomequiv.md) | 301 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `theorem` | [dualTensorHomEquiv_eq_dualTensorHomEquivOfBasis](declarations/dualtensorhomequiv-eq-dualtensorhomequivofbasis.md) | 308 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `def` | [lTensorHomEquivHomLTensor](declarations/ltensorhomequivhomltensor.md) | 332 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `def` | [rTensorHomEquivHomRTensor](declarations/rtensorhomequivhomrtensor.md) | 341 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `theorem` | [lTensorHomEquivHomLTensor_toLinearMap](declarations/ltensorhomequivhomltensor-tolinearmap.md) | 347 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `theorem` | [rTensorHomEquivHomRTensor_toLinearMap](declarations/rtensorhomequivhomrtensor-tolinearmap.md) | 357 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `theorem` | [lTensorHomEquivHomLTensor_apply](declarations/ltensorhomequivhomltensor-apply.md) | 366 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `theorem` | [rTensorHomEquivHomRTensor_apply](declarations/rtensorhomequivhomrtensor-apply.md) | 371 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `def` | [homTensorHomEquiv](declarations/homtensorhomequiv.md) | 380 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `theorem` | [homTensorHomEquiv_toLinearMap](declarations/homtensorhomequiv-tolinearmap.md) | 390 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `theorem` | [homTensorHomEquiv_apply](declarations/homtensorhomequiv-apply.md) | 394 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `def` | [dualDistribEquiv](declarations/dualdistribequiv.md) | 416 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `lemma` | [toLinearMap_dualDistribEquiv](declarations/tolinearmap-dualdistribequiv.md) | 419 | `BLOCKED_NATIVE_ADMISSION` |
| 51 | `lemma` | [dualDistribEquiv_tmul_tmul](declarations/dualdistribequiv-tmul-tmul.md) | 422 | `BLOCKED_NATIVE_ADMISSION` |
| 52 | `def` | [dualDistribInvOfBasis](declarations/dualdistribinvofbasis.md) | 431 | `BLOCKED_NATIVE_ADMISSION` |
| 53 | `theorem` | [dualDistribInvOfBasis_apply](declarations/dualdistribinvofbasis-apply.md) | 438 | `BLOCKED_NATIVE_ADMISSION` |
| 54 | `lemma` | [dualDistrib_dualDistribInvOfBasis_left_inverse](declarations/dualdistrib-dualdistribinvofbasis-left-inverse.md) | 443 | `BLOCKED_NATIVE_ADMISSION` |
| 55 | `theorem` | [dualDistrib_dualDistribInvOfBasis_right_inverse](declarations/dualdistrib-dualdistribinvofbasis-right-inverse.md) | 459 | `BLOCKED_NATIVE_ADMISSION` |
| 56 | `def` | [dualDistribEquivOfBasis](declarations/dualdistribequivofbasis.md) | 475 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=20433d35e0a8f8f08d6428eb3df78c687877bf0e56cf2698c07685421d9eac06 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/Contraction/Variant1abf6c66f43938add29c3a32394d10d51680dc3cc8ffc90a22d75121e7bd90ab.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
