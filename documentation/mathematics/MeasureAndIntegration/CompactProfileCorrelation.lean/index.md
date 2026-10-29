# Compact Profile Correlation

[Complete source index](../../complete-source-index.md) · [Up one directory](../../complete-source-index.md) · [Full source](source.md)

**32 observed declarations and anonymous commands**, 29 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Analysis/Convolution/CompactProfileCorrelation.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `b22a87177a8f6ef0ca63a159330480af9f1d8e1b`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../_verification/specifications/MeasureAndIntegration/CompactProfileCorrelation.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `theorem` | [bump_third_continuous](declarations/bump-third-continuous.md) | 27 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `def` | [sourceThird](declarations/sourcethird.md) | 39 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `theorem` | [sourceSecond_hasDerivAt](declarations/sourcesecond-hasderivat.md) | 42 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `def` | [residualFirst](declarations/residualfirst.md) | 51 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [residual_hasDerivAt](declarations/residual-hasderivat.md) | 53 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [residual_first_continuous](declarations/residual-first-continuous.md) | 60 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [residual_contDiff_one](declarations/residual-contdiff-one.md) | 71 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [normalized_source_contDiff_one](declarations/normalized-source-contdiff-one.md) | 78 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [normalized_source_zero_outside](declarations/normalized-source-zero-outside.md) | 81 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [normalized_source_hasCompactSupport](declarations/normalized-source-hascompactsupport.md) | 85 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [normalized_source_integrable](declarations/normalized-source-integrable.md) | 89 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `def` | [reflectedSource](declarations/reflectedsource.md) | 94 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [reflected_source_contDiff_one](declarations/reflected-source-contdiff-one.md) | 96 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [reflected_source_hasCompactSupport](declarations/reflected-source-hascompactsupport.md) | 99 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [correlation_eq_convolution](declarations/correlation-eq-convolution.md) | 109 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [correlation_contDiff_one](declarations/correlation-contdiff-one.md) | 118 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [correlation_deriv_eq_convolution](declarations/correlation-deriv-eq-convolution.md) | 124 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [correlation_deriv_contDiff_one](declarations/correlation-deriv-contdiff-one.md) | 133 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [correlation_contDiff_two](declarations/correlation-contdiff-two.md) | 141 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [reflected_source_deriv](declarations/reflected-source-deriv.md) | 147 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [correlation_second_deriv_eq_integral](declarations/correlation-second-deriv-eq-integral.md) | 155 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [polarity_kernel_continuous](declarations/polarity-kernel-continuous.md) | 169 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [correlation_zero_of_two_mul_lt](declarations/correlation-zero-of-two-mul-lt.md) | 178 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [correlation_eventually_zero](declarations/correlation-eventually-zero.md) | 191 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [correlation_derivatives_zero_of_two_mul_lt](declarations/correlation-derivatives-zero-of-two-mul-lt.md) | 196 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [polarity_kernel_zero_of_upper_tail](declarations/polarity-kernel-zero-of-upper-tail.md) | 208 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [correlation_hasCompactSupport](declarations/correlation-hascompactsupport.md) | 224 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [correlation_deriv_integrable](declarations/correlation-deriv-integrable.md) | 230 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [correlation_second_deriv_integrable](declarations/correlation-second-deriv-integrable.md) | 235 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [polarity_kernel_integrable](declarations/polarity-kernel-integrable.md) | 240 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [polarity_kernel_zero_of_empty_inventory](declarations/polarity-kernel-zero-of-empty-inventory.md) | 252 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [strict_sector_empty_of_small_scale](declarations/strict-sector-empty-of-small-scale.md) | 261 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=d63a70767770a8415ea95379c8f3d0da8068cd3147d0cb1eb45e6acf7ad48352 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/Convolution/CompactProfileCorrelation.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
