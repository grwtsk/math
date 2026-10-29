# Iwaniec Kowalski Ch1 Two Pow Omega Le Sigma Zero

[Complete source index](../../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**80 observed declarations and anonymous commands**, 70 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/IwaniecKowalskiCh1/Variantc39d8a2cc2e7ade486261c02ce7fd99d32a83631353ad661af9d9c10b69c0f49.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `cf9bfc459f0e3cd584d2ef9726e580780198b141`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../_verification/specifications/NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/IwaniecKowalskiCh1TwoPowOmegaLeSigmaZero.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `abbrev` | [tau](declarations/tau.md) | 29 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `def` | [IsAdditive](declarations/isadditive.md) | 43 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `def` | [IsCompletelyAdditive](declarations/iscompletelyadditive.md) | 50 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `lemma` | [IsCompletelyAdditive.isAdditive](declarations/iscompletelyadditive-isadditive.md) | 57 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `lemma` | [unique_divisor_decomposition](declarations/unique-divisor-decomposition.md) | 74 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [sum_divisors_mul_of_coprime](declarations/sum-divisors-mul-of-coprime.md) | 91 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [sum_moebius_pmul_eq_prod_one_sub](declarations/sum-moebius-pmul-eq-prod-one-sub.md) | 112 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [zeta_mul_zeta](declarations/zeta-mul-zeta.md) | 157 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [LSeries_tau_eq_riemannZeta_sq](declarations/lseries-tau-eq-riemannzeta-sq.md) | 179 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `def` | [d](declarations/d.md) | 196 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [d_zero](declarations/d-zero.md) | 206 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [d_one](declarations/d-one.md) | 216 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [d_two](declarations/d-two.md) | 226 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [d_succ](declarations/d-succ.md) | 236 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [LSeries_d_summable](declarations/lseries-d-summable.md) | 246 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [LSeries_d_eq_riemannZeta_pow](declarations/lseries-d-eq-riemannzeta-pow.md) | 265 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [d_isMultiplicative](declarations/d-ismultiplicative.md) | 290 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [Nat.sum_divisorsAntidiagonal_prime_pow](declarations/nat-sum-divisorsantidiagonal-prime-pow.md) | 298 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [d_apply_prime_pow](declarations/d-apply-prime-pow.md) | 310 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `lemma` | [d_apply](declarations/d-apply.md) | 340 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `def` | [sigmaR](declarations/sigmar.md) | 352 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `lemma` | [sigmaR_natCast](declarations/sigmar-natcast-source-edition-2.md) | 372 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `lemma` | [sigmaR_apply](declarations/sigmar-apply.md) | 386 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `lemma` | [sigmaR_natCast'](declarations/sigmar-natcast.md) | 395 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `lemma` | [sigmaR_apply_prime_pow](declarations/sigmar-apply-prime-pow.md) | 409 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `lemma` | [sigmaR_one_apply](declarations/sigmar-one-apply.md) | 422 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `lemma` | [sigmaR_one_apply_prime_pow](declarations/sigmar-one-apply-prime-pow.md) | 431 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `lemma` | [sigmaR_eq_sum_div](declarations/sigmar-eq-sum-div.md) | 446 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `lemma` | [sigmaR_zero_apply](declarations/sigmar-zero-apply.md) | 459 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `lemma` | [sigmaR_zero_apply_prime_pow](declarations/sigmar-zero-apply-prime-pow.md) | 469 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `lemma` | [sigmaR_one](declarations/sigmar-one.md) | 484 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `def` | [powR](declarations/powr.md) | 492 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [isMultiplicative_powR](declarations/ismultiplicative-powr.md) | 504 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `lemma` | [sigmaR_eq_zeta_mul_powR](declarations/sigmar-eq-zeta-mul-powr.md) | 523 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `lemma` | [isMultiplicative_sigmaR](declarations/ismultiplicative-sigmar.md) | 542 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `lemma` | [sigmaR_eq_prod_primeFactors_sum_range_factorization_pow_mul](declarations/sigmar-eq-prod-primefactors-sum-range-factorization-pow-mul.md) | 559 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `lemma` | [LSeries_powR_eq](declarations/lseries-powr-eq.md) | 576 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `lemma` | [abscissa_powR_le](declarations/abscissa-powr-le.md) | 598 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `theorem` | [LSeries_sigma_eq_riemannZeta_mul](declarations/lseries-sigma-eq-riemannzeta-mul.md) | 614 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `theorem` | [zeta_mul_zeta_mul_zeta_mul_zeta_eq](declarations/zeta-mul-zeta-mul-zeta-mul-zeta-eq.md) | 638 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `theorem` | [zeta_pow_four_eq](declarations/zeta-pow-four-eq.md) | 657 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `lemma` | [zeta_mul_tau_square_eq](declarations/zeta-mul-tau-square-eq.md) | 680 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `lemma` | [zeta_pow_three_eq](declarations/zeta-pow-three-eq.md) | 698 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `lemma` | [zeta_pow_three_eq_alt](declarations/zeta-pow-three-eq-alt.md) | 718 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `lemma` | [two_pow_omega_le_sigma_zero](declarations/two-pow-omega-le-sigma-zero.md) | 738 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `lemma` | [LSeriesSummable.of_norm_le_norm](declarations/lseriessummable-of-norm-le-norm.md) | 756 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `lemma` | [LSeriesSummable_two_pow_omega](declarations/lseriessummable-two-pow-omega.md) | 775 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `lemma` | [LSeries.term_isMultiplicative_if_fun_isMultiplicative](declarations/lseries-term-ismultiplicative-if-fun-ismultiplicative.md) | 798 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `lemma` | [powOfAdditive_isMultiplicative](declarations/powofadditive-ismultiplicative.md) | 817 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `lemma` | [two_pow_omega_isMultiplicative](declarations/two-pow-omega-ismultiplicative.md) | 840 | `BLOCKED_NATIVE_ADMISSION` |
| 51 | `lemma` | [two_pow_omega_LSeries.term_isMultiplicative](declarations/two-pow-omega-lseries-term-ismultiplicative.md) | 854 | `BLOCKED_NATIVE_ADMISSION` |
| 52 | `def` | [sumOnPrimePows](declarations/sumonprimepows.md) | 865 | `BLOCKED_NATIVE_ADMISSION` |
| 53 | `lemma` | [sumOnPrimePows_apply](declarations/sumonprimepows-apply.md) | 873 | `BLOCKED_NATIVE_ADMISSION` |
| 54 | `lemma` | [two_pow_omega_tsum_prime_pow](declarations/two-pow-omega-tsum-prime-pow.md) | 889 | `BLOCKED_NATIVE_ADMISSION` |
| 55 | `lemma` | [Complex.one_add_prime_cpow_ne_zero](declarations/complex-one-add-prime-cpow-ne-zero.md) | 929 | `BLOCKED_NATIVE_ADMISSION` |
| 56 | `lemma` | [two_pow_omega_LSeries_eulerProduct_tprod](declarations/two-pow-omega-lseries-eulerproduct-tprod.md) | 952 | `BLOCKED_NATIVE_ADMISSION` |
| 57 | `lemma` | [two_pow_omega_LSeries_eulerProduct_hasProd](declarations/two-pow-omega-lseries-eulerproduct-hasprod.md) | 977 | `BLOCKED_NATIVE_ADMISSION` |
| 58 | `lemma` | [zeta_pow_two](declarations/zeta-pow-two.md) | 1011 | `BLOCKED_NATIVE_ADMISSION` |
| 59 | `lemma` | [LSeriesSummable_moebius_sq](declarations/lseriessummable-moebius-sq.md) | 1039 | `BLOCKED_NATIVE_ADMISSION` |
| 60 | `lemma` | [powOfMultiplicative_isMultiplicative](declarations/powofmultiplicative-ismultiplicative.md) | 1063 | `BLOCKED_NATIVE_ADMISSION` |
| 61 | `lemma` | [moebius_sq_LSeries.term_isMultiplicative](declarations/moebius-sq-lseries-term-ismultiplicative.md) | 1082 | `BLOCKED_NATIVE_ADMISSION` |
| 62 | `lemma` | [moebius_sq_tsum_prime_pow](declarations/moebius-sq-tsum-prime-pow.md) | 1099 | `BLOCKED_NATIVE_ADMISSION` |
| 63 | `lemma` | [moebius_sq_LSeries_eulerProduct_tprod](declarations/moebius-sq-lseries-eulerproduct-tprod.md) | 1140 | `BLOCKED_NATIVE_ADMISSION` |
| 64 | `lemma` | [moebius_sq_LSeries_eulerProduct_hasProd](declarations/moebius-sq-lseries-eulerproduct-hasprod.md) | 1166 | `BLOCKED_NATIVE_ADMISSION` |
| 65 | `lemma` | [zeta_alt](declarations/zeta-alt.md) | 1195 | `BLOCKED_NATIVE_ADMISSION` |
| 66 | `lemma` | [pow_divisors_mul](declarations/pow-divisors-mul.md) | 1228 | `BLOCKED_NATIVE_ADMISSION` |
| 67 | `lemma` | [divisors_mul_injective](declarations/divisors-mul-injective.md) | 1259 | `BLOCKED_NATIVE_ADMISSION` |
| 68 | `lemma` | [pow_divisors_mul_injective](declarations/pow-divisors-mul-injective.md) | 1277 | `BLOCKED_NATIVE_ADMISSION` |
| 69 | `def` | [sum_moebius_sq_divisors](declarations/sum-moebius-sq-divisors.md) | 1288 | `BLOCKED_NATIVE_ADMISSION` |
| 70 | `lemma` | [sum_moebius_sq_divisors_apply](declarations/sum-moebius-sq-divisors-apply.md) | 1296 | `BLOCKED_NATIVE_ADMISSION` |
| 71 | `lemma` | [sum_moebius_sq_divisors_IsMultiplicative](declarations/sum-moebius-sq-divisors-ismultiplicative.md) | 1310 | `BLOCKED_NATIVE_ADMISSION` |
| 72 | `lemma` | [sum_moebius_sq_divisors_apply_prime_pow](declarations/sum-moebius-sq-divisors-apply-prime-pow.md) | 1342 | `BLOCKED_NATIVE_ADMISSION` |
| 73 | `lemma` | [moebius_sq_eq](declarations/moebius-sq-eq.md) | 1374 | `BLOCKED_NATIVE_ADMISSION` |
| 74 | `def` | [liouville](declarations/liouville.md) | 1394 | `BLOCKED_NATIVE_ADMISSION` |
| 75 | `def` | [IsCompletelyMultiplicative](declarations/iscompletelymultiplicative.md) | 1406 | `BLOCKED_NATIVE_ADMISSION` |
| 76 | `lemma` | [IsCompletelyMultiplicative.isMultiplicative](declarations/iscompletelymultiplicative-ismultiplicative.md) | 1417 | `BLOCKED_NATIVE_ADMISSION` |
| 77 | `lemma` | [isCompletelyMultiplicative_liouville](declarations/iscompletelymultiplicative-liouville.md) | 1429 | `BLOCKED_NATIVE_ADMISSION` |
| 78 | `lemma` | [LSeries_liouville_eq](declarations/lseries-liouville-eq.md) | 1444 | `BLOCKED_NATIVE_ADMISSION` |
| 79 | `lemma` | [liouville_eq_moebius_on_squarefree](declarations/liouville-eq-moebius-on-squarefree.md) | 1456 | `BLOCKED_NATIVE_ADMISSION` |
| 80 | `lemma` | [LSeries_totient_eq](declarations/lseries-totient-eq.md) | 1474 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=e343a594a734402803dc629379674718384fa1af5e546e3cb365265fadfb1c5e -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/IwaniecKowalskiCh1/Variantc39d8a2cc2e7ade486261c02ce7fd99d32a83631353ad661af9d9c10b69c0f49.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
