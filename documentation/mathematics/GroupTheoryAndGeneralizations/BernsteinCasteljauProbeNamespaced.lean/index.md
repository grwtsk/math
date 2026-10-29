# Bernstein Casteljau Probe Namespaced

[Complete source index](../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**66 observed declarations and anonymous commands**, 40 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Analysis/BernsteinCasteljauProbe/Variant29da71047825520b4a96faa2f17ab9d1afe01eb6d8c4af9a6d4173a44e66b85e.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `bcb8a391e0329bd57112f9691e07d0754590ceb6`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../_verification/specifications/GroupTheoryAndGeneralizations/BernsteinCasteljauProbeNamespaced.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `abbrev` | [ControlRow](declarations/controlrow.md) | 36 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `def` | [step](declarations/step.md) | 39 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `def` | [eval](declarations/eval.md) | 43 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `def` | [bernsteinWeight](declarations/bernsteinweight.md) | 48 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `lemma` | [bernsteinWeight_zero_succ](declarations/bernsteinweight-zero-succ.md) | 51 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `lemma` | [bernsteinWeight_succ_succ](declarations/bernsteinweight-succ-succ.md) | 57 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `def` | [bernsteinSum](declarations/bernsteinsum.md) | 75 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `lemma` | [shifted_bernsteinWeight_sum](declarations/shifted-bernsteinweight-sum.md) | 78 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `lemma` | [bernsteinSum_succ_eq_step](declarations/bernsteinsum-succ-eq-step.md) | 86 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [eval_eq_bernsteinWeight_sum](declarations/eval-eq-bernsteinweight-sum.md) | 115 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `lemma` | [bernsteinWeight_eq_bernstein](declarations/bernsteinweight-eq-bernstein.md) | 122 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [eval_eq_bernstein](declarations/eval-eq-bernstein.md) | 127 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `def` | [rowCombo](declarations/rowcombo.md) | 138 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `lemma` | [step_rowCombo](declarations/step-rowcombo.md) | 141 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `lemma` | [eval_rowCombo](declarations/eval-rowcombo.md) | 147 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `lemma` | [step_eq_rowCombo_self_step](declarations/step-eq-rowcombo-self-step.md) | 156 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `def` | [splitLeft](declarations/splitleft.md) | 162 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `lemma` | [step_splitLeft](declarations/step-splitleft.md) | 165 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [eval_split_left_mul](declarations/eval-split-left-mul.md) | 173 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [eval_split_left](declarations/eval-split-left.md) | 181 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `lemma` | [eval_congr_prefix](declarations/eval-congr-prefix.md) | 185 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `def` | [splitRight](declarations/splitright.md) | 197 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `lemma` | [step_splitRight_prefix](declarations/step-splitright-prefix.md) | 200 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [eval_split_right](declarations/eval-split-right.md) | 218 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `abbrev` | [FiniteControl](declarations/finitecontrol.md) | 238 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `def` | [extendFinite](declarations/extendfinite.md) | 243 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `def` | [finiteEval](declarations/finiteeval.md) | 246 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [finiteEval_eq_bernstein](declarations/finiteeval-eq-bernstein.md) | 250 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `def` | [finiteSplitLeft](declarations/finitesplitleft.md) | 259 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `def` | [finiteSplitRight](declarations/finitesplitright.md) | 263 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `lemma` | [eval_extendFinite_finiteSplitLeft](declarations/eval-extendfinite-finitesplitleft.md) | 267 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `lemma` | [eval_extendFinite_finiteSplitRight](declarations/eval-extendfinite-finitesplitright.md) | 275 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [finiteEval_split_left](declarations/finiteeval-split-left.md) | 283 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [finiteEval_split_right](declarations/finiteeval-split-right.md) | 289 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `abbrev` | [WeightedHomogeneousPoint](declarations/weightedhomogeneouspoint.md) | 298 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `abbrev` | [FiniteWeightedControl](declarations/finiteweightedcontrol.md) | 301 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `def` | [weightedSplitLeft](declarations/weightedsplitleft.md) | 304 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `def` | [weightedSplitRight](declarations/weightedsplitright.md) | 308 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `def` | [dehomogenize](declarations/dehomogenize.md) | 314 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `def` | [rationalEval](declarations/rationaleval.md) | 317 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `theorem` | [rationalEval_split_left](declarations/rationaleval-split-left.md) | 320 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `theorem` | [rationalEval_split_right](declarations/rationaleval-split-right.md) | 327 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `lemma` | [eval_snd](declarations/eval-snd.md) | 338 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `lemma` | [eval_pos_of_prefix_pos](declarations/eval-pos-of-prefix-pos.md) | 347 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `def` | [homogeneousControl](declarations/homogeneouscontrol.md) | 369 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `theorem` | [weightedSplitLeft_weight_pos](declarations/weightedsplitleft-weight-pos.md) | 373 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `theorem` | [weightedSplitRight_weight_pos](declarations/weightedsplitright-weight-pos.md) | 385 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `def` | [segmentOfPositiveHomogeneous](declarations/segmentofpositivehomogeneous.md) | 400 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `def` | [splitLeftSegment](declarations/splitleftsegment.md) | 407 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `def` | [splitRightSegment](declarations/splitrightsegment.md) | 414 | `BLOCKED_NATIVE_ADMISSION` |
| 51 | `def` | [splitAt](declarations/splitat.md) | 422 | `BLOCKED_NATIVE_ADMISSION` |
| 52 | `def` | [leftParameter](declarations/leftparameter.md) | 427 | `BLOCKED_NATIVE_ADMISSION` |
| 53 | `def` | [rightParameter](declarations/rightparameter.md) | 435 | `BLOCKED_NATIVE_ADMISSION` |
| 54 | `theorem` | [leftParameter_val](declarations/leftparameter-val.md) | 447 | `BLOCKED_NATIVE_ADMISSION` |
| 55 | `theorem` | [rightParameter_val](declarations/rightparameter-val.md) | 450 | `BLOCKED_NATIVE_ADMISSION` |
| 56 | `theorem` | [homogeneousControl_segmentOfPositiveHomogeneous](declarations/homogeneouscontrol-segmentofpositivehomogeneous.md) | 453 | `BLOCKED_NATIVE_ADMISSION` |
| 57 | `theorem` | [homogeneousControl_splitLeftSegment](declarations/homogeneouscontrol-splitleftsegment.md) | 463 | `BLOCKED_NATIVE_ADMISSION` |
| 58 | `theorem` | [homogeneousControl_splitRightSegment](declarations/homogeneouscontrol-splitrightsegment.md) | 469 | `BLOCKED_NATIVE_ADMISSION` |
| 59 | `theorem` | [finiteEval_homogeneousControl](declarations/finiteeval-homogeneouscontrol.md) | 475 | `BLOCKED_NATIVE_ADMISSION` |
| 60 | `theorem` | [rationalEval_homogeneousControl](declarations/rationaleval-homogeneouscontrol.md) | 500 | `BLOCKED_NATIVE_ADMISSION` |
| 61 | `theorem` | [eval_split_left_canonical](declarations/eval-split-left-canonical.md) | 506 | `BLOCKED_NATIVE_ADMISSION` |
| 62 | `theorem` | [eval_split_right_canonical](declarations/eval-split-right-canonical.md) | 517 | `BLOCKED_NATIVE_ADMISSION` |
| 63 | `theorem` | [splitLeftSegment_eval](declarations/splitleftsegment-eval.md) | 530 | `BLOCKED_NATIVE_ADMISSION` |
| 64 | `theorem` | [splitRightSegment_eval](declarations/splitrightsegment-eval.md) | 550 | `BLOCKED_NATIVE_ADMISSION` |
| 65 | `theorem` | [splitAt_left_eval](declarations/splitat-left-eval.md) | 569 | `BLOCKED_NATIVE_ADMISSION` |
| 66 | `theorem` | [splitAt_right_eval](declarations/splitat-right-eval.md) | 574 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=f42f58f61abf6ac8a27800d75dac33489fc4288b65059df154ffc2ab4bf38eea -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/BernsteinCasteljauProbe/Variant29da71047825520b4a96faa2f17ab9d1afe01eb6d8c4af9a6d4173a44e66b85e.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
