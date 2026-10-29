# Li2 Verified Namespaced G

[Complete source index](../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**74 observed declarations and anonymous commands**, 59 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Analysis/RealAnalysis/Integration/Li2Verified/Variant582113ec0525062c8e86fa6441041ef0d8ce956c0d9c94e839b4486804d20711.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `c9106be74b741fa31457f5a3764c19c97fe53c3d`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../_verification/specifications/MeasureAndIntegration/Li2VerifiedNamespacedG.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [checkIntegralLowerBound](declarations/checkintegrallowerbound.md) | 61 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `def` | [checkIntegralUpperBound](declarations/checkintegralupperbound.md) | 67 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `theorem` | [integral_lower_of_check](declarations/integral-lower-of-check.md) | 73 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `theorem` | [integral_upper_of_check](declarations/integral-upper-of-check.md) | 89 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `def` | [g](declarations/g.md) | 110 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `def` | [li2](declarations/li2.md) | 114 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [g_eq](declarations/g-eq.md) | 119 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [g_alt](declarations/g-alt.md) | 122 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [g_tendsto_one](declarations/g-tendsto-one.md) | 127 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [g_bounded](declarations/g-bounded.md) | 132 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [g_pos](declarations/g-pos.md) | 139 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [g_le_two](declarations/g-le-two.md) | 156 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [g_bounded_on_interval](declarations/g-bounded-on-interval.md) | 211 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [li2_upper_crude](declarations/li2-upper-crude.md) | 218 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [g_pos_near_zero](declarations/g-pos-near-zero.md) | 261 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [li2_pos](declarations/li2-pos.md) | 278 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [g_near_one_for_small_t](declarations/g-near-one-for-small-t.md) | 329 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [g_bounded_middle](declarations/g-bounded-middle.md) | 348 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `def` | [g_expr](declarations/g-expr.md) | 357 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [g_expr_supported](declarations/g-expr-supported.md) | 362 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [g_expr_eval](declarations/g-expr-eval.md) | 377 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `def` | [g_alt_expr](declarations/g-alt-expr.md) | 388 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [g_alt_expr_supported](declarations/g-alt-expr-supported.md) | 397 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [g_alt_expr_eval](declarations/g-alt-expr-eval.md) | 419 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `def` | [g_mid_interval](declarations/g-mid-interval.md) | 440 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [g_intervalIntegrable_mid](declarations/g-intervalintegrable-mid.md) | 442 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `def` | [g_mid_bound](declarations/g-mid-bound.md) | 477 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [g_mid_integral_mem](declarations/g-mid-integral-mem.md) | 480 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [g_integral_tail_upper](declarations/g-integral-tail-upper.md) | 497 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [g_integral_right_tail_upper](declarations/g-integral-right-tail-upper.md) | 536 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [log_2_lt](declarations/log-2-lt.md) | 584 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [log_2_gt](declarations/log-2-gt.md) | 596 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [log_10_gt](declarations/log-10-gt.md) | 608 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [inv_log_2_gt](declarations/inv-log-2-gt.md) | 620 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `theorem` | [g_lower_near_one](declarations/g-lower-near-one.md) | 651 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `theorem` | [g_intervalIntegrable](declarations/g-intervalintegrable.md) | 727 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `theorem` | [g_integral_add_adjacent](declarations/g-integral-add-adjacent.md) | 753 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `def` | [partitionPoints](declarations/partitionpoints.md) | 764 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `theorem` | [li2_decomposition](declarations/li2-decomposition.md) | 771 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `theorem` | [integral_lower_bound](declarations/integral-lower-bound.md) | 859 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `theorem` | [integral_upper_bound](declarations/integral-upper-bound.md) | 871 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `def` | [g_mid_interval_main](declarations/g-mid-interval-main.md) | 902 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `theorem` | [g_intervalIntegrable_main](declarations/g-intervalintegrable-main.md) | 904 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `def` | [g_mid_bound_main](declarations/g-mid-bound-main.md) | 916 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `theorem` | [g_alt_integral_eq](declarations/g-alt-integral-eq.md) | 920 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `theorem` | [g_alt_intervalIntegrable_main](declarations/g-alt-intervalintegrable-main.md) | 934 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `theorem` | [g_mid_integral_lower](declarations/g-mid-integral-lower.md) | 990 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `theorem` | [g_mid_integral_upper](declarations/g-mid-integral-upper.md) | 1010 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `theorem` | [g_integral_01_lower](declarations/g-integral-01-lower.md) | 1028 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `def` | [g_interval_12](declarations/g-interval-12.md) | 1037 | `BLOCKED_NATIVE_ADMISSION` |
| 51 | `theorem` | [g_alt_integral_eq_12](declarations/g-alt-integral-eq-12.md) | 1040 | `BLOCKED_NATIVE_ADMISSION` |
| 52 | `theorem` | [g_alt_intervalIntegrable_12](declarations/g-alt-intervalintegrable-12.md) | 1052 | `BLOCKED_NATIVE_ADMISSION` |
| 53 | `theorem` | [g_integral_12_lower_numerical](declarations/g-integral-12-lower-numerical.md) | 1070 | `BLOCKED_NATIVE_ADMISSION` |
| 54 | `theorem` | [g_integral_12_lower](declarations/g-integral-12-lower.md) | 1085 | `BLOCKED_NATIVE_ADMISSION` |
| 55 | `def` | [g_interval_45](declarations/g-interval-45.md) | 1091 | `BLOCKED_NATIVE_ADMISSION` |
| 56 | `theorem` | [g_alt_integral_eq_45](declarations/g-alt-integral-eq-45.md) | 1094 | `BLOCKED_NATIVE_ADMISSION` |
| 57 | `theorem` | [g_alt_intervalIntegrable_45](declarations/g-alt-intervalintegrable-45.md) | 1106 | `BLOCKED_NATIVE_ADMISSION` |
| 58 | `theorem` | [g_integral_45_lower_numerical](declarations/g-integral-45-lower-numerical.md) | 1121 | `BLOCKED_NATIVE_ADMISSION` |
| 59 | `theorem` | [g_integral_45_lower](declarations/g-integral-45-lower.md) | 1136 | `BLOCKED_NATIVE_ADMISSION` |
| 60 | `def` | [g_interval_56](declarations/g-interval-56.md) | 1140 | `BLOCKED_NATIVE_ADMISSION` |
| 61 | `theorem` | [g_alt_integral_eq_56](declarations/g-alt-integral-eq-56.md) | 1143 | `BLOCKED_NATIVE_ADMISSION` |
| 62 | `theorem` | [g_alt_intervalIntegrable_56](declarations/g-alt-intervalintegrable-56.md) | 1155 | `BLOCKED_NATIVE_ADMISSION` |
| 63 | `theorem` | [g_integral_56_lower_numerical](declarations/g-integral-56-lower-numerical.md) | 1170 | `BLOCKED_NATIVE_ADMISSION` |
| 64 | `theorem` | [g_integral_56_lower](declarations/g-integral-56-lower.md) | 1185 | `BLOCKED_NATIVE_ADMISSION` |
| 65 | `def` | [g_interval_01](declarations/g-interval-01.md) | 1189 | `BLOCKED_NATIVE_ADMISSION` |
| 66 | `theorem` | [g_alt_integral_eq_01](declarations/g-alt-integral-eq-01.md) | 1192 | `BLOCKED_NATIVE_ADMISSION` |
| 67 | `theorem` | [g_alt_intervalIntegrable_01](declarations/g-alt-intervalintegrable-01.md) | 1204 | `BLOCKED_NATIVE_ADMISSION` |
| 68 | `theorem` | [g_integral_01_lower_numerical](declarations/g-integral-01-lower-numerical.md) | 1219 | `BLOCKED_NATIVE_ADMISSION` |
| 69 | `theorem` | [g_integral_00_lower](declarations/g-integral-00-lower.md) | 1236 | `BLOCKED_NATIVE_ADMISSION` |
| 70 | `theorem` | [g_integral_67_lower](declarations/g-integral-67-lower.md) | 1266 | `BLOCKED_NATIVE_ADMISSION` |
| 71 | `theorem` | [li2_bounds](declarations/li2-bounds.md) | 1296 | `BLOCKED_NATIVE_ADMISSION` |
| 72 | `theorem` | [li2_lower](declarations/li2-lower.md) | 1367 | `BLOCKED_NATIVE_ADMISSION` |
| 73 | `theorem` | [li2_upper](declarations/li2-upper.md) | 1370 | `BLOCKED_NATIVE_ADMISSION` |
| 74 | `theorem` | [li2_approx_1045](declarations/li2-approx-1045.md) | 1380 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=58674d422d5bcbb1a6f305a95c45a546150b6fcd04034c5b88dd09596eb07414 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/RealAnalysis/Integration/Li2Verified/Variant582113ec0525062c8e86fa6441041ef0d8ce956c0d9c94e839b4486804d20711.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
