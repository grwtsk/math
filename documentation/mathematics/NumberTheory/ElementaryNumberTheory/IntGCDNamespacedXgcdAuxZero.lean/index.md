# Int GCDNamespaced Xgcd Aux Zero

[Complete source index](../../../complete-source-index.md) · [Up one directory](../../../complete-source-index.md) · [Full source](source.md)

**80 observed declarations and anonymous commands**, 72 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/NumberTheory/ElementaryNumberTheory/GCD/Variantc235763379c1367cfb3f48953d053c3562968ee70a49627245a3212b16022e18.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `3c7494905d6e18db54c4226491e8f402297ece2e`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/NumberTheory/ElementaryNumberTheory/IntGCDNamespacedXgcdAuxZero.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [xgcdAux](declarations/xgcdaux.md) | 49 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `theorem` | [xgcdAux_zero](declarations/xgcdaux-zero.md) | 59 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `theorem` | [xgcdAux_succ](declarations/xgcdaux-succ.md) | 61 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `theorem` | [xgcd_zero_left](declarations/xgcd-zero-left.md) | 65 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [xgcdAux_rec](declarations/xgcdaux-rec.md) | 68 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `def` | [xgcd](declarations/xgcd.md) | 76 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `def` | [gcdA](declarations/gcda.md) | 81 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `def` | [gcdB](declarations/gcdb-source-edition-2.md) | 86 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [gcdA_zero_left](declarations/gcda-zero-left.md) | 91 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [gcdB_zero_left](declarations/gcdb-zero-left.md) | 97 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [gcdA_zero_right](declarations/gcda-zero-right.md) | 103 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [gcdB_zero_right](declarations/gcdb-zero-right.md) | 113 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [xgcdAux_fst](declarations/xgcdaux-fst.md) | 123 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [xgcdAux_val](declarations/xgcdaux-val.md) | 129 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [xgcd_val](declarations/xgcd-val.md) | 133 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `def` | [P](declarations/p.md) | 141 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [xgcdAux_P](declarations/xgcdaux-p.md) | 144 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [gcd_eq_gcd_ab](declarations/gcd-eq-gcd-ab-source-edition-2.md) | 160 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [exists_mul_emod_eq_gcd](declarations/exists-mul-emod-eq-gcd.md) | 167 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [exists_mul_emod_eq_one_of_coprime](declarations/exists-mul-emod-eq-one-of-coprime.md) | 178 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [gcd_def](declarations/gcd-def.md) | 191 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [coe_nat_gcd](declarations/coe-nat-gcd.md) | 193 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `def` | [gcdA](declarations/gcda-source-edition-2.md) | 198 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `def` | [gcdB](declarations/gcdb.md) | 204 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [gcd_eq_gcd_ab](declarations/gcd-eq-gcd-ab.md) | 210 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [natAbs_ediv](declarations/natabs-ediv.md) | 222 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [dvd_of_mul_dvd_mul_left](declarations/dvd-of-mul-dvd-mul-left.md) | 234 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [dvd_of_mul_dvd_mul_right](declarations/dvd-of-mul-dvd-mul-right.md) | 238 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `def` | [lcm](declarations/lcm.md) | 243 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [lcm_def](declarations/lcm-def.md) | 247 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [coe_nat_lcm](declarations/coe-nat-lcm.md) | 251 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [gcd_dvd_left](declarations/gcd-dvd-left.md) | 255 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [gcd_dvd_right](declarations/gcd-dvd-right.md) | 259 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [dvd_gcd](declarations/dvd-gcd.md) | 263 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `theorem` | [gcd_mul_lcm](declarations/gcd-mul-lcm.md) | 268 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `theorem` | [gcd_comm](declarations/gcd-comm.md) | 272 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `theorem` | [gcd_assoc](declarations/gcd-assoc.md) | 276 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `theorem` | [gcd_self](declarations/gcd-self.md) | 281 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `theorem` | [gcd_zero_left](declarations/gcd-zero-left.md) | 285 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `theorem` | [gcd_zero_right](declarations/gcd-zero-right.md) | 289 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `theorem` | [gcd_one_left](declarations/gcd-one-left.md) | 293 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `theorem` | [gcd_one_right](declarations/gcd-one-right.md) | 298 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `theorem` | [gcd_neg_right](declarations/gcd-neg-right.md) | 303 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `theorem` | [gcd_neg_left](declarations/gcd-neg-left.md) | 307 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `theorem` | [gcd_mul_left](declarations/gcd-mul-left.md) | 310 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `theorem` | [gcd_mul_right](declarations/gcd-mul-right.md) | 315 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `theorem` | [gcd_pos_of_ne_zero_left](declarations/gcd-pos-of-ne-zero-left.md) | 320 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `theorem` | [gcd_pos_of_ne_zero_right](declarations/gcd-pos-of-ne-zero-right.md) | 324 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `theorem` | [gcd_eq_zero_iff](declarations/gcd-eq-zero-iff.md) | 328 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `theorem` | [gcd_pos_iff](declarations/gcd-pos-iff.md) | 332 | `BLOCKED_NATIVE_ADMISSION` |
| 51 | `theorem` | [gcd_div](declarations/gcd-div.md) | 336 | `BLOCKED_NATIVE_ADMISSION` |
| 52 | `theorem` | [gcd_div_gcd_div_gcd](declarations/gcd-div-gcd-div-gcd.md) | 342 | `BLOCKED_NATIVE_ADMISSION` |
| 53 | `theorem` | [gcd_dvd_gcd_of_dvd_left](declarations/gcd-dvd-gcd-of-dvd-left.md) | 346 | `BLOCKED_NATIVE_ADMISSION` |
| 54 | `theorem` | [gcd_dvd_gcd_of_dvd_right](declarations/gcd-dvd-gcd-of-dvd-right.md) | 350 | `BLOCKED_NATIVE_ADMISSION` |
| 55 | `theorem` | [gcd_dvd_gcd_mul_left](declarations/gcd-dvd-gcd-mul-left.md) | 354 | `BLOCKED_NATIVE_ADMISSION` |
| 56 | `theorem` | [gcd_dvd_gcd_mul_right](declarations/gcd-dvd-gcd-mul-right.md) | 358 | `BLOCKED_NATIVE_ADMISSION` |
| 57 | `theorem` | [gcd_dvd_gcd_mul_left_right](declarations/gcd-dvd-gcd-mul-left-right.md) | 362 | `BLOCKED_NATIVE_ADMISSION` |
| 58 | `theorem` | [gcd_dvd_gcd_mul_right_right](declarations/gcd-dvd-gcd-mul-right-right.md) | 366 | `BLOCKED_NATIVE_ADMISSION` |
| 59 | `theorem` | [gcd_eq_left](declarations/gcd-eq-left.md) | 370 | `BLOCKED_NATIVE_ADMISSION` |
| 60 | `theorem` | [gcd_eq_right](declarations/gcd-eq-right.md) | 374 | `BLOCKED_NATIVE_ADMISSION` |
| 61 | `theorem` | [ne_zero_of_gcd](declarations/ne-zero-of-gcd.md) | 377 | `BLOCKED_NATIVE_ADMISSION` |
| 62 | `theorem` | [exists_gcd_one](declarations/exists-gcd-one-source-edition-2.md) | 382 | `BLOCKED_NATIVE_ADMISSION` |
| 63 | `theorem` | [exists_gcd_one'](declarations/exists-gcd-one.md) | 388 | `BLOCKED_NATIVE_ADMISSION` |
| 64 | `theorem` | [pow_dvd_pow_iff](declarations/pow-dvd-pow-iff.md) | 394 | `BLOCKED_NATIVE_ADMISSION` |
| 65 | `theorem` | [gcd_dvd_iff](declarations/gcd-dvd-iff.md) | 400 | `BLOCKED_NATIVE_ADMISSION` |
| 66 | `theorem` | [gcd_greatest](declarations/gcd-greatest.md) | 411 | `BLOCKED_NATIVE_ADMISSION` |
| 67 | `theorem` | [dvd_of_dvd_mul_left_of_gcd_one](declarations/dvd-of-dvd-mul-left-of-gcd-one.md) | 420 | `BLOCKED_NATIVE_ADMISSION` |
| 68 | `theorem` | [dvd_of_dvd_mul_right_of_gcd_one](declarations/dvd-of-dvd-mul-right-of-gcd-one.md) | 432 | `BLOCKED_NATIVE_ADMISSION` |
| 69 | `theorem` | [gcd_least_linear](declarations/gcd-least-linear.md) | 440 | `BLOCKED_NATIVE_ADMISSION` |
| 70 | `theorem` | [lcm_comm](declarations/lcm-comm.md) | 452 | `BLOCKED_NATIVE_ADMISSION` |
| 71 | `theorem` | [lcm_assoc](declarations/lcm-assoc.md) | 457 | `BLOCKED_NATIVE_ADMISSION` |
| 72 | `theorem` | [lcm_zero_left](declarations/lcm-zero-left.md) | 463 | `BLOCKED_NATIVE_ADMISSION` |
| 73 | `theorem` | [lcm_zero_right](declarations/lcm-zero-right.md) | 469 | `BLOCKED_NATIVE_ADMISSION` |
| 74 | `theorem` | [lcm_one_left](declarations/lcm-one-left.md) | 475 | `BLOCKED_NATIVE_ADMISSION` |
| 75 | `theorem` | [lcm_one_right](declarations/lcm-one-right.md) | 481 | `BLOCKED_NATIVE_ADMISSION` |
| 76 | `theorem` | [lcm_self](declarations/lcm-self.md) | 487 | `BLOCKED_NATIVE_ADMISSION` |
| 77 | `theorem` | [dvd_lcm_left](declarations/dvd-lcm-left.md) | 492 | `BLOCKED_NATIVE_ADMISSION` |
| 78 | `theorem` | [dvd_lcm_right](declarations/dvd-lcm-right.md) | 498 | `BLOCKED_NATIVE_ADMISSION` |
| 79 | `theorem` | [lcm_dvd](declarations/lcm-dvd.md) | 504 | `BLOCKED_NATIVE_ADMISSION` |
| 80 | `theorem` | [pow_gcd_eq_one](declarations/pow-gcd-eq-one.md) | 513 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=091ed794fd78c286e9b1011dc091b08768b3ab36aa88b6f7e3d603d29ae94d6a -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/ElementaryNumberTheory/GCD/Variantc235763379c1367cfb3f48953d053c3562968ee70a49627245a3212b16022e18.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
