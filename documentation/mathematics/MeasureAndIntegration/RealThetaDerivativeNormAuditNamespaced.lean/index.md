# Real Theta Derivative Norm Audit Namespaced

[Complete source index](../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**52 observed declarations and anonymous commands**, 45 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Analysis/RealAnalysis/Integration/RealThetaDerivativeNormAudit/Variant20c6a463e4ff9dc1589b23c0f876770b28528fd5e4ce00b6f92e41c00245fb01.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `7e1969d3c754b4c2f1c3205b90c2a61e25240308`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../_verification/specifications/MeasureAndIntegration/RealThetaDerivativeNormAuditNamespaced.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [realThetaKernel](declarations/realthetakernel.md) | 33 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `def` | [differenceSamplingKernel](declarations/differencesamplingkernel.md) | 36 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `def` | [realThetaDifferenceKernel](declarations/realthetadifferencekernel.md) | 40 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `def` | [realThetaRemainder](declarations/realthetaremainder.md) | 43 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [samplingIndices_eq_fixed_filter](declarations/samplingindices-eq-fixed-filter.md) | 46 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [realThetaKernel_eq_strict_sum](declarations/realthetakernel-eq-strict-sum.md) | 62 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [realThetaKernel_eq_nat](declarations/realthetakernel-eq-nat.md) | 77 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [realThetaRemainder_eq_nat](declarations/realthetaremainder-eq-nat.md) | 82 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [differenceSamplingKernel_eq_mul_deriv](declarations/differencesamplingkernel-eq-mul-deriv.md) | 87 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [realThetaKernel_hasDerivAt](declarations/realthetakernel-hasderivat.md) | 93 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [realThetaKernel_deriv](declarations/realthetakernel-deriv.md) | 109 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [realThetaRemainder_hasDerivAt](declarations/realthetaremainder-hasderivat.md) | 113 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [realThetaRemainder_differentiableOn](declarations/realthetaremainder-differentiableon.md) | 123 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [difference_primitive_eq](declarations/difference-primitive-eq.md) | 128 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `def` | [differencePrimitiveSamplingKernel](declarations/differenceprimitivesamplingkernel.md) | 146 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [differencePrimitiveSamplingKernel_eq](declarations/differenceprimitivesamplingkernel-eq.md) | 151 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [differencePrimitiveSamplingKernel_add_rankOne_abs_le](declarations/differenceprimitivesamplingkernel-add-rankone-abs-le.md) | 158 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [differencePrimitiveSamplingKernel_eq_fixed_sum](declarations/differenceprimitivesamplingkernel-eq-fixed-sum.md) | 181 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [difference_tail_eq_primitive](declarations/difference-tail-eq-primitive.md) | 201 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [rootWeight_difference_integral](declarations/rootweight-difference-integral.md) | 239 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `def` | [differenceInnerTerm](declarations/differenceinnerterm.md) | 249 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [differenceInnerTerm_eq](declarations/differenceinnerterm-eq.md) | 253 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [differenceInnerTerm_integrable](declarations/differenceinnerterm-integrable.md) | 262 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [differenceInnerTerm_integral](declarations/differenceinnerterm-integral.md) | 275 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [differenceKernel_eq_inner_sum](declarations/differencekernel-eq-inner-sum.md) | 292 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [differenceKernel_rescaled_integrable](declarations/differencekernel-rescaled-integrable.md) | 304 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [differenceKernel_integral_eq_primitive](declarations/differencekernel-integral-eq-primitive.md) | 314 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [differenceKernel_integral_add_rankOne_abs_le](declarations/differencekernel-integral-add-rankone-abs-le.md) | 333 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `def` | [iteratedDifference](declarations/iterateddifference.md) | 345 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [iteratedDifference_eq](declarations/iterateddifference-eq.md) | 348 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [iteratedDifference_contDiff](declarations/iterateddifference-contdiff.md) | 356 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [iteratedDifference_hasCompactSupport](declarations/iterateddifference-hascompactsupport.md) | 368 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [iteratedDifference_abs_le](declarations/iterateddifference-abs-le.md) | 377 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [iteratedDifference_derivative_abs_le](declarations/iterateddifference-derivative-abs-le.md) | 393 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `theorem` | [compact_derivative_two_moments_zero](declarations/compact-derivative-two-moments-zero.md) | 427 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `theorem` | [iteratedDifference_two_moments_zero](declarations/iterateddifference-two-moments-zero.md) | 462 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `theorem` | [iteratedDifference_zero_right](declarations/iterateddifference-zero-right.md) | 487 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `theorem` | [differenceSamplingKernel_hasDerivAt](declarations/differencesamplingkernel-hasderivat.md) | 498 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `theorem` | [iteratedDifference_sampling_zero](declarations/iterateddifference-sampling-zero.md) | 518 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `theorem` | [iteratedDifference_sampling_sum_abs_le](declarations/iterateddifference-sampling-sum-abs-le.md) | 526 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `theorem` | [differenceSamplingKernel_derivative_abs_le](declarations/differencesamplingkernel-derivative-abs-le.md) | 570 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `theorem` | [inverse_root_majorant_eq](declarations/inverse-root-majorant-eq.md) | 584 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `theorem` | [inverse_root_majorant_integrable](declarations/inverse-root-majorant-integrable.md) | 593 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `theorem` | [inverse_root_majorant_integral](declarations/inverse-root-majorant-integral.md) | 602 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `theorem` | [scaledDifference_hasDerivAt](declarations/scaleddifference-hasderivat.md) | 614 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `theorem` | [scaledDifference_derivative_integrable](declarations/scaleddifference-derivative-integrable.md) | 621 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `theorem` | [scaledDifference_variation_le](declarations/scaleddifference-variation-le.md) | 633 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `theorem` | [differenceSamplingKernel_zero_of_exp_le](declarations/differencesamplingkernel-zero-of-exp-le.md) | 651 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `theorem` | [realThetaDifferenceKernel_eq_padded_sum](declarations/realthetadifferencekernel-eq-padded-sum.md) | 661 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `theorem` | [realThetaDifferenceKernel_sub_integral_abs_le](declarations/realthetadifferencekernel-sub-integral-abs-le.md) | 681 | `BLOCKED_NATIVE_ADMISSION` |
| 51 | `theorem` | [realThetaDifferenceKernel_add_rankOne_abs_le](declarations/realthetadifferencekernel-add-rankone-abs-le.md) | 704 | `BLOCKED_NATIVE_ADMISSION` |
| 52 | `theorem` | [realThetaRemainder_derivative_abs_le](declarations/realthetaremainder-derivative-abs-le.md) | 724 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=a454c838692af3a4b90449148a0da4f869dbd65a40cf1c42a6730beb7acff0bb -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/RealAnalysis/Integration/RealThetaDerivativeNormAudit/Variant20c6a463e4ff9dc1589b23c0f876770b28528fd5e4ce00b6f92e41c00245fb01.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
