# Hypergraph Basic Public

[Complete source index](../../complete-source-index.md) · [Up one directory](../../complete-source-index.md) · [Full source](source.md)

**48 observed declarations and anonymous commands**, 35 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant5d68c77656475010afd99d157953afeacd23b4a2ad93b861202600a4f63408d0.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `87a8e79eea4e86cd35cd1a4438204b2712c60f19`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../_verification/specifications/Combinatorics/HypergraphBasicPublic.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `structure` | [Hypergraph](declarations/hypergraph.md) | 73 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `lemma` | [subset_vertexSet_of_mem_edgeSet](declarations/subset-vertexset-of-mem-edgeset.md) | 97 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `lemma` | [edgeSet_subset_powerset_vertexSet](declarations/edgeset-subset-powerset-vertexset.md) | 102 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `lemma` | [mem_vertexSet_of_mem_edgeSet](declarations/mem-vertexset-of-mem-edgeset.md) | 105 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `lemma` | [edgeSet.ext_iff](declarations/edgeset-ext-iff.md) | 108 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `lemma` | [sUnion_edgeSet_subset_vertexSet](declarations/sunion-edgeset-subset-vertexset.md) | 111 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `def` | [Adj](declarations/adj.md) | 124 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `lemma` | [Adj.symm](declarations/adj-symm.md) | 127 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `lemma` | [adj_comm](declarations/adj-comm.md) | 129 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `def` | [EAdj](declarations/eadj.md) | 136 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `lemma` | [EAdj.exists_vertex](declarations/eadj-exists-vertex.md) | 139 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `lemma` | [EAdj.symm](declarations/eadj-symm.md) | 143 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `lemma` | [EAdj.inter_nonempty](declarations/eadj-inter-nonempty.md) | 145 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `lemma` | [eAdj_comm](declarations/eadj-comm.md) | 148 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `def` | [image](declarations/image.md) | 156 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `lemma` | [mem_edgeSet_image](declarations/mem-edgeset-image.md) | 163 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `lemma` | [image_mem_edgeSet_image](declarations/image-mem-edgeset-image.md) | 166 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `lemma` | [image_image](declarations/image-image.md) | 169 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `def` | [IsIsolated](declarations/isisolated.md) | 175 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `lemma` | [sUnion_edgeSet_eq_vertexSet_iff_all_vertex_not_isolated](declarations/sunion-edgeset-eq-vertexset-iff-all-vertex-not-isolated.md) | 177 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `def` | [IsLoop](declarations/isloop.md) | 183 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `lemma` | [isLoop_iff_mem_edgeSet_and_singleton](declarations/isloop-iff-mem-edgeset-and-singleton.md) | 185 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `lemma` | [isLoop_iff_mem_and_ncard_one](declarations/isloop-iff-mem-and-ncard-one.md) | 187 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `lemma` | [IsLoop.ncard_one](declarations/isloop-ncard-one.md) | 190 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `def` | [IsNonempty](declarations/isnonempty.md) | 194 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `instance` | [(anonymous)](declarations/instance.md) | 198 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `lemma` | [IsNonempty.of_nonempty_vertexSet](declarations/isnonempty-of-nonempty-vertexset.md) | 204 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `lemma` | [IsNonempty.of_nonempty_edgeSet](declarations/isnonempty-of-nonempty-edgeset.md) | 208 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [ne_bot_iff](declarations/ne-bot-iff.md) | 212 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [not_isNonempty_iff](declarations/not-isnonempty-iff.md) | 219 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `lemma` | [eq_bot_or_isNonempty](declarations/eq-bot-or-isnonempty.md) | 223 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `def` | [IsTrivial](declarations/istrivial.md) | 236 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `def` | [trivialOn](declarations/trivialon.md) | 241 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `lemma` | [IsTrivial.trivialOn](declarations/istrivial-trivialon.md) | 246 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `lemma` | [IsTrivial.isNonempty](declarations/istrivial-isnonempty.md) | 250 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `lemma` | [IsTrivial.not_mem_edgeSet](declarations/istrivial-not-mem-edgeset.md) | 253 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `def` | [IsComplete](declarations/iscomplete.md) | 257 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `def` | [completeOn](declarations/completeon.md) | 262 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `lemma` | [mem_completeOn](declarations/mem-completeon.md) | 267 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `lemma` | [IsComplete.mem_iff](declarations/iscomplete-mem-iff.md) | 269 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `lemma` | [IsComplete.completeOn](declarations/iscomplete-completeon.md) | 272 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `lemma` | [IsComplete.isNonempty](declarations/iscomplete-isnonempty.md) | 274 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `lemma` | [IsComplete.not_isTrivial](declarations/iscomplete-not-istrivial.md) | 277 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `lemma` | [not_isTrivial_completeOn](declarations/not-istrivial-completeon.md) | 281 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `def` | [IsLinear](declarations/islinear.md) | 285 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `lemma` | [isLinear_def](declarations/islinear-def.md) | 288 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `lemma` | [IsLinear.inter_subsingleton](declarations/islinear-inter-subsingleton.md) | 291 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `theorem` | [IsTrivial.isLinear](declarations/istrivial-islinear.md) | 296 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=cabeb549e9a66d8eb54218752bb6d0cb796a644938ae9f683f660be0b0e74779 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant5d68c77656475010afd99d157953afeacd23b4a2ad93b861202600a4f63408d0.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
