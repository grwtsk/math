# Try Public Is Accessible

[Complete source index](../../../../complete-source-index.md) · [Up one directory](../../complete-source-index.md) · [Full source](source.md)

**99 observed declarations and anonymous commands**, 0 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Try/Variante4a4c5c674db8b798228eedb84b8b73b6365710a17ba9aa13ce0e55b805991c4.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `7d5de50f96ef6c968206149dcfb89e64150fe400`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../_verification/specifications/ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TryPublicIsAccessible.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [isAccessible](declarations/isaccessible.md) | 46 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `def` | [isExprAccessible](declarations/isexpraccessible.md) | 60 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `def` | [checkTactic](declarations/checktactic.md) | 65 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `def` | [evalSuggestExact](declarations/evalsuggestexact.md) | 73 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `def` | [getSuggestionOfTactic](declarations/getsuggestionoftactic.md) | 94 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `def` | [appendSuggestion](declarations/appendsuggestion.md) | 100 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `def` | [mkTrySuggestions](declarations/mktrysuggestions.md) | 104 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `def` | [filterSkipDone](declarations/filterskipdone.md) | 113 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `def` | [getTacSeqElems?](declarations/gettacseqelems.md) | 118 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `def` | [isCDotTac](declarations/iscdottac.md) | 124 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `def` | [appendSeq](declarations/appendseq.md) | 129 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `def` | [mkSeq](declarations/mkseq.md) | 141 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `def` | [isSorry](declarations/issorry.md) | 153 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `def` | [filterSorry](declarations/filtersorry.md) | 159 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `def` | [removeDuplicates](declarations/removeduplicates.md) | 165 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `def` | [getSuggestionsCore](declarations/getsuggestionscore.md) | 172 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `def` | [getTacsSolvedAll](declarations/gettacssolvedall.md) | 178 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `def` | [eraseTacs](declarations/erasetacs.md) | 189 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `def` | [getKindsSolvedAll](declarations/getkindssolvedall.md) | 193 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `def` | [evalSuggestAtomic](declarations/evalsuggestatomic.md) | 204 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `def` | [configHasSuggestionsOrLocals](declarations/confighassuggestionsorlocals.md) | 214 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `def` | [grindTraceToGrind](declarations/grindtracetogrind.md) | 230 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `def` | [simpTraceToSimp](declarations/simptracetosimp.md) | 236 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `abbrev` | [TacticResult](declarations/tacticresult.md) | 242 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `structure` | [Ctx](declarations/ctx.md) | 244 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `abbrev` | [TryTacticM](declarations/trytacticm.md) | 250 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `abbrev` | [TryTactic](declarations/trytactic.md) | 251 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `instance` | [(anonymous)](declarations/instance.md) | 253 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `abbrev` | [withNonTerminal](declarations/withnonterminal.md) | 257 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `builtin_initialize` | [(anonymous)](declarations/builtin-initialize-source-edition-3.md) | 260 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `def` | [getEvalFns](declarations/getevalfns.md) | 263 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `def` | [checkTerminalGoals](declarations/checkterminalgoals.md) | 274 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `abbrev` | [TrySuggestionGenerator](declarations/trysuggestiongenerator.md) | 283 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `structure` | [TrySuggestionEntry](declarations/trysuggestionentry.md) | 286 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `builtin_initialize` | [(anonymous)](declarations/builtin-initialize.md) | 292 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `builtin_initialize` | [(anonymous)](declarations/builtin-initialize-source-edition-2.md) | 301 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `def` | [elabRegisterTryTactic](declarations/elabregistertrytactic.md) | 318 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `def` | [$nameId](declarations/nameid.md) | 339 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `def` | [expandUserTactic](declarations/expandusertactic.md) | 355 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `abbrev` | [focus](declarations/focus.md) | 391 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `def` | [observing](declarations/observing.md) | 393 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `def` | [withOriginalHeartbeats](declarations/withoriginalheartbeats.md) | 412 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `def` | [withUnlimitedHeartbeats](declarations/withunlimitedheartbeats.md) | 427 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `def` | [mergeParams](declarations/mergeparams.md) | 431 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `def` | [mergeSimp?](declarations/mergesimp.md) | 438 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `def` | [mergeGrind?](declarations/mergegrind.md) | 444 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `def` | [merge?](declarations/merge.md) | 450 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `def` | [mergeAll?](declarations/mergeall.md) | 461 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `def` | [isOnlyAndNonOnly](declarations/isonlyandnononly.md) | 483 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `def` | [mkChainResult](declarations/mkchainresult.md) | 494 | `BLOCKED_NATIVE_ADMISSION` |
| 51 | `def` | [evalSuggestGrindTrace](declarations/evalsuggestgrindtrace.md) | 562 | `BLOCKED_NATIVE_ADMISSION` |
| 52 | `def` | [evalSuggestSimpTrace](declarations/evalsuggestsimptrace.md) | 581 | `BLOCKED_NATIVE_ADMISSION` |
| 53 | `def` | [evalSuggestSimpAllTrace](declarations/evalsuggestsimpalltrace.md) | 602 | `BLOCKED_NATIVE_ADMISSION` |
| 54 | `opaque` | [evalSuggest](declarations/evalsuggest.md) | 662 | `BLOCKED_NATIVE_ADMISSION` |
| 55 | `def` | [evalSuggestChain](declarations/evalsuggestchain.md) | 665 | `BLOCKED_NATIVE_ADMISSION` |
| 56 | `def` | [evalSuggestSeq](declarations/evalsuggestseq.md) | 683 | `BLOCKED_NATIVE_ADMISSION` |
| 57 | `def` | [evalSuggestSeqCore](declarations/evalsuggestseqcore.md) | 694 | `BLOCKED_NATIVE_ADMISSION` |
| 58 | `def` | [evalSuggestTacticSeq](declarations/evalsuggesttacticseq.md) | 697 | `BLOCKED_NATIVE_ADMISSION` |
| 59 | `def` | [evalSuggestFirst](declarations/evalsuggestfirst.md) | 705 | `BLOCKED_NATIVE_ADMISSION` |
| 60 | `def` | [evalSuggestTry](declarations/evalsuggesttry.md) | 717 | `BLOCKED_NATIVE_ADMISSION` |
| 61 | `def` | [evalSuggestAttemptAll](declarations/evalsuggestattemptall.md) | 723 | `BLOCKED_NATIVE_ADMISSION` |
| 62 | `def` | [evalSuggestAttemptAllPar](declarations/evalsuggestattemptallpar.md) | 747 | `BLOCKED_NATIVE_ADMISSION` |
| 63 | `def` | [evalSuggestFirstPar](declarations/evalsuggestfirstpar.md) | 780 | `BLOCKED_NATIVE_ADMISSION` |
| 64 | `def` | [evalSuggestChainTac](declarations/evalsuggestchaintac.md) | 791 | `BLOCKED_NATIVE_ADMISSION` |
| 65 | `def` | [evalSuggestFirstTac](declarations/evalsuggestfirsttac.md) | 796 | `BLOCKED_NATIVE_ADMISSION` |
| 66 | `def` | [evalSuggestParenTac](declarations/evalsuggestparentac.md) | 801 | `BLOCKED_NATIVE_ADMISSION` |
| 67 | `def` | [evalSuggestTryTac](declarations/evalsuggesttrytac.md) | 806 | `BLOCKED_NATIVE_ADMISSION` |
| 68 | `def` | [evalSuggestAttemptAllTac](declarations/evalsuggestattemptalltac.md) | 811 | `BLOCKED_NATIVE_ADMISSION` |
| 69 | `def` | [evalSuggestAttemptAllParTac](declarations/evalsuggestattemptallpartac.md) | 816 | `BLOCKED_NATIVE_ADMISSION` |
| 70 | `def` | [evalSuggestFirstParTac](declarations/evalsuggestfirstpartac.md) | 821 | `BLOCKED_NATIVE_ADMISSION` |
| 71 | `def` | [evalSuggestSeq1Tac](declarations/evalsuggestseq1tac.md) | 826 | `BLOCKED_NATIVE_ADMISSION` |
| 72 | `def` | [evalSuggestExactTac](declarations/evalsuggestexacttac.md) | 830 | `BLOCKED_NATIVE_ADMISSION` |
| 73 | `def` | [evalSuggestImpl](declarations/evalsuggestimpl.md) | 838 | `BLOCKED_NATIVE_ADMISSION` |
| 74 | `def` | [toSuggestion](declarations/tosuggestion.md) | 881 | `BLOCKED_NATIVE_ADMISSION` |
| 75 | `def` | [getSuggestions](declarations/getsuggestions.md) | 884 | `BLOCKED_NATIVE_ADMISSION` |
| 76 | `def` | [throwEvalAndSuggestFailed](declarations/throwevalandsuggestfailed.md) | 888 | `BLOCKED_NATIVE_ADMISSION` |
| 77 | `def` | [addSuggestions](declarations/addsuggestions.md) | 895 | `BLOCKED_NATIVE_ADMISSION` |
| 78 | `def` | [evalAndCollectSuggestions](declarations/evalandcollectsuggestions.md) | 902 | `BLOCKED_NATIVE_ADMISSION` |
| 79 | `def` | [evalAndSuggest](declarations/evalandsuggest.md) | 914 | `BLOCKED_NATIVE_ADMISSION` |
| 80 | `def` | [toIdent](declarations/toident.md) | 921 | `BLOCKED_NATIVE_ADMISSION` |
| 81 | `def` | [mkFirstStx](declarations/mkfirststx.md) | 924 | `BLOCKED_NATIVE_ADMISSION` |
| 82 | `def` | [setGrindParams](declarations/setgrindparams.md) | 933 | `BLOCKED_NATIVE_ADMISSION` |
| 83 | `def` | [mkGrindEqnParams](declarations/mkgrindeqnparams.md) | 938 | `BLOCKED_NATIVE_ADMISSION` |
| 84 | `def` | [mkGrindStx](declarations/mkgrindstx.md) | 942 | `BLOCKED_NATIVE_ADMISSION` |
| 85 | `def` | [mkSimpStx](declarations/mksimpstx.md) | 955 | `BLOCKED_NATIVE_ADMISSION` |
| 86 | `def` | [mkAtomicWithSuggestionsStx](declarations/mkatomicwithsuggestionsstx.md) | 965 | `BLOCKED_NATIVE_ADMISSION` |
| 87 | `def` | [mkSimpleTacStx](declarations/mksimpletacstx.md) | 972 | `BLOCKED_NATIVE_ADMISSION` |
| 88 | `def` | [mkFunIndStx](declarations/mkfunindstx.md) | 978 | `BLOCKED_NATIVE_ADMISSION` |
| 89 | `def` | [mkAllFunIndStx](declarations/mkallfunindstx.md) | 997 | `BLOCKED_NATIVE_ADMISSION` |
| 90 | `def` | [mkIndStx](declarations/mkindstx.md) | 1005 | `BLOCKED_NATIVE_ADMISSION` |
| 91 | `def` | [mkAllIndStx](declarations/mkallindstx.md) | 1020 | `BLOCKED_NATIVE_ADMISSION` |
| 92 | `def` | [mkTryEvalSuggestStxUnsafe](declarations/mktryevalsuggeststxunsafe.md) | 1027 | `BLOCKED_NATIVE_ADMISSION` |
| 93 | `opaque` | [mkTryEvalSuggestStx](declarations/mktryevalsuggeststx.md) | 1077 | `BLOCKED_NATIVE_ADMISSION` |
| 94 | `def` | [wrapSuggestionWithBy](declarations/wrapsuggestionwithby.md) | 1080 | `BLOCKED_NATIVE_ADMISSION` |
| 95 | `def` | [evalAndSuggestWithBy](declarations/evalandsuggestwithby.md) | 1088 | `BLOCKED_NATIVE_ADMISSION` |
| 96 | `def` | [elabTryCore](declarations/elabtrycore.md) | 1103 | `BLOCKED_NATIVE_ADMISSION` |
| 97 | `def` | [collectTryCoreSuggestions](declarations/collecttrycoresuggestions.md) | 1119 | `BLOCKED_NATIVE_ADMISSION` |
| 98 | `def` | [evalTryTrace](declarations/evaltrytrace.md) | 1132 | `BLOCKED_NATIVE_ADMISSION` |
| 99 | `def` | [evalTryTraceWith](declarations/evaltrytracewith.md) | 1138 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=3ce86cae8d4a46c982634223bb673dca65e1ace5613a047c2bb131b5fcb49947 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Try/Variante4a4c5c674db8b798228eedb84b8b73b6365710a17ba9aa13ce0e55b805991c4.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
