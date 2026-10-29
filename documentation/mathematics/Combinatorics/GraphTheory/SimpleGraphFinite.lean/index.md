# Simple Graph Finite

[Complete source index](../../../complete-source-index.md) · [Up one directory](../../../complete-source-index.md) · [Full source](source.md)

**82 observed declarations and anonymous commands**, 71 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/CombinatoricsAndDiscreteMathematics/Finite/Variant10dee6a8006561ed7596878cf7283a8c9f35690c6837b2d2eebf869441205424.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `feede69e73628a44e81353f30d98986f4befa9ee`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/Combinatorics/GraphTheory/SimpleGraphFinite.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `abbrev` | [edgeFinset](declarations/edgefinset.md) | 53 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `theorem` | [coe_edgeFinset](declarations/coe-edgefinset.md) | 57 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `theorem` | [mem_edgeFinset](declarations/mem-edgefinset.md) | 62 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `theorem` | [not_isDiag_of_mem_edgeFinset](declarations/not-isdiag-of-mem-edgefinset.md) | 65 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [edgeFinset_inj](declarations/edgefinset-inj.md) | 68 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [edgeFinset_subset_edgeFinset](declarations/edgefinset-subset-edgefinset.md) | 70 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [edgeFinset_ssubset_edgeFinset](declarations/edgefinset-ssubset-edgefinset.md) | 72 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [edgeFinset_bot](declarations/edgefinset-bot.md) | 81 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [edgeFinset_sup](declarations/edgefinset-sup.md) | 84 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [edgeFinset_inf](declarations/edgefinset-inf.md) | 88 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [edgeFinset_sdiff](declarations/edgefinset-sdiff.md) | 92 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `lemma` | [disjoint_edgeFinset](declarations/disjoint-edgefinset.md) | 95 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `lemma` | [edgeFinset_eq_empty](declarations/edgefinset-eq-empty.md) | 98 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `lemma` | [edgeFinset_nonempty](declarations/edgefinset-nonempty.md) | 101 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [edgeFinset_card](declarations/edgefinset-card.md) | 104 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [edgeSet_univ_card](declarations/edgeset-univ-card.md) | 108 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [edgeFinset_top](declarations/edgefinset-top.md) | 114 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [card_edgeFinset_top_eq_card_choose_two](declarations/card-edgefinset-top-eq-card-choose-two.md) | 118 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [card_edgeFinset_le_card_choose_two](declarations/card-edgefinset-le-card-choose-two.md) | 123 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `def` | [neighborFinset](declarations/neighborfinset.md) | 147 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [neighborFinset_def](declarations/neighborfinset-def.md) | 150 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [mem_neighborFinset](declarations/mem-neighborfinset.md) | 154 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [notMem_neighborFinset_self](declarations/notmem-neighborfinset-self.md) | 157 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [neighborFinset_disjoint_singleton](declarations/neighborfinset-disjoint-singleton.md) | 162 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [singleton_disjoint_neighborFinset](declarations/singleton-disjoint-neighborfinset.md) | 165 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `def` | [degree](declarations/degree.md) | 169 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [card_neighborFinset_eq_degree](declarations/card-neighborfinset-eq-degree.md) | 172 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [card_neighborSet_eq_degree](declarations/card-neighborset-eq-degree.md) | 175 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [degree_pos_iff_exists_adj](declarations/degree-pos-iff-exists-adj.md) | 178 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [degree_pos_iff_mem_support](declarations/degree-pos-iff-mem-support.md) | 181 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [degree_eq_zero_iff_notMem_support](declarations/degree-eq-zero-iff-notmem-support.md) | 184 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [degree_compl](declarations/degree-compl.md) | 190 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `instance` | [incidenceSetFintype](declarations/incidencesetfintype.md) | 196 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `def` | [incidenceFinset](declarations/incidencefinset.md) | 200 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `theorem` | [card_incidenceSet_eq_degree](declarations/card-incidenceset-eq-degree.md) | 204 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `theorem` | [card_incidenceFinset_eq_degree](declarations/card-incidencefinset-eq-degree.md) | 210 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `theorem` | [mem_incidenceFinset](declarations/mem-incidencefinset.md) | 215 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `theorem` | [incidenceFinset_eq_filter](declarations/incidencefinset-eq-filter.md) | 219 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `theorem` | [incidenceFinset_subset](declarations/incidencefinset-subset.md) | 225 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `lemma` | [degree_le_of_le](declarations/degree-le-of-le.md) | 232 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `abbrev` | [LocallyFinite](declarations/locallyfinite.md) | 242 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `def` | [IsRegularOfDegree](declarations/isregularofdegree.md) | 248 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `theorem` | [IsRegularOfDegree.degree_eq](declarations/isregularofdegree-degree-eq.md) | 253 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `theorem` | [IsRegularOfDegree.compl](declarations/isregularofdegree-compl.md) | 256 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `instance` | [neighborSetFintype](declarations/neighborsetfintype.md) | 267 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `theorem` | [neighborFinset_eq_filter](declarations/neighborfinset-eq-filter.md) | 274 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `theorem` | [neighborFinset_compl](declarations/neighborfinset-compl.md) | 277 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `theorem` | [complete_graph_degree](declarations/complete-graph-degree.md) | 283 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `theorem` | [bot_degree](declarations/bot-degree.md) | 289 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `theorem` | [IsRegularOfDegree.top](declarations/isregularofdegree-top.md) | 293 | `BLOCKED_NATIVE_ADMISSION` |
| 51 | `def` | [minDegree](declarations/mindegree.md) | 301 | `BLOCKED_NATIVE_ADMISSION` |
| 52 | `theorem` | [exists_minimal_degree_vertex](declarations/exists-minimal-degree-vertex.md) | 306 | `BLOCKED_NATIVE_ADMISSION` |
| 53 | `theorem` | [minDegree_le_degree](declarations/mindegree-le-degree.md) | 313 | `BLOCKED_NATIVE_ADMISSION` |
| 54 | `theorem` | [le_minDegree_of_forall_le_degree](declarations/le-mindegree-of-forall-le-degree.md) | 321 | `BLOCKED_NATIVE_ADMISSION` |
| 55 | `lemma` | [minDegree_of_isEmpty](declarations/mindegree-of-isempty.md) | 329 | `BLOCKED_NATIVE_ADMISSION` |
| 56 | `lemma` | [minDegree_le_minDegree](declarations/mindegree-le-mindegree.md) | 335 | `BLOCKED_NATIVE_ADMISSION` |
| 57 | `def` | [maxDegree](declarations/maxdegree.md) | 346 | `BLOCKED_NATIVE_ADMISSION` |
| 58 | `theorem` | [exists_maximal_degree_vertex](declarations/exists-maximal-degree-vertex.md) | 351 | `BLOCKED_NATIVE_ADMISSION` |
| 59 | `theorem` | [degree_le_maxDegree](declarations/degree-le-maxdegree.md) | 362 | `BLOCKED_NATIVE_ADMISSION` |
| 60 | `lemma` | [maxDegree_of_isEmpty](declarations/maxdegree-of-isempty.md) | 368 | `BLOCKED_NATIVE_ADMISSION` |
| 61 | `theorem` | [maxDegree_le_of_forall_degree_le](declarations/maxdegree-le-of-forall-degree-le.md) | 374 | `BLOCKED_NATIVE_ADMISSION` |
| 62 | `lemma` | [maxDegree_bot_eq_zero](declarations/maxdegree-bot-eq-zero.md) | 383 | `BLOCKED_NATIVE_ADMISSION` |
| 63 | `lemma` | [minDegree_le_maxDegree](declarations/mindegree-le-maxdegree.md) | 387 | `BLOCKED_NATIVE_ADMISSION` |
| 64 | `lemma` | [minDegree_bot_eq_zero](declarations/mindegree-bot-eq-zero.md) | 394 | `BLOCKED_NATIVE_ADMISSION` |
| 65 | `theorem` | [degree_lt_card_verts](declarations/degree-lt-card-verts.md) | 397 | `BLOCKED_NATIVE_ADMISSION` |
| 66 | `theorem` | [maxDegree_lt_card_verts](declarations/maxdegree-lt-card-verts.md) | 407 | `BLOCKED_NATIVE_ADMISSION` |
| 67 | `theorem` | [card_commonNeighbors_le_degree_left](declarations/card-commonneighbors-le-degree-left.md) | 413 | `BLOCKED_NATIVE_ADMISSION` |
| 68 | `theorem` | [card_commonNeighbors_le_degree_right](declarations/card-commonneighbors-le-degree-right.md) | 418 | `BLOCKED_NATIVE_ADMISSION` |
| 69 | `theorem` | [card_commonNeighbors_lt_card_verts](declarations/card-commonneighbors-lt-card-verts.md) | 422 | `BLOCKED_NATIVE_ADMISSION` |
| 70 | `theorem` | [Adj.card_commonNeighbors_lt_degree](declarations/adj-card-commonneighbors-lt-degree.md) | 428 | `BLOCKED_NATIVE_ADMISSION` |
| 71 | `theorem` | [card_commonNeighbors_top](declarations/card-commonneighbors-top.md) | 444 | `BLOCKED_NATIVE_ADMISSION` |
| 72 | `lemma` | [edgeFinset_subset_sym2_of_support_subset](declarations/edgefinset-subset-sym2-of-support-subset.md) | 457 | `BLOCKED_NATIVE_ADMISSION` |
| 73 | `instance` | [(anonymous)](declarations/instance.md) | 464 | `BLOCKED_NATIVE_ADMISSION` |
| 74 | `theorem` | [map_edgeFinset_induce](declarations/map-edgefinset-induce.md) | 467 | `BLOCKED_NATIVE_ADMISSION` |
| 75 | `theorem` | [map_edgeFinset_induce_of_support_subset](declarations/map-edgefinset-induce-of-support-subset.md) | 483 | `BLOCKED_NATIVE_ADMISSION` |
| 76 | `theorem` | [card_edgeFinset_induce_of_support_subset](declarations/card-edgefinset-induce-of-support-subset.md) | 490 | `BLOCKED_NATIVE_ADMISSION` |
| 77 | `theorem` | [card_edgeFinset_induce_support](declarations/card-edgefinset-induce-support.md) | 494 | `BLOCKED_NATIVE_ADMISSION` |
| 78 | `theorem` | [map_neighborFinset_induce](declarations/map-neighborfinset-induce.md) | 498 | `BLOCKED_NATIVE_ADMISSION` |
| 79 | `theorem` | [map_neighborFinset_induce_of_neighborSet_subset](declarations/map-neighborfinset-induce-of-neighborset-subset.md) | 503 | `BLOCKED_NATIVE_ADMISSION` |
| 80 | `theorem` | [degree_induce_of_neighborSet_subset](declarations/degree-induce-of-neighborset-subset.md) | 511 | `BLOCKED_NATIVE_ADMISSION` |
| 81 | `theorem` | [degree_induce_of_support_subset](declarations/degree-induce-of-support-subset.md) | 518 | `BLOCKED_NATIVE_ADMISSION` |
| 82 | `theorem` | [degree_induce_support](declarations/degree-induce-support.md) | 523 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=7ae6b756f56587234e92b317c772df327275509fded97e7d50b378d1fc74a31b -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/Finite/Variant10dee6a8006561ed7596878cf7283a8c9f35690c6837b2d2eebf869441205424.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
