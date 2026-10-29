# Null Measurable Bi Union Decode

[Complete source index](../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**71 observed declarations and anonymous commands**, 61 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Analysis/MeasureTheory/NullMeasurable/Variant71fe833b5da6f6a789e0749034962e663ca5df715eab335437ac7fbad2c7d7f8.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `093d65b73a744a094182289d1e3573a3995b8d4c`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/MeasureAndIntegration/ClassicalMeasureTheory/NullMeasurableBiUnionDecode.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [NullMeasurableSpace](declarations/nullmeasurablespace.md) | 67 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `instance` | [NullMeasurableSpace.instInhabited](declarations/nullmeasurablespace-instinhabited.md) | 76 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `instance` | [NullMeasurableSpace.instSubsingleton](declarations/nullmeasurablespace-instsubsingleton.md) | 81 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `instance` | [NullMeasurableSpace.instMeasurableSpace](declarations/nullmeasurablespace-instmeasurablespace.md) | 86 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `def` | [NullMeasurableSet](declarations/nullmeasurableset.md) | 97 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [_root_.MeasurableSet.nullMeasurableSet](declarations/root-measurableset-nullmeasurableset.md) | 103 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [nullMeasurableSet_empty](declarations/nullmeasurableset-empty.md) | 108 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [nullMeasurableSet_univ](declarations/nullmeasurableset-univ.md) | 113 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [of_null](declarations/of-null.md) | 119 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [compl](declarations/compl.md) | 123 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [of_compl](declarations/of-compl.md) | 127 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [compl_iff](declarations/compl-iff.md) | 132 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [of_subsingleton](declarations/of-subsingleton.md) | 137 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [congr](declarations/congr.md) | 141 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [iUnion](declarations/iunion.md) | 146 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [biUnion_decode₂](declarations/biunion-decode.md) | 152 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [biUnion](declarations/biunion.md) | 157 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [sUnion](declarations/sunion.md) | 162 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [iInter](declarations/iinter.md) | 168 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [biInter](declarations/biinter.md) | 173 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [sInter](declarations/sinter.md) | 178 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [union](declarations/union.md) | 184 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [union_null](declarations/union-null.md) | 189 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [inter](declarations/inter.md) | 195 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [diff](declarations/diff.md) | 201 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [disjointed](declarations/disjointed.md) | 207 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [const](declarations/const.md) | 213 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `instance` | [instMeasurableSingletonClass](declarations/instmeasurablesingletonclass.md) | 217 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [insert](declarations/insert.md) | 222 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [exists_measurable_superset_ae_eq](declarations/exists-measurable-superset-ae-eq.md) | 227 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [toMeasurable_ae_eq](declarations/tomeasurable-ae-eq.md) | 236 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [compl_toMeasurable_compl_ae_eq](declarations/compl-tomeasurable-compl-ae-eq.md) | 241 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [exists_measurable_subset_ae_eq](declarations/exists-measurable-subset-ae-eq.md) | 245 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [exists_subordinate_pairwise_disjoint](declarations/exists-subordinate-pairwise-disjoint.md) | 258 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `theorem` | [measure_iUnion](declarations/measure-iunion.md) | 272 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `theorem` | [measure_iUnion₀](declarations/measure-iunion-source-edition-2.md) | 282 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `theorem` | [measure_union₀_aux](declarations/measure-union-aux.md) | 292 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `theorem` | [measure_inter_add_diff₀](declarations/measure-inter-add-diff.md) | 300 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `theorem` | [measure_union_add_inter₀](declarations/measure-union-add-inter.md) | 320 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `theorem` | [measure_union_add_inter₀'](declarations/measure-union-add-inter-source-edition-2.md) | 326 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `theorem` | [measure_union₀](declarations/measure-union-source-edition-2.md) | 331 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `theorem` | [measure_union₀'](declarations/measure-union.md) | 335 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `theorem` | [measure_add_measure_compl₀](declarations/measure-add-measure-compl.md) | 339 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `theorem` | [nullMeasurableSet_singleton](declarations/nullmeasurableset-singleton.md) | 347 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `theorem` | [nullMeasurableSet_insert](declarations/nullmeasurableset-insert.md) | 352 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `theorem` | [nullMeasurableSet_eq](declarations/nullmeasurableset-eq.md) | 357 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `theorem` | [_root_.Set.Finite.nullMeasurableSet](declarations/root-set-finite-nullmeasurableset.md) | 361 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `theorem` | [_root_.Finset.nullMeasurableSet](declarations/root-finset-nullmeasurableset.md) | 365 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `theorem` | [_root_.Set.Finite.nullMeasurableSet_biUnion](declarations/root-set-finite-nullmeasurableset-biunion.md) | 371 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `theorem` | [_root_.Finset.nullMeasurableSet_biUnion](declarations/root-finset-nullmeasurableset-biunion.md) | 376 | `BLOCKED_NATIVE_ADMISSION` |
| 51 | `theorem` | [_root_.Set.Finite.nullMeasurableSet_sUnion](declarations/root-set-finite-nullmeasurableset-sunion.md) | 381 | `BLOCKED_NATIVE_ADMISSION` |
| 52 | `theorem` | [_root_.Set.Finite.nullMeasurableSet_biInter](declarations/root-set-finite-nullmeasurableset-biinter.md) | 386 | `BLOCKED_NATIVE_ADMISSION` |
| 53 | `theorem` | [_root_.Finset.nullMeasurableSet_biInter](declarations/root-finset-nullmeasurableset-biinter.md) | 391 | `BLOCKED_NATIVE_ADMISSION` |
| 54 | `theorem` | [_root_.Set.Finite.nullMeasurableSet_sInter](declarations/root-set-finite-nullmeasurableset-sinter.md) | 396 | `BLOCKED_NATIVE_ADMISSION` |
| 55 | `theorem` | [nullMeasurableSet_toMeasurable](declarations/nullmeasurableset-tomeasurable.md) | 401 | `BLOCKED_NATIVE_ADMISSION` |
| 56 | `def` | [NullMeasurable](declarations/nullmeasurable.md) | 413 | `BLOCKED_NATIVE_ADMISSION` |
| 57 | `theorem` | [_root_.Measurable.nullMeasurable](declarations/root-measurable-nullmeasurable.md) | 417 | `BLOCKED_NATIVE_ADMISSION` |
| 58 | `theorem` | [NullMeasurable.measurable'](declarations/nullmeasurable-measurable.md) | 421 | `BLOCKED_NATIVE_ADMISSION` |
| 59 | `theorem` | [Measurable.comp_nullMeasurable](declarations/measurable-comp-nullmeasurable.md) | 426 | `BLOCKED_NATIVE_ADMISSION` |
| 60 | `theorem` | [NullMeasurable.congr](declarations/nullmeasurable-congr.md) | 431 | `BLOCKED_NATIVE_ADMISSION` |
| 61 | `class` | [Measure.IsComplete](declarations/measure-iscomplete.md) | 445 | `BLOCKED_NATIVE_ADMISSION` |
| 62 | `theorem` | [Measure.isComplete_iff](declarations/measure-iscomplete-iff.md) | 451 | `BLOCKED_NATIVE_ADMISSION` |
| 63 | `theorem` | [Measure.IsComplete.out](declarations/measure-iscomplete-out.md) | 455 | `BLOCKED_NATIVE_ADMISSION` |
| 64 | `theorem` | [measurableSet_of_null](declarations/measurableset-of-null.md) | 459 | `BLOCKED_NATIVE_ADMISSION` |
| 65 | `theorem` | [NullMeasurableSet.measurable_of_complete](declarations/nullmeasurableset-measurable-of-complete.md) | 463 | `BLOCKED_NATIVE_ADMISSION` |
| 66 | `theorem` | [NullMeasurable.measurable_of_complete](declarations/nullmeasurable-measurable-of-complete.md) | 471 | `BLOCKED_NATIVE_ADMISSION` |
| 67 | `theorem` | [_root_.Measurable.congr_ae](declarations/root-measurable-congr-ae.md) | 475 | `BLOCKED_NATIVE_ADMISSION` |
| 68 | `def` | [completion](declarations/completion.md) | 483 | `BLOCKED_NATIVE_ADMISSION` |
| 69 | `instance` | [completion.isComplete](declarations/completion-iscomplete.md) | 497 | `BLOCKED_NATIVE_ADMISSION` |
| 70 | `theorem` | [coe_completion](declarations/coe-completion.md) | 502 | `BLOCKED_NATIVE_ADMISSION` |
| 71 | `theorem` | [completion_apply](declarations/completion-apply.md) | 506 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=a774b63c5eeac33d093e4276e8fc48d7ff4e20b445f8a7ef736947e51e9337f3 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/MeasureTheory/NullMeasurable/Variant71fe833b5da6f6a789e0749034962e663ca5df715eab335437ac7fbad2c7d7f8.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
