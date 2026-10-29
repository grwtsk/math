# Basic Basic Heap Node

[Complete source index](../../../../complete-source-index.md) · [Up one directory](../../../../complete-source-index.md) · [Full source](source.md)

**83 observed declarations and anonymous commands**, 20 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant4f0c6c9760d0b374e37edb82aad29666263742d23e7779ec5fa7acb81b45cc42.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `c3051ad42ee714d97ee0c2949e1d9c7f356e6fa0`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../_verification/specifications/ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicHeapNode.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `inductive` | [HeapNode](declarations/heapnode.md) | 25 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `def` | [HeapNode.realSize](declarations/heapnode-realsize.md) | 39 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `def` | [HeapNode.singleton](declarations/heapnode-singleton.md) | 44 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `def` | [HeapNode.rank](declarations/heapnode-rank.md) | 50 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `def` | [HeapNode.rankTR](declarations/heapnode-ranktr.md) | 55 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [HeapNode.rankTR_eq](declarations/heapnode-ranktr-eq.md) | 61 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `inductive` | [Heap](declarations/heap.md) | 72 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `def` | [Heap.realSize](declarations/heap-realsize.md) | 85 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `def` | [Heap.size](declarations/heap-size.md) | 90 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `def` | [Heap.isEmpty](declarations/heap-isempty.md) | 95 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `def` | [Heap.singleton](declarations/heap-singleton.md) | 100 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `def` | [Heap.rankGT](declarations/heap-rankgt.md) | 103 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `instance` | [(anonymous)](declarations/instance-source-edition-4.md) | 107 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `def` | [Heap.length](declarations/heap-length.md) | 113 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `def` | [combine](declarations/combine.md) | 121 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `def` | [Heap.merge](declarations/heap-merge.md) | 128 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `def` | [HeapNode.toHeap](declarations/heapnode-toheap.md) | 149 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `def` | [Heap.headD](declarations/heap-headd.md) | 156 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `def` | [Heap.head?](declarations/heap-head.md) | 161 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `structure` | [FindMin](declarations/findmin.md) | 169 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `def` | [Heap.findMin](declarations/heap-findmin.md) | 183 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `def` | [Heap.deleteMin](declarations/heap-deletemin.md) | 193 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `def` | [Heap.tail?](declarations/heap-tail-source-edition-2.md) | 200 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `def` | [Heap.tail](declarations/heap-tail.md) | 204 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [Heap.realSize_merge](declarations/heap-realsize-merge.md) | 206 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `def` | [FindMin.HasSize](declarations/findmin-hassize.md) | 224 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [Heap.realSize_findMin](declarations/heap-realsize-findmin.md) | 229 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [HeapNode.realSize_toHeap](declarations/heapnode-realsize-toheap.md) | 243 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [Heap.realSize_deleteMin](declarations/heap-realsize-deletemin.md) | 248 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [Heap.realSize_tail?](declarations/heap-realsize-tail-source-edition-2.md) | 260 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [Heap.realSize_tail](declarations/heap-realsize-tail.md) | 266 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `def` | [Heap.foldM](declarations/heap-foldm.md) | 276 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `def` | [Heap.fold](declarations/heap-fold.md) | 289 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `def` | [Heap.toArray](declarations/heap-toarray.md) | 293 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `def` | [Heap.toList](declarations/heap-tolist.md) | 296 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `def` | [HeapNode.foldTreeM](declarations/heapnode-foldtreem.md) | 302 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `def` | [Heap.foldTreeM](declarations/heap-foldtreem.md) | 307 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `def` | [Heap.foldTree](declarations/heap-foldtree.md) | 314 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `def` | [Heap.toListUnordered](declarations/heap-tolistunordered.md) | 318 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `def` | [Heap.toArrayUnordered](declarations/heap-toarrayunordered.md) | 322 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `def` | [HeapNode.WF](declarations/heapnode-wf.md) | 333 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `def` | [Heap.WF](declarations/heap-wf.md) | 343 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `theorem` | [Heap.WF.nil](declarations/heap-wf-nil.md) | 347 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `theorem` | [Heap.WF.singleton](declarations/heap-wf-singleton.md) | 349 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `theorem` | [Heap.WF.of_rankGT](declarations/heap-wf-of-rankgt.md) | 351 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `theorem` | [Heap.WF.of_le](declarations/heap-wf-of-le.md) | 356 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `theorem` | [Heap.rankGT.of_le](declarations/heap-rankgt-of-le.md) | 361 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `theorem` | [Heap.WF.rankGT](declarations/heap-wf-rankgt.md) | 366 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `theorem` | [Heap.WF.merge'](declarations/heap-wf-merge.md) | 371 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `theorem` | [Heap.WF.merge](declarations/heap-wf-merge-source-edition-2.md) | 407 | `BLOCKED_NATIVE_ADMISSION` |
| 51 | `theorem` | [HeapNode.WF.rank_eq](declarations/heapnode-wf-rank-eq.md) | 410 | `BLOCKED_NATIVE_ADMISSION` |
| 52 | `theorem` | [HeapNode.WF.toHeap](declarations/heapnode-wf-toheap.md) | 414 | `BLOCKED_NATIVE_ADMISSION` |
| 53 | `structure` | [FindMin.WF](declarations/findmin-wf.md) | 427 | `BLOCKED_NATIVE_ADMISSION` |
| 54 | `def` | [Heap.WF.findMin](declarations/heap-wf-findmin.md) | 439 | `BLOCKED_NATIVE_ADMISSION` |
| 55 | `theorem` | [Heap.WF.deleteMin](declarations/heap-wf-deletemin.md) | 450 | `BLOCKED_NATIVE_ADMISSION` |
| 56 | `theorem` | [Heap.WF.tail?](declarations/heap-wf-tail-source-edition-2.md) | 462 | `BLOCKED_NATIVE_ADMISSION` |
| 57 | `theorem` | [Heap.WF.tail](declarations/heap-wf-tail.md) | 467 | `BLOCKED_NATIVE_ADMISSION` |
| 58 | `def` | [BinomialHeap](declarations/binomialheap.md) | 492 | `BLOCKED_NATIVE_ADMISSION` |
| 59 | `def` | [mkBinomialHeap](declarations/mkbinomialheap.md) | 496 | `BLOCKED_NATIVE_ADMISSION` |
| 60 | `def` | [empty](declarations/empty.md) | 503 | `BLOCKED_NATIVE_ADMISSION` |
| 61 | `instance` | [(anonymous)](declarations/instance.md) | 505 | `BLOCKED_NATIVE_ADMISSION` |
| 62 | `def` | [isEmpty](declarations/isempty.md) | 508 | `BLOCKED_NATIVE_ADMISSION` |
| 63 | `def` | [size](declarations/size.md) | 511 | `BLOCKED_NATIVE_ADMISSION` |
| 64 | `def` | [singleton](declarations/singleton.md) | 514 | `BLOCKED_NATIVE_ADMISSION` |
| 65 | `def` | [merge](declarations/merge.md) | 517 | `BLOCKED_NATIVE_ADMISSION` |
| 66 | `def` | [insert](declarations/insert.md) | 521 | `BLOCKED_NATIVE_ADMISSION` |
| 67 | `def` | [ofList](declarations/oflist.md) | 524 | `BLOCKED_NATIVE_ADMISSION` |
| 68 | `def` | [ofArray](declarations/ofarray.md) | 527 | `BLOCKED_NATIVE_ADMISSION` |
| 69 | `def` | [deleteMin](declarations/deletemin.md) | 530 | `BLOCKED_NATIVE_ADMISSION` |
| 70 | `instance` | [(anonymous)](declarations/instance-source-edition-3.md) | 535 | `BLOCKED_NATIVE_ADMISSION` |
| 71 | `def` | [forIn](declarations/forin.md) | 541 | `BLOCKED_NATIVE_ADMISSION` |
| 72 | `instance` | [(anonymous)](declarations/instance-source-edition-2.md) | 544 | `BLOCKED_NATIVE_ADMISSION` |
| 73 | `def` | [head?](declarations/head-source-edition-2.md) | 547 | `BLOCKED_NATIVE_ADMISSION` |
| 74 | `def` | [head!](declarations/head.md) | 550 | `BLOCKED_NATIVE_ADMISSION` |
| 75 | `def` | [headI](declarations/headi.md) | 553 | `BLOCKED_NATIVE_ADMISSION` |
| 76 | `def` | [tail?](declarations/tail.md) | 556 | `BLOCKED_NATIVE_ADMISSION` |
| 77 | `def` | [tail](declarations/tail-source-edition-2.md) | 562 | `BLOCKED_NATIVE_ADMISSION` |
| 78 | `def` | [foldM](declarations/foldm.md) | 568 | `BLOCKED_NATIVE_ADMISSION` |
| 79 | `def` | [fold](declarations/fold.md) | 575 | `BLOCKED_NATIVE_ADMISSION` |
| 80 | `def` | [toList](declarations/tolist.md) | 578 | `BLOCKED_NATIVE_ADMISSION` |
| 81 | `def` | [toArray](declarations/toarray.md) | 581 | `BLOCKED_NATIVE_ADMISSION` |
| 82 | `def` | [toListUnordered](declarations/tolistunordered.md) | 584 | `BLOCKED_NATIVE_ADMISSION` |
| 83 | `def` | [toArrayUnordered](declarations/toarrayunordered.md) | 587 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=c7d0e1fd95ba109d3b309f4e3028b342bb13a0628094ba6f700c4671138b93ed -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant4f0c6c9760d0b374e37edb82aad29666263742d23e7779ec5fa7acb81b45cc42.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
