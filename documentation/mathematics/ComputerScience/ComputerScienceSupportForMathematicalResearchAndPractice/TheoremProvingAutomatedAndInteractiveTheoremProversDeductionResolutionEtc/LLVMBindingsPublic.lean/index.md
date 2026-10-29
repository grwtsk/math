# LLVMBindings Public

[Complete source index](../../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**155 observed declarations and anonymous commands**, 0 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Algebra/LinearAlgebra/LLVMBindings/Variantff6fc9dfbe311ac499183606c106ef4ff955530ae8b2e75396a0367cca37ed92.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `2fa12815ca56e9b076cf2bc6ba5b0c4a9c1d0206`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../_verification/specifications/ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/LLVMBindingsPublic.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `structure` | [CodegenFileType](declarations/codegenfiletype.md) | 24 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `def` | [CodegenFileType.AssemblyFile](declarations/codegenfiletype-assemblyfile.md) | 27 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `def` | [CodegenFileType.ObjectFile](declarations/codegenfiletype-objectfile.md) | 28 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `structure` | [IntPredicate](declarations/intpredicate.md) | 31 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `def` | [IntPredicate.EQ](declarations/intpredicate-eq.md) | 34 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `def` | [IntPredicate.NE](declarations/intpredicate-ne.md) | 35 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `def` | [IntPredicate.UGT](declarations/intpredicate-ugt.md) | 36 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `structure` | [AttributeIndex](declarations/attributeindex.md) | 39 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `def` | [AttributeIndex.AttributeReturnIndex](declarations/attributeindex-attributereturnindex.md) | 42 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `def` | [AttributeIndex.AttributeFunctionIndex](declarations/attributeindex-attributefunctionindex.md) | 44 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `structure` | [BasicBlock](declarations/basicblock.md) | 46 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `instance` | [(anonymous)](declarations/instance-source-edition-6.md) | 48 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `structure` | [Builder](declarations/builder.md) | 50 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `instance` | [(anonymous)](declarations/instance-source-edition-10.md) | 52 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `structure` | [Context](declarations/context.md) | 54 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `instance` | [(anonymous)](declarations/instance-source-edition-7.md) | 56 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `structure` | [LLVMType](declarations/llvmtype.md) | 58 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `instance` | [(anonymous)](declarations/instance-source-edition-9.md) | 60 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `structure` | [MemoryBuffer](declarations/memorybuffer.md) | 62 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `instance` | [(anonymous)](declarations/instance-source-edition-3.md) | 64 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `structure` | [Module](declarations/module.md) | 66 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `instance` | [(anonymous)](declarations/instance-source-edition-4.md) | 68 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `structure` | [Target](declarations/target.md) | 80 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `instance` | [(anonymous)](declarations/instance-source-edition-8.md) | 82 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `structure` | [TargetMachine](declarations/targetmachine.md) | 84 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `instance` | [(anonymous)](declarations/instance-source-edition-5.md) | 86 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `structure` | [Value](declarations/value.md) | 88 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `instance` | [(anonymous)](declarations/instance-source-edition-2.md) | 90 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `def` | [Value.isNull](declarations/value-isnull.md) | 93 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `opaque` | [Value.getName](declarations/value-getname.md) | 96 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `structure` | [Attribute](declarations/attribute.md) | 98 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `instance` | [(anonymous)](declarations/instance.md) | 100 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `opaque` | [llvmInitializeTargetInfo](declarations/llvminitializetargetinfo.md) | 103 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `opaque` | [createContext](declarations/createcontext.md) | 106 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `opaque` | [createModule](declarations/createmodule.md) | 109 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `opaque` | [moduleToString](declarations/moduletostring.md) | 112 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `opaque` | [writeBitcodeToFile](declarations/writebitcodetofile.md) | 115 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `opaque` | [addFunction](declarations/addfunction.md) | 118 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `opaque` | [getFirstFunction](declarations/getfirstfunction.md) | 121 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `opaque` | [getNextFunction](declarations/getnextfunction.md) | 124 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `opaque` | [getNamedFunction](declarations/getnamedfunction.md) | 127 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `opaque` | [addGlobal](declarations/addglobal.md) | 130 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `opaque` | [getNamedGlobal](declarations/getnamedglobal.md) | 133 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `opaque` | [getFirstGlobal](declarations/getfirstglobal.md) | 136 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `opaque` | [getNextGlobal](declarations/getnextglobal.md) | 139 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `opaque` | [buildGlobalString](declarations/buildglobalstring.md) | 142 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `opaque` | [isDeclaration](declarations/isdeclaration.md) | 145 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `opaque` | [setInitializer](declarations/setinitializer.md) | 148 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `opaque` | [functionType](declarations/functiontype.md) | 151 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `opaque` | [voidType](declarations/voidtype.md) | 154 | `BLOCKED_NATIVE_ADMISSION` |
| 51 | `opaque` | [intTypeInContext](declarations/inttypeincontext.md) | 157 | `BLOCKED_NATIVE_ADMISSION` |
| 52 | `opaque` | [opaquePointerTypeInContext](declarations/opaquepointertypeincontext.md) | 160 | `BLOCKED_NATIVE_ADMISSION` |
| 53 | `opaque` | [floatTypeInContext](declarations/floattypeincontext.md) | 163 | `BLOCKED_NATIVE_ADMISSION` |
| 54 | `opaque` | [doubleTypeInContext](declarations/doubletypeincontext.md) | 166 | `BLOCKED_NATIVE_ADMISSION` |
| 55 | `opaque` | [pointerType](declarations/pointertype.md) | 169 | `BLOCKED_NATIVE_ADMISSION` |
| 56 | `opaque` | [arrayType](declarations/arraytype.md) | 172 | `BLOCKED_NATIVE_ADMISSION` |
| 57 | `opaque` | [constArray](declarations/constarray.md) | 175 | `BLOCKED_NATIVE_ADMISSION` |
| 58 | `opaque` | [constString](declarations/conststring.md) | 179 | `BLOCKED_NATIVE_ADMISSION` |
| 59 | `opaque` | [constPointerNull](declarations/constpointernull.md) | 182 | `BLOCKED_NATIVE_ADMISSION` |
| 60 | `opaque` | [getUndef](declarations/getundef.md) | 185 | `BLOCKED_NATIVE_ADMISSION` |
| 61 | `opaque` | [createBuilderInContext](declarations/createbuilderincontext.md) | 188 | `BLOCKED_NATIVE_ADMISSION` |
| 62 | `opaque` | [appendBasicBlockInContext](declarations/appendbasicblockincontext.md) | 191 | `BLOCKED_NATIVE_ADMISSION` |
| 63 | `opaque` | [countBasicBlocks](declarations/countbasicblocks.md) | 194 | `BLOCKED_NATIVE_ADMISSION` |
| 64 | `opaque` | [getEntryBasicBlock](declarations/getentrybasicblock.md) | 197 | `BLOCKED_NATIVE_ADMISSION` |
| 65 | `opaque` | [getFirstInstruction](declarations/getfirstinstruction.md) | 200 | `BLOCKED_NATIVE_ADMISSION` |
| 66 | `opaque` | [positionBuilderBefore](declarations/positionbuilderbefore.md) | 203 | `BLOCKED_NATIVE_ADMISSION` |
| 67 | `opaque` | [positionBuilderAtEnd](declarations/positionbuilderatend.md) | 206 | `BLOCKED_NATIVE_ADMISSION` |
| 68 | `opaque` | [buildCall2](declarations/buildcall2.md) | 209 | `BLOCKED_NATIVE_ADMISSION` |
| 69 | `opaque` | [setTailCall](declarations/settailcall.md) | 212 | `BLOCKED_NATIVE_ADMISSION` |
| 70 | `opaque` | [buildCondBr](declarations/buildcondbr.md) | 215 | `BLOCKED_NATIVE_ADMISSION` |
| 71 | `opaque` | [buildBr](declarations/buildbr.md) | 218 | `BLOCKED_NATIVE_ADMISSION` |
| 72 | `opaque` | [buildAlloca](declarations/buildalloca.md) | 221 | `BLOCKED_NATIVE_ADMISSION` |
| 73 | `opaque` | [buildLoad2](declarations/buildload2.md) | 224 | `BLOCKED_NATIVE_ADMISSION` |
| 74 | `opaque` | [buildStore](declarations/buildstore.md) | 227 | `BLOCKED_NATIVE_ADMISSION` |
| 75 | `opaque` | [buildRet](declarations/buildret.md) | 230 | `BLOCKED_NATIVE_ADMISSION` |
| 76 | `opaque` | [buildUnreachable](declarations/buildunreachable.md) | 233 | `BLOCKED_NATIVE_ADMISSION` |
| 77 | `opaque` | [buildGEP2](declarations/buildgep2.md) | 236 | `BLOCKED_NATIVE_ADMISSION` |
| 78 | `opaque` | [buildInBoundsGEP2](declarations/buildinboundsgep2.md) | 239 | `BLOCKED_NATIVE_ADMISSION` |
| 79 | `opaque` | [buildSext](declarations/buildsext.md) | 242 | `BLOCKED_NATIVE_ADMISSION` |
| 80 | `opaque` | [buildZext](declarations/buildzext.md) | 245 | `BLOCKED_NATIVE_ADMISSION` |
| 81 | `opaque` | [buildSextOrTrunc](declarations/buildsextortrunc.md) | 248 | `BLOCKED_NATIVE_ADMISSION` |
| 82 | `opaque` | [buildSwitch](declarations/buildswitch.md) | 251 | `BLOCKED_NATIVE_ADMISSION` |
| 83 | `opaque` | [buildPtrToInt](declarations/buildptrtoint.md) | 254 | `BLOCKED_NATIVE_ADMISSION` |
| 84 | `opaque` | [buildMul](declarations/buildmul.md) | 257 | `BLOCKED_NATIVE_ADMISSION` |
| 85 | `opaque` | [buildAdd](declarations/buildadd.md) | 260 | `BLOCKED_NATIVE_ADMISSION` |
| 86 | `opaque` | [buildSub](declarations/buildsub.md) | 263 | `BLOCKED_NATIVE_ADMISSION` |
| 87 | `opaque` | [buildNot](declarations/buildnot.md) | 266 | `BLOCKED_NATIVE_ADMISSION` |
| 88 | `opaque` | [buildICmp](declarations/buildicmp.md) | 269 | `BLOCKED_NATIVE_ADMISSION` |
| 89 | `opaque` | [addCase](declarations/addcase.md) | 272 | `BLOCKED_NATIVE_ADMISSION` |
| 90 | `opaque` | [getInsertBlock](declarations/getinsertblock.md) | 275 | `BLOCKED_NATIVE_ADMISSION` |
| 91 | `opaque` | [clearInsertionPosition](declarations/clearinsertionposition.md) | 278 | `BLOCKED_NATIVE_ADMISSION` |
| 92 | `opaque` | [getBasicBlockParent](declarations/getbasicblockparent.md) | 281 | `BLOCKED_NATIVE_ADMISSION` |
| 93 | `opaque` | [typeOf](declarations/typeof.md) | 284 | `BLOCKED_NATIVE_ADMISSION` |
| 94 | `opaque` | [constInt](declarations/constint-source-edition-2.md) | 287 | `BLOCKED_NATIVE_ADMISSION` |
| 95 | `opaque` | [printModuletoString](declarations/printmoduletostring.md) | 290 | `BLOCKED_NATIVE_ADMISSION` |
| 96 | `opaque` | [printModuletoFile](declarations/printmoduletofile.md) | 293 | `BLOCKED_NATIVE_ADMISSION` |
| 97 | `opaque` | [countParams](declarations/countparams.md) | 296 | `BLOCKED_NATIVE_ADMISSION` |
| 98 | `opaque` | [getParam](declarations/getparam.md) | 299 | `BLOCKED_NATIVE_ADMISSION` |
| 99 | `opaque` | [createMemoryBufferWithContentsOfFile](declarations/creatememorybufferwithcontentsoffile.md) | 302 | `BLOCKED_NATIVE_ADMISSION` |
| 100 | `opaque` | [parseBitcode](declarations/parsebitcode.md) | 305 | `BLOCKED_NATIVE_ADMISSION` |
| 101 | `opaque` | [linkModules](declarations/linkmodules.md) | 308 | `BLOCKED_NATIVE_ADMISSION` |
| 102 | `opaque` | [getDefaultTargetTriple](declarations/getdefaulttargettriple.md) | 311 | `BLOCKED_NATIVE_ADMISSION` |
| 103 | `opaque` | [getTargetFromTriple](declarations/gettargetfromtriple.md) | 314 | `BLOCKED_NATIVE_ADMISSION` |
| 104 | `opaque` | [createTargetMachine](declarations/createtargetmachine.md) | 317 | `BLOCKED_NATIVE_ADMISSION` |
| 105 | `opaque` | [targetMachineEmitToFile](declarations/targetmachineemittofile.md) | 320 | `BLOCKED_NATIVE_ADMISSION` |
| 106 | `opaque` | [disposeTargetMachine](declarations/disposetargetmachine.md) | 346 | `BLOCKED_NATIVE_ADMISSION` |
| 107 | `opaque` | [disposeModule](declarations/disposemodule.md) | 349 | `BLOCKED_NATIVE_ADMISSION` |
| 108 | `opaque` | [verifyModule](declarations/verifymodule.md) | 352 | `BLOCKED_NATIVE_ADMISSION` |
| 109 | `opaque` | [createStringAttribute](declarations/createstringattribute.md) | 355 | `BLOCKED_NATIVE_ADMISSION` |
| 110 | `opaque` | [addAttributeAtIndex](declarations/addattributeatindex.md) | 358 | `BLOCKED_NATIVE_ADMISSION` |
| 111 | `structure` | [Visibility](declarations/visibility.md) | 362 | `BLOCKED_NATIVE_ADMISSION` |
| 112 | `def` | [Visibility.default](declarations/visibility-default.md) | 365 | `BLOCKED_NATIVE_ADMISSION` |
| 113 | `def` | [Visibility.hidden](declarations/visibility-hidden.md) | 366 | `BLOCKED_NATIVE_ADMISSION` |
| 114 | `def` | [Visibility.protected](declarations/visibility-protected.md) | 367 | `BLOCKED_NATIVE_ADMISSION` |
| 115 | `opaque` | [setVisibility](declarations/setvisibility.md) | 370 | `BLOCKED_NATIVE_ADMISSION` |
| 116 | `structure` | [DLLStorageClass](declarations/dllstorageclass.md) | 373 | `BLOCKED_NATIVE_ADMISSION` |
| 117 | `def` | [DLLStorageClass.default](declarations/dllstorageclass-default.md) | 376 | `BLOCKED_NATIVE_ADMISSION` |
| 118 | `def` | [DLLStorageClass.import](declarations/dllstorageclass-import.md) | 377 | `BLOCKED_NATIVE_ADMISSION` |
| 119 | `def` | [DLLStorageClass.export](declarations/dllstorageclass-export.md) | 378 | `BLOCKED_NATIVE_ADMISSION` |
| 120 | `opaque` | [setDLLStorageClass](declarations/setdllstorageclass.md) | 381 | `BLOCKED_NATIVE_ADMISSION` |
| 121 | `structure` | [Linkage](declarations/linkage.md) | 384 | `BLOCKED_NATIVE_ADMISSION` |
| 122 | `def` | [Linkage.external](declarations/linkage-external.md) | 388 | `BLOCKED_NATIVE_ADMISSION` |
| 123 | `def` | [Linkage.availableExternally](declarations/linkage-availableexternally.md) | 389 | `BLOCKED_NATIVE_ADMISSION` |
| 124 | `def` | [Linkage.linkOnceAny](declarations/linkage-linkonceany.md) | 391 | `BLOCKED_NATIVE_ADMISSION` |
| 125 | `def` | [Linkage.linkOnceODR](declarations/linkage-linkonceodr.md) | 393 | `BLOCKED_NATIVE_ADMISSION` |
| 126 | `def` | [Linkage.linkOnceODRAutoHide](declarations/linkage-linkonceodrautohide.md) | 395 | `BLOCKED_NATIVE_ADMISSION` |
| 127 | `def` | [Linkage.weakAny](declarations/linkage-weakany.md) | 397 | `BLOCKED_NATIVE_ADMISSION` |
| 128 | `def` | [Linkage.weakODR](declarations/linkage-weakodr.md) | 399 | `BLOCKED_NATIVE_ADMISSION` |
| 129 | `def` | [Linkage.appending](declarations/linkage-appending.md) | 401 | `BLOCKED_NATIVE_ADMISSION` |
| 130 | `def` | [Linkage.internal](declarations/linkage-internal.md) | 403 | `BLOCKED_NATIVE_ADMISSION` |
| 131 | `def` | [Linkage.private](declarations/linkage-private.md) | 405 | `BLOCKED_NATIVE_ADMISSION` |
| 132 | `def` | [Linkage.dllImport](declarations/linkage-dllimport.md) | 407 | `BLOCKED_NATIVE_ADMISSION` |
| 133 | `def` | [Linkage.dllExport](declarations/linkage-dllexport.md) | 409 | `BLOCKED_NATIVE_ADMISSION` |
| 134 | `def` | [Linkage.externalWeak](declarations/linkage-externalweak.md) | 411 | `BLOCKED_NATIVE_ADMISSION` |
| 135 | `def` | [Linkage.ghost](declarations/linkage-ghost.md) | 413 | `BLOCKED_NATIVE_ADMISSION` |
| 136 | `def` | [Linkage.common](declarations/linkage-common.md) | 415 | `BLOCKED_NATIVE_ADMISSION` |
| 137 | `def` | [Linkage.linkerPrivate](declarations/linkage-linkerprivate.md) | 417 | `BLOCKED_NATIVE_ADMISSION` |
| 138 | `def` | [Linkage.linkerPrivateWeak](declarations/linkage-linkerprivateweak.md) | 419 | `BLOCKED_NATIVE_ADMISSION` |
| 139 | `opaque` | [setLinkage](declarations/setlinkage.md) | 422 | `BLOCKED_NATIVE_ADMISSION` |
| 140 | `def` | [i1Type](declarations/i1type.md) | 425 | `BLOCKED_NATIVE_ADMISSION` |
| 141 | `def` | [i8Type](declarations/i8type.md) | 428 | `BLOCKED_NATIVE_ADMISSION` |
| 142 | `def` | [i16Type](declarations/i16type.md) | 431 | `BLOCKED_NATIVE_ADMISSION` |
| 143 | `def` | [i32Type](declarations/i32type.md) | 434 | `BLOCKED_NATIVE_ADMISSION` |
| 144 | `def` | [i64Type](declarations/i64type.md) | 437 | `BLOCKED_NATIVE_ADMISSION` |
| 145 | `def` | [voidPtrType](declarations/voidptrtype.md) | 440 | `BLOCKED_NATIVE_ADMISSION` |
| 146 | `def` | [i8PtrType](declarations/i8ptrtype.md) | 443 | `BLOCKED_NATIVE_ADMISSION` |
| 147 | `def` | [constTrue](declarations/consttrue.md) | 446 | `BLOCKED_NATIVE_ADMISSION` |
| 148 | `def` | [constFalse](declarations/constfalse.md) | 449 | `BLOCKED_NATIVE_ADMISSION` |
| 149 | `def` | [constInt'](declarations/constint.md) | 452 | `BLOCKED_NATIVE_ADMISSION` |
| 150 | `def` | [constInt1](declarations/constint1.md) | 455 | `BLOCKED_NATIVE_ADMISSION` |
| 151 | `def` | [constInt8](declarations/constint8.md) | 458 | `BLOCKED_NATIVE_ADMISSION` |
| 152 | `def` | [constInt32](declarations/constint32.md) | 461 | `BLOCKED_NATIVE_ADMISSION` |
| 153 | `def` | [constInt64](declarations/constint64.md) | 464 | `BLOCKED_NATIVE_ADMISSION` |
| 154 | `def` | [constIntSizeT](declarations/constintsizet.md) | 467 | `BLOCKED_NATIVE_ADMISSION` |
| 155 | `def` | [constIntUnsigned](declarations/constintunsigned.md) | 471 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=d48b23280cafb57d8dafad35c29f610de4627b0e907aa4257848f3188f5a2738 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/LLVMBindings/Variantff6fc9dfbe311ac499183606c106ef4ff955530ae8b2e75396a0367cca37ed92.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
