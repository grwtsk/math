# Triangle Basic Edge Disjoint Triangles

[Complete source index](../../../complete-source-index.md) · [Up one directory](../../../complete-source-index.md) · [Full source](source.md)

**27 observed declarations and anonymous commands**, 22 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/CombinatoricsAndDiscreteMathematics/Basic/Varianta4ba209e08e6922611c3c91bd58a175b4fcabd6a4aad46b2aa3489ef6a4aa318.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `d775f9d3678b8c8d576b5faa110e125ae9cccdb2`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/Combinatorics/GraphTheory/TriangleBasicEdgeDisjointTriangles.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [EdgeDisjointTriangles](declarations/edgedisjointtriangles.md) | 43 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `def` | [LocallyLinear](declarations/locallylinear.md) | 47 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `lemma` | [LocallyLinear.edgeDisjointTriangles](declarations/locallylinear-edgedisjointtriangles.md) | 50 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `lemma` | [EdgeDisjointTriangles.mono](declarations/edgedisjointtriangles-mono.md) | 53 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `lemma` | [edgeDisjointTriangles_bot](declarations/edgedisjointtriangles-bot.md) | 56 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `lemma` | [locallyLinear_bot](declarations/locallylinear-bot.md) | 59 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `lemma` | [EdgeDisjointTriangles.map](declarations/edgedisjointtriangles-map.md) | 61 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `lemma` | [LocallyLinear.map](declarations/locallylinear-map.md) | 71 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `lemma` | [locallyLinear_comap](declarations/locallylinear-comap.md) | 77 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `lemma` | [edgeDisjointTriangles_iff_mem_sym2_subsingleton](declarations/edgedisjointtriangles-iff-mem-sym2-subsingleton.md) | 85 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `instance` | [EdgeDisjointTriangles.instDecidable](declarations/edgedisjointtriangles-instdecidable.md) | 134 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `instance` | [LocallyLinear.instDecidable](declarations/locallylinear-instdecidable.md) | 138 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `lemma` | [EdgeDisjointTriangles.card_edgeFinset_le](declarations/edgedisjointtriangles-card-edgefinset-le.md) | 141 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `lemma` | [LocallyLinear.card_edgeFinset](declarations/locallylinear-card-edgefinset.md) | 156 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `def` | [FarFromTriangleFree](declarations/farfromtrianglefree.md) | 182 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [farFromTriangleFree_iff](declarations/farfromtrianglefree-iff.md) | 187 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [FarFromTriangleFree.mono](declarations/farfromtrianglefree-mono.md) | 193 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [FarFromTriangleFree.cliqueFinset_nonempty'](declarations/farfromtrianglefree-cliquefinset-nonempty.md) | 201 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `lemma` | [farFromTriangleFree_of_disjoint_triangles_aux](declarations/farfromtrianglefree-of-disjoint-triangles-aux.md) | 207 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `lemma` | [farFromTriangleFree_of_disjoint_triangles](declarations/farfromtrianglefree-of-disjoint-triangles.md) | 235 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `lemma` | [EdgeDisjointTriangles.farFromTriangleFree](declarations/edgedisjointtriangles-farfromtrianglefree.md) | 246 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `lemma` | [FarFromTriangleFree.lt_half](declarations/farfromtrianglefree-lt-half.md) | 255 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `lemma` | [FarFromTriangleFree.lt_one](declarations/farfromtrianglefree-lt-one.md) | 279 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [FarFromTriangleFree.nonpos](declarations/farfromtrianglefree-nonpos.md) | 282 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [CliqueFree.not_farFromTriangleFree](declarations/cliquefree-not-farfromtrianglefree.md) | 288 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [FarFromTriangleFree.not_cliqueFree](declarations/farfromtrianglefree-not-cliquefree.md) | 291 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [FarFromTriangleFree.cliqueFinset_nonempty](declarations/farfromtrianglefree-cliquefinset-nonempty-source-edition-2.md) | 294 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=690bb47c8df8aca90dc6733fb13b80b0a77ccc890fa8ae298306e61346a95480 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/Basic/Varianta4ba209e08e6922611c3c91bd58a175b4fcabd6a4aad46b2aa3489ef6a4aa318.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
