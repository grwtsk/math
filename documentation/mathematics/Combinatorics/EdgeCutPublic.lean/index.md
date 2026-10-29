# Edge Cut Public

[Complete source index](../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**32 observed declarations and anonymous commands**, 28 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/CombinatoricsAndDiscreteMathematics/EdgeCut/Variant5c3a58afe8e62e44927b716c21ac010052c7f7d743a37d73b8b56c2c1e1a7a3f.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `69f0b946737026be6abcf2f3d72a83289f0a8d51`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../_verification/specifications/Combinatorics/EdgeCutPublic.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [edgeCut](declarations/edgecut.md) | 36 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `lemma` | [mem_edgeCut_iff](declarations/mem-edgecut-iff.md) | 39 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `lemma` | [IsLink.mem_edgeCut_iff](declarations/islink-mem-edgecut-iff.md) | 41 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `lemma` | [edgeCut_subset_edgeSet](declarations/edgecut-subset-edgeset.md) | 46 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `lemma` | [edgeCut_eq_empty_iff](declarations/edgecut-eq-empty-iff.md) | 49 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `lemma` | [edgeCut_vertexSet_diff](declarations/edgecut-vertexset-diff.md) | 58 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `lemma` | [IsSubgraph.edgeCut_eq_inter](declarations/issubgraph-edgecut-eq-inter.md) | 61 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `lemma` | [edgeCut_symmDiff](declarations/edgecut-symmdiff.md) | 65 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `lemma` | [IsClosedSubgraph.edgeCut_subset_edgeSet](declarations/isclosedsubgraph-edgecut-subset-edgeset.md) | 72 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `def` | [IsEdgeCut](declarations/isedgecut.md) | 82 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `lemma` | [IsEdgeCut.exists_edgeCut](declarations/isedgecut-exists-edgecut.md) | 84 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `lemma` | [IsEdgeCut.exists_of_isLink](declarations/isedgecut-exists-of-islink.md) | 88 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `lemma` | [IsEdgeCut.subset_edgeSet](declarations/isedgecut-subset-edgeset.md) | 93 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `lemma` | [IsEdgeCut.symmDiff](declarations/isedgecut-symmdiff.md) | 97 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `lemma` | [IsEdgeCut.right_of_symmDiff](declarations/isedgecut-right-of-symmdiff.md) | 104 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `lemma` | [IsEdgeCut.left_of_symmDiff](declarations/isedgecut-left-of-symmdiff.md) | 108 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `lemma` | [IsEdgeCut.inter_edgeSet_of_le](declarations/isedgecut-inter-edgeset-of-le.md) | 111 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `lemma` | [IsEdgeCut.anti_of_subset](declarations/isedgecut-anti-of-subset.md) | 117 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `lemma` | [IsEdgeCut.of_isClosedSubgraph](declarations/isedgecut-of-isclosedsubgraph.md) | 122 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `def` | [IsBridge](declarations/isbridge.md) | 140 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `lemma` | [IsBridge.isEdgeCut_singleton](declarations/isbridge-isedgecut-singleton.md) | 142 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `lemma` | [IsBridge.mem_edgeSet](declarations/isbridge-mem-edgeset.md) | 145 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `lemma` | [IsBridge.anti_of_mem](declarations/isbridge-anti-of-mem.md) | 149 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `lemma` | [IsBridge.of_isClosedSubgraph](declarations/isbridge-of-isclosedsubgraph.md) | 152 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `lemma` | [IsClosedSubgraph.isBridge_iff](declarations/isclosedsubgraph-isbridge-iff.md) | 155 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `def` | [IsBond](declarations/isbond.md) | 167 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `lemma` | [IsBond.isEdgeCut](declarations/isbond-isedgecut.md) | 170 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `lemma` | [IsBond.nonempty](declarations/isbond-nonempty.md) | 172 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `lemma` | [IsBond.subset](declarations/isbond-subset.md) | 175 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `lemma` | [isBond_singleton_iff_isBridge](declarations/isbond-singleton-iff-isbridge.md) | 177 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `lemma` | [IsBond.isBridge_deleteEdges](declarations/isbond-isbridge-deleteedges.md) | 184 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `lemma` | [IsBond.of_isClosedSubgraph](declarations/isbond-of-isclosedsubgraph.md) | 191 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=11da6795421890b783dbe5749e69c9eead788dbb7aafc8724f46a4a20fb9863c -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/EdgeCut/Variant5c3a58afe8e62e44927b716c21ac010052c7f7d743a37d73b8b56c2c1e1a7a3f.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
