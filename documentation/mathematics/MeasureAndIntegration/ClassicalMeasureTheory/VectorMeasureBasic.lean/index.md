# Vector Measure Basic

[Complete source index](../../../complete-source-index.md) · [Up one directory](../../../complete-source-index.md) · [Full source](source.md)

**157 observed declarations and anonymous commands**, 116 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Analysis/MeasureTheory/Basic/Variante205ad6f9d3c0b43f838d7ebbea27490119d28d497f23cedaf1cf78ff7d018c5.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `95e1b4c7788170393703ee18511f30cc32901362`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/MeasureAndIntegration/ClassicalMeasureTheory/VectorMeasureBasic.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `structure` | [VectorMeasure](declarations/vectormeasure.md) | 57 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `abbrev` | [SignedMeasure](declarations/signedmeasure.md) | 70 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `instance` | [instCoeFun](declarations/instcoefun.md) | 83 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `theorem` | [empty](declarations/empty.md) | 89 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [not_measurable](declarations/not-measurable.md) | 92 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [m_iUnion](declarations/m-iunion.md) | 95 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [coe_injective](declarations/coe-injective.md) | 99 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [ext_iff'](declarations/ext-iff-source-edition-2.md) | 104 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [ext_iff](declarations/ext-iff.md) | 107 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [ext](declarations/ext.md) | 118 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [hasSum_of_disjoint_iUnion](declarations/hassum-of-disjoint-iunion.md) | 123 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [of_disjoint_iUnion](declarations/of-disjoint-iunion.md) | 135 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [of_union](declarations/of-union.md) | 139 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [of_add_of_diff](declarations/of-add-of-diff.md) | 144 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [of_diff](declarations/of-diff.md) | 148 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [of_diff_of_diff_eq_zero](declarations/of-diff-of-diff-eq-zero.md) | 153 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [of_iUnion_nonneg](declarations/of-iunion-nonneg.md) | 171 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [of_iUnion_nonpos](declarations/of-iunion-nonpos.md) | 177 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [of_nonneg_disjoint_union_eq_zero](declarations/of-nonneg-disjoint-union-eq-zero.md) | 183 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [of_nonpos_disjoint_union_eq_zero](declarations/of-nonpos-disjoint-union-eq-zero.md) | 189 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `def` | [smul](declarations/smul.md) | 204 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `instance` | [instSMul](declarations/instsmul.md) | 210 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [coe_smul](declarations/coe-smul.md) | 214 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [smul_apply](declarations/smul-apply.md) | 216 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `instance` | [instZero](declarations/instzero.md) | 224 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `instance` | [instInhabited](declarations/instinhabited.md) | 227 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [coe_zero](declarations/coe-zero.md) | 231 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [zero_apply](declarations/zero-apply.md) | 233 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `def` | [add](declarations/add-source-edition-2.md) | 238 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `instance` | [instAdd](declarations/instadd.md) | 244 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [coe_add](declarations/coe-add.md) | 248 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [add_apply](declarations/add-apply.md) | 250 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `instance` | [instAddCommMonoid](declarations/instaddcommmonoid.md) | 252 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `def` | [coeFnAddMonoidHom](declarations/coefnaddmonoidhom.md) | 257 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `def` | [neg](declarations/neg.md) | 269 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `instance` | [instNeg](declarations/instneg.md) | 275 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `theorem` | [coe_neg](declarations/coe-neg.md) | 279 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `theorem` | [neg_apply](declarations/neg-apply.md) | 281 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `def` | [sub](declarations/sub.md) | 284 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `instance` | [instSub](declarations/instsub.md) | 290 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `theorem` | [coe_sub](declarations/coe-sub.md) | 294 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `theorem` | [sub_apply](declarations/sub-apply.md) | 296 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `instance` | [instAddCommGroup](declarations/instaddcommgroup.md) | 298 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `instance` | [instDistribMulAction](declarations/instdistribmulaction.md) | 309 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `instance` | [instModule](declarations/instmodule.md) | 319 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `def` | [toSignedMeasure](declarations/tosignedmeasure.md) | 331 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `theorem` | [toSignedMeasure_apply_measurable](declarations/tosignedmeasure-apply-measurable.md) | 340 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `theorem` | [toSignedMeasure_congr](declarations/tosignedmeasure-congr.md) | 346 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `theorem` | [toSignedMeasure_eq_toSignedMeasure_iff](declarations/tosignedmeasure-eq-tosignedmeasure-iff.md) | 350 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `theorem` | [toSignedMeasure_zero](declarations/tosignedmeasure-zero.md) | 360 | `BLOCKED_NATIVE_ADMISSION` |
| 51 | `theorem` | [toSignedMeasure_add](declarations/tosignedmeasure-add.md) | 365 | `BLOCKED_NATIVE_ADMISSION` |
| 52 | `theorem` | [toSignedMeasure_smul](declarations/tosignedmeasure-smul.md) | 373 | `BLOCKED_NATIVE_ADMISSION` |
| 53 | `def` | [toENNRealVectorMeasure](declarations/toennrealvectormeasure.md) | 383 | `BLOCKED_NATIVE_ADMISSION` |
| 54 | `theorem` | [toENNRealVectorMeasure_apply_measurable](declarations/toennrealvectormeasure-apply-measurable.md) | 392 | `BLOCKED_NATIVE_ADMISSION` |
| 55 | `theorem` | [toENNRealVectorMeasure_zero](declarations/toennrealvectormeasure-zero.md) | 397 | `BLOCKED_NATIVE_ADMISSION` |
| 56 | `theorem` | [toENNRealVectorMeasure_add](declarations/toennrealvectormeasure-add.md) | 402 | `BLOCKED_NATIVE_ADMISSION` |
| 57 | `theorem` | [toSignedMeasure_sub_apply](declarations/tosignedmeasure-sub-apply.md) | 408 | `BLOCKED_NATIVE_ADMISSION` |
| 58 | `def` | [ennrealToMeasure](declarations/ennrealtomeasure-source-edition-2.md) | 423 | `BLOCKED_NATIVE_ADMISSION` |
| 59 | `theorem` | [ennrealToMeasure_apply](declarations/ennrealtomeasure-apply.md) | 426 | `BLOCKED_NATIVE_ADMISSION` |
| 60 | `theorem` | [_root_.MeasureTheory.Measure.toENNRealVectorMeasure_ennrealToMeasure](declarations/root-measuretheory-measure-toennrealvectormeasure-ennrealtomeasure.md) | 431 | `BLOCKED_NATIVE_ADMISSION` |
| 61 | `theorem` | [ennrealToMeasure_toENNRealVectorMeasure](declarations/ennrealtomeasure-toennrealvectormeasure.md) | 437 | `BLOCKED_NATIVE_ADMISSION` |
| 62 | `def` | [equivMeasure](declarations/equivmeasure.md) | 445 | `BLOCKED_NATIVE_ADMISSION` |
| 63 | `def` | [map](declarations/map-source-edition-3.md) | 461 | `BLOCKED_NATIVE_ADMISSION` |
| 64 | `theorem` | [map_not_measurable](declarations/map-not-measurable.md) | 473 | `BLOCKED_NATIVE_ADMISSION` |
| 65 | `theorem` | [map_apply](declarations/map-apply.md) | 476 | `BLOCKED_NATIVE_ADMISSION` |
| 66 | `theorem` | [map_id](declarations/map-id.md) | 482 | `BLOCKED_NATIVE_ADMISSION` |
| 67 | `theorem` | [map_zero](declarations/map-zero.md) | 486 | `BLOCKED_NATIVE_ADMISSION` |
| 68 | `def` | [mapRange](declarations/maprange.md) | 498 | `BLOCKED_NATIVE_ADMISSION` |
| 69 | `theorem` | [mapRange_apply](declarations/maprange-apply.md) | 505 | `BLOCKED_NATIVE_ADMISSION` |
| 70 | `theorem` | [mapRange_id](declarations/maprange-id.md) | 509 | `BLOCKED_NATIVE_ADMISSION` |
| 71 | `theorem` | [mapRange_zero](declarations/maprange-zero.md) | 514 | `BLOCKED_NATIVE_ADMISSION` |
| 72 | `theorem` | [mapRange_add](declarations/maprange-add.md) | 524 | `BLOCKED_NATIVE_ADMISSION` |
| 73 | `def` | [mapRangeHom](declarations/maprangehom.md) | 531 | `BLOCKED_NATIVE_ADMISSION` |
| 74 | `def` | [mapRangeₗ](declarations/maprange-source-edition-2.md) | 545 | `BLOCKED_NATIVE_ADMISSION` |
| 75 | `def` | [restrict](declarations/restrict-source-edition-2.md) | 559 | `BLOCKED_NATIVE_ADMISSION` |
| 76 | `theorem` | [restrict_not_measurable](declarations/restrict-not-measurable.md) | 572 | `BLOCKED_NATIVE_ADMISSION` |
| 77 | `theorem` | [restrict_apply](declarations/restrict-apply.md) | 575 | `BLOCKED_NATIVE_ADMISSION` |
| 78 | `theorem` | [restrict_eq_self](declarations/restrict-eq-self.md) | 580 | `BLOCKED_NATIVE_ADMISSION` |
| 79 | `theorem` | [restrict_empty](declarations/restrict-empty.md) | 585 | `BLOCKED_NATIVE_ADMISSION` |
| 80 | `theorem` | [restrict_univ](declarations/restrict-univ.md) | 590 | `BLOCKED_NATIVE_ADMISSION` |
| 81 | `theorem` | [restrict_zero](declarations/restrict-zero.md) | 594 | `BLOCKED_NATIVE_ADMISSION` |
| 82 | `theorem` | [map_add](declarations/map-add.md) | 604 | `BLOCKED_NATIVE_ADMISSION` |
| 83 | `def` | [mapGm](declarations/mapgm.md) | 612 | `BLOCKED_NATIVE_ADMISSION` |
| 84 | `theorem` | [restrict_add](declarations/restrict-add.md) | 617 | `BLOCKED_NATIVE_ADMISSION` |
| 85 | `def` | [restrictGm](declarations/restrictgm.md) | 626 | `BLOCKED_NATIVE_ADMISSION` |
| 86 | `theorem` | [map_smul](declarations/map-smul.md) | 642 | `BLOCKED_NATIVE_ADMISSION` |
| 87 | `theorem` | [restrict_smul](declarations/restrict-smul.md) | 652 | `BLOCKED_NATIVE_ADMISSION` |
| 88 | `def` | [mapₗ](declarations/map-source-edition-2.md) | 672 | `BLOCKED_NATIVE_ADMISSION` |
| 89 | `def` | [restrictₗ](declarations/restrict.md) | 679 | `BLOCKED_NATIVE_ADMISSION` |
| 90 | `instance` | [instPartialOrder](declarations/instpartialorder.md) | 693 | `BLOCKED_NATIVE_ADMISSION` |
| 91 | `theorem` | [le_iff](declarations/le-iff-source-edition-2.md) | 701 | `BLOCKED_NATIVE_ADMISSION` |
| 92 | `theorem` | [le_iff'](declarations/le-iff.md) | 703 | `BLOCKED_NATIVE_ADMISSION` |
| 93 | `theorem` | [restrict_le_restrict_iff](declarations/restrict-le-restrict-iff.md) | 721 | `BLOCKED_NATIVE_ADMISSION` |
| 94 | `theorem` | [subset_le_of_restrict_le_restrict](declarations/subset-le-of-restrict-le-restrict.md) | 728 | `BLOCKED_NATIVE_ADMISSION` |
| 95 | `theorem` | [restrict_le_restrict_of_subset_le](declarations/restrict-le-restrict-of-subset-le.md) | 734 | `BLOCKED_NATIVE_ADMISSION` |
| 96 | `theorem` | [restrict_le_restrict_subset](declarations/restrict-le-restrict-subset.md) | 740 | `BLOCKED_NATIVE_ADMISSION` |
| 97 | `theorem` | [le_restrict_empty](declarations/le-restrict-empty.md) | 745 | `BLOCKED_NATIVE_ADMISSION` |
| 98 | `theorem` | [le_restrict_univ_iff_le](declarations/le-restrict-univ-iff-le.md) | 749 | `BLOCKED_NATIVE_ADMISSION` |
| 99 | `theorem` | [neg_le_neg](declarations/neg-le-neg.md) | 768 | `BLOCKED_NATIVE_ADMISSION` |
| 100 | `theorem` | [neg_le_neg_iff](declarations/neg-le-neg-iff.md) | 776 | `BLOCKED_NATIVE_ADMISSION` |
| 101 | `theorem` | [restrict_le_restrict_iUnion](declarations/restrict-le-restrict-iunion.md) | 787 | `BLOCKED_NATIVE_ADMISSION` |
| 102 | `theorem` | [restrict_le_restrict_countable_iUnion](declarations/restrict-le-restrict-countable-iunion.md) | 809 | `BLOCKED_NATIVE_ADMISSION` |
| 103 | `theorem` | [restrict_le_restrict_union](declarations/restrict-le-restrict-union.md) | 821 | `BLOCKED_NATIVE_ADMISSION` |
| 104 | `theorem` | [nonneg_of_zero_le_restrict](declarations/nonneg-of-zero-le-restrict.md) | 835 | `BLOCKED_NATIVE_ADMISSION` |
| 105 | `theorem` | [nonpos_of_restrict_le_zero](declarations/nonpos-of-restrict-le-zero.md) | 840 | `BLOCKED_NATIVE_ADMISSION` |
| 106 | `theorem` | [zero_le_restrict_not_measurable](declarations/zero-le-restrict-not-measurable.md) | 845 | `BLOCKED_NATIVE_ADMISSION` |
| 107 | `theorem` | [restrict_le_zero_of_not_measurable](declarations/restrict-le-zero-of-not-measurable.md) | 848 | `BLOCKED_NATIVE_ADMISSION` |
| 108 | `theorem` | [measurable_of_not_zero_le_restrict](declarations/measurable-of-not-zero-le-restrict.md) | 851 | `BLOCKED_NATIVE_ADMISSION` |
| 109 | `theorem` | [measurable_of_not_restrict_le_zero](declarations/measurable-of-not-restrict-le-zero.md) | 854 | `BLOCKED_NATIVE_ADMISSION` |
| 110 | `theorem` | [zero_le_restrict_subset](declarations/zero-le-restrict-subset.md) | 857 | `BLOCKED_NATIVE_ADMISSION` |
| 111 | `theorem` | [restrict_le_zero_subset](declarations/restrict-le-zero-subset.md) | 861 | `BLOCKED_NATIVE_ADMISSION` |
| 112 | `theorem` | [exists_pos_measure_of_not_restrict_le_zero](declarations/exists-pos-measure-of-not-restrict-le-zero.md) | 872 | `BLOCKED_NATIVE_ADMISSION` |
| 113 | `instance` | [instAddLeftMono](declarations/instaddleftmono.md) | 886 | `BLOCKED_NATIVE_ADMISSION` |
| 114 | `def` | [AbsolutelyContinuous](declarations/absolutelycontinuous.md) | 899 | `BLOCKED_NATIVE_ADMISSION` |
| 115 | `theorem` | [mk](declarations/mk.md) | 911 | `BLOCKED_NATIVE_ADMISSION` |
| 116 | `theorem` | [eq](declarations/eq.md) | 917 | `BLOCKED_NATIVE_ADMISSION` |
| 117 | `theorem` | [refl](declarations/refl.md) | 921 | `BLOCKED_NATIVE_ADMISSION` |
| 118 | `theorem` | [trans](declarations/trans.md) | 925 | `BLOCKED_NATIVE_ADMISSION` |
| 119 | `theorem` | [zero](declarations/zero.md) | 929 | `BLOCKED_NATIVE_ADMISSION` |
| 120 | `theorem` | [neg_left](declarations/neg-left-source-edition-2.md) | 932 | `BLOCKED_NATIVE_ADMISSION` |
| 121 | `theorem` | [neg_right](declarations/neg-right.md) | 937 | `BLOCKED_NATIVE_ADMISSION` |
| 122 | `theorem` | [add](declarations/add.md) | 943 | `BLOCKED_NATIVE_ADMISSION` |
| 123 | `theorem` | [sub](declarations/sub-source-edition-2.md) | 948 | `BLOCKED_NATIVE_ADMISSION` |
| 124 | `theorem` | [smul](declarations/smul-source-edition-2.md) | 954 | `BLOCKED_NATIVE_ADMISSION` |
| 125 | `theorem` | [map](declarations/map.md) | 959 | `BLOCKED_NATIVE_ADMISSION` |
| 126 | `theorem` | [ennrealToMeasure](declarations/ennrealtomeasure.md) | 967 | `BLOCKED_NATIVE_ADMISSION` |
| 127 | `def` | [MutuallySingular](declarations/mutuallysingular.md) | 987 | `BLOCKED_NATIVE_ADMISSION` |
| 128 | `theorem` | [mk](declarations/mk-source-edition-2.md) | 997 | `BLOCKED_NATIVE_ADMISSION` |
| 129 | `theorem` | [symm](declarations/symm.md) | 1005 | `BLOCKED_NATIVE_ADMISSION` |
| 130 | `theorem` | [zero_right](declarations/zero-right.md) | 1009 | `BLOCKED_NATIVE_ADMISSION` |
| 131 | `theorem` | [zero_left](declarations/zero-left.md) | 1013 | `BLOCKED_NATIVE_ADMISSION` |
| 132 | `theorem` | [add_left](declarations/add-left.md) | 1016 | `BLOCKED_NATIVE_ADMISSION` |
| 133 | `theorem` | [add_right](declarations/add-right.md) | 1035 | `BLOCKED_NATIVE_ADMISSION` |
| 134 | `theorem` | [smul_right](declarations/smul-right.md) | 1038 | `BLOCKED_NATIVE_ADMISSION` |
| 135 | `theorem` | [smul_left](declarations/smul-left.md) | 1043 | `BLOCKED_NATIVE_ADMISSION` |
| 136 | `theorem` | [neg_left](declarations/neg-left.md) | 1047 | `BLOCKED_NATIVE_ADMISSION` |
| 137 | `theorem` | [neg_right](declarations/neg-right-source-edition-2.md) | 1054 | `BLOCKED_NATIVE_ADMISSION` |
| 138 | `theorem` | [neg_left_iff](declarations/neg-left-iff.md) | 1059 | `BLOCKED_NATIVE_ADMISSION` |
| 139 | `theorem` | [neg_right_iff](declarations/neg-right-iff.md) | 1064 | `BLOCKED_NATIVE_ADMISSION` |
| 140 | `def` | [trim](declarations/trim.md) | 1075 | `BLOCKED_NATIVE_ADMISSION` |
| 141 | `theorem` | [trim_eq_self](declarations/trim-eq-self.md) | 1091 | `BLOCKED_NATIVE_ADMISSION` |
| 142 | `theorem` | [zero_trim](declarations/zero-trim.md) | 1096 | `BLOCKED_NATIVE_ADMISSION` |
| 143 | `theorem` | [trim_measurableSet_eq](declarations/trim-measurableset-eq.md) | 1100 | `BLOCKED_NATIVE_ADMISSION` |
| 144 | `theorem` | [restrict_trim](declarations/restrict-trim.md) | 1104 | `BLOCKED_NATIVE_ADMISSION` |
| 145 | `def` | [toMeasureOfZeroLE'](declarations/tomeasureofzerole.md) | 1123 | `BLOCKED_NATIVE_ADMISSION` |
| 146 | `def` | [toMeasureOfZeroLE](declarations/tomeasureofzerole-source-edition-2.md) | 1129 | `BLOCKED_NATIVE_ADMISSION` |
| 147 | `theorem` | [toMeasureOfZeroLE_apply](declarations/tomeasureofzerole-apply.md) | 1151 | `BLOCKED_NATIVE_ADMISSION` |
| 148 | `theorem` | [toMeasureOfZeroLE_real_apply](declarations/tomeasureofzerole-real-apply.md) | 1157 | `BLOCKED_NATIVE_ADMISSION` |
| 149 | `def` | [toMeasureOfLEZero](declarations/tomeasureoflezero.md) | 1164 | `BLOCKED_NATIVE_ADMISSION` |
| 150 | `theorem` | [toMeasureOfLEZero_apply](declarations/tomeasureoflezero-apply.md) | 1168 | `BLOCKED_NATIVE_ADMISSION` |
| 151 | `theorem` | [toMeasureOfLEZero_real_apply](declarations/tomeasureoflezero-real-apply.md) | 1176 | `BLOCKED_NATIVE_ADMISSION` |
| 152 | `instance` | [toMeasureOfZeroLE_finite](declarations/tomeasureofzerole-finite.md) | 1182 | `BLOCKED_NATIVE_ADMISSION` |
| 153 | `instance` | [toMeasureOfLEZero_finite](declarations/tomeasureoflezero-finite.md) | 1189 | `BLOCKED_NATIVE_ADMISSION` |
| 154 | `theorem` | [toMeasureOfZeroLE_toSignedMeasure](declarations/tomeasureofzerole-tosignedmeasure.md) | 1195 | `BLOCKED_NATIVE_ADMISSION` |
| 155 | `theorem` | [toMeasureOfLEZero_toSignedMeasure](declarations/tomeasureoflezero-tosignedmeasure.md) | 1200 | `BLOCKED_NATIVE_ADMISSION` |
| 156 | `theorem` | [zero_le_toSignedMeasure](declarations/zero-le-tosignedmeasure.md) | 1213 | `BLOCKED_NATIVE_ADMISSION` |
| 157 | `theorem` | [toSignedMeasure_toMeasureOfZeroLE](declarations/tosignedmeasure-tomeasureofzerole.md) | 1219 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=d4bfdb0b242d0dd69da5d771b33c05842312d401322fa999a98f0aa2a4dc553c -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/MeasureTheory/Basic/Variante205ad6f9d3c0b43f838d7ebbea27490119d28d497f23cedaf1cf78ff7d018c5.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
