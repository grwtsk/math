# List Sort Public Sorted Le Range

[Complete source index](../../../../complete-source-index.md) · [Up one directory](../../../../complete-source-index.md) · [Full source](source.md)

**135 observed declarations and anonymous commands**, 123 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Sort/Variant96503974e194a4ea0d1506c8888dc5f044eafb7612a9dc92967d26ce07815e84.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `cddf732a9385ac55f4f3de1d9667d2ccf0d6deb8`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../_verification/specifications/ComputerScience/TheoryOfData/DataStructures/ListSortPublicSortedLeRange.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [orderedInsert](declarations/orderedinsert.md) | 45 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `theorem` | [orderedInsert_nil](declarations/orderedinsert-nil.md) | 49 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `theorem` | [orderedInsert_cons](declarations/orderedinsert-cons.md) | 51 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `theorem` | [orderedInsert_cons_of_le](declarations/orderedinsert-cons-of-le.md) | 55 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [orderedInsert_of_not_le](declarations/orderedinsert-of-not-le.md) | 61 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `def` | [insertionSort](declarations/insertionsort.md) | 65 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [insertionSort_nil](declarations/insertionsort-nil.md) | 68 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [insertionSort_cons](declarations/insertionsort-cons.md) | 70 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `example` | [(anonymous)](declarations/example-source-edition-2.md) | 74 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [orderedInsert_length](declarations/orderedinsert-length.md) | 78 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [orderedInsert_eq_take_drop](declarations/orderedinsert-eq-take-drop.md) | 83 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [insertionSort_cons_eq_take_drop](declarations/insertionsort-cons-eq-take-drop.md) | 87 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [mem_orderedInsert](declarations/mem-orderedinsert.md) | 94 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [map_orderedInsert](declarations/map-orderedinsert.md) | 98 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [perm_orderedInsert](declarations/perm-orderedinsert.md) | 105 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [orderedInsert_count](declarations/orderedinsert-count.md) | 112 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [perm_insertionSort](declarations/perm-insertionsort.md) | 117 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [mem_insertionSort](declarations/mem-insertionsort.md) | 121 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [length_insertionSort](declarations/length-insertionsort.md) | 125 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [insertionSort_cons_of_forall_rel](declarations/insertionsort-cons-of-forall-rel.md) | 128 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [map_insertionSort](declarations/map-insertionsort.md) | 139 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [Pairwise.insertionSort_eq](declarations/pairwise-insertionsort-eq.md) | 154 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [erase_orderedInsert](declarations/erase-orderedinsert.md) | 158 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [erase_orderedInsert_of_notMem](declarations/erase-orderedinsert-of-notmem.md) | 163 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [orderedInsert_erase](declarations/orderedinsert-erase.md) | 169 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [sublist_orderedInsert](declarations/sublist-orderedinsert.md) | 174 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [cons_sublist_orderedInsert](declarations/cons-sublist-orderedinsert.md) | 177 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [Sublist.orderedInsert_sublist](declarations/sublist-orderedinsert-sublist.md) | 181 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [Pairwise.orderedInsert](declarations/pairwise-orderedinsert.md) | 207 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [pairwise_insertionSort](declarations/pairwise-insertionsort.md) | 222 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [sublist_insertionSort](declarations/sublist-insertionsort.md) | 232 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [pair_sublist_insertionSort](declarations/pair-sublist-insertionsort-source-edition-2.md) | 248 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [sublist_insertionSort'](declarations/sublist-insertionsort-source-edition-2.md) | 259 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [pair_sublist_insertionSort'](declarations/pair-sublist-insertionsort.md) | 279 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `example` | [(anonymous)](declarations/example.md) | 294 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `theorem` | [Perm.eq_of_pairwise'](declarations/perm-eq-of-pairwise.md) | 307 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `theorem` | [sublist_of_subperm_of_pairwise](declarations/sublist-of-subperm-of-pairwise.md) | 311 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `theorem` | [Subset.antisymm_of_pairwise](declarations/subset-antisymm-of-pairwise.md) | 316 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `theorem` | [Pairwise.eq_of_mem_iff](declarations/pairwise-eq-of-mem-iff.md) | 321 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `theorem` | [Pairwise.merge](declarations/pairwise-merge.md) | 331 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `theorem` | [pairwise_mergeSort'](declarations/pairwise-mergesort.md) | 343 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `theorem` | [mergeSort_eq_self](declarations/mergesort-eq-self.md) | 353 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `theorem` | [mergeSort_eq_insertionSort](declarations/mergesort-eq-insertionsort.md) | 356 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `def` | [SortedLE](declarations/sortedle.md) | 391 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `def` | [SortedGE](declarations/sortedge.md) | 393 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `def` | [SortedLT](declarations/sortedlt.md) | 395 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `def` | [SortedGT](declarations/sortedgt.md) | 397 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `theorem` | [sortedLE_iff_monotone_get](declarations/sortedle-iff-monotone-get.md) | 401 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `theorem` | [sortedGE_iff_antitone_get](declarations/sortedge-iff-antitone-get.md) | 402 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `theorem` | [sortedLT_iff_strictMono_get](declarations/sortedlt-iff-strictmono-get.md) | 403 | `BLOCKED_NATIVE_ADMISSION` |
| 51 | `theorem` | [sortedGT_iff_strictAnti_get](declarations/sortedgt-iff-strictanti-get.md) | 404 | `BLOCKED_NATIVE_ADMISSION` |
| 52 | `theorem` | [sortedLE_iff_pairwise](declarations/sortedle-iff-pairwise.md) | 415 | `BLOCKED_NATIVE_ADMISSION` |
| 53 | `theorem` | [sortedGE_iff_pairwise](declarations/sortedge-iff-pairwise.md) | 418 | `BLOCKED_NATIVE_ADMISSION` |
| 54 | `theorem` | [sortedLT_iff_pairwise](declarations/sortedlt-iff-pairwise.md) | 421 | `BLOCKED_NATIVE_ADMISSION` |
| 55 | `theorem` | [sortedGT_iff_pairwise](declarations/sortedgt-iff-pairwise.md) | 424 | `BLOCKED_NATIVE_ADMISSION` |
| 56 | `theorem` | [sortedLE_iff_isChain](declarations/sortedle-iff-ischain.md) | 437 | `BLOCKED_NATIVE_ADMISSION` |
| 57 | `theorem` | [sortedGE_iff_isChain](declarations/sortedge-iff-ischain.md) | 439 | `BLOCKED_NATIVE_ADMISSION` |
| 58 | `theorem` | [sortedLT_iff_isChain](declarations/sortedlt-iff-ischain.md) | 441 | `BLOCKED_NATIVE_ADMISSION` |
| 59 | `theorem` | [sortedGT_iff_isChain](declarations/sortedgt-iff-ischain.md) | 443 | `BLOCKED_NATIVE_ADMISSION` |
| 60 | `instance` | [decidableSortedLE](declarations/decidablesortedle.md) | 453 | `BLOCKED_NATIVE_ADMISSION` |
| 61 | `instance` | [decidableSortedGE](declarations/decidablesortedge.md) | 455 | `BLOCKED_NATIVE_ADMISSION` |
| 62 | `instance` | [decidableSortedLT](declarations/decidablesortedlt.md) | 457 | `BLOCKED_NATIVE_ADMISSION` |
| 63 | `instance` | [decidableSortedGT](declarations/decidablesortedgt.md) | 459 | `BLOCKED_NATIVE_ADMISSION` |
| 64 | `theorem` | [sortedLE_iff_getElem_le_getElem_of_le](declarations/sortedle-iff-getelem-le-getelem-of-le.md) | 468 | `BLOCKED_NATIVE_ADMISSION` |
| 65 | `theorem` | [sortedGE_iff_getElem_ge_getElem_of_le](declarations/sortedge-iff-getelem-ge-getelem-of-le.md) | 471 | `BLOCKED_NATIVE_ADMISSION` |
| 66 | `theorem` | [sortedLT_iff_getElem_lt_getElem_of_lt](declarations/sortedlt-iff-getelem-lt-getelem-of-lt.md) | 474 | `BLOCKED_NATIVE_ADMISSION` |
| 67 | `theorem` | [sortedGT_iff_getElem_gt_getElem_of_lt](declarations/sortedgt-iff-getelem-gt-getelem-of-lt.md) | 477 | `BLOCKED_NATIVE_ADMISSION` |
| 68 | `theorem` | [SortedLT.sortedLE](declarations/sortedlt-sortedle.md) | 494 | `BLOCKED_NATIVE_ADMISSION` |
| 69 | `theorem` | [SortedGT.sortedGE](declarations/sortedgt-sortedge.md) | 496 | `BLOCKED_NATIVE_ADMISSION` |
| 70 | `theorem` | [SortedLT.nodup](declarations/sortedlt-nodup.md) | 502 | `BLOCKED_NATIVE_ADMISSION` |
| 71 | `theorem` | [SortedGT.nodup](declarations/sortedgt-nodup.md) | 503 | `BLOCKED_NATIVE_ADMISSION` |
| 72 | `theorem` | [sortedLE_replicate](declarations/sortedle-replicate.md) | 505 | `BLOCKED_NATIVE_ADMISSION` |
| 73 | `theorem` | [sortedLT_finRange](declarations/sortedlt-finrange.md) | 510 | `BLOCKED_NATIVE_ADMISSION` |
| 74 | `theorem` | [sortedLT_range](declarations/sortedlt-range.md) | 513 | `BLOCKED_NATIVE_ADMISSION` |
| 75 | `theorem` | [sorted_le_range](declarations/sorted-le-range.md) | 518 | `BLOCKED_NATIVE_ADMISSION` |
| 76 | `theorem` | [sortedLT_range'](declarations/sortedlt-range-source-edition-2.md) | 521 | `BLOCKED_NATIVE_ADMISSION` |
| 77 | `theorem` | [sorted_le_range'](declarations/sorted-le-range-source-edition-2.md) | 527 | `BLOCKED_NATIVE_ADMISSION` |
| 78 | `theorem` | [sortedLE_range'](declarations/sortedle-range.md) | 530 | `BLOCKED_NATIVE_ADMISSION` |
| 79 | `theorem` | [sortedLE_ofFn_iff](declarations/sortedle-offn-iff.md) | 540 | `BLOCKED_NATIVE_ADMISSION` |
| 80 | `theorem` | [sortedGE_ofFn_iff](declarations/sortedge-offn-iff.md) | 545 | `BLOCKED_NATIVE_ADMISSION` |
| 81 | `theorem` | [sortedLT_ofFn_iff](declarations/sortedlt-offn-iff.md) | 551 | `BLOCKED_NATIVE_ADMISSION` |
| 82 | `theorem` | [sortedGT_ofFn_iff](declarations/sortedgt-offn-iff.md) | 557 | `BLOCKED_NATIVE_ADMISSION` |
| 83 | `theorem` | [sortedLE_reverse](declarations/sortedle-reverse.md) | 579 | `BLOCKED_NATIVE_ADMISSION` |
| 84 | `theorem` | [sortedGE_reverse](declarations/sortedge-reverse.md) | 580 | `BLOCKED_NATIVE_ADMISSION` |
| 85 | `theorem` | [sortedLT_reverse](declarations/sortedlt-reverse.md) | 581 | `BLOCKED_NATIVE_ADMISSION` |
| 86 | `theorem` | [sortedGT_reverse](declarations/sortedgt-reverse.md) | 582 | `BLOCKED_NATIVE_ADMISSION` |
| 87 | `theorem` | [sortedLE_map_ofDual](declarations/sortedle-map-ofdual.md) | 597 | `BLOCKED_NATIVE_ADMISSION` |
| 88 | `theorem` | [sortedGE_map_ofDual](declarations/sortedge-map-ofdual.md) | 600 | `BLOCKED_NATIVE_ADMISSION` |
| 89 | `theorem` | [sortedLT_map_ofDual](declarations/sortedlt-map-ofdual.md) | 603 | `BLOCKED_NATIVE_ADMISSION` |
| 90 | `theorem` | [sortedGT_map_ofDual](declarations/sortedgt-map-ofdual.md) | 606 | `BLOCKED_NATIVE_ADMISSION` |
| 91 | `theorem` | [sortedLE_map_toDual](declarations/sortedle-map-todual.md) | 621 | `BLOCKED_NATIVE_ADMISSION` |
| 92 | `theorem` | [sortedGE_map_toDual](declarations/sortedge-map-todual.md) | 624 | `BLOCKED_NATIVE_ADMISSION` |
| 93 | `theorem` | [sortedLT_map_toDual](declarations/sortedlt-map-todual.md) | 627 | `BLOCKED_NATIVE_ADMISSION` |
| 94 | `theorem` | [sortedGT_map_toDual](declarations/sortedgt-map-todual.md) | 630 | `BLOCKED_NATIVE_ADMISSION` |
| 95 | `theorem` | [SortedLE.sortedLT_of_nodup](declarations/sortedle-sortedlt-of-nodup.md) | 649 | `BLOCKED_NATIVE_ADMISSION` |
| 96 | `theorem` | [SortedGE.sortedGT_of_nodup](declarations/sortedge-sortedgt-of-nodup.md) | 652 | `BLOCKED_NATIVE_ADMISSION` |
| 97 | `theorem` | [sortedLT_iff_nodup_and_sortedLE](declarations/sortedlt-iff-nodup-and-sortedle.md) | 658 | `BLOCKED_NATIVE_ADMISSION` |
| 98 | `theorem` | [sortedGT_iff_nodup_and_sortedGE](declarations/sortedgt-iff-nodup-and-sortedge.md) | 661 | `BLOCKED_NATIVE_ADMISSION` |
| 99 | `theorem` | [Perm.eq_of_sortedLE](declarations/perm-eq-of-sortedle.md) | 664 | `BLOCKED_NATIVE_ADMISSION` |
| 100 | `theorem` | [Perm.eq_of_sortedGE](declarations/perm-eq-of-sortedge.md) | 668 | `BLOCKED_NATIVE_ADMISSION` |
| 101 | `theorem` | [Subset.antisymm_of_sortedLT](declarations/subset-antisymm-of-sortedlt.md) | 672 | `BLOCKED_NATIVE_ADMISSION` |
| 102 | `theorem` | [Subset.antisymm_of_sortedGT](declarations/subset-antisymm-of-sortedgt.md) | 676 | `BLOCKED_NATIVE_ADMISSION` |
| 103 | `theorem` | [SortedLT.eq_of_mem_iff](declarations/sortedlt-eq-of-mem-iff.md) | 680 | `BLOCKED_NATIVE_ADMISSION` |
| 104 | `theorem` | [SortedGT.eq_of_mem_iff](declarations/sortedgt-eq-of-mem-iff.md) | 684 | `BLOCKED_NATIVE_ADMISSION` |
| 105 | `theorem` | [Perm.eq_reverse_of_sortedLE_of_sortedGE](declarations/perm-eq-reverse-of-sortedle-of-sortedge.md) | 688 | `BLOCKED_NATIVE_ADMISSION` |
| 106 | `theorem` | [SortedLT.eq_reverse_of_mem_iff_of_sortedGT](declarations/sortedlt-eq-reverse-of-mem-iff-of-sortedgt.md) | 692 | `BLOCKED_NATIVE_ADMISSION` |
| 107 | `theorem` | [SortedGT.eq_reverse_of_mem_iff_of_sortedLT](declarations/sortedgt-eq-reverse-of-mem-iff-of-sortedlt.md) | 696 | `BLOCKED_NATIVE_ADMISSION` |
| 108 | `theorem` | [sublist_of_subperm_of_sortedLE](declarations/sublist-of-subperm-of-sortedle.md) | 701 | `BLOCKED_NATIVE_ADMISSION` |
| 109 | `theorem` | [sublist_of_subperm_of_sortedGE](declarations/sublist-of-subperm-of-sortedge.md) | 704 | `BLOCKED_NATIVE_ADMISSION` |
| 110 | `theorem` | [sortedLE_mergeSort](declarations/sortedle-mergesort.md) | 713 | `BLOCKED_NATIVE_ADMISSION` |
| 111 | `theorem` | [sortedGE_mergeSort](declarations/sortedge-mergesort.md) | 716 | `BLOCKED_NATIVE_ADMISSION` |
| 112 | `theorem` | [sortedLE_insertionSort](declarations/sortedle-insertionsort.md) | 719 | `BLOCKED_NATIVE_ADMISSION` |
| 113 | `theorem` | [sortedGE_insertionSort](declarations/sortedge-insertionsort.md) | 722 | `BLOCKED_NATIVE_ADMISSION` |
| 114 | `theorem` | [SortedLT.getElem_le_getElem_iff](declarations/sortedlt-getelem-le-getelem-iff.md) | 726 | `BLOCKED_NATIVE_ADMISSION` |
| 115 | `theorem` | [SortedGT.getElem_le_getElem_iff](declarations/sortedgt-getelem-le-getelem-iff.md) | 730 | `BLOCKED_NATIVE_ADMISSION` |
| 116 | `theorem` | [SortedLT.getElem_lt_getElem_iff](declarations/sortedlt-getelem-lt-getelem-iff.md) | 734 | `BLOCKED_NATIVE_ADMISSION` |
| 117 | `theorem` | [SortedGT.getElem_lt_getElem_iff](declarations/sortedgt-getelem-lt-getelem-iff.md) | 738 | `BLOCKED_NATIVE_ADMISSION` |
| 118 | `theorem` | [pairwise_listMap](declarations/pairwise-listmap.md) | 754 | `BLOCKED_NATIVE_ADMISSION` |
| 119 | `theorem` | [pairwise_swap_listMap](declarations/pairwise-swap-listmap.md) | 760 | `BLOCKED_NATIVE_ADMISSION` |
| 120 | `theorem` | [pairwise_listMap](declarations/pairwise-listmap-source-edition-2.md) | 773 | `BLOCKED_NATIVE_ADMISSION` |
| 121 | `theorem` | [pairwise_swap_listMap](declarations/pairwise-swap-listmap-source-edition-2.md) | 777 | `BLOCKED_NATIVE_ADMISSION` |
| 122 | `theorem` | [sortedLE_listMap](declarations/sortedle-listmap-source-edition-3.md) | 790 | `BLOCKED_NATIVE_ADMISSION` |
| 123 | `theorem` | [sortedLT_listMap](declarations/sortedlt-listmap.md) | 795 | `BLOCKED_NATIVE_ADMISSION` |
| 124 | `theorem` | [sortedGE_listMap](declarations/sortedge-listmap.md) | 801 | `BLOCKED_NATIVE_ADMISSION` |
| 125 | `theorem` | [sortedGT_listMap](declarations/sortedgt-listmap.md) | 806 | `BLOCKED_NATIVE_ADMISSION` |
| 126 | `theorem` | [sortedLT_listMap](declarations/sortedlt-listmap-source-edition-2.md) | 822 | `BLOCKED_NATIVE_ADMISSION` |
| 127 | `theorem` | [sortedGT_listMap](declarations/sortedgt-listmap-source-edition-3.md) | 827 | `BLOCKED_NATIVE_ADMISSION` |
| 128 | `theorem` | [sortedLE_listMap](declarations/sortedle-listmap-source-edition-2.md) | 837 | `BLOCKED_NATIVE_ADMISSION` |
| 129 | `theorem` | [sortedGE_listMap](declarations/sortedge-listmap-source-edition-2.md) | 841 | `BLOCKED_NATIVE_ADMISSION` |
| 130 | `theorem` | [sortedLT_listMap](declarations/sortedlt-listmap-source-edition-4.md) | 845 | `BLOCKED_NATIVE_ADMISSION` |
| 131 | `theorem` | [sortedGT_listMap](declarations/sortedgt-listmap-source-edition-4.md) | 849 | `BLOCKED_NATIVE_ADMISSION` |
| 132 | `theorem` | [sortedLE_listMap](declarations/sortedle-listmap.md) | 861 | `BLOCKED_NATIVE_ADMISSION` |
| 133 | `theorem` | [sortedGE_listMap](declarations/sortedge-listmap-source-edition-3.md) | 865 | `BLOCKED_NATIVE_ADMISSION` |
| 134 | `theorem` | [sortedLT_listMap](declarations/sortedlt-listmap-source-edition-3.md) | 869 | `BLOCKED_NATIVE_ADMISSION` |
| 135 | `theorem` | [sortedGT_listMap](declarations/sortedgt-listmap-source-edition-2.md) | 873 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=e25bf93f762e0889122c98e7ee995b488658b58e39fc683abdd61afd479c3cec -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Sort/Variant96503974e194a4ea0d1506c8888dc5f044eafb7612a9dc92967d26ce07815e84.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
