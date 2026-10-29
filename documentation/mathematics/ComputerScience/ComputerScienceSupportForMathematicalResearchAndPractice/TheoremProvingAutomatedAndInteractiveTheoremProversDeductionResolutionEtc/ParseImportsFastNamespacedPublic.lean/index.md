# Parse Imports Fast Namespaced Public

[Complete source index](../../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**34 observed declarations and anonymous commands**, 0 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ParseImportsFast/Variante337c6887e3f89495acfbec4c07f221cf536360b8e2b48c3e38cd6aa7bd277d0.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `0d3209370b98042e145daeaa0ca8887c2b6b344e`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../_verification/specifications/ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ParseImportsFastNamespacedPublic.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `structure` | [State](declarations/state.md) | 27 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `def` | [Parser](declarations/parser.md) | 39 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `def` | [skip](declarations/skip.md) | 41 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `instance` | [(anonymous)](declarations/instance-source-edition-2.md) | 43 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `def` | [State.setPos](declarations/state-setpos.md) | 45 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `def` | [State.mkError](declarations/state-mkerror.md) | 48 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `def` | [State.mkEOIError](declarations/state-mkeoierror.md) | 51 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `def` | [State.clearError](declarations/state-clearerror.md) | 54 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `def` | [State.next](declarations/state-next.md) | 57 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `def` | [State.next'](declarations/state-next-source-edition-2.md) | 60 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `def` | [finishCommentBlock](declarations/finishcommentblock.md) | 63 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `def` | [takeUntil](declarations/takeuntil.md) | 89 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `def` | [takeWhile](declarations/takewhile.md) | 95 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `def` | [andthen](declarations/andthen.md) | 98 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `instance` | [(anonymous)](declarations/instance.md) | 102 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `def` | [whitespace](declarations/whitespace.md) | 105 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `def` | [keywordCore](declarations/keywordcore.md) | 129 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `def` | [keyword](declarations/keyword.md) | 144 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `def` | [isIdCont](declarations/isidcont.md) | 147 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `def` | [State.pushImport](declarations/state-pushimport.md) | 160 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `def` | [isIdRestCold](declarations/isidrestcold.md) | 163 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `def` | [isIdRestFast](declarations/isidrestfast.md) | 166 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `def` | [moduleIdent](declarations/moduleident.md) | 169 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `def` | [atomic](declarations/atomic.md) | 208 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `def` | [manyImports](declarations/manyimports.md) | 213 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `def` | [setIsModule](declarations/setismodule.md) | 224 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `def` | [setMeta](declarations/setmeta.md) | 227 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `def` | [setExported](declarations/setexported.md) | 233 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `def` | [setImportAll](declarations/setimportall.md) | 239 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `def` | [main](declarations/main.md) | 245 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `def` | [parseImports'](declarations/parseimports.md) | 259 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `structure` | [PrintImportResult](declarations/printimportresult.md) | 267 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `structure` | [PrintImportsResult](declarations/printimportsresult.md) | 272 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `def` | [printImportsJson](declarations/printimportsjson.md) | 276 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=ee2059ee063972c00f38eeae6235846cec842f1d9420f84ccc587cd57ef9988d -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ParseImportsFast/Variante337c6887e3f89495acfbec4c07f221cf536360b8e2b48c3e38cd6aa7bd277d0.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
