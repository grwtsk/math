# Mellin Normalized Dyadic Packing

[Complete source index](../../../complete-source-index.md) · [Up one directory](../../../complete-source-index.md) · [Full source](source.md)

**42 observed declarations and anonymous commands**, 21 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/NumberTheory/Zeta/Riemann/MellinNormalizedDyadicPacking.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `887cb1b204d2702725befd529cc80ba15d7e3a00`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/NumberTheory/ZetaAndLFunctionsAnalyticTheory/MellinNormalizedDyadicPacking.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [safePlusDyadicAction](declarations/safeplusdyadicaction.md) | 48 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `def` | [safeMinusDyadicAction](declarations/safeminusdyadicaction.md) | 51 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `def` | [safeCenterDyadicAction](declarations/safecenterdyadicaction.md) | 54 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `theorem` | [safePlusDyadicBlock_eq_dilation_mul_action](declarations/safeplusdyadicblock-eq-dilation-mul-action.md) | 57 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [safeMinusDyadicBlock_eq_dilation_mul_action](declarations/safeminusdyadicblock-eq-dilation-mul-action.md) | 67 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [safeCenterDyadicBlock_eq_dilation_mul_action](declarations/safecenterdyadicblock-eq-dilation-mul-action.md) | 77 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [safePlusDyadicAction_norm_le](declarations/safeplusdyadicaction-norm-le.md) | 87 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [safeMinusDyadicAction_norm_le](declarations/safeminusdyadicaction-norm-le.md) | 96 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [safeCenterDyadicAction_norm_le](declarations/safecenterdyadicaction-norm-le.md) | 105 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `def` | [safeEvenDyadicAction](declarations/safeevendyadicaction.md) | 114 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `def` | [safeOddDyadicAction](declarations/safeodddyadicaction.md) | 117 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `def` | [safeEvenDefectDyadicAction](declarations/safeevendefectdyadicaction.md) | 120 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [safeEvenDyadicAction_norm_le](declarations/safeevendyadicaction-norm-le.md) | 123 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [safeOddDyadicAction_norm_le](declarations/safeodddyadicaction-norm-le.md) | 135 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [safeEvenDefectDyadicAction_norm_le_two](declarations/safeevendefectdyadicaction-norm-le-two.md) | 147 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [safePlusDyadicAction_eq_center_of_zeroDefect](declarations/safeplusdyadicaction-eq-center-of-zerodefect.md) | 158 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [safeMinusDyadicAction_eq_center_of_zeroDefect](declarations/safeminusdyadicaction-eq-center-of-zerodefect.md) | 165 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `def` | [safeAxialDyadicActionPoint](declarations/safeaxialdyadicactionpoint.md) | 172 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `def` | [safeTransverseDyadicActionPoint](declarations/safetransversedyadicactionpoint.md) | 177 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `def` | [safeAxialDyadicActionPacking](declarations/safeaxialdyadicactionpacking.md) | 182 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `def` | [safeTransverseDyadicActionPacking](declarations/safetransversedyadicactionpacking.md) | 186 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `def` | [safeAxialDyadicActionGram](declarations/safeaxialdyadicactiongram.md) | 190 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `def` | [safeTransverseDyadicActionGram](declarations/safetransversedyadicactiongram.md) | 194 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `def` | [safeQuarticDyadicActionValue](declarations/safequarticdyadicactionvalue.md) | 198 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [safeQuarticDyadicActionValue_nonnegative](declarations/safequarticdyadicactionvalue-nonnegative.md) | 203 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `def` | [safeAxialDyadicActionNormalizedY](declarations/safeaxialdyadicactionnormalizedy.md) | 211 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `def` | [safeTransverseDyadicActionNormalizedY](declarations/safetransversedyadicactionnormalizedy.md) | 218 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [safeAxialDyadicAction_y_factor](declarations/safeaxialdyadicaction-y-factor.md) | 226 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [safeTransverseDyadicAction_y_factor](declarations/safetransversedyadicaction-y-factor.md) | 241 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `def` | [safeAxialDyadicActionNormalizedPoint](declarations/safeaxialdyadicactionnormalizedpoint.md) | 258 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `def` | [safeTransverseDyadicActionNormalizedPoint](declarations/safetransversedyadicactionnormalizedpoint.md) | 263 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `def` | [safeAxialDyadicActionNormalizedPacking](declarations/safeaxialdyadicactionnormalizedpacking.md) | 268 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `def` | [safeTransverseDyadicActionNormalizedPacking](declarations/safetransversedyadicactionnormalizedpacking.md) | 272 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `def` | [safeAxialDyadicActionQuarticCoefficient](declarations/safeaxialdyadicactionquarticcoefficient.md) | 276 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `def` | [safeTransverseDyadicActionQuarticCoefficient](declarations/safetransversedyadicactionquarticcoefficient.md) | 280 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `theorem` | [safeAxialDyadicActionQuarticCoefficient_nonnegative](declarations/safeaxialdyadicactionquarticcoefficient-nonnegative.md) | 284 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `theorem` | [safeTransverseDyadicActionQuarticCoefficient_nonnegative](declarations/safetransversedyadicactionquarticcoefficient-nonnegative.md) | 289 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `theorem` | [safeAxialDyadicAction_orientedVolume_factor](declarations/safeaxialdyadicaction-orientedvolume-factor.md) | 294 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `theorem` | [safeTransverseDyadicAction_orientedVolume_factor](declarations/safetransversedyadicaction-orientedvolume-factor.md) | 307 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `theorem` | [safeAxialDyadicActionGram_factor](declarations/safeaxialdyadicactiongram-factor.md) | 320 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `theorem` | [safeTransverseDyadicActionGram_factor](declarations/safetransversedyadicactiongram-factor.md) | 330 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `theorem` | [safeQuarticDyadicActionValue_factor](declarations/safequarticdyadicactionvalue-factor.md) | 340 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=29342e7f44658803e67802fbd982d4bfedc76b4237f9a2e005bbe2a7c5ad6ff4 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/Zeta/Riemann/MellinNormalizedDyadicPacking.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
