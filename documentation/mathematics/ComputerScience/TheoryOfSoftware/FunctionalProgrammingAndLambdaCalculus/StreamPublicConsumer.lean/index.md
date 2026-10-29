# Stream Public Consumer

[Complete source index](../../../../complete-source-index.md) · [Up one directory](../../../../complete-source-index.md) · [Full source](source.md)

**46 observed declarations and anonymous commands**, 0 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Stream/Variant28381ce3075f54857d2ad8702f55f6aeb9c7aca2ed63afb439dadd5b69bb1fc3.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `8b150742c30f8590a4d11889a837ddda5a0e1dc5`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../_verification/specifications/ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/StreamPublicConsumer.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `inductive` | [Consumer](declarations/consumer.md) | 41 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `def` | [Consumer.resolve](declarations/consumer-resolve.md) | 45 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `structure` | [Producer](declarations/producer.md) | 57 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `def` | [resolveInterestWaiter](declarations/resolveinterestwaiter.md) | 66 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `structure` | [State](declarations/state.md) | 73 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `structure` | [Stream](declarations/stream-source-edition-2.md) | 111 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `def` | [mkStream](declarations/mkstream.md) | 119 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `def` | [decreaseKnownSize](declarations/decreaseknownsize.md) | 131 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `def` | [pruneFinishedWaiters](declarations/prunefinishedwaiters.md) | 136 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `def` | [signalInterest](declarations/signalinterest.md) | 162 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `def` | [recvReady'](declarations/recvready.md) | 169 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `def` | [hasInterest'](declarations/hasinterest-source-edition-2.md) | 174 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `def` | [tryRecv'](declarations/tryrecv.md) | 179 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `def` | [close'](declarations/close-source-edition-2.md) | 193 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `def` | [tryRecv](declarations/tryrecv-source-edition-2.md) | 225 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `def` | [tryRecvBody](declarations/tryrecvbody.md) | 235 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `def` | [recv'](declarations/recv-source-edition-2.md) | 243 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `def` | [recv](declarations/recv.md) | 268 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `def` | [close](declarations/close.md) | 274 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `def` | [isClosed](declarations/isclosed.md) | 282 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `def` | [getKnownSize](declarations/getknownsize.md) | 290 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `def` | [setKnownSize](declarations/setknownsize.md) | 298 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `def` | [recvSelector](declarations/recvselector.md) | 307 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `def` | [forIn](declarations/forin-source-edition-2.md) | 340 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `def` | [forIn'](declarations/forin.md) | 358 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `class` | [NextChunk](declarations/nextchunk.md) | 381 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `instance` | [(anonymous)](declarations/instance-source-edition-3.md) | 387 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `instance` | [(anonymous)](declarations/instance-source-edition-2.md) | 390 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `def` | [readAll](declarations/readall.md) | 403 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `def` | [collapseForSend](declarations/collapseforsend.md) | 426 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `def` | [send'](declarations/send-source-edition-2.md) | 457 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `def` | [send](declarations/send.md) | 506 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `def` | [hasInterest](declarations/hasinterest.md) | 519 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `def` | [interestSelector](declarations/interestselector.md) | 529 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `def` | [stream](declarations/stream-source-edition-4.md) | 573 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `def` | [fromBytes](declarations/frombytes.md) | 585 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `def` | [empty](declarations/empty.md) | 597 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `instance` | [(anonymous)](declarations/instance.md) | 603 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `instance` | [(anonymous)](declarations/instance-source-edition-8.md) | 606 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `instance` | [(anonymous)](declarations/instance-source-edition-4.md) | 609 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `instance` | [(anonymous)](declarations/instance-source-edition-5.md) | 618 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `instance` | [(anonymous)](declarations/instance-source-edition-9.md) | 620 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `instance` | [(anonymous)](declarations/instance-source-edition-7.md) | 623 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `instance` | [(anonymous)](declarations/instance-source-edition-6.md) | 628 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `def` | [stream](declarations/stream.md) | 642 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `def` | [stream](declarations/stream-source-edition-3.md) | 657 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=90f04b5760f976b56797901a777994bb2b2f952d02c110070931540259a49271 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Stream/Variant28381ce3075f54857d2ad8702f55f6aeb9c7aca2ed63afb439dadd5b69bb1fc3.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
