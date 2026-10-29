# Int GCDXgcd Aux Zero

[Complete source index](../../../complete-source-index.md) · [Up one directory](../../../complete-source-index.md) · [Full source](source.md)

**80 observed declarations and anonymous commands**, 72 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/NumberTheory/ElementaryNumberTheory/GCD/Variant858b4d95839576feb30793d0254bb90481536453afae4fc9d384f3f9df139d1f.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `f524cf6c55d3daffd687976d193936ab6df9ba05`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/NumberTheory/ElementaryNumberTheory/IntGCDXgcdAuxZero.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [xgcdAux](declarations/xgcdaux.md) | 41 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `theorem` | [xgcdAux_zero](declarations/xgcdaux-zero.md) | 51 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `theorem` | [xgcdAux_succ](declarations/xgcdaux-succ.md) | 53 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `theorem` | [xgcd_zero_left](declarations/xgcd-zero-left.md) | 57 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [xgcdAux_rec](declarations/xgcdaux-rec.md) | 60 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `def` | [xgcd](declarations/xgcd.md) | 68 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `def` | [gcdA](declarations/gcda-source-edition-2.md) | 73 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `def` | [gcdB](declarations/gcdb.md) | 78 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [gcdA_zero_left](declarations/gcda-zero-left.md) | 83 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [gcdB_zero_left](declarations/gcdb-zero-left.md) | 89 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [gcdA_zero_right](declarations/gcda-zero-right.md) | 95 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [gcdB_zero_right](declarations/gcdb-zero-right.md) | 105 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [xgcdAux_fst](declarations/xgcdaux-fst.md) | 115 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [xgcdAux_val](declarations/xgcdaux-val.md) | 121 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [xgcd_val](declarations/xgcd-val.md) | 125 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `def` | [P](declarations/p.md) | 133 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [xgcdAux_P](declarations/xgcdaux-p.md) | 136 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [gcd_eq_gcd_ab](declarations/gcd-eq-gcd-ab.md) | 152 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [exists_mul_emod_eq_gcd](declarations/exists-mul-emod-eq-gcd.md) | 159 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [exists_mul_emod_eq_one_of_coprime](declarations/exists-mul-emod-eq-one-of-coprime.md) | 170 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [gcd_def](declarations/gcd-def.md) | 183 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [coe_nat_gcd](declarations/coe-nat-gcd.md) | 185 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `def` | [gcdA](declarations/gcda.md) | 190 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `def` | [gcdB](declarations/gcdb-source-edition-2.md) | 196 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [gcd_eq_gcd_ab](declarations/gcd-eq-gcd-ab-source-edition-2.md) | 202 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [natAbs_ediv](declarations/natabs-ediv.md) | 214 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [dvd_of_mul_dvd_mul_left](declarations/dvd-of-mul-dvd-mul-left.md) | 226 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [dvd_of_mul_dvd_mul_right](declarations/dvd-of-mul-dvd-mul-right.md) | 230 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `def` | [lcm](declarations/lcm.md) | 235 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [lcm_def](declarations/lcm-def.md) | 239 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [coe_nat_lcm](declarations/coe-nat-lcm.md) | 243 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [gcd_dvd_left](declarations/gcd-dvd-left.md) | 247 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [gcd_dvd_right](declarations/gcd-dvd-right.md) | 251 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [dvd_gcd](declarations/dvd-gcd.md) | 255 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `theorem` | [gcd_mul_lcm](declarations/gcd-mul-lcm.md) | 260 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `theorem` | [gcd_comm](declarations/gcd-comm.md) | 264 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `theorem` | [gcd_assoc](declarations/gcd-assoc.md) | 268 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `theorem` | [gcd_self](declarations/gcd-self.md) | 273 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `theorem` | [gcd_zero_left](declarations/gcd-zero-left.md) | 277 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `theorem` | [gcd_zero_right](declarations/gcd-zero-right.md) | 281 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `theorem` | [gcd_one_left](declarations/gcd-one-left.md) | 285 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `theorem` | [gcd_one_right](declarations/gcd-one-right.md) | 290 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `theorem` | [gcd_neg_right](declarations/gcd-neg-right.md) | 295 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `theorem` | [gcd_neg_left](declarations/gcd-neg-left.md) | 299 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `theorem` | [gcd_mul_left](declarations/gcd-mul-left.md) | 302 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `theorem` | [gcd_mul_right](declarations/gcd-mul-right.md) | 307 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `theorem` | [gcd_pos_of_ne_zero_left](declarations/gcd-pos-of-ne-zero-left.md) | 312 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `theorem` | [gcd_pos_of_ne_zero_right](declarations/gcd-pos-of-ne-zero-right.md) | 316 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `theorem` | [gcd_eq_zero_iff](declarations/gcd-eq-zero-iff.md) | 320 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `theorem` | [gcd_pos_iff](declarations/gcd-pos-iff.md) | 324 | `BLOCKED_NATIVE_ADMISSION` |
| 51 | `theorem` | [gcd_div](declarations/gcd-div.md) | 328 | `BLOCKED_NATIVE_ADMISSION` |
| 52 | `theorem` | [gcd_div_gcd_div_gcd](declarations/gcd-div-gcd-div-gcd.md) | 334 | `BLOCKED_NATIVE_ADMISSION` |
| 53 | `theorem` | [gcd_dvd_gcd_of_dvd_left](declarations/gcd-dvd-gcd-of-dvd-left.md) | 338 | `BLOCKED_NATIVE_ADMISSION` |
| 54 | `theorem` | [gcd_dvd_gcd_of_dvd_right](declarations/gcd-dvd-gcd-of-dvd-right.md) | 342 | `BLOCKED_NATIVE_ADMISSION` |
| 55 | `theorem` | [gcd_dvd_gcd_mul_left](declarations/gcd-dvd-gcd-mul-left.md) | 346 | `BLOCKED_NATIVE_ADMISSION` |
| 56 | `theorem` | [gcd_dvd_gcd_mul_right](declarations/gcd-dvd-gcd-mul-right.md) | 350 | `BLOCKED_NATIVE_ADMISSION` |
| 57 | `theorem` | [gcd_dvd_gcd_mul_left_right](declarations/gcd-dvd-gcd-mul-left-right.md) | 354 | `BLOCKED_NATIVE_ADMISSION` |
| 58 | `theorem` | [gcd_dvd_gcd_mul_right_right](declarations/gcd-dvd-gcd-mul-right-right.md) | 358 | `BLOCKED_NATIVE_ADMISSION` |
| 59 | `theorem` | [gcd_eq_left](declarations/gcd-eq-left.md) | 362 | `BLOCKED_NATIVE_ADMISSION` |
| 60 | `theorem` | [gcd_eq_right](declarations/gcd-eq-right.md) | 366 | `BLOCKED_NATIVE_ADMISSION` |
| 61 | `theorem` | [ne_zero_of_gcd](declarations/ne-zero-of-gcd.md) | 369 | `BLOCKED_NATIVE_ADMISSION` |
| 62 | `theorem` | [exists_gcd_one](declarations/exists-gcd-one-source-edition-2.md) | 374 | `BLOCKED_NATIVE_ADMISSION` |
| 63 | `theorem` | [exists_gcd_one'](declarations/exists-gcd-one.md) | 380 | `BLOCKED_NATIVE_ADMISSION` |
| 64 | `theorem` | [pow_dvd_pow_iff](declarations/pow-dvd-pow-iff.md) | 386 | `BLOCKED_NATIVE_ADMISSION` |
| 65 | `theorem` | [gcd_dvd_iff](declarations/gcd-dvd-iff.md) | 392 | `BLOCKED_NATIVE_ADMISSION` |
| 66 | `theorem` | [gcd_greatest](declarations/gcd-greatest.md) | 403 | `BLOCKED_NATIVE_ADMISSION` |
| 67 | `theorem` | [dvd_of_dvd_mul_left_of_gcd_one](declarations/dvd-of-dvd-mul-left-of-gcd-one.md) | 412 | `BLOCKED_NATIVE_ADMISSION` |
| 68 | `theorem` | [dvd_of_dvd_mul_right_of_gcd_one](declarations/dvd-of-dvd-mul-right-of-gcd-one.md) | 424 | `BLOCKED_NATIVE_ADMISSION` |
| 69 | `theorem` | [gcd_least_linear](declarations/gcd-least-linear.md) | 432 | `BLOCKED_NATIVE_ADMISSION` |
| 70 | `theorem` | [lcm_comm](declarations/lcm-comm.md) | 444 | `BLOCKED_NATIVE_ADMISSION` |
| 71 | `theorem` | [lcm_assoc](declarations/lcm-assoc.md) | 449 | `BLOCKED_NATIVE_ADMISSION` |
| 72 | `theorem` | [lcm_zero_left](declarations/lcm-zero-left.md) | 455 | `BLOCKED_NATIVE_ADMISSION` |
| 73 | `theorem` | [lcm_zero_right](declarations/lcm-zero-right.md) | 461 | `BLOCKED_NATIVE_ADMISSION` |
| 74 | `theorem` | [lcm_one_left](declarations/lcm-one-left.md) | 467 | `BLOCKED_NATIVE_ADMISSION` |
| 75 | `theorem` | [lcm_one_right](declarations/lcm-one-right.md) | 473 | `BLOCKED_NATIVE_ADMISSION` |
| 76 | `theorem` | [lcm_self](declarations/lcm-self.md) | 479 | `BLOCKED_NATIVE_ADMISSION` |
| 77 | `theorem` | [dvd_lcm_left](declarations/dvd-lcm-left.md) | 484 | `BLOCKED_NATIVE_ADMISSION` |
| 78 | `theorem` | [dvd_lcm_right](declarations/dvd-lcm-right.md) | 490 | `BLOCKED_NATIVE_ADMISSION` |
| 79 | `theorem` | [lcm_dvd](declarations/lcm-dvd.md) | 496 | `BLOCKED_NATIVE_ADMISSION` |
| 80 | `theorem` | [pow_gcd_eq_one](declarations/pow-gcd-eq-one.md) | 505 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=18a62149d8badef8cd3b27d7fb6e0713e8b30d8290e54e792bbe479c0db03650 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/ElementaryNumberTheory/GCD/Variant858b4d95839576feb30793d0254bb90481536453afae4fc9d384f3f9df139d1f.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
