# Trace Execution Record

[Complete source index](../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**11 observed declarations and anonymous commands**, 4 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Trace/Variant6456e3e6988b6d53c79d0f36967cb2919e9132a1d14d24f02e61fe4f822f664f.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `a640d8e8b664277fc7f0060959a6081127ca5977`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/ComputerScience/AlgorithmsInComputerScience/TraceExecutionRecord.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `structure` | [ExecutionRecord](declarations/executionrecord.md) | 13 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `structure` | [MonitorState](declarations/monitorstate.md) | 18 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `def` | [MonitorState.Safe](declarations/monitorstate-safe.md) | 24 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `inductive` | [CapabilityEvent](declarations/capabilityevent.md) | 30 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `inductive` | [MonitorStep](declarations/monitorstep.md) | 35 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [MonitorStep.preserves_safety](declarations/monitorstep-preserves-safety.md) | 69 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `def` | [initialMonitorState](declarations/initialmonitorstate.md) | 97 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [initialMonitorState_safe](declarations/initialmonitorstate-safe.md) | 103 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `inductive` | [MonitorTrace](declarations/monitortrace.md) | 108 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [MonitorTrace.preserves_safety](declarations/monitortrace-preserves-safety.md) | 120 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [executed_records_are_authorized](declarations/executed-records-are-authorized.md) | 131 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=389638a7430244715ee55942df9f365ba6428fd8d6ceae1fe9d0c8de575bcd75 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Trace/Variant6456e3e6988b6d53c79d0f36967cb2919e9132a1d14d24f02e61fe4f822f664f.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
