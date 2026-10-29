# Graph Delete Namespaced Public

[Complete source index](../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**31 observed declarations and anonymous commands**, 27 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/CombinatoricsAndDiscreteMathematics/Delete/Variantc55d90d900a16f399fcb737b4ccf503f07bf670468b4f9f70b36c4ae50323d1f.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `fda2664e1edf115d36e51ca14a5400ec1db9f3f4`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../_verification/specifications/Combinatorics/GraphDeleteNamespacedPublic.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [restrict](declarations/restrict.md) | 46 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `lemma` | [restrict_le](declarations/restrict-le.md) | 56 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `lemma` | [restrict_eq_self_iff](declarations/restrict-eq-self-iff.md) | 61 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `lemma` | [restrict_self](declarations/restrict-self.md) | 66 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `lemma` | [restrict_edgeSet_inter](declarations/restrict-edgeset-inter.md) | 70 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `lemma` | [restrict_inter_edgeSet](declarations/restrict-inter-edgeset.md) | 74 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `lemma` | [restrict_mono_left](declarations/restrict-mono-left.md) | 79 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `lemma` | [restrict_mono_right](declarations/restrict-mono-right.md) | 85 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `lemma` | [restrict_inc](declarations/restrict-inc.md) | 90 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `lemma` | [restrict_isLoopAt](declarations/restrict-isloopat.md) | 94 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `lemma` | [restrict_restrict](declarations/restrict-restrict.md) | 98 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `def` | [deleteEdges](declarations/deleteedges.md) | 107 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `lemma` | [restrict_edgeSet_sdiff_eq_deleteEdges](declarations/restrict-edgeset-sdiff-eq-deleteedges.md) | 115 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `lemma` | [deleteEdges_le](declarations/deleteedges-le.md) | 122 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `lemma` | [restrict_eq_deleteEdges](declarations/restrict-eq-deleteedges.md) | 125 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `lemma` | [deleteEdges_empty](declarations/deleteedges-empty.md) | 130 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `lemma` | [deleteEdges_mono_left](declarations/deleteedges-mono-left.md) | 134 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `lemma` | [deleteEdges_inc](declarations/deleteedges-inc.md) | 140 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `lemma` | [deleteEdges_isLoopAt](declarations/deleteedges-isloopat.md) | 144 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `lemma` | [deleteEdges_deleteEdges](declarations/deleteedges-deleteedges.md) | 150 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `def` | [induce](declarations/induce.md) | 162 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `lemma` | [induce_le](declarations/induce-le.md) | 168 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `lemma` | [induce_le_iff](declarations/induce-le-iff.md) | 171 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `lemma` | [edgeSet_induce](declarations/edgeset-induce.md) | 173 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `lemma` | [induce_vertexSet](declarations/induce-vertexset.md) | 177 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `def` | [deleteVerts](declarations/deleteverts.md) | 184 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `lemma` | [vertexSet_deleteVerts](declarations/vertexset-deleteverts.md) | 187 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `lemma` | [deleteVerts_isLink](declarations/deleteverts-islink.md) | 192 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `lemma` | [edgeSet_deleteVerts](declarations/edgeset-deleteverts.md) | 198 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `lemma` | [deleteVerts_empty](declarations/deleteverts-empty.md) | 203 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `lemma` | [deleteVerts_le](declarations/deleteverts-le.md) | 206 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=f9890edf60164352b548922279c76a0dba31274e444133110bd4110f40e63f2b -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/Delete/Variantc55d90d900a16f399fcb737b4ccf503f07bf670468b4f9f70b36c4ae50323d1f.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
