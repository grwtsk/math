# Sym MPublic

[Complete source index](../../../../complete-source-index.md) · [Up one directory](../../../complete-source-index.md) · [Full source](source.md)

**63 observed declarations and anonymous commands**, 0 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SymM/Variantfe4059a782b238e638fd7d752a20218a675bfb9623ac9351df146d3ae79f1f71.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `fbc26446cc9617edfc7915675ce36a1d6c468b30`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../_verification/specifications/ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/SymMPublic.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `builtin_initialize` | [(anonymous)](declarations/builtin-initialize.md) | 21 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `opaque` | [SymExtensionStateSpec](declarations/symextensionstatespec.md) | 32 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `def` | [SymExtensionState](declarations/symextensionstate.md) | 33 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `instance` | [(anonymous)](declarations/instance-source-edition-2.md) | 34 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `structure` | [SymExtension](declarations/symextension.md) | 40 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `builtin_initialize` | [(anonymous)](declarations/builtin-initialize-source-edition-2.md) | 45 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `def` | [registerSymExtension](declarations/registersymextension.md) | 51 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `def` | [SymExtensions.mkInitialStates](declarations/symextensions-mkinitialstates.md) | 61 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `structure` | [ProofInstArgInfo](declarations/proofinstarginfo.md) | 72 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `structure` | [ProofInstInfo](declarations/proofinstinfo.md) | 84 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `inductive` | [CongrInfo](declarations/congrinfo.md) | 93 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `structure` | [SharedExprs](declarations/sharedexprs.md) | 133 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `structure` | [Config](declarations/config.md) | 143 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `structure` | [Context](declarations/context.md) | 162 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `structure` | [Canon.State](declarations/canon-state.md) | 166 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `structure` | [State](declarations/state.md) | 173 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `abbrev` | [SymM](declarations/symm.md) | 229 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `def` | [unfoldReducibleStep](declarations/unfoldreduciblestep.md) | 235 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `def` | [isUnfoldReducibleTarget](declarations/isunfoldreducibletarget.md) | 241 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `def` | [unfoldReducible](declarations/unfoldreducible.md) | 253 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `def` | [foldProjs](declarations/foldprojs.md) | 262 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `def` | [mkSharedExprs](declarations/mksharedexprs.md) | 290 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `def` | [SymM.run](declarations/symm-run.md) | 300 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `def` | [getSharedExprs](declarations/getsharedexprs.md) | 310 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `def` | [getTrueExpr](declarations/gettrueexpr.md) | 314 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `def` | [isTrueExpr](declarations/istrueexpr.md) | 316 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `def` | [getFalseExpr](declarations/getfalseexpr.md) | 318 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `def` | [isFalseExpr](declarations/isfalseexpr.md) | 320 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `def` | [getBoolTrueExpr](declarations/getbooltrueexpr.md) | 322 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `def` | [isBoolTrueExpr](declarations/isbooltrueexpr.md) | 324 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `def` | [getBoolFalseExpr](declarations/getboolfalseexpr.md) | 326 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `def` | [isBoolFalseExpr](declarations/isboolfalseexpr.md) | 328 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `def` | [getNatZeroExpr](declarations/getnatzeroexpr.md) | 330 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `def` | [getOrderingEqExpr](declarations/getorderingeqexpr.md) | 332 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `def` | [getIntExpr](declarations/getintexpr.md) | 334 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `def` | [runShareCommonM](declarations/runsharecommonm.md) | 342 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `def` | [withoutFoldProjsCheck](declarations/withoutfoldprojscheck.md) | 354 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `def` | [withoutShareCommonChecks](declarations/withoutsharecommonchecks.md) | 358 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `def` | [checkedShareCtx](declarations/checkedsharectx.md) | 363 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `def` | [repairShareViolation](declarations/repairshareviolation.md) | 377 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `def` | [shareCommonWithoutChecks](declarations/sharecommonwithoutchecks.md) | 393 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `def` | [repairAndShare](declarations/repairandshare.md) | 406 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `def` | [shareCommon](declarations/sharecommon.md) | 426 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `def` | [shareCommonInc](declarations/sharecommoninc.md) | 449 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `abbrev` | [share](declarations/share.md) | 459 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `def` | [isDebugEnabled](declarations/isdebugenabled.md) | 463 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `def` | [getConfig](declarations/getconfig.md) | 466 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `def` | [reportIssue](declarations/reportissue.md) | 470 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `def` | [reportIssueIfVerbose](declarations/reportissueifverbose.md) | 476 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `def` | [expandReportIssueMacro](declarations/expandreportissuemacro.md) | 480 | `BLOCKED_NATIVE_ADMISSION` |
| 51 | `macro` | [(anonymous)](declarations/macro-source-edition-2.md) | 485 | `BLOCKED_NATIVE_ADMISSION` |
| 52 | `def` | [reportDbgIssue](declarations/reportdbgissue.md) | 489 | `BLOCKED_NATIVE_ADMISSION` |
| 53 | `def` | [expandReportDbgIssueMacro](declarations/expandreportdbgissuemacro.md) | 494 | `BLOCKED_NATIVE_ADMISSION` |
| 54 | `macro` | [(anonymous)](declarations/macro.md) | 499 | `BLOCKED_NATIVE_ADMISSION` |
| 55 | `def` | [getIssues](declarations/getissues.md) | 503 | `BLOCKED_NATIVE_ADMISSION` |
| 56 | `def` | [withNewIssueContext](declarations/withnewissuecontext.md) | 510 | `BLOCKED_NATIVE_ADMISSION` |
| 57 | `def` | [isDefEqI](declarations/isdefeqi.md) | 516 | `BLOCKED_NATIVE_ADMISSION` |
| 58 | `instance` | [(anonymous)](declarations/instance.md) | 524 | `BLOCKED_NATIVE_ADMISSION` |
| 59 | `def` | [SymExtension.getStateCoreImpl](declarations/symextension-getstatecoreimpl.md) | 529 | `BLOCKED_NATIVE_ADMISSION` |
| 60 | `opaque` | [SymExtension.getStateCore](declarations/symextension-getstatecore.md) | 533 | `BLOCKED_NATIVE_ADMISSION` |
| 61 | `def` | [SymExtension.getState](declarations/symextension-getstate.md) | 535 | `BLOCKED_NATIVE_ADMISSION` |
| 62 | `def` | [SymExtension.modifyStateImpl](declarations/symextension-modifystateimpl.md) | 538 | `BLOCKED_NATIVE_ADMISSION` |
| 63 | `opaque` | [SymExtension.modifyState](declarations/symextension-modifystate.md) | 544 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=4700da5f61000389b0088daf2f581eb838e372e3532750215277bc5036f8ae18 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SymM/Variantfe4059a782b238e638fd7d752a20218a675bfb9623ac9351df146d3ae79f1f71.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
