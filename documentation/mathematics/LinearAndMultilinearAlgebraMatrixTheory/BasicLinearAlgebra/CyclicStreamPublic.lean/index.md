# Cyclic Stream Public

[Complete source index](../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**32 observed declarations and anonymous commands**, 22 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Algebra/GroupTheory/CyclicStream/Variant9a001c060ce4b14dc8f4e86b6bc45e1d75a76d1a3f27e21fa1f7e75a7f70da1a.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `3f5fb64e8a5ebdd14476d2ba8672fbbfecec4d21`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CyclicStreamPublic.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [phaseStepStream](declarations/phasestepstream.md) | 42 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `def` | [indexedStepStream](declarations/indexedstepstream.md) | 53 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `def` | [braidedStream](declarations/braidedstream.md) | 67 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `theorem` | [braidedStream_apply](declarations/braidedstream-apply.md) | 73 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [braidedStream_mod_cycle_apply](declarations/braidedstream-mod-cycle-apply.md) | 83 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `def` | [shiftPhaseStream](declarations/shiftphasestream.md) | 93 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `def` | [shiftInput](declarations/shiftinput.md) | 99 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `def` | [phaseStreamTransport](declarations/phasestreamtransport.md) | 108 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `def` | [streamTransport](declarations/streamtransport.md) | 122 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [phaseStreamTransport_zero](declarations/phasestreamtransport-zero.md) | 128 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [phaseStreamTransport_succ](declarations/phasestreamtransport-succ.md) | 134 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [streamTransport_zero](declarations/streamtransport-zero.md) | 142 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [streamTransport_succ](declarations/streamtransport-succ.md) | 148 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [streamTransport_two_apply](declarations/streamtransport-two-apply.md) | 160 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `def` | [reverseStreamTransport](declarations/reversestreamtransport.md) | 175 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [reverseStreamTransport_zero](declarations/reversestreamtransport-zero.md) | 184 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [reverseStreamTransport_succ](declarations/reversestreamtransport-succ.md) | 191 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [reverseStreamTransport_two_apply](declarations/reversestreamtransport-two-apply.md) | 203 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [shiftPhaseStream_zero](declarations/shiftphasestream-zero.md) | 211 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [shiftPhaseStream_add](declarations/shiftphasestream-add.md) | 217 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [shiftInput_zero](declarations/shiftinput-zero.md) | 224 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [shiftInput_add](declarations/shiftinput-add.md) | 230 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [phaseStreamTransport_add](declarations/phasestreamtransport-add.md) | 237 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [streamTransport_add](declarations/streamtransport-add.md) | 255 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `def` | [successorPhaseStream](declarations/successorphasestream.md) | 273 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [phaseStreamTransport_successor_eq_forwardProduct](declarations/phasestreamtransport-successor-eq-forwardproduct.md) | 283 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [phaseStreamTransport_successor_cycle_eq_monodromy](declarations/phasestreamtransport-successor-cycle-eq-monodromy.md) | 306 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [streamTransport_bijective](declarations/streamtransport-bijective.md) | 316 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [phaseStreamTransport_bijective](declarations/phasestreamtransport-bijective.md) | 323 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `def` | [StreamInSubgroup](declarations/streaminsubgroup.md) | 330 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [streamTransport_mem_subgroup](declarations/streamtransport-mem-subgroup.md) | 337 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [streamTransport_mem_subgroup_of_phasewise](declarations/streamtransport-mem-subgroup-of-phasewise.md) | 354 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=1064285be62287a4e4c63d42d06e11c0a6382f92d61a9dda5f0d99ca9f172173 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/GroupTheory/CyclicStream/Variant9a001c060ce4b14dc8f4e86b6bc45e1d75a76d1a3f27e21fa1f7e75a7f70da1a.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
