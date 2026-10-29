# Basic Basic Namespaced Public Job Action

[Complete source index](../../../../complete-source-index.md) · [Up one directory](../../../../complete-source-index.md) · [Full source](source.md)

**38 observed declarations and anonymous commands**, 0 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant3b1720c37941328dab0912f4bb216a77ae965c3e57e217dddaf614b0a4e7ea57.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `db9d21fc4ba041b26d09bd11818872f1c2c3f05c`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../_verification/specifications/ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/BasicBasicNamespacedPublicJobAction.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `inductive` | [JobAction](declarations/jobaction.md) | 37 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `instance` | [(anonymous)](declarations/instance-source-edition-7.md) | 57 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `instance` | [(anonymous)](declarations/instance-source-edition-6.md) | 58 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `instance` | [(anonymous)](declarations/instance-source-edition-9.md) | 59 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `instance` | [(anonymous)](declarations/instance-source-edition-3.md) | 60 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `def` | [merge](declarations/merge.md) | 62 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `def` | [verb](declarations/verb.md) | 65 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `structure` | [JobState](declarations/jobstate.md) | 78 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `def` | [JobState.merge](declarations/jobstate-merge.md) | 91 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `def` | [JobState.modifyLog](declarations/jobstate-modifylog.md) | 98 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `def` | [JobState.logEntry](declarations/jobstate-logentry.md) | 101 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `abbrev` | [JobResult](declarations/jobresult.md) | 107 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `def` | [JobResult.prependLog](declarations/jobresult-prependlog.md) | 110 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `abbrev` | [JobTask](declarations/jobtask.md) | 116 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `structure` | [Job](declarations/job.md) | 121 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `instance` | [(anonymous)](declarations/instance-source-edition-4.md) | 134 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `def` | [cast](declarations/cast.md) | 139 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `def` | [ofTask](declarations/oftask.md) | 148 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `def` | [error](declarations/error.md) | 151 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `def` | [pure](declarations/pure.md) | 154 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `instance` | [(anonymous)](declarations/instance-source-edition-2.md) | 157 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `def` | [traceRoot](declarations/traceroot.md) | 160 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `def` | [nop](declarations/nop.md) | 163 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `def` | [nil](declarations/nil.md) | 166 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `def` | [getTrace](declarations/gettrace.md) | 173 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `def` | [setCaption](declarations/setcaption.md) | 177 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `def` | [setCaption?](declarations/setcaption-source-edition-2.md) | 181 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `def` | [mapResult](declarations/mapresult.md) | 184 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `def` | [mapOk](declarations/mapok.md) | 189 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `def` | [map](declarations/map.md) | 197 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `instance` | [(anonymous)](declarations/instance.md) | 202 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `abbrev` | [OpaqueJobTask](declarations/opaquejobtask.md) | 209 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `def` | [JobTask.toOpaqueImpl](declarations/jobtask-toopaqueimpl.md) | 211 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `def` | [JobTask.toOpaque](declarations/jobtask-toopaque.md) | 216 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `instance` | [(anonymous)](declarations/instance-source-edition-5.md) | 219 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `abbrev` | [OpaqueJob](declarations/opaquejob.md) | 222 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `def` | [Job.toOpaque](declarations/job-toopaque.md) | 225 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `instance` | [(anonymous)](declarations/instance-source-edition-8.md) | 228 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=44657f99abe89d9dd24502093ace561af441728159159052e3cdb3ef14c5b98c -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant3b1720c37941328dab0912f4bb216a77ae965c3e57e217dddaf614b0a4e7ea57.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
