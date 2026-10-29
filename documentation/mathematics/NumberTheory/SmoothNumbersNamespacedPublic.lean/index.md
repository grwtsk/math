# Smooth Numbers Namespaced Public

[Complete source index](../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**57 observed declarations and anonymous commands**, 49 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/NumberTheory/ElementaryNumberTheory/SmoothNumbers/Variantbb88dd2c9fcc2d9768a7e0d19fea4a306d50f27eb8d88aa7b3ffc2fddbf450ad.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `751fa97f4ef7f27f3c4b9addb4c168314569c3fe`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../_verification/specifications/NumberTheory/SmoothNumbersNamespacedPublic.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [factoredNumbers](declarations/factorednumbers.md) | 53 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `lemma` | [mem_factoredNumbers](declarations/mem-factorednumbers-source-edition-2.md) | 55 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `instance` | [(anonymous)](declarations/instance.md) | 60 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `lemma` | [mem_factoredNumbers_of_dvd](declarations/mem-factorednumbers-of-dvd.md) | 64 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `lemma` | [mem_factoredNumbers_iff_forall_le](declarations/mem-factorednumbers-iff-forall-le.md) | 75 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `lemma` | [mem_factoredNumbers'](declarations/mem-factorednumbers.md) | 83 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `lemma` | [ne_zero_of_mem_factoredNumbers](declarations/ne-zero-of-mem-factorednumbers.md) | 94 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `lemma` | [primeFactors_subset_of_mem_factoredNumbers](declarations/primefactors-subset-of-mem-factorednumbers.md) | 98 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `lemma` | [mem_factoredNumbers_of_primeFactors_subset](declarations/mem-factorednumbers-of-primefactors-subset.md) | 106 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `lemma` | [mem_factoredNumbers_iff_primeFactors_subset](declarations/mem-factorednumbers-iff-primefactors-subset.md) | 114 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `lemma` | [factoredNumbers_empty](declarations/factorednumbers-empty.md) | 120 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `lemma` | [mul_mem_factoredNumbers](declarations/mul-mem-factorednumbers.md) | 127 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `lemma` | [prod_mem_factoredNumbers](declarations/prod-mem-factorednumbers.md) | 136 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `lemma` | [factoredNumbers_insert](declarations/factorednumbers-insert.md) | 147 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `lemma` | [factoredNumbers_mono](declarations/factorednumbers-mono.md) | 155 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `lemma` | [factoredNumbers_compl](declarations/factorednumbers-compl.md) | 160 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `lemma` | [pow_mul_mem_factoredNumbers](declarations/pow-mul-mem-factorednumbers.md) | 174 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `lemma` | [Prime.factoredNumbers_coprime](declarations/prime-factorednumbers-coprime.md) | 186 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `lemma` | [factoredNumbers.map_prime_pow_mul](declarations/factorednumbers-map-prime-pow-mul.md) | 194 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `def` | [equivProdNatFactoredNumbers](declarations/equivprodnatfactorednumbers.md) | 205 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `lemma` | [equivProdNatFactoredNumbers_apply](declarations/equivprodnatfactorednumbers-apply.md) | 233 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `lemma` | [equivProdNatFactoredNumbers_apply'](declarations/equivprodnatfactorednumbers-apply-source-edition-2.md) | 238 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `def` | [smoothNumbers](declarations/smoothnumbers.md) | 249 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `lemma` | [mem_smoothNumbers](declarations/mem-smoothnumbers.md) | 251 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `lemma` | [smoothNumbers_eq_factoredNumbers](declarations/smoothnumbers-eq-factorednumbers.md) | 255 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `lemma` | [smoothNumbers_eq_factoredNumbers_primesBelow](declarations/smoothnumbers-eq-factorednumbers-primesbelow.md) | 261 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `instance` | [(anonymous)](declarations/instance-source-edition-2.md) | 269 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `lemma` | [mem_smoothNumbers_of_dvd](declarations/mem-smoothnumbers-of-dvd.md) | 273 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `lemma` | [mem_smoothNumbers_iff_forall_le](declarations/mem-smoothnumbers-iff-forall-le.md) | 280 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `lemma` | [mem_smoothNumbers'](declarations/mem-smoothnumbers-source-edition-2.md) | 285 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `lemma` | [primeFactors_subset_of_mem_smoothNumbers](declarations/primefactors-subset-of-mem-smoothnumbers.md) | 290 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `lemma` | [mem_smoothNumbers_of_primeFactors_subset](declarations/mem-smoothnumbers-of-primefactors-subset.md) | 296 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `lemma` | [mem_smoothNumbers_iff_primeFactors_subset](declarations/mem-smoothnumbers-iff-primefactors-subset.md) | 302 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `lemma` | [ne_zero_of_mem_smoothNumbers](declarations/ne-zero-of-mem-smoothnumbers.md) | 308 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `lemma` | [smoothNumbers_zero](declarations/smoothnumbers-zero.md) | 311 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `theorem` | [mul_mem_smoothNumbers](declarations/mul-mem-smoothnumbers.md) | 315 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `lemma` | [prod_mem_smoothNumbers](declarations/prod-mem-smoothnumbers.md) | 321 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `lemma` | [smoothNumbers_succ](declarations/smoothnumbers-succ.md) | 327 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `lemma` | [smoothNumbers_one](declarations/smoothnumbers-one.md) | 330 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `lemma` | [smoothNumbers_mono](declarations/smoothnumbers-mono.md) | 333 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `lemma` | [mem_smoothNumbers_of_lt](declarations/mem-smoothnumbers-of-lt.md) | 337 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `lemma` | [smoothNumbers_compl](declarations/smoothnumbers-compl.md) | 342 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `lemma` | [pow_mul_mem_smoothNumbers](declarations/pow-mul-mem-smoothnumbers.md) | 347 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `lemma` | [Prime.smoothNumbers_coprime](declarations/prime-smoothnumbers-coprime.md) | 359 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `lemma` | [map_prime_pow_mul](declarations/map-prime-pow-mul.md) | 366 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `def` | [equivProdNatSmoothNumbers](declarations/equivprodnatsmoothnumbers.md) | 376 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `lemma` | [equivProdNatSmoothNumbers_apply](declarations/equivprodnatsmoothnumbers-apply-source-edition-2.md) | 383 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `lemma` | [equivProdNatSmoothNumbers_apply'](declarations/equivprodnatsmoothnumbers-apply.md) | 387 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `def` | [smoothNumbersUpTo](declarations/smoothnumbersupto.md) | 399 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `lemma` | [mem_smoothNumbersUpTo](declarations/mem-smoothnumbersupto.md) | 402 | `BLOCKED_NATIVE_ADMISSION` |
| 51 | `def` | [roughNumbersUpTo](declarations/roughnumbersupto.md) | 407 | `BLOCKED_NATIVE_ADMISSION` |
| 52 | `lemma` | [smoothNumbersUpTo_card_add_roughNumbersUpTo_card](declarations/smoothnumbersupto-card-add-roughnumbersupto-card.md) | 410 | `BLOCKED_NATIVE_ADMISSION` |
| 53 | `lemma` | [eq_prod_primes_mul_sq_of_mem_smoothNumbers](declarations/eq-prod-primes-mul-sq-of-mem-smoothnumbers.md) | 425 | `BLOCKED_NATIVE_ADMISSION` |
| 54 | `lemma` | [smoothNumbersUpTo_subset_image](declarations/smoothnumbersupto-subset-image.md) | 441 | `BLOCKED_NATIVE_ADMISSION` |
| 55 | `lemma` | [smoothNumbersUpTo_card_le](declarations/smoothnumbersupto-card-le.md) | 461 | `BLOCKED_NATIVE_ADMISSION` |
| 56 | `lemma` | [roughNumbersUpTo_eq_biUnion](declarations/roughnumbersupto-eq-biunion.md) | 469 | `BLOCKED_NATIVE_ADMISSION` |
| 57 | `lemma` | [roughNumbersUpTo_card_le](declarations/roughnumbersupto-card-le.md) | 486 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=0ba04a3873c29655a6de5fb65525536c7d021c4ab4d5f6a61659ae9245089544 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/ElementaryNumberTheory/SmoothNumbers/Variantbb88dd2c9fcc2d9768a7e0d19fea4a306d50f27eb8d88aa7b3ffc2fddbf450ad.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
