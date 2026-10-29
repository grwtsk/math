# EMatch Theorem Namespaced Public

[Complete source index](../../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**115 observed declarations and anonymous commands**, 2 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/EMatchTheorem/Variant6063b6336fbd64037b8a1f0ac0b0285aedd199766665533c63cfd9d827273d55.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `654387b687c2b34418a7dd62aa266d893b498135`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../_verification/specifications/ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/EMatchTheoremNamespacedPublic.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `structure` | [SymbolPriorityEntry](declarations/symbolpriorityentry.md) | 36 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `def` | [SymbolPriorities.erase](declarations/symbolpriorities-erase.md) | 42 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `def` | [SymbolPriorities.getPrio](declarations/symbolpriorities-getprio.md) | 46 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `def` | [SymbolPriorities.contains](declarations/symbolpriorities-contains.md) | 56 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `builtin_initialize` | [(anonymous)](declarations/builtin-initialize.md) | 59 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `def` | [resetSymbolPrioExt](declarations/resetsymbolprioext.md) | 65 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `def` | [getGlobalSymbolPriorities](declarations/getglobalsymbolpriorities.md) | 68 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `def` | [addSymbolPriorityAttr](declarations/addsymbolpriorityattr.md) | 72 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `def` | [mkOffsetPattern](declarations/mkoffsetpattern.md) | 75 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `def` | [detectOffsets](declarations/detectoffsets.md) | 78 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `def` | [isOffsetPattern?](declarations/isoffsetpattern.md) | 92 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `def` | [expandOffsetPatterns](declarations/expandoffsetpatterns.md) | 101 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `def` | [mkEqBwdPattern](declarations/mkeqbwdpattern.md) | 112 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `def` | [isEqBwdPattern](declarations/iseqbwdpattern-source-edition-2.md) | 115 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `def` | [isEqBwdPattern?](declarations/iseqbwdpattern.md) | 118 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `def` | [mkGenPattern](declarations/mkgenpattern.md) | 123 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `def` | [mkGenHEqPattern](declarations/mkgenheqpattern.md) | 126 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `structure` | [GenPatternInfo](declarations/genpatterninfo.md) | 130 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `def` | [isGenPattern?](declarations/isgenpattern.md) | 136 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `def` | [isMatchCongrEqDeclName](declarations/ismatchcongreqdeclname.md) | 149 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `def` | [isMatchCongrEqConst](declarations/ismatchcongreqconst.md) | 160 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `def` | [preprocessMatchCongrEqType](declarations/preprocessmatchcongreqtype.md) | 194 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `def` | [detectGeneralizedPatterns?](declarations/detectgeneralizedpatterns.md) | 237 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `def` | [inferEMatchProofType](declarations/inferematchprooftype.md) | 275 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `def` | [normConfig](declarations/normconfig.md) | 285 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [normConfig_zeta](declarations/normconfig-zeta.md) | 286 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [normConfig_zetaDelta](declarations/normconfig-zetadelta.md) | 287 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `def` | [preprocessPattern](declarations/preprocesspattern.md) | 289 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `def` | [EMatchTheoremKind.isEqLhs](declarations/ematchtheoremkind-iseqlhs.md) | 300 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `def` | [EMatchTheoremKind.isDefault](declarations/ematchtheoremkind-isdefault.md) | 304 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `def` | [EMatchTheoremKind.toAttributeCore](declarations/ematchtheoremkind-toattributecore.md) | 308 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `def` | [EMatchTheoremKind.toAttribute](declarations/ematchtheoremkind-toattribute.md) | 326 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `def` | [EMatchTheoremKind.explainFailure](declarations/ematchtheoremkind-explainfailure.md) | 334 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `abbrev` | [EMatchTheorems](declarations/ematchtheorems.md) | 348 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `abbrev` | [EMatchTheoremsArray](declarations/ematchtheoremsarray.md) | 351 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `def` | [EMatchTheorems.containsWithSamePatterns](declarations/ematchtheorems-containswithsamepatterns.md) | 356 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `def` | [ExtensionStateArray.containsWithSamePatterns](declarations/extensionstatearray-containswithsamepatterns.md) | 361 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `def` | [EMatchTheorems.getKindsFor](declarations/ematchtheorems-getkindsfor.md) | 365 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `def` | [EMatchTheorem.getProofWithFreshMVarLevels](declarations/ematchtheorem-getproofwithfreshmvarlevels.md) | 369 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `def` | [splitWhileForbidden](declarations/splitwhileforbidden.md) | 389 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `def` | [dontCare](declarations/dontcare.md) | 399 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `def` | [mkGroundPattern](declarations/mkgroundpattern.md) | 401 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `def` | [canonLit](declarations/canonlit.md) | 417 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `def` | [groundPattern?](declarations/groundpattern.md) | 425 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `def` | [isGroundPattern](declarations/isgroundpattern.md) | 428 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `def` | [isPatternDontCare](declarations/ispatterndontcare.md) | 431 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `def` | [isAtomicPattern](declarations/isatomicpattern.md) | 434 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `def` | [ppPattern](declarations/pppattern.md) | 437 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `structure` | [State](declarations/state.md) | 463 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `structure` | [Context](declarations/context.md) | 468 | `BLOCKED_NATIVE_ADMISSION` |
| 51 | `abbrev` | [M](declarations/m.md) | 473 | `BLOCKED_NATIVE_ADMISSION` |
| 52 | `def` | [isCandidateSymbol](declarations/iscandidatesymbol.md) | 475 | `BLOCKED_NATIVE_ADMISSION` |
| 53 | `def` | [saveSymbol](declarations/savesymbol.md) | 486 | `BLOCKED_NATIVE_ADMISSION` |
| 54 | `def` | [saveSymbolsAt](declarations/savesymbolsat.md) | 494 | `BLOCKED_NATIVE_ADMISSION` |
| 55 | `def` | [foundBVar](declarations/foundbvar.md) | 510 | `BLOCKED_NATIVE_ADMISSION` |
| 56 | `def` | [saveBVar](declarations/savebvar.md) | 513 | `BLOCKED_NATIVE_ADMISSION` |
| 57 | `inductive` | [PatternArgKind](declarations/patternargkind.md) | 516 | `BLOCKED_NATIVE_ADMISSION` |
| 58 | `def` | [PatternArgKind.isSupport](declarations/patternargkind-issupport.md) | 571 | `BLOCKED_NATIVE_ADMISSION` |
| 59 | `def` | [getPatternArgKinds](declarations/getpatternargkinds.md) | 584 | `BLOCKED_NATIVE_ADMISSION` |
| 60 | `def` | [getPatternFn?](declarations/getpatternfn.md) | 629 | `BLOCKED_NATIVE_ADMISSION` |
| 61 | `inductive` | [ParentKind](declarations/parentkind.md) | 654 | `BLOCKED_NATIVE_ADMISSION` |
| 62 | `def` | [toParentKind](declarations/toparentkind.md) | 669 | `BLOCKED_NATIVE_ADMISSION` |
| 63 | `def` | [go](declarations/go.md) | 680 | `BLOCKED_NATIVE_ADMISSION` |
| 64 | `def` | [main](declarations/main.md) | 738 | `BLOCKED_NATIVE_ADMISSION` |
| 65 | `def` | [normalizePattern](declarations/normalizepattern-source-edition-2.md) | 742 | `BLOCKED_NATIVE_ADMISSION` |
| 66 | `def` | [checkTypeFVars](declarations/checktypefvars.md) | 751 | `BLOCKED_NATIVE_ADMISSION` |
| 67 | `def` | [canBeSynthesized](declarations/canbesynthesized.md) | 761 | `BLOCKED_NATIVE_ADMISSION` |
| 68 | `inductive` | [CheckCoverageResult](declarations/checkcoverageresult.md) | 776 | `BLOCKED_NATIVE_ADMISSION` |
| 69 | `def` | [checkCoverage](declarations/checkcoverage.md) | 795 | `BLOCKED_NATIVE_ADMISSION` |
| 70 | `def` | [ppParamsAt](declarations/ppparamsat.md) | 865 | `BLOCKED_NATIVE_ADMISSION` |
| 71 | `def` | [logPatternWhen](declarations/logpatternwhen.md) | 876 | `BLOCKED_NATIVE_ADMISSION` |
| 72 | `def` | [mkEMatchTheoremCore](declarations/mkematchtheoremcore.md) | 884 | `BLOCKED_NATIVE_ADMISSION` |
| 73 | `def` | [getProofFor](declarations/getprooffor.md) | 900 | `BLOCKED_NATIVE_ADMISSION` |
| 74 | `def` | [mkEMatchTheorem](declarations/mkematchtheorem.md) | 913 | `BLOCKED_NATIVE_ADMISSION` |
| 75 | `def` | [mkEMatchEqTheoremCore](declarations/mkematcheqtheoremcore.md) | 922 | `BLOCKED_NATIVE_ADMISSION` |
| 76 | `def` | [mkEMatchEqBwdTheoremCore](declarations/mkematcheqbwdtheoremcore.md) | 939 | `BLOCKED_NATIVE_ADMISSION` |
| 77 | `def` | [Extension.isEMatchTheorem](declarations/extension-isematchtheorem.md) | 948 | `BLOCKED_NATIVE_ADMISSION` |
| 78 | `def` | [Extension.getEMatchTheorems](declarations/extension-getematchtheorems.md) | 951 | `BLOCKED_NATIVE_ADMISSION` |
| 79 | `def` | [Extension.getEMatchTheoremsForNamespace](declarations/extension-getematchtheoremsfornamespace.md) | 956 | `BLOCKED_NATIVE_ADMISSION` |
| 80 | `def` | [mkEMatchEqTheorem](declarations/mkematcheqtheorem.md) | 971 | `BLOCKED_NATIVE_ADMISSION` |
| 81 | `def` | [Extension.addEMatchTheorem](declarations/extension-addematchtheorem.md) | 978 | `BLOCKED_NATIVE_ADMISSION` |
| 82 | `def` | [Extension.addEMatchEqTheorem](declarations/extension-addematcheqtheorem.md) | 986 | `BLOCKED_NATIVE_ADMISSION` |
| 83 | `def` | [getPropTypes](declarations/getproptypes.md) | 990 | `BLOCKED_NATIVE_ADMISSION` |
| 84 | `structure` | [Collector.State](declarations/collector-state.md) | 996 | `BLOCKED_NATIVE_ADMISSION` |
| 85 | `structure` | [Collector.Context](declarations/collector-context.md) | 1001 | `BLOCKED_NATIVE_ADMISSION` |
| 86 | `abbrev` | [CollectorM](declarations/collectorm.md) | 1006 | `BLOCKED_NATIVE_ADMISSION` |
| 87 | `def` | [isPatternFnCandidate](declarations/ispatternfncandidate.md) | 1009 | `BLOCKED_NATIVE_ADMISSION` |
| 88 | `def` | [addNewPattern](declarations/addnewpattern.md) | 1015 | `BLOCKED_NATIVE_ADMISSION` |
| 89 | `def` | [collectPatternBVars](declarations/collectpatternbvars.md) | 1024 | `BLOCKED_NATIVE_ADMISSION` |
| 90 | `def` | [diff](declarations/diff.md) | 1035 | `BLOCKED_NATIVE_ADMISSION` |
| 91 | `def` | [hasChildWithSameNewBVars](declarations/haschildwithsamenewbvars.md) | 1045 | `BLOCKED_NATIVE_ADMISSION` |
| 92 | `def` | [collect](declarations/collect.md) | 1057 | `BLOCKED_NATIVE_ADMISSION` |
| 93 | `def` | [sizeOfDiff](declarations/sizeofdiff.md) | 1097 | `BLOCKED_NATIVE_ADMISSION` |
| 94 | `def` | [normalizePattern?](declarations/normalizepattern.md) | 1111 | `BLOCKED_NATIVE_ADMISSION` |
| 95 | `def` | [collect](declarations/collect-source-edition-2.md) | 1159 | `BLOCKED_NATIVE_ADMISSION` |
| 96 | `def` | [collectPatterns?](declarations/collectpatterns.md) | 1196 | `BLOCKED_NATIVE_ADMISSION` |
| 97 | `def` | [collectGroundPattern?](declarations/collectgroundpattern.md) | 1233 | `BLOCKED_NATIVE_ADMISSION` |
| 98 | `def` | [EMatchTheoremKind.gen](declarations/ematchtheoremkind-gen.md) | 1269 | `BLOCKED_NATIVE_ADMISSION` |
| 99 | `def` | [collectUsedPriorities](declarations/collectusedpriorities.md) | 1278 | `BLOCKED_NATIVE_ADMISSION` |
| 100 | `def` | [collectSingletons](declarations/collectsingletons.md) | 1291 | `BLOCKED_NATIVE_ADMISSION` |
| 101 | `def` | [mkEMatchTheoremUsingSingletonPatterns](declarations/mkematchtheoremusingsingletonpatterns.md) | 1332 | `BLOCKED_NATIVE_ADMISSION` |
| 102 | `def` | [mkEMatchTheoremWithKind?](declarations/mkematchtheoremwithkind.md) | 1361 | `BLOCKED_NATIVE_ADMISSION` |
| 103 | `def` | [mkEMatchTheoremForDecl](declarations/mkematchtheoremfordecl.md) | 1425 | `BLOCKED_NATIVE_ADMISSION` |
| 104 | `def` | [mkEMatchEqTheoremsForDef?](declarations/mkematcheqtheoremsfordef.md) | 1431 | `BLOCKED_NATIVE_ADMISSION` |
| 105 | `def` | [Extension.addGrindEqAttr](declarations/extension-addgrindeqattr.md) | 1436 | `BLOCKED_NATIVE_ADMISSION` |
| 106 | `def` | [EMatchTheorems.eraseDecl](declarations/ematchtheorems-erasedecl.md) | 1446 | `BLOCKED_NATIVE_ADMISSION` |
| 107 | `def` | [ensureNoMinIndexable](declarations/ensurenominindexable.md) | 1459 | `BLOCKED_NATIVE_ADMISSION` |
| 108 | `def` | [Extension.addEMatchAttr](declarations/extension-addematchattr.md) | 1463 | `BLOCKED_NATIVE_ADMISSION` |
| 109 | `structure` | [SelectM.State](declarations/selectm-state.md) | 1485 | `BLOCKED_NATIVE_ADMISSION` |
| 110 | `abbrev` | [SelectM](declarations/selectm.md) | 1490 | `BLOCKED_NATIVE_ADMISSION` |
| 111 | `def` | [EMatchTheoremKind.toSyntax](declarations/ematchtheoremkind-tosyntax.md) | 1492 | `BLOCKED_NATIVE_ADMISSION` |
| 112 | `def` | [save](declarations/save.md) | 1510 | `BLOCKED_NATIVE_ADMISSION` |
| 113 | `inductive` | [MinIndexableMode](declarations/minindexablemode.md) | 1545 | `BLOCKED_NATIVE_ADMISSION` |
| 114 | `def` | [mkEMatchTheoremAndSuggest](declarations/mkematchtheoremandsuggest.md) | 1559 | `BLOCKED_NATIVE_ADMISSION` |
| 115 | `def` | [Extension.addEMatchAttrAndSuggest](declarations/extension-addematchattrandsuggest.md) | 1616 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=64221489670bb105e181bdddf78969a120f09e18a196378506bd71c8e5c84a97 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/EMatchTheorem/Variant6063b6336fbd64037b8a1f0ac0b0285aedd199766665533c63cfd9d827273d55.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
