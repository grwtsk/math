# Simple Graph Metric Namespaced Public

[Complete source index](../../../complete-source-index.md) · [Up one directory](../../../complete-source-index.md) · [Full source](source.md)

**69 observed declarations and anonymous commands**, 66 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Topology/MetricTopology/Metric/Variant8e28804d1a41cdabef02addc7fa49a356e5bf5a5eb2e73f2bcb7367562e35ef6.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `8eec0431ee26d4a62eeb50e181c4be24f4f0290f`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/Combinatorics/GraphTheory/SimpleGraphMetricNamespacedPublic.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [edist](declarations/edist.md) | 63 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `theorem` | [edist_eq_sInf](declarations/edist-eq-sinf.md) | 68 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `theorem` | [Reachable.exists_walk_length_eq_edist](declarations/reachable-exists-walk-length-eq-edist.md) | 70 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `theorem` | [Connected.exists_walk_length_eq_edist](declarations/connected-exists-walk-length-eq-edist.md) | 74 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [edist_le](declarations/edist-le.md) | 78 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [edist_eq_zero_iff](declarations/edist-eq-zero-iff.md) | 84 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [edist_self](declarations/edist-self.md) | 88 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [edist_pos_of_ne](declarations/edist-pos-of-ne.md) | 91 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `lemma` | [edist_eq_top_of_not_reachable](declarations/edist-eq-top-of-not-reachable.md) | 95 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [reachable_of_edist_ne_top](declarations/reachable-of-edist-ne-top.md) | 99 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `lemma` | [exists_walk_of_edist_ne_top](declarations/exists-walk-of-edist-ne-top.md) | 103 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [edist_triangle](declarations/edist-triangle.md) | 107 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [edist_comm](declarations/edist-comm.md) | 119 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `lemma` | [exists_walk_of_edist_eq_coe](declarations/exists-walk-of-edist-eq-coe.md) | 124 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `lemma` | [edist_ne_top_iff_reachable](declarations/edist-ne-top-iff-reachable.md) | 130 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [edist_eq_one_iff_adj](declarations/edist-eq-one-iff-adj.md) | 140 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `lemma` | [edist_le_one_iff_adj_or_eq](declarations/edist-le-one-iff-adj-or-eq.md) | 146 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `lemma` | [edist_eq_two_iff](declarations/edist-eq-two-iff.md) | 154 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `lemma` | [two_lt_edist_iff](declarations/two-lt-edist-iff.md) | 171 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `lemma` | [edist_bot_of_ne](declarations/edist-bot-of-ne.md) | 184 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `lemma` | [edist_bot](declarations/edist-bot.md) | 187 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `lemma` | [edist_top_of_ne](declarations/edist-top-of-ne.md) | 190 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `lemma` | [edist_top](declarations/edist-top.md) | 193 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [edist_anti](declarations/edist-anti.md) | 198 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `def` | [dist](declarations/dist.md) | 214 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [dist_eq_sInf](declarations/dist-eq-sinf.md) | 219 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `lemma` | [Reachable.coe_dist_eq_edist](declarations/reachable-coe-dist-eq-edist.md) | 223 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [Reachable.exists_walk_length_eq_dist](declarations/reachable-exists-walk-length-eq-dist.md) | 226 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [Connected.exists_walk_length_eq_dist](declarations/connected-exists-walk-length-eq-dist.md) | 230 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [dist_le](declarations/dist-le.md) | 234 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [natCast_dist_le_edist](declarations/natcast-dist-le-edist.md) | 237 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [dist_eq_zero_iff_eq_or_not_reachable](declarations/dist-eq-zero-iff-eq-or-not-reachable.md) | 241 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [dist_self](declarations/dist-self.md) | 245 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [Reachable.dist_eq_zero_iff](declarations/reachable-dist-eq-zero-iff.md) | 247 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `theorem` | [Reachable.pos_dist_of_ne](declarations/reachable-pos-dist-of-ne.md) | 250 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `theorem` | [Reachable.one_lt_dist_of_ne_of_not_adj](declarations/reachable-one-lt-dist-of-ne-of-not-adj.md) | 254 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `theorem` | [Connected.dist_eq_zero_iff](declarations/connected-dist-eq-zero-iff.md) | 261 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `theorem` | [Connected.pos_dist_of_ne](declarations/connected-pos-dist-of-ne.md) | 264 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `theorem` | [Connected.one_lt_dist_of_ne_of_not_adj](declarations/connected-one-lt-dist-of-ne-of-not-adj.md) | 268 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `theorem` | [dist_eq_zero_of_not_reachable](declarations/dist-eq-zero-of-not-reachable.md) | 272 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `theorem` | [nonempty_of_pos_dist](declarations/nonempty-of-pos-dist.md) | 275 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `theorem` | [Connected.dist_triangle](declarations/connected-dist-triangle.md) | 281 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `lemma` | [Reachable.dist_triangle_left](declarations/reachable-dist-triangle-left.md) | 288 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `lemma` | [Reachable.dist_triangle_right](declarations/reachable-dist-triangle-right.md) | 295 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `theorem` | [dist_comm](declarations/dist-comm.md) | 302 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `lemma` | [dist_ne_zero_iff_ne_and_reachable](declarations/dist-ne-zero-iff-ne-and-reachable.md) | 305 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `lemma` | [Reachable.of_dist_ne_zero](declarations/reachable-of-dist-ne-zero.md) | 308 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `lemma` | [exists_walk_of_dist_ne_zero](declarations/exists-walk-of-dist-ne-zero.md) | 311 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `theorem` | [dist_eq_one_iff_adj](declarations/dist-eq-one-iff-adj.md) | 319 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `theorem` | [Adj.diff_dist_adj](declarations/adj-diff-dist-adj.md) | 323 | `BLOCKED_NATIVE_ADMISSION` |
| 51 | `theorem` | [Walk.isPath_of_length_eq_dist](declarations/walk-ispath-of-length-eq-dist.md) | 333 | `BLOCKED_NATIVE_ADMISSION` |
| 52 | `lemma` | [Reachable.exists_path_of_dist](declarations/reachable-exists-path-of-dist.md) | 344 | `BLOCKED_NATIVE_ADMISSION` |
| 53 | `lemma` | [Connected.exists_path_of_dist](declarations/connected-exists-path-of-dist.md) | 349 | `BLOCKED_NATIVE_ADMISSION` |
| 54 | `lemma` | [dist_bot](declarations/dist-bot.md) | 355 | `BLOCKED_NATIVE_ADMISSION` |
| 55 | `lemma` | [dist_top_of_ne](declarations/dist-top-of-ne.md) | 358 | `BLOCKED_NATIVE_ADMISSION` |
| 56 | `lemma` | [dist_top](declarations/dist-top.md) | 361 | `BLOCKED_NATIVE_ADMISSION` |
| 57 | `lemma` | [length_eq_dist_of_subwalk](declarations/length-eq-dist-of-subwalk.md) | 364 | `BLOCKED_NATIVE_ADMISSION` |
| 58 | `theorem` | [Reachable.dist_anti](declarations/reachable-dist-anti.md) | 377 | `BLOCKED_NATIVE_ADMISSION` |
| 59 | `lemma` | [Walk.exists_adj_adj_not_adj_ne](declarations/walk-exists-adj-adj-not-adj-ne.md) | 385 | `BLOCKED_NATIVE_ADMISSION` |
| 60 | `def` | [ball](declarations/ball.md) | 412 | `BLOCKED_NATIVE_ADMISSION` |
| 61 | `theorem` | [mem_ball](declarations/mem-ball.md) | 418 | `BLOCKED_NATIVE_ADMISSION` |
| 62 | `theorem` | [ball_zero](declarations/ball-zero.md) | 422 | `BLOCKED_NATIVE_ADMISSION` |
| 63 | `theorem` | [ball_one](declarations/ball-one.md) | 426 | `BLOCKED_NATIVE_ADMISSION` |
| 64 | `theorem` | [ball_two](declarations/ball-two.md) | 431 | `BLOCKED_NATIVE_ADMISSION` |
| 65 | `theorem` | [ball_top](declarations/ball-top.md) | 437 | `BLOCKED_NATIVE_ADMISSION` |
| 66 | `theorem` | [mem_ball_top](declarations/mem-ball-top.md) | 442 | `BLOCKED_NATIVE_ADMISSION` |
| 67 | `theorem` | [ball_mono](declarations/ball-mono.md) | 447 | `BLOCKED_NATIVE_ADMISSION` |
| 68 | `theorem` | [mem_ball_self](declarations/mem-ball-self.md) | 451 | `BLOCKED_NATIVE_ADMISSION` |
| 69 | `theorem` | [mem_ball_comm](declarations/mem-ball-comm.md) | 455 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=5cd0d8cb566d3aa5f8eba35b3b90eb8fbe6591a2ad668dc498825855348d935b -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/MetricTopology/Metric/Variant8e28804d1a41cdabef02addc7fa49a356e5bf5a5eb2e73f2bcb7367562e35ef6.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
