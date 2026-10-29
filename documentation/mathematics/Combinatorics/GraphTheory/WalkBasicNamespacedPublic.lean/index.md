# Walk Basic Namespaced Public

[Complete source index](../../../complete-source-index.md) · [Up one directory](../../complete-source-index.md) · [Full source](source.md)

**111 observed declarations and anonymous commands**, 96 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/Basic/Variant044ebf7653d1a6ec7fa4ea1f664ee648ef0ad028f332f64531de085e55f03ddb.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `dd01ef05596b135e068047cafb2d320a3ebe5e88`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/Combinatorics/GraphTheory/WalkBasicNamespacedPublic.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `inductive` | [Walk](declarations/walk.md) | 62 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `instance` | [Walk.instInhabited](declarations/walk-instinhabited.md) | 70 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `def` | [Adj.toWalk](declarations/adj-towalk.md) | 74 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `abbrev` | [nil'](declarations/nil-source-edition-2.md) | 83 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `abbrev` | [cons'](declarations/cons.md) | 87 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [exists_eq_cons_of_ne](declarations/exists-eq-cons-of-ne.md) | 89 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `def` | [length](declarations/length.md) | 95 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [length_nil](declarations/length-nil.md) | 100 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [length_cons](declarations/length-cons.md) | 103 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [Walk Basic Namespaced Public](declarations/length-towalk.md) | 106 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [eq_of_length_eq_zero](declarations/eq-of-length-eq-zero.md) | 109 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [adj_of_length_eq_one](declarations/adj-of-length-eq-one.md) | 112 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [exists_length_eq_zero_iff](declarations/exists-length-eq-zero-iff.md) | 115 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `lemma` | [exists_length_eq_one_iff](declarations/exists-length-eq-one-iff.md) | 119 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [eq_of_length_le_one](declarations/eq-of-length-le-one.md) | 122 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `def` | [support](declarations/support.md) | 126 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `def` | [darts](declarations/darts.md) | 131 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `def` | [edges](declarations/edges.md) | 137 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [edges_eq_map_darts](declarations/edges-eq-map-darts.md) | 139 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [support_nil](declarations/support-nil.md) | 143 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [support_cons](declarations/support-cons.md) | 146 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [Walk Basic Namespaced Public](declarations/support-towalk.md) | 149 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [support_ne_nil](declarations/support-ne-nil.md) | 153 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [head_support](declarations/head-support.md) | 156 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [getLast_support](declarations/getlast-support.md) | 160 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `lemma` | [cons_tail_support](declarations/cons-tail-support.md) | 165 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [support_eq_cons](declarations/support-eq-cons.md) | 169 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [start_mem_support](declarations/start-mem-support.md) | 173 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [end_mem_support](declarations/end-mem-support.md) | 176 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [support_nonempty](declarations/support-nonempty.md) | 179 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [mem_support_iff](declarations/mem-support-iff.md) | 182 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [mem_support_nil_iff](declarations/mem-support-nil-iff.md) | 185 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [end_mem_tail_support_of_ne](declarations/end-mem-tail-support-of-ne.md) | 188 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [support_suffix_support_cons](declarations/support-suffix-support-cons.md) | 192 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `theorem` | [support_subset_support_cons](declarations/support-subset-support-cons.md) | 196 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `theorem` | [coe_support](declarations/coe-support.md) | 200 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `theorem` | [isChain_adj_cons_support](declarations/ischain-adj-cons-support.md) | 203 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `theorem` | [isChain_adj_support](declarations/ischain-adj-support.md) | 208 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `theorem` | [isChain_dartAdj_cons_darts](declarations/ischain-dartadj-cons-darts.md) | 212 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `theorem` | [isChain_dartAdj_darts](declarations/ischain-dartadj-darts.md) | 218 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `theorem` | [edges_subset_edgeSet](declarations/edges-subset-edgeset.md) | 225 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `theorem` | [adj_of_mem_edges](declarations/adj-of-mem-edges.md) | 232 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `theorem` | [darts_nil](declarations/darts-nil.md) | 236 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `theorem` | [darts_cons](declarations/darts-cons.md) | 239 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `theorem` | [Walk Basic Namespaced Public](declarations/darts-towalk.md) | 242 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `theorem` | [cons_map_snd_darts](declarations/cons-map-snd-darts.md) | 245 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `theorem` | [map_snd_darts](declarations/map-snd-darts.md) | 248 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `theorem` | [map_fst_darts_append](declarations/map-fst-darts-append.md) | 251 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `theorem` | [map_fst_darts](declarations/map-fst-darts.md) | 255 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `theorem` | [edges_nil](declarations/edges-nil.md) | 259 | `BLOCKED_NATIVE_ADMISSION` |
| 51 | `theorem` | [edges_cons](declarations/edges-cons.md) | 262 | `BLOCKED_NATIVE_ADMISSION` |
| 52 | `theorem` | [Walk Basic Namespaced Public](declarations/edges-towalk.md) | 265 | `BLOCKED_NATIVE_ADMISSION` |
| 53 | `theorem` | [length_support](declarations/length-support.md) | 269 | `BLOCKED_NATIVE_ADMISSION` |
| 54 | `theorem` | [length_darts](declarations/length-darts.md) | 273 | `BLOCKED_NATIVE_ADMISSION` |
| 55 | `theorem` | [length_edges](declarations/length-edges.md) | 277 | `BLOCKED_NATIVE_ADMISSION` |
| 56 | `theorem` | [getElem_edges_eq_edge_getElem_darts](declarations/getelem-edges-eq-edge-getelem-darts.md) | 280 | `BLOCKED_NATIVE_ADMISSION` |
| 57 | `theorem` | [edge_getElem_darts](declarations/edge-getelem-darts.md) | 285 | `BLOCKED_NATIVE_ADMISSION` |
| 58 | `theorem` | [fst_darts_getElem](declarations/fst-darts-getelem.md) | 290 | `BLOCKED_NATIVE_ADMISSION` |
| 59 | `theorem` | [snd_darts_getElem](declarations/snd-darts-getelem.md) | 295 | `BLOCKED_NATIVE_ADMISSION` |
| 60 | `lemma` | [support_getElem_zero](declarations/support-getelem-zero.md) | 300 | `BLOCKED_NATIVE_ADMISSION` |
| 61 | `lemma` | [support_getElem_length](declarations/support-getelem-length.md) | 303 | `BLOCKED_NATIVE_ADMISSION` |
| 62 | `theorem` | [mem_darts_iff_infix_support](declarations/mem-darts-iff-infix-support.md) | 306 | `BLOCKED_NATIVE_ADMISSION` |
| 63 | `theorem` | [mem_darts_iff_fst_snd_infix_support](declarations/mem-darts-iff-fst-snd-infix-support.md) | 316 | `BLOCKED_NATIVE_ADMISSION` |
| 64 | `theorem` | [dart_fst_mem_support_of_mem_darts](declarations/dart-fst-mem-support-of-mem-darts.md) | 320 | `BLOCKED_NATIVE_ADMISSION` |
| 65 | `theorem` | [mem_support_iff_exists_mem_edges](declarations/mem-support-iff-exists-mem-edges.md) | 328 | `BLOCKED_NATIVE_ADMISSION` |
| 66 | `theorem` | [darts_nodup_of_support_nodup](declarations/darts-nodup-of-support-nodup.md) | 332 | `BLOCKED_NATIVE_ADMISSION` |
| 67 | `theorem` | [edges_eq_zipWith_support](declarations/edges-eq-zipwith-support.md) | 340 | `BLOCKED_NATIVE_ADMISSION` |
| 68 | `theorem` | [edges_injective](declarations/edges-injective.md) | 346 | `BLOCKED_NATIVE_ADMISSION` |
| 69 | `theorem` | [darts_injective](declarations/darts-injective.md) | 354 | `BLOCKED_NATIVE_ADMISSION` |
| 70 | `def` | [edgeSet](declarations/edgeset.md) | 358 | `BLOCKED_NATIVE_ADMISSION` |
| 71 | `lemma` | [mem_edgeSet](declarations/mem-edgeset.md) | 361 | `BLOCKED_NATIVE_ADMISSION` |
| 72 | `lemma` | [edgeSet_nil](declarations/edgeset-nil.md) | 364 | `BLOCKED_NATIVE_ADMISSION` |
| 73 | `theorem` | [edgeSet_cons](declarations/edgeset-cons.md) | 367 | `BLOCKED_NATIVE_ADMISSION` |
| 74 | `theorem` | [coe_edges_toFinset](declarations/coe-edges-tofinset.md) | 370 | `BLOCKED_NATIVE_ADMISSION` |
| 75 | `inductive` | [Nil](declarations/nil.md) | 378 | `BLOCKED_NATIVE_ADMISSION` |
| 76 | `lemma` | [nil_nil](declarations/nil-nil.md) | 381 | `BLOCKED_NATIVE_ADMISSION` |
| 77 | `lemma` | [not_nil_cons](declarations/not-nil-cons.md) | 383 | `BLOCKED_NATIVE_ADMISSION` |
| 78 | `instance` | [(anonymous)](declarations/instance.md) | 385 | `BLOCKED_NATIVE_ADMISSION` |
| 79 | `lemma` | [Nil.eq](declarations/nil-eq.md) | 391 | `BLOCKED_NATIVE_ADMISSION` |
| 80 | `lemma` | [not_nil_of_ne](declarations/not-nil-of-ne.md) | 393 | `BLOCKED_NATIVE_ADMISSION` |
| 81 | `lemma` | [nil_iff_support_eq](declarations/nil-iff-support-eq.md) | 395 | `BLOCKED_NATIVE_ADMISSION` |
| 82 | `lemma` | [darts_eq_nil](declarations/darts-eq-nil.md) | 399 | `BLOCKED_NATIVE_ADMISSION` |
| 83 | `lemma` | [edges_eq_nil](declarations/edges-eq-nil.md) | 403 | `BLOCKED_NATIVE_ADMISSION` |
| 84 | `theorem` | [edgeSet_eq_empty](declarations/edgeset-eq-empty.md) | 407 | `BLOCKED_NATIVE_ADMISSION` |
| 85 | `theorem` | [length_eq_zero_iff](declarations/length-eq-zero-iff.md) | 411 | `BLOCKED_NATIVE_ADMISSION` |
| 86 | `lemma` | [nil_iff_length_eq](declarations/nil-iff-length-eq.md) | 417 | `BLOCKED_NATIVE_ADMISSION` |
| 87 | `lemma` | [not_nil_iff_lt_length](declarations/not-nil-iff-lt-length.md) | 420 | `BLOCKED_NATIVE_ADMISSION` |
| 88 | `lemma` | [not_nil_iff](declarations/not-nil-iff.md) | 423 | `BLOCKED_NATIVE_ADMISSION` |
| 89 | `theorem` | [eq_nil_iff_nil](declarations/eq-nil-iff-nil.md) | 429 | `BLOCKED_NATIVE_ADMISSION` |
| 90 | `lemma` | [nil_iff_eq_nil](declarations/nil-iff-eq-nil.md) | 435 | `BLOCKED_NATIVE_ADMISSION` |
| 91 | `lemma` | [nil_of_subsingleton](declarations/nil-of-subsingleton.md) | 438 | `BLOCKED_NATIVE_ADMISSION` |
| 92 | `theorem` | [nil_of_bot](declarations/nil-of-bot.md) | 443 | `BLOCKED_NATIVE_ADMISSION` |
| 93 | `theorem` | [exists_nil_iff](declarations/exists-nil-iff.md) | 447 | `BLOCKED_NATIVE_ADMISSION` |
| 94 | `def` | [notNilRec](declarations/notnilrec.md) | 452 | `BLOCKED_NATIVE_ADMISSION` |
| 95 | `lemma` | [notNilRec_cons](declarations/notnilrec-cons.md) | 460 | `BLOCKED_NATIVE_ADMISSION` |
| 96 | `theorem` | [end_mem_tail_support](declarations/end-mem-tail-support.md) | 465 | `BLOCKED_NATIVE_ADMISSION` |
| 97 | `theorem` | [mem_support_iff_exists_mem_edges_of_not_nil](declarations/mem-support-iff-exists-mem-edges-of-not-nil.md) | 468 | `BLOCKED_NATIVE_ADMISSION` |
| 98 | `theorem` | [nil_of_isIsolated_of_mem_support](declarations/nil-of-isisolated-of-mem-support.md) | 474 | `BLOCKED_NATIVE_ADMISSION` |
| 99 | `theorem` | [exists_boundary_dart](declarations/exists-boundary-dart.md) | 482 | `BLOCKED_NATIVE_ADMISSION` |
| 100 | `def` | [ofSupport](declarations/ofsupport.md) | 495 | `BLOCKED_NATIVE_ADMISSION` |
| 101 | `theorem` | [ofSupport_singleton](declarations/ofsupport-singleton.md) | 503 | `BLOCKED_NATIVE_ADMISSION` |
| 102 | `theorem` | [ofSupport_cons_cons](declarations/ofsupport-cons-cons.md) | 508 | `BLOCKED_NATIVE_ADMISSION` |
| 103 | `theorem` | [support_ofSupport](declarations/support-ofsupport.md) | 515 | `BLOCKED_NATIVE_ADMISSION` |
| 104 | `theorem` | [length_ofSupport](declarations/length-ofsupport.md) | 523 | `BLOCKED_NATIVE_ADMISSION` |
| 105 | `def` | [ofDarts](declarations/ofdarts.md) | 529 | `BLOCKED_NATIVE_ADMISSION` |
| 106 | `theorem` | [ofDarts_singleton](declarations/ofdarts-singleton.md) | 537 | `BLOCKED_NATIVE_ADMISSION` |
| 107 | `theorem` | [ofDarts_singleton'](declarations/ofdarts-singleton-source-edition-2.md) | 540 | `BLOCKED_NATIVE_ADMISSION` |
| 108 | `theorem` | [ofDarts_cons_cons](declarations/ofdarts-cons-cons.md) | 544 | `BLOCKED_NATIVE_ADMISSION` |
| 109 | `theorem` | [darts_ofDarts](declarations/darts-ofdarts.md) | 552 | `BLOCKED_NATIVE_ADMISSION` |
| 110 | `theorem` | [edges_ofDarts](declarations/edges-ofdarts.md) | 560 | `BLOCKED_NATIVE_ADMISSION` |
| 111 | `theorem` | [length_ofDarts](declarations/length-ofdarts.md) | 565 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=1666d84bbaec1d0b358145b977593bc005d96b6e3996c038fa046f82490afcb0 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/Basic/Variant044ebf7653d1a6ec7fa4ea1f664ee648ef0ad028f332f64531de085e55f03ddb.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
