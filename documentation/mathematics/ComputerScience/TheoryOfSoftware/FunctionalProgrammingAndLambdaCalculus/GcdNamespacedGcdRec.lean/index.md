# Gcd Namespaced Gcd Rec

[Complete source index](../../../../complete-source-index.md) · [Up one directory](../../../../complete-source-index.md) · [Full source](source.md)

**104 observed declarations and anonymous commands**, 100 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/NumberTheory/ElementaryNumberTheory/Gcd/Variantefba33c05333f7105a091840820c3142f4639d0c5e60af139f26ed826face22f.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `13efaa95a5b4298bf048e76cc7f610bdab319ba4`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../_verification/specifications/ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/GcdNamespacedGcdRec.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `theorem` | [gcd_rec](declarations/gcd-rec.md) | 24 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `theorem` | [gcd.induction](declarations/gcd-induction.md) | 29 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `def` | [lcm](declarations/lcm.md) | 38 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `def` | [Coprime](declarations/coprime.md) | 41 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [gcd_dvd](declarations/gcd-dvd.md) | 45 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [gcd_dvd_left](declarations/gcd-dvd-left.md) | 50 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [gcd_dvd_right](declarations/gcd-dvd-right.md) | 52 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [gcd_le_left](declarations/gcd-le-left.md) | 54 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [gcd_le_right](declarations/gcd-le-right.md) | 56 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [dvd_gcd](declarations/dvd-gcd.md) | 58 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [dvd_gcd_iff](declarations/dvd-gcd-iff.md) | 63 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [gcd_comm](declarations/gcd-comm.md) | 67 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [gcd_eq_left_iff_dvd](declarations/gcd-eq-left-iff-dvd.md) | 72 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [gcd_eq_right_iff_dvd](declarations/gcd-eq-right-iff-dvd.md) | 76 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [gcd_assoc](declarations/gcd-assoc.md) | 79 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [gcd_one_right](declarations/gcd-one-right.md) | 90 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [gcd_mul_left](declarations/gcd-mul-left.md) | 92 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [gcd_mul_right](declarations/gcd-mul-right.md) | 97 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [gcd_pos_of_pos_left](declarations/gcd-pos-of-pos-left.md) | 100 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [gcd_pos_of_pos_right](declarations/gcd-pos-of-pos-right.md) | 103 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [div_gcd_pos_of_pos_left](declarations/div-gcd-pos-of-pos-left.md) | 106 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [div_gcd_pos_of_pos_right](declarations/div-gcd-pos-of-pos-right.md) | 109 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [eq_zero_of_gcd_eq_zero_left](declarations/eq-zero-of-gcd-eq-zero-left.md) | 112 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [eq_zero_of_gcd_eq_zero_right](declarations/eq-zero-of-gcd-eq-zero-right.md) | 117 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [gcd_ne_zero_left](declarations/gcd-ne-zero-left.md) | 121 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [gcd_ne_zero_right](declarations/gcd-ne-zero-right.md) | 123 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [gcd_div](declarations/gcd-div.md) | 125 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [gcd_dvd_gcd_of_dvd_left](declarations/gcd-dvd-gcd-of-dvd-left.md) | 134 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [gcd_dvd_gcd_of_dvd_right](declarations/gcd-dvd-gcd-of-dvd-right.md) | 137 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [gcd_dvd_gcd_mul_left](declarations/gcd-dvd-gcd-mul-left.md) | 140 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [gcd_dvd_gcd_mul_right](declarations/gcd-dvd-gcd-mul-right.md) | 143 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [gcd_dvd_gcd_mul_left_right](declarations/gcd-dvd-gcd-mul-left-right.md) | 146 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [gcd_dvd_gcd_mul_right_right](declarations/gcd-dvd-gcd-mul-right-right.md) | 149 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [gcd_eq_left](declarations/gcd-eq-left.md) | 152 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `theorem` | [gcd_eq_right](declarations/gcd-eq-right.md) | 155 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `theorem` | [gcd_mul_left_left](declarations/gcd-mul-left-left.md) | 158 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `theorem` | [gcd_mul_left_right](declarations/gcd-mul-left-right.md) | 161 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `theorem` | [gcd_mul_right_left](declarations/gcd-mul-right-left.md) | 164 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `theorem` | [gcd_mul_right_right](declarations/gcd-mul-right-right.md) | 167 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `theorem` | [gcd_gcd_self_right_left](declarations/gcd-gcd-self-right-left.md) | 170 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `theorem` | [gcd_gcd_self_right_right](declarations/gcd-gcd-self-right-right.md) | 173 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `theorem` | [gcd_gcd_self_left_right](declarations/gcd-gcd-self-left-right.md) | 176 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `theorem` | [gcd_gcd_self_left_left](declarations/gcd-gcd-self-left-left.md) | 179 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `theorem` | [gcd_add_mul_self](declarations/gcd-add-mul-self.md) | 182 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `theorem` | [gcd_eq_zero_iff](declarations/gcd-eq-zero-iff.md) | 185 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `theorem` | [gcd_eq_iff](declarations/gcd-eq-iff.md) | 190 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `theorem` | [lcm_comm](declarations/lcm-comm.md) | 204 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `theorem` | [lcm_zero_left](declarations/lcm-zero-left.md) | 207 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `theorem` | [lcm_zero_right](declarations/lcm-zero-right.md) | 209 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `theorem` | [lcm_one_left](declarations/lcm-one-left.md) | 211 | `BLOCKED_NATIVE_ADMISSION` |
| 51 | `theorem` | [lcm_one_right](declarations/lcm-one-right.md) | 213 | `BLOCKED_NATIVE_ADMISSION` |
| 52 | `theorem` | [lcm_self](declarations/lcm-self.md) | 215 | `BLOCKED_NATIVE_ADMISSION` |
| 53 | `theorem` | [dvd_lcm_left](declarations/dvd-lcm-left.md) | 220 | `BLOCKED_NATIVE_ADMISSION` |
| 54 | `theorem` | [dvd_lcm_right](declarations/dvd-lcm-right.md) | 223 | `BLOCKED_NATIVE_ADMISSION` |
| 55 | `theorem` | [gcd_mul_lcm](declarations/gcd-mul-lcm.md) | 225 | `BLOCKED_NATIVE_ADMISSION` |
| 56 | `theorem` | [lcm_dvd](declarations/lcm-dvd.md) | 228 | `BLOCKED_NATIVE_ADMISSION` |
| 57 | `theorem` | [lcm_assoc](declarations/lcm-assoc.md) | 236 | `BLOCKED_NATIVE_ADMISSION` |
| 58 | `theorem` | [lcm_ne_zero](declarations/lcm-ne-zero.md) | 247 | `BLOCKED_NATIVE_ADMISSION` |
| 59 | `instance` | [(anonymous)](declarations/instance.md) | 261 | `BLOCKED_NATIVE_ADMISSION` |
| 60 | `theorem` | [coprime_iff_gcd_eq_one](declarations/coprime-iff-gcd-eq-one.md) | 263 | `BLOCKED_NATIVE_ADMISSION` |
| 61 | `theorem` | [Coprime.gcd_eq_one](declarations/coprime-gcd-eq-one.md) | 265 | `BLOCKED_NATIVE_ADMISSION` |
| 62 | `theorem` | [Coprime.symm](declarations/coprime-symm.md) | 267 | `BLOCKED_NATIVE_ADMISSION` |
| 63 | `theorem` | [coprime_comm](declarations/coprime-comm.md) | 269 | `BLOCKED_NATIVE_ADMISSION` |
| 64 | `theorem` | [Coprime.dvd_of_dvd_mul_right](declarations/coprime-dvd-of-dvd-mul-right.md) | 271 | `BLOCKED_NATIVE_ADMISSION` |
| 65 | `theorem` | [Coprime.dvd_of_dvd_mul_left](declarations/coprime-dvd-of-dvd-mul-left.md) | 275 | `BLOCKED_NATIVE_ADMISSION` |
| 66 | `theorem` | [Coprime.gcd_mul_left_cancel](declarations/coprime-gcd-mul-left-cancel.md) | 278 | `BLOCKED_NATIVE_ADMISSION` |
| 67 | `theorem` | [Coprime.gcd_mul_right_cancel](declarations/coprime-gcd-mul-right-cancel.md) | 285 | `BLOCKED_NATIVE_ADMISSION` |
| 68 | `theorem` | [Coprime.gcd_mul_left_cancel_right](declarations/coprime-gcd-mul-left-cancel-right.md) | 288 | `BLOCKED_NATIVE_ADMISSION` |
| 69 | `theorem` | [Coprime.gcd_mul_right_cancel_right](declarations/coprime-gcd-mul-right-cancel-right.md) | 292 | `BLOCKED_NATIVE_ADMISSION` |
| 70 | `theorem` | [coprime_div_gcd_div_gcd](declarations/coprime-div-gcd-div-gcd.md) | 296 | `BLOCKED_NATIVE_ADMISSION` |
| 71 | `theorem` | [not_coprime_of_dvd_of_dvd](declarations/not-coprime-of-dvd-of-dvd.md) | 300 | `BLOCKED_NATIVE_ADMISSION` |
| 72 | `theorem` | [exists_coprime](declarations/exists-coprime.md) | 304 | `BLOCKED_NATIVE_ADMISSION` |
| 73 | `theorem` | [exists_coprime'](declarations/exists-coprime-source-edition-2.md) | 310 | `BLOCKED_NATIVE_ADMISSION` |
| 74 | `theorem` | [Coprime.mul](declarations/coprime-mul.md) | 314 | `BLOCKED_NATIVE_ADMISSION` |
| 75 | `theorem` | [Coprime.mul_right](declarations/coprime-mul-right.md) | 317 | `BLOCKED_NATIVE_ADMISSION` |
| 76 | `theorem` | [Coprime.coprime_dvd_left](declarations/coprime-coprime-dvd-left.md) | 320 | `BLOCKED_NATIVE_ADMISSION` |
| 77 | `theorem` | [Coprime.coprime_dvd_right](declarations/coprime-coprime-dvd-right.md) | 326 | `BLOCKED_NATIVE_ADMISSION` |
| 78 | `theorem` | [Coprime.coprime_mul_left](declarations/coprime-coprime-mul-left.md) | 329 | `BLOCKED_NATIVE_ADMISSION` |
| 79 | `theorem` | [Coprime.coprime_mul_right](declarations/coprime-coprime-mul-right.md) | 332 | `BLOCKED_NATIVE_ADMISSION` |
| 80 | `theorem` | [Coprime.coprime_mul_left_right](declarations/coprime-coprime-mul-left-right.md) | 335 | `BLOCKED_NATIVE_ADMISSION` |
| 81 | `theorem` | [Coprime.coprime_mul_right_right](declarations/coprime-coprime-mul-right-right.md) | 338 | `BLOCKED_NATIVE_ADMISSION` |
| 82 | `theorem` | [Coprime.coprime_div_left](declarations/coprime-coprime-div-left.md) | 341 | `BLOCKED_NATIVE_ADMISSION` |
| 83 | `theorem` | [Coprime.coprime_div_right](declarations/coprime-coprime-div-right.md) | 353 | `BLOCKED_NATIVE_ADMISSION` |
| 84 | `theorem` | [coprime_mul_iff_left](declarations/coprime-mul-iff-left.md) | 356 | `BLOCKED_NATIVE_ADMISSION` |
| 85 | `theorem` | [coprime_mul_iff_right](declarations/coprime-mul-iff-right.md) | 360 | `BLOCKED_NATIVE_ADMISSION` |
| 86 | `theorem` | [Coprime.gcd_left](declarations/coprime-gcd-left.md) | 363 | `BLOCKED_NATIVE_ADMISSION` |
| 87 | `theorem` | [Coprime.gcd_right](declarations/coprime-gcd-right.md) | 366 | `BLOCKED_NATIVE_ADMISSION` |
| 88 | `theorem` | [Coprime.gcd_both](declarations/coprime-gcd-both.md) | 369 | `BLOCKED_NATIVE_ADMISSION` |
| 89 | `theorem` | [Coprime.mul_dvd_of_dvd_of_dvd](declarations/coprime-mul-dvd-of-dvd-of-dvd.md) | 372 | `BLOCKED_NATIVE_ADMISSION` |
| 90 | `theorem` | [coprime_zero_left](declarations/coprime-zero-left.md) | 376 | `BLOCKED_NATIVE_ADMISSION` |
| 91 | `theorem` | [coprime_zero_right](declarations/coprime-zero-right.md) | 378 | `BLOCKED_NATIVE_ADMISSION` |
| 92 | `theorem` | [coprime_one_left](declarations/coprime-one-left.md) | 380 | `BLOCKED_NATIVE_ADMISSION` |
| 93 | `theorem` | [coprime_one_right](declarations/coprime-one-right.md) | 382 | `BLOCKED_NATIVE_ADMISSION` |
| 94 | `theorem` | [coprime_one_left_eq_true](declarations/coprime-one-left-eq-true.md) | 384 | `BLOCKED_NATIVE_ADMISSION` |
| 95 | `theorem` | [coprime_one_right_eq_true](declarations/coprime-one-right-eq-true.md) | 386 | `BLOCKED_NATIVE_ADMISSION` |
| 96 | `theorem` | [coprime_self](declarations/coprime-self.md) | 388 | `BLOCKED_NATIVE_ADMISSION` |
| 97 | `theorem` | [Coprime.pow_left](declarations/coprime-pow-left.md) | 390 | `BLOCKED_NATIVE_ADMISSION` |
| 98 | `theorem` | [Coprime.pow_right](declarations/coprime-pow-right.md) | 395 | `BLOCKED_NATIVE_ADMISSION` |
| 99 | `theorem` | [Coprime.pow](declarations/coprime-pow.md) | 398 | `BLOCKED_NATIVE_ADMISSION` |
| 100 | `theorem` | [Coprime.eq_one_of_dvd](declarations/coprime-eq-one-of-dvd.md) | 401 | `BLOCKED_NATIVE_ADMISSION` |
| 101 | `def` | [prod_dvd_and_dvd_of_dvd_prod](declarations/prod-dvd-and-dvd-of-dvd-prod.md) | 405 | `BLOCKED_NATIVE_ADMISSION` |
| 102 | `theorem` | [gcd_mul_dvd_mul_gcd](declarations/gcd-mul-dvd-mul-gcd.md) | 418 | `BLOCKED_NATIVE_ADMISSION` |
| 103 | `theorem` | [Coprime.gcd_mul](declarations/coprime-gcd-mul.md) | 427 | `BLOCKED_NATIVE_ADMISSION` |
| 104 | `theorem` | [gcd_mul_gcd_of_coprime_of_mul_eq_mul](declarations/gcd-mul-gcd-of-coprime-of-mul-eq-mul.md) | 434 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=51d0f12759ae5fb9af76bc690f493ce238a49bdb94976c9ee9c7cec31b39c57b -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/ElementaryNumberTheory/GCD/Variantefba33c05333f7105a091840820c3142f4639d0c5e60af139f26ed826face22f.lean","GRWTSK/NumberTheory/ElementaryNumberTheory/Gcd/Variantefba33c05333f7105a091840820c3142f4639d0c5e60af139f26ed826face22f.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
