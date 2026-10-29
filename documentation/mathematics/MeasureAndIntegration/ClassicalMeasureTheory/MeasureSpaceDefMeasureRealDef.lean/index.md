# Measure Space Def Measure Real Def

[Complete source index](../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**64 observed declarations and anonymous commands**, 55 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Analysis/MeasureTheory/MeasureSpaceDef/Varianta683e8592259704be6e120fc24fbb4f87f30d99ca54ff4ea82158d01bf47c280.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `c6674126d2dcbdac273c343fd1342337aabf2dc1`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/MeasureAndIntegration/ClassicalMeasureTheory/MeasureSpaceDefMeasureRealDef.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `structure` | [Measure](declarations/measure.md) | 74 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `theorem` | [Measure.toOuterMeasure_injective](declarations/measure-tooutermeasure-injective.md) | 82 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `instance` | [Measure.instFunLike](declarations/measure-instfunlike.md) | 86 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `instance` | [Measure.instOuterMeasureClass](declarations/measure-instoutermeasureclass.md) | 91 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `def` | [Measure.real](declarations/measure-real.md) | 98 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [measureReal_def](declarations/measurereal-def.md) | 101 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [trimmed](declarations/trimmed.md) | 112 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `def` | [ofMeasurable](declarations/ofmeasurable.md) | 118 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [ofMeasurable_apply](declarations/ofmeasurable-apply.md) | 131 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [ext](declarations/ext.md) | 140 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [ext_iff'](declarations/ext-iff.md) | 144 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [outerMeasure_le_iff](declarations/outermeasure-le-iff.md) | 147 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [Measure.coe_toOuterMeasure](declarations/measure-coe-tooutermeasure.md) | 152 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [Measure.toOuterMeasure_apply](declarations/measure-tooutermeasure-apply.md) | 154 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [measure_eq_trim](declarations/measure-eq-trim.md) | 158 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [measure_eq_iInf](declarations/measure-eq-iinf-source-edition-2.md) | 161 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [measure_eq_iInf'](declarations/measure-eq-iinf.md) | 167 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [measure_eq_inducedOuterMeasure](declarations/measure-eq-inducedoutermeasure.md) | 171 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [toOuterMeasure_eq_inducedOuterMeasure](declarations/tooutermeasure-eq-inducedoutermeasure.md) | 175 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [measure_eq_extend](declarations/measure-eq-extend.md) | 179 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [nonempty_of_measure_ne_zero](declarations/nonempty-of-measure-ne-zero.md) | 184 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [measure_mono_top](declarations/measure-mono-top.md) | 187 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [measure_le_measure_union_left](declarations/measure-le-measure-union-left.md) | 191 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [measure_le_measure_union_right](declarations/measure-le-measure-union-right.md) | 194 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [exists_measurable_superset](declarations/exists-measurable-superset.md) | 197 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [exists_measurable_superset_forall_eq](declarations/exists-measurable-superset-forall-eq.md) | 203 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [exists_measurable_superset₂](declarations/exists-measurable-superset-source-edition-2.md) | 208 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [exists_measurable_superset_of_null](declarations/exists-measurable-superset-of-null.md) | 213 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [exists_measurable_superset_iff_measure_eq_zero](declarations/exists-measurable-superset-iff-measure-eq-zero.md) | 216 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [measure_biUnion_lt_top](declarations/measure-biunion-lt-top.md) | 220 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [measure_union_lt_top](declarations/measure-union-lt-top.md) | 227 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [measure_union_lt_top_iff](declarations/measure-union-lt-top-iff.md) | 231 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [measure_union_ne_top](declarations/measure-union-ne-top.md) | 236 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [measure_symmDiff_ne_top](declarations/measure-symmdiff-ne-top.md) | 240 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `theorem` | [measure_union_eq_top_iff](declarations/measure-union-eq-top-iff.md) | 244 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `theorem` | [exists_measure_pos_of_not_measure_iUnion_null](declarations/exists-measure-pos-of-not-measure-iunion-null.md) | 247 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `theorem` | [measure_lt_top_of_subset](declarations/measure-lt-top-of-subset.md) | 252 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `theorem` | [measure_ne_top_of_subset](declarations/measure-ne-top-of-subset.md) | 255 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `theorem` | [measure_inter_lt_top_of_left_ne_top](declarations/measure-inter-lt-top-of-left-ne-top.md) | 258 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `theorem` | [measure_inter_lt_top_of_right_ne_top](declarations/measure-inter-lt-top-of-right-ne-top.md) | 261 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `theorem` | [measure_inter_null_of_null_right](declarations/measure-inter-null-of-null-right.md) | 264 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `theorem` | [measure_inter_null_of_null_left](declarations/measure-inter-null-of-null-left.md) | 267 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `theorem` | [_root_.MeasurableSpace.ae_induction_on_inter](declarations/root-measurablespace-ae-induction-on-inter.md) | 282 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `theorem` | [subset_toMeasurable](declarations/subset-tomeasurable.md) | 311 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `theorem` | [ae_le_toMeasurable](declarations/ae-le-tomeasurable.md) | 315 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `theorem` | [measurableSet_toMeasurable](declarations/measurableset-tomeasurable.md) | 319 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `theorem` | [measure_toMeasurable](declarations/measure-tomeasurable.md) | 326 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `class` | [MeasureSpace](declarations/measurespace.md) | 334 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `macro` | [(anonymous)](declarations/macro.md) | 358 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `def` | [AEMeasurable](declarations/aemeasurable.md) | 385 | `BLOCKED_NATIVE_ADMISSION` |
| 51 | `theorem` | [Measurable.aemeasurable](declarations/measurable-aemeasurable.md) | 389 | `BLOCKED_NATIVE_ADMISSION` |
| 52 | `lemma` | [of_discrete](declarations/of-discrete.md) | 394 | `BLOCKED_NATIVE_ADMISSION` |
| 53 | `def` | [mk](declarations/mk.md) | 400 | `BLOCKED_NATIVE_ADMISSION` |
| 54 | `theorem` | [measurable_mk](declarations/measurable-mk.md) | 404 | `BLOCKED_NATIVE_ADMISSION` |
| 55 | `theorem` | [ae_eq_mk](declarations/ae-eq-mk.md) | 407 | `BLOCKED_NATIVE_ADMISSION` |
| 56 | `theorem` | [congr](declarations/congr.md) | 410 | `BLOCKED_NATIVE_ADMISSION` |
| 57 | `theorem` | [aemeasurable_congr](declarations/aemeasurable-congr.md) | 415 | `BLOCKED_NATIVE_ADMISSION` |
| 58 | `theorem` | [aemeasurable_const](declarations/aemeasurable-const.md) | 419 | `BLOCKED_NATIVE_ADMISSION` |
| 59 | `theorem` | [aemeasurable_id](declarations/aemeasurable-id.md) | 423 | `BLOCKED_NATIVE_ADMISSION` |
| 60 | `theorem` | [aemeasurable_id'](declarations/aemeasurable-id-source-edition-2.md) | 427 | `BLOCKED_NATIVE_ADMISSION` |
| 61 | `theorem` | [Measurable.comp_aemeasurable](declarations/measurable-comp-aemeasurable.md) | 430 | `BLOCKED_NATIVE_ADMISSION` |
| 62 | `theorem` | [Measurable.comp_aemeasurable'](declarations/measurable-comp-aemeasurable-source-edition-2.md) | 435 | `BLOCKED_NATIVE_ADMISSION` |
| 63 | `theorem` | [aemeasurable_pi_iff](declarations/aemeasurable-pi-iff.md) | 441 | `BLOCKED_NATIVE_ADMISSION` |
| 64 | `theorem` | [aemeasurable_pi_lambda](declarations/aemeasurable-pi-lambda.md) | 452 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=d72521c6008b14219343f9d8ec7936c902ae90c9ad835e3e590c468d9fd44d7c -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/MeasureTheory/MeasureSpaceDef/Varianta683e8592259704be6e120fc24fbb4f87f30d99ca54ff4ea82158d01bf47c280.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
