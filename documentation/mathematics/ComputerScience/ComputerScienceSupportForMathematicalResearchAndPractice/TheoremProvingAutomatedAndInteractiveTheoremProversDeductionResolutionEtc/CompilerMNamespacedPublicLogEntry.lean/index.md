# Compiler MNamespaced Public Log Entry

[Complete source index](../../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**38 observed declarations and anonymous commands**, 0 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CompilerM/Variant2d4ff40b37d8ba0212d1b150185bb9aa619f2c6c90b6fffd4ddf93a13340a968.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `d2abfa00cc93e086d17a4658ca5835364c9e6744`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../_verification/specifications/ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/CompilerMNamespacedPublicLogEntry.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `inductive` | [LogEntry](declarations/logentry.md) | 29 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `def` | [fmt](declarations/fmt.md) | 34 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `instance` | [(anonymous)](declarations/instance.md) | 38 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `abbrev` | [Log](declarations/log.md) | 41 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `def` | [Log.format](declarations/log-format.md) | 43 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `def` | [Log.toString](declarations/log-tostring.md) | 47 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `abbrev` | [CompilerM](declarations/compilerm.md) | 50 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `def` | [log](declarations/log-source-edition-2.md) | 52 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `def` | [tracePrefixOptionName](declarations/traceprefixoptionname.md) | 55 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `def` | [isLogEnabledFor](declarations/islogenabledfor.md) | 57 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `def` | [logDeclsAux](declarations/logdeclsaux.md) | 62 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `def` | [logDecls](declarations/logdecls.md) | 66 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `def` | [logMessageIfAux](declarations/logmessageifaux.md) | 69 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `def` | [logMessageIf](declarations/logmessageif.md) | 73 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `def` | [logMessage](declarations/logmessage.md) | 76 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `abbrev` | [DeclMap](declarations/declmap.md) | 79 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `abbrev` | [declLt](declarations/decllt.md) | 81 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `abbrev` | [sortDecls](declarations/sortdecls.md) | 84 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `abbrev` | [findAtSorted?](declarations/findatsorted.md) | 87 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `builtin_initialize` | [(anonymous)](declarations/builtin-initialize.md) | 91 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `def` | [exportIREntries](declarations/exportirentries.md) | 129 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `def` | [findEnvDecl](declarations/findenvdecl-source-edition-2.md) | 150 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `def` | [findInterpDecl](declarations/findinterpdecl.md) | 154 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `def` | [findInterpDeclBoxed](declarations/findinterpdeclboxed.md) | 166 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `def` | [hasCompileError](declarations/hascompileerror.md) | 181 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `def` | [findDecl](declarations/finddecl.md) | 188 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `def` | [containsDecl](declarations/containsdecl.md) | 191 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `def` | [getDecl](declarations/getdecl.md) | 194 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `def` | [findLocalDecl](declarations/findlocaldecl.md) | 198 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `def` | [getDecls](declarations/getdecls.md) | 202 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `def` | [addDecl](declarations/adddecl.md) | 205 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `def` | [addDecls](declarations/adddecls.md) | 208 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `def` | [findEnvDecl'](declarations/findenvdecl.md) | 211 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `def` | [findDecl'](declarations/finddecl-source-edition-2.md) | 216 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `def` | [containsDecl'](declarations/containsdecl-source-edition-2.md) | 219 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `def` | [getDecl'](declarations/getdecl-source-edition-2.md) | 225 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `def` | [getSorryDep](declarations/getsorrydep.md) | 230 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `def` | [getIRExtraConstNames](declarations/getirextraconstnames.md) | 237 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=2ecba2624e9ce4e23fdcaf721d585c3f0b2daff94386661e433b74a386a7eb17 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CompilerM/Variant2d4ff40b37d8ba0212d1b150185bb9aa619f2c6c90b6fffd4ddf93a13340a968.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
