# Subdivision Public Edition2

[Complete source index](../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**71 observed declarations and anonymous commands**, 42 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/CombinatoricsAndDiscreteMathematics/Subdivision/Variant7d2c51124e27906cfcfe9d925999e0cb2e598d79384a26623827500463992654.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `37ddcd8fe2d1ff6c764eb21fb291388fa0399581`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../_verification/specifications/GroupTheoryAndGeneralizations/SubdivisionPublicEdition2.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `abbrev` | [ControlRow](declarations/controlrow.md) | 31 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `def` | [step](declarations/step.md) | 34 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `def` | [eval](declarations/eval.md) | 38 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `def` | [bernsteinWeight](declarations/bernsteinweight.md) | 43 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `lemma` | [bernsteinWeight_zero_succ](declarations/bernsteinweight-zero-succ.md) | 46 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `lemma` | [bernsteinWeight_succ_succ](declarations/bernsteinweight-succ-succ.md) | 52 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `def` | [bernsteinSum](declarations/bernsteinsum.md) | 70 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `lemma` | [shifted_bernsteinWeight_sum](declarations/shifted-bernsteinweight-sum.md) | 73 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `lemma` | [bernsteinSum_succ_eq_step](declarations/bernsteinsum-succ-eq-step.md) | 81 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [eval_eq_bernsteinWeight_sum](declarations/eval-eq-bernsteinweight-sum.md) | 110 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `lemma` | [bernsteinWeight_eq_bernstein](declarations/bernsteinweight-eq-bernstein.md) | 117 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [eval_eq_bernstein](declarations/eval-eq-bernstein.md) | 122 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `def` | [rowCombo](declarations/rowcombo.md) | 133 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `lemma` | [step_rowCombo](declarations/step-rowcombo.md) | 136 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `lemma` | [eval_rowCombo](declarations/eval-rowcombo.md) | 142 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `lemma` | [step_eq_rowCombo_self_step](declarations/step-eq-rowcombo-self-step.md) | 151 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `def` | [splitLeft](declarations/splitleft.md) | 157 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `lemma` | [step_splitLeft](declarations/step-splitleft.md) | 160 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [eval_split_left_mul](declarations/eval-split-left-mul.md) | 168 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [eval_split_left](declarations/eval-split-left.md) | 176 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `lemma` | [eval_congr_prefix](declarations/eval-congr-prefix.md) | 180 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `def` | [splitRight](declarations/splitright.md) | 192 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `lemma` | [step_splitRight_prefix](declarations/step-splitright-prefix.md) | 195 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [eval_split_right](declarations/eval-split-right-source-edition-2.md) | 213 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `abbrev` | [FiniteControl](declarations/finitecontrol.md) | 233 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `def` | [extendFinite](declarations/extendfinite.md) | 238 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `def` | [finiteEval](declarations/finiteeval.md) | 241 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [finiteEval_eq_bernstein](declarations/finiteeval-eq-bernstein.md) | 245 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `def` | [finiteSplitLeft](declarations/finitesplitleft.md) | 254 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `def` | [finiteSplitRight](declarations/finitesplitright.md) | 258 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `lemma` | [eval_extendFinite_finiteSplitLeft](declarations/eval-extendfinite-finitesplitleft.md) | 262 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `lemma` | [eval_extendFinite_finiteSplitRight](declarations/eval-extendfinite-finitesplitright.md) | 270 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [finiteEval_split_left](declarations/finiteeval-split-left.md) | 278 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [finiteEval_split_right](declarations/finiteeval-split-right.md) | 284 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `abbrev` | [WeightedHomogeneousPoint](declarations/weightedhomogeneouspoint.md) | 293 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `abbrev` | [FiniteWeightedControl](declarations/finiteweightedcontrol.md) | 296 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `def` | [weightedSplitLeft](declarations/weightedsplitleft.md) | 299 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `def` | [weightedSplitRight](declarations/weightedsplitright.md) | 303 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `def` | [dehomogenize](declarations/dehomogenize.md) | 309 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `def` | [rationalEval](declarations/rationaleval.md) | 312 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `theorem` | [rationalEval_split_left](declarations/rationaleval-split-left.md) | 315 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `theorem` | [rationalEval_split_right](declarations/rationaleval-split-right.md) | 322 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `lemma` | [eval_snd](declarations/eval-snd.md) | 333 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `lemma` | [eval_pos_of_prefix_pos](declarations/eval-pos-of-prefix-pos.md) | 342 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `def` | [homogeneousControl](declarations/homogeneouscontrol.md) | 364 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `theorem` | [weightedSplitLeft_weight_pos](declarations/weightedsplitleft-weight-pos.md) | 368 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `theorem` | [weightedSplitRight_weight_pos](declarations/weightedsplitright-weight-pos.md) | 380 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `def` | [segmentOfPositiveHomogeneous](declarations/segmentofpositivehomogeneous.md) | 395 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `def` | [splitLeftSegment](declarations/splitleftsegment.md) | 402 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `def` | [splitRightSegment](declarations/splitrightsegment.md) | 409 | `BLOCKED_NATIVE_ADMISSION` |
| 51 | `def` | [splitAt](declarations/splitat-source-edition-2.md) | 417 | `BLOCKED_NATIVE_ADMISSION` |
| 52 | `def` | [leftParameter](declarations/leftparameter-source-edition-2.md) | 423 | `BLOCKED_NATIVE_ADMISSION` |
| 53 | `def` | [rightParameter](declarations/rightparameter-source-edition-2.md) | 432 | `BLOCKED_NATIVE_ADMISSION` |
| 54 | `theorem` | [leftParameter_val](declarations/leftparameter-val.md) | 444 | `BLOCKED_NATIVE_ADMISSION` |
| 55 | `theorem` | [rightParameter_val](declarations/rightparameter-val-source-edition-2.md) | 447 | `BLOCKED_NATIVE_ADMISSION` |
| 56 | `theorem` | [homogeneousControl_segmentOfPositiveHomogeneous](declarations/homogeneouscontrol-segmentofpositivehomogeneous.md) | 450 | `BLOCKED_NATIVE_ADMISSION` |
| 57 | `theorem` | [homogeneousControl_splitLeftSegment](declarations/homogeneouscontrol-splitleftsegment.md) | 460 | `BLOCKED_NATIVE_ADMISSION` |
| 58 | `theorem` | [homogeneousControl_splitRightSegment](declarations/homogeneouscontrol-splitrightsegment.md) | 466 | `BLOCKED_NATIVE_ADMISSION` |
| 59 | `theorem` | [finiteEval_homogeneousControl](declarations/finiteeval-homogeneouscontrol.md) | 472 | `BLOCKED_NATIVE_ADMISSION` |
| 60 | `theorem` | [rationalEval_homogeneousControl](declarations/rationaleval-homogeneouscontrol.md) | 497 | `BLOCKED_NATIVE_ADMISSION` |
| 61 | `theorem` | [splitLeftSegment_eval](declarations/splitleftsegment-eval.md) | 505 | `BLOCKED_NATIVE_ADMISSION` |
| 62 | `theorem` | [splitRightSegment_eval](declarations/splitrightsegment-eval.md) | 525 | `BLOCKED_NATIVE_ADMISSION` |
| 63 | `theorem` | [splitAt_left_eval](declarations/splitat-left-eval.md) | 544 | `BLOCKED_NATIVE_ADMISSION` |
| 64 | `theorem` | [splitAt_right_eval](declarations/splitat-right-eval.md) | 549 | `BLOCKED_NATIVE_ADMISSION` |
| 65 | `def` | [leftParameter](declarations/leftparameter.md) | 567 | `BLOCKED_NATIVE_ADMISSION` |
| 66 | `def` | [rightParameter](declarations/rightparameter.md) | 572 | `BLOCKED_NATIVE_ADMISSION` |
| 67 | `theorem` | [leftParameter_val](declarations/leftparameter-val-source-edition-2.md) | 576 | `BLOCKED_NATIVE_ADMISSION` |
| 68 | `theorem` | [rightParameter_val](declarations/rightparameter-val.md) | 581 | `BLOCKED_NATIVE_ADMISSION` |
| 69 | `def` | [splitAt](declarations/splitat.md) | 587 | `BLOCKED_NATIVE_ADMISSION` |
| 70 | `theorem` | [eval_split_left](declarations/eval-split-left-source-edition-2.md) | 593 | `BLOCKED_NATIVE_ADMISSION` |
| 71 | `theorem` | [eval_split_right](declarations/eval-split-right.md) | 600 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=0d7ff0f91be03516ecbea605282ce1083136a8f63d803f4d0cc957ac313a816e -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/Subdivision/Variant7d2c51124e27906cfcfe9d925999e0cb2e598d79384a26623827500463992654.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
