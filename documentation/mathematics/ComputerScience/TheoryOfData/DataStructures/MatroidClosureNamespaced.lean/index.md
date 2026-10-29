# Matroid Closure Namespaced

[Complete source index](../../../../complete-source-index.md) · [Up one directory](../../../../complete-source-index.md) · [Full source](source.md)

**164 observed declarations and anonymous commands**, 159 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Topology/GeneralTopology/Closure/Variant2f1aea834be845e7d006dde57a4682ad123c3a67a78d296e86a90c7cf754c601.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `47c1114aae9848672188b2156ac53232436a03d8`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../_verification/specifications/ComputerScience/TheoryOfData/DataStructures/MatroidClosureNamespaced.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `structure` | [IsFlat](declarations/isflat.md) | 98 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `lemma` | [ground_isFlat](declarations/ground-isflat.md) | 106 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `lemma` | [IsFlat.iInter](declarations/isflat-iinter.md) | 109 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `def` | [subtypeClosure](declarations/subtypeclosure.md) | 122 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `lemma` | [isFlat_iff_isClosed](declarations/isflat-iff-isclosed.md) | 131 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `lemma` | [isClosed_iff_isFlat](declarations/isclosed-iff-isflat.md) | 134 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `def` | [closure](declarations/closure.md) | 141 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `lemma` | [closure_def](declarations/closure-def-source-edition-2.md) | 143 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `lemma` | [closure_def'](declarations/closure-def.md) | 146 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `instance` | [(anonymous)](declarations/instance.md) | 150 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `lemma` | [closure_eq_subtypeClosure](declarations/closure-eq-subtypeclosure.md) | 152 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `lemma` | [closure_subset_ground](declarations/closure-subset-ground.md) | 161 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `lemma` | [ground_subset_closure_iff](declarations/ground-subset-closure-iff.md) | 164 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `lemma` | [closure_inter_ground](declarations/closure-inter-ground.md) | 167 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `lemma` | [inter_ground_subset_closure](declarations/inter-ground-subset-closure.md) | 171 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `lemma` | [mem_closure_iff_forall_mem_isFlat](declarations/mem-closure-iff-forall-mem-isflat.md) | 174 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `lemma` | [subset_closure_iff_forall_subset_isFlat](declarations/subset-closure-iff-forall-subset-isflat.md) | 178 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `lemma` | [subset_closure](declarations/subset-closure.md) | 182 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `lemma` | [IsFlat.closure](declarations/isflat-closure.md) | 186 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `lemma` | [isFlat_closure](declarations/isflat-closure-source-edition-2.md) | 190 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `lemma` | [isFlat_iff_closure_eq](declarations/isflat-iff-closure-eq.md) | 193 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `lemma` | [closure_ground](declarations/closure-ground.md) | 195 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `lemma` | [closure_univ](declarations/closure-univ.md) | 198 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `lemma` | [closure_subset_closure](declarations/closure-subset-closure.md) | 202 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `lemma` | [closure_mono](declarations/closure-mono.md) | 206 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `lemma` | [closure_closure](declarations/closure-closure.md) | 209 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `lemma` | [closure_subset_closure_of_subset_closure](declarations/closure-subset-closure-of-subset-closure.md) | 213 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `lemma` | [closure_subset_closure_iff_subset_closure](declarations/closure-subset-closure-iff-subset-closure.md) | 217 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `lemma` | [subset_closure_of_subset](declarations/subset-closure-of-subset-source-edition-2.md) | 221 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `lemma` | [subset_closure_of_subset'](declarations/subset-closure-of-subset.md) | 225 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `lemma` | [exists_of_closure_ssubset](declarations/exists-of-closure-ssubset.md) | 229 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `lemma` | [mem_closure_of_mem](declarations/mem-closure-of-mem.md) | 233 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `lemma` | [mem_closure_of_mem'](declarations/mem-closure-of-mem-source-edition-2.md) | 237 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `lemma` | [notMem_of_mem_diff_closure](declarations/notmem-of-mem-diff-closure.md) | 242 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `lemma` | [mem_ground_of_mem_closure](declarations/mem-ground-of-mem-closure.md) | 249 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `lemma` | [closure_iUnion_closure_eq_closure_iUnion](declarations/closure-iunion-closure-eq-closure-iunion.md) | 252 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `lemma` | [closure_iUnion_congr](declarations/closure-iunion-congr.md) | 258 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `lemma` | [closure_biUnion_closure_eq_closure_sUnion](declarations/closure-biunion-closure-eq-closure-sunion.md) | 262 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `lemma` | [closure_biUnion_closure_eq_closure_biUnion](declarations/closure-biunion-closure-eq-closure-biunion.md) | 266 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `lemma` | [closure_biUnion_congr](declarations/closure-biunion-congr.md) | 270 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `lemma` | [closure_closure_union_closure_eq_closure_union](declarations/closure-closure-union-closure-eq-closure-union.md) | 276 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `lemma` | [closure_union_closure_right_eq](declarations/closure-union-closure-right-eq.md) | 281 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `lemma` | [closure_union_closure_left_eq](declarations/closure-union-closure-left-eq.md) | 286 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `lemma` | [closure_insert_closure_eq_closure_insert](declarations/closure-insert-closure-eq-closure-insert.md) | 291 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `lemma` | [closure_union_congr_left](declarations/closure-union-congr-left.md) | 295 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `lemma` | [closure_union_congr_right](declarations/closure-union-congr-right.md) | 299 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `lemma` | [closure_insert_congr_right](declarations/closure-insert-congr-right.md) | 303 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `lemma` | [closure_union_closure_empty_eq](declarations/closure-union-closure-empty-eq.md) | 307 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `lemma` | [closure_empty_union_closure_eq](declarations/closure-empty-union-closure-eq.md) | 311 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `lemma` | [closure_insert_eq_of_mem_closure](declarations/closure-insert-eq-of-mem-closure.md) | 315 | `BLOCKED_NATIVE_ADMISSION` |
| 51 | `lemma` | [mem_closure_self](declarations/mem-closure-self.md) | 319 | `BLOCKED_NATIVE_ADMISSION` |
| 52 | `lemma` | [Indep.closure_eq_setOf_isBasis_insert](declarations/indep-closure-eq-setof-isbasis-insert.md) | 326 | `BLOCKED_NATIVE_ADMISSION` |
| 53 | `lemma` | [Indep.insert_isBasis_iff_mem_closure](declarations/indep-insert-isbasis-iff-mem-closure.md) | 344 | `BLOCKED_NATIVE_ADMISSION` |
| 54 | `lemma` | [Indep.isBasis_closure](declarations/indep-isbasis-closure.md) | 348 | `BLOCKED_NATIVE_ADMISSION` |
| 55 | `lemma` | [IsBasis.closure_eq_closure](declarations/isbasis-closure-eq-closure-source-edition-2.md) | 351 | `BLOCKED_NATIVE_ADMISSION` |
| 56 | `lemma` | [IsBasis.closure_eq_right](declarations/isbasis-closure-eq-right.md) | 357 | `BLOCKED_NATIVE_ADMISSION` |
| 57 | `lemma` | [IsBasis'.closure_eq_closure](declarations/isbasis-closure-eq-closure.md) | 360 | `BLOCKED_NATIVE_ADMISSION` |
| 58 | `lemma` | [IsBasis.subset_closure](declarations/isbasis-subset-closure.md) | 363 | `BLOCKED_NATIVE_ADMISSION` |
| 59 | `lemma` | [IsBasis'.isBasis_closure_right](declarations/isbasis-isbasis-closure-right-source-edition-2.md) | 366 | `BLOCKED_NATIVE_ADMISSION` |
| 60 | `lemma` | [IsBasis.isBasis_closure_right](declarations/isbasis-isbasis-closure-right.md) | 369 | `BLOCKED_NATIVE_ADMISSION` |
| 61 | `lemma` | [Indep.mem_closure_iff](declarations/indep-mem-closure-iff-source-edition-2.md) | 372 | `BLOCKED_NATIVE_ADMISSION` |
| 62 | `lemma` | [Indep.mem_closure_iff'](declarations/indep-mem-closure-iff.md) | 376 | `BLOCKED_NATIVE_ADMISSION` |
| 63 | `lemma` | [Indep.insert_dep_iff](declarations/indep-insert-dep-iff.md) | 383 | `BLOCKED_NATIVE_ADMISSION` |
| 64 | `lemma` | [Indep.mem_closure_iff_of_notMem](declarations/indep-mem-closure-iff-of-notmem.md) | 388 | `BLOCKED_NATIVE_ADMISSION` |
| 65 | `lemma` | [Indep.notMem_closure_iff](declarations/indep-notmem-closure-iff.md) | 395 | `BLOCKED_NATIVE_ADMISSION` |
| 66 | `lemma` | [Indep.notMem_closure_iff_of_notMem](declarations/indep-notmem-closure-iff-of-notmem.md) | 402 | `BLOCKED_NATIVE_ADMISSION` |
| 67 | `lemma` | [Indep.insert_indep_iff_of_notMem](declarations/indep-insert-indep-iff-of-notmem.md) | 409 | `BLOCKED_NATIVE_ADMISSION` |
| 68 | `lemma` | [Indep.insert_indep_iff](declarations/indep-insert-indep-iff.md) | 418 | `BLOCKED_NATIVE_ADMISSION` |
| 69 | `lemma` | [insert_indep_iff](declarations/insert-indep-iff.md) | 424 | `BLOCKED_NATIVE_ADMISSION` |
| 70 | `lemma` | [Indep.insert_diff_indep_iff](declarations/indep-insert-diff-indep-iff.md) | 431 | `BLOCKED_NATIVE_ADMISSION` |
| 71 | `lemma` | [Indep.isBasis_of_subset_of_subset_closure](declarations/indep-isbasis-of-subset-of-subset-closure.md) | 438 | `BLOCKED_NATIVE_ADMISSION` |
| 72 | `lemma` | [isBasis_iff_indep_subset_closure](declarations/isbasis-iff-indep-subset-closure.md) | 442 | `BLOCKED_NATIVE_ADMISSION` |
| 73 | `lemma` | [Indep.isBase_of_ground_subset_closure](declarations/indep-isbase-of-ground-subset-closure.md) | 446 | `BLOCKED_NATIVE_ADMISSION` |
| 74 | `lemma` | [IsBase.closure_eq](declarations/isbase-closure-eq.md) | 450 | `BLOCKED_NATIVE_ADMISSION` |
| 75 | `lemma` | [IsBase.closure_of_superset](declarations/isbase-closure-of-superset.md) | 453 | `BLOCKED_NATIVE_ADMISSION` |
| 76 | `lemma` | [isBase_iff_indep_closure_eq](declarations/isbase-iff-indep-closure-eq.md) | 456 | `BLOCKED_NATIVE_ADMISSION` |
| 77 | `lemma` | [IsBase.exchange_base_of_notMem_closure](declarations/isbase-exchange-base-of-notmem-closure.md) | 461 | `BLOCKED_NATIVE_ADMISSION` |
| 78 | `lemma` | [Indep.isBase_iff_ground_subset_closure](declarations/indep-isbase-iff-ground-subset-closure.md) | 473 | `BLOCKED_NATIVE_ADMISSION` |
| 79 | `lemma` | [Indep.closure_inter_eq_self_of_subset](declarations/indep-closure-inter-eq-self-of-subset.md) | 476 | `BLOCKED_NATIVE_ADMISSION` |
| 80 | `lemma` | [Indep.closure_sInter_eq_biInter_closure_of_forall_subset](declarations/indep-closure-sinter-eq-biinter-closure-of-forall-subset.md) | 485 | `BLOCKED_NATIVE_ADMISSION` |
| 81 | `lemma` | [closure_iInter_eq_iInter_closure_of_iUnion_indep](declarations/closure-iinter-eq-iinter-closure-of-iunion-indep.md) | 520 | `BLOCKED_NATIVE_ADMISSION` |
| 82 | `lemma` | [closure_sInter_eq_biInter_closure_of_sUnion_indep](declarations/closure-sinter-eq-biinter-closure-of-sunion-indep.md) | 526 | `BLOCKED_NATIVE_ADMISSION` |
| 83 | `lemma` | [closure_biInter_eq_biInter_closure_of_biUnion_indep](declarations/closure-biinter-eq-biinter-closure-of-biunion-indep.md) | 530 | `BLOCKED_NATIVE_ADMISSION` |
| 84 | `lemma` | [Indep.closure_iInter_eq_biInter_closure_of_forall_subset](declarations/indep-closure-iinter-eq-biinter-closure-of-forall-subset.md) | 537 | `BLOCKED_NATIVE_ADMISSION` |
| 85 | `lemma` | [Indep.closure_inter_eq_inter_closure](declarations/indep-closure-inter-eq-inter-closure.md) | 541 | `BLOCKED_NATIVE_ADMISSION` |
| 86 | `lemma` | [Indep.inter_isBasis_biInter](declarations/indep-inter-isbasis-biinter.md) | 547 | `BLOCKED_NATIVE_ADMISSION` |
| 87 | `lemma` | [Indep.inter_isBasis_iInter](declarations/indep-inter-isbasis-iinter.md) | 556 | `BLOCKED_NATIVE_ADMISSION` |
| 88 | `lemma` | [Indep.inter_isBasis_sInter](declarations/indep-inter-isbasis-sinter.md) | 563 | `BLOCKED_NATIVE_ADMISSION` |
| 89 | `lemma` | [isBasis_iff_isBasis_closure_of_subset](declarations/isbasis-iff-isbasis-closure-of-subset.md) | 568 | `BLOCKED_NATIVE_ADMISSION` |
| 90 | `lemma` | [isBasis_iff_isBasis_closure_of_subset'](declarations/isbasis-iff-isbasis-closure-of-subset-source-edition-2.md) | 572 | `BLOCKED_NATIVE_ADMISSION` |
| 91 | `lemma` | [isBasis'_iff_isBasis_closure](declarations/isbasis-iff-isbasis-closure.md) | 577 | `BLOCKED_NATIVE_ADMISSION` |
| 92 | `lemma` | [exists_isBasis_inter_ground_isBasis_closure](declarations/exists-isbasis-inter-ground-isbasis-closure.md) | 582 | `BLOCKED_NATIVE_ADMISSION` |
| 93 | `lemma` | [IsBasis.isBasis_of_closure_eq_closure](declarations/isbasis-isbasis-of-closure-eq-closure.md) | 588 | `BLOCKED_NATIVE_ADMISSION` |
| 94 | `lemma` | [isBasis_union_iff_indep_closure](declarations/isbasis-union-iff-indep-closure.md) | 594 | `BLOCKED_NATIVE_ADMISSION` |
| 95 | `lemma` | [isBasis_iff_indep_closure](declarations/isbasis-iff-indep-closure.md) | 598 | `BLOCKED_NATIVE_ADMISSION` |
| 96 | `lemma` | [Indep.inter_isBasis_closure_iff_subset_closure_inter](declarations/indep-inter-isbasis-closure-iff-subset-closure-inter.md) | 602 | `BLOCKED_NATIVE_ADMISSION` |
| 97 | `lemma` | [IsBasis.closure_inter_isBasis_closure](declarations/isbasis-closure-inter-isbasis-closure.md) | 606 | `BLOCKED_NATIVE_ADMISSION` |
| 98 | `lemma` | [IsBasis.eq_of_closure_subset](declarations/isbasis-eq-of-closure-subset.md) | 612 | `BLOCKED_NATIVE_ADMISSION` |
| 99 | `lemma` | [IsBasis.insert_isBasis_insert_of_notMem_closure](declarations/isbasis-insert-isbasis-insert-of-notmem-closure.md) | 617 | `BLOCKED_NATIVE_ADMISSION` |
| 100 | `lemma` | [empty_isBasis_iff](declarations/empty-isbasis-iff.md) | 625 | `BLOCKED_NATIVE_ADMISSION` |
| 101 | `lemma` | [indep_iff_forall_notMem_closure_diff](declarations/indep-iff-forall-notmem-closure-diff-source-edition-2.md) | 628 | `BLOCKED_NATIVE_ADMISSION` |
| 102 | `lemma` | [indep_iff_forall_notMem_closure_diff'](declarations/indep-iff-forall-notmem-closure-diff.md) | 643 | `BLOCKED_NATIVE_ADMISSION` |
| 103 | `lemma` | [Indep.notMem_closure_diff_of_mem](declarations/indep-notmem-closure-diff-of-mem.md) | 651 | `BLOCKED_NATIVE_ADMISSION` |
| 104 | `lemma` | [indep_iff_forall_closure_diff_ne](declarations/indep-iff-forall-closure-diff-ne.md) | 657 | `BLOCKED_NATIVE_ADMISSION` |
| 105 | `lemma` | [Indep.union_indep_iff_forall_notMem_closure_right](declarations/indep-union-indep-iff-forall-notmem-closure-right.md) | 667 | `BLOCKED_NATIVE_ADMISSION` |
| 106 | `lemma` | [Indep.union_indep_iff_forall_notMem_closure_left](declarations/indep-union-indep-iff-forall-notmem-closure-left.md) | 687 | `BLOCKED_NATIVE_ADMISSION` |
| 107 | `lemma` | [Indep.closure_ssubset_closure](declarations/indep-closure-ssubset-closure.md) | 695 | `BLOCKED_NATIVE_ADMISSION` |
| 108 | `lemma` | [indep_iff_forall_closure_ssubset_of_ssubset](declarations/indep-iff-forall-closure-ssubset-of-ssubset.md) | 700 | `BLOCKED_NATIVE_ADMISSION` |
| 109 | `lemma` | [Indep.closure_diff_ssubset](declarations/indep-closure-diff-ssubset.md) | 709 | `BLOCKED_NATIVE_ADMISSION` |
| 110 | `lemma` | [Indep.closure_diff_singleton_ssubset](declarations/indep-closure-diff-singleton-ssubset.md) | 715 | `BLOCKED_NATIVE_ADMISSION` |
| 111 | `lemma` | [mem_closure_insert](declarations/mem-closure-insert.md) | 723 | `BLOCKED_NATIVE_ADMISSION` |
| 112 | `lemma` | [closure_exchange](declarations/closure-exchange.md) | 742 | `BLOCKED_NATIVE_ADMISSION` |
| 113 | `lemma` | [closure_exchange_iff](declarations/closure-exchange-iff.md) | 747 | `BLOCKED_NATIVE_ADMISSION` |
| 114 | `lemma` | [closure_insert_congr](declarations/closure-insert-congr.md) | 751 | `BLOCKED_NATIVE_ADMISSION` |
| 115 | `lemma` | [closure_diff_eq_self](declarations/closure-diff-eq-self.md) | 758 | `BLOCKED_NATIVE_ADMISSION` |
| 116 | `lemma` | [closure_diff_singleton_eq_closure](declarations/closure-diff-singleton-eq-closure.md) | 762 | `BLOCKED_NATIVE_ADMISSION` |
| 117 | `lemma` | [subset_closure_diff_iff_closure_eq](declarations/subset-closure-diff-iff-closure-eq.md) | 766 | `BLOCKED_NATIVE_ADMISSION` |
| 118 | `lemma` | [mem_closure_diff_singleton_iff_closure](declarations/mem-closure-diff-singleton-iff-closure.md) | 770 | `BLOCKED_NATIVE_ADMISSION` |
| 119 | `lemma` | [ext_closure](declarations/ext-closure.md) | 776 | `BLOCKED_NATIVE_ADMISSION` |
| 120 | `structure` | [Spanning](declarations/spanning.md) | 788 | `BLOCKED_NATIVE_ADMISSION` |
| 121 | `lemma` | [spanning_iff_closure_eq](declarations/spanning-iff-closure-eq.md) | 794 | `BLOCKED_NATIVE_ADMISSION` |
| 122 | `lemma` | [closure_spanning_iff](declarations/closure-spanning-iff.md) | 798 | `BLOCKED_NATIVE_ADMISSION` |
| 123 | `lemma` | [spanning_iff_ground_subset_closure](declarations/spanning-iff-ground-subset-closure.md) | 802 | `BLOCKED_NATIVE_ADMISSION` |
| 124 | `lemma` | [not_spanning_iff_closure_ssubset](declarations/not-spanning-iff-closure-ssubset.md) | 806 | `BLOCKED_NATIVE_ADMISSION` |
| 125 | `lemma` | [Spanning.superset](declarations/spanning-superset.md) | 812 | `BLOCKED_NATIVE_ADMISSION` |
| 126 | `lemma` | [Spanning.closure_eq_of_superset](declarations/spanning-closure-eq-of-superset.md) | 817 | `BLOCKED_NATIVE_ADMISSION` |
| 127 | `lemma` | [Spanning.union_left](declarations/spanning-union-left.md) | 821 | `BLOCKED_NATIVE_ADMISSION` |
| 128 | `lemma` | [Spanning.union_right](declarations/spanning-union-right.md) | 824 | `BLOCKED_NATIVE_ADMISSION` |
| 129 | `lemma` | [IsBase.spanning](declarations/isbase-spanning.md) | 828 | `BLOCKED_NATIVE_ADMISSION` |
| 130 | `lemma` | [ground_spanning](declarations/ground-spanning.md) | 831 | `BLOCKED_NATIVE_ADMISSION` |
| 131 | `lemma` | [IsBase.spanning_of_superset](declarations/isbase-spanning-of-superset.md) | 834 | `BLOCKED_NATIVE_ADMISSION` |
| 132 | `lemma` | [spanning_iff_exists_isBase_subset'](declarations/spanning-iff-exists-isbase-subset.md) | 840 | `BLOCKED_NATIVE_ADMISSION` |
| 133 | `lemma` | [spanning_iff_exists_isBase_subset](declarations/spanning-iff-exists-isbase-subset-source-edition-2.md) | 847 | `BLOCKED_NATIVE_ADMISSION` |
| 134 | `lemma` | [Spanning.exists_isBase_subset](declarations/spanning-exists-isbase-subset.md) | 851 | `BLOCKED_NATIVE_ADMISSION` |
| 135 | `lemma` | [coindep_iff_compl_spanning](declarations/coindep-iff-compl-spanning.md) | 854 | `BLOCKED_NATIVE_ADMISSION` |
| 136 | `lemma` | [spanning_iff_compl_coindep](declarations/spanning-iff-compl-coindep.md) | 858 | `BLOCKED_NATIVE_ADMISSION` |
| 137 | `lemma` | [Coindep.compl_spanning](declarations/coindep-compl-spanning.md) | 862 | `BLOCKED_NATIVE_ADMISSION` |
| 138 | `lemma` | [coindep_iff_closure_compl_eq_ground](declarations/coindep-iff-closure-compl-eq-ground.md) | 865 | `BLOCKED_NATIVE_ADMISSION` |
| 139 | `lemma` | [Coindep.closure_compl](declarations/coindep-closure-compl.md) | 869 | `BLOCKED_NATIVE_ADMISSION` |
| 140 | `lemma` | [Indep.isBase_of_spanning](declarations/indep-isbase-of-spanning.md) | 872 | `BLOCKED_NATIVE_ADMISSION` |
| 141 | `lemma` | [Spanning.isBase_of_indep](declarations/spanning-isbase-of-indep.md) | 875 | `BLOCKED_NATIVE_ADMISSION` |
| 142 | `lemma` | [Indep.eq_of_spanning_subset](declarations/indep-eq-of-spanning-subset.md) | 878 | `BLOCKED_NATIVE_ADMISSION` |
| 143 | `lemma` | [IsBasis.spanning_iff_spanning](declarations/isbasis-spanning-iff-spanning.md) | 881 | `BLOCKED_NATIVE_ADMISSION` |
| 144 | `lemma` | [Spanning.isBase_restrict_iff](declarations/spanning-isbase-restrict-iff.md) | 884 | `BLOCKED_NATIVE_ADMISSION` |
| 145 | `lemma` | [Spanning.compl_coindep](declarations/spanning-compl-coindep.md) | 891 | `BLOCKED_NATIVE_ADMISSION` |
| 146 | `lemma` | [IsBasis.isBase_of_spanning](declarations/isbasis-isbase-of-spanning.md) | 894 | `BLOCKED_NATIVE_ADMISSION` |
| 147 | `lemma` | [Indep.exists_isBase_subset_spanning](declarations/indep-exists-isbase-subset-spanning.md) | 897 | `BLOCKED_NATIVE_ADMISSION` |
| 148 | `lemma` | [Restriction.isBase_iff_of_spanning](declarations/restriction-isbase-iff-of-spanning.md) | 902 | `BLOCKED_NATIVE_ADMISSION` |
| 149 | `lemma` | [ext_spanning](declarations/ext-spanning.md) | 907 | `BLOCKED_NATIVE_ADMISSION` |
| 150 | `lemma` | [IsBase.eq_of_superset_spanning](declarations/isbase-eq-of-superset-spanning.md) | 918 | `BLOCKED_NATIVE_ADMISSION` |
| 151 | `theorem` | [isBase_iff_minimal_spanning](declarations/isbase-iff-minimal-spanning.md) | 922 | `BLOCKED_NATIVE_ADMISSION` |
| 152 | `theorem` | [Spanning.isBase_of_minimal](declarations/spanning-isbase-of-minimal.md) | 928 | `BLOCKED_NATIVE_ADMISSION` |
| 153 | `lemma` | [restrict_closure_eq'](declarations/restrict-closure-eq-source-edition-2.md) | 938 | `BLOCKED_NATIVE_ADMISSION` |
| 154 | `lemma` | [restrict_closure_eq](declarations/restrict-closure-eq.md) | 949 | `BLOCKED_NATIVE_ADMISSION` |
| 155 | `lemma` | [emptyOn_closure_eq](declarations/emptyon-closure-eq.md) | 953 | `BLOCKED_NATIVE_ADMISSION` |
| 156 | `lemma` | [loopyOn_closure_eq](declarations/loopyon-closure-eq.md) | 956 | `BLOCKED_NATIVE_ADMISSION` |
| 157 | `lemma` | [loopyOn_spanning_iff](declarations/loopyon-spanning-iff.md) | 959 | `BLOCKED_NATIVE_ADMISSION` |
| 158 | `lemma` | [freeOn_closure_eq](declarations/freeon-closure-eq.md) | 962 | `BLOCKED_NATIVE_ADMISSION` |
| 159 | `lemma` | [uniqueBaseOn_closure_eq](declarations/uniquebaseon-closure-eq.md) | 966 | `BLOCKED_NATIVE_ADMISSION` |
| 160 | `lemma` | [closure_empty_eq_ground_iff](declarations/closure-empty-eq-ground-iff.md) | 971 | `BLOCKED_NATIVE_ADMISSION` |
| 161 | `lemma` | [comap_closure_eq](declarations/comap-closure-eq.md) | 977 | `BLOCKED_NATIVE_ADMISSION` |
| 162 | `lemma` | [map_closure_eq](declarations/map-closure-eq.md) | 991 | `BLOCKED_NATIVE_ADMISSION` |
| 163 | `lemma` | [restrict_spanning_iff](declarations/restrict-spanning-iff.md) | 1015 | `BLOCKED_NATIVE_ADMISSION` |
| 164 | `lemma` | [restrict_spanning_iff'](declarations/restrict-spanning-iff-source-edition-2.md) | 1019 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=6be4a019d4c08c3cf6c3f7016a1ec8278fca5590a991cefebf17c3f4f43b824b -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/Closure/Variant2f1aea834be845e7d006dde57a4682ad123c3a67a78d296e86a90c7cf754c601.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
