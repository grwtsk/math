# Limits Shapes Biproducts Namespaced Public

[Complete source index](../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**134 observed declarations and anonymous commands**, 53 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Biproducts/Variant5c804856daf747c8930445512c28341e06dda8b349ca09437a417777d2058d89.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `66990e6754db8257b74b03ff902a079801fc2f6c`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LimitsShapesBiproductsNamespacedPublic.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `structure` | [Bicone](declarations/bicone.md) | 71 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `theorem` | [bicone_ι_π_self](declarations/bicone-self.md) | 81 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `theorem` | [bicone_ι_π_ne](declarations/bicone-ne.md) | 85 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `structure` | [BiconeMorphism](declarations/biconemorphism.md) | 92 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `instance` | [Bicone.category](declarations/bicone-category.md) | 104 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [BiconeMorphism.ext](declarations/biconemorphism-ext.md) | 113 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `def` | [ext](declarations/ext.md) | 124 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `def` | [functoriality](declarations/functoriality.md) | 136 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `instance` | [functoriality_full](declarations/functoriality-full.md) | 153 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `instance` | [functoriality_faithful](declarations/functoriality-faithful.md) | 160 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `def` | [toConeFunctor](declarations/toconefunctor.md) | 176 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `abbrev` | [toCone](declarations/tocone.md) | 181 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [toCone_pt](declarations/tocone-pt.md) | 185 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [toCone_π_app](declarations/tocone-app.md) | 187 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [toCone_π_app_mk](declarations/tocone-app-mk.md) | 189 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [toCone_proj](declarations/tocone-proj.md) | 191 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `def` | [toCoconeFunctor](declarations/tococonefunctor.md) | 195 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `abbrev` | [toCocone](declarations/tococone.md) | 200 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [toCocone_pt](declarations/tococone-pt.md) | 202 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [toCocone_ι_app](declarations/tococone-app.md) | 205 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [toCocone_inj](declarations/tococone-inj.md) | 207 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [toCocone_ι_app_mk](declarations/tococone-app-mk.md) | 209 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `def` | [retract](declarations/retract.md) | 212 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `instance` | [(anonymous)](declarations/instance-source-edition-8.md) | 216 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `instance` | [(anonymous)](declarations/instance-source-edition-10.md) | 218 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `def` | [ofLimitCone](declarations/oflimitcone.md) | 223 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [ι_of_isLimit](declarations/of-islimit.md) | 230 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `def` | [ofColimitCocone](declarations/ofcolimitcocone.md) | 239 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [π_of_isColimit](declarations/of-iscolimit.md) | 247 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `structure` | [IsBilimit](declarations/isbilimit.md) | 254 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `instance` | [subsingleton_isBilimit](declarations/subsingleton-isbilimit.md) | 264 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `def` | [whisker](declarations/whisker.md) | 273 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `def` | [whiskerToCone](declarations/whiskertocone.md) | 285 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `def` | [whiskerToCocone](declarations/whiskertococone.md) | 295 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `def` | [whiskerIsBilimitIff](declarations/whiskerisbilimitiff.md) | 302 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `structure` | [LimitBicone](declarations/limitbicone.md) | 323 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `class` | [HasBiproduct](declarations/hasbiproduct.md) | 331 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `theorem` | [HasBiproduct.mk](declarations/hasbiproduct-mk.md) | 336 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `def` | [getBiproductData](declarations/getbiproductdata.md) | 340 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `def` | [biproduct.bicone](declarations/biproduct-bicone-source-edition-2.md) | 344 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `def` | [biproduct.isBilimit](declarations/biproduct-isbilimit.md) | 348 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `def` | [biproduct.isLimit](declarations/biproduct-islimit.md) | 352 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `def` | [biproduct.isColimit](declarations/biproduct-iscolimit.md) | 356 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `instance` | [(anonymous)](declarations/instance-source-edition-16.md) | 359 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `instance` | [(anonymous)](declarations/instance-source-edition-12.md) | 364 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `class` | [HasBiproductsOfShape](declarations/hasbiproductsofshape.md) | 374 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `class` | [HasFiniteBiproducts](declarations/hasfinitebiproducts.md) | 381 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `theorem` | [hasBiproductsOfShape_of_equiv](declarations/hasbiproductsofshape-of-equiv.md) | 388 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `instance` | [(anonymous)](declarations/instance-source-edition-6.md) | 397 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `instance` | [(anonymous)](declarations/instance-source-edition-9.md) | 403 | `BLOCKED_NATIVE_ADMISSION` |
| 51 | `instance` | [(anonymous)](declarations/instance-source-edition-4.md) | 407 | `BLOCKED_NATIVE_ADMISSION` |
| 52 | `instance` | [(anonymous)](declarations/instance-source-edition-14.md) | 411 | `BLOCKED_NATIVE_ADMISSION` |
| 53 | `instance` | [(anonymous)](declarations/instance-source-edition-11.md) | 415 | `BLOCKED_NATIVE_ADMISSION` |
| 54 | `def` | [biproductIso](declarations/biproductiso.md) | 423 | `BLOCKED_NATIVE_ADMISSION` |
| 55 | `abbrev` | [biproduct](declarations/biproduct-source-edition-4.md) | 433 | `BLOCKED_NATIVE_ADMISSION` |
| 56 | `abbrev` | [biproduct.π](declarations/biproduct-source-edition-3.md) | 440 | `BLOCKED_NATIVE_ADMISSION` |
| 57 | `theorem` | [biproduct.bicone_π](declarations/biproduct-bicone-source-edition-3.md) | 444 | `BLOCKED_NATIVE_ADMISSION` |
| 58 | `abbrev` | [biproduct.ι](declarations/biproduct-source-edition-2.md) | 448 | `BLOCKED_NATIVE_ADMISSION` |
| 59 | `theorem` | [biproduct.bicone_ι](declarations/biproduct-bicone.md) | 452 | `BLOCKED_NATIVE_ADMISSION` |
| 60 | `theorem` | [biproduct.ι_π](declarations/biproduct.md) | 458 | `BLOCKED_NATIVE_ADMISSION` |
| 61 | `theorem` | [biproduct.ι_π_self](declarations/biproduct-self.md) | 463 | `BLOCKED_NATIVE_ADMISSION` |
| 62 | `theorem` | [biproduct.ι_π_ne](declarations/biproduct-ne.md) | 467 | `BLOCKED_NATIVE_ADMISSION` |
| 63 | `theorem` | [biproduct.eqToHom_comp_ι](declarations/biproduct-eqtohom-comp.md) | 471 | `BLOCKED_NATIVE_ADMISSION` |
| 64 | `theorem` | [biproduct.π_comp_eqToHom](declarations/biproduct-comp-eqtohom.md) | 479 | `BLOCKED_NATIVE_ADMISSION` |
| 65 | `abbrev` | [biproduct.lift](declarations/biproduct-lift.md) | 484 | `BLOCKED_NATIVE_ADMISSION` |
| 66 | `abbrev` | [biproduct.desc](declarations/biproduct-desc-source-edition-2.md) | 488 | `BLOCKED_NATIVE_ADMISSION` |
| 67 | `theorem` | [biproduct.lift_π](declarations/biproduct-lift-source-edition-2.md) | 492 | `BLOCKED_NATIVE_ADMISSION` |
| 68 | `theorem` | [biproduct.ι_desc](declarations/biproduct-desc.md) | 496 | `BLOCKED_NATIVE_ADMISSION` |
| 69 | `abbrev` | [biproduct.map](declarations/biproduct-map-source-edition-2.md) | 501 | `BLOCKED_NATIVE_ADMISSION` |
| 70 | `abbrev` | [biproduct.map'](declarations/biproduct-map-source-edition-4.md) | 508 | `BLOCKED_NATIVE_ADMISSION` |
| 71 | `theorem` | [biproduct.hom_ext](declarations/biproduct-hom-ext-source-edition-2.md) | 516 | `BLOCKED_NATIVE_ADMISSION` |
| 72 | `theorem` | [biproduct.hom_ext'](declarations/biproduct-hom-ext.md) | 521 | `BLOCKED_NATIVE_ADMISSION` |
| 73 | `def` | [biproduct.isoProduct](declarations/biproduct-isoproduct.md) | 526 | `BLOCKED_NATIVE_ADMISSION` |
| 74 | `theorem` | [biproduct.isoProduct_hom](declarations/biproduct-isoproduct-hom.md) | 531 | `BLOCKED_NATIVE_ADMISSION` |
| 75 | `theorem` | [biproduct.isoProduct_inv](declarations/biproduct-isoproduct-inv.md) | 536 | `BLOCKED_NATIVE_ADMISSION` |
| 76 | `def` | [biproduct.isoCoproduct](declarations/biproduct-isocoproduct.md) | 541 | `BLOCKED_NATIVE_ADMISSION` |
| 77 | `theorem` | [biproduct.isoCoproduct_inv](declarations/biproduct-isocoproduct-inv.md) | 546 | `BLOCKED_NATIVE_ADMISSION` |
| 78 | `theorem` | [biproduct.isoCoproduct_hom](declarations/biproduct-isocoproduct-hom.md) | 551 | `BLOCKED_NATIVE_ADMISSION` |
| 79 | `def` | [HasBiproductsOfShape.colimIsoLim](declarations/hasbiproductsofshape-colimisolim.md) | 559 | `BLOCKED_NATIVE_ADMISSION` |
| 80 | `theorem` | [biproduct.map_eq_map'](declarations/biproduct-map-eq-map.md) | 569 | `BLOCKED_NATIVE_ADMISSION` |
| 81 | `theorem` | [biproduct.map_π](declarations/biproduct-map-source-edition-3.md) | 582 | `BLOCKED_NATIVE_ADMISSION` |
| 82 | `theorem` | [biproduct.ι_map](declarations/biproduct-map.md) | 587 | `BLOCKED_NATIVE_ADMISSION` |
| 83 | `theorem` | [biproduct.map_desc](declarations/biproduct-map-desc.md) | 595 | `BLOCKED_NATIVE_ADMISSION` |
| 84 | `theorem` | [biproduct.lift_map](declarations/biproduct-lift-map.md) | 601 | `BLOCKED_NATIVE_ADMISSION` |
| 85 | `def` | [biproduct.mapIso](declarations/biproduct-mapiso.md) | 609 | `BLOCKED_NATIVE_ADMISSION` |
| 86 | `instance` | [biproduct.map_epi](declarations/biproduct-map-epi.md) | 615 | `BLOCKED_NATIVE_ADMISSION` |
| 87 | `instance` | [Pi.map_epi](declarations/pi-map-epi.md) | 629 | `BLOCKED_NATIVE_ADMISSION` |
| 88 | `instance` | [biproduct.map_mono](declarations/biproduct-map-mono.md) | 635 | `BLOCKED_NATIVE_ADMISSION` |
| 89 | `instance` | [Sigma.map_mono](declarations/sigma-map-mono.md) | 641 | `BLOCKED_NATIVE_ADMISSION` |
| 90 | `def` | [biproduct.whiskerEquiv](declarations/biproduct-whiskerequiv.md) | 654 | `BLOCKED_NATIVE_ADMISSION` |
| 91 | `lemma` | [biproduct.whiskerEquiv_hom_eq_lift](declarations/biproduct-whiskerequiv-hom-eq-lift.md) | 659 | `BLOCKED_NATIVE_ADMISSION` |
| 92 | `lemma` | [biproduct.whiskerEquiv_inv_eq_lift](declarations/biproduct-whiskerequiv-inv-eq-lift.md) | 675 | `BLOCKED_NATIVE_ADMISSION` |
| 93 | `instance` | [(anonymous)](declarations/instance-source-edition-15.md) | 695 | `BLOCKED_NATIVE_ADMISSION` |
| 94 | `def` | [biproductBiproductIso](declarations/biproductbiproductiso.md) | 721 | `BLOCKED_NATIVE_ADMISSION` |
| 95 | `def` | [biproduct.fromSubtype](declarations/biproduct-fromsubtype-source-edition-3.md) | 736 | `BLOCKED_NATIVE_ADMISSION` |
| 96 | `def` | [biproduct.toSubtype](declarations/biproduct-tosubtype.md) | 741 | `BLOCKED_NATIVE_ADMISSION` |
| 97 | `theorem` | [biproduct.fromSubtype_π](declarations/biproduct-fromsubtype.md) | 746 | `BLOCKED_NATIVE_ADMISSION` |
| 98 | `theorem` | [biproduct.fromSubtype_eq_lift](declarations/biproduct-fromsubtype-eq-lift.md) | 758 | `BLOCKED_NATIVE_ADMISSION` |
| 99 | `theorem` | [biproduct.fromSubtype_π_subtype](declarations/biproduct-fromsubtype-subtype.md) | 765 | `BLOCKED_NATIVE_ADMISSION` |
| 100 | `theorem` | [biproduct.toSubtype_π](declarations/biproduct-tosubtype-source-edition-3.md) | 774 | `BLOCKED_NATIVE_ADMISSION` |
| 101 | `theorem` | [biproduct.ι_toSubtype](declarations/biproduct-tosubtype-source-edition-2.md) | 780 | `BLOCKED_NATIVE_ADMISSION` |
| 102 | `theorem` | [biproduct.toSubtype_eq_desc](declarations/biproduct-tosubtype-eq-desc.md) | 792 | `BLOCKED_NATIVE_ADMISSION` |
| 103 | `theorem` | [biproduct.ι_toSubtype_subtype](declarations/biproduct-tosubtype-subtype.md) | 799 | `BLOCKED_NATIVE_ADMISSION` |
| 104 | `theorem` | [biproduct.ι_fromSubtype](declarations/biproduct-fromsubtype-source-edition-2.md) | 808 | `BLOCKED_NATIVE_ADMISSION` |
| 105 | `theorem` | [biproduct.fromSubtype_toSubtype](declarations/biproduct-fromsubtype-tosubtype.md) | 814 | `BLOCKED_NATIVE_ADMISSION` |
| 106 | `theorem` | [biproduct.toSubtype_fromSubtype](declarations/biproduct-tosubtype-fromsubtype.md) | 821 | `BLOCKED_NATIVE_ADMISSION` |
| 107 | `def` | [biproduct.isLimitFromSubtype](declarations/biproduct-islimitfromsubtype.md) | 838 | `BLOCKED_NATIVE_ADMISSION` |
| 108 | `instance` | [(anonymous)](declarations/instance-source-edition-3.md) | 853 | `BLOCKED_NATIVE_ADMISSION` |
| 109 | `def` | [kernelBiproductπIso](declarations/kernelbiproduct-iso.md) | 858 | `BLOCKED_NATIVE_ADMISSION` |
| 110 | `def` | [biproduct.isColimitToSubtype](declarations/biproduct-iscolimittosubtype.md) | 864 | `BLOCKED_NATIVE_ADMISSION` |
| 111 | `instance` | [(anonymous)](declarations/instance-source-edition-7.md) | 878 | `BLOCKED_NATIVE_ADMISSION` |
| 112 | `def` | [cokernelBiproductιIso](declarations/cokernelbiproduct-iso.md) | 883 | `BLOCKED_NATIVE_ADMISSION` |
| 113 | `def` | [kernelForkBiproductToSubtype](declarations/kernelforkbiproducttosubtype.md) | 897 | `BLOCKED_NATIVE_ADMISSION` |
| 114 | `instance` | [(anonymous)](declarations/instance-source-edition-2.md) | 922 | `BLOCKED_NATIVE_ADMISSION` |
| 115 | `def` | [kernelBiproductToSubtypeIso](declarations/kernelbiproducttosubtypeiso.md) | 927 | `BLOCKED_NATIVE_ADMISSION` |
| 116 | `def` | [cokernelCoforkBiproductFromSubtype](declarations/cokernelcoforkbiproductfromsubtype.md) | 935 | `BLOCKED_NATIVE_ADMISSION` |
| 117 | `instance` | [(anonymous)](declarations/instance-source-edition-5.md) | 960 | `BLOCKED_NATIVE_ADMISSION` |
| 118 | `def` | [cokernelBiproductFromSubtypeIso](declarations/cokernelbiproductfromsubtypeiso.md) | 965 | `BLOCKED_NATIVE_ADMISSION` |
| 119 | `def` | [biproduct.matrix](declarations/biproduct-matrix-source-edition-3.md) | 979 | `BLOCKED_NATIVE_ADMISSION` |
| 120 | `theorem` | [biproduct.matrix_π](declarations/biproduct-matrix-source-edition-2.md) | 983 | `BLOCKED_NATIVE_ADMISSION` |
| 121 | `theorem` | [biproduct.ι_matrix](declarations/biproduct-matrix.md) | 989 | `BLOCKED_NATIVE_ADMISSION` |
| 122 | `def` | [biproduct.components](declarations/biproduct-components.md) | 994 | `BLOCKED_NATIVE_ADMISSION` |
| 123 | `theorem` | [biproduct.matrix_components](declarations/biproduct-matrix-components.md) | 998 | `BLOCKED_NATIVE_ADMISSION` |
| 124 | `theorem` | [biproduct.components_matrix](declarations/biproduct-components-matrix.md) | 1002 | `BLOCKED_NATIVE_ADMISSION` |
| 125 | `def` | [biproduct.matrixEquiv](declarations/biproduct-matrixequiv.md) | 1009 | `BLOCKED_NATIVE_ADMISSION` |
| 126 | `instance` | [biproduct.ι_mono](declarations/biproduct-mono.md) | 1022 | `BLOCKED_NATIVE_ADMISSION` |
| 127 | `instance` | [biproduct.π_epi](declarations/biproduct-epi.md) | 1025 | `BLOCKED_NATIVE_ADMISSION` |
| 128 | `theorem` | [biproduct.conePointUniqueUpToIso_hom](declarations/biproduct-conepointuniqueuptoiso-hom.md) | 1029 | `BLOCKED_NATIVE_ADMISSION` |
| 129 | `theorem` | [biproduct.conePointUniqueUpToIso_inv](declarations/biproduct-conepointuniqueuptoiso-inv.md) | 1036 | `BLOCKED_NATIVE_ADMISSION` |
| 130 | `def` | [biproduct.uniqueUpToIso](declarations/biproduct-uniqueuptoiso.md) | 1050 | `BLOCKED_NATIVE_ADMISSION` |
| 131 | `instance` | [(anonymous)](declarations/instance.md) | 1065 | `BLOCKED_NATIVE_ADMISSION` |
| 132 | `def` | [limitBiconeOfUnique](declarations/limitbiconeofunique.md) | 1078 | `BLOCKED_NATIVE_ADMISSION` |
| 133 | `instance` | [(anonymous)](declarations/instance-source-edition-13.md) | 1087 | `BLOCKED_NATIVE_ADMISSION` |
| 134 | `def` | [biproductUniqueIso](declarations/biproductuniqueiso.md) | 1093 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=9f59f7648e97b849deceb70c478ab51fed57d094e23fdb6c3bd7699fd7de40b8 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Biproducts/Variant5c804856daf747c8930445512c28341e06dda8b349ca09437a417777d2058d89.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
