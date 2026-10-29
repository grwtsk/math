# Conditional Residual Joins For The Actual Signed Heat Source

[Complete source index](../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**33 observed declarations and anonymous commands**, 25 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Analysis/RealAnalysis/Integration/SourceSignedHeatResidual/Variant203b793ac51862ad27b5eed4511a24acf92ff24b7ac999c1ae9fe4731b836193.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `60d96d029b503bb95f4197761dc94058d8dde916`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../_verification/specifications/MeasureAndIntegration/ConditionalResidualJoinsForTheActualSignedHeatSource.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [heatRemainderKernel](declarations/heatremainderkernel.md) | 24 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `def` | [heatResidualCorrection](declarations/heatresidualcorrection.md) | 27 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `theorem` | [heatResidualCorrection_eq_mixed](declarations/heatresidualcorrection-eq-mixed.md) | 31 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `theorem` | [heatResidualCorrection_eq_paid_sub_terminal](declarations/heatresidualcorrection-eq-paid-sub-terminal.md) | 41 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [heatRemainderKernel_unit_difference](declarations/heatremainderkernel-unit-difference.md) | 48 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [heatRemainderKernel_not_additive](declarations/heatremainderkernel-not-additive.md) | 57 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `def` | [heatResidualCorrectionIntegral](declarations/heatresidualcorrectionintegral.md) | 66 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [bounded_integrable](declarations/bounded-integrable.md) | 73 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [add_bound](declarations/add-bound.md) | 78 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [heatRemainderKernel_integrable](declarations/heatremainderkernel-integrable.md) | 85 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [heatRemainderKernel_integral_eq](declarations/heatremainderkernel-integral-eq.md) | 96 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [heatResidualCorrection_integrable](declarations/heatresidualcorrection-integrable.md) | 111 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [heatResidualCorrectionIntegral_eq_remainder_sub](declarations/heatresidualcorrectionintegral-eq-remainder-sub.md) | 120 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [integral_split_full_terminal](declarations/integral-split-full-terminal.md) | 137 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [integral_split_residual_terminal](declarations/integral-split-residual-terminal.md) | 149 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [heatResidualCorrectionIntegral_eq_paid_sub_terminals](declarations/heatresidualcorrectionintegral-eq-paid-sub-terminals.md) | 158 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `structure` | [ActualSourceResidualJoin](declarations/actualsourceresidualjoin.md) | 169 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `def` | [sourceResidualSignedHeat](declarations/sourceresidualsignedheat.md) | 179 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `def` | [sourceResidualHeatRemainder](declarations/sourceresidualheatremainder.md) | 183 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `def` | [sourceResidualCorrection](declarations/sourceresidualcorrection.md) | 187 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `def` | [sourcePaidReadout](declarations/sourcepaidreadout.md) | 191 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [ActualSourceResidualJoin.paid_eq](declarations/actualsourceresidualjoin-paid-eq.md) | 195 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [ActualSourceResidualJoin.paid_measurable](declarations/actualsourceresidualjoin-paid-measurable.md) | 203 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [ActualSourceResidualJoin.paid_bound](declarations/actualsourceresidualjoin-paid-bound.md) | 210 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [compensatedSourceSum_eq_fullTerminal_residualRemainder_correction](declarations/compensatedsourcesum-eq-fullterminal-residualremainder-correction.md) | 223 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [compensatedSourceSum_eq_residualTerminal_remainder_paid](declarations/compensatedsourcesum-eq-residualterminal-remainder-paid.md) | 242 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [sourceResidualSignedHeat_terminal_bound](declarations/sourceresidualsignedheat-terminal-bound.md) | 260 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [compensated_tail_of_residual_heat_split](declarations/compensated-tail-of-residual-heat-split.md) | 267 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [compensated_tail_of_residual_terminal_bound](declarations/compensated-tail-of-residual-terminal-bound.md) | 281 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [compensated_tail_of_residual_linear_paid](declarations/compensated-tail-of-residual-linear-paid.md) | 295 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [estimate_of_residual_linear_paid](declarations/estimate-of-residual-linear-paid.md) | 307 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [estimate_of_residual_heat_split](declarations/estimate-of-residual-heat-split.md) | 317 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [estimate_of_residual_terminal_bound](declarations/estimate-of-residual-terminal-bound.md) | 327 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=fd3b257fd691b3f3bad21a62c3e5961cb656f2f5c04e4bc0fb9850134cc6550c -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/RealAnalysis/Integration/SourceSignedHeatResidual/Variant203b793ac51862ad27b5eed4511a24acf92ff24b7ac999c1ae9fe4731b836193.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
