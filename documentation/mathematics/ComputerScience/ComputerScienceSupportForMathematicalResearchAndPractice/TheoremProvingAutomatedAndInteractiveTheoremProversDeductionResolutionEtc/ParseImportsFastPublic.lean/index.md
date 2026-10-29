# Parse Imports Fast Public

[Complete source index](../../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**34 observed declarations and anonymous commands**, 0 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ParseImportsFast/Variant35e047a302d12b6a24ebde47d40ad3e6ef660e8f926c85717c113c2926c0b62c.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `7ef54dfcae1459216929a50bd4317934c9e37c47`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../_verification/specifications/ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ParseImportsFastPublic.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `structure` | [State](declarations/state.md) | 19 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `def` | [Parser](declarations/parser.md) | 31 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `def` | [skip](declarations/skip.md) | 33 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `instance` | [(anonymous)](declarations/instance.md) | 35 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `def` | [State.setPos](declarations/state-setpos.md) | 37 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `def` | [State.mkError](declarations/state-mkerror.md) | 40 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `def` | [State.mkEOIError](declarations/state-mkeoierror.md) | 43 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `def` | [State.clearError](declarations/state-clearerror.md) | 46 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `def` | [State.next](declarations/state-next-source-edition-2.md) | 49 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `def` | [State.next'](declarations/state-next.md) | 52 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `def` | [finishCommentBlock](declarations/finishcommentblock.md) | 55 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `def` | [takeUntil](declarations/takeuntil.md) | 81 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `def` | [takeWhile](declarations/takewhile.md) | 87 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `def` | [andthen](declarations/andthen.md) | 90 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `instance` | [(anonymous)](declarations/instance-source-edition-2.md) | 94 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `def` | [whitespace](declarations/whitespace.md) | 97 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `def` | [keywordCore](declarations/keywordcore.md) | 121 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `def` | [keyword](declarations/keyword.md) | 136 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `def` | [isIdCont](declarations/isidcont.md) | 139 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `def` | [State.pushImport](declarations/state-pushimport.md) | 152 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `def` | [isIdRestCold](declarations/isidrestcold.md) | 155 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `def` | [isIdRestFast](declarations/isidrestfast.md) | 158 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `def` | [moduleIdent](declarations/moduleident.md) | 161 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `def` | [atomic](declarations/atomic.md) | 200 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `def` | [manyImports](declarations/manyimports.md) | 205 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `def` | [setIsModule](declarations/setismodule.md) | 216 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `def` | [setMeta](declarations/setmeta.md) | 219 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `def` | [setExported](declarations/setexported.md) | 225 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `def` | [setImportAll](declarations/setimportall.md) | 231 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `def` | [main](declarations/main.md) | 237 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `def` | [parseImports'](declarations/parseimports.md) | 251 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `structure` | [PrintImportResult](declarations/printimportresult.md) | 259 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `structure` | [PrintImportsResult](declarations/printimportsresult.md) | 264 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `def` | [printImportsJson](declarations/printimportsjson.md) | 268 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=3dc189086137c3567d1832da067a2cd8479f2d53946bc99dc33802f383328e1f -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ParseImportsFast/Variant35e047a302d12b6a24ebde47d40ad3e6ef660e8f926c85717c113c2926c0b62c.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
