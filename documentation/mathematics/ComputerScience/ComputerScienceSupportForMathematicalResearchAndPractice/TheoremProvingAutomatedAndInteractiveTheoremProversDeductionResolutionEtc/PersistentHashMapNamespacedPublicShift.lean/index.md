# Persistent Hash Map Namespaced Public Shift

[Complete source index](../../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**68 observed declarations and anonymous commands**, 2 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PersistentHashMap/Variant580ceb25ed87145cce3c77184725713321cc0202250588a742936dd3df1755ce.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `9ff843783f55193334fa7a1fa34e41d2db50f017`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../_verification/specifications/ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/PersistentHashMapNamespacedPublicShift.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `inductive` | [Entry](declarations/entry.md) | 32 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `instance` | [(anonymous)](declarations/instance-source-edition-2.md) | 37 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `inductive` | [Node](declarations/node.md) | 39 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `def` | [Node.isEmpty](declarations/node-isempty.md) | 43 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `instance` | [(anonymous)](declarations/instance-source-edition-4.md) | 50 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `abbrev` | [shift](declarations/shift.md) | 52 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `abbrev` | [branching](declarations/branching.md) | 53 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `abbrev` | [maxDepth](declarations/maxdepth.md) | 54 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `abbrev` | [maxCollisions](declarations/maxcollisions.md) | 55 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `def` | [mkEmptyEntriesArray](declarations/mkemptyentriesarray.md) | 57 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `structure` | [PersistentHashMap](declarations/persistenthashmap.md) | 62 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `abbrev` | [PHashMap](declarations/phashmap.md) | 65 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `def` | [empty](declarations/empty.md) | 69 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `def` | [isEmpty](declarations/isempty.md) | 71 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `instance` | [(anonymous)](declarations/instance-source-edition-6.md) | 74 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `def` | [mkEmptyEntries](declarations/mkemptyentries.md) | 76 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `abbrev` | [mul2Shift](declarations/mul2shift.md) | 79 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `abbrev` | [div2Shift](declarations/div2shift.md) | 80 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `abbrev` | [mod2Shift](declarations/mod2shift.md) | 81 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `inductive` | [IsCollisionNode](declarations/iscollisionnode.md) | 83 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `abbrev` | [CollisionNode](declarations/collisionnode.md) | 86 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `inductive` | [IsEntriesNode](declarations/isentriesnode.md) | 88 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `abbrev` | [EntriesNode](declarations/entriesnode.md) | 91 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [size_set](declarations/size-set.md) | 93 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [size_push](declarations/size-push.md) | 97 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `def` | [insertAtCollisionNodeAux](declarations/insertatcollisionnodeaux.md) | 100 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `def` | [insertAtCollisionNode](declarations/insertatcollisionnode.md) | 112 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `def` | [getCollisionNodeSize](declarations/getcollisionnodesize.md) | 115 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `def` | [mkCollisionNode](declarations/mkcollisionnode.md) | 119 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `def` | [insertAux](declarations/insertaux.md) | 126 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `def` | [insert](declarations/insert.md) | 154 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `def` | [findAtAux](declarations/findataux.md) | 157 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `def` | [findAux](declarations/findaux.md) | 165 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `def` | [find?](declarations/find-source-edition-2.md) | 174 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `instance` | [(anonymous)](declarations/instance-source-edition-5.md) | 177 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `def` | [findD](declarations/findd.md) | 180 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `def` | [find!](declarations/find.md) | 183 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `def` | [findEntryAtAux](declarations/findentryataux.md) | 188 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `def` | [findEntryAux](declarations/findentryaux.md) | 196 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `def` | [findEntry?](declarations/findentry.md) | 205 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `def` | [findKeyDAtAux](declarations/findkeydataux.md) | 208 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `def` | [findKeyDAux](declarations/findkeydaux.md) | 215 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `def` | [findKeyD](declarations/findkeyd.md) | 227 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `def` | [containsAtAux](declarations/containsataux.md) | 230 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `def` | [containsAux](declarations/containsaux.md) | 237 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `def` | [contains](declarations/contains.md) | 246 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `def` | [isUnaryEntries](declarations/isunaryentries.md) | 249 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `def` | [isUnaryNode](declarations/isunarynode.md) | 260 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `def` | [eraseAux](declarations/eraseaux.md) | 270 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `def` | [erase](declarations/erase.md) | 295 | `BLOCKED_NATIVE_ADMISSION` |
| 51 | `def` | [alterAux](declarations/alteraux.md) | 301 | `BLOCKED_NATIVE_ADMISSION` |
| 52 | `def` | [alter](declarations/alter.md) | 348 | `BLOCKED_NATIVE_ADMISSION` |
| 53 | `def` | [foldlMAux](declarations/foldlmaux.md) | 358 | `BLOCKED_NATIVE_ADMISSION` |
| 54 | `def` | [foldlM](declarations/foldlm.md) | 376 | `BLOCKED_NATIVE_ADMISSION` |
| 55 | `def` | [forM](declarations/form.md) | 379 | `BLOCKED_NATIVE_ADMISSION` |
| 56 | `def` | [foldl](declarations/foldl.md) | 382 | `BLOCKED_NATIVE_ADMISSION` |
| 57 | `def` | [forIn](declarations/forin.md) | 385 | `BLOCKED_NATIVE_ADMISSION` |
| 58 | `instance` | [(anonymous)](declarations/instance.md) | 395 | `BLOCKED_NATIVE_ADMISSION` |
| 59 | `def` | [mapMAux](declarations/mapmaux.md) | 400 | `BLOCKED_NATIVE_ADMISSION` |
| 60 | `def` | [mapM](declarations/mapm.md) | 412 | `BLOCKED_NATIVE_ADMISSION` |
| 61 | `def` | [map](declarations/map.md) | 416 | `BLOCKED_NATIVE_ADMISSION` |
| 62 | `def` | [toList](declarations/tolist.md) | 419 | `BLOCKED_NATIVE_ADMISSION` |
| 63 | `def` | [toArray](declarations/toarray.md) | 422 | `BLOCKED_NATIVE_ADMISSION` |
| 64 | `structure` | [Stats](declarations/stats-source-edition-2.md) | 425 | `BLOCKED_NATIVE_ADMISSION` |
| 65 | `def` | [collectStats](declarations/collectstats.md) | 431 | `BLOCKED_NATIVE_ADMISSION` |
| 66 | `def` | [stats](declarations/stats.md) | 449 | `BLOCKED_NATIVE_ADMISSION` |
| 67 | `def` | [Stats.toString](declarations/stats-tostring.md) | 452 | `BLOCKED_NATIVE_ADMISSION` |
| 68 | `instance` | [(anonymous)](declarations/instance-source-edition-3.md) | 455 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=68d01f4725b47cefd05b5ae801e9960317779fcca4e40e3305d7a9a7b3e2bd71 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PersistentHashMap/Variant580ceb25ed87145cce3c77184725713321cc0202250588a742936dd3df1755ce.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
