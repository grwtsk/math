# Metric Space Hausdorff Distance Hausdorff Distance Source Edition2

[Complete source index](../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**109 observed declarations and anonymous commands**, 105 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Topology/MetricTopology/HausdorffDistance/Variant353fcae8356bc524f2c1f957108ab074a9ad900b22eda4330391fc284350723c.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `650276b2d3fe6b9c2dd842477c22371b9e585bd8`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../_verification/specifications/GeneralTopology/MetricSpaceHausdorffDistanceHausdorffDistanceSourceEdition2.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [infEdist](declarations/infedist.md) | 69 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `theorem` | [infEdist_empty](declarations/infedist-empty.md) | 73 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `theorem` | [le_infEdist](declarations/le-infedist.md) | 76 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `theorem` | [infEdist_union](declarations/infedist-union.md) | 81 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [infEdist_iUnion](declarations/infedist-iunion.md) | 85 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `lemma` | [infEdist_biUnion](declarations/infedist-biunion.md) | 88 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [infEdist_singleton](declarations/infedist-singleton.md) | 93 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [infEdist_le_edist_of_mem](declarations/infedist-le-edist-of-mem.md) | 97 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [infEdist_zero_of_mem](declarations/infedist-zero-of-mem.md) | 101 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [infEdist_anti](declarations/infedist-anti.md) | 105 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [infEdist_lt_iff](declarations/infedist-lt-iff.md) | 109 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [infEdist_le_infEdist_add_edist](declarations/infedist-le-infedist-add-edist.md) | 114 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [infEdist_le_edist_add_infEdist](declarations/infedist-le-edist-add-infedist.md) | 120 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [edist_le_infEdist_add_ediam](declarations/edist-le-infedist-add-ediam.md) | 124 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [continuous_infEdist](declarations/continuous-infedist.md) | 133 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [infEdist_closure](declarations/infedist-closure.md) | 138 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [mem_closure_iff_infEdist_zero](declarations/mem-closure-iff-infedist-zero.md) | 154 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [mem_iff_infEdist_zero_of_closed](declarations/mem-iff-infedist-zero-of-closed.md) | 162 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [infEdist_pos_iff_notMem_closure](declarations/infedist-pos-iff-notmem-closure.md) | 167 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [infEdist_closure_pos_iff_notMem_closure](declarations/infedist-closure-pos-iff-notmem-closure.md) | 174 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [exists_real_pos_lt_infEdist_of_notMem_closure](declarations/exists-real-pos-lt-infedist-of-notmem-closure.md) | 181 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [disjoint_closedBall_of_lt_infEdist](declarations/disjoint-closedball-of-lt-infedist.md) | 191 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [infEdist_image](declarations/infedist-image.md) | 202 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [infEdist_smul](declarations/infedist-smul.md) | 206 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [_root_.IsOpen.exists_iUnion_isClosed](declarations/root-isopen-exists-iunion-isclosed.md) | 210 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [_root_.IsCompact.exists_infEdist_eq_edist](declarations/root-iscompact-exists-infedist-eq-edist.md) | 234 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [exists_pos_forall_lt_edist](declarations/exists-pos-forall-lt-edist.md) | 240 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [hausdorffEdist_self](declarations/hausdorffedist-self.md) | 266 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [hausdorffEdist_comm](declarations/hausdorffedist-comm.md) | 271 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [hausdorffEdist_le_of_infEdist](declarations/hausdorffedist-le-of-infedist.md) | 276 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [hausdorffEdist_le_of_mem_edist](declarations/hausdorffedist-le-of-mem-edist.md) | 283 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [infEdist_le_hausdorffEdist_of_mem](declarations/infedist-le-hausdorffedist-of-mem.md) | 292 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [exists_edist_lt_of_hausdorffEdist_lt](declarations/exists-edist-lt-of-hausdorffedist-lt.md) | 299 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [infEdist_le_infEdist_add_hausdorffEdist](declarations/infedist-le-infedist-add-hausdorffedist.md) | 308 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `theorem` | [hausdorffEdist_image](declarations/hausdorffedist-image.md) | 327 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `theorem` | [hausdorffEdist_le_ediam](declarations/hausdorffedist-le-ediam.md) | 332 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `theorem` | [hausdorffEdist_triangle](declarations/hausdorffedist-triangle.md) | 343 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `theorem` | [hausdorffEdist_zero_iff_closure_eq_closure](declarations/hausdorffedist-zero-iff-closure-eq-closure.md) | 364 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `theorem` | [hausdorffEdist_self_closure](declarations/hausdorffedist-self-closure.md) | 371 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `theorem` | [hausdorffEdist_closure₁](declarations/hausdorffedist-closure-source-edition-3.md) | 376 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `theorem` | [hausdorffEdist_closure₂](declarations/hausdorffedist-closure.md) | 387 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `theorem` | [hausdorffEdist_closure](declarations/hausdorffedist-closure-source-edition-2.md) | 391 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `theorem` | [hausdorffEdist_zero_iff_eq_of_closed](declarations/hausdorffedist-zero-iff-eq-of-closed.md) | 395 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `theorem` | [hausdorffEdist_empty](declarations/hausdorffedist-empty.md) | 400 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `theorem` | [nonempty_of_hausdorffEdist_ne_top](declarations/nonempty-of-hausdorffedist-ne-top.md) | 406 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `theorem` | [empty_or_nonempty_of_hausdorffEdist_ne_top](declarations/empty-or-nonempty-of-hausdorffedist-ne-top.md) | 410 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `def` | [infDist](declarations/infdist.md) | 442 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `theorem` | [infDist_eq_iInf](declarations/infdist-eq-iinf.md) | 445 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `theorem` | [infDist_nonneg](declarations/infdist-nonneg.md) | 451 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `theorem` | [infDist_empty](declarations/infdist-empty.md) | 456 | `BLOCKED_NATIVE_ADMISSION` |
| 51 | `lemma` | [isGLB_infDist](declarations/isglb-infdist.md) | 458 | `BLOCKED_NATIVE_ADMISSION` |
| 52 | `theorem` | [infEdist_ne_top](declarations/infedist-ne-top.md) | 463 | `BLOCKED_NATIVE_ADMISSION` |
| 53 | `theorem` | [infEdist_eq_top_iff](declarations/infedist-eq-top-iff.md) | 468 | `BLOCKED_NATIVE_ADMISSION` |
| 54 | `theorem` | [infDist_zero_of_mem](declarations/infdist-zero-of-mem.md) | 472 | `BLOCKED_NATIVE_ADMISSION` |
| 55 | `theorem` | [infDist_singleton](declarations/infdist-singleton.md) | 477 | `BLOCKED_NATIVE_ADMISSION` |
| 56 | `theorem` | [infDist_le_dist_of_mem](declarations/infdist-le-dist-of-mem.md) | 480 | `BLOCKED_NATIVE_ADMISSION` |
| 57 | `theorem` | [infDist_le_infDist_of_subset](declarations/infdist-le-infdist-of-subset.md) | 485 | `BLOCKED_NATIVE_ADMISSION` |
| 58 | `lemma` | [le_infDist](declarations/le-infdist.md) | 488 | `BLOCKED_NATIVE_ADMISSION` |
| 59 | `theorem` | [infDist_lt_iff](declarations/infdist-lt-iff.md) | 493 | `BLOCKED_NATIVE_ADMISSION` |
| 60 | `theorem` | [infDist_le_infDist_add_dist](declarations/infdist-le-infdist-add-dist.md) | 498 | `BLOCKED_NATIVE_ADMISSION` |
| 61 | `theorem` | [notMem_of_dist_lt_infDist](declarations/notmem-of-dist-lt-infdist.md) | 503 | `BLOCKED_NATIVE_ADMISSION` |
| 62 | `theorem` | [disjoint_ball_infDist](declarations/disjoint-ball-infdist.md) | 508 | `BLOCKED_NATIVE_ADMISSION` |
| 63 | `theorem` | [ball_infDist_subset_compl](declarations/ball-infdist-subset-compl.md) | 511 | `BLOCKED_NATIVE_ADMISSION` |
| 64 | `theorem` | [ball_infDist_compl_subset](declarations/ball-infdist-compl-subset.md) | 514 | `BLOCKED_NATIVE_ADMISSION` |
| 65 | `theorem` | [disjoint_closedBall_of_lt_infDist](declarations/disjoint-closedball-of-lt-infdist.md) | 517 | `BLOCKED_NATIVE_ADMISSION` |
| 66 | `theorem` | [dist_le_infDist_add_diam](declarations/dist-le-infdist-add-diam.md) | 521 | `BLOCKED_NATIVE_ADMISSION` |
| 67 | `theorem` | [lipschitz_infDist_pt](declarations/lipschitz-infdist-pt.md) | 529 | `BLOCKED_NATIVE_ADMISSION` |
| 68 | `theorem` | [uniformContinuous_infDist_pt](declarations/uniformcontinuous-infdist-pt.md) | 533 | `BLOCKED_NATIVE_ADMISSION` |
| 69 | `theorem` | [continuous_infDist_pt](declarations/continuous-infdist-pt.md) | 538 | `BLOCKED_NATIVE_ADMISSION` |
| 70 | `theorem` | [infDist_closure](declarations/infdist-closure.md) | 544 | `BLOCKED_NATIVE_ADMISSION` |
| 71 | `theorem` | [infDist_zero_of_mem_closure](declarations/infdist-zero-of-mem-closure.md) | 549 | `BLOCKED_NATIVE_ADMISSION` |
| 72 | `theorem` | [mem_closure_iff_infDist_zero](declarations/mem-closure-iff-infdist-zero.md) | 554 | `BLOCKED_NATIVE_ADMISSION` |
| 73 | `theorem` | [infDist_pos_iff_notMem_closure](declarations/infdist-pos-iff-notmem-closure.md) | 557 | `BLOCKED_NATIVE_ADMISSION` |
| 74 | `theorem` | [_root_.IsClosed.mem_iff_infDist_zero](declarations/root-isclosed-mem-iff-infdist-zero.md) | 565 | `BLOCKED_NATIVE_ADMISSION` |
| 75 | `theorem` | [_root_.IsClosed.notMem_iff_infDist_pos](declarations/root-isclosed-notmem-iff-infdist-pos.md) | 569 | `BLOCKED_NATIVE_ADMISSION` |
| 76 | `theorem` | [continuousAt_inv_infDist_pt](declarations/continuousat-inv-infdist-pt.md) | 576 | `BLOCKED_NATIVE_ADMISSION` |
| 77 | `theorem` | [infDist_image](declarations/infdist-image.md) | 584 | `BLOCKED_NATIVE_ADMISSION` |
| 78 | `theorem` | [infDist_inter_closedBall_of_mem](declarations/infdist-inter-closedball-of-mem.md) | 587 | `BLOCKED_NATIVE_ADMISSION` |
| 79 | `theorem` | [_root_.IsCompact.exists_infDist_eq_dist](declarations/root-iscompact-exists-infdist-eq-dist.md) | 598 | `BLOCKED_NATIVE_ADMISSION` |
| 80 | `theorem` | [_root_.IsClosed.exists_infDist_eq_dist](declarations/root-isclosed-exists-infdist-eq-dist.md) | 603 | `BLOCKED_NATIVE_ADMISSION` |
| 81 | `theorem` | [exists_mem_closure_infDist_eq_dist](declarations/exists-mem-closure-infdist-eq-dist.md) | 613 | `BLOCKED_NATIVE_ADMISSION` |
| 82 | `def` | [infNndist](declarations/infnndist.md) | 620 | `BLOCKED_NATIVE_ADMISSION` |
| 83 | `theorem` | [coe_infNndist](declarations/coe-infnndist.md) | 624 | `BLOCKED_NATIVE_ADMISSION` |
| 84 | `theorem` | [lipschitz_infNndist_pt](declarations/lipschitz-infnndist-pt.md) | 628 | `BLOCKED_NATIVE_ADMISSION` |
| 85 | `theorem` | [uniformContinuous_infNndist_pt](declarations/uniformcontinuous-infnndist-pt.md) | 632 | `BLOCKED_NATIVE_ADMISSION` |
| 86 | `theorem` | [continuous_infNndist_pt](declarations/continuous-infnndist-pt.md) | 637 | `BLOCKED_NATIVE_ADMISSION` |
| 87 | `def` | [hausdorffDist](declarations/hausdorffdist.md) | 645 | `BLOCKED_NATIVE_ADMISSION` |
| 88 | `theorem` | [hausdorffDist_nonneg](declarations/hausdorffdist-nonneg.md) | 649 | `BLOCKED_NATIVE_ADMISSION` |
| 89 | `theorem` | [hausdorffEdist_ne_top_of_nonempty_of_bounded](declarations/hausdorffedist-ne-top-of-nonempty-of-bounded.md) | 653 | `BLOCKED_NATIVE_ADMISSION` |
| 90 | `theorem` | [hausdorffDist_self_zero](declarations/hausdorffdist-self-zero.md) | 675 | `BLOCKED_NATIVE_ADMISSION` |
| 91 | `theorem` | [hausdorffDist_comm](declarations/hausdorffdist-comm.md) | 678 | `BLOCKED_NATIVE_ADMISSION` |
| 92 | `theorem` | [hausdorffDist_empty](declarations/hausdorffdist-empty.md) | 684 | `BLOCKED_NATIVE_ADMISSION` |
| 93 | `theorem` | [hausdorffDist_empty'](declarations/hausdorffdist-empty-source-edition-2.md) | 692 | `BLOCKED_NATIVE_ADMISSION` |
| 94 | `theorem` | [hausdorffDist_le_of_infDist](declarations/hausdorffdist-le-of-infdist.md) | 696 | `BLOCKED_NATIVE_ADMISSION` |
| 95 | `theorem` | [hausdorffDist_le_of_mem_dist](declarations/hausdorffdist-le-of-mem-dist.md) | 710 | `BLOCKED_NATIVE_ADMISSION` |
| 96 | `theorem` | [hausdorffDist_le_diam](declarations/hausdorffdist-le-diam.md) | 721 | `BLOCKED_NATIVE_ADMISSION` |
| 97 | `theorem` | [infDist_le_hausdorffDist_of_mem](declarations/infdist-le-hausdorffdist-of-mem.md) | 732 | `BLOCKED_NATIVE_ADMISSION` |
| 98 | `theorem` | [exists_dist_lt_of_hausdorffDist_lt](declarations/exists-dist-lt-of-hausdorffdist-lt-source-edition-2.md) | 738 | `BLOCKED_NATIVE_ADMISSION` |
| 99 | `theorem` | [exists_dist_lt_of_hausdorffDist_lt'](declarations/exists-dist-lt-of-hausdorffdist-lt.md) | 750 | `BLOCKED_NATIVE_ADMISSION` |
| 100 | `theorem` | [infDist_le_infDist_add_hausdorffDist](declarations/infdist-le-infdist-add-hausdorffdist.md) | 758 | `BLOCKED_NATIVE_ADMISSION` |
| 101 | `theorem` | [hausdorffDist_image](declarations/hausdorffdist-image.md) | 766 | `BLOCKED_NATIVE_ADMISSION` |
| 102 | `theorem` | [hausdorffDist_triangle](declarations/hausdorffdist-triangle-source-edition-2.md) | 771 | `BLOCKED_NATIVE_ADMISSION` |
| 103 | `theorem` | [hausdorffDist_triangle'](declarations/hausdorffdist-triangle.md) | 778 | `BLOCKED_NATIVE_ADMISSION` |
| 104 | `theorem` | [hausdorffDist_self_closure](declarations/hausdorffdist-self-closure.md) | 787 | `BLOCKED_NATIVE_ADMISSION` |
| 105 | `theorem` | [hausdorffDist_closure₁](declarations/hausdorffdist-closure-source-edition-3.md) | 791 | `BLOCKED_NATIVE_ADMISSION` |
| 106 | `theorem` | [hausdorffDist_closure₂](declarations/hausdorffdist-closure-source-edition-2.md) | 796 | `BLOCKED_NATIVE_ADMISSION` |
| 107 | `theorem` | [hausdorffDist_closure](declarations/hausdorffdist-closure.md) | 800 | `BLOCKED_NATIVE_ADMISSION` |
| 108 | `theorem` | [hausdorffDist_zero_iff_closure_eq_closure](declarations/hausdorffdist-zero-iff-closure-eq-closure.md) | 804 | `BLOCKED_NATIVE_ADMISSION` |
| 109 | `theorem` | [_root_.IsClosed.hausdorffDist_zero_iff_eq](declarations/root-isclosed-hausdorffdist-zero-iff-eq.md) | 810 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=3343c372f7bdea94a8b12d2074802c5d287982ba3467d93f98b353ce7d53445f -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/MetricTopology/HausdorffDistance/Variant353fcae8356bc524f2c1f957108ab074a9ad900b22eda4330391fc284350723c.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
