# List Sort Monotone Iff Of Fn Sorted

[Complete source index](../../../../complete-source-index.md) · [Up one directory](../../../../complete-source-index.md) · [Full source](source.md)

**51 observed declarations and anonymous commands**, 44 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Sort/Variant2a78a3e5c42581a8d45f84016d16d36275d9960c0084f7ddc419a8de630608bb.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `dbb515a7fbb90cc8b51aadb17e6ad77aef412b5c`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../_verification/specifications/ComputerScience/TheoryOfData/DataStructures/ListSortMonotoneIffOfFnSorted.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [Sorted](declarations/sorted.md) | 37 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `instance` | [decidableSorted](declarations/decidablesorted.md) | 41 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `theorem` | [Sorted.le_of_lt](declarations/sorted-le-of-lt.md) | 45 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `theorem` | [Sorted.lt_of_le](declarations/sorted-lt-of-le.md) | 49 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [sorted_nil](declarations/sorted-nil.md) | 54 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [Sorted.of_cons](declarations/sorted-of-cons.md) | 58 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [Sorted.tail](declarations/sorted-tail.md) | 62 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [rel_of_sorted_cons](declarations/rel-of-sorted-cons.md) | 66 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [sorted_cons](declarations/sorted-cons.md) | 71 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [Sorted.nodup](declarations/sorted-nodup.md) | 75 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [eq_of_perm_of_sorted](declarations/eq-of-perm-of-sorted.md) | 80 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [sublist_of_subperm_of_sorted](declarations/sublist-of-subperm-of-sorted.md) | 99 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [sorted_singleton](declarations/sorted-singleton.md) | 106 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [Sorted.rel_get_of_lt](declarations/sorted-rel-get-of-lt.md) | 110 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [Sorted.rel_nthLe_of_lt](declarations/sorted-rel-nthle-of-lt.md) | 114 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [Sorted.rel_get_of_le](declarations/sorted-rel-get-of-le.md) | 119 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [Sorted.rel_nthLe_of_le](declarations/sorted-rel-nthle-of-le.md) | 124 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [Sorted.rel_of_mem_take_of_mem_drop](declarations/sorted-rel-of-mem-take-of-mem-drop.md) | 129 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [sorted_ofFn_iff](declarations/sorted-offn-iff.md) | 144 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [sorted_lt_ofFn_iff](declarations/sorted-lt-offn-iff.md) | 150 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [sorted_le_ofFn_iff](declarations/sorted-le-offn-iff.md) | 153 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [monotone_iff_ofFn_sorted](declarations/monotone-iff-offn-sorted.md) | 158 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `def` | [orderedInsert](declarations/orderedinsert.md) | 181 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `def` | [insertionSort](declarations/insertionsort.md) | 188 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [orderedInsert_nil](declarations/orderedinsert-nil.md) | 194 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [orderedInsert_length](declarations/orderedinsert-length.md) | 198 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [orderedInsert_eq_take_drop](declarations/orderedinsert-eq-take-drop.md) | 206 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [insertionSort_cons_eq_take_drop](declarations/insertionsort-cons-eq-take-drop.md) | 215 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [perm_orderedInsert](declarations/perm-orderedinsert.md) | 226 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [orderedInsert_count](declarations/orderedinsert-count.md) | 234 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [perm_insertionSort](declarations/perm-insertionsort.md) | 239 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [Sorted.insertionSort_eq](declarations/sorted-insertionsort-eq.md) | 249 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [Sorted.orderedInsert](declarations/sorted-orderedinsert.md) | 261 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [sorted_insertionSort](declarations/sorted-insertionsort.md) | 281 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `def` | [split](declarations/split.md) | 303 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `theorem` | [split_cons_of_eq](declarations/split-cons-of-eq.md) | 310 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `theorem` | [length_split_le](declarations/length-split-le.md) | 314 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `theorem` | [length_split_lt](declarations/length-split-lt.md) | 324 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `theorem` | [perm_split](declarations/perm-split.md) | 332 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `def` | [merge](declarations/merge.md) | 343 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `def` | [mergeSort](declarations/mergesort.md) | 351 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `theorem` | [mergeSort_cons_cons](declarations/mergesort-cons-cons.md) | 366 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `theorem` | [perm_merge](declarations/perm-merge.md) | 373 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `theorem` | [perm_mergeSort](declarations/perm-mergesort.md) | 385 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `theorem` | [length_mergeSort](declarations/length-mergesort.md) | 399 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `theorem` | [Sorted.merge](declarations/sorted-merge.md) | 407 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `theorem` | [sorted_mergeSort](declarations/sorted-mergesort.md) | 438 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `theorem` | [mergeSort_eq_self](declarations/mergesort-eq-self.md) | 449 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `theorem` | [mergeSort_eq_insertionSort](declarations/mergesort-eq-insertionsort.md) | 453 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `theorem` | [mergeSort_nil](declarations/mergesort-nil.md) | 464 | `BLOCKED_NATIVE_ADMISSION` |
| 51 | `theorem` | [mergeSort_singleton](declarations/mergesort-singleton.md) | 468 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=343426ad1c499aa994bcba7333a990b1d5a4ff0b9aac174d5147fa3423e9fece -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Sort/Variant2a78a3e5c42581a8d45f84016d16d36275d9960c0084f7ddc419a8de630608bb.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
