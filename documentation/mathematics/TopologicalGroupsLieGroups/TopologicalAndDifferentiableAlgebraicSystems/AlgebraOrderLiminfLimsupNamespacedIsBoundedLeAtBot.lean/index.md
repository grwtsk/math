# Algebra Order Liminf Limsup Namespaced Is Bounded Le At Bot

[Complete source index](../../../complete-source-index.md) · [Up one directory](../../../complete-source-index.md) · [Full source](source.md)

**56 observed declarations and anonymous commands**, 56 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Topology/GeneralTopology/LiminfLimsup/Variante305e845a91c0b7089b4fc97a68784c252a31ddec222dfd233e101456c20bed8.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `6bb6f68696a7a7b28e6d53db60694dffcc5045f9`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlgebraOrderLiminfLimsupNamespacedIsBoundedLeAtBot.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `theorem` | [isBounded_le_nhds](declarations/isbounded-le-nhds.md) | 44 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `theorem` | [Filter.Tendsto.isBoundedUnder_le](declarations/filter-tendsto-isboundedunder-le.md) | 49 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `theorem` | [Filter.Tendsto.bddAbove_range_of_cofinite](declarations/filter-tendsto-bddabove-range-of-cofinite.md) | 54 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `theorem` | [Filter.Tendsto.bddAbove_range](declarations/filter-tendsto-bddabove-range.md) | 59 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [isCobounded_ge_nhds](declarations/iscobounded-ge-nhds.md) | 64 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [Filter.Tendsto.isCoboundedUnder_ge](declarations/filter-tendsto-iscoboundedunder-ge.md) | 68 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [isBounded_le_atBot](declarations/isbounded-le-atbot.md) | 73 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [Filter.Tendsto.isBoundedUnder_le_atBot](declarations/filter-tendsto-isboundedunder-le-atbot.md) | 78 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [bddAbove_range_of_tendsto_atTop_atBot](declarations/bddabove-range-of-tendsto-attop-atbot.md) | 83 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [isBounded_ge_nhds](declarations/isbounded-ge-nhds.md) | 94 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [Filter.Tendsto.isBoundedUnder_ge](declarations/filter-tendsto-isboundedunder-ge.md) | 98 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [Filter.Tendsto.bddBelow_range_of_cofinite](declarations/filter-tendsto-bddbelow-range-of-cofinite.md) | 103 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [Filter.Tendsto.bddBelow_range](declarations/filter-tendsto-bddbelow-range.md) | 108 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [isCobounded_le_nhds](declarations/iscobounded-le-nhds.md) | 113 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [Filter.Tendsto.isCoboundedUnder_le](declarations/filter-tendsto-iscoboundedunder-le.md) | 117 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [isBounded_ge_atTop](declarations/isbounded-ge-attop.md) | 122 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [Filter.Tendsto.isBoundedUnder_ge_atTop](declarations/filter-tendsto-isboundedunder-ge-attop.md) | 127 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [bddBelow_range_of_tendsto_atTop_atTop](declarations/bddbelow-range-of-tendsto-attop-attop.md) | 132 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [lt_mem_sets_of_limsSup_lt](declarations/lt-mem-sets-of-limssup-lt.md) | 143 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [gt_mem_sets_of_limsInf_gt](declarations/gt-mem-sets-of-limsinf-gt.md) | 150 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [le_nhds_of_limsSup_eq_limsInf](declarations/le-nhds-of-limssup-eq-limsinf.md) | 160 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [limsSup_nhds](declarations/limssup-nhds.md) | 167 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [limsInf_nhds](declarations/limsinf-nhds.md) | 178 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [limsInf_eq_of_le_nhds](declarations/limsinf-eq-of-le-nhds.md) | 184 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [limsSup_eq_of_le_nhds](declarations/limssup-eq-of-le-nhds.md) | 199 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [Filter.Tendsto.limsup_eq](declarations/filter-tendsto-limsup-eq.md) | 205 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [Filter.Tendsto.liminf_eq](declarations/filter-tendsto-liminf-eq.md) | 211 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [tendsto_of_liminf_eq_limsup](declarations/tendsto-of-liminf-eq-limsup.md) | 218 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [tendsto_of_le_liminf_of_limsup_le](declarations/tendsto-of-le-liminf-of-limsup-le.md) | 226 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [tendsto_of_no_upcrossings](declarations/tendsto-of-no-upcrossings.md) | 240 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [eventually_le_limsup](declarations/eventually-le-limsup.md) | 262 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [eventually_liminf_le](declarations/eventually-liminf-le.md) | 281 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [limsup_eq_bot](declarations/limsup-eq-bot.md) | 294 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [liminf_eq_top](declarations/liminf-eq-top.md) | 304 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `theorem` | [Antitone.map_limsSup_of_continuousAt](declarations/antitone-map-limssup-of-continuousat.md) | 321 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `theorem` | [Antitone.map_limsup_of_continuousAt](declarations/antitone-map-limsup-of-continuousat.md) | 373 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `theorem` | [Antitone.map_limsInf_of_continuousAt](declarations/antitone-map-limsinf-of-continuousat.md) | 384 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `theorem` | [Antitone.map_liminf_of_continuousAt](declarations/antitone-map-liminf-of-continuousat.md) | 395 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `theorem` | [Monotone.map_limsSup_of_continuousAt](declarations/monotone-map-limssup-of-continuousat.md) | 406 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `theorem` | [Monotone.map_limsup_of_continuousAt](declarations/monotone-map-limsup-of-continuousat.md) | 417 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `theorem` | [Monotone.map_limsInf_of_continuousAt](declarations/monotone-map-limsinf-of-continuousat.md) | 428 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `theorem` | [Monotone.map_liminf_of_continuousAt](declarations/monotone-map-liminf-of-continuousat.md) | 439 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `theorem` | [iInf_eq_of_forall_le_of_tendsto](declarations/iinf-eq-of-forall-le-of-tendsto.md) | 457 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `theorem` | [iSup_eq_of_forall_le_of_tendsto](declarations/isup-eq-of-forall-le-of-tendsto.md) | 463 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `theorem` | [iUnion_Ici_eq_Ioi_of_lt_of_tendsto](declarations/iunion-ici-eq-ioi-of-lt-of-tendsto.md) | 468 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `theorem` | [iUnion_Iic_eq_Iio_of_lt_of_tendsto](declarations/iunion-iic-eq-iio-of-lt-of-tendsto.md) | 482 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `theorem` | [limsup_eq_tendsto_sum_indicator_nat_atTop](declarations/limsup-eq-tendsto-sum-indicator-nat-attop.md) | 494 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `theorem` | [limsup_eq_tendsto_sum_indicator_atTop](declarations/limsup-eq-tendsto-sum-indicator-attop.md) | 552 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `lemma` | [limsup_const_add](declarations/limsup-const-add.md) | 574 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `lemma` | [limsup_add_const](declarations/limsup-add-const.md) | 582 | `BLOCKED_NATIVE_ADMISSION` |
| 51 | `lemma` | [liminf_const_add](declarations/liminf-const-add.md) | 591 | `BLOCKED_NATIVE_ADMISSION` |
| 52 | `lemma` | [liminf_add_const](declarations/liminf-add-const.md) | 599 | `BLOCKED_NATIVE_ADMISSION` |
| 53 | `lemma` | [limsup_const_sub](declarations/limsup-const-sub.md) | 608 | `BLOCKED_NATIVE_ADMISSION` |
| 54 | `lemma` | [limsup_sub_const](declarations/limsup-sub-const.md) | 617 | `BLOCKED_NATIVE_ADMISSION` |
| 55 | `lemma` | [liminf_const_sub](declarations/liminf-const-sub.md) | 626 | `BLOCKED_NATIVE_ADMISSION` |
| 56 | `lemma` | [liminf_sub_const](declarations/liminf-sub-const.md) | 635 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=f9e14f1e2f3e47ea8000012bae92d5db0383a832d2c39aeeb13b1c393fb3ddf0 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/LiminfLimsup/Variante305e845a91c0b7089b4fc97a68784c252a31ddec222dfd233e101456c20bed8.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
