# Graph Basic

[Complete source index](../../complete-source-index.md) · [Up one directory](../../complete-source-index.md) · [Full source](source.md)

**53 observed declarations and anonymous commands**, 47 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/CombinatoricsAndDiscreteMathematics/Basic/Variantd6512e3bc8a797b4e19e7b1a132beb8afbd67bd93b3145e5b846ff255ac7704a.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `700d350edd1fa91d57be345c2b7fbd1a5bca0af1`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../_verification/specifications/Combinatorics/GraphBasic.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `structure` | [Graph](declarations/graph.md) | 78 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `lemma` | [IsLink.edge_mem](declarations/islink-edge-mem.md) | 107 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `lemma` | [IsLink.symm](declarations/islink-symm.md) | 110 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `lemma` | [IsLink.left_mem](declarations/islink-left-mem.md) | 113 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `lemma` | [IsLink.right_mem](declarations/islink-right-mem.md) | 116 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `lemma` | [isLink_comm](declarations/islink-comm.md) | 119 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `lemma` | [exists_isLink_of_mem_edgeSet](declarations/exists-islink-of-mem-edgeset.md) | 122 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `lemma` | [edgeSet_eq_setOf_exists_isLink](declarations/edgeset-eq-setof-exists-islink.md) | 125 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `lemma` | [IsLink.left_eq_or_eq](declarations/islink-left-eq-or-eq.md) | 128 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `lemma` | [IsLink.right_eq_or_eq](declarations/islink-right-eq-or-eq.md) | 131 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `lemma` | [IsLink.left_eq_of_right_ne](declarations/islink-left-eq-of-right-ne.md) | 134 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `lemma` | [IsLink.right_unique](declarations/islink-right-unique.md) | 138 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `lemma` | [IsLink.left_unique](declarations/islink-left-unique.md) | 143 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `lemma` | [IsLink.eq_and_eq_or_eq_and_eq](declarations/islink-eq-and-eq-or-eq-and-eq.md) | 146 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `lemma` | [IsLink.isLink_iff](declarations/islink-islink-iff.md) | 152 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `lemma` | [IsLink.isLink_iff_sym2_eq](declarations/islink-islink-iff-sym2-eq.md) | 159 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `def` | [Inc](declarations/inc.md) | 168 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `lemma` | [Inc.edge_mem](declarations/inc-edge-mem.md) | 171 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `lemma` | [Inc.vertex_mem](declarations/inc-vertex-mem.md) | 175 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `lemma` | [IsLink.inc_left](declarations/islink-inc-left.md) | 179 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `lemma` | [IsLink.inc_right](declarations/islink-inc-right.md) | 183 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `lemma` | [Inc.eq_or_eq_of_isLink](declarations/inc-eq-or-eq-of-islink.md) | 186 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `lemma` | [Inc.eq_of_isLink_of_ne_left](declarations/inc-eq-of-islink-of-ne-left.md) | 189 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `lemma` | [IsLink.isLink_iff_eq](declarations/islink-islink-iff-eq.md) | 192 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `lemma` | [isLink_iff_inc](declarations/islink-iff-inc.md) | 196 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `def` | [Inc.other](declarations/inc-other.md) | 207 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `lemma` | [Inc.isLink_other](declarations/inc-islink-other.md) | 210 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `lemma` | [Inc.inc_other](declarations/inc-inc-other.md) | 214 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `lemma` | [Inc.eq_or_eq_or_eq](declarations/inc-eq-or-eq-or-eq.md) | 217 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `def` | [IsLoopAt](declarations/isloopat.md) | 226 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `lemma` | [isLink_self_iff](declarations/islink-self-iff.md) | 229 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `lemma` | [IsLoopAt.inc](declarations/isloopat-inc.md) | 231 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `lemma` | [IsLoopAt.eq_of_inc](declarations/isloopat-eq-of-inc.md) | 234 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `lemma` | [IsLoopAt.edge_mem](declarations/isloopat-edge-mem.md) | 238 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `lemma` | [IsLoopAt.vertex_mem](declarations/isloopat-vertex-mem.md) | 242 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `def` | [IsNonloopAt](declarations/isnonloopat.md) | 248 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `lemma` | [IsNonloopAt.inc](declarations/isnonloopat-inc.md) | 250 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `lemma` | [IsNonloopAt.edge_mem](declarations/isnonloopat-edge-mem.md) | 254 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `lemma` | [IsNonloopAt.vertex_mem](declarations/isnonloopat-vertex-mem.md) | 258 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `lemma` | [IsLoopAt.not_isNonloopAt](declarations/isloopat-not-isnonloopat.md) | 261 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `lemma` | [IsNonloopAt.not_isLoopAt](declarations/isnonloopat-not-isloopat.md) | 266 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `lemma` | [isNonloopAt_iff_inc_not_isLoopAt](declarations/isnonloopat-iff-inc-not-isloopat.md) | 269 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `lemma` | [isLoopAt_iff_inc_not_isNonloopAt](declarations/isloopat-iff-inc-not-isnonloopat.md) | 272 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `lemma` | [Inc.isLoopAt_or_isNonloopAt](declarations/inc-isloopat-or-isnonloopat.md) | 275 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `def` | [Adj](declarations/adj.md) | 281 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `lemma` | [Adj.symm](declarations/adj-symm.md) | 283 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `lemma` | [adj_comm](declarations/adj-comm.md) | 286 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `lemma` | [Adj.left_mem](declarations/adj-left-mem.md) | 290 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `lemma` | [Adj.right_mem](declarations/adj-right-mem.md) | 294 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `lemma` | [IsLink.adj](declarations/islink-adj.md) | 297 | `BLOCKED_NATIVE_ADMISSION` |
| 51 | `lemma` | [mk_eq_self](declarations/mk-eq-self.md) | 305 | `BLOCKED_NATIVE_ADMISSION` |
| 52 | `lemma` | [ext](declarations/ext.md) | 318 | `BLOCKED_NATIVE_ADMISSION` |
| 53 | `lemma` | [ext_inc](declarations/ext-inc.md) | 327 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=a1e219e3916d315ef759ac6f99bd3961f41a6da27824d3ed4595ae1795aa7875 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/Basic/Variantd6512e3bc8a797b4e19e7b1a132beb8afbd67bd93b3145e5b846ff255ac7704a.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
