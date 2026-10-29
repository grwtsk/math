# Data Matroid Loop Namespaced

[Complete source index](../../../../complete-source-index.md) · [Up one directory](../../../../complete-source-index.md) · [Full source](source.md)

**168 observed declarations and anonymous commands**, 159 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Loop/Variant4aebb380b1715586ca913a8f182db3b6c767d48226be54b3d391439ce7aad8c6.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `31cc20cb2ac6097234a1b00137bc6cc128d9fdf0`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../_verification/specifications/ComputerScience/TheoryOfData/DataStructures/DataMatroidLoopNamespaced.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [loops](declarations/loops.md) | 70 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `lemma` | [loops_subset_ground](declarations/loops-subset-ground.md) | 73 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `def` | [IsLoop](declarations/isloop.md) | 77 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `lemma` | [isLoop_iff](declarations/isloop-iff.md) | 79 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `lemma` | [closure_empty](declarations/closure-empty.md) | 81 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `lemma` | [IsLoop.mem_ground](declarations/isloop-mem-ground.md) | 84 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `lemma` | [isLoop_tfae](declarations/isloop-tfae.md) | 87 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `lemma` | [singleton_dep](declarations/singleton-dep.md) | 106 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `lemma` | [singleton_not_indep](declarations/singleton-not-indep.md) | 111 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `lemma` | [singleton_isCircuit](declarations/singleton-iscircuit.md) | 115 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `lemma` | [isLoop_iff_forall_mem_compl_isBase](declarations/isloop-iff-forall-mem-compl-isbase.md) | 120 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `lemma` | [isLoop_iff_forall_notMem_isBase](declarations/isloop-iff-forall-notmem-isbase.md) | 123 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `lemma` | [IsLoop.mem_closure](declarations/isloop-mem-closure.md) | 130 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `lemma` | [IsLoop.mem_of_isFlat](declarations/isloop-mem-of-isflat.md) | 133 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `lemma` | [IsFlat.loops_subset](declarations/isflat-loops-subset.md) | 136 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `lemma` | [IsLoop.dep_of_mem](declarations/isloop-dep-of-mem.md) | 139 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `lemma` | [IsLoop.not_indep_of_mem](declarations/isloop-not-indep-of-mem.md) | 142 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `lemma` | [IsLoop.notMem_of_indep](declarations/isloop-notmem-of-indep.md) | 145 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `lemma` | [IsLoop.eq_of_isCircuit_mem](declarations/isloop-eq-of-iscircuit-mem.md) | 150 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `lemma` | [Indep.disjoint_loops](declarations/indep-disjoint-loops.md) | 153 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `lemma` | [Indep.eq_empty_of_subset_loops](declarations/indep-eq-empty-of-subset-loops.md) | 158 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `lemma` | [isBasis_loops_iff](declarations/isbasis-loops-iff.md) | 162 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `lemma` | [closure_eq_loops_of_subset](declarations/closure-eq-loops-of-subset.md) | 166 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `lemma` | [isBasis_iff_empty_of_subset_loops](declarations/isbasis-iff-empty-of-subset-loops.md) | 169 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `lemma` | [IsLoop.closure](declarations/isloop-closure.md) | 174 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `lemma` | [isLoop_iff_closure_eq_loops_and_mem_ground](declarations/isloop-iff-closure-eq-loops-and-mem-ground.md) | 177 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `lemma` | [isLoop_iff_closure_eq_loops](declarations/isloop-iff-closure-eq-loops.md) | 184 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `lemma` | [closure_loops](declarations/closure-loops.md) | 189 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `lemma` | [closure_union_loops_eq](declarations/closure-union-loops-eq.md) | 193 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `lemma` | [closure_loops_union_eq](declarations/closure-loops-union-eq.md) | 198 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `lemma` | [closure_diff_loops_eq](declarations/closure-diff-loops-eq.md) | 202 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `lemma` | [restrict_loops_eq'](declarations/restrict-loops-eq-source-edition-2.md) | 208 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `lemma` | [restrict_loops_eq](declarations/restrict-loops-eq.md) | 212 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `lemma` | [restrict_isLoop_iff](declarations/restrict-isloop-iff.md) | 216 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `lemma` | [IsRestriction.isLoop_iff](declarations/isrestriction-isloop-iff.md) | 221 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `lemma` | [IsLoop.of_isRestriction](declarations/isloop-of-isrestriction.md) | 226 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `lemma` | [IsLoop.isLoop_isRestriction](declarations/isloop-isloop-isrestriction.md) | 229 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `lemma` | [map_loops](declarations/map-loops.md) | 233 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `lemma` | [map_isLoop_iff](declarations/map-isloop-iff.md) | 237 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `lemma` | [mapEmbedding_isLoop_iff](declarations/mapembedding-isloop-iff.md) | 242 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `lemma` | [comap_loops](declarations/comap-loops.md) | 246 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `lemma` | [comap_isLoop_iff](declarations/comap-isloop-iff.md) | 250 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `lemma` | [loopyOn_isLoop_iff](declarations/loopyon-isloop-iff.md) | 254 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `lemma` | [eq_loopyOn_iff_loops](declarations/eq-loopyon-iff-loops.md) | 257 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `lemma` | [restrict_subset_loops_eq](declarations/restrict-subset-loops-eq.md) | 261 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `lemma` | [freeOn_not_isLoop](declarations/freeon-not-isloop.md) | 266 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `lemma` | [uniqueBaseOn_isLoop_iff](declarations/uniquebaseon-isloop-iff.md) | 270 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `lemma` | [eq_loopyOn_iff_loops_eq](declarations/eq-loopyon-iff-loops-eq.md) | 273 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `structure` | [IsNonloop](declarations/isnonloop.md) | 281 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `lemma` | [IsLoop.not_isNonloop](declarations/isloop-not-isnonloop.md) | 287 | `BLOCKED_NATIVE_ADMISSION` |
| 51 | `lemma` | [compl_loops_eq](declarations/compl-loops-eq.md) | 290 | `BLOCKED_NATIVE_ADMISSION` |
| 52 | `lemma` | [isNonloop_of_not_isLoop](declarations/isnonloop-of-not-isloop.md) | 293 | `BLOCKED_NATIVE_ADMISSION` |
| 53 | `lemma` | [isLoop_of_not_isNonloop](declarations/isloop-of-not-isnonloop.md) | 296 | `BLOCKED_NATIVE_ADMISSION` |
| 54 | `lemma` | [not_isLoop_iff](declarations/not-isloop-iff.md) | 300 | `BLOCKED_NATIVE_ADMISSION` |
| 55 | `lemma` | [not_isNonloop_iff](declarations/not-isnonloop-iff.md) | 304 | `BLOCKED_NATIVE_ADMISSION` |
| 56 | `lemma` | [isNonloop_iff_mem_compl_loops](declarations/isnonloop-iff-mem-compl-loops.md) | 307 | `BLOCKED_NATIVE_ADMISSION` |
| 57 | `lemma` | [setOf_isNonloop_eq](declarations/setof-isnonloop-eq.md) | 310 | `BLOCKED_NATIVE_ADMISSION` |
| 58 | `lemma` | [not_isNonloop_iff_closure](declarations/not-isnonloop-iff-closure.md) | 313 | `BLOCKED_NATIVE_ADMISSION` |
| 59 | `lemma` | [isLoop_or_isNonloop](declarations/isloop-or-isnonloop.md) | 319 | `BLOCKED_NATIVE_ADMISSION` |
| 60 | `lemma` | [indep_singleton](declarations/indep-singleton.md) | 324 | `BLOCKED_NATIVE_ADMISSION` |
| 61 | `lemma` | [Indep.isNonloop_of_mem](declarations/indep-isnonloop-of-mem.md) | 330 | `BLOCKED_NATIVE_ADMISSION` |
| 62 | `lemma` | [IsNonloop.exists_mem_isBase](declarations/isnonloop-exists-mem-isbase.md) | 333 | `BLOCKED_NATIVE_ADMISSION` |
| 63 | `lemma` | [IsCocircuit.isNonloop_of_mem](declarations/iscocircuit-isnonloop-of-mem.md) | 336 | `BLOCKED_NATIVE_ADMISSION` |
| 64 | `lemma` | [IsCircuit.isNonloop_of_mem](declarations/iscircuit-isnonloop-of-mem.md) | 343 | `BLOCKED_NATIVE_ADMISSION` |
| 65 | `lemma` | [IsCircuit.isNonloop_of_mem_of_one_lt_card](declarations/iscircuit-isnonloop-of-mem-of-one-lt-card.md) | 348 | `BLOCKED_NATIVE_ADMISSION` |
| 66 | `lemma` | [isNonloop_of_notMem_closure](declarations/isnonloop-of-notmem-closure.md) | 354 | `BLOCKED_NATIVE_ADMISSION` |
| 67 | `lemma` | [isNonloop_iff_notMem_loops](declarations/isnonloop-iff-notmem-loops.md) | 361 | `BLOCKED_NATIVE_ADMISSION` |
| 68 | `lemma` | [IsNonloop.mem_closure_singleton](declarations/isnonloop-mem-closure-singleton.md) | 368 | `BLOCKED_NATIVE_ADMISSION` |
| 69 | `lemma` | [IsNonloop.mem_closure_comm](declarations/isnonloop-mem-closure-comm.md) | 374 | `BLOCKED_NATIVE_ADMISSION` |
| 70 | `lemma` | [IsNonloop.isNonloop_of_mem_closure](declarations/isnonloop-isnonloop-of-mem-closure.md) | 378 | `BLOCKED_NATIVE_ADMISSION` |
| 71 | `lemma` | [IsNonloop.closure_eq_of_mem_closure](declarations/isnonloop-closure-eq-of-mem-closure.md) | 388 | `BLOCKED_NATIVE_ADMISSION` |
| 72 | `lemma` | [IsNonloop.closure_eq_closure_iff_isCircuit_of_ne](declarations/isnonloop-closure-eq-closure-iff-iscircuit-of-ne.md) | 395 | `BLOCKED_NATIVE_ADMISSION` |
| 73 | `lemma` | [IsNonloop.closure_eq_closure_iff_eq_or_dep](declarations/isnonloop-closure-eq-closure-iff-eq-or-dep.md) | 408 | `BLOCKED_NATIVE_ADMISSION` |
| 74 | `lemma` | [exists_isNonloop](declarations/exists-isnonloop.md) | 419 | `BLOCKED_NATIVE_ADMISSION` |
| 75 | `lemma` | [IsNonloop.rankPos](declarations/isnonloop-rankpos.md) | 423 | `BLOCKED_NATIVE_ADMISSION` |
| 76 | `lemma` | [restrict_isNonloop_iff](declarations/restrict-isnonloop-iff.md) | 427 | `BLOCKED_NATIVE_ADMISSION` |
| 77 | `lemma` | [IsNonloop.of_restrict](declarations/isnonloop-of-restrict.md) | 430 | `BLOCKED_NATIVE_ADMISSION` |
| 78 | `lemma` | [IsNonloop.of_isRestriction](declarations/isnonloop-of-isrestriction.md) | 433 | `BLOCKED_NATIVE_ADMISSION` |
| 79 | `lemma` | [isNonloop_iff_restrict_of_mem](declarations/isnonloop-iff-restrict-of-mem.md) | 436 | `BLOCKED_NATIVE_ADMISSION` |
| 80 | `lemma` | [comap_isNonloop_iff](declarations/comap-isnonloop-iff.md) | 441 | `BLOCKED_NATIVE_ADMISSION` |
| 81 | `lemma` | [freeOn_isNonloop_iff](declarations/freeon-isnonloop-iff.md) | 447 | `BLOCKED_NATIVE_ADMISSION` |
| 82 | `lemma` | [uniqueBaseOn_isNonloop_iff](declarations/uniquebaseon-isnonloop-iff.md) | 451 | `BLOCKED_NATIVE_ADMISSION` |
| 83 | `lemma` | [IsNonloop.exists_mem_isCocircuit](declarations/isnonloop-exists-mem-iscocircuit.md) | 455 | `BLOCKED_NATIVE_ADMISSION` |
| 84 | `lemma` | [closure_inter_setOf_isNonloop_eq](declarations/closure-inter-setof-isnonloop-eq.md) | 460 | `BLOCKED_NATIVE_ADMISSION` |
| 85 | `def` | [IsColoop](declarations/iscoloop.md) | 472 | `BLOCKED_NATIVE_ADMISSION` |
| 86 | `def` | [coloops](declarations/coloops.md) | 475 | `BLOCKED_NATIVE_ADMISSION` |
| 87 | `lemma` | [IsColoop.mem_ground](declarations/iscoloop-mem-ground.md) | 478 | `BLOCKED_NATIVE_ADMISSION` |
| 88 | `lemma` | [coloops_subset_ground](declarations/coloops-subset-ground.md) | 482 | `BLOCKED_NATIVE_ADMISSION` |
| 89 | `lemma` | [isColoop_iff_mem_coloops](declarations/iscoloop-iff-mem-coloops.md) | 485 | `BLOCKED_NATIVE_ADMISSION` |
| 90 | `lemma` | [dual_loops](declarations/dual-loops.md) | 490 | `BLOCKED_NATIVE_ADMISSION` |
| 91 | `lemma` | [dual_coloops](declarations/dual-coloops.md) | 493 | `BLOCKED_NATIVE_ADMISSION` |
| 92 | `lemma` | [IsColoop.dual_isLoop](declarations/iscoloop-dual-isloop.md) | 496 | `BLOCKED_NATIVE_ADMISSION` |
| 93 | `lemma` | [IsColoop.isCocircuit](declarations/iscoloop-iscocircuit.md) | 499 | `BLOCKED_NATIVE_ADMISSION` |
| 94 | `lemma` | [IsLoop.dual_isColoop](declarations/isloop-dual-iscoloop.md) | 502 | `BLOCKED_NATIVE_ADMISSION` |
| 95 | `lemma` | [dual_isColoop_iff_isLoop](declarations/dual-iscoloop-iff-isloop.md) | 506 | `BLOCKED_NATIVE_ADMISSION` |
| 96 | `lemma` | [dual_isLoop_iff_isColoop](declarations/dual-isloop-iff-iscoloop.md) | 510 | `BLOCKED_NATIVE_ADMISSION` |
| 97 | `lemma` | [singleton_isCocircuit](declarations/singleton-iscocircuit.md) | 513 | `BLOCKED_NATIVE_ADMISSION` |
| 98 | `lemma` | [isColoop_tfae](declarations/iscoloop-tfae.md) | 516 | `BLOCKED_NATIVE_ADMISSION` |
| 99 | `lemma` | [isColoop_iff_forall_mem_isBase](declarations/iscoloop-iff-forall-mem-isbase.md) | 551 | `BLOCKED_NATIVE_ADMISSION` |
| 100 | `lemma` | [IsBase.mem_of_isColoop](declarations/isbase-mem-of-iscoloop.md) | 554 | `BLOCKED_NATIVE_ADMISSION` |
| 101 | `lemma` | [IsColoop.mem_of_isBase](declarations/iscoloop-mem-of-isbase.md) | 557 | `BLOCKED_NATIVE_ADMISSION` |
| 102 | `lemma` | [IsBase.coloops_subset](declarations/isbase-coloops-subset.md) | 560 | `BLOCKED_NATIVE_ADMISSION` |
| 103 | `lemma` | [IsColoop.isNonloop](declarations/iscoloop-isnonloop.md) | 563 | `BLOCKED_NATIVE_ADMISSION` |
| 104 | `lemma` | [IsLoop.not_isColoop](declarations/isloop-not-iscoloop.md) | 567 | `BLOCKED_NATIVE_ADMISSION` |
| 105 | `lemma` | [IsColoop.notMem_isCircuit](declarations/iscoloop-notmem-iscircuit.md) | 571 | `BLOCKED_NATIVE_ADMISSION` |
| 106 | `lemma` | [IsCircuit.disjoint_coloops](declarations/iscircuit-disjoint-coloops.md) | 576 | `BLOCKED_NATIVE_ADMISSION` |
| 107 | `lemma` | [isColoop_iff_forall_notMem_isCircuit](declarations/iscoloop-iff-forall-notmem-iscircuit.md) | 579 | `BLOCKED_NATIVE_ADMISSION` |
| 108 | `lemma` | [isColoop_iff_forall_mem_compl_isCircuit](declarations/iscoloop-iff-forall-mem-compl-iscircuit.md) | 586 | `BLOCKED_NATIVE_ADMISSION` |
| 109 | `lemma` | [IsCircuit.not_isColoop_of_mem](declarations/iscircuit-not-iscoloop-of-mem.md) | 593 | `BLOCKED_NATIVE_ADMISSION` |
| 110 | `lemma` | [isColoop_iff_forall_mem_closure_iff_mem](declarations/iscoloop-iff-forall-mem-closure-iff-mem.md) | 596 | `BLOCKED_NATIVE_ADMISSION` |
| 111 | `lemma` | [isColoop_iff_forall_mem_closure_iff_mem'](declarations/iscoloop-iff-forall-mem-closure-iff-mem-source-edition-2.md) | 601 | `BLOCKED_NATIVE_ADMISSION` |
| 112 | `lemma` | [IsColoop.mem_closure_iff_mem](declarations/iscoloop-mem-closure-iff-mem.md) | 607 | `BLOCKED_NATIVE_ADMISSION` |
| 113 | `lemma` | [IsColoop.mem_of_mem_closure](declarations/iscoloop-mem-of-mem-closure.md) | 610 | `BLOCKED_NATIVE_ADMISSION` |
| 114 | `lemma` | [isColoop_iff_diff_not_spanning](declarations/iscoloop-iff-diff-not-spanning.md) | 613 | `BLOCKED_NATIVE_ADMISSION` |
| 115 | `lemma` | [isColoop_iff_diff_closure](declarations/iscoloop-iff-diff-closure.md) | 618 | `BLOCKED_NATIVE_ADMISSION` |
| 116 | `lemma` | [isColoop_iff_notMem_closure_compl](declarations/iscoloop-iff-notmem-closure-compl.md) | 621 | `BLOCKED_NATIVE_ADMISSION` |
| 117 | `lemma` | [IsBase.isColoop_iff_forall_notMem_fundCircuit](declarations/isbase-iscoloop-iff-forall-notmem-fundcircuit.md) | 632 | `BLOCKED_NATIVE_ADMISSION` |
| 118 | `lemma` | [IsBasis'.inter_coloops_subset](declarations/isbasis-inter-coloops-subset.md) | 653 | `BLOCKED_NATIVE_ADMISSION` |
| 119 | `lemma` | [IsBasis.inter_coloops_subset](declarations/isbasis-inter-coloops-subset-source-edition-2.md) | 658 | `BLOCKED_NATIVE_ADMISSION` |
| 120 | `lemma` | [exists_mem_isCircuit_of_not_isColoop](declarations/exists-mem-iscircuit-of-not-iscoloop.md) | 661 | `BLOCKED_NATIVE_ADMISSION` |
| 121 | `lemma` | [closure_inter_coloops_eq](declarations/closure-inter-coloops-eq.md) | 668 | `BLOCKED_NATIVE_ADMISSION` |
| 122 | `lemma` | [closure_inter_eq_of_subset_coloops](declarations/closure-inter-eq-of-subset-coloops.md) | 674 | `BLOCKED_NATIVE_ADMISSION` |
| 123 | `lemma` | [closure_union_eq_of_subset_coloops](declarations/closure-union-eq-of-subset-coloops.md) | 679 | `BLOCKED_NATIVE_ADMISSION` |
| 124 | `lemma` | [closure_insert_isColoop_eq](declarations/closure-insert-iscoloop-eq.md) | 690 | `BLOCKED_NATIVE_ADMISSION` |
| 125 | `lemma` | [closure_eq_of_subset_coloops](declarations/closure-eq-of-subset-coloops.md) | 694 | `BLOCKED_NATIVE_ADMISSION` |
| 126 | `lemma` | [closure_diff_eq_of_subset_coloops](declarations/closure-diff-eq-of-subset-coloops.md) | 698 | `BLOCKED_NATIVE_ADMISSION` |
| 127 | `lemma` | [closure_disjoint_of_disjoint_of_subset_coloops](declarations/closure-disjoint-of-disjoint-of-subset-coloops.md) | 708 | `BLOCKED_NATIVE_ADMISSION` |
| 128 | `lemma` | [closure_disjoint_coloops_of_disjoint_coloops](declarations/closure-disjoint-coloops-of-disjoint-coloops.md) | 713 | `BLOCKED_NATIVE_ADMISSION` |
| 129 | `lemma` | [closure_union_coloops_eq](declarations/closure-union-coloops-eq.md) | 717 | `BLOCKED_NATIVE_ADMISSION` |
| 130 | `lemma` | [IsColoop.notMem_closure_of_notMem](declarations/iscoloop-notmem-closure-of-notmem.md) | 721 | `BLOCKED_NATIVE_ADMISSION` |
| 131 | `lemma` | [IsColoop.insert_indep_of_indep](declarations/iscoloop-insert-indep-of-indep.md) | 727 | `BLOCKED_NATIVE_ADMISSION` |
| 132 | `lemma` | [union_indep_iff_indep_of_subset_coloops](declarations/union-indep-iff-indep-of-subset-coloops.md) | 733 | `BLOCKED_NATIVE_ADMISSION` |
| 133 | `lemma` | [diff_indep_iff_indep_of_subset_coloops](declarations/diff-indep-iff-indep-of-subset-coloops.md) | 739 | `BLOCKED_NATIVE_ADMISSION` |
| 134 | `lemma` | [union_coloops_indep_iff](declarations/union-coloops-indep-iff.md) | 745 | `BLOCKED_NATIVE_ADMISSION` |
| 135 | `lemma` | [diff_coloops_indep_iff](declarations/diff-coloops-indep-iff.md) | 749 | `BLOCKED_NATIVE_ADMISSION` |
| 136 | `lemma` | [coloops_indep](declarations/coloops-indep.md) | 752 | `BLOCKED_NATIVE_ADMISSION` |
| 137 | `lemma` | [restrict_isColoop_iff](declarations/restrict-iscoloop-iff.md) | 756 | `BLOCKED_NATIVE_ADMISSION` |
| 138 | `lemma` | [ext_indep_disjoint_loops_coloops](declarations/ext-indep-disjoint-loops-coloops.md) | 766 | `BLOCKED_NATIVE_ADMISSION` |
| 139 | `class` | [Loopless](declarations/loopless.md) | 788 | `BLOCKED_NATIVE_ADMISSION` |
| 140 | `lemma` | [loops_eq_empty](declarations/loops-eq-empty.md) | 792 | `BLOCKED_NATIVE_ADMISSION` |
| 141 | `lemma` | [isNonloop_of_loopless](declarations/isnonloop-of-loopless.md) | 795 | `BLOCKED_NATIVE_ADMISSION` |
| 142 | `lemma` | [subsingleton_indep](declarations/subsingleton-indep.md) | 800 | `BLOCKED_NATIVE_ADMISSION` |
| 143 | `lemma` | [not_isLoop](declarations/not-isloop.md) | 806 | `BLOCKED_NATIVE_ADMISSION` |
| 144 | `lemma` | [loopless_iff_forall_isNonloop](declarations/loopless-iff-forall-isnonloop.md) | 809 | `BLOCKED_NATIVE_ADMISSION` |
| 145 | `lemma` | [loopless_iff_forall_not_isLoop](declarations/loopless-iff-forall-not-isloop.md) | 813 | `BLOCKED_NATIVE_ADMISSION` |
| 146 | `lemma` | [loopless_iff_forall_isCircuit](declarations/loopless-iff-forall-iscircuit.md) | 817 | `BLOCKED_NATIVE_ADMISSION` |
| 147 | `lemma` | [Loopless.ground_eq](declarations/loopless-ground-eq.md) | 825 | `BLOCKED_NATIVE_ADMISSION` |
| 148 | `lemma` | [IsRestriction.loopless](declarations/isrestriction-loopless.md) | 828 | `BLOCKED_NATIVE_ADMISSION` |
| 149 | `instance` | [(anonymous)](declarations/instance.md) | 832 | `BLOCKED_NATIVE_ADMISSION` |
| 150 | `lemma` | [loopyOn_isLoopless_iff](declarations/loopyon-isloopless-iff.md) | 835 | `BLOCKED_NATIVE_ADMISSION` |
| 151 | `def` | [removeLoops](declarations/removeloops.md) | 839 | `BLOCKED_NATIVE_ADMISSION` |
| 152 | `lemma` | [removeLoops_eq_restrict](declarations/removeloops-eq-restrict.md) | 841 | `BLOCKED_NATIVE_ADMISSION` |
| 153 | `lemma` | [removeLoops_ground_eq](declarations/removeloops-ground-eq.md) | 843 | `BLOCKED_NATIVE_ADMISSION` |
| 154 | `instance` | [removeLoops_loopless](declarations/removeloops-loopless.md) | 845 | `BLOCKED_NATIVE_ADMISSION` |
| 155 | `lemma` | [removeLoops_eq_self](declarations/removeloops-eq-self.md) | 849 | `BLOCKED_NATIVE_ADMISSION` |
| 156 | `lemma` | [removeLoops_eq_self_iff](declarations/removeloops-eq-self-iff.md) | 852 | `BLOCKED_NATIVE_ADMISSION` |
| 157 | `lemma` | [removeLoops_isRestriction](declarations/removeloops-isrestriction.md) | 857 | `BLOCKED_NATIVE_ADMISSION` |
| 158 | `lemma` | [eq_restrict_removeLoops](declarations/eq-restrict-removeloops.md) | 860 | `BLOCKED_NATIVE_ADMISSION` |
| 159 | `lemma` | [removeLoops_indep_eq](declarations/removeloops-indep-eq.md) | 866 | `BLOCKED_NATIVE_ADMISSION` |
| 160 | `lemma` | [removeLoops_isBasis'_eq](declarations/removeloops-isbasis-eq.md) | 872 | `BLOCKED_NATIVE_ADMISSION` |
| 161 | `lemma` | [removeLoops_isBase_eq](declarations/removeloops-isbase-eq.md) | 876 | `BLOCKED_NATIVE_ADMISSION` |
| 162 | `lemma` | [removeLoops_isNonloop_eq](declarations/removeloops-isnonloop-eq.md) | 881 | `BLOCKED_NATIVE_ADMISSION` |
| 163 | `lemma` | [IsNonloop.removeLoops_isNonloop](declarations/isnonloop-removeloops-isnonloop.md) | 885 | `BLOCKED_NATIVE_ADMISSION` |
| 164 | `lemma` | [removeLoops_idem](declarations/removeloops-idem.md) | 888 | `BLOCKED_NATIVE_ADMISSION` |
| 165 | `lemma` | [removeLoops_restrict_eq_restrict](declarations/removeloops-restrict-eq-restrict.md) | 891 | `BLOCKED_NATIVE_ADMISSION` |
| 166 | `lemma` | [restrict_univ_removeLoops_eq](declarations/restrict-univ-removeloops-eq.md) | 896 | `BLOCKED_NATIVE_ADMISSION` |
| 167 | `lemma` | [IsRestriction.isRestriction_removeLoops](declarations/isrestriction-isrestriction-removeloops.md) | 900 | `BLOCKED_NATIVE_ADMISSION` |
| 168 | `lemma` | [removeLoops_mono_isRestriction](declarations/removeloops-mono-isrestriction.md) | 904 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=e0bbe3a6c2d2f18f0ab2f90ef7fea5e3d132e1532e6d744c3aef050e2809bf52 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Loop/Variant4aebb380b1715586ca913a8f182db3b6c767d48226be54b3d391439ce7aad8c6.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
