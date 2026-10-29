# Linear Algebra Matrix Conj Transpose Namespaced Public

[Complete source index](../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**82 observed declarations and anonymous commands**, 72 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Algebra/LinearAlgebra/ConjTranspose/Variant3030f2622948bec76c11c11f8c1ccb9a7fae9d7fbd5aa9e3e6a6d76eaacec316.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `7bf3528dd1ead79a6daa08e87e4f254320941ff5`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraMatrixConjTransposeNamespacedPublic.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [conjTranspose](declarations/conjtranspose.md) | 44 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `lemma` | [conjTranspose_single](declarations/conjtranspose-single.md) | 51 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `theorem` | [diagonal_conjTranspose](declarations/diagonal-conjtranspose.md) | 62 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `theorem` | [map_diagonal_star](declarations/map-diagonal-star.md) | 67 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [diag_conjTranspose](declarations/diag-conjtranspose.md) | 75 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [diag_map_star](declarations/diag-map-star.md) | 79 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [star_dotProduct_star](declarations/star-dotproduct-star.md) | 91 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [star_dotProduct](declarations/star-dotproduct.md) | 93 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [dotProduct_star](declarations/dotproduct-star.md) | 95 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [star_mulVec](declarations/star-mulvec.md) | 105 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [star_vecMul](declarations/star-vecmul.md) | 109 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [mulVec_conjTranspose](declarations/mulvec-conjtranspose.md) | 113 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [vecMul_conjTranspose](declarations/vecmul-conjtranspose.md) | 117 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [conjTranspose_vecMulVec](declarations/conjtranspose-vecmulvec.md) | 124 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [map_vecMulVec_star](declarations/map-vecmulvec-star.md) | 128 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [conjTranspose_apply](declarations/conjtranspose-apply.md) | 141 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [conjTranspose_conjTranspose](declarations/conjtranspose-conjtranspose.md) | 146 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [conjTranspose_involutive](declarations/conjtranspose-involutive.md) | 150 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [conjTranspose_transpose](declarations/conjtranspose-transpose.md) | 154 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [transpose_conjTranspose](declarations/transpose-conjtranspose.md) | 158 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [conjTranspose_transpose_eq_transpose_conjTranspose](declarations/conjtranspose-transpose-eq-transpose-conjtranspose.md) | 162 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [conjTranspose_injective](declarations/conjtranspose-injective.md) | 166 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [conjTranspose_inj](declarations/conjtranspose-inj.md) | 170 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [conjTranspose_eq_diagonal](declarations/conjtranspose-eq-diagonal.md) | 174 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [map_star_eq_diagonal](declarations/map-star-eq-diagonal.md) | 179 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [conjTranspose_zero](declarations/conjtranspose-zero.md) | 184 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [conjTranspose_eq_zero](declarations/conjtranspose-eq-zero.md) | 188 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [map_star_eq_zero](declarations/map-star-eq-zero.md) | 192 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [conjTranspose_one](declarations/conjtranspose-one.md) | 196 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [conjTranspose_eq_one](declarations/conjtranspose-eq-one.md) | 201 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [map_star_eq_one](declarations/map-star-eq-one.md) | 205 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [conjTranspose_natCast](declarations/conjtranspose-natcast.md) | 210 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [map_natCast_star](declarations/map-natcast-star.md) | 215 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [conjTranspose_eq_natCast](declarations/conjtranspose-eq-natcast.md) | 219 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `theorem` | [map_star_eq_natCast](declarations/map-star-eq-natcast.md) | 224 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `theorem` | [conjTranspose_ofNat](declarations/conjtranspose-ofnat.md) | 229 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `theorem` | [map_ofNat_star](declarations/map-ofnat-star.md) | 233 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `theorem` | [conjTranspose_eq_ofNat](declarations/conjtranspose-eq-ofnat.md) | 237 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `theorem` | [map_star_eq_ofNat](declarations/map-star-eq-ofnat.md) | 242 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `theorem` | [conjTranspose_intCast](declarations/conjtranspose-intcast.md) | 246 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `theorem` | [map_intCast_star](declarations/map-intcast-star.md) | 250 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `theorem` | [conjTranspose_eq_intCast](declarations/conjtranspose-eq-intcast.md) | 254 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `theorem` | [map_star_eq_intCast](declarations/map-star-eq-intcast.md) | 260 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `theorem` | [conjTranspose_add](declarations/conjtranspose-add.md) | 265 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `theorem` | [conjTranspose_sub](declarations/conjtranspose-sub.md) | 270 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `theorem` | [conjTranspose_smul](declarations/conjtranspose-smul.md) | 286 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `theorem` | [conjTranspose_smul_non_comm](declarations/conjtranspose-smul-non-comm.md) | 291 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `theorem` | [conjTranspose_smul_self](declarations/conjtranspose-smul-self.md) | 296 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `theorem` | [conjTranspose_nsmul](declarations/conjtranspose-nsmul.md) | 300 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `theorem` | [conjTranspose_zsmul](declarations/conjtranspose-zsmul.md) | 304 | `BLOCKED_NATIVE_ADMISSION` |
| 51 | `theorem` | [conjTranspose_natCast_smul](declarations/conjtranspose-natcast-smul.md) | 309 | `BLOCKED_NATIVE_ADMISSION` |
| 52 | `theorem` | [conjTranspose_ofNat_smul](declarations/conjtranspose-ofnat-smul.md) | 314 | `BLOCKED_NATIVE_ADMISSION` |
| 53 | `theorem` | [conjTranspose_intCast_smul](declarations/conjtranspose-intcast-smul.md) | 320 | `BLOCKED_NATIVE_ADMISSION` |
| 54 | `theorem` | [conjTranspose_inv_natCast_smul](declarations/conjtranspose-inv-natcast-smul.md) | 325 | `BLOCKED_NATIVE_ADMISSION` |
| 55 | `theorem` | [conjTranspose_inv_ofNat_smul](declarations/conjtranspose-inv-ofnat-smul.md) | 330 | `BLOCKED_NATIVE_ADMISSION` |
| 56 | `theorem` | [conjTranspose_inv_intCast_smul](declarations/conjtranspose-inv-intcast-smul.md) | 336 | `BLOCKED_NATIVE_ADMISSION` |
| 57 | `theorem` | [conjTranspose_ratCast_smul](declarations/conjtranspose-ratcast-smul.md) | 341 | `BLOCKED_NATIVE_ADMISSION` |
| 58 | `theorem` | [conjTranspose_rat_smul](declarations/conjtranspose-rat-smul.md) | 345 | `BLOCKED_NATIVE_ADMISSION` |
| 59 | `theorem` | [conjTranspose_mul](declarations/conjtranspose-mul.md) | 350 | `BLOCKED_NATIVE_ADMISSION` |
| 60 | `theorem` | [conjTranspose_neg](declarations/conjtranspose-neg.md) | 355 | `BLOCKED_NATIVE_ADMISSION` |
| 61 | `theorem` | [conjTranspose_map](declarations/conjtranspose-map.md) | 358 | `BLOCKED_NATIVE_ADMISSION` |
| 62 | `theorem` | [conjTranspose_eq_transpose_of_trivial](declarations/conjtranspose-eq-transpose-of-trivial.md) | 365 | `BLOCKED_NATIVE_ADMISSION` |
| 63 | `def` | [conjTransposeAddEquiv](declarations/conjtransposeaddequiv.md) | 372 | `BLOCKED_NATIVE_ADMISSION` |
| 64 | `theorem` | [conjTransposeAddEquiv_symm](declarations/conjtransposeaddequiv-symm.md) | 380 | `BLOCKED_NATIVE_ADMISSION` |
| 65 | `theorem` | [conjTranspose_list_sum](declarations/conjtranspose-list-sum.md) | 386 | `BLOCKED_NATIVE_ADMISSION` |
| 66 | `theorem` | [conjTranspose_multiset_sum](declarations/conjtranspose-multiset-sum.md) | 390 | `BLOCKED_NATIVE_ADMISSION` |
| 67 | `theorem` | [conjTranspose_sum](declarations/conjtranspose-sum.md) | 394 | `BLOCKED_NATIVE_ADMISSION` |
| 68 | `def` | [conjTransposeLinearEquiv](declarations/conjtransposelinearequiv.md) | 402 | `BLOCKED_NATIVE_ADMISSION` |
| 69 | `theorem` | [conjTransposeLinearEquiv_symm](declarations/conjtransposelinearequiv-symm.md) | 408 | `BLOCKED_NATIVE_ADMISSION` |
| 70 | `instance` | [(anonymous)](declarations/instance-source-edition-5.md) | 419 | `BLOCKED_NATIVE_ADMISSION` |
| 71 | `theorem` | [star_eq_conjTranspose](declarations/star-eq-conjtranspose.md) | 421 | `BLOCKED_NATIVE_ADMISSION` |
| 72 | `theorem` | [star_apply](declarations/star-apply.md) | 425 | `BLOCKED_NATIVE_ADMISSION` |
| 73 | `instance` | [(anonymous)](declarations/instance-source-edition-4.md) | 428 | `BLOCKED_NATIVE_ADMISSION` |
| 74 | `instance` | [(anonymous)](declarations/instance-source-edition-3.md) | 432 | `BLOCKED_NATIVE_ADMISSION` |
| 75 | `instance` | [(anonymous)](declarations/instance-source-edition-2.md) | 435 | `BLOCKED_NATIVE_ADMISSION` |
| 76 | `instance` | [(anonymous)](declarations/instance.md) | 439 | `BLOCKED_NATIVE_ADMISSION` |
| 77 | `theorem` | [conjTranspose_submatrix](declarations/conjtranspose-submatrix.md) | 448 | `BLOCKED_NATIVE_ADMISSION` |
| 78 | `theorem` | [conjTranspose_reindex](declarations/conjtranspose-reindex.md) | 452 | `BLOCKED_NATIVE_ADMISSION` |
| 79 | `def` | [conjTransposeRingEquiv](declarations/conjtransposeringequiv.md) | 459 | `BLOCKED_NATIVE_ADMISSION` |
| 80 | `theorem` | [conjTranspose_pow](declarations/conjtranspose-pow.md) | 466 | `BLOCKED_NATIVE_ADMISSION` |
| 81 | `theorem` | [conjTranspose_list_prod](declarations/conjtranspose-list-prod.md) | 470 | `BLOCKED_NATIVE_ADMISSION` |
| 82 | `def` | [conjTransposeAlgEquiv](declarations/conjtransposealgequiv.md) | 477 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=d5131e670bd4eb45eb7c03c44dcb5a10f5844ba6859133b98de3ebc8718fef47 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/ConjTranspose/Variant3030f2622948bec76c11c11f8c1ccb9a7fae9d7fbd5aa9e3e6a6d76eaacec316.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
