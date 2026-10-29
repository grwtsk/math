# Edge Cut Namespaced Public

[Complete source index](../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**32 observed declarations and anonymous commands**, 28 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/CombinatoricsAndDiscreteMathematics/EdgeCut/Variant0d0bee0b1251d53d5a35d6c5d2ea8c1137e5399d8dcd421871b2304d626de290.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `379c34a49c2c39672466707c06ea40ec343fef2e`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../_verification/specifications/Combinatorics/EdgeCutNamespacedPublic.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [edgeCut](declarations/edgecut.md) | 44 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `lemma` | [mem_edgeCut_iff](declarations/mem-edgecut-iff.md) | 47 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `lemma` | [IsLink.mem_edgeCut_iff](declarations/islink-mem-edgecut-iff.md) | 49 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `lemma` | [edgeCut_subset_edgeSet](declarations/edgecut-subset-edgeset.md) | 54 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `lemma` | [edgeCut_eq_empty_iff](declarations/edgecut-eq-empty-iff.md) | 57 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `lemma` | [edgeCut_vertexSet_diff](declarations/edgecut-vertexset-diff.md) | 66 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `lemma` | [IsSubgraph.edgeCut_eq_inter](declarations/issubgraph-edgecut-eq-inter.md) | 69 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `lemma` | [edgeCut_symmDiff](declarations/edgecut-symmdiff.md) | 73 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `lemma` | [IsClosedSubgraph.edgeCut_subset_edgeSet](declarations/isclosedsubgraph-edgecut-subset-edgeset.md) | 80 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `def` | [IsEdgeCut](declarations/isedgecut.md) | 90 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `lemma` | [IsEdgeCut.exists_edgeCut](declarations/isedgecut-exists-edgecut.md) | 92 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `lemma` | [IsEdgeCut.exists_of_isLink](declarations/isedgecut-exists-of-islink.md) | 96 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `lemma` | [IsEdgeCut.subset_edgeSet](declarations/isedgecut-subset-edgeset.md) | 101 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `lemma` | [IsEdgeCut.symmDiff](declarations/isedgecut-symmdiff.md) | 105 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `lemma` | [IsEdgeCut.right_of_symmDiff](declarations/isedgecut-right-of-symmdiff.md) | 112 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `lemma` | [IsEdgeCut.left_of_symmDiff](declarations/isedgecut-left-of-symmdiff.md) | 116 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `lemma` | [IsEdgeCut.inter_edgeSet_of_le](declarations/isedgecut-inter-edgeset-of-le.md) | 119 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `lemma` | [IsEdgeCut.anti_of_subset](declarations/isedgecut-anti-of-subset.md) | 125 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `lemma` | [IsEdgeCut.of_isClosedSubgraph](declarations/isedgecut-of-isclosedsubgraph.md) | 130 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `def` | [IsBridge](declarations/isbridge.md) | 148 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `lemma` | [IsBridge.isEdgeCut_singleton](declarations/isbridge-isedgecut-singleton.md) | 150 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `lemma` | [IsBridge.mem_edgeSet](declarations/isbridge-mem-edgeset.md) | 153 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `lemma` | [IsBridge.anti_of_mem](declarations/isbridge-anti-of-mem.md) | 157 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `lemma` | [IsBridge.of_isClosedSubgraph](declarations/isbridge-of-isclosedsubgraph.md) | 160 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `lemma` | [IsClosedSubgraph.isBridge_iff](declarations/isclosedsubgraph-isbridge-iff.md) | 163 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `def` | [IsBond](declarations/isbond.md) | 175 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `lemma` | [IsBond.isEdgeCut](declarations/isbond-isedgecut.md) | 178 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `lemma` | [IsBond.nonempty](declarations/isbond-nonempty.md) | 180 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `lemma` | [IsBond.subset](declarations/isbond-subset.md) | 183 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `lemma` | [isBond_singleton_iff_isBridge](declarations/isbond-singleton-iff-isbridge.md) | 185 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `lemma` | [IsBond.isBridge_deleteEdges](declarations/isbond-isbridge-deleteedges.md) | 192 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `lemma` | [IsBond.of_isClosedSubgraph](declarations/isbond-of-isclosedsubgraph.md) | 199 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=5e171304c9a9f169c527b668ba775f590abdb80c26bea0bfb4570c15e70768e0 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/EdgeCut/Variant0d0bee0b1251d53d5a35d6c5d2ea8c1137e5399d8dcd421871b2304d626de290.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
