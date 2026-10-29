# Galois Field Namespaced

[Complete source index](../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**70 observed declarations and anonymous commands**, 49 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Algebra/LinearAlgebra/GaloisField/Variantc4e50b27df445941a03feb256ef24c354e3f303bfbb42075baa48bb6784a4325.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `7c98ffa2ab79db828b647aba5490d17c25f2ea74`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/GaloisFieldNamespaced.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `abbrev` | [GF2](declarations/gf2.md) | 48 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `abbrev` | [GF2Matrix](declarations/gf2matrix.md) | 51 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `def` | [boolGF2Equiv](declarations/boolgf2equiv.md) | 54 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `theorem` | [boolGF2Equiv_false](declarations/boolgf2equiv-false.md) | 72 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [boolGF2Equiv_true](declarations/boolgf2equiv-true.md) | 75 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [boolGF2Equiv_xor](declarations/boolgf2equiv-xor.md) | 79 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [boolGF2Equiv_and](declarations/boolgf2equiv-and.md) | 85 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `def` | [boolMatrixGF2Equiv](declarations/boolmatrixgf2equiv.md) | 92 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [boolMatrixGF2Equiv_apply](declarations/boolmatrixgf2equiv-apply.md) | 103 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [boolMatrixGF2Equiv_symm_apply](declarations/boolmatrixgf2equiv-symm-apply.md) | 109 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [boolMatrixGF2Equiv_xor](declarations/boolmatrixgf2equiv-xor.md) | 115 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [boolMatrixGF2Equiv_and](declarations/boolmatrixgf2equiv-and.md) | 127 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `def` | [rowMajorIndexEquiv](declarations/rowmajorindexequiv.md) | 137 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [rowMajorIndexEquiv_apply](declarations/rowmajorindexequiv-apply.md) | 141 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `def` | [flattenEquiv](declarations/flattenequiv.md) | 148 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [flattenEquiv_apply_flatIdx](declarations/flattenequiv-apply-flatidx.md) | 165 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [flattenEquiv_xor](declarations/flattenequiv-xor.md) | 176 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `def` | [zeroMatrix](declarations/zeromatrix.md) | 185 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `def` | [pointwiseOneMatrix](declarations/pointwiseonematrix.md) | 188 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [xor_zero_right](declarations/xor-zero-right.md) | 191 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [xor_self](declarations/xor-self.md) | 197 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [and_zero_right](declarations/and-zero-right.md) | 203 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [and_one_right](declarations/and-one-right.md) | 209 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [zeroMatrix_eq_pointwiseOneMatrix_of_mul_eq_zero](declarations/zeromatrix-eq-pointwiseonematrix-of-mul-eq-zero.md) | 215 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `def` | [singletonMatrix](declarations/singletonmatrix.md) | 224 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [singletonMatrix_ne_zero](declarations/singletonmatrix-ne-zero.md) | 228 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [exists_pointwise_zero_divisors](declarations/exists-pointwise-zero-divisors.md) | 239 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `def` | [oneEntryGF2Equiv](declarations/oneentrygf2equiv.md) | 266 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [oneEntryGF2Equiv_xor](declarations/oneentrygf2equiv-xor.md) | 275 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [oneEntryGF2Equiv_and](declarations/oneentrygf2equiv-and.md) | 280 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `structure` | [BinMatFieldEncoding](declarations/binmatfieldencoding.md) | 292 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `def` | [code](declarations/code.md) | 303 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `def` | [decode](declarations/decode.md) | 307 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [decode_code](declarations/decode-code.md) | 311 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `theorem` | [code_decode](declarations/code-decode.md) | 316 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `theorem` | [code_zero](declarations/code-zero.md) | 321 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `theorem` | [code_add](declarations/code-add.md) | 328 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `theorem` | [decode_zero](declarations/decode-zero.md) | 335 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `theorem` | [card_field](declarations/card-field.md) | 341 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `theorem` | [dimension_pos](declarations/dimension-pos.md) | 347 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `def` | [gfZero](declarations/gfzero.md) | 363 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `def` | [gfOne](declarations/gfone.md) | 366 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `def` | [gfAdd](declarations/gfadd.md) | 369 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `def` | [gfMul](declarations/gfmul.md) | 373 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `def` | [gfNeg](declarations/gfneg.md) | 377 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `def` | [gfInv](declarations/gfinv.md) | 381 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `theorem` | [decode_gfAdd](declarations/decode-gfadd.md) | 385 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `theorem` | [decode_gfMul](declarations/decode-gfmul.md) | 391 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `theorem` | [decode_gfNeg](declarations/decode-gfneg.md) | 397 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `theorem` | [decode_gfInv](declarations/decode-gfinv.md) | 403 | `BLOCKED_NATIVE_ADMISSION` |
| 51 | `theorem` | [gfZero_eq_zeroMatrix](declarations/gfzero-eq-zeromatrix.md) | 409 | `BLOCKED_NATIVE_ADMISSION` |
| 52 | `theorem` | [gfAdd_eq_xor](declarations/gfadd-eq-xor.md) | 417 | `BLOCKED_NATIVE_ADMISSION` |
| 53 | `theorem` | [gfAdd_assoc](declarations/gfadd-assoc.md) | 427 | `BLOCKED_NATIVE_ADMISSION` |
| 54 | `theorem` | [gfAdd_comm](declarations/gfadd-comm.md) | 432 | `BLOCKED_NATIVE_ADMISSION` |
| 55 | `theorem` | [gfAdd_zero](declarations/gfadd-zero.md) | 437 | `BLOCKED_NATIVE_ADMISSION` |
| 56 | `theorem` | [gfAdd_self](declarations/gfadd-self.md) | 442 | `BLOCKED_NATIVE_ADMISSION` |
| 57 | `theorem` | [gfMul_assoc](declarations/gfmul-assoc.md) | 446 | `BLOCKED_NATIVE_ADMISSION` |
| 58 | `theorem` | [gfMul_comm](declarations/gfmul-comm.md) | 451 | `BLOCKED_NATIVE_ADMISSION` |
| 59 | `theorem` | [gfMul_one](declarations/gfmul-one.md) | 456 | `BLOCKED_NATIVE_ADMISSION` |
| 60 | `theorem` | [gfMul_zero](declarations/gfmul-zero.md) | 461 | `BLOCKED_NATIVE_ADMISSION` |
| 61 | `theorem` | [gfMul_add](declarations/gfmul-add.md) | 466 | `BLOCKED_NATIVE_ADMISSION` |
| 62 | `theorem` | [gfMul_ne_zero](declarations/gfmul-ne-zero.md) | 471 | `BLOCKED_NATIVE_ADMISSION` |
| 63 | `theorem` | [gfMul_inv](declarations/gfmul-inv.md) | 489 | `BLOCKED_NATIVE_ADMISSION` |
| 64 | `theorem` | [gfInv_mul](declarations/gfinv-mul.md) | 501 | `BLOCKED_NATIVE_ADMISSION` |
| 65 | `theorem` | [transported_mul_differs_from_pointwise_and](declarations/transported-mul-differs-from-pointwise-and.md) | 514 | `BLOCKED_NATIVE_ADMISSION` |
| 66 | `def` | [fieldQuantizer](declarations/fieldquantizer.md) | 530 | `BLOCKED_NATIVE_ADMISSION` |
| 67 | `theorem` | [fieldQuantizer_indistinguishable_iff](declarations/fieldquantizer-indistinguishable-iff.md) | 533 | `BLOCKED_NATIVE_ADMISSION` |
| 68 | `theorem` | [fieldQuantizer_effectiveStates_eq_univ](declarations/fieldquantizer-effectivestates-eq-univ.md) | 539 | `BLOCKED_NATIVE_ADMISSION` |
| 69 | `theorem` | [fieldQuantizer_effectiveStates_card](declarations/fieldquantizer-effectivestates-card.md) | 546 | `BLOCKED_NATIVE_ADMISSION` |
| 70 | `def` | [fieldQuantizer_quotientEquiv](declarations/fieldquantizer-quotientequiv.md) | 553 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=e37aebec6580d7ff98192569ce5a42da2b69b4ea0c9fa148af3ebec4935ab283 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/GaloisField/Variantc4e50b27df445941a03feb256ef24c354e3f303bfbb42075baa48bb6784a4325.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
