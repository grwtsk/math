# Limits Shapes Binary Products Namespaced

[Complete source index](../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**176 observed declarations and anonymous commands**, 94 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/BinaryProducts/Variant28e86d662bbe4972dd8351a0b8c5685badcf363937216de260bf0cd5d0b134c3.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `83b74b9661833a18affbb9b7d69ae3b7f309f548`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LimitsShapesBinaryProductsNamespaced.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `inductive` | [WalkingPair](declarations/walkingpair.md) | 51 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `def` | [WalkingPair.swap](declarations/walkingpair-swap.md) | 61 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `theorem` | [WalkingPair.swap_apply_left](declarations/walkingpair-swap-apply-left.md) | 70 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `theorem` | [WalkingPair.swap_apply_right](declarations/walkingpair-swap-apply-right.md) | 75 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [WalkingPair.swap_symm_apply_tt](declarations/walkingpair-swap-symm-apply-tt.md) | 80 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [WalkingPair.swap_symm_apply_ff](declarations/walkingpair-swap-symm-apply-ff.md) | 85 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `def` | [WalkingPair.equivBool](declarations/walkingpair-equivbool.md) | 91 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [WalkingPair.equivBool_apply_left](declarations/walkingpair-equivbool-apply-left.md) | 101 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [WalkingPair.equivBool_apply_right](declarations/walkingpair-equivbool-apply-right.md) | 106 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [WalkingPair.equivBool_symm_apply_true](declarations/walkingpair-equivbool-symm-apply-true.md) | 111 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [WalkingPair.equivBool_symm_apply_false](declarations/walkingpair-equivbool-symm-apply-false.md) | 116 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `def` | [pairFunction](declarations/pairfunction.md) | 123 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [pairFunction_left](declarations/pairfunction-left.md) | 127 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [pairFunction_right](declarations/pairfunction-right.md) | 132 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `def` | [pair](declarations/pair.md) | 139 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [pair_obj_left](declarations/pair-obj-left.md) | 144 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [pair_obj_right](declarations/pair-obj-right.md) | 149 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `def` | [mapPair](declarations/mappair.md) | 163 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [mapPair_left](declarations/mappair-left.md) | 169 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [mapPair_right](declarations/mappair-right.md) | 174 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `def` | [mapPairIso](declarations/mappairiso.md) | 181 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `def` | [diagramIsoPair](declarations/diagramisopair.md) | 190 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `def` | [pairComp](declarations/paircomp.md) | 200 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `abbrev` | [BinaryFan](declarations/binaryfan.md) | 207 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `abbrev` | [BinaryFan.fst](declarations/binaryfan-fst.md) | 212 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `abbrev` | [BinaryFan.snd](declarations/binaryfan-snd.md) | 217 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [BinaryFan.π_app_left](declarations/binaryfan-app-left.md) | 222 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [BinaryFan.π_app_right](declarations/binaryfan-app-right.md) | 227 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `def` | [BinaryFan.IsLimit.mk](declarations/binaryfan-islimit-mk.md) | 232 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [BinaryFan.IsLimit.hom_ext](declarations/binaryfan-islimit-hom-ext.md) | 248 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `abbrev` | [BinaryCofan](declarations/binarycofan.md) | 254 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `abbrev` | [BinaryCofan.inl](declarations/binarycofan-inl.md) | 258 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `abbrev` | [BinaryCofan.inr](declarations/binarycofan-inr.md) | 262 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [BinaryCofan.ι_app_left](declarations/binarycofan-app-left.md) | 266 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `theorem` | [BinaryCofan.ι_app_right](declarations/binarycofan-app-right.md) | 271 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `def` | [BinaryCofan.IsColimit.mk](declarations/binarycofan-iscolimit-mk.md) | 276 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `theorem` | [BinaryCofan.IsColimit.hom_ext](declarations/binarycofan-iscolimit-hom-ext.md) | 292 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `def` | [BinaryFan.mk](declarations/binaryfan-mk.md) | 308 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `def` | [BinaryCofan.mk](declarations/binarycofan-mk.md) | 316 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `theorem` | [BinaryFan.mk_fst](declarations/binaryfan-mk-fst.md) | 325 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `theorem` | [BinaryFan.mk_snd](declarations/binaryfan-mk-snd.md) | 330 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `theorem` | [BinaryCofan.mk_inl](declarations/binarycofan-mk-inl.md) | 335 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `theorem` | [BinaryCofan.mk_inr](declarations/binarycofan-mk-inr.md) | 340 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `def` | [isoBinaryFanMk](declarations/isobinaryfanmk.md) | 345 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `def` | [isoBinaryCofanMk](declarations/isobinarycofanmk.md) | 350 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `def` | [BinaryFan.isLimitMk](declarations/binaryfan-islimitmk.md) | 357 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `def` | [BinaryCofan.isColimitMk](declarations/binarycofan-iscolimitmk.md) | 374 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `def` | [BinaryFan.IsLimit.lift'](declarations/binaryfan-islimit-lift.md) | 393 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `def` | [BinaryCofan.IsColimit.desc'](declarations/binarycofan-iscolimit-desc.md) | 402 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `def` | [BinaryFan.isLimitFlip](declarations/binaryfan-islimitflip.md) | 408 | `BLOCKED_NATIVE_ADMISSION` |
| 51 | `theorem` | [BinaryFan.isLimit_iff_isIso_fst](declarations/binaryfan-islimit-iff-isiso-fst.md) | 417 | `BLOCKED_NATIVE_ADMISSION` |
| 52 | `theorem` | [BinaryFan.isLimit_iff_isIso_snd](declarations/binaryfan-islimit-iff-isiso-snd.md) | 433 | `BLOCKED_NATIVE_ADMISSION` |
| 53 | `def` | [BinaryFan.isLimitCompLeftIso](declarations/binaryfan-islimitcompleftiso.md) | 442 | `BLOCKED_NATIVE_ADMISSION` |
| 54 | `def` | [BinaryFan.isLimitCompRightIso](declarations/binaryfan-islimitcomprightiso.md) | 460 | `BLOCKED_NATIVE_ADMISSION` |
| 55 | `def` | [BinaryCofan.isColimitFlip](declarations/binarycofan-iscolimitflip.md) | 466 | `BLOCKED_NATIVE_ADMISSION` |
| 56 | `theorem` | [BinaryCofan.isColimit_iff_isIso_inl](declarations/binarycofan-iscolimit-iff-isiso-inl.md) | 475 | `BLOCKED_NATIVE_ADMISSION` |
| 57 | `theorem` | [BinaryCofan.isColimit_iff_isIso_inr](declarations/binarycofan-iscolimit-iff-isiso-inr.md) | 491 | `BLOCKED_NATIVE_ADMISSION` |
| 58 | `def` | [BinaryCofan.isColimitCompLeftIso](declarations/binarycofan-iscolimitcompleftiso.md) | 500 | `BLOCKED_NATIVE_ADMISSION` |
| 59 | `def` | [BinaryCofan.isColimitCompRightIso](declarations/binarycofan-iscolimitcomprightiso.md) | 522 | `BLOCKED_NATIVE_ADMISSION` |
| 60 | `abbrev` | [HasBinaryProduct](declarations/hasbinaryproduct.md) | 528 | `BLOCKED_NATIVE_ADMISSION` |
| 61 | `abbrev` | [HasBinaryCoproduct](declarations/hasbinarycoproduct.md) | 533 | `BLOCKED_NATIVE_ADMISSION` |
| 62 | `abbrev` | [prod](declarations/prod.md) | 539 | `BLOCKED_NATIVE_ADMISSION` |
| 63 | `abbrev` | [coprod](declarations/coprod.md) | 545 | `BLOCKED_NATIVE_ADMISSION` |
| 64 | `abbrev` | [prod.fst](declarations/prod-fst.md) | 556 | `BLOCKED_NATIVE_ADMISSION` |
| 65 | `abbrev` | [prod.snd](declarations/prod-snd.md) | 561 | `BLOCKED_NATIVE_ADMISSION` |
| 66 | `abbrev` | [coprod.inl](declarations/coprod-inl.md) | 566 | `BLOCKED_NATIVE_ADMISSION` |
| 67 | `abbrev` | [coprod.inr](declarations/coprod-inr.md) | 571 | `BLOCKED_NATIVE_ADMISSION` |
| 68 | `def` | [prodIsProd](declarations/prodisprod.md) | 576 | `BLOCKED_NATIVE_ADMISSION` |
| 69 | `def` | [coprodIsCoprod](declarations/coprodiscoprod.md) | 586 | `BLOCKED_NATIVE_ADMISSION` |
| 70 | `theorem` | [prod.hom_ext](declarations/prod-hom-ext.md) | 596 | `BLOCKED_NATIVE_ADMISSION` |
| 71 | `theorem` | [coprod.hom_ext](declarations/coprod-hom-ext.md) | 602 | `BLOCKED_NATIVE_ADMISSION` |
| 72 | `abbrev` | [prod.lift](declarations/prod-lift-source-edition-2.md) | 609 | `BLOCKED_NATIVE_ADMISSION` |
| 73 | `abbrev` | [diag](declarations/diag.md) | 614 | `BLOCKED_NATIVE_ADMISSION` |
| 74 | `abbrev` | [coprod.desc](declarations/coprod-desc.md) | 620 | `BLOCKED_NATIVE_ADMISSION` |
| 75 | `abbrev` | [codiag](declarations/codiag.md) | 625 | `BLOCKED_NATIVE_ADMISSION` |
| 76 | `theorem` | [prod.lift_fst](declarations/prod-lift-fst.md) | 631 | `BLOCKED_NATIVE_ADMISSION` |
| 77 | `theorem` | [prod.lift_snd](declarations/prod-lift-snd.md) | 639 | `BLOCKED_NATIVE_ADMISSION` |
| 78 | `theorem` | [coprod.inl_desc](declarations/coprod-inl-desc.md) | 648 | `BLOCKED_NATIVE_ADMISSION` |
| 79 | `theorem` | [coprod.inr_desc](declarations/coprod-inr-desc.md) | 657 | `BLOCKED_NATIVE_ADMISSION` |
| 80 | `instance` | [prod.mono_lift_of_mono_left](declarations/prod-mono-lift-of-mono-left.md) | 663 | `BLOCKED_NATIVE_ADMISSION` |
| 81 | `instance` | [prod.mono_lift_of_mono_right](declarations/prod-mono-lift-of-mono-right.md) | 668 | `BLOCKED_NATIVE_ADMISSION` |
| 82 | `instance` | [coprod.epi_desc_of_epi_left](declarations/coprod-epi-desc-of-epi-left.md) | 673 | `BLOCKED_NATIVE_ADMISSION` |
| 83 | `instance` | [coprod.epi_desc_of_epi_right](declarations/coprod-epi-desc-of-epi-right.md) | 678 | `BLOCKED_NATIVE_ADMISSION` |
| 84 | `def` | [prod.lift'](declarations/prod-lift.md) | 685 | `BLOCKED_NATIVE_ADMISSION` |
| 85 | `def` | [coprod.desc'](declarations/coprod-desc-source-edition-2.md) | 693 | `BLOCKED_NATIVE_ADMISSION` |
| 86 | `def` | [prod.map](declarations/prod-map.md) | 700 | `BLOCKED_NATIVE_ADMISSION` |
| 87 | `def` | [coprod.map](declarations/coprod-map.md) | 707 | `BLOCKED_NATIVE_ADMISSION` |
| 88 | `theorem` | [prod.comp_lift](declarations/prod-comp-lift.md) | 716 | `BLOCKED_NATIVE_ADMISSION` |
| 89 | `theorem` | [prod.comp_diag](declarations/prod-comp-diag.md) | 721 | `BLOCKED_NATIVE_ADMISSION` |
| 90 | `theorem` | [prod.map_fst](declarations/prod-map-fst.md) | 726 | `BLOCKED_NATIVE_ADMISSION` |
| 91 | `theorem` | [prod.map_snd](declarations/prod-map-snd.md) | 733 | `BLOCKED_NATIVE_ADMISSION` |
| 92 | `theorem` | [prod.map_id_id](declarations/prod-map-id-id.md) | 740 | `BLOCKED_NATIVE_ADMISSION` |
| 93 | `theorem` | [prod.lift_fst_snd](declarations/prod-lift-fst-snd.md) | 745 | `BLOCKED_NATIVE_ADMISSION` |
| 94 | `theorem` | [prod.lift_map](declarations/prod-lift-map.md) | 750 | `BLOCKED_NATIVE_ADMISSION` |
| 95 | `theorem` | [prod.lift_fst_comp_snd_comp](declarations/prod-lift-fst-comp-snd-comp.md) | 757 | `BLOCKED_NATIVE_ADMISSION` |
| 96 | `theorem` | [prod.map_map](declarations/prod-map-map.md) | 767 | `BLOCKED_NATIVE_ADMISSION` |
| 97 | `theorem` | [prod.map_swap](declarations/prod-map-swap.md) | 775 | `BLOCKED_NATIVE_ADMISSION` |
| 98 | `theorem` | [prod.map_comp_id](declarations/prod-map-comp-id.md) | 782 | `BLOCKED_NATIVE_ADMISSION` |
| 99 | `theorem` | [prod.map_id_comp](declarations/prod-map-id-comp.md) | 789 | `BLOCKED_NATIVE_ADMISSION` |
| 100 | `def` | [prod.mapIso](declarations/prod-mapiso.md) | 798 | `BLOCKED_NATIVE_ADMISSION` |
| 101 | `instance` | [isIso_prod](declarations/isiso-prod.md) | 804 | `BLOCKED_NATIVE_ADMISSION` |
| 102 | `instance` | [prod.map_mono](declarations/prod-map-mono.md) | 809 | `BLOCKED_NATIVE_ADMISSION` |
| 103 | `theorem` | [prod.diag_map](declarations/prod-diag-map.md) | 820 | `BLOCKED_NATIVE_ADMISSION` |
| 104 | `theorem` | [prod.diag_map_fst_snd](declarations/prod-diag-map-fst-snd.md) | 826 | `BLOCKED_NATIVE_ADMISSION` |
| 105 | `theorem` | [prod.diag_map_fst_snd_comp](declarations/prod-diag-map-fst-snd-comp.md) | 832 | `BLOCKED_NATIVE_ADMISSION` |
| 106 | `instance` | [(anonymous)](declarations/instance.md) | 838 | `BLOCKED_NATIVE_ADMISSION` |
| 107 | `theorem` | [coprod.desc_comp](declarations/coprod-desc-comp.md) | 847 | `BLOCKED_NATIVE_ADMISSION` |
| 108 | `theorem` | [coprod.desc_comp_assoc](declarations/coprod-desc-comp-assoc.md) | 853 | `BLOCKED_NATIVE_ADMISSION` |
| 109 | `theorem` | [coprod.diag_comp](declarations/coprod-diag-comp.md) | 858 | `BLOCKED_NATIVE_ADMISSION` |
| 110 | `theorem` | [coprod.inl_map](declarations/coprod-inl-map.md) | 863 | `BLOCKED_NATIVE_ADMISSION` |
| 111 | `theorem` | [coprod.inr_map](declarations/coprod-inr-map.md) | 870 | `BLOCKED_NATIVE_ADMISSION` |
| 112 | `theorem` | [coprod.map_id_id](declarations/coprod-map-id-id.md) | 877 | `BLOCKED_NATIVE_ADMISSION` |
| 113 | `theorem` | [coprod.desc_inl_inr](declarations/coprod-desc-inl-inr.md) | 882 | `BLOCKED_NATIVE_ADMISSION` |
| 114 | `theorem` | [coprod.map_desc](declarations/coprod-map-desc.md) | 888 | `BLOCKED_NATIVE_ADMISSION` |
| 115 | `theorem` | [coprod.desc_comp_inl_comp_inr](declarations/coprod-desc-comp-inl-comp-inr.md) | 896 | `BLOCKED_NATIVE_ADMISSION` |
| 116 | `theorem` | [coprod.map_map](declarations/coprod-map-map.md) | 906 | `BLOCKED_NATIVE_ADMISSION` |
| 117 | `theorem` | [coprod.map_swap](declarations/coprod-map-swap.md) | 915 | `BLOCKED_NATIVE_ADMISSION` |
| 118 | `theorem` | [coprod.map_comp_id](declarations/coprod-map-comp-id.md) | 922 | `BLOCKED_NATIVE_ADMISSION` |
| 119 | `theorem` | [coprod.map_id_comp](declarations/coprod-map-id-comp.md) | 929 | `BLOCKED_NATIVE_ADMISSION` |
| 120 | `def` | [coprod.mapIso](declarations/coprod-mapiso.md) | 938 | `BLOCKED_NATIVE_ADMISSION` |
| 121 | `instance` | [isIso_coprod](declarations/isiso-coprod.md) | 944 | `BLOCKED_NATIVE_ADMISSION` |
| 122 | `instance` | [coprod.map_epi](declarations/coprod-map-epi.md) | 949 | `BLOCKED_NATIVE_ADMISSION` |
| 123 | `theorem` | [coprod.map_codiag](declarations/coprod-map-codiag.md) | 962 | `BLOCKED_NATIVE_ADMISSION` |
| 124 | `theorem` | [coprod.map_inl_inr_codiag](declarations/coprod-map-inl-inr-codiag.md) | 970 | `BLOCKED_NATIVE_ADMISSION` |
| 125 | `theorem` | [coprod.map_comp_inl_inr_codiag](declarations/coprod-map-comp-inl-inr-codiag.md) | 979 | `BLOCKED_NATIVE_ADMISSION` |
| 126 | `abbrev` | [HasBinaryProducts](declarations/hasbinaryproducts.md) | 993 | `BLOCKED_NATIVE_ADMISSION` |
| 127 | `abbrev` | [HasBinaryCoproducts](declarations/hasbinarycoproducts.md) | 1001 | `BLOCKED_NATIVE_ADMISSION` |
| 128 | `theorem` | [hasBinaryProducts_of_hasLimit_pair](declarations/hasbinaryproducts-of-haslimit-pair.md) | 1006 | `BLOCKED_NATIVE_ADMISSION` |
| 129 | `theorem` | [hasBinaryCoproducts_of_hasColimit_pair](declarations/hasbinarycoproducts-of-hascolimit-pair.md) | 1012 | `BLOCKED_NATIVE_ADMISSION` |
| 130 | `def` | [prod.braiding](declarations/prod-braiding.md) | 1023 | `BLOCKED_NATIVE_ADMISSION` |
| 131 | `theorem` | [braid_natural](declarations/braid-natural.md) | 1031 | `BLOCKED_NATIVE_ADMISSION` |
| 132 | `theorem` | [prod.symmetry'](declarations/prod-symmetry-source-edition-2.md) | 1037 | `BLOCKED_NATIVE_ADMISSION` |
| 133 | `theorem` | [prod.symmetry](declarations/prod-symmetry.md) | 1045 | `BLOCKED_NATIVE_ADMISSION` |
| 134 | `def` | [prod.associator](declarations/prod-associator.md) | 1053 | `BLOCKED_NATIVE_ADMISSION` |
| 135 | `theorem` | [prod.pentagon](declarations/prod-pentagon.md) | 1059 | `BLOCKED_NATIVE_ADMISSION` |
| 136 | `theorem` | [prod.associator_naturality](declarations/prod-associator-naturality.md) | 1068 | `BLOCKED_NATIVE_ADMISSION` |
| 137 | `def` | [prod.leftUnitor](declarations/prod-leftunitor.md) | 1080 | `BLOCKED_NATIVE_ADMISSION` |
| 138 | `def` | [prod.rightUnitor](declarations/prod-rightunitor.md) | 1089 | `BLOCKED_NATIVE_ADMISSION` |
| 139 | `theorem` | [prod.leftUnitor_hom_naturality](declarations/prod-leftunitor-hom-naturality.md) | 1097 | `BLOCKED_NATIVE_ADMISSION` |
| 140 | `theorem` | [prod.leftUnitor_inv_naturality](declarations/prod-leftunitor-inv-naturality.md) | 1104 | `BLOCKED_NATIVE_ADMISSION` |
| 141 | `theorem` | [prod.rightUnitor_hom_naturality](declarations/prod-rightunitor-hom-naturality.md) | 1111 | `BLOCKED_NATIVE_ADMISSION` |
| 142 | `theorem` | [prod_rightUnitor_inv_naturality](declarations/prod-rightunitor-inv-naturality.md) | 1118 | `BLOCKED_NATIVE_ADMISSION` |
| 143 | `theorem` | [prod.triangle](declarations/prod-triangle.md) | 1124 | `BLOCKED_NATIVE_ADMISSION` |
| 144 | `def` | [coprod.braiding](declarations/coprod-braiding.md) | 1139 | `BLOCKED_NATIVE_ADMISSION` |
| 145 | `theorem` | [coprod.symmetry'](declarations/coprod-symmetry.md) | 1145 | `BLOCKED_NATIVE_ADMISSION` |
| 146 | `theorem` | [coprod.symmetry](declarations/coprod-symmetry-source-edition-2.md) | 1152 | `BLOCKED_NATIVE_ADMISSION` |
| 147 | `def` | [coprod.associator](declarations/coprod-associator.md) | 1158 | `BLOCKED_NATIVE_ADMISSION` |
| 148 | `theorem` | [coprod.pentagon](declarations/coprod-pentagon.md) | 1163 | `BLOCKED_NATIVE_ADMISSION` |
| 149 | `theorem` | [coprod.associator_naturality](declarations/coprod-associator-naturality.md) | 1170 | `BLOCKED_NATIVE_ADMISSION` |
| 150 | `def` | [coprod.leftUnitor](declarations/coprod-leftunitor.md) | 1181 | `BLOCKED_NATIVE_ADMISSION` |
| 151 | `def` | [coprod.rightUnitor](declarations/coprod-rightunitor.md) | 1190 | `BLOCKED_NATIVE_ADMISSION` |
| 152 | `theorem` | [coprod.triangle](declarations/coprod-triangle.md) | 1197 | `BLOCKED_NATIVE_ADMISSION` |
| 153 | `def` | [prod.functor](declarations/prod-functor.md) | 1212 | `BLOCKED_NATIVE_ADMISSION` |
| 154 | `def` | [prod.functorLeftComp](declarations/prod-functorleftcomp.md) | 1221 | `BLOCKED_NATIVE_ADMISSION` |
| 155 | `def` | [coprod.functor](declarations/coprod-functor.md) | 1235 | `BLOCKED_NATIVE_ADMISSION` |
| 156 | `def` | [coprod.functorLeftComp](declarations/coprod-functorleftcomp.md) | 1243 | `BLOCKED_NATIVE_ADMISSION` |
| 157 | `def` | [prodComparison](declarations/prodcomparison.md) | 1266 | `BLOCKED_NATIVE_ADMISSION` |
| 158 | `theorem` | [prodComparison_fst](declarations/prodcomparison-fst.md) | 1272 | `BLOCKED_NATIVE_ADMISSION` |
| 159 | `theorem` | [prodComparison_snd](declarations/prodcomparison-snd.md) | 1278 | `BLOCKED_NATIVE_ADMISSION` |
| 160 | `theorem` | [prodComparison_natural](declarations/prodcomparison-natural.md) | 1285 | `BLOCKED_NATIVE_ADMISSION` |
| 161 | `def` | [prodComparisonNatTrans](declarations/prodcomparisonnattrans.md) | 1297 | `BLOCKED_NATIVE_ADMISSION` |
| 162 | `theorem` | [inv_prodComparison_map_fst](declarations/inv-prodcomparison-map-fst.md) | 1305 | `BLOCKED_NATIVE_ADMISSION` |
| 163 | `theorem` | [inv_prodComparison_map_snd](declarations/inv-prodcomparison-map-snd.md) | 1311 | `BLOCKED_NATIVE_ADMISSION` |
| 164 | `theorem` | [prodComparison_inv_natural](declarations/prodcomparison-inv-natural.md) | 1318 | `BLOCKED_NATIVE_ADMISSION` |
| 165 | `def` | [prodComparisonNatIso](declarations/prodcomparisonnatiso.md) | 1331 | `BLOCKED_NATIVE_ADMISSION` |
| 166 | `def` | [coprodComparison](declarations/coprodcomparison.md) | 1357 | `BLOCKED_NATIVE_ADMISSION` |
| 167 | `theorem` | [coprodComparison_inl](declarations/coprodcomparison-inl.md) | 1363 | `BLOCKED_NATIVE_ADMISSION` |
| 168 | `theorem` | [coprodComparison_inr](declarations/coprodcomparison-inr.md) | 1369 | `BLOCKED_NATIVE_ADMISSION` |
| 169 | `theorem` | [coprodComparison_natural](declarations/coprodcomparison-natural.md) | 1376 | `BLOCKED_NATIVE_ADMISSION` |
| 170 | `def` | [coprodComparisonNatTrans](declarations/coprodcomparisonnattrans.md) | 1388 | `BLOCKED_NATIVE_ADMISSION` |
| 171 | `theorem` | [map_inl_inv_coprodComparison](declarations/map-inl-inv-coprodcomparison.md) | 1395 | `BLOCKED_NATIVE_ADMISSION` |
| 172 | `theorem` | [map_inr_inv_coprodComparison](declarations/map-inr-inv-coprodcomparison.md) | 1401 | `BLOCKED_NATIVE_ADMISSION` |
| 173 | `theorem` | [coprodComparison_inv_natural](declarations/coprodcomparison-inv-natural.md) | 1408 | `BLOCKED_NATIVE_ADMISSION` |
| 174 | `def` | [coprodComparisonNatIso](declarations/coprodcomparisonnatiso.md) | 1421 | `BLOCKED_NATIVE_ADMISSION` |
| 175 | `def` | [Over.coprodObj](declarations/over-coprodobj.md) | 1440 | `BLOCKED_NATIVE_ADMISSION` |
| 176 | `def` | [Over.coprod](declarations/over-coprod.md) | 1447 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=94333e97e8e505736256a43bac238fabe43309e9ce70aadc2e1b319b2e1baebd -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/BinaryProducts/Variant28e86d662bbe4972dd8351a0b8c5685badcf363937216de260bf0cd5d0b134c3.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
