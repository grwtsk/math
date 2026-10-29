# Persistent Hash Map Public Shift

[Complete source index](../../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**68 observed declarations and anonymous commands**, 2 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PersistentHashMap/Variantd63a21b3bdc0c616417d75c32c3e104cc185667229a8a899de3769c1a4252af4.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `e4d81c5cc33ac8d6e67ad217402ec8688b11486e`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../_verification/specifications/ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/PersistentHashMapPublicShift.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `inductive` | [Entry](declarations/entry.md) | 24 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `instance` | [(anonymous)](declarations/instance-source-edition-4.md) | 29 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `inductive` | [Node](declarations/node.md) | 31 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `def` | [Node.isEmpty](declarations/node-isempty.md) | 35 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `instance` | [(anonymous)](declarations/instance.md) | 42 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `abbrev` | [shift](declarations/shift.md) | 44 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `abbrev` | [branching](declarations/branching.md) | 45 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `abbrev` | [maxDepth](declarations/maxdepth.md) | 46 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `abbrev` | [maxCollisions](declarations/maxcollisions.md) | 47 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `def` | [mkEmptyEntriesArray](declarations/mkemptyentriesarray.md) | 49 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `structure` | [PersistentHashMap](declarations/persistenthashmap.md) | 54 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `abbrev` | [PHashMap](declarations/phashmap.md) | 57 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `def` | [empty](declarations/empty.md) | 61 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `def` | [isEmpty](declarations/isempty.md) | 63 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `instance` | [(anonymous)](declarations/instance-source-edition-6.md) | 66 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `def` | [mkEmptyEntries](declarations/mkemptyentries.md) | 68 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `abbrev` | [mul2Shift](declarations/mul2shift.md) | 71 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `abbrev` | [div2Shift](declarations/div2shift.md) | 72 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `abbrev` | [mod2Shift](declarations/mod2shift.md) | 73 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `inductive` | [IsCollisionNode](declarations/iscollisionnode.md) | 75 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `abbrev` | [CollisionNode](declarations/collisionnode.md) | 78 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `inductive` | [IsEntriesNode](declarations/isentriesnode.md) | 80 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `abbrev` | [EntriesNode](declarations/entriesnode.md) | 83 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [size_set](declarations/size-set.md) | 85 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [size_push](declarations/size-push.md) | 89 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `def` | [insertAtCollisionNodeAux](declarations/insertatcollisionnodeaux.md) | 92 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `def` | [insertAtCollisionNode](declarations/insertatcollisionnode.md) | 104 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `def` | [getCollisionNodeSize](declarations/getcollisionnodesize.md) | 107 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `def` | [mkCollisionNode](declarations/mkcollisionnode.md) | 111 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `def` | [insertAux](declarations/insertaux.md) | 118 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `def` | [insert](declarations/insert.md) | 146 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `def` | [findAtAux](declarations/findataux.md) | 149 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `def` | [findAux](declarations/findaux.md) | 157 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `def` | [find?](declarations/find-source-edition-2.md) | 166 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `instance` | [(anonymous)](declarations/instance-source-edition-5.md) | 169 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `def` | [findD](declarations/findd.md) | 172 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `def` | [find!](declarations/find.md) | 175 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `def` | [findEntryAtAux](declarations/findentryataux.md) | 180 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `def` | [findEntryAux](declarations/findentryaux.md) | 188 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `def` | [findEntry?](declarations/findentry.md) | 197 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `def` | [findKeyDAtAux](declarations/findkeydataux.md) | 200 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `def` | [findKeyDAux](declarations/findkeydaux.md) | 207 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `def` | [findKeyD](declarations/findkeyd.md) | 219 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `def` | [containsAtAux](declarations/containsataux.md) | 222 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `def` | [containsAux](declarations/containsaux.md) | 229 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `def` | [contains](declarations/contains.md) | 238 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `def` | [isUnaryEntries](declarations/isunaryentries.md) | 241 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `def` | [isUnaryNode](declarations/isunarynode.md) | 252 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `def` | [eraseAux](declarations/eraseaux.md) | 262 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `def` | [erase](declarations/erase.md) | 287 | `BLOCKED_NATIVE_ADMISSION` |
| 51 | `def` | [alterAux](declarations/alteraux.md) | 293 | `BLOCKED_NATIVE_ADMISSION` |
| 52 | `def` | [alter](declarations/alter.md) | 340 | `BLOCKED_NATIVE_ADMISSION` |
| 53 | `def` | [foldlMAux](declarations/foldlmaux.md) | 350 | `BLOCKED_NATIVE_ADMISSION` |
| 54 | `def` | [foldlM](declarations/foldlm.md) | 368 | `BLOCKED_NATIVE_ADMISSION` |
| 55 | `def` | [forM](declarations/form.md) | 371 | `BLOCKED_NATIVE_ADMISSION` |
| 56 | `def` | [foldl](declarations/foldl.md) | 374 | `BLOCKED_NATIVE_ADMISSION` |
| 57 | `def` | [forIn](declarations/forin.md) | 377 | `BLOCKED_NATIVE_ADMISSION` |
| 58 | `instance` | [(anonymous)](declarations/instance-source-edition-2.md) | 387 | `BLOCKED_NATIVE_ADMISSION` |
| 59 | `def` | [mapMAux](declarations/mapmaux.md) | 392 | `BLOCKED_NATIVE_ADMISSION` |
| 60 | `def` | [mapM](declarations/mapm.md) | 404 | `BLOCKED_NATIVE_ADMISSION` |
| 61 | `def` | [map](declarations/map.md) | 408 | `BLOCKED_NATIVE_ADMISSION` |
| 62 | `def` | [toList](declarations/tolist.md) | 411 | `BLOCKED_NATIVE_ADMISSION` |
| 63 | `def` | [toArray](declarations/toarray.md) | 414 | `BLOCKED_NATIVE_ADMISSION` |
| 64 | `structure` | [Stats](declarations/stats-source-edition-2.md) | 417 | `BLOCKED_NATIVE_ADMISSION` |
| 65 | `def` | [collectStats](declarations/collectstats.md) | 423 | `BLOCKED_NATIVE_ADMISSION` |
| 66 | `def` | [stats](declarations/stats.md) | 441 | `BLOCKED_NATIVE_ADMISSION` |
| 67 | `def` | [Stats.toString](declarations/stats-tostring.md) | 444 | `BLOCKED_NATIVE_ADMISSION` |
| 68 | `instance` | [(anonymous)](declarations/instance-source-edition-3.md) | 447 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=c552940aefdd5c86d709189a386717c543c63fcdfa743b625338e34a3dce17d2 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PersistentHashMap/Variantd63a21b3bdc0c616417d75c32c3e104cc185667229a8a899de3769c1a4252af4.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
