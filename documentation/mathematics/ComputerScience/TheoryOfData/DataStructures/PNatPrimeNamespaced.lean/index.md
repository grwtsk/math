# PNat Prime Namespaced

[Complete source index](../../../../complete-source-index.md) · [Up one directory](../../../../complete-source-index.md) · [Full source](source.md)

**49 observed declarations and anonymous commands**, 43 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/NumberTheory/ElementaryNumberTheory/Prime/Varianteac85875e4608bfd16f541a1c79a91c76f1bead2821f951f5d7261995d9476b3.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `850acdd142cdbf01392032deb17292307a293c74`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../_verification/specifications/ComputerScience/TheoryOfData/DataStructures/PNatPrimeNamespaced.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [toPNat](declarations/topnat.md) | 31 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `instance` | [coePNat](declarations/coepnat.md) | 34 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `theorem` | [coe_pnat_nat](declarations/coe-pnat-nat.md) | 39 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `theorem` | [coe_pnat_injective](declarations/coe-pnat-injective.md) | 43 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [coe_pnat_inj](declarations/coe-pnat-inj.md) | 48 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `def` | [gcd](declarations/gcd.md) | 60 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `def` | [lcm](declarations/lcm.md) | 66 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [gcd_coe](declarations/gcd-coe.md) | 74 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [lcm_coe](declarations/lcm-coe.md) | 79 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [gcd_dvd_left](declarations/gcd-dvd-left.md) | 83 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [gcd_dvd_right](declarations/gcd-dvd-right.md) | 87 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [dvd_gcd](declarations/dvd-gcd.md) | 91 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [dvd_lcm_left](declarations/dvd-lcm-left.md) | 95 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [dvd_lcm_right](declarations/dvd-lcm-right.md) | 99 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [lcm_dvd](declarations/lcm-dvd.md) | 103 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [gcd_mul_lcm](declarations/gcd-mul-lcm.md) | 107 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [eq_one_of_lt_two](declarations/eq-one-of-lt-two.md) | 111 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `def` | [Prime](declarations/prime.md) | 122 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [Prime.one_lt](declarations/prime-one-lt.md) | 126 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [prime_two](declarations/prime-two.md) | 130 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [dvd_prime](declarations/dvd-prime.md) | 134 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [Prime.ne_one](declarations/prime-ne-one.md) | 140 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [not_prime_one](declarations/not-prime-one.md) | 149 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [Prime.not_dvd_one](declarations/prime-not-dvd-one.md) | 153 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [exists_prime_and_dvd](declarations/exists-prime-and-dvd.md) | 158 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `def` | [Coprime](declarations/coprime.md) | 171 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [coprime_coe](declarations/coprime-coe.md) | 176 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [Coprime.mul](declarations/coprime-mul.md) | 182 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [Coprime.mul_right](declarations/coprime-mul-right.md) | 188 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [gcd_comm](declarations/gcd-comm.md) | 194 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [gcd_eq_left_iff_dvd](declarations/gcd-eq-left-iff-dvd.md) | 200 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [gcd_eq_right_iff_dvd](declarations/gcd-eq-right-iff-dvd.md) | 207 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [Coprime.gcd_mul_left_cancel](declarations/coprime-gcd-mul-left-cancel.md) | 212 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [Coprime.gcd_mul_right_cancel](declarations/coprime-gcd-mul-right-cancel.md) | 218 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `theorem` | [Coprime.gcd_mul_left_cancel_right](declarations/coprime-gcd-mul-left-cancel-right.md) | 222 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `theorem` | [Coprime.gcd_mul_right_cancel_right](declarations/coprime-gcd-mul-right-cancel-right.md) | 228 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `theorem` | [one_gcd](declarations/one-gcd.md) | 235 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `theorem` | [gcd_one](declarations/gcd-one.md) | 241 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `theorem` | [Coprime.symm](declarations/coprime-symm.md) | 247 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `theorem` | [one_coprime](declarations/one-coprime.md) | 254 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `theorem` | [coprime_one](declarations/coprime-one.md) | 259 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `theorem` | [Coprime.coprime_dvd_left](declarations/coprime-coprime-dvd-left.md) | 263 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `theorem` | [Coprime.factor_eq_gcd_left](declarations/coprime-factor-eq-gcd-left.md) | 269 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `theorem` | [Coprime.factor_eq_gcd_right](declarations/coprime-factor-eq-gcd-right.md) | 278 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `theorem` | [Coprime.factor_eq_gcd_left_right](declarations/coprime-factor-eq-gcd-left-right.md) | 282 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `theorem` | [Coprime.factor_eq_gcd_right_right](declarations/coprime-factor-eq-gcd-right-right.md) | 286 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `theorem` | [Coprime.gcd_mul](declarations/coprime-gcd-mul.md) | 292 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `theorem` | [gcd_eq_left](declarations/gcd-eq-left.md) | 298 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `theorem` | [Coprime.pow](declarations/coprime-pow.md) | 306 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=8012465af6bbec437c97f6a5fb9207eff52d8234a0f4e4f16c29235580832e3a -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/ElementaryNumberTheory/Prime/Varianteac85875e4608bfd16f541a1c79a91c76f1bead2821f951f5d7261995d9476b3.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
