# Recursive Rational Subdivision Probe Namespaced

[Complete source index](../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**42 observed declarations and anonymous commands**, 20 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RecursiveRationalSubdivisionProbe/Variant1664f724db1f0528d1017132bb7de9c54963b3a35893bf69dab88553dad16ee1.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `cd4f9172b9af1b9b93cd00002415ec2e848de599`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../_verification/specifications/GroupTheoryAndGeneralizations/RecursiveRationalSubdivisionProbeNamespaced.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `abbrev` | [UnitInterval](declarations/unitinterval.md) | 29 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `abbrev` | [ControlRow](declarations/controlrow.md) | 35 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `def` | [step](declarations/step.md) | 38 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `def` | [deCasteljau](declarations/decasteljau.md) | 42 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `def` | [rowCombo](declarations/rowcombo.md) | 47 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `lemma` | [step_rowCombo](declarations/step-rowcombo.md) | 50 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `lemma` | [deCasteljau_rowCombo](declarations/decasteljau-rowcombo.md) | 56 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `lemma` | [step_eq_rowCombo_self_step](declarations/step-eq-rowcombo-self-step.md) | 66 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `def` | [splitLeftRow](declarations/splitleftrow.md) | 73 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `lemma` | [step_splitLeftRow](declarations/step-splitleftrow.md) | 76 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `lemma` | [deCasteljau_splitLeftRow_mul](declarations/decasteljau-splitleftrow-mul.md) | 85 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [deCasteljau_splitLeftRow](declarations/decasteljau-splitleftrow.md) | 95 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `lemma` | [deCasteljau_congr_prefix](declarations/decasteljau-congr-prefix.md) | 101 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `def` | [splitRightRow](declarations/splitrightrow.md) | 114 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `lemma` | [step_splitRightRow_prefix](declarations/step-splitrightrow-prefix.md) | 117 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [deCasteljau_splitRightRow](declarations/decasteljau-splitrightrow.md) | 136 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `structure` | [Segment](declarations/segment.md) | 161 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `def` | [homogeneousControl](declarations/homogeneouscontrol.md) | 172 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `def` | [homogeneousRow](declarations/homogeneousrow.md) | 177 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `lemma` | [homogeneousRow_apply_of_le](declarations/homogeneousrow-apply-of-le.md) | 180 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `def` | [dehomogenize](declarations/dehomogenize.md) | 186 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `def` | [numerator](declarations/numerator.md) | 190 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `def` | [denominator](declarations/denominator.md) | 194 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `def` | [eval](declarations/eval.md) | 198 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `lemma` | [deCasteljau_snd_pos](declarations/decasteljau-snd-pos.md) | 201 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `lemma` | [homogeneousEval_weight_pos](declarations/homogeneouseval-weight-pos.md) | 220 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [denominator_pos](declarations/denominator-pos.md) | 228 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `def` | [ofHomogeneous](declarations/ofhomogeneous.md) | 233 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `lemma` | [ofHomogeneous_homogeneousControl](declarations/ofhomogeneous-homogeneouscontrol.md) | 241 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `def` | [leftHomogeneous](declarations/lefthomogeneous.md) | 251 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `lemma` | [leftHomogeneous_weight_pos](declarations/lefthomogeneous-weight-pos.md) | 255 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `def` | [rightHomogeneous](declarations/righthomogeneous.md) | 266 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `lemma` | [rightHomogeneous_weight_pos](declarations/righthomogeneous-weight-pos.md) | 270 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `def` | [splitLeftSegment](declarations/splitleftsegment.md) | 281 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `def` | [splitRightSegment](declarations/splitrightsegment.md) | 285 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `def` | [splitAt](declarations/splitat.md) | 290 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `lemma` | [splitLeftSegment_row_eq](declarations/splitleftsegment-row-eq.md) | 294 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `lemma` | [splitRightSegment_row_eq](declarations/splitrightsegment-row-eq.md) | 306 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `def` | [leftParameter](declarations/leftparameter.md) | 319 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `def` | [rightParameter](declarations/rightparameter.md) | 325 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `theorem` | [eval_split_left](declarations/eval-split-left.md) | 330 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `theorem` | [eval_split_right](declarations/eval-split-right.md) | 347 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=066c555cce186605661aa5b9dc8fe2f37588041b9f7f32dd42d1c804bb016ae1 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RecursiveRationalSubdivisionProbe/Variant1664f724db1f0528d1017132bb7de9c54963b3a35893bf69dab88553dad16ee1.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
