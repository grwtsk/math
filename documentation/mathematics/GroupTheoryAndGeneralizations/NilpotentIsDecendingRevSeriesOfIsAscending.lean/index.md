# Nilpotent Is Decending Rev Series Of Is Ascending

[Complete source index](../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**77 observed declarations and anonymous commands**, 58 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Algebra/GroupTheory/Nilpotent/Variant06ee8cde5f75c3fd1976913de8c4303e2d2b44a2862f4fe89ad434252cc42c8f.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `1408797175d66cebe86309621d6063bfdcba86d4`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../_verification/specifications/GroupTheoryAndGeneralizations/NilpotentIsDecendingRevSeriesOfIsAscending.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [upperCentralSeriesStep](declarations/uppercentralseriesstep.md) | 92 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `theorem` | [mem_upperCentralSeriesStep](declarations/mem-uppercentralseriesstep.md) | 104 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `theorem` | [upperCentralSeriesStep_eq_comap_center](declarations/uppercentralseriesstep-eq-comap-center.md) | 112 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `instance` | [(anonymous)](declarations/instance.md) | 122 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `def` | [upperCentralSeriesAux](declarations/uppercentralseriesaux.md) | 130 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `def` | [upperCentralSeries](declarations/uppercentralseries.md) | 139 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `instance` | [upperCentralSeries_normal](declarations/uppercentralseries-normal.md) | 143 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [upperCentralSeries_zero](declarations/uppercentralseries-zero.md) | 147 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [upperCentralSeries_one](declarations/uppercentralseries-one.md) | 151 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [mem_upperCentralSeries_succ_iff](declarations/mem-uppercentralseries-succ-iff.md) | 160 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `class` | [Group.IsNilpotent](declarations/group-isnilpotent.md) | 168 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `lemma` | [Group.IsNilpotent.nilpotent](declarations/group-isnilpotent-nilpotent.md) | 173 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `def` | [IsAscendingCentralSeries](declarations/isascendingcentralseries.md) | 182 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `def` | [IsDescendingCentralSeries](declarations/isdescendingcentralseries.md) | 188 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [ascending_central_series_le_upper](declarations/ascending-central-series-le-upper.md) | 193 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [upperCentralSeries_isAscendingCentralSeries](declarations/uppercentralseries-isascendingcentralseries.md) | 205 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [upperCentralSeries_mono](declarations/uppercentralseries-mono.md) | 210 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [nilpotent_iff_finite_ascending_central_series](declarations/nilpotent-iff-finite-ascending-central-series.md) | 219 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [is_decending_rev_series_of_is_ascending](declarations/is-decending-rev-series-of-is-ascending.md) | 230 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [is_ascending_rev_series_of_is_descending](declarations/is-ascending-rev-series-of-is-descending.md) | 246 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [nilpotent_iff_finite_descending_central_series](declarations/nilpotent-iff-finite-descending-central-series.md) | 262 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `def` | [lowerCentralSeries](declarations/lowercentralseries.md) | 280 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [lowerCentralSeries_zero](declarations/lowercentralseries-zero.md) | 288 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [lowerCentralSeries_one](declarations/lowercentralseries-one.md) | 292 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [mem_lowerCentralSeries_succ_iff](declarations/mem-lowercentralseries-succ-iff.md) | 295 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [lowerCentralSeries_succ](declarations/lowercentralseries-succ.md) | 301 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `instance` | [lowerCentralSeries_normal](declarations/lowercentralseries-normal.md) | 307 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [lowerCentralSeries_antitone](declarations/lowercentralseries-antitone.md) | 312 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [lowerCentralSeries_isDescendingCentralSeries](declarations/lowercentralseries-isdescendingcentralseries.md) | 324 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [descending_central_series_ge_lower](declarations/descending-central-series-ge-lower.md) | 332 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [nilpotent_iff_lowerCentralSeries](declarations/nilpotent-iff-lowercentralseries.md) | 341 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `def` | [Group.nilpotencyClass](declarations/group-nilpotencyclass.md) | 362 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [upperCentralSeries_nilpotencyClass](declarations/uppercentralseries-nilpotencyclass.md) | 368 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [upperCentralSeries_eq_top_iff_nilpotencyClass_le](declarations/uppercentralseries-eq-top-iff-nilpotencyclass-le.md) | 372 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `theorem` | [least_ascending_central_series_length_eq_nilpotencyClass](declarations/least-ascending-central-series-length-eq-nilpotencyclass.md) | 385 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `theorem` | [least_descending_central_series_length_eq_nilpotencyClass](declarations/least-descending-central-series-length-eq-nilpotencyclass.md) | 398 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `theorem` | [lowerCentralSeries_length_eq_nilpotencyClass](declarations/lowercentralseries-length-eq-nilpotencyclass.md) | 416 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `theorem` | [lowerCentralSeries_nilpotencyClass](declarations/lowercentralseries-nilpotencyclass.md) | 428 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `theorem` | [lowerCentralSeries_eq_bot_iff_nilpotencyClass_le](declarations/lowercentralseries-eq-bot-iff-nilpotencyclass-le.md) | 434 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `theorem` | [lowerCentralSeries_map_subtype_le](declarations/lowercentralseries-map-subtype-le.md) | 448 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `instance` | [Subgroup.isNilpotent](declarations/subgroup-isnilpotent.md) | 459 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `theorem` | [Subgroup.nilpotencyClass_le](declarations/subgroup-nilpotencyclass-le.md) | 469 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `instance` | [(anonymous)](declarations/instance-source-edition-3.md) | 480 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `theorem` | [upperCentralSeries.map](declarations/uppercentralseries-map.md) | 484 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `theorem` | [lowerCentralSeries.map](declarations/lowercentralseries-map.md) | 493 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `theorem` | [lowerCentralSeries_succ_eq_bot](declarations/lowercentralseries-succ-eq-bot.md) | 506 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `theorem` | [isNilpotent_of_ker_le_center](declarations/isnilpotent-of-ker-le-center.md) | 516 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `theorem` | [nilpotencyClass_le_of_ker_le_center](declarations/nilpotencyclass-le-of-ker-le-center.md) | 525 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `theorem` | [nilpotent_of_surjective](declarations/nilpotent-of-surjective.md) | 540 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `theorem` | [nilpotencyClass_le_of_surjective](declarations/nilpotencyclass-le-of-surjective.md) | 555 | `BLOCKED_NATIVE_ADMISSION` |
| 51 | `theorem` | [nilpotent_of_mulEquiv](declarations/nilpotent-of-mulequiv.md) | 571 | `BLOCKED_NATIVE_ADMISSION` |
| 52 | `instance` | [nilpotent_quotient_of_nilpotent](declarations/nilpotent-quotient-of-nilpotent.md) | 577 | `BLOCKED_NATIVE_ADMISSION` |
| 53 | `theorem` | [nilpotencyClass_quotient_le](declarations/nilpotencyclass-quotient-le.md) | 583 | `BLOCKED_NATIVE_ADMISSION` |
| 54 | `theorem` | [comap_center_subst](declarations/comap-center-subst.md) | 589 | `BLOCKED_NATIVE_ADMISSION` |
| 55 | `theorem` | [comap_upperCentralSeries_quotient_center](declarations/comap-uppercentralseries-quotient-center.md) | 592 | `BLOCKED_NATIVE_ADMISSION` |
| 56 | `theorem` | [nilpotencyClass_zero_iff_subsingleton](declarations/nilpotencyclass-zero-iff-subsingleton.md) | 611 | `BLOCKED_NATIVE_ADMISSION` |
| 57 | `theorem` | [nilpotencyClass_quotient_center](declarations/nilpotencyclass-quotient-center.md) | 619 | `BLOCKED_NATIVE_ADMISSION` |
| 58 | `theorem` | [nilpotencyClass_eq_quotient_center_plus_one](declarations/nilpotencyclass-eq-quotient-center-plus-one.md) | 641 | `BLOCKED_NATIVE_ADMISSION` |
| 59 | `theorem` | [of_quotient_center_nilpotent](declarations/of-quotient-center-nilpotent.md) | 652 | `BLOCKED_NATIVE_ADMISSION` |
| 60 | `theorem` | [nilpotent_center_quotient_ind](declarations/nilpotent-center-quotient-ind.md) | 662 | `BLOCKED_NATIVE_ADMISSION` |
| 61 | `theorem` | [derived_le_lower_central](declarations/derived-le-lower-central.md) | 675 | `BLOCKED_NATIVE_ADMISSION` |
| 62 | `instance` | [(anonymous)](declarations/instance-source-edition-2.md) | 683 | `BLOCKED_NATIVE_ADMISSION` |
| 63 | `theorem` | [CommGroup.nilpotencyClass_le_one](declarations/commgroup-nilpotencyclass-le-one.md) | 690 | `BLOCKED_NATIVE_ADMISSION` |
| 64 | `def` | [commGroupOfNilpotencyClass](declarations/commgroupofnilpotencyclass.md) | 698 | `BLOCKED_NATIVE_ADMISSION` |
| 65 | `theorem` | [lowerCentralSeries_prod](declarations/lowercentralseries-prod.md) | 708 | `BLOCKED_NATIVE_ADMISSION` |
| 66 | `instance` | [isNilpotent_prod](declarations/isnilpotent-prod.md) | 724 | `BLOCKED_NATIVE_ADMISSION` |
| 67 | `theorem` | [nilpotencyClass_prod](declarations/nilpotencyclass-prod.md) | 733 | `BLOCKED_NATIVE_ADMISSION` |
| 68 | `theorem` | [lowerCentralSeries_pi_le](declarations/lowercentralseries-pi-le.md) | 748 | `BLOCKED_NATIVE_ADMISSION` |
| 69 | `theorem` | [isNilpotent_pi_of_bounded_class](declarations/isnilpotent-pi-of-bounded-class.md) | 764 | `BLOCKED_NATIVE_ADMISSION` |
| 70 | `theorem` | [lowerCentralSeries_pi_of_finite](declarations/lowercentralseries-pi-of-finite.md) | 782 | `BLOCKED_NATIVE_ADMISSION` |
| 71 | `instance` | [isNilpotent_pi](declarations/isnilpotent-pi.md) | 798 | `BLOCKED_NATIVE_ADMISSION` |
| 72 | `theorem` | [nilpotencyClass_pi](declarations/nilpotencyclass-pi.md) | 810 | `BLOCKED_NATIVE_ADMISSION` |
| 73 | `instance` | [(anonymous)](declarations/instance-source-edition-4.md) | 821 | `BLOCKED_NATIVE_ADMISSION` |
| 74 | `theorem` | [normalizerCondition_of_isNilpotent](declarations/normalizercondition-of-isnilpotent.md) | 828 | `BLOCKED_NATIVE_ADMISSION` |
| 75 | `theorem` | [IsPGroup.isNilpotent](declarations/ispgroup-isnilpotent.md) | 856 | `BLOCKED_NATIVE_ADMISSION` |
| 76 | `theorem` | [isNilpotent_of_product_of_sylow_group](declarations/isnilpotent-of-product-of-sylow-group.md) | 877 | `BLOCKED_NATIVE_ADMISSION` |
| 77 | `theorem` | [isNilpotent_of_finite_tFAE](declarations/isnilpotent-of-finite-tfae.md) | 892 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=6ea153b2dd2d08d5ed2da5bf79f383fd3aaf81cd20349a8af677bb29fb25d954 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/GroupTheory/Nilpotent/Variant06ee8cde5f75c3fd1976913de8c4303e2d2b44a2862f4fe89ad434252cc42c8f.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
