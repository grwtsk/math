# Source Reflection Arithmetic Source L2 Reflection

[Complete source index](../../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**53 observed declarations and anonymous commands**, 37 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceReflectionArithmetic/Variantbb7385cf57a547dd6011764641b577d190e934ce627a3182a317ef9a2128f726.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `0052ae65b8f803605e99c7883429fbd4ed3cd364`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../_verification/specifications/NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceReflectionArithmeticSourceL2Reflection.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [complexify](declarations/complexify.md) | 31 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `theorem` | [complexify_coe_ae](declarations/complexify-coe-ae.md) | 35 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `theorem` | [complexify_inner](declarations/complexify-inner.md) | 40 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `def` | [sourceL2](declarations/sourcel2.md) | 52 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [sourceL2_coe_ae](declarations/sourcel2-coe-ae.md) | 56 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `def` | [mangoldtComplexL2](declarations/mangoldtcomplexl2.md) | 66 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `def` | [centeredMobiusComplexL2](declarations/centeredmobiuscomplexl2.md) | 70 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `def` | [centeredReflectedComplexL2](declarations/centeredreflectedcomplexl2.md) | 75 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [mangoldtComplexL2_coe_ae](declarations/mangoldtcomplexl2-coe-ae.md) | 79 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [centeredMobiusComplexL2_coe_ae](declarations/centeredmobiuscomplexl2-coe-ae.md) | 88 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [centeredReflectedComplexL2_coe_ae](declarations/centeredreflectedcomplexl2-coe-ae.md) | 99 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [complex_pairing_eq_source](declarations/complex-pairing-eq-source.md) | 109 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [complexify_norm_sq](declarations/complexify-norm-sq.md) | 117 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [sourceL2_norm_sq](declarations/sourcel2-norm-sq.md) | 124 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [sourceL2_ne_zero](declarations/sourcel2-ne-zero.md) | 131 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [sourceL2_reflection](declarations/sourcel2-reflection.md) | 138 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [translatedSource_coe_ae](declarations/translatedsource-coe-ae.md) | 148 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [forwardComplex_eq_sum_translates](declarations/forwardcomplex-eq-sum-translates.md) | 157 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [centered_complex_reflection](declarations/centered-complex-reflection.md) | 181 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [mangoldtComplex_eq_sum](declarations/mangoldtcomplex-eq-sum.md) | 191 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [centeredMobiusComplex_eq_sum](declarations/centeredmobiuscomplex-eq-sum.md) | 198 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `def` | [dualSourceL2](declarations/dualsourcel2.md) | 205 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `def` | [dualMangoldtL2](declarations/dualmangoldtl2.md) | 209 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `def` | [dualCenteredMobiusL2](declarations/dualcenteredmobiusl2.md) | 213 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `def` | [dualReflectedMobiusL2](declarations/dualreflectedmobiusl2.md) | 217 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [dual_reflected_state](declarations/dual-reflected-state.md) | 221 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [dualSource_reflection](declarations/dualsource-reflection.md) | 227 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [dualSource_norm_sq](declarations/dualsource-norm-sq.md) | 232 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [original_reflected_kernel](declarations/original-reflected-kernel.md) | 237 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [original_stationary_kernel](declarations/original-stationary-kernel.md) | 265 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `def` | [reflectedDualKernel](declarations/reflecteddualkernel.md) | 279 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `def` | [stationaryDualKernel](declarations/stationarydualkernel.md) | 283 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [dual_complex_pairing_eq_neg_source](declarations/dual-complex-pairing-eq-neg-source.md) | 287 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [dual_plus_norm_eq_original_minus](declarations/dual-plus-norm-eq-original-minus.md) | 295 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `theorem` | [dual_minus_norm_eq_original_plus](declarations/dual-minus-norm-eq-original-plus.md) | 302 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `theorem` | [dual_source_reflected_unit_fixture](declarations/dual-source-reflected-unit-fixture.md) | 309 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `theorem` | [reflectedDualKernel_eq_neg_source](declarations/reflecteddualkernel-eq-neg-source.md) | 315 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `theorem` | [stationaryDualKernel_eq_source](declarations/stationarydualkernel-eq-source.md) | 323 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `def` | [dualPlainWeight](declarations/dualplainweight.md) | 329 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `theorem` | [dualPlainWeight_eq_neg_source](declarations/dualplainweight-eq-neg-source.md) | 333 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `theorem` | [dualPlainWeight_zero_above_cutoff](declarations/dualplainweight-zero-above-cutoff.md) | 339 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `def` | [dualCenteredRectangle](declarations/dualcenteredrectangle.md) | 344 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `def` | [dualCenteredDeletedDiagonal](declarations/dualcentereddeleteddiagonal.md) | 350 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `def` | [dualCenteredOffDiagonal](declarations/dualcenteredoffdiagonal.md) | 356 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `def` | [dualCovarianceOperatorValue](declarations/dualcovarianceoperatorvalue.md) | 362 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `theorem` | [dualCenteredRectangle_eq_neg](declarations/dualcenteredrectangle-eq-neg.md) | 366 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `theorem` | [dualCenteredDeletedDiagonal_eq_neg](declarations/dualcentereddeleteddiagonal-eq-neg.md) | 372 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `theorem` | [dualCenteredDeletedDiagonal_eq_neg_old_add_centering](declarations/dualcentereddeleteddiagonal-eq-neg-old-add-centering.md) | 378 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `theorem` | [dualCenteredOffDiagonal_eq_neg](declarations/dualcenteredoffdiagonal-eq-neg.md) | 384 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `theorem` | [dualOffDiagonal_eq_unmasked](declarations/dualoffdiagonal-eq-unmasked.md) | 390 | `BLOCKED_NATIVE_ADMISSION` |
| 51 | `theorem` | [dual_pairing_eq_rectangle](declarations/dual-pairing-eq-rectangle.md) | 410 | `BLOCKED_NATIVE_ADMISSION` |
| 52 | `theorem` | [dualCovarianceOperatorValue_eq_neg](declarations/dualcovarianceoperatorvalue-eq-neg.md) | 417 | `BLOCKED_NATIVE_ADMISSION` |
| 53 | `theorem` | [dualCovariance_half_eq_pairing_sub_diagonal](declarations/dualcovariance-half-eq-pairing-sub-diagonal.md) | 424 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=1321aedc978d5361497251050276ccac5c914a60fe9d8aff952da8ebd58ca8fc -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceReflectionArithmetic/Variantbb7385cf57a547dd6011764641b577d190e934ce627a3182a317ef9a2128f726.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
