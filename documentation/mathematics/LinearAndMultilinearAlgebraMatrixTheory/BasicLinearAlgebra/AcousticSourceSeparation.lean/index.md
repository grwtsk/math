# Acoustic Source Separation

[Complete source index](../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**35 observed declarations and anonymous commands**, 15 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Algebra/LinearAlgebra/AcousticSourceSeparation/Variant82c237ddc0add3d05fdff6a5996cc8675a8e95bc4ecedeb29754f2037311eeb2.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `d3e5f2cd27ac072e78a91cc01624faae9c5a9e98`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AcousticSourceSeparation.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `abbrev` | [SourceChannels](declarations/sourcechannels.md) | 18 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `def` | [sumReceiver](declarations/sumreceiver.md) | 21 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `def` | [differenceReceiver](declarations/differencereceiver.md) | 25 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `def` | [pairedReceiver](declarations/pairedreceiver.md) | 29 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `def` | [pairedReceiverDecoder](declarations/pairedreceiverdecoder.md) | 33 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [paired_receiver_decoder](declarations/paired-receiver-decoder.md) | 37 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [paired_receiver_injective](declarations/paired-receiver-injective.md) | 43 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [target_descends_paired_receiver](declarations/target-descends-paired-receiver.md) | 47 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `def` | [sumReceiverObstruction](declarations/sumreceiverobstruction.md) | 52 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `def` | [differenceReceiverObstruction](declarations/differencereceiverobstruction.md) | 60 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [first_channel_not_determined_by_sum](declarations/first-channel-not-determined-by-sum.md) | 68 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [first_channel_not_determined_by_difference](declarations/first-channel-not-determined-by-difference.md) | 73 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `def` | [receiverPolicy](declarations/receiverpolicy.md) | 78 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `def` | [receiverNotion](declarations/receivernotion.md) | 83 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [receiver_singleton_equivalent_iff](declarations/receiver-singleton-equivalent-iff.md) | 90 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [receiver_join_determines](declarations/receiver-join-determines.md) | 103 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [receiver_first_channel_synergy](declarations/receiver-first-channel-synergy.md) | 116 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `abbrev` | [SourceWithResidual](declarations/sourcewithresidual.md) | 130 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `def` | [residualReceiver](declarations/residualreceiver.md) | 133 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `def` | [residualReceiverObstruction](declarations/residualreceiverobstruction.md) | 138 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [first_channel_not_determined_with_residual](declarations/first-channel-not-determined-with-residual.md) | 148 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `def` | [finiteArrayCarrier](declarations/finitearraycarrier.md) | 153 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [finite_array_target_descends](declarations/finite-array-target-descends.md) | 158 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `def` | [finiteArrayKernelObstruction](declarations/finitearraykernelobstruction.md) | 168 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `def` | [spectralPower](declarations/spectralpower.md) | 178 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [spectral_power_neg](declarations/spectral-power-neg.md) | 182 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `def` | [spectralPowerObstruction](declarations/spectralpowerobstruction.md) | 188 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [spectrum_not_determined_by_power](declarations/spectrum-not-determined-by-power.md) | 199 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [linear_analysis_power_neg](declarations/linear-analysis-power-neg.md) | 204 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `def` | [analysisPowerObstruction](declarations/analysispowerobstruction.md) | 211 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [history_descends_of_faithful_paired_receiver](declarations/history-descends-of-faithful-paired-receiver.md) | 221 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `abbrev` | [MixedHistory](declarations/mixedhistory.md) | 237 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `def` | [mixedHistoryCarrier](declarations/mixedhistorycarrier.md) | 240 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `def` | [mixedHistoryObstruction](declarations/mixedhistoryobstruction.md) | 246 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `theorem` | [history_not_determined_by_mixed_trace](declarations/history-not-determined-by-mixed-trace.md) | 267 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=bd6f1c7c7dbe02ec80873ba7b5b8a8f2359a068213e3fc67d935c3bd37f639a0 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/AcousticSourceSeparation/Variant82c237ddc0add3d05fdff6a5996cc8675a8e95bc4ecedeb29754f2037311eeb2.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
