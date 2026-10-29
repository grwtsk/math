# Pinned Prime Weight Capacity Ratio

[Complete source index](../../../complete-source-index.md) · [Up one directory](../../../complete-source-index.md) · [Full source](source.md)

**21 observed declarations and anonymous commands**, 16 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/NumberTheory/Zeta/Riemann/PinnedPrimeWeightCapacityRatio.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `1c8a6c10724828c18cf3429d0dd6d25ce415f7dd`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/NumberTheory/ZetaAndLFunctionsAnalyticTheory/PinnedPrimeWeightCapacityRatio.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [pinnedPrimeWeightRemainingTarget](declarations/pinnedprimeweightremainingtarget.md) | 45 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `def` | [pinnedPrimeWeightRequiredCapacity](declarations/pinnedprimeweightrequiredcapacity.md) | 51 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `def` | [pinnedPrimeWeightFiniteCapacityRequirement](declarations/pinnedprimeweightfinitecapacityrequirement.md) | 58 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `theorem` | [pinnedPrimeWeightRemainingTarget_nonnegative](declarations/pinnedprimeweightremainingtarget-nonnegative.md) | 64 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [pinnedPrimeWeightRemainingTarget_eq_zero_iff](declarations/pinnedprimeweightremainingtarget-eq-zero-iff.md) | 72 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [pinnedPrimeWeightRemainingTarget_eq_sub_of_lt](declarations/pinnedprimeweightremainingtarget-eq-sub-of-lt.md) | 91 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [pinnedPrimeWeightAmplitudeRequirement_iff_remainingTarget](declarations/pinnedprimeweightamplituderequirement-iff-remainingtarget.md) | 101 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [pinnedPrimeWeightRequiredCapacity_nonnegative](declarations/pinnedprimeweightrequiredcapacity-nonnegative.md) | 122 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [pinnedPrimeWeightAmplitudeRequirement_iff_requiredCapacity_le](declarations/pinnedprimeweightamplituderequirement-iff-requiredcapacity-le.md) | 133 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [pinnedPrimeWeightRequiredCapacity_is_least_nonnegative_budget](declarations/pinnedprimeweightrequiredcapacity-is-least-nonnegative-budget.md) | 151 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [pinnedPrimeWeightAmplitudeRequirement_of_amplitude_eq_zero_iff](declarations/pinnedprimeweightamplituderequirement-of-amplitude-eq-zero-iff.md) | 173 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [pinnedPrimeWeightAmplitudeRequirement_nonvacuous_amplitude_ne_zero](declarations/pinnedprimeweightamplituderequirement-nonvacuous-amplitude-ne-zero.md) | 190 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [pinnedPrimeWeightAmplitudeRequirement_nonvacuous_capacity_pos](declarations/pinnedprimeweightamplituderequirement-nonvacuous-capacity-pos.md) | 204 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [pinnedPrimeWeightAmplitudeRequirement_iff_finiteCapacityRequirement](declarations/pinnedprimeweightamplituderequirement-iff-finitecapacityrequirement.md) | 226 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `def` | [PinnedPrimeWeightCapacityRatioCriterionAt](declarations/pinnedprimeweightcapacityratiocriterionat.md) | 253 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `def` | [PinnedPrimeWeightFixedCapacityRatioCriterionAt](declarations/pinnedprimeweightfixedcapacityratiocriterionat.md) | 266 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [pinnedPrimeWeightCapacityRatioCriterion_iff_amplitudeCriterion](declarations/pinnedprimeweightcapacityratiocriterion-iff-amplitudecriterion.md) | 280 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [pinnedPrimeWeightFixedCapacityRatioCriterion_iff_amplitudeCriterion](declarations/pinnedprimeweightfixedcapacityratiocriterion-iff-amplitudecriterion.md) | 308 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [pinnedPrimeWeightRuleDeficitCriterion_to_capacityRatioCriterion](declarations/pinnedprimeweightruledeficitcriterion-to-capacityratiocriterion.md) | 340 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [pinnedPrimeWeightFixedCapacityRatioCriterion_to_recurrence](declarations/pinnedprimeweightfixedcapacityratiocriterion-to-recurrence.md) | 351 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [pinnedPrimeWeightFixedCapacityRatioCriterion_to_descent](declarations/pinnedprimeweightfixedcapacityratiocriterion-to-descent.md) | 362 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=cb2f5c5b7d22784161fc9be961b31a182af76eb6a306687a6d7fb8b26aeda251 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/Zeta/Riemann/PinnedPrimeWeightCapacityRatio.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
