# Nilpotent Namespaced Is Nilpotent

[Complete source index](../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**82 observed declarations and anonymous commands**, 62 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Algebra/GroupTheory/Nilpotent/Variantc9f0487e08f309469bec4911a81a2130404207d00c46979234a53c45f51c703c.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `7daadc8d4a5272557076fb6cb1d6dcf712139a6d`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../_verification/specifications/GroupTheoryAndGeneralizations/NilpotentNamespacedIsNilpotent.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [upperCentralSeriesStep](declarations/uppercentralseriesstep.md) | 96 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `theorem` | [mem_upperCentralSeriesStep](declarations/mem-uppercentralseriesstep.md) | 107 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `theorem` | [upperCentralSeriesStep_eq_comap_center](declarations/uppercentralseriesstep-eq-comap-center.md) | 114 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `instance` | [(anonymous)](declarations/instance-source-edition-2.md) | 123 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `def` | [upperCentralSeriesAux](declarations/uppercentralseriesaux.md) | 131 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `def` | [upperCentralSeries](declarations/uppercentralseries.md) | 139 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `instance` | [upperCentralSeries_normal](declarations/uppercentralseries-normal.md) | 142 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [upperCentralSeries_zero](declarations/uppercentralseries-zero.md) | 146 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [upperCentralSeries_one](declarations/uppercentralseries-one.md) | 149 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [mem_upperCentralSeries_succ_iff](declarations/mem-uppercentralseries-succ-iff.md) | 159 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `lemma` | [comap_upperCentralSeries](declarations/comap-uppercentralseries.md) | 163 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `class` | [IsNilpotent](declarations/isnilpotent.md) | 178 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `lemma` | [IsNilpotent.nilpotent](declarations/isnilpotent-nilpotent.md) | 181 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `lemma` | [isNilpotent_congr](declarations/isnilpotent-congr.md) | 184 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `lemma` | [isNilpotent_top](declarations/isnilpotent-top.md) | 190 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `def` | [IsVirtuallyNilpotent](declarations/isvirtuallynilpotent.md) | 195 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `lemma` | [IsNilpotent.isVirtuallyNilpotent](declarations/isnilpotent-isvirtuallynilpotent.md) | 197 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `def` | [IsAscendingCentralSeries](declarations/isascendingcentralseries.md) | 206 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `def` | [IsDescendingCentralSeries](declarations/isdescendingcentralseries.md) | 211 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [ascending_central_series_le_upper](declarations/ascending-central-series-le-upper.md) | 215 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [upperCentralSeries_isAscendingCentralSeries](declarations/uppercentralseries-isascendingcentralseries.md) | 226 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [upperCentralSeries_mono](declarations/uppercentralseries-mono.md) | 230 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [nilpotent_iff_finite_ascending_central_series](declarations/nilpotent-iff-finite-ascending-central-series.md) | 238 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [is_descending_rev_series_of_is_ascending](declarations/is-descending-rev-series-of-is-ascending.md) | 248 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [is_ascending_rev_series_of_is_descending](declarations/is-ascending-rev-series-of-is-descending.md) | 266 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [nilpotent_iff_finite_descending_central_series](declarations/nilpotent-iff-finite-descending-central-series.md) | 281 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `def` | [lowerCentralSeries](declarations/lowercentralseries.md) | 298 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [lowerCentralSeries_zero](declarations/lowercentralseries-zero.md) | 305 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [lowerCentralSeries_one](declarations/lowercentralseries-one.md) | 308 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [mem_lowerCentralSeries_succ_iff](declarations/mem-lowercentralseries-succ-iff.md) | 310 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [lowerCentralSeries_succ](declarations/lowercentralseries-succ.md) | 315 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `instance` | [lowerCentralSeries_normal](declarations/lowercentralseries-normal.md) | 320 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [lowerCentralSeries_antitone](declarations/lowercentralseries-antitone.md) | 325 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [lowerCentralSeries_isDescendingCentralSeries](declarations/lowercentralseries-isdescendingcentralseries.md) | 337 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `theorem` | [descending_central_series_ge_lower](declarations/descending-central-series-ge-lower.md) | 345 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `theorem` | [nilpotent_iff_lowerCentralSeries](declarations/nilpotent-iff-lowercentralseries.md) | 353 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `def` | [Group.nilpotencyClass](declarations/group-nilpotencyclass.md) | 371 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `theorem` | [upperCentralSeries_nilpotencyClass](declarations/uppercentralseries-nilpotencyclass.md) | 375 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `theorem` | [upperCentralSeries_eq_top_iff_nilpotencyClass_le](declarations/uppercentralseries-eq-top-iff-nilpotencyclass-le.md) | 378 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `theorem` | [least_ascending_central_series_length_eq_nilpotencyClass](declarations/least-ascending-central-series-length-eq-nilpotencyclass.md) | 391 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `theorem` | [least_descending_central_series_length_eq_nilpotencyClass](declarations/least-descending-central-series-length-eq-nilpotencyclass.md) | 404 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `theorem` | [lowerCentralSeries_length_eq_nilpotencyClass](declarations/lowercentralseries-length-eq-nilpotencyclass.md) | 422 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `theorem` | [lowerCentralSeries_nilpotencyClass](declarations/lowercentralseries-nilpotencyclass.md) | 433 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `theorem` | [lowerCentralSeries_eq_bot_iff_nilpotencyClass_le](declarations/lowercentralseries-eq-bot-iff-nilpotencyclass-le.md) | 439 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `theorem` | [lowerCentralSeries_map_subtype_le](declarations/lowercentralseries-map-subtype-le.md) | 452 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `instance` | [Subgroup.isNilpotent](declarations/subgroup-isnilpotent.md) | 462 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `theorem` | [Subgroup.nilpotencyClass_le](declarations/subgroup-nilpotencyclass-le.md) | 471 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `instance` | [(anonymous)](declarations/instance.md) | 480 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `theorem` | [upperCentralSeries.map](declarations/uppercentralseries-map.md) | 483 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `theorem` | [lowerCentralSeries.map](declarations/lowercentralseries-map.md) | 491 | `BLOCKED_NATIVE_ADMISSION` |
| 51 | `theorem` | [lowerCentralSeries_succ_eq_bot](declarations/lowercentralseries-succ-eq-bot.md) | 503 | `BLOCKED_NATIVE_ADMISSION` |
| 52 | `theorem` | [isNilpotent_of_ker_le_center](declarations/isnilpotent-of-ker-le-center.md) | 512 | `BLOCKED_NATIVE_ADMISSION` |
| 53 | `theorem` | [nilpotencyClass_le_of_ker_le_center](declarations/nilpotencyclass-le-of-ker-le-center.md) | 520 | `BLOCKED_NATIVE_ADMISSION` |
| 54 | `theorem` | [nilpotent_of_surjective](declarations/nilpotent-of-surjective.md) | 533 | `BLOCKED_NATIVE_ADMISSION` |
| 55 | `theorem` | [nilpotencyClass_le_of_surjective](declarations/nilpotencyclass-le-of-surjective.md) | 546 | `BLOCKED_NATIVE_ADMISSION` |
| 56 | `theorem` | [nilpotent_of_mulEquiv](declarations/nilpotent-of-mulequiv.md) | 559 | `BLOCKED_NATIVE_ADMISSION` |
| 57 | `instance` | [nilpotent_quotient_of_nilpotent](declarations/nilpotent-quotient-of-nilpotent.md) | 564 | `BLOCKED_NATIVE_ADMISSION` |
| 58 | `theorem` | [nilpotencyClass_quotient_le](declarations/nilpotencyclass-quotient-le.md) | 569 | `BLOCKED_NATIVE_ADMISSION` |
| 59 | `theorem` | [comap_center_subst](declarations/comap-center-subst.md) | 574 | `BLOCKED_NATIVE_ADMISSION` |
| 60 | `theorem` | [comap_upperCentralSeries_quotient_center](declarations/comap-uppercentralseries-quotient-center.md) | 577 | `BLOCKED_NATIVE_ADMISSION` |
| 61 | `theorem` | [nilpotencyClass_zero_iff_subsingleton](declarations/nilpotencyclass-zero-iff-subsingleton.md) | 594 | `BLOCKED_NATIVE_ADMISSION` |
| 62 | `theorem` | [nilpotencyClass_quotient_center](declarations/nilpotencyclass-quotient-center.md) | 601 | `BLOCKED_NATIVE_ADMISSION` |
| 63 | `theorem` | [nilpotencyClass_eq_quotient_center_plus_one](declarations/nilpotencyclass-eq-quotient-center-plus-one.md) | 620 | `BLOCKED_NATIVE_ADMISSION` |
| 64 | `theorem` | [of_quotient_center_nilpotent](declarations/of-quotient-center-nilpotent.md) | 630 | `BLOCKED_NATIVE_ADMISSION` |
| 65 | `theorem` | [nilpotent_center_quotient_ind](declarations/nilpotent-center-quotient-ind.md) | 639 | `BLOCKED_NATIVE_ADMISSION` |
| 66 | `theorem` | [derived_le_lower_central](declarations/derived-le-lower-central.md) | 651 | `BLOCKED_NATIVE_ADMISSION` |
| 67 | `instance` | [(anonymous)](declarations/instance-source-edition-3.md) | 658 | `BLOCKED_NATIVE_ADMISSION` |
| 68 | `theorem` | [CommGroup.nilpotencyClass_le_one](declarations/commgroup-nilpotencyclass-le-one.md) | 664 | `BLOCKED_NATIVE_ADMISSION` |
| 69 | `def` | [commGroupOfNilpotencyClass](declarations/commgroupofnilpotencyclass.md) | 670 | `BLOCKED_NATIVE_ADMISSION` |
| 70 | `theorem` | [lowerCentralSeries_prod](declarations/lowercentralseries-prod.md) | 679 | `BLOCKED_NATIVE_ADMISSION` |
| 71 | `instance` | [isNilpotent_prod](declarations/isnilpotent-prod.md) | 693 | `BLOCKED_NATIVE_ADMISSION` |
| 72 | `theorem` | [nilpotencyClass_prod](declarations/nilpotencyclass-prod.md) | 701 | `BLOCKED_NATIVE_ADMISSION` |
| 73 | `theorem` | [lowerCentralSeries_pi_le](declarations/lowercentralseries-pi-le.md) | 715 | `BLOCKED_NATIVE_ADMISSION` |
| 74 | `theorem` | [isNilpotent_pi_of_bounded_class](declarations/isnilpotent-pi-of-bounded-class.md) | 729 | `BLOCKED_NATIVE_ADMISSION` |
| 75 | `theorem` | [lowerCentralSeries_pi_of_finite](declarations/lowercentralseries-pi-of-finite.md) | 746 | `BLOCKED_NATIVE_ADMISSION` |
| 76 | `instance` | [isNilpotent_pi](declarations/isnilpotent-pi.md) | 760 | `BLOCKED_NATIVE_ADMISSION` |
| 77 | `theorem` | [nilpotencyClass_pi](declarations/nilpotencyclass-pi.md) | 770 | `BLOCKED_NATIVE_ADMISSION` |
| 78 | `instance` | [(anonymous)](declarations/instance-source-edition-4.md) | 780 | `BLOCKED_NATIVE_ADMISSION` |
| 79 | `theorem` | [normalizerCondition_of_isNilpotent](declarations/normalizercondition-of-isnilpotent.md) | 786 | `BLOCKED_NATIVE_ADMISSION` |
| 80 | `theorem` | [IsPGroup.isNilpotent](declarations/ispgroup-isnilpotent.md) | 813 | `BLOCKED_NATIVE_ADMISSION` |
| 81 | `theorem` | [isNilpotent_of_product_of_sylow_group](declarations/isnilpotent-of-product-of-sylow-group.md) | 836 | `BLOCKED_NATIVE_ADMISSION` |
| 82 | `theorem` | [isNilpotent_of_finite_tfae](declarations/isnilpotent-of-finite-tfae.md) | 850 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=9886799e140a545f4254b908371372093210843e1e53cbb20dc10653c9eb1472 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/GroupTheory/Nilpotent/Variantc9f0487e08f309469bec4911a81a2130404207d00c46979234a53c45f51c703c.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
