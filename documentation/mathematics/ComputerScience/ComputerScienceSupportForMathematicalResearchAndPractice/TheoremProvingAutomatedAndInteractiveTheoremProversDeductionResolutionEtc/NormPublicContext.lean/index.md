# Norm Public Context

[Complete source index](../../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**34 observed declarations and anonymous commands**, 0 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Norm/Variantc366e6d89d41f83eec01ebe6a704ddb1e6227cd756e35a40525da3251a13fc56.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `49aafd0e2479937b27e3e66b03fb9833b4548d53`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../_verification/specifications/ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/NormPublicContext.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `structure` | [Context](declarations/context.md) | 27 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `structure` | [State](declarations/state.md) | 32 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `abbrev` | [NormM](declarations/normm.md) | 39 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `def` | [getForwardState](declarations/getforwardstate.md) | 41 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `def` | [getResetForwardState](declarations/getresetforwardstate.md) | 44 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `def` | [modifyForwardState](declarations/modifyforwardstate.md) | 47 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `def` | [updateForwardState](declarations/updateforwardstate.md) | 56 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `def` | [eraseForwardRuleMatch](declarations/eraseforwardrulematch.md) | 61 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `def` | [applyDiffToForwardState](declarations/applydifftoforwardstate.md) | 64 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `inductive` | [NormRuleResult](declarations/normruleresult.md) | 69 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `def` | [newGoal?](declarations/newgoal.md) | 75 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `def` | [steps?](declarations/steps.md) | 79 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `def` | [optNormRuleResultEmoji](declarations/optnormruleresultemoji.md) | 84 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `def` | [withNormTraceNode](declarations/withnormtracenode.md) | 90 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `def` | [runNormRuleTac](declarations/runnormruletac.md) | 105 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `def` | [runNormRule](declarations/runnormrule.md) | 138 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `def` | [runFirstNormRule](declarations/runfirstnormrule.md) | 158 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `def` | [mkNormSimpScriptStep](declarations/mknormsimpscriptstep.md) | 167 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `def` | [normSimpCore](declarations/normsimpcore.md) | 190 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `def` | [checkSimp](declarations/checksimp.md) | 249 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `def` | [normSimp](declarations/normsimp.md) | 271 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `def` | [normUnfoldCore](declarations/normunfoldcore.md) | 281 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `def` | [normUnfold](declarations/normunfold.md) | 292 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `inductive` | [NormSeqResult](declarations/normseqresult.md) | 301 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `def` | [NormRuleResult.toNormSeqResult](declarations/normruleresult-tonormseqresult.md) | 307 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `def` | [optNormRuleResultToNormSeqResult](declarations/optnormruleresulttonormseqresult.md) | 312 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `abbrev` | [NormStep](declarations/normstep.md) | 317 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `def` | [runNormSteps](declarations/runnormsteps.md) | 321 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `def` | [runPreSimpRules](declarations/runpresimprules.md) | 364 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `def` | [runPostSimpRules](declarations/runpostsimprules.md) | 369 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `def` | [unfold](declarations/unfold.md) | 374 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `def` | [simp](declarations/simp.md) | 382 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `def` | [normalizeGoalMVar](declarations/normalizegoalmvar.md) | 392 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `def` | [normalizeGoalIfNecessary](declarations/normalizegoalifnecessary.md) | 405 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=685a95c528d71893d81c089e062b21953fbde9465c5241721e4a9d426f7806ba -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Norm/Variantc366e6d89d41f83eec01ebe6a704ddb1e6227cd756e35a40525da3251a13fc56.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
