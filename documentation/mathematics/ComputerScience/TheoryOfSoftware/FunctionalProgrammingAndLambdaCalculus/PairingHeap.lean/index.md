# Pairing Heap

[Complete source index](../../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**65 observed declarations and anonymous commands**, 21 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PairingHeap/Variant4d59854f14ed1363a08cc037baff69b190da4497d78514c5ce7cff99fd9a58a9.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `a4d192b44f3afabe24cc7ca34e7ee854ac00f422`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../_verification/specifications/ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/PairingHeap.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `inductive` | [Heap](declarations/heap.md) | 21 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `def` | [Heap.size](declarations/heap-size.md) | 30 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `def` | [Heap.singleton](declarations/heap-singleton.md) | 35 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `def` | [Heap.isEmpty](declarations/heap-isempty.md) | 38 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `def` | [Heap.merge](declarations/heap-merge.md) | 43 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `def` | [Heap.combine](declarations/heap-combine.md) | 51 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `def` | [Heap.headD](declarations/heap-headd.md) | 56 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `def` | [Heap.head?](declarations/heap-head.md) | 61 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `def` | [Heap.deleteMin](declarations/heap-deletemin.md) | 66 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `def` | [Heap.tail?](declarations/heap-tail.md) | 71 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `def` | [Heap.tail](declarations/heap-tail-source-edition-2.md) | 75 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `inductive` | [Heap.NoSibling](declarations/heap-nosibling.md) | 79 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `instance` | [(anonymous)](declarations/instance-source-edition-2.md) | 85 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [Heap.noSibling_merge](declarations/heap-nosibling-merge.md) | 91 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [Heap.noSibling_combine](declarations/heap-nosibling-combine.md) | 96 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [Heap.noSibling_deleteMin](declarations/heap-nosibling-deletemin.md) | 104 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [Heap.noSibling_tail?](declarations/heap-nosibling-tail.md) | 108 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [Heap.noSibling_tail](declarations/heap-nosibling-tail-source-edition-2.md) | 114 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [Heap.size_merge_node](declarations/heap-size-merge-node.md) | 120 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [Heap.size_merge](declarations/heap-size-merge.md) | 124 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [Heap.size_combine](declarations/heap-size-combine.md) | 130 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [Heap.size_deleteMin](declarations/heap-size-deletemin.md) | 139 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [Heap.size_tail?](declarations/heap-size-tail.md) | 143 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [Heap.size_tail](declarations/heap-size-tail-source-edition-2.md) | 149 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [Heap.size_deleteMin_lt](declarations/heap-size-deletemin-lt.md) | 155 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [Heap.size_tail?_lt](declarations/heap-size-tail-lt.md) | 159 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `def` | [Heap.foldM](declarations/heap-foldm.md) | 169 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `def` | [Heap.fold](declarations/heap-fold.md) | 182 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `def` | [Heap.toArray](declarations/heap-toarray.md) | 186 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `def` | [Heap.toList](declarations/heap-tolist.md) | 189 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `def` | [Heap.foldTreeM](declarations/heap-foldtreem.md) | 192 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `def` | [Heap.foldTree](declarations/heap-foldtree.md) | 197 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `def` | [Heap.toListUnordered](declarations/heap-tolistunordered.md) | 201 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `def` | [Heap.toArrayUnordered](declarations/heap-toarrayunordered.md) | 205 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `def` | [Heap.NodeWF](declarations/heap-nodewf.md) | 214 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `inductive` | [Heap.WF](declarations/heap-wf.md) | 224 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `theorem` | [Heap.WF.singleton](declarations/heap-wf-singleton.md) | 230 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `theorem` | [Heap.WF.merge_node](declarations/heap-wf-merge-node.md) | 232 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `theorem` | [Heap.WF.merge](declarations/heap-wf-merge.md) | 239 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `theorem` | [Heap.WF.combine](declarations/heap-wf-combine.md) | 247 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `theorem` | [Heap.WF.deleteMin](declarations/heap-wf-deletemin.md) | 253 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `theorem` | [Heap.WF.tail?](declarations/heap-wf-tail-source-edition-2.md) | 257 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `theorem` | [Heap.WF.tail](declarations/heap-wf-tail.md) | 263 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `theorem` | [Heap.deleteMin_fst](declarations/heap-deletemin-fst.md) | 269 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `def` | [PairingHeap](declarations/pairingheap.md) | 295 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `def` | [mkPairingHeap](declarations/mkpairingheap.md) | 299 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `def` | [empty](declarations/empty.md) | 306 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `instance` | [(anonymous)](declarations/instance.md) | 308 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `def` | [isEmpty](declarations/isempty.md) | 311 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `def` | [size](declarations/size.md) | 314 | `BLOCKED_NATIVE_ADMISSION` |
| 51 | `def` | [singleton](declarations/singleton.md) | 317 | `BLOCKED_NATIVE_ADMISSION` |
| 52 | `def` | [merge](declarations/merge.md) | 321 | `BLOCKED_NATIVE_ADMISSION` |
| 53 | `def` | [insert](declarations/insert.md) | 325 | `BLOCKED_NATIVE_ADMISSION` |
| 54 | `def` | [ofList](declarations/oflist.md) | 329 | `BLOCKED_NATIVE_ADMISSION` |
| 55 | `def` | [ofArray](declarations/ofarray.md) | 333 | `BLOCKED_NATIVE_ADMISSION` |
| 56 | `def` | [deleteMin](declarations/deletemin.md) | 337 | `BLOCKED_NATIVE_ADMISSION` |
| 57 | `def` | [head?](declarations/head.md) | 343 | `BLOCKED_NATIVE_ADMISSION` |
| 58 | `def` | [head!](declarations/head-source-edition-2.md) | 346 | `BLOCKED_NATIVE_ADMISSION` |
| 59 | `def` | [headI](declarations/headi.md) | 349 | `BLOCKED_NATIVE_ADMISSION` |
| 60 | `def` | [tail?](declarations/tail.md) | 354 | `BLOCKED_NATIVE_ADMISSION` |
| 61 | `def` | [tail](declarations/tail-source-edition-2.md) | 360 | `BLOCKED_NATIVE_ADMISSION` |
| 62 | `def` | [toList](declarations/tolist.md) | 363 | `BLOCKED_NATIVE_ADMISSION` |
| 63 | `def` | [toArray](declarations/toarray.md) | 366 | `BLOCKED_NATIVE_ADMISSION` |
| 64 | `def` | [toListUnordered](declarations/tolistunordered.md) | 369 | `BLOCKED_NATIVE_ADMISSION` |
| 65 | `def` | [toArrayUnordered](declarations/toarrayunordered.md) | 372 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=99128c3f1b1d92dcba9ebed514ec69e7094e61154d9e5a395a3f8c13b9609a4d -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PairingHeap/Variant4d59854f14ed1363a08cc037baff69b190da4497d78514c5ce7cff99fd9a58a9.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
