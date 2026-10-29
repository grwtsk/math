# Smooth Numbers

[Complete source index](../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**64 observed declarations and anonymous commands**, 55 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/NumberTheory/ElementaryNumberTheory/SmoothNumbers/Variant8b4ebf56950275d9bb7023fe2ec78a0c56dea22e5546948ba004aea80cb1d73e.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `55b572da9af134d348000f30ae398a6dbcdcfd26`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../_verification/specifications/NumberTheory/SmoothNumbers.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [primesBelow](declarations/primesbelow.md) | 37 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `lemma` | [primesBelow_zero](declarations/primesbelow-zero.md) | 40 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `lemma` | [mem_primesBelow](declarations/mem-primesbelow.md) | 43 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `lemma` | [prime_of_mem_primesBelow](declarations/prime-of-mem-primesbelow.md) | 46 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `lemma` | [lt_of_mem_primesBelow](declarations/lt-of-mem-primesbelow.md) | 49 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `lemma` | [primesBelow_succ](declarations/primesbelow-succ.md) | 52 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `lemma` | [notMem_primesBelow](declarations/notmem-primesbelow.md) | 56 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `def` | [factoredNumbers](declarations/factorednumbers.md) | 68 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `lemma` | [mem_factoredNumbers](declarations/mem-factorednumbers.md) | 70 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `instance` | [(anonymous)](declarations/instance.md) | 75 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `lemma` | [mem_factoredNumbers_of_dvd](declarations/mem-factorednumbers-of-dvd.md) | 79 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `lemma` | [mem_factoredNumbers_iff_forall_le](declarations/mem-factorednumbers-iff-forall-le.md) | 90 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `lemma` | [mem_factoredNumbers'](declarations/mem-factorednumbers-source-edition-2.md) | 98 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `lemma` | [ne_zero_of_mem_factoredNumbers](declarations/ne-zero-of-mem-factorednumbers.md) | 109 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `lemma` | [primeFactors_subset_of_mem_factoredNumbers](declarations/primefactors-subset-of-mem-factorednumbers.md) | 113 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `lemma` | [mem_factoredNumbers_of_primeFactors_subset](declarations/mem-factorednumbers-of-primefactors-subset.md) | 121 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `lemma` | [mem_factoredNumbers_iff_primeFactors_subset](declarations/mem-factorednumbers-iff-primefactors-subset.md) | 129 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `lemma` | [factoredNumbers_empty](declarations/factorednumbers-empty.md) | 135 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `lemma` | [mul_mem_factoredNumbers](declarations/mul-mem-factorednumbers.md) | 142 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `lemma` | [prod_mem_factoredNumbers](declarations/prod-mem-factorednumbers.md) | 151 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `lemma` | [factoredNumbers_insert](declarations/factorednumbers-insert.md) | 162 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `lemma` | [factoredNumbers_mono](declarations/factorednumbers-mono.md) | 170 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `lemma` | [factoredNumbers_compl](declarations/factorednumbers-compl.md) | 175 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `lemma` | [pow_mul_mem_factoredNumbers](declarations/pow-mul-mem-factorednumbers.md) | 189 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `lemma` | [Prime.factoredNumbers_coprime](declarations/prime-factorednumbers-coprime.md) | 201 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `lemma` | [factoredNumbers.map_prime_pow_mul](declarations/factorednumbers-map-prime-pow-mul.md) | 209 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `def` | [equivProdNatFactoredNumbers](declarations/equivprodnatfactorednumbers.md) | 219 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `lemma` | [equivProdNatFactoredNumbers_apply](declarations/equivprodnatfactorednumbers-apply-source-edition-2.md) | 258 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `lemma` | [equivProdNatFactoredNumbers_apply'](declarations/equivprodnatfactorednumbers-apply.md) | 263 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `def` | [smoothNumbers](declarations/smoothnumbers.md) | 274 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `lemma` | [mem_smoothNumbers](declarations/mem-smoothnumbers.md) | 276 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `lemma` | [smoothNumbers_eq_factoredNumbers](declarations/smoothnumbers-eq-factorednumbers.md) | 280 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `lemma` | [smmoothNumbers_eq_factoredNumbers_primesBelow](declarations/smmoothnumbers-eq-factorednumbers-primesbelow.md) | 286 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `instance` | [(anonymous)](declarations/instance-source-edition-2.md) | 294 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `lemma` | [mem_smoothNumbers_of_dvd](declarations/mem-smoothnumbers-of-dvd.md) | 298 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `lemma` | [mem_smoothNumbers_iff_forall_le](declarations/mem-smoothnumbers-iff-forall-le.md) | 305 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `lemma` | [mem_smoothNumbers'](declarations/mem-smoothnumbers-source-edition-2.md) | 310 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `lemma` | [primeFactors_subset_of_mem_smoothNumbers](declarations/primefactors-subset-of-mem-smoothnumbers.md) | 315 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `lemma` | [mem_smoothNumbers_of_primeFactors_subset](declarations/mem-smoothnumbers-of-primefactors-subset.md) | 321 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `lemma` | [mem_smoothNumbers_iff_primeFactors_subset](declarations/mem-smoothnumbers-iff-primefactors-subset.md) | 327 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `lemma` | [ne_zero_of_mem_smoothNumbers](declarations/ne-zero-of-mem-smoothnumbers.md) | 333 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `lemma` | [smoothNumbers_zero](declarations/smoothnumbers-zero.md) | 336 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `theorem` | [mul_mem_smoothNumbers](declarations/mul-mem-smoothnumbers.md) | 340 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `lemma` | [prod_mem_smoothNumbers](declarations/prod-mem-smoothnumbers.md) | 346 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `lemma` | [smoothNumbers_succ](declarations/smoothnumbers-succ.md) | 352 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `lemma` | [smoothNumbers_one](declarations/smoothnumbers-one.md) | 355 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `lemma` | [smoothNumbers_mono](declarations/smoothnumbers-mono.md) | 358 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `lemma` | [mem_smoothNumbers_of_lt](declarations/mem-smoothnumbers-of-lt.md) | 362 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `lemma` | [smoothNumbers_compl](declarations/smoothnumbers-compl.md) | 367 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `lemma` | [pow_mul_mem_smoothNumbers](declarations/pow-mul-mem-smoothnumbers.md) | 372 | `BLOCKED_NATIVE_ADMISSION` |
| 51 | `lemma` | [Prime.smoothNumbers_coprime](declarations/prime-smoothnumbers-coprime.md) | 384 | `BLOCKED_NATIVE_ADMISSION` |
| 52 | `lemma` | [map_prime_pow_mul](declarations/map-prime-pow-mul.md) | 391 | `BLOCKED_NATIVE_ADMISSION` |
| 53 | `def` | [equivProdNatSmoothNumbers](declarations/equivprodnatsmoothnumbers.md) | 401 | `BLOCKED_NATIVE_ADMISSION` |
| 54 | `lemma` | [equivProdNatSmoothNumbers_apply](declarations/equivprodnatsmoothnumbers-apply.md) | 408 | `BLOCKED_NATIVE_ADMISSION` |
| 55 | `lemma` | [equivProdNatSmoothNumbers_apply'](declarations/equivprodnatsmoothnumbers-apply-source-edition-2.md) | 412 | `BLOCKED_NATIVE_ADMISSION` |
| 56 | `def` | [smoothNumbersUpTo](declarations/smoothnumbersupto.md) | 424 | `BLOCKED_NATIVE_ADMISSION` |
| 57 | `lemma` | [mem_smoothNumbersUpTo](declarations/mem-smoothnumbersupto.md) | 427 | `BLOCKED_NATIVE_ADMISSION` |
| 58 | `def` | [roughNumbersUpTo](declarations/roughnumbersupto.md) | 432 | `BLOCKED_NATIVE_ADMISSION` |
| 59 | `lemma` | [smoothNumbersUpTo_card_add_roughNumbersUpTo_card](declarations/smoothnumbersupto-card-add-roughnumbersupto-card.md) | 435 | `BLOCKED_NATIVE_ADMISSION` |
| 60 | `lemma` | [eq_prod_primes_mul_sq_of_mem_smoothNumbers](declarations/eq-prod-primes-mul-sq-of-mem-smoothnumbers.md) | 450 | `BLOCKED_NATIVE_ADMISSION` |
| 61 | `lemma` | [smoothNumbersUpTo_subset_image](declarations/smoothnumbersupto-subset-image.md) | 466 | `BLOCKED_NATIVE_ADMISSION` |
| 62 | `lemma` | [smoothNumbersUpTo_card_le](declarations/smoothnumbersupto-card-le.md) | 485 | `BLOCKED_NATIVE_ADMISSION` |
| 63 | `lemma` | [roughNumbersUpTo_eq_biUnion](declarations/roughnumbersupto-eq-biunion.md) | 494 | `BLOCKED_NATIVE_ADMISSION` |
| 64 | `lemma` | [roughNumbersUpTo_card_le](declarations/roughnumbersupto-card-le.md) | 517 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=f548e54f0d97426370d98551e706055b576e180cd0fa32edba441fdeaff645ea -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/ElementaryNumberTheory/SmoothNumbers/Variant8b4ebf56950275d9bb7023fe2ec78a0c56dea22e5546948ba004aea80cb1d73e.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
