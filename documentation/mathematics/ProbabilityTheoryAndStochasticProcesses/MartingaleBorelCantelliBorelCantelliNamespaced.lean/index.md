# Martingale Borel Cantelli Borel Cantelli Namespaced

[Complete source index](../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**26 observed declarations and anonymous commands**, 24 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/ProbabilityAndMathematicalStatistics/StochasticProcesses/Martingales/BorelCantelli/Variantbd227a7b1c7b90153c013e269fdcb7da1be88847c397f21cf3069ddac6094a82.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `8413f1a9e8b09cfcfc01dff919f75c3556411362`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../_verification/specifications/ProbabilityTheoryAndStochasticProcesses/MartingaleBorelCantelliBorelCantelliNamespaced.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [leastGE](declarations/leastge.md) | 60 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `theorem` | [Adapted.isStoppingTime_leastGE](declarations/adapted-isstoppingtime-leastge.md) | 63 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `theorem` | [leastGE_le](declarations/leastge-le.md) | 67 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `theorem` | [leastGE_mono](declarations/leastge-mono.md) | 74 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [leastGE_eq_min](declarations/leastge-eq-min.md) | 77 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [stoppedValue_stoppedValue_leastGE](declarations/stoppedvalue-stoppedvalue-leastge.md) | 94 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [Submartingale.stoppedValue_leastGE](declarations/submartingale-stoppedvalue-leastge.md) | 101 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [norm_stoppedValue_leastGE_le](declarations/norm-stoppedvalue-leastge-le.md) | 119 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [Submartingale.stoppedValue_leastGE_eLpNorm_le](declarations/submartingale-stoppedvalue-leastge-elpnorm-le-source-edition-2.md) | 133 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [Submartingale.stoppedValue_leastGE_eLpNorm_le'](declarations/submartingale-stoppedvalue-leastge-elpnorm-le.md) | 142 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [Submartingale.exists_tendsto_of_abs_bddAbove_aux](declarations/submartingale-exists-tendsto-of-abs-bddabove-aux.md) | 151 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [Submartingale.bddAbove_iff_exists_tendsto_aux](declarations/submartingale-bddabove-iff-exists-tendsto-aux.md) | 174 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [Submartingale.bddAbove_iff_exists_tendsto](declarations/submartingale-bddabove-iff-exists-tendsto.md) | 182 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [Martingale.bddAbove_range_iff_bddBelow_range](declarations/martingale-bddabove-range-iff-bddbelow-range.md) | 229 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [Martingale.ae_not_tendsto_atTop_atTop](declarations/martingale-ae-not-tendsto-attop-attop.md) | 256 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [Martingale.ae_not_tendsto_atTop_atBot](declarations/martingale-ae-not-tendsto-attop-atbot.md) | 262 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `def` | [process](declarations/process.md) | 272 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [process_zero](declarations/process-zero.md) | 277 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [adapted_process](declarations/adapted-process.md) | 279 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [martingalePart_process_ae_eq](declarations/martingalepart-process-ae-eq.md) | 283 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [predictablePart_process_ae_eq](declarations/predictablepart-process-ae-eq.md) | 290 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [process_difference_le](declarations/process-difference-le.md) | 297 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [integrable_process](declarations/integrable-process.md) | 305 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [tendsto_sum_indicator_atTop_iff](declarations/tendsto-sum-indicator-attop-iff.md) | 316 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [tendsto_sum_indicator_atTop_iff'](declarations/tendsto-sum-indicator-attop-iff-source-edition-2.md) | 346 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [ae_mem_limsup_atTop_iff](declarations/ae-mem-limsup-attop-iff.md) | 364 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=704d4a76f96b7ef5ab70eca04917d9005a82bcfad28a0febb144451578118e0b -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/ProbabilityAndMathematicalStatistics/StochasticProcesses/Martingales/BorelCantelli/Variantbd227a7b1c7b90153c013e269fdcb7da1be88847c397f21cf3069ddac6094a82.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
