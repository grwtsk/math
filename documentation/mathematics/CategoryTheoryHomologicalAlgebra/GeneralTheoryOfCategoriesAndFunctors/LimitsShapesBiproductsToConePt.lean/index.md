# Limits Shapes Biproducts To Cone Pt

[Complete source index](../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**247 observed declarations and anonymous commands**, 105 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Biproducts/Variantfaf52520f457c07eda8660d0265f635c1d01f4108da671f7fab524ef69d0c2e0.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `520e0a6bd933273556e0ad716338480eeb0a6463`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LimitsShapesBiproductsToConePt.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `structure` | [Bicone](declarations/bicone.md) | 73 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `theorem` | [bicone_ι_π_self](declarations/bicone-self.md) | 86 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `theorem` | [bicone_ι_π_ne](declarations/bicone-ne.md) | 91 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `def` | [toCone](declarations/tocone-source-edition-2.md) | 105 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [toCone_pt](declarations/tocone-pt.md) | 113 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [toCone_π_app](declarations/tocone-app.md) | 118 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [toCone_π_app_mk](declarations/tocone-app-mk.md) | 121 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [toCone_proj](declarations/tocone-proj.md) | 125 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `def` | [toCocone](declarations/tococone.md) | 128 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [toCocone_pt](declarations/tococone-pt-source-edition-2.md) | 135 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [toCocone_ι_app](declarations/tococone-app.md) | 140 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [toCocone_proj](declarations/tococone-proj.md) | 144 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [toCocone_ι_app_mk](declarations/tococone-app-mk.md) | 146 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `def` | [ofLimitCone](declarations/oflimitcone.md) | 151 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [ι_of_isLimit](declarations/of-islimit.md) | 158 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `def` | [ofColimitCocone](declarations/ofcolimitcocone.md) | 167 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [π_of_isColimit](declarations/of-iscolimit.md) | 175 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `structure` | [IsBilimit](declarations/isbilimit.md) | 184 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `instance` | [subsingleton_isBilimit](declarations/subsingleton-isbilimit.md) | 199 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `def` | [whisker](declarations/whisker.md) | 209 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `def` | [whiskerToCone](declarations/whiskertocone.md) | 220 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `def` | [whiskerToCocone](declarations/whiskertococone.md) | 229 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `def` | [whiskerIsBilimitIff](declarations/whiskerisbilimitiff.md) | 237 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `structure` | [LimitBicone](declarations/limitbicone.md) | 261 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `class` | [HasBiproduct](declarations/hasbiproduct.md) | 272 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [HasBiproduct.mk](declarations/hasbiproduct-mk.md) | 278 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `def` | [getBiproductData](declarations/getbiproductdata.md) | 283 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `def` | [biproduct.bicone](declarations/biproduct-bicone.md) | 288 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `def` | [biproduct.isBilimit](declarations/biproduct-isbilimit.md) | 293 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `def` | [biproduct.isLimit](declarations/biproduct-islimit.md) | 298 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `def` | [biproduct.isColimit](declarations/biproduct-iscolimit.md) | 303 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `instance` | [(anonymous)](declarations/instance-source-edition-4.md) | 307 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `instance` | [(anonymous)](declarations/instance-source-edition-14.md) | 313 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `class` | [HasBiproductsOfShape](declarations/hasbiproductsofshape.md) | 325 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `class` | [HasFiniteBiproducts](declarations/hasfinitebiproducts.md) | 333 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `theorem` | [hasBiproductsOfShape_of_equiv](declarations/hasbiproductsofshape-of-equiv.md) | 341 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `instance` | [(anonymous)](declarations/instance-source-edition-11.md) | 351 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `instance` | [(anonymous)](declarations/instance.md) | 358 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `instance` | [(anonymous)](declarations/instance-source-edition-12.md) | 363 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `def` | [biproductIso](declarations/biproductiso.md) | 373 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `abbrev` | [biproduct](declarations/biproduct-source-edition-2.md) | 389 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `abbrev` | [biproduct.π](declarations/biproduct-source-edition-4.md) | 397 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `theorem` | [biproduct.bicone_π](declarations/biproduct-bicone-source-edition-2.md) | 402 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `abbrev` | [biproduct.ι](declarations/biproduct.md) | 407 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `theorem` | [biproduct.bicone_ι](declarations/biproduct-bicone-source-edition-3.md) | 412 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `theorem` | [biproduct.ι_π](declarations/biproduct-source-edition-3.md) | 419 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `theorem` | [biproduct.ι_π_self](declarations/biproduct-self.md) | 425 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `theorem` | [biproduct.ι_π_ne](declarations/biproduct-ne.md) | 430 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `theorem` | [biproduct.eqToHom_comp_ι](declarations/biproduct-eqtohom-comp.md) | 438 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `theorem` | [biproduct.π_comp_eqToHom](declarations/biproduct-comp-eqtohom.md) | 447 | `BLOCKED_NATIVE_ADMISSION` |
| 51 | `abbrev` | [biproduct.lift](declarations/biproduct-lift.md) | 453 | `BLOCKED_NATIVE_ADMISSION` |
| 52 | `abbrev` | [biproduct.desc](declarations/biproduct-desc-source-edition-2.md) | 458 | `BLOCKED_NATIVE_ADMISSION` |
| 53 | `theorem` | [biproduct.lift_π](declarations/biproduct-lift-source-edition-2.md) | 463 | `BLOCKED_NATIVE_ADMISSION` |
| 54 | `theorem` | [biproduct.ι_desc](declarations/biproduct-desc.md) | 468 | `BLOCKED_NATIVE_ADMISSION` |
| 55 | `abbrev` | [biproduct.map](declarations/biproduct-map.md) | 474 | `BLOCKED_NATIVE_ADMISSION` |
| 56 | `abbrev` | [biproduct.map'](declarations/biproduct-map-source-edition-2.md) | 482 | `BLOCKED_NATIVE_ADMISSION` |
| 57 | `theorem` | [biproduct.hom_ext](declarations/biproduct-hom-ext.md) | 491 | `BLOCKED_NATIVE_ADMISSION` |
| 58 | `theorem` | [biproduct.hom_ext'](declarations/biproduct-hom-ext-source-edition-2.md) | 497 | `BLOCKED_NATIVE_ADMISSION` |
| 59 | `def` | [biproduct.isoProduct](declarations/biproduct-isoproduct.md) | 503 | `BLOCKED_NATIVE_ADMISSION` |
| 60 | `theorem` | [biproduct.isoProduct_hom](declarations/biproduct-isoproduct-hom.md) | 508 | `BLOCKED_NATIVE_ADMISSION` |
| 61 | `theorem` | [biproduct.isoProduct_inv](declarations/biproduct-isoproduct-inv.md) | 514 | `BLOCKED_NATIVE_ADMISSION` |
| 62 | `def` | [biproduct.isoCoproduct](declarations/biproduct-isocoproduct.md) | 520 | `BLOCKED_NATIVE_ADMISSION` |
| 63 | `theorem` | [biproduct.isoCoproduct_inv](declarations/biproduct-isocoproduct-inv.md) | 525 | `BLOCKED_NATIVE_ADMISSION` |
| 64 | `theorem` | [biproduct.isoCoproduct_hom](declarations/biproduct-isocoproduct-hom.md) | 531 | `BLOCKED_NATIVE_ADMISSION` |
| 65 | `theorem` | [biproduct.map_eq_map'](declarations/biproduct-map-eq-map.md) | 536 | `BLOCKED_NATIVE_ADMISSION` |
| 66 | `theorem` | [biproduct.map_π](declarations/biproduct-map-source-edition-4.md) | 551 | `BLOCKED_NATIVE_ADMISSION` |
| 67 | `theorem` | [biproduct.ι_map](declarations/biproduct-map-source-edition-3.md) | 557 | `BLOCKED_NATIVE_ADMISSION` |
| 68 | `theorem` | [biproduct.map_desc](declarations/biproduct-map-desc.md) | 566 | `BLOCKED_NATIVE_ADMISSION` |
| 69 | `theorem` | [biproduct.lift_map](declarations/biproduct-lift-map.md) | 573 | `BLOCKED_NATIVE_ADMISSION` |
| 70 | `def` | [biproduct.mapIso](declarations/biproduct-mapiso.md) | 582 | `BLOCKED_NATIVE_ADMISSION` |
| 71 | `def` | [biproduct.whiskerEquiv](declarations/biproduct-whiskerequiv.md) | 596 | `BLOCKED_NATIVE_ADMISSION` |
| 72 | `lemma` | [biproduct.whiskerEquiv_hom_eq_lift](declarations/biproduct-whiskerequiv-hom-eq-lift.md) | 601 | `BLOCKED_NATIVE_ADMISSION` |
| 73 | `lemma` | [biproduct.whiskerEquiv_inv_eq_lift](declarations/biproduct-whiskerequiv-inv-eq-lift.md) | 617 | `BLOCKED_NATIVE_ADMISSION` |
| 74 | `instance` | [(anonymous)](declarations/instance-source-edition-5.md) | 635 | `BLOCKED_NATIVE_ADMISSION` |
| 75 | `def` | [biproductBiproductIso](declarations/biproductbiproductiso.md) | 661 | `BLOCKED_NATIVE_ADMISSION` |
| 76 | `def` | [biproduct.fromSubtype](declarations/biproduct-fromsubtype-source-edition-3.md) | 677 | `BLOCKED_NATIVE_ADMISSION` |
| 77 | `def` | [biproduct.toSubtype](declarations/biproduct-tosubtype.md) | 683 | `BLOCKED_NATIVE_ADMISSION` |
| 78 | `theorem` | [biproduct.fromSubtype_π](declarations/biproduct-fromsubtype.md) | 688 | `BLOCKED_NATIVE_ADMISSION` |
| 79 | `theorem` | [biproduct.fromSubtype_eq_lift](declarations/biproduct-fromsubtype-eq-lift.md) | 700 | `BLOCKED_NATIVE_ADMISSION` |
| 80 | `theorem` | [biproduct.fromSubtype_π_subtype](declarations/biproduct-fromsubtype-subtype.md) | 707 | `BLOCKED_NATIVE_ADMISSION` |
| 81 | `theorem` | [biproduct.toSubtype_π](declarations/biproduct-tosubtype-source-edition-2.md) | 716 | `BLOCKED_NATIVE_ADMISSION` |
| 82 | `theorem` | [biproduct.ι_toSubtype](declarations/biproduct-tosubtype-source-edition-3.md) | 722 | `BLOCKED_NATIVE_ADMISSION` |
| 83 | `theorem` | [biproduct.toSubtype_eq_desc](declarations/biproduct-tosubtype-eq-desc.md) | 734 | `BLOCKED_NATIVE_ADMISSION` |
| 84 | `theorem` | [biproduct.ι_toSubtype_subtype](declarations/biproduct-tosubtype-subtype.md) | 741 | `BLOCKED_NATIVE_ADMISSION` |
| 85 | `theorem` | [biproduct.ι_fromSubtype](declarations/biproduct-fromsubtype-source-edition-2.md) | 750 | `BLOCKED_NATIVE_ADMISSION` |
| 86 | `theorem` | [biproduct.fromSubtype_toSubtype](declarations/biproduct-fromsubtype-tosubtype.md) | 756 | `BLOCKED_NATIVE_ADMISSION` |
| 87 | `theorem` | [biproduct.toSubtype_fromSubtype](declarations/biproduct-tosubtype-fromsubtype.md) | 763 | `BLOCKED_NATIVE_ADMISSION` |
| 88 | `def` | [biproduct.isLimitFromSubtype](declarations/biproduct-islimitfromsubtype.md) | 780 | `BLOCKED_NATIVE_ADMISSION` |
| 89 | `instance` | [(anonymous)](declarations/instance-source-edition-2.md) | 796 | `BLOCKED_NATIVE_ADMISSION` |
| 90 | `def` | [kernelBiproductπIso](declarations/kernelbiproduct-iso.md) | 801 | `BLOCKED_NATIVE_ADMISSION` |
| 91 | `def` | [biproduct.isColimitToSubtype](declarations/biproduct-iscolimittosubtype.md) | 807 | `BLOCKED_NATIVE_ADMISSION` |
| 92 | `instance` | [(anonymous)](declarations/instance-source-edition-13.md) | 822 | `BLOCKED_NATIVE_ADMISSION` |
| 93 | `def` | [cokernelBiproductιIso](declarations/cokernelbiproduct-iso.md) | 827 | `BLOCKED_NATIVE_ADMISSION` |
| 94 | `def` | [kernelForkBiproductToSubtype](declarations/kernelforkbiproducttosubtype.md) | 843 | `BLOCKED_NATIVE_ADMISSION` |
| 95 | `instance` | [(anonymous)](declarations/instance-source-edition-8.md) | 867 | `BLOCKED_NATIVE_ADMISSION` |
| 96 | `def` | [kernelBiproductToSubtypeIso](declarations/kernelbiproducttosubtypeiso.md) | 872 | `BLOCKED_NATIVE_ADMISSION` |
| 97 | `def` | [cokernelCoforkBiproductFromSubtype](declarations/cokernelcoforkbiproductfromsubtype.md) | 880 | `BLOCKED_NATIVE_ADMISSION` |
| 98 | `instance` | [(anonymous)](declarations/instance-source-edition-20.md) | 904 | `BLOCKED_NATIVE_ADMISSION` |
| 99 | `def` | [cokernelBiproductFromSubtypeIso](declarations/cokernelbiproductfromsubtypeiso.md) | 909 | `BLOCKED_NATIVE_ADMISSION` |
| 100 | `def` | [biproduct.matrix](declarations/biproduct-matrix.md) | 929 | `BLOCKED_NATIVE_ADMISSION` |
| 101 | `theorem` | [biproduct.matrix_π](declarations/biproduct-matrix-source-edition-3.md) | 934 | `BLOCKED_NATIVE_ADMISSION` |
| 102 | `theorem` | [biproduct.ι_matrix](declarations/biproduct-matrix-source-edition-2.md) | 941 | `BLOCKED_NATIVE_ADMISSION` |
| 103 | `def` | [biproduct.components](declarations/biproduct-components.md) | 949 | `BLOCKED_NATIVE_ADMISSION` |
| 104 | `theorem` | [biproduct.matrix_components](declarations/biproduct-matrix-components.md) | 954 | `BLOCKED_NATIVE_ADMISSION` |
| 105 | `theorem` | [biproduct.components_matrix](declarations/biproduct-components-matrix.md) | 959 | `BLOCKED_NATIVE_ADMISSION` |
| 106 | `def` | [biproduct.matrixEquiv](declarations/biproduct-matrixequiv.md) | 967 | `BLOCKED_NATIVE_ADMISSION` |
| 107 | `instance` | [biproduct.ι_mono](declarations/biproduct-mono.md) | 981 | `BLOCKED_NATIVE_ADMISSION` |
| 108 | `instance` | [biproduct.π_epi](declarations/biproduct-epi.md) | 985 | `BLOCKED_NATIVE_ADMISSION` |
| 109 | `theorem` | [biproduct.conePointUniqueUpToIso_hom](declarations/biproduct-conepointuniqueuptoiso-hom.md) | 990 | `BLOCKED_NATIVE_ADMISSION` |
| 110 | `theorem` | [biproduct.conePointUniqueUpToIso_inv](declarations/biproduct-conepointuniqueuptoiso-inv.md) | 997 | `BLOCKED_NATIVE_ADMISSION` |
| 111 | `def` | [biproduct.uniqueUpToIso](declarations/biproduct-uniqueuptoiso.md) | 1010 | `BLOCKED_NATIVE_ADMISSION` |
| 112 | `instance` | [(anonymous)](declarations/instance-source-edition-22.md) | 1026 | `BLOCKED_NATIVE_ADMISSION` |
| 113 | `def` | [limitBiconeOfUnique](declarations/limitbiconeofunique.md) | 1039 | `BLOCKED_NATIVE_ADMISSION` |
| 114 | `instance` | [(anonymous)](declarations/instance-source-edition-19.md) | 1049 | `BLOCKED_NATIVE_ADMISSION` |
| 115 | `def` | [biproductUniqueIso](declarations/biproductuniqueiso.md) | 1055 | `BLOCKED_NATIVE_ADMISSION` |
| 116 | `structure` | [BinaryBicone](declarations/binarybicone.md) | 1068 | `BLOCKED_NATIVE_ADMISSION` |
| 117 | `def` | [toCone](declarations/tocone.md) | 1096 | `BLOCKED_NATIVE_ADMISSION` |
| 118 | `theorem` | [toCone_pt](declarations/tocone-pt-source-edition-2.md) | 1101 | `BLOCKED_NATIVE_ADMISSION` |
| 119 | `theorem` | [toCone_π_app_left](declarations/tocone-app-left.md) | 1106 | `BLOCKED_NATIVE_ADMISSION` |
| 120 | `theorem` | [toCone_π_app_right](declarations/tocone-app-right.md) | 1111 | `BLOCKED_NATIVE_ADMISSION` |
| 121 | `theorem` | [binary_fan_fst_toCone](declarations/binary-fan-fst-tocone.md) | 1116 | `BLOCKED_NATIVE_ADMISSION` |
| 122 | `theorem` | [binary_fan_snd_toCone](declarations/binary-fan-snd-tocone.md) | 1120 | `BLOCKED_NATIVE_ADMISSION` |
| 123 | `def` | [toCocone](declarations/tococone-source-edition-2.md) | 1124 | `BLOCKED_NATIVE_ADMISSION` |
| 124 | `theorem` | [toCocone_pt](declarations/tococone-pt.md) | 1128 | `BLOCKED_NATIVE_ADMISSION` |
| 125 | `theorem` | [toCocone_ι_app_left](declarations/tococone-app-left.md) | 1133 | `BLOCKED_NATIVE_ADMISSION` |
| 126 | `theorem` | [toCocone_ι_app_right](declarations/tococone-app-right.md) | 1138 | `BLOCKED_NATIVE_ADMISSION` |
| 127 | `theorem` | [binary_cofan_inl_toCocone](declarations/binary-cofan-inl-tococone.md) | 1143 | `BLOCKED_NATIVE_ADMISSION` |
| 128 | `theorem` | [binary_cofan_inr_toCocone](declarations/binary-cofan-inr-tococone.md) | 1148 | `BLOCKED_NATIVE_ADMISSION` |
| 129 | `instance` | [(anonymous)](declarations/instance-source-edition-3.md) | 1152 | `BLOCKED_NATIVE_ADMISSION` |
| 130 | `instance` | [(anonymous)](declarations/instance-source-edition-9.md) | 1157 | `BLOCKED_NATIVE_ADMISSION` |
| 131 | `instance` | [(anonymous)](declarations/instance-source-edition-6.md) | 1162 | `BLOCKED_NATIVE_ADMISSION` |
| 132 | `instance` | [(anonymous)](declarations/instance-source-edition-17.md) | 1167 | `BLOCKED_NATIVE_ADMISSION` |
| 133 | `def` | [toBicone](declarations/tobicone.md) | 1174 | `BLOCKED_NATIVE_ADMISSION` |
| 134 | `def` | [toBiconeIsLimit](declarations/tobiconeislimit.md) | 1183 | `BLOCKED_NATIVE_ADMISSION` |
| 135 | `def` | [toBiconeIsColimit](declarations/tobiconeiscolimit.md) | 1192 | `BLOCKED_NATIVE_ADMISSION` |
| 136 | `def` | [toBinaryBicone](declarations/tobinarybicone.md) | 1205 | `BLOCKED_NATIVE_ADMISSION` |
| 137 | `def` | [toBinaryBiconeIsLimit](declarations/tobinarybiconeislimit.md) | 1219 | `BLOCKED_NATIVE_ADMISSION` |
| 138 | `def` | [toBinaryBiconeIsColimit](declarations/tobinarybiconeiscolimit.md) | 1226 | `BLOCKED_NATIVE_ADMISSION` |
| 139 | `structure` | [BinaryBicone.IsBilimit](declarations/binarybicone-isbilimit.md) | 1235 | `BLOCKED_NATIVE_ADMISSION` |
| 140 | `def` | [BinaryBicone.toBiconeIsBilimit](declarations/binarybicone-tobiconeisbilimit.md) | 1246 | `BLOCKED_NATIVE_ADMISSION` |
| 141 | `def` | [Bicone.toBinaryBiconeIsBilimit](declarations/bicone-tobinarybiconeisbilimit.md) | 1256 | `BLOCKED_NATIVE_ADMISSION` |
| 142 | `structure` | [BinaryBiproductData](declarations/binarybiproductdata.md) | 1268 | `BLOCKED_NATIVE_ADMISSION` |
| 143 | `class` | [HasBinaryBiproduct](declarations/hasbinarybiproduct.md) | 1280 | `BLOCKED_NATIVE_ADMISSION` |
| 144 | `theorem` | [HasBinaryBiproduct.mk](declarations/hasbinarybiproduct-mk.md) | 1286 | `BLOCKED_NATIVE_ADMISSION` |
| 145 | `def` | [getBinaryBiproductData](declarations/getbinarybiproductdata.md) | 1293 | `BLOCKED_NATIVE_ADMISSION` |
| 146 | `def` | [BinaryBiproduct.bicone](declarations/binarybiproduct-bicone.md) | 1298 | `BLOCKED_NATIVE_ADMISSION` |
| 147 | `def` | [BinaryBiproduct.isBilimit](declarations/binarybiproduct-isbilimit.md) | 1303 | `BLOCKED_NATIVE_ADMISSION` |
| 148 | `def` | [BinaryBiproduct.isLimit](declarations/binarybiproduct-islimit.md) | 1309 | `BLOCKED_NATIVE_ADMISSION` |
| 149 | `def` | [BinaryBiproduct.isColimit](declarations/binarybiproduct-iscolimit.md) | 1315 | `BLOCKED_NATIVE_ADMISSION` |
| 150 | `class` | [HasBinaryBiproducts](declarations/hasbinarybiproducts.md) | 1327 | `BLOCKED_NATIVE_ADMISSION` |
| 151 | `theorem` | [hasBinaryBiproducts_of_finite_biproducts](declarations/hasbinarybiproducts-of-finite-biproducts.md) | 1338 | `BLOCKED_NATIVE_ADMISSION` |
| 152 | `instance` | [HasBinaryBiproduct.hasLimit_pair](declarations/hasbinarybiproduct-haslimit-pair.md) | 1350 | `BLOCKED_NATIVE_ADMISSION` |
| 153 | `instance` | [HasBinaryBiproduct.hasColimit_pair](declarations/hasbinarybiproduct-hascolimit-pair.md) | 1354 | `BLOCKED_NATIVE_ADMISSION` |
| 154 | `instance` | [(anonymous)](declarations/instance-source-edition-21.md) | 1358 | `BLOCKED_NATIVE_ADMISSION` |
| 155 | `instance` | [(anonymous)](declarations/instance-source-edition-10.md) | 1363 | `BLOCKED_NATIVE_ADMISSION` |
| 156 | `def` | [biprodIso](declarations/biprodiso.md) | 1371 | `BLOCKED_NATIVE_ADMISSION` |
| 157 | `abbrev` | [biprod](declarations/biprod.md) | 1377 | `BLOCKED_NATIVE_ADMISSION` |
| 158 | `abbrev` | [biprod.fst](declarations/biprod-fst.md) | 1385 | `BLOCKED_NATIVE_ADMISSION` |
| 159 | `abbrev` | [biprod.snd](declarations/biprod-snd.md) | 1390 | `BLOCKED_NATIVE_ADMISSION` |
| 160 | `abbrev` | [biprod.inl](declarations/biprod-inl.md) | 1395 | `BLOCKED_NATIVE_ADMISSION` |
| 161 | `abbrev` | [biprod.inr](declarations/biprod-inr.md) | 1400 | `BLOCKED_NATIVE_ADMISSION` |
| 162 | `theorem` | [BinaryBiproduct.bicone_fst](declarations/binarybiproduct-bicone-fst.md) | 1409 | `BLOCKED_NATIVE_ADMISSION` |
| 163 | `theorem` | [BinaryBiproduct.bicone_snd](declarations/binarybiproduct-bicone-snd.md) | 1414 | `BLOCKED_NATIVE_ADMISSION` |
| 164 | `theorem` | [BinaryBiproduct.bicone_inl](declarations/binarybiproduct-bicone-inl.md) | 1419 | `BLOCKED_NATIVE_ADMISSION` |
| 165 | `theorem` | [BinaryBiproduct.bicone_inr](declarations/binarybiproduct-bicone-inr.md) | 1424 | `BLOCKED_NATIVE_ADMISSION` |
| 166 | `theorem` | [biprod.inl_fst](declarations/biprod-inl-fst.md) | 1431 | `BLOCKED_NATIVE_ADMISSION` |
| 167 | `theorem` | [biprod.inl_snd](declarations/biprod-inl-snd.md) | 1437 | `BLOCKED_NATIVE_ADMISSION` |
| 168 | `theorem` | [biprod.inr_fst](declarations/biprod-inr-fst.md) | 1443 | `BLOCKED_NATIVE_ADMISSION` |
| 169 | `theorem` | [biprod.inr_snd](declarations/biprod-inr-snd.md) | 1449 | `BLOCKED_NATIVE_ADMISSION` |
| 170 | `abbrev` | [biprod.lift](declarations/biprod-lift.md) | 1456 | `BLOCKED_NATIVE_ADMISSION` |
| 171 | `abbrev` | [biprod.desc](declarations/biprod-desc.md) | 1462 | `BLOCKED_NATIVE_ADMISSION` |
| 172 | `theorem` | [biprod.lift_fst](declarations/biprod-lift-fst.md) | 1467 | `BLOCKED_NATIVE_ADMISSION` |
| 173 | `theorem` | [biprod.lift_snd](declarations/biprod-lift-snd.md) | 1473 | `BLOCKED_NATIVE_ADMISSION` |
| 174 | `theorem` | [biprod.inl_desc](declarations/biprod-inl-desc.md) | 1479 | `BLOCKED_NATIVE_ADMISSION` |
| 175 | `theorem` | [biprod.inr_desc](declarations/biprod-inr-desc.md) | 1485 | `BLOCKED_NATIVE_ADMISSION` |
| 176 | `instance` | [biprod.mono_lift_of_mono_left](declarations/biprod-mono-lift-of-mono-left.md) | 1490 | `BLOCKED_NATIVE_ADMISSION` |
| 177 | `instance` | [biprod.mono_lift_of_mono_right](declarations/biprod-mono-lift-of-mono-right.md) | 1495 | `BLOCKED_NATIVE_ADMISSION` |
| 178 | `instance` | [biprod.epi_desc_of_epi_left](declarations/biprod-epi-desc-of-epi-left.md) | 1500 | `BLOCKED_NATIVE_ADMISSION` |
| 179 | `instance` | [biprod.epi_desc_of_epi_right](declarations/biprod-epi-desc-of-epi-right.md) | 1505 | `BLOCKED_NATIVE_ADMISSION` |
| 180 | `abbrev` | [biprod.map](declarations/biprod-map.md) | 1512 | `BLOCKED_NATIVE_ADMISSION` |
| 181 | `abbrev` | [biprod.map'](declarations/biprod-map-source-edition-2.md) | 1520 | `BLOCKED_NATIVE_ADMISSION` |
| 182 | `theorem` | [biprod.hom_ext](declarations/biprod-hom-ext.md) | 1527 | `BLOCKED_NATIVE_ADMISSION` |
| 183 | `theorem` | [biprod.hom_ext'](declarations/biprod-hom-ext-source-edition-2.md) | 1533 | `BLOCKED_NATIVE_ADMISSION` |
| 184 | `def` | [biprod.isoProd](declarations/biprod-isoprod.md) | 1539 | `BLOCKED_NATIVE_ADMISSION` |
| 185 | `theorem` | [biprod.isoProd_hom](declarations/biprod-isoprod-hom.md) | 1544 | `BLOCKED_NATIVE_ADMISSION` |
| 186 | `theorem` | [biprod.isoProd_inv](declarations/biprod-isoprod-inv.md) | 1550 | `BLOCKED_NATIVE_ADMISSION` |
| 187 | `def` | [biprod.isoCoprod](declarations/biprod-isocoprod.md) | 1556 | `BLOCKED_NATIVE_ADMISSION` |
| 188 | `theorem` | [biprod.isoCoprod_inv](declarations/biprod-isocoprod-inv.md) | 1561 | `BLOCKED_NATIVE_ADMISSION` |
| 189 | `theorem` | [biprod_isoCoprod_hom](declarations/biprod-isocoprod-hom.md) | 1567 | `BLOCKED_NATIVE_ADMISSION` |
| 190 | `theorem` | [biprod.map_eq_map'](declarations/biprod-map-eq-map.md) | 1572 | `BLOCKED_NATIVE_ADMISSION` |
| 191 | `instance` | [biprod.inl_mono](declarations/biprod-inl-mono.md) | 1593 | `BLOCKED_NATIVE_ADMISSION` |
| 192 | `instance` | [biprod.inr_mono](declarations/biprod-inr-mono.md) | 1598 | `BLOCKED_NATIVE_ADMISSION` |
| 193 | `instance` | [biprod.fst_epi](declarations/biprod-fst-epi.md) | 1603 | `BLOCKED_NATIVE_ADMISSION` |
| 194 | `instance` | [biprod.snd_epi](declarations/biprod-snd-epi.md) | 1607 | `BLOCKED_NATIVE_ADMISSION` |
| 195 | `theorem` | [biprod.map_fst](declarations/biprod-map-fst.md) | 1612 | `BLOCKED_NATIVE_ADMISSION` |
| 196 | `theorem` | [biprod.map_snd](declarations/biprod-map-snd.md) | 1618 | `BLOCKED_NATIVE_ADMISSION` |
| 197 | `theorem` | [biprod.inl_map](declarations/biprod-inl-map.md) | 1626 | `BLOCKED_NATIVE_ADMISSION` |
| 198 | `theorem` | [biprod.inr_map](declarations/biprod-inr-map.md) | 1633 | `BLOCKED_NATIVE_ADMISSION` |
| 199 | `def` | [biprod.mapIso](declarations/biprod-mapiso.md) | 1642 | `BLOCKED_NATIVE_ADMISSION` |
| 200 | `theorem` | [biprod.conePointUniqueUpToIso_hom](declarations/biprod-conepointuniqueuptoiso-hom.md) | 1649 | `BLOCKED_NATIVE_ADMISSION` |
| 201 | `theorem` | [biprod.conePointUniqueUpToIso_inv](declarations/biprod-conepointuniqueuptoiso-inv.md) | 1656 | `BLOCKED_NATIVE_ADMISSION` |
| 202 | `def` | [biprod.uniqueUpToIso](declarations/biprod-uniqueuptoiso.md) | 1672 | `BLOCKED_NATIVE_ADMISSION` |
| 203 | `theorem` | [biprod.isIso_inl_iff_id_eq_fst_comp_inl](declarations/biprod-isiso-inl-iff-id-eq-fst-comp-inl.md) | 1688 | `BLOCKED_NATIVE_ADMISSION` |
| 204 | `def` | [BinaryBicone.fstKernelFork](declarations/binarybicone-fstkernelfork.md) | 1707 | `BLOCKED_NATIVE_ADMISSION` |
| 205 | `theorem` | [BinaryBicone.fstKernelFork_ι](declarations/binarybicone-fstkernelfork-source-edition-2.md) | 1712 | `BLOCKED_NATIVE_ADMISSION` |
| 206 | `def` | [BinaryBicone.sndKernelFork](declarations/binarybicone-sndkernelfork-source-edition-2.md) | 1717 | `BLOCKED_NATIVE_ADMISSION` |
| 207 | `theorem` | [BinaryBicone.sndKernelFork_ι](declarations/binarybicone-sndkernelfork.md) | 1722 | `BLOCKED_NATIVE_ADMISSION` |
| 208 | `def` | [BinaryBicone.inlCokernelCofork](declarations/binarybicone-inlcokernelcofork.md) | 1727 | `BLOCKED_NATIVE_ADMISSION` |
| 209 | `theorem` | [BinaryBicone.inlCokernelCofork_π](declarations/binarybicone-inlcokernelcofork-source-edition-2.md) | 1732 | `BLOCKED_NATIVE_ADMISSION` |
| 210 | `def` | [BinaryBicone.inrCokernelCofork](declarations/binarybicone-inrcokernelcofork-source-edition-2.md) | 1737 | `BLOCKED_NATIVE_ADMISSION` |
| 211 | `theorem` | [BinaryBicone.inrCokernelCofork_π](declarations/binarybicone-inrcokernelcofork.md) | 1742 | `BLOCKED_NATIVE_ADMISSION` |
| 212 | `def` | [BinaryBicone.isLimitFstKernelFork](declarations/binarybicone-islimitfstkernelfork.md) | 1748 | `BLOCKED_NATIVE_ADMISSION` |
| 213 | `def` | [BinaryBicone.isLimitSndKernelFork](declarations/binarybicone-islimitsndkernelfork.md) | 1754 | `BLOCKED_NATIVE_ADMISSION` |
| 214 | `def` | [BinaryBicone.isColimitInlCokernelCofork](declarations/binarybicone-iscolimitinlcokernelcofork.md) | 1760 | `BLOCKED_NATIVE_ADMISSION` |
| 215 | `def` | [BinaryBicone.isColimitInrCokernelCofork](declarations/binarybicone-iscolimitinrcokernelcofork.md) | 1767 | `BLOCKED_NATIVE_ADMISSION` |
| 216 | `def` | [biprod.fstKernelFork](declarations/biprod-fstkernelfork.md) | 1781 | `BLOCKED_NATIVE_ADMISSION` |
| 217 | `theorem` | [biprod.fstKernelFork_ι](declarations/biprod-fstkernelfork-source-edition-2.md) | 1786 | `BLOCKED_NATIVE_ADMISSION` |
| 218 | `def` | [biprod.isKernelFstKernelFork](declarations/biprod-iskernelfstkernelfork.md) | 1791 | `BLOCKED_NATIVE_ADMISSION` |
| 219 | `def` | [biprod.sndKernelFork](declarations/biprod-sndkernelfork.md) | 1797 | `BLOCKED_NATIVE_ADMISSION` |
| 220 | `theorem` | [biprod.sndKernelFork_ι](declarations/biprod-sndkernelfork-source-edition-2.md) | 1802 | `BLOCKED_NATIVE_ADMISSION` |
| 221 | `def` | [biprod.isKernelSndKernelFork](declarations/biprod-iskernelsndkernelfork.md) | 1807 | `BLOCKED_NATIVE_ADMISSION` |
| 222 | `def` | [biprod.inlCokernelCofork](declarations/biprod-inlcokernelcofork.md) | 1813 | `BLOCKED_NATIVE_ADMISSION` |
| 223 | `theorem` | [biprod.inlCokernelCofork_π](declarations/biprod-inlcokernelcofork-source-edition-2.md) | 1818 | `BLOCKED_NATIVE_ADMISSION` |
| 224 | `def` | [biprod.isCokernelInlCokernelFork](declarations/biprod-iscokernelinlcokernelfork.md) | 1823 | `BLOCKED_NATIVE_ADMISSION` |
| 225 | `def` | [biprod.inrCokernelCofork](declarations/biprod-inrcokernelcofork.md) | 1829 | `BLOCKED_NATIVE_ADMISSION` |
| 226 | `theorem` | [biprod.inrCokernelCofork_π](declarations/biprod-inrcokernelcofork-source-edition-2.md) | 1834 | `BLOCKED_NATIVE_ADMISSION` |
| 227 | `def` | [biprod.isCokernelInrCokernelFork](declarations/biprod-iscokernelinrcokernelfork.md) | 1839 | `BLOCKED_NATIVE_ADMISSION` |
| 228 | `instance` | [(anonymous)](declarations/instance-source-edition-7.md) | 1847 | `BLOCKED_NATIVE_ADMISSION` |
| 229 | `def` | [kernelBiprodFstIso](declarations/kernelbiprodfstiso.md) | 1852 | `BLOCKED_NATIVE_ADMISSION` |
| 230 | `instance` | [(anonymous)](declarations/instance-source-edition-18.md) | 1856 | `BLOCKED_NATIVE_ADMISSION` |
| 231 | `def` | [kernelBiprodSndIso](declarations/kernelbiprodsndiso.md) | 1861 | `BLOCKED_NATIVE_ADMISSION` |
| 232 | `instance` | [(anonymous)](declarations/instance-source-edition-15.md) | 1865 | `BLOCKED_NATIVE_ADMISSION` |
| 233 | `def` | [cokernelBiprodInlIso](declarations/cokernelbiprodinliso.md) | 1870 | `BLOCKED_NATIVE_ADMISSION` |
| 234 | `instance` | [(anonymous)](declarations/instance-source-edition-16.md) | 1874 | `BLOCKED_NATIVE_ADMISSION` |
| 235 | `def` | [cokernelBiprodInrIso](declarations/cokernelbiprodinriso.md) | 1879 | `BLOCKED_NATIVE_ADMISSION` |
| 236 | `def` | [isoBiprodZero](declarations/isobiprodzero.md) | 1889 | `BLOCKED_NATIVE_ADMISSION` |
| 237 | `def` | [isoZeroBiprod](declarations/isozerobiprod.md) | 1901 | `BLOCKED_NATIVE_ADMISSION` |
| 238 | `def` | [biprod.braiding](declarations/biprod-braiding-source-edition-2.md) | 1920 | `BLOCKED_NATIVE_ADMISSION` |
| 239 | `def` | [biprod.braiding'](declarations/biprod-braiding.md) | 1929 | `BLOCKED_NATIVE_ADMISSION` |
| 240 | `theorem` | [biprod.braiding'_eq_braiding](declarations/biprod-braiding-eq-braiding.md) | 1934 | `BLOCKED_NATIVE_ADMISSION` |
| 241 | `theorem` | [biprod.braid_natural](declarations/biprod-braid-natural.md) | 1940 | `BLOCKED_NATIVE_ADMISSION` |
| 242 | `theorem` | [biprod.braiding_map_braiding](declarations/biprod-braiding-map-braiding.md) | 1946 | `BLOCKED_NATIVE_ADMISSION` |
| 243 | `theorem` | [biprod.symmetry'](declarations/biprod-symmetry.md) | 1952 | `BLOCKED_NATIVE_ADMISSION` |
| 244 | `theorem` | [biprod.symmetry](declarations/biprod-symmetry-source-edition-2.md) | 1959 | `BLOCKED_NATIVE_ADMISSION` |
| 245 | `def` | [Indecomposable](declarations/indecomposable.md) | 1975 | `BLOCKED_NATIVE_ADMISSION` |
| 246 | `theorem` | [isIso_left_of_isIso_biprod_map](declarations/isiso-left-of-isiso-biprod-map.md) | 1986 | `BLOCKED_NATIVE_ADMISSION` |
| 247 | `theorem` | [isIso_right_of_isIso_biprod_map](declarations/isiso-right-of-isiso-biprod-map.md) | 2008 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=b60fba49791cadfef6f8ef994b1760cb03741e281519304fff473ed0b38f3683 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Biproducts/Variantfaf52520f457c07eda8660d0265f635c1d01f4108da671f7fab524ef69d0c2e0.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
