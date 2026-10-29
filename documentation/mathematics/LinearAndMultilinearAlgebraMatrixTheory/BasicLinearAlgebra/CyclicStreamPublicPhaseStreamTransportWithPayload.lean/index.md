# Cyclic Stream Public Phase Stream Transport With Payload

[Complete source index](../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**36 observed declarations and anonymous commands**, 24 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Algebra/GroupTheory/CyclicStream/Variant21307796b216bec09b0165d8d588889226e3d141fcfc3f438a5f9e3b4addf80c.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `db172ba8ff9f236064ae3188283fda119bbd2522`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CyclicStreamPublicPhaseStreamTransportWithPayload.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [phaseStepStream](declarations/phasestepstream.md) | 44 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `def` | [indexedStepStream](declarations/indexedstepstream.md) | 55 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `abbrev` | [braidedStream](declarations/braidedstream.md) | 68 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `theorem` | [braidedStream_apply](declarations/braidedstream-apply.md) | 76 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [braidedStream_mod_cycle_apply](declarations/braidedstream-mod-cycle-apply.md) | 86 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `def` | [shiftPhaseStream](declarations/shiftphasestream.md) | 98 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `def` | [shiftInput](declarations/shiftinput.md) | 104 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `def` | [phaseStreamTransport](declarations/phasestreamtransport.md) | 113 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `def` | [streamTransport](declarations/streamtransport.md) | 127 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [phaseStreamTransport_zero](declarations/phasestreamtransport-zero.md) | 133 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [phaseStreamTransport_succ](declarations/phasestreamtransport-succ.md) | 139 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [streamTransport_zero](declarations/streamtransport-zero.md) | 147 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [streamTransport_succ](declarations/streamtransport-succ.md) | 153 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [streamTransport_two_apply](declarations/streamtransport-two-apply.md) | 165 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `def` | [reverseStreamTransport](declarations/reversestreamtransport.md) | 180 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [reverseStreamTransport_zero](declarations/reversestreamtransport-zero.md) | 189 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [reverseStreamTransport_succ](declarations/reversestreamtransport-succ.md) | 196 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [reverseStreamTransport_two_apply](declarations/reversestreamtransport-two-apply.md) | 208 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [shiftPhaseStream_zero](declarations/shiftphasestream-zero.md) | 216 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [shiftPhaseStream_add](declarations/shiftphasestream-add.md) | 222 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [shiftInput_zero](declarations/shiftinput-zero.md) | 229 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [shiftInput_add](declarations/shiftinput-add.md) | 235 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [phaseStreamTransport_add](declarations/phasestreamtransport-add.md) | 242 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [streamTransport_add](declarations/streamtransport-add.md) | 260 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `def` | [successorPhaseStream](declarations/successorphasestream.md) | 278 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [phaseStreamTransport_successor_eq_forwardProduct](declarations/phasestreamtransport-successor-eq-forwardproduct.md) | 288 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [phaseStreamTransport_successor_cycle_eq_monodromy](declarations/phasestreamtransport-successor-cycle-eq-monodromy.md) | 311 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [streamTransport_bijective](declarations/streamtransport-bijective.md) | 321 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [phaseStreamTransport_bijective](declarations/phasestreamtransport-bijective.md) | 328 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `def` | [StreamInSubgroup](declarations/streaminsubgroup.md) | 335 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [streamTransport_mem_subgroup](declarations/streamtransport-mem-subgroup.md) | 342 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [streamTransport_mem_subgroup_of_phasewise](declarations/streamtransport-mem-subgroup-of-phasewise.md) | 359 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `def` | [phaseStreamTransportWithPayload](declarations/phasestreamtransportwithpayload.md) | 378 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `def` | [streamTransportWithPayload](declarations/streamtransportwithpayload.md) | 387 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `theorem` | [phaseStreamTransportWithPayload_preserves_payload](declarations/phasestreamtransportwithpayload-preserves-payload.md) | 395 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `theorem` | [streamTransportWithPayload_preserves_payload](declarations/streamtransportwithpayload-preserves-payload.md) | 403 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=9b6b36937e5d67c4a02c3481b34b244cb74366e47ea8dbe40b863a65b669a117 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/GroupTheory/CyclicStream/Variant21307796b216bec09b0165d8d588889226e3d141fcfc3f438a5f9e3b4addf80c.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
