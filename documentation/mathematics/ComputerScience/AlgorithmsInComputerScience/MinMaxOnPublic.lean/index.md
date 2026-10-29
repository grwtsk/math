# Min Max On Public

[Complete source index](../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**85 observed declarations and anonymous commands**, 81 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MinMaxOn/Variant485d71fb6212d467fa587d9bd9d851338d90f9078c2dcb3f0050fb2dee3dc21e.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `82aef7eb4e2a0fb032cef44ac17e79d709842ee3`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/ComputerScience/AlgorithmsInComputerScience/MinMaxOnPublic.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [minOn](declarations/minon.md) | 40 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `def` | [maxOn](declarations/maxon.md) | 53 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `def` | [minOn?](declarations/minon-source-edition-2.md) | 67 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `def` | [maxOn?](declarations/maxon-source-edition-2.md) | 82 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [minOn_singleton](declarations/minon-singleton-source-edition-2.md) | 89 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [minOn_cons](declarations/minon-cons.md) | 93 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [minOn_cons_cons](declarations/minon-cons-cons.md) | 102 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [minOn_cons_cons_nil](declarations/minon-cons-cons-nil.md) | 107 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [minOn_id](declarations/minon-id-source-edition-2.md) | 112 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [minOn_mem](declarations/minon-mem-source-edition-2.md) | 121 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [apply_minOn_le_of_mem](declarations/apply-minon-le-of-mem.md) | 134 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [le_apply_minOn_iff](declarations/le-apply-minon-iff.md) | 153 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [apply_minOn_le_iff](declarations/apply-minon-le-iff.md) | 164 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [lt_apply_minOn_iff](declarations/lt-apply-minon-iff.md) | 186 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [apply_minOn_lt_iff](declarations/apply-minon-lt-iff.md) | 192 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [apply_minOn_le_apply_minOn_of_subset](declarations/apply-minon-le-apply-minon-of-subset.md) | 198 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [le_apply_minOn_take](declarations/le-apply-minon-take.md) | 206 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [apply_minOn_append_le_left](declarations/apply-minon-append-le-left.md) | 212 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [apply_minOn_append_le_right](declarations/apply-minon-append-le-right.md) | 219 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [minOn_append](declarations/minon-append.md) | 227 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [minOn_eq_head](declarations/minon-eq-head.md) | 233 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [min_map](declarations/min-map.md) | 244 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [minOn_eq_min](declarations/minon-eq-min.md) | 254 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [min_map_eq_min](declarations/min-map-eq-min.md) | 268 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [minOn_replicate](declarations/minon-replicate.md) | 275 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [maxOn_eq_minOn](declarations/maxon-eq-minon.md) | 286 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [maxOn_singleton](declarations/maxon-singleton-source-edition-2.md) | 291 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [maxOn_cons](declarations/maxon-cons.md) | 295 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [maxOn_cons_cons](declarations/maxon-cons-cons.md) | 303 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [maxOn_cons_cons_nil](declarations/maxon-cons-cons-nil.md) | 310 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [min_eq_max](declarations/min-eq-max.md) | 314 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [max_eq_min](declarations/max-eq-min.md) | 320 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [max?_eq_min?](declarations/max-eq-min-source-edition-2.md) | 326 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [maxOn_id](declarations/maxon-id.md) | 333 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `theorem` | [maxOn_mem](declarations/maxon-mem-source-edition-2.md) | 342 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `theorem` | [le_apply_maxOn_of_mem](declarations/le-apply-maxon-of-mem.md) | 347 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `theorem` | [apply_maxOn_le_iff](declarations/apply-maxon-le-iff.md) | 354 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `theorem` | [le_apply_maxOn_iff](declarations/le-apply-maxon-iff.md) | 361 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `theorem` | [apply_maxOn_lt_iff](declarations/apply-maxon-lt-iff.md) | 368 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `theorem` | [lt_apply_maxOn_iff](declarations/lt-apply-maxon-iff.md) | 376 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `theorem` | [apply_maxOn_le_apply_maxOn_of_subset](declarations/apply-maxon-le-apply-maxon-of-subset.md) | 384 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `theorem` | [apply_maxOn_take_le](declarations/apply-maxon-take-le.md) | 392 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `theorem` | [le_apply_maxOn_append_left](declarations/le-apply-maxon-append-left.md) | 399 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `theorem` | [le_apply_maxOn_append_right](declarations/le-apply-maxon-append-right.md) | 407 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `theorem` | [maxOn_append](declarations/maxon-append.md) | 416 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `theorem` | [maxOn_eq_head](declarations/maxon-eq-head.md) | 423 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `theorem` | [max_map](declarations/max-map.md) | 430 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `theorem` | [maxOn_eq_max](declarations/maxon-eq-max.md) | 437 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `theorem` | [max_map_eq_max](declarations/max-map-eq-max.md) | 451 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `theorem` | [maxOn_replicate](declarations/maxon-replicate-source-edition-2.md) | 458 | `BLOCKED_NATIVE_ADMISSION` |
| 51 | `theorem` | [minOn?_nil](declarations/minon-nil.md) | 468 | `BLOCKED_NATIVE_ADMISSION` |
| 52 | `theorem` | [minOn?_cons_eq_some_minOn](declarations/minon-cons-eq-some-minon.md) | 472 | `BLOCKED_NATIVE_ADMISSION` |
| 53 | `theorem` | [minOn?_cons](declarations/minon-cons-source-edition-2.md) | 477 | `BLOCKED_NATIVE_ADMISSION` |
| 54 | `theorem` | [minOn?_singleton](declarations/minon-singleton.md) | 484 | `BLOCKED_NATIVE_ADMISSION` |
| 55 | `theorem` | [minOn?_id](declarations/minon-id.md) | 489 | `BLOCKED_NATIVE_ADMISSION` |
| 56 | `theorem` | [minOn?_eq_if](declarations/minon-eq-if.md) | 495 | `BLOCKED_NATIVE_ADMISSION` |
| 57 | `theorem` | [isSome_minOn?_iff](declarations/issome-minon-iff.md) | 505 | `BLOCKED_NATIVE_ADMISSION` |
| 58 | `theorem` | [minOn_eq_get_minOn?](declarations/minon-eq-get-minon.md) | 509 | `BLOCKED_NATIVE_ADMISSION` |
| 59 | `theorem` | [minOn?_eq_some_minOn](declarations/minon-eq-some-minon.md) | 515 | `BLOCKED_NATIVE_ADMISSION` |
| 60 | `theorem` | [get_minOn?](declarations/get-minon.md) | 520 | `BLOCKED_NATIVE_ADMISSION` |
| 61 | `theorem` | [minOn_eq_of_minOn?_eq_some](declarations/minon-eq-of-minon-eq-some.md) | 524 | `BLOCKED_NATIVE_ADMISSION` |
| 62 | `theorem` | [isSome_minOn?_of_mem](declarations/issome-minon-of-mem.md) | 530 | `BLOCKED_NATIVE_ADMISSION` |
| 63 | `theorem` | [apply_get_minOn?_le_of_mem](declarations/apply-get-minon-le-of-mem.md) | 536 | `BLOCKED_NATIVE_ADMISSION` |
| 64 | `theorem` | [minOn?_mem](declarations/minon-mem.md) | 542 | `BLOCKED_NATIVE_ADMISSION` |
| 65 | `theorem` | [minOn?_replicate](declarations/minon-replicate-source-edition-2.md) | 547 | `BLOCKED_NATIVE_ADMISSION` |
| 66 | `theorem` | [minOn?_replicate_of_pos](declarations/minon-replicate-of-pos.md) | 556 | `BLOCKED_NATIVE_ADMISSION` |
| 67 | `theorem` | [minOn?_append](declarations/minon-append-source-edition-2.md) | 562 | `BLOCKED_NATIVE_ADMISSION` |
| 68 | `theorem` | [maxOn?_eq_minOn?](declarations/maxon-eq-minon-source-edition-2.md) | 570 | `BLOCKED_NATIVE_ADMISSION` |
| 69 | `theorem` | [maxOn?_nil](declarations/maxon-nil.md) | 575 | `BLOCKED_NATIVE_ADMISSION` |
| 70 | `theorem` | [maxOn?_cons_eq_some_maxOn](declarations/maxon-cons-eq-some-maxon.md) | 579 | `BLOCKED_NATIVE_ADMISSION` |
| 71 | `theorem` | [maxOn?_cons](declarations/maxon-cons-source-edition-2.md) | 585 | `BLOCKED_NATIVE_ADMISSION` |
| 72 | `theorem` | [maxOn?_singleton](declarations/maxon-singleton.md) | 595 | `BLOCKED_NATIVE_ADMISSION` |
| 73 | `theorem` | [maxOn?_id](declarations/maxon-id-source-edition-2.md) | 600 | `BLOCKED_NATIVE_ADMISSION` |
| 74 | `theorem` | [maxOn?_eq_if](declarations/maxon-eq-if.md) | 606 | `BLOCKED_NATIVE_ADMISSION` |
| 75 | `theorem` | [isSome_maxOn?_iff](declarations/issome-maxon-iff.md) | 617 | `BLOCKED_NATIVE_ADMISSION` |
| 76 | `theorem` | [maxOn_eq_get_maxOn?](declarations/maxon-eq-get-maxon.md) | 621 | `BLOCKED_NATIVE_ADMISSION` |
| 77 | `theorem` | [maxOn?_eq_some_maxOn](declarations/maxon-eq-some-maxon.md) | 626 | `BLOCKED_NATIVE_ADMISSION` |
| 78 | `theorem` | [get_maxOn?](declarations/get-maxon.md) | 632 | `BLOCKED_NATIVE_ADMISSION` |
| 79 | `theorem` | [maxOn_eq_of_maxOn?_eq_some](declarations/maxon-eq-of-maxon-eq-some.md) | 637 | `BLOCKED_NATIVE_ADMISSION` |
| 80 | `theorem` | [isSome_maxOn?_of_mem](declarations/issome-maxon-of-mem.md) | 643 | `BLOCKED_NATIVE_ADMISSION` |
| 81 | `theorem` | [le_apply_get_maxOn?_of_mem](declarations/le-apply-get-maxon-of-mem.md) | 649 | `BLOCKED_NATIVE_ADMISSION` |
| 82 | `theorem` | [maxOn?_mem](declarations/maxon-mem.md) | 656 | `BLOCKED_NATIVE_ADMISSION` |
| 83 | `theorem` | [maxOn?_replicate](declarations/maxon-replicate.md) | 661 | `BLOCKED_NATIVE_ADMISSION` |
| 84 | `theorem` | [maxOn?_replicate_of_pos](declarations/maxon-replicate-of-pos.md) | 668 | `BLOCKED_NATIVE_ADMISSION` |
| 85 | `theorem` | [maxOn?_append](declarations/maxon-append-source-edition-2.md) | 675 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=19f26c2c1d198fea73d113a2244cc576f282c41f57c3f9eea94b8be7f3689a74 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MinMaxOn/Variant485d71fb6212d467fa587d9bd9d851338d90f9078c2dcb3f0050fb2dee3dc21e.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
