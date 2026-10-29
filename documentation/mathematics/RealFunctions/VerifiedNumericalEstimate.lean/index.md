# Verified Numerical Estimate

[Complete source index](../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**53 observed declarations and anonymous commands**, 20 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Analysis/RealAnalysis/Integration/VerifiedNumericalEstimate/Variant96ae21055aeb41d1c4750bc866aa8d0eb781b9c337bc47cb0b81382a99d92ed3.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `1800c221460a1452591ee7f9ac90789fc5fd57ef`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../_verification/specifications/RealFunctions/VerifiedNumericalEstimate.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `structure` | [AnalyticDomainSymbol](declarations/analyticdomainsymbol.md) | 30 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `structure` | [PrecisionSymbol](declarations/precisionsymbol.md) | 35 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `structure` | [AlgorithmSymbol](declarations/algorithmsymbol.md) | 40 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `structure` | [ErrorModelSymbol](declarations/errormodelsymbol.md) | 45 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `structure` | [NumericalEstimateSymbol](declarations/numericalestimatesymbol.md) | 50 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `structure` | [NumericalAnalyticCertificateSchema](declarations/numericalanalyticcertificateschema.md) | 62 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [numerical_schema_authorized](declarations/numerical-schema-authorized.md) | 76 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `structure` | [IntervalArithmeticAuthority](declarations/intervalarithmeticauthority.md) | 82 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `structure` | [TailBoundAuthority](declarations/tailboundauthority.md) | 88 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `structure` | [ContourIntegralAuthority](declarations/contourintegralauthority.md) | 94 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `structure` | [ArgumentPrincipleCountAuthority](declarations/argumentprinciplecountauthority.md) | 100 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `structure` | [ValidatedIntegrationAuthority](declarations/validatedintegrationauthority.md) | 106 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `structure` | [SpectralEnclosureAuthority](declarations/spectralenclosureauthority.md) | 113 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `structure` | [OperatorNormBoundAuthority](declarations/operatornormboundauthority.md) | 119 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `structure` | [RigorousQuadratureAuthority](declarations/rigorousquadratureauthority.md) | 125 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [interval_arithmetic_authorized](declarations/interval-arithmetic-authorized.md) | 130 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [tail_bound_authorized](declarations/tail-bound-authorized.md) | 139 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [contour_integral_authorized](declarations/contour-integral-authorized.md) | 148 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [argument_principle_count_authorized](declarations/argument-principle-count-authorized.md) | 157 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [validated_integration_authorized](declarations/validated-integration-authorized.md) | 166 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [spectral_enclosure_authorized](declarations/spectral-enclosure-authorized.md) | 175 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [operator_norm_bound_authorized](declarations/operator-norm-bound-authorized.md) | 184 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [rigorous_quadrature_authorized](declarations/rigorous-quadrature-authorized.md) | 193 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `def` | [NumericalEstimateSymbolOwnsEnclosure](declarations/numericalestimatesymbolownsenclosure.md) | 203 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `def` | [NumericalEstimateSymbolOwnsTheoremInterpretation](declarations/numericalestimatesymbolownstheoreminterpretation.md) | 208 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `def` | [NumericalEstimateSymbolOwnsIntervalArithmetic](declarations/numericalestimatesymbolownsintervalarithmetic.md) | 213 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `def` | [NumericalEstimateSymbolOwnsTailBound](declarations/numericalestimatesymbolownstailbound.md) | 218 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `def` | [NumericalEstimateSymbolOwnsContourIntegral](declarations/numericalestimatesymbolownscontourintegral.md) | 223 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `def` | [NumericalEstimateSymbolOwnsArgumentPrincipleCount](declarations/numericalestimatesymbolownsargumentprinciplecount.md) | 228 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `def` | [NumericalEstimateSymbolOwnsValidatedIntegration](declarations/numericalestimatesymbolownsvalidatedintegration.md) | 233 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `def` | [NumericalEstimateSymbolOwnsSpectralEnclosure](declarations/numericalestimatesymbolownsspectralenclosure.md) | 238 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `def` | [NumericalEstimateSymbolOwnsOperatorNormBound](declarations/numericalestimatesymbolownsoperatornormbound.md) | 243 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `def` | [NumericalEstimateSymbolOwnsRigorousQuadrature](declarations/numericalestimatesymbolownsrigorousquadrature.md) | 248 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [numerical_estimate_symbol_not_enclosure_authority](declarations/numerical-estimate-symbol-not-enclosure-authority.md) | 252 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `theorem` | [numerical_estimate_symbol_not_theorem_interpretation_authority](declarations/numerical-estimate-symbol-not-theorem-interpretation-authority.md) | 258 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `theorem` | [numerical_estimate_symbol_not_interval_arithmetic_authority](declarations/numerical-estimate-symbol-not-interval-arithmetic-authority.md) | 264 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `theorem` | [numerical_estimate_symbol_not_tail_bound_authority](declarations/numerical-estimate-symbol-not-tail-bound-authority.md) | 270 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `theorem` | [numerical_estimate_symbol_not_contour_integral_authority](declarations/numerical-estimate-symbol-not-contour-integral-authority.md) | 276 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `theorem` | [numerical_estimate_symbol_not_argument_principle_count_authority](declarations/numerical-estimate-symbol-not-argument-principle-count-authority.md) | 282 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `theorem` | [numerical_estimate_symbol_not_validated_integration_authority](declarations/numerical-estimate-symbol-not-validated-integration-authority.md) | 288 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `theorem` | [numerical_estimate_symbol_not_spectral_enclosure_authority](declarations/numerical-estimate-symbol-not-spectral-enclosure-authority.md) | 294 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `theorem` | [numerical_estimate_symbol_not_operator_norm_bound_authority](declarations/numerical-estimate-symbol-not-operator-norm-bound-authority.md) | 300 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `theorem` | [numerical_estimate_symbol_not_rigorous_quadrature_authority](declarations/numerical-estimate-symbol-not-rigorous-quadrature-authority.md) | 306 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `theorem` | [numerical_estimate_symbol_boundary_summary](declarations/numerical-estimate-symbol-boundary-summary.md) | 318 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `def` | [intervalArithmeticCertificate](declarations/intervalarithmeticcertificate.md) | 342 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `def` | [tailBoundCertificate](declarations/tailboundcertificate.md) | 355 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `def` | [contourIntegralCertificate](declarations/contourintegralcertificate.md) | 368 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `def` | [argumentPrincipleCountCertificate](declarations/argumentprinciplecountcertificate.md) | 381 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `def` | [validatedIntegrationCertificate](declarations/validatedintegrationcertificate.md) | 394 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `def` | [spectralEnclosureCertificate](declarations/spectralenclosurecertificate.md) | 407 | `BLOCKED_NATIVE_ADMISSION` |
| 51 | `def` | [operatorNormBoundCertificate](declarations/operatornormboundcertificate.md) | 420 | `BLOCKED_NATIVE_ADMISSION` |
| 52 | `def` | [rigorousQuadratureCertificate](declarations/rigorousquadraturecertificate.md) | 433 | `BLOCKED_NATIVE_ADMISSION` |
| 53 | `def` | [theoremLevelInterpretationCertificate](declarations/theoremlevelinterpretationcertificate.md) | 446 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=0d9ec883330695ca3e0575d2ddf81aada3df6554d63e1e93e096fbb4220858c5 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/RealAnalysis/Integration/VerifiedNumericalEstimate/Variant96ae21055aeb41d1c4750bc866aa8d0eb781b9c337bc47cb0b81382a99d92ed3.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
