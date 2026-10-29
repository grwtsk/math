# Measure Space Def Namespaced To Outer Measure Injective

[Complete source index](../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**108 observed declarations and anonymous commands**, 99 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Analysis/MeasureTheory/MeasureSpaceDef/Variant4aefc02d6992b032e67ff58238c3a23909390c3b44cdc482b5d1ad897ae9ffc5.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `c9db1071975b1db5eb00545da8ce2a19f5df1341`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/MeasureAndIntegration/ClassicalMeasureTheory/MeasureSpaceDefNamespacedToOuterMeasureInjective.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `structure` | [Measure](declarations/measure.md) | 82 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `instance` | [Measure.instCoeFun](declarations/measure-instcoefun.md) | 95 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `def` | [ofMeasurable](declarations/ofmeasurable.md) | 111 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `theorem` | [ofMeasurable_apply](declarations/ofmeasurable-apply.md) | 128 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [toOuterMeasure_injective](declarations/tooutermeasure-injective.md) | 137 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [ext](declarations/ext.md) | 143 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [ext_iff](declarations/ext-iff.md) | 148 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [measure_eq_trim](declarations/measure-eq-trim.md) | 160 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [measure_eq_iInf](declarations/measure-eq-iinf-source-edition-2.md) | 163 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [measure_eq_iInf'](declarations/measure-eq-iinf.md) | 170 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [measure_eq_inducedOuterMeasure](declarations/measure-eq-inducedoutermeasure.md) | 175 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [toOuterMeasure_eq_inducedOuterMeasure](declarations/tooutermeasure-eq-inducedoutermeasure.md) | 180 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [measure_eq_extend](declarations/measure-eq-extend.md) | 185 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [measure_empty](declarations/measure-empty.md) | 192 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [nonempty_of_measure_ne_zero](declarations/nonempty-of-measure-ne-zero.md) | 196 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [measure_mono](declarations/measure-mono.md) | 200 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [measure_mono_null](declarations/measure-mono-null.md) | 204 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [measure_mono_top](declarations/measure-mono-top.md) | 208 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [measure_le_measure_union_left](declarations/measure-le-measure-union-left.md) | 213 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [measure_le_measure_union_right](declarations/measure-le-measure-union-right.md) | 216 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [exists_measurable_superset](declarations/exists-measurable-superset-source-edition-2.md) | 219 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [exists_measurable_superset_forall_eq](declarations/exists-measurable-superset-forall-eq.md) | 226 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [exists_measurable_superset₂](declarations/exists-measurable-superset.md) | 232 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [exists_measurable_superset_of_null](declarations/exists-measurable-superset-of-null.md) | 238 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [exists_measurable_superset_iff_measure_eq_zero](declarations/exists-measurable-superset-iff-measure-eq-zero.md) | 242 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [measure_iUnion_le](declarations/measure-iunion-le.md) | 247 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [measure_biUnion_le](declarations/measure-biunion-le.md) | 251 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [measure_biUnion_finset_le](declarations/measure-biunion-finset-le.md) | 258 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [measure_iUnion_fintype_le](declarations/measure-iunion-fintype-le.md) | 264 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [measure_biUnion_lt_top](declarations/measure-biunion-lt-top.md) | 269 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [measure_iUnion_null](declarations/measure-iunion-null.md) | 277 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [measure_iUnion_null_iff](declarations/measure-iunion-null-iff.md) | 282 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [measure_iUnion_null_iff'](declarations/measure-iunion-null-iff-source-edition-2.md) | 291 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [measure_biUnion_null_iff](declarations/measure-biunion-null-iff.md) | 295 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `theorem` | [measure_sUnion_null_iff](declarations/measure-sunion-null-iff.md) | 300 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `theorem` | [measure_union_le](declarations/measure-union-le.md) | 305 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `theorem` | [measure_union_null](declarations/measure-union-null.md) | 309 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `theorem` | [measure_union_null_iff](declarations/measure-union-null-iff.md) | 314 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `theorem` | [measure_union_lt_top](declarations/measure-union-lt-top.md) | 320 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `theorem` | [measure_union_lt_top_iff](declarations/measure-union-lt-top-iff.md) | 325 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `theorem` | [measure_union_ne_top](declarations/measure-union-ne-top.md) | 331 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `theorem` | [measure_symmDiff_ne_top](declarations/measure-symmdiff-ne-top.md) | 335 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `theorem` | [measure_union_eq_top_iff](declarations/measure-union-eq-top-iff.md) | 339 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `theorem` | [exists_measure_pos_of_not_measure_iUnion_null](declarations/exists-measure-pos-of-not-measure-iunion-null.md) | 343 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `theorem` | [measure_lt_top_of_subset](declarations/measure-lt-top-of-subset.md) | 349 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `theorem` | [measure_inter_lt_top_of_left_ne_top](declarations/measure-inter-lt-top-of-left-ne-top.md) | 352 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `theorem` | [measure_inter_lt_top_of_right_ne_top](declarations/measure-inter-lt-top-of-right-ne-top.md) | 356 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `theorem` | [measure_inter_null_of_null_right](declarations/measure-inter-null-of-null-right.md) | 360 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `theorem` | [measure_inter_null_of_null_left](declarations/measure-inter-null-of-null-left.md) | 364 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `def` | [Measure.ae](declarations/measure-ae.md) | 372 | `BLOCKED_NATIVE_ADMISSION` |
| 51 | `theorem` | [mem_ae_iff](declarations/mem-ae-iff.md) | 391 | `BLOCKED_NATIVE_ADMISSION` |
| 52 | `theorem` | [ae_iff](declarations/ae-iff.md) | 395 | `BLOCKED_NATIVE_ADMISSION` |
| 53 | `theorem` | [compl_mem_ae_iff](declarations/compl-mem-ae-iff.md) | 399 | `BLOCKED_NATIVE_ADMISSION` |
| 54 | `theorem` | [frequently_ae_iff](declarations/frequently-ae-iff.md) | 402 | `BLOCKED_NATIVE_ADMISSION` |
| 55 | `theorem` | [frequently_ae_mem_iff](declarations/frequently-ae-mem-iff.md) | 406 | `BLOCKED_NATIVE_ADMISSION` |
| 56 | `theorem` | [measure_zero_iff_ae_nmem](declarations/measure-zero-iff-ae-nmem.md) | 410 | `BLOCKED_NATIVE_ADMISSION` |
| 57 | `theorem` | [ae_of_all](declarations/ae-of-all.md) | 414 | `BLOCKED_NATIVE_ADMISSION` |
| 58 | `instance` | [instCountableInterFilter](declarations/instcountableinterfilter.md) | 422 | `BLOCKED_NATIVE_ADMISSION` |
| 59 | `theorem` | [ae_all_iff](declarations/ae-all-iff.md) | 429 | `BLOCKED_NATIVE_ADMISSION` |
| 60 | `theorem` | [ae_ball_iff](declarations/ae-ball-iff.md) | 434 | `BLOCKED_NATIVE_ADMISSION` |
| 61 | `theorem` | [ae_eq_refl](declarations/ae-eq-refl.md) | 439 | `BLOCKED_NATIVE_ADMISSION` |
| 62 | `theorem` | [ae_eq_symm](declarations/ae-eq-symm.md) | 443 | `BLOCKED_NATIVE_ADMISSION` |
| 63 | `theorem` | [ae_eq_trans](declarations/ae-eq-trans.md) | 447 | `BLOCKED_NATIVE_ADMISSION` |
| 64 | `theorem` | [ae_le_of_ae_lt](declarations/ae-le-of-ae-lt.md) | 451 | `BLOCKED_NATIVE_ADMISSION` |
| 65 | `theorem` | [ae_eq_empty](declarations/ae-eq-empty.md) | 459 | `BLOCKED_NATIVE_ADMISSION` |
| 66 | `theorem` | [ae_eq_univ](declarations/ae-eq-univ.md) | 465 | `BLOCKED_NATIVE_ADMISSION` |
| 67 | `theorem` | [ae_le_set](declarations/ae-le-set.md) | 469 | `BLOCKED_NATIVE_ADMISSION` |
| 68 | `theorem` | [ae_le_set_inter](declarations/ae-le-set-inter.md) | 476 | `BLOCKED_NATIVE_ADMISSION` |
| 69 | `theorem` | [ae_le_set_union](declarations/ae-le-set-union.md) | 481 | `BLOCKED_NATIVE_ADMISSION` |
| 70 | `theorem` | [union_ae_eq_right](declarations/union-ae-eq-right.md) | 486 | `BLOCKED_NATIVE_ADMISSION` |
| 71 | `theorem` | [diff_ae_eq_self](declarations/diff-ae-eq-self.md) | 491 | `BLOCKED_NATIVE_ADMISSION` |
| 72 | `theorem` | [diff_null_ae_eq_self](declarations/diff-null-ae-eq-self.md) | 496 | `BLOCKED_NATIVE_ADMISSION` |
| 73 | `theorem` | [ae_eq_set](declarations/ae-eq-set.md) | 500 | `BLOCKED_NATIVE_ADMISSION` |
| 74 | `theorem` | [measure_symmDiff_eq_zero_iff](declarations/measure-symmdiff-eq-zero-iff.md) | 505 | `BLOCKED_NATIVE_ADMISSION` |
| 75 | `theorem` | [ae_eq_set_compl_compl](declarations/ae-eq-set-compl-compl.md) | 510 | `BLOCKED_NATIVE_ADMISSION` |
| 76 | `theorem` | [ae_eq_set_compl](declarations/ae-eq-set-compl.md) | 514 | `BLOCKED_NATIVE_ADMISSION` |
| 77 | `theorem` | [ae_eq_set_inter](declarations/ae-eq-set-inter.md) | 518 | `BLOCKED_NATIVE_ADMISSION` |
| 78 | `theorem` | [ae_eq_set_union](declarations/ae-eq-set-union.md) | 523 | `BLOCKED_NATIVE_ADMISSION` |
| 79 | `theorem` | [union_ae_eq_univ_of_ae_eq_univ_left](declarations/union-ae-eq-univ-of-ae-eq-univ-left.md) | 528 | `BLOCKED_NATIVE_ADMISSION` |
| 80 | `theorem` | [union_ae_eq_univ_of_ae_eq_univ_right](declarations/union-ae-eq-univ-of-ae-eq-univ-right.md) | 533 | `BLOCKED_NATIVE_ADMISSION` |
| 81 | `theorem` | [union_ae_eq_right_of_ae_eq_empty](declarations/union-ae-eq-right-of-ae-eq-empty.md) | 538 | `BLOCKED_NATIVE_ADMISSION` |
| 82 | `theorem` | [union_ae_eq_left_of_ae_eq_empty](declarations/union-ae-eq-left-of-ae-eq-empty.md) | 543 | `BLOCKED_NATIVE_ADMISSION` |
| 83 | `theorem` | [inter_ae_eq_right_of_ae_eq_univ](declarations/inter-ae-eq-right-of-ae-eq-univ.md) | 548 | `BLOCKED_NATIVE_ADMISSION` |
| 84 | `theorem` | [inter_ae_eq_left_of_ae_eq_univ](declarations/inter-ae-eq-left-of-ae-eq-univ.md) | 553 | `BLOCKED_NATIVE_ADMISSION` |
| 85 | `theorem` | [inter_ae_eq_empty_of_ae_eq_empty_left](declarations/inter-ae-eq-empty-of-ae-eq-empty-left.md) | 558 | `BLOCKED_NATIVE_ADMISSION` |
| 86 | `theorem` | [inter_ae_eq_empty_of_ae_eq_empty_right](declarations/inter-ae-eq-empty-of-ae-eq-empty-right.md) | 564 | `BLOCKED_NATIVE_ADMISSION` |
| 87 | `theorem` | [Measure Space Def Namespaced To Outer Measure Injective](declarations/mulindicator-ae-eq-one.md) | 571 | `BLOCKED_NATIVE_ADMISSION` |
| 88 | `theorem` | [measure_mono_ae](declarations/measure-mono-ae.md) | 579 | `BLOCKED_NATIVE_ADMISSION` |
| 89 | `theorem` | [measure_congr](declarations/measure-congr.md) | 591 | `BLOCKED_NATIVE_ADMISSION` |
| 90 | `theorem` | [measure_mono_null_ae](declarations/measure-mono-null-ae.md) | 598 | `BLOCKED_NATIVE_ADMISSION` |
| 91 | `theorem` | [subset_toMeasurable](declarations/subset-tomeasurable.md) | 616 | `BLOCKED_NATIVE_ADMISSION` |
| 92 | `theorem` | [ae_le_toMeasurable](declarations/ae-le-tomeasurable.md) | 621 | `BLOCKED_NATIVE_ADMISSION` |
| 93 | `theorem` | [measurableSet_toMeasurable](declarations/measurableset-tomeasurable.md) | 628 | `BLOCKED_NATIVE_ADMISSION` |
| 94 | `theorem` | [measure_toMeasurable](declarations/measure-tomeasurable.md) | 636 | `BLOCKED_NATIVE_ADMISSION` |
| 95 | `class` | [MeasureSpace](declarations/measurespace.md) | 645 | `BLOCKED_NATIVE_ADMISSION` |
| 96 | `macro` | [(anonymous)](declarations/macro.md) | 665 | `BLOCKED_NATIVE_ADMISSION` |
| 97 | `def` | [AEMeasurable](declarations/aemeasurable.md) | 691 | `BLOCKED_NATIVE_ADMISSION` |
| 98 | `theorem` | [Measurable.aemeasurable](declarations/measurable-aemeasurable.md) | 696 | `BLOCKED_NATIVE_ADMISSION` |
| 99 | `def` | [mk](declarations/mk.md) | 705 | `BLOCKED_NATIVE_ADMISSION` |
| 100 | `theorem` | [measurable_mk](declarations/measurable-mk.md) | 710 | `BLOCKED_NATIVE_ADMISSION` |
| 101 | `theorem` | [ae_eq_mk](declarations/ae-eq-mk.md) | 714 | `BLOCKED_NATIVE_ADMISSION` |
| 102 | `theorem` | [congr](declarations/congr.md) | 718 | `BLOCKED_NATIVE_ADMISSION` |
| 103 | `theorem` | [aemeasurable_congr](declarations/aemeasurable-congr.md) | 724 | `BLOCKED_NATIVE_ADMISSION` |
| 104 | `theorem` | [aemeasurable_const](declarations/aemeasurable-const.md) | 729 | `BLOCKED_NATIVE_ADMISSION` |
| 105 | `theorem` | [aemeasurable_id](declarations/aemeasurable-id-source-edition-2.md) | 734 | `BLOCKED_NATIVE_ADMISSION` |
| 106 | `theorem` | [aemeasurable_id'](declarations/aemeasurable-id.md) | 739 | `BLOCKED_NATIVE_ADMISSION` |
| 107 | `theorem` | [Measurable.comp_aemeasurable](declarations/measurable-comp-aemeasurable.md) | 743 | `BLOCKED_NATIVE_ADMISSION` |
| 108 | `theorem` | [Measurable.comp_aemeasurable'](declarations/measurable-comp-aemeasurable-source-edition-2.md) | 749 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=1aa000693918448a7c5159fa46f78ea827e67df3bfdffab608c186b40a08a21d -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/MeasureTheory/MeasureSpaceDef/Variant4aefc02d6992b032e67ff58238c3a23909390c3b44cdc482b5d1ad897ae9ffc5.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
