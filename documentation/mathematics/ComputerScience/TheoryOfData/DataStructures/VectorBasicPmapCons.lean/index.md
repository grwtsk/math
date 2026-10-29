# Vector Basic Pmap Cons

[Complete source index](../../../../complete-source-index.md) · [Up one directory](../../../../complete-source-index.md) · [Full source](source.md)

**104 observed declarations and anonymous commands**, 83 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variantfd3279f1ed37a00dbd1073a57f0b98daaa9b1e08d690d35c33aecf949b7f531a.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `8b22429f57fedb55d5af78f635541741fc6dfb04`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../_verification/specifications/ComputerScience/TheoryOfData/DataStructures/VectorBasicPmapCons.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `instance` | [(anonymous)](declarations/instance-source-edition-2.md) | 31 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `theorem` | [toList_injective](declarations/tolist-injective.md) | 34 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `theorem` | [ext](declarations/ext.md) | 39 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `instance` | [zero_subsingleton](declarations/zero-subsingleton.md) | 44 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [cons_val](declarations/cons-val.md) | 48 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [eq_cons_iff](declarations/eq-cons-iff.md) | 51 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [ne_cons_iff](declarations/ne-cons-iff.md) | 56 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [exists_eq_cons](declarations/exists-eq-cons.md) | 59 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [toList_ofFn](declarations/tolist-offn.md) | 63 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [mk_toList](declarations/mk-tolist.md) | 68 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [length_val](declarations/length-val.md) | 72 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [pmap_cons](declarations/pmap-cons-source-edition-2.md) | 75 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [pmap_cons'](declarations/pmap-cons.md) | 85 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [toList_map](declarations/tolist-map.md) | 90 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [head_map](declarations/head-map.md) | 94 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [tail_map](declarations/tail-map.md) | 99 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [getElem_map](declarations/getelem-map.md) | 105 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [toList_pmap](declarations/tolist-pmap.md) | 110 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [head_pmap](declarations/head-pmap.md) | 115 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [tail_pmap](declarations/tail-pmap.md) | 123 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [getElem_pmap](declarations/getelem-pmap.md) | 131 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [get_eq_get_toList](declarations/get-eq-get-tolist.md) | 136 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [get_replicate](declarations/get-replicate.md) | 144 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [get_map](declarations/get-map-source-edition-2.md) | 148 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [map₂_nil](declarations/map-nil.md) | 153 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [map₂_cons](declarations/map-cons.md) | 157 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [get_ofFn](declarations/get-offn.md) | 162 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [ofFn_get](declarations/offn-get.md) | 168 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `def` | [_root_.Equiv.vectorEquivFin](declarations/root-equiv-vectorequivfin.md) | 175 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [get_tail](declarations/get-tail.md) | 178 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [get_tail_succ](declarations/get-tail-succ.md) | 186 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [tail_val](declarations/tail-val.md) | 190 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [tail_nil](declarations/tail-nil.md) | 195 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [singleton_tail](declarations/singleton-tail.md) | 200 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `theorem` | [tail_ofFn](declarations/tail-offn.md) | 204 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `theorem` | [toList_empty](declarations/tolist-empty.md) | 212 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `theorem` | [toList_singleton](declarations/tolist-singleton.md) | 218 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `theorem` | [empty_toList_eq_ff](declarations/empty-tolist-eq-ff.md) | 223 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `theorem` | [not_empty_toList](declarations/not-empty-tolist.md) | 227 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `theorem` | [map_id](declarations/map-id.md) | 232 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `theorem` | [nodup_iff_injective_get](declarations/nodup-iff-injective-get.md) | 235 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `theorem` | [head?_toList](declarations/head-tolist.md) | 240 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `def` | [reverse](declarations/reverse.md) | 244 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `theorem` | [toList_reverse](declarations/tolist-reverse.md) | 249 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `theorem` | [reverse_reverse](declarations/reverse-reverse.md) | 253 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `theorem` | [get_zero](declarations/get-zero.md) | 258 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `theorem` | [head_ofFn](declarations/head-offn.md) | 262 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `theorem` | [get_cons_zero](declarations/get-cons-zero.md) | 265 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `theorem` | [get_cons_nil](declarations/get-cons-nil.md) | 270 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `theorem` | [get_cons_succ](declarations/get-cons-succ.md) | 274 | `BLOCKED_NATIVE_ADMISSION` |
| 51 | `def` | [last](declarations/last.md) | 278 | `BLOCKED_NATIVE_ADMISSION` |
| 52 | `theorem` | [last_def](declarations/last-def.md) | 282 | `BLOCKED_NATIVE_ADMISSION` |
| 53 | `theorem` | [reverse_get_zero](declarations/reverse-get-zero.md) | 286 | `BLOCKED_NATIVE_ADMISSION` |
| 54 | `def` | [scanl](declarations/scanl.md) | 304 | `BLOCKED_NATIVE_ADMISSION` |
| 55 | `theorem` | [scanl_nil](declarations/scanl-nil.md) | 309 | `BLOCKED_NATIVE_ADMISSION` |
| 56 | `theorem` | [scanl_cons](declarations/scanl-cons.md) | 319 | `BLOCKED_NATIVE_ADMISSION` |
| 57 | `theorem` | [scanl_val](declarations/scanl-val.md) | 327 | `BLOCKED_NATIVE_ADMISSION` |
| 58 | `theorem` | [toList_scanl](declarations/tolist-scanl.md) | 334 | `BLOCKED_NATIVE_ADMISSION` |
| 59 | `theorem` | [scanl_singleton](declarations/scanl-singleton.md) | 342 | `BLOCKED_NATIVE_ADMISSION` |
| 60 | `theorem` | [scanl_head](declarations/scanl-head.md) | 350 | `BLOCKED_NATIVE_ADMISSION` |
| 61 | `theorem` | [scanl_get](declarations/scanl-get.md) | 365 | `BLOCKED_NATIVE_ADMISSION` |
| 62 | `def` | [mOfFn](declarations/moffn.md) | 382 | `BLOCKED_NATIVE_ADMISSION` |
| 63 | `theorem` | [mOfFn_pure](declarations/moffn-pure.md) | 389 | `BLOCKED_NATIVE_ADMISSION` |
| 64 | `def` | [mmap](declarations/mmap.md) | 398 | `BLOCKED_NATIVE_ADMISSION` |
| 65 | `theorem` | [mmap_nil](declarations/mmap-nil.md) | 406 | `BLOCKED_NATIVE_ADMISSION` |
| 66 | `theorem` | [mmap_cons](declarations/mmap-cons.md) | 410 | `BLOCKED_NATIVE_ADMISSION` |
| 67 | `def` | [inductionOn](declarations/inductionon-source-edition-2.md) | 427 | `BLOCKED_NATIVE_ADMISSION` |
| 68 | `theorem` | [inductionOn_nil](declarations/inductionon-nil.md) | 437 | `BLOCKED_NATIVE_ADMISSION` |
| 69 | `theorem` | [inductionOn_cons](declarations/inductionon-cons.md) | 443 | `BLOCKED_NATIVE_ADMISSION` |
| 70 | `def` | [inductionOn₂](declarations/inductionon.md) | 452 | `BLOCKED_NATIVE_ADMISSION` |
| 71 | `def` | [inductionOn₃](declarations/inductionon-source-edition-3.md) | 470 | `BLOCKED_NATIVE_ADMISSION` |
| 72 | `def` | [casesOn](declarations/caseson.md) | 491 | `BLOCKED_NATIVE_ADMISSION` |
| 73 | `def` | [casesOn₂](declarations/caseson-source-edition-3.md) | 498 | `BLOCKED_NATIVE_ADMISSION` |
| 74 | `def` | [casesOn₃](declarations/caseson-source-edition-2.md) | 507 | `BLOCKED_NATIVE_ADMISSION` |
| 75 | `def` | [toArray](declarations/toarray.md) | 515 | `BLOCKED_NATIVE_ADMISSION` |
| 76 | `def` | [insertIdx](declarations/insertidx.md) | 524 | `BLOCKED_NATIVE_ADMISSION` |
| 77 | `theorem` | [insertIdx_val](declarations/insertidx-val.md) | 529 | `BLOCKED_NATIVE_ADMISSION` |
| 78 | `theorem` | [eraseIdx_val](declarations/eraseidx-val.md) | 534 | `BLOCKED_NATIVE_ADMISSION` |
| 79 | `theorem` | [eraseIdx_insertIdx](declarations/eraseidx-insertidx.md) | 537 | `BLOCKED_NATIVE_ADMISSION` |
| 80 | `theorem` | [eraseIdx_insertIdx'](declarations/eraseidx-insertidx-source-edition-2.md) | 542 | `BLOCKED_NATIVE_ADMISSION` |
| 81 | `theorem` | [insertIdx_comm](declarations/insertidx-comm.md) | 562 | `BLOCKED_NATIVE_ADMISSION` |
| 82 | `def` | [set](declarations/set.md) | 578 | `BLOCKED_NATIVE_ADMISSION` |
| 83 | `theorem` | [toList_set](declarations/tolist-set.md) | 582 | `BLOCKED_NATIVE_ADMISSION` |
| 84 | `theorem` | [get_set_same](declarations/get-set-same.md) | 587 | `BLOCKED_NATIVE_ADMISSION` |
| 85 | `theorem` | [get_set_of_ne](declarations/get-set-of-ne.md) | 590 | `BLOCKED_NATIVE_ADMISSION` |
| 86 | `theorem` | [get_set_eq_if](declarations/get-set-eq-if.md) | 597 | `BLOCKED_NATIVE_ADMISSION` |
| 87 | `theorem` | [prod_set](declarations/prod-set.md) | 602 | `BLOCKED_NATIVE_ADMISSION` |
| 88 | `theorem` | [prod_set'](declarations/prod-set-source-edition-2.md) | 610 | `BLOCKED_NATIVE_ADMISSION` |
| 89 | `def` | [traverseAux](declarations/traverseaux.md) | 632 | `BLOCKED_NATIVE_ADMISSION` |
| 90 | `def` | [traverse](declarations/traverse.md) | 637 | `BLOCKED_NATIVE_ADMISSION` |
| 91 | `theorem` | [traverse_def](declarations/traverse-def.md) | 645 | `BLOCKED_NATIVE_ADMISSION` |
| 92 | `theorem` | [id_traverse](declarations/id-traverse.md) | 649 | `BLOCKED_NATIVE_ADMISSION` |
| 93 | `theorem` | [comp_traverse](declarations/comp-traverse.md) | 664 | `BLOCKED_NATIVE_ADMISSION` |
| 94 | `theorem` | [traverse_eq_map_id](declarations/traverse-eq-map-id.md) | 673 | `BLOCKED_NATIVE_ADMISSION` |
| 95 | `theorem` | [naturality](declarations/naturality.md) | 679 | `BLOCKED_NATIVE_ADMISSION` |
| 96 | `instance` | [(anonymous)](declarations/instance.md) | 688 | `BLOCKED_NATIVE_ADMISSION` |
| 97 | `instance` | [(anonymous)](declarations/instance-source-edition-3.md) | 692 | `BLOCKED_NATIVE_ADMISSION` |
| 98 | `theorem` | [replicate_succ](declarations/replicate-succ.md) | 724 | `BLOCKED_NATIVE_ADMISSION` |
| 99 | `lemma` | [get_append_cons_zero](declarations/get-append-cons-zero.md) | 731 | `BLOCKED_NATIVE_ADMISSION` |
| 100 | `theorem` | [get_append_cons_succ](declarations/get-append-cons-succ.md) | 734 | `BLOCKED_NATIVE_ADMISSION` |
| 101 | `theorem` | [append_nil](declarations/append-nil.md) | 739 | `BLOCKED_NATIVE_ADMISSION` |
| 102 | `theorem` | [get_map₂](declarations/get-map.md) | 747 | `BLOCKED_NATIVE_ADMISSION` |
| 103 | `theorem` | [mapAccumr_cons](declarations/mapaccumr-cons-source-edition-2.md) | 760 | `BLOCKED_NATIVE_ADMISSION` |
| 104 | `theorem` | [mapAccumr₂_cons](declarations/mapaccumr-cons.md) | 768 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=729d56c10ba4b82fa8e3477b758a2430d7fd791ba622c584ac5b8bb1594fee2b -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variantfd3279f1ed37a00dbd1073a57f0b98daaa9b1e08d690d35c33aecf949b7f531a.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
