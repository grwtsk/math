# Basic Basic Namespaced Public Purity

[Complete source index](../../../../complete-source-index.md) · [Up one directory](../../../../complete-source-index.md) · [Full source](source.md)

**163 observed declarations and anonymous commands**, 0 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant89d5889cdf8d611cfb19fc7148c7e06599132230b43d41c47a24ccec0d9d98f8.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `c371cf773f9bfea2c1daa81d460c728223aafab3`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../_verification/specifications/ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/BasicBasicNamespacedPublicPurity.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `inductive` | [Purity](declarations/purity.md) | 44 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `instance` | [(anonymous)](declarations/instance.md) | 57 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `def` | [Purity.withAssertPurity](declarations/purity-withassertpurity.md) | 63 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `macro` | [(anonymous)](declarations/macro.md) | 70 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `structure` | [Param](declarations/param.md) | 72 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `def` | [Param.toExpr](declarations/param-toexpr.md) | 79 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `inductive` | [LitValue](declarations/litvalue.md) | 82 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `def` | [LitValue.toExpr](declarations/litvalue-toexpr.md) | 94 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `def` | [LitValue.impureTypeScalarNumLit](declarations/litvalue-impuretypescalarnumlit.md) | 103 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `inductive` | [Arg](declarations/arg.md) | 112 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `def` | [Param.toArg](declarations/param-toarg.md) | 118 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `def` | [Arg.toExpr](declarations/arg-toexpr.md) | 121 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `def` | [Arg.updateTypeImp](declarations/arg-updatetypeimp.md) | 127 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `opaque` | [Arg.updateType!](declarations/arg-updatetype.md) | 132 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `def` | [Arg.updateFVarImp](declarations/arg-updatefvarimp.md) | 134 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `opaque` | [Arg.updateFVar!](declarations/arg-updatefvar.md) | 139 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `structure` | [CtorInfo](declarations/ctorinfo.md) | 152 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `def` | [CtorInfo.isRef](declarations/ctorinfo-isref.md) | 160 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `def` | [CtorInfo.isScalar](declarations/ctorinfo-isscalar.md) | 163 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `def` | [CtorInfo.type](declarations/ctorinfo-type.md) | 166 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `inductive` | [LetValue](declarations/letvalue.md) | 169 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `def` | [Arg.toLetValue](declarations/arg-toletvalue.md) | 236 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `def` | [LetValue.updateProjImp](declarations/letvalue-updateprojimp.md) | 241 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `opaque` | [LetValue.updateProj!](declarations/letvalue-updateproj.md) | 249 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `def` | [LetValue.updateConstImp](declarations/letvalue-updateconstimp.md) | 251 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `opaque` | [LetValue.updateConst!](declarations/letvalue-updateconst.md) | 256 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `def` | [LetValue.updateFVarImp](declarations/letvalue-updatefvarimp.md) | 258 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `opaque` | [LetValue.updateFVar!](declarations/letvalue-updatefvar.md) | 263 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `def` | [LetValue.updateResetImp](declarations/letvalue-updateresetimp.md) | 265 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `opaque` | [LetValue.updateReset!](declarations/letvalue-updatereset.md) | 270 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `def` | [LetValue.updateReuseImp](declarations/letvalue-updatereuseimp.md) | 272 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `opaque` | [LetValue.updateReuse!](declarations/letvalue-updatereuse.md) | 282 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `def` | [LetValue.updateFapImp](declarations/letvalue-updatefapimp.md) | 285 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `opaque` | [LetValue.updateFap!](declarations/letvalue-updatefap.md) | 290 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `def` | [LetValue.updatePapImp](declarations/letvalue-updatepapimp.md) | 292 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `opaque` | [LetValue.updatePap!](declarations/letvalue-updatepap.md) | 297 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `def` | [LetValue.updateBoxImp](declarations/letvalue-updateboximp.md) | 299 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `opaque` | [LetValue.updateBox!](declarations/letvalue-updatebox.md) | 304 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `def` | [LetValue.updateUnboxImp](declarations/letvalue-updateunboximp.md) | 306 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `opaque` | [LetValue.updateUnbox!](declarations/letvalue-updateunbox.md) | 311 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `def` | [LetValue.updateIsSharedImp](declarations/letvalue-updateissharedimp.md) | 313 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `opaque` | [LetValue.updateIsShared!](declarations/letvalue-updateisshared.md) | 318 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `def` | [LetValue.updateArgsImp](declarations/letvalue-updateargsimp.md) | 320 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `opaque` | [LetValue.updateArgs!](declarations/letvalue-updateargs.md) | 331 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `def` | [LetValue.toExpr](declarations/letvalue-toexpr.md) | 333 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `def` | [LetValue.isPersistent](declarations/letvalue-ispersistent.md) | 353 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `structure` | [LetDecl](declarations/letdecl.md) | 358 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `inductive` | [Alt](declarations/alt.md) | 367 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `inductive` | [FunDecl](declarations/fundecl.md) | 372 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `inductive` | [Cases](declarations/cases.md) | 375 | `BLOCKED_NATIVE_ADMISSION` |
| 51 | `inductive` | [Code](declarations/code.md) | 379 | `BLOCKED_NATIVE_ADMISSION` |
| 52 | `def` | [FunDecl.fvarId](declarations/fundecl-fvarid.md) | 399 | `BLOCKED_NATIVE_ADMISSION` |
| 53 | `def` | [FunDecl.binderName](declarations/fundecl-bindername.md) | 403 | `BLOCKED_NATIVE_ADMISSION` |
| 54 | `def` | [FunDecl.params](declarations/fundecl-params.md) | 407 | `BLOCKED_NATIVE_ADMISSION` |
| 55 | `def` | [FunDecl.type](declarations/fundecl-type.md) | 411 | `BLOCKED_NATIVE_ADMISSION` |
| 56 | `def` | [FunDecl.value](declarations/fundecl-value.md) | 415 | `BLOCKED_NATIVE_ADMISSION` |
| 57 | `def` | [FunDecl.updateBinderName](declarations/fundecl-updatebindername.md) | 419 | `BLOCKED_NATIVE_ADMISSION` |
| 58 | `def` | [FunDecl.toParam](declarations/fundecl-toparam.md) | 424 | `BLOCKED_NATIVE_ADMISSION` |
| 59 | `def` | [Cases.typeName](declarations/cases-typename.md) | 429 | `BLOCKED_NATIVE_ADMISSION` |
| 60 | `def` | [Cases.resultType](declarations/cases-resulttype.md) | 433 | `BLOCKED_NATIVE_ADMISSION` |
| 61 | `def` | [Cases.discr](declarations/cases-discr.md) | 437 | `BLOCKED_NATIVE_ADMISSION` |
| 62 | `def` | [Cases.alts](declarations/cases-alts.md) | 441 | `BLOCKED_NATIVE_ADMISSION` |
| 63 | `def` | [Cases.updateAlts](declarations/cases-updatealts.md) | 445 | `BLOCKED_NATIVE_ADMISSION` |
| 64 | `def` | [FunDecl.getArity](declarations/fundecl-getarity.md) | 452 | `BLOCKED_NATIVE_ADMISSION` |
| 65 | `def` | [Cases.getCtorNames](declarations/cases-getctornames.md) | 458 | `BLOCKED_NATIVE_ADMISSION` |
| 66 | `inductive` | [CodeDecl](declarations/codedecl.md) | 465 | `BLOCKED_NATIVE_ADMISSION` |
| 67 | `def` | [CodeDecl.fvarId](declarations/codedecl-fvarid.md) | 478 | `BLOCKED_NATIVE_ADMISSION` |
| 68 | `def` | [Code.toCodeDecl!](declarations/code-tocodedecl.md) | 483 | `BLOCKED_NATIVE_ADMISSION` |
| 69 | `def` | [attachCodeDecls](declarations/attachcodedecls.md) | 496 | `BLOCKED_NATIVE_ADMISSION` |
| 70 | `def` | [eqImp](declarations/eqimp.md) | 516 | `BLOCKED_NATIVE_ADMISSION` |
| 71 | `def` | [eqFunDecl](declarations/eqfundecl.md) | 543 | `BLOCKED_NATIVE_ADMISSION` |
| 72 | `def` | [eqCases](declarations/eqcases.md) | 551 | `BLOCKED_NATIVE_ADMISSION` |
| 73 | `def` | [eqAlt](declarations/eqalt.md) | 555 | `BLOCKED_NATIVE_ADMISSION` |
| 74 | `opaque` | [Code.beq](declarations/code-beq.md) | 563 | `BLOCKED_NATIVE_ADMISSION` |
| 75 | `instance` | [(anonymous)](declarations/instance-source-edition-2.md) | 565 | `BLOCKED_NATIVE_ADMISSION` |
| 76 | `opaque` | [FunDecl.beq](declarations/fundecl-beq.md) | 568 | `BLOCKED_NATIVE_ADMISSION` |
| 77 | `instance` | [(anonymous)](declarations/instance-source-edition-3.md) | 570 | `BLOCKED_NATIVE_ADMISSION` |
| 78 | `def` | [Alt.getCode](declarations/alt-getcode.md) | 573 | `BLOCKED_NATIVE_ADMISSION` |
| 79 | `def` | [Alt.getParams](declarations/alt-getparams.md) | 578 | `BLOCKED_NATIVE_ADMISSION` |
| 80 | `def` | [Alt.forCodeM](declarations/alt-forcodem.md) | 582 | `BLOCKED_NATIVE_ADMISSION` |
| 81 | `def` | [updateAltCodeImp](declarations/updatealtcodeimp.md) | 588 | `BLOCKED_NATIVE_ADMISSION` |
| 82 | `opaque` | [Alt.updateCode](declarations/alt-updatecode.md) | 594 | `BLOCKED_NATIVE_ADMISSION` |
| 83 | `def` | [updateAltImp](declarations/updatealtimp.md) | 596 | `BLOCKED_NATIVE_ADMISSION` |
| 84 | `opaque` | [Alt.updateAlt!](declarations/alt-updatealt.md) | 601 | `BLOCKED_NATIVE_ADMISSION` |
| 85 | `def` | [updateAltsImp](declarations/updatealtsimp.md) | 603 | `BLOCKED_NATIVE_ADMISSION` |
| 86 | `opaque` | [Code.updateAlts!](declarations/code-updatealts.md) | 608 | `BLOCKED_NATIVE_ADMISSION` |
| 87 | `def` | [updateCasesImp](declarations/updatecasesimp.md) | 610 | `BLOCKED_NATIVE_ADMISSION` |
| 88 | `opaque` | [Code.updateCases!](declarations/code-updatecases.md) | 619 | `BLOCKED_NATIVE_ADMISSION` |
| 89 | `def` | [updateLetImp](declarations/updateletimp.md) | 621 | `BLOCKED_NATIVE_ADMISSION` |
| 90 | `opaque` | [Code.updateLet!](declarations/code-updatelet.md) | 626 | `BLOCKED_NATIVE_ADMISSION` |
| 91 | `def` | [updateContImp](declarations/updatecontimp.md) | 628 | `BLOCKED_NATIVE_ADMISSION` |
| 92 | `opaque` | [Code.updateCont!](declarations/code-updatecont.md) | 643 | `BLOCKED_NATIVE_ADMISSION` |
| 93 | `def` | [updateFunImp](declarations/updatefunimp.md) | 645 | `BLOCKED_NATIVE_ADMISSION` |
| 94 | `opaque` | [Code.updateFun!](declarations/code-updatefun.md) | 651 | `BLOCKED_NATIVE_ADMISSION` |
| 95 | `def` | [updateReturnImp](declarations/updatereturnimp.md) | 653 | `BLOCKED_NATIVE_ADMISSION` |
| 96 | `opaque` | [Code.updateReturn!](declarations/code-updatereturn.md) | 658 | `BLOCKED_NATIVE_ADMISSION` |
| 97 | `def` | [updateJmpImp](declarations/updatejmpimp.md) | 660 | `BLOCKED_NATIVE_ADMISSION` |
| 98 | `opaque` | [Code.updateJmp!](declarations/code-updatejmp.md) | 665 | `BLOCKED_NATIVE_ADMISSION` |
| 99 | `def` | [updateUnreachImp](declarations/updateunreachimp.md) | 667 | `BLOCKED_NATIVE_ADMISSION` |
| 100 | `opaque` | [Code.updateUnreach!](declarations/code-updateunreach.md) | 672 | `BLOCKED_NATIVE_ADMISSION` |
| 101 | `def` | [updateSsetImp](declarations/updatessetimp.md) | 674 | `BLOCKED_NATIVE_ADMISSION` |
| 102 | `def` | [updateOsetImp](declarations/updateosetimp.md) | 684 | `BLOCKED_NATIVE_ADMISSION` |
| 103 | `opaque` | [Code.updateOset!](declarations/code-updateoset.md) | 694 | `BLOCKED_NATIVE_ADMISSION` |
| 104 | `opaque` | [Code.updateSset!](declarations/code-updatesset.md) | 697 | `BLOCKED_NATIVE_ADMISSION` |
| 105 | `def` | [updateUsetImp](declarations/updateusetimp.md) | 700 | `BLOCKED_NATIVE_ADMISSION` |
| 106 | `opaque` | [Code.updateUset!](declarations/code-updateuset.md) | 710 | `BLOCKED_NATIVE_ADMISSION` |
| 107 | `def` | [updateSetTagImp](declarations/updatesettagimp.md) | 713 | `BLOCKED_NATIVE_ADMISSION` |
| 108 | `opaque` | [Code.updateSetTag!](declarations/code-updatesettag.md) | 723 | `BLOCKED_NATIVE_ADMISSION` |
| 109 | `def` | [updateIncImp](declarations/updateincimp.md) | 726 | `BLOCKED_NATIVE_ADMISSION` |
| 110 | `opaque` | [Code.updateInc!](declarations/code-updateinc.md) | 740 | `BLOCKED_NATIVE_ADMISSION` |
| 111 | `def` | [updateDecImp](declarations/updatedecimp.md) | 743 | `BLOCKED_NATIVE_ADMISSION` |
| 112 | `opaque` | [Code.updateDec!](declarations/code-updatedec.md) | 758 | `BLOCKED_NATIVE_ADMISSION` |
| 113 | `def` | [updateDelImp](declarations/updatedelimp.md) | 761 | `BLOCKED_NATIVE_ADMISSION` |
| 114 | `opaque` | [Code.updateDel!](declarations/code-updatedel.md) | 771 | `BLOCKED_NATIVE_ADMISSION` |
| 115 | `def` | [updateParamCoreImp](declarations/updateparamcoreimp.md) | 774 | `BLOCKED_NATIVE_ADMISSION` |
| 116 | `opaque` | [Param.updateCore](declarations/param-updatecore.md) | 785 | `BLOCKED_NATIVE_ADMISSION` |
| 117 | `def` | [updateLetDeclCoreImp](declarations/updateletdeclcoreimp.md) | 787 | `BLOCKED_NATIVE_ADMISSION` |
| 118 | `opaque` | [LetDecl.updateCore](declarations/letdecl-updatecore.md) | 798 | `BLOCKED_NATIVE_ADMISSION` |
| 119 | `def` | [updateFunDeclCoreImp](declarations/updatefundeclcoreimp.md) | 800 | `BLOCKED_NATIVE_ADMISSION` |
| 120 | `opaque` | [FunDecl.updateCore](declarations/fundecl-updatecore.md) | 811 | `BLOCKED_NATIVE_ADMISSION` |
| 121 | `def` | [Cases.extractAlt!](declarations/cases-extractalt.md) | 813 | `BLOCKED_NATIVE_ADMISSION` |
| 122 | `def` | [Alt.mapCodeM](declarations/alt-mapcodem.md) | 822 | `BLOCKED_NATIVE_ADMISSION` |
| 123 | `def` | [Code.isDecl](declarations/code-isdecl.md) | 825 | `BLOCKED_NATIVE_ADMISSION` |
| 124 | `def` | [Code.isFun](declarations/code-isfun.md) | 829 | `BLOCKED_NATIVE_ADMISSION` |
| 125 | `def` | [Code.isReturnOf](declarations/code-isreturnof.md) | 833 | `BLOCKED_NATIVE_ADMISSION` |
| 126 | `def` | [Code.size](declarations/code-size.md) | 837 | `BLOCKED_NATIVE_ADMISSION` |
| 127 | `def` | [Code.sizeLe](declarations/code-sizele.md) | 850 | `BLOCKED_NATIVE_ADMISSION` |
| 128 | `def` | [Code.forM](declarations/code-form.md) | 869 | `BLOCKED_NATIVE_ADMISSION` |
| 129 | `def` | [Code.instantiateValueLevelParams](declarations/code-instantiatevaluelevelparams.md) | 882 | `BLOCKED_NATIVE_ADMISSION` |
| 130 | `inductive` | [DeclValue](declarations/declvalue.md) | 925 | `BLOCKED_NATIVE_ADMISSION` |
| 131 | `def` | [DeclValue.size](declarations/declvalue-size.md) | 930 | `BLOCKED_NATIVE_ADMISSION` |
| 132 | `def` | [DeclValue.mapCode](declarations/declvalue-mapcode.md) | 934 | `BLOCKED_NATIVE_ADMISSION` |
| 133 | `def` | [DeclValue.mapCodeM](declarations/declvalue-mapcodem.md) | 939 | `BLOCKED_NATIVE_ADMISSION` |
| 134 | `def` | [DeclValue.forCodeM](declarations/declvalue-forcodem.md) | 945 | `BLOCKED_NATIVE_ADMISSION` |
| 135 | `def` | [DeclValue.isCodeAndM](declarations/declvalue-iscodeandm.md) | 951 | `BLOCKED_NATIVE_ADMISSION` |
| 136 | `structure` | [Signature](declarations/signature.md) | 959 | `BLOCKED_NATIVE_ADMISSION` |
| 137 | `structure` | [Decl](declarations/decl.md) | 1008 | `BLOCKED_NATIVE_ADMISSION` |
| 138 | `def` | [Decl.size](declarations/decl-size.md) | 1031 | `BLOCKED_NATIVE_ADMISSION` |
| 139 | `def` | [Decl.getArity](declarations/decl-getarity.md) | 1034 | `BLOCKED_NATIVE_ADMISSION` |
| 140 | `def` | [Decl.inlineAttr](declarations/decl-inlineattr.md) | 1037 | `BLOCKED_NATIVE_ADMISSION` |
| 141 | `def` | [Decl.noinlineAttr](declarations/decl-noinlineattr.md) | 1040 | `BLOCKED_NATIVE_ADMISSION` |
| 142 | `def` | [Decl.inlineIfReduceAttr](declarations/decl-inlineifreduceattr.md) | 1043 | `BLOCKED_NATIVE_ADMISSION` |
| 143 | `def` | [Decl.alwaysInlineAttr](declarations/decl-alwaysinlineattr.md) | 1046 | `BLOCKED_NATIVE_ADMISSION` |
| 144 | `def` | [Decl.inlineable](declarations/decl-inlineable.md) | 1050 | `BLOCKED_NATIVE_ADMISSION` |
| 145 | `def` | [Decl.castPurity!](declarations/decl-castpurity.md) | 1056 | `BLOCKED_NATIVE_ADMISSION` |
| 146 | `def` | [Decl.isCasesOnParam?](declarations/decl-iscasesonparam.md) | 1075 | `BLOCKED_NATIVE_ADMISSION` |
| 147 | `def` | [Decl.instantiateTypeLevelParams](declarations/decl-instantiatetypelevelparams.md) | 1086 | `BLOCKED_NATIVE_ADMISSION` |
| 148 | `def` | [Decl.instantiateParamsLevelParams](declarations/decl-instantiateparamslevelparams.md) | 1089 | `BLOCKED_NATIVE_ADMISSION` |
| 149 | `def` | [hasLocalInst](declarations/haslocalinst.md) | 1095 | `BLOCKED_NATIVE_ADMISSION` |
| 150 | `def` | [Decl.isTemplateLike](declarations/decl-istemplatelike.md) | 1106 | `BLOCKED_NATIVE_ADMISSION` |
| 151 | `def` | [collectType](declarations/collecttype.md) | 1117 | `BLOCKED_NATIVE_ADMISSION` |
| 152 | `def` | [collectArg](declarations/collectarg.md) | 1130 | `BLOCKED_NATIVE_ADMISSION` |
| 153 | `def` | [collectArgs](declarations/collectargs.md) | 1136 | `BLOCKED_NATIVE_ADMISSION` |
| 154 | `def` | [collectLetValue](declarations/collectletvalue.md) | 1139 | `BLOCKED_NATIVE_ADMISSION` |
| 155 | `def` | [collectParams](declarations/collectparams.md) | 1148 | `BLOCKED_NATIVE_ADMISSION` |
| 156 | `def` | [FunDecl.collectUsed](declarations/fundecl-collectused.md) | 1152 | `BLOCKED_NATIVE_ADMISSION` |
| 157 | `def` | [Code.collectUsed](declarations/code-collectused.md) | 1155 | `BLOCKED_NATIVE_ADMISSION` |
| 158 | `def` | [collectUsedAtExpr](declarations/collectusedatexpr.md) | 1182 | `BLOCKED_NATIVE_ADMISSION` |
| 159 | `def` | [CodeDecl.collectUsed](declarations/codedecl-collectused.md) | 1185 | `BLOCKED_NATIVE_ADMISSION` |
| 160 | `def` | [markRecDecls](declarations/markrecdecls.md) | 1205 | `BLOCKED_NATIVE_ADMISSION` |
| 161 | `def` | [instantiateRangeArgs](declarations/instantiaterangeargs.md) | 1231 | `BLOCKED_NATIVE_ADMISSION` |
| 162 | `def` | [instantiateRevRangeArgs](declarations/instantiaterevrangeargs.md) | 1237 | `BLOCKED_NATIVE_ADMISSION` |
| 163 | `def` | [findExtEntry?](declarations/findextentry.md) | 1251 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=9ea6449326d58d2d8c809f8ca50dacb7f82c1f959b22fe071186072f74f20bf5 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant89d5889cdf8d611cfb19fc7148c7e06599132230b43d41c47a24ccec0d9d98f8.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
