# Numerical Estimate Namespaced

[Complete source index](../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**50 observed declarations and anonymous commands**, 24 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Analysis/RealAnalysis/Integration/NumericalEstimate/Variant8104fa4893626c727cda36dca0e9b7d2ef0659e6603ea480292e0b247d5f429e.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `37063d9f0e45dd4c6db23a263300520d7401e798`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../_verification/specifications/RealFunctions/NumericalEstimateNamespaced.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `inductive` | [NumericalEstimateKind](declarations/numericalestimatekind.md) | 35 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `inductive` | [DifferentialProblemKind](declarations/differentialproblemkind.md) | 48 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `structure` | [FiniteDomain](declarations/finitedomain.md) | 55 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `structure` | [PrecisionSpec](declarations/precisionspec.md) | 63 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `structure` | [AlgorithmSpec](declarations/algorithmspec.md) | 73 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `structure` | [ErrorModel](declarations/errormodel.md) | 82 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `structure` | [RationalIntervalEndpoint](declarations/rationalintervalendpoint.md) | 94 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `structure` | [RationalInterval](declarations/rationalinterval.md) | 101 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `structure` | [IntervalArithmeticPayload](declarations/intervalarithmeticpayload.md) | 109 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `structure` | [TailBoundPayload](declarations/tailboundpayload.md) | 118 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `structure` | [ContourIntegralPayload](declarations/contourintegralpayload.md) | 128 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `structure` | [ArgumentPrincipleCountPayload](declarations/argumentprinciplecountpayload.md) | 139 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `structure` | [ValidatedIntegrationPayload](declarations/validatedintegrationpayload.md) | 152 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `structure` | [SpectralEnclosurePayload](declarations/spectralenclosurepayload.md) | 166 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `structure` | [OperatorNormBoundPayload](declarations/operatornormboundpayload.md) | 177 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `structure` | [RigorousQuadraturePayload](declarations/rigorousquadraturepayload.md) | 188 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `structure` | [FiniteNumericalEstimatePayload](declarations/finitenumericalestimatepayload.md) | 200 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [finite_domain_sound](declarations/finite-domain-sound.md) | 220 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [precision_spec_sound](declarations/precision-spec-sound.md) | 225 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [algorithm_spec_sound](declarations/algorithm-spec-sound.md) | 230 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [error_model_sound](declarations/error-model-sound.md) | 235 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [rational_interval_sound](declarations/rational-interval-sound.md) | 240 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [interval_arithmetic_payload_sound](declarations/interval-arithmetic-payload-sound.md) | 245 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [tail_bound_payload_sound](declarations/tail-bound-payload-sound.md) | 250 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [contour_integral_payload_sound](declarations/contour-integral-payload-sound.md) | 255 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [argument_principle_count_payload_sound](declarations/argument-principle-count-payload-sound.md) | 260 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [validated_integration_payload_sound](declarations/validated-integration-payload-sound.md) | 265 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [spectral_enclosure_payload_sound](declarations/spectral-enclosure-payload-sound.md) | 270 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [operator_norm_bound_payload_sound](declarations/operator-norm-bound-payload-sound.md) | 275 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [rigorous_quadrature_payload_sound](declarations/rigorous-quadrature-payload-sound.md) | 280 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [finite_numerical_estimate_payload_sound](declarations/finite-numerical-estimate-payload-sound.md) | 285 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `def` | [FinitePayloadOwnsIntervalArithmeticTheorem](declarations/finitepayloadownsintervalarithmetictheorem.md) | 291 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `def` | [FinitePayloadOwnsTailBoundTheorem](declarations/finitepayloadownstailboundtheorem.md) | 296 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `def` | [FinitePayloadOwnsContourIntegralTheorem](declarations/finitepayloadownscontourintegraltheorem.md) | 301 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `def` | [FinitePayloadOwnsArgumentPrincipleCountTheorem](declarations/finitepayloadownsargumentprinciplecounttheorem.md) | 306 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `def` | [FinitePayloadOwnsValidatedIntegrationTheorem](declarations/finitepayloadownsvalidatedintegrationtheorem.md) | 311 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `def` | [FinitePayloadOwnsSpectralEnclosureTheorem](declarations/finitepayloadownsspectralenclosuretheorem.md) | 316 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `def` | [FinitePayloadOwnsOperatorNormBoundTheorem](declarations/finitepayloadownsoperatornormboundtheorem.md) | 321 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `def` | [FinitePayloadOwnsRigorousQuadratureTheorem](declarations/finitepayloadownsrigorousquadraturetheorem.md) | 326 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `def` | [FinitePayloadOwnsTheoremLevelInterpretation](declarations/finitepayloadownstheoremlevelinterpretation.md) | 331 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `theorem` | [finite_payload_not_interval_arithmetic_theorem](declarations/finite-payload-not-interval-arithmetic-theorem.md) | 335 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `theorem` | [finite_payload_not_tail_bound_theorem](declarations/finite-payload-not-tail-bound-theorem.md) | 341 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `theorem` | [finite_payload_not_contour_integral_theorem](declarations/finite-payload-not-contour-integral-theorem.md) | 347 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `theorem` | [finite_payload_not_argument_principle_count_theorem](declarations/finite-payload-not-argument-principle-count-theorem.md) | 353 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `theorem` | [finite_payload_not_validated_integration_theorem](declarations/finite-payload-not-validated-integration-theorem.md) | 359 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `theorem` | [finite_payload_not_spectral_enclosure_theorem](declarations/finite-payload-not-spectral-enclosure-theorem.md) | 365 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `theorem` | [finite_payload_not_operator_norm_bound_theorem](declarations/finite-payload-not-operator-norm-bound-theorem.md) | 371 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `theorem` | [finite_payload_not_rigorous_quadrature_theorem](declarations/finite-payload-not-rigorous-quadrature-theorem.md) | 377 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `theorem` | [finite_payload_not_theorem_level_interpretation](declarations/finite-payload-not-theorem-level-interpretation.md) | 383 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `theorem` | [finite_numerical_estimate_payload_boundary_summary](declarations/finite-numerical-estimate-payload-boundary-summary.md) | 395 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=663edbdba07a99824aca4268fa3c2e0b4ee4ff81ea86e51bd9e5db43accfa824 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/RealAnalysis/Integration/NumericalEstimate/Variant8104fa4893626c727cda36dca0e9b7d2ef0659e6603ea480292e0b247d5f429e.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
