# Synth Instance Namespaced Public Get Max Heartbeats

[Complete source index](../../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**61 observed declarations and anonymous commands**, 0 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SynthInstance/Variant75943edea457557e1b3cc1a79e30a2a9bd3b768d8841d2145a299e90de9cc7d4.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `e608408e1c1d850abed1de7230db8288ff187fd3`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../_verification/specifications/ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/SynthInstanceNamespacedPublicGetMaxHeartbeats.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [getMaxHeartbeats](declarations/getmaxheartbeats.md) | 45 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `structure` | [Instance](declarations/instance-source-edition-3.md) | 48 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `structure` | [GeneratorNode](declarations/generatornode.md) | 53 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `structure` | [ConsumerNode](declarations/consumernode.md) | 69 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `inductive` | [Waiter](declarations/waiter.md) | 77 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `def` | [Waiter.isRoot](declarations/waiter-isroot.md) | 81 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `structure` | [State](declarations/state.md) | 107 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `abbrev` | [M](declarations/m.md) | 113 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `instance` | [(anonymous)](declarations/instance.md) | 116 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `def` | [normLevel](declarations/normlevel.md) | 120 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `def` | [normExpr](declarations/normexpr.md) | 140 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `def` | [mkTableKey](declarations/mktablekey.md) | 168 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `structure` | [Answer](declarations/answer.md) | 173 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `structure` | [TableEntry](declarations/tableentry.md) | 179 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `structure` | [Context](declarations/context.md) | 183 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `structure` | [State](declarations/state-source-edition-2.md) | 194 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `abbrev` | [SynthM](declarations/synthm.md) | 200 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `def` | [checkSystem](declarations/checksystem.md) | 202 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `instance` | [(anonymous)](declarations/instance-source-edition-2.md) | 206 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `def` | [getInstances](declarations/getinstances.md) | 210 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `def` | [mkGeneratorNode?](declarations/mkgeneratornode.md) | 251 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `def` | [newSubgoal](declarations/newsubgoal.md) | 268 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `def` | [findEntry?](declarations/findentry.md) | 280 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `def` | [getEntry](declarations/getentry.md) | 283 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `def` | [mkTableKeyFor](declarations/mktablekeyfor.md) | 293 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `structure` | [SubgoalsResult](declarations/subgoalsresult.md) | 305 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `def` | [getSubgoals](declarations/getsubgoals.md) | 325 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `def` | [tryResolve](declarations/tryresolve.md) | 354 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `def` | [tryAnswer](declarations/tryanswer.md) | 432 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `def` | [wakeUp](declarations/wakeup.md) | 441 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `def` | [isNewAnswer](declarations/isnewanswer.md) | 455 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `def` | [mkAnswer](declarations/mkanswer.md) | 461 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `def` | [addAnswer](declarations/addanswer.md) | 473 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `def` | [hasUnusedArguments](declarations/hasunusedarguments.md) | 494 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `def` | [removeUnusedArguments?](declarations/removeunusedarguments.md) | 520 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `def` | [consume](declarations/consume.md) | 542 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `def` | [getTop](declarations/gettop.md) | 591 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `def` | [modifyTop](declarations/modifytop.md) | 594 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `def` | [generate](declarations/generate.md) | 598 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `def` | [getNextToResume](declarations/getnexttoresume.md) | 635 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `def` | [resume](declarations/resume.md) | 643 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `def` | [step](declarations/step.md) | 660 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `def` | [getResult](declarations/getresult.md) | 672 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `def` | [synth](declarations/synth.md) | 675 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `def` | [main](declarations/main.md) | 683 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `inductive` | [PreprocessKind](declarations/preprocesskind.md) | 714 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `structure` | [PreprocessResult](declarations/preprocessresult.md) | 727 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `def` | [preprocess](declarations/preprocess.md) | 745 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `def` | [preprocessOutParam](declarations/preprocessoutparam.md) | 783 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `def` | [assignOutParams](declarations/assignoutparams.md) | 833 | `BLOCKED_NATIVE_ADMISSION` |
| 51 | `def` | [checkMayHaveSideEffects](declarations/checkmayhavesideeffects.md) | 866 | `BLOCKED_NATIVE_ADMISSION` |
| 52 | `def` | [applyAbstractResult?](declarations/applyabstractresult.md) | 885 | `BLOCKED_NATIVE_ADMISSION` |
| 53 | `def` | [applyCachedAbstractResult?](declarations/applycachedabstractresult.md) | 936 | `BLOCKED_NATIVE_ADMISSION` |
| 54 | `def` | [cacheResult](declarations/cacheresult.md) | 951 | `BLOCKED_NATIVE_ADMISSION` |
| 55 | `def` | [synthInstanceCore?](declarations/synthinstancecore.md) | 966 | `BLOCKED_NATIVE_ADMISSION` |
| 56 | `def` | [synthInstance?](declarations/synthinstance.md) | 1016 | `BLOCKED_NATIVE_ADMISSION` |
| 57 | `def` | [trySynthInstance](declarations/trysynthinstance.md) | 1022 | `BLOCKED_NATIVE_ADMISSION` |
| 58 | `def` | [throwFailedToSynthesize](declarations/throwfailedtosynthesize.md) | 1027 | `BLOCKED_NATIVE_ADMISSION` |
| 59 | `def` | [synthInstance](declarations/synthinstance-source-edition-2.md) | 1030 | `BLOCKED_NATIVE_ADMISSION` |
| 60 | `def` | [synthPendingImp](declarations/synthpendingimp.md) | 1041 | `BLOCKED_NATIVE_ADMISSION` |
| 61 | `builtin_initialize` | [(anonymous)](declarations/builtin-initialize.md) | 1076 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=7c0d5fb67e93237b36e9f1436c91729723faff4009dd22a16849497d9d14c487 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SynthInstance/Variant75943edea457557e1b3cc1a79e30a2a9bd3b768d8841d2145a299e90de9cc7d4.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
