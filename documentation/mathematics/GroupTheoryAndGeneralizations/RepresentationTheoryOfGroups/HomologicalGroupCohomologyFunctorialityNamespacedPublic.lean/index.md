# Homological Group Cohomology Functoriality Namespaced Public

[Complete source index](../../../complete-source-index.md) · [Up one directory](../../../complete-source-index.md) · [Full source](source.md)

**68 observed declarations and anonymous commands**, 44 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Functoriality/Variant6be84f13879a5f242f0380b709373880f89c99d44becbec3c022da30858c3d7a.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `60c03580b51d8bfe83313f16c6d9534dc701bcc1`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/GroupTheoryAndGeneralizations/RepresentationTheoryOfGroups/HomologicalGroupCohomologyFunctorialityNamespacedPublic.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `theorem` | [congr](declarations/congr.md) | 52 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `def` | [cochainsMap](declarations/cochainsmap-source-edition-2.md) | 61 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `lemma` | [cochainsMap_id](declarations/cochainsmap-id.md) | 72 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `lemma` | [cochainsMap_id_f_hom_eq_compLeft](declarations/cochainsmap-id-f-hom-eq-compleft.md) | 77 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `lemma` | [cochainsMap_comp](declarations/cochainsmap-comp.md) | 81 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `lemma` | [cochainsMap_id_comp](declarations/cochainsmap-id-comp.md) | 89 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `lemma` | [cochainsMap_zero](declarations/cochainsmap-zero.md) | 95 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `lemma` | [cochainsMap_f_map_mono](declarations/cochainsmap-f-map-mono.md) | 97 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `instance` | [cochainsMap_id_f_map_mono](declarations/cochainsmap-id-f-map-mono.md) | 103 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `lemma` | [cochainsMap_f_map_epi](declarations/cochainsmap-f-map-epi.md) | 107 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `instance` | [cochainsMap_id_f_map_epi](declarations/cochainsmap-id-f-map-epi.md) | 113 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `abbrev` | [cocyclesMap](declarations/cocyclesmap.md) | 120 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `lemma` | [cochainsMap_congr](declarations/cochainsmap-congr.md) | 124 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `lemma` | [cocyclesMap_id](declarations/cocyclesmap-id.md) | 130 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `lemma` | [cocyclesMap_comp](declarations/cocyclesmap-comp.md) | 134 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [cocyclesMap_id_comp](declarations/cocyclesmap-id-comp.md) | 142 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `abbrev` | [map](declarations/map.md) | 150 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `lemma` | [map_congr](declarations/map-congr.md) | 154 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [π_map](declarations/map-source-edition-2.md) | 161 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `lemma` | [map_id](declarations/map-id.md) | 166 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `lemma` | [map_comp](declarations/map-comp.md) | 170 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [map_id_comp](declarations/map-id-comp.md) | 178 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `lemma` | [map_eq_zero](declarations/map-eq-zero.md) | 186 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `def` | [mapIso](declarations/mapiso.md) | 197 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `abbrev` | [cochainsMap₁](declarations/cochainsmap-source-edition-3.md) | 213 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `abbrev` | [cochainsMap₂](declarations/cochainsmap-source-edition-4.md) | 219 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `abbrev` | [cochainsMap₃](declarations/cochainsmap.md) | 226 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `lemma` | [cochainsMap_f_0_comp_cochainsIso₀](declarations/cochainsmap-f-0-comp-cochainsiso.md) | 232 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `lemma` | [cochainsMap_f_1_comp_cochainsIso₁](declarations/cochainsmap-f-1-comp-cochainsiso.md) | 239 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `lemma` | [cochainsMap_f_2_comp_cochainsIso₂](declarations/cochainsmap-f-2-comp-cochainsiso.md) | 243 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `lemma` | [cochainsMap_f_3_comp_cochainsIso₃](declarations/cochainsmap-f-3-comp-cochainsiso.md) | 251 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [map_H0Iso_hom_f](declarations/map-h0iso-hom-f.md) | 266 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [map_id_comp_H0Iso_hom](declarations/map-id-comp-h0iso-hom.md) | 273 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `instance` | [mono_map_0_of_mono](declarations/mono-map-0-of-mono.md) | 278 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `theorem` | [cocyclesMap_cocyclesIso₀_hom_f](declarations/cocyclesmap-cocyclesiso-hom-f.md) | 286 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `def` | [mapShortComplexH1](declarations/mapshortcomplexh1.md) | 299 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `theorem` | [mapShortComplexH1_zero](declarations/mapshortcomplexh1-zero.md) | 314 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `theorem` | [mapShortComplexH1_id](declarations/mapshortcomplexh1-id.md) | 319 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `theorem` | [mapShortComplexH1_comp](declarations/mapshortcomplexh1-comp.md) | 324 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `theorem` | [mapShortComplexH1_id_comp](declarations/mapshortcomplexh1-id-comp.md) | 331 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `abbrev` | [mapCocycles₁](declarations/mapcocycles.md) | 337 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `lemma` | [mapCocycles₁_comp_i](declarations/mapcocycles-comp-i.md) | 344 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `lemma` | [coe_mapCocycles₁](declarations/coe-mapcocycles-source-edition-2.md) | 350 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `lemma` | [cocyclesMap_comp_isoCocycles₁_hom](declarations/cocyclesmap-comp-isococycles-hom-source-edition-2.md) | 355 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `theorem` | [mapCocycles₁_one](declarations/mapcocycles-one.md) | 362 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `lemma` | [H1π_comp_map](declarations/h1-comp-map.md) | 370 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `theorem` | [map₁_one](declarations/map-one.md) | 375 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `def` | [HInfRes](declarations/hinfres.md) | 385 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `abbrev` | [H1InfRes](declarations/h1infres.md) | 395 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `instance` | [(anonymous)](declarations/instance-source-edition-2.md) | 398 | `BLOCKED_NATIVE_ADMISSION` |
| 51 | `lemma` | [H1InfRes_exact](declarations/h1infres-exact.md) | 411 | `BLOCKED_NATIVE_ADMISSION` |
| 52 | `def` | [mapShortComplexH2](declarations/mapshortcomplexh2.md) | 459 | `BLOCKED_NATIVE_ADMISSION` |
| 53 | `theorem` | [mapShortComplexH2_zero](declarations/mapshortcomplexh2-zero.md) | 474 | `BLOCKED_NATIVE_ADMISSION` |
| 54 | `theorem` | [mapShortComplexH2_id](declarations/mapshortcomplexh2-id.md) | 478 | `BLOCKED_NATIVE_ADMISSION` |
| 55 | `theorem` | [mapShortComplexH2_comp](declarations/mapshortcomplexh2-comp.md) | 483 | `BLOCKED_NATIVE_ADMISSION` |
| 56 | `theorem` | [mapShortComplexH2_id_comp](declarations/mapshortcomplexh2-id-comp.md) | 490 | `BLOCKED_NATIVE_ADMISSION` |
| 57 | `abbrev` | [mapCocycles₂](declarations/mapcocycles-source-edition-2.md) | 496 | `BLOCKED_NATIVE_ADMISSION` |
| 58 | `lemma` | [mapCocycles₂_comp_i](declarations/mapcocycles-comp-i-source-edition-2.md) | 503 | `BLOCKED_NATIVE_ADMISSION` |
| 59 | `lemma` | [coe_mapCocycles₂](declarations/coe-mapcocycles.md) | 509 | `BLOCKED_NATIVE_ADMISSION` |
| 60 | `lemma` | [cocyclesMap_comp_isoCocycles₂_hom](declarations/cocyclesmap-comp-isococycles-hom.md) | 514 | `BLOCKED_NATIVE_ADMISSION` |
| 61 | `lemma` | [H2π_comp_map](declarations/h2-comp-map.md) | 521 | `BLOCKED_NATIVE_ADMISSION` |
| 62 | `def` | [cochainsFunctor](declarations/cochainsfunctor.md) | 531 | `BLOCKED_NATIVE_ADMISSION` |
| 63 | `instance` | [(anonymous)](declarations/instance.md) | 537 | `BLOCKED_NATIVE_ADMISSION` |
| 64 | `instance` | [(anonymous)](declarations/instance-source-edition-4.md) | 538 | `BLOCKED_NATIVE_ADMISSION` |
| 65 | `def` | [functor](declarations/functor.md) | 543 | `BLOCKED_NATIVE_ADMISSION` |
| 66 | `instance` | [(anonymous)](declarations/instance-source-edition-3.md) | 552 | `BLOCKED_NATIVE_ADMISSION` |
| 67 | `def` | [resNatTrans](declarations/resnattrans.md) | 561 | `BLOCKED_NATIVE_ADMISSION` |
| 68 | `def` | [infNatTrans](declarations/infnattrans.md) | 575 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=2508e07a0ce7be861806cedf6c7a6bfe4853dd48c1bfe8de812ee9c0b3b0423f -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Functoriality/Variant6be84f13879a5f242f0380b709373880f89c99d44becbec3c022da30858c3d7a.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
