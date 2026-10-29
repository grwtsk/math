# Mutex Public

[Complete source index](../../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**21 observed declarations and anonymous commands**, 0 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Mutex/Variante7f66577077fed41cd6333382263bdda73bdb1aaac230b0cff6033cb3193dd29.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `668308c898823a2afcf1522fd4d32209f6c948fe`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../_verification/specifications/ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/MutexPublic.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `opaque` | [BaseMutexImpl](declarations/basemuteximpl.md) | 16 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `def` | [BaseMutex](declarations/basemutex.md) | 23 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `instance` | [(anonymous)](declarations/instance-source-edition-2.md) | 25 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `opaque` | [BaseMutex.new](declarations/basemutex-new.md) | 29 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `opaque` | [BaseMutex.lock](declarations/basemutex-lock.md) | 39 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `opaque` | [BaseMutex.tryLock](declarations/basemutex-trylock.md) | 52 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `opaque` | [BaseMutex.unlock](declarations/basemutex-unlock.md) | 62 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `opaque` | [CondvarImpl](declarations/condvarimpl.md) | 64 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `def` | [Condvar](declarations/condvar.md) | 87 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `instance` | [(anonymous)](declarations/instance.md) | 89 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `opaque` | [Condvar.new](declarations/condvar-new.md) | 93 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `opaque` | [Condvar.wait](declarations/condvar-wait.md) | 97 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `opaque` | [Condvar.notifyOne](declarations/condvar-notifyone.md) | 101 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `opaque` | [Condvar.notifyAll](declarations/condvar-notifyall.md) | 105 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `def` | [Condvar.waitUntil](declarations/condvar-waituntil.md) | 108 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `structure` | [Mutex](declarations/mutex.md) | 119 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `instance` | [(anonymous)](declarations/instance-source-edition-3.md) | 124 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `def` | [Mutex.new](declarations/mutex-new.md) | 127 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `def` | [Mutex.atomically](declarations/mutex-atomically.md) | 136 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `def` | [Mutex.tryAtomically](declarations/mutex-tryatomically.md) | 152 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `def` | [Mutex.atomicallyOnce](declarations/mutex-atomicallyonce.md) | 169 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=3ebc9cb3b1613a42c4feb56d8975911b079b63380619c3f767fede916736f3a1 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Mutex/Variante7f66577077fed41cd6333382263bdda73bdb1aaac230b0cff6033cb3193dd29.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
