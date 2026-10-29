# Triangle Basic Namespaced Edge Disjoint Triangles

[Complete source index](../../../complete-source-index.md) · [Up one directory](../../../complete-source-index.md) · [Full source](source.md)

**27 observed declarations and anonymous commands**, 22 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/CombinatoricsAndDiscreteMathematics/Basic/Variantad7cde41626885a5f191b170a843ebad8a8f2d33432498ec2edc66bc34eaa79d.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `3a544490b5ae44a9044e412a4a1d2d899dc82ef3`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/Combinatorics/GraphTheory/TriangleBasicNamespacedEdgeDisjointTriangles.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [EdgeDisjointTriangles](declarations/edgedisjointtriangles.md) | 51 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `def` | [LocallyLinear](declarations/locallylinear.md) | 55 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `lemma` | [LocallyLinear.edgeDisjointTriangles](declarations/locallylinear-edgedisjointtriangles.md) | 58 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `lemma` | [EdgeDisjointTriangles.mono](declarations/edgedisjointtriangles-mono.md) | 61 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `lemma` | [edgeDisjointTriangles_bot](declarations/edgedisjointtriangles-bot.md) | 64 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `lemma` | [locallyLinear_bot](declarations/locallylinear-bot.md) | 67 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `lemma` | [EdgeDisjointTriangles.map](declarations/edgedisjointtriangles-map.md) | 69 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `lemma` | [LocallyLinear.map](declarations/locallylinear-map.md) | 79 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `lemma` | [locallyLinear_comap](declarations/locallylinear-comap.md) | 85 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `lemma` | [edgeDisjointTriangles_iff_mem_sym2_subsingleton](declarations/edgedisjointtriangles-iff-mem-sym2-subsingleton.md) | 93 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `instance` | [EdgeDisjointTriangles.instDecidable](declarations/edgedisjointtriangles-instdecidable.md) | 142 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `instance` | [LocallyLinear.instDecidable](declarations/locallylinear-instdecidable.md) | 146 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `lemma` | [EdgeDisjointTriangles.card_edgeFinset_le](declarations/edgedisjointtriangles-card-edgefinset-le.md) | 149 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `lemma` | [LocallyLinear.card_edgeFinset](declarations/locallylinear-card-edgefinset.md) | 164 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `def` | [FarFromTriangleFree](declarations/farfromtrianglefree.md) | 190 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [farFromTriangleFree_iff](declarations/farfromtrianglefree-iff.md) | 195 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [FarFromTriangleFree.mono](declarations/farfromtrianglefree-mono.md) | 201 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [FarFromTriangleFree.cliqueFinset_nonempty'](declarations/farfromtrianglefree-cliquefinset-nonempty-source-edition-2.md) | 209 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `lemma` | [farFromTriangleFree_of_disjoint_triangles_aux](declarations/farfromtrianglefree-of-disjoint-triangles-aux.md) | 215 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `lemma` | [farFromTriangleFree_of_disjoint_triangles](declarations/farfromtrianglefree-of-disjoint-triangles.md) | 243 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `lemma` | [EdgeDisjointTriangles.farFromTriangleFree](declarations/edgedisjointtriangles-farfromtrianglefree.md) | 254 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `lemma` | [FarFromTriangleFree.lt_half](declarations/farfromtrianglefree-lt-half.md) | 263 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `lemma` | [FarFromTriangleFree.lt_one](declarations/farfromtrianglefree-lt-one.md) | 287 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [FarFromTriangleFree.nonpos](declarations/farfromtrianglefree-nonpos.md) | 290 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [CliqueFree.not_farFromTriangleFree](declarations/cliquefree-not-farfromtrianglefree.md) | 296 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [FarFromTriangleFree.not_cliqueFree](declarations/farfromtrianglefree-not-cliquefree.md) | 299 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [FarFromTriangleFree.cliqueFinset_nonempty](declarations/farfromtrianglefree-cliquefinset-nonempty.md) | 302 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=536750d0669b09ef0af8488b190250a9ea0ba39469395dd66cf7eb77fdc3cfaf -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/Basic/Variantad7cde41626885a5f191b170a843ebad8a8f2d33432498ec2edc66bc34eaa79d.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
