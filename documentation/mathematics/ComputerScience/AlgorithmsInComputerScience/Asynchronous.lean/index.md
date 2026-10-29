# Asynchronous

[Complete source index](../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**24 observed declarations and anonymous commands**, 14 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Asynchronous/Variant5ad9777132f27372146b2e7fa396fc6c07f4e23fd55c7427d4f604241dd1c005.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `5bbfa8d1f2ba8d75d2081fb4d543019b177d1881`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/ComputerScience/AlgorithmsInComputerScience/Asynchronous.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `structure` | [BooleanNetwork.AsynchronousNetwork](declarations/booleannetwork-asynchronousnetwork.md) | 6 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `def` | [BooleanNetwork.AsynchronousNetwork.updateAt](declarations/booleannetwork-asynchronousnetwork-updateat.md) | 10 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `def` | [BooleanNetwork.AsynchronousNetwork.Step](declarations/booleannetwork-asynchronousnetwork-step.md) | 22 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `theorem` | [BooleanNetwork.AsynchronousNetwork.updateAt_same](declarations/booleannetwork-asynchronousnetwork-updateat-same.md) | 28 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [BooleanNetwork.AsynchronousNetwork.updateAt_other](declarations/booleannetwork-asynchronousnetwork-updateat-other.md) | 35 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `def` | [BooleanNetwork.AsynchronousNetwork.run](declarations/booleannetwork-asynchronousnetwork-run.md) | 44 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `def` | [BooleanNetwork.AsynchronousNetwork.trajectory](declarations/booleannetwork-asynchronousnetwork-trajectory.md) | 52 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `def` | [BooleanNetwork.AsynchronousNetwork.FollowsSchedule](declarations/booleannetwork-asynchronousnetwork-followsschedule.md) | 63 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `def` | [BooleanNetwork.AsynchronousNetwork.Reachable](declarations/booleannetwork-asynchronousnetwork-reachable.md) | 71 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `def` | [BooleanNetwork.AsynchronousNetwork.StableCoordinate](declarations/booleannetwork-asynchronousnetwork-stablecoordinate.md) | 79 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `def` | [BooleanNetwork.AsynchronousNetwork.StableState](declarations/booleannetwork-asynchronousnetwork-stablestate.md) | 87 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `def` | [BooleanNetwork.AsynchronousNetwork.FixedPoint](declarations/booleannetwork-asynchronousnetwork-fixedpoint.md) | 95 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [BooleanNetwork.AsynchronousNetwork.run_nil](declarations/booleannetwork-asynchronousnetwork-run-nil.md) | 101 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [BooleanNetwork.AsynchronousNetwork.run_cons](declarations/booleannetwork-asynchronousnetwork-run-cons.md) | 106 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [BooleanNetwork.AsynchronousNetwork.trajectory_nil](declarations/booleannetwork-asynchronousnetwork-trajectory-nil.md) | 114 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [BooleanNetwork.AsynchronousNetwork.trajectory_cons](declarations/booleannetwork-asynchronousnetwork-trajectory-cons.md) | 119 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [BooleanNetwork.AsynchronousNetwork.run_append](declarations/booleannetwork-asynchronousnetwork-run-append.md) | 127 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [BooleanNetwork.AsynchronousNetwork.reachable_refl](declarations/booleannetwork-asynchronousnetwork-reachable-refl.md) | 137 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [BooleanNetwork.AsynchronousNetwork.reachable_step](declarations/booleannetwork-asynchronousnetwork-reachable-step.md) | 143 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [BooleanNetwork.AsynchronousNetwork.reachable_trans](declarations/booleannetwork-asynchronousnetwork-reachable-trans.md) | 150 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [BooleanNetwork.AsynchronousNetwork.updateAt_eq_self_of_stable](declarations/booleannetwork-asynchronousnetwork-updateat-eq-self-of-stable.md) | 162 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [BooleanNetwork.AsynchronousNetwork.fixedPoint_of_stable](declarations/booleannetwork-asynchronousnetwork-fixedpoint-of-stable.md) | 175 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [BooleanNetwork.AsynchronousNetwork.stable_of_fixedPoint](declarations/booleannetwork-asynchronousnetwork-stable-of-fixedpoint.md) | 183 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [BooleanNetwork.AsynchronousNetwork.run_of_fixedPoint](declarations/booleannetwork-asynchronousnetwork-run-of-fixedpoint.md) | 193 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=23c21578ecd921ed48e6f2e6a213c4b88219972cad86b3b29912d5fb32bca50e -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Asynchronous/Variant5ad9777132f27372146b2e7fa396fc6c07f4e23fd55c7427d4f604241dd1c005.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
