# Martingale Borel Cantelli Borel Cantelli Aligned

[Complete source index](../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**26 observed declarations and anonymous commands**, 24 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/ProbabilityAndMathematicalStatistics/StochasticProcesses/Martingales/BorelCantelli/Variantcc369856038b61243fb7f39b2e185a0d3c5eb24690e6adf3b2303c943cbe2aff.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `360faf71b2f4b003f028ce88b806ce86bd38e256`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../_verification/specifications/ProbabilityTheoryAndStochasticProcesses/MartingaleBorelCantelliBorelCantelliAligned.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [leastGE](declarations/leastge.md) | 50 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `theorem` | [Adapted.isStoppingTime_leastGE](declarations/adapted-isstoppingtime-leastge.md) | 54 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `theorem` | [leastGE_le](declarations/leastge-le.md) | 59 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `theorem` | [leastGE_mono](declarations/leastge-mono.md) | 67 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [leastGE_eq_min](declarations/leastge-eq-min.md) | 71 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [stoppedValue_stoppedValue_leastGE](declarations/stoppedvalue-stoppedvalue-leastge.md) | 89 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [Submartingale.stoppedValue_leastGE](declarations/submartingale-stoppedvalue-leastge.md) | 95 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [norm_stoppedValue_leastGE_le](declarations/norm-stoppedvalue-leastge-le.md) | 114 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [Submartingale.stoppedValue_leastGE_snorm_le](declarations/submartingale-stoppedvalue-leastge-snorm-le.md) | 129 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [Submartingale.stoppedValue_leastGE_snorm_le'](declarations/submartingale-stoppedvalue-leastge-snorm-le-source-edition-2.md) | 139 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [Submartingale.exists_tendsto_of_abs_bddAbove_aux](declarations/submartingale-exists-tendsto-of-abs-bddabove-aux.md) | 148 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [Submartingale.bddAbove_iff_exists_tendsto_aux](declarations/submartingale-bddabove-iff-exists-tendsto-aux.md) | 172 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [Submartingale.bddAbove_iff_exists_tendsto](declarations/submartingale-bddabove-iff-exists-tendsto.md) | 181 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [Martingale.bddAbove_range_iff_bddBelow_range](declarations/martingale-bddabove-range-iff-bddbelow-range.md) | 229 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [Martingale.ae_not_tendsto_atTop_atTop](declarations/martingale-ae-not-tendsto-attop-attop.md) | 257 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [Martingale.ae_not_tendsto_atTop_atBot](declarations/martingale-ae-not-tendsto-attop-atbot.md) | 264 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `def` | [process](declarations/process.md) | 275 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [process_zero](declarations/process-zero.md) | 281 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [adapted_process](declarations/adapted-process.md) | 284 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [martingalePart_process_ae_eq](declarations/martingalepart-process-ae-eq.md) | 289 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [predictablePart_process_ae_eq](declarations/predictablepart-process-ae-eq.md) | 297 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [process_difference_le](declarations/process-difference-le.md) | 305 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [integrable_process](declarations/integrable-process.md) | 314 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [tendsto_sum_indicator_atTop_iff](declarations/tendsto-sum-indicator-attop-iff-source-edition-2.md) | 326 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [tendsto_sum_indicator_atTop_iff'](declarations/tendsto-sum-indicator-attop-iff.md) | 357 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [ae_mem_limsup_atTop_iff](declarations/ae-mem-limsup-attop-iff.md) | 376 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=3601f086962711e391a4e9558f8c2cea6bfb17087cf77f6a005eb9e504cae930 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/ProbabilityAndMathematicalStatistics/StochasticProcesses/Martingales/BorelCantelli/Variantcc369856038b61243fb7f39b2e185a0d3c5eb24690e6adf3b2303c943cbe2aff.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
