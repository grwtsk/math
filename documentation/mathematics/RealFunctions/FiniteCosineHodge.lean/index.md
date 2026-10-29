# Finite Cosine Hodge

[Complete source index](../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**82 observed declarations and anonymous commands**, 63 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Analysis/HeatFlow/FiniteCosineHodge.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `9f0c632413378e72cc78f91f0809a45b104e0740`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../_verification/specifications/RealFunctions/FiniteCosineHodge.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [modeLaplacian](declarations/modelaplacian.md) | 37 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `theorem` | [modeLaplacian_nonneg](declarations/modelaplacian-nonneg.md) | 39 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `def` | [modeHeat](declarations/modeheat.md) | 45 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `theorem` | [modeHeat_zero](declarations/modeheat-zero.md) | 49 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [modeHeat_add](declarations/modeheat-add.md) | 54 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [modeHeat_pos](declarations/modeheat-pos.md) | 63 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [modeHeat_le_one](declarations/modeheat-le-one.md) | 69 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `def` | [coefficient](declarations/coefficient.md) | 78 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [coefficient_zero](declarations/coefficient-zero.md) | 81 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [coefficient_time_add](declarations/coefficient-time-add.md) | 86 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `def` | [twoModeHeat](declarations/twomodeheat.md) | 93 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [twoModeHeat_zero](declarations/twomodeheat-zero.md) | 98 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [twoModeHeat_even](declarations/twomodeheat-even.md) | 104 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [twoModeHeat_source_separation](declarations/twomodeheat-source-separation.md) | 110 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [twoModeHeat_source_error](declarations/twomodeheat-source-error.md) | 122 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [twoModeHeat_source_error_bound](declarations/twomodeheat-source-error-bound.md) | 132 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [twoModeHeat_source_identity](declarations/twomodeheat-source-identity.md) | 143 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [twoModeHeat_two_stage_bound](declarations/twomodeheat-two-stage-bound.md) | 152 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [hasDerivAt_modeHeat](declarations/hasderivat-modeheat.md) | 175 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [hasDerivAt_coefficient](declarations/hasderivat-coefficient.md) | 190 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [hasDerivAt_cosineMode](declarations/hasderivat-cosinemode.md) | 200 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [hasDerivAt_sineMode](declarations/hasderivat-sinemode.md) | 209 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [hasDerivAt_timeCosineMode](declarations/hasderivat-timecosinemode.md) | 218 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [hasDerivAt_twoModeHeat_time](declarations/hasderivat-twomodeheat-time.md) | 225 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [hasDerivAt_twoModeHeat_space](declarations/hasderivat-twomodeheat-space.md) | 237 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [hasDerivAt_twoModeHeat_space_derivative](declarations/hasderivat-twomodeheat-space-derivative.md) | 246 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [twoModeHeat_finite_heat_equation](declarations/twomodeheat-finite-heat-equation.md) | 259 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `structure` | [FiniteHeatErrorBudget](declarations/finiteheaterrorbudget.md) | 270 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `def` | [FiniteHeatErrorBudget.total](declarations/finiteheaterrorbudget-total.md) | 277 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [finiteHeatErrorBudget_bound](declarations/finiteheaterrorbudget-bound.md) | 282 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [finiteCosineTailBound](declarations/finitecosinetailbound.md) | 313 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [finiteCosineExponentialMajorant](declarations/finitecosineexponentialmajorant.md) | 345 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `def` | [exponentialTailBudget](declarations/exponentialtailbudget.md) | 376 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [exponentialTailBudget_nonneg](declarations/exponentialtailbudget-nonneg.md) | 381 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `theorem` | [exponentialTailBudget_antitone](declarations/exponentialtailbudget-antitone.md) | 389 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `theorem` | [exponentialTailBudget_amplitude_mono](declarations/exponentialtailbudget-amplitude-mono.md) | 403 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `theorem` | [exponentialTailBudget_refine](declarations/exponentialtailbudget-refine.md) | 412 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `structure` | [ExponentialTailIntegralCertificate](declarations/exponentialtailintegralcertificate.md) | 424 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `theorem` | [certified_integrated_tail_bound](declarations/certified-integrated-tail-bound.md) | 434 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `theorem` | [certified_integrated_tail_refinement](declarations/certified-integrated-tail-refinement.md) | 442 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `theorem` | [modeHeat_abs_le_one](declarations/modeheat-abs-le-one.md) | 455 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `theorem` | [coefficient_error_contracts](declarations/coefficient-error-contracts.md) | 462 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `theorem` | [twoModeHeat_source_error_contracts](declarations/twomodeheat-source-error-contracts.md) | 479 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `theorem` | [twoModeHeat_source_lipschitz](declarations/twomodeheat-source-lipschitz.md) | 513 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `theorem` | [twoModeHeat_source_and_readout_budget](declarations/twomodeheat-source-and-readout-budget.md) | 522 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `theorem` | [exponentialTailBudget_at_zero](declarations/exponentialtailbudget-at-zero.md) | 544 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `theorem` | [finiteHeatErrorBudget_source_le_total](declarations/finiteheaterrorbudget-source-le-total.md) | 552 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `theorem` | [finiteHeatErrorBudget_tail_le_total](declarations/finiteheaterrorbudget-tail-le-total.md) | 562 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `structure` | [ThetaTailSupplier](declarations/thetatailsupplier.md) | 574 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `theorem` | [thetaTailSupplier_combine](declarations/thetatailsupplier-combine.md) | 584 | `BLOCKED_NATIVE_ADMISSION` |
| 51 | `theorem` | [thetaTailSupplier_source_le_total](declarations/thetatailsupplier-source-le-total.md) | 595 | `BLOCKED_NATIVE_ADMISSION` |
| 52 | `def` | [thetaGaussianSummand](declarations/thetagaussiansummand.md) | 605 | `BLOCKED_NATIVE_ADMISSION` |
| 53 | `theorem` | [thetaGaussianSummand_pos](declarations/thetagaussiansummand-pos.md) | 608 | `BLOCKED_NATIVE_ADMISSION` |
| 54 | `theorem` | [thetaGaussianSummand_mode_antitone](declarations/thetagaussiansummand-mode-antitone.md) | 615 | `BLOCKED_NATIVE_ADMISSION` |
| 55 | `def` | [thetaKernelTerm](declarations/thetakernelterm.md) | 631 | `BLOCKED_NATIVE_ADMISSION` |
| 56 | `theorem` | [thetaKernelTerm_zero](declarations/thetakernelterm-zero.md) | 637 | `BLOCKED_NATIVE_ADMISSION` |
| 57 | `theorem` | [thetaKernelTerm_expansion](declarations/thetakernelterm-expansion.md) | 644 | `BLOCKED_NATIVE_ADMISSION` |
| 58 | `def` | [thetaKernelPositivePart](declarations/thetakernelpositivepart.md) | 656 | `BLOCKED_NATIVE_ADMISSION` |
| 59 | `def` | [thetaKernelNegativePart](declarations/thetakernelnegativepart.md) | 660 | `BLOCKED_NATIVE_ADMISSION` |
| 60 | `theorem` | [thetaKernelPositivePart_nonneg](declarations/thetakernelpositivepart-nonneg.md) | 664 | `BLOCKED_NATIVE_ADMISSION` |
| 61 | `theorem` | [thetaKernelNegativePart_nonneg](declarations/thetakernelnegativepart-nonneg.md) | 670 | `BLOCKED_NATIVE_ADMISSION` |
| 62 | `theorem` | [thetaKernelTerm_split](declarations/thetakernelterm-split.md) | 679 | `BLOCKED_NATIVE_ADMISSION` |
| 63 | `theorem` | [thetaKernelTerm_abs_le_parts](declarations/thetakernelterm-abs-le-parts.md) | 686 | `BLOCKED_NATIVE_ADMISSION` |
| 64 | `def` | [thetaKernelPartialSum](declarations/thetakernelpartialsum.md) | 702 | `BLOCKED_NATIVE_ADMISSION` |
| 65 | `def` | [thetaKernelPartialMajorant](declarations/thetakernelpartialmajorant.md) | 706 | `BLOCKED_NATIVE_ADMISSION` |
| 66 | `theorem` | [thetaKernelPartialMajorant_nonneg](declarations/thetakernelpartialmajorant-nonneg.md) | 711 | `BLOCKED_NATIVE_ADMISSION` |
| 67 | `theorem` | [thetaKernelPartialSum_abs_le](declarations/thetakernelpartialsum-abs-le.md) | 721 | `BLOCKED_NATIVE_ADMISSION` |
| 68 | `structure` | [ThetaUniformMajorant](declarations/thetauniformmajorant.md) | 738 | `BLOCKED_NATIVE_ADMISSION` |
| 69 | `theorem` | [thetaKernelPartialSum_uniform_bound](declarations/thetakernelpartialsum-uniform-bound.md) | 744 | `BLOCKED_NATIVE_ADMISSION` |
| 70 | `theorem` | [thetaKernelPartialMajorant_mono](declarations/thetakernelpartialmajorant-mono.md) | 753 | `BLOCKED_NATIVE_ADMISSION` |
| 71 | `def` | [thetaScaledGaussian](declarations/thetascaledgaussian.md) | 767 | `BLOCKED_NATIVE_ADMISSION` |
| 72 | `theorem` | [thetaGaussianSummand_scaled](declarations/thetagaussiansummand-scaled.md) | 770 | `BLOCKED_NATIVE_ADMISSION` |
| 73 | `theorem` | [thetaScaledGaussian_nonneg](declarations/thetascaledgaussian-nonneg.md) | 777 | `BLOCKED_NATIVE_ADMISSION` |
| 74 | `theorem` | [thetaKernelPositivePart_scaled](declarations/thetakernelpositivepart-scaled.md) | 785 | `BLOCKED_NATIVE_ADMISSION` |
| 75 | `theorem` | [thetaKernelNegativePart_scaled](declarations/thetakernelnegativepart-scaled.md) | 801 | `BLOCKED_NATIVE_ADMISSION` |
| 76 | `theorem` | [thetaKernelTerm_scaled](declarations/thetakernelterm-scaled.md) | 817 | `BLOCKED_NATIVE_ADMISSION` |
| 77 | `def` | [thetaScaledPolynomial](declarations/thetascaledpolynomial.md) | 829 | `BLOCKED_NATIVE_ADMISSION` |
| 78 | `theorem` | [thetaScaledPolynomial_abs_bound](declarations/thetascaledpolynomial-abs-bound.md) | 834 | `BLOCKED_NATIVE_ADMISSION` |
| 79 | `theorem` | [thetaKernelTerm_scaledPolynomial](declarations/thetakernelterm-scaledpolynomial.md) | 849 | `BLOCKED_NATIVE_ADMISSION` |
| 80 | `structure` | [ScaledGaussianEnvelope](declarations/scaledgaussianenvelope.md) | 860 | `BLOCKED_NATIVE_ADMISSION` |
| 81 | `theorem` | [thetaScaledPolynomial_gaussian_bound](declarations/thetascaledpolynomial-gaussian-bound.md) | 868 | `BLOCKED_NATIVE_ADMISSION` |
| 82 | `theorem` | [polynomial_exponential_envelope](declarations/polynomial-exponential-envelope.md) | 896 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=0766bddb8df5a0dbf3c644e12009981b241e09fe964321341b881d8a503d82ce -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/HeatFlow/FiniteCosineHodge.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
