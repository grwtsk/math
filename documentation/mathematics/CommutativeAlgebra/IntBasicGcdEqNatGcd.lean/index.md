# Int Basic Gcd Eq Nat Gcd

[Complete source index](../../complete-source-index.md) · [Up one directory](../../complete-source-index.md) · [Full source](source.md)

**54 observed declarations and anonymous commands**, 44 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/NumberTheory/ElementaryNumberTheory/Basic/Variant165a0dd642f56fc09b47e333bfb454fff3469a7625f0b131fc6af6ce85fa5981.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `98f5e525eb155df803ab5f3f56db05e6fb71e637`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../_verification/specifications/CommutativeAlgebra/IntBasicGcdEqNatGcd.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `instance` | [(anonymous)](declarations/instance-source-edition-4.md) | 36 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `instance` | [(anonymous)](declarations/instance-source-edition-6.md) | 54 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `instance` | [(anonymous)](declarations/instance-source-edition-2.md) | 60 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `instance` | [(anonymous)](declarations/instance.md) | 70 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [gcd_eq_nat_gcd](declarations/gcd-eq-nat-gcd.md) | 76 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [lcm_eq_nat_lcm](declarations/lcm-eq-nat-lcm.md) | 80 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `instance` | [normalizationMonoid](declarations/normalizationmonoid.md) | 88 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [normUnit_eq](declarations/normunit-eq.md) | 99 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [normalize_of_nonneg](declarations/normalize-of-nonneg.md) | 101 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [normalize_of_nonpos](declarations/normalize-of-nonpos.md) | 105 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [normalize_coe_nat](declarations/normalize-coe-nat.md) | 112 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [abs_eq_normalize](declarations/abs-eq-normalize.md) | 116 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [nonneg_of_normalize_eq_self](declarations/nonneg-of-normalize-eq-self.md) | 120 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [nonneg_iff_normalize_eq_self](declarations/nonneg-iff-normalize-eq-self.md) | 124 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [eq_of_associated_of_nonneg](declarations/eq-of-associated-of-nonneg.md) | 128 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `instance` | [(anonymous)](declarations/instance-source-edition-5.md) | 137 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `instance` | [(anonymous)](declarations/instance-source-edition-3.md) | 149 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [coe_gcd](declarations/coe-gcd.md) | 155 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [coe_lcm](declarations/coe-lcm.md) | 159 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [natAbs_gcd](declarations/natabs-gcd.md) | 163 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [natAbs_lcm](declarations/natabs-lcm.md) | 167 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [exists_unit_of_abs](declarations/exists-unit-of-abs.md) | 173 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [gcd_eq_natAbs](declarations/gcd-eq-natabs.md) | 182 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [gcd_eq_one_iff_coprime](declarations/gcd-eq-one-iff-coprime.md) | 186 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [coprime_iff_nat_coprime](declarations/coprime-iff-nat-coprime.md) | 202 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [gcd_ne_one_iff_gcd_mul_right_ne_one](declarations/gcd-ne-one-iff-gcd-mul-right-ne-one.md) | 207 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [gcd_eq_one_of_gcd_mul_right_eq_one_left](declarations/gcd-eq-one-of-gcd-mul-right-eq-one-left.md) | 214 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [gcd_eq_one_of_gcd_mul_right_eq_one_right](declarations/gcd-eq-one-of-gcd-mul-right-eq-one-right.md) | 221 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [sq_of_gcd_eq_one](declarations/sq-of-gcd-eq-one.md) | 226 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [sq_of_coprime](declarations/sq-of-coprime.md) | 239 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [natAbs_euclideanDomain_gcd](declarations/natabs-euclideandomain-gcd.md) | 244 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `def` | [associatesIntEquivNat](declarations/associatesintequivnat.md) | 256 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [Int.Prime.dvd_mul](declarations/int-prime-dvd-mul.md) | 267 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [Int.Prime.dvd_mul'](declarations/int-prime-dvd-mul-source-edition-2.md) | 272 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `theorem` | [Int.Prime.dvd_pow](declarations/int-prime-dvd-pow.md) | 278 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `theorem` | [Int.Prime.dvd_pow'](declarations/int-prime-dvd-pow-source-edition-2.md) | 284 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `theorem` | [prime_two_or_dvd_of_dvd_two_mul_pow_self_two](declarations/prime-two-or-dvd-of-dvd-two-mul-pow-self-two.md) | 290 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `theorem` | [Int.exists_prime_and_dvd](declarations/int-exists-prime-and-dvd.md) | 300 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `theorem` | [Nat.factors_eq](declarations/nat-factors-eq.md) | 307 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `theorem` | [Nat.factors_multiset_prod_of_irreducible](declarations/nat-factors-multiset-prod-of-irreducible.md) | 320 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `theorem` | [finite_int_iff_natAbs_finite](declarations/finite-int-iff-natabs-finite.md) | 333 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `theorem` | [finite_int_iff](declarations/finite-int-iff.md) | 337 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `instance` | [decidableNat](declarations/decidablenat.md) | 341 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `instance` | [decidableInt](declarations/decidableint.md) | 345 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `theorem` | [induction_on_primes](declarations/induction-on-primes.md) | 351 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `theorem` | [Int.associated_natAbs](declarations/int-associated-natabs.md) | 362 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `theorem` | [Int.prime_iff_natAbs_prime](declarations/int-prime-iff-natabs-prime.md) | 366 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `theorem` | [Int.associated_iff_natAbs](declarations/int-associated-iff-natabs.md) | 370 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `theorem` | [Int.associated_iff](declarations/int-associated-iff.md) | 376 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `theorem` | [zmultiples_natAbs](declarations/zmultiples-natabs.md) | 383 | `BLOCKED_NATIVE_ADMISSION` |
| 51 | `theorem` | [span_natAbs](declarations/span-natabs.md) | 389 | `BLOCKED_NATIVE_ADMISSION` |
| 52 | `theorem` | [eq_pow_of_mul_eq_pow_bit1_left](declarations/eq-pow-of-mul-eq-pow-bit1-left.md) | 397 | `BLOCKED_NATIVE_ADMISSION` |
| 53 | `theorem` | [eq_pow_of_mul_eq_pow_bit1_right](declarations/eq-pow-of-mul-eq-pow-bit1-right.md) | 405 | `BLOCKED_NATIVE_ADMISSION` |
| 54 | `theorem` | [eq_pow_of_mul_eq_pow_bit1](declarations/eq-pow-of-mul-eq-pow-bit1.md) | 410 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=a8303f1da08124533cc0b0b0b8f15bda0f3e5ab53f1839ecc7f77fe903971401 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/ElementaryNumberTheory/Basic/Variant165a0dd642f56fc09b47e333bfb454fff3469a7625f0b131fc6af6ce85fa5981.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
