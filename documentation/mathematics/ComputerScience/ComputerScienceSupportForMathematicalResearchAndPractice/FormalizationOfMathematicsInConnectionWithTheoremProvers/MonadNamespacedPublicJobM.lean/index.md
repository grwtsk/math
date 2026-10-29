# Monad Namespaced Public Job M

[Complete source index](../../../../complete-source-index.md) · [Up one directory](../../../complete-source-index.md) · [Full source](source.md)

**50 observed declarations and anonymous commands**, 0 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Monad/Variantcd3c30d26df2dbfcd291e4de7e129426df7d705c1d3e84b0e1e80ee1c76a9359.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `256377c54708627fb767d434edb18bdd1c2c9e53`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../_verification/specifications/ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/MonadNamespacedPublicJobM.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `abbrev` | [JobM](declarations/jobm.md) | 37 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `def` | [JobM.ofFn](declarations/jobm-offn.md) | 40 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `def` | [JobM.toFn](declarations/jobm-tofn.md) | 47 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `instance` | [(anonymous)](declarations/instance-source-edition-9.md) | 52 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `instance` | [(anonymous)](declarations/instance-source-edition-8.md) | 54 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `instance` | [(anonymous)](declarations/instance-source-edition-4.md) | 59 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `instance` | [(anonymous)](declarations/instance-source-edition-2.md) | 60 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `instance` | [(anonymous)](declarations/instance-source-edition-10.md) | 61 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `instance` | [(anonymous)](declarations/instance-source-edition-7.md) | 62 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `def` | [updateAction](declarations/updateaction.md) | 65 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `def` | [getTrace](declarations/gettrace.md) | 69 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `def` | [setTrace](declarations/settrace.md) | 73 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `def` | [newTrace](declarations/newtrace.md) | 77 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `def` | [modifyTrace](declarations/modifytrace.md) | 81 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `def` | [setTraceCaption](declarations/settracecaption.md) | 85 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `def` | [takeTrace](declarations/taketrace.md) | 89 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `def` | [swapTrace](declarations/swaptrace.md) | 93 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `def` | [addTrace](declarations/addtrace.md) | 97 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `def` | [addSubTrace](declarations/addsubtrace.md) | 101 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `abbrev` | [SpawnM](declarations/spawnm.md) | 108 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `def` | [SpawnM.ofFn](declarations/spawnm-offn.md) | 111 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `def` | [SpawnM.toFn](declarations/spawnm-tofn.md) | 118 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `def` | [JobM.runSpawnM](declarations/jobm-runspawnm.md) | 123 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `instance` | [(anonymous)](declarations/instance-source-edition-5.md) | 126 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `example` | [(anonymous)](declarations/example-source-edition-3.md) | 129 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `def` | [FetchM.runJobM](declarations/fetchm-runjobm.md) | 137 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `instance` | [(anonymous)](declarations/instance.md) | 143 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `example` | [(anonymous)](declarations/example.md) | 146 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `example` | [(anonymous)](declarations/example-source-edition-4.md) | 149 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `def` | [JobM.runFetchM](declarations/jobm-runfetchm.md) | 152 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `instance` | [(anonymous)](declarations/instance-source-edition-6.md) | 157 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `example` | [(anonymous)](declarations/example-source-edition-2.md) | 160 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `def` | [bindTask](declarations/bindtask.md) | 164 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `def` | [sync](declarations/sync.md) | 170 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `def` | [async](declarations/async.md) | 177 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `def` | [wait](declarations/wait.md) | 184 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `def` | [wait?](declarations/wait-source-edition-2.md) | 191 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `def` | [await](declarations/await.md) | 198 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `def` | [mapM](declarations/mapm.md) | 204 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `def` | [bindM](declarations/bindm.md) | 219 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `def` | [zipResultWith](declarations/zipresultwith.md) | 239 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `def` | [zipWith](declarations/zipwith.md) | 251 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `def` | [add](declarations/add.md) | 260 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `def` | [mix](declarations/mix.md) | 267 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `def` | [mixList](declarations/mixlist.md) | 271 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `def` | [mixArray](declarations/mixarray.md) | 275 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `def` | [collectList](declarations/collectlist.md) | 279 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `def` | [collectArray](declarations/collectarray.md) | 283 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `instance` | [(anonymous)](declarations/instance-source-edition-3.md) | 286 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `def` | [collectVector](declarations/collectvector.md) | 289 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=cf96ae1be17f02ae4c8f70d00b46e2143cb25c067beb83afb5c9e895ecb85361 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Monad/Variantcd3c30d26df2dbfcd291e4de7e129426df7d705c1d3e84b0e1e80ee1c76a9359.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
