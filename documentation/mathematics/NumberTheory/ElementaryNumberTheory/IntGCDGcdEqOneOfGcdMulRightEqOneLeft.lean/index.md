# Int GCDGcd Eq One Of Gcd Mul Right Eq One Left

[Complete source index](../../../complete-source-index.md) · [Up one directory](../../../complete-source-index.md) · [Full source](source.md)

**37 observed declarations and anonymous commands**, 30 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/NumberTheory/ElementaryNumberTheory/GCD/Variantafda8116b356e5024900575204f15552a50ddd1089622d3ab77d88c7eea97537.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `73bda5168056cb71c25e110ea279282fbc702b8b`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/NumberTheory/ElementaryNumberTheory/IntGCDGcdEqOneOfGcdMulRightEqOneLeft.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [xgcdAux](declarations/xgcdaux.md) | 41 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `theorem` | [xgcd_zero_left](declarations/xgcd-zero-left.md) | 50 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `theorem` | [xgcdAux_rec](declarations/xgcdaux-rec.md) | 52 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `def` | [xgcd](declarations/xgcd.md) | 59 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `def` | [gcdA](declarations/gcda-source-edition-2.md) | 63 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `def` | [gcdB](declarations/gcdb.md) | 67 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [gcdA_zero_left](declarations/gcda-zero-left.md) | 71 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [gcdB_zero_left](declarations/gcdb-zero-left.md) | 76 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [gcdA_zero_right](declarations/gcda-zero-right.md) | 81 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [gcdB_zero_right](declarations/gcdb-zero-right.md) | 88 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [xgcdAux_fst](declarations/xgcdaux-fst.md) | 95 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [xgcdAux_val](declarations/xgcdaux-val.md) | 100 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [xgcd_val](declarations/xgcd-val.md) | 103 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `def` | [P](declarations/p.md) | 110 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [xgcdAux_P](declarations/xgcdaux-p.md) | 113 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [gcd_eq_gcd_ab](declarations/gcd-eq-gcd-ab.md) | 127 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [exists_mul_emod_eq_gcd](declarations/exists-mul-emod-eq-gcd.md) | 133 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [exists_mul_emod_eq_one_of_coprime](declarations/exists-mul-emod-eq-one-of-coprime.md) | 143 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [gcd_def](declarations/gcd-def.md) | 155 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `def` | [gcdA](declarations/gcda.md) | 158 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `def` | [gcdB](declarations/gcdb-source-edition-2.md) | 163 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [gcd_eq_gcd_ab](declarations/gcd-eq-gcd-ab-source-edition-2.md) | 168 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [lcm_def](declarations/lcm-def.md) | 179 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [gcd_eq_one_of_gcd_mul_right_eq_one_left](declarations/gcd-eq-one-of-gcd-mul-right-eq-one-left.md) | 191 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [gcd_eq_one_of_gcd_mul_right_eq_one_right](declarations/gcd-eq-one-of-gcd-mul-right-eq-one-right.md) | 196 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [ne_zero_of_gcd](declarations/ne-zero-of-gcd.md) | 200 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [exists_gcd_one](declarations/exists-gcd-one-source-edition-2.md) | 204 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [exists_gcd_one'](declarations/exists-gcd-one.md) | 209 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [gcd_dvd_iff](declarations/gcd-dvd-iff.md) | 214 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [gcd_greatest](declarations/gcd-greatest.md) | 224 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [dvd_of_dvd_mul_left_of_gcd_one](declarations/dvd-of-dvd-mul-left-of-gcd-one.md) | 232 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [dvd_of_dvd_mul_right_of_gcd_one](declarations/dvd-of-dvd-mul-right-of-gcd-one.md) | 243 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [gcd_least_linear](declarations/gcd-least-linear.md) | 250 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [pow_gcd_eq_one](declarations/pow-gcd-eq-one.md) | 261 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `lemma` | [Commute.pow_eq_pow_iff_of_coprime](declarations/commute-pow-eq-pow-iff-of-coprime.md) | 273 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `lemma` | [pow_eq_pow_iff_of_coprime](declarations/pow-eq-pow-iff-of-coprime.md) | 293 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `lemma` | [pow_mem_range_pow_of_coprime](declarations/pow-mem-range-pow-of-coprime.md) | 296 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=aedea897e7e83e366aea9e954fe8ed1cf7894ea8a4948272c5ed4b2223f50c93 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/ElementaryNumberTheory/GCD/Variantafda8116b356e5024900575204f15552a50ddd1089622d3ab77d88c7eea97537.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
