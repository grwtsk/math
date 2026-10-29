# EMatch Theorem Public

[Complete source index](../../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**115 observed declarations and anonymous commands**, 2 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/EMatchTheorem/Variant7862e0cc7cb98de3bcf3970865c0d8ef0926cd7112c0ec42a4d5d16d8502db50.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `9d947cf9bc70039e5adf3ad5b7759178dd0d52bf`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../_verification/specifications/ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/EMatchTheoremPublic.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `structure` | [SymbolPriorityEntry](declarations/symbolpriorityentry.md) | 28 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `def` | [SymbolPriorities.erase](declarations/symbolpriorities-erase.md) | 34 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `def` | [SymbolPriorities.getPrio](declarations/symbolpriorities-getprio.md) | 38 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `def` | [SymbolPriorities.contains](declarations/symbolpriorities-contains.md) | 48 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `builtin_initialize` | [(anonymous)](declarations/builtin-initialize.md) | 51 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `def` | [resetSymbolPrioExt](declarations/resetsymbolprioext.md) | 57 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `def` | [getGlobalSymbolPriorities](declarations/getglobalsymbolpriorities.md) | 60 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `def` | [addSymbolPriorityAttr](declarations/addsymbolpriorityattr.md) | 64 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `def` | [mkOffsetPattern](declarations/mkoffsetpattern.md) | 67 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `def` | [detectOffsets](declarations/detectoffsets.md) | 70 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `def` | [isOffsetPattern?](declarations/isoffsetpattern.md) | 84 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `def` | [expandOffsetPatterns](declarations/expandoffsetpatterns.md) | 93 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `def` | [mkEqBwdPattern](declarations/mkeqbwdpattern.md) | 104 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `def` | [isEqBwdPattern](declarations/iseqbwdpattern-source-edition-2.md) | 107 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `def` | [isEqBwdPattern?](declarations/iseqbwdpattern.md) | 110 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `def` | [mkGenPattern](declarations/mkgenpattern.md) | 115 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `def` | [mkGenHEqPattern](declarations/mkgenheqpattern.md) | 118 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `structure` | [GenPatternInfo](declarations/genpatterninfo.md) | 122 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `def` | [isGenPattern?](declarations/isgenpattern.md) | 128 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `def` | [isMatchCongrEqDeclName](declarations/ismatchcongreqdeclname.md) | 141 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `def` | [isMatchCongrEqConst](declarations/ismatchcongreqconst.md) | 152 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `def` | [preprocessMatchCongrEqType](declarations/preprocessmatchcongreqtype.md) | 186 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `def` | [detectGeneralizedPatterns?](declarations/detectgeneralizedpatterns.md) | 229 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `def` | [inferEMatchProofType](declarations/inferematchprooftype.md) | 267 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `def` | [normConfig](declarations/normconfig.md) | 277 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [normConfig_zeta](declarations/normconfig-zeta.md) | 278 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [normConfig_zetaDelta](declarations/normconfig-zetadelta.md) | 279 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `def` | [preprocessPattern](declarations/preprocesspattern.md) | 281 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `def` | [EMatchTheoremKind.isEqLhs](declarations/ematchtheoremkind-iseqlhs.md) | 292 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `def` | [EMatchTheoremKind.isDefault](declarations/ematchtheoremkind-isdefault.md) | 296 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `def` | [EMatchTheoremKind.toAttributeCore](declarations/ematchtheoremkind-toattributecore.md) | 300 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `def` | [EMatchTheoremKind.toAttribute](declarations/ematchtheoremkind-toattribute.md) | 318 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `def` | [EMatchTheoremKind.explainFailure](declarations/ematchtheoremkind-explainfailure.md) | 326 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `abbrev` | [EMatchTheorems](declarations/ematchtheorems.md) | 340 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `abbrev` | [EMatchTheoremsArray](declarations/ematchtheoremsarray.md) | 343 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `def` | [EMatchTheorems.containsWithSamePatterns](declarations/ematchtheorems-containswithsamepatterns.md) | 348 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `def` | [ExtensionStateArray.containsWithSamePatterns](declarations/extensionstatearray-containswithsamepatterns.md) | 353 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `def` | [EMatchTheorems.getKindsFor](declarations/ematchtheorems-getkindsfor.md) | 357 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `def` | [EMatchTheorem.getProofWithFreshMVarLevels](declarations/ematchtheorem-getproofwithfreshmvarlevels.md) | 361 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `def` | [splitWhileForbidden](declarations/splitwhileforbidden.md) | 381 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `def` | [dontCare](declarations/dontcare.md) | 391 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `def` | [mkGroundPattern](declarations/mkgroundpattern.md) | 393 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `def` | [canonLit](declarations/canonlit.md) | 409 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `def` | [groundPattern?](declarations/groundpattern.md) | 417 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `def` | [isGroundPattern](declarations/isgroundpattern.md) | 420 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `def` | [isPatternDontCare](declarations/ispatterndontcare.md) | 423 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `def` | [isAtomicPattern](declarations/isatomicpattern.md) | 426 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `def` | [ppPattern](declarations/pppattern.md) | 429 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `structure` | [State](declarations/state.md) | 455 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `structure` | [Context](declarations/context.md) | 460 | `BLOCKED_NATIVE_ADMISSION` |
| 51 | `abbrev` | [M](declarations/m.md) | 465 | `BLOCKED_NATIVE_ADMISSION` |
| 52 | `def` | [isCandidateSymbol](declarations/iscandidatesymbol.md) | 467 | `BLOCKED_NATIVE_ADMISSION` |
| 53 | `def` | [saveSymbol](declarations/savesymbol.md) | 478 | `BLOCKED_NATIVE_ADMISSION` |
| 54 | `def` | [saveSymbolsAt](declarations/savesymbolsat.md) | 486 | `BLOCKED_NATIVE_ADMISSION` |
| 55 | `def` | [foundBVar](declarations/foundbvar.md) | 502 | `BLOCKED_NATIVE_ADMISSION` |
| 56 | `def` | [saveBVar](declarations/savebvar.md) | 505 | `BLOCKED_NATIVE_ADMISSION` |
| 57 | `inductive` | [PatternArgKind](declarations/patternargkind.md) | 508 | `BLOCKED_NATIVE_ADMISSION` |
| 58 | `def` | [PatternArgKind.isSupport](declarations/patternargkind-issupport.md) | 563 | `BLOCKED_NATIVE_ADMISSION` |
| 59 | `def` | [getPatternArgKinds](declarations/getpatternargkinds.md) | 576 | `BLOCKED_NATIVE_ADMISSION` |
| 60 | `def` | [getPatternFn?](declarations/getpatternfn.md) | 621 | `BLOCKED_NATIVE_ADMISSION` |
| 61 | `inductive` | [ParentKind](declarations/parentkind.md) | 646 | `BLOCKED_NATIVE_ADMISSION` |
| 62 | `def` | [toParentKind](declarations/toparentkind.md) | 661 | `BLOCKED_NATIVE_ADMISSION` |
| 63 | `def` | [go](declarations/go.md) | 672 | `BLOCKED_NATIVE_ADMISSION` |
| 64 | `def` | [main](declarations/main.md) | 730 | `BLOCKED_NATIVE_ADMISSION` |
| 65 | `def` | [normalizePattern](declarations/normalizepattern.md) | 734 | `BLOCKED_NATIVE_ADMISSION` |
| 66 | `def` | [checkTypeFVars](declarations/checktypefvars.md) | 743 | `BLOCKED_NATIVE_ADMISSION` |
| 67 | `def` | [canBeSynthesized](declarations/canbesynthesized.md) | 753 | `BLOCKED_NATIVE_ADMISSION` |
| 68 | `inductive` | [CheckCoverageResult](declarations/checkcoverageresult.md) | 768 | `BLOCKED_NATIVE_ADMISSION` |
| 69 | `def` | [checkCoverage](declarations/checkcoverage.md) | 787 | `BLOCKED_NATIVE_ADMISSION` |
| 70 | `def` | [ppParamsAt](declarations/ppparamsat.md) | 857 | `BLOCKED_NATIVE_ADMISSION` |
| 71 | `def` | [logPatternWhen](declarations/logpatternwhen.md) | 868 | `BLOCKED_NATIVE_ADMISSION` |
| 72 | `def` | [mkEMatchTheoremCore](declarations/mkematchtheoremcore.md) | 876 | `BLOCKED_NATIVE_ADMISSION` |
| 73 | `def` | [getProofFor](declarations/getprooffor.md) | 892 | `BLOCKED_NATIVE_ADMISSION` |
| 74 | `def` | [mkEMatchTheorem](declarations/mkematchtheorem.md) | 905 | `BLOCKED_NATIVE_ADMISSION` |
| 75 | `def` | [mkEMatchEqTheoremCore](declarations/mkematcheqtheoremcore.md) | 914 | `BLOCKED_NATIVE_ADMISSION` |
| 76 | `def` | [mkEMatchEqBwdTheoremCore](declarations/mkematcheqbwdtheoremcore.md) | 931 | `BLOCKED_NATIVE_ADMISSION` |
| 77 | `def` | [Extension.isEMatchTheorem](declarations/extension-isematchtheorem.md) | 940 | `BLOCKED_NATIVE_ADMISSION` |
| 78 | `def` | [Extension.getEMatchTheorems](declarations/extension-getematchtheorems.md) | 943 | `BLOCKED_NATIVE_ADMISSION` |
| 79 | `def` | [Extension.getEMatchTheoremsForNamespace](declarations/extension-getematchtheoremsfornamespace.md) | 948 | `BLOCKED_NATIVE_ADMISSION` |
| 80 | `def` | [mkEMatchEqTheorem](declarations/mkematcheqtheorem.md) | 963 | `BLOCKED_NATIVE_ADMISSION` |
| 81 | `def` | [Extension.addEMatchTheorem](declarations/extension-addematchtheorem.md) | 970 | `BLOCKED_NATIVE_ADMISSION` |
| 82 | `def` | [Extension.addEMatchEqTheorem](declarations/extension-addematcheqtheorem.md) | 978 | `BLOCKED_NATIVE_ADMISSION` |
| 83 | `def` | [getPropTypes](declarations/getproptypes.md) | 982 | `BLOCKED_NATIVE_ADMISSION` |
| 84 | `structure` | [Collector.State](declarations/collector-state.md) | 988 | `BLOCKED_NATIVE_ADMISSION` |
| 85 | `structure` | [Collector.Context](declarations/collector-context.md) | 993 | `BLOCKED_NATIVE_ADMISSION` |
| 86 | `abbrev` | [CollectorM](declarations/collectorm.md) | 998 | `BLOCKED_NATIVE_ADMISSION` |
| 87 | `def` | [isPatternFnCandidate](declarations/ispatternfncandidate.md) | 1001 | `BLOCKED_NATIVE_ADMISSION` |
| 88 | `def` | [addNewPattern](declarations/addnewpattern.md) | 1007 | `BLOCKED_NATIVE_ADMISSION` |
| 89 | `def` | [collectPatternBVars](declarations/collectpatternbvars.md) | 1016 | `BLOCKED_NATIVE_ADMISSION` |
| 90 | `def` | [diff](declarations/diff.md) | 1027 | `BLOCKED_NATIVE_ADMISSION` |
| 91 | `def` | [hasChildWithSameNewBVars](declarations/haschildwithsamenewbvars.md) | 1037 | `BLOCKED_NATIVE_ADMISSION` |
| 92 | `def` | [collect](declarations/collect-source-edition-2.md) | 1049 | `BLOCKED_NATIVE_ADMISSION` |
| 93 | `def` | [sizeOfDiff](declarations/sizeofdiff.md) | 1089 | `BLOCKED_NATIVE_ADMISSION` |
| 94 | `def` | [normalizePattern?](declarations/normalizepattern-source-edition-2.md) | 1103 | `BLOCKED_NATIVE_ADMISSION` |
| 95 | `def` | [collect](declarations/collect.md) | 1151 | `BLOCKED_NATIVE_ADMISSION` |
| 96 | `def` | [collectPatterns?](declarations/collectpatterns.md) | 1188 | `BLOCKED_NATIVE_ADMISSION` |
| 97 | `def` | [collectGroundPattern?](declarations/collectgroundpattern.md) | 1225 | `BLOCKED_NATIVE_ADMISSION` |
| 98 | `def` | [EMatchTheoremKind.gen](declarations/ematchtheoremkind-gen.md) | 1261 | `BLOCKED_NATIVE_ADMISSION` |
| 99 | `def` | [collectUsedPriorities](declarations/collectusedpriorities.md) | 1270 | `BLOCKED_NATIVE_ADMISSION` |
| 100 | `def` | [collectSingletons](declarations/collectsingletons.md) | 1283 | `BLOCKED_NATIVE_ADMISSION` |
| 101 | `def` | [mkEMatchTheoremUsingSingletonPatterns](declarations/mkematchtheoremusingsingletonpatterns.md) | 1324 | `BLOCKED_NATIVE_ADMISSION` |
| 102 | `def` | [mkEMatchTheoremWithKind?](declarations/mkematchtheoremwithkind.md) | 1353 | `BLOCKED_NATIVE_ADMISSION` |
| 103 | `def` | [mkEMatchTheoremForDecl](declarations/mkematchtheoremfordecl.md) | 1417 | `BLOCKED_NATIVE_ADMISSION` |
| 104 | `def` | [mkEMatchEqTheoremsForDef?](declarations/mkematcheqtheoremsfordef.md) | 1423 | `BLOCKED_NATIVE_ADMISSION` |
| 105 | `def` | [Extension.addGrindEqAttr](declarations/extension-addgrindeqattr.md) | 1428 | `BLOCKED_NATIVE_ADMISSION` |
| 106 | `def` | [EMatchTheorems.eraseDecl](declarations/ematchtheorems-erasedecl.md) | 1438 | `BLOCKED_NATIVE_ADMISSION` |
| 107 | `def` | [ensureNoMinIndexable](declarations/ensurenominindexable.md) | 1451 | `BLOCKED_NATIVE_ADMISSION` |
| 108 | `def` | [Extension.addEMatchAttr](declarations/extension-addematchattr.md) | 1455 | `BLOCKED_NATIVE_ADMISSION` |
| 109 | `structure` | [SelectM.State](declarations/selectm-state.md) | 1477 | `BLOCKED_NATIVE_ADMISSION` |
| 110 | `abbrev` | [SelectM](declarations/selectm.md) | 1482 | `BLOCKED_NATIVE_ADMISSION` |
| 111 | `def` | [EMatchTheoremKind.toSyntax](declarations/ematchtheoremkind-tosyntax.md) | 1484 | `BLOCKED_NATIVE_ADMISSION` |
| 112 | `def` | [save](declarations/save.md) | 1502 | `BLOCKED_NATIVE_ADMISSION` |
| 113 | `inductive` | [MinIndexableMode](declarations/minindexablemode.md) | 1537 | `BLOCKED_NATIVE_ADMISSION` |
| 114 | `def` | [mkEMatchTheoremAndSuggest](declarations/mkematchtheoremandsuggest.md) | 1551 | `BLOCKED_NATIVE_ADMISSION` |
| 115 | `def` | [Extension.addEMatchAttrAndSuggest](declarations/extension-addematchattrandsuggest.md) | 1608 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=8aff518bb3fb3bb25b7381a855f8f5b4b53af103395f36bfc38006ef0b81f0e3 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/EMatchTheorem/Variant7862e0cc7cb98de3bcf3970865c0d8ef0926cd7112c0ec42a4d5d16d8502db50.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
