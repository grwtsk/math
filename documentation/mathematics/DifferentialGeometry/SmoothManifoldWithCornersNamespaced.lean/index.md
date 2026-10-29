# Smooth Manifold With Corners Namespaced

[Complete source index](../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**180 observed declarations and anonymous commands**, 156 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Geometry/DifferentialGeometry/SmoothManifoldWithCorners/Variant4da5382fc886b3b3b76a3450d083ef767ee4bc764f218f6d6f8154cf60d3a1b8.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `2062e7f052f9d6dfdd318cf0e2ecfb6d74d2e572`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../_verification/specifications/DifferentialGeometry/SmoothManifoldWithCornersNamespaced.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `structure` | [ModelWithCorners](declarations/modelwithcorners.md) | 143 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `def` | [modelWithCornersSelf](declarations/modelwithcornersself.md) | 155 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `def` | [toFun'](declarations/tofun.md) | 177 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `instance` | [(anonymous)](declarations/instance-source-edition-3.md) | 179 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `def` | [symm](declarations/symm.md) | 182 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `def` | [Simps.apply](declarations/simps-apply.md) | 188 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `def` | [Simps.symm_apply](declarations/simps-symm-apply.md) | 194 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [toLocalEquiv_coe](declarations/tolocalequiv-coe.md) | 203 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [mk_coe](declarations/mk-coe.md) | 208 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [toLocalEquiv_coe_symm](declarations/tolocalequiv-coe-symm.md) | 214 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [mk_symm](declarations/mk-symm.md) | 219 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [continuous](declarations/continuous.md) | 225 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [continuousAt](declarations/continuousat.md) | 229 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [continuousWithinAt](declarations/continuouswithinat.md) | 233 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [continuous_symm](declarations/continuous-symm.md) | 238 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [continuousAt_symm](declarations/continuousat-symm.md) | 242 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [continuousWithinAt_symm](declarations/continuouswithinat-symm.md) | 246 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [continuousOn_symm](declarations/continuouson-symm.md) | 250 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [target_eq](declarations/target-eq.md) | 255 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [unique_diff](declarations/unique-diff.md) | 260 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [left_inv](declarations/left-inv.md) | 265 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [leftInverse](declarations/leftinverse.md) | 268 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [injective](declarations/injective.md) | 272 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [symm_comp_self](declarations/symm-comp-self.md) | 277 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [rightInvOn](declarations/rightinvon.md) | 281 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [right_inv](declarations/right-inv.md) | 286 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [preimage_image](declarations/preimage-image.md) | 290 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [image_eq](declarations/image-eq.md) | 294 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [closedEmbedding](declarations/closedembedding.md) | 300 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [closed_range](declarations/closed-range.md) | 304 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [map_nhds_eq](declarations/map-nhds-eq.md) | 308 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [map_nhdsWithin_eq](declarations/map-nhdswithin-eq.md) | 312 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [image_mem_nhdsWithin](declarations/image-mem-nhdswithin.md) | 316 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [symm_map_nhdsWithin_image](declarations/symm-map-nhdswithin-image.md) | 320 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `theorem` | [symm_map_nhdsWithin_range](declarations/symm-map-nhdswithin-range.md) | 324 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `theorem` | [unique_diff_preimage](declarations/unique-diff-preimage.md) | 328 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `theorem` | [unique_diff_preimage_source](declarations/unique-diff-preimage-source.md) | 334 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `theorem` | [unique_diff_at_image](declarations/unique-diff-at-image.md) | 339 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `theorem` | [symm_continuousWithinAt_comp_right_iff](declarations/symm-continuouswithinat-comp-right-iff.md) | 343 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `theorem` | [locallyCompactSpace](declarations/locallycompactspace.md) | 354 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `theorem` | [secondCountableTopology](declarations/secondcountabletopology.md) | 367 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `theorem` | [modelWithCornersSelf_localEquiv](declarations/modelwithcornersself-localequiv.md) | 380 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `theorem` | [modelWithCornersSelf_coe](declarations/modelwithcornersself-coe.md) | 385 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `theorem` | [modelWithCornersSelf_coe_symm](declarations/modelwithcornersself-coe-symm.md) | 390 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `def` | [ModelWithCorners.prod](declarations/modelwithcorners-prod.md) | 406 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `def` | [ModelWithCorners.pi](declarations/modelwithcorners-pi.md) | 424 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `def` | [ModelWithCorners.tangent](declarations/modelwithcorners-tangent.md) | 438 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `theorem` | [modelWithCorners_prod_toLocalEquiv](declarations/modelwithcorners-prod-tolocalequiv.md) | 452 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `theorem` | [modelWithCorners_prod_coe](declarations/modelwithcorners-prod-coe.md) | 458 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `theorem` | [modelWithCorners_prod_coe_symm](declarations/modelwithcorners-prod-coe-symm.md) | 464 | `BLOCKED_NATIVE_ADMISSION` |
| 51 | `theorem` | [modelWithCornersSelf_prod](declarations/modelwithcornersself-prod.md) | 470 | `BLOCKED_NATIVE_ADMISSION` |
| 52 | `theorem` | [ModelWithCorners.range_prod](declarations/modelwithcorners-range-prod.md) | 473 | `BLOCKED_NATIVE_ADMISSION` |
| 53 | `class` | [ModelWithCorners.Boundaryless](declarations/modelwithcorners-boundaryless.md) | 482 | `BLOCKED_NATIVE_ADMISSION` |
| 54 | `theorem` | [ModelWithCorners.range_eq_univ](declarations/modelwithcorners-range-eq-univ.md) | 488 | `BLOCKED_NATIVE_ADMISSION` |
| 55 | `def` | [ModelWithCorners.toHomeomorph](declarations/modelwithcorners-tohomeomorph.md) | 495 | `BLOCKED_NATIVE_ADMISSION` |
| 56 | `instance` | [modelWithCornersSelf_boundaryless](declarations/modelwithcornersself-boundaryless.md) | 503 | `BLOCKED_NATIVE_ADMISSION` |
| 57 | `instance` | [ModelWithCorners.range_eq_univ_prod](declarations/modelwithcorners-range-eq-univ-prod.md) | 509 | `BLOCKED_NATIVE_ADMISSION` |
| 58 | `def` | [contDiffGroupoid](declarations/contdiffgroupoid.md) | 535 | `BLOCKED_NATIVE_ADMISSION` |
| 59 | `theorem` | [contDiffGroupoid_le](declarations/contdiffgroupoid-le.md) | 579 | `BLOCKED_NATIVE_ADMISSION` |
| 60 | `theorem` | [contDiffGroupoid_zero_eq](declarations/contdiffgroupoid-zero-eq.md) | 588 | `BLOCKED_NATIVE_ADMISSION` |
| 61 | `theorem` | [ofSet_mem_contDiffGroupoid](declarations/ofset-mem-contdiffgroupoid.md) | 606 | `BLOCKED_NATIVE_ADMISSION` |
| 62 | `theorem` | [symm_trans_mem_contDiffGroupoid](declarations/symm-trans-mem-contdiffgroupoid.md) | 617 | `BLOCKED_NATIVE_ADMISSION` |
| 63 | `theorem` | [contDiffGroupoid_prod](declarations/contdiffgroupoid-prod.md) | 627 | `BLOCKED_NATIVE_ADMISSION` |
| 64 | `instance` | [(anonymous)](declarations/instance.md) | 645 | `BLOCKED_NATIVE_ADMISSION` |
| 65 | `class` | [SmoothManifoldWithCorners](declarations/smoothmanifoldwithcorners.md) | 662 | `BLOCKED_NATIVE_ADMISSION` |
| 66 | `theorem` | [SmoothManifoldWithCorners.mk'](declarations/smoothmanifoldwithcorners-mk.md) | 668 | `BLOCKED_NATIVE_ADMISSION` |
| 67 | `theorem` | [smoothManifoldWithCorners_of_contDiffOn](declarations/smoothmanifoldwithcorners-of-contdiffon.md) | 675 | `BLOCKED_NATIVE_ADMISSION` |
| 68 | `instance` | [model_space_smooth](declarations/model-space-smooth.md) | 687 | `BLOCKED_NATIVE_ADMISSION` |
| 69 | `def` | [maximalAtlas](declarations/maximalatlas.md) | 706 | `BLOCKED_NATIVE_ADMISSION` |
| 70 | `theorem` | [subset_maximalAtlas](declarations/subset-maximalatlas.md) | 712 | `BLOCKED_NATIVE_ADMISSION` |
| 71 | `theorem` | [chart_mem_maximalAtlas](declarations/chart-mem-maximalatlas.md) | 716 | `BLOCKED_NATIVE_ADMISSION` |
| 72 | `theorem` | [compatible_of_mem_maximalAtlas](declarations/compatible-of-mem-maximalatlas.md) | 723 | `BLOCKED_NATIVE_ADMISSION` |
| 73 | `instance` | [prod](declarations/prod.md) | 729 | `BLOCKED_NATIVE_ADMISSION` |
| 74 | `theorem` | [LocalHomeomorph.singleton_smoothManifoldWithCorners](declarations/localhomeomorph-singleton-smoothmanifoldwithcorners.md) | 745 | `BLOCKED_NATIVE_ADMISSION` |
| 75 | `theorem` | [OpenEmbedding.singleton_smoothManifoldWithCorners](declarations/openembedding-singleton-smoothmanifoldwithcorners.md) | 754 | `BLOCKED_NATIVE_ADMISSION` |
| 76 | `instance` | [(anonymous)](declarations/instance-source-edition-2.md) | 770 | `BLOCKED_NATIVE_ADMISSION` |
| 77 | `def` | [extend](declarations/extend.md) | 799 | `BLOCKED_NATIVE_ADMISSION` |
| 78 | `theorem` | [extend_coe](declarations/extend-coe.md) | 803 | `BLOCKED_NATIVE_ADMISSION` |
| 79 | `theorem` | [extend_coe_symm](declarations/extend-coe-symm.md) | 807 | `BLOCKED_NATIVE_ADMISSION` |
| 80 | `theorem` | [extend_source](declarations/extend-source.md) | 811 | `BLOCKED_NATIVE_ADMISSION` |
| 81 | `theorem` | [isOpen_extend_source](declarations/isopen-extend-source.md) | 815 | `BLOCKED_NATIVE_ADMISSION` |
| 82 | `theorem` | [extend_target](declarations/extend-target.md) | 820 | `BLOCKED_NATIVE_ADMISSION` |
| 83 | `theorem` | [mapsTo_extend](declarations/mapsto-extend.md) | 824 | `BLOCKED_NATIVE_ADMISSION` |
| 84 | `theorem` | [extend_left_inv](declarations/extend-left-inv.md) | 831 | `BLOCKED_NATIVE_ADMISSION` |
| 85 | `theorem` | [extend_source_mem_nhds](declarations/extend-source-mem-nhds.md) | 835 | `BLOCKED_NATIVE_ADMISSION` |
| 86 | `theorem` | [extend_source_mem_nhdsWithin](declarations/extend-source-mem-nhdswithin.md) | 839 | `BLOCKED_NATIVE_ADMISSION` |
| 87 | `theorem` | [continuousOn_extend](declarations/continuouson-extend.md) | 843 | `BLOCKED_NATIVE_ADMISSION` |
| 88 | `theorem` | [continuousAt_extend](declarations/continuousat-extend.md) | 849 | `BLOCKED_NATIVE_ADMISSION` |
| 89 | `theorem` | [map_extend_nhds](declarations/map-extend-nhds.md) | 853 | `BLOCKED_NATIVE_ADMISSION` |
| 90 | `theorem` | [extend_target_mem_nhdsWithin](declarations/extend-target-mem-nhdswithin.md) | 858 | `BLOCKED_NATIVE_ADMISSION` |
| 91 | `theorem` | [extend_target_subset_range](declarations/extend-target-subset-range.md) | 864 | `BLOCKED_NATIVE_ADMISSION` |
| 92 | `theorem` | [nhdsWithin_extend_target_eq](declarations/nhdswithin-extend-target-eq.md) | 867 | `BLOCKED_NATIVE_ADMISSION` |
| 93 | `theorem` | [continuousAt_extend_symm'](declarations/continuousat-extend-symm.md) | 873 | `BLOCKED_NATIVE_ADMISSION` |
| 94 | `theorem` | [continuousAt_extend_symm](declarations/continuousat-extend-symm-source-edition-2.md) | 878 | `BLOCKED_NATIVE_ADMISSION` |
| 95 | `theorem` | [continuousOn_extend_symm](declarations/continuouson-extend-symm.md) | 883 | `BLOCKED_NATIVE_ADMISSION` |
| 96 | `theorem` | [extend_symm_continuousWithinAt_comp_right_iff](declarations/extend-symm-continuouswithinat-comp-right-iff.md) | 887 | `BLOCKED_NATIVE_ADMISSION` |
| 97 | `theorem` | [isOpen_extend_preimage'](declarations/isopen-extend-preimage.md) | 894 | `BLOCKED_NATIVE_ADMISSION` |
| 98 | `theorem` | [isOpen_extend_preimage](declarations/isopen-extend-preimage-source-edition-2.md) | 899 | `BLOCKED_NATIVE_ADMISSION` |
| 99 | `theorem` | [map_extend_nhdsWithin_eq_image](declarations/map-extend-nhdswithin-eq-image.md) | 903 | `BLOCKED_NATIVE_ADMISSION` |
| 100 | `theorem` | [map_extend_nhdsWithin_eq_image_of_subset](declarations/map-extend-nhdswithin-eq-image-of-subset.md) | 916 | `BLOCKED_NATIVE_ADMISSION` |
| 101 | `theorem` | [map_extend_nhdsWithin](declarations/map-extend-nhdswithin.md) | 921 | `BLOCKED_NATIVE_ADMISSION` |
| 102 | `theorem` | [map_extend_symm_nhdsWithin](declarations/map-extend-symm-nhdswithin.md) | 928 | `BLOCKED_NATIVE_ADMISSION` |
| 103 | `theorem` | [map_extend_symm_nhdsWithin_range](declarations/map-extend-symm-nhdswithin-range.md) | 934 | `BLOCKED_NATIVE_ADMISSION` |
| 104 | `theorem` | [tendsto_extend_comp_iff](declarations/tendsto-extend-comp-iff.md) | 939 | `BLOCKED_NATIVE_ADMISSION` |
| 105 | `theorem` | [continuousWithinAt_writtenInExtend_iff](declarations/continuouswithinat-writteninextend-iff.md) | 949 | `BLOCKED_NATIVE_ADMISSION` |
| 106 | `theorem` | [continuousOn_writtenInExtend_iff](declarations/continuouson-writteninextend-iff.md) | 966 | `BLOCKED_NATIVE_ADMISSION` |
| 107 | `theorem` | [extend_preimage_mem_nhdsWithin](declarations/extend-preimage-mem-nhdswithin.md) | 977 | `BLOCKED_NATIVE_ADMISSION` |
| 108 | `theorem` | [extend_preimage_mem_nhds](declarations/extend-preimage-mem-nhds.md) | 982 | `BLOCKED_NATIVE_ADMISSION` |
| 109 | `theorem` | [extend_preimage_inter_eq](declarations/extend-preimage-inter-eq.md) | 991 | `BLOCKED_NATIVE_ADMISSION` |
| 110 | `theorem` | [extend_symm_preimage_inter_range_eventuallyEq_aux](declarations/extend-symm-preimage-inter-range-eventuallyeq-aux.md) | 998 | `BLOCKED_NATIVE_ADMISSION` |
| 111 | `theorem` | [extend_symm_preimage_inter_range_eventuallyEq](declarations/extend-symm-preimage-inter-range-eventuallyeq.md) | 1011 | `BLOCKED_NATIVE_ADMISSION` |
| 112 | `theorem` | [extend_coord_change_source](declarations/extend-coord-change-source.md) | 1020 | `BLOCKED_NATIVE_ADMISSION` |
| 113 | `theorem` | [extend_image_source_inter](declarations/extend-image-source-inter.md) | 1027 | `BLOCKED_NATIVE_ADMISSION` |
| 114 | `theorem` | [extend_coord_change_source_mem_nhdsWithin](declarations/extend-coord-change-source-mem-nhdswithin.md) | 1033 | `BLOCKED_NATIVE_ADMISSION` |
| 115 | `theorem` | [extend_coord_change_source_mem_nhdsWithin'](declarations/extend-coord-change-source-mem-nhdswithin-source-edition-2.md) | 1042 | `BLOCKED_NATIVE_ADMISSION` |
| 116 | `theorem` | [contDiffOn_extend_coord_change](declarations/contdiffon-extend-coord-change.md) | 1054 | `BLOCKED_NATIVE_ADMISSION` |
| 117 | `theorem` | [contDiffWithinAt_extend_coord_change](declarations/contdiffwithinat-extend-coord-change.md) | 1061 | `BLOCKED_NATIVE_ADMISSION` |
| 118 | `theorem` | [contDiffWithinAt_extend_coord_change'](declarations/contdiffwithinat-extend-coord-change-source-edition-2.md) | 1070 | `BLOCKED_NATIVE_ADMISSION` |
| 119 | `def` | [extChartAt](declarations/extchartat.md) | 1087 | `BLOCKED_NATIVE_ADMISSION` |
| 120 | `theorem` | [extChartAt_coe](declarations/extchartat-coe.md) | 1091 | `BLOCKED_NATIVE_ADMISSION` |
| 121 | `theorem` | [extChartAt_coe_symm](declarations/extchartat-coe-symm.md) | 1095 | `BLOCKED_NATIVE_ADMISSION` |
| 122 | `theorem` | [extChartAt_source](declarations/extchartat-source.md) | 1099 | `BLOCKED_NATIVE_ADMISSION` |
| 123 | `theorem` | [isOpen_extChartAt_source](declarations/isopen-extchartat-source.md) | 1103 | `BLOCKED_NATIVE_ADMISSION` |
| 124 | `theorem` | [mem_extChartAt_source](declarations/mem-extchartat-source.md) | 1107 | `BLOCKED_NATIVE_ADMISSION` |
| 125 | `theorem` | [mem_extChartAt_target](declarations/mem-extchartat-target.md) | 1111 | `BLOCKED_NATIVE_ADMISSION` |
| 126 | `theorem` | [extChartAt_target](declarations/extchartat-target.md) | 1114 | `BLOCKED_NATIVE_ADMISSION` |
| 127 | `theorem` | [uniqueDiffOn_extChartAt_target](declarations/uniquediffon-extchartat-target.md) | 1119 | `BLOCKED_NATIVE_ADMISSION` |
| 128 | `theorem` | [uniqueDiffWithinAt_extChartAt_target](declarations/uniquediffwithinat-extchartat-target.md) | 1123 | `BLOCKED_NATIVE_ADMISSION` |
| 129 | `theorem` | [extChartAt_to_inv](declarations/extchartat-to-inv.md) | 1127 | `BLOCKED_NATIVE_ADMISSION` |
| 130 | `theorem` | [mapsTo_extChartAt](declarations/mapsto-extchartat.md) | 1131 | `BLOCKED_NATIVE_ADMISSION` |
| 131 | `theorem` | [extChartAt_source_mem_nhds'](declarations/extchartat-source-mem-nhds.md) | 1136 | `BLOCKED_NATIVE_ADMISSION` |
| 132 | `theorem` | [extChartAt_source_mem_nhds](declarations/extchartat-source-mem-nhds-source-edition-2.md) | 1141 | `BLOCKED_NATIVE_ADMISSION` |
| 133 | `theorem` | [extChartAt_source_mem_nhdsWithin'](declarations/extchartat-source-mem-nhdswithin-source-edition-2.md) | 1145 | `BLOCKED_NATIVE_ADMISSION` |
| 134 | `theorem` | [extChartAt_source_mem_nhdsWithin](declarations/extchartat-source-mem-nhdswithin.md) | 1150 | `BLOCKED_NATIVE_ADMISSION` |
| 135 | `theorem` | [continuousOn_extChartAt](declarations/continuouson-extchartat.md) | 1154 | `BLOCKED_NATIVE_ADMISSION` |
| 136 | `theorem` | [continuousAt_extChartAt'](declarations/continuousat-extchartat-source-edition-2.md) | 1158 | `BLOCKED_NATIVE_ADMISSION` |
| 137 | `theorem` | [continuousAt_extChartAt](declarations/continuousat-extchartat.md) | 1163 | `BLOCKED_NATIVE_ADMISSION` |
| 138 | `theorem` | [map_extChartAt_nhds'](declarations/map-extchartat-nhds.md) | 1167 | `BLOCKED_NATIVE_ADMISSION` |
| 139 | `theorem` | [map_extChartAt_nhds](declarations/map-extchartat-nhds-source-edition-2.md) | 1172 | `BLOCKED_NATIVE_ADMISSION` |
| 140 | `theorem` | [extChartAt_target_mem_nhdsWithin'](declarations/extchartat-target-mem-nhdswithin-source-edition-2.md) | 1176 | `BLOCKED_NATIVE_ADMISSION` |
| 141 | `theorem` | [extChartAt_target_mem_nhdsWithin](declarations/extchartat-target-mem-nhdswithin.md) | 1181 | `BLOCKED_NATIVE_ADMISSION` |
| 142 | `theorem` | [extChartAt_target_subset_range](declarations/extchartat-target-subset-range.md) | 1185 | `BLOCKED_NATIVE_ADMISSION` |
| 143 | `theorem` | [nhdsWithin_extChartAt_target_eq'](declarations/nhdswithin-extchartat-target-eq.md) | 1189 | `BLOCKED_NATIVE_ADMISSION` |
| 144 | `theorem` | [nhdsWithin_extChartAt_target_eq](declarations/nhdswithin-extchartat-target-eq-source-edition-2.md) | 1194 | `BLOCKED_NATIVE_ADMISSION` |
| 145 | `theorem` | [continuousAt_extChartAt_symm''](declarations/continuousat-extchartat-symm.md) | 1199 | `BLOCKED_NATIVE_ADMISSION` |
| 146 | `theorem` | [continuousAt_extChartAt_symm'](declarations/continuousat-extchartat-symm-source-edition-2.md) | 1204 | `BLOCKED_NATIVE_ADMISSION` |
| 147 | `theorem` | [continuousAt_extChartAt_symm](declarations/continuousat-extchartat-symm-source-edition-3.md) | 1209 | `BLOCKED_NATIVE_ADMISSION` |
| 148 | `theorem` | [continuousOn_extChartAt_symm](declarations/continuouson-extchartat-symm.md) | 1213 | `BLOCKED_NATIVE_ADMISSION` |
| 149 | `theorem` | [isOpen_extChartAt_preimage'](declarations/isopen-extchartat-preimage-source-edition-2.md) | 1217 | `BLOCKED_NATIVE_ADMISSION` |
| 150 | `theorem` | [isOpen_extChartAt_preimage](declarations/isopen-extchartat-preimage.md) | 1222 | `BLOCKED_NATIVE_ADMISSION` |
| 151 | `theorem` | [map_extChartAt_nhdsWithin_eq_image'](declarations/map-extchartat-nhdswithin-eq-image.md) | 1228 | `BLOCKED_NATIVE_ADMISSION` |
| 152 | `theorem` | [map_extChartAt_nhdsWithin_eq_image](declarations/map-extchartat-nhdswithin-eq-image-source-edition-2.md) | 1234 | `BLOCKED_NATIVE_ADMISSION` |
| 153 | `theorem` | [map_extChartAt_nhdsWithin'](declarations/map-extchartat-nhdswithin-source-edition-2.md) | 1240 | `BLOCKED_NATIVE_ADMISSION` |
| 154 | `theorem` | [map_extChartAt_nhdsWithin](declarations/map-extchartat-nhdswithin.md) | 1245 | `BLOCKED_NATIVE_ADMISSION` |
| 155 | `theorem` | [map_extChartAt_symm_nhdsWithin'](declarations/map-extchartat-symm-nhdswithin-source-edition-2.md) | 1250 | `BLOCKED_NATIVE_ADMISSION` |
| 156 | `theorem` | [map_extChartAt_symm_nhdsWithin_range'](declarations/map-extchartat-symm-nhdswithin-range.md) | 1256 | `BLOCKED_NATIVE_ADMISSION` |
| 157 | `theorem` | [map_extChartAt_symm_nhdsWithin](declarations/map-extchartat-symm-nhdswithin.md) | 1261 | `BLOCKED_NATIVE_ADMISSION` |
| 158 | `theorem` | [map_extChartAt_symm_nhdsWithin_range](declarations/map-extchartat-symm-nhdswithin-range-source-edition-2.md) | 1267 | `BLOCKED_NATIVE_ADMISSION` |
| 159 | `theorem` | [extChartAt_preimage_mem_nhdsWithin'](declarations/extchartat-preimage-mem-nhdswithin.md) | 1274 | `BLOCKED_NATIVE_ADMISSION` |
| 160 | `theorem` | [extChartAt_preimage_mem_nhdsWithin](declarations/extchartat-preimage-mem-nhdswithin-source-edition-2.md) | 1282 | `BLOCKED_NATIVE_ADMISSION` |
| 161 | `theorem` | [extChartAt_preimage_mem_nhds'](declarations/extchartat-preimage-mem-nhds-source-edition-2.md) | 1287 | `BLOCKED_NATIVE_ADMISSION` |
| 162 | `theorem` | [extChartAt_preimage_mem_nhds](declarations/extchartat-preimage-mem-nhds.md) | 1294 | `BLOCKED_NATIVE_ADMISSION` |
| 163 | `theorem` | [extChartAt_preimage_inter_eq](declarations/extchartat-preimage-inter-eq.md) | 1302 | `BLOCKED_NATIVE_ADMISSION` |
| 164 | `theorem` | [ContinuousWithinAt.nhdsWithin_extChartAt_symm_preimage_inter_range](declarations/continuouswithinat-nhdswithin-extchartat-symm-preimage-inter-range.md) | 1308 | `BLOCKED_NATIVE_ADMISSION` |
| 165 | `theorem` | [ext_coord_change_source](declarations/ext-coord-change-source.md) | 1319 | `BLOCKED_NATIVE_ADMISSION` |
| 166 | `theorem` | [contDiffOn_ext_coord_change](declarations/contdiffon-ext-coord-change.md) | 1327 | `BLOCKED_NATIVE_ADMISSION` |
| 167 | `theorem` | [contDiffWithinAt_ext_coord_change](declarations/contdiffwithinat-ext-coord-change.md) | 1333 | `BLOCKED_NATIVE_ADMISSION` |
| 168 | `def` | [writtenInExtChartAt](declarations/writteninextchartat.md) | 1343 | `BLOCKED_NATIVE_ADMISSION` |
| 169 | `theorem` | [writtenInExtChartAt_chartAt](declarations/writteninextchartat-chartat.md) | 1347 | `BLOCKED_NATIVE_ADMISSION` |
| 170 | `theorem` | [writtenInExtChartAt_chartAt_symm](declarations/writteninextchartat-chartat-symm.md) | 1350 | `BLOCKED_NATIVE_ADMISSION` |
| 171 | `theorem` | [writtenInExtChartAt_extChartAt](declarations/writteninextchartat-extchartat.md) | 1354 | `BLOCKED_NATIVE_ADMISSION` |
| 172 | `theorem` | [writtenInExtChartAt_extChartAt_symm](declarations/writteninextchartat-extchartat-symm.md) | 1358 | `BLOCKED_NATIVE_ADMISSION` |
| 173 | `theorem` | [extChartAt_self_eq](declarations/extchartat-self-eq.md) | 1364 | `BLOCKED_NATIVE_ADMISSION` |
| 174 | `theorem` | [extChartAt_self_apply](declarations/extchartat-self-apply.md) | 1368 | `BLOCKED_NATIVE_ADMISSION` |
| 175 | `theorem` | [extChartAt_model_space_eq_id](declarations/extchartat-model-space-eq-id.md) | 1374 | `BLOCKED_NATIVE_ADMISSION` |
| 176 | `theorem` | [ext_chart_model_space_apply](declarations/ext-chart-model-space-apply.md) | 1378 | `BLOCKED_NATIVE_ADMISSION` |
| 177 | `theorem` | [extChartAt_prod](declarations/extchartat-prod.md) | 1384 | `BLOCKED_NATIVE_ADMISSION` |
| 178 | `theorem` | [extChartAt_comp](declarations/extchartat-comp.md) | 1392 | `BLOCKED_NATIVE_ADMISSION` |
| 179 | `theorem` | [writtenInExtChartAt_chartAt_comp](declarations/writteninextchartat-chartat-comp.md) | 1397 | `BLOCKED_NATIVE_ADMISSION` |
| 180 | `theorem` | [writtenInExtChartAt_chartAt_symm_comp](declarations/writteninextchartat-chartat-symm-comp.md) | 1403 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=5a958e1e68c60c8f494ae28c860162195afccb057c88d4c87726289a0dd21d20 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Geometry/DifferentialGeometry/SmoothManifoldWithCorners/Variant4da5382fc886b3b3b76a3450d083ef767ee4bc764f218f6d6f8154cf60d3a1b8.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
