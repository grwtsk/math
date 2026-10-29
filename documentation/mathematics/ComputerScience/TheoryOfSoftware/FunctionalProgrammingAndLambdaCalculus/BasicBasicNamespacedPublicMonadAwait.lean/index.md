# Basic Basic Namespaced Public Monad Await

[Complete source index](../../../../complete-source-index.md) · [Up one directory](../../../../complete-source-index.md) · [Full source](source.md)

**124 observed declarations and anonymous commands**, 0 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variantd46d7c011a6060422dd8bc6c48067497293ce0d496bdf23aeea2f15044e8dce0.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `7f8106a4fab5a5754a6fc4b933d2b8ed7015692a`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../_verification/specifications/ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicNamespacedPublicMonadAwait.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `class` | [MonadAwait](declarations/monadawait.md) | 78 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `class` | [MonadAsync](declarations/monadasync.md) | 87 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `instance` | [(anonymous)](declarations/instance-source-edition-19.md) | 99 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `instance` | [(anonymous)](declarations/instance-source-edition-8.md) | 103 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `instance` | [(anonymous)](declarations/instance-source-edition-32.md) | 107 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `instance` | [(anonymous)](declarations/instance-source-edition-9.md) | 111 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `instance` | [(anonymous)](declarations/instance-source-edition-23.md) | 115 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `instance` | [(anonymous)](declarations/instance-source-edition-39.md) | 119 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `instance` | [(anonymous)](declarations/instance-source-edition-29.md) | 123 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `instance` | [(anonymous)](declarations/instance-source-edition-14.md) | 127 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `abbrev` | [ETask](declarations/etask.md) | 135 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `def` | [pure](declarations/pure-source-edition-2.md) | 143 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `def` | [map](declarations/map-source-edition-4.md) | 152 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `def` | [bind](declarations/bind.md) | 161 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `def` | [bindEIO](declarations/bindeio.md) | 171 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `def` | [mapEIO](declarations/mapeio.md) | 181 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `def` | [block](declarations/block-source-edition-3.md) | 191 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `def` | [ofPromise!](declarations/ofpromise-source-edition-2.md) | 201 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `def` | [ofPurePromise](declarations/ofpurepromise.md) | 209 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `def` | [getState](declarations/getstate-source-edition-2.md) | 216 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `instance` | [(anonymous)](declarations/instance-source-edition-24.md) | 219 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `instance` | [(anonymous)](declarations/instance-source-edition-25.md) | 222 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `abbrev` | [AsyncTask](declarations/asynctask.md) | 231 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `def` | [mapIO](declarations/mapio.md) | 240 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `def` | [pure](declarations/pure.md) | 249 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `def` | [bind](declarations/bind-source-edition-2.md) | 259 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `def` | [map](declarations/map-source-edition-5.md) | 271 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `def` | [bindIO](declarations/bindio.md) | 279 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `def` | [mapTaskIO](declarations/maptaskio.md) | 289 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `def` | [block](declarations/block.md) | 297 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `def` | [ofPromise](declarations/ofpromise.md) | 306 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `def` | [ofPurePromise](declarations/ofpurepromise-source-edition-3.md) | 315 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `def` | [getState](declarations/getstate.md) | 324 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `inductive` | [MaybeTask](declarations/maybetask.md) | 335 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `def` | [toTask](declarations/totask.md) | 345 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `def` | [get](declarations/get.md) | 353 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `def` | [map](declarations/map-source-edition-2.md) | 361 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `def` | [bind](declarations/bind-source-edition-4.md) | 369 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `def` | [joinTask](declarations/jointask.md) | 378 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `instance` | [(anonymous)](declarations/instance-source-edition-31.md) | 383 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `instance` | [(anonymous)](declarations/instance-source-edition-2.md) | 386 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `def` | [BaseAsync](declarations/baseasync.md) | 395 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `def` | [mk](declarations/mk.md) | 403 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `def` | [toRawBaseIO](declarations/torawbaseio.md) | 410 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `def` | [toBaseIO](declarations/tobaseio.md) | 417 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `def` | [ofTask](declarations/oftask-source-edition-2.md) | 424 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `def` | [pure](declarations/pure-source-edition-3.md) | 431 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `def` | [map](declarations/map.md) | 438 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `def` | [bind](declarations/bind-source-edition-5.md) | 445 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `def` | [lift](declarations/lift.md) | 457 | `BLOCKED_NATIVE_ADMISSION` |
| 51 | `def` | [wait](declarations/wait-source-edition-2.md) | 464 | `BLOCKED_NATIVE_ADMISSION` |
| 52 | `def` | [asTask](declarations/astask.md) | 471 | `BLOCKED_NATIVE_ADMISSION` |
| 53 | `def` | [await](declarations/await.md) | 479 | `BLOCKED_NATIVE_ADMISSION` |
| 54 | `def` | [async](declarations/async.md) | 486 | `BLOCKED_NATIVE_ADMISSION` |
| 55 | `instance` | [(anonymous)](declarations/instance-source-edition-6.md) | 489 | `BLOCKED_NATIVE_ADMISSION` |
| 56 | `instance` | [(anonymous)](declarations/instance-source-edition-22.md) | 492 | `BLOCKED_NATIVE_ADMISSION` |
| 57 | `instance` | [(anonymous)](declarations/instance-source-edition-40.md) | 496 | `BLOCKED_NATIVE_ADMISSION` |
| 58 | `instance` | [(anonymous)](declarations/instance-source-edition-26.md) | 499 | `BLOCKED_NATIVE_ADMISSION` |
| 59 | `instance` | [(anonymous)](declarations/instance-source-edition-10.md) | 502 | `BLOCKED_NATIVE_ADMISSION` |
| 60 | `instance` | [(anonymous)](declarations/instance-source-edition-7.md) | 505 | `BLOCKED_NATIVE_ADMISSION` |
| 61 | `instance` | [(anonymous)](declarations/instance-source-edition-30.md) | 508 | `BLOCKED_NATIVE_ADMISSION` |
| 62 | `def` | [ofExcept](declarations/ofexcept.md) | 517 | `BLOCKED_NATIVE_ADMISSION` |
| 63 | `def` | [concurrently](declarations/concurrently.md) | 524 | `BLOCKED_NATIVE_ADMISSION` |
| 64 | `def` | [race](declarations/race-source-edition-3.md) | 537 | `BLOCKED_NATIVE_ADMISSION` |
| 65 | `def` | [concurrentlyAll](declarations/concurrentlyall-source-edition-3.md) | 552 | `BLOCKED_NATIVE_ADMISSION` |
| 66 | `def` | [raceAll](declarations/raceall.md) | 562 | `BLOCKED_NATIVE_ADMISSION` |
| 67 | `def` | [EAsync](declarations/easync.md) | 576 | `BLOCKED_NATIVE_ADMISSION` |
| 68 | `def` | [toBaseIO](declarations/tobaseio-source-edition-2.md) | 584 | `BLOCKED_NATIVE_ADMISSION` |
| 69 | `def` | [ofTask](declarations/oftask.md) | 591 | `BLOCKED_NATIVE_ADMISSION` |
| 70 | `def` | [toEIO](declarations/toeio.md) | 598 | `BLOCKED_NATIVE_ADMISSION` |
| 71 | `def` | [ofETask](declarations/ofetask.md) | 605 | `BLOCKED_NATIVE_ADMISSION` |
| 72 | `def` | [pure](declarations/pure-source-edition-4.md) | 612 | `BLOCKED_NATIVE_ADMISSION` |
| 73 | `def` | [map](declarations/map-source-edition-3.md) | 619 | `BLOCKED_NATIVE_ADMISSION` |
| 74 | `def` | [bind](declarations/bind-source-edition-3.md) | 626 | `BLOCKED_NATIVE_ADMISSION` |
| 75 | `def` | [lift](declarations/lift-source-edition-2.md) | 635 | `BLOCKED_NATIVE_ADMISSION` |
| 76 | `def` | [wait](declarations/wait.md) | 642 | `BLOCKED_NATIVE_ADMISSION` |
| 77 | `def` | [asTask](declarations/astask-source-edition-2.md) | 652 | `BLOCKED_NATIVE_ADMISSION` |
| 78 | `def` | [block](declarations/block-source-edition-2.md) | 659 | `BLOCKED_NATIVE_ADMISSION` |
| 79 | `def` | [throw](declarations/throw.md) | 666 | `BLOCKED_NATIVE_ADMISSION` |
| 80 | `def` | [tryCatch](declarations/trycatch.md) | 673 | `BLOCKED_NATIVE_ADMISSION` |
| 81 | `def` | [tryFinally'](declarations/tryfinally.md) | 681 | `BLOCKED_NATIVE_ADMISSION` |
| 82 | `def` | [await](declarations/await-source-edition-2.md) | 699 | `BLOCKED_NATIVE_ADMISSION` |
| 83 | `def` | [async](declarations/async-source-edition-2.md) | 706 | `BLOCKED_NATIVE_ADMISSION` |
| 84 | `instance` | [(anonymous)](declarations/instance-source-edition-17.md) | 709 | `BLOCKED_NATIVE_ADMISSION` |
| 85 | `instance` | [(anonymous)](declarations/instance-source-edition-28.md) | 712 | `BLOCKED_NATIVE_ADMISSION` |
| 86 | `instance` | [(anonymous)](declarations/instance-source-edition-3.md) | 716 | `BLOCKED_NATIVE_ADMISSION` |
| 87 | `instance` | [(anonymous)](declarations/instance-source-edition-16.md) | 719 | `BLOCKED_NATIVE_ADMISSION` |
| 88 | `instance` | [(anonymous)](declarations/instance-source-edition-4.md) | 723 | `BLOCKED_NATIVE_ADMISSION` |
| 89 | `instance` | [(anonymous)](declarations/instance-source-edition-15.md) | 727 | `BLOCKED_NATIVE_ADMISSION` |
| 90 | `instance` | [(anonymous)](declarations/instance-source-edition-12.md) | 730 | `BLOCKED_NATIVE_ADMISSION` |
| 91 | `instance` | [(anonymous)](declarations/instance-source-edition-37.md) | 733 | `BLOCKED_NATIVE_ADMISSION` |
| 92 | `instance` | [(anonymous)](declarations/instance-source-edition-13.md) | 736 | `BLOCKED_NATIVE_ADMISSION` |
| 93 | `instance` | [(anonymous)](declarations/instance-source-edition-33.md) | 739 | `BLOCKED_NATIVE_ADMISSION` |
| 94 | `instance` | [(anonymous)](declarations/instance-source-edition-38.md) | 742 | `BLOCKED_NATIVE_ADMISSION` |
| 95 | `instance` | [(anonymous)](declarations/instance.md) | 745 | `BLOCKED_NATIVE_ADMISSION` |
| 96 | `instance` | [(anonymous)](declarations/instance-source-edition-35.md) | 748 | `BLOCKED_NATIVE_ADMISSION` |
| 97 | `instance` | [(anonymous)](declarations/instance-source-edition-36.md) | 751 | `BLOCKED_NATIVE_ADMISSION` |
| 98 | `instance` | [(anonymous)](declarations/instance-source-edition-11.md) | 754 | `BLOCKED_NATIVE_ADMISSION` |
| 99 | `instance` | [(anonymous)](declarations/instance-source-edition-27.md) | 757 | `BLOCKED_NATIVE_ADMISSION` |
| 100 | `instance` | [(anonymous)](declarations/instance-source-edition-5.md) | 760 | `BLOCKED_NATIVE_ADMISSION` |
| 101 | `def` | [forIn](declarations/forin.md) | 764 | `BLOCKED_NATIVE_ADMISSION` |
| 102 | `instance` | [(anonymous)](declarations/instance-source-edition-34.md) | 788 | `BLOCKED_NATIVE_ADMISSION` |
| 103 | `def` | [ofExcept](declarations/ofexcept-source-edition-2.md) | 795 | `BLOCKED_NATIVE_ADMISSION` |
| 104 | `def` | [concurrently](declarations/concurrently-source-edition-2.md) | 802 | `BLOCKED_NATIVE_ADMISSION` |
| 105 | `def` | [race](declarations/race-source-edition-2.md) | 815 | `BLOCKED_NATIVE_ADMISSION` |
| 106 | `def` | [concurrentlyAll](declarations/concurrentlyall-source-edition-2.md) | 833 | `BLOCKED_NATIVE_ADMISSION` |
| 107 | `def` | [raceAll](declarations/raceall-source-edition-3.md) | 843 | `BLOCKED_NATIVE_ADMISSION` |
| 108 | `abbrev` | [Async](declarations/async-source-edition-3.md) | 858 | `BLOCKED_NATIVE_ADMISSION` |
| 109 | `def` | [toIO](declarations/toio.md) | 866 | `BLOCKED_NATIVE_ADMISSION` |
| 110 | `def` | [block](declarations/block-source-edition-4.md) | 873 | `BLOCKED_NATIVE_ADMISSION` |
| 111 | `def` | [ofPromise](declarations/ofpromise-source-edition-3.md) | 880 | `BLOCKED_NATIVE_ADMISSION` |
| 112 | `def` | [ofAsyncTask](declarations/ofasynctask.md) | 891 | `BLOCKED_NATIVE_ADMISSION` |
| 113 | `def` | [ofIOTask](declarations/ofiotask.md) | 898 | `BLOCKED_NATIVE_ADMISSION` |
| 114 | `def` | [ofExcept](declarations/ofexcept-source-edition-3.md) | 907 | `BLOCKED_NATIVE_ADMISSION` |
| 115 | `def` | [ofTask](declarations/oftask-source-edition-3.md) | 914 | `BLOCKED_NATIVE_ADMISSION` |
| 116 | `def` | [ofPurePromise](declarations/ofpurepromise-source-edition-2.md) | 921 | `BLOCKED_NATIVE_ADMISSION` |
| 117 | `instance` | [(anonymous)](declarations/instance-source-edition-21.md) | 929 | `BLOCKED_NATIVE_ADMISSION` |
| 118 | `instance` | [(anonymous)](declarations/instance-source-edition-20.md) | 932 | `BLOCKED_NATIVE_ADMISSION` |
| 119 | `instance` | [(anonymous)](declarations/instance-source-edition-18.md) | 935 | `BLOCKED_NATIVE_ADMISSION` |
| 120 | `def` | [concurrently](declarations/concurrently-source-edition-3.md) | 942 | `BLOCKED_NATIVE_ADMISSION` |
| 121 | `def` | [race](declarations/race.md) | 955 | `BLOCKED_NATIVE_ADMISSION` |
| 122 | `def` | [concurrentlyAll](declarations/concurrentlyall.md) | 973 | `BLOCKED_NATIVE_ADMISSION` |
| 123 | `def` | [raceAll](declarations/raceall-source-edition-2.md) | 983 | `BLOCKED_NATIVE_ADMISSION` |
| 124 | `def` | [background](declarations/background.md) | 1002 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=f50ece85866e6bd2f245bd2969cdbbff719635fcc3241009201ad87df2308e1e -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variantd46d7c011a6060422dd8bc6c48067497293ce0d496bdf23aeea2f15044e8dce0.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
