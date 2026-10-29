# Integrate

[Complete source index](../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**62 observed declarations and anonymous commands**, 45 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Analysis/RealAnalysis/Integration/Integrate/Variante45ec7ceb6c7446fe00e5d31a87134ee45e55fb50a6a578d5d5eeea0600cd891.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `d3d8275605f9330d9f6c605d3575ae249178b6eb`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../_verification/specifications/MeasureAndIntegration/Integrate.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `theorem` | [integral_bounds_of_bounds](declarations/integral-bounds-of-bounds.md) | 46 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `def` | [uniformPartition](declarations/uniformpartition.md) | 78 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `def` | [sumIntervalBounds](declarations/sumintervalbounds.md) | 94 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `def` | [integrateInterval](declarations/integrateinterval.md) | 105 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `def` | [integrateInterval1](declarations/integrateinterval1.md) | 111 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [integrateInterval1_eq](declarations/integrateinterval1-eq.md) | 116 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [integrateInterval1_correct](declarations/integrateinterval1-correct.md) | 134 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [add_zero_left_mem](declarations/add-zero-left-mem.md) | 205 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [integrateInterval_correct_n1](declarations/integrateinterval-correct-n1.md) | 213 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `def` | [partitionPoints](declarations/partitionpoints.md) | 224 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [partitionPoints_zero](declarations/partitionpoints-zero.md) | 228 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [partitionPoints_n](declarations/partitionpoints-n.md) | 233 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [partitionPoints_mono](declarations/partitionpoints-mono.md) | 241 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `def` | [partitionInterval](declarations/partitioninterval.md) | 250 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [partitionInterval_lo](declarations/partitioninterval-lo.md) | 254 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [partitionInterval_hi](declarations/partitioninterval-hi.md) | 260 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [partitionPoints_eq_lo](declarations/partitionpoints-eq-lo.md) | 266 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [partitionPoints_eq_hi](declarations/partitionpoints-eq-hi.md) | 272 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [intervalIntegrable_on_partition](declarations/intervalintegrable-on-partition.md) | 279 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [intervalIntegrable_partitionPoints](declarations/intervalintegrable-partitionpoints.md) | 327 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [integral_partition_sum](declarations/integral-partition-sum.md) | 336 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [integral_subinterval_bounded](declarations/integral-subinterval-bounded.md) | 352 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [IntervalRat_add_assoc](declarations/intervalrat-add-assoc.md) | 362 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [foldl_add_concat](declarations/foldl-add-concat.md) | 368 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [add_singleton_zero_left](declarations/add-singleton-zero-left.md) | 382 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [add_singleton_zero_right](declarations/add-singleton-zero-right.md) | 388 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [sum_mem_foldl_add](declarations/sum-mem-foldl-add.md) | 394 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [foldl_sumBound_eq_foldl_add](declarations/foldl-sumbound-eq-foldl-add.md) | 435 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [sumIntervalBounds_eq_foldl_map](declarations/sumintervalbounds-eq-foldl-map.md) | 446 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [integrateInterval_correct](declarations/integrateinterval-correct.md) | 453 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `def` | [intervalInter](declarations/intervalinter.md) | 499 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [mem_intervalInter](declarations/mem-intervalinter.md) | 509 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `def` | [intervalUnion](declarations/intervalunion.md) | 528 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [mem_intervalUnion_left](declarations/mem-intervalunion-left.md) | 534 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `theorem` | [mem_intervalUnion_right](declarations/mem-intervalunion-right.md) | 543 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `theorem` | [midpoint_def](declarations/midpoint-def.md) | 554 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `theorem` | [midpoint_lo_le](declarations/midpoint-lo-le.md) | 557 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `theorem` | [midpoint_le_hi'](declarations/midpoint-le-hi.md) | 563 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `def` | [splitMid](declarations/splitmid.md) | 569 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `theorem` | [splitMid_left_lo](declarations/splitmid-left-lo.md) | 573 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `theorem` | [splitMid_left_hi](declarations/splitmid-left-hi.md) | 576 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `theorem` | [splitMid_right_lo](declarations/splitmid-right-lo.md) | 580 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `theorem` | [splitMid_right_hi](declarations/splitmid-right-hi.md) | 583 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `theorem` | [mem_splitMid](declarations/mem-splitmid.md) | 587 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `structure` | [AdaptiveResult](declarations/adaptiveresult.md) | 604 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `def` | [integrateRefined](declarations/integraterefined.md) | 611 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `def` | [integrateCoarse](declarations/integratecoarse.md) | 615 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `def` | [errorEstimate](declarations/errorestimate.md) | 620 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `def` | [integrateAdaptiveAux](declarations/integrateadaptiveaux.md) | 626 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `def` | [integrateAdaptive](declarations/integrateadaptive.md) | 649 | `BLOCKED_NATIVE_ADMISSION` |
| 51 | `theorem` | [integrateRefined_correct](declarations/integraterefined-correct.md) | 656 | `BLOCKED_NATIVE_ADMISSION` |
| 52 | `theorem` | [integrateCoarse_correct](declarations/integratecoarse-correct.md) | 662 | `BLOCKED_NATIVE_ADMISSION` |
| 53 | `theorem` | [midpoint_ge_lo_real](declarations/midpoint-ge-lo-real.md) | 668 | `BLOCKED_NATIVE_ADMISSION` |
| 54 | `theorem` | [midpoint_le_hi_real](declarations/midpoint-le-hi-real.md) | 672 | `BLOCKED_NATIVE_ADMISSION` |
| 55 | `theorem` | [midpoint_mem_uIcc](declarations/midpoint-mem-uicc.md) | 677 | `BLOCKED_NATIVE_ADMISSION` |
| 56 | `theorem` | [integral_split_mid](declarations/integral-split-mid.md) | 684 | `BLOCKED_NATIVE_ADMISSION` |
| 57 | `theorem` | [intervalIntegrable_splitMid_left](declarations/intervalintegrable-splitmid-left.md) | 696 | `BLOCKED_NATIVE_ADMISSION` |
| 58 | `theorem` | [intervalIntegrable_splitMid_right](declarations/intervalintegrable-splitmid-right.md) | 704 | `BLOCKED_NATIVE_ADMISSION` |
| 59 | `theorem` | [integrateAdaptiveAux_correct](declarations/integrateadaptiveaux-correct.md) | 713 | `BLOCKED_NATIVE_ADMISSION` |
| 60 | `theorem` | [integrateAdaptive_correct](declarations/integrateadaptive-correct.md) | 743 | `BLOCKED_NATIVE_ADMISSION` |
| 61 | `def` | [geometricBreakpoints](declarations/geometricbreakpoints.md) | 754 | `BLOCKED_NATIVE_ADMISSION` |
| 62 | `def` | [nonUniformPartition](declarations/nonuniformpartition.md) | 763 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=44e352457fb9a931a0dd59d6106dfed02cd4cef71ac7ca9f315449dd8b1d8703 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/RealAnalysis/Integration/Integrate/Variante45ec7ceb6c7446fe00e5d31a87134ee45e55fb50a6a578d5d5eeea0600cd891.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
