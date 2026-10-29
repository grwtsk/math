# Broadcast Namespaced Public

[Complete source index](../../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**54 observed declarations and anonymous commands**, 0 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Broadcast/Variant25bac5d37c97256132ac227bce6f9e4607e2a0773beddf6149f3a69947c99dd4.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `b7d1cf2b971c5845cd7e618c0c75633e8aa69782`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../_verification/specifications/ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BroadcastNamespacedPublic.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `inductive` | [Broadcast.Error](declarations/broadcast-error.md) | 42 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `instance` | [instToStringBroadcastError](declarations/insttostringbroadcasterror.md) | 60 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `instance` | [instMonadLiftBroadcastIO](declarations/instmonadliftbroadcastio.md) | 66 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `structure` | [Broadcast.Consumer](declarations/broadcast-consumer.md) | 69 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `def` | [Broadcast.Consumer.resolve](declarations/broadcast-consumer-resolve.md) | 73 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `structure` | [Slot](declarations/slot.md) | 76 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `structure` | [Bounded.State](declarations/bounded-state.md) | 82 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `structure` | [Bounded](declarations/bounded.md) | 141 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `structure` | [Bounded.Receiver](declarations/bounded-receiver.md) | 147 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `def` | [new](declarations/new.md) | 156 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `def` | [subscribe](declarations/subscribe-source-edition-2.md) | 174 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `def` | [isEmpty](declarations/isempty.md) | 184 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `def` | [isFull](declarations/isfull.md) | 191 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `def` | [enqueue](declarations/enqueue.md) | 199 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `def` | [dequeue](declarations/dequeue.md) | 213 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `def` | [getSlot](declarations/getslot.md) | 223 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `def` | [trySend'](declarations/trysend.md) | 233 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `def` | [trySend](declarations/trysend-source-edition-3.md) | 246 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `def` | [send](declarations/send-source-edition-3.md) | 255 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `def` | [close](declarations/close.md) | 273 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `def` | [isClosed](declarations/isclosed.md) | 286 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `def` | [getSlotValue](declarations/getslotvalue.md) | 292 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `def` | [getValueByPosition](declarations/getvaluebyposition.md) | 302 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `def` | [unsubscribe](declarations/unsubscribe-source-edition-2.md) | 328 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `def` | [tryRecv'](declarations/tryrecv.md) | 352 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `def` | [tryRecv](declarations/tryrecv-source-edition-2.md) | 366 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `def` | [recv](declarations/recv.md) | 369 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `def` | [forAsync](declarations/forasync.md) | 386 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `def` | [recvReady'](declarations/recvready.md) | 395 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `def` | [recvSelector](declarations/recvselector-source-edition-2.md) | 415 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `structure` | [Broadcast](declarations/broadcast.md) | 474 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `structure` | [Broadcast.Receiver](declarations/broadcast-receiver.md) | 484 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `def` | [new](declarations/new-source-edition-3.md) | 494 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `def` | [trySend](declarations/trysend-source-edition-4.md) | 502 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `def` | [subscribe](declarations/subscribe.md) | 509 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `def` | [close](declarations/close-source-edition-2.md) | 516 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `def` | [send](declarations/send.md) | 524 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `def` | [tryRecv](declarations/tryrecv-source-edition-4.md) | 537 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `def` | [recv](declarations/recv-source-edition-3.md) | 545 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `def` | [recvSelector](declarations/recvselector.md) | 554 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `def` | [unsubscribe](declarations/unsubscribe.md) | 561 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `def` | [forAsync](declarations/forasync-source-edition-2.md) | 569 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `instance` | [(anonymous)](declarations/instance-source-edition-4.md) | 573 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `instance` | [(anonymous)](declarations/instance-source-edition-2.md) | 577 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `instance` | [(anonymous)](declarations/instance.md) | 580 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `def` | [Sync](declarations/sync.md) | 593 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `def` | [Sync.Receiver](declarations/sync-receiver.md) | 603 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `def` | [new](declarations/new-source-edition-2.md) | 608 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `def` | [trySend](declarations/trysend-source-edition-2.md) | 612 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `def` | [send](declarations/send-source-edition-2.md) | 619 | `BLOCKED_NATIVE_ADMISSION` |
| 51 | `def` | [tryRecv](declarations/tryrecv-source-edition-3.md) | 625 | `BLOCKED_NATIVE_ADMISSION` |
| 52 | `def` | [recv](declarations/recv-source-edition-2.md) | 630 | `BLOCKED_NATIVE_ADMISSION` |
| 53 | `def` | [forIn](declarations/forin.md) | 633 | `BLOCKED_NATIVE_ADMISSION` |
| 54 | `instance` | [(anonymous)](declarations/instance-source-edition-3.md) | 644 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=36f1d3ab9bf859904bf6c3318773d1963ea6e1ef5a22649d724a4e1a05503516 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Broadcast/Variant25bac5d37c97256132ac227bce6f9e4607e2a0773beddf6149f3a69947c99dd4.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
