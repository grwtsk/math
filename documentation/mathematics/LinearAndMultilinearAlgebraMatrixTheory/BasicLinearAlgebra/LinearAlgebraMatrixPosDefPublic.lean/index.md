# Linear Algebra Matrix Pos Def Public

[Complete source index](../../../complete-source-index.md) · [Up one directory](../../../complete-source-index.md) · [Full source](source.md)

**85 observed declarations and anonymous commands**, 83 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Algebra/LinearAlgebra/PosDef/Variant1b69b42201896947aab412c7ba340b51aad187ada7c1bcf0bd1545e8a3270acf.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `d85277376a28a5c2265aad6e21472b1fec73185a`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraMatrixPosDefPublic.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [PosSemidef](declarations/possemidef.md) | 60 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `theorem` | [PosSemidef.diagonal](declarations/possemidef-diagonal.md) | 63 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `lemma` | [posSemidef_diagonal_iff](declarations/possemidef-diagonal-iff.md) | 72 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `theorem` | [isHermitian](declarations/ishermitian.md) | 78 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [submatrix](declarations/submatrix-source-edition-2.md) | 81 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [transpose](declarations/transpose.md) | 86 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [_root_.Matrix.posSemidef_transpose_iff](declarations/root-matrix-possemidef-transpose-iff.md) | 93 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [conjTranspose](declarations/conjtranspose.md) | 96 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [_root_.Matrix.posSemidef_conjTranspose_iff](declarations/root-matrix-possemidef-conjtranspose-iff.md) | 99 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `lemma` | [add](declarations/add-source-edition-2.md) | 103 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [smul](declarations/smul-source-edition-2.md) | 108 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `lemma` | [zero](declarations/zero.md) | 114 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `lemma` | [one](declarations/one-source-edition-2.md) | 116 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [natCast](declarations/natcast-source-edition-2.md) | 120 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [ofNat](declarations/ofnat.md) | 125 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [intCast](declarations/intcast-source-edition-2.md) | 129 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [_root_.Matrix.posSemidef_intCast_iff](declarations/root-matrix-possemidef-intcast-iff.md) | 135 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `lemma` | [diag_nonneg](declarations/diag-nonneg.md) | 139 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [posSemidef_submatrix_equiv](declarations/possemidef-submatrix-equiv.md) | 145 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [posSemidef_sum](declarations/possemidef-sum.md) | 149 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `def` | [PosDef](declarations/posdef.md) | 162 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [isHermitian](declarations/ishermitian-source-edition-2.md) | 167 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [posSemidef](declarations/possemidef-source-edition-2.md) | 170 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [submatrix](declarations/submatrix.md) | 173 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [transpose](declarations/transpose-source-edition-2.md) | 179 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [transpose_iff](declarations/transpose-iff.md) | 187 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [diagonal](declarations/diagonal.md) | 190 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [_root_.Matrix.posDef_diagonal_iff](declarations/root-matrix-posdef-diagonal-iff.md) | 203 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [of_subsingleton](declarations/of-subsingleton.md) | 209 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [one](declarations/one.md) | 212 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [natCast](declarations/natcast.md) | 217 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [_root_.Matrix.posDef_natCast_iff](declarations/root-matrix-posdef-natcast-iff.md) | 224 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [ofNat](declarations/ofnat-source-edition-2.md) | 229 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [intCast](declarations/intcast.md) | 234 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `theorem` | [_root_.Matrix.posDef_intCast_iff](declarations/root-matrix-posdef-intcast-iff.md) | 241 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `lemma` | [add_posSemidef](declarations/add-possemidef.md) | 246 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `lemma` | [posSemidef_add](declarations/possemidef-add.md) | 252 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `lemma` | [add](declarations/add.md) | 257 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `theorem` | [_root_.Matrix.posDef_sum](declarations/root-matrix-posdef-sum.md) | 261 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `theorem` | [smul](declarations/smul.md) | 273 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `theorem` | [conjTranspose](declarations/conjtranspose-source-edition-2.md) | 279 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `theorem` | [_root_.Matrix.posDef_conjTranspose_iff](declarations/root-matrix-posdef-conjtranspose-iff.md) | 282 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `lemma` | [diag_pos](declarations/diag-pos.md) | 285 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `theorem` | [posSemidef_iff_dotProduct_mulVec](declarations/possemidef-iff-dotproduct-mulvec.md) | 298 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `theorem` | [dotProduct_mulVec_nonneg](declarations/dotproduct-mulvec-nonneg.md) | 306 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `lemma` | [of_dotProduct_mulVec_nonneg](declarations/of-dotproduct-mulvec-nonneg.md) | 309 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `lemma` | [conjTranspose_mul_mul_same](declarations/conjtranspose-mul-mul-same.md) | 314 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `lemma` | [mul_mul_conjTranspose_same](declarations/mul-mul-conjtranspose-same.md) | 322 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `lemma` | [pow](declarations/pow.md) | 326 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `lemma` | [inv](declarations/inv-source-edition-2.md) | 336 | `BLOCKED_NATIVE_ADMISSION` |
| 51 | `lemma` | [zpow](declarations/zpow.md) | 343 | `BLOCKED_NATIVE_ADMISSION` |
| 52 | `lemma` | [trace_nonneg](declarations/trace-nonneg.md) | 350 | `BLOCKED_NATIVE_ADMISSION` |
| 53 | `theorem` | [dotProduct_mulVec_zero_iff](declarations/dotproduct-mulvec-zero-iff.md) | 354 | `BLOCKED_NATIVE_ADMISSION` |
| 54 | `theorem` | [toLinearMap₂'_zero_iff](declarations/tolinearmap-zero-iff.md) | 375 | `BLOCKED_NATIVE_ADMISSION` |
| 55 | `theorem` | [posSemidef_conjTranspose_mul_self](declarations/possemidef-conjtranspose-mul-self.md) | 384 | `BLOCKED_NATIVE_ADMISSION` |
| 56 | `theorem` | [posSemidef_self_mul_conjTranspose](declarations/possemidef-self-mul-conjtranspose.md) | 393 | `BLOCKED_NATIVE_ADMISSION` |
| 57 | `theorem` | [trace_conjTranspose_mul_self_eq_zero_iff](declarations/trace-conjtranspose-mul-self-eq-zero-iff.md) | 403 | `BLOCKED_NATIVE_ADMISSION` |
| 58 | `theorem` | [trace_mul_conjTranspose_self_eq_zero_iff](declarations/trace-mul-conjtranspose-self-eq-zero-iff.md) | 407 | `BLOCKED_NATIVE_ADMISSION` |
| 59 | `theorem` | [IsUnit.posSemidef_star_left_conjugate_iff](declarations/isunit-possemidef-star-left-conjugate-iff.md) | 420 | `BLOCKED_NATIVE_ADMISSION` |
| 60 | `theorem` | [IsUnit.posSemidef_star_right_conjugate_iff](declarations/isunit-possemidef-star-right-conjugate-iff.md) | 432 | `BLOCKED_NATIVE_ADMISSION` |
| 61 | `theorem` | [posSemidef_vecMulVec_self_star](declarations/possemidef-vecmulvec-self-star.md) | 440 | `BLOCKED_NATIVE_ADMISSION` |
| 62 | `theorem` | [posSemidef_vecMulVec_star_self](declarations/possemidef-vecmulvec-star-self.md) | 446 | `BLOCKED_NATIVE_ADMISSION` |
| 63 | `theorem` | [posDef_iff_dotProduct_mulVec](declarations/posdef-iff-dotproduct-mulvec.md) | 454 | `BLOCKED_NATIVE_ADMISSION` |
| 64 | `lemma` | [dotProduct_mulVec_pos](declarations/dotproduct-mulvec-pos.md) | 466 | `BLOCKED_NATIVE_ADMISSION` |
| 65 | `lemma` | [of_dotProduct_mulVec_pos](declarations/of-dotproduct-mulvec-pos.md) | 469 | `BLOCKED_NATIVE_ADMISSION` |
| 66 | `lemma` | [conjTranspose_mul_mul_same](declarations/conjtranspose-mul-mul-same-source-edition-2.md) | 473 | `BLOCKED_NATIVE_ADMISSION` |
| 67 | `lemma` | [mul_mul_conjTranspose_same](declarations/mul-mul-conjtranspose-same-source-edition-2.md) | 480 | `BLOCKED_NATIVE_ADMISSION` |
| 68 | `theorem` | [conjTranspose_mul_self](declarations/conjtranspose-mul-self.md) | 487 | `BLOCKED_NATIVE_ADMISSION` |
| 69 | `theorem` | [mul_conjTranspose_self](declarations/mul-conjtranspose-self.md) | 493 | `BLOCKED_NATIVE_ADMISSION` |
| 70 | `theorem` | [of_toQuadraticForm'](declarations/of-toquadraticform.md) | 499 | `BLOCKED_NATIVE_ADMISSION` |
| 71 | `theorem` | [toQuadraticForm'](declarations/toquadraticform.md) | 505 | `BLOCKED_NATIVE_ADMISSION` |
| 72 | `theorem` | [_root_.LinearMap.BilinForm.posDef_toQuadraticMap_iff_matrix](declarations/root-linearmap-bilinform-posdef-toquadraticmap-iff-matrix.md) | 512 | `BLOCKED_NATIVE_ADMISSION` |
| 73 | `lemma` | [trace_pos](declarations/trace-pos.md) | 527 | `BLOCKED_NATIVE_ADMISSION` |
| 74 | `theorem` | [det_pos](declarations/det-pos.md) | 531 | `BLOCKED_NATIVE_ADMISSION` |
| 75 | `theorem` | [isUnit](declarations/isunit.md) | 557 | `BLOCKED_NATIVE_ADMISSION` |
| 76 | `theorem` | [inv](declarations/inv.md) | 564 | `BLOCKED_NATIVE_ADMISSION` |
| 77 | `theorem` | [_root_.Matrix.posDef_inv_iff](declarations/root-matrix-posdef-inv-iff.md) | 571 | `BLOCKED_NATIVE_ADMISSION` |
| 78 | `theorem` | [_root_.Matrix.IsUnit.posDef_star_left_conjugate_iff](declarations/root-matrix-isunit-posdef-star-left-conjugate-iff.md) | 588 | `BLOCKED_NATIVE_ADMISSION` |
| 79 | `theorem` | [_root_.Matrix.IsUnit.posDef_star_right_conjugate_iff](declarations/root-matrix-isunit-posdef-star-right-conjugate-iff.md) | 602 | `BLOCKED_NATIVE_ADMISSION` |
| 80 | `theorem` | [fromBlocks₁₁](declarations/fromblocks.md) | 613 | `BLOCKED_NATIVE_ADMISSION` |
| 81 | `theorem` | [fromBlocks₂₂](declarations/fromblocks-source-edition-2.md) | 632 | `BLOCKED_NATIVE_ADMISSION` |
| 82 | `lemma` | [star_dotProduct_mulVec_mul_le](declarations/star-dotproduct-mulvec-mul-le.md) | 642 | `BLOCKED_NATIVE_ADMISSION` |
| 83 | `lemma` | [finite_setOfPred_dotProduct_mulVec_le](declarations/finite-setofpred-dotproduct-mulvec-le.md) | 656 | `BLOCKED_NATIVE_ADMISSION` |
| 84 | `theorem` | [posDef_of_toMatrix'](declarations/posdef-of-tomatrix.md) | 682 | `BLOCKED_NATIVE_ADMISSION` |
| 85 | `theorem` | [posDef_toMatrix'](declarations/posdef-tomatrix.md) | 688 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=e6adce1d327d5af7150a7e75e0e77a63cda9ee3464a09d8eafda5d1728a66db6 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/PosDef/Variant1b69b42201896947aab412c7ba340b51aad187ada7c1bcf0bd1545e8a3270acf.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
