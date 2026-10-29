# Min Max On Namespaced Public

[Complete source index](../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**85 observed declarations and anonymous commands**, 81 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MinMaxOn/Variant548b6aa26ca95512f96ca342b5b935f366ca8bea62c9e348a86e280d334461e1.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `754c0cb264c28c348c963f6638e17a94732026d9`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/ComputerScience/AlgorithmsInComputerScience/MinMaxOnNamespacedPublic.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [minOn](declarations/minon-source-edition-2.md) | 48 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `def` | [maxOn](declarations/maxon.md) | 61 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `def` | [minOn?](declarations/minon.md) | 75 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `def` | [maxOn?](declarations/maxon-source-edition-2.md) | 90 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [minOn_singleton](declarations/minon-singleton.md) | 97 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [minOn_cons](declarations/minon-cons.md) | 101 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [minOn_cons_cons](declarations/minon-cons-cons.md) | 110 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [minOn_cons_cons_nil](declarations/minon-cons-cons-nil.md) | 115 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [minOn_id](declarations/minon-id-source-edition-2.md) | 120 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [minOn_mem](declarations/minon-mem.md) | 129 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [apply_minOn_le_of_mem](declarations/apply-minon-le-of-mem.md) | 142 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [le_apply_minOn_iff](declarations/le-apply-minon-iff.md) | 161 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [apply_minOn_le_iff](declarations/apply-minon-le-iff.md) | 172 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [lt_apply_minOn_iff](declarations/lt-apply-minon-iff.md) | 194 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [apply_minOn_lt_iff](declarations/apply-minon-lt-iff.md) | 200 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [apply_minOn_le_apply_minOn_of_subset](declarations/apply-minon-le-apply-minon-of-subset.md) | 206 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [le_apply_minOn_take](declarations/le-apply-minon-take.md) | 214 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [apply_minOn_append_le_left](declarations/apply-minon-append-le-left.md) | 220 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [apply_minOn_append_le_right](declarations/apply-minon-append-le-right.md) | 227 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [minOn_append](declarations/minon-append-source-edition-2.md) | 235 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [minOn_eq_head](declarations/minon-eq-head.md) | 241 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [min_map](declarations/min-map.md) | 252 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [minOn_eq_min](declarations/minon-eq-min.md) | 262 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [min_map_eq_min](declarations/min-map-eq-min.md) | 276 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [minOn_replicate](declarations/minon-replicate.md) | 283 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [maxOn_eq_minOn](declarations/maxon-eq-minon-source-edition-2.md) | 294 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [maxOn_singleton](declarations/maxon-singleton.md) | 299 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [maxOn_cons](declarations/maxon-cons-source-edition-2.md) | 303 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [maxOn_cons_cons](declarations/maxon-cons-cons.md) | 311 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [maxOn_cons_cons_nil](declarations/maxon-cons-cons-nil.md) | 318 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [min_eq_max](declarations/min-eq-max.md) | 322 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [max_eq_min](declarations/max-eq-min.md) | 328 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [max?_eq_min?](declarations/max-eq-min-source-edition-2.md) | 334 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [maxOn_id](declarations/maxon-id.md) | 341 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `theorem` | [maxOn_mem](declarations/maxon-mem.md) | 350 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `theorem` | [le_apply_maxOn_of_mem](declarations/le-apply-maxon-of-mem.md) | 355 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `theorem` | [apply_maxOn_le_iff](declarations/apply-maxon-le-iff.md) | 362 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `theorem` | [le_apply_maxOn_iff](declarations/le-apply-maxon-iff.md) | 369 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `theorem` | [apply_maxOn_lt_iff](declarations/apply-maxon-lt-iff.md) | 376 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `theorem` | [lt_apply_maxOn_iff](declarations/lt-apply-maxon-iff.md) | 384 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `theorem` | [apply_maxOn_le_apply_maxOn_of_subset](declarations/apply-maxon-le-apply-maxon-of-subset.md) | 392 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `theorem` | [apply_maxOn_take_le](declarations/apply-maxon-take-le.md) | 400 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `theorem` | [le_apply_maxOn_append_left](declarations/le-apply-maxon-append-left.md) | 407 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `theorem` | [le_apply_maxOn_append_right](declarations/le-apply-maxon-append-right.md) | 415 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `theorem` | [maxOn_append](declarations/maxon-append.md) | 424 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `theorem` | [maxOn_eq_head](declarations/maxon-eq-head.md) | 431 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `theorem` | [max_map](declarations/max-map.md) | 438 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `theorem` | [maxOn_eq_max](declarations/maxon-eq-max.md) | 445 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `theorem` | [max_map_eq_max](declarations/max-map-eq-max.md) | 459 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `theorem` | [maxOn_replicate](declarations/maxon-replicate-source-edition-2.md) | 466 | `BLOCKED_NATIVE_ADMISSION` |
| 51 | `theorem` | [minOn?_nil](declarations/minon-nil.md) | 476 | `BLOCKED_NATIVE_ADMISSION` |
| 52 | `theorem` | [minOn?_cons_eq_some_minOn](declarations/minon-cons-eq-some-minon.md) | 480 | `BLOCKED_NATIVE_ADMISSION` |
| 53 | `theorem` | [minOn?_cons](declarations/minon-cons-source-edition-2.md) | 485 | `BLOCKED_NATIVE_ADMISSION` |
| 54 | `theorem` | [minOn?_singleton](declarations/minon-singleton-source-edition-2.md) | 492 | `BLOCKED_NATIVE_ADMISSION` |
| 55 | `theorem` | [minOn?_id](declarations/minon-id.md) | 497 | `BLOCKED_NATIVE_ADMISSION` |
| 56 | `theorem` | [minOn?_eq_if](declarations/minon-eq-if.md) | 503 | `BLOCKED_NATIVE_ADMISSION` |
| 57 | `theorem` | [isSome_minOn?_iff](declarations/issome-minon-iff.md) | 513 | `BLOCKED_NATIVE_ADMISSION` |
| 58 | `theorem` | [minOn_eq_get_minOn?](declarations/minon-eq-get-minon.md) | 517 | `BLOCKED_NATIVE_ADMISSION` |
| 59 | `theorem` | [minOn?_eq_some_minOn](declarations/minon-eq-some-minon.md) | 523 | `BLOCKED_NATIVE_ADMISSION` |
| 60 | `theorem` | [get_minOn?](declarations/get-minon.md) | 528 | `BLOCKED_NATIVE_ADMISSION` |
| 61 | `theorem` | [minOn_eq_of_minOn?_eq_some](declarations/minon-eq-of-minon-eq-some.md) | 532 | `BLOCKED_NATIVE_ADMISSION` |
| 62 | `theorem` | [isSome_minOn?_of_mem](declarations/issome-minon-of-mem.md) | 538 | `BLOCKED_NATIVE_ADMISSION` |
| 63 | `theorem` | [apply_get_minOn?_le_of_mem](declarations/apply-get-minon-le-of-mem.md) | 544 | `BLOCKED_NATIVE_ADMISSION` |
| 64 | `theorem` | [minOn?_mem](declarations/minon-mem-source-edition-2.md) | 550 | `BLOCKED_NATIVE_ADMISSION` |
| 65 | `theorem` | [minOn?_replicate](declarations/minon-replicate-source-edition-2.md) | 555 | `BLOCKED_NATIVE_ADMISSION` |
| 66 | `theorem` | [minOn?_replicate_of_pos](declarations/minon-replicate-of-pos.md) | 564 | `BLOCKED_NATIVE_ADMISSION` |
| 67 | `theorem` | [minOn?_append](declarations/minon-append.md) | 570 | `BLOCKED_NATIVE_ADMISSION` |
| 68 | `theorem` | [maxOn?_eq_minOn?](declarations/maxon-eq-minon.md) | 578 | `BLOCKED_NATIVE_ADMISSION` |
| 69 | `theorem` | [maxOn?_nil](declarations/maxon-nil.md) | 583 | `BLOCKED_NATIVE_ADMISSION` |
| 70 | `theorem` | [maxOn?_cons_eq_some_maxOn](declarations/maxon-cons-eq-some-maxon.md) | 587 | `BLOCKED_NATIVE_ADMISSION` |
| 71 | `theorem` | [maxOn?_cons](declarations/maxon-cons.md) | 593 | `BLOCKED_NATIVE_ADMISSION` |
| 72 | `theorem` | [maxOn?_singleton](declarations/maxon-singleton-source-edition-2.md) | 603 | `BLOCKED_NATIVE_ADMISSION` |
| 73 | `theorem` | [maxOn?_id](declarations/maxon-id-source-edition-2.md) | 608 | `BLOCKED_NATIVE_ADMISSION` |
| 74 | `theorem` | [maxOn?_eq_if](declarations/maxon-eq-if.md) | 614 | `BLOCKED_NATIVE_ADMISSION` |
| 75 | `theorem` | [isSome_maxOn?_iff](declarations/issome-maxon-iff.md) | 625 | `BLOCKED_NATIVE_ADMISSION` |
| 76 | `theorem` | [maxOn_eq_get_maxOn?](declarations/maxon-eq-get-maxon.md) | 629 | `BLOCKED_NATIVE_ADMISSION` |
| 77 | `theorem` | [maxOn?_eq_some_maxOn](declarations/maxon-eq-some-maxon.md) | 634 | `BLOCKED_NATIVE_ADMISSION` |
| 78 | `theorem` | [get_maxOn?](declarations/get-maxon.md) | 640 | `BLOCKED_NATIVE_ADMISSION` |
| 79 | `theorem` | [maxOn_eq_of_maxOn?_eq_some](declarations/maxon-eq-of-maxon-eq-some.md) | 645 | `BLOCKED_NATIVE_ADMISSION` |
| 80 | `theorem` | [isSome_maxOn?_of_mem](declarations/issome-maxon-of-mem.md) | 651 | `BLOCKED_NATIVE_ADMISSION` |
| 81 | `theorem` | [le_apply_get_maxOn?_of_mem](declarations/le-apply-get-maxon-of-mem.md) | 657 | `BLOCKED_NATIVE_ADMISSION` |
| 82 | `theorem` | [maxOn?_mem](declarations/maxon-mem-source-edition-2.md) | 664 | `BLOCKED_NATIVE_ADMISSION` |
| 83 | `theorem` | [maxOn?_replicate](declarations/maxon-replicate.md) | 669 | `BLOCKED_NATIVE_ADMISSION` |
| 84 | `theorem` | [maxOn?_replicate_of_pos](declarations/maxon-replicate-of-pos.md) | 676 | `BLOCKED_NATIVE_ADMISSION` |
| 85 | `theorem` | [maxOn?_append](declarations/maxon-append-source-edition-2.md) | 683 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=cd7d50dcd522e0863b71aa81f1e3eff2e8b890258f4902f6c8b894dc244dc5e1 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MinMaxOn/Variant548b6aa26ca95512f96ca342b5b935f366ca8bea62c9e348a86e280d334461e1.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
