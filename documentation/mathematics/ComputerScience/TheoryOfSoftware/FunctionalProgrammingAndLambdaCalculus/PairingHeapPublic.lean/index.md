# Pairing Heap Public

[Complete source index](../../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**65 observed declarations and anonymous commands**, 21 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PairingHeap/Variant3a8eceb6343a50f3c4c6b8caf92969ebe70c36b23003a34223e606cf42760d41.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `a3cd17927c23dbad6b37c8807f96bf999991ad53`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../_verification/specifications/ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/PairingHeapPublic.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `inductive` | [Heap](declarations/heap.md) | 24 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `def` | [Heap.size](declarations/heap-size.md) | 33 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `def` | [Heap.singleton](declarations/heap-singleton.md) | 38 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `def` | [Heap.isEmpty](declarations/heap-isempty.md) | 41 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `def` | [Heap.merge](declarations/heap-merge.md) | 46 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `def` | [Heap.combine](declarations/heap-combine.md) | 54 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `def` | [Heap.headD](declarations/heap-headd.md) | 59 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `def` | [Heap.head?](declarations/heap-head.md) | 64 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `def` | [Heap.deleteMin](declarations/heap-deletemin.md) | 69 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `def` | [Heap.tail?](declarations/heap-tail.md) | 74 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `def` | [Heap.tail](declarations/heap-tail-source-edition-2.md) | 78 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `inductive` | [Heap.NoSibling](declarations/heap-nosibling.md) | 82 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `instance` | [(anonymous)](declarations/instance-source-edition-2.md) | 88 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [Heap.noSibling_merge](declarations/heap-nosibling-merge.md) | 94 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [Heap.noSibling_combine](declarations/heap-nosibling-combine.md) | 99 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [Heap.noSibling_deleteMin](declarations/heap-nosibling-deletemin.md) | 107 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [Heap.noSibling_tail?](declarations/heap-nosibling-tail-source-edition-2.md) | 111 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [Heap.noSibling_tail](declarations/heap-nosibling-tail.md) | 117 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [Heap.size_merge_node](declarations/heap-size-merge-node.md) | 123 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [Heap.size_merge](declarations/heap-size-merge.md) | 127 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [Heap.size_combine](declarations/heap-size-combine.md) | 133 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [Heap.size_deleteMin](declarations/heap-size-deletemin.md) | 142 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [Heap.size_tail?](declarations/heap-size-tail-source-edition-2.md) | 146 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [Heap.size_tail](declarations/heap-size-tail.md) | 152 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [Heap.size_deleteMin_lt](declarations/heap-size-deletemin-lt.md) | 158 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [Heap.size_tail?_lt](declarations/heap-size-tail-lt.md) | 162 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `def` | [Heap.foldM](declarations/heap-foldm.md) | 172 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `def` | [Heap.fold](declarations/heap-fold.md) | 185 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `def` | [Heap.toArray](declarations/heap-toarray.md) | 189 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `def` | [Heap.toList](declarations/heap-tolist.md) | 192 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `def` | [Heap.foldTreeM](declarations/heap-foldtreem.md) | 195 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `def` | [Heap.foldTree](declarations/heap-foldtree.md) | 200 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `def` | [Heap.toListUnordered](declarations/heap-tolistunordered.md) | 204 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `def` | [Heap.toArrayUnordered](declarations/heap-toarrayunordered.md) | 208 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `def` | [Heap.NodeWF](declarations/heap-nodewf.md) | 217 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `inductive` | [Heap.WF](declarations/heap-wf.md) | 227 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `theorem` | [Heap.WF.singleton](declarations/heap-wf-singleton.md) | 233 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `theorem` | [Heap.WF.merge_node](declarations/heap-wf-merge-node.md) | 235 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `theorem` | [Heap.WF.merge](declarations/heap-wf-merge.md) | 242 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `theorem` | [Heap.WF.combine](declarations/heap-wf-combine.md) | 250 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `theorem` | [Heap.WF.deleteMin](declarations/heap-wf-deletemin.md) | 256 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `theorem` | [Heap.WF.tail?](declarations/heap-wf-tail.md) | 260 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `theorem` | [Heap.WF.tail](declarations/heap-wf-tail-source-edition-2.md) | 266 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `theorem` | [Heap.deleteMin_fst](declarations/heap-deletemin-fst.md) | 272 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `def` | [PairingHeap](declarations/pairingheap.md) | 298 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `def` | [mkPairingHeap](declarations/mkpairingheap.md) | 302 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `def` | [empty](declarations/empty.md) | 309 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `instance` | [(anonymous)](declarations/instance.md) | 311 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `def` | [isEmpty](declarations/isempty.md) | 314 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `def` | [size](declarations/size.md) | 317 | `BLOCKED_NATIVE_ADMISSION` |
| 51 | `def` | [singleton](declarations/singleton.md) | 320 | `BLOCKED_NATIVE_ADMISSION` |
| 52 | `def` | [merge](declarations/merge.md) | 324 | `BLOCKED_NATIVE_ADMISSION` |
| 53 | `def` | [insert](declarations/insert.md) | 328 | `BLOCKED_NATIVE_ADMISSION` |
| 54 | `def` | [ofList](declarations/oflist.md) | 332 | `BLOCKED_NATIVE_ADMISSION` |
| 55 | `def` | [ofArray](declarations/ofarray.md) | 336 | `BLOCKED_NATIVE_ADMISSION` |
| 56 | `def` | [deleteMin](declarations/deletemin.md) | 340 | `BLOCKED_NATIVE_ADMISSION` |
| 57 | `def` | [head?](declarations/head.md) | 346 | `BLOCKED_NATIVE_ADMISSION` |
| 58 | `def` | [head!](declarations/head-source-edition-2.md) | 349 | `BLOCKED_NATIVE_ADMISSION` |
| 59 | `def` | [headI](declarations/headi.md) | 352 | `BLOCKED_NATIVE_ADMISSION` |
| 60 | `def` | [tail?](declarations/tail.md) | 357 | `BLOCKED_NATIVE_ADMISSION` |
| 61 | `def` | [tail](declarations/tail-source-edition-2.md) | 363 | `BLOCKED_NATIVE_ADMISSION` |
| 62 | `def` | [toList](declarations/tolist.md) | 366 | `BLOCKED_NATIVE_ADMISSION` |
| 63 | `def` | [toArray](declarations/toarray.md) | 369 | `BLOCKED_NATIVE_ADMISSION` |
| 64 | `def` | [toListUnordered](declarations/tolistunordered.md) | 372 | `BLOCKED_NATIVE_ADMISSION` |
| 65 | `def` | [toArrayUnordered](declarations/toarrayunordered.md) | 375 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=52203160be0a45c1f06fb4c909eb67b76a1de07f1617d1626fbfc43e76a2da26 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PairingHeap/Variant3a8eceb6343a50f3c4c6b8caf92969ebe70c36b23003a34223e606cf42760d41.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
