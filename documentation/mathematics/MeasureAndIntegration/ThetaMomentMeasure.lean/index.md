# Theta Moment Measure

[Complete source index](../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**42 observed declarations and anonymous commands**, 35 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Analysis/RealAnalysis/Integration/ThetaMomentMeasure/Variant2551ffaba9ec0b0f1c062ded938f0e9cda636fb08934e09368a1be2c4b2d26a1.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `6d61a97bbbef77b66bc2c13cda190b37bd32491b`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../_verification/specifications/MeasureAndIntegration/ThetaMomentMeasure.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [sourceMeasure](declarations/sourcemeasure.md) | 30 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `def` | [momentMeasure](declarations/momentmeasure.md) | 34 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `def` | [moment](declarations/moment.md) | 38 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `theorem` | [density_measurable](declarations/density-measurable.md) | 40 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [phi_nonnegative_ae](declarations/phi-nonnegative-ae.md) | 44 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [source_power_integrable](declarations/source-power-integrable.md) | 50 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [sourceMeasure_power_integrable](declarations/sourcemeasure-power-integrable.md) | 58 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [moment_power_integrable](declarations/moment-power-integrable.md) | 67 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [moment_eq_source_integral](declarations/moment-eq-source-integral.md) | 76 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [moment_eq_factorial_mul_thetaTail](declarations/moment-eq-factorial-mul-thetatail.md) | 88 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [moment_positive](declarations/moment-positive.md) | 99 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [moment_le_factorial_bound](declarations/moment-le-factorial-bound.md) | 104 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [momentMeasure_finite](declarations/momentmeasure-finite.md) | 111 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [momentMeasure_ne_zero](declarations/momentmeasure-ne-zero.md) | 116 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [momentMeasure_nonnegative_ae](declarations/momentmeasure-nonnegative-ae.md) | 122 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [integral_momentMeasure_eq_source](declarations/integral-momentmeasure-eq-source.md) | 134 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [integrable_momentMeasure_iff](declarations/integrable-momentmeasure-iff.md) | 147 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [polynomial_integrable](declarations/polynomial-integrable.md) | 161 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [polynomial_square_integrable](declarations/polynomial-square-integrable.md) | 168 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [polynomial_square_integral_positive](declarations/polynomial-square-integral-positive.md) | 174 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [moment_zero_eq_thetaTail_one](declarations/moment-zero-eq-thetatail-one.md) | 208 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `def` | [initialDiagonal](declarations/initialdiagonal.md) | 213 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `def` | [initialOffDiagonalSquared](declarations/initialoffdiagonalsquared.md) | 216 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [initialDiagonal_positive](declarations/initialdiagonal-positive.md) | 220 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [centered_square_integral](declarations/centered-square-integral.md) | 224 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [centered_square_integral_positive](declarations/centered-square-integral-positive.md) | 244 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [initialOffDiagonalSquared_positive](declarations/initialoffdiagonalsquared-positive.md) | 253 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `def` | [initialOffDiagonal](declarations/initialoffdiagonal.md) | 270 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [initialOffDiagonal_positive](declarations/initialoffdiagonal-positive.md) | 273 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [initialOffDiagonal_sq](declarations/initialoffdiagonal-sq.md) | 277 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [initialDiagonal_eq_tail_ratio](declarations/initialdiagonal-eq-tail-ratio.md) | 282 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [initialOffDiagonalSquared_eq_tail_ratio](declarations/initialoffdiagonalsquared-eq-tail-ratio.md) | 289 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `def` | [cyclicVectorNorm](declarations/cyclicvectornorm.md) | 298 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [cyclicVectorNorm_sq](declarations/cyclicvectornorm-sq.md) | 301 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `theorem` | [sourceMeasure_dominates_restricted_volume](declarations/sourcemeasure-dominates-restricted-volume.md) | 307 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `theorem` | [momentMeasure_Ioi_positive](declarations/momentmeasure-ioi-positive.md) | 316 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `theorem` | [exponential_majorant_integrable](declarations/exponential-majorant-integrable.md) | 340 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `theorem` | [source_exp_le_majorant](declarations/source-exp-le-majorant.md) | 347 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `theorem` | [exponential_integrable](declarations/exponential-integrable.md) | 360 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `theorem` | [exponential_integral_le](declarations/exponential-integral-le.md) | 374 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `theorem` | [even_moment_tail_lower](declarations/even-moment-tail-lower.md) | 402 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `theorem` | [no_geometric_even_moment_bound](declarations/no-geometric-even-moment-bound.md) | 424 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=a826a3796c15f8d3aada2af5db4b7c2202fee058e68ca4cf9a64b1994d62197d -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/RealAnalysis/Integration/ThetaMomentMeasure/Variant2551ffaba9ec0b0f1c062ded938f0e9cda636fb08934e09368a1be2c4b2d26a1.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
