# LLVMBindings Namespaced Public

[Complete source index](../../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**155 observed declarations and anonymous commands**, 0 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Algebra/LinearAlgebra/LLVMBindings/Variant36d5d4c29c1a5130701070081766fcfd6eb5e1952a85dea95614d776df6e932e.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `3c2300c36c30b7fe46ed45afb546b88954358856`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../_verification/specifications/ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/LLVMBindingsNamespacedPublic.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `structure` | [CodegenFileType](declarations/codegenfiletype.md) | 32 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `def` | [CodegenFileType.AssemblyFile](declarations/codegenfiletype-assemblyfile.md) | 35 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `def` | [CodegenFileType.ObjectFile](declarations/codegenfiletype-objectfile.md) | 36 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `structure` | [IntPredicate](declarations/intpredicate.md) | 39 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `def` | [IntPredicate.EQ](declarations/intpredicate-eq.md) | 42 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `def` | [IntPredicate.NE](declarations/intpredicate-ne.md) | 43 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `def` | [IntPredicate.UGT](declarations/intpredicate-ugt.md) | 44 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `structure` | [AttributeIndex](declarations/attributeindex.md) | 47 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `def` | [AttributeIndex.AttributeReturnIndex](declarations/attributeindex-attributereturnindex.md) | 50 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `def` | [AttributeIndex.AttributeFunctionIndex](declarations/attributeindex-attributefunctionindex.md) | 52 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `structure` | [BasicBlock](declarations/basicblock.md) | 54 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `instance` | [(anonymous)](declarations/instance-source-edition-8.md) | 56 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `structure` | [Builder](declarations/builder.md) | 58 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `instance` | [(anonymous)](declarations/instance-source-edition-9.md) | 60 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `structure` | [Context](declarations/context.md) | 62 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `instance` | [(anonymous)](declarations/instance-source-edition-10.md) | 64 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `structure` | [LLVMType](declarations/llvmtype.md) | 66 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `instance` | [(anonymous)](declarations/instance-source-edition-5.md) | 68 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `structure` | [MemoryBuffer](declarations/memorybuffer.md) | 70 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `instance` | [(anonymous)](declarations/instance-source-edition-6.md) | 72 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `structure` | [Module](declarations/module.md) | 74 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `instance` | [(anonymous)](declarations/instance.md) | 76 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `structure` | [Target](declarations/target.md) | 88 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `instance` | [(anonymous)](declarations/instance-source-edition-7.md) | 90 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `structure` | [TargetMachine](declarations/targetmachine.md) | 92 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `instance` | [(anonymous)](declarations/instance-source-edition-3.md) | 94 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `structure` | [Value](declarations/value.md) | 96 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `instance` | [(anonymous)](declarations/instance-source-edition-4.md) | 98 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `def` | [Value.isNull](declarations/value-isnull.md) | 101 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `opaque` | [Value.getName](declarations/value-getname.md) | 104 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `structure` | [Attribute](declarations/attribute.md) | 106 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `instance` | [(anonymous)](declarations/instance-source-edition-2.md) | 108 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `opaque` | [llvmInitializeTargetInfo](declarations/llvminitializetargetinfo.md) | 111 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `opaque` | [createContext](declarations/createcontext.md) | 114 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `opaque` | [createModule](declarations/createmodule.md) | 117 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `opaque` | [moduleToString](declarations/moduletostring.md) | 120 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `opaque` | [writeBitcodeToFile](declarations/writebitcodetofile.md) | 123 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `opaque` | [addFunction](declarations/addfunction.md) | 126 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `opaque` | [getFirstFunction](declarations/getfirstfunction.md) | 129 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `opaque` | [getNextFunction](declarations/getnextfunction.md) | 132 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `opaque` | [getNamedFunction](declarations/getnamedfunction.md) | 135 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `opaque` | [addGlobal](declarations/addglobal.md) | 138 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `opaque` | [getNamedGlobal](declarations/getnamedglobal.md) | 141 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `opaque` | [getFirstGlobal](declarations/getfirstglobal.md) | 144 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `opaque` | [getNextGlobal](declarations/getnextglobal.md) | 147 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `opaque` | [buildGlobalString](declarations/buildglobalstring.md) | 150 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `opaque` | [isDeclaration](declarations/isdeclaration.md) | 153 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `opaque` | [setInitializer](declarations/setinitializer.md) | 156 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `opaque` | [functionType](declarations/functiontype.md) | 159 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `opaque` | [voidType](declarations/voidtype.md) | 162 | `BLOCKED_NATIVE_ADMISSION` |
| 51 | `opaque` | [intTypeInContext](declarations/inttypeincontext.md) | 165 | `BLOCKED_NATIVE_ADMISSION` |
| 52 | `opaque` | [opaquePointerTypeInContext](declarations/opaquepointertypeincontext.md) | 168 | `BLOCKED_NATIVE_ADMISSION` |
| 53 | `opaque` | [floatTypeInContext](declarations/floattypeincontext.md) | 171 | `BLOCKED_NATIVE_ADMISSION` |
| 54 | `opaque` | [doubleTypeInContext](declarations/doubletypeincontext.md) | 174 | `BLOCKED_NATIVE_ADMISSION` |
| 55 | `opaque` | [pointerType](declarations/pointertype.md) | 177 | `BLOCKED_NATIVE_ADMISSION` |
| 56 | `opaque` | [arrayType](declarations/arraytype.md) | 180 | `BLOCKED_NATIVE_ADMISSION` |
| 57 | `opaque` | [constArray](declarations/constarray.md) | 183 | `BLOCKED_NATIVE_ADMISSION` |
| 58 | `opaque` | [constString](declarations/conststring.md) | 187 | `BLOCKED_NATIVE_ADMISSION` |
| 59 | `opaque` | [constPointerNull](declarations/constpointernull.md) | 190 | `BLOCKED_NATIVE_ADMISSION` |
| 60 | `opaque` | [getUndef](declarations/getundef.md) | 193 | `BLOCKED_NATIVE_ADMISSION` |
| 61 | `opaque` | [createBuilderInContext](declarations/createbuilderincontext.md) | 196 | `BLOCKED_NATIVE_ADMISSION` |
| 62 | `opaque` | [appendBasicBlockInContext](declarations/appendbasicblockincontext.md) | 199 | `BLOCKED_NATIVE_ADMISSION` |
| 63 | `opaque` | [countBasicBlocks](declarations/countbasicblocks.md) | 202 | `BLOCKED_NATIVE_ADMISSION` |
| 64 | `opaque` | [getEntryBasicBlock](declarations/getentrybasicblock.md) | 205 | `BLOCKED_NATIVE_ADMISSION` |
| 65 | `opaque` | [getFirstInstruction](declarations/getfirstinstruction.md) | 208 | `BLOCKED_NATIVE_ADMISSION` |
| 66 | `opaque` | [positionBuilderBefore](declarations/positionbuilderbefore.md) | 211 | `BLOCKED_NATIVE_ADMISSION` |
| 67 | `opaque` | [positionBuilderAtEnd](declarations/positionbuilderatend.md) | 214 | `BLOCKED_NATIVE_ADMISSION` |
| 68 | `opaque` | [buildCall2](declarations/buildcall2.md) | 217 | `BLOCKED_NATIVE_ADMISSION` |
| 69 | `opaque` | [setTailCall](declarations/settailcall.md) | 220 | `BLOCKED_NATIVE_ADMISSION` |
| 70 | `opaque` | [buildCondBr](declarations/buildcondbr.md) | 223 | `BLOCKED_NATIVE_ADMISSION` |
| 71 | `opaque` | [buildBr](declarations/buildbr.md) | 226 | `BLOCKED_NATIVE_ADMISSION` |
| 72 | `opaque` | [buildAlloca](declarations/buildalloca.md) | 229 | `BLOCKED_NATIVE_ADMISSION` |
| 73 | `opaque` | [buildLoad2](declarations/buildload2.md) | 232 | `BLOCKED_NATIVE_ADMISSION` |
| 74 | `opaque` | [buildStore](declarations/buildstore.md) | 235 | `BLOCKED_NATIVE_ADMISSION` |
| 75 | `opaque` | [buildRet](declarations/buildret.md) | 238 | `BLOCKED_NATIVE_ADMISSION` |
| 76 | `opaque` | [buildUnreachable](declarations/buildunreachable.md) | 241 | `BLOCKED_NATIVE_ADMISSION` |
| 77 | `opaque` | [buildGEP2](declarations/buildgep2.md) | 244 | `BLOCKED_NATIVE_ADMISSION` |
| 78 | `opaque` | [buildInBoundsGEP2](declarations/buildinboundsgep2.md) | 247 | `BLOCKED_NATIVE_ADMISSION` |
| 79 | `opaque` | [buildSext](declarations/buildsext.md) | 250 | `BLOCKED_NATIVE_ADMISSION` |
| 80 | `opaque` | [buildZext](declarations/buildzext.md) | 253 | `BLOCKED_NATIVE_ADMISSION` |
| 81 | `opaque` | [buildSextOrTrunc](declarations/buildsextortrunc.md) | 256 | `BLOCKED_NATIVE_ADMISSION` |
| 82 | `opaque` | [buildSwitch](declarations/buildswitch.md) | 259 | `BLOCKED_NATIVE_ADMISSION` |
| 83 | `opaque` | [buildPtrToInt](declarations/buildptrtoint.md) | 262 | `BLOCKED_NATIVE_ADMISSION` |
| 84 | `opaque` | [buildMul](declarations/buildmul.md) | 265 | `BLOCKED_NATIVE_ADMISSION` |
| 85 | `opaque` | [buildAdd](declarations/buildadd.md) | 268 | `BLOCKED_NATIVE_ADMISSION` |
| 86 | `opaque` | [buildSub](declarations/buildsub.md) | 271 | `BLOCKED_NATIVE_ADMISSION` |
| 87 | `opaque` | [buildNot](declarations/buildnot.md) | 274 | `BLOCKED_NATIVE_ADMISSION` |
| 88 | `opaque` | [buildICmp](declarations/buildicmp.md) | 277 | `BLOCKED_NATIVE_ADMISSION` |
| 89 | `opaque` | [addCase](declarations/addcase.md) | 280 | `BLOCKED_NATIVE_ADMISSION` |
| 90 | `opaque` | [getInsertBlock](declarations/getinsertblock.md) | 283 | `BLOCKED_NATIVE_ADMISSION` |
| 91 | `opaque` | [clearInsertionPosition](declarations/clearinsertionposition.md) | 286 | `BLOCKED_NATIVE_ADMISSION` |
| 92 | `opaque` | [getBasicBlockParent](declarations/getbasicblockparent.md) | 289 | `BLOCKED_NATIVE_ADMISSION` |
| 93 | `opaque` | [typeOf](declarations/typeof.md) | 292 | `BLOCKED_NATIVE_ADMISSION` |
| 94 | `opaque` | [constInt](declarations/constint.md) | 295 | `BLOCKED_NATIVE_ADMISSION` |
| 95 | `opaque` | [printModuletoString](declarations/printmoduletostring.md) | 298 | `BLOCKED_NATIVE_ADMISSION` |
| 96 | `opaque` | [printModuletoFile](declarations/printmoduletofile.md) | 301 | `BLOCKED_NATIVE_ADMISSION` |
| 97 | `opaque` | [countParams](declarations/countparams.md) | 304 | `BLOCKED_NATIVE_ADMISSION` |
| 98 | `opaque` | [getParam](declarations/getparam.md) | 307 | `BLOCKED_NATIVE_ADMISSION` |
| 99 | `opaque` | [createMemoryBufferWithContentsOfFile](declarations/creatememorybufferwithcontentsoffile.md) | 310 | `BLOCKED_NATIVE_ADMISSION` |
| 100 | `opaque` | [parseBitcode](declarations/parsebitcode.md) | 313 | `BLOCKED_NATIVE_ADMISSION` |
| 101 | `opaque` | [linkModules](declarations/linkmodules.md) | 316 | `BLOCKED_NATIVE_ADMISSION` |
| 102 | `opaque` | [getDefaultTargetTriple](declarations/getdefaulttargettriple.md) | 319 | `BLOCKED_NATIVE_ADMISSION` |
| 103 | `opaque` | [getTargetFromTriple](declarations/gettargetfromtriple.md) | 322 | `BLOCKED_NATIVE_ADMISSION` |
| 104 | `opaque` | [createTargetMachine](declarations/createtargetmachine.md) | 325 | `BLOCKED_NATIVE_ADMISSION` |
| 105 | `opaque` | [targetMachineEmitToFile](declarations/targetmachineemittofile.md) | 328 | `BLOCKED_NATIVE_ADMISSION` |
| 106 | `opaque` | [disposeTargetMachine](declarations/disposetargetmachine.md) | 354 | `BLOCKED_NATIVE_ADMISSION` |
| 107 | `opaque` | [disposeModule](declarations/disposemodule.md) | 357 | `BLOCKED_NATIVE_ADMISSION` |
| 108 | `opaque` | [verifyModule](declarations/verifymodule.md) | 360 | `BLOCKED_NATIVE_ADMISSION` |
| 109 | `opaque` | [createStringAttribute](declarations/createstringattribute.md) | 363 | `BLOCKED_NATIVE_ADMISSION` |
| 110 | `opaque` | [addAttributeAtIndex](declarations/addattributeatindex.md) | 366 | `BLOCKED_NATIVE_ADMISSION` |
| 111 | `structure` | [Visibility](declarations/visibility.md) | 370 | `BLOCKED_NATIVE_ADMISSION` |
| 112 | `def` | [Visibility.default](declarations/visibility-default.md) | 373 | `BLOCKED_NATIVE_ADMISSION` |
| 113 | `def` | [Visibility.hidden](declarations/visibility-hidden.md) | 374 | `BLOCKED_NATIVE_ADMISSION` |
| 114 | `def` | [Visibility.protected](declarations/visibility-protected.md) | 375 | `BLOCKED_NATIVE_ADMISSION` |
| 115 | `opaque` | [setVisibility](declarations/setvisibility.md) | 378 | `BLOCKED_NATIVE_ADMISSION` |
| 116 | `structure` | [DLLStorageClass](declarations/dllstorageclass.md) | 381 | `BLOCKED_NATIVE_ADMISSION` |
| 117 | `def` | [DLLStorageClass.default](declarations/dllstorageclass-default.md) | 384 | `BLOCKED_NATIVE_ADMISSION` |
| 118 | `def` | [DLLStorageClass.import](declarations/dllstorageclass-import.md) | 385 | `BLOCKED_NATIVE_ADMISSION` |
| 119 | `def` | [DLLStorageClass.export](declarations/dllstorageclass-export.md) | 386 | `BLOCKED_NATIVE_ADMISSION` |
| 120 | `opaque` | [setDLLStorageClass](declarations/setdllstorageclass.md) | 389 | `BLOCKED_NATIVE_ADMISSION` |
| 121 | `structure` | [Linkage](declarations/linkage.md) | 392 | `BLOCKED_NATIVE_ADMISSION` |
| 122 | `def` | [Linkage.external](declarations/linkage-external.md) | 396 | `BLOCKED_NATIVE_ADMISSION` |
| 123 | `def` | [Linkage.availableExternally](declarations/linkage-availableexternally.md) | 397 | `BLOCKED_NATIVE_ADMISSION` |
| 124 | `def` | [Linkage.linkOnceAny](declarations/linkage-linkonceany.md) | 399 | `BLOCKED_NATIVE_ADMISSION` |
| 125 | `def` | [Linkage.linkOnceODR](declarations/linkage-linkonceodr.md) | 401 | `BLOCKED_NATIVE_ADMISSION` |
| 126 | `def` | [Linkage.linkOnceODRAutoHide](declarations/linkage-linkonceodrautohide.md) | 403 | `BLOCKED_NATIVE_ADMISSION` |
| 127 | `def` | [Linkage.weakAny](declarations/linkage-weakany.md) | 405 | `BLOCKED_NATIVE_ADMISSION` |
| 128 | `def` | [Linkage.weakODR](declarations/linkage-weakodr.md) | 407 | `BLOCKED_NATIVE_ADMISSION` |
| 129 | `def` | [Linkage.appending](declarations/linkage-appending.md) | 409 | `BLOCKED_NATIVE_ADMISSION` |
| 130 | `def` | [Linkage.internal](declarations/linkage-internal.md) | 411 | `BLOCKED_NATIVE_ADMISSION` |
| 131 | `def` | [Linkage.private](declarations/linkage-private.md) | 413 | `BLOCKED_NATIVE_ADMISSION` |
| 132 | `def` | [Linkage.dllImport](declarations/linkage-dllimport.md) | 415 | `BLOCKED_NATIVE_ADMISSION` |
| 133 | `def` | [Linkage.dllExport](declarations/linkage-dllexport.md) | 417 | `BLOCKED_NATIVE_ADMISSION` |
| 134 | `def` | [Linkage.externalWeak](declarations/linkage-externalweak.md) | 419 | `BLOCKED_NATIVE_ADMISSION` |
| 135 | `def` | [Linkage.ghost](declarations/linkage-ghost.md) | 421 | `BLOCKED_NATIVE_ADMISSION` |
| 136 | `def` | [Linkage.common](declarations/linkage-common.md) | 423 | `BLOCKED_NATIVE_ADMISSION` |
| 137 | `def` | [Linkage.linkerPrivate](declarations/linkage-linkerprivate.md) | 425 | `BLOCKED_NATIVE_ADMISSION` |
| 138 | `def` | [Linkage.linkerPrivateWeak](declarations/linkage-linkerprivateweak.md) | 427 | `BLOCKED_NATIVE_ADMISSION` |
| 139 | `opaque` | [setLinkage](declarations/setlinkage.md) | 430 | `BLOCKED_NATIVE_ADMISSION` |
| 140 | `def` | [i1Type](declarations/i1type.md) | 433 | `BLOCKED_NATIVE_ADMISSION` |
| 141 | `def` | [i8Type](declarations/i8type.md) | 436 | `BLOCKED_NATIVE_ADMISSION` |
| 142 | `def` | [i16Type](declarations/i16type.md) | 439 | `BLOCKED_NATIVE_ADMISSION` |
| 143 | `def` | [i32Type](declarations/i32type.md) | 442 | `BLOCKED_NATIVE_ADMISSION` |
| 144 | `def` | [i64Type](declarations/i64type.md) | 445 | `BLOCKED_NATIVE_ADMISSION` |
| 145 | `def` | [voidPtrType](declarations/voidptrtype.md) | 448 | `BLOCKED_NATIVE_ADMISSION` |
| 146 | `def` | [i8PtrType](declarations/i8ptrtype.md) | 451 | `BLOCKED_NATIVE_ADMISSION` |
| 147 | `def` | [constTrue](declarations/consttrue.md) | 454 | `BLOCKED_NATIVE_ADMISSION` |
| 148 | `def` | [constFalse](declarations/constfalse.md) | 457 | `BLOCKED_NATIVE_ADMISSION` |
| 149 | `def` | [constInt'](declarations/constint-source-edition-2.md) | 460 | `BLOCKED_NATIVE_ADMISSION` |
| 150 | `def` | [constInt1](declarations/constint1.md) | 463 | `BLOCKED_NATIVE_ADMISSION` |
| 151 | `def` | [constInt8](declarations/constint8.md) | 466 | `BLOCKED_NATIVE_ADMISSION` |
| 152 | `def` | [constInt32](declarations/constint32.md) | 469 | `BLOCKED_NATIVE_ADMISSION` |
| 153 | `def` | [constInt64](declarations/constint64.md) | 472 | `BLOCKED_NATIVE_ADMISSION` |
| 154 | `def` | [constIntSizeT](declarations/constintsizet.md) | 475 | `BLOCKED_NATIVE_ADMISSION` |
| 155 | `def` | [constIntUnsigned](declarations/constintunsigned.md) | 479 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=85b3426777454c50308572162ab115e06c7e9f3cd9bfe0af571919bab8ea8ae4 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/LLVMBindings/Variant36d5d4c29c1a5130701070081766fcfd6eb5e1952a85dea95614d776df6e932e.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
