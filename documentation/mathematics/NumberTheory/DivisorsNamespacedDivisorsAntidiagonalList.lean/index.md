# Divisors Namespaced Divisors Antidiagonal List

[Complete source index](../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**106 observed declarations and anonymous commands**, 100 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Topology/GeneralTopology/Divisors/Variant80dba7b780e17ef6e3c5ea3b99c59e44eba18b496f8efe4ba1c90a807ffef58e.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `5d658d1571b561289403db422386848e60253424`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../_verification/specifications/NumberTheory/DivisorsNamespacedDivisorsAntidiagonalList.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [divisors](declarations/divisors.md) | 55 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `def` | [properDivisors](declarations/properdivisors.md) | 59 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `def` | [divisorsAntidiagonal](declarations/divisorsantidiagonal.md) | 67 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `def` | [divisorsAntidiagonalList](declarations/divisorsantidiagonallist.md) | 76 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [filter_dvd_eq_divisors](declarations/filter-dvd-eq-divisors.md) | 83 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [filter_dvd_eq_properDivisors](declarations/filter-dvd-eq-properdivisors.md) | 89 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [self_notMem_properDivisors](declarations/self-notmem-properdivisors.md) | 94 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [mem_properDivisors](declarations/mem-properdivisors.md) | 100 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [insert_self_properDivisors](declarations/insert-self-properdivisors.md) | 104 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [cons_self_properDivisors](declarations/cons-self-properdivisors.md) | 109 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [mem_divisors](declarations/mem-divisors.md) | 114 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [one_mem_divisors](declarations/one-mem-divisors.md) | 120 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [mem_divisors_self](declarations/mem-divisors-self.md) | 122 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [dvd_of_mem_divisors](declarations/dvd-of-mem-divisors.md) | 125 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [mem_divisorsAntidiagonal](declarations/mem-divisorsantidiagonal.md) | 131 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `lemma` | [divisorsAntidiagonalList_zero](declarations/divisorsantidiagonallist-zero.md) | 144 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `lemma` | [divisorsAntidiagonalList_one](declarations/divisorsantidiagonallist-one.md) | 145 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `lemma` | [toFinset_divisorsAntidiagonalList](declarations/tofinset-divisorsantidiagonallist.md) | 148 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `lemma` | [sorted_divisorsAntidiagonalList_fst](declarations/sorted-divisorsantidiagonallist-fst.md) | 153 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `lemma` | [sorted_divisorsAntidiagonalList_snd](declarations/sorted-divisorsantidiagonallist-snd.md) | 159 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `lemma` | [nodup_divisorsAntidiagonalList](declarations/nodup-divisorsantidiagonallist.md) | 169 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [val_divisorsAntidiagonal](declarations/val-divisorsantidiagonal.md) | 175 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `lemma` | [mem_divisorsAntidiagonalList](declarations/mem-divisorsantidiagonallist.md) | 180 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `lemma` | [swap_mem_divisorsAntidiagonalList](declarations/swap-mem-divisorsantidiagonallist.md) | 185 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `lemma` | [reverse_divisorsAntidiagonalList](declarations/reverse-divisorsantidiagonallist.md) | 188 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `lemma` | [ne_zero_of_mem_divisorsAntidiagonal](declarations/ne-zero-of-mem-divisorsantidiagonal.md) | 196 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `lemma` | [left_ne_zero_of_mem_divisorsAntidiagonal](declarations/left-ne-zero-of-mem-divisorsantidiagonal.md) | 201 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `lemma` | [right_ne_zero_of_mem_divisorsAntidiagonal](declarations/right-ne-zero-of-mem-divisorsantidiagonal.md) | 205 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [divisor_le](declarations/divisor-le.md) | 209 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [divisors_subset_of_dvd](declarations/divisors-subset-of-dvd.md) | 215 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [card_divisors_le_self](declarations/card-divisors-le-self.md) | 218 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [divisors_subset_properDivisors](declarations/divisors-subset-properdivisors.md) | 224 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `lemma` | [divisors_filter_dvd_of_dvd](declarations/divisors-filter-dvd-of-dvd.md) | 234 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [divisors_zero](declarations/divisors-zero.md) | 241 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `theorem` | [properDivisors_zero](declarations/properdivisors-zero.md) | 246 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `lemma` | [nonempty_divisors](declarations/nonempty-divisors.md) | 251 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `lemma` | [divisors_eq_empty](declarations/divisors-eq-empty.md) | 255 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `theorem` | [properDivisors_subset_divisors](declarations/properdivisors-subset-divisors.md) | 258 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `theorem` | [divisors_one](declarations/divisors-one.md) | 262 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `theorem` | [properDivisors_one](declarations/properdivisors-one.md) | 267 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `theorem` | [pos_of_mem_divisors](declarations/pos-of-mem-divisors.md) | 269 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `theorem` | [pos_of_mem_properDivisors](declarations/pos-of-mem-properdivisors.md) | 275 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `theorem` | [one_mem_properDivisors_iff_one_lt](declarations/one-mem-properdivisors-iff-one-lt.md) | 278 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `lemma` | [sup_divisors_id](declarations/sup-divisors-id.md) | 282 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `lemma` | [one_lt_of_mem_properDivisors](declarations/one-lt-of-mem-properdivisors.md) | 288 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `lemma` | [one_lt_div_of_mem_properDivisors](declarations/one-lt-div-of-mem-properdivisors.md) | 291 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `lemma` | [mem_properDivisors_iff_exists](declarations/mem-properdivisors-iff-exists.md) | 297 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `lemma` | [nonempty_properDivisors](declarations/nonempty-properdivisors.md) | 306 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `lemma` | [properDivisors_eq_empty](declarations/properdivisors-eq-empty.md) | 311 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `theorem` | [divisorsAntidiagonal_zero](declarations/divisorsantidiagonal-zero.md) | 315 | `BLOCKED_NATIVE_ADMISSION` |
| 51 | `theorem` | [divisorsAntidiagonal_one](declarations/divisorsantidiagonal-one.md) | 320 | `BLOCKED_NATIVE_ADMISSION` |
| 52 | `theorem` | [swap_mem_divisorsAntidiagonal](declarations/swap-mem-divisorsantidiagonal.md) | 325 | `BLOCKED_NATIVE_ADMISSION` |
| 53 | `theorem` | [swap_mem_divisorsAntidiagonal_aux](declarations/swap-mem-divisorsantidiagonal-aux.md) | 331 | `BLOCKED_NATIVE_ADMISSION` |
| 54 | `lemma` | [prodMk_mem_divisorsAntidiag](declarations/prodmk-mem-divisorsantidiag.md) | 335 | `BLOCKED_NATIVE_ADMISSION` |
| 55 | `theorem` | [fst_mem_divisors_of_mem_antidiagonal](declarations/fst-mem-divisors-of-mem-antidiagonal.md) | 338 | `BLOCKED_NATIVE_ADMISSION` |
| 56 | `theorem` | [snd_mem_divisors_of_mem_antidiagonal](declarations/snd-mem-divisors-of-mem-antidiagonal.md) | 343 | `BLOCKED_NATIVE_ADMISSION` |
| 57 | `theorem` | [map_swap_divisorsAntidiagonal](declarations/map-swap-divisorsantidiagonal.md) | 349 | `BLOCKED_NATIVE_ADMISSION` |
| 58 | `theorem` | [image_fst_divisorsAntidiagonal](declarations/image-fst-divisorsantidiagonal.md) | 357 | `BLOCKED_NATIVE_ADMISSION` |
| 59 | `theorem` | [image_snd_divisorsAntidiagonal](declarations/image-snd-divisorsantidiagonal.md) | 362 | `BLOCKED_NATIVE_ADMISSION` |
| 60 | `theorem` | [map_div_right_divisors](declarations/map-div-right-divisors.md) | 366 | `BLOCKED_NATIVE_ADMISSION` |
| 61 | `theorem` | [map_div_left_divisors](declarations/map-div-left-divisors.md) | 379 | `BLOCKED_NATIVE_ADMISSION` |
| 62 | `theorem` | [sum_divisors_eq_sum_properDivisors_add_self](declarations/sum-divisors-eq-sum-properdivisors-add-self.md) | 387 | `BLOCKED_NATIVE_ADMISSION` |
| 63 | `def` | [Perfect](declarations/perfect.md) | 395 | `BLOCKED_NATIVE_ADMISSION` |
| 64 | `theorem` | [perfect_iff_sum_properDivisors](declarations/perfect-iff-sum-properdivisors.md) | 398 | `BLOCKED_NATIVE_ADMISSION` |
| 65 | `theorem` | [perfect_iff_sum_divisors_eq_two_mul](declarations/perfect-iff-sum-divisors-eq-two-mul.md) | 401 | `BLOCKED_NATIVE_ADMISSION` |
| 66 | `theorem` | [mem_divisors_prime_pow](declarations/mem-divisors-prime-pow.md) | 408 | `BLOCKED_NATIVE_ADMISSION` |
| 67 | `theorem` | [Prime.divisors](declarations/prime-divisors.md) | 412 | `BLOCKED_NATIVE_ADMISSION` |
| 68 | `theorem` | [Prime.properDivisors](declarations/prime-properdivisors.md) | 416 | `BLOCKED_NATIVE_ADMISSION` |
| 69 | `theorem` | [divisors_prime_pow](declarations/divisors-prime-pow.md) | 420 | `BLOCKED_NATIVE_ADMISSION` |
| 70 | `theorem` | [divisors_injective](declarations/divisors-injective.md) | 426 | `BLOCKED_NATIVE_ADMISSION` |
| 71 | `theorem` | [divisors_inj](declarations/divisors-inj.md) | 430 | `BLOCKED_NATIVE_ADMISSION` |
| 72 | `theorem` | [eq_properDivisors_of_subset_of_sum_eq_sum](declarations/eq-properdivisors-of-subset-of-sum-eq-sum.md) | 433 | `BLOCKED_NATIVE_ADMISSION` |
| 73 | `theorem` | [sum_properDivisors_dvd](declarations/sum-properdivisors-dvd.md) | 453 | `BLOCKED_NATIVE_ADMISSION` |
| 74 | `theorem` | [Prime.prod_properDivisors](declarations/prime-prod-properdivisors.md) | 469 | `BLOCKED_NATIVE_ADMISSION` |
| 75 | `theorem` | [Prime.prod_divisors](declarations/prime-prod-divisors.md) | 473 | `BLOCKED_NATIVE_ADMISSION` |
| 76 | `theorem` | [properDivisors_eq_singleton_one_iff_prime](declarations/properdivisors-eq-singleton-one-iff-prime.md) | 477 | `BLOCKED_NATIVE_ADMISSION` |
| 77 | `theorem` | [sum_properDivisors_eq_one_iff_prime](declarations/sum-properdivisors-eq-one-iff-prime.md) | 493 | `BLOCKED_NATIVE_ADMISSION` |
| 78 | `theorem` | [mem_properDivisors_prime_pow](declarations/mem-properdivisors-prime-pow.md) | 507 | `BLOCKED_NATIVE_ADMISSION` |
| 79 | `theorem` | [properDivisors_prime_pow](declarations/properdivisors-prime-pow.md) | 521 | `BLOCKED_NATIVE_ADMISSION` |
| 80 | `theorem` | [prod_properDivisors_prime_pow](declarations/prod-properdivisors-prime-pow.md) | 534 | `BLOCKED_NATIVE_ADMISSION` |
| 81 | `theorem` | [prod_divisors_prime_pow](declarations/prod-divisors-prime-pow.md) | 539 | `BLOCKED_NATIVE_ADMISSION` |
| 82 | `theorem` | [prod_divisorsAntidiagonal](declarations/prod-divisorsantidiagonal.md) | 544 | `BLOCKED_NATIVE_ADMISSION` |
| 83 | `theorem` | [prod_divisorsAntidiagonal'](declarations/prod-divisorsantidiagonal-source-edition-2.md) | 550 | `BLOCKED_NATIVE_ADMISSION` |
| 84 | `theorem` | [primeFactors_eq_to_filter_divisors_prime](declarations/primefactors-eq-to-filter-divisors-prime.md) | 556 | `BLOCKED_NATIVE_ADMISSION` |
| 85 | `lemma` | [primeFactors_filter_dvd_of_dvd](declarations/primefactors-filter-dvd-of-dvd.md) | 563 | `BLOCKED_NATIVE_ADMISSION` |
| 86 | `theorem` | [image_div_divisors_eq_divisors](declarations/image-div-divisors-eq-divisors.md) | 569 | `BLOCKED_NATIVE_ADMISSION` |
| 87 | `theorem` | [prod_div_divisors](declarations/prod-div-divisors.md) | 589 | `BLOCKED_NATIVE_ADMISSION` |
| 88 | `theorem` | [disjoint_divisors_filter_isPrimePow](declarations/disjoint-divisors-filter-isprimepow.md) | 598 | `BLOCKED_NATIVE_ADMISSION` |
| 89 | `def` | [divisorsAntidiag](declarations/divisorsantidiag.md) | 620 | `BLOCKED_NATIVE_ADMISSION` |
| 90 | `lemma` | [mem_divisorsAntidiag](declarations/mem-divisorsantidiag.md) | 631 | `BLOCKED_NATIVE_ADMISSION` |
| 91 | `lemma` | [divisorsAntidiag_zero](declarations/divisorsantidiag-zero.md) | 669 | `BLOCKED_NATIVE_ADMISSION` |
| 92 | `theorem` | [divisorsAntidiagonal_one](declarations/divisorsantidiagonal-one-source-edition-2.md) | 674 | `BLOCKED_NATIVE_ADMISSION` |
| 93 | `theorem` | [divisorsAntidiagonal_two](declarations/divisorsantidiagonal-two.md) | 679 | `BLOCKED_NATIVE_ADMISSION` |
| 94 | `theorem` | [divisorsAntidiagonal_three](declarations/divisorsantidiagonal-three.md) | 684 | `BLOCKED_NATIVE_ADMISSION` |
| 95 | `theorem` | [divisorsAntidiagonal_four](declarations/divisorsantidiagonal-four.md) | 689 | `BLOCKED_NATIVE_ADMISSION` |
| 96 | `lemma` | [prodMk_mem_divisorsAntidiag](declarations/prodmk-mem-divisorsantidiag-source-edition-2.md) | 693 | `BLOCKED_NATIVE_ADMISSION` |
| 97 | `lemma` | [swap_mem_divisorsAntidiag](declarations/swap-mem-divisorsantidiag.md) | 697 | `BLOCKED_NATIVE_ADMISSION` |
| 98 | `lemma` | [neg_mem_divisorsAntidiag](declarations/neg-mem-divisorsantidiag.md) | 700 | `BLOCKED_NATIVE_ADMISSION` |
| 99 | `lemma` | [map_prodComm_divisorsAntidiag](declarations/map-prodcomm-divisorsantidiag.md) | 703 | `BLOCKED_NATIVE_ADMISSION` |
| 100 | `lemma` | [map_neg_divisorsAntidiag](declarations/map-neg-divisorsantidiag.md) | 708 | `BLOCKED_NATIVE_ADMISSION` |
| 101 | `lemma` | [divisorsAntidiag_neg](declarations/divisorsantidiag-neg.md) | 712 | `BLOCKED_NATIVE_ADMISSION` |
| 102 | `lemma` | [divisorsAntidiag_natCast](declarations/divisorsantidiag-natcast.md) | 717 | `BLOCKED_NATIVE_ADMISSION` |
| 103 | `lemma` | [divisorsAntidiag_neg_natCast](declarations/divisorsantidiag-neg-natcast.md) | 723 | `BLOCKED_NATIVE_ADMISSION` |
| 104 | `lemma` | [divisorsAntidiag_ofNat](declarations/divisorsantidiag-ofnat.md) | 729 | `BLOCKED_NATIVE_ADMISSION` |
| 105 | `lemma` | [mul_mem_one_two_three_iff](declarations/mul-mem-one-two-three-iff.md) | 736 | `BLOCKED_NATIVE_ADMISSION` |
| 106 | `lemma` | [mul_mem_zero_one_two_three_four_iff](declarations/mul-mem-zero-one-two-three-four-iff.md) | 746 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=b7929d8e54a8c73c9f42c8c53dc6c07e8188b3cbf9f5b4216e4808a08c619eef -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/Divisors/Variant80dba7b780e17ef6e3c5ea3b99c59e44eba18b496f8efe4ba1c90a807ffef58e.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
