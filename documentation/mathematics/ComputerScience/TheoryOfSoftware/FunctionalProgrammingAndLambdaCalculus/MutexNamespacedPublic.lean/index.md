# Mutex Namespaced Public

[Complete source index](../../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**21 observed declarations and anonymous commands**, 0 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Mutex/Variant470a0faad3e4b05e8154690596b37b3ff974135a6e99ced325dff14e66589cf4.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `e209810feb9faad79ac1d5c0d16428e1c8f6d610`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../_verification/specifications/ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/MutexNamespacedPublic.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `opaque` | [BaseMutexImpl](declarations/basemuteximpl.md) | 24 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `def` | [BaseMutex](declarations/basemutex.md) | 31 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `instance` | [(anonymous)](declarations/instance-source-edition-2.md) | 33 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `opaque` | [BaseMutex.new](declarations/basemutex-new.md) | 37 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `opaque` | [BaseMutex.lock](declarations/basemutex-lock.md) | 47 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `opaque` | [BaseMutex.tryLock](declarations/basemutex-trylock.md) | 60 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `opaque` | [BaseMutex.unlock](declarations/basemutex-unlock.md) | 70 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `opaque` | [CondvarImpl](declarations/condvarimpl.md) | 72 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `def` | [Condvar](declarations/condvar.md) | 95 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `instance` | [(anonymous)](declarations/instance-source-edition-3.md) | 97 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `opaque` | [Condvar.new](declarations/condvar-new.md) | 101 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `opaque` | [Condvar.wait](declarations/condvar-wait.md) | 105 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `opaque` | [Condvar.notifyOne](declarations/condvar-notifyone.md) | 109 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `opaque` | [Condvar.notifyAll](declarations/condvar-notifyall.md) | 113 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `def` | [Condvar.waitUntil](declarations/condvar-waituntil.md) | 116 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `structure` | [Mutex](declarations/mutex.md) | 127 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `instance` | [(anonymous)](declarations/instance.md) | 132 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `def` | [Mutex.new](declarations/mutex-new.md) | 135 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `def` | [Mutex.atomically](declarations/mutex-atomically.md) | 144 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `def` | [Mutex.tryAtomically](declarations/mutex-tryatomically.md) | 160 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `def` | [Mutex.atomicallyOnce](declarations/mutex-atomicallyonce.md) | 177 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=3752b86552f937b29ccf898c1e1d331aab4dfdd7551bd1f112de0337c652fda6 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Mutex/Variant470a0faad3e4b05e8154690596b37b3ff974135a6e99ced325dff14e66589cf4.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
