# Limits Shapes Products Namespaced Cofan Mk Proj

[Complete source index](../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**81 observed declarations and anonymous commands**, 35 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Products/Varianted034befb749f304e194730c5fa10949ae0268d6ffedbc821d918e46df26b9fe.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `071c9f19c5ee47139c40c81fd5039fa4e9b16456`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LimitsShapesProductsNamespacedCofanMkProj.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `abbrev` | [Fan](declarations/fan.md) | 63 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `abbrev` | [Cofan](declarations/cofan.md) | 68 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `def` | [Fan.mk](declarations/fan-mk.md) | 74 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `def` | [Cofan.mk](declarations/cofan-mk.md) | 81 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `def` | [Fan.proj](declarations/fan-proj.md) | 87 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `def` | [Cofan.proj](declarations/cofan-proj.md) | 92 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [fan_mk_proj](declarations/fan-mk-proj.md) | 96 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [cofan_mk_proj](declarations/cofan-mk-proj.md) | 101 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `abbrev` | [HasProduct](declarations/hasproduct.md) | 106 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `abbrev` | [HasCoproduct](declarations/hascoproduct.md) | 111 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `def` | [mkFanLimit](declarations/mkfanlimit.md) | 118 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `def` | [mkCofanColimit](declarations/mkcofancolimit.md) | 129 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `abbrev` | [HasProductsOfShape](declarations/hasproductsofshape.md) | 141 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `abbrev` | [HasCoproductsOfShape](declarations/hascoproductsofshape.md) | 146 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `abbrev` | [piObj](declarations/piobj.md) | 155 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `abbrev` | [sigmaObj](declarations/sigmaobj.md) | 162 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `abbrev` | [Pi.π](declarations/pi.md) | 173 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `abbrev` | [Sigma.ι](declarations/sigma.md) | 178 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `lemma` | [Pi.hom_ext](declarations/pi-hom-ext.md) | 186 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `lemma` | [Sigma.hom_ext](declarations/sigma-hom-ext.md) | 191 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `def` | [productIsProduct](declarations/productisproduct.md) | 196 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `def` | [coproductIsCoproduct](declarations/coproductiscoproduct.md) | 201 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [Pi.π_comp_eqToHom](declarations/pi-comp-eqtohom.md) | 209 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [Sigma.eqToHom_comp_ι](declarations/sigma-eqtohom-comp.md) | 218 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `abbrev` | [Pi.lift](declarations/pi-lift.md) | 224 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `abbrev` | [Sigma.desc](declarations/sigma-desc.md) | 229 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `abbrev` | [Pi.map](declarations/pi-map-source-edition-2.md) | 236 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `lemma` | [Pi.map_id](declarations/pi-map-id.md) | 241 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `lemma` | [Pi.map_comp_map](declarations/pi-map-comp-map-source-edition-2.md) | 244 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `instance` | [Pi.map_mono](declarations/pi-map-mono.md) | 249 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `def` | [Pi.map'](declarations/pi-map.md) | 257 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `lemma` | [Pi.map'_comp_π](declarations/pi-map-comp.md) | 262 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `lemma` | [Pi.map'_id_id](declarations/pi-map-id-id.md) | 266 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `lemma` | [Pi.map'_id](declarations/pi-map-id-source-edition-2.md) | 270 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `lemma` | [Pi.map'_comp_map'](declarations/pi-map-comp-map.md) | 274 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `lemma` | [Pi.map'_comp_map](declarations/pi-map-comp-map-source-edition-3.md) | 280 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `lemma` | [Pi.map_comp_map'](declarations/pi-map-comp-map-source-edition-4.md) | 285 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `lemma` | [Pi.map'_eq](declarations/pi-map-eq.md) | 290 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `abbrev` | [Pi.mapIso](declarations/pi-mapiso.md) | 298 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `abbrev` | [Sigma.map](declarations/sigma-map.md) | 305 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `lemma` | [Sigma.map_id](declarations/sigma-map-id-source-edition-2.md) | 310 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `lemma` | [Sigma.map_comp_map](declarations/sigma-map-comp-map-source-edition-2.md) | 313 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `instance` | [Sigma.map_epi](declarations/sigma-map-epi.md) | 318 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `def` | [Sigma.map'](declarations/sigma-map-source-edition-2.md) | 326 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `lemma` | [Sigma.ι_comp_map'](declarations/sigma-comp-map.md) | 331 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `lemma` | [Sigma.map'_id_id](declarations/sigma-map-id-id.md) | 336 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `lemma` | [Sigma.map'_id](declarations/sigma-map-id.md) | 341 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `lemma` | [Sigma.map'_comp_map'](declarations/sigma-map-comp-map.md) | 345 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `lemma` | [Sigma.map'_comp_map](declarations/sigma-map-comp-map-source-edition-3.md) | 351 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `lemma` | [Sigma.map_comp_map'](declarations/sigma-map-comp-map-source-edition-4.md) | 356 | `BLOCKED_NATIVE_ADMISSION` |
| 51 | `lemma` | [Sigma.map'_eq](declarations/sigma-map-eq.md) | 361 | `BLOCKED_NATIVE_ADMISSION` |
| 52 | `abbrev` | [Sigma.mapIso](declarations/sigma-mapiso.md) | 370 | `BLOCKED_NATIVE_ADMISSION` |
| 53 | `def` | [Pi.whiskerEquiv](declarations/pi-whiskerequiv.md) | 378 | `BLOCKED_NATIVE_ADMISSION` |
| 54 | `def` | [Sigma.whiskerEquiv](declarations/sigma-whiskerequiv.md) | 387 | `BLOCKED_NATIVE_ADMISSION` |
| 55 | `instance` | [(anonymous)](declarations/instance-source-edition-2.md) | 392 | `BLOCKED_NATIVE_ADMISSION` |
| 56 | `def` | [piPiIso](declarations/pipiiso.md) | 401 | `BLOCKED_NATIVE_ADMISSION` |
| 57 | `instance` | [(anonymous)](declarations/instance.md) | 407 | `BLOCKED_NATIVE_ADMISSION` |
| 58 | `def` | [sigmaSigmaIso](declarations/sigmasigmaiso.md) | 418 | `BLOCKED_NATIVE_ADMISSION` |
| 59 | `def` | [piComparison](declarations/picomparison.md) | 432 | `BLOCKED_NATIVE_ADMISSION` |
| 60 | `theorem` | [piComparison_comp_π](declarations/picomparison-comp.md) | 438 | `BLOCKED_NATIVE_ADMISSION` |
| 61 | `theorem` | [map_lift_piComparison](declarations/map-lift-picomparison.md) | 444 | `BLOCKED_NATIVE_ADMISSION` |
| 62 | `def` | [sigmaComparison](declarations/sigmacomparison.md) | 453 | `BLOCKED_NATIVE_ADMISSION` |
| 63 | `theorem` | [ι_comp_sigmaComparison](declarations/comp-sigmacomparison.md) | 459 | `BLOCKED_NATIVE_ADMISSION` |
| 64 | `theorem` | [sigmaComparison_map_desc](declarations/sigmacomparison-map-desc.md) | 465 | `BLOCKED_NATIVE_ADMISSION` |
| 65 | `abbrev` | [HasProducts](declarations/hasproducts.md) | 478 | `BLOCKED_NATIVE_ADMISSION` |
| 66 | `abbrev` | [HasCoproducts](declarations/hascoproducts.md) | 483 | `BLOCKED_NATIVE_ADMISSION` |
| 67 | `theorem` | [has_smallest_products_of_hasProducts](declarations/has-smallest-products-of-hasproducts.md) | 489 | `BLOCKED_NATIVE_ADMISSION` |
| 68 | `theorem` | [has_smallest_coproducts_of_hasCoproducts](declarations/has-smallest-coproducts-of-hascoproducts.md) | 493 | `BLOCKED_NATIVE_ADMISSION` |
| 69 | `theorem` | [hasProducts_of_limit_fans](declarations/hasproducts-of-limit-fans.md) | 498 | `BLOCKED_NATIVE_ADMISSION` |
| 70 | `def` | [limitConeOfUnique](declarations/limitconeofunique.md) | 518 | `BLOCKED_NATIVE_ADMISSION` |
| 71 | `instance` | [(anonymous)](declarations/instance-source-edition-4.md) | 537 | `BLOCKED_NATIVE_ADMISSION` |
| 72 | `def` | [productUniqueIso](declarations/productuniqueiso.md) | 543 | `BLOCKED_NATIVE_ADMISSION` |
| 73 | `def` | [colimitCoconeOfUnique](declarations/colimitcoconeofunique.md) | 549 | `BLOCKED_NATIVE_ADMISSION` |
| 74 | `instance` | [(anonymous)](declarations/instance-source-edition-3.md) | 569 | `BLOCKED_NATIVE_ADMISSION` |
| 75 | `def` | [coproductUniqueIso](declarations/coproductuniqueiso.md) | 575 | `BLOCKED_NATIVE_ADMISSION` |
| 76 | `def` | [Pi.reindex](declarations/pi-reindex.md) | 590 | `BLOCKED_NATIVE_ADMISSION` |
| 77 | `theorem` | [Pi.reindex_hom_π](declarations/pi-reindex-hom.md) | 595 | `BLOCKED_NATIVE_ADMISSION` |
| 78 | `theorem` | [Pi.reindex_inv_π](declarations/pi-reindex-inv.md) | 604 | `BLOCKED_NATIVE_ADMISSION` |
| 79 | `def` | [Sigma.reindex](declarations/sigma-reindex.md) | 615 | `BLOCKED_NATIVE_ADMISSION` |
| 80 | `theorem` | [Sigma.ι_reindex_hom](declarations/sigma-reindex-hom.md) | 620 | `BLOCKED_NATIVE_ADMISSION` |
| 81 | `theorem` | [Sigma.ι_reindex_inv](declarations/sigma-reindex-inv.md) | 633 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=3f2a643038e306e686008190895f8ff78dd2dd6cd1419894f4d3b7d785bff4a5 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Products/Varianted034befb749f304e194730c5fa10949ae0268d6ffedbc821d918e46df26b9fe.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
