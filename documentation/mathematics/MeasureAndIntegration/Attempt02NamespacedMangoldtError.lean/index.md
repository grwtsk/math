# Attempt02 Namespaced Mangoldt Error

[Complete source index](../../complete-source-index.md) · [Up one directory](../../complete-source-index.md) · [Full source](source.md)

**29 observed declarations and anonymous commands**, 26 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Analysis/RealAnalysis/Integration/Attempt02/Variant6addeda840a388a2fe25a9300d41515a3474ada2a6b6d671595d76e06c5a9a36.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `5ce92d05511817555e6eff7e3e798b2b59c4aa27`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../_verification/specifications/MeasureAndIntegration/Attempt02NamespacedMangoldtError.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `abbrev` | [mangoldtError](declarations/mangoldterror.md) | 37 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `abbrev` | [primeError](declarations/primeerror.md) | 39 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `abbrev` | [E₁](declarations/e.md) | 42 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `lemma` | [E₁.summand_nonneg](declarations/e-summand-nonneg.md) | 44 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [E₁.summable](declarations/e-summable.md) | 51 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `lemma` | [antitoneOn_log_div_sq](declarations/antitoneon-log-div-sq.md) | 75 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `lemma` | [log_div_sq_nonneg](declarations/log-div-sq-nonneg.md) | 96 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `lemma` | [log_div_sq_is_deriv](declarations/log-div-sq-is-deriv.md) | 100 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `lemma` | [tendsto_antideriv_log_div_sq](declarations/tendsto-antideriv-log-div-sq.md) | 113 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `lemma` | [integrableOn_log_div_sq](declarations/integrableon-log-div-sq.md) | 124 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `lemma` | [integral_log_div_sq](declarations/integral-log-div-sq.md) | 128 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `lemma` | [summable_log_div_sq](declarations/summable-log-div-sq.md) | 133 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `lemma` | [sum_log_div_sq_le](declarations/sum-log-div-sq-le.md) | 143 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [E₁.le](declarations/e-le.md) | 157 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [E₁.nonneg](declarations/e-nonneg.md) | 183 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [mangoldtError.le_primeError_add_E₁](declarations/mangoldterror-le-primeerror-add-e.md) | 186 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [mangoldtError_bounds](declarations/mangoldterror-bounds.md) | 232 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [primeError_le_mangoldtError](declarations/primeerror-le-mangoldterror.md) | 244 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [primeError_bounds](declarations/primeerror-bounds.md) | 251 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [log_four_eq](declarations/log-four-eq.md) | 257 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [primeError_abs_le](declarations/primeerror-abs-le.md) | 262 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [actual_primeLogError_eq](declarations/actual-primelogerror-eq.md) | 270 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [actual_primeLogError_bounds](declarations/actual-primelogerror-bounds.md) | 274 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [actual_primeLogError_abs_le](declarations/actual-primelogerror-abs-le.md) | 279 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [explicit_prime_budget_lt](declarations/explicit-prime-budget-lt.md) | 284 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [actual_primeLogError_abs_lt](declarations/actual-primelogerror-abs-lt.md) | 288 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [actual_negativeErrorMean_abs_le](declarations/actual-negativeerrormean-abs-le.md) | 293 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [actual_negativeErrorMean_abs_lt](declarations/actual-negativeerrormean-abs-lt.md) | 297 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [actual_negativeErrorMean_lower](declarations/actual-negativeerrormean-lower.md) | 302 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=4dce601b6fe5d0137dcf63535f068d1e49fc71dc8fabdefc362c273204bf01fa -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/RealAnalysis/Integration/Attempt02/Variant6addeda840a388a2fe25a9300d41515a3474ada2a6b6d671595d76e06c5a9a36.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
