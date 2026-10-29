# Selberg Sieve Namespaced Public

[Complete source index](../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**33 observed declarations and anonymous commands**, 22 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/SelbergSieve/Variant99b6499f37325ff12a914052565c0ccacbd626b01fb3fda100964aecc51c68f3.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `3b65487ee5ff875948d7dad4be7a3f00b83ca5d0`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../_verification/specifications/NumberTheory/SelbergSieveNamespacedPublic.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `structure` | [BoundingSieve](declarations/boundingsieve.md) | 61 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `structure` | [SelbergSieve](declarations/selbergsieve.md) | 85 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `def` | [evalBoundingSieveWeights](declarations/evalboundingsieveweights.md) | 100 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `theorem` | [one_le_y](declarations/one-le-y.md) | 113 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [prodPrimes_ne_zero](declarations/prodprimes-ne-zero.md) | 119 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [squarefree_of_dvd_prodPrimes](declarations/squarefree-of-dvd-prodprimes.md) | 122 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [squarefree_of_mem_divisors_prodPrimes](declarations/squarefree-of-mem-divisors-prodprimes.md) | 125 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [prod_primeFactors_nu](declarations/prod-primefactors-nu.md) | 132 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [nu_pos_of_dvd_prodPrimes](declarations/nu-pos-of-dvd-prodprimes.md) | 137 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [nu_ne_zero](declarations/nu-ne-zero.md) | 147 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [nu_lt_one_of_dvd_prodPrimes](declarations/nu-lt-one-of-dvd-prodprimes.md) | 151 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `def` | [multSum](declarations/multsum.md) | 170 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `def` | [rem](declarations/rem.md) | 176 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `def` | [siftedSum](declarations/siftedsum.md) | 179 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `def` | [mainSum](declarations/mainsum.md) | 182 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `def` | [errSum](declarations/errsum.md) | 185 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [multSum_eq_main_err](declarations/multsum-eq-main-err.md) | 187 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [siftedSum_eq_sum_support_mul_ite](declarations/siftedsum-eq-sum-support-mul-ite.md) | 191 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `def` | [IsUpperMoebius](declarations/isuppermoebius.md) | 199 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [siftedSum_le_sum_of_upperMoebius](declarations/siftedsum-le-sum-of-uppermoebius.md) | 202 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [siftedSum_le_mainSum_errSum_of_upperMoebius](declarations/siftedsum-le-mainsum-errsum-of-uppermoebius.md) | 224 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `def` | [lambdaSquared](declarations/lambdasquared.md) | 244 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [sum_divisors_lambda_sq_larger_sum](declarations/sum-divisors-lambda-sq-larger-sum.md) | 247 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [upperMoebius_lambdaSquared](declarations/uppermoebius-lambdasquared.md) | 258 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `def` | [selbergTerms](declarations/selbergterms.md) | 284 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [selbergTerms_apply](declarations/selbergterms-apply.md) | 287 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [selbergTerms_pos](declarations/selbergterms-pos.md) | 296 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [selbergTerms_isMultiplicative](declarations/selbergterms-ismultiplicative.md) | 304 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [inv_selbergTerms_eq_sum_divisors_moebius_nu](declarations/inv-selbergterms-eq-sum-divisors-moebius-nu.md) | 308 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [nu_inv_eq_sum_divisors_inv_selbergTerms](declarations/nu-inv-eq-sum-divisors-inv-selbergterms.md) | 320 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [sum_divisors_selbergTerms_eq_selbergTerms_mul_nu_inv](declarations/sum-divisors-selbergterms-eq-selbergterms-mul-nu-inv.md) | 331 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [mainSum_lambdaSquared_eq_sum_sum_mul](declarations/mainsum-lambdasquared-eq-sum-sum-mul.md) | 357 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [mainSum_lambdaSquared_eq_sum_mul_sum_sq](declarations/mainsum-lambdasquared-eq-sum-mul-sum-sq.md) | 383 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=5fe276699238ea0424aba76bd433a1e30ded800802e7435997549b79ae0ef9e0 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/SelbergSieve/Variant99b6499f37325ff12a914052565c0ccacbd626b01fb3fda100964aecc51c68f3.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
