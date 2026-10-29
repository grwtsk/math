# Limits Shapes Products Cofan Mk Inj

[Complete source index](../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**117 observed declarations and anonymous commands**, 50 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Products/Variant0dc11b9270118a734811c96065659984f95dd82504f6cd1bd5253950d3364557.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `8c8ebddb92a25b690a254e3470bb72146f10ddff`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LimitsShapesProductsCofanMkInj.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `abbrev` | [Fan](declarations/fan.md) | 49 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `abbrev` | [Cofan](declarations/cofan.md) | 53 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `def` | [Fan.mk](declarations/fan-mk.md) | 58 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `def` | [Cofan.mk](declarations/cofan-mk.md) | 64 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `def` | [Fan.proj](declarations/fan-proj.md) | 70 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `def` | [Cofan.inj](declarations/cofan-inj.md) | 75 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [fan_mk_proj](declarations/fan-mk-proj.md) | 79 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [cofan_mk_inj](declarations/cofan-mk-inj.md) | 83 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `abbrev` | [HasProduct](declarations/hasproduct.md) | 87 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `abbrev` | [HasCoproduct](declarations/hascoproduct.md) | 91 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `lemma` | [hasCoproduct_of_equiv_of_iso](declarations/hascoproduct-of-equiv-of-iso.md) | 94 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `lemma` | [hasProduct_of_equiv_of_iso](declarations/hasproduct-of-equiv-of-iso.md) | 102 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `def` | [mkFanLimit](declarations/mkfanlimit.md) | 113 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `def` | [Fan.IsLimit.desc](declarations/fan-islimit-desc.md) | 121 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `lemma` | [Fan.IsLimit.fac](declarations/fan-islimit-fac.md) | 126 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `lemma` | [Fan.IsLimit.hom_ext](declarations/fan-islimit-hom-ext.md) | 131 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `def` | [mkCofanColimit](declarations/mkcofancolimit.md) | 138 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `def` | [Cofan.IsColimit.desc](declarations/cofan-iscolimit-desc.md) | 146 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `lemma` | [Cofan.IsColimit.fac](declarations/cofan-iscolimit-fac.md) | 151 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `lemma` | [Cofan.IsColimit.hom_ext](declarations/cofan-iscolimit-hom-ext.md) | 156 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `abbrev` | [HasProductsOfShape](declarations/hasproductsofshape.md) | 165 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `abbrev` | [HasCoproductsOfShape](declarations/hascoproductsofshape.md) | 169 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `abbrev` | [piObj](declarations/piobj.md) | 177 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `abbrev` | [sigmaObj](declarations/sigmaobj.md) | 183 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `abbrev` | [Pi.π](declarations/pi.md) | 193 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `abbrev` | [Sigma.ι](declarations/sigma.md) | 197 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `lemma` | [Pi.hom_ext](declarations/pi-hom-ext.md) | 204 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `lemma` | [Sigma.hom_ext](declarations/sigma-hom-ext.md) | 209 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `def` | [productIsProduct](declarations/productisproduct.md) | 214 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `def` | [coproductIsCoproduct](declarations/coproductiscoproduct.md) | 218 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [Pi.π_comp_eqToHom](declarations/pi-comp-eqtohom.md) | 226 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [Sigma.eqToHom_comp_ι](declarations/sigma-eqtohom-comp.md) | 236 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `abbrev` | [Pi.lift](declarations/pi-lift-source-edition-2.md) | 242 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [Pi.lift_π](declarations/pi-lift.md) | 245 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `def` | [Fan.ext](declarations/fan-ext.md) | 251 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `abbrev` | [Sigma.desc](declarations/sigma-desc-source-edition-2.md) | 256 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `theorem` | [Sigma.ι_desc](declarations/sigma-desc.md) | 259 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `instance` | [(anonymous)](declarations/instance-source-edition-6.md) | 263 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `def` | [Cofan.ext](declarations/cofan-ext.md) | 270 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `def` | [Cofan.isColimitOfIsIsoSigmaDesc](declarations/cofan-iscolimitofisisosigmadesc.md) | 275 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `lemma` | [Cofan.isColimit_iff_isIso_sigmaDesc](declarations/cofan-iscolimit-iff-isiso-sigmadesc.md) | 280 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `def` | [Cofan.isColimitTrans](declarations/cofan-iscolimittrans.md) | 295 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `abbrev` | [Pi.map](declarations/pi-map-source-edition-2.md) | 314 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `lemma` | [Pi.map_id](declarations/pi-map-id-source-edition-2.md) | 318 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `lemma` | [Pi.map_comp_map](declarations/pi-map-comp-map-source-edition-2.md) | 321 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `instance` | [Pi.map_mono](declarations/pi-map-mono.md) | 326 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `def` | [Pi.map'](declarations/pi-map.md) | 333 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `lemma` | [Pi.map'_comp_π](declarations/pi-map-comp.md) | 338 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `lemma` | [Pi.map'_id_id](declarations/pi-map-id-id.md) | 342 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `lemma` | [Pi.map'_id](declarations/pi-map-id.md) | 346 | `BLOCKED_NATIVE_ADMISSION` |
| 51 | `lemma` | [Pi.map'_comp_map'](declarations/pi-map-comp-map-source-edition-3.md) | 350 | `BLOCKED_NATIVE_ADMISSION` |
| 52 | `lemma` | [Pi.map'_comp_map](declarations/pi-map-comp-map.md) | 356 | `BLOCKED_NATIVE_ADMISSION` |
| 53 | `lemma` | [Pi.map_comp_map'](declarations/pi-map-comp-map-source-edition-4.md) | 361 | `BLOCKED_NATIVE_ADMISSION` |
| 54 | `lemma` | [Pi.map'_eq](declarations/pi-map-eq.md) | 366 | `BLOCKED_NATIVE_ADMISSION` |
| 55 | `abbrev` | [Pi.mapIso](declarations/pi-mapiso.md) | 374 | `BLOCKED_NATIVE_ADMISSION` |
| 56 | `instance` | [Pi.map_isIso](declarations/pi-map-isiso.md) | 377 | `BLOCKED_NATIVE_ADMISSION` |
| 57 | `def` | [Pi.cone](declarations/pi-cone.md) | 391 | `BLOCKED_NATIVE_ADMISSION` |
| 58 | `def` | [productIsProduct'](declarations/productisproduct-source-edition-2.md) | 396 | `BLOCKED_NATIVE_ADMISSION` |
| 59 | `def` | [Pi.isoLimit](declarations/pi-isolimit.md) | 409 | `BLOCKED_NATIVE_ADMISSION` |
| 60 | `lemma` | [Pi.isoLimit_inv_π](declarations/pi-isolimit-inv.md) | 414 | `BLOCKED_NATIVE_ADMISSION` |
| 61 | `lemma` | [Pi.isoLimit_hom_π](declarations/pi-isolimit-hom.md) | 419 | `BLOCKED_NATIVE_ADMISSION` |
| 62 | `abbrev` | [Sigma.map](declarations/sigma-map.md) | 428 | `BLOCKED_NATIVE_ADMISSION` |
| 63 | `lemma` | [Sigma.map_id](declarations/sigma-map-id.md) | 433 | `BLOCKED_NATIVE_ADMISSION` |
| 64 | `lemma` | [Sigma.map_comp_map](declarations/sigma-map-comp-map.md) | 436 | `BLOCKED_NATIVE_ADMISSION` |
| 65 | `instance` | [Sigma.map_epi](declarations/sigma-map-epi.md) | 441 | `BLOCKED_NATIVE_ADMISSION` |
| 66 | `def` | [Sigma.map'](declarations/sigma-map-source-edition-2.md) | 448 | `BLOCKED_NATIVE_ADMISSION` |
| 67 | `lemma` | [Sigma.ι_comp_map'](declarations/sigma-comp-map.md) | 453 | `BLOCKED_NATIVE_ADMISSION` |
| 68 | `lemma` | [Sigma.map'_id_id](declarations/sigma-map-id-id.md) | 458 | `BLOCKED_NATIVE_ADMISSION` |
| 69 | `lemma` | [Sigma.map'_id](declarations/sigma-map-id-source-edition-2.md) | 463 | `BLOCKED_NATIVE_ADMISSION` |
| 70 | `lemma` | [Sigma.map'_comp_map'](declarations/sigma-map-comp-map-source-edition-3.md) | 467 | `BLOCKED_NATIVE_ADMISSION` |
| 71 | `lemma` | [Sigma.map'_comp_map](declarations/sigma-map-comp-map-source-edition-2.md) | 473 | `BLOCKED_NATIVE_ADMISSION` |
| 72 | `lemma` | [Sigma.map_comp_map'](declarations/sigma-map-comp-map-source-edition-4.md) | 478 | `BLOCKED_NATIVE_ADMISSION` |
| 73 | `lemma` | [Sigma.map'_eq](declarations/sigma-map-eq.md) | 483 | `BLOCKED_NATIVE_ADMISSION` |
| 74 | `abbrev` | [Sigma.mapIso](declarations/sigma-mapiso.md) | 492 | `BLOCKED_NATIVE_ADMISSION` |
| 75 | `instance` | [Sigma.map_isIso](declarations/sigma-map-isiso.md) | 495 | `BLOCKED_NATIVE_ADMISSION` |
| 76 | `def` | [Sigma.cocone](declarations/sigma-cocone.md) | 509 | `BLOCKED_NATIVE_ADMISSION` |
| 77 | `def` | [coproductIsCoproduct'](declarations/coproductiscoproduct-source-edition-2.md) | 514 | `BLOCKED_NATIVE_ADMISSION` |
| 78 | `def` | [Sigma.isoColimit](declarations/sigma-isocolimit.md) | 527 | `BLOCKED_NATIVE_ADMISSION` |
| 79 | `lemma` | [Sigma.ι_isoColimit_hom](declarations/sigma-isocolimit-hom.md) | 532 | `BLOCKED_NATIVE_ADMISSION` |
| 80 | `lemma` | [Sigma.ι_isoColimit_inv](declarations/sigma-isocolimit-inv.md) | 537 | `BLOCKED_NATIVE_ADMISSION` |
| 81 | `def` | [Pi.whiskerEquiv](declarations/pi-whiskerequiv.md) | 547 | `BLOCKED_NATIVE_ADMISSION` |
| 82 | `def` | [Sigma.whiskerEquiv](declarations/sigma-whiskerequiv.md) | 556 | `BLOCKED_NATIVE_ADMISSION` |
| 83 | `instance` | [(anonymous)](declarations/instance.md) | 563 | `BLOCKED_NATIVE_ADMISSION` |
| 84 | `def` | [piPiIso](declarations/pipiiso.md) | 574 | `BLOCKED_NATIVE_ADMISSION` |
| 85 | `instance` | [(anonymous)](declarations/instance-source-edition-3.md) | 582 | `BLOCKED_NATIVE_ADMISSION` |
| 86 | `def` | [sigmaSigmaIso](declarations/sigmasigmaiso.md) | 595 | `BLOCKED_NATIVE_ADMISSION` |
| 87 | `def` | [piComparison](declarations/picomparison.md) | 608 | `BLOCKED_NATIVE_ADMISSION` |
| 88 | `theorem` | [piComparison_comp_π](declarations/picomparison-comp.md) | 613 | `BLOCKED_NATIVE_ADMISSION` |
| 89 | `theorem` | [map_lift_piComparison](declarations/map-lift-picomparison.md) | 618 | `BLOCKED_NATIVE_ADMISSION` |
| 90 | `def` | [sigmaComparison](declarations/sigmacomparison.md) | 626 | `BLOCKED_NATIVE_ADMISSION` |
| 91 | `theorem` | [ι_comp_sigmaComparison](declarations/comp-sigmacomparison.md) | 631 | `BLOCKED_NATIVE_ADMISSION` |
| 92 | `theorem` | [sigmaComparison_map_desc](declarations/sigmacomparison-map-desc.md) | 636 | `BLOCKED_NATIVE_ADMISSION` |
| 93 | `abbrev` | [HasProducts](declarations/hasproducts.md) | 648 | `BLOCKED_NATIVE_ADMISSION` |
| 94 | `abbrev` | [HasCoproducts](declarations/hascoproducts.md) | 652 | `BLOCKED_NATIVE_ADMISSION` |
| 95 | `lemma` | [hasProducts_shrink](declarations/hasproducts-shrink.md) | 657 | `BLOCKED_NATIVE_ADMISSION` |
| 96 | `lemma` | [hasCoproducts_shrink](declarations/hascoproducts-shrink.md) | 660 | `BLOCKED_NATIVE_ADMISSION` |
| 97 | `theorem` | [has_smallest_products_of_hasProducts](declarations/has-smallest-products-of-hasproducts.md) | 663 | `BLOCKED_NATIVE_ADMISSION` |
| 98 | `theorem` | [has_smallest_coproducts_of_hasCoproducts](declarations/has-smallest-coproducts-of-hascoproducts.md) | 666 | `BLOCKED_NATIVE_ADMISSION` |
| 99 | `theorem` | [hasProducts_of_limit_fans](declarations/hasproducts-of-limit-fans.md) | 669 | `BLOCKED_NATIVE_ADMISSION` |
| 100 | `instance` | [(anonymous)](declarations/instance-source-edition-7.md) | 677 | `BLOCKED_NATIVE_ADMISSION` |
| 101 | `instance` | [(anonymous)](declarations/instance-source-edition-2.md) | 680 | `BLOCKED_NATIVE_ADMISSION` |
| 102 | `def` | [piConst](declarations/piconst.md) | 686 | `BLOCKED_NATIVE_ADMISSION` |
| 103 | `def` | [piConstAdj](declarations/piconstadj.md) | 691 | `BLOCKED_NATIVE_ADMISSION` |
| 104 | `def` | [sigmaConst](declarations/sigmaconst.md) | 701 | `BLOCKED_NATIVE_ADMISSION` |
| 105 | `def` | [sigmaConstAdj](declarations/sigmaconstadj.md) | 706 | `BLOCKED_NATIVE_ADMISSION` |
| 106 | `def` | [limitConeOfUnique](declarations/limitconeofunique.md) | 720 | `BLOCKED_NATIVE_ADMISSION` |
| 107 | `instance` | [(anonymous)](declarations/instance-source-edition-5.md) | 737 | `BLOCKED_NATIVE_ADMISSION` |
| 108 | `def` | [productUniqueIso](declarations/productuniqueiso.md) | 743 | `BLOCKED_NATIVE_ADMISSION` |
| 109 | `def` | [colimitCoconeOfUnique](declarations/colimitcoconeofunique.md) | 748 | `BLOCKED_NATIVE_ADMISSION` |
| 110 | `instance` | [(anonymous)](declarations/instance-source-edition-4.md) | 766 | `BLOCKED_NATIVE_ADMISSION` |
| 111 | `def` | [coproductUniqueIso](declarations/coproductuniqueiso.md) | 772 | `BLOCKED_NATIVE_ADMISSION` |
| 112 | `def` | [Pi.reindex](declarations/pi-reindex.md) | 786 | `BLOCKED_NATIVE_ADMISSION` |
| 113 | `theorem` | [Pi.reindex_hom_π](declarations/pi-reindex-hom.md) | 790 | `BLOCKED_NATIVE_ADMISSION` |
| 114 | `theorem` | [Pi.reindex_inv_π](declarations/pi-reindex-inv.md) | 798 | `BLOCKED_NATIVE_ADMISSION` |
| 115 | `def` | [Sigma.reindex](declarations/sigma-reindex.md) | 808 | `BLOCKED_NATIVE_ADMISSION` |
| 116 | `theorem` | [Sigma.ι_reindex_hom](declarations/sigma-reindex-hom.md) | 812 | `BLOCKED_NATIVE_ADMISSION` |
| 117 | `theorem` | [Sigma.ι_reindex_inv](declarations/sigma-reindex-inv.md) | 824 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=8f03c1d666d833af94445e279f1fb07e8bd00ce7cd2119791de891ace19f1c25 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Products/Variant0dc11b9270118a734811c96065659984f95dd82504f6cd1bd5253950d3364557.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
