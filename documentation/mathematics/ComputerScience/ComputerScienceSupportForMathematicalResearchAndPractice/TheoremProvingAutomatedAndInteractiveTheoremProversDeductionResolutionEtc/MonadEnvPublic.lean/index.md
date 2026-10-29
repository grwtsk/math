# Monad Env Public

[Complete source index](../../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**33 observed declarations and anonymous commands**, 0 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MonadEnv/Variant1c168f46d68a62564d44a1996d856d19b41f0088f02f3f481be38580c907ef95.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `e8d664d380e69f8c497257554be3ea802d0d2ad9`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../_verification/specifications/ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/MonadEnvPublic.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [setEnv](declarations/setenv.md) | 19 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `def` | [withEnv](declarations/withenv.md) | 22 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `def` | [isInductiveCore](declarations/isinductivecore-source-edition-2.md) | 30 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `def` | [isInductive](declarations/isinductive.md) | 33 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `def` | [isRecCore](declarations/isreccore.md) | 36 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `def` | [isRec](declarations/isrec.md) | 39 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `def` | [withoutModifyingEnv](declarations/withoutmodifyingenv.md) | 42 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `def` | [withoutModifyingEnv'](declarations/withoutmodifyingenv-source-edition-2.md) | 48 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `def` | [matchConst](declarations/matchconst.md) | 56 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `def` | [matchConstInduct](declarations/matchconstinduct.md) | 64 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `def` | [matchConstCtor](declarations/matchconstctor.md) | 70 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `def` | [matchConstRec](declarations/matchconstrec.md) | 76 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `def` | [hasConst](declarations/hasconst.md) | 82 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `def` | [getConstInfo](declarations/getconstinfo.md) | 85 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `def` | [getConstVal](declarations/getconstval.md) | 90 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `def` | [getAsyncConstInfo](declarations/getasyncconstinfo.md) | 95 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `def` | [isInductiveCore?](declarations/isinductivecore.md) | 100 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `def` | [isInductive?](declarations/isinductive-source-edition-2.md) | 108 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `def` | [isDefn?](declarations/isdefn.md) | 111 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `def` | [isCtor?](declarations/isctor.md) | 118 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `def` | [isRec?](declarations/isrec-source-edition-2.md) | 125 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `def` | [mkConstWithLevelParams](declarations/mkconstwithlevelparams.md) | 132 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `def` | [getConstInfoDefn](declarations/getconstinfodefn.md) | 136 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `def` | [getConstInfoInduct](declarations/getconstinfoinduct.md) | 139 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `def` | [getConstInfoCtor](declarations/getconstinfoctor.md) | 142 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `def` | [getConstInfoRec](declarations/getconstinforec.md) | 145 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `def` | [matchConstStructure](declarations/matchconststructure.md) | 153 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `def` | [matchConstNonRecStructure](declarations/matchconstnonrecstructure.md) | 167 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `opaque` | [hasCompileError](declarations/hascompileerror.md) | 179 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `def` | [evalConst](declarations/evalconst.md) | 181 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `def` | [evalConstCheck](declarations/evalconstcheck.md) | 187 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `def` | [findModuleOf?](declarations/findmoduleof.md) | 192 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `def` | [isEnumType](declarations/isenumtype.md) | 198 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=be7b0ad8e47c2ec59f2daff8521db9e4547ec49941ca52eed5efc58674cac155 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MonadEnv/Variant1c168f46d68a62564d44a1996d856d19b41f0088f02f3f481be38580c907ef95.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
