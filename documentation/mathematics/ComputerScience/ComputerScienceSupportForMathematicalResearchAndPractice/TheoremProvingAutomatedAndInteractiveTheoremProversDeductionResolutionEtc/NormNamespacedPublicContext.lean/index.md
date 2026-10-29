# Norm Namespaced Public Context

[Complete source index](../../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**34 observed declarations and anonymous commands**, 0 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Norm/Variant604cefbbdacc4e21d9ed222fe37c834f197656a4e38775e4a787615b7650fc34.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `a4c199528916edf72b76d44e1050733b11a0399e`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../_verification/specifications/ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/NormNamespacedPublicContext.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `structure` | [Context](declarations/context.md) | 35 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `structure` | [State](declarations/state.md) | 40 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `abbrev` | [NormM](declarations/normm.md) | 47 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `def` | [getForwardState](declarations/getforwardstate.md) | 49 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `def` | [getResetForwardState](declarations/getresetforwardstate.md) | 52 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `def` | [modifyForwardState](declarations/modifyforwardstate.md) | 55 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `def` | [updateForwardState](declarations/updateforwardstate.md) | 64 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `def` | [eraseForwardRuleMatch](declarations/eraseforwardrulematch.md) | 69 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `def` | [applyDiffToForwardState](declarations/applydifftoforwardstate.md) | 72 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `inductive` | [NormRuleResult](declarations/normruleresult.md) | 77 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `def` | [newGoal?](declarations/newgoal.md) | 83 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `def` | [steps?](declarations/steps.md) | 87 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `def` | [optNormRuleResultEmoji](declarations/optnormruleresultemoji.md) | 92 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `def` | [withNormTraceNode](declarations/withnormtracenode.md) | 98 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `def` | [runNormRuleTac](declarations/runnormruletac.md) | 113 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `def` | [runNormRule](declarations/runnormrule.md) | 146 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `def` | [runFirstNormRule](declarations/runfirstnormrule.md) | 166 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `def` | [mkNormSimpScriptStep](declarations/mknormsimpscriptstep.md) | 175 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `def` | [normSimpCore](declarations/normsimpcore.md) | 198 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `def` | [checkSimp](declarations/checksimp.md) | 257 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `def` | [normSimp](declarations/normsimp.md) | 279 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `def` | [normUnfoldCore](declarations/normunfoldcore.md) | 289 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `def` | [normUnfold](declarations/normunfold.md) | 300 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `inductive` | [NormSeqResult](declarations/normseqresult.md) | 309 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `def` | [NormRuleResult.toNormSeqResult](declarations/normruleresult-tonormseqresult.md) | 315 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `def` | [optNormRuleResultToNormSeqResult](declarations/optnormruleresulttonormseqresult.md) | 320 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `abbrev` | [NormStep](declarations/normstep.md) | 325 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `def` | [runNormSteps](declarations/runnormsteps.md) | 329 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `def` | [runPreSimpRules](declarations/runpresimprules.md) | 372 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `def` | [runPostSimpRules](declarations/runpostsimprules.md) | 377 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `def` | [unfold](declarations/unfold.md) | 382 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `def` | [simp](declarations/simp.md) | 390 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `def` | [normalizeGoalMVar](declarations/normalizegoalmvar.md) | 400 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `def` | [normalizeGoalIfNecessary](declarations/normalizegoalifnecessary.md) | 413 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=1a1d9c4acbe2ba9b0188b881b09d7220fce83242739dcd367b40bc02b58797c6 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Norm/Variant604cefbbdacc4e21d9ed222fe37c834f197656a4e38775e4a787615b7650fc34.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
