# Parse Namespaced Exported Env

[Complete source index](../../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**48 observed declarations and anonymous commands**, 0 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Parse/Variante37076d588c6f4b13af36d5aadbc9e2b2836240b319e0a078dbf13322df4f33d.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `c5f7aacdbddb53c005236a180c742fe4e42d4e8d`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../_verification/specifications/ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/ParseNamespacedExportedEnv.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `structure` | [ExportedEnv](declarations/exportedenv.md) | 21 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `structure` | [State](declarations/state.md) | 31 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `abbrev` | [M](declarations/m.md) | 40 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `def` | [M.run](declarations/m-run.md) | 42 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `def` | [fail](declarations/fail.md) | 46 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `def` | [getName](declarations/getname.md) | 50 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `def` | [addName](declarations/addname.md) | 55 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `def` | [getLevel](declarations/getlevel.md) | 59 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `def` | [addLevel](declarations/addlevel.md) | 64 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `def` | [getExpr](declarations/getexpr.md) | 68 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `def` | [addExpr](declarations/addexpr.md) | 73 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `def` | [getRecursorRule](declarations/getrecursorrule.md) | 77 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `def` | [addRecursorRule](declarations/addrecursorrule.md) | 82 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `def` | [addConst](declarations/addconst.md) | 86 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `def` | [parseJsonObj](declarations/parsejsonobj.md) | 96 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `def` | [parseNameStr](declarations/parsenamestr.md) | 100 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `def` | [parseNameNum](declarations/parsenamenum.md) | 106 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `def` | [parseLevelSucc](declarations/parselevelsucc.md) | 112 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `def` | [parseLevelMax](declarations/parselevelmax.md) | 116 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `def` | [parseLevelImax](declarations/parselevelimax.md) | 121 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `def` | [parseLevelParam](declarations/parselevelparam.md) | 126 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `def` | [parseExprBVar](declarations/parseexprbvar.md) | 130 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `def` | [parseExprSort](declarations/parseexprsort.md) | 134 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `def` | [parseExprConst](declarations/parseexprconst.md) | 138 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `def` | [parseExprApp](declarations/parseexprapp.md) | 150 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `def` | [parseBinderInfo](declarations/parsebinderinfo.md) | 159 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `def` | [parseExprLam](declarations/parseexprlam.md) | 167 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `def` | [parseExprForallE](declarations/parseexprforalle.md) | 181 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `def` | [parseExprLetE](declarations/parseexprlete.md) | 195 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `def` | [parseExprProj](declarations/parseexprproj.md) | 210 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `def` | [parseExprNatLit](declarations/parseexprnatlit.md) | 221 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `def` | [parseExprStrLit](declarations/parseexprstrlit.md) | 227 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `def` | [parseExprMdata](declarations/parseexprmdata.md) | 231 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `def` | [getNameList](declarations/getnamelist.md) | 240 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `def` | [parseAxiomInfo](declarations/parseaxiominfo.md) | 245 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `def` | [parseDefnInfo](declarations/parsedefninfo.md) | 257 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `def` | [parseThmInfo](declarations/parsethminfo.md) | 288 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `def` | [parseOpaqueInfo](declarations/parseopaqueinfo.md) | 303 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `def` | [parseQuotInfo](declarations/parsequotinfo.md) | 320 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `def` | [parseInductInfo](declarations/parseinductinfo.md) | 339 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `def` | [parseCtorInfo](declarations/parsectorinfo.md) | 373 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `def` | [parseRecInfo](declarations/parserecinfo.md) | 400 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `def` | [parseInductive](declarations/parseinductive.md) | 442 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `def` | [parseItem](declarations/parseitem.md) | 450 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `def` | [parseItems](declarations/parseitems.md) | 486 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `def` | [parseMdata](declarations/parsemdata.md) | 495 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `def` | [parseFile](declarations/parsefile.md) | 498 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `def` | [parseStream](declarations/parsestream.md) | 504 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=06f6a49c35905f2a4a105853c965f311587a690f1aa288754c104f5c1844e81d -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Parse/Variante37076d588c6f4b13af36d5aadbc9e2b2836240b319e0a078dbf13322df4f33d.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
