# Smooth Numbers Namespaced

[Complete source index](../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**64 observed declarations and anonymous commands**, 55 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/NumberTheory/ElementaryNumberTheory/SmoothNumbers/Variant279f403f383bb277dc931fd9dd86f5eced90156ad50dbfed1ee825512dcd8e26.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `4f915e9deb1bfb3812656de52f147382487865e0`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../_verification/specifications/NumberTheory/SmoothNumbersNamespaced.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [primesBelow](declarations/primesbelow.md) | 45 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `lemma` | [primesBelow_zero](declarations/primesbelow-zero.md) | 48 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `lemma` | [mem_primesBelow](declarations/mem-primesbelow.md) | 51 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `lemma` | [prime_of_mem_primesBelow](declarations/prime-of-mem-primesbelow.md) | 54 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `lemma` | [lt_of_mem_primesBelow](declarations/lt-of-mem-primesbelow.md) | 57 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `lemma` | [primesBelow_succ](declarations/primesbelow-succ.md) | 60 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `lemma` | [notMem_primesBelow](declarations/notmem-primesbelow.md) | 64 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `def` | [factoredNumbers](declarations/factorednumbers.md) | 76 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `lemma` | [mem_factoredNumbers](declarations/mem-factorednumbers-source-edition-2.md) | 78 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `instance` | [(anonymous)](declarations/instance-source-edition-2.md) | 83 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `lemma` | [mem_factoredNumbers_of_dvd](declarations/mem-factorednumbers-of-dvd.md) | 87 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `lemma` | [mem_factoredNumbers_iff_forall_le](declarations/mem-factorednumbers-iff-forall-le.md) | 98 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `lemma` | [mem_factoredNumbers'](declarations/mem-factorednumbers.md) | 106 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `lemma` | [ne_zero_of_mem_factoredNumbers](declarations/ne-zero-of-mem-factorednumbers.md) | 117 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `lemma` | [primeFactors_subset_of_mem_factoredNumbers](declarations/primefactors-subset-of-mem-factorednumbers.md) | 121 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `lemma` | [mem_factoredNumbers_of_primeFactors_subset](declarations/mem-factorednumbers-of-primefactors-subset.md) | 129 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `lemma` | [mem_factoredNumbers_iff_primeFactors_subset](declarations/mem-factorednumbers-iff-primefactors-subset.md) | 137 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `lemma` | [factoredNumbers_empty](declarations/factorednumbers-empty.md) | 143 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `lemma` | [mul_mem_factoredNumbers](declarations/mul-mem-factorednumbers.md) | 150 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `lemma` | [prod_mem_factoredNumbers](declarations/prod-mem-factorednumbers.md) | 159 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `lemma` | [factoredNumbers_insert](declarations/factorednumbers-insert.md) | 170 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `lemma` | [factoredNumbers_mono](declarations/factorednumbers-mono.md) | 178 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `lemma` | [factoredNumbers_compl](declarations/factorednumbers-compl.md) | 183 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `lemma` | [pow_mul_mem_factoredNumbers](declarations/pow-mul-mem-factorednumbers.md) | 197 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `lemma` | [Prime.factoredNumbers_coprime](declarations/prime-factorednumbers-coprime.md) | 209 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `lemma` | [factoredNumbers.map_prime_pow_mul](declarations/factorednumbers-map-prime-pow-mul.md) | 217 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `def` | [equivProdNatFactoredNumbers](declarations/equivprodnatfactorednumbers.md) | 227 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `lemma` | [equivProdNatFactoredNumbers_apply](declarations/equivprodnatfactorednumbers-apply-source-edition-2.md) | 266 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `lemma` | [equivProdNatFactoredNumbers_apply'](declarations/equivprodnatfactorednumbers-apply.md) | 271 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `def` | [smoothNumbers](declarations/smoothnumbers.md) | 282 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `lemma` | [mem_smoothNumbers](declarations/mem-smoothnumbers-source-edition-2.md) | 284 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `lemma` | [smoothNumbers_eq_factoredNumbers](declarations/smoothnumbers-eq-factorednumbers.md) | 288 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `lemma` | [smmoothNumbers_eq_factoredNumbers_primesBelow](declarations/smmoothnumbers-eq-factorednumbers-primesbelow.md) | 294 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `instance` | [(anonymous)](declarations/instance.md) | 302 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `lemma` | [mem_smoothNumbers_of_dvd](declarations/mem-smoothnumbers-of-dvd.md) | 306 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `lemma` | [mem_smoothNumbers_iff_forall_le](declarations/mem-smoothnumbers-iff-forall-le.md) | 313 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `lemma` | [mem_smoothNumbers'](declarations/mem-smoothnumbers.md) | 318 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `lemma` | [primeFactors_subset_of_mem_smoothNumbers](declarations/primefactors-subset-of-mem-smoothnumbers.md) | 323 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `lemma` | [mem_smoothNumbers_of_primeFactors_subset](declarations/mem-smoothnumbers-of-primefactors-subset.md) | 329 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `lemma` | [mem_smoothNumbers_iff_primeFactors_subset](declarations/mem-smoothnumbers-iff-primefactors-subset.md) | 335 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `lemma` | [ne_zero_of_mem_smoothNumbers](declarations/ne-zero-of-mem-smoothnumbers.md) | 341 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `lemma` | [smoothNumbers_zero](declarations/smoothnumbers-zero.md) | 344 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `theorem` | [mul_mem_smoothNumbers](declarations/mul-mem-smoothnumbers.md) | 348 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `lemma` | [prod_mem_smoothNumbers](declarations/prod-mem-smoothnumbers.md) | 354 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `lemma` | [smoothNumbers_succ](declarations/smoothnumbers-succ.md) | 360 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `lemma` | [smoothNumbers_one](declarations/smoothnumbers-one.md) | 363 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `lemma` | [smoothNumbers_mono](declarations/smoothnumbers-mono.md) | 366 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `lemma` | [mem_smoothNumbers_of_lt](declarations/mem-smoothnumbers-of-lt.md) | 370 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `lemma` | [smoothNumbers_compl](declarations/smoothnumbers-compl.md) | 375 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `lemma` | [pow_mul_mem_smoothNumbers](declarations/pow-mul-mem-smoothnumbers.md) | 380 | `BLOCKED_NATIVE_ADMISSION` |
| 51 | `lemma` | [Prime.smoothNumbers_coprime](declarations/prime-smoothnumbers-coprime.md) | 392 | `BLOCKED_NATIVE_ADMISSION` |
| 52 | `lemma` | [map_prime_pow_mul](declarations/map-prime-pow-mul.md) | 399 | `BLOCKED_NATIVE_ADMISSION` |
| 53 | `def` | [equivProdNatSmoothNumbers](declarations/equivprodnatsmoothnumbers.md) | 409 | `BLOCKED_NATIVE_ADMISSION` |
| 54 | `lemma` | [equivProdNatSmoothNumbers_apply](declarations/equivprodnatsmoothnumbers-apply.md) | 416 | `BLOCKED_NATIVE_ADMISSION` |
| 55 | `lemma` | [equivProdNatSmoothNumbers_apply'](declarations/equivprodnatsmoothnumbers-apply-source-edition-2.md) | 420 | `BLOCKED_NATIVE_ADMISSION` |
| 56 | `def` | [smoothNumbersUpTo](declarations/smoothnumbersupto.md) | 432 | `BLOCKED_NATIVE_ADMISSION` |
| 57 | `lemma` | [mem_smoothNumbersUpTo](declarations/mem-smoothnumbersupto.md) | 435 | `BLOCKED_NATIVE_ADMISSION` |
| 58 | `def` | [roughNumbersUpTo](declarations/roughnumbersupto.md) | 440 | `BLOCKED_NATIVE_ADMISSION` |
| 59 | `lemma` | [smoothNumbersUpTo_card_add_roughNumbersUpTo_card](declarations/smoothnumbersupto-card-add-roughnumbersupto-card.md) | 443 | `BLOCKED_NATIVE_ADMISSION` |
| 60 | `lemma` | [eq_prod_primes_mul_sq_of_mem_smoothNumbers](declarations/eq-prod-primes-mul-sq-of-mem-smoothnumbers.md) | 458 | `BLOCKED_NATIVE_ADMISSION` |
| 61 | `lemma` | [smoothNumbersUpTo_subset_image](declarations/smoothnumbersupto-subset-image.md) | 474 | `BLOCKED_NATIVE_ADMISSION` |
| 62 | `lemma` | [smoothNumbersUpTo_card_le](declarations/smoothnumbersupto-card-le.md) | 493 | `BLOCKED_NATIVE_ADMISSION` |
| 63 | `lemma` | [roughNumbersUpTo_eq_biUnion](declarations/roughnumbersupto-eq-biunion.md) | 502 | `BLOCKED_NATIVE_ADMISSION` |
| 64 | `lemma` | [roughNumbersUpTo_card_le](declarations/roughnumbersupto-card-le.md) | 525 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=481a2d2cc7db298e10581626235906debb18f27e3ca6592425c29c94ac2d8dc2 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/ElementaryNumberTheory/SmoothNumbers/Variant279f403f383bb277dc931fd9dd86f5eced90156ad50dbfed1ee825512dcd8e26.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
