# Selberg Sieve Public

[Complete source index](../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**33 observed declarations and anonymous commands**, 22 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/SelbergSieve/Variantec409f3c9aeea3a9653db10704971abc6d4c2ea376eb87d60223a235ac885ca8.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `29f3dc9e9e53e9e429df6c862714cf8327a2b554`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../_verification/specifications/NumberTheory/SelbergSievePublic.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `structure` | [BoundingSieve](declarations/boundingsieve.md) | 53 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `structure` | [SelbergSieve](declarations/selbergsieve.md) | 77 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `def` | [evalBoundingSieveWeights](declarations/evalboundingsieveweights.md) | 92 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `theorem` | [one_le_y](declarations/one-le-y.md) | 105 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [prodPrimes_ne_zero](declarations/prodprimes-ne-zero.md) | 111 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [squarefree_of_dvd_prodPrimes](declarations/squarefree-of-dvd-prodprimes.md) | 114 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [squarefree_of_mem_divisors_prodPrimes](declarations/squarefree-of-mem-divisors-prodprimes.md) | 117 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [prod_primeFactors_nu](declarations/prod-primefactors-nu.md) | 124 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [nu_pos_of_dvd_prodPrimes](declarations/nu-pos-of-dvd-prodprimes.md) | 129 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [nu_ne_zero](declarations/nu-ne-zero.md) | 139 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [nu_lt_one_of_dvd_prodPrimes](declarations/nu-lt-one-of-dvd-prodprimes.md) | 143 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `def` | [multSum](declarations/multsum.md) | 162 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `def` | [rem](declarations/rem.md) | 168 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `def` | [siftedSum](declarations/siftedsum.md) | 171 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `def` | [mainSum](declarations/mainsum.md) | 174 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `def` | [errSum](declarations/errsum.md) | 177 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [multSum_eq_main_err](declarations/multsum-eq-main-err.md) | 179 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [siftedSum_eq_sum_support_mul_ite](declarations/siftedsum-eq-sum-support-mul-ite.md) | 183 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `def` | [IsUpperMoebius](declarations/isuppermoebius.md) | 191 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [siftedSum_le_sum_of_upperMoebius](declarations/siftedsum-le-sum-of-uppermoebius.md) | 194 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [siftedSum_le_mainSum_errSum_of_upperMoebius](declarations/siftedsum-le-mainsum-errsum-of-uppermoebius.md) | 216 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `def` | [lambdaSquared](declarations/lambdasquared.md) | 236 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [sum_divisors_lambda_sq_larger_sum](declarations/sum-divisors-lambda-sq-larger-sum.md) | 239 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [upperMoebius_lambdaSquared](declarations/uppermoebius-lambdasquared.md) | 250 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `def` | [selbergTerms](declarations/selbergterms.md) | 276 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [selbergTerms_apply](declarations/selbergterms-apply.md) | 279 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [selbergTerms_pos](declarations/selbergterms-pos.md) | 288 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [selbergTerms_isMultiplicative](declarations/selbergterms-ismultiplicative.md) | 296 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [inv_selbergTerms_eq_sum_divisors_moebius_nu](declarations/inv-selbergterms-eq-sum-divisors-moebius-nu.md) | 300 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [nu_inv_eq_sum_divisors_inv_selbergTerms](declarations/nu-inv-eq-sum-divisors-inv-selbergterms.md) | 312 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [sum_divisors_selbergTerms_eq_selbergTerms_mul_nu_inv](declarations/sum-divisors-selbergterms-eq-selbergterms-mul-nu-inv.md) | 323 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [mainSum_lambdaSquared_eq_sum_sum_mul](declarations/mainsum-lambdasquared-eq-sum-sum-mul.md) | 349 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [mainSum_lambdaSquared_eq_sum_mul_sum_sq](declarations/mainsum-lambdasquared-eq-sum-mul-sum-sq.md) | 375 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=f13680f841064da34860155053f97b3d240dbe706bd46deeca34edc06323dbdc -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/SelbergSieve/Variantec409f3c9aeea3a9653db10704971abc6d4c2ea376eb87d60223a235ac885ca8.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
