# Number Theory Chebyshev Factorization Lcm

[Complete source index](../../complete-source-index.md) · [Up one directory](../../complete-source-index.md) · [Full source](source.md)

**44 observed declarations and anonymous commands**, 42 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/NumberTheory/AnalyticNumberTheory/Chebyshev/Variant8e752ba4c46b43880478c7101e27994b901394ec80f35b0c450328ae6c3e2d5e.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `127d981f6245b8f13a3cabddc5109a6b64de5b7f`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../_verification/specifications/NumberTheory/NumberTheoryChebyshevFactorizationLcm.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `theorem` | [factorization_lcm](declarations/factorization-lcm.md) | 9 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `abbrev` | [primesLE](declarations/primesle.md) | 28 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `theorem` | [mem_primesLE_prime](declarations/mem-primesle-prime.md) | 30 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `theorem` | [mem_primesLE_le](declarations/mem-primesle-le.md) | 32 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [mem_primesLE_gt](declarations/mem-primesle-gt.md) | 34 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [mem_primesLE_ge](declarations/mem-primesle-ge.md) | 36 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [primesLE_mono](declarations/primesle-mono.md) | 38 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [primesLE_eq_filter_Icc_zero](declarations/primesle-eq-filter-icc-zero.md) | 42 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [primesLE_eq_filter_Icc_one](declarations/primesle-eq-filter-icc-one.md) | 46 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [primesLE_eq_filter_Icc_two](declarations/primesle-eq-filter-icc-two.md) | 50 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [card_primesLE](declarations/card-primesle.md) | 55 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [log_prime_pos](declarations/log-prime-pos.md) | 58 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [log_prime_ne](declarations/log-prime-ne.md) | 62 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [log_prime_nonneg](declarations/log-prime-nonneg.md) | 64 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `abbrev` | [lcmUpto](declarations/lcmupto.md) | 67 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [lcmUpto_ne_zero](declarations/lcmupto-ne-zero.md) | 69 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [lcmUpto_pos](declarations/lcmupto-pos.md) | 72 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [factorization_lcmUpto](declarations/factorization-lcmupto.md) | 74 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [lcmUpto_dvd_factorial](declarations/lcmupto-dvd-factorial.md) | 89 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [primeFactors_lcmUpto](declarations/primefactors-lcmupto.md) | 92 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [primorial_dvd_lcmUpto](declarations/primorial-dvd-lcmupto.md) | 105 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [lcmUpto_eq_prod](declarations/lcmupto-eq-prod.md) | 110 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [lcmUpto_eq_prod_pow_log](declarations/lcmupto-eq-prod-pow-log.md) | 122 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [lcmUpto_eq_prod_pow_floor](declarations/lcmupto-eq-prod-pow-floor.md) | 127 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [psi_eq_sum_mul_log_prime](declarations/psi-eq-sum-mul-log-prime.md) | 131 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [psi_le_primeCounting_mul_log](declarations/psi-le-primecounting-mul-log-source-edition-2.md) | 170 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [psi_le_primeCounting_mul_log'](declarations/psi-le-primecounting-mul-log.md) | 182 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [psi_eq_log_lcmUpto](declarations/psi-eq-log-lcmupto.md) | 191 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [choose_dvd_lcmUpto](declarations/choose-dvd-lcmupto.md) | 197 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [two_pow_le_mul_lcmUpto](declarations/two-pow-le-mul-lcmupto.md) | 203 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [psi_ge](declarations/psi-ge-source-edition-2.md) | 212 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [psi_ge'](declarations/psi-ge.md) | 219 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [primeCounting_ge](declarations/primecounting-ge-source-edition-2.md) | 226 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [primeCounting_ge'](declarations/primecounting-ge.md) | 232 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `theorem` | [theta_zero](declarations/theta-zero.md) | 238 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `theorem` | [theta_one](declarations/theta-one.md) | 241 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `theorem` | [psi_sub_theta_le](declarations/psi-sub-theta-le.md) | 243 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `theorem` | [theta_ge](declarations/theta-ge.md) | 248 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `theorem` | [theta_ge'](declarations/theta-ge-source-edition-2.md) | 253 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `theorem` | [theta_eq_sum_log](declarations/theta-eq-sum-log.md) | 257 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `theorem` | [theta_le_primeCounting_mul_log](declarations/theta-le-primecounting-mul-log-source-edition-2.md) | 260 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `theorem` | [theta_le_primeCounting_mul_log'](declarations/theta-le-primecounting-mul-log.md) | 263 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `theorem` | [pi_mul_log_sqrt_le](declarations/pi-mul-log-sqrt-le.md) | 266 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `theorem` | [pi_le_log4_mul_div](declarations/pi-le-log4-mul-div.md) | 296 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=48ee0c4780299e4be478594865cc73e7d00c42050c54c7afd595b8b2054f1366 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/AnalyticNumberTheory/Chebyshev/Variant8e752ba4c46b43880478c7101e27994b901394ec80f35b0c450328ae6c3e2d5e.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
