# Basic Basic Public Purity

[Complete source index](../../../../complete-source-index.md) · [Up one directory](../../../../complete-source-index.md) · [Full source](source.md)

**163 observed declarations and anonymous commands**, 0 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant9f86cfac11a407fd0300259723aff0e8f831c7e08eccede4e471c4332f2e6f0b.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `55d9349922caca962355b592fb556e2a5b699fdd`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../_verification/specifications/ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/BasicBasicPublicPurity.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `inductive` | [Purity](declarations/purity.md) | 36 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `instance` | [(anonymous)](declarations/instance-source-edition-2.md) | 49 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `def` | [Purity.withAssertPurity](declarations/purity-withassertpurity.md) | 55 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `macro` | [(anonymous)](declarations/macro.md) | 62 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `structure` | [Param](declarations/param.md) | 64 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `def` | [Param.toExpr](declarations/param-toexpr.md) | 71 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `inductive` | [LitValue](declarations/litvalue.md) | 74 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `def` | [LitValue.toExpr](declarations/litvalue-toexpr.md) | 86 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `def` | [LitValue.impureTypeScalarNumLit](declarations/litvalue-impuretypescalarnumlit.md) | 95 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `inductive` | [Arg](declarations/arg.md) | 104 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `def` | [Param.toArg](declarations/param-toarg.md) | 110 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `def` | [Arg.toExpr](declarations/arg-toexpr.md) | 113 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `def` | [Arg.updateTypeImp](declarations/arg-updatetypeimp.md) | 119 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `opaque` | [Arg.updateType!](declarations/arg-updatetype.md) | 124 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `def` | [Arg.updateFVarImp](declarations/arg-updatefvarimp.md) | 126 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `opaque` | [Arg.updateFVar!](declarations/arg-updatefvar.md) | 131 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `structure` | [CtorInfo](declarations/ctorinfo.md) | 144 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `def` | [CtorInfo.isRef](declarations/ctorinfo-isref.md) | 152 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `def` | [CtorInfo.isScalar](declarations/ctorinfo-isscalar.md) | 155 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `def` | [CtorInfo.type](declarations/ctorinfo-type.md) | 158 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `inductive` | [LetValue](declarations/letvalue.md) | 161 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `def` | [Arg.toLetValue](declarations/arg-toletvalue.md) | 228 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `def` | [LetValue.updateProjImp](declarations/letvalue-updateprojimp.md) | 233 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `opaque` | [LetValue.updateProj!](declarations/letvalue-updateproj.md) | 241 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `def` | [LetValue.updateConstImp](declarations/letvalue-updateconstimp.md) | 243 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `opaque` | [LetValue.updateConst!](declarations/letvalue-updateconst.md) | 248 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `def` | [LetValue.updateFVarImp](declarations/letvalue-updatefvarimp.md) | 250 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `opaque` | [LetValue.updateFVar!](declarations/letvalue-updatefvar.md) | 255 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `def` | [LetValue.updateResetImp](declarations/letvalue-updateresetimp.md) | 257 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `opaque` | [LetValue.updateReset!](declarations/letvalue-updatereset.md) | 262 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `def` | [LetValue.updateReuseImp](declarations/letvalue-updatereuseimp.md) | 264 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `opaque` | [LetValue.updateReuse!](declarations/letvalue-updatereuse.md) | 274 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `def` | [LetValue.updateFapImp](declarations/letvalue-updatefapimp.md) | 277 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `opaque` | [LetValue.updateFap!](declarations/letvalue-updatefap.md) | 282 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `def` | [LetValue.updatePapImp](declarations/letvalue-updatepapimp.md) | 284 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `opaque` | [LetValue.updatePap!](declarations/letvalue-updatepap.md) | 289 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `def` | [LetValue.updateBoxImp](declarations/letvalue-updateboximp.md) | 291 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `opaque` | [LetValue.updateBox!](declarations/letvalue-updatebox.md) | 296 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `def` | [LetValue.updateUnboxImp](declarations/letvalue-updateunboximp.md) | 298 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `opaque` | [LetValue.updateUnbox!](declarations/letvalue-updateunbox.md) | 303 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `def` | [LetValue.updateIsSharedImp](declarations/letvalue-updateissharedimp.md) | 305 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `opaque` | [LetValue.updateIsShared!](declarations/letvalue-updateisshared.md) | 310 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `def` | [LetValue.updateArgsImp](declarations/letvalue-updateargsimp.md) | 312 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `opaque` | [LetValue.updateArgs!](declarations/letvalue-updateargs.md) | 323 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `def` | [LetValue.toExpr](declarations/letvalue-toexpr.md) | 325 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `def` | [LetValue.isPersistent](declarations/letvalue-ispersistent.md) | 345 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `structure` | [LetDecl](declarations/letdecl.md) | 350 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `inductive` | [Alt](declarations/alt.md) | 359 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `inductive` | [FunDecl](declarations/fundecl.md) | 364 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `inductive` | [Cases](declarations/cases.md) | 367 | `BLOCKED_NATIVE_ADMISSION` |
| 51 | `inductive` | [Code](declarations/code.md) | 371 | `BLOCKED_NATIVE_ADMISSION` |
| 52 | `def` | [FunDecl.fvarId](declarations/fundecl-fvarid.md) | 391 | `BLOCKED_NATIVE_ADMISSION` |
| 53 | `def` | [FunDecl.binderName](declarations/fundecl-bindername.md) | 395 | `BLOCKED_NATIVE_ADMISSION` |
| 54 | `def` | [FunDecl.params](declarations/fundecl-params.md) | 399 | `BLOCKED_NATIVE_ADMISSION` |
| 55 | `def` | [FunDecl.type](declarations/fundecl-type.md) | 403 | `BLOCKED_NATIVE_ADMISSION` |
| 56 | `def` | [FunDecl.value](declarations/fundecl-value.md) | 407 | `BLOCKED_NATIVE_ADMISSION` |
| 57 | `def` | [FunDecl.updateBinderName](declarations/fundecl-updatebindername.md) | 411 | `BLOCKED_NATIVE_ADMISSION` |
| 58 | `def` | [FunDecl.toParam](declarations/fundecl-toparam.md) | 416 | `BLOCKED_NATIVE_ADMISSION` |
| 59 | `def` | [Cases.typeName](declarations/cases-typename.md) | 421 | `BLOCKED_NATIVE_ADMISSION` |
| 60 | `def` | [Cases.resultType](declarations/cases-resulttype.md) | 425 | `BLOCKED_NATIVE_ADMISSION` |
| 61 | `def` | [Cases.discr](declarations/cases-discr.md) | 429 | `BLOCKED_NATIVE_ADMISSION` |
| 62 | `def` | [Cases.alts](declarations/cases-alts.md) | 433 | `BLOCKED_NATIVE_ADMISSION` |
| 63 | `def` | [Cases.updateAlts](declarations/cases-updatealts.md) | 437 | `BLOCKED_NATIVE_ADMISSION` |
| 64 | `def` | [FunDecl.getArity](declarations/fundecl-getarity.md) | 444 | `BLOCKED_NATIVE_ADMISSION` |
| 65 | `def` | [Cases.getCtorNames](declarations/cases-getctornames.md) | 450 | `BLOCKED_NATIVE_ADMISSION` |
| 66 | `inductive` | [CodeDecl](declarations/codedecl.md) | 457 | `BLOCKED_NATIVE_ADMISSION` |
| 67 | `def` | [CodeDecl.fvarId](declarations/codedecl-fvarid.md) | 470 | `BLOCKED_NATIVE_ADMISSION` |
| 68 | `def` | [Code.toCodeDecl!](declarations/code-tocodedecl.md) | 475 | `BLOCKED_NATIVE_ADMISSION` |
| 69 | `def` | [attachCodeDecls](declarations/attachcodedecls.md) | 488 | `BLOCKED_NATIVE_ADMISSION` |
| 70 | `def` | [eqImp](declarations/eqimp.md) | 508 | `BLOCKED_NATIVE_ADMISSION` |
| 71 | `def` | [eqFunDecl](declarations/eqfundecl.md) | 535 | `BLOCKED_NATIVE_ADMISSION` |
| 72 | `def` | [eqCases](declarations/eqcases.md) | 543 | `BLOCKED_NATIVE_ADMISSION` |
| 73 | `def` | [eqAlt](declarations/eqalt.md) | 547 | `BLOCKED_NATIVE_ADMISSION` |
| 74 | `opaque` | [Code.beq](declarations/code-beq.md) | 555 | `BLOCKED_NATIVE_ADMISSION` |
| 75 | `instance` | [(anonymous)](declarations/instance.md) | 557 | `BLOCKED_NATIVE_ADMISSION` |
| 76 | `opaque` | [FunDecl.beq](declarations/fundecl-beq.md) | 560 | `BLOCKED_NATIVE_ADMISSION` |
| 77 | `instance` | [(anonymous)](declarations/instance-source-edition-3.md) | 562 | `BLOCKED_NATIVE_ADMISSION` |
| 78 | `def` | [Alt.getCode](declarations/alt-getcode.md) | 565 | `BLOCKED_NATIVE_ADMISSION` |
| 79 | `def` | [Alt.getParams](declarations/alt-getparams.md) | 570 | `BLOCKED_NATIVE_ADMISSION` |
| 80 | `def` | [Alt.forCodeM](declarations/alt-forcodem.md) | 574 | `BLOCKED_NATIVE_ADMISSION` |
| 81 | `def` | [updateAltCodeImp](declarations/updatealtcodeimp.md) | 580 | `BLOCKED_NATIVE_ADMISSION` |
| 82 | `opaque` | [Alt.updateCode](declarations/alt-updatecode.md) | 586 | `BLOCKED_NATIVE_ADMISSION` |
| 83 | `def` | [updateAltImp](declarations/updatealtimp.md) | 588 | `BLOCKED_NATIVE_ADMISSION` |
| 84 | `opaque` | [Alt.updateAlt!](declarations/alt-updatealt.md) | 593 | `BLOCKED_NATIVE_ADMISSION` |
| 85 | `def` | [updateAltsImp](declarations/updatealtsimp.md) | 595 | `BLOCKED_NATIVE_ADMISSION` |
| 86 | `opaque` | [Code.updateAlts!](declarations/code-updatealts.md) | 600 | `BLOCKED_NATIVE_ADMISSION` |
| 87 | `def` | [updateCasesImp](declarations/updatecasesimp.md) | 602 | `BLOCKED_NATIVE_ADMISSION` |
| 88 | `opaque` | [Code.updateCases!](declarations/code-updatecases.md) | 611 | `BLOCKED_NATIVE_ADMISSION` |
| 89 | `def` | [updateLetImp](declarations/updateletimp.md) | 613 | `BLOCKED_NATIVE_ADMISSION` |
| 90 | `opaque` | [Code.updateLet!](declarations/code-updatelet.md) | 618 | `BLOCKED_NATIVE_ADMISSION` |
| 91 | `def` | [updateContImp](declarations/updatecontimp.md) | 620 | `BLOCKED_NATIVE_ADMISSION` |
| 92 | `opaque` | [Code.updateCont!](declarations/code-updatecont.md) | 635 | `BLOCKED_NATIVE_ADMISSION` |
| 93 | `def` | [updateFunImp](declarations/updatefunimp.md) | 637 | `BLOCKED_NATIVE_ADMISSION` |
| 94 | `opaque` | [Code.updateFun!](declarations/code-updatefun.md) | 643 | `BLOCKED_NATIVE_ADMISSION` |
| 95 | `def` | [updateReturnImp](declarations/updatereturnimp.md) | 645 | `BLOCKED_NATIVE_ADMISSION` |
| 96 | `opaque` | [Code.updateReturn!](declarations/code-updatereturn.md) | 650 | `BLOCKED_NATIVE_ADMISSION` |
| 97 | `def` | [updateJmpImp](declarations/updatejmpimp.md) | 652 | `BLOCKED_NATIVE_ADMISSION` |
| 98 | `opaque` | [Code.updateJmp!](declarations/code-updatejmp.md) | 657 | `BLOCKED_NATIVE_ADMISSION` |
| 99 | `def` | [updateUnreachImp](declarations/updateunreachimp.md) | 659 | `BLOCKED_NATIVE_ADMISSION` |
| 100 | `opaque` | [Code.updateUnreach!](declarations/code-updateunreach.md) | 664 | `BLOCKED_NATIVE_ADMISSION` |
| 101 | `def` | [updateSsetImp](declarations/updatessetimp.md) | 666 | `BLOCKED_NATIVE_ADMISSION` |
| 102 | `def` | [updateOsetImp](declarations/updateosetimp.md) | 676 | `BLOCKED_NATIVE_ADMISSION` |
| 103 | `opaque` | [Code.updateOset!](declarations/code-updateoset.md) | 686 | `BLOCKED_NATIVE_ADMISSION` |
| 104 | `opaque` | [Code.updateSset!](declarations/code-updatesset.md) | 689 | `BLOCKED_NATIVE_ADMISSION` |
| 105 | `def` | [updateUsetImp](declarations/updateusetimp.md) | 692 | `BLOCKED_NATIVE_ADMISSION` |
| 106 | `opaque` | [Code.updateUset!](declarations/code-updateuset.md) | 702 | `BLOCKED_NATIVE_ADMISSION` |
| 107 | `def` | [updateSetTagImp](declarations/updatesettagimp.md) | 705 | `BLOCKED_NATIVE_ADMISSION` |
| 108 | `opaque` | [Code.updateSetTag!](declarations/code-updatesettag.md) | 715 | `BLOCKED_NATIVE_ADMISSION` |
| 109 | `def` | [updateIncImp](declarations/updateincimp.md) | 718 | `BLOCKED_NATIVE_ADMISSION` |
| 110 | `opaque` | [Code.updateInc!](declarations/code-updateinc.md) | 732 | `BLOCKED_NATIVE_ADMISSION` |
| 111 | `def` | [updateDecImp](declarations/updatedecimp.md) | 735 | `BLOCKED_NATIVE_ADMISSION` |
| 112 | `opaque` | [Code.updateDec!](declarations/code-updatedec.md) | 750 | `BLOCKED_NATIVE_ADMISSION` |
| 113 | `def` | [updateDelImp](declarations/updatedelimp.md) | 753 | `BLOCKED_NATIVE_ADMISSION` |
| 114 | `opaque` | [Code.updateDel!](declarations/code-updatedel.md) | 763 | `BLOCKED_NATIVE_ADMISSION` |
| 115 | `def` | [updateParamCoreImp](declarations/updateparamcoreimp.md) | 766 | `BLOCKED_NATIVE_ADMISSION` |
| 116 | `opaque` | [Param.updateCore](declarations/param-updatecore.md) | 777 | `BLOCKED_NATIVE_ADMISSION` |
| 117 | `def` | [updateLetDeclCoreImp](declarations/updateletdeclcoreimp.md) | 779 | `BLOCKED_NATIVE_ADMISSION` |
| 118 | `opaque` | [LetDecl.updateCore](declarations/letdecl-updatecore.md) | 790 | `BLOCKED_NATIVE_ADMISSION` |
| 119 | `def` | [updateFunDeclCoreImp](declarations/updatefundeclcoreimp.md) | 792 | `BLOCKED_NATIVE_ADMISSION` |
| 120 | `opaque` | [FunDecl.updateCore](declarations/fundecl-updatecore.md) | 803 | `BLOCKED_NATIVE_ADMISSION` |
| 121 | `def` | [Cases.extractAlt!](declarations/cases-extractalt.md) | 805 | `BLOCKED_NATIVE_ADMISSION` |
| 122 | `def` | [Alt.mapCodeM](declarations/alt-mapcodem.md) | 814 | `BLOCKED_NATIVE_ADMISSION` |
| 123 | `def` | [Code.isDecl](declarations/code-isdecl.md) | 817 | `BLOCKED_NATIVE_ADMISSION` |
| 124 | `def` | [Code.isFun](declarations/code-isfun.md) | 821 | `BLOCKED_NATIVE_ADMISSION` |
| 125 | `def` | [Code.isReturnOf](declarations/code-isreturnof.md) | 825 | `BLOCKED_NATIVE_ADMISSION` |
| 126 | `def` | [Code.size](declarations/code-size.md) | 829 | `BLOCKED_NATIVE_ADMISSION` |
| 127 | `def` | [Code.sizeLe](declarations/code-sizele.md) | 842 | `BLOCKED_NATIVE_ADMISSION` |
| 128 | `def` | [Code.forM](declarations/code-form.md) | 861 | `BLOCKED_NATIVE_ADMISSION` |
| 129 | `def` | [Code.instantiateValueLevelParams](declarations/code-instantiatevaluelevelparams.md) | 874 | `BLOCKED_NATIVE_ADMISSION` |
| 130 | `inductive` | [DeclValue](declarations/declvalue.md) | 917 | `BLOCKED_NATIVE_ADMISSION` |
| 131 | `def` | [DeclValue.size](declarations/declvalue-size.md) | 922 | `BLOCKED_NATIVE_ADMISSION` |
| 132 | `def` | [DeclValue.mapCode](declarations/declvalue-mapcode.md) | 926 | `BLOCKED_NATIVE_ADMISSION` |
| 133 | `def` | [DeclValue.mapCodeM](declarations/declvalue-mapcodem.md) | 931 | `BLOCKED_NATIVE_ADMISSION` |
| 134 | `def` | [DeclValue.forCodeM](declarations/declvalue-forcodem.md) | 937 | `BLOCKED_NATIVE_ADMISSION` |
| 135 | `def` | [DeclValue.isCodeAndM](declarations/declvalue-iscodeandm.md) | 943 | `BLOCKED_NATIVE_ADMISSION` |
| 136 | `structure` | [Signature](declarations/signature.md) | 951 | `BLOCKED_NATIVE_ADMISSION` |
| 137 | `structure` | [Decl](declarations/decl.md) | 1000 | `BLOCKED_NATIVE_ADMISSION` |
| 138 | `def` | [Decl.size](declarations/decl-size.md) | 1023 | `BLOCKED_NATIVE_ADMISSION` |
| 139 | `def` | [Decl.getArity](declarations/decl-getarity.md) | 1026 | `BLOCKED_NATIVE_ADMISSION` |
| 140 | `def` | [Decl.inlineAttr](declarations/decl-inlineattr.md) | 1029 | `BLOCKED_NATIVE_ADMISSION` |
| 141 | `def` | [Decl.noinlineAttr](declarations/decl-noinlineattr.md) | 1032 | `BLOCKED_NATIVE_ADMISSION` |
| 142 | `def` | [Decl.inlineIfReduceAttr](declarations/decl-inlineifreduceattr.md) | 1035 | `BLOCKED_NATIVE_ADMISSION` |
| 143 | `def` | [Decl.alwaysInlineAttr](declarations/decl-alwaysinlineattr.md) | 1038 | `BLOCKED_NATIVE_ADMISSION` |
| 144 | `def` | [Decl.inlineable](declarations/decl-inlineable.md) | 1042 | `BLOCKED_NATIVE_ADMISSION` |
| 145 | `def` | [Decl.castPurity!](declarations/decl-castpurity.md) | 1048 | `BLOCKED_NATIVE_ADMISSION` |
| 146 | `def` | [Decl.isCasesOnParam?](declarations/decl-iscasesonparam.md) | 1067 | `BLOCKED_NATIVE_ADMISSION` |
| 147 | `def` | [Decl.instantiateTypeLevelParams](declarations/decl-instantiatetypelevelparams.md) | 1078 | `BLOCKED_NATIVE_ADMISSION` |
| 148 | `def` | [Decl.instantiateParamsLevelParams](declarations/decl-instantiateparamslevelparams.md) | 1081 | `BLOCKED_NATIVE_ADMISSION` |
| 149 | `def` | [hasLocalInst](declarations/haslocalinst.md) | 1087 | `BLOCKED_NATIVE_ADMISSION` |
| 150 | `def` | [Decl.isTemplateLike](declarations/decl-istemplatelike.md) | 1098 | `BLOCKED_NATIVE_ADMISSION` |
| 151 | `def` | [collectType](declarations/collecttype.md) | 1109 | `BLOCKED_NATIVE_ADMISSION` |
| 152 | `def` | [collectArg](declarations/collectarg.md) | 1122 | `BLOCKED_NATIVE_ADMISSION` |
| 153 | `def` | [collectArgs](declarations/collectargs.md) | 1128 | `BLOCKED_NATIVE_ADMISSION` |
| 154 | `def` | [collectLetValue](declarations/collectletvalue.md) | 1131 | `BLOCKED_NATIVE_ADMISSION` |
| 155 | `def` | [collectParams](declarations/collectparams.md) | 1140 | `BLOCKED_NATIVE_ADMISSION` |
| 156 | `def` | [FunDecl.collectUsed](declarations/fundecl-collectused.md) | 1144 | `BLOCKED_NATIVE_ADMISSION` |
| 157 | `def` | [Code.collectUsed](declarations/code-collectused.md) | 1147 | `BLOCKED_NATIVE_ADMISSION` |
| 158 | `def` | [collectUsedAtExpr](declarations/collectusedatexpr.md) | 1174 | `BLOCKED_NATIVE_ADMISSION` |
| 159 | `def` | [CodeDecl.collectUsed](declarations/codedecl-collectused.md) | 1177 | `BLOCKED_NATIVE_ADMISSION` |
| 160 | `def` | [markRecDecls](declarations/markrecdecls.md) | 1197 | `BLOCKED_NATIVE_ADMISSION` |
| 161 | `def` | [instantiateRangeArgs](declarations/instantiaterangeargs.md) | 1223 | `BLOCKED_NATIVE_ADMISSION` |
| 162 | `def` | [instantiateRevRangeArgs](declarations/instantiaterevrangeargs.md) | 1229 | `BLOCKED_NATIVE_ADMISSION` |
| 163 | `def` | [findExtEntry?](declarations/findextentry.md) | 1243 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=f8590e1abdb571cd324bd3c2450eb95ed18969e0081d3cac1fb6a79d53071dea -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant9f86cfac11a407fd0300259723aff0e8f831c7e08eccede4e471c4332f2e6f0b.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
