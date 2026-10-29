# Lazy Discr Tree Public

[Complete source index](../../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**91 observed declarations and anonymous commands**, 0 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LazyDiscrTree/Variant5ab51be1ad6bb484cc3fd30f335c928e458b96197da12ea90adf5811c60debc3.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `54e08e1f136f6788d9dd6e6567c376c99e90f548`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../_verification/specifications/ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/LazyDiscrTreePublic.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `inductive` | [Key](declarations/key.md) | 36 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `def` | [hash](declarations/hash.md) | 49 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `instance` | [(anonymous)](declarations/instance-source-edition-4.md) | 58 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `def` | [tmpMVarId](declarations/tmpmvarid.md) | 65 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `def` | [tmpStar](declarations/tmpstar.md) | 66 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `def` | [ignoreArg](declarations/ignorearg.md) | 79 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `def` | [pushArgsAux](declarations/pushargsaux.md) | 91 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `def` | [isNumeral](declarations/isnumeral.md) | 105 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `def` | [toNatLit?](declarations/tonatlit.md) | 117 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `def` | [isNatType](declarations/isnattype.md) | 142 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `def` | [isNatOffset](declarations/isnatoffset.md) | 153 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `def` | [shouldAddAsStar](declarations/shouldaddasstar.md) | 168 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `def` | [elimLooseBVarsByBeta](declarations/elimloosebvarsbybeta.md) | 182 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `def` | [getKeyArgs](declarations/getkeyargs.md) | 192 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `abbrev` | [getMatchKeyArgs](declarations/getmatchkeyargs.md) | 267 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `abbrev` | [LazyEntry](declarations/lazyentry.md) | 276 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `def` | [TrieIndex](declarations/trieindex.md) | 282 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `structure` | [Trie](declarations/trie.md) | 287 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `instance` | [(anonymous)](declarations/instance-source-edition-5.md) | 299 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `def` | [Trie.pushPending](declarations/trie-pushpending.md) | 302 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `structure` | [LazyDiscrTree](declarations/lazydiscrtree.md) | 320 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `instance` | [(anonymous)](declarations/instance-source-edition-6.md) | 330 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `def` | [pushArgs](declarations/pushargs.md) | 338 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `def` | [initCapacity](declarations/initcapacity.md) | 390 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `def` | [rootKey](declarations/rootkey.md) | 395 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `def` | [buildPath](declarations/buildpath.md) | 398 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `def` | [patternPath](declarations/patternpath.md) | 413 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `def` | [targetPath](declarations/targetpath.md) | 423 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `def` | [MatchM](declarations/matchm.md) | 432 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `def` | [runMatch](declarations/runmatch.md) | 434 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `def` | [setTrie](declarations/settrie.md) | 439 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `def` | [newTrie](declarations/newtrie.md) | 443 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `def` | [addLazyEntryToTrie](declarations/addlazyentrytotrie.md) | 447 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `def` | [evalLazyEntry](declarations/evallazyentry.md) | 450 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `def` | [evalLazyEntries](declarations/evallazyentries.md) | 483 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `def` | [evalNode](declarations/evalnode.md) | 492 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `def` | [dropKeyAux](declarations/dropkeyaux.md) | 503 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `def` | [dropKey](declarations/dropkey.md) | 520 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `structure` | [MatchResult](declarations/matchresult.md) | 532 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `def` | [push](declarations/push-source-edition-2.md) | 547 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `def` | [size](declarations/size.md) | 564 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `def` | [appendResultsAux](declarations/appendresultsaux.md) | 571 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `def` | [appendResults](declarations/appendresults.md) | 579 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `structure` | [PartialMatch](declarations/partialmatch.md) | 592 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `def` | [getMatchLoop](declarations/getmatchloop.md) | 609 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `def` | [getStarResult](declarations/getstarresult.md) | 655 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `def` | [pushRootCase](declarations/pushrootcase.md) | 666 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `def` | [getMatchCore](declarations/getmatchcore.md) | 675 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `def` | [getMatch](declarations/getmatch.md) | 697 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `structure` | [PreDiscrTree](declarations/prediscrtree.md) | 704 | `BLOCKED_NATIVE_ADMISSION` |
| 51 | `def` | [modifyAt](declarations/modifyat.md) | 713 | `BLOCKED_NATIVE_ADMISSION` |
| 52 | `def` | [push](declarations/push.md) | 724 | `BLOCKED_NATIVE_ADMISSION` |
| 53 | `def` | [toLazy](declarations/tolazy.md) | 728 | `BLOCKED_NATIVE_ADMISSION` |
| 54 | `def` | [append](declarations/append.md) | 735 | `BLOCKED_NATIVE_ADMISSION` |
| 55 | `instance` | [(anonymous)](declarations/instance-source-edition-2.md) | 744 | `BLOCKED_NATIVE_ADMISSION` |
| 56 | `structure` | [InitEntry](declarations/initentry.md) | 750 | `BLOCKED_NATIVE_ADMISSION` |
| 57 | `def` | [fromExpr](declarations/fromexpr.md) | 761 | `BLOCKED_NATIVE_ADMISSION` |
| 58 | `def` | [mkSubEntry](declarations/mksubentry.md) | 774 | `BLOCKED_NATIVE_ADMISSION` |
| 59 | `structure` | [ImportFailure](declarations/importfailure.md) | 783 | `BLOCKED_NATIVE_ADMISSION` |
| 60 | `structure` | [ImportData](declarations/importdata.md) | 792 | `BLOCKED_NATIVE_ADMISSION` |
| 61 | `def` | [ImportData.new](declarations/importdata-new.md) | 795 | `BLOCKED_NATIVE_ADMISSION` |
| 62 | `structure` | [Cache](declarations/cache.md) | 799 | `BLOCKED_NATIVE_ADMISSION` |
| 63 | `def` | [Cache.empty](declarations/cache-empty.md) | 804 | `BLOCKED_NATIVE_ADMISSION` |
| 64 | `def` | [isAccessiblePrivateName](declarations/isaccessibleprivatename.md) | 811 | `BLOCKED_NATIVE_ADMISSION` |
| 65 | `def` | [blacklistInsertion](declarations/blacklistinsertion.md) | 823 | `BLOCKED_NATIVE_ADMISSION` |
| 66 | `def` | [addConstImportData](declarations/addconstimportdata.md) | 830 | `BLOCKED_NATIVE_ADMISSION` |
| 67 | `structure` | [InitResults](declarations/initresults.md) | 864 | `BLOCKED_NATIVE_ADMISSION` |
| 68 | `instance` | [(anonymous)](declarations/instance.md) | 868 | `BLOCKED_NATIVE_ADMISSION` |
| 69 | `def` | [append](declarations/append-source-edition-2.md) | 874 | `BLOCKED_NATIVE_ADMISSION` |
| 70 | `instance` | [(anonymous)](declarations/instance-source-edition-3.md) | 879 | `BLOCKED_NATIVE_ADMISSION` |
| 71 | `def` | [toFlat](declarations/toflat.md) | 884 | `BLOCKED_NATIVE_ADMISSION` |
| 72 | `def` | [loadImportedModule](declarations/loadimportedmodule.md) | 889 | `BLOCKED_NATIVE_ADMISSION` |
| 73 | `def` | [createImportedEnvironmentSeq](declarations/createimportedenvironmentseq.md) | 906 | `BLOCKED_NATIVE_ADMISSION` |
| 74 | `def` | [combineGet](declarations/combineget.md) | 922 | `BLOCKED_NATIVE_ADMISSION` |
| 75 | `def` | [getChildNgen](declarations/getchildngen.md) | 925 | `BLOCKED_NATIVE_ADMISSION` |
| 76 | `def` | [createLocalPreDiscrTree](declarations/createlocalprediscrtree.md) | 931 | `BLOCKED_NATIVE_ADMISSION` |
| 77 | `def` | [dropKeys](declarations/dropkeys.md) | 949 | `BLOCKED_NATIVE_ADMISSION` |
| 78 | `def` | [collectSubtreeAux](declarations/collectsubtreeaux.md) | 953 | `BLOCKED_NATIVE_ADMISSION` |
| 79 | `def` | [extractKeyAux](declarations/extractkeyaux.md) | 969 | `BLOCKED_NATIVE_ADMISSION` |
| 80 | `def` | [extractKey](declarations/extractkey.md) | 984 | `BLOCKED_NATIVE_ADMISSION` |
| 81 | `def` | [extractKeys](declarations/extractkeys.md) | 993 | `BLOCKED_NATIVE_ADMISSION` |
| 82 | `def` | [logImportFailure](declarations/logimportfailure.md) | 1003 | `BLOCKED_NATIVE_ADMISSION` |
| 83 | `def` | [createImportedDiscrTree](declarations/createimporteddiscrtree.md) | 1007 | `BLOCKED_NATIVE_ADMISSION` |
| 84 | `def` | [createTreeCtx](declarations/createtreectx.md) | 1039 | `BLOCKED_NATIVE_ADMISSION` |
| 85 | `def` | [findImportMatches](declarations/findimportmatches.md) | 1049 | `BLOCKED_NATIVE_ADMISSION` |
| 86 | `structure` | [ModuleDiscrTreeRef](declarations/modulediscrtreeref.md) | 1084 | `BLOCKED_NATIVE_ADMISSION` |
| 87 | `def` | [createModuleDiscrTree](declarations/createmodulediscrtree.md) | 1088 | `BLOCKED_NATIVE_ADMISSION` |
| 88 | `def` | [createModuleTreeRef](declarations/createmoduletreeref.md) | 1104 | `BLOCKED_NATIVE_ADMISSION` |
| 89 | `def` | [findModuleMatches](declarations/findmodulematches.md) | 1126 | `BLOCKED_NATIVE_ADMISSION` |
| 90 | `def` | [findMatchesExt](declarations/findmatchesext.md) | 1150 | `BLOCKED_NATIVE_ADMISSION` |
| 91 | `def` | [findMatches](declarations/findmatches.md) | 1174 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=908bc79cfe193b6924b482c0b090d95aaa2af6dfd7bdbc4e7db8501dedbd2f88 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LazyDiscrTree/Variant5ab51be1ad6bb484cc3fd30f335c928e458b96197da12ea90adf5811c60debc3.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
