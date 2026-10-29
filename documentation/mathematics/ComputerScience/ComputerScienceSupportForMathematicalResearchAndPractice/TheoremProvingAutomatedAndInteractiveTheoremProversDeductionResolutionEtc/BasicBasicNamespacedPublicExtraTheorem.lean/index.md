# Basic Basic Namespaced Public Extra Theorem

[Complete source index](../../../../complete-source-index.md) · [Up one directory](../../../../complete-source-index.md) · [Full source](source.md)

**59 observed declarations and anonymous commands**, 0 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variantca2c10857712cbf8df34babfb639b3a86e973364a2ac5ea2c35243526db3e6f9.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `613179b28721a82743286336c81bbbea45f64052`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../_verification/specifications/ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/BasicBasicNamespacedPublicExtraTheorem.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `structure` | [Context](declarations/context.md) | 28 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `inductive` | [ExtraTheorem](declarations/extratheorem.md) | 38 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `structure` | [SimpCacheKey](declarations/simpcachekey.md) | 44 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `structure` | [DSimpArgs](declarations/dsimpargs.md) | 49 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `structure` | [DSimpCacheKey](declarations/dsimpcachekey.md) | 56 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `structure` | [Cache](declarations/cache.md) | 61 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `structure` | [State](declarations/state.md) | 71 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `structure` | [SavedState](declarations/savedstate.md) | 77 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `abbrev` | [GrindTacticM](declarations/grindtacticm.md) | 81 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `abbrev` | [GrindTactic](declarations/grindtactic.md) | 83 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `def` | [getGoals](declarations/getgoals.md) | 86 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `def` | [setGoals](declarations/setgoals.md) | 89 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `def` | [pruneSolvedGoals](declarations/prunesolvedgoals.md) | 92 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `def` | [getUnsolvedGoals](declarations/getunsolvedgoals.md) | 100 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `def` | [getUnsolvedGoalMVarIds](declarations/getunsolvedgoalmvarids.md) | 104 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `def` | [saveState](declarations/savestate.md) | 109 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `def` | [SavedState.restore](declarations/savedstate-restore.md) | 112 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `instance` | [(anonymous)](declarations/instance.md) | 117 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `instance` | [(anonymous)](declarations/instance-source-edition-6.md) | 121 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `builtin_initialize` | [(anonymous)](declarations/builtin-initialize.md) | 124 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `def` | [mkTacticInfo](declarations/mktacticinfo.md) | 128 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `def` | [mkInitialTacticInfo](declarations/mkinitialtacticinfo.md) | 138 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `def` | [withTacticInfoContext](declarations/withtacticinfocontext.md) | 143 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `structure` | [EvalTacticFailure](declarations/evaltacticfailure.md) | 146 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `def` | [evalGrindTactic](declarations/evalgrindtactic.md) | 150 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `def` | [throwNoGoalsToBeSolved](declarations/thrownogoalstobesolved.md) | 218 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `instance` | [(anonymous)](declarations/instance-source-edition-4.md) | 221 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `def` | [focus](declarations/focus.md) | 229 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `def` | [tryCatch](declarations/trycatch.md) | 241 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `def` | [tryCatchRestore](declarations/trycatchrestore.md) | 247 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `instance` | [(anonymous)](declarations/instance-source-edition-2.md) | 252 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `def` | [withoutRecover](declarations/withoutrecover.md) | 257 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `def` | [throwOrLogErrorAt](declarations/throworlogerrorat.md) | 263 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `def` | [throwOrLogError](declarations/throworlogerror.md) | 272 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `def` | [orElse](declarations/orelse.md) | 275 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `instance` | [(anonymous)](declarations/instance-source-edition-3.md) | 278 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `instance` | [(anonymous)](declarations/instance-source-edition-5.md) | 281 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `def` | [saveTacticInfoForToken](declarations/savetacticinfofortoken.md) | 290 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `def` | [withMacroExpansion](declarations/withmacroexpansion.md) | 296 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `def` | [adaptExpander](declarations/adaptexpander.md) | 301 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `def` | [getMainGoal](declarations/getmaingoal.md) | 306 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `def` | [withMainContext](declarations/withmaincontext.md) | 319 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `def` | [tryTactic?](declarations/trytactic.md) | 322 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `def` | [tryTactic](declarations/trytactic-source-edition-2.md) | 328 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `def` | [liftGrindM](declarations/liftgrindm.md) | 340 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `def` | [liftSymM](declarations/liftsymm.md) | 348 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `def` | [ensureSym](declarations/ensuresym.md) | 353 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `def` | [replaceMainGoal](declarations/replacemaingoal.md) | 357 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `def` | [liftGoalM](declarations/liftgoalm.md) | 362 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `inductive` | [LiftActionCoreResult](declarations/liftactioncoreresult.md) | 368 | `BLOCKED_NATIVE_ADMISSION` |
| 51 | `def` | [liftActionCore](declarations/liftactioncore.md) | 371 | `BLOCKED_NATIVE_ADMISSION` |
| 52 | `def` | [liftAction](declarations/liftaction.md) | 379 | `BLOCKED_NATIVE_ADMISSION` |
| 53 | `def` | [done](declarations/done.md) | 382 | `BLOCKED_NATIVE_ADMISSION` |
| 54 | `def` | [focusAndDone](declarations/focusanddone.md) | 398 | `BLOCKED_NATIVE_ADMISSION` |
| 55 | `def` | [closeUsingOrAdmit](declarations/closeusingoradmit.md) | 405 | `BLOCKED_NATIVE_ADMISSION` |
| 56 | `def` | [GrindTacticM.run](declarations/grindtacticm-run.md) | 419 | `BLOCKED_NATIVE_ADMISSION` |
| 57 | `def` | [mkEvalTactic'](declarations/mkevaltactic.md) | 422 | `BLOCKED_NATIVE_ADMISSION` |
| 58 | `def` | [mkEvalTactic](declarations/mkevaltactic-source-edition-2.md) | 444 | `BLOCKED_NATIVE_ADMISSION` |
| 59 | `def` | [GrindTacticM.runAtGoal](declarations/grindtacticm-runatgoal.md) | 447 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=db7c4b6aba711045b643f8a323396e6fbd474579380155b62843699eda288c01 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variantca2c10857712cbf8df34babfb639b3a86e973364a2ac5ea2c35243526db3e6f9.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
