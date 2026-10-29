# Real Theta Derivative Norm

[Complete source index](../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**52 observed declarations and anonymous commands**, 45 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Analysis/RealAnalysis/Integration/RealThetaDerivativeNorm/Variantc6ffbe20d35524d60efbf3a7e3e1e5080f3af1469cb2b658676b9a4f0d1d1d47.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `f1ce226d32bd12d661bb1532a7597f06d48e14fb`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../_verification/specifications/MeasureAndIntegration/RealThetaDerivativeNorm.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [realThetaKernel](declarations/realthetakernel.md) | 25 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `def` | [differenceSamplingKernel](declarations/differencesamplingkernel.md) | 28 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `def` | [realThetaDifferenceKernel](declarations/realthetadifferencekernel.md) | 32 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `def` | [realThetaRemainder](declarations/realthetaremainder.md) | 35 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [samplingIndices_eq_fixed_filter](declarations/samplingindices-eq-fixed-filter.md) | 38 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [realThetaKernel_eq_strict_sum](declarations/realthetakernel-eq-strict-sum.md) | 54 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [realThetaKernel_eq_nat](declarations/realthetakernel-eq-nat.md) | 69 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [realThetaRemainder_eq_nat](declarations/realthetaremainder-eq-nat.md) | 74 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [differenceSamplingKernel_eq_mul_deriv](declarations/differencesamplingkernel-eq-mul-deriv.md) | 79 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [realThetaKernel_hasDerivAt](declarations/realthetakernel-hasderivat.md) | 85 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [realThetaKernel_deriv](declarations/realthetakernel-deriv.md) | 101 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [realThetaRemainder_hasDerivAt](declarations/realthetaremainder-hasderivat.md) | 105 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [realThetaRemainder_differentiableOn](declarations/realthetaremainder-differentiableon.md) | 115 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [difference_primitive_eq](declarations/difference-primitive-eq.md) | 120 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `def` | [differencePrimitiveSamplingKernel](declarations/differenceprimitivesamplingkernel.md) | 138 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [differencePrimitiveSamplingKernel_eq](declarations/differenceprimitivesamplingkernel-eq.md) | 143 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [differencePrimitiveSamplingKernel_add_rankOne_abs_le](declarations/differenceprimitivesamplingkernel-add-rankone-abs-le.md) | 150 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [differencePrimitiveSamplingKernel_eq_fixed_sum](declarations/differenceprimitivesamplingkernel-eq-fixed-sum.md) | 173 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [difference_tail_eq_primitive](declarations/difference-tail-eq-primitive.md) | 193 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [rootWeight_difference_integral](declarations/rootweight-difference-integral.md) | 231 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `def` | [differenceInnerTerm](declarations/differenceinnerterm.md) | 241 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [differenceInnerTerm_eq](declarations/differenceinnerterm-eq.md) | 245 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [differenceInnerTerm_integrable](declarations/differenceinnerterm-integrable.md) | 254 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [differenceInnerTerm_integral](declarations/differenceinnerterm-integral.md) | 267 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [differenceKernel_eq_inner_sum](declarations/differencekernel-eq-inner-sum.md) | 284 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [differenceKernel_rescaled_integrable](declarations/differencekernel-rescaled-integrable.md) | 296 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [differenceKernel_integral_eq_primitive](declarations/differencekernel-integral-eq-primitive.md) | 306 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [differenceKernel_integral_add_rankOne_abs_le](declarations/differencekernel-integral-add-rankone-abs-le.md) | 325 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `def` | [iteratedDifference](declarations/iterateddifference.md) | 337 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [iteratedDifference_eq](declarations/iterateddifference-eq.md) | 340 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [iteratedDifference_contDiff](declarations/iterateddifference-contdiff.md) | 348 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [iteratedDifference_hasCompactSupport](declarations/iterateddifference-hascompactsupport.md) | 360 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [iteratedDifference_abs_le](declarations/iterateddifference-abs-le.md) | 369 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [iteratedDifference_derivative_abs_le](declarations/iterateddifference-derivative-abs-le.md) | 385 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `theorem` | [compact_derivative_two_moments_zero](declarations/compact-derivative-two-moments-zero.md) | 419 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `theorem` | [iteratedDifference_two_moments_zero](declarations/iterateddifference-two-moments-zero.md) | 454 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `theorem` | [iteratedDifference_zero_right](declarations/iterateddifference-zero-right.md) | 479 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `theorem` | [differenceSamplingKernel_hasDerivAt](declarations/differencesamplingkernel-hasderivat.md) | 490 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `theorem` | [iteratedDifference_sampling_zero](declarations/iterateddifference-sampling-zero.md) | 510 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `theorem` | [iteratedDifference_sampling_sum_abs_le](declarations/iterateddifference-sampling-sum-abs-le.md) | 518 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `theorem` | [differenceSamplingKernel_derivative_abs_le](declarations/differencesamplingkernel-derivative-abs-le.md) | 562 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `theorem` | [inverse_root_majorant_eq](declarations/inverse-root-majorant-eq.md) | 576 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `theorem` | [inverse_root_majorant_integrable](declarations/inverse-root-majorant-integrable.md) | 585 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `theorem` | [inverse_root_majorant_integral](declarations/inverse-root-majorant-integral.md) | 594 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `theorem` | [scaledDifference_hasDerivAt](declarations/scaleddifference-hasderivat.md) | 606 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `theorem` | [scaledDifference_derivative_integrable](declarations/scaleddifference-derivative-integrable.md) | 613 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `theorem` | [scaledDifference_variation_le](declarations/scaleddifference-variation-le.md) | 625 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `theorem` | [differenceSamplingKernel_zero_of_exp_le](declarations/differencesamplingkernel-zero-of-exp-le.md) | 643 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `theorem` | [realThetaDifferenceKernel_eq_padded_sum](declarations/realthetadifferencekernel-eq-padded-sum.md) | 653 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `theorem` | [realThetaDifferenceKernel_sub_integral_abs_le](declarations/realthetadifferencekernel-sub-integral-abs-le.md) | 673 | `BLOCKED_NATIVE_ADMISSION` |
| 51 | `theorem` | [realThetaDifferenceKernel_add_rankOne_abs_le](declarations/realthetadifferencekernel-add-rankone-abs-le.md) | 696 | `BLOCKED_NATIVE_ADMISSION` |
| 52 | `theorem` | [realThetaRemainder_derivative_abs_le](declarations/realthetaremainder-derivative-abs-le.md) | 716 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=9db67c036aa0ec670159417347788f9cbb940d133ae16e2f7bde7f380c0784db -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/RealAnalysis/Integration/RealThetaDerivativeNorm/Variantc6ffbe20d35524d60efbf3a7e3e1e5080f3af1469cb2b658676b9a4f0d1d1d47.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
