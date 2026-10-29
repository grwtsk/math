# Verified Numerical Estimate Namespaced

[Complete source index](../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**53 observed declarations and anonymous commands**, 20 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Analysis/RealAnalysis/Integration/VerifiedNumericalEstimate/Variant507d2922c3ee657e102f73cf507948aaca9f68ce3af8fe7e5428409d72fb3a2f.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `55101f3ca477ca98f3e66fe1de9c842e3fa844b3`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../_verification/specifications/RealFunctions/VerifiedNumericalEstimateNamespaced.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `structure` | [AnalyticDomainSymbol](declarations/analyticdomainsymbol.md) | 38 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `structure` | [PrecisionSymbol](declarations/precisionsymbol.md) | 43 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `structure` | [AlgorithmSymbol](declarations/algorithmsymbol.md) | 48 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `structure` | [ErrorModelSymbol](declarations/errormodelsymbol.md) | 53 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `structure` | [NumericalEstimateSymbol](declarations/numericalestimatesymbol.md) | 58 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `structure` | [NumericalAnalyticCertificateSchema](declarations/numericalanalyticcertificateschema.md) | 70 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [numerical_schema_authorized](declarations/numerical-schema-authorized.md) | 84 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `structure` | [IntervalArithmeticAuthority](declarations/intervalarithmeticauthority.md) | 90 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `structure` | [TailBoundAuthority](declarations/tailboundauthority.md) | 96 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `structure` | [ContourIntegralAuthority](declarations/contourintegralauthority.md) | 102 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `structure` | [ArgumentPrincipleCountAuthority](declarations/argumentprinciplecountauthority.md) | 108 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `structure` | [ValidatedIntegrationAuthority](declarations/validatedintegrationauthority.md) | 114 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `structure` | [SpectralEnclosureAuthority](declarations/spectralenclosureauthority.md) | 121 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `structure` | [OperatorNormBoundAuthority](declarations/operatornormboundauthority.md) | 127 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `structure` | [RigorousQuadratureAuthority](declarations/rigorousquadratureauthority.md) | 133 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [interval_arithmetic_authorized](declarations/interval-arithmetic-authorized.md) | 138 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [tail_bound_authorized](declarations/tail-bound-authorized.md) | 147 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [contour_integral_authorized](declarations/contour-integral-authorized.md) | 156 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [argument_principle_count_authorized](declarations/argument-principle-count-authorized.md) | 165 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [validated_integration_authorized](declarations/validated-integration-authorized.md) | 174 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [spectral_enclosure_authorized](declarations/spectral-enclosure-authorized.md) | 183 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [operator_norm_bound_authorized](declarations/operator-norm-bound-authorized.md) | 192 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [rigorous_quadrature_authorized](declarations/rigorous-quadrature-authorized.md) | 201 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `def` | [NumericalEstimateSymbolOwnsEnclosure](declarations/numericalestimatesymbolownsenclosure.md) | 211 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `def` | [NumericalEstimateSymbolOwnsTheoremInterpretation](declarations/numericalestimatesymbolownstheoreminterpretation.md) | 216 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `def` | [NumericalEstimateSymbolOwnsIntervalArithmetic](declarations/numericalestimatesymbolownsintervalarithmetic.md) | 221 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `def` | [NumericalEstimateSymbolOwnsTailBound](declarations/numericalestimatesymbolownstailbound.md) | 226 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `def` | [NumericalEstimateSymbolOwnsContourIntegral](declarations/numericalestimatesymbolownscontourintegral.md) | 231 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `def` | [NumericalEstimateSymbolOwnsArgumentPrincipleCount](declarations/numericalestimatesymbolownsargumentprinciplecount.md) | 236 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `def` | [NumericalEstimateSymbolOwnsValidatedIntegration](declarations/numericalestimatesymbolownsvalidatedintegration.md) | 241 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `def` | [NumericalEstimateSymbolOwnsSpectralEnclosure](declarations/numericalestimatesymbolownsspectralenclosure.md) | 246 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `def` | [NumericalEstimateSymbolOwnsOperatorNormBound](declarations/numericalestimatesymbolownsoperatornormbound.md) | 251 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `def` | [NumericalEstimateSymbolOwnsRigorousQuadrature](declarations/numericalestimatesymbolownsrigorousquadrature.md) | 256 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [numerical_estimate_symbol_not_enclosure_authority](declarations/numerical-estimate-symbol-not-enclosure-authority.md) | 260 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `theorem` | [numerical_estimate_symbol_not_theorem_interpretation_authority](declarations/numerical-estimate-symbol-not-theorem-interpretation-authority.md) | 266 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `theorem` | [numerical_estimate_symbol_not_interval_arithmetic_authority](declarations/numerical-estimate-symbol-not-interval-arithmetic-authority.md) | 272 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `theorem` | [numerical_estimate_symbol_not_tail_bound_authority](declarations/numerical-estimate-symbol-not-tail-bound-authority.md) | 278 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `theorem` | [numerical_estimate_symbol_not_contour_integral_authority](declarations/numerical-estimate-symbol-not-contour-integral-authority.md) | 284 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `theorem` | [numerical_estimate_symbol_not_argument_principle_count_authority](declarations/numerical-estimate-symbol-not-argument-principle-count-authority.md) | 290 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `theorem` | [numerical_estimate_symbol_not_validated_integration_authority](declarations/numerical-estimate-symbol-not-validated-integration-authority.md) | 296 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `theorem` | [numerical_estimate_symbol_not_spectral_enclosure_authority](declarations/numerical-estimate-symbol-not-spectral-enclosure-authority.md) | 302 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `theorem` | [numerical_estimate_symbol_not_operator_norm_bound_authority](declarations/numerical-estimate-symbol-not-operator-norm-bound-authority.md) | 308 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `theorem` | [numerical_estimate_symbol_not_rigorous_quadrature_authority](declarations/numerical-estimate-symbol-not-rigorous-quadrature-authority.md) | 314 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `theorem` | [numerical_estimate_symbol_boundary_summary](declarations/numerical-estimate-symbol-boundary-summary.md) | 326 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `def` | [intervalArithmeticCertificate](declarations/intervalarithmeticcertificate.md) | 350 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `def` | [tailBoundCertificate](declarations/tailboundcertificate.md) | 363 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `def` | [contourIntegralCertificate](declarations/contourintegralcertificate.md) | 376 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `def` | [argumentPrincipleCountCertificate](declarations/argumentprinciplecountcertificate.md) | 389 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `def` | [validatedIntegrationCertificate](declarations/validatedintegrationcertificate.md) | 402 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `def` | [spectralEnclosureCertificate](declarations/spectralenclosurecertificate.md) | 415 | `BLOCKED_NATIVE_ADMISSION` |
| 51 | `def` | [operatorNormBoundCertificate](declarations/operatornormboundcertificate.md) | 428 | `BLOCKED_NATIVE_ADMISSION` |
| 52 | `def` | [rigorousQuadratureCertificate](declarations/rigorousquadraturecertificate.md) | 441 | `BLOCKED_NATIVE_ADMISSION` |
| 53 | `def` | [theoremLevelInterpretationCertificate](declarations/theoremlevelinterpretationcertificate.md) | 454 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=8151a5aec2d21e1d5f7f859138ffd16f126899cad92b703fae1ec9aaf781bf1f -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/RealAnalysis/Integration/VerifiedNumericalEstimate/Variant507d2922c3ee657e102f73cf507948aaca9f68ce3af8fe7e5428409d72fb3a2f.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
