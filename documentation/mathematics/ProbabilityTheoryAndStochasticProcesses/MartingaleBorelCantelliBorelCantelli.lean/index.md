# Martingale Borel Cantelli Borel Cantelli

[Complete source index](../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**26 observed declarations and anonymous commands**, 24 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/ProbabilityAndMathematicalStatistics/StochasticProcesses/Martingales/BorelCantelli/Variant8c12027a02ae34661544ce37a7d6471a6f69c642aeae50ad52df38083bc65ebd.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `7e168e34ce7c2455cd4d04106b9a5857e19c0fdb`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../_verification/specifications/ProbabilityTheoryAndStochasticProcesses/MartingaleBorelCantelliBorelCantelli.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [leastGE](declarations/leastge.md) | 52 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `theorem` | [Adapted.isStoppingTime_leastGE](declarations/adapted-isstoppingtime-leastge.md) | 55 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `theorem` | [leastGE_le](declarations/leastge-le.md) | 59 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `theorem` | [leastGE_mono](declarations/leastge-mono.md) | 66 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [leastGE_eq_min](declarations/leastge-eq-min.md) | 69 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [stoppedValue_stoppedValue_leastGE](declarations/stoppedvalue-stoppedvalue-leastge.md) | 86 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [Submartingale.stoppedValue_leastGE](declarations/submartingale-stoppedvalue-leastge.md) | 93 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [norm_stoppedValue_leastGE_le](declarations/norm-stoppedvalue-leastge-le.md) | 111 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [Submartingale.stoppedValue_leastGE_eLpNorm_le](declarations/submartingale-stoppedvalue-leastge-elpnorm-le-source-edition-2.md) | 125 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [Submartingale.stoppedValue_leastGE_eLpNorm_le'](declarations/submartingale-stoppedvalue-leastge-elpnorm-le.md) | 134 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [Submartingale.exists_tendsto_of_abs_bddAbove_aux](declarations/submartingale-exists-tendsto-of-abs-bddabove-aux.md) | 143 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [Submartingale.bddAbove_iff_exists_tendsto_aux](declarations/submartingale-bddabove-iff-exists-tendsto-aux.md) | 166 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [Submartingale.bddAbove_iff_exists_tendsto](declarations/submartingale-bddabove-iff-exists-tendsto.md) | 174 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [Martingale.bddAbove_range_iff_bddBelow_range](declarations/martingale-bddabove-range-iff-bddbelow-range.md) | 221 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [Martingale.ae_not_tendsto_atTop_atTop](declarations/martingale-ae-not-tendsto-attop-attop.md) | 248 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [Martingale.ae_not_tendsto_atTop_atBot](declarations/martingale-ae-not-tendsto-attop-atbot.md) | 254 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `def` | [process](declarations/process.md) | 264 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [process_zero](declarations/process-zero.md) | 269 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [adapted_process](declarations/adapted-process.md) | 271 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [martingalePart_process_ae_eq](declarations/martingalepart-process-ae-eq.md) | 275 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [predictablePart_process_ae_eq](declarations/predictablepart-process-ae-eq.md) | 282 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [process_difference_le](declarations/process-difference-le.md) | 289 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [integrable_process](declarations/integrable-process.md) | 297 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [tendsto_sum_indicator_atTop_iff](declarations/tendsto-sum-indicator-attop-iff.md) | 308 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [tendsto_sum_indicator_atTop_iff'](declarations/tendsto-sum-indicator-attop-iff-source-edition-2.md) | 338 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [ae_mem_limsup_atTop_iff](declarations/ae-mem-limsup-attop-iff.md) | 356 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=7eeebe961a01c7ef4b6c162ab7e7471aed5b1d1ac2885191c6ab9cb7d543c107 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/ProbabilityAndMathematicalStatistics/StochasticProcesses/Martingales/BorelCantelli/Variant8c12027a02ae34661544ce37a7d6471a6f69c642aeae50ad52df38083bc65ebd.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
