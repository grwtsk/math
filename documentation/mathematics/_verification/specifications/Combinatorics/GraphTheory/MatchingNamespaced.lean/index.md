# Verification target: Matching Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ffb514da74b35ae3a3d77713dc88802fbd9b18d1",
  "lexical_observation_count": 53,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/Matching/Variant2451bde5f9cf67e83806efeb3a70e8cdacc48bcdc90af2b08c4fd61efb1314b1.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../Combinatorics/GraphTheory/MatchingNamespaced.lean/index.md) · [Full source](../../../../../Combinatorics/GraphTheory/MatchingNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ffb514da74b35ae3a3d77713dc88802fbd9b18d1`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/Matching/Variant2451bde5f9cf67e83806efeb3a70e8cdacc48bcdc90af2b08c4fd61efb1314b1.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/GraphTheory/Matching/Variant2451bde5f9cf67e83806efeb3a70e8cdacc48bcdc90af2b08c4fd61efb1314b1.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Combinatorics.SimpleGraph.Clique` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Combinatorics.SimpleGraph.Connectivity.Subgraph` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Combinatorics.SimpleGraph.Connectivity.WalkCounting` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Combinatorics.SimpleGraph.DegreeSum` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.Combinatorics.SimpleGraph.Operations` — import line 15; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Set.Card.Arithmetic` — import line 16; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Set.Functor` — import line 17; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [IsMatching](../../../../../Combinatorics/GraphTheory/MatchingNamespaced.lean/declarations/ismatching.md) | 73 | `declaration-track:ab35e891efc985a9d43b62b8b99319e6221b1c52d581c128104ebc18575ca925` |
| 2 | `def` | [IsMatching.toEdge](../../../../../Combinatorics/GraphTheory/MatchingNamespaced.lean/declarations/ismatching-toedge.md) | 76 | `declaration-track:fc9717d95a0a24d625ac3520f3abc60f285d8436ecef2089e1a35463807e998e` |
| 3 | `theorem` | [IsMatching.toEdge_eq_of_adj](../../../../../Combinatorics/GraphTheory/MatchingNamespaced.lean/declarations/ismatching-toedge-eq-of-adj.md) | 79 | `result-track:e354caf507b87245782c9edc28b8f658688737455eb31a75b25052362ee9eda2` |
| 4 | `theorem` | [IsMatching.toEdge.surjective](../../../../../Combinatorics/GraphTheory/MatchingNamespaced.lean/declarations/ismatching-toedge-surjective.md) | 85 | `result-track:b3b18d0c4fae788c41af4051ec3cf4ff3360b3207c55bdc538e77a2abdc70c9e` |
| 5 | `theorem` | [IsMatching.toEdge_eq_toEdge_of_adj](../../../../../Combinatorics/GraphTheory/MatchingNamespaced.lean/declarations/ismatching-toedge-eq-toedge-of-adj.md) | 89 | `result-track:0a2a86ae838f3a3da546a77a61d63995466b55aa47bf21967ca27ec98e964d5d` |
| 6 | `lemma` | [IsMatching.map_ofLE](../../../../../Combinatorics/GraphTheory/MatchingNamespaced.lean/declarations/ismatching-map-ofle.md) | 94 | `result-track:27d93c564273fe2aac06b4d7bda66687dfb912d5f8a0d213733837be354325c6` |
| 7 | `lemma` | [IsMatching.eq_of_adj_left](../../../../../Combinatorics/GraphTheory/MatchingNamespaced.lean/declarations/ismatching-eq-of-adj-left.md) | 102 | `result-track:5bc4bef8460d1632ff5a8439e5b1bd7b1416742f39378144d07f2fb334b7c070` |
| 8 | `lemma` | [IsMatching.eq_of_adj_right](../../../../../Combinatorics/GraphTheory/MatchingNamespaced.lean/declarations/ismatching-eq-of-adj-right.md) | 105 | `result-track:59ed3cb8cfb6f343fe9579b8743482833c68b3405950b39812bd4251debafda0` |
| 9 | `lemma` | [IsMatching.not_adj_left_of_ne](../../../../../Combinatorics/GraphTheory/MatchingNamespaced.lean/declarations/ismatching-not-adj-left-of-ne.md) | 108 | `result-track:c0425c885496e40a06842dd42344adf875cac93ad1144c14a54c11be346d26e1` |
| 10 | `lemma` | [IsMatching.not_adj_right_of_ne](../../../../../Combinatorics/GraphTheory/MatchingNamespaced.lean/declarations/ismatching-not-adj-right-of-ne.md) | 111 | `result-track:99e39c4d39cf740a8ed9bd57f84b9adda90432bfeb4876d44c0a70dab07c5791` |
| 11 | `lemma` | [IsMatching.sup](../../../../../Combinatorics/GraphTheory/MatchingNamespaced.lean/declarations/ismatching-sup.md) | 114 | `result-track:69f8ab5cf9df47a06685d28808bf7a3c10ce7034b9d07ef95a2aac26e3a76e45` |
| 12 | `lemma` | [IsMatching.iSup](../../../../../Combinatorics/GraphTheory/MatchingNamespaced.lean/declarations/ismatching-isup.md) | 134 | `result-track:d9d08e4993b0a9214d9a7bd3229d6b66a6b1235508ea8bb3df46bbf7dfaab63b` |
| 13 | `lemma` | [IsMatching.subgraphOfAdj](../../../../../Combinatorics/GraphTheory/MatchingNamespaced.lean/declarations/ismatching-subgraphofadj.md) | 150 | `result-track:9cac484449db13c754c94b3f400c33a06e16eb9c0bb79a8c7e727be1fdf8045b` |
| 14 | `lemma` | [IsMatching.coeSubgraph](../../../../../Combinatorics/GraphTheory/MatchingNamespaced.lean/declarations/ismatching-coesubgraph.md) | 157 | `result-track:b76a879c6d2652e90192408cded57e09e175f9a03d05c1d6288112a21112faba` |
| 15 | `lemma` | [IsMatching.exists_of_disjoint_sets_of_equiv](../../../../../Combinatorics/GraphTheory/MatchingNamespaced.lean/declarations/ismatching-exists-of-disjoint-sets-of-equiv.md) | 169 | `result-track:8d7dea0bf6b457146a7b605885c288d4e2bc5b7738b2de5e1961c949407ceead` |
| 16 | `lemma` | [IsMatching.map](../../../../../Combinatorics/GraphTheory/MatchingNamespaced.lean/declarations/ismatching-map.md) | 197 | `result-track:1086c35db98b11eb6611128f7ac2b499eacb399492dee0d82a8cde5823c6b002` |
| 17 | `lemma` | [Iso.isMatching_map](../../../../../Combinatorics/GraphTheory/MatchingNamespaced.lean/declarations/iso-ismatching-map.md) | 208 | `result-track:4e1ed61318fc07169c9260359f9f02b63641b1691138e5337f21133045f03e17` |
| 18 | `def` | [IsPerfectMatching](../../../../../Combinatorics/GraphTheory/MatchingNamespaced.lean/declarations/isperfectmatching.md) | 217 | `declaration-track:be4a1839026c2f36acfa0588113ef068a3ae433b08e5cb73b1bb8586f6e72860` |
| 19 | `theorem` | [IsMatching.support_eq_verts](../../../../../Combinatorics/GraphTheory/MatchingNamespaced.lean/declarations/ismatching-support-eq-verts.md) | 219 | `result-track:58ed3d595c3bc884f82b8ec7682b298f75d3140b7f1c61417b87e08c98ccaf3c` |
| 20 | `theorem` | [isMatching_iff_forall_degree](../../../../../Combinatorics/GraphTheory/MatchingNamespaced.lean/declarations/ismatching-iff-forall-degree.md) | 224 | `result-track:fb57da5f8d53d206d961775cb25d9ae046feb10d66b8eadb28f93da35caf9847` |
| 21 | `theorem` | [IsMatching.even_card](../../../../../Combinatorics/GraphTheory/MatchingNamespaced.lean/declarations/ismatching-even-card.md) | 228 | `result-track:5c438fb0384deeabab409e58fbec30a9be0a457d3a7871d24953ec7892c7d1ad` |
| 22 | `theorem` | [isPerfectMatching_iff](../../../../../Combinatorics/GraphTheory/MatchingNamespaced.lean/declarations/isperfectmatching-iff.md) | 239 | `result-track:2f5f21567320c26162fdfbd846fa8e8099a139f9148cc6111a8976f899529ad1` |
| 23 | `theorem` | [isPerfectMatching_iff_forall_degree](../../../../../Combinatorics/GraphTheory/MatchingNamespaced.lean/declarations/isperfectmatching-iff-forall-degree.md) | 246 | `result-track:610f4687bf0b6d823508255367dbdd6e03b1d6db787bbb36088a51e25363bf90` |
| 24 | `theorem` | [IsPerfectMatching.even_card](../../../../../Combinatorics/GraphTheory/MatchingNamespaced.lean/declarations/isperfectmatching-even-card.md) | 250 | `result-track:5c6ba5321908336279d09ee62229403f3ce0e0e89c276f98aa8eb9f177a3f4b8` |
| 25 | `lemma` | [IsMatching.induce_connectedComponent](../../../../../Combinatorics/GraphTheory/MatchingNamespaced.lean/declarations/ismatching-induce-connectedcomponent.md) | 255 | `result-track:005159c6f94637acea43cfae3f1129be793cc4df84778a6b91348f0a4a48070a` |
| 26 | `lemma` | [IsPerfectMatching.induce_connectedComponent_isMatching](../../../../../Combinatorics/GraphTheory/MatchingNamespaced.lean/declarations/isperfectmatching-induce-connectedcomponent-ismatching.md) | 263 | `result-track:e72f1da87e7a4c5986d388db12628531f70e66c4eb0e01ddec3d0cc961834aff` |
| 27 | `lemma` | [IsPerfectMatching.toSubgraph_iff](../../../../../Combinatorics/GraphTheory/MatchingNamespaced.lean/declarations/isperfectmatching-tosubgraph-iff.md) | 268 | `result-track:a35a46f5acb8b2279850dcd264a2110338a42c2c55ec6ac6336a210052b451bf` |
| 28 | `lemma` | [IsClique.even_iff_exists_isMatching](../../../../../Combinatorics/GraphTheory/MatchingNamespaced.lean/declarations/isclique-even-iff-exists-ismatching.md) | 274 | `result-track:13b40c953bf69938ed07f43bcfc9cbfdaba87ce74357c20ed129cdf8a387d008` |
| 29 | `lemma` | [even_card_of_isPerfectMatching](../../../../../Combinatorics/GraphTheory/MatchingNamespaced.lean/declarations/even-card-of-isperfectmatching.md) | 292 | `result-track:3f3a889c009abec8b508039c0c06c1ea940b432bbd91c4b1ce9d2abc646078a3` |
| 30 | `lemma` | [odd_matches_node_outside](../../../../../Combinatorics/GraphTheory/MatchingNamespaced.lean/declarations/odd-matches-node-outside.md) | 303 | `result-track:cdd95f0754ee7a0d8bfccf0c268cbb6fed13b9c4ddcba92d0d60b0d5057dfeb0` |
| 31 | `def` | [IsMatchingFree](../../../../../Combinatorics/GraphTheory/MatchingNamespaced.lean/declarations/ismatchingfree.md) | 334 | `declaration-track:8bcc1fd09174d808e694013618e709cfa1ebae09c60382c462d6db23a215ae09` |
| 32 | `lemma` | [IsMatchingFree.mono](../../../../../Combinatorics/GraphTheory/MatchingNamespaced.lean/declarations/ismatchingfree-mono.md) | 336 | `result-track:c8d4ce830386699cf92e2ada659c7a0c0ea9eb17722b85fcf7d5c7d7d59f77a0` |
| 33 | `lemma` | [exists_maximal_isMatchingFree](../../../../../Combinatorics/GraphTheory/MatchingNamespaced.lean/declarations/exists-maximal-ismatchingfree.md) | 346 | `result-track:e74e7bce821b1fb2b2f2dcca05536e7cbb2f97fa657796e04c62f5027de81eb9` |
| 34 | `def` | [IsCycles](../../../../../Combinatorics/GraphTheory/MatchingNamespaced.lean/declarations/iscycles.md) | 360 | `declaration-track:0cc967a5984610d4a26070917fd2d0913c745f625738a9842958aa86b9c36690` |
| 35 | `lemma` | [IsCycles.other_adj_of_adj](../../../../../Combinatorics/GraphTheory/MatchingNamespaced.lean/declarations/iscycles-other-adj-of-adj.md) | 366 | `result-track:435f9cf74f1d5684ea25a8ccae5f182c2fa8c802689370e3ef462e30988d6a0d` |
| 36 | `lemma` | [IsCycles.existsUnique_ne_adj](../../../../../Combinatorics/GraphTheory/MatchingNamespaced.lean/declarations/iscycles-existsunique-ne-adj.md) | 373 | `result-track:b6108edc461b6055db86ffec9a88725417fe9ad3e19bbfa271542feb8e91832d` |
| 37 | `lemma` | [IsCycles.induce_supp](../../../../../Combinatorics/GraphTheory/MatchingNamespaced.lean/declarations/iscycles-induce-supp.md) | 383 | `result-track:83c7fc32042d841491849ca08d72f3917e00c1ffc6ebc1663857370d1aa64bcc` |
| 38 | `lemma` | [Walk.IsCycle.isCycles_spanningCoe_toSubgraph](../../../../../Combinatorics/GraphTheory/MatchingNamespaced.lean/declarations/walk-iscycle-iscycles-spanningcoe-tosubgraph.md) | 392 | `result-track:8591bb1e06b6ea2298cfd49f97791b3f675be6039ebe2b81544fb558795a228d` |
| 39 | `lemma` | [Walk.IsPath.isCycles_spanningCoe_toSubgraph_sup_edge](../../../../../Combinatorics/GraphTheory/MatchingNamespaced.lean/declarations/walk-ispath-iscycles-spanningcoe-tosubgraph-sup-edge.md) | 399 | `result-track:f838e7e66062a3ceedeae6b797d139f0269fce44a4d697afb24333ce6e531330` |
| 40 | `lemma` | [Walk.IsCycle.adj_toSubgraph_iff_of_isCycles](../../../../../Combinatorics/GraphTheory/MatchingNamespaced.lean/declarations/walk-iscycle-adj-tosubgraph-iff-of-iscycles.md) | 409 | `result-track:7e1108c6ae64b35ef7d8e719459b8cc22f6cfb20d0e43bab8bdb0908c993eaed` |
| 41 | `lemma` | [Subgraph.IsPerfectMatching.symmDiff_isCycles](../../../../../Combinatorics/GraphTheory/MatchingNamespaced.lean/declarations/subgraph-isperfectmatching-symmdiff-iscycles.md) | 423 | `result-track:d1896eabf48fe73179ed8923ab8c6df852788db22991cb96aae975794810a567` |
| 42 | `lemma` | [IsCycles.snd_of_mem_support_of_isPath_of_adj](../../../../../Combinatorics/GraphTheory/MatchingNamespaced.lean/declarations/iscycles-snd-of-mem-support-of-ispath-of-adj.md) | 438 | `result-track:45e50ed1446cd535ffbd99dc5a8052e34d720c91567f3004386386c5181b4b1d` |
| 43 | `lemma` | [IsCycles.reachable_sdiff_toSubgraph_spanningCoe_aux](../../../../../Combinatorics/GraphTheory/MatchingNamespaced.lean/declarations/iscycles-reachable-sdiff-tosubgraph-spanningcoe-aux.md) | 455 | `result-track:77e620cc6c6c5ad6cdfdc16027dff0773948f05932dba14ea41d340769852690` |
| 44 | `lemma` | [IsCycles.reachable_sdiff_toSubgraph_spanningCoe](../../../../../Combinatorics/GraphTheory/MatchingNamespaced.lean/declarations/iscycles-reachable-sdiff-tosubgraph-spanningcoe.md) | 497 | `result-track:51543660879f59764841f49f8b10a24d42c78d509508de420f386080c907a4a9` |
| 45 | `lemma` | [IsCycles.reachable_deleteEdges](../../../../../Combinatorics/GraphTheory/MatchingNamespaced.lean/declarations/iscycles-reachable-deleteedges.md) | 502 | `result-track:c842c72e80b2092008de222877d76e5269d90d7c1e661ab56d14a4f02148f29e` |
| 46 | `lemma` | [IsCycles.exists_cycle_toSubgraph_verts_eq_connectedComponentSupp](../../../../../Combinatorics/GraphTheory/MatchingNamespaced.lean/declarations/iscycles-exists-cycle-tosubgraph-verts-eq-connectedcomponentsupp.md) | 512 | `result-track:a845b03fb0de2cffdcb14a26313499421190438e5ef50a75edd7d09550b48cd3` |
| 47 | `def` | [IsAlternating](../../../../../Combinatorics/GraphTheory/MatchingNamespaced.lean/declarations/isalternating.md) | 551 | `declaration-track:404dd855b0a684452e5773184414638e62fb6c7f76a5bdd9187635ea8717846c` |
| 48 | `lemma` | [IsAlternating.mono](../../../../../Combinatorics/GraphTheory/MatchingNamespaced.lean/declarations/isalternating-mono.md) | 554 | `result-track:74ef439c7e24f1ae7ca37ab692bf0c10628ee34e89b41b09db4d65b03ac2fe82` |
| 49 | `lemma` | [IsAlternating.spanningCoe](../../../../../Combinatorics/GraphTheory/MatchingNamespaced.lean/declarations/isalternating-spanningcoe.md) | 557 | `result-track:f10df7f1711b593c870521e5094d652051fc785886a0c975b92480fc1cbffad3` |
| 50 | `lemma` | [IsAlternating.sup_edge](../../../../../Combinatorics/GraphTheory/MatchingNamespaced.lean/declarations/isalternating-sup-edge.md) | 563 | `result-track:2a50b9337c9ed84fa265a6cbbdb7a6f17b5df42b07c096cf460d83946e8328bf` |
| 51 | `lemma` | [Subgraph.IsPerfectMatching.symmDiff_of_isAlternating](../../../../../Combinatorics/GraphTheory/MatchingNamespaced.lean/declarations/subgraph-isperfectmatching-symmdiff-of-isalternating.md) | 586 | `result-track:6ab2ccc277ee06ead890bf3eaedbb8386ac8b85029e6aeace3ae0cd764c951f4` |
| 52 | `lemma` | [Subgraph.IsPerfectMatching.isAlternating_symmDiff_left](../../../../../Combinatorics/GraphTheory/MatchingNamespaced.lean/declarations/subgraph-isperfectmatching-isalternating-symmdiff-left.md) | 612 | `result-track:9b7e922d42a60916b2b0514ba681db3d0962fc596499ad8ea6e705a2465e834a` |
| 53 | `lemma` | [Subgraph.IsPerfectMatching.isAlternating_symmDiff_right](../../../../../Combinatorics/GraphTheory/MatchingNamespaced.lean/declarations/subgraph-isperfectmatching-isalternating-symmdiff-right.md) | 621 | `result-track:d4f477afc9c283fe01e63abcc428da643db9726082c6e980bb788709ddfc8aa3` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=d50037a2d23e3c007217af1fe9d5e7b1f60b343da7ee9b9adfe632d6a91b69a5 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/Matching/Variant2451bde5f9cf67e83806efeb3a70e8cdacc48bcdc90af2b08c4fd61efb1314b1.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/GraphTheory/Matching/Variant2451bde5f9cf67e83806efeb3a70e8cdacc48bcdc90af2b08c4fd61efb1314b1.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
