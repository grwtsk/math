# Connectivity Subgraph To Subgraph

[Complete source index](../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**64 observed declarations and anonymous commands**, 57 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/Subgraph/Variantac0731d262823ab6996f7c5ddb50517623a20f9ec6e78507948416c8ec3b5663.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `19ffc80dc494ae5c89f9ef5cf63cbdc2693c442b`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/Combinatorics/GraphTheory/ConnectivitySubgraphToSubgraph.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `structure` | [Preconnected](declarations/preconnected.md) | 29 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `instance` | [(anonymous)](declarations/instance-source-edition-3.md) | 32 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `instance` | [(anonymous)](declarations/instance-source-edition-2.md) | 34 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `lemma` | [preconnected_iff](declarations/preconnected-iff.md) | 37 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `structure` | [Connected](declarations/connected.md) | 43 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `instance` | [(anonymous)](declarations/instance-source-edition-4.md) | 46 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `instance` | [(anonymous)](declarations/instance.md) | 48 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `lemma` | [connected_iff'](declarations/connected-iff-source-edition-2.md) | 51 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `lemma` | [connected_iff](declarations/connected-iff.md) | 54 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `lemma` | [Connected.preconnected](declarations/connected-preconnected.md) | 58 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `lemma` | [Connected.nonempty](declarations/connected-nonempty.md) | 61 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [singletonSubgraph_connected](declarations/singletonsubgraph-connected.md) | 64 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [subgraphOfAdj_connected](declarations/subgraphofadj-connected.md) | 72 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `lemma` | [top_induce_pair_connected_of_adj](declarations/top-induce-pair-connected-of-adj.md) | 79 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `lemma` | [Connected.mono](declarations/connected-mono.md) | 85 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `lemma` | [Connected.mono'](declarations/connected-mono-source-edition-2.md) | 92 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `lemma` | [Connected.sup](declarations/connected-sup.md) | 97 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `lemma` | [Connected.exists_verts_eq_connectedComponentSupp](declarations/connected-exists-verts-eq-connectedcomponentsupp.md) | 111 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `def` | [toSubgraph](declarations/tosubgraph.md) | 132 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [toSubgraph_cons_nil_eq_subgraphOfAdj](declarations/tosubgraph-cons-nil-eq-subgraphofadj.md) | 136 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [mem_verts_toSubgraph](declarations/mem-verts-tosubgraph.md) | 139 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `lemma` | [not_nil_of_adj_toSubgraph](declarations/not-nil-of-adj-tosubgraph.md) | 148 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `lemma` | [start_mem_verts_toSubgraph](declarations/start-mem-verts-tosubgraph.md) | 152 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `lemma` | [end_mem_verts_toSubgraph](declarations/end-mem-verts-tosubgraph.md) | 155 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [verts_toSubgraph](declarations/verts-tosubgraph.md) | 159 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [mem_edges_toSubgraph](declarations/mem-edges-tosubgraph.md) | 162 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [edgeSet_toSubgraph](declarations/edgeset-tosubgraph.md) | 166 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [toSubgraph_append](declarations/tosubgraph-append.md) | 170 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [toSubgraph_reverse](declarations/tosubgraph-reverse.md) | 174 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [toSubgraph_rotate](declarations/tosubgraph-rotate.md) | 184 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [toSubgraph_map](declarations/tosubgraph-map.md) | 189 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `lemma` | [adj_toSubgraph_mapLe](declarations/adj-tosubgraph-maple.md) | 192 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [finite_neighborSet_toSubgraph](declarations/finite-neighborset-tosubgraph.md) | 199 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `lemma` | [toSubgraph_le_induce_support](declarations/tosubgraph-le-induce-support.md) | 210 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `theorem` | [toSubgraph_adj_getVert](declarations/tosubgraph-adj-getvert.md) | 215 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `theorem` | [toSubgraph_adj_snd](declarations/tosubgraph-adj-snd.md) | 228 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `theorem` | [toSubgraph_adj_penultimate](declarations/tosubgraph-adj-penultimate.md) | 231 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `theorem` | [toSubgraph_adj_iff](declarations/tosubgraph-adj-iff.md) | 237 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `lemma` | [mem_support_of_adj_toSubgraph](declarations/mem-support-of-adj-tosubgraph.md) | 269 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `lemma` | [neighborSet_toSubgraph_startpoint](declarations/neighborset-tosubgraph-startpoint.md) | 274 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `lemma` | [neighborSet_toSubgraph_endpoint](declarations/neighborset-tosubgraph-endpoint-source-edition-2.md) | 291 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `lemma` | [neighborSet_toSubgraph_internal](declarations/neighborset-tosubgraph-internal.md) | 297 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `lemma` | [ncard_neighborSet_toSubgraph_internal_eq_two](declarations/ncard-neighborset-tosubgraph-internal-eq-two.md) | 311 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `lemma` | [snd_of_toSubgraph_adj](declarations/snd-of-tosubgraph-adj.md) | 321 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `lemma` | [neighborSet_toSubgraph_endpoint](declarations/neighborset-tosubgraph-endpoint.md) | 339 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `lemma` | [neighborSet_toSubgraph_internal](declarations/neighborset-tosubgraph-internal-source-edition-2.md) | 355 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `lemma` | [ncard_neighborSet_toSubgraph_eq_two](declarations/ncard-neighborset-tosubgraph-eq-two.md) | 374 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `lemma` | [exists_isCycle_snd_verts_eq](declarations/exists-iscycle-snd-verts-eq.md) | 386 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `lemma` | [exists_mem_support_mem_erase_mem_support_takeUntil_eq_empty](declarations/exists-mem-support-mem-erase-mem-support-takeuntil-eq-empty.md) | 410 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `lemma` | [exists_mem_support_forall_mem_support_imp_eq](declarations/exists-mem-support-forall-mem-support-imp-eq.md) | 430 | `BLOCKED_NATIVE_ADMISSION` |
| 51 | `lemma` | [_root_.SimpleGraph.Walk.toSubgraph_connected](declarations/root-simplegraph-walk-tosubgraph-connected.md) | 443 | `BLOCKED_NATIVE_ADMISSION` |
| 52 | `lemma` | [induce_union_connected](declarations/induce-union-connected-source-edition-2.md) | 452 | `BLOCKED_NATIVE_ADMISSION` |
| 53 | `lemma` | [Connected.adj_union](declarations/connected-adj-union.md) | 460 | `BLOCKED_NATIVE_ADMISSION` |
| 54 | `lemma` | [preconnected_iff_forall_exists_walk_subgraph](declarations/preconnected-iff-forall-exists-walk-subgraph.md) | 468 | `BLOCKED_NATIVE_ADMISSION` |
| 55 | `lemma` | [connected_iff_forall_exists_walk_subgraph](declarations/connected-iff-forall-exists-walk-subgraph.md) | 482 | `BLOCKED_NATIVE_ADMISSION` |
| 56 | `lemma` | [connected_induce_iff](declarations/connected-induce-iff.md) | 492 | `BLOCKED_NATIVE_ADMISSION` |
| 57 | `lemma` | [induce_union_connected](declarations/induce-union-connected.md) | 496 | `BLOCKED_NATIVE_ADMISSION` |
| 58 | `lemma` | [induce_pair_connected_of_adj](declarations/induce-pair-connected-of-adj.md) | 503 | `BLOCKED_NATIVE_ADMISSION` |
| 59 | `lemma` | [Subgraph.Connected.induce_verts](declarations/subgraph-connected-induce-verts.md) | 508 | `BLOCKED_NATIVE_ADMISSION` |
| 60 | `lemma` | [Walk.connected_induce_support](declarations/walk-connected-induce-support.md) | 513 | `BLOCKED_NATIVE_ADMISSION` |
| 61 | `lemma` | [induce_connected_adj_union](declarations/induce-connected-adj-union.md) | 518 | `BLOCKED_NATIVE_ADMISSION` |
| 62 | `lemma` | [induce_connected_of_patches](declarations/induce-connected-of-patches.md) | 532 | `BLOCKED_NATIVE_ADMISSION` |
| 63 | `lemma` | [induce_sUnion_connected_of_pairwise_not_disjoint](declarations/induce-sunion-connected-of-pairwise-not-disjoint.md) | 541 | `BLOCKED_NATIVE_ADMISSION` |
| 64 | `lemma` | [extend_finset_to_connected](declarations/extend-finset-to-connected.md) | 554 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=710bd783ad44f8f02aa391a6a8695b072acc080a012de33b0224460b1b50a965 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/Subgraph/Variantac0731d262823ab6996f7c5ddb50517623a20f9ec6e78507948416c8ec3b5663.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
