# Delete Edges

[Complete source index](../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**31 observed declarations and anonymous commands**, 26 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/CombinatoricsAndDiscreteMathematics/DeleteEdges/Variantc4c85419b97a086395e7399f0d90eaebb7c0fd574bd076a2098b82c214ff59b1.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `abee08a6efd0f7fdbe9994ac79bee283005be81a`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/Combinatorics/GraphTheory/DeleteEdges.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [deleteEdges](declarations/deleteedges.md) | 41 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `instance` | [(anonymous)](declarations/instance-source-edition-2.md) | 45 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `lemma` | [deleteEdges_adj](declarations/deleteedges-adj.md) | 49 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `lemma` | [deleteEdges_edgeSet](declarations/deleteedges-edgeset.md) | 52 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [deleteEdges_deleteEdges](declarations/deleteedges-deleteedges.md) | 56 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `lemma` | [deleteEdges_empty](declarations/deleteedges-empty.md) | 59 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `lemma` | [deleteEdges_univ](declarations/deleteedges-univ.md) | 60 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `lemma` | [deleteEdges_le](declarations/deleteedges-le.md) | 62 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `lemma` | [deleteEdges_anti](declarations/deleteedges-anti.md) | 64 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `lemma` | [deleteEdges_mono](declarations/deleteedges-mono.md) | 67 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `lemma` | [deleteEdges_eq_self](declarations/deleteedges-eq-self.md) | 69 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [deleteEdges_eq_inter_edgeSet](declarations/deleteedges-eq-inter-edgeset.md) | 72 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [deleteEdges_sdiff_eq_of_le](declarations/deleteedges-sdiff-eq-of-le.md) | 77 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [edgeSet_deleteEdges](declarations/edgeset-deleteedges.md) | 81 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [edgeFinset_deleteEdges](declarations/edgefinset-deleteedges.md) | 84 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `def` | [deleteIncidenceSet](declarations/deleteincidenceset.md) | 95 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `lemma` | [deleteIncidenceSet_adj](declarations/deleteincidenceset-adj.md) | 98 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `lemma` | [deleteIncidenceSet_le](declarations/deleteincidenceset-le.md) | 103 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `lemma` | [edgeSet_fromEdgeSet_incidenceSet](declarations/edgeset-fromedgeset-incidenceset.md) | 106 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [edgeSet_deleteIncidenceSet](declarations/edgeset-deleteincidenceset.md) | 113 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [support_deleteIncidenceSet_subset](declarations/support-deleteincidenceset-subset.md) | 119 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [induce_deleteIncidenceSet_of_notMem](declarations/induce-deleteincidenceset-of-notmem.md) | 125 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `instance` | [(anonymous)](declarations/instance.md) | 136 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [card_edgeFinset_induce_compl_singleton](declarations/card-edgefinset-induce-compl-singleton.md) | 142 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [edgeFinset_deleteIncidenceSet_eq_sdiff](declarations/edgefinset-deleteincidenceset-eq-sdiff.md) | 155 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [card_edgeFinset_deleteIncidenceSet](declarations/card-edgefinset-deleteincidenceset.md) | 162 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [edgeFinset_deleteIncidenceSet_eq_filter](declarations/edgefinset-deleteincidenceset-eq-filter.md) | 169 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [card_support_deleteIncidenceSet](declarations/card-support-deleteincidenceset.md) | 181 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `def` | [DeleteFar](declarations/deletefar.md) | 199 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [deleteFar_iff](declarations/deletefar-iff.md) | 204 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [DeleteFar.mono](declarations/deletefar-mono.md) | 219 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=dca28e367869c983af4ead3e57ddd7ae8490fe1dbf3a1467b4b1927b0f59e6b4 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/DeleteEdges/Variantc4c85419b97a086395e7399f0d90eaebb7c0fd574bd076a2098b82c214ff59b1.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
