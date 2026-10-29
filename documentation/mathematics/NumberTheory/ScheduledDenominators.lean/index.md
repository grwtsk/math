# Scheduled Denominators

[Complete source index](../../complete-source-index.md) · [Up one directory](../../complete-source-index.md) · [Full source](source.md)

**59 observed declarations and anonymous commands**, 44 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/NumberTheory/ContinuedFractions/ScheduledDenominators.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `6a090d4535a2fee914bf0bcbaa59d73cbcf35002`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../_verification/specifications/NumberTheory/ScheduledDenominators.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [batchIncrement](declarations/batchincrement.md) | 35 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `def` | [batchClock](declarations/batchclock.md) | 39 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `theorem` | [batchClock_zero](declarations/batchclock-zero.md) | 42 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `theorem` | [batchClock_succ](declarations/batchclock-succ.md) | 43 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [batchIncrement_pos](declarations/batchincrement-pos.md) | 46 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [batchIncrement_le](declarations/batchincrement-le.md) | 52 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [index_le_batchClock](declarations/index-le-batchclock.md) | 59 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [batchClock_strictMono](declarations/batchclock-strictmono.md) | 66 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [batchClock_tendsto](declarations/batchclock-tendsto.md) | 74 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [unique_batch](declarations/unique-batch.md) | 79 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [epoch_no_starvation](declarations/epoch-no-starvation.md) | 105 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `def` | [partialQuotient](declarations/partialquotient.md) | 116 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `def` | [continuedFraction](declarations/continuedfraction.md) | 119 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `def` | [denominator](declarations/denominator.md) | 123 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `def` | [numerator](declarations/numerator.md) | 129 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [partialQuotient_pos](declarations/partialquotient-pos.md) | 135 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [continuedFraction_term](declarations/continuedfraction-term.md) | 140 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [continuedFraction_not_terminates](declarations/continuedfraction-not-terminates.md) | 144 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [native_continuants](declarations/native-continuants.md) | 151 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [denominator_pos](declarations/denominator-pos.md) | 167 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [fib_le_denominator](declarations/fib-le-denominator.md) | 175 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [index_le_denominator](declarations/index-le-denominator.md) | 186 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [denominator_tendsto](declarations/denominator-tendsto.md) | 198 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [denominator_ones](declarations/denominator-ones.md) | 203 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `def` | [DenominatorRecurrence](declarations/denominatorrecurrence.md) | 213 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [generated_denominator_recurrence](declarations/generated-denominator-recurrence.md) | 218 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [denominator_recurrence_identifies](declarations/denominator-recurrence-identifies.md) | 223 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [powers_two_not_denominators](declarations/powers-two-not-denominators.md) | 233 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `def` | [growthCoefficient](declarations/growthcoefficient.md) | 241 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [growthCoefficient_pos](declarations/growthcoefficient-pos.md) | 245 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [growthCoefficient_meets_target](declarations/growthcoefficient-meets-target.md) | 251 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [denominator_coprime](declarations/denominator-coprime.md) | 262 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [denominator_le_succ](declarations/denominator-le-succ.md) | 272 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [denominator_remainder](declarations/denominator-remainder.md) | 283 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `def` | [arithmeticExponent](declarations/arithmeticexponent.md) | 290 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `theorem` | [log_ratio_tendsto_zero](declarations/log-ratio-tendsto-zero.md) | 294 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `theorem` | [arithmeticExponent_zero_of_bounded_ratio](declarations/arithmeticexponent-zero-of-bounded-ratio.md) | 319 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `theorem` | [fibonacci_arithmeticExponent_zero](declarations/fibonacci-arithmeticexponent-zero.md) | 327 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `def` | [spikeCoefficient](declarations/spikecoefficient.md) | 342 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `def` | [spikeStep](declarations/spikestep.md) | 346 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `theorem` | [spikeCoefficient_pos](declarations/spikecoefficient-pos.md) | 350 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `theorem` | [spikeCoefficient_zero](declarations/spikecoefficient-zero.md) | 354 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `theorem` | [spike_rate_bounds](declarations/spike-rate-bounds.md) | 359 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `def` | [effectiveStrength](declarations/effectivestrength.md) | 398 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `theorem` | [effectiveStrength_nonneg](declarations/effectivestrength-nonneg.md) | 402 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `theorem` | [arithmeticExponent_of_spikes](declarations/arithmeticexponent-of-spikes.md) | 411 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `theorem` | [arithmeticExponent_of_converging_spikes](declarations/arithmeticexponent-of-converging-spikes.md) | 445 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `theorem` | [arithmeticExponent_of_diverging_spikes](declarations/arithmeticexponent-of-diverging-spikes.md) | 457 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `def` | [spikeDenominator](declarations/spikedenominator.md) | 470 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `def` | [spikePartialQuotient](declarations/spikepartialquotient.md) | 477 | `BLOCKED_NATIVE_ADMISSION` |
| 51 | `theorem` | [spikeDenominator_identifies](declarations/spikedenominator-identifies.md) | 481 | `BLOCKED_NATIVE_ADMISSION` |
| 52 | `theorem` | [spikeDenominator_pos](declarations/spikedenominator-pos.md) | 492 | `BLOCKED_NATIVE_ADMISSION` |
| 53 | `theorem` | [spikeDenominator_tendsto](declarations/spikedenominator-tendsto.md) | 498 | `BLOCKED_NATIVE_ADMISSION` |
| 54 | `theorem` | [spikeDenominator_step](declarations/spikedenominator-step.md) | 504 | `BLOCKED_NATIVE_ADMISSION` |
| 55 | `theorem` | [spikeDenominator_exponent](declarations/spikedenominator-exponent.md) | 517 | `BLOCKED_NATIVE_ADMISSION` |
| 56 | `theorem` | [selected_spike_exponent](declarations/selected-spike-exponent.md) | 525 | `BLOCKED_NATIVE_ADMISSION` |
| 57 | `def` | [FrequencyRealization](declarations/frequencyrealization.md) | 533 | `BLOCKED_NATIVE_ADMISSION` |
| 58 | `theorem` | [frequency_irrational](declarations/frequency-irrational.md) | 537 | `BLOCKED_NATIVE_ADMISSION` |
| 59 | `theorem` | [frequency_convergent](declarations/frequency-convergent.md) | 546 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=4fb9912634f1d0e620ef14b1031f9153b1f08812a187fd5313109b774c6826de -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/ContinuedFractions/ScheduledDenominators.lean","GRWTSK/NumberTheory/ElementaryNumberTheory/ContinuedFractions/ScheduledDenominators.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
