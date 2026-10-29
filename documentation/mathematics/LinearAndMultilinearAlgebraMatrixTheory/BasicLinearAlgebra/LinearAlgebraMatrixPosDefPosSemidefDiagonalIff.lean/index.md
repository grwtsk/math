# Linear Algebra Matrix Pos Def Pos Semidef Diagonal Iff

[Complete source index](../../../complete-source-index.md) · [Up one directory](../../../complete-source-index.md) · [Full source](source.md)

**83 observed declarations and anonymous commands**, 77 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Algebra/LinearAlgebra/PosDef/Variantb6a2226f7da4d3eeb6df0e589a69ed2a6b4c202c6279bacda5914c808053201b.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `29b799c847e2d6ffe174c1c4d10fee095374ce2b`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraMatrixPosDefPosSemidefDiagonalIff.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [PosSemidef](declarations/possemidef.md) | 47 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `theorem` | [PosSemidef.diagonal](declarations/possemidef-diagonal.md) | 50 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `lemma` | [posSemidef_diagonal_iff](declarations/possemidef-diagonal-iff.md) | 58 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `theorem` | [isHermitian](declarations/ishermitian-source-edition-2.md) | 64 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [re_dotProduct_nonneg](declarations/re-dotproduct-nonneg.md) | 67 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `lemma` | [conjTranspose_mul_mul_same](declarations/conjtranspose-mul-mul-same.md) | 71 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `lemma` | [mul_mul_conjTranspose_same](declarations/mul-mul-conjtranspose-same.md) | 79 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [submatrix](declarations/submatrix.md) | 84 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [transpose](declarations/transpose.md) | 92 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [_root_.Matrix.posSemidef_transpose_iff](declarations/root-matrix-possemidef-transpose-iff.md) | 98 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [conjTranspose](declarations/conjtranspose-source-edition-2.md) | 101 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [_root_.Matrix.posSemidef_conjTranspose_iff](declarations/root-matrix-possemidef-conjtranspose-iff.md) | 104 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `lemma` | [zero](declarations/zero.md) | 108 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `lemma` | [one](declarations/one.md) | 111 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [natCast](declarations/natcast-source-edition-2.md) | 115 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [ofNat](declarations/ofnat-source-edition-2.md) | 122 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [intCast](declarations/intcast-source-edition-2.md) | 126 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [_root_.Matrix.posSemidef_intCast_iff](declarations/root-matrix-possemidef-intcast-iff.md) | 134 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `lemma` | [pow](declarations/pow.md) | 139 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `lemma` | [inv](declarations/inv-source-edition-2.md) | 149 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `lemma` | [zpow](declarations/zpow.md) | 156 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `lemma` | [add](declarations/add.md) | 163 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `lemma` | [eigenvalues_nonneg](declarations/eigenvalues-nonneg.md) | 170 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [det_nonneg](declarations/det-nonneg.md) | 174 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `def` | [sqrt](declarations/sqrt.md) | 184 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `def` | [delabSqrt](declarations/delabsqrt.md) | 191 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `lemma` | [posSemidef_sqrt](declarations/possemidef-sqrt.md) | 202 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `lemma` | [sq_sqrt](declarations/sq-sqrt.md) | 212 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `lemma` | [sqrt_mul_self](declarations/sqrt-mul-self.md) | 225 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `lemma` | [eq_of_sq_eq_sq](declarations/eq-of-sq-eq-sq.md) | 228 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `lemma` | [sq_eq_sq_iff](declarations/sq-eq-sq-iff.md) | 265 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `lemma` | [sqrt_sq](declarations/sqrt-sq.md) | 268 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `lemma` | [eq_sqrt_iff_sq_eq](declarations/eq-sqrt-iff-sq-eq.md) | 272 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `lemma` | [sqrt_eq_iff_eq_sq](declarations/sqrt-eq-iff-eq-sq.md) | 276 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `lemma` | [eq_sqrt_of_sq_eq](declarations/eq-sqrt-of-sq-eq.md) | 281 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `lemma` | [sqrt_eq_zero_iff](declarations/sqrt-eq-zero-iff.md) | 285 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `lemma` | [sqrt_eq_one_iff](declarations/sqrt-eq-one-iff.md) | 289 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `lemma` | [isUnit_sqrt_iff](declarations/isunit-sqrt-iff.md) | 293 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `lemma` | [inv_sqrt](declarations/inv-sqrt.md) | 297 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `theorem` | [posSemidef_submatrix_equiv](declarations/possemidef-submatrix-equiv.md) | 305 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `theorem` | [posSemidef_conjTranspose_mul_self](declarations/possemidef-conjtranspose-mul-self.md) | 310 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `theorem` | [posSemidef_self_mul_conjTranspose](declarations/possemidef-self-mul-conjtranspose.md) | 317 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `lemma` | [eigenvalues_conjTranspose_mul_self_nonneg](declarations/eigenvalues-conjtranspose-mul-self-nonneg.md) | 321 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `lemma` | [eigenvalues_self_mul_conjTranspose_nonneg](declarations/eigenvalues-self-mul-conjtranspose-nonneg.md) | 325 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `lemma` | [posSemidef_iff_eq_conjTranspose_mul_self](declarations/possemidef-iff-eq-conjtranspose-mul-self.md) | 330 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `lemma` | [IsHermitian.posSemidef_of_eigenvalues_nonneg](declarations/ishermitian-possemidef-of-eigenvalues-nonneg.md) | 340 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `theorem` | [PosSemidef.dotProduct_mulVec_zero_iff](declarations/possemidef-dotproduct-mulvec-zero-iff.md) | 347 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `theorem` | [PosSemidef.toLinearMap₂'_zero_iff](declarations/possemidef-tolinearmap-zero-iff.md) | 360 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `def` | [PosDef](declarations/posdef.md) | 371 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `theorem` | [isHermitian](declarations/ishermitian.md) | 376 | `BLOCKED_NATIVE_ADMISSION` |
| 51 | `theorem` | [re_dotProduct_pos](declarations/re-dotproduct-pos.md) | 379 | `BLOCKED_NATIVE_ADMISSION` |
| 52 | `theorem` | [posSemidef](declarations/possemidef-source-edition-2.md) | 383 | `BLOCKED_NATIVE_ADMISSION` |
| 53 | `theorem` | [transpose](declarations/transpose-source-edition-2.md) | 391 | `BLOCKED_NATIVE_ADMISSION` |
| 54 | `theorem` | [transpose_iff](declarations/transpose-iff.md) | 397 | `BLOCKED_NATIVE_ADMISSION` |
| 55 | `theorem` | [diagonal](declarations/diagonal.md) | 400 | `BLOCKED_NATIVE_ADMISSION` |
| 56 | `theorem` | [_root_.Matrix.posDef_diagonal_iff](declarations/root-matrix-posdef-diagonal-iff.md) | 412 | `BLOCKED_NATIVE_ADMISSION` |
| 57 | `theorem` | [one](declarations/one-source-edition-2.md) | 421 | `BLOCKED_NATIVE_ADMISSION` |
| 58 | `theorem` | [natCast](declarations/natcast.md) | 425 | `BLOCKED_NATIVE_ADMISSION` |
| 59 | `theorem` | [_root_.Matrix.posDef_natCast_iff](declarations/root-matrix-posdef-natcast-iff.md) | 434 | `BLOCKED_NATIVE_ADMISSION` |
| 60 | `theorem` | [ofNat](declarations/ofnat.md) | 439 | `BLOCKED_NATIVE_ADMISSION` |
| 61 | `theorem` | [intCast](declarations/intcast.md) | 444 | `BLOCKED_NATIVE_ADMISSION` |
| 62 | `theorem` | [_root_.Matrix.posDef_intCast_iff](declarations/root-matrix-posdef-intcast-iff.md) | 453 | `BLOCKED_NATIVE_ADMISSION` |
| 63 | `lemma` | [add_posSemidef](declarations/add-possemidef.md) | 458 | `BLOCKED_NATIVE_ADMISSION` |
| 64 | `lemma` | [posSemidef_add](declarations/possemidef-add.md) | 465 | `BLOCKED_NATIVE_ADMISSION` |
| 65 | `lemma` | [add](declarations/add-source-edition-2.md) | 472 | `BLOCKED_NATIVE_ADMISSION` |
| 66 | `lemma` | [conjTranspose_mul_mul_same](declarations/conjtranspose-mul-mul-same-source-edition-2.md) | 476 | `BLOCKED_NATIVE_ADMISSION` |
| 67 | `lemma` | [mul_mul_conjTranspose_same](declarations/mul-mul-conjtranspose-same-source-edition-2.md) | 483 | `BLOCKED_NATIVE_ADMISSION` |
| 68 | `theorem` | [conjTranspose_mul_self](declarations/conjtranspose-mul-self.md) | 490 | `BLOCKED_NATIVE_ADMISSION` |
| 69 | `theorem` | [conjTranspose](declarations/conjtranspose.md) | 496 | `BLOCKED_NATIVE_ADMISSION` |
| 70 | `theorem` | [_root_.Matrix.posDef_conjTranspose_iff](declarations/root-matrix-posdef-conjtranspose-iff.md) | 499 | `BLOCKED_NATIVE_ADMISSION` |
| 71 | `theorem` | [of_toQuadraticForm'](declarations/of-toquadraticform.md) | 502 | `BLOCKED_NATIVE_ADMISSION` |
| 72 | `theorem` | [toQuadraticForm'](declarations/toquadraticform.md) | 509 | `BLOCKED_NATIVE_ADMISSION` |
| 73 | `lemma` | [eigenvalues_pos](declarations/eigenvalues-pos.md) | 517 | `BLOCKED_NATIVE_ADMISSION` |
| 74 | `theorem` | [det_pos](declarations/det-pos.md) | 522 | `BLOCKED_NATIVE_ADMISSION` |
| 75 | `theorem` | [isUnit](declarations/isunit.md) | 528 | `BLOCKED_NATIVE_ADMISSION` |
| 76 | `theorem` | [inv](declarations/inv.md) | 531 | `BLOCKED_NATIVE_ADMISSION` |
| 77 | `theorem` | [_root_.Matrix.posDef_inv_iff](declarations/root-matrix-posdef-inv-iff.md) | 538 | `BLOCKED_NATIVE_ADMISSION` |
| 78 | `lemma` | [posDef_sqrt](declarations/posdef-sqrt.md) | 544 | `BLOCKED_NATIVE_ADMISSION` |
| 79 | `lemma` | [posDef_iff_eq_conjTranspose_mul_self](declarations/posdef-iff-eq-conjtranspose-mul-self.md) | 555 | `BLOCKED_NATIVE_ADMISSION` |
| 80 | `theorem` | [posDef_of_toMatrix'](declarations/posdef-of-tomatrix.md) | 572 | `BLOCKED_NATIVE_ADMISSION` |
| 81 | `theorem` | [posDef_toMatrix'](declarations/posdef-tomatrix.md) | 578 | `BLOCKED_NATIVE_ADMISSION` |
| 82 | `abbrev` | [NormedAddCommGroup.ofMatrix](declarations/normedaddcommgroup-ofmatrix.md) | 591 | `BLOCKED_NATIVE_ADMISSION` |
| 83 | `def` | [InnerProductSpace.ofMatrix](declarations/innerproductspace-ofmatrix.md) | 610 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=5d183022db09a730e63cdf65342e1b7f54a3bb9ae16d2ef4c349af39fb8e064e -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/PosDef/Variantb6a2226f7da4d3eeb6df0e589a69ed2a6b4c202c6279bacda5914c808053201b.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
