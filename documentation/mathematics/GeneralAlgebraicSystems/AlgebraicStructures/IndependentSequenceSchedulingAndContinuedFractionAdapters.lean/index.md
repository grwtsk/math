# Independent Sequence Scheduling And Continued Fraction Adapters

[Complete source index](../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**57 observed declarations and anonymous commands**, 42 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Algebra/BranchSequenceRealization/Variantb2cf70fccf5851011b0e74851f3da7cefe63635399c451176a85acea7c4d8004.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `b39d6cf29e119cfff1a261c954d91201d85c2137`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/GeneralAlgebraicSystems/AlgebraicStructures/IndependentSequenceSchedulingAndContinuedFractionAdapters.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [batchIncrement](declarations/batchincrement.md) | 35 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `def` | [batchClock](declarations/batchclock.md) | 39 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `theorem` | [batchIncrement_pos](declarations/batchincrement-pos.md) | 44 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `theorem` | [batchIncrement_le](declarations/batchincrement-le.md) | 50 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [index_le_batchClock](declarations/index-le-batchclock.md) | 57 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [batchClock_strictMono](declarations/batchclock-strictmono.md) | 64 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [batchClock_tendsto](declarations/batchclock-tendsto.md) | 72 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [unique_batch](declarations/unique-batch.md) | 77 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [epoch_no_starvation](declarations/epoch-no-starvation.md) | 103 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `def` | [partialQuotient](declarations/partialquotient.md) | 114 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `def` | [continuedFraction](declarations/continuedfraction.md) | 117 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `def` | [denominator](declarations/denominator.md) | 121 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `def` | [numerator](declarations/numerator.md) | 127 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [partialQuotient_pos](declarations/partialquotient-pos.md) | 133 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [continuedFraction_term](declarations/continuedfraction-term.md) | 138 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [continuedFraction_not_terminates](declarations/continuedfraction-not-terminates.md) | 142 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [native_continuants](declarations/native-continuants.md) | 149 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [denominator_pos](declarations/denominator-pos.md) | 165 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [fib_le_denominator](declarations/fib-le-denominator.md) | 173 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [index_le_denominator](declarations/index-le-denominator.md) | 184 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [denominator_tendsto](declarations/denominator-tendsto.md) | 196 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [denominator_ones](declarations/denominator-ones.md) | 201 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `def` | [DenominatorRecurrence](declarations/denominatorrecurrence.md) | 211 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [generated_denominator_recurrence](declarations/generated-denominator-recurrence.md) | 216 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [denominator_recurrence_identifies](declarations/denominator-recurrence-identifies.md) | 221 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [powers_two_not_denominators](declarations/powers-two-not-denominators.md) | 231 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `def` | [growthCoefficient](declarations/growthcoefficient.md) | 239 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [growthCoefficient_pos](declarations/growthcoefficient-pos.md) | 243 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [growthCoefficient_meets_target](declarations/growthcoefficient-meets-target.md) | 249 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [denominator_coprime](declarations/denominator-coprime.md) | 260 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [denominator_le_succ](declarations/denominator-le-succ.md) | 270 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [denominator_remainder](declarations/denominator-remainder.md) | 281 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `def` | [arithmeticExponent](declarations/arithmeticexponent.md) | 288 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [log_ratio_tendsto_zero](declarations/log-ratio-tendsto-zero.md) | 292 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `theorem` | [arithmeticExponent_zero_of_bounded_ratio](declarations/arithmeticexponent-zero-of-bounded-ratio.md) | 317 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `theorem` | [fibonacci_arithmeticExponent_zero](declarations/fibonacci-arithmeticexponent-zero.md) | 325 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `def` | [spikeCoefficient](declarations/spikecoefficient.md) | 340 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `def` | [spikeStep](declarations/spikestep.md) | 344 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `theorem` | [spikeCoefficient_pos](declarations/spikecoefficient-pos.md) | 348 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `theorem` | [spikeCoefficient_zero](declarations/spikecoefficient-zero.md) | 352 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `theorem` | [spike_rate_bounds](declarations/spike-rate-bounds.md) | 357 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `def` | [effectiveStrength](declarations/effectivestrength.md) | 396 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `theorem` | [effectiveStrength_nonneg](declarations/effectivestrength-nonneg.md) | 400 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `theorem` | [arithmeticExponent_of_spikes](declarations/arithmeticexponent-of-spikes.md) | 409 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `theorem` | [arithmeticExponent_of_converging_spikes](declarations/arithmeticexponent-of-converging-spikes.md) | 443 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `theorem` | [arithmeticExponent_of_diverging_spikes](declarations/arithmeticexponent-of-diverging-spikes.md) | 455 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `def` | [spikeDenominator](declarations/spikedenominator.md) | 468 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `def` | [spikePartialQuotient](declarations/spikepartialquotient.md) | 475 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `theorem` | [spikeDenominator_identifies](declarations/spikedenominator-identifies.md) | 479 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `theorem` | [spikeDenominator_pos](declarations/spikedenominator-pos.md) | 490 | `BLOCKED_NATIVE_ADMISSION` |
| 51 | `theorem` | [spikeDenominator_tendsto](declarations/spikedenominator-tendsto.md) | 496 | `BLOCKED_NATIVE_ADMISSION` |
| 52 | `theorem` | [spikeDenominator_step](declarations/spikedenominator-step.md) | 502 | `BLOCKED_NATIVE_ADMISSION` |
| 53 | `theorem` | [spikeDenominator_exponent](declarations/spikedenominator-exponent.md) | 515 | `BLOCKED_NATIVE_ADMISSION` |
| 54 | `theorem` | [selected_spike_exponent](declarations/selected-spike-exponent.md) | 523 | `BLOCKED_NATIVE_ADMISSION` |
| 55 | `def` | [FrequencyRealization](declarations/frequencyrealization.md) | 531 | `BLOCKED_NATIVE_ADMISSION` |
| 56 | `theorem` | [frequency_irrational](declarations/frequency-irrational.md) | 535 | `BLOCKED_NATIVE_ADMISSION` |
| 57 | `theorem` | [frequency_convergent](declarations/frequency-convergent.md) | 544 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=82260b708ed49484cd7b07dd030e358d2c773d6da3a1bc378ad96e631f55257f -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN (source snapshot `a63dee15727d`). Mathematical admission is not claimed. [Coverage](https://github.com/grwtsk/math/issues/1429).

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","snapshot":"a63dee15727d965b263e7b32a3a79b735297ca73b6d88c7d82b91be5ac3da782","source_paths":["GRWTSK/Algebra/BranchSequenceRealization/Variantb2cf70fccf5851011b0e74851f3da7cefe63635399c451176a85acea7c4d8004.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
