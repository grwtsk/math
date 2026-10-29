# Basic Basic Namespaced Public Heap Node

[Complete source index](../../../../complete-source-index.md) · [Up one directory](../../../../complete-source-index.md) · [Full source](source.md)

**84 observed declarations and anonymous commands**, 20 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variantddcdcd08950fc2563021362338ba037f442d80ec6da166aeef9b824c8ee76895.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `8e447047ed43f813890b8b82b08eae7c0bc592ac`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../_verification/specifications/ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicNamespacedPublicHeapNode.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `inductive` | [HeapNode](declarations/heapnode.md) | 36 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `def` | [HeapNode.realSize](declarations/heapnode-realsize.md) | 50 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `def` | [HeapNode.singleton](declarations/heapnode-singleton.md) | 55 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `def` | [HeapNode.rank](declarations/heapnode-rank.md) | 61 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `def` | [HeapNode.rankTR](declarations/heapnode-ranktr.md) | 66 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [HeapNode.rankTR_eq](declarations/heapnode-ranktr-eq.md) | 72 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `inductive` | [Heap](declarations/heap.md) | 83 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `def` | [Heap.realSize](declarations/heap-realsize.md) | 96 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `def` | [Heap.size](declarations/heap-size.md) | 101 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `def` | [Heap.isEmpty](declarations/heap-isempty.md) | 106 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `def` | [Heap.singleton](declarations/heap-singleton.md) | 111 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `def` | [Heap.rankGT](declarations/heap-rankgt.md) | 114 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `instance` | [(anonymous)](declarations/instance-source-edition-2.md) | 118 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `def` | [Heap.length](declarations/heap-length.md) | 124 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `def` | [combine](declarations/combine.md) | 132 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `def` | [Heap.merge](declarations/heap-merge.md) | 139 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `def` | [HeapNode.toHeap](declarations/heapnode-toheap.md) | 160 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `def` | [Heap.headD](declarations/heap-headd.md) | 167 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `def` | [Heap.head?](declarations/heap-head.md) | 172 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `structure` | [FindMin](declarations/findmin.md) | 180 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `def` | [Heap.findMin](declarations/heap-findmin.md) | 194 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `def` | [Heap.deleteMin](declarations/heap-deletemin.md) | 204 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `def` | [Heap.tail?](declarations/heap-tail.md) | 211 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `def` | [Heap.tail](declarations/heap-tail-source-edition-2.md) | 215 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [Heap.realSize_merge](declarations/heap-realsize-merge.md) | 217 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `def` | [FindMin.HasSize](declarations/findmin-hassize.md) | 235 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [Heap.realSize_findMin](declarations/heap-realsize-findmin.md) | 240 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [HeapNode.realSize_toHeap](declarations/heapnode-realsize-toheap.md) | 254 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [Heap.realSize_deleteMin](declarations/heap-realsize-deletemin.md) | 259 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [Heap.realSize_tail?](declarations/heap-realsize-tail.md) | 271 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [Heap.realSize_tail](declarations/heap-realsize-tail-source-edition-2.md) | 277 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `def` | [Heap.foldM](declarations/heap-foldm.md) | 287 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `def` | [Heap.fold](declarations/heap-fold.md) | 300 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `def` | [Heap.toArray](declarations/heap-toarray.md) | 304 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `def` | [Heap.toList](declarations/heap-tolist.md) | 307 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `def` | [HeapNode.foldTreeM](declarations/heapnode-foldtreem.md) | 313 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `def` | [Heap.foldTreeM](declarations/heap-foldtreem.md) | 318 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `def` | [Heap.foldTree](declarations/heap-foldtree.md) | 325 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `def` | [Heap.toListUnordered](declarations/heap-tolistunordered.md) | 329 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `def` | [Heap.toArrayUnordered](declarations/heap-toarrayunordered.md) | 333 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `def` | [HeapNode.WF](declarations/heapnode-wf.md) | 344 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `def` | [Heap.WF](declarations/heap-wf.md) | 354 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `theorem` | [Heap.WF.nil](declarations/heap-wf-nil.md) | 358 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `theorem` | [Heap.WF.singleton](declarations/heap-wf-singleton.md) | 360 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `theorem` | [Heap.WF.of_rankGT](declarations/heap-wf-of-rankgt.md) | 362 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `theorem` | [Heap.WF.of_le](declarations/heap-wf-of-le.md) | 367 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `theorem` | [Heap.rankGT.of_le](declarations/heap-rankgt-of-le.md) | 372 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `theorem` | [Heap.WF.rankGT](declarations/heap-wf-rankgt.md) | 377 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `theorem` | [Heap.WF.merge'](declarations/heap-wf-merge.md) | 382 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `theorem` | [Heap.WF.merge](declarations/heap-wf-merge-source-edition-2.md) | 418 | `BLOCKED_NATIVE_ADMISSION` |
| 51 | `theorem` | [HeapNode.WF.rank_eq](declarations/heapnode-wf-rank-eq.md) | 421 | `BLOCKED_NATIVE_ADMISSION` |
| 52 | `theorem` | [HeapNode.WF.toHeap](declarations/heapnode-wf-toheap.md) | 425 | `BLOCKED_NATIVE_ADMISSION` |
| 53 | `structure` | [FindMin.WF](declarations/findmin-wf.md) | 438 | `BLOCKED_NATIVE_ADMISSION` |
| 54 | `def` | [Heap.WF.findMin](declarations/heap-wf-findmin.md) | 450 | `BLOCKED_NATIVE_ADMISSION` |
| 55 | `theorem` | [Heap.WF.deleteMin](declarations/heap-wf-deletemin.md) | 461 | `BLOCKED_NATIVE_ADMISSION` |
| 56 | `theorem` | [Heap.WF.tail?](declarations/heap-wf-tail.md) | 473 | `BLOCKED_NATIVE_ADMISSION` |
| 57 | `theorem` | [Heap.WF.tail](declarations/heap-wf-tail-source-edition-2.md) | 478 | `BLOCKED_NATIVE_ADMISSION` |
| 58 | `def` | [BinomialHeap](declarations/binomialheap.md) | 503 | `BLOCKED_NATIVE_ADMISSION` |
| 59 | `def` | [mkBinomialHeap](declarations/mkbinomialheap.md) | 507 | `BLOCKED_NATIVE_ADMISSION` |
| 60 | `def` | [empty](declarations/empty.md) | 514 | `BLOCKED_NATIVE_ADMISSION` |
| 61 | `instance` | [(anonymous)](declarations/instance-source-edition-3.md) | 516 | `BLOCKED_NATIVE_ADMISSION` |
| 62 | `instance` | [(anonymous)](declarations/instance-source-edition-5.md) | 517 | `BLOCKED_NATIVE_ADMISSION` |
| 63 | `def` | [isEmpty](declarations/isempty.md) | 520 | `BLOCKED_NATIVE_ADMISSION` |
| 64 | `def` | [size](declarations/size.md) | 523 | `BLOCKED_NATIVE_ADMISSION` |
| 65 | `def` | [singleton](declarations/singleton.md) | 526 | `BLOCKED_NATIVE_ADMISSION` |
| 66 | `def` | [merge](declarations/merge.md) | 529 | `BLOCKED_NATIVE_ADMISSION` |
| 67 | `def` | [insert](declarations/insert.md) | 533 | `BLOCKED_NATIVE_ADMISSION` |
| 68 | `def` | [ofList](declarations/oflist.md) | 536 | `BLOCKED_NATIVE_ADMISSION` |
| 69 | `def` | [ofArray](declarations/ofarray.md) | 539 | `BLOCKED_NATIVE_ADMISSION` |
| 70 | `def` | [deleteMin](declarations/deletemin.md) | 542 | `BLOCKED_NATIVE_ADMISSION` |
| 71 | `instance` | [(anonymous)](declarations/instance.md) | 547 | `BLOCKED_NATIVE_ADMISSION` |
| 72 | `def` | [forIn](declarations/forin.md) | 553 | `BLOCKED_NATIVE_ADMISSION` |
| 73 | `instance` | [(anonymous)](declarations/instance-source-edition-4.md) | 556 | `BLOCKED_NATIVE_ADMISSION` |
| 74 | `def` | [head?](declarations/head.md) | 559 | `BLOCKED_NATIVE_ADMISSION` |
| 75 | `def` | [head!](declarations/head-source-edition-2.md) | 562 | `BLOCKED_NATIVE_ADMISSION` |
| 76 | `def` | [headI](declarations/headi.md) | 565 | `BLOCKED_NATIVE_ADMISSION` |
| 77 | `def` | [tail?](declarations/tail-source-edition-2.md) | 568 | `BLOCKED_NATIVE_ADMISSION` |
| 78 | `def` | [tail](declarations/tail.md) | 574 | `BLOCKED_NATIVE_ADMISSION` |
| 79 | `def` | [foldM](declarations/foldm.md) | 580 | `BLOCKED_NATIVE_ADMISSION` |
| 80 | `def` | [fold](declarations/fold.md) | 587 | `BLOCKED_NATIVE_ADMISSION` |
| 81 | `def` | [toList](declarations/tolist.md) | 590 | `BLOCKED_NATIVE_ADMISSION` |
| 82 | `def` | [toArray](declarations/toarray.md) | 593 | `BLOCKED_NATIVE_ADMISSION` |
| 83 | `def` | [toListUnordered](declarations/tolistunordered.md) | 596 | `BLOCKED_NATIVE_ADMISSION` |
| 84 | `def` | [toArrayUnordered](declarations/toarrayunordered.md) | 599 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=4807f1cf362fc56bb6d4183d522e20c6f51a2518fdc66dc265b858dcbd8203a6 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variantddcdcd08950fc2563021362338ba037f442d80ec6da166aeef9b824c8ee76895.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
