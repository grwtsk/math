# Emit LLVMPublic

[Complete source index](../../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**140 observed declarations and anonymous commands**, 0 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/EmitLLVM/Variante03ec8797d19bde650e42ea5a1e3897d219d84647097df07eb24ff7755cf046b.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `1586d712fb94be305496c50b2447fd03deda13fd`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../_verification/specifications/ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/EmitLLVMPublic.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [leanMainFn](declarations/leanmainfn.md) | 38 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `def` | [size_tType](declarations/size-ttype.md) | 42 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `def` | [unsignedType](declarations/unsignedtype.md) | 46 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `def` | [getOrAddFunction](declarations/getoraddfunction.md) | 50 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `def` | [getOrAddGlobal](declarations/getoraddglobal.md) | 64 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `structure` | [Context](declarations/context.md) | 73 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `structure` | [State](declarations/state.md) | 81 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `abbrev` | [Error](declarations/error.md) | 85 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `abbrev` | [M](declarations/m.md) | 87 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `instance` | [(anonymous)](declarations/instance.md) | 90 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `def` | [addVarToState](declarations/addvartostate.md) | 93 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `def` | [addJpToState](declarations/addjptostate.md) | 96 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `def` | [emitJp](declarations/emitjp.md) | 99 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `def` | [getLLVMModule](declarations/getllvmmodule.md) | 105 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `def` | [getEnv](declarations/getenv.md) | 107 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `def` | [getModName](declarations/getmodname.md) | 109 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `def` | [getDecl](declarations/getdecl.md) | 111 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `def` | [constInt8](declarations/constint8.md) | 117 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `def` | [constInt64](declarations/constint64.md) | 120 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `def` | [constIntSizeT](declarations/constintsizet.md) | 123 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `def` | [constIntUnsigned](declarations/constintunsigned.md) | 126 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `def` | [getOrCreateFunctionPrototype](declarations/getorcreatefunctionprototype.md) | 129 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `def` | [callLeanBox](declarations/callleanbox.md) | 133 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `def` | [callLeanMarkPersistentFn](declarations/callleanmarkpersistentfn.md) | 142 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `inductive` | [RefcountKind](declarations/refcountkind.md) | 151 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `instance` | [(anonymous)](declarations/instance-source-edition-2.md) | 154 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `def` | [callLeanRefcountFn](declarations/callleanrefcountfn.md) | 159 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `def` | [callLeanDecRef](declarations/callleandecref.md) | 177 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `def` | [callLeanUnsignedToNatFn](declarations/callleanunsignedtonatfn.md) | 185 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `def` | [callLeanMkStringUncheckedFn](declarations/callleanmkstringuncheckedfn.md) | 195 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `def` | [callLeanMkString](declarations/callleanmkstring.md) | 204 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `def` | [callLeanCStrToNatFn](declarations/callleancstrtonatfn.md) | 212 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `def` | [callLeanIOMkWorld](declarations/callleaniomkworld.md) | 222 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `def` | [callLeanIOResultIsError](declarations/callleanioresultiserror.md) | 230 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `def` | [callLeanAllocCtor](declarations/callleanallocctor.md) | 239 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `def` | [callLeanCtorSet](declarations/callleanctorset.md) | 253 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `def` | [callLeanIOResultMKOk](declarations/callleanioresultmkok.md) | 264 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `def` | [callLeanAllocClosureFn](declarations/callleanallocclosurefn.md) | 274 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `def` | [callLeanClosureSetFn](declarations/callleanclosuresetfn.md) | 283 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `def` | [callLeanObjTag](declarations/callleanobjtag.md) | 292 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `def` | [callLeanIOResultGetValue](declarations/callleanioresultgetvalue.md) | 302 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `def` | [callLeanCtorRelease](declarations/callleanctorrelease.md) | 311 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `def` | [callLeanCtorSetTag](declarations/callleanctorsettag.md) | 320 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `def` | [toLLVMType](declarations/tollvmtype.md) | 329 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `def` | [throwInvalidExportName](declarations/throwinvalidexportname.md) | 347 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `def` | [toCName](declarations/tocname.md) | 350 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `def` | [toCInitName](declarations/tocinitname.md) | 357 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `inductive` | [ShouldForwardControlFlow](declarations/shouldforwardcontrolflow.md) | 370 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `def` | [builderGetInsertionFn](declarations/buildergetinsertionfn.md) | 374 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `def` | [builderAppendBasicBlock](declarations/builderappendbasicblock.md) | 378 | `BLOCKED_NATIVE_ADMISSION` |
| 51 | `def` | [buildPrologueAlloca](declarations/buildprologuealloca.md) | 390 | `BLOCKED_NATIVE_ADMISSION` |
| 52 | `def` | [buildWhile_](declarations/buildwhile.md) | 407 | `BLOCKED_NATIVE_ADMISSION` |
| 53 | `def` | [buildIfThen_](declarations/buildifthen.md) | 438 | `BLOCKED_NATIVE_ADMISSION` |
| 54 | `def` | [buildIfThenElse_](declarations/buildifthenelse.md) | 462 | `BLOCKED_NATIVE_ADMISSION` |
| 55 | `def` | [buildLeanBoolTrue?](declarations/buildleanbooltrue.md) | 486 | `BLOCKED_NATIVE_ADMISSION` |
| 56 | `def` | [emitFnDeclAux](declarations/emitfndeclaux.md) | 490 | `BLOCKED_NATIVE_ADMISSION` |
| 57 | `def` | [emitFnDecl](declarations/emitfndecl.md) | 529 | `BLOCKED_NATIVE_ADMISSION` |
| 58 | `def` | [emitExternDeclAux](declarations/emitexterndeclaux.md) | 533 | `BLOCKED_NATIVE_ADMISSION` |
| 59 | `def` | [emitFnDecls](declarations/emitfndecls.md) | 538 | `BLOCKED_NATIVE_ADMISSION` |
| 60 | `def` | [emitLhsSlot_](declarations/emitlhsslot.md) | 549 | `BLOCKED_NATIVE_ADMISSION` |
| 61 | `def` | [emitLhsVal](declarations/emitlhsval.md) | 555 | `BLOCKED_NATIVE_ADMISSION` |
| 62 | `def` | [emitLhsSlotStore](declarations/emitlhsslotstore.md) | 560 | `BLOCKED_NATIVE_ADMISSION` |
| 63 | `def` | [emitArgSlot_](declarations/emitargslot.md) | 565 | `BLOCKED_NATIVE_ADMISSION` |
| 64 | `def` | [emitArgVal](declarations/emitargval.md) | 576 | `BLOCKED_NATIVE_ADMISSION` |
| 65 | `def` | [emitAllocCtor](declarations/emitallocctor.md) | 582 | `BLOCKED_NATIVE_ADMISSION` |
| 66 | `def` | [emitCtorSetArgs](declarations/emitctorsetargs.md) | 589 | `BLOCKED_NATIVE_ADMISSION` |
| 67 | `def` | [emitCtor](declarations/emitctor.md) | 599 | `BLOCKED_NATIVE_ADMISSION` |
| 68 | `def` | [emitInc](declarations/emitinc.md) | 610 | `BLOCKED_NATIVE_ADMISSION` |
| 69 | `def` | [emitDec](declarations/emitdec.md) | 619 | `BLOCKED_NATIVE_ADMISSION` |
| 70 | `def` | [emitNumLit](declarations/emitnumlit.md) | 626 | `BLOCKED_NATIVE_ADMISSION` |
| 71 | `def` | [toHexDigit](declarations/tohexdigit.md) | 636 | `BLOCKED_NATIVE_ADMISSION` |
| 72 | `def` | [quoteString](declarations/quotestring.md) | 640 | `BLOCKED_NATIVE_ADMISSION` |
| 73 | `def` | [emitSimpleExternalCall](declarations/emitsimpleexternalcall.md) | 656 | `BLOCKED_NATIVE_ADMISSION` |
| 74 | `def` | [emitExternCall](declarations/emitexterncall.md) | 675 | `BLOCKED_NATIVE_ADMISSION` |
| 75 | `def` | [getFunIdTy](declarations/getfunidty.md) | 688 | `BLOCKED_NATIVE_ADMISSION` |
| 76 | `def` | [getOrAddFunIdValue](declarations/getoraddfunidvalue.md) | 701 | `BLOCKED_NATIVE_ADMISSION` |
| 77 | `def` | [emitPartialApp](declarations/emitpartialapp.md) | 713 | `BLOCKED_NATIVE_ADMISSION` |
| 78 | `def` | [emitApp](declarations/emitapp.md) | 727 | `BLOCKED_NATIVE_ADMISSION` |
| 79 | `def` | [emitFullApp](declarations/emitfullapp.md) | 755 | `BLOCKED_NATIVE_ADMISSION` |
| 80 | `def` | [emitLit](declarations/emitlit.md) | 777 | `BLOCKED_NATIVE_ADMISSION` |
| 81 | `def` | [callLeanCtorGet](declarations/callleanctorget.md) | 797 | `BLOCKED_NATIVE_ADMISSION` |
| 82 | `def` | [emitProj](declarations/emitproj.md) | 807 | `BLOCKED_NATIVE_ADMISSION` |
| 83 | `def` | [callLeanCtorGetUsize](declarations/callleanctorgetusize.md) | 812 | `BLOCKED_NATIVE_ADMISSION` |
| 84 | `def` | [emitUProj](declarations/emituproj.md) | 821 | `BLOCKED_NATIVE_ADMISSION` |
| 85 | `def` | [emitOffset](declarations/emitoffset.md) | 826 | `BLOCKED_NATIVE_ADMISSION` |
| 86 | `def` | [emitSProj](declarations/emitsproj.md) | 833 | `BLOCKED_NATIVE_ADMISSION` |
| 87 | `def` | [callLeanIsExclusive](declarations/callleanisexclusive.md) | 852 | `BLOCKED_NATIVE_ADMISSION` |
| 88 | `def` | [callLeanIsScalar](declarations/callleanisscalar.md) | 862 | `BLOCKED_NATIVE_ADMISSION` |
| 89 | `def` | [emitIsShared](declarations/emitisshared.md) | 871 | `BLOCKED_NATIVE_ADMISSION` |
| 90 | `def` | [emitBox](declarations/emitbox.md) | 879 | `BLOCKED_NATIVE_ADMISSION` |
| 91 | `def` | [IRType.isIntegerType](declarations/irtype-isintegertype.md) | 899 | `BLOCKED_NATIVE_ADMISSION` |
| 92 | `def` | [callUnboxForType](declarations/callunboxfortype.md) | 908 | `BLOCKED_NATIVE_ADMISSION` |
| 93 | `def` | [emitUnbox](declarations/emitunbox.md) | 927 | `BLOCKED_NATIVE_ADMISSION` |
| 94 | `def` | [emitReset](declarations/emitreset.md) | 938 | `BLOCKED_NATIVE_ADMISSION` |
| 95 | `def` | [emitReuse](declarations/emitreuse.md) | 958 | `BLOCKED_NATIVE_ADMISSION` |
| 96 | `def` | [emitVDecl](declarations/emitvdecl.md) | 979 | `BLOCKED_NATIVE_ADMISSION` |
| 97 | `def` | [declareVar](declarations/declarevar.md) | 995 | `BLOCKED_NATIVE_ADMISSION` |
| 98 | `def` | [declareVars](declarations/declarevars.md) | 1000 | `BLOCKED_NATIVE_ADMISSION` |
| 99 | `def` | [emitTag](declarations/emittag.md) | 1011 | `BLOCKED_NATIVE_ADMISSION` |
| 100 | `def` | [emitSet](declarations/emitset.md) | 1020 | `BLOCKED_NATIVE_ADMISSION` |
| 101 | `def` | [emitUSet](declarations/emituset.md) | 1028 | `BLOCKED_NATIVE_ADMISSION` |
| 102 | `def` | [emitTailCall](declarations/emittailcall.md) | 1036 | `BLOCKED_NATIVE_ADMISSION` |
| 103 | `def` | [emitJmp](declarations/emitjmp.md) | 1050 | `BLOCKED_NATIVE_ADMISSION` |
| 104 | `def` | [emitSSet](declarations/emitsset.md) | 1061 | `BLOCKED_NATIVE_ADMISSION` |
| 105 | `def` | [emitDel](declarations/emitdel.md) | 1080 | `BLOCKED_NATIVE_ADMISSION` |
| 106 | `def` | [emitSetTag](declarations/emitsettag.md) | 1088 | `BLOCKED_NATIVE_ADMISSION` |
| 107 | `def` | [ensureHasDefault'](declarations/ensurehasdefault.md) | 1096 | `BLOCKED_NATIVE_ADMISSION` |
| 108 | `def` | [emitCase](declarations/emitcase.md) | 1104 | `BLOCKED_NATIVE_ADMISSION` |
| 109 | `def` | [emitJDecl](declarations/emitjdecl.md) | 1130 | `BLOCKED_NATIVE_ADMISSION` |
| 110 | `def` | [emitUnreachable](declarations/emitunreachable.md) | 1145 | `BLOCKED_NATIVE_ADMISSION` |
| 111 | `def` | [emitBlock](declarations/emitblock.md) | 1153 | `BLOCKED_NATIVE_ADMISSION` |
| 112 | `def` | [emitFnBody](declarations/emitfnbody.md) | 1185 | `BLOCKED_NATIVE_ADMISSION` |
| 113 | `def` | [emitFnArgs](declarations/emitfnargs.md) | 1191 | `BLOCKED_NATIVE_ADMISSION` |
| 114 | `def` | [emitDeclAux](declarations/emitdeclaux.md) | 1216 | `BLOCKED_NATIVE_ADMISSION` |
| 115 | `def` | [emitDecl](declarations/emitdecl.md) | 1252 | `BLOCKED_NATIVE_ADMISSION` |
| 116 | `def` | [emitFns](declarations/emitfns.md) | 1260 | `BLOCKED_NATIVE_ADMISSION` |
| 117 | `def` | [callIODeclInitFn](declarations/calliodeclinitfn.md) | 1265 | `BLOCKED_NATIVE_ADMISSION` |
| 118 | `def` | [callPureDeclInitFn](declarations/callpuredeclinitfn.md) | 1274 | `BLOCKED_NATIVE_ADMISSION` |
| 119 | `def` | [emitDeclInit](declarations/emitdeclinit.md) | 1282 | `BLOCKED_NATIVE_ADMISSION` |
| 120 | `def` | [callModInitFn](declarations/callmodinitfn.md) | 1338 | `BLOCKED_NATIVE_ADMISSION` |
| 121 | `def` | [emitInitFn](declarations/emitinitfn.md) | 1348 | `BLOCKED_NATIVE_ADMISSION` |
| 122 | `def` | [callLeanInitialize](declarations/callleaninitialize.md) | 1389 | `BLOCKED_NATIVE_ADMISSION` |
| 123 | `def` | [callLeanSetupLibUV](declarations/callleansetuplibuv.md) | 1397 | `BLOCKED_NATIVE_ADMISSION` |
| 124 | `def` | [callLeanInitializeRuntimeModule](declarations/callleaninitializeruntimemodule.md) | 1406 | `BLOCKED_NATIVE_ADMISSION` |
| 125 | `def` | [callLeanSetPanicMessages](declarations/callleansetpanicmessages.md) | 1414 | `BLOCKED_NATIVE_ADMISSION` |
| 126 | `def` | [callLeanIOMarkEndInitialization](declarations/callleaniomarkendinitialization.md) | 1423 | `BLOCKED_NATIVE_ADMISSION` |
| 127 | `def` | [callLeanIOResultIsOk](declarations/callleanioresultisok.md) | 1431 | `BLOCKED_NATIVE_ADMISSION` |
| 128 | `def` | [callLeanInitTaskManager](declarations/callleaninittaskmanager.md) | 1440 | `BLOCKED_NATIVE_ADMISSION` |
| 129 | `def` | [callLeanFinalizeTaskManager](declarations/callleanfinalizetaskmanager.md) | 1448 | `BLOCKED_NATIVE_ADMISSION` |
| 130 | `def` | [callLeanUnboxUint32](declarations/callleanunboxuint32.md) | 1456 | `BLOCKED_NATIVE_ADMISSION` |
| 131 | `def` | [callLeanIOResultShowError](declarations/callleanioresultshowerror.md) | 1465 | `BLOCKED_NATIVE_ADMISSION` |
| 132 | `def` | [callLeanMainFn](declarations/callleanmainfn.md) | 1474 | `BLOCKED_NATIVE_ADMISSION` |
| 133 | `def` | [emitMainFn](declarations/emitmainfn.md) | 1488 | `BLOCKED_NATIVE_ADMISSION` |
| 134 | `def` | [hasMainFn](declarations/hasmainfn.md) | 1603 | `BLOCKED_NATIVE_ADMISSION` |
| 135 | `def` | [emitMainFnIfNeeded](declarations/emitmainfnifneeded.md) | 1608 | `BLOCKED_NATIVE_ADMISSION` |
| 136 | `def` | [main](declarations/main.md) | 1611 | `BLOCKED_NATIVE_ADMISSION` |
| 137 | `def` | [getLeanHBcPath](declarations/getleanhbcpath.md) | 1619 | `BLOCKED_NATIVE_ADMISSION` |
| 138 | `def` | [getModuleGlobals](declarations/getmoduleglobals.md) | 1623 | `BLOCKED_NATIVE_ADMISSION` |
| 139 | `def` | [getModuleFunctions](declarations/getmodulefunctions.md) | 1630 | `BLOCKED_NATIVE_ADMISSION` |
| 140 | `def` | [emitLLVM](declarations/emitllvm.md) | 1640 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=15d66c3f16977cfd28e3a66d179477cfbd022bd200df1abd3476dec6cf09ad05 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/EmitLLVM/Variante03ec8797d19bde650e42ea5a1e3897d219d84647097df07eb24ff7755cf046b.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
