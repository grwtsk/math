# Attach Namespaced Public Pmap

[Complete source index](../../../complete-source-index.md) · [Up one directory](../../complete-source-index.md) · [Full source](source.md)

**97 observed declarations and anonymous commands**, 91 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Attach/Variant82afff6f506671c02863b791afa3df5cdec9802d1ed2a4cbd86a6d442301775e.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `787dbef8c046074a405543d93401d8511220c787`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/ComputerScience/AlgorithmsInComputerScience/AttachNamespacedPublicPmap.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [pmap](declarations/pmap.md) | 36 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `def` | [attachWithImpl](declarations/attachwithimpl.md) | 43 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `def` | [attachWith](declarations/attachwith.md) | 48 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `def` | [attach](declarations/attach.md) | 54 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [attachWith_mk](declarations/attachwith-mk.md) | 56 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [attach_mk](declarations/attach-mk.md) | 60 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [pmap_mk](declarations/pmap-mk.md) | 64 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [toArray_attachWith](declarations/toarray-attachwith.md) | 69 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [toArray_attach](declarations/toarray-attach.md) | 73 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [toArray_pmap](declarations/toarray-pmap.md) | 77 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [toList_attachWith](declarations/tolist-attachwith.md) | 81 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [toList_attach](declarations/tolist-attach.md) | 86 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [toList_pmap](declarations/tolist-pmap.md) | 90 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `def` | [pmapImpl](declarations/pmapimpl.md) | 96 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [pmap_eq_pmapImpl](declarations/pmap-eq-pmapimpl.md) | 99 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [pmap_empty](declarations/pmap-empty.md) | 107 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [pmap_push](declarations/pmap-push.md) | 109 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [attach_empty](declarations/attach-empty.md) | 114 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [attachWith_empty](declarations/attachwith-empty.md) | 116 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [pmap_eq_map](declarations/pmap-eq-map.md) | 119 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [pmap_congr_left](declarations/pmap-congr-left.md) | 123 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [map_pmap](declarations/map-pmap.md) | 130 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [pmap_map](declarations/pmap-map.md) | 135 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [attach_congr](declarations/attach-congr.md) | 140 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [attachWith_congr](declarations/attachwith-congr.md) | 145 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [mk_congr](declarations/mk-congr.md) | 151 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [attach_push](declarations/attach-push.md) | 156 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [attachWith_push](declarations/attachwith-push.md) | 163 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [pmap_eq_map_attach](declarations/pmap-eq-map-attach.md) | 169 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [pmap_eq_attachWith](declarations/pmap-eq-attachwith.md) | 177 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [attach_map_val](declarations/attach-map-val.md) | 182 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [attach_map_subtype_val](declarations/attach-map-subtype-val.md) | 188 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [attachWith_map_val](declarations/attachwith-map-val.md) | 192 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [attachWith_map_subtype_val](declarations/attachwith-map-subtype-val.md) | 197 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `theorem` | [mem_attach](declarations/mem-attach.md) | 203 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `theorem` | [mem_attachWith](declarations/mem-attachwith.md) | 210 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `theorem` | [mem_pmap](declarations/mem-pmap.md) | 216 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `theorem` | [mem_pmap_of_mem](declarations/mem-pmap-of-mem.md) | 220 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `theorem` | [pmap_eq_self](declarations/pmap-eq-self.md) | 227 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `theorem` | [getElem?_pmap](declarations/getelem-pmap-source-edition-2.md) | 233 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `theorem` | [getElem_pmap](declarations/getelem-pmap.md) | 240 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `theorem` | [getElem?_attachWith](declarations/getelem-attachwith-source-edition-2.md) | 247 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `theorem` | [getElem?_attach](declarations/getelem-attach.md) | 252 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `theorem` | [getElem_attachWith](declarations/getelem-attachwith.md) | 257 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `theorem` | [getElem_attach](declarations/getelem-attach-source-edition-2.md) | 263 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `theorem` | [pmap_attach](declarations/pmap-attach.md) | 267 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `theorem` | [pmap_attachWith](declarations/pmap-attachwith.md) | 274 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `theorem` | [foldl_pmap](declarations/foldl-pmap.md) | 280 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `theorem` | [foldr_pmap](declarations/foldr-pmap.md) | 285 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `theorem` | [foldl_attach](declarations/foldl-attach.md) | 300 | `BLOCKED_NATIVE_ADMISSION` |
| 51 | `theorem` | [foldr_attach](declarations/foldr-attach.md) | 315 | `BLOCKED_NATIVE_ADMISSION` |
| 52 | `theorem` | [attach_map](declarations/attach-map.md) | 320 | `BLOCKED_NATIVE_ADMISSION` |
| 53 | `theorem` | [attachWith_map](declarations/attachwith-map.md) | 325 | `BLOCKED_NATIVE_ADMISSION` |
| 54 | `theorem` | [map_attachWith](declarations/map-attachwith.md) | 331 | `BLOCKED_NATIVE_ADMISSION` |
| 55 | `theorem` | [map_attachWith_eq_pmap](declarations/map-attachwith-eq-pmap.md) | 337 | `BLOCKED_NATIVE_ADMISSION` |
| 56 | `theorem` | [map_attach_eq_pmap](declarations/map-attach-eq-pmap.md) | 345 | `BLOCKED_NATIVE_ADMISSION` |
| 57 | `theorem` | [pmap_pmap](declarations/pmap-pmap.md) | 350 | `BLOCKED_NATIVE_ADMISSION` |
| 58 | `theorem` | [pmap_append](declarations/pmap-append-source-edition-2.md) | 357 | `BLOCKED_NATIVE_ADMISSION` |
| 59 | `theorem` | [pmap_append'](declarations/pmap-append.md) | 366 | `BLOCKED_NATIVE_ADMISSION` |
| 60 | `theorem` | [attach_append](declarations/attach-append.md) | 372 | `BLOCKED_NATIVE_ADMISSION` |
| 61 | `theorem` | [attachWith_append](declarations/attachwith-append.md) | 382 | `BLOCKED_NATIVE_ADMISSION` |
| 62 | `theorem` | [pmap_reverse](declarations/pmap-reverse.md) | 388 | `BLOCKED_NATIVE_ADMISSION` |
| 63 | `theorem` | [reverse_pmap](declarations/reverse-pmap.md) | 393 | `BLOCKED_NATIVE_ADMISSION` |
| 64 | `theorem` | [attachWith_reverse](declarations/attachwith-reverse.md) | 398 | `BLOCKED_NATIVE_ADMISSION` |
| 65 | `theorem` | [reverse_attachWith](declarations/reverse-attachwith.md) | 405 | `BLOCKED_NATIVE_ADMISSION` |
| 66 | `theorem` | [attach_reverse](declarations/attach-reverse.md) | 411 | `BLOCKED_NATIVE_ADMISSION` |
| 67 | `theorem` | [reverse_attach](declarations/reverse-attach.md) | 417 | `BLOCKED_NATIVE_ADMISSION` |
| 68 | `theorem` | [back?_pmap](declarations/back-pmap.md) | 422 | `BLOCKED_NATIVE_ADMISSION` |
| 69 | `theorem` | [back?_attachWith](declarations/back-attachwith.md) | 428 | `BLOCKED_NATIVE_ADMISSION` |
| 70 | `theorem` | [back?_attach](declarations/back-attach.md) | 435 | `BLOCKED_NATIVE_ADMISSION` |
| 71 | `theorem` | [countP_attach](declarations/countp-attach.md) | 441 | `BLOCKED_NATIVE_ADMISSION` |
| 72 | `theorem` | [countP_attachWith](declarations/countp-attachwith.md) | 447 | `BLOCKED_NATIVE_ADMISSION` |
| 73 | `theorem` | [count_attach](declarations/count-attach.md) | 453 | `BLOCKED_NATIVE_ADMISSION` |
| 74 | `theorem` | [count_attachWith](declarations/count-attachwith.md) | 459 | `BLOCKED_NATIVE_ADMISSION` |
| 75 | `theorem` | [countP_pmap](declarations/countp-pmap.md) | 464 | `BLOCKED_NATIVE_ADMISSION` |
| 76 | `def` | [unattach](declarations/unattach.md) | 489 | `BLOCKED_NATIVE_ADMISSION` |
| 77 | `theorem` | [unattach_empty](declarations/unattach-empty.md) | 491 | `BLOCKED_NATIVE_ADMISSION` |
| 78 | `theorem` | [unattach_push](declarations/unattach-push.md) | 493 | `BLOCKED_NATIVE_ADMISSION` |
| 79 | `theorem` | [mem_unattach](declarations/mem-unattach.md) | 497 | `BLOCKED_NATIVE_ADMISSION` |
| 80 | `theorem` | [unattach_mk](declarations/unattach-mk.md) | 501 | `BLOCKED_NATIVE_ADMISSION` |
| 81 | `theorem` | [toArray_unattach](declarations/toarray-unattach.md) | 505 | `BLOCKED_NATIVE_ADMISSION` |
| 82 | `theorem` | [toList_unattach](declarations/tolist-unattach.md) | 509 | `BLOCKED_NATIVE_ADMISSION` |
| 83 | `theorem` | [unattach_attach](declarations/unattach-attach.md) | 514 | `BLOCKED_NATIVE_ADMISSION` |
| 84 | `theorem` | [unattach_attachWith](declarations/unattach-attachwith.md) | 518 | `BLOCKED_NATIVE_ADMISSION` |
| 85 | `theorem` | [getElem?_unattach](declarations/getelem-unattach.md) | 524 | `BLOCKED_NATIVE_ADMISSION` |
| 86 | `theorem` | [getElem_unattach](declarations/getelem-unattach-source-edition-2.md) | 528 | `BLOCKED_NATIVE_ADMISSION` |
| 87 | `theorem` | [foldl_subtype](declarations/foldl-subtype.md) | 539 | `BLOCKED_NATIVE_ADMISSION` |
| 88 | `theorem` | [foldr_subtype](declarations/foldr-subtype.md) | 550 | `BLOCKED_NATIVE_ADMISSION` |
| 89 | `theorem` | [map_subtype](declarations/map-subtype.md) | 561 | `BLOCKED_NATIVE_ADMISSION` |
| 90 | `theorem` | [findSome?_subtype](declarations/findsome-subtype.md) | 567 | `BLOCKED_NATIVE_ADMISSION` |
| 91 | `theorem` | [find?_subtype](declarations/find-subtype.md) | 574 | `BLOCKED_NATIVE_ADMISSION` |
| 92 | `theorem` | [all_subtype](declarations/all-subtype.md) | 581 | `BLOCKED_NATIVE_ADMISSION` |
| 93 | `theorem` | [any_subtype](declarations/any-subtype.md) | 587 | `BLOCKED_NATIVE_ADMISSION` |
| 94 | `theorem` | [unattach_reverse](declarations/unattach-reverse.md) | 595 | `BLOCKED_NATIVE_ADMISSION` |
| 95 | `theorem` | [unattach_append](declarations/unattach-append.md) | 601 | `BLOCKED_NATIVE_ADMISSION` |
| 96 | `theorem` | [unattach_flatten](declarations/unattach-flatten.md) | 608 | `BLOCKED_NATIVE_ADMISSION` |
| 97 | `theorem` | [unattach_replicate](declarations/unattach-replicate.md) | 618 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=78bee256ff2f3d848b32caf6a21a97b1af155e8f31e556a569690e0bd918686a -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Attach/Variant82afff6f506671c02863b791afa3df5cdec9802d1ed2a4cbd86a6d442301775e.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
