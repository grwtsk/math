# Hausdorff Distance Public

[Complete source index](../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**115 observed declarations and anonymous commands**, 111 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Topology/MetricTopology/HausdorffDistance/Variant9bdca849e0d34aee7a027af90d5d0fc5ba04b9a0742ed2c882ed577904fe41f9.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `89edc72a5118131c9c67c870bc66510d8f158e9a`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../_verification/specifications/GeneralTopology/HausdorffDistancePublic.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [infEDist](declarations/infedist.md) | 76 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `theorem` | [infEDist_empty](declarations/infedist-empty.md) | 80 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `theorem` | [le_infEDist](declarations/le-infedist.md) | 83 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `theorem` | [infEDist_union](declarations/infedist-union.md) | 88 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [infEDist_iUnion](declarations/infedist-iunion.md) | 92 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `lemma` | [infEDist_biUnion](declarations/infedist-biunion.md) | 95 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [infEDist_singleton](declarations/infedist-singleton.md) | 100 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [infEDist_le_edist_of_mem](declarations/infedist-le-edist-of-mem.md) | 104 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [infEDist_zero_of_mem](declarations/infedist-zero-of-mem.md) | 108 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [infEDist_anti](declarations/infedist-anti.md) | 113 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [infEDist_lt_iff](declarations/infedist-lt-iff.md) | 117 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [infEDist_le_infEDist_add_edist](declarations/infedist-le-infedist-add-edist.md) | 122 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [infEDist_le_edist_add_infEDist](declarations/infedist-le-edist-add-infedist.md) | 128 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [edist_le_infEDist_add_ediam](declarations/edist-le-infedist-add-ediam.md) | 132 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [continuous_infEDist](declarations/continuous-infedist.md) | 141 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [infEDist_closure](declarations/infedist-closure.md) | 146 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [mem_closure_iff_infEDist_zero](declarations/mem-closure-iff-infedist-zero.md) | 162 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [mem_iff_infEDist_zero_of_closed](declarations/mem-iff-infedist-zero-of-closed.md) | 170 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [infEDist_pos_iff_notMem_closure](declarations/infedist-pos-iff-notmem-closure.md) | 175 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [infEDist_closure_pos_iff_notMem_closure](declarations/infedist-closure-pos-iff-notmem-closure.md) | 179 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [exists_real_pos_lt_infEDist_of_notMem_closure](declarations/exists-real-pos-lt-infedist-of-notmem-closure.md) | 183 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [disjoint_closedEBall_of_lt_infEDist](declarations/disjoint-closedeball-of-lt-infedist.md) | 189 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [infEDist_image](declarations/infedist-image.md) | 200 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [infEDist_smul](declarations/infedist-smul.md) | 204 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [_root_.IsOpen.exists_iUnion_isClosed](declarations/root-isopen-exists-iunion-isclosed.md) | 208 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [_root_.IsCompact.exists_infEDist_eq_edist](declarations/root-iscompact-exists-infedist-eq-edist.md) | 232 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [exists_pos_forall_lt_edist](declarations/exists-pos-forall-lt-edist.md) | 238 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [infEDist_prod](declarations/infedist-prod.md) | 249 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [hausdorffEDist_self](declarations/hausdorffedist-self.md) | 269 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [hausdorffEDist_comm](declarations/hausdorffedist-comm.md) | 274 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [hausdorffEDist_le_of_infEDist](declarations/hausdorffedist-le-of-infedist.md) | 279 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [hausdorffEDist_le_of_mem_edist](declarations/hausdorffedist-le-of-mem-edist.md) | 286 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [infEDist_le_hausdorffEDist_of_mem](declarations/infedist-le-hausdorffedist-of-mem.md) | 295 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [exists_edist_lt_of_hausdorffEDist_lt](declarations/exists-edist-lt-of-hausdorffedist-lt.md) | 302 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `theorem` | [infEDist_le_infEDist_add_hausdorffEDist](declarations/infedist-le-infedist-add-hausdorffedist.md) | 311 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `theorem` | [hausdorffEDist_image](declarations/hausdorffedist-image.md) | 330 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `theorem` | [hausdorffEDist_le_ediam](declarations/hausdorffedist-le-ediam.md) | 335 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `theorem` | [hausdorffEDist_triangle](declarations/hausdorffedist-triangle.md) | 346 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `theorem` | [hausdorffEDist_zero_iff_closure_eq_closure](declarations/hausdorffedist-zero-iff-closure-eq-closure.md) | 365 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `theorem` | [hausdorffEDist_self_closure](declarations/hausdorffedist-self-closure.md) | 372 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `theorem` | [hausdorffEDist_closure_left](declarations/hausdorffedist-closure-left.md) | 377 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `theorem` | [hausdorffEDist_closure_right](declarations/hausdorffedist-closure-right.md) | 388 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `theorem` | [hausdorffEDist_closure](declarations/hausdorffedist-closure.md) | 392 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `theorem` | [_root_.IsClosed.hausdorffEDist_zero_iff](declarations/root-isclosed-hausdorffedist-zero-iff.md) | 396 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `theorem` | [hausdorffEDist_empty](declarations/hausdorffedist-empty.md) | 401 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `theorem` | [nonempty_of_hausdorffEDist_ne_top](declarations/nonempty-of-hausdorffedist-ne-top.md) | 407 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `theorem` | [empty_or_nonempty_of_hausdorffEDist_ne_top](declarations/empty-or-nonempty-of-hausdorffedist-ne-top.md) | 411 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `theorem` | [hausdorffEDist_singleton](declarations/hausdorffedist-singleton.md) | 421 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `theorem` | [hausdorffEDist_iUnion_le](declarations/hausdorffedist-iunion-le.md) | 426 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `theorem` | [hausdorffEDist_union_le](declarations/hausdorffedist-union-le.md) | 433 | `BLOCKED_NATIVE_ADMISSION` |
| 51 | `theorem` | [hausdorffEDist_prod_le](declarations/hausdorffedist-prod-le.md) | 438 | `BLOCKED_NATIVE_ADMISSION` |
| 52 | `def` | [infDist](declarations/infdist.md) | 463 | `BLOCKED_NATIVE_ADMISSION` |
| 53 | `theorem` | [infDist_eq_iInf](declarations/infdist-eq-iinf.md) | 466 | `BLOCKED_NATIVE_ADMISSION` |
| 54 | `theorem` | [infDist_nonneg](declarations/infdist-nonneg.md) | 472 | `BLOCKED_NATIVE_ADMISSION` |
| 55 | `theorem` | [infDist_empty](declarations/infdist-empty.md) | 477 | `BLOCKED_NATIVE_ADMISSION` |
| 56 | `lemma` | [isGLB_infDist](declarations/isglb-infdist.md) | 479 | `BLOCKED_NATIVE_ADMISSION` |
| 57 | `theorem` | [infEDist_ne_top](declarations/infedist-ne-top.md) | 484 | `BLOCKED_NATIVE_ADMISSION` |
| 58 | `theorem` | [infEDist_eq_top_iff](declarations/infedist-eq-top-iff.md) | 489 | `BLOCKED_NATIVE_ADMISSION` |
| 59 | `theorem` | [infDist_zero_of_mem](declarations/infdist-zero-of-mem.md) | 493 | `BLOCKED_NATIVE_ADMISSION` |
| 60 | `theorem` | [infDist_singleton](declarations/infdist-singleton.md) | 498 | `BLOCKED_NATIVE_ADMISSION` |
| 61 | `theorem` | [infDist_le_dist_of_mem](declarations/infdist-le-dist-of-mem.md) | 501 | `BLOCKED_NATIVE_ADMISSION` |
| 62 | `theorem` | [infDist_le_infDist_of_subset](declarations/infdist-le-infdist-of-subset.md) | 506 | `BLOCKED_NATIVE_ADMISSION` |
| 63 | `lemma` | [le_infDist](declarations/le-infdist.md) | 509 | `BLOCKED_NATIVE_ADMISSION` |
| 64 | `theorem` | [infDist_lt_iff](declarations/infdist-lt-iff.md) | 514 | `BLOCKED_NATIVE_ADMISSION` |
| 65 | `theorem` | [infDist_le_infDist_add_dist](declarations/infdist-le-infdist-add-dist.md) | 519 | `BLOCKED_NATIVE_ADMISSION` |
| 66 | `theorem` | [notMem_of_dist_lt_infDist](declarations/notmem-of-dist-lt-infdist.md) | 524 | `BLOCKED_NATIVE_ADMISSION` |
| 67 | `theorem` | [disjoint_ball_infDist](declarations/disjoint-ball-infdist.md) | 527 | `BLOCKED_NATIVE_ADMISSION` |
| 68 | `theorem` | [ball_infDist_subset_compl](declarations/ball-infdist-subset-compl.md) | 530 | `BLOCKED_NATIVE_ADMISSION` |
| 69 | `theorem` | [ball_infDist_compl_subset](declarations/ball-infdist-compl-subset.md) | 533 | `BLOCKED_NATIVE_ADMISSION` |
| 70 | `theorem` | [disjoint_closedBall_of_lt_infDist](declarations/disjoint-closedball-of-lt-infdist.md) | 536 | `BLOCKED_NATIVE_ADMISSION` |
| 71 | `theorem` | [dist_le_infDist_add_diam](declarations/dist-le-infdist-add-diam.md) | 540 | `BLOCKED_NATIVE_ADMISSION` |
| 72 | `theorem` | [lipschitz_infDist_pt](declarations/lipschitz-infdist-pt.md) | 548 | `BLOCKED_NATIVE_ADMISSION` |
| 73 | `theorem` | [uniformContinuous_infDist_pt](declarations/uniformcontinuous-infdist-pt.md) | 552 | `BLOCKED_NATIVE_ADMISSION` |
| 74 | `theorem` | [continuous_infDist_pt](declarations/continuous-infdist-pt.md) | 557 | `BLOCKED_NATIVE_ADMISSION` |
| 75 | `theorem` | [infDist_closure](declarations/infdist-closure.md) | 563 | `BLOCKED_NATIVE_ADMISSION` |
| 76 | `theorem` | [infDist_zero_of_mem_closure](declarations/infdist-zero-of-mem-closure.md) | 568 | `BLOCKED_NATIVE_ADMISSION` |
| 77 | `theorem` | [mem_closure_iff_infDist_zero](declarations/mem-closure-iff-infdist-zero.md) | 573 | `BLOCKED_NATIVE_ADMISSION` |
| 78 | `theorem` | [infDist_pos_iff_notMem_closure](declarations/infdist-pos-iff-notmem-closure.md) | 576 | `BLOCKED_NATIVE_ADMISSION` |
| 79 | `theorem` | [_root_.IsClosed.mem_iff_infDist_zero](declarations/root-isclosed-mem-iff-infdist-zero.md) | 581 | `BLOCKED_NATIVE_ADMISSION` |
| 80 | `theorem` | [_root_.IsClosed.notMem_iff_infDist_pos](declarations/root-isclosed-notmem-iff-infdist-pos.md) | 585 | `BLOCKED_NATIVE_ADMISSION` |
| 81 | `theorem` | [continuousAt_inv_infDist_pt](declarations/continuousat-inv-infdist-pt.md) | 589 | `BLOCKED_NATIVE_ADMISSION` |
| 82 | `theorem` | [infDist_image](declarations/infdist-image.md) | 597 | `BLOCKED_NATIVE_ADMISSION` |
| 83 | `theorem` | [infDist_inter_closedBall_of_mem](declarations/infdist-inter-closedball-of-mem.md) | 600 | `BLOCKED_NATIVE_ADMISSION` |
| 84 | `theorem` | [_root_.IsCompact.exists_infDist_eq_dist](declarations/root-iscompact-exists-infdist-eq-dist.md) | 611 | `BLOCKED_NATIVE_ADMISSION` |
| 85 | `theorem` | [_root_.IsClosed.exists_infDist_eq_dist](declarations/root-isclosed-exists-infdist-eq-dist.md) | 616 | `BLOCKED_NATIVE_ADMISSION` |
| 86 | `theorem` | [exists_mem_closure_infDist_eq_dist](declarations/exists-mem-closure-infdist-eq-dist.md) | 626 | `BLOCKED_NATIVE_ADMISSION` |
| 87 | `def` | [infNndist](declarations/infnndist.md) | 633 | `BLOCKED_NATIVE_ADMISSION` |
| 88 | `theorem` | [coe_infNndist](declarations/coe-infnndist.md) | 637 | `BLOCKED_NATIVE_ADMISSION` |
| 89 | `theorem` | [lipschitz_infNndist_pt](declarations/lipschitz-infnndist-pt.md) | 641 | `BLOCKED_NATIVE_ADMISSION` |
| 90 | `theorem` | [uniformContinuous_infNndist_pt](declarations/uniformcontinuous-infnndist-pt.md) | 645 | `BLOCKED_NATIVE_ADMISSION` |
| 91 | `theorem` | [continuous_infNndist_pt](declarations/continuous-infnndist-pt.md) | 650 | `BLOCKED_NATIVE_ADMISSION` |
| 92 | `def` | [hausdorffDist](declarations/hausdorffdist.md) | 658 | `BLOCKED_NATIVE_ADMISSION` |
| 93 | `theorem` | [hausdorffDist_nonneg](declarations/hausdorffdist-nonneg.md) | 662 | `BLOCKED_NATIVE_ADMISSION` |
| 94 | `theorem` | [hausdorffEDist_ne_top_of_nonempty_of_bounded](declarations/hausdorffedist-ne-top-of-nonempty-of-bounded.md) | 666 | `BLOCKED_NATIVE_ADMISSION` |
| 95 | `theorem` | [hausdorffDist_self_zero](declarations/hausdorffdist-self-zero.md) | 688 | `BLOCKED_NATIVE_ADMISSION` |
| 96 | `theorem` | [hausdorffDist_comm](declarations/hausdorffdist-comm.md) | 691 | `BLOCKED_NATIVE_ADMISSION` |
| 97 | `theorem` | [hausdorffDist_empty](declarations/hausdorffdist-empty-source-edition-2.md) | 697 | `BLOCKED_NATIVE_ADMISSION` |
| 98 | `theorem` | [hausdorffDist_empty'](declarations/hausdorffdist-empty.md) | 705 | `BLOCKED_NATIVE_ADMISSION` |
| 99 | `theorem` | [hausdorffDist_le_of_infDist](declarations/hausdorffdist-le-of-infdist.md) | 709 | `BLOCKED_NATIVE_ADMISSION` |
| 100 | `theorem` | [hausdorffDist_le_of_mem_dist](declarations/hausdorffdist-le-of-mem-dist.md) | 723 | `BLOCKED_NATIVE_ADMISSION` |
| 101 | `theorem` | [hausdorffDist_le_diam](declarations/hausdorffdist-le-diam.md) | 734 | `BLOCKED_NATIVE_ADMISSION` |
| 102 | `theorem` | [infDist_le_hausdorffDist_of_mem](declarations/infdist-le-hausdorffdist-of-mem.md) | 745 | `BLOCKED_NATIVE_ADMISSION` |
| 103 | `theorem` | [exists_dist_lt_of_hausdorffDist_lt](declarations/exists-dist-lt-of-hausdorffdist-lt-source-edition-2.md) | 751 | `BLOCKED_NATIVE_ADMISSION` |
| 104 | `theorem` | [exists_dist_lt_of_hausdorffDist_lt'](declarations/exists-dist-lt-of-hausdorffdist-lt.md) | 763 | `BLOCKED_NATIVE_ADMISSION` |
| 105 | `theorem` | [infDist_le_infDist_add_hausdorffDist](declarations/infdist-le-infdist-add-hausdorffdist.md) | 771 | `BLOCKED_NATIVE_ADMISSION` |
| 106 | `theorem` | [hausdorffDist_image](declarations/hausdorffdist-image.md) | 779 | `BLOCKED_NATIVE_ADMISSION` |
| 107 | `theorem` | [hausdorffDist_triangle](declarations/hausdorffdist-triangle.md) | 784 | `BLOCKED_NATIVE_ADMISSION` |
| 108 | `theorem` | [hausdorffDist_triangle'](declarations/hausdorffdist-triangle-source-edition-2.md) | 791 | `BLOCKED_NATIVE_ADMISSION` |
| 109 | `theorem` | [hausdorffDist_self_closure](declarations/hausdorffdist-self-closure.md) | 800 | `BLOCKED_NATIVE_ADMISSION` |
| 110 | `theorem` | [hausdorffDist_closure₁](declarations/hausdorffdist-closure-source-edition-3.md) | 804 | `BLOCKED_NATIVE_ADMISSION` |
| 111 | `theorem` | [hausdorffDist_closure₂](declarations/hausdorffdist-closure.md) | 809 | `BLOCKED_NATIVE_ADMISSION` |
| 112 | `theorem` | [hausdorffDist_closure](declarations/hausdorffdist-closure-source-edition-2.md) | 813 | `BLOCKED_NATIVE_ADMISSION` |
| 113 | `theorem` | [hausdorffDist_zero_iff_closure_eq_closure](declarations/hausdorffdist-zero-iff-closure-eq-closure.md) | 817 | `BLOCKED_NATIVE_ADMISSION` |
| 114 | `theorem` | [_root_.IsClosed.hausdorffDist_zero_iff_eq](declarations/root-isclosed-hausdorffdist-zero-iff-eq.md) | 823 | `BLOCKED_NATIVE_ADMISSION` |
| 115 | `theorem` | [hausdorffDist_singleton](declarations/hausdorffdist-singleton.md) | 829 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=b5e9810370f3a878f06fe8b2ee4ede70552c8a6981f120337f4905789bdca00e -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/MetricTopology/HausdorffDistance/Variant9bdca849e0d34aee7a027af90d5d0fc5ba04b9a0742ed2c882ed577904fe41f9.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
