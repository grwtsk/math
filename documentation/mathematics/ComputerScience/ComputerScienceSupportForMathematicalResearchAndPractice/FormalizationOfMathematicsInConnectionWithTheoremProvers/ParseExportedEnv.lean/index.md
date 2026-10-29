# Parse Exported Env

[Complete source index](../../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**48 observed declarations and anonymous commands**, 0 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Parse/Variant1f943b5cc776eece6d528937b976509c8bd57d10bc69a39b1c119bfb6d664286.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `1eedbabc47e0db3df6405063913380ed0fed46ac`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../_verification/specifications/ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/ParseExportedEnv.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `structure` | [ExportedEnv](declarations/exportedenv.md) | 13 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `structure` | [State](declarations/state.md) | 23 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `abbrev` | [M](declarations/m.md) | 32 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `def` | [M.run](declarations/m-run.md) | 34 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `def` | [fail](declarations/fail.md) | 38 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `def` | [getName](declarations/getname.md) | 42 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `def` | [addName](declarations/addname.md) | 47 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `def` | [getLevel](declarations/getlevel.md) | 51 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `def` | [addLevel](declarations/addlevel.md) | 56 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `def` | [getExpr](declarations/getexpr.md) | 60 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `def` | [addExpr](declarations/addexpr.md) | 65 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `def` | [getRecursorRule](declarations/getrecursorrule.md) | 69 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `def` | [addRecursorRule](declarations/addrecursorrule.md) | 74 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `def` | [addConst](declarations/addconst.md) | 78 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `def` | [parseJsonObj](declarations/parsejsonobj.md) | 88 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `def` | [parseNameStr](declarations/parsenamestr.md) | 92 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `def` | [parseNameNum](declarations/parsenamenum.md) | 98 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `def` | [parseLevelSucc](declarations/parselevelsucc.md) | 104 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `def` | [parseLevelMax](declarations/parselevelmax.md) | 108 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `def` | [parseLevelImax](declarations/parselevelimax.md) | 113 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `def` | [parseLevelParam](declarations/parselevelparam.md) | 118 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `def` | [parseExprBVar](declarations/parseexprbvar.md) | 122 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `def` | [parseExprSort](declarations/parseexprsort.md) | 126 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `def` | [parseExprConst](declarations/parseexprconst.md) | 130 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `def` | [parseExprApp](declarations/parseexprapp.md) | 142 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `def` | [parseBinderInfo](declarations/parsebinderinfo.md) | 151 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `def` | [parseExprLam](declarations/parseexprlam.md) | 159 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `def` | [parseExprForallE](declarations/parseexprforalle.md) | 173 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `def` | [parseExprLetE](declarations/parseexprlete.md) | 187 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `def` | [parseExprProj](declarations/parseexprproj.md) | 202 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `def` | [parseExprNatLit](declarations/parseexprnatlit.md) | 213 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `def` | [parseExprStrLit](declarations/parseexprstrlit.md) | 219 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `def` | [parseExprMdata](declarations/parseexprmdata.md) | 223 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `def` | [getNameList](declarations/getnamelist.md) | 232 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `def` | [parseAxiomInfo](declarations/parseaxiominfo.md) | 237 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `def` | [parseDefnInfo](declarations/parsedefninfo.md) | 249 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `def` | [parseThmInfo](declarations/parsethminfo.md) | 280 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `def` | [parseOpaqueInfo](declarations/parseopaqueinfo.md) | 295 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `def` | [parseQuotInfo](declarations/parsequotinfo.md) | 312 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `def` | [parseInductInfo](declarations/parseinductinfo.md) | 331 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `def` | [parseCtorInfo](declarations/parsectorinfo.md) | 365 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `def` | [parseRecInfo](declarations/parserecinfo.md) | 392 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `def` | [parseInductive](declarations/parseinductive.md) | 434 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `def` | [parseItem](declarations/parseitem.md) | 442 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `def` | [parseItems](declarations/parseitems.md) | 478 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `def` | [parseMdata](declarations/parsemdata.md) | 487 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `def` | [parseFile](declarations/parsefile.md) | 490 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `def` | [parseStream](declarations/parsestream.md) | 496 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=cfd079ebddf5c1ea2e6fab6a6d3749ef4dc507a07b59c4b3e47672a7d7483aff -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Parse/Variant1f943b5cc776eece6d528937b976509c8bd57d10bc69a39b1c119bfb6d664286.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
