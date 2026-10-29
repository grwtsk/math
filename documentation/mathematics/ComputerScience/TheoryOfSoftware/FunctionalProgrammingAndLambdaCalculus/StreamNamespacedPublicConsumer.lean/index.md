# Stream Namespaced Public Consumer

[Complete source index](../../../../complete-source-index.md) · [Up one directory](../../../../complete-source-index.md) · [Full source](source.md)

**46 observed declarations and anonymous commands**, 0 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Stream/Variant6a2de51adf277734307573aa83de9bd9e5a986cc46611c455162f80d77a9d103.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `4ec4358b55ef60e6fe148dfc6536b566335f226e`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../_verification/specifications/ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/StreamNamespacedPublicConsumer.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `inductive` | [Consumer](declarations/consumer.md) | 49 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `def` | [Consumer.resolve](declarations/consumer-resolve.md) | 53 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `structure` | [Producer](declarations/producer.md) | 65 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `def` | [resolveInterestWaiter](declarations/resolveinterestwaiter.md) | 74 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `structure` | [State](declarations/state.md) | 81 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `structure` | [Stream](declarations/stream-source-edition-3.md) | 119 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `def` | [mkStream](declarations/mkstream.md) | 127 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `def` | [decreaseKnownSize](declarations/decreaseknownsize.md) | 139 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `def` | [pruneFinishedWaiters](declarations/prunefinishedwaiters.md) | 144 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `def` | [signalInterest](declarations/signalinterest.md) | 170 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `def` | [recvReady'](declarations/recvready.md) | 177 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `def` | [hasInterest'](declarations/hasinterest-source-edition-2.md) | 182 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `def` | [tryRecv'](declarations/tryrecv-source-edition-2.md) | 187 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `def` | [close'](declarations/close.md) | 201 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `def` | [tryRecv](declarations/tryrecv.md) | 233 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `def` | [tryRecvBody](declarations/tryrecvbody.md) | 243 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `def` | [recv'](declarations/recv.md) | 251 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `def` | [recv](declarations/recv-source-edition-2.md) | 276 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `def` | [close](declarations/close-source-edition-2.md) | 282 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `def` | [isClosed](declarations/isclosed.md) | 290 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `def` | [getKnownSize](declarations/getknownsize.md) | 298 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `def` | [setKnownSize](declarations/setknownsize.md) | 306 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `def` | [recvSelector](declarations/recvselector.md) | 315 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `def` | [forIn](declarations/forin-source-edition-2.md) | 348 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `def` | [forIn'](declarations/forin.md) | 366 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `class` | [NextChunk](declarations/nextchunk.md) | 389 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `instance` | [(anonymous)](declarations/instance-source-edition-7.md) | 395 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `instance` | [(anonymous)](declarations/instance-source-edition-8.md) | 398 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `def` | [readAll](declarations/readall.md) | 411 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `def` | [collapseForSend](declarations/collapseforsend.md) | 434 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `def` | [send'](declarations/send-source-edition-2.md) | 465 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `def` | [send](declarations/send.md) | 514 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `def` | [hasInterest](declarations/hasinterest.md) | 527 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `def` | [interestSelector](declarations/interestselector.md) | 537 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `def` | [stream](declarations/stream.md) | 581 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `def` | [fromBytes](declarations/frombytes.md) | 593 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `def` | [empty](declarations/empty.md) | 605 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `instance` | [(anonymous)](declarations/instance-source-edition-4.md) | 611 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `instance` | [(anonymous)](declarations/instance-source-edition-6.md) | 614 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `instance` | [(anonymous)](declarations/instance.md) | 617 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `instance` | [(anonymous)](declarations/instance-source-edition-5.md) | 626 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `instance` | [(anonymous)](declarations/instance-source-edition-2.md) | 628 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `instance` | [(anonymous)](declarations/instance-source-edition-9.md) | 631 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `instance` | [(anonymous)](declarations/instance-source-edition-3.md) | 636 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `def` | [stream](declarations/stream-source-edition-4.md) | 650 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `def` | [stream](declarations/stream-source-edition-2.md) | 665 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=6854233882a5a1b4d6c2f40827b969e162bb79e823f9d3b613c27fdaca8939aa -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Stream/Variant6a2de51adf277734307573aa83de9bd9e5a986cc46611c455162f80d77a9d103.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
