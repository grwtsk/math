# PNat Prime

[Complete source index](../../../../complete-source-index.md) · [Up one directory](../../../../complete-source-index.md) · [Full source](source.md)

**49 observed declarations and anonymous commands**, 43 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/NumberTheory/ElementaryNumberTheory/Prime/Variantbe1fb913bd77c6e39f30f2b65930ea203898a9874c9c2f17e47eaf17fbf9dc39.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `ad9cc5364822d40c2c75b1c5a44992485ab146d5`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../_verification/specifications/ComputerScience/TheoryOfData/DataStructures/PNatPrime.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [toPNat](declarations/topnat.md) | 23 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `instance` | [coePNat](declarations/coepnat.md) | 26 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `theorem` | [coe_pnat_nat](declarations/coe-pnat-nat.md) | 31 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `theorem` | [coe_pnat_injective](declarations/coe-pnat-injective.md) | 35 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [coe_pnat_inj](declarations/coe-pnat-inj.md) | 40 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `def` | [gcd](declarations/gcd.md) | 52 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `def` | [lcm](declarations/lcm.md) | 58 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [gcd_coe](declarations/gcd-coe.md) | 66 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [lcm_coe](declarations/lcm-coe.md) | 71 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [gcd_dvd_left](declarations/gcd-dvd-left.md) | 75 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [gcd_dvd_right](declarations/gcd-dvd-right.md) | 79 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [dvd_gcd](declarations/dvd-gcd.md) | 83 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [dvd_lcm_left](declarations/dvd-lcm-left.md) | 87 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [dvd_lcm_right](declarations/dvd-lcm-right.md) | 91 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [lcm_dvd](declarations/lcm-dvd.md) | 95 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [gcd_mul_lcm](declarations/gcd-mul-lcm.md) | 99 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [eq_one_of_lt_two](declarations/eq-one-of-lt-two.md) | 103 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `def` | [Prime](declarations/prime.md) | 114 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [Prime.one_lt](declarations/prime-one-lt.md) | 118 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [prime_two](declarations/prime-two.md) | 122 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [dvd_prime](declarations/dvd-prime.md) | 126 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [Prime.ne_one](declarations/prime-ne-one.md) | 132 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [not_prime_one](declarations/not-prime-one.md) | 141 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [Prime.not_dvd_one](declarations/prime-not-dvd-one.md) | 145 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [exists_prime_and_dvd](declarations/exists-prime-and-dvd.md) | 150 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `def` | [Coprime](declarations/coprime.md) | 163 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [coprime_coe](declarations/coprime-coe.md) | 168 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [Coprime.mul](declarations/coprime-mul.md) | 174 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [Coprime.mul_right](declarations/coprime-mul-right.md) | 180 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [gcd_comm](declarations/gcd-comm.md) | 186 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [gcd_eq_left_iff_dvd](declarations/gcd-eq-left-iff-dvd.md) | 192 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [gcd_eq_right_iff_dvd](declarations/gcd-eq-right-iff-dvd.md) | 199 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [Coprime.gcd_mul_left_cancel](declarations/coprime-gcd-mul-left-cancel.md) | 204 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [Coprime.gcd_mul_right_cancel](declarations/coprime-gcd-mul-right-cancel.md) | 210 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `theorem` | [Coprime.gcd_mul_left_cancel_right](declarations/coprime-gcd-mul-left-cancel-right.md) | 214 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `theorem` | [Coprime.gcd_mul_right_cancel_right](declarations/coprime-gcd-mul-right-cancel-right.md) | 220 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `theorem` | [one_gcd](declarations/one-gcd.md) | 227 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `theorem` | [gcd_one](declarations/gcd-one.md) | 233 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `theorem` | [Coprime.symm](declarations/coprime-symm.md) | 239 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `theorem` | [one_coprime](declarations/one-coprime.md) | 246 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `theorem` | [coprime_one](declarations/coprime-one.md) | 251 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `theorem` | [Coprime.coprime_dvd_left](declarations/coprime-coprime-dvd-left.md) | 255 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `theorem` | [Coprime.factor_eq_gcd_left](declarations/coprime-factor-eq-gcd-left.md) | 261 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `theorem` | [Coprime.factor_eq_gcd_right](declarations/coprime-factor-eq-gcd-right.md) | 270 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `theorem` | [Coprime.factor_eq_gcd_left_right](declarations/coprime-factor-eq-gcd-left-right.md) | 274 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `theorem` | [Coprime.factor_eq_gcd_right_right](declarations/coprime-factor-eq-gcd-right-right.md) | 278 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `theorem` | [Coprime.gcd_mul](declarations/coprime-gcd-mul.md) | 284 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `theorem` | [gcd_eq_left](declarations/gcd-eq-left.md) | 290 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `theorem` | [Coprime.pow](declarations/coprime-pow.md) | 298 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=000e9749a4e5e8911a106e01cf58289685f153dfaf6cef8af62826d3fdde9bbd -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/ElementaryNumberTheory/Prime/Variantbe1fb913bd77c6e39f30f2b65930ea203898a9874c9c2f17e47eaf17fbf9dc39.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
