# Finite Log Affine Covariance

[Complete source index](../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**28 observed declarations and anonymous commands**, 19 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/45dd9ae9e63904c9f7062ebbe347170090e28970e5a428294df406ab1811c457FiniteLogAffineC/Variant45dd9ae9e63904c9f7062ebbe347170090e28970e5a428294df406ab1811c457.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `1fcc27e1716cd7cf19c9b8beb5e0157c667c0890`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/FiniteLogAffineCovariance.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `structure` | [FiniteLogAffineFamily](declarations/finitelogaffinefamily.md) | 54 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `def` | [unnormalizedWeight](declarations/unnormalizedweight.md) | 66 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `theorem` | [unnormalizedWeight_pos](declarations/unnormalizedweight-pos.md) | 70 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `def` | [partition](declarations/partition.md) | 75 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [partition_pos](declarations/partition-pos.md) | 79 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `def` | [logPartition](declarations/logpartition.md) | 87 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [exp_logPartition](declarations/exp-logpartition.md) | 91 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `def` | [probability](declarations/probability.md) | 96 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [probability_pos](declarations/probability-pos.md) | 100 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [probability_nonnegative](declarations/probability-nonnegative.md) | 105 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [probability_sum](declarations/probability-sum.md) | 110 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `def` | [centroid](declarations/centroid.md) | 119 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [centroid_apply](declarations/centroid-apply.md) | 123 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `def` | [centeredStatistic](declarations/centeredstatistic.md) | 130 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [centeredStatistic_apply](declarations/centeredstatistic-apply.md) | 134 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `def` | [covarianceForm](declarations/covarianceform.md) | 140 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [covarianceForm_apply](declarations/covarianceform-apply.md) | 185 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [covarianceForm_diagonal](declarations/covarianceform-diagonal.md) | 194 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [covariance_nonnegative](declarations/covariance-nonnegative.md) | 205 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `structure` | [FiniteLogAffineCovarianceRealization](declarations/finitelogaffinecovariancerealization.md) | 216 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [potential_realized_as_logPartition](declarations/potential-realized-as-logpartition.md) | 235 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [gradient_realized_as_centroid](declarations/gradient-realized-as-centroid.md) | 240 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [geometryAt_eq_covariance](declarations/geometryat-eq-covariance.md) | 245 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [hessian_eq_covariance](declarations/hessian-eq-covariance.md) | 250 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [hessian_diagonal_eq_variance](declarations/hessian-diagonal-eq-variance.md) | 257 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [hessian_covariance_nonnegative](declarations/hessian-covariance-nonnegative.md) | 266 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [visible_iff_positive_variance](declarations/visible-iff-positive-variance.md) | 273 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [isNull_iff_zero_variance](declarations/isnull-iff-zero-variance.md) | 284 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=3d718eb92081993dab3a776ca3cc3264113bbe405ac0c071b9c8ff67dc275ec8 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/45dd9ae9e63904c9f7062ebbe347170090e28970e5a428294df406ab1811c457FiniteLogAffineC/Variant45dd9ae9e63904c9f7062ebbe347170090e28970e5a428294df406ab1811c457.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
