# Limits Shapes Binary Products

[Complete source index](../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**176 observed declarations and anonymous commands**, 94 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/BinaryProducts/Variant1cef7d72ea1971d516e429c0ee83aa697aa6555c80e07f9c08a19e524c645ac0.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `85a03d97b06acd4b187782cd2ef5193c4c5e88aa`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LimitsShapesBinaryProducts.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `inductive` | [WalkingPair](declarations/walkingpair.md) | 43 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `def` | [WalkingPair.swap](declarations/walkingpair-swap.md) | 53 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `theorem` | [WalkingPair.swap_apply_left](declarations/walkingpair-swap-apply-left.md) | 62 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `theorem` | [WalkingPair.swap_apply_right](declarations/walkingpair-swap-apply-right.md) | 67 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [WalkingPair.swap_symm_apply_tt](declarations/walkingpair-swap-symm-apply-tt.md) | 72 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [WalkingPair.swap_symm_apply_ff](declarations/walkingpair-swap-symm-apply-ff.md) | 77 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `def` | [WalkingPair.equivBool](declarations/walkingpair-equivbool.md) | 83 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [WalkingPair.equivBool_apply_left](declarations/walkingpair-equivbool-apply-left.md) | 93 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [WalkingPair.equivBool_apply_right](declarations/walkingpair-equivbool-apply-right.md) | 98 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [WalkingPair.equivBool_symm_apply_true](declarations/walkingpair-equivbool-symm-apply-true.md) | 103 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [WalkingPair.equivBool_symm_apply_false](declarations/walkingpair-equivbool-symm-apply-false.md) | 108 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `def` | [pairFunction](declarations/pairfunction.md) | 115 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [pairFunction_left](declarations/pairfunction-left.md) | 119 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [pairFunction_right](declarations/pairfunction-right.md) | 124 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `def` | [pair](declarations/pair.md) | 131 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [pair_obj_left](declarations/pair-obj-left.md) | 136 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [pair_obj_right](declarations/pair-obj-right.md) | 141 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `def` | [mapPair](declarations/mappair.md) | 155 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [mapPair_left](declarations/mappair-left.md) | 161 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [mapPair_right](declarations/mappair-right.md) | 166 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `def` | [mapPairIso](declarations/mappairiso.md) | 173 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `def` | [diagramIsoPair](declarations/diagramisopair.md) | 182 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `def` | [pairComp](declarations/paircomp.md) | 192 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `abbrev` | [BinaryFan](declarations/binaryfan.md) | 199 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `abbrev` | [BinaryFan.fst](declarations/binaryfan-fst.md) | 204 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `abbrev` | [BinaryFan.snd](declarations/binaryfan-snd.md) | 209 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [BinaryFan.π_app_left](declarations/binaryfan-app-left.md) | 214 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [BinaryFan.π_app_right](declarations/binaryfan-app-right.md) | 219 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `def` | [BinaryFan.IsLimit.mk](declarations/binaryfan-islimit-mk.md) | 224 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [BinaryFan.IsLimit.hom_ext](declarations/binaryfan-islimit-hom-ext.md) | 240 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `abbrev` | [BinaryCofan](declarations/binarycofan.md) | 246 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `abbrev` | [BinaryCofan.inl](declarations/binarycofan-inl.md) | 250 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `abbrev` | [BinaryCofan.inr](declarations/binarycofan-inr.md) | 254 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [BinaryCofan.ι_app_left](declarations/binarycofan-app-left.md) | 258 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `theorem` | [BinaryCofan.ι_app_right](declarations/binarycofan-app-right.md) | 263 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `def` | [BinaryCofan.IsColimit.mk](declarations/binarycofan-iscolimit-mk.md) | 268 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `theorem` | [BinaryCofan.IsColimit.hom_ext](declarations/binarycofan-iscolimit-hom-ext.md) | 284 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `def` | [BinaryFan.mk](declarations/binaryfan-mk.md) | 300 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `def` | [BinaryCofan.mk](declarations/binarycofan-mk.md) | 308 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `theorem` | [BinaryFan.mk_fst](declarations/binaryfan-mk-fst.md) | 317 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `theorem` | [BinaryFan.mk_snd](declarations/binaryfan-mk-snd.md) | 322 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `theorem` | [BinaryCofan.mk_inl](declarations/binarycofan-mk-inl.md) | 327 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `theorem` | [BinaryCofan.mk_inr](declarations/binarycofan-mk-inr.md) | 332 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `def` | [isoBinaryFanMk](declarations/isobinaryfanmk.md) | 337 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `def` | [isoBinaryCofanMk](declarations/isobinarycofanmk.md) | 342 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `def` | [BinaryFan.isLimitMk](declarations/binaryfan-islimitmk.md) | 349 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `def` | [BinaryCofan.isColimitMk](declarations/binarycofan-iscolimitmk.md) | 366 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `def` | [BinaryFan.IsLimit.lift'](declarations/binaryfan-islimit-lift.md) | 385 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `def` | [BinaryCofan.IsColimit.desc'](declarations/binarycofan-iscolimit-desc.md) | 394 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `def` | [BinaryFan.isLimitFlip](declarations/binaryfan-islimitflip.md) | 400 | `BLOCKED_NATIVE_ADMISSION` |
| 51 | `theorem` | [BinaryFan.isLimit_iff_isIso_fst](declarations/binaryfan-islimit-iff-isiso-fst.md) | 409 | `BLOCKED_NATIVE_ADMISSION` |
| 52 | `theorem` | [BinaryFan.isLimit_iff_isIso_snd](declarations/binaryfan-islimit-iff-isiso-snd.md) | 425 | `BLOCKED_NATIVE_ADMISSION` |
| 53 | `def` | [BinaryFan.isLimitCompLeftIso](declarations/binaryfan-islimitcompleftiso.md) | 434 | `BLOCKED_NATIVE_ADMISSION` |
| 54 | `def` | [BinaryFan.isLimitCompRightIso](declarations/binaryfan-islimitcomprightiso.md) | 452 | `BLOCKED_NATIVE_ADMISSION` |
| 55 | `def` | [BinaryCofan.isColimitFlip](declarations/binarycofan-iscolimitflip.md) | 458 | `BLOCKED_NATIVE_ADMISSION` |
| 56 | `theorem` | [BinaryCofan.isColimit_iff_isIso_inl](declarations/binarycofan-iscolimit-iff-isiso-inl.md) | 467 | `BLOCKED_NATIVE_ADMISSION` |
| 57 | `theorem` | [BinaryCofan.isColimit_iff_isIso_inr](declarations/binarycofan-iscolimit-iff-isiso-inr.md) | 483 | `BLOCKED_NATIVE_ADMISSION` |
| 58 | `def` | [BinaryCofan.isColimitCompLeftIso](declarations/binarycofan-iscolimitcompleftiso.md) | 492 | `BLOCKED_NATIVE_ADMISSION` |
| 59 | `def` | [BinaryCofan.isColimitCompRightIso](declarations/binarycofan-iscolimitcomprightiso.md) | 514 | `BLOCKED_NATIVE_ADMISSION` |
| 60 | `abbrev` | [HasBinaryProduct](declarations/hasbinaryproduct.md) | 520 | `BLOCKED_NATIVE_ADMISSION` |
| 61 | `abbrev` | [HasBinaryCoproduct](declarations/hasbinarycoproduct.md) | 525 | `BLOCKED_NATIVE_ADMISSION` |
| 62 | `abbrev` | [prod](declarations/prod.md) | 531 | `BLOCKED_NATIVE_ADMISSION` |
| 63 | `abbrev` | [coprod](declarations/coprod.md) | 537 | `BLOCKED_NATIVE_ADMISSION` |
| 64 | `abbrev` | [prod.fst](declarations/prod-fst.md) | 548 | `BLOCKED_NATIVE_ADMISSION` |
| 65 | `abbrev` | [prod.snd](declarations/prod-snd.md) | 553 | `BLOCKED_NATIVE_ADMISSION` |
| 66 | `abbrev` | [coprod.inl](declarations/coprod-inl.md) | 558 | `BLOCKED_NATIVE_ADMISSION` |
| 67 | `abbrev` | [coprod.inr](declarations/coprod-inr.md) | 563 | `BLOCKED_NATIVE_ADMISSION` |
| 68 | `def` | [prodIsProd](declarations/prodisprod.md) | 568 | `BLOCKED_NATIVE_ADMISSION` |
| 69 | `def` | [coprodIsCoprod](declarations/coprodiscoprod.md) | 578 | `BLOCKED_NATIVE_ADMISSION` |
| 70 | `theorem` | [prod.hom_ext](declarations/prod-hom-ext.md) | 588 | `BLOCKED_NATIVE_ADMISSION` |
| 71 | `theorem` | [coprod.hom_ext](declarations/coprod-hom-ext.md) | 594 | `BLOCKED_NATIVE_ADMISSION` |
| 72 | `abbrev` | [prod.lift](declarations/prod-lift-source-edition-2.md) | 601 | `BLOCKED_NATIVE_ADMISSION` |
| 73 | `abbrev` | [diag](declarations/diag.md) | 606 | `BLOCKED_NATIVE_ADMISSION` |
| 74 | `abbrev` | [coprod.desc](declarations/coprod-desc.md) | 612 | `BLOCKED_NATIVE_ADMISSION` |
| 75 | `abbrev` | [codiag](declarations/codiag.md) | 617 | `BLOCKED_NATIVE_ADMISSION` |
| 76 | `theorem` | [prod.lift_fst](declarations/prod-lift-fst.md) | 623 | `BLOCKED_NATIVE_ADMISSION` |
| 77 | `theorem` | [prod.lift_snd](declarations/prod-lift-snd.md) | 631 | `BLOCKED_NATIVE_ADMISSION` |
| 78 | `theorem` | [coprod.inl_desc](declarations/coprod-inl-desc.md) | 640 | `BLOCKED_NATIVE_ADMISSION` |
| 79 | `theorem` | [coprod.inr_desc](declarations/coprod-inr-desc.md) | 649 | `BLOCKED_NATIVE_ADMISSION` |
| 80 | `instance` | [prod.mono_lift_of_mono_left](declarations/prod-mono-lift-of-mono-left.md) | 655 | `BLOCKED_NATIVE_ADMISSION` |
| 81 | `instance` | [prod.mono_lift_of_mono_right](declarations/prod-mono-lift-of-mono-right.md) | 660 | `BLOCKED_NATIVE_ADMISSION` |
| 82 | `instance` | [coprod.epi_desc_of_epi_left](declarations/coprod-epi-desc-of-epi-left.md) | 665 | `BLOCKED_NATIVE_ADMISSION` |
| 83 | `instance` | [coprod.epi_desc_of_epi_right](declarations/coprod-epi-desc-of-epi-right.md) | 670 | `BLOCKED_NATIVE_ADMISSION` |
| 84 | `def` | [prod.lift'](declarations/prod-lift.md) | 677 | `BLOCKED_NATIVE_ADMISSION` |
| 85 | `def` | [coprod.desc'](declarations/coprod-desc-source-edition-2.md) | 685 | `BLOCKED_NATIVE_ADMISSION` |
| 86 | `def` | [prod.map](declarations/prod-map.md) | 692 | `BLOCKED_NATIVE_ADMISSION` |
| 87 | `def` | [coprod.map](declarations/coprod-map.md) | 699 | `BLOCKED_NATIVE_ADMISSION` |
| 88 | `theorem` | [prod.comp_lift](declarations/prod-comp-lift.md) | 708 | `BLOCKED_NATIVE_ADMISSION` |
| 89 | `theorem` | [prod.comp_diag](declarations/prod-comp-diag.md) | 713 | `BLOCKED_NATIVE_ADMISSION` |
| 90 | `theorem` | [prod.map_fst](declarations/prod-map-fst.md) | 718 | `BLOCKED_NATIVE_ADMISSION` |
| 91 | `theorem` | [prod.map_snd](declarations/prod-map-snd.md) | 725 | `BLOCKED_NATIVE_ADMISSION` |
| 92 | `theorem` | [prod.map_id_id](declarations/prod-map-id-id.md) | 732 | `BLOCKED_NATIVE_ADMISSION` |
| 93 | `theorem` | [prod.lift_fst_snd](declarations/prod-lift-fst-snd.md) | 737 | `BLOCKED_NATIVE_ADMISSION` |
| 94 | `theorem` | [prod.lift_map](declarations/prod-lift-map.md) | 742 | `BLOCKED_NATIVE_ADMISSION` |
| 95 | `theorem` | [prod.lift_fst_comp_snd_comp](declarations/prod-lift-fst-comp-snd-comp.md) | 749 | `BLOCKED_NATIVE_ADMISSION` |
| 96 | `theorem` | [prod.map_map](declarations/prod-map-map.md) | 759 | `BLOCKED_NATIVE_ADMISSION` |
| 97 | `theorem` | [prod.map_swap](declarations/prod-map-swap.md) | 767 | `BLOCKED_NATIVE_ADMISSION` |
| 98 | `theorem` | [prod.map_comp_id](declarations/prod-map-comp-id.md) | 774 | `BLOCKED_NATIVE_ADMISSION` |
| 99 | `theorem` | [prod.map_id_comp](declarations/prod-map-id-comp.md) | 781 | `BLOCKED_NATIVE_ADMISSION` |
| 100 | `def` | [prod.mapIso](declarations/prod-mapiso.md) | 790 | `BLOCKED_NATIVE_ADMISSION` |
| 101 | `instance` | [isIso_prod](declarations/isiso-prod.md) | 796 | `BLOCKED_NATIVE_ADMISSION` |
| 102 | `instance` | [prod.map_mono](declarations/prod-map-mono.md) | 801 | `BLOCKED_NATIVE_ADMISSION` |
| 103 | `theorem` | [prod.diag_map](declarations/prod-diag-map.md) | 812 | `BLOCKED_NATIVE_ADMISSION` |
| 104 | `theorem` | [prod.diag_map_fst_snd](declarations/prod-diag-map-fst-snd.md) | 818 | `BLOCKED_NATIVE_ADMISSION` |
| 105 | `theorem` | [prod.diag_map_fst_snd_comp](declarations/prod-diag-map-fst-snd-comp.md) | 824 | `BLOCKED_NATIVE_ADMISSION` |
| 106 | `instance` | [(anonymous)](declarations/instance.md) | 830 | `BLOCKED_NATIVE_ADMISSION` |
| 107 | `theorem` | [coprod.desc_comp](declarations/coprod-desc-comp.md) | 839 | `BLOCKED_NATIVE_ADMISSION` |
| 108 | `theorem` | [coprod.desc_comp_assoc](declarations/coprod-desc-comp-assoc.md) | 845 | `BLOCKED_NATIVE_ADMISSION` |
| 109 | `theorem` | [coprod.diag_comp](declarations/coprod-diag-comp.md) | 850 | `BLOCKED_NATIVE_ADMISSION` |
| 110 | `theorem` | [coprod.inl_map](declarations/coprod-inl-map.md) | 855 | `BLOCKED_NATIVE_ADMISSION` |
| 111 | `theorem` | [coprod.inr_map](declarations/coprod-inr-map.md) | 862 | `BLOCKED_NATIVE_ADMISSION` |
| 112 | `theorem` | [coprod.map_id_id](declarations/coprod-map-id-id.md) | 869 | `BLOCKED_NATIVE_ADMISSION` |
| 113 | `theorem` | [coprod.desc_inl_inr](declarations/coprod-desc-inl-inr.md) | 874 | `BLOCKED_NATIVE_ADMISSION` |
| 114 | `theorem` | [coprod.map_desc](declarations/coprod-map-desc.md) | 880 | `BLOCKED_NATIVE_ADMISSION` |
| 115 | `theorem` | [coprod.desc_comp_inl_comp_inr](declarations/coprod-desc-comp-inl-comp-inr.md) | 888 | `BLOCKED_NATIVE_ADMISSION` |
| 116 | `theorem` | [coprod.map_map](declarations/coprod-map-map.md) | 898 | `BLOCKED_NATIVE_ADMISSION` |
| 117 | `theorem` | [coprod.map_swap](declarations/coprod-map-swap.md) | 907 | `BLOCKED_NATIVE_ADMISSION` |
| 118 | `theorem` | [coprod.map_comp_id](declarations/coprod-map-comp-id.md) | 914 | `BLOCKED_NATIVE_ADMISSION` |
| 119 | `theorem` | [coprod.map_id_comp](declarations/coprod-map-id-comp.md) | 921 | `BLOCKED_NATIVE_ADMISSION` |
| 120 | `def` | [coprod.mapIso](declarations/coprod-mapiso.md) | 930 | `BLOCKED_NATIVE_ADMISSION` |
| 121 | `instance` | [isIso_coprod](declarations/isiso-coprod.md) | 936 | `BLOCKED_NATIVE_ADMISSION` |
| 122 | `instance` | [coprod.map_epi](declarations/coprod-map-epi.md) | 941 | `BLOCKED_NATIVE_ADMISSION` |
| 123 | `theorem` | [coprod.map_codiag](declarations/coprod-map-codiag.md) | 954 | `BLOCKED_NATIVE_ADMISSION` |
| 124 | `theorem` | [coprod.map_inl_inr_codiag](declarations/coprod-map-inl-inr-codiag.md) | 962 | `BLOCKED_NATIVE_ADMISSION` |
| 125 | `theorem` | [coprod.map_comp_inl_inr_codiag](declarations/coprod-map-comp-inl-inr-codiag.md) | 971 | `BLOCKED_NATIVE_ADMISSION` |
| 126 | `abbrev` | [HasBinaryProducts](declarations/hasbinaryproducts.md) | 985 | `BLOCKED_NATIVE_ADMISSION` |
| 127 | `abbrev` | [HasBinaryCoproducts](declarations/hasbinarycoproducts.md) | 993 | `BLOCKED_NATIVE_ADMISSION` |
| 128 | `theorem` | [hasBinaryProducts_of_hasLimit_pair](declarations/hasbinaryproducts-of-haslimit-pair.md) | 998 | `BLOCKED_NATIVE_ADMISSION` |
| 129 | `theorem` | [hasBinaryCoproducts_of_hasColimit_pair](declarations/hasbinarycoproducts-of-hascolimit-pair.md) | 1004 | `BLOCKED_NATIVE_ADMISSION` |
| 130 | `def` | [prod.braiding](declarations/prod-braiding.md) | 1015 | `BLOCKED_NATIVE_ADMISSION` |
| 131 | `theorem` | [braid_natural](declarations/braid-natural.md) | 1023 | `BLOCKED_NATIVE_ADMISSION` |
| 132 | `theorem` | [prod.symmetry'](declarations/prod-symmetry.md) | 1029 | `BLOCKED_NATIVE_ADMISSION` |
| 133 | `theorem` | [prod.symmetry](declarations/prod-symmetry-source-edition-2.md) | 1037 | `BLOCKED_NATIVE_ADMISSION` |
| 134 | `def` | [prod.associator](declarations/prod-associator.md) | 1045 | `BLOCKED_NATIVE_ADMISSION` |
| 135 | `theorem` | [prod.pentagon](declarations/prod-pentagon.md) | 1051 | `BLOCKED_NATIVE_ADMISSION` |
| 136 | `theorem` | [prod.associator_naturality](declarations/prod-associator-naturality.md) | 1060 | `BLOCKED_NATIVE_ADMISSION` |
| 137 | `def` | [prod.leftUnitor](declarations/prod-leftunitor.md) | 1072 | `BLOCKED_NATIVE_ADMISSION` |
| 138 | `def` | [prod.rightUnitor](declarations/prod-rightunitor.md) | 1081 | `BLOCKED_NATIVE_ADMISSION` |
| 139 | `theorem` | [prod.leftUnitor_hom_naturality](declarations/prod-leftunitor-hom-naturality.md) | 1089 | `BLOCKED_NATIVE_ADMISSION` |
| 140 | `theorem` | [prod.leftUnitor_inv_naturality](declarations/prod-leftunitor-inv-naturality.md) | 1096 | `BLOCKED_NATIVE_ADMISSION` |
| 141 | `theorem` | [prod.rightUnitor_hom_naturality](declarations/prod-rightunitor-hom-naturality.md) | 1103 | `BLOCKED_NATIVE_ADMISSION` |
| 142 | `theorem` | [prod_rightUnitor_inv_naturality](declarations/prod-rightunitor-inv-naturality.md) | 1110 | `BLOCKED_NATIVE_ADMISSION` |
| 143 | `theorem` | [prod.triangle](declarations/prod-triangle.md) | 1116 | `BLOCKED_NATIVE_ADMISSION` |
| 144 | `def` | [coprod.braiding](declarations/coprod-braiding.md) | 1131 | `BLOCKED_NATIVE_ADMISSION` |
| 145 | `theorem` | [coprod.symmetry'](declarations/coprod-symmetry-source-edition-2.md) | 1137 | `BLOCKED_NATIVE_ADMISSION` |
| 146 | `theorem` | [coprod.symmetry](declarations/coprod-symmetry.md) | 1144 | `BLOCKED_NATIVE_ADMISSION` |
| 147 | `def` | [coprod.associator](declarations/coprod-associator.md) | 1150 | `BLOCKED_NATIVE_ADMISSION` |
| 148 | `theorem` | [coprod.pentagon](declarations/coprod-pentagon.md) | 1155 | `BLOCKED_NATIVE_ADMISSION` |
| 149 | `theorem` | [coprod.associator_naturality](declarations/coprod-associator-naturality.md) | 1162 | `BLOCKED_NATIVE_ADMISSION` |
| 150 | `def` | [coprod.leftUnitor](declarations/coprod-leftunitor.md) | 1173 | `BLOCKED_NATIVE_ADMISSION` |
| 151 | `def` | [coprod.rightUnitor](declarations/coprod-rightunitor.md) | 1182 | `BLOCKED_NATIVE_ADMISSION` |
| 152 | `theorem` | [coprod.triangle](declarations/coprod-triangle.md) | 1189 | `BLOCKED_NATIVE_ADMISSION` |
| 153 | `def` | [prod.functor](declarations/prod-functor.md) | 1204 | `BLOCKED_NATIVE_ADMISSION` |
| 154 | `def` | [prod.functorLeftComp](declarations/prod-functorleftcomp.md) | 1213 | `BLOCKED_NATIVE_ADMISSION` |
| 155 | `def` | [coprod.functor](declarations/coprod-functor.md) | 1227 | `BLOCKED_NATIVE_ADMISSION` |
| 156 | `def` | [coprod.functorLeftComp](declarations/coprod-functorleftcomp.md) | 1235 | `BLOCKED_NATIVE_ADMISSION` |
| 157 | `def` | [prodComparison](declarations/prodcomparison.md) | 1258 | `BLOCKED_NATIVE_ADMISSION` |
| 158 | `theorem` | [prodComparison_fst](declarations/prodcomparison-fst.md) | 1264 | `BLOCKED_NATIVE_ADMISSION` |
| 159 | `theorem` | [prodComparison_snd](declarations/prodcomparison-snd.md) | 1270 | `BLOCKED_NATIVE_ADMISSION` |
| 160 | `theorem` | [prodComparison_natural](declarations/prodcomparison-natural.md) | 1277 | `BLOCKED_NATIVE_ADMISSION` |
| 161 | `def` | [prodComparisonNatTrans](declarations/prodcomparisonnattrans.md) | 1289 | `BLOCKED_NATIVE_ADMISSION` |
| 162 | `theorem` | [inv_prodComparison_map_fst](declarations/inv-prodcomparison-map-fst.md) | 1297 | `BLOCKED_NATIVE_ADMISSION` |
| 163 | `theorem` | [inv_prodComparison_map_snd](declarations/inv-prodcomparison-map-snd.md) | 1303 | `BLOCKED_NATIVE_ADMISSION` |
| 164 | `theorem` | [prodComparison_inv_natural](declarations/prodcomparison-inv-natural.md) | 1310 | `BLOCKED_NATIVE_ADMISSION` |
| 165 | `def` | [prodComparisonNatIso](declarations/prodcomparisonnatiso.md) | 1323 | `BLOCKED_NATIVE_ADMISSION` |
| 166 | `def` | [coprodComparison](declarations/coprodcomparison.md) | 1349 | `BLOCKED_NATIVE_ADMISSION` |
| 167 | `theorem` | [coprodComparison_inl](declarations/coprodcomparison-inl.md) | 1355 | `BLOCKED_NATIVE_ADMISSION` |
| 168 | `theorem` | [coprodComparison_inr](declarations/coprodcomparison-inr.md) | 1361 | `BLOCKED_NATIVE_ADMISSION` |
| 169 | `theorem` | [coprodComparison_natural](declarations/coprodcomparison-natural.md) | 1368 | `BLOCKED_NATIVE_ADMISSION` |
| 170 | `def` | [coprodComparisonNatTrans](declarations/coprodcomparisonnattrans.md) | 1380 | `BLOCKED_NATIVE_ADMISSION` |
| 171 | `theorem` | [map_inl_inv_coprodComparison](declarations/map-inl-inv-coprodcomparison.md) | 1387 | `BLOCKED_NATIVE_ADMISSION` |
| 172 | `theorem` | [map_inr_inv_coprodComparison](declarations/map-inr-inv-coprodcomparison.md) | 1393 | `BLOCKED_NATIVE_ADMISSION` |
| 173 | `theorem` | [coprodComparison_inv_natural](declarations/coprodcomparison-inv-natural.md) | 1400 | `BLOCKED_NATIVE_ADMISSION` |
| 174 | `def` | [coprodComparisonNatIso](declarations/coprodcomparisonnatiso.md) | 1413 | `BLOCKED_NATIVE_ADMISSION` |
| 175 | `def` | [Over.coprodObj](declarations/over-coprodobj.md) | 1432 | `BLOCKED_NATIVE_ADMISSION` |
| 176 | `def` | [Over.coprod](declarations/over-coprod.md) | 1439 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=d9ce25b53b8b1872e5f8b1b77ae2ed292f557df836d80ae8790c10fdb489c4dd -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/BinaryProducts/Variant1cef7d72ea1971d516e429c0ee83aa697aa6555c80e07f9c08a19e524c645ac0.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
