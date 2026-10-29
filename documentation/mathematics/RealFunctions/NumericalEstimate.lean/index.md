# Numerical Estimate

[Complete source index](../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**50 observed declarations and anonymous commands**, 24 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Analysis/RealAnalysis/Integration/NumericalEstimate/Variantba80e3528287d69d0a6829266591a502c8b348b24c4155fc9d89acf99aeb2e33.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `22d6abb8119e099c4a409f3905fa1b966a538981`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../_verification/specifications/RealFunctions/NumericalEstimate.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `inductive` | [NumericalEstimateKind](declarations/numericalestimatekind.md) | 27 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `inductive` | [DifferentialProblemKind](declarations/differentialproblemkind.md) | 40 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `structure` | [FiniteDomain](declarations/finitedomain.md) | 47 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `structure` | [PrecisionSpec](declarations/precisionspec.md) | 55 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `structure` | [AlgorithmSpec](declarations/algorithmspec.md) | 65 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `structure` | [ErrorModel](declarations/errormodel.md) | 74 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `structure` | [RationalIntervalEndpoint](declarations/rationalintervalendpoint.md) | 86 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `structure` | [RationalInterval](declarations/rationalinterval.md) | 93 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `structure` | [IntervalArithmeticPayload](declarations/intervalarithmeticpayload.md) | 101 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `structure` | [TailBoundPayload](declarations/tailboundpayload.md) | 110 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `structure` | [ContourIntegralPayload](declarations/contourintegralpayload.md) | 120 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `structure` | [ArgumentPrincipleCountPayload](declarations/argumentprinciplecountpayload.md) | 131 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `structure` | [ValidatedIntegrationPayload](declarations/validatedintegrationpayload.md) | 144 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `structure` | [SpectralEnclosurePayload](declarations/spectralenclosurepayload.md) | 158 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `structure` | [OperatorNormBoundPayload](declarations/operatornormboundpayload.md) | 169 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `structure` | [RigorousQuadraturePayload](declarations/rigorousquadraturepayload.md) | 180 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `structure` | [FiniteNumericalEstimatePayload](declarations/finitenumericalestimatepayload.md) | 192 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [finite_domain_sound](declarations/finite-domain-sound.md) | 212 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [precision_spec_sound](declarations/precision-spec-sound.md) | 217 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [algorithm_spec_sound](declarations/algorithm-spec-sound.md) | 222 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [error_model_sound](declarations/error-model-sound.md) | 227 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [rational_interval_sound](declarations/rational-interval-sound.md) | 232 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [interval_arithmetic_payload_sound](declarations/interval-arithmetic-payload-sound.md) | 237 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [tail_bound_payload_sound](declarations/tail-bound-payload-sound.md) | 242 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [contour_integral_payload_sound](declarations/contour-integral-payload-sound.md) | 247 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [argument_principle_count_payload_sound](declarations/argument-principle-count-payload-sound.md) | 252 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [validated_integration_payload_sound](declarations/validated-integration-payload-sound.md) | 257 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [spectral_enclosure_payload_sound](declarations/spectral-enclosure-payload-sound.md) | 262 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [operator_norm_bound_payload_sound](declarations/operator-norm-bound-payload-sound.md) | 267 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [rigorous_quadrature_payload_sound](declarations/rigorous-quadrature-payload-sound.md) | 272 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [finite_numerical_estimate_payload_sound](declarations/finite-numerical-estimate-payload-sound.md) | 277 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `def` | [FinitePayloadOwnsIntervalArithmeticTheorem](declarations/finitepayloadownsintervalarithmetictheorem.md) | 283 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `def` | [FinitePayloadOwnsTailBoundTheorem](declarations/finitepayloadownstailboundtheorem.md) | 288 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `def` | [FinitePayloadOwnsContourIntegralTheorem](declarations/finitepayloadownscontourintegraltheorem.md) | 293 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `def` | [FinitePayloadOwnsArgumentPrincipleCountTheorem](declarations/finitepayloadownsargumentprinciplecounttheorem.md) | 298 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `def` | [FinitePayloadOwnsValidatedIntegrationTheorem](declarations/finitepayloadownsvalidatedintegrationtheorem.md) | 303 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `def` | [FinitePayloadOwnsSpectralEnclosureTheorem](declarations/finitepayloadownsspectralenclosuretheorem.md) | 308 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `def` | [FinitePayloadOwnsOperatorNormBoundTheorem](declarations/finitepayloadownsoperatornormboundtheorem.md) | 313 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `def` | [FinitePayloadOwnsRigorousQuadratureTheorem](declarations/finitepayloadownsrigorousquadraturetheorem.md) | 318 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `def` | [FinitePayloadOwnsTheoremLevelInterpretation](declarations/finitepayloadownstheoremlevelinterpretation.md) | 323 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `theorem` | [finite_payload_not_interval_arithmetic_theorem](declarations/finite-payload-not-interval-arithmetic-theorem.md) | 327 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `theorem` | [finite_payload_not_tail_bound_theorem](declarations/finite-payload-not-tail-bound-theorem.md) | 333 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `theorem` | [finite_payload_not_contour_integral_theorem](declarations/finite-payload-not-contour-integral-theorem.md) | 339 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `theorem` | [finite_payload_not_argument_principle_count_theorem](declarations/finite-payload-not-argument-principle-count-theorem.md) | 345 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `theorem` | [finite_payload_not_validated_integration_theorem](declarations/finite-payload-not-validated-integration-theorem.md) | 351 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `theorem` | [finite_payload_not_spectral_enclosure_theorem](declarations/finite-payload-not-spectral-enclosure-theorem.md) | 357 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `theorem` | [finite_payload_not_operator_norm_bound_theorem](declarations/finite-payload-not-operator-norm-bound-theorem.md) | 363 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `theorem` | [finite_payload_not_rigorous_quadrature_theorem](declarations/finite-payload-not-rigorous-quadrature-theorem.md) | 369 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `theorem` | [finite_payload_not_theorem_level_interpretation](declarations/finite-payload-not-theorem-level-interpretation.md) | 375 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `theorem` | [finite_numerical_estimate_payload_boundary_summary](declarations/finite-numerical-estimate-payload-boundary-summary.md) | 387 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=e87f2006e5a190d947a043c5fb5f55a19985aac4dec3f388580e921b7c297f32 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/RealAnalysis/Integration/NumericalEstimate/Variantba80e3528287d69d0a6829266591a502c8b348b24c4155fc9d89acf99aeb2e33.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
