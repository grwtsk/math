# Goal Graph Public Verify Goal Graph Sound

[Complete source index](../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**29 observed declarations and anonymous commands**, 7 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/GoalGraph/Variantce27eca7db9b23152edf5f4f23885698e19a6cfea2102dc54222e80764c5ccef.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `364d6b679f835eb424ed800e683fc585eadc940c`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/ComputerScience/AlgorithmsInComputerScience/GoalGraphPublicVerifyGoalGraphSound.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `abbrev` | [GoalCellId](declarations/goalcellid.md) | 18 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `inductive` | [GoalCellStatus](declarations/goalcellstatus.md) | 22 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `inductive` | [OpenObligationKind](declarations/openobligationkind.md) | 33 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `structure` | [GoalCell](declarations/goalcell.md) | 43 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `inductive` | [GoalEdgeKind](declarations/goaledgekind.md) | 54 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `structure` | [GoalEdge](declarations/goaledge.md) | 66 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `structure` | [GoalGraph](declarations/goalgraph.md) | 74 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `structure` | [GoalSlice](declarations/goalslice.md) | 82 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `structure` | [ElaborationSnapshot](declarations/elaborationsnapshot.md) | 89 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `def` | [GoalGraph.containsCell](declarations/goalgraph-containscell.md) | 95 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `def` | [GoalGraph.cellIds](declarations/goalgraph-cellids.md) | 98 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `def` | [GoalGraph.edgeEndpointsPresent](declarations/goalgraph-edgeendpointspresent.md) | 103 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `def` | [GoalGraph.Valid](declarations/goalgraph-valid.md) | 109 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `instance` | [(anonymous)](declarations/instance-source-edition-3.md) | 112 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `def` | [verifyGoalGraph](declarations/verifygoalgraph.md) | 116 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [verifyGoalGraph_sound](declarations/verifygoalgraph-sound.md) | 120 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [GoalGraph.Valid.cell_ids_nodup](declarations/goalgraph-valid-cell-ids-nodup.md) | 125 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [GoalGraph.Valid.edge_endpoints_present](declarations/goalgraph-valid-edge-endpoints-present.md) | 130 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `def` | [GoalSlice.ValidFor](declarations/goalslice-validfor.md) | 136 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `instance` | [(anonymous)](declarations/instance-source-edition-2.md) | 141 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `def` | [verifyGoalSlice](declarations/verifygoalslice.md) | 145 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [verifyGoalSlice_sound](declarations/verifygoalslice-sound.md) | 149 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [GoalSlice.ValidFor.selected_cells_present](declarations/goalslice-validfor-selected-cells-present.md) | 154 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `def` | [theoremTaskProtocolIdentityMatches](declarations/theoremtaskprotocolidentitymatches.md) | 162 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `def` | [ElaborationSnapshot.Valid](declarations/elaborationsnapshot-valid.md) | 172 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `instance` | [(anonymous)](declarations/instance.md) | 176 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `def` | [verifyElaborationSnapshot](declarations/verifyelaborationsnapshot.md) | 180 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [verifyElaborationSnapshot_sound](declarations/verifyelaborationsnapshot-sound.md) | 184 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [ElaborationSnapshot.Valid.task_identity_consistent](declarations/elaborationsnapshot-valid-task-identity-consistent.md) | 189 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=6a4d48197be939c1a0c08144d22c97fff0ca601df368a6d081e29246b9797335 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/GoalGraph/Variantce27eca7db9b23152edf5f4f23885698e19a6cfea2102dc54222e80764c5ccef.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
