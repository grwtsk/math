# Complete Multipartite Public

[Complete source index](../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**42 observed declarations and anonymous commands**, 29 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/CompleteMultipartite/Variant0ea37a05fac393f436b6e3fe8e1c0bd6ca2a8f4de674edf68923cef64ab9bedf.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `8ac2e6b2046f7f70dca57c1bc121128ce170a91b`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/Combinatorics/GraphTheory/CompleteMultipartitePublic.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [IsCompleteMultipartite](declarations/iscompletemultipartite.md) | 67 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `theorem` | [IsCompleteMultipartite.top](declarations/iscompletemultipartite-top.md) | 69 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `theorem` | [IsCompleteMultipartite.bot](declarations/iscompletemultipartite-bot.md) | 72 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `theorem` | [IsCompleteMultipartite.completeBipartiteGraph](declarations/iscompletemultipartite-completebipartitegraph.md) | 77 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `lemma` | [IsCompleteMultipartite.induce](declarations/iscompletemultipartite-induce.md) | 81 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `def` | [IsCompleteMultipartite.setoid](declarations/iscompletemultipartite-setoid.md) | 86 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `lemma` | [completeMultipartiteGraph.isCompleteMultipartite](declarations/completemultipartitegraph-iscompletemultipartite.md) | 89 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `def` | [IsCompleteMultipartite.iso](declarations/iscompletemultipartite-iso.md) | 95 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `lemma` | [isCompleteMultipartite_iff](declarations/iscompletemultipartite-iff.md) | 106 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `lemma` | [IsCompleteMultipartite.colorable_of_cliqueFree](declarations/iscompletemultipartite-colorable-of-cliquefree.md) | 115 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `structure` | [IsPathGraph3Compl](declarations/ispathgraph3compl.md) | 127 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `lemma` | [ne_fst](declarations/ne-fst.md) | 137 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `lemma` | [ne_snd](declarations/ne-snd.md) | 141 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `lemma` | [fst_ne_snd](declarations/fst-ne-snd.md) | 145 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `lemma` | [symm](declarations/symm.md) | 147 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `lemma` | [exists_isPathGraph3Compl_of_not_isCompleteMultipartite](declarations/exists-ispathgraph3compl-of-not-iscompletemultipartite.md) | 153 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `lemma` | [not_isCompleteMultipartite_iff_exists_isPathGraph3Compl](declarations/not-iscompletemultipartite-iff-exists-ispathgraph3compl.md) | 161 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `def` | [IsPathGraph3Compl.pathGraph3ComplEmbedding](declarations/ispathgraph3compl-pathgraph3complembedding.md) | 169 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `def` | [pathGraph3ComplEmbeddingOf](declarations/pathgraph3complembeddingof.md) | 193 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `lemma` | [not_isCompleteMultipartite_of_pathGraph3ComplEmbedding](declarations/not-iscompletemultipartite-of-pathgraph3complembedding.md) | 198 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [IsCompleteMultipartite.comap](declarations/iscompletemultipartite-comap.md) | 206 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `abbrev` | [completeEquipartiteGraph](declarations/completeequipartitegraph.md) | 223 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `lemma` | [completeEquipartiteGraph_adj](declarations/completeequipartitegraph-adj.md) | 226 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `def` | [completeEquipartiteGraph.completeMultipartiteGraph](declarations/completeequipartitegraph-completemultipartitegraph.md) | 234 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `def` | [completeEquipartiteGraph.turanGraph](declarations/completeequipartitegraph-turangraph.md) | 242 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `lemma` | [completeEquipartiteGraph_eq_bot_iff](declarations/completeequipartitegraph-eq-bot-iff.md) | 272 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [completeEquipartiteGraph.isCompleteMultipartite](declarations/completeequipartitegraph-iscompletemultipartite.md) | 285 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [neighborSet_completeEquipartiteGraph](declarations/neighborset-completeequipartitegraph.md) | 296 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [neighborFinset_completeEquipartiteGraph](declarations/neighborfinset-completeequipartitegraph.md) | 300 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [degree_completeEquipartiteGraph](declarations/degree-completeequipartitegraph.md) | 304 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [card_edgeFinset_completeEquipartiteGraph](declarations/card-edgefinset-completeequipartitegraph.md) | 309 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [isContained_completeEquipartiteGraph_of_colorable](declarations/iscontained-completeequipartitegraph-of-colorable.md) | 324 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `structure` | [CompleteEquipartiteSubgraph](declarations/completeequipartitesubgraph.md) | 357 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [nonempty_of_eq_zero_or_eq_zero](declarations/nonempty-of-eq-zero-or-eq-zero.md) | 372 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `theorem` | [disjoint](declarations/disjoint.md) | 377 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `def` | [verts](declarations/verts.md) | 382 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `lemma` | [verts_eq_biUnion](declarations/verts-eq-biunion.md) | 387 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `theorem` | [card_verts](declarations/card-verts.md) | 391 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `def` | [toCopy](declarations/tocopy.md) | 397 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `def` | [ofCopy](declarations/ofcopy.md) | 426 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `theorem` | [completeEquipartiteGraph_isContained_iff](declarations/completeequipartitegraph-iscontained-iff.md) | 460 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `theorem` | [completeEquipartiteGraph_succ_isContained_iff](declarations/completeequipartitegraph-succ-iscontained-iff.md) | 467 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=ed5c476181573bbabe4228480e6a94deea1a2e3fee267aacff391e2bd1838870 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/CompleteMultipartite/Variant0ea37a05fac393f436b6e3fe8e1c0bd6ca2a8f4de674edf68923cef64ab9bedf.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
