# Grothendieck Topology Namespaced

[Complete source index](../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**58 observed declarations and anonymous commands**, 34 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/GrothendieckTopology/Variantd998a0b325e5b726f9809545184bf709ca01a5b97e8c9f1784369a01d10dbdbf.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `edfb3698b094fdc64bb331adb9f2616ca9cd6414`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/ComputerScience/AlgorithmsInComputerScience/GrothendieckTopologyNamespaced.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `structure` | [CoveringFamily](declarations/coveringfamily.md) | 26 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `def` | [CoveringFamily.fromIntervalCover](declarations/coveringfamily-fromintervalcover.md) | 35 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `def` | [CoveringFamily.toIntervalCover](declarations/coveringfamily-tointervalcover.md) | 43 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `structure` | [SiteObject](declarations/siteobject.md) | 51 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `def` | [ofInterval](declarations/ofinterval.md) | 56 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `structure` | [SiteMorphism](declarations/sitemorphism.md) | 62 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `def` | [id](declarations/id.md) | 69 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `def` | [comp](declarations/comp.md) | 73 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `structure` | [CoveringArrow](declarations/coveringarrow.md) | 83 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `def` | [asSiteObject](declarations/assiteobject.md) | 89 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `def` | [pieceMorphism](declarations/piecemorphism.md) | 92 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `def` | [coveringArrowForPiece](declarations/coveringarrowforpiece.md) | 98 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `structure` | [SiteFacingApiSurface](declarations/sitefacingapisurface.md) | 106 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `def` | [defaultSiteFacingApiSurface](declarations/defaultsitefacingapisurface.md) | 118 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `def` | [maximal_cover](declarations/maximal-cover.md) | 129 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `def` | [maximalCover](declarations/maximalcover.md) | 145 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `def` | [pullbackCoverWitness](declarations/pullbackcoverwitness.md) | 149 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `def` | [pullbackStable](declarations/pullbackstable.md) | 155 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `def` | [pullbackStableAlong](declarations/pullbackstablealong.md) | 161 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `def` | [coverTransitive](declarations/covertransitive.md) | 168 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `structure` | [CoveringSieve](declarations/coveringsieve.md) | 182 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `def` | [coveringSieveOfCover](declarations/coveringsieveofcover.md) | 191 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `structure` | [FiniteGrothendieckTopologySurface](declarations/finitegrothendiecktopologysurface.md) | 201 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `def` | [defaultFiniteGrothendieckTopologySurface](declarations/defaultfinitegrothendiecktopologysurface.md) | 212 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [site_morphism_id_maps_contains](declarations/site-morphism-id-maps-contains.md) | 223 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [site_morphism_comp_maps_contains](declarations/site-morphism-comp-maps-contains.md) | 230 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [cover_piece_morphism_maps_to_target](declarations/cover-piece-morphism-maps-to-target.md) | 240 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [covering_arrow_source_is_piece](declarations/covering-arrow-source-is-piece.md) | 249 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [default_site_api_has_objects](declarations/default-site-api-has-objects.md) | 256 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [default_site_api_has_morphisms](declarations/default-site-api-has-morphisms.md) | 260 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [default_site_api_has_covering_arrows](declarations/default-site-api-has-covering-arrows.md) | 264 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [default_site_api_is_not_category_theory_claim](declarations/default-site-api-is-not-category-theory-claim.md) | 268 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [default_site_api_is_not_sheaf_category_claim](declarations/default-site-api-is-not-sheaf-category-claim.md) | 272 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [default_site_api_is_not_topos_claim](declarations/default-site-api-is-not-topos-claim.md) | 276 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `theorem` | [maximal_cover_is_covering](declarations/maximal-cover-is-covering.md) | 280 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `theorem` | [maximalCover_is_covering](declarations/maximalcover-is-covering.md) | 287 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `theorem` | [pullback_stable](declarations/pullback-stable.md) | 294 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `theorem` | [pullbackStable_is_finite_surface](declarations/pullbackstable-is-finite-surface.md) | 302 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `theorem` | [pullbackStableAlong_is_finite_surface](declarations/pullbackstablealong-is-finite-surface.md) | 310 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `theorem` | [cover_transitive](declarations/cover-transitive.md) | 319 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `theorem` | [coverTransitive_is_finite_surface](declarations/covertransitive-is-finite-surface.md) | 341 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `theorem` | [covering_sieve_contains_cover_pieces](declarations/covering-sieve-contains-cover-pieces.md) | 356 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `theorem` | [finite_grothendieck_surface_has_maximal_cover](declarations/finite-grothendieck-surface-has-maximal-cover.md) | 362 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `theorem` | [finite_grothendieck_surface_has_pullback_stability_witness](declarations/finite-grothendieck-surface-has-pullback-stability-witness.md) | 367 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `theorem` | [finite_grothendieck_surface_has_transitivity_witness](declarations/finite-grothendieck-surface-has-transitivity-witness.md) | 372 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `theorem` | [finite_grothendieck_surface_has_covering_sieve_surface](declarations/finite-grothendieck-surface-has-covering-sieve-surface.md) | 377 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `theorem` | [not_full_topos_claim](declarations/not-full-topos-claim.md) | 382 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `theorem` | [not_lawvere_tierney_topology_claim](declarations/not-lawvere-tierney-topology-claim.md) | 386 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `theorem` | [not_essential_geometric_morphism_claim](declarations/not-essential-geometric-morphism-claim.md) | 391 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `theorem` | [not_full_sheafification_claim](declarations/not-full-sheafification-claim.md) | 396 | `BLOCKED_NATIVE_ADMISSION` |
| 51 | `theorem` | [finite_grothendieck_surface_is_not_topos](declarations/finite-grothendieck-surface-is-not-topos.md) | 401 | `BLOCKED_NATIVE_ADMISSION` |
| 52 | `theorem` | [finite_grothendieck_surface_is_not_lawvere_tierney](declarations/finite-grothendieck-surface-is-not-lawvere-tierney.md) | 405 | `BLOCKED_NATIVE_ADMISSION` |
| 53 | `theorem` | [finite_grothendieck_surface_has_cover_axiom_surface](declarations/finite-grothendieck-surface-has-cover-axiom-surface.md) | 410 | `BLOCKED_NATIVE_ADMISSION` |
| 54 | `theorem` | [site_facing_api_denies_category_theory_claim](declarations/site-facing-api-denies-category-theory-claim.md) | 420 | `BLOCKED_NATIVE_ADMISSION` |
| 55 | `theorem` | [site_facing_api_denies_sheaf_category_claim](declarations/site-facing-api-denies-sheaf-category-claim.md) | 424 | `BLOCKED_NATIVE_ADMISSION` |
| 56 | `theorem` | [site_facing_api_denies_topos_claim](declarations/site-facing-api-denies-topos-claim.md) | 428 | `BLOCKED_NATIVE_ADMISSION` |
| 57 | `theorem` | [site_facing_api_denies_theorem_promotion](declarations/site-facing-api-denies-theorem-promotion.md) | 432 | `BLOCKED_NATIVE_ADMISSION` |
| 58 | `theorem` | [site_facing_api_has_finite_object_morphism_surface](declarations/site-facing-api-has-finite-object-morphism-surface.md) | 436 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=f52430a01e17e1a2c287496adddb361cb0f85e2ec6faddb61a74d2f0a670029b -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/GrothendieckTopology/Variantd998a0b325e5b726f9809545184bf709ca01a5b97e8c9f1784369a01d10dbdbf.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
