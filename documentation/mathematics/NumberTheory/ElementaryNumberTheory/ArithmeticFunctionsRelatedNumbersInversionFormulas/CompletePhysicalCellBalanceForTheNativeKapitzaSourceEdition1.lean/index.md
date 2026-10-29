# Complete Physical Cell Balance For The Native Kapitza Source Edition1

[Complete source index](../../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**37 observed declarations and anonymous commands**, 27 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceKapitzaEventBalance/Variant37671c206f5d1a04b93790196ae983e5ef0c050592d70f761a6ab426dbf2fb81.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `94d79da02710c9c45885f8c7e6c27c0c1e75cffc`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../_verification/specifications/NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/CompletePhysicalCellBalanceForTheNativeKapitzaSourceEdition1.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [cutoff](declarations/cutoff.md) | 28 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `def` | [node](declarations/node.md) | 30 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `def` | [frozenState](declarations/frozenstate.md) | 32 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `def` | [frozenEnergy](declarations/frozenenergy.md) | 35 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `def` | [smoothBalance](declarations/smoothbalance.md) | 38 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [frozenState_hasDerivAt](declarations/frozenstate-hasderivat.md) | 42 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [sourceCorrector_hasDerivAt](declarations/sourcecorrector-hasderivat.md) | 51 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [frozenEnergy_hasDerivAt](declarations/frozenenergy-hasderivat.md) | 58 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [frozenState_continuous](declarations/frozenstate-continuous.md) | 74 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [sourceCorrector_continuous](declarations/sourcecorrector-continuous.md) | 78 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [smoothBalance_continuous](declarations/smoothbalance-continuous.md) | 83 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [frozen_cell_balance](declarations/frozen-cell-balance.md) | 93 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [node_zero](declarations/node-zero.md) | 115 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [node_cutoff](declarations/node-cutoff.md) | 118 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [node_eq_log](declarations/node-eq-log.md) | 125 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [node_mono](declarations/node-mono.md) | 132 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [actual_frozenState](declarations/actual-frozenstate.md) | 138 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [nonaffine_mul_continuous_intervalIntegrable](declarations/nonaffine-mul-continuous-intervalintegrable.md) | 158 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [actual_cell_partition](declarations/actual-cell-partition.md) | 168 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [nonaffineWork_cell_balance](declarations/nonaffinework-cell-balance.md) | 186 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [frozenState_event](declarations/frozenstate-event.md) | 199 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [event_quadratic_coefficient](declarations/event-quadratic-coefficient.md) | 209 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [frozenEnergy_event](declarations/frozenenergy-event.md) | 231 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [staggered_energy_telescope](declarations/staggered-energy-telescope.md) | 246 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [frozenEnergy_initial](declarations/frozenenergy-initial.md) | 253 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [frozenEnergy_terminal](declarations/frozenenergy-terminal.md) | 258 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `def` | [eventLinearWork](declarations/eventlinearwork.md) | 267 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `def` | [totalSmoothWork](declarations/totalsmoothwork.md) | 272 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `def` | [totalEventWork](declarations/totaleventwork.md) | 276 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `def` | [totalQuadraticWork](declarations/totalquadraticwork.md) | 279 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [nonaffineWork_complete_balance](declarations/nonaffinework-complete-balance.md) | 283 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [totalQuadraticWork_eq_inventory](declarations/totalquadraticwork-eq-inventory.md) | 313 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [totalQuadraticWork_le](declarations/totalquadraticwork-le.md) | 331 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `def` | [combinedTerminalWork](declarations/combinedterminalwork.md) | 336 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `theorem` | [native_residual_complete_balance](declarations/native-residual-complete-balance.md) | 339 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `theorem` | [original_lower_of_combined_terminal_cap](declarations/original-lower-of-combined-terminal-cap.md) | 348 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `theorem` | [estimate_of_combined_terminal_cap](declarations/estimate-of-combined-terminal-cap.md) | 372 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=f30c6c1977a76ce27b49704a40e4d0c73475a42a203893b589c6e6fe666f08d5 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceKapitzaEventBalance/Variant37671c206f5d1a04b93790196ae983e5ef0c050592d70f761a6ab426dbf2fb81.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
