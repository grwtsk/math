# Simple Graph Finite Public

[Complete source index](../../../complete-source-index.md) · [Up one directory](../../../complete-source-index.md) · [Full source](source.md)

**135 observed declarations and anonymous commands**, 124 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Finite/Variant92fbffd4306819f936b33beea6db53a2e3b0e1e8ab7913e354119e411eda9a6f.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `9e643b4766c26940297ac1e8120c1dcaf37a2d00`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/Combinatorics/GraphTheory/SimpleGraphFinitePublic.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [edgeFinset](declarations/edgefinset.md) | 59 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `theorem` | [coe_edgeFinset](declarations/coe-edgefinset.md) | 63 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `theorem` | [mem_edgeFinset](declarations/mem-edgefinset.md) | 69 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `theorem` | [not_isDiag_of_mem_edgeFinset](declarations/not-isdiag-of-mem-edgefinset.md) | 72 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [card_toFinset_mem_edgeFinset](declarations/card-tofinset-mem-edgefinset.md) | 76 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [edgeFinset_inj](declarations/edgefinset-inj.md) | 81 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [edgeFinset_subset_edgeFinset](declarations/edgefinset-subset-edgefinset.md) | 84 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [edgeFinset_ssubset_edgeFinset](declarations/edgefinset-ssubset-edgefinset.md) | 88 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [edgeFinset_bot](declarations/edgefinset-bot.md) | 97 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [edgeFinset_sup](declarations/edgefinset-sup.md) | 100 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [edgeFinset_inf](declarations/edgefinset-inf.md) | 104 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [edgeFinset_sdiff](declarations/edgefinset-sdiff.md) | 109 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `lemma` | [disjoint_edgeFinset](declarations/disjoint-edgefinset.md) | 113 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `lemma` | [edgeFinset_eq_empty](declarations/edgefinset-eq-empty.md) | 117 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `lemma` | [edgeFinset_nonempty](declarations/edgefinset-nonempty.md) | 121 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [edgeFinset_card](declarations/edgefinset-card.md) | 124 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [card_edgeSet](declarations/card-edgeset.md) | 127 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [edgeSet_univ_card](declarations/edgeset-univ-card.md) | 130 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [edgeFinset_top](declarations/edgefinset-top.md) | 136 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [card_edgeFinset_top_eq_card_choose_two](declarations/card-edgefinset-top-eq-card-choose-two.md) | 140 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [card_edgeFinset_le_card_choose_two](declarations/card-edgefinset-le-card-choose-two.md) | 145 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `def` | [neighborFinset](declarations/neighborfinset.md) | 169 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [neighborFinset_def](declarations/neighborfinset-def.md) | 172 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [coe_neighborFinset](declarations/coe-neighborfinset.md) | 176 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [mem_neighborFinset](declarations/mem-neighborfinset.md) | 180 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [notMem_neighborFinset_self](declarations/notmem-neighborfinset-self.md) | 183 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [neighborFinset_disjoint_singleton](declarations/neighborfinset-disjoint-singleton.md) | 185 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [singleton_disjoint_neighborFinset](declarations/singleton-disjoint-neighborfinset.md) | 188 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [neighborFinset_bot](declarations/neighborfinset-bot.md) | 191 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [neighborFinset_top](declarations/neighborfinset-top.md) | 196 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [neighborFinset_sup](declarations/neighborfinset-sup.md) | 201 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [neighborFinset_inf](declarations/neighborfinset-inf.md) | 207 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [neighborFinset_sdiff](declarations/neighborfinset-sdiff.md) | 213 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [disjoint_neighborFinset_of_disjoint](declarations/disjoint-neighborfinset-of-disjoint.md) | 218 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `theorem` | [neighborFinset_sup_of_disjoint](declarations/neighborfinset-sup-of-disjoint.md) | 222 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `lemma` | [neighborFinset_eq_empty](declarations/neighborfinset-eq-empty.md) | 230 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `lemma` | [neighborFinset_nonempty](declarations/neighborfinset-nonempty.md) | 233 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `def` | [degree](declarations/degree.md) | 242 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `theorem` | [card_neighborFinset_eq_degree](declarations/card-neighborfinset-eq-degree.md) | 245 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `theorem` | [card_neighborSet_eq_degree](declarations/card-neighborset-eq-degree.md) | 247 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `theorem` | [ncard_neighborSet](declarations/ncard-neighborset.md) | 251 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `theorem` | [encard_neighborSet](declarations/encard-neighborset.md) | 255 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `lemma` | [degree_eq_zero](declarations/degree-eq-zero.md) | 258 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `lemma` | [degree_pos](declarations/degree-pos.md) | 259 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `theorem` | [degree_pos_iff_exists_adj](declarations/degree-pos-iff-exists-adj.md) | 265 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `theorem` | [degree_pos_iff_nonempty](declarations/degree-pos-iff-nonempty.md) | 269 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `theorem` | [Adj.degree_pos_left](declarations/adj-degree-pos-left.md) | 273 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `theorem` | [Adj.degree_pos_right](declarations/adj-degree-pos-right.md) | 277 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `theorem` | [degree_pos_iff_mem_support](declarations/degree-pos-iff-mem-support.md) | 280 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `theorem` | [degree_eq_zero_iff_notMem_support](declarations/degree-eq-zero-iff-notmem-support.md) | 283 | `BLOCKED_NATIVE_ADMISSION` |
| 51 | `theorem` | [degree_eq_zero_of_subsingleton](declarations/degree-eq-zero-of-subsingleton.md) | 286 | `BLOCKED_NATIVE_ADMISSION` |
| 52 | `theorem` | [nontrivial_of_degree_ne_zero](declarations/nontrivial-of-degree-ne-zero.md) | 290 | `BLOCKED_NATIVE_ADMISSION` |
| 53 | `theorem` | [degree_eq_one_iff_existsUnique_adj](declarations/degree-eq-one-iff-existsunique-adj.md) | 294 | `BLOCKED_NATIVE_ADMISSION` |
| 54 | `theorem` | [degree_compl](declarations/degree-compl.md) | 299 | `BLOCKED_NATIVE_ADMISSION` |
| 55 | `instance` | [incidenceSetFintype](declarations/incidencesetfintype.md) | 305 | `BLOCKED_NATIVE_ADMISSION` |
| 56 | `def` | [incidenceFinset](declarations/incidencefinset.md) | 310 | `BLOCKED_NATIVE_ADMISSION` |
| 57 | `theorem` | [coe_incidenceFinset](declarations/coe-incidencefinset.md) | 318 | `BLOCKED_NATIVE_ADMISSION` |
| 58 | `theorem` | [mem_incidenceFinset](declarations/mem-incidencefinset.md) | 323 | `BLOCKED_NATIVE_ADMISSION` |
| 59 | `theorem` | [incidenceFinset_eq_filter](declarations/incidencefinset-eq-filter.md) | 326 | `BLOCKED_NATIVE_ADMISSION` |
| 60 | `theorem` | [incidenceFinset_subset](declarations/incidencefinset-subset.md) | 331 | `BLOCKED_NATIVE_ADMISSION` |
| 61 | `theorem` | [card_incidenceSet_eq_degree](declarations/card-incidenceset-eq-degree.md) | 336 | `BLOCKED_NATIVE_ADMISSION` |
| 62 | `theorem` | [ncard_incidenceSet](declarations/ncard-incidenceset.md) | 341 | `BLOCKED_NATIVE_ADMISSION` |
| 63 | `theorem` | [encard_incidenceSet](declarations/encard-incidenceset.md) | 346 | `BLOCKED_NATIVE_ADMISSION` |
| 64 | `theorem` | [card_incidenceFinset_eq_degree](declarations/card-incidencefinset-eq-degree.md) | 351 | `BLOCKED_NATIVE_ADMISSION` |
| 65 | `theorem` | [disjoint_incidenceFinset_of_disjoint](declarations/disjoint-incidencefinset-of-disjoint.md) | 355 | `BLOCKED_NATIVE_ADMISSION` |
| 66 | `theorem` | [degree_le_card_edgeFinset](declarations/degree-le-card-edgefinset.md) | 360 | `BLOCKED_NATIVE_ADMISSION` |
| 67 | `lemma` | [degree_le_of_le](declarations/degree-le-of-le.md) | 369 | `BLOCKED_NATIVE_ADMISSION` |
| 68 | `theorem` | [degree_lt_card_verts](declarations/degree-lt-card-verts.md) | 374 | `BLOCKED_NATIVE_ADMISSION` |
| 69 | `abbrev` | [LocallyFinite](declarations/locallyfinite.md) | 383 | `BLOCKED_NATIVE_ADMISSION` |
| 70 | `def` | [IsRegularOfDegree](declarations/isregularofdegree.md) | 390 | `BLOCKED_NATIVE_ADMISSION` |
| 71 | `theorem` | [IsRegularOfDegree.degree_eq](declarations/isregularofdegree-degree-eq.md) | 395 | `BLOCKED_NATIVE_ADMISSION` |
| 72 | `theorem` | [IsRegularOfDegree.of_isEmpty](declarations/isregularofdegree-of-isempty.md) | 400 | `BLOCKED_NATIVE_ADMISSION` |
| 73 | `theorem` | [IsRegularOfDegree.compl](declarations/isregularofdegree-compl.md) | 403 | `BLOCKED_NATIVE_ADMISSION` |
| 74 | `abbrev` | [neighborSetFintype](declarations/neighborsetfintype.md) | 416 | `BLOCKED_NATIVE_ADMISSION` |
| 75 | `theorem` | [neighborFinset_eq_filter](declarations/neighborfinset-eq-filter.md) | 419 | `BLOCKED_NATIVE_ADMISSION` |
| 76 | `theorem` | [neighborFinset_compl](declarations/neighborfinset-compl.md) | 422 | `BLOCKED_NATIVE_ADMISSION` |
| 77 | `theorem` | [complete_graph_degree](declarations/complete-graph-degree.md) | 428 | `BLOCKED_NATIVE_ADMISSION` |
| 78 | `theorem` | [bot_degree](declarations/bot-degree.md) | 433 | `BLOCKED_NATIVE_ADMISSION` |
| 79 | `theorem` | [IsRegularOfDegree.top](declarations/isregularofdegree-top.md) | 436 | `BLOCKED_NATIVE_ADMISSION` |
| 80 | `theorem` | [IsRegularOfDegree.bot](declarations/isregularofdegree-bot.md) | 441 | `BLOCKED_NATIVE_ADMISSION` |
| 81 | `def` | [minDegree](declarations/mindegree.md) | 447 | `BLOCKED_NATIVE_ADMISSION` |
| 82 | `theorem` | [exists_minimal_degree_vertex](declarations/exists-minimal-degree-vertex.md) | 452 | `BLOCKED_NATIVE_ADMISSION` |
| 83 | `theorem` | [minDegree_le_degree](declarations/mindegree-le-degree.md) | 457 | `BLOCKED_NATIVE_ADMISSION` |
| 84 | `theorem` | [le_minDegree_of_forall_le_degree](declarations/le-mindegree-of-forall-le-degree.md) | 463 | `BLOCKED_NATIVE_ADMISSION` |
| 85 | `lemma` | [minDegree_of_subsingleton](declarations/mindegree-of-subsingleton.md) | 470 | `BLOCKED_NATIVE_ADMISSION` |
| 86 | `lemma` | [minDegree_le_minDegree](declarations/mindegree-le-mindegree.md) | 479 | `BLOCKED_NATIVE_ADMISSION` |
| 87 | `theorem` | [minDegree_lt_card](declarations/mindegree-lt-card.md) | 487 | `BLOCKED_NATIVE_ADMISSION` |
| 88 | `def` | [maxDegree](declarations/maxdegree.md) | 496 | `BLOCKED_NATIVE_ADMISSION` |
| 89 | `theorem` | [exists_maximal_degree_vertex](declarations/exists-maximal-degree-vertex.md) | 501 | `BLOCKED_NATIVE_ADMISSION` |
| 90 | `theorem` | [degree_le_maxDegree](declarations/degree-le-maxdegree.md) | 506 | `BLOCKED_NATIVE_ADMISSION` |
| 91 | `lemma` | [maxDegree_of_subsingleton](declarations/maxdegree-of-subsingleton.md) | 510 | `BLOCKED_NATIVE_ADMISSION` |
| 92 | `theorem` | [maxDegree_le_of_forall_degree_le](declarations/maxdegree-le-of-forall-degree-le.md) | 518 | `BLOCKED_NATIVE_ADMISSION` |
| 93 | `theorem` | [IsRegularOfDegree.maxDegree_eq](declarations/isregularofdegree-maxdegree-eq.md) | 525 | `BLOCKED_NATIVE_ADMISSION` |
| 94 | `lemma` | [maxDegree_bot_eq_zero](declarations/maxdegree-bot-eq-zero.md) | 530 | `BLOCKED_NATIVE_ADMISSION` |
| 95 | `theorem` | [maxDegree_eq_zero_iff](declarations/maxdegree-eq-zero-iff.md) | 535 | `BLOCKED_NATIVE_ADMISSION` |
| 96 | `lemma` | [maxDegree_top](declarations/maxdegree-top.md) | 544 | `BLOCKED_NATIVE_ADMISSION` |
| 97 | `lemma` | [minDegree_le_maxDegree](declarations/mindegree-le-maxdegree.md) | 550 | `BLOCKED_NATIVE_ADMISSION` |
| 98 | `theorem` | [IsRegularOfDegree.minDegree_eq](declarations/isregularofdegree-mindegree-eq.md) | 555 | `BLOCKED_NATIVE_ADMISSION` |
| 99 | `lemma` | [minDegree_bot_eq_zero](declarations/mindegree-bot-eq-zero.md) | 560 | `BLOCKED_NATIVE_ADMISSION` |
| 100 | `theorem` | [minDegree_eq_zero_iff](declarations/mindegree-eq-zero-iff.md) | 564 | `BLOCKED_NATIVE_ADMISSION` |
| 101 | `theorem` | [minDegree_eq_zero_iff_support_ne](declarations/mindegree-eq-zero-iff-support-ne.md) | 571 | `BLOCKED_NATIVE_ADMISSION` |
| 102 | `lemma` | [minDegree_top](declarations/mindegree-top.md) | 576 | `BLOCKED_NATIVE_ADMISSION` |
| 103 | `theorem` | [maxDegree_lt_card_verts](declarations/maxdegree-lt-card-verts.md) | 585 | `BLOCKED_NATIVE_ADMISSION` |
| 104 | `theorem` | [card_commonNeighbors_le_degree_left](declarations/card-commonneighbors-le-degree-left.md) | 591 | `BLOCKED_NATIVE_ADMISSION` |
| 105 | `theorem` | [card_commonNeighbors_le_degree_right](declarations/card-commonneighbors-le-degree-right.md) | 596 | `BLOCKED_NATIVE_ADMISSION` |
| 106 | `theorem` | [card_commonNeighbors_lt_card_verts](declarations/card-commonneighbors-lt-card-verts.md) | 600 | `BLOCKED_NATIVE_ADMISSION` |
| 107 | `theorem` | [Adj.card_commonNeighbors_lt_degree](declarations/adj-card-commonneighbors-lt-degree.md) | 606 | `BLOCKED_NATIVE_ADMISSION` |
| 108 | `theorem` | [card_commonNeighbors_top](declarations/card-commonneighbors-top.md) | 615 | `BLOCKED_NATIVE_ADMISSION` |
| 109 | `theorem` | [encard_commonNeighbors_top](declarations/encard-commonneighbors-top.md) | 621 | `BLOCKED_NATIVE_ADMISSION` |
| 110 | `lemma` | [insert_neighborFinset_eq_univ](declarations/insert-neighborfinset-eq-univ.md) | 625 | `BLOCKED_NATIVE_ADMISSION` |
| 111 | `lemma` | [neighborFinset_eq_erase_univ](declarations/neighborfinset-eq-erase-univ.md) | 630 | `BLOCKED_NATIVE_ADMISSION` |
| 112 | `lemma` | [degree_eq_card_sub_one](declarations/degree-eq-card-sub-one.md) | 635 | `BLOCKED_NATIVE_ADMISSION` |
| 113 | `lemma` | [degree_lt_card_sub_one](declarations/degree-lt-card-sub-one.md) | 643 | `BLOCKED_NATIVE_ADMISSION` |
| 114 | `theorem` | [card_edgeFinset_eq](declarations/card-edgefinset-eq.md) | 653 | `BLOCKED_NATIVE_ADMISSION` |
| 115 | `theorem` | [degree_eq](declarations/degree-eq.md) | 658 | `BLOCKED_NATIVE_ADMISSION` |
| 116 | `theorem` | [minDegree_eq](declarations/mindegree-eq.md) | 666 | `BLOCKED_NATIVE_ADMISSION` |
| 117 | `theorem` | [maxDegree_eq](declarations/maxdegree-eq.md) | 671 | `BLOCKED_NATIVE_ADMISSION` |
| 118 | `lemma` | [edgeFinset_subset_sym2_of_support_subset](declarations/edgefinset-subset-sym2-of-support-subset.md) | 682 | `BLOCKED_NATIVE_ADMISSION` |
| 119 | `instance` | [(anonymous)](declarations/instance.md) | 687 | `BLOCKED_NATIVE_ADMISSION` |
| 120 | `theorem` | [map_edgeFinset_induce](declarations/map-edgefinset-induce.md) | 690 | `BLOCKED_NATIVE_ADMISSION` |
| 121 | `theorem` | [map_edgeFinset_induce_of_support_subset](declarations/map-edgefinset-induce-of-support-subset.md) | 695 | `BLOCKED_NATIVE_ADMISSION` |
| 122 | `theorem` | [card_edgeFinset_induce_of_support_subset](declarations/card-edgefinset-induce-of-support-subset.md) | 702 | `BLOCKED_NATIVE_ADMISSION` |
| 123 | `theorem` | [card_edgeFinset_induce_support](declarations/card-edgefinset-induce-support.md) | 706 | `BLOCKED_NATIVE_ADMISSION` |
| 124 | `theorem` | [map_neighborFinset_induce](declarations/map-neighborfinset-induce.md) | 710 | `BLOCKED_NATIVE_ADMISSION` |
| 125 | `theorem` | [map_neighborFinset_induce_of_neighborSet_subset](declarations/map-neighborfinset-induce-of-neighborset-subset.md) | 714 | `BLOCKED_NATIVE_ADMISSION` |
| 126 | `theorem` | [degree_induce_of_neighborSet_subset](declarations/degree-induce-of-neighborset-subset.md) | 722 | `BLOCKED_NATIVE_ADMISSION` |
| 127 | `theorem` | [degree_induce_of_support_subset](declarations/degree-induce-of-support-subset.md) | 729 | `BLOCKED_NATIVE_ADMISSION` |
| 128 | `theorem` | [degree_induce_support](declarations/degree-induce-support.md) | 734 | `BLOCKED_NATIVE_ADMISSION` |
| 129 | `theorem` | [le_minDegree_induce_of_support_subset](declarations/le-mindegree-induce-of-support-subset.md) | 738 | `BLOCKED_NATIVE_ADMISSION` |
| 130 | `theorem` | [filter_edgeFinset_toFinset_subset](declarations/filter-edgefinset-tofinset-subset.md) | 749 | `BLOCKED_NATIVE_ADMISSION` |
| 131 | `theorem` | [card_filter_edgeFinset_toFinset_subset](declarations/card-filter-edgefinset-tofinset-subset.md) | 755 | `BLOCKED_NATIVE_ADMISSION` |
| 132 | `theorem` | [edgeFinset_map](declarations/edgefinset-map.md) | 770 | `BLOCKED_NATIVE_ADMISSION` |
| 133 | `theorem` | [card_edgeFinset_map](declarations/card-edgefinset-map.md) | 776 | `BLOCKED_NATIVE_ADMISSION` |
| 134 | `theorem` | [degree_map_apply](declarations/degree-map-apply.md) | 781 | `BLOCKED_NATIVE_ADMISSION` |
| 135 | `theorem` | [Embedding.degree_eq_of_neighborSet_subset_range](declarations/embedding-degree-eq-of-neighborset-subset-range.md) | 786 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=4ab6e2a07cec62f3978a84f235b17c32380ecc139cf0f1d425f2ae77b1c22796 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Finite/Variant92fbffd4306819f936b33beea6db53a2e3b0e1e8ab7913e354119e411eda9a6f.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
