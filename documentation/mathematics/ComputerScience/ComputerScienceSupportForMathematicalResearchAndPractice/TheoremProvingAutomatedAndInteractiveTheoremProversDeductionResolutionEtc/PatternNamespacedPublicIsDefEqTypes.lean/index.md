# Pattern Namespaced Public Is Def Eq Types

[Complete source index](../../../../complete-source-index.md) · [Up one directory](../../complete-source-index.md) · [Full source](source.md)

**74 observed declarations and anonymous commands**, 0 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Pattern/Variant516e0d27a48f2beac4bb47b8a1f2a769cae8d26310234e8779da6de8b8598b0f.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `84d34aaf97dbd8a615cd6aa69750319ace350e45`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../_verification/specifications/ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/PatternNamespacedPublicIsDefEqTypes.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [isDefEqTypes](declarations/isdefeqtypes.md) | 62 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `def` | [mkProofInstInfoMapFor](declarations/mkproofinstinfomapfor.md) | 70 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `structure` | [Pattern](declarations/pattern.md) | 78 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `def` | [uvarPrefix](declarations/uvarprefix.md) | 97 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `def` | [Pattern.isInstance](declarations/pattern-isinstance.md) | 100 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `def` | [Pattern.isProof](declarations/pattern-isproof.md) | 105 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `def` | [isUVar](declarations/isuvar.md) | 109 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `def` | [isUVar?](declarations/isuvar-source-edition-2.md) | 113 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `def` | [preprocessDeclPattern](declarations/preprocessdeclpattern.md) | 119 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `def` | [preprocessExprPattern](declarations/preprocessexprpattern.md) | 128 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `def` | [mkCheckTypeMask](declarations/mkchecktypemask.md) | 169 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `def` | [mkPatternCore](declarations/mkpatterncore.md) | 189 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `def` | [mkPatternFromType](declarations/mkpatternfromtype.md) | 197 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `def` | [mkPatternFromDecl](declarations/mkpatternfromdecl.md) | 220 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `def` | [mkPatternFromExpr](declarations/mkpatternfromexpr.md) | 224 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `def` | [mkPatternFromTypeWithKey](declarations/mkpatternfromtypewithkey.md) | 229 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `def` | [mkPatternFromDeclWithKey](declarations/mkpatternfromdeclwithkey.md) | 252 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `def` | [mkPatternFromExprWithKey](declarations/mkpatternfromexprwithkey.md) | 261 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `def` | [mkEqPatternFromDecl](declarations/mkeqpatternfromdecl.md) | 276 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `structure` | [UnifyM.Context](declarations/unifym-context.md) | 281 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `structure` | [UnifyM.State](declarations/unifym-state.md) | 286 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `abbrev` | [UnifyM](declarations/unifym.md) | 300 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `def` | [pushPending](declarations/pushpending.md) | 302 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `def` | [pushLevelPending](declarations/pushlevelpending.md) | 305 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `def` | [pushInstPending](declarations/pushinstpending.md) | 308 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `def` | [pushCheckTypePending](declarations/pushchecktypepending.md) | 316 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `def` | [assignExprIfUnassigned](declarations/assignexprifunassigned.md) | 319 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `def` | [assignExpr](declarations/assignexpr.md) | 325 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `def` | [assignLevel](declarations/assignlevel.md) | 339 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `def` | [hasAssignedUVars](declarations/hasassigneduvars.md) | 347 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `def` | [substAssignedUVars](declarations/substassigneduvars.md) | 362 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `def` | [substAssignedUVarsAndNormalize](declarations/substassigneduvarsandnormalize.md) | 380 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `def` | [tryApproxSelfMax](declarations/tryapproxselfmax.md) | 392 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `def` | [decLevel?](declarations/declevel.md) | 407 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `def` | [hasUVar](declarations/hasuvar.md) | 419 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `def` | [tryPostponeMaxCnstr](declarations/trypostponemaxcnstr.md) | 431 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `def` | [processLevel](declarations/processlevel.md) | 440 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `def` | [processLevels](declarations/processlevels.md) | 496 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `def` | [isAssignedMVar](declarations/isassignedmvar.md) | 506 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `def` | [process](declarations/process.md) | 511 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `def` | [tryAssignLevelMVar](declarations/tryassignlevelmvar.md) | 638 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `def` | [substAssignedMVarsAndNormalize](declarations/substassignedmvarsandnormalize.md) | 644 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `def` | [isLevelDefEqS](declarations/isleveldefeqs.md) | 654 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `def` | [isLevelDefEqListS](declarations/isleveldefeqlists.md) | 689 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `structure` | [DefEqM.Context](declarations/defeqm-context.md) | 699 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `abbrev` | [DefEqM](declarations/defeqm.md) | 721 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `opaque` | [isDefEqMain](declarations/isdefeqmain.md) | 730 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `def` | [isDefEqBindingS](declarations/isdefeqbindings.md) | 737 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `def` | [isAssignableMVar](declarations/isassignablemvar.md) | 772 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `def` | [isMillerPatternArgs](declarations/ismillerpatternargs.md) | 798 | `BLOCKED_NATIVE_ADMISSION` |
| 51 | `def` | [mayAssign](declarations/mayassign.md) | 824 | `BLOCKED_NATIVE_ADMISSION` |
| 52 | `def` | [whenUndefDo](declarations/whenundefdo.md) | 833 | `BLOCKED_NATIVE_ADMISSION` |
| 53 | `def` | [tryAssignMillerPattern](declarations/tryassignmillerpattern.md) | 853 | `BLOCKED_NATIVE_ADMISSION` |
| 54 | `def` | [isDefEqAppDefault](declarations/isdefeqappdefault.md) | 872 | `BLOCKED_NATIVE_ADMISSION` |
| 55 | `def` | [tryAssignUnassigned](declarations/tryassignunassigned.md) | 884 | `BLOCKED_NATIVE_ADMISSION` |
| 56 | `def` | [isDefEqAppWithInfo](declarations/isdefeqappwithinfo.md) | 904 | `BLOCKED_NATIVE_ADMISSION` |
| 57 | `def` | [isDefEqApp](declarations/isdefeqapp.md) | 928 | `BLOCKED_NATIVE_ADMISSION` |
| 58 | `def` | [isDefEqMainImpl](declarations/isdefeqmainimpl.md) | 940 | `BLOCKED_NATIVE_ADMISSION` |
| 59 | `abbrev` | [DefEqM.run](declarations/defeqm-run.md) | 1005 | `BLOCKED_NATIVE_ADMISSION` |
| 60 | `def` | [isDefEqS](declarations/isdefeqs.md) | 1015 | `BLOCKED_NATIVE_ADMISSION` |
| 61 | `def` | [noPending](declarations/nopending.md) | 1020 | `BLOCKED_NATIVE_ADMISSION` |
| 62 | `def` | [instantiateLevelParamsS](declarations/instantiatelevelparamss.md) | 1024 | `BLOCKED_NATIVE_ADMISSION` |
| 63 | `inductive` | [MkPreResultResult](declarations/mkpreresultresult.md) | 1035 | `BLOCKED_NATIVE_ADMISSION` |
| 64 | `def` | [mkPreResult](declarations/mkpreresult.md) | 1044 | `BLOCKED_NATIVE_ADMISSION` |
| 65 | `def` | [processPendingLevel](declarations/processpendinglevel.md) | 1087 | `BLOCKED_NATIVE_ADMISSION` |
| 66 | `def` | [processPendingInst](declarations/processpendinginst.md) | 1098 | `BLOCKED_NATIVE_ADMISSION` |
| 67 | `def` | [processPendingExpr](declarations/processpendingexpr.md) | 1111 | `BLOCKED_NATIVE_ADMISSION` |
| 68 | `def` | [processPending](declarations/processpending.md) | 1130 | `BLOCKED_NATIVE_ADMISSION` |
| 69 | `abbrev` | [UnifyM.run](declarations/unifym-run.md) | 1136 | `BLOCKED_NATIVE_ADMISSION` |
| 70 | `structure` | [MatchUnifyResult](declarations/matchunifyresult.md) | 1141 | `BLOCKED_NATIVE_ADMISSION` |
| 71 | `def` | [mkResult](declarations/mkresult.md) | 1152 | `BLOCKED_NATIVE_ADMISSION` |
| 72 | `def` | [main](declarations/main.md) | 1156 | `BLOCKED_NATIVE_ADMISSION` |
| 73 | `def` | [Pattern.match?](declarations/pattern-match.md) | 1183 | `BLOCKED_NATIVE_ADMISSION` |
| 74 | `def` | [Pattern.unify?](declarations/pattern-unify.md) | 1201 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=1d07dfd11c21b7d621898467de77207350007f745b17f086ae20c0b83d17e1c3 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Pattern/Variant516e0d27a48f2beac4bb47b8a1f2a769cae8d26310234e8779da6de8b8598b0f.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
