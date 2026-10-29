# Factorization Basic Public

[Complete source index](../../../complete-source-index.md) · [Up one directory](../../../complete-source-index.md) · [Full source](source.md)

**78 observed declarations and anonymous commands**, 78 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/NumberTheory/ElementaryNumberTheory/Basic/Variantfbab02352450a903c8bd690dfbae471d2c1a834ff077ef474317fa4f9c192edb.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `33ebfe9b25f9b23edaea0893f627d77efb54f86a`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/NumberTheory/ElementaryNumberTheory/FactorizationBasicPublic.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `theorem` | [factorization_eq_zero_of_lt](declarations/factorization-eq-zero-of-lt.md) | 28 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `theorem` | [dvd_of_factorization_pos](declarations/dvd-of-factorization-pos.md) | 31 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `theorem` | [factorization_eq_zero_iff_remainder](declarations/factorization-eq-zero-iff-remainder.md) | 34 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `theorem` | [factorization_eq_zero_iff'](declarations/factorization-eq-zero-iff.md) | 45 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [factorization_prod_apply](declarations/factorization-prod-apply.md) | 52 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `lemma` | [prod_factorization_eq_prod_primeFactors](declarations/prod-factorization-eq-prod-primefactors.md) | 58 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `lemma` | [prod_primeFactors_prod_factorization](declarations/prod-primefactors-prod-factorization.md) | 62 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [Prime.factorization_self](declarations/prime-factorization-self.md) | 68 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [factorization_pow_self](declarations/factorization-pow-self.md) | 70 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [eq_pow_of_factorization_eq_single](declarations/eq-pow-of-factorization-eq-single.md) | 74 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [Prime.eq_of_factorization_pos](declarations/prime-eq-of-factorization-pos.md) | 80 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [factorizationEquiv_inv_apply](declarations/factorizationequiv-inv-apply.md) | 87 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [ordProj_of_not_prime](declarations/ordproj-of-not-prime.md) | 91 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [ordCompl_of_not_prime](declarations/ordcompl-of-not-prime.md) | 94 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [ordCompl_dvd](declarations/ordcompl-dvd.md) | 97 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [ordProj_pos](declarations/ordproj-pos.md) | 100 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [ordProj_le](declarations/ordproj-le.md) | 103 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [ordCompl_pos](declarations/ordcompl-pos.md) | 106 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [ordCompl_le](declarations/ordcompl-le.md) | 112 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [ordProj_mul_ordCompl_eq_self](declarations/ordproj-mul-ordcompl-eq-self.md) | 115 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [ordProj_mul](declarations/ordproj-mul.md) | 118 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [ordCompl_mul](declarations/ordcompl-mul.md) | 122 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [factorization_lt](declarations/factorization-lt.md) | 131 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [mul_factorization_le](declarations/mul-factorization-le.md) | 138 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [factorization_le_of_le_pow](declarations/factorization-le-of-le-pow.md) | 142 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [factorization_prime_le_iff_dvd](declarations/factorization-prime-le-iff-dvd.md) | 149 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [factorization_le_factorization_mul_left](declarations/factorization-le-factorization-mul-left.md) | 156 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [factorization_le_factorization_mul_right](declarations/factorization-le-factorization-mul-right.md) | 163 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [Prime.pow_dvd_iff_le_factorization](declarations/prime-pow-dvd-iff-le-factorization.md) | 168 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [Prime.pow_dvd_iff_dvd_ordProj](declarations/prime-pow-dvd-iff-dvd-ordproj.md) | 172 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [Prime.dvd_iff_one_le_factorization](declarations/prime-dvd-iff-one-le-factorization.md) | 176 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [exists_factorization_lt_of_lt](declarations/exists-factorization-lt-of-lt.md) | 180 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [factorization_div](declarations/factorization-div.md) | 188 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [dvd_ordProj_of_dvd](declarations/dvd-ordproj-of-dvd.md) | 198 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `theorem` | [not_dvd_ordCompl](declarations/not-dvd-ordcompl.md) | 201 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `theorem` | [coprime_ordCompl](declarations/coprime-ordcompl.md) | 206 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `theorem` | [factorization_ordCompl](declarations/factorization-ordcompl.md) | 209 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `theorem` | [ordProj_self_pow](declarations/ordproj-self-pow.md) | 221 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `theorem` | [ordCompl_self_pow](declarations/ordcompl-self-pow.md) | 224 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `theorem` | [ordCompl_self_pow_mul](declarations/ordcompl-self-pow-mul.md) | 230 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `theorem` | [ordCompl_eq_self_iff_zero_or_not_dvd](declarations/ordcompl-eq-self-iff-zero-or-not-dvd.md) | 234 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `theorem` | [ordCompl_pow_mul_of_not_dvd](declarations/ordcompl-pow-mul-of-not-dvd.md) | 247 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `theorem` | [ordCompl_pow_mul_eq_self_iff](declarations/ordcompl-pow-mul-eq-self-iff.md) | 252 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `theorem` | [ordCompl_div_pow_of_dvd](declarations/ordcompl-div-pow-of-dvd.md) | 256 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `theorem` | [ordCompl_div_of_dvd](declarations/ordcompl-div-of-dvd.md) | 261 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `theorem` | [dvd_ordCompl_of_dvd_not_dvd](declarations/dvd-ordcompl-of-dvd-not-dvd.md) | 266 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `theorem` | [exists_eq_pow_mul_and_not_dvd](declarations/exists-eq-pow-mul-and-not-dvd.md) | 279 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `theorem` | [exists_eq_two_pow_mul_odd](declarations/exists-eq-two-pow-mul-odd.md) | 287 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `theorem` | [dvd_iff_div_factorization_eq_tsub](declarations/dvd-iff-div-factorization-eq-tsub.md) | 292 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `theorem` | [ordProj_dvd_ordProj_of_dvd](declarations/ordproj-dvd-ordproj-of-dvd.md) | 304 | `BLOCKED_NATIVE_ADMISSION` |
| 51 | `theorem` | [ordCompl_dvd_ordCompl_of_dvd](declarations/ordcompl-dvd-ordcompl-of-dvd.md) | 311 | `BLOCKED_NATIVE_ADMISSION` |
| 52 | `theorem` | [ordCompl_dvd_ordCompl_iff_dvd](declarations/ordcompl-dvd-ordcompl-iff-dvd.md) | 328 | `BLOCKED_NATIVE_ADMISSION` |
| 53 | `theorem` | [dvd_iff_prime_pow_dvd_dvd](declarations/dvd-iff-prime-pow-dvd-dvd.md) | 341 | `BLOCKED_NATIVE_ADMISSION` |
| 54 | `theorem` | [prod_primeFactors_dvd](declarations/prod-primefactors-dvd.md) | 354 | `BLOCKED_NATIVE_ADMISSION` |
| 55 | `theorem` | [factorization_gcd](declarations/factorization-gcd.md) | 360 | `BLOCKED_NATIVE_ADMISSION` |
| 56 | `theorem` | [factorization_lcm](declarations/factorization-lcm.md) | 375 | `BLOCKED_NATIVE_ADMISSION` |
| 57 | `theorem` | [prod_primeFactors_gcd_mul_prod_primeFactors_mul](declarations/prod-primefactors-gcd-mul-prod-primefactors-mul.md) | 384 | `BLOCKED_NATIVE_ADMISSION` |
| 58 | `theorem` | [setOfPred_pow_dvd_eq_Icc_factorization](declarations/setofpred-pow-dvd-eq-icc-factorization.md) | 394 | `BLOCKED_NATIVE_ADMISSION` |
| 59 | `theorem` | [Icc_factorization_eq_pow_dvd](declarations/icc-factorization-eq-pow-dvd.md) | 404 | `BLOCKED_NATIVE_ADMISSION` |
| 60 | `theorem` | [factorization_eq_card_pow_dvd](declarations/factorization-eq-card-pow-dvd.md) | 413 | `BLOCKED_NATIVE_ADMISSION` |
| 61 | `theorem` | [Ico_filter_pow_dvd_eq](declarations/ico-filter-pow-dvd-eq.md) | 417 | `BLOCKED_NATIVE_ADMISSION` |
| 62 | `theorem` | [Ico_pow_dvd_eq_Ico_of_lt](declarations/ico-pow-dvd-eq-ico-of-lt.md) | 425 | `BLOCKED_NATIVE_ADMISSION` |
| 63 | `theorem` | [factorization_eq_card_pow_dvd_of_lt](declarations/factorization-eq-card-pow-dvd-of-lt.md) | 439 | `BLOCKED_NATIVE_ADMISSION` |
| 64 | `theorem` | [factorization_eq_of_coprime_left](declarations/factorization-eq-of-coprime-left.md) | 448 | `BLOCKED_NATIVE_ADMISSION` |
| 65 | `theorem` | [factorization_eq_of_coprime_right](declarations/factorization-eq-of-coprime-right.md) | 456 | `BLOCKED_NATIVE_ADMISSION` |
| 66 | `theorem` | [eq_iff_prime_padicValNat_eq](declarations/eq-iff-prime-padicvalnat-eq.md) | 462 | `BLOCKED_NATIVE_ADMISSION` |
| 67 | `theorem` | [prod_pow_prime_padicValNat](declarations/prod-pow-prime-padicvalnat.md) | 473 | `BLOCKED_NATIVE_ADMISSION` |
| 68 | `theorem` | [prod_primeFactors_pow_factorization](declarations/prod-primefactors-pow-factorization.md) | 487 | `BLOCKED_NATIVE_ADMISSION` |
| 69 | `lemma` | [prod_primeFactors_coe_pow_factorization](declarations/prod-primefactors-coe-pow-factorization.md) | 491 | `BLOCKED_NATIVE_ADMISSION` |
| 70 | `lemma` | [pairwise_coprime_pow_primeFactors_factorization](declarations/pairwise-coprime-pow-primefactors-factorization.md) | 498 | `BLOCKED_NATIVE_ADMISSION` |
| 71 | `theorem` | [dvd_prod_primeFactors_pow_self](declarations/dvd-prod-primefactors-pow-self.md) | 506 | `BLOCKED_NATIVE_ADMISSION` |
| 72 | `theorem` | [dvd_pow_self_iff](declarations/dvd-pow-self-iff.md) | 512 | `BLOCKED_NATIVE_ADMISSION` |
| 73 | `theorem` | [exists_dvd_pow_iff](declarations/exists-dvd-pow-iff.md) | 518 | `BLOCKED_NATIVE_ADMISSION` |
| 74 | `theorem` | [card_multiples](declarations/card-multiples.md) | 530 | `BLOCKED_NATIVE_ADMISSION` |
| 75 | `theorem` | [Ioc_filter_dvd_card_eq_div](declarations/ioc-filter-dvd-card-eq-div.md) | 538 | `BLOCKED_NATIVE_ADMISSION` |
| 76 | `lemma` | [card_multiples'](declarations/card-multiples-source-edition-2.md) | 544 | `BLOCKED_NATIVE_ADMISSION` |
| 77 | `theorem` | [exists_eq_pow_of_exponent_coprime_of_pow_eq_pow](declarations/exists-eq-pow-of-exponent-coprime-of-pow-eq-pow.md) | 553 | `BLOCKED_NATIVE_ADMISSION` |
| 78 | `theorem` | [exists_eq_pow_of_pow_eq_pow](declarations/exists-eq-pow-of-pow-eq-pow.md) | 582 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=6a8129760fecc0fe1fa2ef4243ec029889ec9e115de5f11b64efb76cd52f33de -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/ElementaryNumberTheory/Basic/Variantfbab02352450a903c8bd690dfbae471d2c1a834ff077ef474317fa4f9c192edb.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
