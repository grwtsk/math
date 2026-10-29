# Acoustic Source Separation Namespaced

[Complete source index](../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**35 observed declarations and anonymous commands**, 15 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Algebra/LinearAlgebra/AcousticSourceSeparation/Variant546d5837081b94c507d1ac9e6706912786fefe799d00e4e44abfbb9719781017.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `007139266dfb082d9fe9791e75c2dd4868366cce`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AcousticSourceSeparationNamespaced.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `abbrev` | [SourceChannels](declarations/sourcechannels.md) | 26 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `def` | [sumReceiver](declarations/sumreceiver.md) | 29 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `def` | [differenceReceiver](declarations/differencereceiver.md) | 33 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `def` | [pairedReceiver](declarations/pairedreceiver.md) | 37 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `def` | [pairedReceiverDecoder](declarations/pairedreceiverdecoder.md) | 41 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [paired_receiver_decoder](declarations/paired-receiver-decoder.md) | 45 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [paired_receiver_injective](declarations/paired-receiver-injective.md) | 51 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [target_descends_paired_receiver](declarations/target-descends-paired-receiver.md) | 55 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `def` | [sumReceiverObstruction](declarations/sumreceiverobstruction.md) | 60 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `def` | [differenceReceiverObstruction](declarations/differencereceiverobstruction.md) | 68 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [first_channel_not_determined_by_sum](declarations/first-channel-not-determined-by-sum.md) | 76 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [first_channel_not_determined_by_difference](declarations/first-channel-not-determined-by-difference.md) | 81 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `def` | [receiverPolicy](declarations/receiverpolicy.md) | 86 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `def` | [receiverNotion](declarations/receivernotion.md) | 91 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [receiver_singleton_equivalent_iff](declarations/receiver-singleton-equivalent-iff.md) | 98 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [receiver_join_determines](declarations/receiver-join-determines.md) | 111 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [receiver_first_channel_synergy](declarations/receiver-first-channel-synergy.md) | 124 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `abbrev` | [SourceWithResidual](declarations/sourcewithresidual.md) | 138 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `def` | [residualReceiver](declarations/residualreceiver.md) | 141 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `def` | [residualReceiverObstruction](declarations/residualreceiverobstruction.md) | 146 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [first_channel_not_determined_with_residual](declarations/first-channel-not-determined-with-residual.md) | 156 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `def` | [finiteArrayCarrier](declarations/finitearraycarrier.md) | 161 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [finite_array_target_descends](declarations/finite-array-target-descends.md) | 166 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `def` | [finiteArrayKernelObstruction](declarations/finitearraykernelobstruction.md) | 176 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `def` | [spectralPower](declarations/spectralpower.md) | 186 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [spectral_power_neg](declarations/spectral-power-neg.md) | 190 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `def` | [spectralPowerObstruction](declarations/spectralpowerobstruction.md) | 196 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [spectrum_not_determined_by_power](declarations/spectrum-not-determined-by-power.md) | 207 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [linear_analysis_power_neg](declarations/linear-analysis-power-neg.md) | 212 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `def` | [analysisPowerObstruction](declarations/analysispowerobstruction.md) | 219 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [history_descends_of_faithful_paired_receiver](declarations/history-descends-of-faithful-paired-receiver.md) | 229 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `abbrev` | [MixedHistory](declarations/mixedhistory.md) | 245 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `def` | [mixedHistoryCarrier](declarations/mixedhistorycarrier.md) | 248 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `def` | [mixedHistoryObstruction](declarations/mixedhistoryobstruction.md) | 254 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `theorem` | [history_not_determined_by_mixed_trace](declarations/history-not-determined-by-mixed-trace.md) | 275 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=da13f9782c4a9b49451930f05467120e93d2ad80c56d128c4bddb940a93434cc -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/AcousticSourceSeparation/Variant546d5837081b94c507d1ac9e6706912786fefe799d00e4e44abfbb9719781017.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
