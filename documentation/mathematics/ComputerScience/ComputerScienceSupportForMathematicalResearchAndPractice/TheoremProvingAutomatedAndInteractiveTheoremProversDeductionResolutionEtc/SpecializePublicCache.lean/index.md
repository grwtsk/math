# Specialize Public Cache

[Complete source index](../../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**33 observed declarations and anonymous commands**, 0 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Specialize/Variant5129e0b7906bdd2b5c4778507d8f20ea3e98c8789e6d3e955a08f56c7426d0e1.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `6499b801b9870d1ca1f79b8ffb1a9c9fa987cbd2`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../_verification/specifications/ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/SpecializePublicCache.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `abbrev` | [Cache](declarations/cache.md) | 20 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `structure` | [CacheEntry](declarations/cacheentry.md) | 22 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `def` | [addEntry](declarations/addentry.md) | 27 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `builtin_initialize` | [(anonymous)](declarations/builtin-initialize.md) | 30 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `def` | [cacheSpec](declarations/cachespec.md) | 41 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `def` | [findSpecCache?](declarations/findspeccache.md) | 44 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `structure` | [Context](declarations/context.md) | 47 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `structure` | [State](declarations/state.md) | 63 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `abbrev` | [SpecializeM](declarations/specializem.md) | 88 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `instance` | [(anonymous)](declarations/instance.md) | 90 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `def` | [isGround](declarations/isground.md) | 98 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `def` | [withLetDecl](declarations/withletdecl.md) | 102 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `def` | [withFunDecl](declarations/withfundecl.md) | 126 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `def` | [collect](declarations/collect.md) | 194 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `def` | [shouldSpecialize](declarations/shouldspecialize.md) | 219 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `def` | [expandCodeDecls](declarations/expandcodedecls.md) | 267 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `def` | [mkKey](declarations/mkkey.md) | 288 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `def` | [mkSpecDecl](declarations/mkspecdecl.md) | 312 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `def` | [getRemainingArgs](declarations/getremainingargs.md) | 361 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `def` | [paramsToGroundVars](declarations/paramstogroundvars.md) | 368 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `def` | [getSpecEntry?](declarations/getspecentry.md) | 375 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `def` | [markChanged](declarations/markchanged.md) | 382 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `def` | [resetChanged](declarations/resetchanged.md) | 386 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `def` | [hasChanged](declarations/haschanged.md) | 390 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `def` | [specializeApp?](declarations/specializeapp.md) | 398 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `def` | [visitFunDecl](declarations/visitfundecl.md) | 448 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `def` | [visitCode](declarations/visitcode.md) | 452 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `def` | [specializeDecl](declarations/specializedecl.md) | 482 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `def` | [updateLocalSpecParamInfo](declarations/updatelocalspecparaminfo.md) | 499 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `def` | [loop](declarations/loop.md) | 519 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `def` | [main](declarations/main.md) | 550 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `def` | [specialize](declarations/specialize.md) | 557 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `builtin_initialize` | [(anonymous)](declarations/builtin-initialize-source-edition-2.md) | 563 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=18337898adb20c894dcbe8a49937c81e78cda0c299d2a36d6533ad9d96607daa -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Specialize/Variant5129e0b7906bdd2b5c4778507d8f20ea3e98c8789e6d3e955a08f56c7426d0e1.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
