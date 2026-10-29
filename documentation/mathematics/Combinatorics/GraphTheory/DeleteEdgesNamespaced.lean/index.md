# Delete Edges Namespaced

[Complete source index](../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**31 observed declarations and anonymous commands**, 26 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/CombinatoricsAndDiscreteMathematics/DeleteEdges/Variant6533432644c14de667a6cf131307b9a2148ff4f9fcea20d9f70c2e02c11a5704.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `6bd55eb40c7f1283bac1c17f9575203894140788`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/Combinatorics/GraphTheory/DeleteEdgesNamespaced.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [deleteEdges](declarations/deleteedges.md) | 49 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `instance` | [(anonymous)](declarations/instance.md) | 53 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `lemma` | [deleteEdges_adj](declarations/deleteedges-adj.md) | 57 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `lemma` | [deleteEdges_edgeSet](declarations/deleteedges-edgeset.md) | 60 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [deleteEdges_deleteEdges](declarations/deleteedges-deleteedges.md) | 64 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `lemma` | [deleteEdges_empty](declarations/deleteedges-empty.md) | 67 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `lemma` | [deleteEdges_univ](declarations/deleteedges-univ.md) | 68 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `lemma` | [deleteEdges_le](declarations/deleteedges-le.md) | 70 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `lemma` | [deleteEdges_anti](declarations/deleteedges-anti.md) | 72 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `lemma` | [deleteEdges_mono](declarations/deleteedges-mono.md) | 75 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `lemma` | [deleteEdges_eq_self](declarations/deleteedges-eq-self.md) | 77 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [deleteEdges_eq_inter_edgeSet](declarations/deleteedges-eq-inter-edgeset.md) | 80 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [deleteEdges_sdiff_eq_of_le](declarations/deleteedges-sdiff-eq-of-le.md) | 85 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [edgeSet_deleteEdges](declarations/edgeset-deleteedges.md) | 89 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [edgeFinset_deleteEdges](declarations/edgefinset-deleteedges.md) | 92 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `def` | [deleteIncidenceSet](declarations/deleteincidenceset.md) | 103 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `lemma` | [deleteIncidenceSet_adj](declarations/deleteincidenceset-adj.md) | 106 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `lemma` | [deleteIncidenceSet_le](declarations/deleteincidenceset-le.md) | 111 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `lemma` | [edgeSet_fromEdgeSet_incidenceSet](declarations/edgeset-fromedgeset-incidenceset.md) | 114 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [edgeSet_deleteIncidenceSet](declarations/edgeset-deleteincidenceset.md) | 121 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [support_deleteIncidenceSet_subset](declarations/support-deleteincidenceset-subset.md) | 127 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [induce_deleteIncidenceSet_of_notMem](declarations/induce-deleteincidenceset-of-notmem.md) | 133 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `instance` | [(anonymous)](declarations/instance-source-edition-2.md) | 144 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [card_edgeFinset_induce_compl_singleton](declarations/card-edgefinset-induce-compl-singleton.md) | 150 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [edgeFinset_deleteIncidenceSet_eq_sdiff](declarations/edgefinset-deleteincidenceset-eq-sdiff.md) | 163 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [card_edgeFinset_deleteIncidenceSet](declarations/card-edgefinset-deleteincidenceset.md) | 170 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [edgeFinset_deleteIncidenceSet_eq_filter](declarations/edgefinset-deleteincidenceset-eq-filter.md) | 177 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [card_support_deleteIncidenceSet](declarations/card-support-deleteincidenceset.md) | 189 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `def` | [DeleteFar](declarations/deletefar.md) | 207 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [deleteFar_iff](declarations/deletefar-iff.md) | 212 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [DeleteFar.mono](declarations/deletefar-mono.md) | 227 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=dedcac3be3e472dfedce42e7ec3d27438b1136e4b86249b40c5c598101ad8fa4 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/DeleteEdges/Variant6533432644c14de667a6cf131307b9a2148ff4f9fcea20d9f70c2e02c11a5704.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
