# Smooth Numbers Public

[Complete source index](../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**57 observed declarations and anonymous commands**, 49 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/NumberTheory/ElementaryNumberTheory/SmoothNumbers/Variant05ccbe0cd6f7a545f263130200d97cd98b7a59dbc7fd5a7ddf396bcad00cd531.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `57503448dd06ca2fc223a8e71a90a8f6015fce3f`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../_verification/specifications/NumberTheory/SmoothNumbersPublic.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [factoredNumbers](declarations/factorednumbers.md) | 45 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `lemma` | [mem_factoredNumbers](declarations/mem-factorednumbers.md) | 47 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `instance` | [(anonymous)](declarations/instance.md) | 52 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `lemma` | [mem_factoredNumbers_of_dvd](declarations/mem-factorednumbers-of-dvd.md) | 56 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `lemma` | [mem_factoredNumbers_iff_forall_le](declarations/mem-factorednumbers-iff-forall-le.md) | 67 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `lemma` | [mem_factoredNumbers'](declarations/mem-factorednumbers-source-edition-2.md) | 75 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `lemma` | [ne_zero_of_mem_factoredNumbers](declarations/ne-zero-of-mem-factorednumbers.md) | 86 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `lemma` | [primeFactors_subset_of_mem_factoredNumbers](declarations/primefactors-subset-of-mem-factorednumbers.md) | 90 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `lemma` | [mem_factoredNumbers_of_primeFactors_subset](declarations/mem-factorednumbers-of-primefactors-subset.md) | 98 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `lemma` | [mem_factoredNumbers_iff_primeFactors_subset](declarations/mem-factorednumbers-iff-primefactors-subset.md) | 106 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `lemma` | [factoredNumbers_empty](declarations/factorednumbers-empty.md) | 112 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `lemma` | [mul_mem_factoredNumbers](declarations/mul-mem-factorednumbers.md) | 119 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `lemma` | [prod_mem_factoredNumbers](declarations/prod-mem-factorednumbers.md) | 128 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `lemma` | [factoredNumbers_insert](declarations/factorednumbers-insert.md) | 139 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `lemma` | [factoredNumbers_mono](declarations/factorednumbers-mono.md) | 147 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `lemma` | [factoredNumbers_compl](declarations/factorednumbers-compl.md) | 152 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `lemma` | [pow_mul_mem_factoredNumbers](declarations/pow-mul-mem-factorednumbers.md) | 166 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `lemma` | [Prime.factoredNumbers_coprime](declarations/prime-factorednumbers-coprime.md) | 178 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `lemma` | [factoredNumbers.map_prime_pow_mul](declarations/factorednumbers-map-prime-pow-mul.md) | 186 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `def` | [equivProdNatFactoredNumbers](declarations/equivprodnatfactorednumbers.md) | 197 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `lemma` | [equivProdNatFactoredNumbers_apply](declarations/equivprodnatfactorednumbers-apply.md) | 225 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `lemma` | [equivProdNatFactoredNumbers_apply'](declarations/equivprodnatfactorednumbers-apply-source-edition-2.md) | 230 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `def` | [smoothNumbers](declarations/smoothnumbers.md) | 241 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `lemma` | [mem_smoothNumbers](declarations/mem-smoothnumbers-source-edition-2.md) | 243 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `lemma` | [smoothNumbers_eq_factoredNumbers](declarations/smoothnumbers-eq-factorednumbers.md) | 247 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `lemma` | [smoothNumbers_eq_factoredNumbers_primesBelow](declarations/smoothnumbers-eq-factorednumbers-primesbelow.md) | 253 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `instance` | [(anonymous)](declarations/instance-source-edition-2.md) | 261 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `lemma` | [mem_smoothNumbers_of_dvd](declarations/mem-smoothnumbers-of-dvd.md) | 265 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `lemma` | [mem_smoothNumbers_iff_forall_le](declarations/mem-smoothnumbers-iff-forall-le.md) | 272 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `lemma` | [mem_smoothNumbers'](declarations/mem-smoothnumbers.md) | 277 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `lemma` | [primeFactors_subset_of_mem_smoothNumbers](declarations/primefactors-subset-of-mem-smoothnumbers.md) | 282 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `lemma` | [mem_smoothNumbers_of_primeFactors_subset](declarations/mem-smoothnumbers-of-primefactors-subset.md) | 288 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `lemma` | [mem_smoothNumbers_iff_primeFactors_subset](declarations/mem-smoothnumbers-iff-primefactors-subset.md) | 294 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `lemma` | [ne_zero_of_mem_smoothNumbers](declarations/ne-zero-of-mem-smoothnumbers.md) | 300 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `lemma` | [smoothNumbers_zero](declarations/smoothnumbers-zero.md) | 303 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `theorem` | [mul_mem_smoothNumbers](declarations/mul-mem-smoothnumbers.md) | 307 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `lemma` | [prod_mem_smoothNumbers](declarations/prod-mem-smoothnumbers.md) | 313 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `lemma` | [smoothNumbers_succ](declarations/smoothnumbers-succ.md) | 319 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `lemma` | [smoothNumbers_one](declarations/smoothnumbers-one.md) | 322 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `lemma` | [smoothNumbers_mono](declarations/smoothnumbers-mono.md) | 325 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `lemma` | [mem_smoothNumbers_of_lt](declarations/mem-smoothnumbers-of-lt.md) | 329 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `lemma` | [smoothNumbers_compl](declarations/smoothnumbers-compl.md) | 334 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `lemma` | [pow_mul_mem_smoothNumbers](declarations/pow-mul-mem-smoothnumbers.md) | 339 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `lemma` | [Prime.smoothNumbers_coprime](declarations/prime-smoothnumbers-coprime.md) | 351 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `lemma` | [map_prime_pow_mul](declarations/map-prime-pow-mul.md) | 358 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `def` | [equivProdNatSmoothNumbers](declarations/equivprodnatsmoothnumbers.md) | 368 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `lemma` | [equivProdNatSmoothNumbers_apply](declarations/equivprodnatsmoothnumbers-apply-source-edition-2.md) | 375 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `lemma` | [equivProdNatSmoothNumbers_apply'](declarations/equivprodnatsmoothnumbers-apply.md) | 379 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `def` | [smoothNumbersUpTo](declarations/smoothnumbersupto.md) | 391 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `lemma` | [mem_smoothNumbersUpTo](declarations/mem-smoothnumbersupto.md) | 394 | `BLOCKED_NATIVE_ADMISSION` |
| 51 | `def` | [roughNumbersUpTo](declarations/roughnumbersupto.md) | 399 | `BLOCKED_NATIVE_ADMISSION` |
| 52 | `lemma` | [smoothNumbersUpTo_card_add_roughNumbersUpTo_card](declarations/smoothnumbersupto-card-add-roughnumbersupto-card.md) | 402 | `BLOCKED_NATIVE_ADMISSION` |
| 53 | `lemma` | [eq_prod_primes_mul_sq_of_mem_smoothNumbers](declarations/eq-prod-primes-mul-sq-of-mem-smoothnumbers.md) | 417 | `BLOCKED_NATIVE_ADMISSION` |
| 54 | `lemma` | [smoothNumbersUpTo_subset_image](declarations/smoothnumbersupto-subset-image.md) | 433 | `BLOCKED_NATIVE_ADMISSION` |
| 55 | `lemma` | [smoothNumbersUpTo_card_le](declarations/smoothnumbersupto-card-le.md) | 453 | `BLOCKED_NATIVE_ADMISSION` |
| 56 | `lemma` | [roughNumbersUpTo_eq_biUnion](declarations/roughnumbersupto-eq-biunion.md) | 461 | `BLOCKED_NATIVE_ADMISSION` |
| 57 | `lemma` | [roughNumbersUpTo_card_le](declarations/roughnumbersupto-card-le.md) | 478 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=e70e27e2985a69df4384f2c540214ecc986ab69875126f961cbb726b8f340ea9 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/ElementaryNumberTheory/SmoothNumbers/Variant05ccbe0cd6f7a545f263130200d97cd98b7a59dbc7fd5a7ddf396bcad00cd531.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
