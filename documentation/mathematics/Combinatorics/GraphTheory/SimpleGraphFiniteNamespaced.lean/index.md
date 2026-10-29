# Simple Graph Finite Namespaced

[Complete source index](../../../complete-source-index.md) · [Up one directory](../../../complete-source-index.md) · [Full source](source.md)

**82 observed declarations and anonymous commands**, 71 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/CombinatoricsAndDiscreteMathematics/Finite/Variant81ff35e2b657a2d359bd7e83c40128f80e094b89e3b0050952cc5fedde00fad1.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `49408459ff9293c4d646682f3375c615babd73c0`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/Combinatorics/GraphTheory/SimpleGraphFiniteNamespaced.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `abbrev` | [edgeFinset](declarations/edgefinset.md) | 61 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `theorem` | [coe_edgeFinset](declarations/coe-edgefinset.md) | 65 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `theorem` | [mem_edgeFinset](declarations/mem-edgefinset.md) | 70 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `theorem` | [not_isDiag_of_mem_edgeFinset](declarations/not-isdiag-of-mem-edgefinset.md) | 73 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [edgeFinset_inj](declarations/edgefinset-inj.md) | 76 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [edgeFinset_subset_edgeFinset](declarations/edgefinset-subset-edgefinset.md) | 78 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [edgeFinset_ssubset_edgeFinset](declarations/edgefinset-ssubset-edgefinset.md) | 80 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [edgeFinset_bot](declarations/edgefinset-bot.md) | 89 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [edgeFinset_sup](declarations/edgefinset-sup.md) | 92 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [edgeFinset_inf](declarations/edgefinset-inf.md) | 96 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [edgeFinset_sdiff](declarations/edgefinset-sdiff.md) | 100 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `lemma` | [disjoint_edgeFinset](declarations/disjoint-edgefinset.md) | 103 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `lemma` | [edgeFinset_eq_empty](declarations/edgefinset-eq-empty.md) | 106 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `lemma` | [edgeFinset_nonempty](declarations/edgefinset-nonempty.md) | 109 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [edgeFinset_card](declarations/edgefinset-card.md) | 112 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [edgeSet_univ_card](declarations/edgeset-univ-card.md) | 116 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [edgeFinset_top](declarations/edgefinset-top.md) | 122 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [card_edgeFinset_top_eq_card_choose_two](declarations/card-edgefinset-top-eq-card-choose-two.md) | 126 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [card_edgeFinset_le_card_choose_two](declarations/card-edgefinset-le-card-choose-two.md) | 131 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `def` | [neighborFinset](declarations/neighborfinset.md) | 155 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [neighborFinset_def](declarations/neighborfinset-def.md) | 158 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [mem_neighborFinset](declarations/mem-neighborfinset.md) | 162 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [notMem_neighborFinset_self](declarations/notmem-neighborfinset-self.md) | 165 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [neighborFinset_disjoint_singleton](declarations/neighborfinset-disjoint-singleton.md) | 170 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [singleton_disjoint_neighborFinset](declarations/singleton-disjoint-neighborfinset.md) | 173 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `def` | [degree](declarations/degree.md) | 177 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [card_neighborFinset_eq_degree](declarations/card-neighborfinset-eq-degree.md) | 180 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [card_neighborSet_eq_degree](declarations/card-neighborset-eq-degree.md) | 183 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [degree_pos_iff_exists_adj](declarations/degree-pos-iff-exists-adj.md) | 186 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [degree_pos_iff_mem_support](declarations/degree-pos-iff-mem-support.md) | 189 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [degree_eq_zero_iff_notMem_support](declarations/degree-eq-zero-iff-notmem-support.md) | 192 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [degree_compl](declarations/degree-compl.md) | 198 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `instance` | [incidenceSetFintype](declarations/incidencesetfintype.md) | 204 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `def` | [incidenceFinset](declarations/incidencefinset.md) | 208 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `theorem` | [card_incidenceSet_eq_degree](declarations/card-incidenceset-eq-degree.md) | 212 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `theorem` | [card_incidenceFinset_eq_degree](declarations/card-incidencefinset-eq-degree.md) | 218 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `theorem` | [mem_incidenceFinset](declarations/mem-incidencefinset.md) | 223 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `theorem` | [incidenceFinset_eq_filter](declarations/incidencefinset-eq-filter.md) | 227 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `theorem` | [incidenceFinset_subset](declarations/incidencefinset-subset.md) | 233 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `lemma` | [degree_le_of_le](declarations/degree-le-of-le.md) | 240 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `abbrev` | [LocallyFinite](declarations/locallyfinite.md) | 250 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `def` | [IsRegularOfDegree](declarations/isregularofdegree.md) | 256 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `theorem` | [IsRegularOfDegree.degree_eq](declarations/isregularofdegree-degree-eq.md) | 261 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `theorem` | [IsRegularOfDegree.compl](declarations/isregularofdegree-compl.md) | 264 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `instance` | [neighborSetFintype](declarations/neighborsetfintype.md) | 275 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `theorem` | [neighborFinset_eq_filter](declarations/neighborfinset-eq-filter.md) | 282 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `theorem` | [neighborFinset_compl](declarations/neighborfinset-compl.md) | 285 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `theorem` | [complete_graph_degree](declarations/complete-graph-degree.md) | 291 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `theorem` | [bot_degree](declarations/bot-degree.md) | 297 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `theorem` | [IsRegularOfDegree.top](declarations/isregularofdegree-top.md) | 301 | `BLOCKED_NATIVE_ADMISSION` |
| 51 | `def` | [minDegree](declarations/mindegree.md) | 309 | `BLOCKED_NATIVE_ADMISSION` |
| 52 | `theorem` | [exists_minimal_degree_vertex](declarations/exists-minimal-degree-vertex.md) | 314 | `BLOCKED_NATIVE_ADMISSION` |
| 53 | `theorem` | [minDegree_le_degree](declarations/mindegree-le-degree.md) | 321 | `BLOCKED_NATIVE_ADMISSION` |
| 54 | `theorem` | [le_minDegree_of_forall_le_degree](declarations/le-mindegree-of-forall-le-degree.md) | 329 | `BLOCKED_NATIVE_ADMISSION` |
| 55 | `lemma` | [minDegree_of_isEmpty](declarations/mindegree-of-isempty.md) | 337 | `BLOCKED_NATIVE_ADMISSION` |
| 56 | `lemma` | [minDegree_le_minDegree](declarations/mindegree-le-mindegree.md) | 343 | `BLOCKED_NATIVE_ADMISSION` |
| 57 | `def` | [maxDegree](declarations/maxdegree.md) | 354 | `BLOCKED_NATIVE_ADMISSION` |
| 58 | `theorem` | [exists_maximal_degree_vertex](declarations/exists-maximal-degree-vertex.md) | 359 | `BLOCKED_NATIVE_ADMISSION` |
| 59 | `theorem` | [degree_le_maxDegree](declarations/degree-le-maxdegree.md) | 370 | `BLOCKED_NATIVE_ADMISSION` |
| 60 | `lemma` | [maxDegree_of_isEmpty](declarations/maxdegree-of-isempty.md) | 376 | `BLOCKED_NATIVE_ADMISSION` |
| 61 | `theorem` | [maxDegree_le_of_forall_degree_le](declarations/maxdegree-le-of-forall-degree-le.md) | 382 | `BLOCKED_NATIVE_ADMISSION` |
| 62 | `lemma` | [maxDegree_bot_eq_zero](declarations/maxdegree-bot-eq-zero.md) | 391 | `BLOCKED_NATIVE_ADMISSION` |
| 63 | `lemma` | [minDegree_le_maxDegree](declarations/mindegree-le-maxdegree.md) | 395 | `BLOCKED_NATIVE_ADMISSION` |
| 64 | `lemma` | [minDegree_bot_eq_zero](declarations/mindegree-bot-eq-zero.md) | 402 | `BLOCKED_NATIVE_ADMISSION` |
| 65 | `theorem` | [degree_lt_card_verts](declarations/degree-lt-card-verts.md) | 405 | `BLOCKED_NATIVE_ADMISSION` |
| 66 | `theorem` | [maxDegree_lt_card_verts](declarations/maxdegree-lt-card-verts.md) | 415 | `BLOCKED_NATIVE_ADMISSION` |
| 67 | `theorem` | [card_commonNeighbors_le_degree_left](declarations/card-commonneighbors-le-degree-left.md) | 421 | `BLOCKED_NATIVE_ADMISSION` |
| 68 | `theorem` | [card_commonNeighbors_le_degree_right](declarations/card-commonneighbors-le-degree-right.md) | 426 | `BLOCKED_NATIVE_ADMISSION` |
| 69 | `theorem` | [card_commonNeighbors_lt_card_verts](declarations/card-commonneighbors-lt-card-verts.md) | 430 | `BLOCKED_NATIVE_ADMISSION` |
| 70 | `theorem` | [Adj.card_commonNeighbors_lt_degree](declarations/adj-card-commonneighbors-lt-degree.md) | 436 | `BLOCKED_NATIVE_ADMISSION` |
| 71 | `theorem` | [card_commonNeighbors_top](declarations/card-commonneighbors-top.md) | 452 | `BLOCKED_NATIVE_ADMISSION` |
| 72 | `lemma` | [edgeFinset_subset_sym2_of_support_subset](declarations/edgefinset-subset-sym2-of-support-subset.md) | 465 | `BLOCKED_NATIVE_ADMISSION` |
| 73 | `instance` | [(anonymous)](declarations/instance.md) | 472 | `BLOCKED_NATIVE_ADMISSION` |
| 74 | `theorem` | [map_edgeFinset_induce](declarations/map-edgefinset-induce.md) | 475 | `BLOCKED_NATIVE_ADMISSION` |
| 75 | `theorem` | [map_edgeFinset_induce_of_support_subset](declarations/map-edgefinset-induce-of-support-subset.md) | 491 | `BLOCKED_NATIVE_ADMISSION` |
| 76 | `theorem` | [card_edgeFinset_induce_of_support_subset](declarations/card-edgefinset-induce-of-support-subset.md) | 498 | `BLOCKED_NATIVE_ADMISSION` |
| 77 | `theorem` | [card_edgeFinset_induce_support](declarations/card-edgefinset-induce-support.md) | 502 | `BLOCKED_NATIVE_ADMISSION` |
| 78 | `theorem` | [map_neighborFinset_induce](declarations/map-neighborfinset-induce.md) | 506 | `BLOCKED_NATIVE_ADMISSION` |
| 79 | `theorem` | [map_neighborFinset_induce_of_neighborSet_subset](declarations/map-neighborfinset-induce-of-neighborset-subset.md) | 511 | `BLOCKED_NATIVE_ADMISSION` |
| 80 | `theorem` | [degree_induce_of_neighborSet_subset](declarations/degree-induce-of-neighborset-subset.md) | 519 | `BLOCKED_NATIVE_ADMISSION` |
| 81 | `theorem` | [degree_induce_of_support_subset](declarations/degree-induce-of-support-subset.md) | 526 | `BLOCKED_NATIVE_ADMISSION` |
| 82 | `theorem` | [degree_induce_support](declarations/degree-induce-support.md) | 531 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=64f7ae82d5b832c4a70d60f11487a118901e88e921c510811011effcffab97ab -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/Finite/Variant81ff35e2b657a2d359bd7e83c40128f80e094b89e3b0050952cc5fedde00fad1.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
