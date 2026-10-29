# Uniform Endpoint Positivity For The Prescribed Supplier Source

[Complete source index](../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**34 observed declarations and anonymous commands**, 30 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SupplierTerminalSource/Variantd9ca275644ee35cdea8eb9d6be7e46f94c356b2260e7c72685c607cdd76ca741.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `5e83e4b73a439e8d3aa048d9226b6862e319b56f`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../_verification/specifications/MeasureAndIntegration/UniformEndpointPositivityForThePrescribedSupplierSource.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [endpointPolynomial](declarations/endpointpolynomial.md) | 28 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `def` | [endpointDerivative](declarations/endpointderivative.md) | 33 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `theorem` | [endpointPolynomial_expansion](declarations/endpointpolynomial-expansion.md) | 39 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `theorem` | [endpointDerivative_expansion](declarations/endpointderivative-expansion.md) | 50 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [endpointPolynomial_hasDerivAt](declarations/endpointpolynomial-hasderivat.md) | 61 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [endpoint_bounds](declarations/endpoint-bounds.md) | 74 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [endpointPolynomial_pos](declarations/endpointpolynomial-pos.md) | 91 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [endpointDerivative_pos](declarations/endpointderivative-pos.md) | 100 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `def` | [endpointDenominator](declarations/endpointdenominator.md) | 110 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [endpointDenominator_pos](declarations/endpointdenominator-pos.md) | 113 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [normalizedInterior_endpoint](declarations/normalizedinterior-endpoint.md) | 121 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [normalizedInteriorDerivative_endpoint](declarations/normalizedinteriorderivative-endpoint.md) | 130 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [endpoint_mem](declarations/endpoint-mem.md) | 138 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [normalizedTest_endpoint](declarations/normalizedtest-endpoint.md) | 144 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [normalizedTest_endpoint_pos](declarations/normalizedtest-endpoint-pos.md) | 153 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [normalizedTest_deriv_endpoint](declarations/normalizedtest-deriv-endpoint.md) | 162 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [normalizedTest_inward_deriv_endpoint_pos](declarations/normalizedtest-inward-deriv-endpoint-pos.md) | 174 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [normalizedTest_deriv_eq_indicator](declarations/normalizedtest-deriv-eq-indicator.md) | 182 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [neg_mem_source_iff](declarations/neg-mem-source-iff.md) | 189 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [normalizedTest_even](declarations/normalizedtest-even.md) | 195 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [normalizedTest_deriv_odd](declarations/normalizedtest-deriv-odd.md) | 207 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [normalizedTest_endpoint_nonneg](declarations/normalizedtest-endpoint-nonneg.md) | 219 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [normalizedTest_deriv_endpoint_nonpos](declarations/normalizedtest-deriv-endpoint-nonpos.md) | 228 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [terminal_product_polarities](declarations/terminal-product-polarities.md) | 238 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [sourceCorrelation_deriv_terminal_neg](declarations/sourcecorrelation-deriv-terminal-neg.md) | 279 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [sourceCorrelation_second_deriv_terminal_pos](declarations/sourcecorrelation-second-deriv-terminal-pos.md) | 311 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [sourcePolarity_terminal_pos](declarations/sourcepolarity-terminal-pos.md) | 338 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `def` | [terminalLiteralKernel](declarations/terminalliteralkernel.md) | 348 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [sourceCorrelation_deriv_zero_above](declarations/sourcecorrelation-deriv-zero-above.md) | 356 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [sourceCorrelation_second_deriv_zero_above](declarations/sourcecorrelation-second-deriv-zero-above.md) | 364 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [log_three_sub_log_two](declarations/log-three-sub-log-two.md) | 372 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [terminalLiteralKernel_eq_two](declarations/terminalliteralkernel-eq-two.md) | 381 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [terminalLiteralKernel_pos](declarations/terminalliteralkernel-pos.md) | 412 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [terminal_strip_reading](declarations/terminal-strip-reading.md) | 425 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=5d3087343b8f4dc52a85e8fc963861bcffe03d8f6f63f65074c18f95a04656b8 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SupplierTerminalSource/Variantd9ca275644ee35cdea8eb9d6be7e46f94c356b2260e7c72685c607cdd76ca741.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
