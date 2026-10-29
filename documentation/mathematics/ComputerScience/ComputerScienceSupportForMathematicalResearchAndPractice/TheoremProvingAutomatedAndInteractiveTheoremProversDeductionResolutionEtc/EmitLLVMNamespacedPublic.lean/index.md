# Emit LLVMNamespaced Public

[Complete source index](../../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**140 observed declarations and anonymous commands**, 0 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/EmitLLVM/Varianta4a6d1715be541b4a5dc797f1854aa5d5dbbef30db91a7508611d57b4de30af2.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `a6be772bc7b7976be313bb5cf064377fd7140de3`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../_verification/specifications/ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/EmitLLVMNamespacedPublic.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [leanMainFn](declarations/leanmainfn.md) | 46 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `def` | [size_tType](declarations/size-ttype.md) | 50 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `def` | [unsignedType](declarations/unsignedtype.md) | 54 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `def` | [getOrAddFunction](declarations/getoraddfunction.md) | 58 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `def` | [getOrAddGlobal](declarations/getoraddglobal.md) | 72 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `structure` | [Context](declarations/context.md) | 81 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `structure` | [State](declarations/state.md) | 89 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `abbrev` | [Error](declarations/error.md) | 93 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `abbrev` | [M](declarations/m.md) | 95 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `instance` | [(anonymous)](declarations/instance.md) | 98 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `def` | [addVarToState](declarations/addvartostate.md) | 101 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `def` | [addJpToState](declarations/addjptostate.md) | 104 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `def` | [emitJp](declarations/emitjp.md) | 107 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `def` | [getLLVMModule](declarations/getllvmmodule.md) | 113 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `def` | [getEnv](declarations/getenv.md) | 115 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `def` | [getModName](declarations/getmodname.md) | 117 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `def` | [getDecl](declarations/getdecl.md) | 119 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `def` | [constInt8](declarations/constint8.md) | 125 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `def` | [constInt64](declarations/constint64.md) | 128 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `def` | [constIntSizeT](declarations/constintsizet.md) | 131 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `def` | [constIntUnsigned](declarations/constintunsigned.md) | 134 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `def` | [getOrCreateFunctionPrototype](declarations/getorcreatefunctionprototype.md) | 137 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `def` | [callLeanBox](declarations/callleanbox.md) | 141 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `def` | [callLeanMarkPersistentFn](declarations/callleanmarkpersistentfn.md) | 150 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `inductive` | [RefcountKind](declarations/refcountkind.md) | 159 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `instance` | [(anonymous)](declarations/instance-source-edition-2.md) | 162 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `def` | [callLeanRefcountFn](declarations/callleanrefcountfn.md) | 167 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `def` | [callLeanDecRef](declarations/callleandecref.md) | 185 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `def` | [callLeanUnsignedToNatFn](declarations/callleanunsignedtonatfn.md) | 193 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `def` | [callLeanMkStringUncheckedFn](declarations/callleanmkstringuncheckedfn.md) | 203 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `def` | [callLeanMkString](declarations/callleanmkstring.md) | 212 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `def` | [callLeanCStrToNatFn](declarations/callleancstrtonatfn.md) | 220 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `def` | [callLeanIOMkWorld](declarations/callleaniomkworld.md) | 230 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `def` | [callLeanIOResultIsError](declarations/callleanioresultiserror.md) | 238 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `def` | [callLeanAllocCtor](declarations/callleanallocctor.md) | 247 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `def` | [callLeanCtorSet](declarations/callleanctorset.md) | 261 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `def` | [callLeanIOResultMKOk](declarations/callleanioresultmkok.md) | 272 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `def` | [callLeanAllocClosureFn](declarations/callleanallocclosurefn.md) | 282 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `def` | [callLeanClosureSetFn](declarations/callleanclosuresetfn.md) | 291 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `def` | [callLeanObjTag](declarations/callleanobjtag.md) | 300 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `def` | [callLeanIOResultGetValue](declarations/callleanioresultgetvalue.md) | 310 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `def` | [callLeanCtorRelease](declarations/callleanctorrelease.md) | 319 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `def` | [callLeanCtorSetTag](declarations/callleanctorsettag.md) | 328 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `def` | [toLLVMType](declarations/tollvmtype.md) | 337 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `def` | [throwInvalidExportName](declarations/throwinvalidexportname.md) | 355 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `def` | [toCName](declarations/tocname.md) | 358 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `def` | [toCInitName](declarations/tocinitname.md) | 365 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `inductive` | [ShouldForwardControlFlow](declarations/shouldforwardcontrolflow.md) | 378 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `def` | [builderGetInsertionFn](declarations/buildergetinsertionfn.md) | 382 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `def` | [builderAppendBasicBlock](declarations/builderappendbasicblock.md) | 386 | `BLOCKED_NATIVE_ADMISSION` |
| 51 | `def` | [buildPrologueAlloca](declarations/buildprologuealloca.md) | 398 | `BLOCKED_NATIVE_ADMISSION` |
| 52 | `def` | [buildWhile_](declarations/buildwhile.md) | 415 | `BLOCKED_NATIVE_ADMISSION` |
| 53 | `def` | [buildIfThen_](declarations/buildifthen.md) | 446 | `BLOCKED_NATIVE_ADMISSION` |
| 54 | `def` | [buildIfThenElse_](declarations/buildifthenelse.md) | 470 | `BLOCKED_NATIVE_ADMISSION` |
| 55 | `def` | [buildLeanBoolTrue?](declarations/buildleanbooltrue.md) | 494 | `BLOCKED_NATIVE_ADMISSION` |
| 56 | `def` | [emitFnDeclAux](declarations/emitfndeclaux.md) | 498 | `BLOCKED_NATIVE_ADMISSION` |
| 57 | `def` | [emitFnDecl](declarations/emitfndecl.md) | 537 | `BLOCKED_NATIVE_ADMISSION` |
| 58 | `def` | [emitExternDeclAux](declarations/emitexterndeclaux.md) | 541 | `BLOCKED_NATIVE_ADMISSION` |
| 59 | `def` | [emitFnDecls](declarations/emitfndecls.md) | 546 | `BLOCKED_NATIVE_ADMISSION` |
| 60 | `def` | [emitLhsSlot_](declarations/emitlhsslot.md) | 557 | `BLOCKED_NATIVE_ADMISSION` |
| 61 | `def` | [emitLhsVal](declarations/emitlhsval.md) | 563 | `BLOCKED_NATIVE_ADMISSION` |
| 62 | `def` | [emitLhsSlotStore](declarations/emitlhsslotstore.md) | 568 | `BLOCKED_NATIVE_ADMISSION` |
| 63 | `def` | [emitArgSlot_](declarations/emitargslot.md) | 573 | `BLOCKED_NATIVE_ADMISSION` |
| 64 | `def` | [emitArgVal](declarations/emitargval.md) | 584 | `BLOCKED_NATIVE_ADMISSION` |
| 65 | `def` | [emitAllocCtor](declarations/emitallocctor.md) | 590 | `BLOCKED_NATIVE_ADMISSION` |
| 66 | `def` | [emitCtorSetArgs](declarations/emitctorsetargs.md) | 597 | `BLOCKED_NATIVE_ADMISSION` |
| 67 | `def` | [emitCtor](declarations/emitctor.md) | 607 | `BLOCKED_NATIVE_ADMISSION` |
| 68 | `def` | [emitInc](declarations/emitinc.md) | 618 | `BLOCKED_NATIVE_ADMISSION` |
| 69 | `def` | [emitDec](declarations/emitdec.md) | 627 | `BLOCKED_NATIVE_ADMISSION` |
| 70 | `def` | [emitNumLit](declarations/emitnumlit.md) | 634 | `BLOCKED_NATIVE_ADMISSION` |
| 71 | `def` | [toHexDigit](declarations/tohexdigit.md) | 644 | `BLOCKED_NATIVE_ADMISSION` |
| 72 | `def` | [quoteString](declarations/quotestring.md) | 648 | `BLOCKED_NATIVE_ADMISSION` |
| 73 | `def` | [emitSimpleExternalCall](declarations/emitsimpleexternalcall.md) | 664 | `BLOCKED_NATIVE_ADMISSION` |
| 74 | `def` | [emitExternCall](declarations/emitexterncall.md) | 683 | `BLOCKED_NATIVE_ADMISSION` |
| 75 | `def` | [getFunIdTy](declarations/getfunidty.md) | 696 | `BLOCKED_NATIVE_ADMISSION` |
| 76 | `def` | [getOrAddFunIdValue](declarations/getoraddfunidvalue.md) | 709 | `BLOCKED_NATIVE_ADMISSION` |
| 77 | `def` | [emitPartialApp](declarations/emitpartialapp.md) | 721 | `BLOCKED_NATIVE_ADMISSION` |
| 78 | `def` | [emitApp](declarations/emitapp.md) | 735 | `BLOCKED_NATIVE_ADMISSION` |
| 79 | `def` | [emitFullApp](declarations/emitfullapp.md) | 763 | `BLOCKED_NATIVE_ADMISSION` |
| 80 | `def` | [emitLit](declarations/emitlit.md) | 785 | `BLOCKED_NATIVE_ADMISSION` |
| 81 | `def` | [callLeanCtorGet](declarations/callleanctorget.md) | 805 | `BLOCKED_NATIVE_ADMISSION` |
| 82 | `def` | [emitProj](declarations/emitproj.md) | 815 | `BLOCKED_NATIVE_ADMISSION` |
| 83 | `def` | [callLeanCtorGetUsize](declarations/callleanctorgetusize.md) | 820 | `BLOCKED_NATIVE_ADMISSION` |
| 84 | `def` | [emitUProj](declarations/emituproj.md) | 829 | `BLOCKED_NATIVE_ADMISSION` |
| 85 | `def` | [emitOffset](declarations/emitoffset.md) | 834 | `BLOCKED_NATIVE_ADMISSION` |
| 86 | `def` | [emitSProj](declarations/emitsproj.md) | 841 | `BLOCKED_NATIVE_ADMISSION` |
| 87 | `def` | [callLeanIsExclusive](declarations/callleanisexclusive.md) | 860 | `BLOCKED_NATIVE_ADMISSION` |
| 88 | `def` | [callLeanIsScalar](declarations/callleanisscalar.md) | 870 | `BLOCKED_NATIVE_ADMISSION` |
| 89 | `def` | [emitIsShared](declarations/emitisshared.md) | 879 | `BLOCKED_NATIVE_ADMISSION` |
| 90 | `def` | [emitBox](declarations/emitbox.md) | 887 | `BLOCKED_NATIVE_ADMISSION` |
| 91 | `def` | [IRType.isIntegerType](declarations/irtype-isintegertype.md) | 907 | `BLOCKED_NATIVE_ADMISSION` |
| 92 | `def` | [callUnboxForType](declarations/callunboxfortype.md) | 916 | `BLOCKED_NATIVE_ADMISSION` |
| 93 | `def` | [emitUnbox](declarations/emitunbox.md) | 935 | `BLOCKED_NATIVE_ADMISSION` |
| 94 | `def` | [emitReset](declarations/emitreset.md) | 946 | `BLOCKED_NATIVE_ADMISSION` |
| 95 | `def` | [emitReuse](declarations/emitreuse.md) | 966 | `BLOCKED_NATIVE_ADMISSION` |
| 96 | `def` | [emitVDecl](declarations/emitvdecl.md) | 987 | `BLOCKED_NATIVE_ADMISSION` |
| 97 | `def` | [declareVar](declarations/declarevar.md) | 1003 | `BLOCKED_NATIVE_ADMISSION` |
| 98 | `def` | [declareVars](declarations/declarevars.md) | 1008 | `BLOCKED_NATIVE_ADMISSION` |
| 99 | `def` | [emitTag](declarations/emittag.md) | 1019 | `BLOCKED_NATIVE_ADMISSION` |
| 100 | `def` | [emitSet](declarations/emitset.md) | 1028 | `BLOCKED_NATIVE_ADMISSION` |
| 101 | `def` | [emitUSet](declarations/emituset.md) | 1036 | `BLOCKED_NATIVE_ADMISSION` |
| 102 | `def` | [emitTailCall](declarations/emittailcall.md) | 1044 | `BLOCKED_NATIVE_ADMISSION` |
| 103 | `def` | [emitJmp](declarations/emitjmp.md) | 1058 | `BLOCKED_NATIVE_ADMISSION` |
| 104 | `def` | [emitSSet](declarations/emitsset.md) | 1069 | `BLOCKED_NATIVE_ADMISSION` |
| 105 | `def` | [emitDel](declarations/emitdel.md) | 1088 | `BLOCKED_NATIVE_ADMISSION` |
| 106 | `def` | [emitSetTag](declarations/emitsettag.md) | 1096 | `BLOCKED_NATIVE_ADMISSION` |
| 107 | `def` | [ensureHasDefault'](declarations/ensurehasdefault.md) | 1104 | `BLOCKED_NATIVE_ADMISSION` |
| 108 | `def` | [emitCase](declarations/emitcase.md) | 1112 | `BLOCKED_NATIVE_ADMISSION` |
| 109 | `def` | [emitJDecl](declarations/emitjdecl.md) | 1138 | `BLOCKED_NATIVE_ADMISSION` |
| 110 | `def` | [emitUnreachable](declarations/emitunreachable.md) | 1153 | `BLOCKED_NATIVE_ADMISSION` |
| 111 | `def` | [emitBlock](declarations/emitblock.md) | 1161 | `BLOCKED_NATIVE_ADMISSION` |
| 112 | `def` | [emitFnBody](declarations/emitfnbody.md) | 1193 | `BLOCKED_NATIVE_ADMISSION` |
| 113 | `def` | [emitFnArgs](declarations/emitfnargs.md) | 1199 | `BLOCKED_NATIVE_ADMISSION` |
| 114 | `def` | [emitDeclAux](declarations/emitdeclaux.md) | 1224 | `BLOCKED_NATIVE_ADMISSION` |
| 115 | `def` | [emitDecl](declarations/emitdecl.md) | 1260 | `BLOCKED_NATIVE_ADMISSION` |
| 116 | `def` | [emitFns](declarations/emitfns.md) | 1268 | `BLOCKED_NATIVE_ADMISSION` |
| 117 | `def` | [callIODeclInitFn](declarations/calliodeclinitfn.md) | 1273 | `BLOCKED_NATIVE_ADMISSION` |
| 118 | `def` | [callPureDeclInitFn](declarations/callpuredeclinitfn.md) | 1282 | `BLOCKED_NATIVE_ADMISSION` |
| 119 | `def` | [emitDeclInit](declarations/emitdeclinit.md) | 1290 | `BLOCKED_NATIVE_ADMISSION` |
| 120 | `def` | [callModInitFn](declarations/callmodinitfn.md) | 1346 | `BLOCKED_NATIVE_ADMISSION` |
| 121 | `def` | [emitInitFn](declarations/emitinitfn.md) | 1356 | `BLOCKED_NATIVE_ADMISSION` |
| 122 | `def` | [callLeanInitialize](declarations/callleaninitialize.md) | 1397 | `BLOCKED_NATIVE_ADMISSION` |
| 123 | `def` | [callLeanSetupLibUV](declarations/callleansetuplibuv.md) | 1405 | `BLOCKED_NATIVE_ADMISSION` |
| 124 | `def` | [callLeanInitializeRuntimeModule](declarations/callleaninitializeruntimemodule.md) | 1414 | `BLOCKED_NATIVE_ADMISSION` |
| 125 | `def` | [callLeanSetPanicMessages](declarations/callleansetpanicmessages.md) | 1422 | `BLOCKED_NATIVE_ADMISSION` |
| 126 | `def` | [callLeanIOMarkEndInitialization](declarations/callleaniomarkendinitialization.md) | 1431 | `BLOCKED_NATIVE_ADMISSION` |
| 127 | `def` | [callLeanIOResultIsOk](declarations/callleanioresultisok.md) | 1439 | `BLOCKED_NATIVE_ADMISSION` |
| 128 | `def` | [callLeanInitTaskManager](declarations/callleaninittaskmanager.md) | 1448 | `BLOCKED_NATIVE_ADMISSION` |
| 129 | `def` | [callLeanFinalizeTaskManager](declarations/callleanfinalizetaskmanager.md) | 1456 | `BLOCKED_NATIVE_ADMISSION` |
| 130 | `def` | [callLeanUnboxUint32](declarations/callleanunboxuint32.md) | 1464 | `BLOCKED_NATIVE_ADMISSION` |
| 131 | `def` | [callLeanIOResultShowError](declarations/callleanioresultshowerror.md) | 1473 | `BLOCKED_NATIVE_ADMISSION` |
| 132 | `def` | [callLeanMainFn](declarations/callleanmainfn.md) | 1482 | `BLOCKED_NATIVE_ADMISSION` |
| 133 | `def` | [emitMainFn](declarations/emitmainfn.md) | 1496 | `BLOCKED_NATIVE_ADMISSION` |
| 134 | `def` | [hasMainFn](declarations/hasmainfn.md) | 1611 | `BLOCKED_NATIVE_ADMISSION` |
| 135 | `def` | [emitMainFnIfNeeded](declarations/emitmainfnifneeded.md) | 1616 | `BLOCKED_NATIVE_ADMISSION` |
| 136 | `def` | [main](declarations/main.md) | 1619 | `BLOCKED_NATIVE_ADMISSION` |
| 137 | `def` | [getLeanHBcPath](declarations/getleanhbcpath.md) | 1627 | `BLOCKED_NATIVE_ADMISSION` |
| 138 | `def` | [getModuleGlobals](declarations/getmoduleglobals.md) | 1631 | `BLOCKED_NATIVE_ADMISSION` |
| 139 | `def` | [getModuleFunctions](declarations/getmodulefunctions.md) | 1638 | `BLOCKED_NATIVE_ADMISSION` |
| 140 | `def` | [emitLLVM](declarations/emitllvm.md) | 1648 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=163ccb97055c87f97eebc262adb53e9c3445075b3862f80afd806c4b33561b2d -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/EmitLLVM/Varianta4a6d1715be541b4a5dc797f1854aa5d5dbbef30db91a7508611d57b4de30af2.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
