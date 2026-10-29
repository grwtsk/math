# Integrate Namespaced

[Complete source index](../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**62 observed declarations and anonymous commands**, 45 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Analysis/RealAnalysis/Integration/Integrate/Variante73d658ba7497cc2b67fd543e4f7f63f9b8c86f7b01b77d052fc862b7ccf3e29.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `e31ac66ba8caa25b8a447a90a5bb70073f093845`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../_verification/specifications/MeasureAndIntegration/IntegrateNamespaced.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `theorem` | [integral_bounds_of_bounds](declarations/integral-bounds-of-bounds.md) | 54 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `def` | [uniformPartition](declarations/uniformpartition.md) | 86 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `def` | [sumIntervalBounds](declarations/sumintervalbounds.md) | 102 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `def` | [integrateInterval](declarations/integrateinterval.md) | 113 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `def` | [integrateInterval1](declarations/integrateinterval1.md) | 119 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [integrateInterval1_eq](declarations/integrateinterval1-eq.md) | 124 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [integrateInterval1_correct](declarations/integrateinterval1-correct.md) | 142 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [add_zero_left_mem](declarations/add-zero-left-mem.md) | 213 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [integrateInterval_correct_n1](declarations/integrateinterval-correct-n1.md) | 221 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `def` | [partitionPoints](declarations/partitionpoints.md) | 232 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [partitionPoints_zero](declarations/partitionpoints-zero.md) | 236 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [partitionPoints_n](declarations/partitionpoints-n.md) | 241 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [partitionPoints_mono](declarations/partitionpoints-mono.md) | 249 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `def` | [partitionInterval](declarations/partitioninterval.md) | 258 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [partitionInterval_lo](declarations/partitioninterval-lo.md) | 262 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [partitionInterval_hi](declarations/partitioninterval-hi.md) | 268 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [partitionPoints_eq_lo](declarations/partitionpoints-eq-lo.md) | 274 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [partitionPoints_eq_hi](declarations/partitionpoints-eq-hi.md) | 280 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [intervalIntegrable_on_partition](declarations/intervalintegrable-on-partition.md) | 287 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [intervalIntegrable_partitionPoints](declarations/intervalintegrable-partitionpoints.md) | 335 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [integral_partition_sum](declarations/integral-partition-sum.md) | 344 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [integral_subinterval_bounded](declarations/integral-subinterval-bounded.md) | 360 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [IntervalRat_add_assoc](declarations/intervalrat-add-assoc.md) | 370 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [foldl_add_concat](declarations/foldl-add-concat.md) | 376 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [add_singleton_zero_left](declarations/add-singleton-zero-left.md) | 390 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [add_singleton_zero_right](declarations/add-singleton-zero-right.md) | 396 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [sum_mem_foldl_add](declarations/sum-mem-foldl-add.md) | 402 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [foldl_sumBound_eq_foldl_add](declarations/foldl-sumbound-eq-foldl-add.md) | 443 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [sumIntervalBounds_eq_foldl_map](declarations/sumintervalbounds-eq-foldl-map.md) | 454 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [integrateInterval_correct](declarations/integrateinterval-correct.md) | 461 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `def` | [intervalInter](declarations/intervalinter.md) | 507 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [mem_intervalInter](declarations/mem-intervalinter.md) | 517 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `def` | [intervalUnion](declarations/intervalunion.md) | 536 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [mem_intervalUnion_left](declarations/mem-intervalunion-left.md) | 542 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `theorem` | [mem_intervalUnion_right](declarations/mem-intervalunion-right.md) | 551 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `theorem` | [midpoint_def](declarations/midpoint-def.md) | 562 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `theorem` | [midpoint_lo_le](declarations/midpoint-lo-le.md) | 565 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `theorem` | [midpoint_le_hi'](declarations/midpoint-le-hi.md) | 571 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `def` | [splitMid](declarations/splitmid.md) | 577 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `theorem` | [splitMid_left_lo](declarations/splitmid-left-lo.md) | 581 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `theorem` | [splitMid_left_hi](declarations/splitmid-left-hi.md) | 584 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `theorem` | [splitMid_right_lo](declarations/splitmid-right-lo.md) | 588 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `theorem` | [splitMid_right_hi](declarations/splitmid-right-hi.md) | 591 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `theorem` | [mem_splitMid](declarations/mem-splitmid.md) | 595 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `structure` | [AdaptiveResult](declarations/adaptiveresult.md) | 612 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `def` | [integrateRefined](declarations/integraterefined.md) | 619 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `def` | [integrateCoarse](declarations/integratecoarse.md) | 623 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `def` | [errorEstimate](declarations/errorestimate.md) | 628 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `def` | [integrateAdaptiveAux](declarations/integrateadaptiveaux.md) | 634 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `def` | [integrateAdaptive](declarations/integrateadaptive.md) | 657 | `BLOCKED_NATIVE_ADMISSION` |
| 51 | `theorem` | [integrateRefined_correct](declarations/integraterefined-correct.md) | 664 | `BLOCKED_NATIVE_ADMISSION` |
| 52 | `theorem` | [integrateCoarse_correct](declarations/integratecoarse-correct.md) | 670 | `BLOCKED_NATIVE_ADMISSION` |
| 53 | `theorem` | [midpoint_ge_lo_real](declarations/midpoint-ge-lo-real.md) | 676 | `BLOCKED_NATIVE_ADMISSION` |
| 54 | `theorem` | [midpoint_le_hi_real](declarations/midpoint-le-hi-real.md) | 680 | `BLOCKED_NATIVE_ADMISSION` |
| 55 | `theorem` | [midpoint_mem_uIcc](declarations/midpoint-mem-uicc.md) | 685 | `BLOCKED_NATIVE_ADMISSION` |
| 56 | `theorem` | [integral_split_mid](declarations/integral-split-mid.md) | 692 | `BLOCKED_NATIVE_ADMISSION` |
| 57 | `theorem` | [intervalIntegrable_splitMid_left](declarations/intervalintegrable-splitmid-left.md) | 704 | `BLOCKED_NATIVE_ADMISSION` |
| 58 | `theorem` | [intervalIntegrable_splitMid_right](declarations/intervalintegrable-splitmid-right.md) | 712 | `BLOCKED_NATIVE_ADMISSION` |
| 59 | `theorem` | [integrateAdaptiveAux_correct](declarations/integrateadaptiveaux-correct.md) | 721 | `BLOCKED_NATIVE_ADMISSION` |
| 60 | `theorem` | [integrateAdaptive_correct](declarations/integrateadaptive-correct.md) | 751 | `BLOCKED_NATIVE_ADMISSION` |
| 61 | `def` | [geometricBreakpoints](declarations/geometricbreakpoints.md) | 762 | `BLOCKED_NATIVE_ADMISSION` |
| 62 | `def` | [nonUniformPartition](declarations/nonuniformpartition.md) | 771 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=47ceb3d423bc9714b4b874e11c9fff3656d380103130d3e5d79a1bd0b41f9906 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/RealAnalysis/Integration/Integrate/Variante73d658ba7497cc2b67fd543e4f7f63f9b8c86f7b01b77d052fc862b7ccf3e29.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
