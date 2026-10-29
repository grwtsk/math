# List Sort Public Sorted LTNil

[Complete source index](../../../../complete-source-index.md) · [Up one directory](../../../../complete-source-index.md) · [Full source](source.md)

**148 observed declarations and anonymous commands**, 137 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Sort/Variant054c3fd69c9756013d6c895c70b45c8a25d62d68e87bcd1dca5aef3d7d86eca0.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `05290b5cf5f3e594e133e1778914e84f379de765`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../_verification/specifications/ComputerScience/TheoryOfData/DataStructures/ListSortPublicSortedLTNil.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [orderedInsert](declarations/orderedinsert.md) | 43 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `theorem` | [orderedInsert_nil](declarations/orderedinsert-nil.md) | 47 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `theorem` | [orderedInsert_cons](declarations/orderedinsert-cons.md) | 49 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `theorem` | [orderedInsert_cons_of_le](declarations/orderedinsert-cons-of-le.md) | 53 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [orderedInsert_of_not_le](declarations/orderedinsert-of-not-le.md) | 57 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `def` | [insertionSort](declarations/insertionsort.md) | 61 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [insertionSort_nil](declarations/insertionsort-nil.md) | 64 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [insertionSort_cons](declarations/insertionsort-cons.md) | 66 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `example` | [(anonymous)](declarations/example.md) | 70 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [orderedInsert_length](declarations/orderedinsert-length.md) | 74 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [orderedInsert_eq_take_drop](declarations/orderedinsert-eq-take-drop.md) | 79 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [insertionSort_cons_eq_take_drop](declarations/insertionsort-cons-eq-take-drop.md) | 83 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [mem_orderedInsert](declarations/mem-orderedinsert.md) | 90 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [map_orderedInsert](declarations/map-orderedinsert.md) | 94 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [perm_orderedInsert](declarations/perm-orderedinsert.md) | 101 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [orderedInsert_count](declarations/orderedinsert-count.md) | 108 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [perm_insertionSort](declarations/perm-insertionsort.md) | 113 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [mem_insertionSort](declarations/mem-insertionsort.md) | 117 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [length_insertionSort](declarations/length-insertionsort.md) | 121 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [insertionSort_cons_of_forall_rel](declarations/insertionsort-cons-of-forall-rel.md) | 124 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [map_insertionSort](declarations/map-insertionsort.md) | 135 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [Pairwise.insertionSort_eq](declarations/pairwise-insertionsort-eq.md) | 150 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [erase_orderedInsert](declarations/erase-orderedinsert.md) | 154 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [erase_orderedInsert_of_notMem](declarations/erase-orderedinsert-of-notmem.md) | 159 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [orderedInsert_erase](declarations/orderedinsert-erase.md) | 165 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [sublist_orderedInsert](declarations/sublist-orderedinsert.md) | 170 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [cons_sublist_orderedInsert](declarations/cons-sublist-orderedinsert.md) | 173 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [Sublist.orderedInsert_sublist](declarations/sublist-orderedinsert-sublist.md) | 177 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [Pairwise.orderedInsert](declarations/pairwise-orderedinsert.md) | 203 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [pairwise_insertionSort](declarations/pairwise-insertionsort.md) | 218 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [sublist_insertionSort](declarations/sublist-insertionsort-source-edition-2.md) | 228 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [pair_sublist_insertionSort](declarations/pair-sublist-insertionsort.md) | 244 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [sublist_insertionSort'](declarations/sublist-insertionsort.md) | 255 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [pair_sublist_insertionSort'](declarations/pair-sublist-insertionsort-source-edition-2.md) | 275 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `theorem` | [Perm.eq_of_pairwise'](declarations/perm-eq-of-pairwise.md) | 303 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `theorem` | [sublist_of_subperm_of_pairwise](declarations/sublist-of-subperm-of-pairwise.md) | 307 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `theorem` | [Subset.antisymm_of_pairwise](declarations/subset-antisymm-of-pairwise.md) | 312 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `theorem` | [Pairwise.eq_of_mem_iff](declarations/pairwise-eq-of-mem-iff.md) | 317 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `theorem` | [Pairwise.merge](declarations/pairwise-merge.md) | 327 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `theorem` | [pairwise_mergeSort'](declarations/pairwise-mergesort.md) | 337 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `theorem` | [mergeSort_eq_self](declarations/mergesort-eq-self.md) | 345 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `theorem` | [mergeSort_eq_insertionSort](declarations/mergesort-eq-insertionsort.md) | 348 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `def` | [SortedLE](declarations/sortedle.md) | 383 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `def` | [SortedGE](declarations/sortedge.md) | 385 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `def` | [SortedLT](declarations/sortedlt.md) | 387 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `def` | [SortedGT](declarations/sortedgt.md) | 389 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `theorem` | [sortedLE_iff_monotone_get](declarations/sortedle-iff-monotone-get.md) | 393 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `theorem` | [sortedGE_iff_antitone_get](declarations/sortedge-iff-antitone-get.md) | 394 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `theorem` | [sortedLT_iff_strictMono_get](declarations/sortedlt-iff-strictmono-get.md) | 395 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `theorem` | [sortedGT_iff_strictAnti_get](declarations/sortedgt-iff-strictanti-get.md) | 396 | `BLOCKED_NATIVE_ADMISSION` |
| 51 | `theorem` | [sortedLE_iff_pairwise](declarations/sortedle-iff-pairwise.md) | 407 | `BLOCKED_NATIVE_ADMISSION` |
| 52 | `theorem` | [sortedGE_iff_pairwise](declarations/sortedge-iff-pairwise.md) | 410 | `BLOCKED_NATIVE_ADMISSION` |
| 53 | `theorem` | [sortedLT_iff_pairwise](declarations/sortedlt-iff-pairwise.md) | 413 | `BLOCKED_NATIVE_ADMISSION` |
| 54 | `theorem` | [sortedGT_iff_pairwise](declarations/sortedgt-iff-pairwise.md) | 416 | `BLOCKED_NATIVE_ADMISSION` |
| 55 | `theorem` | [sortedLE_iff_isChain](declarations/sortedle-iff-ischain.md) | 429 | `BLOCKED_NATIVE_ADMISSION` |
| 56 | `theorem` | [sortedGE_iff_isChain](declarations/sortedge-iff-ischain.md) | 431 | `BLOCKED_NATIVE_ADMISSION` |
| 57 | `theorem` | [sortedLT_iff_isChain](declarations/sortedlt-iff-ischain.md) | 433 | `BLOCKED_NATIVE_ADMISSION` |
| 58 | `theorem` | [sortedGT_iff_isChain](declarations/sortedgt-iff-ischain.md) | 435 | `BLOCKED_NATIVE_ADMISSION` |
| 59 | `instance` | [decidableSortedLE](declarations/decidablesortedle.md) | 445 | `BLOCKED_NATIVE_ADMISSION` |
| 60 | `instance` | [decidableSortedGE](declarations/decidablesortedge.md) | 447 | `BLOCKED_NATIVE_ADMISSION` |
| 61 | `instance` | [decidableSortedLT](declarations/decidablesortedlt.md) | 449 | `BLOCKED_NATIVE_ADMISSION` |
| 62 | `instance` | [decidableSortedGT](declarations/decidablesortedgt.md) | 451 | `BLOCKED_NATIVE_ADMISSION` |
| 63 | `theorem` | [sortedLE_iff_getElem_le_getElem_of_le](declarations/sortedle-iff-getelem-le-getelem-of-le.md) | 460 | `BLOCKED_NATIVE_ADMISSION` |
| 64 | `theorem` | [sortedGE_iff_getElem_ge_getElem_of_le](declarations/sortedge-iff-getelem-ge-getelem-of-le.md) | 463 | `BLOCKED_NATIVE_ADMISSION` |
| 65 | `theorem` | [sortedLT_iff_getElem_lt_getElem_of_lt](declarations/sortedlt-iff-getelem-lt-getelem-of-lt.md) | 466 | `BLOCKED_NATIVE_ADMISSION` |
| 66 | `theorem` | [sortedGT_iff_getElem_gt_getElem_of_lt](declarations/sortedgt-iff-getelem-gt-getelem-of-lt.md) | 469 | `BLOCKED_NATIVE_ADMISSION` |
| 67 | `theorem` | [SortedLT.sortedLE](declarations/sortedlt-sortedle.md) | 486 | `BLOCKED_NATIVE_ADMISSION` |
| 68 | `theorem` | [SortedGT.sortedGE](declarations/sortedgt-sortedge.md) | 488 | `BLOCKED_NATIVE_ADMISSION` |
| 69 | `theorem` | [SortedLT.nodup](declarations/sortedlt-nodup.md) | 491 | `BLOCKED_NATIVE_ADMISSION` |
| 70 | `theorem` | [SortedGT.nodup](declarations/sortedgt-nodup.md) | 492 | `BLOCKED_NATIVE_ADMISSION` |
| 71 | `theorem` | [sortedLE_replicate](declarations/sortedle-replicate.md) | 494 | `BLOCKED_NATIVE_ADMISSION` |
| 72 | `theorem` | [sortedLT_finRange](declarations/sortedlt-finrange.md) | 497 | `BLOCKED_NATIVE_ADMISSION` |
| 73 | `theorem` | [sortedLT_range](declarations/sortedlt-range.md) | 500 | `BLOCKED_NATIVE_ADMISSION` |
| 74 | `theorem` | [sortedLT_range'](declarations/sortedlt-range-source-edition-2.md) | 502 | `BLOCKED_NATIVE_ADMISSION` |
| 75 | `theorem` | [sortedLE_range'](declarations/sortedle-range.md) | 505 | `BLOCKED_NATIVE_ADMISSION` |
| 76 | `theorem` | [sortedLE_ofFn_iff](declarations/sortedle-offn-iff.md) | 515 | `BLOCKED_NATIVE_ADMISSION` |
| 77 | `theorem` | [sortedGE_ofFn_iff](declarations/sortedge-offn-iff.md) | 520 | `BLOCKED_NATIVE_ADMISSION` |
| 78 | `theorem` | [sortedLT_ofFn_iff](declarations/sortedlt-offn-iff.md) | 526 | `BLOCKED_NATIVE_ADMISSION` |
| 79 | `theorem` | [sortedGT_ofFn_iff](declarations/sortedgt-offn-iff.md) | 532 | `BLOCKED_NATIVE_ADMISSION` |
| 80 | `theorem` | [sortedLT_nil](declarations/sortedlt-nil.md) | 549 | `BLOCKED_NATIVE_ADMISSION` |
| 81 | `theorem` | [sortedGT_nil](declarations/sortedgt-nil.md) | 551 | `BLOCKED_NATIVE_ADMISSION` |
| 82 | `theorem` | [sortedLE_nil](declarations/sortedle-nil.md) | 553 | `BLOCKED_NATIVE_ADMISSION` |
| 83 | `theorem` | [sortedGE_nil](declarations/sortedge-nil.md) | 555 | `BLOCKED_NATIVE_ADMISSION` |
| 84 | `theorem` | [sortedLE_reverse](declarations/sortedle-reverse.md) | 561 | `BLOCKED_NATIVE_ADMISSION` |
| 85 | `theorem` | [sortedGE_reverse](declarations/sortedge-reverse.md) | 562 | `BLOCKED_NATIVE_ADMISSION` |
| 86 | `theorem` | [sortedLT_reverse](declarations/sortedlt-reverse.md) | 563 | `BLOCKED_NATIVE_ADMISSION` |
| 87 | `theorem` | [sortedGT_reverse](declarations/sortedgt-reverse.md) | 564 | `BLOCKED_NATIVE_ADMISSION` |
| 88 | `theorem` | [sortedLE_map_ofDual](declarations/sortedle-map-ofdual.md) | 579 | `BLOCKED_NATIVE_ADMISSION` |
| 89 | `theorem` | [sortedGE_map_ofDual](declarations/sortedge-map-ofdual.md) | 582 | `BLOCKED_NATIVE_ADMISSION` |
| 90 | `theorem` | [sortedLT_map_ofDual](declarations/sortedlt-map-ofdual.md) | 585 | `BLOCKED_NATIVE_ADMISSION` |
| 91 | `theorem` | [sortedGT_map_ofDual](declarations/sortedgt-map-ofdual.md) | 588 | `BLOCKED_NATIVE_ADMISSION` |
| 92 | `theorem` | [sortedLE_map_toDual](declarations/sortedle-map-todual.md) | 603 | `BLOCKED_NATIVE_ADMISSION` |
| 93 | `theorem` | [sortedGE_map_toDual](declarations/sortedge-map-todual.md) | 606 | `BLOCKED_NATIVE_ADMISSION` |
| 94 | `theorem` | [sortedLT_map_toDual](declarations/sortedlt-map-todual.md) | 609 | `BLOCKED_NATIVE_ADMISSION` |
| 95 | `theorem` | [sortedGT_map_toDual](declarations/sortedgt-map-todual.md) | 612 | `BLOCKED_NATIVE_ADMISSION` |
| 96 | `theorem` | [SortedLE.sortedLT_of_nodup](declarations/sortedle-sortedlt-of-nodup.md) | 631 | `BLOCKED_NATIVE_ADMISSION` |
| 97 | `theorem` | [SortedGE.sortedGT_of_nodup](declarations/sortedge-sortedgt-of-nodup.md) | 634 | `BLOCKED_NATIVE_ADMISSION` |
| 98 | `theorem` | [sortedLT_iff_nodup_and_sortedLE](declarations/sortedlt-iff-nodup-and-sortedle.md) | 637 | `BLOCKED_NATIVE_ADMISSION` |
| 99 | `theorem` | [sortedGT_iff_nodup_and_sortedGE](declarations/sortedgt-iff-nodup-and-sortedge.md) | 640 | `BLOCKED_NATIVE_ADMISSION` |
| 100 | `theorem` | [Perm.eq_of_sortedLE](declarations/perm-eq-of-sortedle.md) | 643 | `BLOCKED_NATIVE_ADMISSION` |
| 101 | `theorem` | [Perm.eq_of_sortedGE](declarations/perm-eq-of-sortedge.md) | 647 | `BLOCKED_NATIVE_ADMISSION` |
| 102 | `theorem` | [Subset.antisymm_of_sortedLT](declarations/subset-antisymm-of-sortedlt.md) | 651 | `BLOCKED_NATIVE_ADMISSION` |
| 103 | `theorem` | [Subset.antisymm_of_sortedGT](declarations/subset-antisymm-of-sortedgt.md) | 655 | `BLOCKED_NATIVE_ADMISSION` |
| 104 | `theorem` | [SortedLT.eq_of_mem_iff](declarations/sortedlt-eq-of-mem-iff.md) | 659 | `BLOCKED_NATIVE_ADMISSION` |
| 105 | `theorem` | [SortedGT.eq_of_mem_iff](declarations/sortedgt-eq-of-mem-iff.md) | 663 | `BLOCKED_NATIVE_ADMISSION` |
| 106 | `theorem` | [Perm.eq_reverse_of_sortedLE_of_sortedGE](declarations/perm-eq-reverse-of-sortedle-of-sortedge.md) | 667 | `BLOCKED_NATIVE_ADMISSION` |
| 107 | `theorem` | [SortedLT.eq_reverse_of_mem_iff_of_sortedGT](declarations/sortedlt-eq-reverse-of-mem-iff-of-sortedgt.md) | 671 | `BLOCKED_NATIVE_ADMISSION` |
| 108 | `theorem` | [SortedGT.eq_reverse_of_mem_iff_of_sortedLT](declarations/sortedgt-eq-reverse-of-mem-iff-of-sortedlt.md) | 675 | `BLOCKED_NATIVE_ADMISSION` |
| 109 | `theorem` | [sublist_of_subperm_of_sortedLE](declarations/sublist-of-subperm-of-sortedle.md) | 680 | `BLOCKED_NATIVE_ADMISSION` |
| 110 | `theorem` | [sublist_of_subperm_of_sortedGE](declarations/sublist-of-subperm-of-sortedge.md) | 683 | `BLOCKED_NATIVE_ADMISSION` |
| 111 | `theorem` | [sortedLE_mergeSort](declarations/sortedle-mergesort.md) | 692 | `BLOCKED_NATIVE_ADMISSION` |
| 112 | `theorem` | [sortedGE_mergeSort](declarations/sortedge-mergesort.md) | 695 | `BLOCKED_NATIVE_ADMISSION` |
| 113 | `theorem` | [sortedLE_insertionSort](declarations/sortedle-insertionsort.md) | 698 | `BLOCKED_NATIVE_ADMISSION` |
| 114 | `theorem` | [sortedGE_insertionSort](declarations/sortedge-insertionsort.md) | 701 | `BLOCKED_NATIVE_ADMISSION` |
| 115 | `theorem` | [sortedLE_append](declarations/sortedle-append.md) | 705 | `BLOCKED_NATIVE_ADMISSION` |
| 116 | `theorem` | [sortedGE_append](declarations/sortedge-append.md) | 710 | `BLOCKED_NATIVE_ADMISSION` |
| 117 | `theorem` | [sortedLT_append](declarations/sortedlt-append.md) | 715 | `BLOCKED_NATIVE_ADMISSION` |
| 118 | `theorem` | [sortedGT_append](declarations/sortedgt-append.md) | 720 | `BLOCKED_NATIVE_ADMISSION` |
| 119 | `theorem` | [sortedLE_cons](declarations/sortedle-cons.md) | 729 | `BLOCKED_NATIVE_ADMISSION` |
| 120 | `theorem` | [sortedGE_cons](declarations/sortedge-cons.md) | 733 | `BLOCKED_NATIVE_ADMISSION` |
| 121 | `theorem` | [sortedLT_cons](declarations/sortedlt-cons.md) | 737 | `BLOCKED_NATIVE_ADMISSION` |
| 122 | `theorem` | [sortedGT_cons](declarations/sortedgt-cons.md) | 741 | `BLOCKED_NATIVE_ADMISSION` |
| 123 | `theorem` | [sortedLE_concat](declarations/sortedle-concat.md) | 744 | `BLOCKED_NATIVE_ADMISSION` |
| 124 | `theorem` | [sortedGE_concat](declarations/sortedge-concat.md) | 747 | `BLOCKED_NATIVE_ADMISSION` |
| 125 | `theorem` | [sortedLT_concat](declarations/sortedlt-concat.md) | 750 | `BLOCKED_NATIVE_ADMISSION` |
| 126 | `theorem` | [sortedGT_concat](declarations/sortedgt-concat.md) | 753 | `BLOCKED_NATIVE_ADMISSION` |
| 127 | `theorem` | [SortedLT.getElem_le_getElem_iff](declarations/sortedlt-getelem-le-getelem-iff.md) | 759 | `BLOCKED_NATIVE_ADMISSION` |
| 128 | `theorem` | [SortedGT.getElem_le_getElem_iff](declarations/sortedgt-getelem-le-getelem-iff.md) | 763 | `BLOCKED_NATIVE_ADMISSION` |
| 129 | `theorem` | [SortedLT.getElem_lt_getElem_iff](declarations/sortedlt-getelem-lt-getelem-iff.md) | 767 | `BLOCKED_NATIVE_ADMISSION` |
| 130 | `theorem` | [SortedGT.getElem_lt_getElem_iff](declarations/sortedgt-getelem-lt-getelem-iff.md) | 771 | `BLOCKED_NATIVE_ADMISSION` |
| 131 | `theorem` | [pairwise_listMap](declarations/pairwise-listmap.md) | 787 | `BLOCKED_NATIVE_ADMISSION` |
| 132 | `theorem` | [pairwise_swap_listMap](declarations/pairwise-swap-listmap.md) | 791 | `BLOCKED_NATIVE_ADMISSION` |
| 133 | `theorem` | [pairwise_listMap](declarations/pairwise-listmap-source-edition-2.md) | 802 | `BLOCKED_NATIVE_ADMISSION` |
| 134 | `theorem` | [pairwise_swap_listMap](declarations/pairwise-swap-listmap-source-edition-2.md) | 806 | `BLOCKED_NATIVE_ADMISSION` |
| 135 | `theorem` | [sortedLE_listMap](declarations/sortedle-listmap.md) | 819 | `BLOCKED_NATIVE_ADMISSION` |
| 136 | `theorem` | [sortedLT_listMap](declarations/sortedlt-listmap.md) | 824 | `BLOCKED_NATIVE_ADMISSION` |
| 137 | `theorem` | [sortedGE_listMap](declarations/sortedge-listmap-source-edition-2.md) | 830 | `BLOCKED_NATIVE_ADMISSION` |
| 138 | `theorem` | [sortedGT_listMap](declarations/sortedgt-listmap-source-edition-2.md) | 835 | `BLOCKED_NATIVE_ADMISSION` |
| 139 | `theorem` | [sortedLT_listMap](declarations/sortedlt-listmap-source-edition-4.md) | 846 | `BLOCKED_NATIVE_ADMISSION` |
| 140 | `theorem` | [sortedGT_listMap](declarations/sortedgt-listmap-source-edition-3.md) | 851 | `BLOCKED_NATIVE_ADMISSION` |
| 141 | `theorem` | [sortedLE_listMap](declarations/sortedle-listmap-source-edition-2.md) | 861 | `BLOCKED_NATIVE_ADMISSION` |
| 142 | `theorem` | [sortedGE_listMap](declarations/sortedge-listmap.md) | 865 | `BLOCKED_NATIVE_ADMISSION` |
| 143 | `theorem` | [sortedLT_listMap](declarations/sortedlt-listmap-source-edition-3.md) | 869 | `BLOCKED_NATIVE_ADMISSION` |
| 144 | `theorem` | [sortedGT_listMap](declarations/sortedgt-listmap.md) | 873 | `BLOCKED_NATIVE_ADMISSION` |
| 145 | `theorem` | [sortedLE_listMap](declarations/sortedle-listmap-source-edition-3.md) | 885 | `BLOCKED_NATIVE_ADMISSION` |
| 146 | `theorem` | [sortedGE_listMap](declarations/sortedge-listmap-source-edition-3.md) | 889 | `BLOCKED_NATIVE_ADMISSION` |
| 147 | `theorem` | [sortedLT_listMap](declarations/sortedlt-listmap-source-edition-2.md) | 893 | `BLOCKED_NATIVE_ADMISSION` |
| 148 | `theorem` | [sortedGT_listMap](declarations/sortedgt-listmap-source-edition-4.md) | 897 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=d2c2ded23b9d1193ee23a2c2998b24eb13828ab3b12504539a3fec7f79c45182 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Sort/Variant054c3fd69c9756013d6c895c70b45c8a25d62d68e87bcd1dca5aef3d7d86eca0.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
