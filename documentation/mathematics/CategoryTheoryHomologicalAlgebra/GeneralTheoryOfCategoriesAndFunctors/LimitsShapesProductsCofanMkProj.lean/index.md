# Limits Shapes Products Cofan Mk Proj

[Complete source index](../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**81 observed declarations and anonymous commands**, 35 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Products/Variant9aff49aaab7f19d033ee4db16a023f400c3c6c2c094a77df62eb989170056445.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `e1c7a3692df46db3452b21d48c6f658eb8c28c3f`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LimitsShapesProductsCofanMkProj.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `abbrev` | [Fan](declarations/fan.md) | 55 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `abbrev` | [Cofan](declarations/cofan.md) | 60 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `def` | [Fan.mk](declarations/fan-mk.md) | 66 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `def` | [Cofan.mk](declarations/cofan-mk.md) | 73 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `def` | [Fan.proj](declarations/fan-proj.md) | 79 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `def` | [Cofan.proj](declarations/cofan-proj.md) | 84 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [fan_mk_proj](declarations/fan-mk-proj.md) | 88 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [cofan_mk_proj](declarations/cofan-mk-proj.md) | 93 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `abbrev` | [HasProduct](declarations/hasproduct.md) | 98 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `abbrev` | [HasCoproduct](declarations/hascoproduct.md) | 103 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `def` | [mkFanLimit](declarations/mkfanlimit.md) | 110 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `def` | [mkCofanColimit](declarations/mkcofancolimit.md) | 121 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `abbrev` | [HasProductsOfShape](declarations/hasproductsofshape.md) | 133 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `abbrev` | [HasCoproductsOfShape](declarations/hascoproductsofshape.md) | 138 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `abbrev` | [piObj](declarations/piobj.md) | 147 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `abbrev` | [sigmaObj](declarations/sigmaobj.md) | 154 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `abbrev` | [Pi.π](declarations/pi.md) | 165 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `abbrev` | [Sigma.ι](declarations/sigma.md) | 170 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `lemma` | [Pi.hom_ext](declarations/pi-hom-ext.md) | 178 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `lemma` | [Sigma.hom_ext](declarations/sigma-hom-ext.md) | 183 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `def` | [productIsProduct](declarations/productisproduct.md) | 188 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `def` | [coproductIsCoproduct](declarations/coproductiscoproduct.md) | 193 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [Pi.π_comp_eqToHom](declarations/pi-comp-eqtohom.md) | 201 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [Sigma.eqToHom_comp_ι](declarations/sigma-eqtohom-comp.md) | 210 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `abbrev` | [Pi.lift](declarations/pi-lift.md) | 216 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `abbrev` | [Sigma.desc](declarations/sigma-desc.md) | 221 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `abbrev` | [Pi.map](declarations/pi-map-source-edition-2.md) | 228 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `lemma` | [Pi.map_id](declarations/pi-map-id.md) | 233 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `lemma` | [Pi.map_comp_map](declarations/pi-map-comp-map-source-edition-4.md) | 236 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `instance` | [Pi.map_mono](declarations/pi-map-mono.md) | 241 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `def` | [Pi.map'](declarations/pi-map.md) | 249 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `lemma` | [Pi.map'_comp_π](declarations/pi-map-comp.md) | 254 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `lemma` | [Pi.map'_id_id](declarations/pi-map-id-id.md) | 258 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `lemma` | [Pi.map'_id](declarations/pi-map-id-source-edition-2.md) | 262 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `lemma` | [Pi.map'_comp_map'](declarations/pi-map-comp-map.md) | 266 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `lemma` | [Pi.map'_comp_map](declarations/pi-map-comp-map-source-edition-2.md) | 272 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `lemma` | [Pi.map_comp_map'](declarations/pi-map-comp-map-source-edition-3.md) | 277 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `lemma` | [Pi.map'_eq](declarations/pi-map-eq.md) | 282 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `abbrev` | [Pi.mapIso](declarations/pi-mapiso.md) | 290 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `abbrev` | [Sigma.map](declarations/sigma-map-source-edition-2.md) | 297 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `lemma` | [Sigma.map_id](declarations/sigma-map-id-source-edition-2.md) | 302 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `lemma` | [Sigma.map_comp_map](declarations/sigma-map-comp-map-source-edition-3.md) | 305 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `instance` | [Sigma.map_epi](declarations/sigma-map-epi.md) | 310 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `def` | [Sigma.map'](declarations/sigma-map.md) | 318 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `lemma` | [Sigma.ι_comp_map'](declarations/sigma-comp-map.md) | 323 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `lemma` | [Sigma.map'_id_id](declarations/sigma-map-id-id.md) | 328 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `lemma` | [Sigma.map'_id](declarations/sigma-map-id.md) | 333 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `lemma` | [Sigma.map'_comp_map'](declarations/sigma-map-comp-map-source-edition-2.md) | 337 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `lemma` | [Sigma.map'_comp_map](declarations/sigma-map-comp-map-source-edition-4.md) | 343 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `lemma` | [Sigma.map_comp_map'](declarations/sigma-map-comp-map.md) | 348 | `BLOCKED_NATIVE_ADMISSION` |
| 51 | `lemma` | [Sigma.map'_eq](declarations/sigma-map-eq.md) | 353 | `BLOCKED_NATIVE_ADMISSION` |
| 52 | `abbrev` | [Sigma.mapIso](declarations/sigma-mapiso.md) | 362 | `BLOCKED_NATIVE_ADMISSION` |
| 53 | `def` | [Pi.whiskerEquiv](declarations/pi-whiskerequiv.md) | 370 | `BLOCKED_NATIVE_ADMISSION` |
| 54 | `def` | [Sigma.whiskerEquiv](declarations/sigma-whiskerequiv.md) | 379 | `BLOCKED_NATIVE_ADMISSION` |
| 55 | `instance` | [(anonymous)](declarations/instance-source-edition-4.md) | 384 | `BLOCKED_NATIVE_ADMISSION` |
| 56 | `def` | [piPiIso](declarations/pipiiso.md) | 393 | `BLOCKED_NATIVE_ADMISSION` |
| 57 | `instance` | [(anonymous)](declarations/instance.md) | 399 | `BLOCKED_NATIVE_ADMISSION` |
| 58 | `def` | [sigmaSigmaIso](declarations/sigmasigmaiso.md) | 410 | `BLOCKED_NATIVE_ADMISSION` |
| 59 | `def` | [piComparison](declarations/picomparison.md) | 424 | `BLOCKED_NATIVE_ADMISSION` |
| 60 | `theorem` | [piComparison_comp_π](declarations/picomparison-comp.md) | 430 | `BLOCKED_NATIVE_ADMISSION` |
| 61 | `theorem` | [map_lift_piComparison](declarations/map-lift-picomparison.md) | 436 | `BLOCKED_NATIVE_ADMISSION` |
| 62 | `def` | [sigmaComparison](declarations/sigmacomparison.md) | 445 | `BLOCKED_NATIVE_ADMISSION` |
| 63 | `theorem` | [ι_comp_sigmaComparison](declarations/comp-sigmacomparison.md) | 451 | `BLOCKED_NATIVE_ADMISSION` |
| 64 | `theorem` | [sigmaComparison_map_desc](declarations/sigmacomparison-map-desc.md) | 457 | `BLOCKED_NATIVE_ADMISSION` |
| 65 | `abbrev` | [HasProducts](declarations/hasproducts.md) | 470 | `BLOCKED_NATIVE_ADMISSION` |
| 66 | `abbrev` | [HasCoproducts](declarations/hascoproducts.md) | 475 | `BLOCKED_NATIVE_ADMISSION` |
| 67 | `theorem` | [has_smallest_products_of_hasProducts](declarations/has-smallest-products-of-hasproducts.md) | 481 | `BLOCKED_NATIVE_ADMISSION` |
| 68 | `theorem` | [has_smallest_coproducts_of_hasCoproducts](declarations/has-smallest-coproducts-of-hascoproducts.md) | 485 | `BLOCKED_NATIVE_ADMISSION` |
| 69 | `theorem` | [hasProducts_of_limit_fans](declarations/hasproducts-of-limit-fans.md) | 490 | `BLOCKED_NATIVE_ADMISSION` |
| 70 | `def` | [limitConeOfUnique](declarations/limitconeofunique.md) | 510 | `BLOCKED_NATIVE_ADMISSION` |
| 71 | `instance` | [(anonymous)](declarations/instance-source-edition-3.md) | 529 | `BLOCKED_NATIVE_ADMISSION` |
| 72 | `def` | [productUniqueIso](declarations/productuniqueiso.md) | 535 | `BLOCKED_NATIVE_ADMISSION` |
| 73 | `def` | [colimitCoconeOfUnique](declarations/colimitcoconeofunique.md) | 541 | `BLOCKED_NATIVE_ADMISSION` |
| 74 | `instance` | [(anonymous)](declarations/instance-source-edition-2.md) | 561 | `BLOCKED_NATIVE_ADMISSION` |
| 75 | `def` | [coproductUniqueIso](declarations/coproductuniqueiso.md) | 567 | `BLOCKED_NATIVE_ADMISSION` |
| 76 | `def` | [Pi.reindex](declarations/pi-reindex.md) | 582 | `BLOCKED_NATIVE_ADMISSION` |
| 77 | `theorem` | [Pi.reindex_hom_π](declarations/pi-reindex-hom.md) | 587 | `BLOCKED_NATIVE_ADMISSION` |
| 78 | `theorem` | [Pi.reindex_inv_π](declarations/pi-reindex-inv.md) | 596 | `BLOCKED_NATIVE_ADMISSION` |
| 79 | `def` | [Sigma.reindex](declarations/sigma-reindex.md) | 607 | `BLOCKED_NATIVE_ADMISSION` |
| 80 | `theorem` | [Sigma.ι_reindex_hom](declarations/sigma-reindex-hom.md) | 612 | `BLOCKED_NATIVE_ADMISSION` |
| 81 | `theorem` | [Sigma.ι_reindex_inv](declarations/sigma-reindex-inv.md) | 625 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=e46a225244b71e36156a32ef3ff912c717b6ba5bcdb8d07638820229bf973aaa -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Products/Variant9aff49aaab7f19d033ee4db16a023f400c3c6c2c094a77df62eb989170056445.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
