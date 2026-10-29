# Optimize Namespaced

[Complete source index](../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**42 observed declarations and anonymous commands**, 28 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Optimize/Variantb46b80fe9abc3556bf4bbeb627397e430f5fc4aefb1a71025c84e29b9873868a.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `9ca70cedf89542b60ae036f418c0b4be33db63fc`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../_verification/specifications/RealFunctions/OptimizeNamespaced.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `structure` | [OptResult](declarations/optresult.md) | 50 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `def` | [derivStrictlyPositive](declarations/derivstrictlypositive.md) | 61 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `def` | [derivStrictlyNegative](declarations/derivstrictlynegative.md) | 66 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `def` | [minimizeInterval](declarations/minimizeinterval.md) | 76 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [minimizeInterval_base_correct](declarations/minimizeinterval-base-correct.md) | 129 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [derivInterval_correct_evalWithDeriv1](declarations/derivinterval-correct-evalwithderiv1.md) | 141 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [derivInterval_correct_single](declarations/derivinterval-correct-single.md) | 151 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [deriv_pos_on_interval](declarations/deriv-pos-on-interval.md) | 158 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [deriv_neg_on_interval](declarations/deriv-neg-on-interval.md) | 169 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [strictMonoOn_of_deriv_pos_interval](declarations/strictmonoon-of-deriv-pos-interval.md) | 180 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [strictAntiOn_of_deriv_neg_interval](declarations/strictantion-of-deriv-neg-interval.md) | 196 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [increasing_min_at_left](declarations/increasing-min-at-left.md) | 214 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [decreasing_min_at_right](declarations/decreasing-min-at-right.md) | 230 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [increasing_endpoint_bound](declarations/increasing-endpoint-bound.md) | 245 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [decreasing_endpoint_bound](declarations/decreasing-endpoint-bound.md) | 259 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [mem_bisect_cases](declarations/mem-bisect-cases.md) | 275 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [minimizeInterval_go_correct](declarations/minimizeinterval-go-correct.md) | 284 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [minimizeInterval_correct](declarations/minimizeinterval-correct-source-edition-2.md) | 340 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `def` | [maximizeInterval](declarations/maximizeinterval-source-edition-2.md) | 350 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [maximizeInterval_correct](declarations/maximizeinterval-correct-source-edition-2.md) | 359 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `def` | [checkLowerBound](declarations/checklowerbound.md) | 394 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `def` | [checkUpperBound](declarations/checkupperbound.md) | 400 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [deriv_pos_on_interval_idx](declarations/deriv-pos-on-interval-idx.md) | 423 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [deriv_neg_on_interval_idx](declarations/deriv-neg-on-interval-idx.md) | 437 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [strictMonoOn_of_deriv_pos_interval_idx](declarations/strictmonoon-of-deriv-pos-interval-idx.md) | 451 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [strictAntiOn_of_deriv_neg_interval_idx](declarations/strictantion-of-deriv-neg-interval-idx.md) | 470 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [increasing_min_at_left_idx](declarations/increasing-min-at-left-idx.md) | 491 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [decreasing_min_at_right_idx](declarations/decreasing-min-at-right-idx.md) | 511 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `def` | [derivStrictlyPositive_idx](declarations/derivstrictlypositive-idx.md) | 531 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `def` | [derivStrictlyNegative_idx](declarations/derivstrictlynegative-idx.md) | 536 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `def` | [updateIntervalEnv](declarations/updateintervalenv.md) | 541 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `def` | [minimizeIntervalIdx](declarations/minimizeintervalidx.md) | 550 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [minimizeIntervalIdx_base_correct](declarations/minimizeintervalidx-base-correct.md) | 608 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [mem_bisect_cases_idx](declarations/mem-bisect-cases-idx.md) | 618 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `theorem` | [minimizeIntervalIdx_go_correct](declarations/minimizeintervalidx-go-correct.md) | 626 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `theorem` | [minimizeIntervalIdx_correct](declarations/minimizeintervalidx-correct.md) | 821 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `def` | [maximizeIntervalIdx](declarations/maximizeintervalidx.md) | 833 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `theorem` | [maximizeIntervalIdx_correct](declarations/maximizeintervalidx-correct.md) | 841 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `def` | [minimizeInterval'](declarations/minimizeinterval-source-edition-2.md) | 863 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `theorem` | [minimizeInterval'_correct](declarations/minimizeinterval-correct.md) | 869 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `def` | [maximizeInterval'](declarations/maximizeinterval.md) | 884 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `theorem` | [maximizeInterval'_correct](declarations/maximizeinterval-correct.md) | 889 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=77d4e397128ed99834a28388bf6cc076b34d21093e8f563a51c94b282e48f75a -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Optimize/Variantb46b80fe9abc3556bf4bbeb627397e430f5fc4aefb1a71025c84e29b9873868a.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
