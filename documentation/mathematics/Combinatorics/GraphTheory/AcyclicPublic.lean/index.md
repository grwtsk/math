# Acyclic Public

[Complete source index](../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**78 observed declarations and anonymous commands**, 72 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/Acyclic/Variant886ca3a81cb337405afb33948ffe31481efce7395a8b41251e5dee669c6c43e7.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `9a803b1ac3276ace8b346d0663ff9401e2940094`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/Combinatorics/GraphTheory/AcyclicPublic.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [IsAcyclic](declarations/isacyclic.md) | 56 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `structure` | [IsTree](declarations/istree.md) | 60 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `lemma` | [isAcyclic_bot](declarations/isacyclic-bot.md) | 70 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `lemma` | [IsAcyclic.comap](declarations/isacyclic-comap.md) | 73 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `lemma` | [IsAcyclic.embedding](declarations/isacyclic-embedding.md) | 77 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `lemma` | [Iso.isAcyclic_iff](declarations/iso-isacyclic-iff.md) | 81 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `lemma` | [Iso.isTree_iff](declarations/iso-istree-iff.md) | 85 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `lemma` | [IsAcyclic.of_map](declarations/isacyclic-of-map.md) | 89 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `lemma` | [IsAcyclic.of_comap](declarations/isacyclic-of-comap.md) | 92 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `lemma` | [IsAcyclic.induce](declarations/isacyclic-induce.md) | 96 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `lemma` | [IsAcyclic.subgraph](declarations/isacyclic-subgraph.md) | 100 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `lemma` | [IsAcyclic.anti](declarations/isacyclic-anti.md) | 104 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `lemma` | [Walk.exists_mem_contains_edges_of_directed](declarations/walk-exists-mem-contains-edges-of-directed.md) | 107 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `lemma` | [isAcyclic_sSup_of_isAcyclic_directedOn](declarations/isacyclic-ssup-of-isacyclic-directedon.md) | 119 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [exists_maximal_isAcyclic_of_le_isAcyclic](declarations/exists-maximal-isacyclic-of-le-isacyclic.md) | 128 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `lemma` | [IsAcyclic.isTree_connectedComponent](declarations/isacyclic-istree-connectedcomponent.md) | 138 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [IsAcyclic.of_card_le_two](declarations/isacyclic-of-card-le-two.md) | 143 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `lemma` | [IsAcyclic.of_subsingleton](declarations/isacyclic-of-subsingleton.md) | 150 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `lemma` | [Subgraph.isAcyclic_coe_bot](declarations/subgraph-isacyclic-coe-bot.md) | 153 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `lemma` | [IsTree.of_subsingleton](declarations/istree-of-subsingleton.md) | 156 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [IsTree.coe_singletonSubgraph](declarations/istree-coe-singletonsubgraph.md) | 159 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [IsTree.coe_subgraphOfAdj](declarations/istree-coe-subgraphofadj.md) | 164 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [isAcyclic_iff_forall_isBridge](declarations/isacyclic-iff-forall-isbridge.md) | 176 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `lemma` | [isAcyclic_iff_forall_adj_isBridge](declarations/isacyclic-iff-forall-adj-isbridge.md) | 182 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [isAcyclic_iff_subsingleton_path](declarations/isacyclic-iff-subsingleton-path.md) | 189 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [IsAcyclic.path_unique](declarations/isacyclic-path-unique.md) | 199 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [isAcyclic_of_path_unique](declarations/isacyclic-of-path-unique.md) | 204 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [isAcyclic_iff_path_unique](declarations/isacyclic-iff-path-unique.md) | 208 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [IsAcyclic.eq_snd_of_adj_start](declarations/isacyclic-eq-snd-of-adj-start.md) | 211 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [IsAcyclic.eq_penultimate_of_adj_end](declarations/isacyclic-eq-penultimate-of-adj-end.md) | 217 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `lemma` | [IsAcyclic.mem_support_of_ne_mem_support_of_adj_of_isPath](declarations/isacyclic-mem-support-of-ne-mem-support-of-adj-of-ispath.md) | 223 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `lemma` | [IsAcyclic.ne_mem_support_of_support_of_adj_of_isPath](declarations/isacyclic-ne-mem-support-of-support-of-adj-of-ispath.md) | 229 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `lemma` | [IsAcyclic.path_concat](declarations/isacyclic-path-concat.md) | 237 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [isTree_iff_existsUnique_path](declarations/istree-iff-existsunique-path.md) | 243 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `lemma` | [IsTree.existsUnique_path](declarations/istree-existsunique-path.md) | 265 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `theorem` | [IsAcyclic.isPath_iff_isChain](declarations/isacyclic-ispath-iff-ischain.md) | 268 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `theorem` | [IsAcyclic.isPath_iff_isTrail](declarations/isacyclic-ispath-iff-istrail.md) | 293 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `lemma` | [IsTree.card_edgeFinset](declarations/istree-card-edgefinset.md) | 298 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `lemma` | [isTree_of_minimal_connected](declarations/istree-of-minimal-connected.md) | 349 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `lemma` | [isTree_iff_minimal_connected](declarations/istree-iff-minimal-connected.md) | 355 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `theorem` | [IsAcyclic.sup_edge_of_not_reachable](declarations/isacyclic-sup-edge-of-not-reachable.md) | 364 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `theorem` | [isAcyclic_add_edge_iff_of_not_reachable](declarations/isacyclic-add-edge-iff-of-not-reachable.md) | 372 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `theorem` | [isAcyclic_sup_fromEdgeSet_iff](declarations/isacyclic-sup-fromedgeset-iff.md) | 378 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `lemma` | [reachable_eq_of_maximal_isAcyclic](declarations/reachable-eq-of-maximal-isacyclic.md) | 394 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `theorem` | [maximal_isAcyclic_iff_reachable_eq](declarations/maximal-isacyclic-iff-reachable-eq.md) | 409 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `theorem` | [Connected.maximal_le_isAcyclic_iff_isTree](declarations/connected-maximal-le-isacyclic-iff-istree.md) | 424 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `theorem` | [maximal_isAcyclic_iff_isTree](declarations/maximal-isacyclic-iff-istree.md) | 434 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `theorem` | [isTree_iff_maximal_isAcyclic](declarations/istree-iff-maximal-isacyclic.md) | 440 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `theorem` | [exists_isAcyclic_reachable_eq_le_of_le_of_isAcyclic](declarations/exists-isacyclic-reachable-eq-le-of-le-of-isacyclic.md) | 446 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `theorem` | [exists_isAcyclic_reachable_eq_le](declarations/exists-isacyclic-reachable-eq-le.md) | 453 | `BLOCKED_NATIVE_ADMISSION` |
| 51 | `lemma` | [Connected.exists_isTree_le_of_le_of_isAcyclic](declarations/connected-exists-istree-le-of-le-of-isacyclic.md) | 459 | `BLOCKED_NATIVE_ADMISSION` |
| 52 | `lemma` | [Connected.exists_isTree_le](declarations/connected-exists-istree-le.md) | 466 | `BLOCKED_NATIVE_ADMISSION` |
| 53 | `lemma` | [Connected.card_vert_le_card_edgeSet_add_one](declarations/connected-card-vert-le-card-edgeset-add-one.md) | 471 | `BLOCKED_NATIVE_ADMISSION` |
| 54 | `lemma` | [isTree_iff_connected_and_card](declarations/istree-iff-connected-and-card.md) | 482 | `BLOCKED_NATIVE_ADMISSION` |
| 55 | `lemma` | [IsTree.minDegree_eq_one_of_nontrivial](declarations/istree-mindegree-eq-one-of-nontrivial.md) | 496 | `BLOCKED_NATIVE_ADMISSION` |
| 56 | `lemma` | [IsTree.exists_vert_degree_one_of_nontrivial](declarations/istree-exists-vert-degree-one-of-nontrivial.md) | 510 | `BLOCKED_NATIVE_ADMISSION` |
| 57 | `theorem` | [IsTree.exists_ne_and_degree_eq_one](declarations/istree-exists-ne-and-degree-eq-one.md) | 515 | `BLOCKED_NATIVE_ADMISSION` |
| 58 | `lemma` | [Connected.induce_compl_singleton_of_degree_eq_one](declarations/connected-induce-compl-singleton-of-degree-eq-one.md) | 533 | `BLOCKED_NATIVE_ADMISSION` |
| 59 | `lemma` | [Connected.exists_connected_induce_compl_singleton_of_finite_nontrivial](declarations/connected-exists-connected-induce-compl-singleton-of-finite-nontrivial.md) | 564 | `BLOCKED_NATIVE_ADMISSION` |
| 60 | `lemma` | [Connected.exists_preconnected_induce_compl_singleton_of_finite](declarations/connected-exists-preconnected-induce-compl-singleton-of-finite.md) | 574 | `BLOCKED_NATIVE_ADMISSION` |
| 61 | `lemma` | [IsAcyclic.dist_ne_of_adj](declarations/isacyclic-dist-ne-of-adj.md) | 580 | `BLOCKED_NATIVE_ADMISSION` |
| 62 | `lemma` | [IsTree.dist_ne_of_adj](declarations/istree-dist-ne-of-adj.md) | 593 | `BLOCKED_NATIVE_ADMISSION` |
| 63 | `lemma` | [IsAcyclic.dist_eq_dist_add_one_of_adj_of_reachable](declarations/isacyclic-dist-eq-dist-add-one-of-adj-of-reachable.md) | 597 | `BLOCKED_NATIVE_ADMISSION` |
| 64 | `lemma` | [IsTree.dist_eq_dist_add_one_of_adj](declarations/istree-dist-eq-dist-add-one-of-adj.md) | 602 | `BLOCKED_NATIVE_ADMISSION` |
| 65 | `def` | [IsTree.coloringTwoOfVert](declarations/istree-coloringtwoofvert.md) | 607 | `BLOCKED_NATIVE_ADMISSION` |
| 66 | `def` | [IsTree.coloringTwo](declarations/istree-coloringtwo.md) | 612 | `BLOCKED_NATIVE_ADMISSION` |
| 67 | `lemma` | [IsTree.isBipartite](declarations/istree-isbipartite.md) | 615 | `BLOCKED_NATIVE_ADMISSION` |
| 68 | `def` | [IsAcyclic.coloringTwoOfVerts](declarations/isacyclic-coloringtwoofverts.md) | 619 | `BLOCKED_NATIVE_ADMISSION` |
| 69 | `def` | [IsAcyclic.coloringTwo](declarations/isacyclic-coloringtwo.md) | 631 | `BLOCKED_NATIVE_ADMISSION` |
| 70 | `lemma` | [IsAcyclic.isBipartite](declarations/isacyclic-isbipartite.md) | 634 | `BLOCKED_NATIVE_ADMISSION` |
| 71 | `lemma` | [IsAcyclic.colorable_two](declarations/isacyclic-colorable-two.md) | 638 | `BLOCKED_NATIVE_ADMISSION` |
| 72 | `lemma` | [IsTree.colorable_two](declarations/istree-colorable-two.md) | 642 | `BLOCKED_NATIVE_ADMISSION` |
| 73 | `lemma` | [IsAcyclic.chromaticNumber_le_two](declarations/isacyclic-chromaticnumber-le-two.md) | 646 | `BLOCKED_NATIVE_ADMISSION` |
| 74 | `lemma` | [IsTree.chromaticNumber_le_two](declarations/istree-chromaticnumber-le-two.md) | 650 | `BLOCKED_NATIVE_ADMISSION` |
| 75 | `lemma` | [exists_isCycle_of_two_le_isEdgeReachable](declarations/exists-iscycle-of-two-le-isedgereachable.md) | 653 | `BLOCKED_NATIVE_ADMISSION` |
| 76 | `lemma` | [isAcyclic_iff_pairwise_not_isEdgeReachable_two](declarations/isacyclic-iff-pairwise-not-isedgereachable-two.md) | 661 | `BLOCKED_NATIVE_ADMISSION` |
| 77 | `theorem` | [isAcyclic_iff_free_cycleGraph](declarations/isacyclic-iff-free-cyclegraph.md) | 670 | `BLOCKED_NATIVE_ADMISSION` |
| 78 | `theorem` | [IsAcyclic.cliqueFree](declarations/isacyclic-cliquefree.md) | 676 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=66f407334717ab7741165b40fa59980f1c2c0c7a8ff3188b038da08dff970a25 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/Acyclic/Variant886ca3a81cb337405afb33948ffe31481efce7395a8b41251e5dee669c6c43e7.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
