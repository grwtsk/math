# Walk Basic Public

[Complete source index](../../../complete-source-index.md) · [Up one directory](../../complete-source-index.md) · [Full source](source.md)

**111 observed declarations and anonymous commands**, 96 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/Basic/Variantef3405e64d8923b7579502a68fe883edec2eea891feebe46b435d43f1aa42d42.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `8ce924b6647115c1d064d6cd40d9d3829a9b4f2e`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/Combinatorics/GraphTheory/WalkBasicPublic.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `inductive` | [Walk](declarations/walk.md) | 54 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `instance` | [Walk.instInhabited](declarations/walk-instinhabited.md) | 62 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `def` | [Adj.toWalk](declarations/adj-towalk.md) | 66 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `abbrev` | [nil'](declarations/nil.md) | 75 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `abbrev` | [cons'](declarations/cons.md) | 79 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [exists_eq_cons_of_ne](declarations/exists-eq-cons-of-ne.md) | 81 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `def` | [length](declarations/length.md) | 87 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [length_nil](declarations/length-nil.md) | 92 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [length_cons](declarations/length-cons.md) | 95 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [_root_.SimpleGraph.Adj.length_toWalk](declarations/root-simplegraph-adj-length-towalk.md) | 98 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [eq_of_length_eq_zero](declarations/eq-of-length-eq-zero.md) | 101 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [adj_of_length_eq_one](declarations/adj-of-length-eq-one.md) | 104 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [exists_length_eq_zero_iff](declarations/exists-length-eq-zero-iff.md) | 107 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `lemma` | [exists_length_eq_one_iff](declarations/exists-length-eq-one-iff.md) | 111 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [eq_of_length_le_one](declarations/eq-of-length-le-one.md) | 114 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `def` | [support](declarations/support.md) | 118 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `def` | [darts](declarations/darts.md) | 123 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `def` | [edges](declarations/edges.md) | 129 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [edges_eq_map_darts](declarations/edges-eq-map-darts.md) | 131 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [support_nil](declarations/support-nil.md) | 135 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [support_cons](declarations/support-cons.md) | 138 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [_root_.SimpleGraph.Adj.support_toWalk](declarations/root-simplegraph-adj-support-towalk.md) | 141 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [support_ne_nil](declarations/support-ne-nil.md) | 145 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [head_support](declarations/head-support.md) | 148 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [getLast_support](declarations/getlast-support.md) | 152 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `lemma` | [cons_tail_support](declarations/cons-tail-support.md) | 157 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [support_eq_cons](declarations/support-eq-cons.md) | 161 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [start_mem_support](declarations/start-mem-support.md) | 165 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [end_mem_support](declarations/end-mem-support.md) | 168 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [support_nonempty](declarations/support-nonempty.md) | 171 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [mem_support_iff](declarations/mem-support-iff.md) | 174 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [mem_support_nil_iff](declarations/mem-support-nil-iff.md) | 177 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [end_mem_tail_support_of_ne](declarations/end-mem-tail-support-of-ne.md) | 180 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [support_suffix_support_cons](declarations/support-suffix-support-cons.md) | 184 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `theorem` | [support_subset_support_cons](declarations/support-subset-support-cons.md) | 188 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `theorem` | [coe_support](declarations/coe-support.md) | 192 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `theorem` | [isChain_adj_cons_support](declarations/ischain-adj-cons-support.md) | 195 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `theorem` | [isChain_adj_support](declarations/ischain-adj-support.md) | 200 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `theorem` | [isChain_dartAdj_cons_darts](declarations/ischain-dartadj-cons-darts.md) | 204 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `theorem` | [isChain_dartAdj_darts](declarations/ischain-dartadj-darts.md) | 210 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `theorem` | [edges_subset_edgeSet](declarations/edges-subset-edgeset.md) | 217 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `theorem` | [adj_of_mem_edges](declarations/adj-of-mem-edges.md) | 224 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `theorem` | [darts_nil](declarations/darts-nil.md) | 228 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `theorem` | [darts_cons](declarations/darts-cons.md) | 231 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `theorem` | [_root_.SimpleGraph.Adj.darts_toWalk](declarations/root-simplegraph-adj-darts-towalk.md) | 234 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `theorem` | [cons_map_snd_darts](declarations/cons-map-snd-darts.md) | 237 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `theorem` | [map_snd_darts](declarations/map-snd-darts.md) | 240 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `theorem` | [map_fst_darts_append](declarations/map-fst-darts-append.md) | 243 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `theorem` | [map_fst_darts](declarations/map-fst-darts.md) | 247 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `theorem` | [edges_nil](declarations/edges-nil.md) | 251 | `BLOCKED_NATIVE_ADMISSION` |
| 51 | `theorem` | [edges_cons](declarations/edges-cons.md) | 254 | `BLOCKED_NATIVE_ADMISSION` |
| 52 | `theorem` | [_root_.SimpleGraph.Adj.edges_toWalk](declarations/root-simplegraph-adj-edges-towalk.md) | 257 | `BLOCKED_NATIVE_ADMISSION` |
| 53 | `theorem` | [length_support](declarations/length-support.md) | 261 | `BLOCKED_NATIVE_ADMISSION` |
| 54 | `theorem` | [length_darts](declarations/length-darts.md) | 265 | `BLOCKED_NATIVE_ADMISSION` |
| 55 | `theorem` | [length_edges](declarations/length-edges.md) | 269 | `BLOCKED_NATIVE_ADMISSION` |
| 56 | `theorem` | [getElem_edges_eq_edge_getElem_darts](declarations/getelem-edges-eq-edge-getelem-darts.md) | 272 | `BLOCKED_NATIVE_ADMISSION` |
| 57 | `theorem` | [edge_getElem_darts](declarations/edge-getelem-darts.md) | 277 | `BLOCKED_NATIVE_ADMISSION` |
| 58 | `theorem` | [fst_darts_getElem](declarations/fst-darts-getelem.md) | 282 | `BLOCKED_NATIVE_ADMISSION` |
| 59 | `theorem` | [snd_darts_getElem](declarations/snd-darts-getelem.md) | 287 | `BLOCKED_NATIVE_ADMISSION` |
| 60 | `lemma` | [support_getElem_zero](declarations/support-getelem-zero.md) | 292 | `BLOCKED_NATIVE_ADMISSION` |
| 61 | `lemma` | [support_getElem_length](declarations/support-getelem-length.md) | 295 | `BLOCKED_NATIVE_ADMISSION` |
| 62 | `theorem` | [mem_darts_iff_infix_support](declarations/mem-darts-iff-infix-support.md) | 298 | `BLOCKED_NATIVE_ADMISSION` |
| 63 | `theorem` | [mem_darts_iff_fst_snd_infix_support](declarations/mem-darts-iff-fst-snd-infix-support.md) | 308 | `BLOCKED_NATIVE_ADMISSION` |
| 64 | `theorem` | [dart_fst_mem_support_of_mem_darts](declarations/dart-fst-mem-support-of-mem-darts.md) | 312 | `BLOCKED_NATIVE_ADMISSION` |
| 65 | `theorem` | [mem_support_iff_exists_mem_edges](declarations/mem-support-iff-exists-mem-edges.md) | 320 | `BLOCKED_NATIVE_ADMISSION` |
| 66 | `theorem` | [darts_nodup_of_support_nodup](declarations/darts-nodup-of-support-nodup.md) | 324 | `BLOCKED_NATIVE_ADMISSION` |
| 67 | `theorem` | [edges_eq_zipWith_support](declarations/edges-eq-zipwith-support.md) | 332 | `BLOCKED_NATIVE_ADMISSION` |
| 68 | `theorem` | [edges_injective](declarations/edges-injective.md) | 338 | `BLOCKED_NATIVE_ADMISSION` |
| 69 | `theorem` | [darts_injective](declarations/darts-injective.md) | 346 | `BLOCKED_NATIVE_ADMISSION` |
| 70 | `def` | [edgeSet](declarations/edgeset.md) | 350 | `BLOCKED_NATIVE_ADMISSION` |
| 71 | `lemma` | [mem_edgeSet](declarations/mem-edgeset.md) | 353 | `BLOCKED_NATIVE_ADMISSION` |
| 72 | `lemma` | [edgeSet_nil](declarations/edgeset-nil.md) | 356 | `BLOCKED_NATIVE_ADMISSION` |
| 73 | `theorem` | [edgeSet_cons](declarations/edgeset-cons.md) | 359 | `BLOCKED_NATIVE_ADMISSION` |
| 74 | `theorem` | [coe_edges_toFinset](declarations/coe-edges-tofinset.md) | 362 | `BLOCKED_NATIVE_ADMISSION` |
| 75 | `inductive` | [Nil](declarations/nil-source-edition-2.md) | 370 | `BLOCKED_NATIVE_ADMISSION` |
| 76 | `lemma` | [nil_nil](declarations/nil-nil.md) | 373 | `BLOCKED_NATIVE_ADMISSION` |
| 77 | `lemma` | [not_nil_cons](declarations/not-nil-cons.md) | 375 | `BLOCKED_NATIVE_ADMISSION` |
| 78 | `instance` | [(anonymous)](declarations/instance.md) | 377 | `BLOCKED_NATIVE_ADMISSION` |
| 79 | `lemma` | [Nil.eq](declarations/nil-eq.md) | 383 | `BLOCKED_NATIVE_ADMISSION` |
| 80 | `lemma` | [not_nil_of_ne](declarations/not-nil-of-ne.md) | 385 | `BLOCKED_NATIVE_ADMISSION` |
| 81 | `lemma` | [nil_iff_support_eq](declarations/nil-iff-support-eq.md) | 387 | `BLOCKED_NATIVE_ADMISSION` |
| 82 | `lemma` | [darts_eq_nil](declarations/darts-eq-nil.md) | 391 | `BLOCKED_NATIVE_ADMISSION` |
| 83 | `lemma` | [edges_eq_nil](declarations/edges-eq-nil.md) | 395 | `BLOCKED_NATIVE_ADMISSION` |
| 84 | `theorem` | [edgeSet_eq_empty](declarations/edgeset-eq-empty.md) | 399 | `BLOCKED_NATIVE_ADMISSION` |
| 85 | `theorem` | [length_eq_zero_iff](declarations/length-eq-zero-iff.md) | 403 | `BLOCKED_NATIVE_ADMISSION` |
| 86 | `lemma` | [nil_iff_length_eq](declarations/nil-iff-length-eq.md) | 409 | `BLOCKED_NATIVE_ADMISSION` |
| 87 | `lemma` | [not_nil_iff_lt_length](declarations/not-nil-iff-lt-length.md) | 412 | `BLOCKED_NATIVE_ADMISSION` |
| 88 | `lemma` | [not_nil_iff](declarations/not-nil-iff.md) | 415 | `BLOCKED_NATIVE_ADMISSION` |
| 89 | `theorem` | [eq_nil_iff_nil](declarations/eq-nil-iff-nil.md) | 421 | `BLOCKED_NATIVE_ADMISSION` |
| 90 | `lemma` | [nil_iff_eq_nil](declarations/nil-iff-eq-nil.md) | 427 | `BLOCKED_NATIVE_ADMISSION` |
| 91 | `lemma` | [nil_of_subsingleton](declarations/nil-of-subsingleton.md) | 430 | `BLOCKED_NATIVE_ADMISSION` |
| 92 | `theorem` | [nil_of_bot](declarations/nil-of-bot.md) | 435 | `BLOCKED_NATIVE_ADMISSION` |
| 93 | `theorem` | [exists_nil_iff](declarations/exists-nil-iff.md) | 439 | `BLOCKED_NATIVE_ADMISSION` |
| 94 | `def` | [notNilRec](declarations/notnilrec.md) | 444 | `BLOCKED_NATIVE_ADMISSION` |
| 95 | `lemma` | [notNilRec_cons](declarations/notnilrec-cons.md) | 452 | `BLOCKED_NATIVE_ADMISSION` |
| 96 | `theorem` | [end_mem_tail_support](declarations/end-mem-tail-support.md) | 457 | `BLOCKED_NATIVE_ADMISSION` |
| 97 | `theorem` | [mem_support_iff_exists_mem_edges_of_not_nil](declarations/mem-support-iff-exists-mem-edges-of-not-nil.md) | 460 | `BLOCKED_NATIVE_ADMISSION` |
| 98 | `theorem` | [nil_of_isIsolated_of_mem_support](declarations/nil-of-isisolated-of-mem-support.md) | 466 | `BLOCKED_NATIVE_ADMISSION` |
| 99 | `theorem` | [exists_boundary_dart](declarations/exists-boundary-dart.md) | 474 | `BLOCKED_NATIVE_ADMISSION` |
| 100 | `def` | [ofSupport](declarations/ofsupport.md) | 487 | `BLOCKED_NATIVE_ADMISSION` |
| 101 | `theorem` | [ofSupport_singleton](declarations/ofsupport-singleton.md) | 495 | `BLOCKED_NATIVE_ADMISSION` |
| 102 | `theorem` | [ofSupport_cons_cons](declarations/ofsupport-cons-cons.md) | 500 | `BLOCKED_NATIVE_ADMISSION` |
| 103 | `theorem` | [support_ofSupport](declarations/support-ofsupport.md) | 507 | `BLOCKED_NATIVE_ADMISSION` |
| 104 | `theorem` | [length_ofSupport](declarations/length-ofsupport.md) | 515 | `BLOCKED_NATIVE_ADMISSION` |
| 105 | `def` | [ofDarts](declarations/ofdarts.md) | 521 | `BLOCKED_NATIVE_ADMISSION` |
| 106 | `theorem` | [ofDarts_singleton](declarations/ofdarts-singleton-source-edition-2.md) | 529 | `BLOCKED_NATIVE_ADMISSION` |
| 107 | `theorem` | [ofDarts_singleton'](declarations/ofdarts-singleton.md) | 532 | `BLOCKED_NATIVE_ADMISSION` |
| 108 | `theorem` | [ofDarts_cons_cons](declarations/ofdarts-cons-cons.md) | 536 | `BLOCKED_NATIVE_ADMISSION` |
| 109 | `theorem` | [darts_ofDarts](declarations/darts-ofdarts.md) | 544 | `BLOCKED_NATIVE_ADMISSION` |
| 110 | `theorem` | [edges_ofDarts](declarations/edges-ofdarts.md) | 552 | `BLOCKED_NATIVE_ADMISSION` |
| 111 | `theorem` | [length_ofDarts](declarations/length-ofdarts.md) | 557 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=6300dacd69e548762bdeeb5cffdbab90817b0df798ed989aad80c852c39664d3 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/Basic/Variantef3405e64d8923b7579502a68fe883edec2eea891feebe46b435d43f1aa42d42.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
