# Emit CPublic

[Complete source index](../../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**67 observed declarations and anonymous commands**, 0 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/EmitC/Variantb583be256c880a879bf723bb4c2cd87bd80d433d0539ea67d87c28a6da500216.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `849a1be3e4db322a5391a667acadecff93c67642`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../_verification/specifications/ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/EmitCPublic.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [leanMainFn](declarations/leanmainfn.md) | 27 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `def` | [Lean.Expr.toCType](declarations/lean-expr-toctype.md) | 31 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `def` | [Lean.Expr.unboxOpName](declarations/lean-expr-unboxopname.md) | 46 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `def` | [Lean.Expr.boxOpName](declarations/lean-expr-boxopname.md) | 55 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `def` | [Lean.Expr.sprojOpName](declarations/lean-expr-sprojopname.md) | 64 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `def` | [Lean.Expr.ssetOpName](declarations/lean-expr-ssetopname.md) | 74 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `def` | [Lean.Expr.closedTermReadOpName](declarations/lean-expr-closedtermreadopname.md) | 84 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `structure` | [Context](declarations/context.md) | 100 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `structure` | [State](declarations/state.md) | 122 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `abbrev` | [EmitM](declarations/emitm.md) | 128 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `def` | [getModName](declarations/getmodname.md) | 130 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `def` | [getModInitFn](declarations/getmodinitfn.md) | 132 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `def` | [getCurrFn](declarations/getcurrfn.md) | 136 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `def` | [getCurrParams](declarations/getcurrparams.md) | 138 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `def` | [getLocalDecls](declarations/getlocaldecls.md) | 140 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `def` | [getOtherModuleDecls](declarations/getothermoduledecls.md) | 142 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `class` | [EmitToString](declarations/emittostring.md) | 145 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `instance` | [(anonymous)](declarations/instance-source-edition-4.md) | 148 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `instance` | [(anonymous)](declarations/instance-source-edition-2.md) | 151 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `instance` | [(anonymous)](declarations/instance-source-edition-3.md) | 160 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `def` | [Arg.toCString](declarations/arg-tocstring.md) | 163 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `instance` | [(anonymous)](declarations/instance.md) | 168 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `def` | [emit](declarations/emit.md) | 172 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `def` | [emitLn](declarations/emitln.md) | 176 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `def` | [emitCApp1](declarations/emitcapp1.md) | 180 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `def` | [emitCApp2](declarations/emitcapp2.md) | 184 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `def` | [emitCApp3](declarations/emitcapp3.md) | 189 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `def` | [toStringArgs](declarations/tostringargs.md) | 193 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `def` | [emitArgs](declarations/emitargs.md) | 196 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `def` | [emitLns](declarations/emitlns.md) | 201 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `def` | [withEmitBlock](declarations/withemitblock.md) | 204 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `def` | [toDigit](declarations/todigit.md) | 210 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `def` | [quoteString](declarations/quotestring.md) | 213 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `def` | [throwInvalidExportName](declarations/throwinvalidexportname.md) | 234 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `def` | [toCName](declarations/tocname.md) | 237 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `def` | [emitCName](declarations/emitcname.md) | 252 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `def` | [toCInitName](declarations/tocinitname.md) | 255 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `def` | [emitCInitName](declarations/emitcinitname.md) | 270 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `def` | [emitFileHeader](declarations/emitfileheader.md) | 273 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `def` | [ctorScalarSizeExpression](declarations/ctorscalarsizeexpression.md) | 296 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `structure` | [GroundState](declarations/groundstate.md) | 304 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `abbrev` | [GroundM](declarations/groundm.md) | 307 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `def` | [emitGroundDecl](declarations/emitgrounddecl.md) | 309 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `def` | [toOnceTokenName](declarations/tooncetokenname.md) | 445 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `def` | [paramsWithoutVoid](declarations/paramswithoutvoid.md) | 449 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `def` | [paramsWithoutErased](declarations/paramswithouterased.md) | 453 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `def` | [emitFnDecls](declarations/emitfndecls.md) | 456 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `def` | [offsetExpression](declarations/offsetexpression.md) | 518 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `def` | [isTailCall](declarations/istailcall.md) | 527 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `def` | [declareVars](declarations/declarevars.md) | 533 | `BLOCKED_NATIVE_ADMISSION` |
| 51 | `def` | [emitLetDecl](declarations/emitletdecl.md) | 558 | `BLOCKED_NATIVE_ADMISSION` |
| 52 | `def` | [emitTailCall](declarations/emittailcall.md) | 725 | `BLOCKED_NATIVE_ADMISSION` |
| 53 | `def` | [emitBasicBlock](declarations/emitbasicblock.md) | 780 | `BLOCKED_NATIVE_ADMISSION` |
| 54 | `def` | [emitJoinPoints](declarations/emitjoinpoints.md) | 906 | `BLOCKED_NATIVE_ADMISSION` |
| 55 | `def` | [emitCode](declarations/emitcode.md) | 916 | `BLOCKED_NATIVE_ADMISSION` |
| 56 | `def` | [emitDecl](declarations/emitdecl.md) | 925 | `BLOCKED_NATIVE_ADMISSION` |
| 57 | `def` | [emitFns](declarations/emitfns.md) | 968 | `BLOCKED_NATIVE_ADMISSION` |
| 58 | `def` | [withErrRet](declarations/witherrret.md) | 978 | `BLOCKED_NATIVE_ADMISSION` |
| 59 | `def` | [emitMarkPersistent](declarations/emitmarkpersistent.md) | 982 | `BLOCKED_NATIVE_ADMISSION` |
| 60 | `def` | [emitDeclInit](declarations/emitdeclinit.md) | 986 | `BLOCKED_NATIVE_ADMISSION` |
| 61 | `def` | [emitInitFn](declarations/emitinitfn.md) | 1007 | `BLOCKED_NATIVE_ADMISSION` |
| 62 | `def` | [emitLegacyInitFn](declarations/emitlegacyinitfn.md) | 1037 | `BLOCKED_NATIVE_ADMISSION` |
| 63 | `def` | [emitMainFnIfNeeded](declarations/emitmainfnifneeded.md) | 1067 | `BLOCKED_NATIVE_ADMISSION` |
| 64 | `def` | [emitFileFooter](declarations/emitfilefooter.md) | 1140 | `BLOCKED_NATIVE_ADMISSION` |
| 65 | `def` | [main](declarations/main.md) | 1147 | `BLOCKED_NATIVE_ADMISSION` |
| 66 | `def` | [emitCForDecls](declarations/emitcfordecls.md) | 1160 | `BLOCKED_NATIVE_ADMISSION` |
| 67 | `def` | [emitC](declarations/emitc.md) | 1172 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=d5b54ed07051dd734c9c1d824f8d5251847a8050e51867912a1a6ffecd741346 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/EmitC/Variantb583be256c880a879bf723bb4c2cd87bd80d433d0539ea67d87c28a6da500216.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
