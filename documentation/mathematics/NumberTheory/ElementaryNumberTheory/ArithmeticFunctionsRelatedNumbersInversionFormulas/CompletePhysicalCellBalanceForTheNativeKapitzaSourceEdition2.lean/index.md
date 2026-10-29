# Complete Physical Cell Balance For The Native Kapitza Source Edition2

[Complete source index](../../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**37 observed declarations and anonymous commands**, 27 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceKapitzaEventBalance/Variant6457d0bf099290694a09cbd02de334277aaeff5b3c334c3cd730d04400528c55.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `000de9fb1e899c4589798383a893f989807b43b0`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../_verification/specifications/NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/CompletePhysicalCellBalanceForTheNativeKapitzaSourceEdition2.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [cutoff](declarations/cutoff.md) | 29 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `def` | [node](declarations/node.md) | 32 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `def` | [frozenState](declarations/frozenstate.md) | 35 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `def` | [frozenEnergy](declarations/frozenenergy.md) | 39 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `def` | [smoothBalance](declarations/smoothbalance.md) | 43 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [frozenState_hasDerivAt](declarations/frozenstate-hasderivat.md) | 47 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [sourceCorrector_hasDerivAt](declarations/sourcecorrector-hasderivat.md) | 56 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [frozenEnergy_hasDerivAt](declarations/frozenenergy-hasderivat.md) | 63 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [frozenState_continuous](declarations/frozenstate-continuous.md) | 79 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [sourceCorrector_continuous](declarations/sourcecorrector-continuous.md) | 83 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [smoothBalance_continuous](declarations/smoothbalance-continuous.md) | 88 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [frozen_cell_balance](declarations/frozen-cell-balance.md) | 98 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [node_zero](declarations/node-zero.md) | 120 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [node_cutoff](declarations/node-cutoff.md) | 123 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [node_eq_log](declarations/node-eq-log.md) | 130 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [node_mono](declarations/node-mono.md) | 137 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [actual_frozenState](declarations/actual-frozenstate.md) | 143 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [nonaffine_mul_continuous_intervalIntegrable](declarations/nonaffine-mul-continuous-intervalintegrable.md) | 163 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [actual_cell_partition](declarations/actual-cell-partition.md) | 173 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [nonaffineWork_cell_balance](declarations/nonaffinework-cell-balance.md) | 191 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [frozenState_event](declarations/frozenstate-event.md) | 204 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [event_quadratic_coefficient](declarations/event-quadratic-coefficient.md) | 214 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [frozenEnergy_event](declarations/frozenenergy-event.md) | 236 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [staggered_energy_telescope](declarations/staggered-energy-telescope.md) | 251 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [frozenEnergy_initial](declarations/frozenenergy-initial.md) | 258 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [frozenEnergy_terminal](declarations/frozenenergy-terminal.md) | 263 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `def` | [eventLinearWork](declarations/eventlinearwork.md) | 273 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `def` | [totalSmoothWork](declarations/totalsmoothwork.md) | 279 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `def` | [totalEventWork](declarations/totaleventwork.md) | 284 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `def` | [totalQuadraticWork](declarations/totalquadraticwork.md) | 288 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [nonaffineWork_complete_balance](declarations/nonaffinework-complete-balance.md) | 292 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [totalQuadraticWork_eq_inventory](declarations/totalquadraticwork-eq-inventory.md) | 322 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [totalQuadraticWork_le](declarations/totalquadraticwork-le.md) | 340 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `def` | [combinedTerminalWork](declarations/combinedterminalwork.md) | 345 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `theorem` | [native_residual_complete_balance](declarations/native-residual-complete-balance.md) | 348 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `theorem` | [original_lower_of_combined_terminal_cap](declarations/original-lower-of-combined-terminal-cap.md) | 357 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `theorem` | [estimate_of_combined_terminal_cap](declarations/estimate-of-combined-terminal-cap.md) | 381 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=d73e20c6ecede370c765c1485aad1864cbf3cc771a4a8bd4f71d877387cda374 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceKapitzaEventBalance/Variant6457d0bf099290694a09cbd02de334277aaeff5b3c334c3cd730d04400528c55.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
