# Recursive Rational Subdivision Probe

[Complete source index](../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**42 observed declarations and anonymous commands**, 20 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RecursiveRationalSubdivisionProbe/Variant853f5657ac64d18292f932e4a312699ca9bed8fd3c34f9db59573f569194c74b.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `056f22f9bc71efe7a46655c76ecf6ca6b52c9b36`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../_verification/specifications/GroupTheoryAndGeneralizations/RecursiveRationalSubdivisionProbe.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `abbrev` | [UnitInterval](declarations/unitinterval.md) | 21 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `abbrev` | [ControlRow](declarations/controlrow.md) | 27 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `def` | [step](declarations/step.md) | 30 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `def` | [deCasteljau](declarations/decasteljau.md) | 34 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `def` | [rowCombo](declarations/rowcombo.md) | 39 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `lemma` | [step_rowCombo](declarations/step-rowcombo.md) | 42 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `lemma` | [deCasteljau_rowCombo](declarations/decasteljau-rowcombo.md) | 48 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `lemma` | [step_eq_rowCombo_self_step](declarations/step-eq-rowcombo-self-step.md) | 58 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `def` | [splitLeftRow](declarations/splitleftrow.md) | 65 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `lemma` | [step_splitLeftRow](declarations/step-splitleftrow.md) | 68 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `lemma` | [deCasteljau_splitLeftRow_mul](declarations/decasteljau-splitleftrow-mul.md) | 77 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [deCasteljau_splitLeftRow](declarations/decasteljau-splitleftrow.md) | 87 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `lemma` | [deCasteljau_congr_prefix](declarations/decasteljau-congr-prefix.md) | 93 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `def` | [splitRightRow](declarations/splitrightrow.md) | 106 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `lemma` | [step_splitRightRow_prefix](declarations/step-splitrightrow-prefix.md) | 109 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [deCasteljau_splitRightRow](declarations/decasteljau-splitrightrow.md) | 128 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `structure` | [Segment](declarations/segment.md) | 153 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `def` | [homogeneousControl](declarations/homogeneouscontrol.md) | 164 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `def` | [homogeneousRow](declarations/homogeneousrow.md) | 169 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `lemma` | [homogeneousRow_apply_of_le](declarations/homogeneousrow-apply-of-le.md) | 172 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `def` | [dehomogenize](declarations/dehomogenize.md) | 178 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `def` | [numerator](declarations/numerator.md) | 182 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `def` | [denominator](declarations/denominator.md) | 186 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `def` | [eval](declarations/eval.md) | 190 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `lemma` | [deCasteljau_snd_pos](declarations/decasteljau-snd-pos.md) | 193 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `lemma` | [homogeneousEval_weight_pos](declarations/homogeneouseval-weight-pos.md) | 212 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [denominator_pos](declarations/denominator-pos.md) | 220 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `def` | [ofHomogeneous](declarations/ofhomogeneous.md) | 225 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `lemma` | [ofHomogeneous_homogeneousControl](declarations/ofhomogeneous-homogeneouscontrol.md) | 233 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `def` | [leftHomogeneous](declarations/lefthomogeneous.md) | 243 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `lemma` | [leftHomogeneous_weight_pos](declarations/lefthomogeneous-weight-pos.md) | 247 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `def` | [rightHomogeneous](declarations/righthomogeneous.md) | 258 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `lemma` | [rightHomogeneous_weight_pos](declarations/righthomogeneous-weight-pos.md) | 262 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `def` | [splitLeftSegment](declarations/splitleftsegment.md) | 273 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `def` | [splitRightSegment](declarations/splitrightsegment.md) | 277 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `def` | [splitAt](declarations/splitat.md) | 282 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `lemma` | [splitLeftSegment_row_eq](declarations/splitleftsegment-row-eq.md) | 286 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `lemma` | [splitRightSegment_row_eq](declarations/splitrightsegment-row-eq.md) | 298 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `def` | [leftParameter](declarations/leftparameter.md) | 311 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `def` | [rightParameter](declarations/rightparameter.md) | 317 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `theorem` | [eval_split_left](declarations/eval-split-left.md) | 322 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `theorem` | [eval_split_right](declarations/eval-split-right.md) | 339 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=a8cf4b583c3f875451bc318456a05682534da66f2ea6731d6bd2b35fea24a519 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RecursiveRationalSubdivisionProbe/Variant853f5657ac64d18292f932e4a312699ca9bed8fd3c34f9db59573f569194c74b.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
