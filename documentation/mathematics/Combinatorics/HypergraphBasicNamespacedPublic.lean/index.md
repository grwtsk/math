# Hypergraph Basic Namespaced Public

[Complete source index](../../complete-source-index.md) · [Up one directory](../../complete-source-index.md) · [Full source](source.md)

**48 observed declarations and anonymous commands**, 35 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant3505d471f08b77a231355c0e8a439686eb1852c9a8a97e279bc4f9eb9f0a5639.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `ef1003d2ac85d44690f9c7847b79d82889c508f0`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../_verification/specifications/Combinatorics/HypergraphBasicNamespacedPublic.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `structure` | [Hypergraph](declarations/hypergraph.md) | 81 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `lemma` | [subset_vertexSet_of_mem_edgeSet](declarations/subset-vertexset-of-mem-edgeset.md) | 105 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `lemma` | [edgeSet_subset_powerset_vertexSet](declarations/edgeset-subset-powerset-vertexset.md) | 110 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `lemma` | [mem_vertexSet_of_mem_edgeSet](declarations/mem-vertexset-of-mem-edgeset.md) | 113 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `lemma` | [edgeSet.ext_iff](declarations/edgeset-ext-iff.md) | 116 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `lemma` | [sUnion_edgeSet_subset_vertexSet](declarations/sunion-edgeset-subset-vertexset.md) | 119 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `def` | [Adj](declarations/adj.md) | 132 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `lemma` | [Adj.symm](declarations/adj-symm.md) | 135 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `lemma` | [adj_comm](declarations/adj-comm.md) | 137 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `def` | [EAdj](declarations/eadj.md) | 144 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `lemma` | [EAdj.exists_vertex](declarations/eadj-exists-vertex.md) | 147 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `lemma` | [EAdj.symm](declarations/eadj-symm.md) | 151 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `lemma` | [EAdj.inter_nonempty](declarations/eadj-inter-nonempty.md) | 153 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `lemma` | [eAdj_comm](declarations/eadj-comm.md) | 156 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `def` | [image](declarations/image.md) | 164 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `lemma` | [mem_edgeSet_image](declarations/mem-edgeset-image.md) | 171 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `lemma` | [image_mem_edgeSet_image](declarations/image-mem-edgeset-image.md) | 174 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `lemma` | [image_image](declarations/image-image.md) | 177 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `def` | [IsIsolated](declarations/isisolated.md) | 183 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `lemma` | [sUnion_edgeSet_eq_vertexSet_iff_all_vertex_not_isolated](declarations/sunion-edgeset-eq-vertexset-iff-all-vertex-not-isolated.md) | 185 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `def` | [IsLoop](declarations/isloop.md) | 191 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `lemma` | [isLoop_iff_mem_edgeSet_and_singleton](declarations/isloop-iff-mem-edgeset-and-singleton.md) | 193 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `lemma` | [isLoop_iff_mem_and_ncard_one](declarations/isloop-iff-mem-and-ncard-one.md) | 195 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `lemma` | [IsLoop.ncard_one](declarations/isloop-ncard-one.md) | 198 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `def` | [IsNonempty](declarations/isnonempty.md) | 202 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `instance` | [(anonymous)](declarations/instance.md) | 206 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `lemma` | [IsNonempty.of_nonempty_vertexSet](declarations/isnonempty-of-nonempty-vertexset.md) | 212 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `lemma` | [IsNonempty.of_nonempty_edgeSet](declarations/isnonempty-of-nonempty-edgeset.md) | 216 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [ne_bot_iff](declarations/ne-bot-iff.md) | 220 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [not_isNonempty_iff](declarations/not-isnonempty-iff.md) | 227 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `lemma` | [eq_bot_or_isNonempty](declarations/eq-bot-or-isnonempty.md) | 231 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `def` | [IsTrivial](declarations/istrivial.md) | 244 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `def` | [trivialOn](declarations/trivialon.md) | 249 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `lemma` | [IsTrivial.trivialOn](declarations/istrivial-trivialon.md) | 254 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `lemma` | [IsTrivial.isNonempty](declarations/istrivial-isnonempty.md) | 258 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `lemma` | [IsTrivial.not_mem_edgeSet](declarations/istrivial-not-mem-edgeset.md) | 261 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `def` | [IsComplete](declarations/iscomplete.md) | 265 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `def` | [completeOn](declarations/completeon.md) | 270 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `lemma` | [mem_completeOn](declarations/mem-completeon.md) | 275 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `lemma` | [IsComplete.mem_iff](declarations/iscomplete-mem-iff.md) | 277 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `lemma` | [IsComplete.completeOn](declarations/iscomplete-completeon.md) | 280 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `lemma` | [IsComplete.isNonempty](declarations/iscomplete-isnonempty.md) | 282 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `lemma` | [IsComplete.not_isTrivial](declarations/iscomplete-not-istrivial.md) | 285 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `lemma` | [not_isTrivial_completeOn](declarations/not-istrivial-completeon.md) | 289 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `def` | [IsLinear](declarations/islinear.md) | 293 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `lemma` | [isLinear_def](declarations/islinear-def.md) | 296 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `lemma` | [IsLinear.inter_subsingleton](declarations/islinear-inter-subsingleton.md) | 299 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `theorem` | [IsTrivial.isLinear](declarations/istrivial-islinear.md) | 304 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=ef7849485873afcad0992f6c9aeac5cbb40dce3736894b5f3dcd2ead74803089 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant3505d471f08b77a231355c0e8a439686eb1852c9a8a97e279bc4f9eb9f0a5639.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
