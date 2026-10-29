# Number Theory Chebyshev Namespaced

[Complete source index](../../complete-source-index.md) · [Up one directory](../../complete-source-index.md) · [Full source](source.md)

**29 observed declarations and anonymous commands**, 27 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/NumberTheory/AnalyticNumberTheory/Chebyshev/Variant198122ef45c5e88b1c7cfd29bbc4d60e3f0d625aa69b1926c515511de0c26919.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `c61841c98997cb77229212c2741e157e4724b1f8`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../_verification/specifications/NumberTheory/NumberTheoryChebyshevNamespaced.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `abbrev` | [primesLE](declarations/primesle.md) | 20 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `theorem` | [mem_primesLE_prime](declarations/mem-primesle-prime.md) | 22 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `theorem` | [mem_primesLE_le](declarations/mem-primesle-le.md) | 24 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `theorem` | [mem_primesLE_gt](declarations/mem-primesle-gt.md) | 26 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [mem_primesLE_ge](declarations/mem-primesle-ge.md) | 28 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [primesLE_mono](declarations/primesle-mono.md) | 30 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [primesLE_eq_filter_Icc_zero](declarations/primesle-eq-filter-icc-zero.md) | 34 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [primesLE_eq_filter_Icc_one](declarations/primesle-eq-filter-icc-one.md) | 38 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [primesLE_eq_filter_Icc_two](declarations/primesle-eq-filter-icc-two.md) | 42 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [card_primesLE](declarations/card-primesle.md) | 47 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [log_prime_pos](declarations/log-prime-pos.md) | 50 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [log_prime_ne](declarations/log-prime-ne.md) | 54 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [log_prime_nonneg](declarations/log-prime-nonneg.md) | 56 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `abbrev` | [lcmUpto](declarations/lcmupto.md) | 59 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [lcmUpto_ne_zero](declarations/lcmupto-ne-zero.md) | 61 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [lcmUpto_pos](declarations/lcmupto-pos.md) | 64 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [factorization_lcmUpto](declarations/factorization-lcmupto.md) | 66 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [lcmUpto_dvd_factorial](declarations/lcmupto-dvd-factorial.md) | 81 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [primeFactors_lcmUpto](declarations/primefactors-lcmupto.md) | 84 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [primorial_dvd_lcmUpto](declarations/primorial-dvd-lcmupto.md) | 97 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [lcmUpto_eq_prod](declarations/lcmupto-eq-prod.md) | 102 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [lcmUpto_eq_prod_pow_log](declarations/lcmupto-eq-prod-pow-log.md) | 114 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [lcmUpto_eq_prod_pow_floor](declarations/lcmupto-eq-prod-pow-floor.md) | 119 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [primeCounting_ge](declarations/primecounting-ge-source-edition-2.md) | 123 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [primeCounting_ge'](declarations/primecounting-ge.md) | 129 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [theta_eq_sum_log](declarations/theta-eq-sum-log.md) | 134 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [theta_le_primeCounting_mul_log](declarations/theta-le-primecounting-mul-log.md) | 137 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [theta_le_primeCounting_mul_log'](declarations/theta-le-primecounting-mul-log-source-edition-2.md) | 140 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [pi_mul_log_sqrt_le](declarations/pi-mul-log-sqrt-le.md) | 143 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=db9e9be9b67c5a4c66410b00fda6ffbc4ad447bd291101f9b98dcc6fa8530532 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/AnalyticNumberTheory/Chebyshev/Variant198122ef45c5e88b1c7cfd29bbc4d60e3f0d625aa69b1926c515511de0c26919.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
