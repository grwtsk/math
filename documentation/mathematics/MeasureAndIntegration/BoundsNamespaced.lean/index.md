# Bounds Namespaced

[Complete source index](../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**106 observed declarations and anonymous commands**, 72 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Analysis/RealAnalysis/Integration/Bounds/Variant990312bb045d8addf3167c26a44c5e2e7f79180ecb684e3f9b7ccc8ae5469da0.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `5ea4189e45a24c7ff8d1c90dd03058a17967d83f`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../_verification/specifications/MeasureAndIntegration/BoundsNamespaced.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [checkUpperBound](declarations/checkupperbound.md) | 86 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `def` | [checkLowerBound](declarations/checklowerbound.md) | 91 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `def` | [checkStrictUpperBound](declarations/checkstrictupperbound.md) | 96 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `def` | [checkStrictLowerBound](declarations/checkstrictlowerbound.md) | 101 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [verify_upper_bound](declarations/verify-upper-bound.md) | 119 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [verify_lower_bound](declarations/verify-lower-bound.md) | 139 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [verify_strict_upper_bound](declarations/verify-strict-upper-bound.md) | 151 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [verify_strict_lower_bound](declarations/verify-strict-lower-bound.md) | 163 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [verify_upper_bound_pt](declarations/verify-upper-bound-pt.md) | 175 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [verify_lower_bound_pt](declarations/verify-lower-bound-pt.md) | 182 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `def` | [checkBounds](declarations/checkbounds.md) | 191 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [verify_bounds](declarations/verify-bounds.md) | 195 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `def` | [checkPointLowerBound](declarations/checkpointlowerbound.md) | 213 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `def` | [checkPointUpperBound](declarations/checkpointupperbound.md) | 218 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [verify_point_lower_bound](declarations/verify-point-lower-bound.md) | 223 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [verify_point_upper_bound](declarations/verify-point-upper-bound.md) | 235 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [verify_argmax](declarations/verify-argmax.md) | 252 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [verify_argmin](declarations/verify-argmin.md) | 268 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `def` | [checkUpperBoundWithInv](declarations/checkupperboundwithinv.md) | 291 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `def` | [checkLowerBoundWithInv](declarations/checklowerboundwithinv.md) | 299 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `def` | [checkStrictUpperBoundWithInv](declarations/checkstrictupperboundwithinv.md) | 306 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `def` | [checkStrictLowerBoundWithInv](declarations/checkstrictlowerboundwithinv.md) | 313 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [verify_upper_bound_withInv](declarations/verify-upper-bound-withinv.md) | 319 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [verify_lower_bound_withInv](declarations/verify-lower-bound-withinv.md) | 331 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [verify_strict_upper_bound_withInv](declarations/verify-strict-upper-bound-withinv.md) | 343 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [verify_strict_lower_bound_withInv](declarations/verify-strict-lower-bound-withinv.md) | 359 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [verify_upper_bound_Icc_withInv](declarations/verify-upper-bound-icc-withinv.md) | 375 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [verify_lower_bound_Icc_withInv](declarations/verify-lower-bound-icc-withinv.md) | 385 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [verify_strict_upper_bound_Icc_withInv](declarations/verify-strict-upper-bound-icc-withinv.md) | 395 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [verify_strict_lower_bound_Icc_withInv](declarations/verify-strict-lower-bound-icc-withinv.md) | 405 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `def` | [checkLowerBoundSmart](declarations/checklowerboundsmart.md) | 426 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `def` | [checkUpperBoundSmart](declarations/checkupperboundsmart.md) | 449 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [increasing_min_at_left_core](declarations/increasing-min-at-left-core.md) | 467 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [decreasing_min_at_right_core](declarations/decreasing-min-at-right-core.md) | 510 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `theorem` | [verify_lower_bound_smart](declarations/verify-lower-bound-smart.md) | 546 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `theorem` | [increasing_max_at_right_core](declarations/increasing-max-at-right-core.md) | 595 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `theorem` | [decreasing_max_at_left_core](declarations/decreasing-max-at-left-core.md) | 631 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `theorem` | [verify_upper_bound_smart](declarations/verify-upper-bound-smart.md) | 667 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `theorem` | [verify_upper_bound_Icc](declarations/verify-upper-bound-icc.md) | 722 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `theorem` | [verify_lower_bound_Icc](declarations/verify-lower-bound-icc.md) | 732 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `theorem` | [verify_upper_bound_Icc_core](declarations/verify-upper-bound-icc-core.md) | 743 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `theorem` | [verify_lower_bound_Icc_core](declarations/verify-lower-bound-icc-core.md) | 754 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `theorem` | [verify_strict_upper_bound_Icc_core](declarations/verify-strict-upper-bound-icc-core.md) | 764 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `theorem` | [verify_strict_lower_bound_Icc_core](declarations/verify-strict-lower-bound-icc-core.md) | 774 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `theorem` | [verify_upper_bound_split](declarations/verify-upper-bound-split.md) | 792 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `theorem` | [verify_lower_bound_split](declarations/verify-lower-bound-split.md) | 803 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `theorem` | [verify_strict_upper_bound_split](declarations/verify-strict-upper-bound-split.md) | 814 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `theorem` | [verify_strict_lower_bound_split](declarations/verify-strict-lower-bound-split.md) | 825 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `theorem` | [verify_upper_bound_Icc_split](declarations/verify-upper-bound-icc-split.md) | 836 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `theorem` | [verify_lower_bound_Icc_split](declarations/verify-lower-bound-icc-split.md) | 847 | `BLOCKED_NATIVE_ADMISSION` |
| 51 | `theorem` | [verify_strict_upper_bound_Icc_split](declarations/verify-strict-upper-bound-icc-split.md) | 858 | `BLOCKED_NATIVE_ADMISSION` |
| 52 | `theorem` | [verify_strict_lower_bound_Icc_split](declarations/verify-strict-lower-bound-icc-split.md) | 869 | `BLOCKED_NATIVE_ADMISSION` |
| 53 | `theorem` | [mem_split_general](declarations/mem-split-general.md) | 886 | `BLOCKED_NATIVE_ADMISSION` |
| 54 | `theorem` | [verify_upper_bound_general_split](declarations/verify-upper-bound-general-split.md) | 898 | `BLOCKED_NATIVE_ADMISSION` |
| 55 | `theorem` | [verify_lower_bound_general_split](declarations/verify-lower-bound-general-split.md) | 911 | `BLOCKED_NATIVE_ADMISSION` |
| 56 | `theorem` | [verify_strict_upper_bound_general_split](declarations/verify-strict-upper-bound-general-split.md) | 924 | `BLOCKED_NATIVE_ADMISSION` |
| 57 | `theorem` | [verify_strict_lower_bound_general_split](declarations/verify-strict-lower-bound-general-split.md) | 937 | `BLOCKED_NATIVE_ADMISSION` |
| 58 | `def` | [checkGlobalLowerBound](declarations/checkgloballowerbound.md) | 967 | `BLOCKED_NATIVE_ADMISSION` |
| 59 | `def` | [checkGlobalUpperBound](declarations/checkglobalupperbound.md) | 977 | `BLOCKED_NATIVE_ADMISSION` |
| 60 | `def` | [checkGlobalBounds](declarations/checkglobalbounds.md) | 982 | `BLOCKED_NATIVE_ADMISSION` |
| 61 | `theorem` | [verify_global_lower_bound](declarations/verify-global-lower-bound.md) | 996 | `BLOCKED_NATIVE_ADMISSION` |
| 62 | `theorem` | [verify_global_upper_bound](declarations/verify-global-upper-bound.md) | 1019 | `BLOCKED_NATIVE_ADMISSION` |
| 63 | `theorem` | [verify_global_bounds](declarations/verify-global-bounds.md) | 1047 | `BLOCKED_NATIVE_ADMISSION` |
| 64 | `structure` | [RootConfig](declarations/rootconfig.md) | 1073 | `BLOCKED_NATIVE_ADMISSION` |
| 65 | `structure` | [NewtonConfig](declarations/newtonconfig.md) | 1081 | `BLOCKED_NATIVE_ADMISSION` |
| 66 | `def` | [checkSignChange](declarations/checksignchange.md) | 1092 | `BLOCKED_NATIVE_ADMISSION` |
| 67 | `def` | [checkNoRoot](declarations/checknoroot.md) | 1104 | `BLOCKED_NATIVE_ADMISSION` |
| 68 | `def` | [newtonStepCore](declarations/newtonstepcore.md) | 1116 | `BLOCKED_NATIVE_ADMISSION` |
| 69 | `lemma` | [newtonStepCore_extract](declarations/newtonstepcore-extract.md) | 1137 | `BLOCKED_NATIVE_ADMISSION` |
| 70 | `def` | [checkNewtonContractsCore](declarations/checknewtoncontractscore.md) | 1171 | `BLOCKED_NATIVE_ADMISSION` |
| 71 | `def` | [checkNewtonContracts](declarations/checknewtoncontracts.md) | 1182 | `BLOCKED_NATIVE_ADMISSION` |
| 72 | `theorem` | [verify_no_root](declarations/verify-no-root.md) | 1194 | `BLOCKED_NATIVE_ADMISSION` |
| 73 | `theorem` | [verify_unique_root_newton](declarations/verify-unique-root-newton.md) | 1225 | `BLOCKED_NATIVE_ADMISSION` |
| 74 | `lemma` | [mvt_lower_bound_core](declarations/mvt-lower-bound-core.md) | 1255 | `BLOCKED_NATIVE_ADMISSION` |
| 75 | `lemma` | [mvt_upper_bound_core](declarations/mvt-upper-bound-core.md) | 1279 | `BLOCKED_NATIVE_ADMISSION` |
| 76 | `theorem` | [verify_unique_root_core](declarations/verify-unique-root-core.md) | 1315 | `BLOCKED_NATIVE_ADMISSION` |
| 77 | `theorem` | [newton_preserves_root_core](declarations/newton-preserves-root-core.md) | 1333 | `BLOCKED_NATIVE_ADMISSION` |
| 78 | `theorem` | [newton_step_core_at_most_one_root](declarations/newton-step-core-at-most-one-root.md) | 1385 | `BLOCKED_NATIVE_ADMISSION` |
| 79 | `lemma` | [mvt_fc_lower_bound_pos_increasing_core](declarations/mvt-fc-lower-bound-pos-increasing-core.md) | 1449 | `BLOCKED_NATIVE_ADMISSION` |
| 80 | `lemma` | [mvt_fc_upper_bound_pos_increasing_core](declarations/mvt-fc-upper-bound-pos-increasing-core.md) | 1486 | `BLOCKED_NATIVE_ADMISSION` |
| 81 | `lemma` | [mvt_fc_upper_bound_neg_decreasing_core](declarations/mvt-fc-upper-bound-neg-decreasing-core.md) | 1523 | `BLOCKED_NATIVE_ADMISSION` |
| 82 | `lemma` | [mvt_fc_lower_bound_neg_decreasing_core](declarations/mvt-fc-lower-bound-neg-decreasing-core.md) | 1560 | `BLOCKED_NATIVE_ADMISSION` |
| 83 | `theorem` | [verify_unique_root_computable](declarations/verify-unique-root-computable.md) | 1601 | `BLOCKED_NATIVE_ADMISSION` |
| 84 | `theorem` | [verify_sign_change](declarations/verify-sign-change.md) | 1818 | `BLOCKED_NATIVE_ADMISSION` |
| 85 | `def` | [checkHasRoot](declarations/checkhasroot.md) | 1897 | `BLOCKED_NATIVE_ADMISSION` |
| 86 | `theorem` | [verify_has_root](declarations/verify-has-root.md) | 1909 | `BLOCKED_NATIVE_ADMISSION` |
| 87 | `def` | [uniformPartitionCore](declarations/uniformpartitioncore.md) | 1969 | `BLOCKED_NATIVE_ADMISSION` |
| 88 | `def` | [sumIntervalBoundsCore](declarations/sumintervalboundscore.md) | 1985 | `BLOCKED_NATIVE_ADMISSION` |
| 89 | `def` | [integrateIntervalCore](declarations/integrateintervalcore.md) | 1996 | `BLOCKED_NATIVE_ADMISSION` |
| 90 | `def` | [integrateInterval1Core](declarations/integrateinterval1core.md) | 2001 | `BLOCKED_NATIVE_ADMISSION` |
| 91 | `theorem` | [exprSupportedCore_intervalIntegrable](declarations/exprsupportedcore-intervalintegrable.md) | 2015 | `BLOCKED_NATIVE_ADMISSION` |
| 92 | `theorem` | [integrateInterval1Core_correct](declarations/integrateinterval1core-correct.md) | 2033 | `BLOCKED_NATIVE_ADMISSION` |
| 93 | `def` | [checkIntegralBoundsCore](declarations/checkintegralboundscore.md) | 2088 | `BLOCKED_NATIVE_ADMISSION` |
| 94 | `theorem` | [verify_integral_bound](declarations/verify-integral-bound.md) | 2106 | `BLOCKED_NATIVE_ADMISSION` |
| 95 | `def` | [getIntegralBound](declarations/getintegralbound.md) | 2116 | `BLOCKED_NATIVE_ADMISSION` |
| 96 | `theorem` | [integral_in_bound](declarations/integral-in-bound.md) | 2122 | `BLOCKED_NATIVE_ADMISSION` |
| 97 | `def` | [integrateInterval1WithInv](declarations/integrateinterval1withinv.md) | 2135 | `BLOCKED_NATIVE_ADMISSION` |
| 98 | `theorem` | [integrateInterval1WithInv_correct](declarations/integrateinterval1withinv-correct.md) | 2142 | `BLOCKED_NATIVE_ADMISSION` |
| 99 | `def` | [checkIntegralBoundsWithInv](declarations/checkintegralboundswithinv.md) | 2202 | `BLOCKED_NATIVE_ADMISSION` |
| 100 | `theorem` | [verify_integral_bound_withInv](declarations/verify-integral-bound-withinv.md) | 2213 | `BLOCKED_NATIVE_ADMISSION` |
| 101 | `def` | [collectBoundsWithInv](declarations/collectboundswithinv.md) | 2236 | `BLOCKED_NATIVE_ADMISSION` |
| 102 | `def` | [integratePartitionWithInv](declarations/integratepartitionwithinv.md) | 2245 | `BLOCKED_NATIVE_ADMISSION` |
| 103 | `theorem` | [collectBoundsWithInv_length](declarations/collectboundswithinv-length.md) | 2253 | `BLOCKED_NATIVE_ADMISSION` |
| 104 | `theorem` | [collectBoundsWithInv_getElem](declarations/collectboundswithinv-getelem.md) | 2274 | `BLOCKED_NATIVE_ADMISSION` |
| 105 | `theorem` | [integral_subinterval_bounded_withInv](declarations/integral-subinterval-bounded-withinv.md) | 2304 | `BLOCKED_NATIVE_ADMISSION` |
| 106 | `theorem` | [integratePartitionWithInv_correct](declarations/integratepartitionwithinv-correct.md) | 2315 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=9b8b927b4942dfa288e733d0fa0256b0246137f8110bc085892f37ddf7a99a11 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/RealAnalysis/Integration/Bounds/Variant990312bb045d8addf3167c26a44c5e2e7f79180ecb684e3f9b7ccc8ae5469da0.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
