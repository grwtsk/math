# Bounds

[Complete source index](../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**106 observed declarations and anonymous commands**, 72 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Analysis/RealAnalysis/Integration/Bounds/Variantab9cf2ae984ae636e0ac7f9b754497d9095d066e45f4d5f698a284597a0ae616.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `aadeba643fd3f4e60c7710626c255a7effe39f9b`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../_verification/specifications/MeasureAndIntegration/Bounds.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [checkUpperBound](declarations/checkupperbound.md) | 78 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `def` | [checkLowerBound](declarations/checklowerbound.md) | 83 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `def` | [checkStrictUpperBound](declarations/checkstrictupperbound.md) | 88 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `def` | [checkStrictLowerBound](declarations/checkstrictlowerbound.md) | 93 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [verify_upper_bound](declarations/verify-upper-bound.md) | 111 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [verify_lower_bound](declarations/verify-lower-bound.md) | 131 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [verify_strict_upper_bound](declarations/verify-strict-upper-bound.md) | 143 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [verify_strict_lower_bound](declarations/verify-strict-lower-bound.md) | 155 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [verify_upper_bound_pt](declarations/verify-upper-bound-pt.md) | 167 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [verify_lower_bound_pt](declarations/verify-lower-bound-pt.md) | 174 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `def` | [checkBounds](declarations/checkbounds.md) | 183 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [verify_bounds](declarations/verify-bounds.md) | 187 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `def` | [checkPointLowerBound](declarations/checkpointlowerbound.md) | 205 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `def` | [checkPointUpperBound](declarations/checkpointupperbound.md) | 210 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [verify_point_lower_bound](declarations/verify-point-lower-bound.md) | 215 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [verify_point_upper_bound](declarations/verify-point-upper-bound.md) | 227 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [verify_argmax](declarations/verify-argmax.md) | 244 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [verify_argmin](declarations/verify-argmin.md) | 260 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `def` | [checkUpperBoundWithInv](declarations/checkupperboundwithinv.md) | 283 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `def` | [checkLowerBoundWithInv](declarations/checklowerboundwithinv.md) | 291 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `def` | [checkStrictUpperBoundWithInv](declarations/checkstrictupperboundwithinv.md) | 298 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `def` | [checkStrictLowerBoundWithInv](declarations/checkstrictlowerboundwithinv.md) | 305 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [verify_upper_bound_withInv](declarations/verify-upper-bound-withinv.md) | 311 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [verify_lower_bound_withInv](declarations/verify-lower-bound-withinv.md) | 323 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [verify_strict_upper_bound_withInv](declarations/verify-strict-upper-bound-withinv.md) | 335 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [verify_strict_lower_bound_withInv](declarations/verify-strict-lower-bound-withinv.md) | 351 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [verify_upper_bound_Icc_withInv](declarations/verify-upper-bound-icc-withinv.md) | 367 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [verify_lower_bound_Icc_withInv](declarations/verify-lower-bound-icc-withinv.md) | 377 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [verify_strict_upper_bound_Icc_withInv](declarations/verify-strict-upper-bound-icc-withinv.md) | 387 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [verify_strict_lower_bound_Icc_withInv](declarations/verify-strict-lower-bound-icc-withinv.md) | 397 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `def` | [checkLowerBoundSmart](declarations/checklowerboundsmart.md) | 418 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `def` | [checkUpperBoundSmart](declarations/checkupperboundsmart.md) | 441 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [increasing_min_at_left_core](declarations/increasing-min-at-left-core.md) | 459 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [decreasing_min_at_right_core](declarations/decreasing-min-at-right-core.md) | 502 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `theorem` | [verify_lower_bound_smart](declarations/verify-lower-bound-smart.md) | 538 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `theorem` | [increasing_max_at_right_core](declarations/increasing-max-at-right-core.md) | 587 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `theorem` | [decreasing_max_at_left_core](declarations/decreasing-max-at-left-core.md) | 623 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `theorem` | [verify_upper_bound_smart](declarations/verify-upper-bound-smart.md) | 659 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `theorem` | [verify_upper_bound_Icc](declarations/verify-upper-bound-icc.md) | 714 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `theorem` | [verify_lower_bound_Icc](declarations/verify-lower-bound-icc.md) | 724 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `theorem` | [verify_upper_bound_Icc_core](declarations/verify-upper-bound-icc-core.md) | 735 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `theorem` | [verify_lower_bound_Icc_core](declarations/verify-lower-bound-icc-core.md) | 746 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `theorem` | [verify_strict_upper_bound_Icc_core](declarations/verify-strict-upper-bound-icc-core.md) | 756 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `theorem` | [verify_strict_lower_bound_Icc_core](declarations/verify-strict-lower-bound-icc-core.md) | 766 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `theorem` | [verify_upper_bound_split](declarations/verify-upper-bound-split.md) | 784 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `theorem` | [verify_lower_bound_split](declarations/verify-lower-bound-split.md) | 795 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `theorem` | [verify_strict_upper_bound_split](declarations/verify-strict-upper-bound-split.md) | 806 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `theorem` | [verify_strict_lower_bound_split](declarations/verify-strict-lower-bound-split.md) | 817 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `theorem` | [verify_upper_bound_Icc_split](declarations/verify-upper-bound-icc-split.md) | 828 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `theorem` | [verify_lower_bound_Icc_split](declarations/verify-lower-bound-icc-split.md) | 839 | `BLOCKED_NATIVE_ADMISSION` |
| 51 | `theorem` | [verify_strict_upper_bound_Icc_split](declarations/verify-strict-upper-bound-icc-split.md) | 850 | `BLOCKED_NATIVE_ADMISSION` |
| 52 | `theorem` | [verify_strict_lower_bound_Icc_split](declarations/verify-strict-lower-bound-icc-split.md) | 861 | `BLOCKED_NATIVE_ADMISSION` |
| 53 | `theorem` | [mem_split_general](declarations/mem-split-general.md) | 878 | `BLOCKED_NATIVE_ADMISSION` |
| 54 | `theorem` | [verify_upper_bound_general_split](declarations/verify-upper-bound-general-split.md) | 890 | `BLOCKED_NATIVE_ADMISSION` |
| 55 | `theorem` | [verify_lower_bound_general_split](declarations/verify-lower-bound-general-split.md) | 903 | `BLOCKED_NATIVE_ADMISSION` |
| 56 | `theorem` | [verify_strict_upper_bound_general_split](declarations/verify-strict-upper-bound-general-split.md) | 916 | `BLOCKED_NATIVE_ADMISSION` |
| 57 | `theorem` | [verify_strict_lower_bound_general_split](declarations/verify-strict-lower-bound-general-split.md) | 929 | `BLOCKED_NATIVE_ADMISSION` |
| 58 | `def` | [checkGlobalLowerBound](declarations/checkgloballowerbound.md) | 959 | `BLOCKED_NATIVE_ADMISSION` |
| 59 | `def` | [checkGlobalUpperBound](declarations/checkglobalupperbound.md) | 969 | `BLOCKED_NATIVE_ADMISSION` |
| 60 | `def` | [checkGlobalBounds](declarations/checkglobalbounds.md) | 974 | `BLOCKED_NATIVE_ADMISSION` |
| 61 | `theorem` | [verify_global_lower_bound](declarations/verify-global-lower-bound.md) | 988 | `BLOCKED_NATIVE_ADMISSION` |
| 62 | `theorem` | [verify_global_upper_bound](declarations/verify-global-upper-bound.md) | 1011 | `BLOCKED_NATIVE_ADMISSION` |
| 63 | `theorem` | [verify_global_bounds](declarations/verify-global-bounds.md) | 1039 | `BLOCKED_NATIVE_ADMISSION` |
| 64 | `structure` | [RootConfig](declarations/rootconfig.md) | 1065 | `BLOCKED_NATIVE_ADMISSION` |
| 65 | `structure` | [NewtonConfig](declarations/newtonconfig.md) | 1073 | `BLOCKED_NATIVE_ADMISSION` |
| 66 | `def` | [checkSignChange](declarations/checksignchange.md) | 1084 | `BLOCKED_NATIVE_ADMISSION` |
| 67 | `def` | [checkNoRoot](declarations/checknoroot.md) | 1096 | `BLOCKED_NATIVE_ADMISSION` |
| 68 | `def` | [newtonStepCore](declarations/newtonstepcore.md) | 1108 | `BLOCKED_NATIVE_ADMISSION` |
| 69 | `lemma` | [newtonStepCore_extract](declarations/newtonstepcore-extract.md) | 1129 | `BLOCKED_NATIVE_ADMISSION` |
| 70 | `def` | [checkNewtonContractsCore](declarations/checknewtoncontractscore.md) | 1163 | `BLOCKED_NATIVE_ADMISSION` |
| 71 | `def` | [checkNewtonContracts](declarations/checknewtoncontracts.md) | 1174 | `BLOCKED_NATIVE_ADMISSION` |
| 72 | `theorem` | [verify_no_root](declarations/verify-no-root.md) | 1186 | `BLOCKED_NATIVE_ADMISSION` |
| 73 | `theorem` | [verify_unique_root_newton](declarations/verify-unique-root-newton.md) | 1217 | `BLOCKED_NATIVE_ADMISSION` |
| 74 | `lemma` | [mvt_lower_bound_core](declarations/mvt-lower-bound-core.md) | 1247 | `BLOCKED_NATIVE_ADMISSION` |
| 75 | `lemma` | [mvt_upper_bound_core](declarations/mvt-upper-bound-core.md) | 1271 | `BLOCKED_NATIVE_ADMISSION` |
| 76 | `theorem` | [verify_unique_root_core](declarations/verify-unique-root-core.md) | 1307 | `BLOCKED_NATIVE_ADMISSION` |
| 77 | `theorem` | [newton_preserves_root_core](declarations/newton-preserves-root-core.md) | 1325 | `BLOCKED_NATIVE_ADMISSION` |
| 78 | `theorem` | [newton_step_core_at_most_one_root](declarations/newton-step-core-at-most-one-root.md) | 1377 | `BLOCKED_NATIVE_ADMISSION` |
| 79 | `lemma` | [mvt_fc_lower_bound_pos_increasing_core](declarations/mvt-fc-lower-bound-pos-increasing-core.md) | 1441 | `BLOCKED_NATIVE_ADMISSION` |
| 80 | `lemma` | [mvt_fc_upper_bound_pos_increasing_core](declarations/mvt-fc-upper-bound-pos-increasing-core.md) | 1478 | `BLOCKED_NATIVE_ADMISSION` |
| 81 | `lemma` | [mvt_fc_upper_bound_neg_decreasing_core](declarations/mvt-fc-upper-bound-neg-decreasing-core.md) | 1515 | `BLOCKED_NATIVE_ADMISSION` |
| 82 | `lemma` | [mvt_fc_lower_bound_neg_decreasing_core](declarations/mvt-fc-lower-bound-neg-decreasing-core.md) | 1552 | `BLOCKED_NATIVE_ADMISSION` |
| 83 | `theorem` | [verify_unique_root_computable](declarations/verify-unique-root-computable.md) | 1593 | `BLOCKED_NATIVE_ADMISSION` |
| 84 | `theorem` | [verify_sign_change](declarations/verify-sign-change.md) | 1810 | `BLOCKED_NATIVE_ADMISSION` |
| 85 | `def` | [checkHasRoot](declarations/checkhasroot.md) | 1889 | `BLOCKED_NATIVE_ADMISSION` |
| 86 | `theorem` | [verify_has_root](declarations/verify-has-root.md) | 1901 | `BLOCKED_NATIVE_ADMISSION` |
| 87 | `def` | [uniformPartitionCore](declarations/uniformpartitioncore.md) | 1961 | `BLOCKED_NATIVE_ADMISSION` |
| 88 | `def` | [sumIntervalBoundsCore](declarations/sumintervalboundscore.md) | 1977 | `BLOCKED_NATIVE_ADMISSION` |
| 89 | `def` | [integrateIntervalCore](declarations/integrateintervalcore.md) | 1988 | `BLOCKED_NATIVE_ADMISSION` |
| 90 | `def` | [integrateInterval1Core](declarations/integrateinterval1core.md) | 1993 | `BLOCKED_NATIVE_ADMISSION` |
| 91 | `theorem` | [exprSupportedCore_intervalIntegrable](declarations/exprsupportedcore-intervalintegrable.md) | 2007 | `BLOCKED_NATIVE_ADMISSION` |
| 92 | `theorem` | [integrateInterval1Core_correct](declarations/integrateinterval1core-correct.md) | 2025 | `BLOCKED_NATIVE_ADMISSION` |
| 93 | `def` | [checkIntegralBoundsCore](declarations/checkintegralboundscore.md) | 2080 | `BLOCKED_NATIVE_ADMISSION` |
| 94 | `theorem` | [verify_integral_bound](declarations/verify-integral-bound.md) | 2098 | `BLOCKED_NATIVE_ADMISSION` |
| 95 | `def` | [getIntegralBound](declarations/getintegralbound.md) | 2108 | `BLOCKED_NATIVE_ADMISSION` |
| 96 | `theorem` | [integral_in_bound](declarations/integral-in-bound.md) | 2114 | `BLOCKED_NATIVE_ADMISSION` |
| 97 | `def` | [integrateInterval1WithInv](declarations/integrateinterval1withinv.md) | 2127 | `BLOCKED_NATIVE_ADMISSION` |
| 98 | `theorem` | [integrateInterval1WithInv_correct](declarations/integrateinterval1withinv-correct.md) | 2134 | `BLOCKED_NATIVE_ADMISSION` |
| 99 | `def` | [checkIntegralBoundsWithInv](declarations/checkintegralboundswithinv.md) | 2194 | `BLOCKED_NATIVE_ADMISSION` |
| 100 | `theorem` | [verify_integral_bound_withInv](declarations/verify-integral-bound-withinv.md) | 2205 | `BLOCKED_NATIVE_ADMISSION` |
| 101 | `def` | [collectBoundsWithInv](declarations/collectboundswithinv.md) | 2228 | `BLOCKED_NATIVE_ADMISSION` |
| 102 | `def` | [integratePartitionWithInv](declarations/integratepartitionwithinv.md) | 2237 | `BLOCKED_NATIVE_ADMISSION` |
| 103 | `theorem` | [collectBoundsWithInv_length](declarations/collectboundswithinv-length.md) | 2245 | `BLOCKED_NATIVE_ADMISSION` |
| 104 | `theorem` | [collectBoundsWithInv_getElem](declarations/collectboundswithinv-getelem.md) | 2266 | `BLOCKED_NATIVE_ADMISSION` |
| 105 | `theorem` | [integral_subinterval_bounded_withInv](declarations/integral-subinterval-bounded-withinv.md) | 2296 | `BLOCKED_NATIVE_ADMISSION` |
| 106 | `theorem` | [integratePartitionWithInv_correct](declarations/integratepartitionwithinv-correct.md) | 2307 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=36214b76e62b99e9fba5b83680a84a2d798b5b08dd9d0b4a440108ecccfdd0e0 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/RealAnalysis/Integration/Bounds/Variantab9cf2ae984ae636e0ac7f9b754497d9095d066e45f4d5f698a284597a0ae616.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
