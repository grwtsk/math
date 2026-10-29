# Brownian Motion Basic Public

[Complete source index](../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**24 observed declarations and anonymous commands**, 22 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Distributions/Basic/Variant25877b49ef39d0440c2d8aa5a00da61e8133db0f832f9d80470c9ff21ed9b478.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `beab79bdd3cb92adb1357a3315010ccc3115485b`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../_verification/specifications/ProbabilityTheoryAndStochasticProcesses/BrownianMotionBasicPublic.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `structure` | [IsPreBrownianReal](declarations/isprebrownianreal.md) | 75 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `lemma` | [IsPreBrownianReal.congr](declarations/isprebrownianreal-congr.md) | 80 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `lemma` | [IsPreBrownianReal.isGaussianProcess](declarations/isprebrownianreal-isgaussianprocess.md) | 88 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `lemma` | [IsPreBrownianReal.aemeasurable](declarations/isprebrownianreal-aemeasurable.md) | 91 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `lemma` | [IsPreBrownianReal.hasLaw_eval](declarations/isprebrownianreal-haslaw-eval.md) | 95 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `lemma` | [IsPreBrownianReal.eval_zero_ae_eq_zero](declarations/isprebrownianreal-eval-zero-ae-eq-zero.md) | 99 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `lemma` | [IsPreBrownianReal.hasLaw_sub](declarations/isprebrownianreal-haslaw-sub.md) | 105 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `lemma` | [IsPreBrownianReal.integral_eval](declarations/isprebrownianreal-integral-eval.md) | 110 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `lemma` | [IsPreBrownianReal.integrable_eval](declarations/isprebrownianreal-integrable-eval.md) | 114 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `lemma` | [IsPreBrownianReal.covariance_eval](declarations/isprebrownianreal-covariance-eval.md) | 117 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `lemma` | [IsPreBrownianReal.covariance_fun_eval](declarations/isprebrownianreal-covariance-fun-eval.md) | 126 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [IsGaussianProcess.isPreBrownianReal_of_covariance](declarations/isgaussianprocess-isprebrownianreal-of-covariance.md) | 131 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `lemma` | [IsPreBrownianReal.hasIndepIncrements](declarations/isprebrownianreal-hasindepincrements.md) | 169 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [HasIndepIncrements.isPreBrownianReal_of_hasLaw](declarations/hasindepincrements-isprebrownianreal-of-haslaw.md) | 188 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `lemma` | [IsPreBrownianReal.neg](declarations/isprebrownianreal-neg.md) | 211 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `lemma` | [IsPreBrownianReal.smul](declarations/isprebrownianreal-smul.md) | 220 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `lemma` | [IsPreBrownianReal.shift](declarations/isprebrownianreal-shift.md) | 235 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `lemma` | [IsPreBrownianReal.indepFun_shift](declarations/isprebrownianreal-indepfun-shift.md) | 253 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `lemma` | [IsPreBrownianReal.inv](declarations/isprebrownianreal-inv.md) | 277 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `structure` | [IsBrownianReal](declarations/isbrownianreal.md) | 302 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `lemma` | [IsBrownianReal.neg](declarations/isbrownianreal-neg.md) | 306 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `lemma` | [IsBrownianReal.smul](declarations/isbrownianreal-smul.md) | 312 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `lemma` | [IsBrownianReal.shift](declarations/isbrownianreal-shift.md) | 319 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `lemma` | [IsBrownianReal.tendsto_nhds_zero](declarations/isbrownianreal-tendsto-nhds-zero.md) | 326 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=48a15ceb9c5bed49bf89bcacbc85b766c80c8e413db058dca0ad2245f0986b9e -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Distributions/Basic/Variant25877b49ef39d0440c2d8aa5a00da61e8133db0f832f9d80470c9ff21ed9b478.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
