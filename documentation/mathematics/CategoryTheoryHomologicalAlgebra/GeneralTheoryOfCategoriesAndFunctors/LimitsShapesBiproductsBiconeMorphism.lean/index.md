# Limits Shapes Biproducts Bicone Morphism

[Complete source index](../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**131 observed declarations and anonymous commands**, 53 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Biproducts/Variant33830de11a2f18da805b87652974b0afe8386ef8e709f26a97b62c95fd80ab3c.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `e842e84ab6ad685e705eec0dcc01deae3c1c99bd`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LimitsShapesBiproductsBiconeMorphism.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `structure` | [Bicone](declarations/bicone.md) | 59 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `theorem` | [bicone_ι_π_self](declarations/bicone-self.md) | 69 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `theorem` | [bicone_ι_π_ne](declarations/bicone-ne.md) | 73 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `structure` | [BiconeMorphism](declarations/biconemorphism.md) | 80 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `instance` | [Bicone.category](declarations/bicone-category.md) | 92 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [BiconeMorphism.ext](declarations/biconemorphism-ext.md) | 101 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `def` | [ext](declarations/ext.md) | 112 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `def` | [functoriality](declarations/functoriality.md) | 124 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `instance` | [functoriality_full](declarations/functoriality-full.md) | 140 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `instance` | [functoriality_faithful](declarations/functoriality-faithful.md) | 147 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `def` | [toConeFunctor](declarations/toconefunctor.md) | 162 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `abbrev` | [toCone](declarations/tocone.md) | 167 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [toCone_pt](declarations/tocone-pt.md) | 171 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [toCone_π_app](declarations/tocone-app.md) | 173 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [toCone_π_app_mk](declarations/tocone-app-mk.md) | 175 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [toCone_proj](declarations/tocone-proj.md) | 177 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `def` | [toCoconeFunctor](declarations/tococonefunctor.md) | 180 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `abbrev` | [toCocone](declarations/tococone.md) | 185 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [toCocone_pt](declarations/tococone-pt.md) | 187 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [toCocone_ι_app](declarations/tococone-app.md) | 190 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [toCocone_inj](declarations/tococone-inj.md) | 192 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [toCocone_ι_app_mk](declarations/tococone-app-mk.md) | 194 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `def` | [ofLimitCone](declarations/oflimitcone.md) | 199 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [ι_of_isLimit](declarations/of-islimit.md) | 206 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `def` | [ofColimitCocone](declarations/ofcolimitcocone.md) | 215 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [π_of_isColimit](declarations/of-iscolimit.md) | 223 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `structure` | [IsBilimit](declarations/isbilimit.md) | 230 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `instance` | [subsingleton_isBilimit](declarations/subsingleton-isbilimit.md) | 240 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `def` | [whisker](declarations/whisker.md) | 249 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `def` | [whiskerToCone](declarations/whiskertocone.md) | 259 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `def` | [whiskerToCocone](declarations/whiskertococone.md) | 267 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `def` | [whiskerIsBilimitIff](declarations/whiskerisbilimitiff.md) | 274 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `structure` | [LimitBicone](declarations/limitbicone.md) | 295 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `class` | [HasBiproduct](declarations/hasbiproduct.md) | 303 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `theorem` | [HasBiproduct.mk](declarations/hasbiproduct-mk.md) | 308 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `def` | [getBiproductData](declarations/getbiproductdata.md) | 312 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `def` | [biproduct.bicone](declarations/biproduct-bicone.md) | 316 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `def` | [biproduct.isBilimit](declarations/biproduct-isbilimit.md) | 320 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `def` | [biproduct.isLimit](declarations/biproduct-islimit.md) | 324 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `def` | [biproduct.isColimit](declarations/biproduct-iscolimit.md) | 328 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `instance` | [(anonymous)](declarations/instance-source-edition-14.md) | 331 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `instance` | [(anonymous)](declarations/instance.md) | 336 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `class` | [HasBiproductsOfShape](declarations/hasbiproductsofshape.md) | 346 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `class` | [HasFiniteBiproducts](declarations/hasfinitebiproducts.md) | 353 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `theorem` | [hasBiproductsOfShape_of_equiv](declarations/hasbiproductsofshape-of-equiv.md) | 360 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `instance` | [(anonymous)](declarations/instance-source-edition-2.md) | 369 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `instance` | [(anonymous)](declarations/instance-source-edition-12.md) | 375 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `instance` | [(anonymous)](declarations/instance-source-edition-5.md) | 379 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `instance` | [(anonymous)](declarations/instance-source-edition-8.md) | 383 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `instance` | [(anonymous)](declarations/instance-source-edition-11.md) | 387 | `BLOCKED_NATIVE_ADMISSION` |
| 51 | `def` | [biproductIso](declarations/biproductiso.md) | 395 | `BLOCKED_NATIVE_ADMISSION` |
| 52 | `abbrev` | [biproduct](declarations/biproduct.md) | 405 | `BLOCKED_NATIVE_ADMISSION` |
| 53 | `abbrev` | [biproduct.π](declarations/biproduct-source-edition-4.md) | 412 | `BLOCKED_NATIVE_ADMISSION` |
| 54 | `theorem` | [biproduct.bicone_π](declarations/biproduct-bicone-source-edition-2.md) | 416 | `BLOCKED_NATIVE_ADMISSION` |
| 55 | `abbrev` | [biproduct.ι](declarations/biproduct-source-edition-3.md) | 420 | `BLOCKED_NATIVE_ADMISSION` |
| 56 | `theorem` | [biproduct.bicone_ι](declarations/biproduct-bicone-source-edition-3.md) | 424 | `BLOCKED_NATIVE_ADMISSION` |
| 57 | `theorem` | [biproduct.ι_π](declarations/biproduct-source-edition-2.md) | 430 | `BLOCKED_NATIVE_ADMISSION` |
| 58 | `theorem` | [biproduct.ι_π_self](declarations/biproduct-self.md) | 435 | `BLOCKED_NATIVE_ADMISSION` |
| 59 | `theorem` | [biproduct.ι_π_ne](declarations/biproduct-ne.md) | 439 | `BLOCKED_NATIVE_ADMISSION` |
| 60 | `theorem` | [biproduct.eqToHom_comp_ι](declarations/biproduct-eqtohom-comp.md) | 447 | `BLOCKED_NATIVE_ADMISSION` |
| 61 | `theorem` | [biproduct.π_comp_eqToHom](declarations/biproduct-comp-eqtohom.md) | 457 | `BLOCKED_NATIVE_ADMISSION` |
| 62 | `abbrev` | [biproduct.lift](declarations/biproduct-lift-source-edition-2.md) | 463 | `BLOCKED_NATIVE_ADMISSION` |
| 63 | `abbrev` | [biproduct.desc](declarations/biproduct-desc.md) | 467 | `BLOCKED_NATIVE_ADMISSION` |
| 64 | `theorem` | [biproduct.lift_π](declarations/biproduct-lift.md) | 471 | `BLOCKED_NATIVE_ADMISSION` |
| 65 | `theorem` | [biproduct.ι_desc](declarations/biproduct-desc-source-edition-2.md) | 475 | `BLOCKED_NATIVE_ADMISSION` |
| 66 | `abbrev` | [biproduct.map](declarations/biproduct-map-source-edition-3.md) | 480 | `BLOCKED_NATIVE_ADMISSION` |
| 67 | `abbrev` | [biproduct.map'](declarations/biproduct-map-source-edition-2.md) | 487 | `BLOCKED_NATIVE_ADMISSION` |
| 68 | `theorem` | [biproduct.hom_ext](declarations/biproduct-hom-ext.md) | 495 | `BLOCKED_NATIVE_ADMISSION` |
| 69 | `theorem` | [biproduct.hom_ext'](declarations/biproduct-hom-ext-source-edition-2.md) | 500 | `BLOCKED_NATIVE_ADMISSION` |
| 70 | `def` | [biproduct.isoProduct](declarations/biproduct-isoproduct.md) | 505 | `BLOCKED_NATIVE_ADMISSION` |
| 71 | `theorem` | [biproduct.isoProduct_hom](declarations/biproduct-isoproduct-hom.md) | 509 | `BLOCKED_NATIVE_ADMISSION` |
| 72 | `theorem` | [biproduct.isoProduct_inv](declarations/biproduct-isoproduct-inv.md) | 514 | `BLOCKED_NATIVE_ADMISSION` |
| 73 | `def` | [biproduct.isoCoproduct](declarations/biproduct-isocoproduct.md) | 519 | `BLOCKED_NATIVE_ADMISSION` |
| 74 | `theorem` | [biproduct.isoCoproduct_inv](declarations/biproduct-isocoproduct-inv.md) | 523 | `BLOCKED_NATIVE_ADMISSION` |
| 75 | `theorem` | [biproduct.isoCoproduct_hom](declarations/biproduct-isocoproduct-hom.md) | 528 | `BLOCKED_NATIVE_ADMISSION` |
| 76 | `def` | [HasBiproductsOfShape.colimIsoLim](declarations/hasbiproductsofshape-colimisolim.md) | 535 | `BLOCKED_NATIVE_ADMISSION` |
| 77 | `theorem` | [biproduct.map_eq_map'](declarations/biproduct-map-eq-map.md) | 544 | `BLOCKED_NATIVE_ADMISSION` |
| 78 | `theorem` | [biproduct.map_π](declarations/biproduct-map.md) | 559 | `BLOCKED_NATIVE_ADMISSION` |
| 79 | `theorem` | [biproduct.ι_map](declarations/biproduct-map-source-edition-4.md) | 564 | `BLOCKED_NATIVE_ADMISSION` |
| 80 | `theorem` | [biproduct.map_desc](declarations/biproduct-map-desc.md) | 572 | `BLOCKED_NATIVE_ADMISSION` |
| 81 | `theorem` | [biproduct.lift_map](declarations/biproduct-lift-map.md) | 578 | `BLOCKED_NATIVE_ADMISSION` |
| 82 | `def` | [biproduct.mapIso](declarations/biproduct-mapiso.md) | 586 | `BLOCKED_NATIVE_ADMISSION` |
| 83 | `instance` | [biproduct.map_epi](declarations/biproduct-map-epi.md) | 591 | `BLOCKED_NATIVE_ADMISSION` |
| 84 | `instance` | [Pi.map_epi](declarations/pi-map-epi.md) | 605 | `BLOCKED_NATIVE_ADMISSION` |
| 85 | `instance` | [biproduct.map_mono](declarations/biproduct-map-mono.md) | 611 | `BLOCKED_NATIVE_ADMISSION` |
| 86 | `instance` | [Sigma.map_mono](declarations/sigma-map-mono.md) | 617 | `BLOCKED_NATIVE_ADMISSION` |
| 87 | `def` | [biproduct.whiskerEquiv](declarations/biproduct-whiskerequiv.md) | 630 | `BLOCKED_NATIVE_ADMISSION` |
| 88 | `lemma` | [biproduct.whiskerEquiv_hom_eq_lift](declarations/biproduct-whiskerequiv-hom-eq-lift.md) | 635 | `BLOCKED_NATIVE_ADMISSION` |
| 89 | `lemma` | [biproduct.whiskerEquiv_inv_eq_lift](declarations/biproduct-whiskerequiv-inv-eq-lift.md) | 651 | `BLOCKED_NATIVE_ADMISSION` |
| 90 | `instance` | [(anonymous)](declarations/instance-source-edition-13.md) | 670 | `BLOCKED_NATIVE_ADMISSION` |
| 91 | `def` | [biproductBiproductIso](declarations/biproductbiproductiso.md) | 696 | `BLOCKED_NATIVE_ADMISSION` |
| 92 | `def` | [biproduct.fromSubtype](declarations/biproduct-fromsubtype-source-edition-2.md) | 711 | `BLOCKED_NATIVE_ADMISSION` |
| 93 | `def` | [biproduct.toSubtype](declarations/biproduct-tosubtype-source-edition-2.md) | 716 | `BLOCKED_NATIVE_ADMISSION` |
| 94 | `theorem` | [biproduct.fromSubtype_π](declarations/biproduct-fromsubtype.md) | 720 | `BLOCKED_NATIVE_ADMISSION` |
| 95 | `theorem` | [biproduct.fromSubtype_eq_lift](declarations/biproduct-fromsubtype-eq-lift.md) | 732 | `BLOCKED_NATIVE_ADMISSION` |
| 96 | `theorem` | [biproduct.fromSubtype_π_subtype](declarations/biproduct-fromsubtype-subtype.md) | 738 | `BLOCKED_NATIVE_ADMISSION` |
| 97 | `theorem` | [biproduct.toSubtype_π](declarations/biproduct-tosubtype-source-edition-3.md) | 747 | `BLOCKED_NATIVE_ADMISSION` |
| 98 | `theorem` | [biproduct.ι_toSubtype](declarations/biproduct-tosubtype.md) | 752 | `BLOCKED_NATIVE_ADMISSION` |
| 99 | `theorem` | [biproduct.toSubtype_eq_desc](declarations/biproduct-tosubtype-eq-desc.md) | 764 | `BLOCKED_NATIVE_ADMISSION` |
| 100 | `theorem` | [biproduct.ι_toSubtype_subtype](declarations/biproduct-tosubtype-subtype.md) | 770 | `BLOCKED_NATIVE_ADMISSION` |
| 101 | `theorem` | [biproduct.ι_fromSubtype](declarations/biproduct-fromsubtype-source-edition-3.md) | 779 | `BLOCKED_NATIVE_ADMISSION` |
| 102 | `theorem` | [biproduct.fromSubtype_toSubtype](declarations/biproduct-fromsubtype-tosubtype.md) | 784 | `BLOCKED_NATIVE_ADMISSION` |
| 103 | `theorem` | [biproduct.toSubtype_fromSubtype](declarations/biproduct-tosubtype-fromsubtype.md) | 790 | `BLOCKED_NATIVE_ADMISSION` |
| 104 | `def` | [biproduct.isLimitFromSubtype](declarations/biproduct-islimitfromsubtype.md) | 807 | `BLOCKED_NATIVE_ADMISSION` |
| 105 | `instance` | [(anonymous)](declarations/instance-source-edition-3.md) | 822 | `BLOCKED_NATIVE_ADMISSION` |
| 106 | `def` | [kernelBiproductπIso](declarations/kernelbiproduct-iso.md) | 827 | `BLOCKED_NATIVE_ADMISSION` |
| 107 | `def` | [biproduct.isColimitToSubtype](declarations/biproduct-iscolimittosubtype.md) | 833 | `BLOCKED_NATIVE_ADMISSION` |
| 108 | `instance` | [(anonymous)](declarations/instance-source-edition-9.md) | 847 | `BLOCKED_NATIVE_ADMISSION` |
| 109 | `def` | [cokernelBiproductιIso](declarations/cokernelbiproduct-iso.md) | 852 | `BLOCKED_NATIVE_ADMISSION` |
| 110 | `def` | [kernelForkBiproductToSubtype](declarations/kernelforkbiproducttosubtype.md) | 865 | `BLOCKED_NATIVE_ADMISSION` |
| 111 | `instance` | [(anonymous)](declarations/instance-source-edition-7.md) | 890 | `BLOCKED_NATIVE_ADMISSION` |
| 112 | `def` | [kernelBiproductToSubtypeIso](declarations/kernelbiproducttosubtypeiso.md) | 895 | `BLOCKED_NATIVE_ADMISSION` |
| 113 | `def` | [cokernelCoforkBiproductFromSubtype](declarations/cokernelcoforkbiproductfromsubtype.md) | 902 | `BLOCKED_NATIVE_ADMISSION` |
| 114 | `instance` | [(anonymous)](declarations/instance-source-edition-4.md) | 927 | `BLOCKED_NATIVE_ADMISSION` |
| 115 | `def` | [cokernelBiproductFromSubtypeIso](declarations/cokernelbiproductfromsubtypeiso.md) | 932 | `BLOCKED_NATIVE_ADMISSION` |
| 116 | `def` | [biproduct.matrix](declarations/biproduct-matrix-source-edition-3.md) | 946 | `BLOCKED_NATIVE_ADMISSION` |
| 117 | `theorem` | [biproduct.matrix_π](declarations/biproduct-matrix.md) | 950 | `BLOCKED_NATIVE_ADMISSION` |
| 118 | `theorem` | [biproduct.ι_matrix](declarations/biproduct-matrix-source-edition-2.md) | 956 | `BLOCKED_NATIVE_ADMISSION` |
| 119 | `def` | [biproduct.components](declarations/biproduct-components.md) | 962 | `BLOCKED_NATIVE_ADMISSION` |
| 120 | `theorem` | [biproduct.matrix_components](declarations/biproduct-matrix-components.md) | 966 | `BLOCKED_NATIVE_ADMISSION` |
| 121 | `theorem` | [biproduct.components_matrix](declarations/biproduct-components-matrix.md) | 970 | `BLOCKED_NATIVE_ADMISSION` |
| 122 | `def` | [biproduct.matrixEquiv](declarations/biproduct-matrixequiv.md) | 977 | `BLOCKED_NATIVE_ADMISSION` |
| 123 | `instance` | [biproduct.ι_mono](declarations/biproduct-mono.md) | 991 | `BLOCKED_NATIVE_ADMISSION` |
| 124 | `instance` | [biproduct.π_epi](declarations/biproduct-epi.md) | 994 | `BLOCKED_NATIVE_ADMISSION` |
| 125 | `theorem` | [biproduct.conePointUniqueUpToIso_hom](declarations/biproduct-conepointuniqueuptoiso-hom.md) | 998 | `BLOCKED_NATIVE_ADMISSION` |
| 126 | `theorem` | [biproduct.conePointUniqueUpToIso_inv](declarations/biproduct-conepointuniqueuptoiso-inv.md) | 1004 | `BLOCKED_NATIVE_ADMISSION` |
| 127 | `def` | [biproduct.uniqueUpToIso](declarations/biproduct-uniqueuptoiso.md) | 1017 | `BLOCKED_NATIVE_ADMISSION` |
| 128 | `instance` | [(anonymous)](declarations/instance-source-edition-10.md) | 1032 | `BLOCKED_NATIVE_ADMISSION` |
| 129 | `def` | [limitBiconeOfUnique](declarations/limitbiconeofunique.md) | 1045 | `BLOCKED_NATIVE_ADMISSION` |
| 130 | `instance` | [(anonymous)](declarations/instance-source-edition-6.md) | 1054 | `BLOCKED_NATIVE_ADMISSION` |
| 131 | `def` | [biproductUniqueIso](declarations/biproductuniqueiso.md) | 1060 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=70d2f2d0bd5109087fdfea871756515b008bec274be8df3f92ba82b30f0385c2 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Biproducts/Variant33830de11a2f18da805b87652974b0afe8386ef8e709f26a97b62c95fd80ab3c.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
