# Grothendieck Topology

[Complete source index](../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**58 observed declarations and anonymous commands**, 34 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/GrothendieckTopology/Variant806c55e5a22b4d3c3e3ad1802fea59fef74108fbf5861f935d8330de1e1c1f94.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `7b8ee53642422c260ef2e314af872a1d3fa31aae`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/ComputerScience/AlgorithmsInComputerScience/GrothendieckTopology.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `structure` | [CoveringFamily](declarations/coveringfamily.md) | 18 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `def` | [CoveringFamily.fromIntervalCover](declarations/coveringfamily-fromintervalcover.md) | 27 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `def` | [CoveringFamily.toIntervalCover](declarations/coveringfamily-tointervalcover.md) | 35 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `structure` | [SiteObject](declarations/siteobject.md) | 43 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `def` | [ofInterval](declarations/ofinterval.md) | 48 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `structure` | [SiteMorphism](declarations/sitemorphism.md) | 54 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `def` | [id](declarations/id.md) | 61 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `def` | [comp](declarations/comp.md) | 65 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `structure` | [CoveringArrow](declarations/coveringarrow.md) | 75 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `def` | [asSiteObject](declarations/assiteobject.md) | 81 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `def` | [pieceMorphism](declarations/piecemorphism.md) | 84 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `def` | [coveringArrowForPiece](declarations/coveringarrowforpiece.md) | 90 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `structure` | [SiteFacingApiSurface](declarations/sitefacingapisurface.md) | 98 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `def` | [defaultSiteFacingApiSurface](declarations/defaultsitefacingapisurface.md) | 110 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `def` | [maximal_cover](declarations/maximal-cover.md) | 121 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `def` | [maximalCover](declarations/maximalcover.md) | 137 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `def` | [pullbackCoverWitness](declarations/pullbackcoverwitness.md) | 141 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `def` | [pullbackStable](declarations/pullbackstable.md) | 147 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `def` | [pullbackStableAlong](declarations/pullbackstablealong.md) | 153 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `def` | [coverTransitive](declarations/covertransitive.md) | 160 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `structure` | [CoveringSieve](declarations/coveringsieve.md) | 174 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `def` | [coveringSieveOfCover](declarations/coveringsieveofcover.md) | 183 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `structure` | [FiniteGrothendieckTopologySurface](declarations/finitegrothendiecktopologysurface.md) | 193 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `def` | [defaultFiniteGrothendieckTopologySurface](declarations/defaultfinitegrothendiecktopologysurface.md) | 204 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [site_morphism_id_maps_contains](declarations/site-morphism-id-maps-contains.md) | 215 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [site_morphism_comp_maps_contains](declarations/site-morphism-comp-maps-contains.md) | 222 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [cover_piece_morphism_maps_to_target](declarations/cover-piece-morphism-maps-to-target.md) | 232 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [covering_arrow_source_is_piece](declarations/covering-arrow-source-is-piece.md) | 241 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [default_site_api_has_objects](declarations/default-site-api-has-objects.md) | 248 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [default_site_api_has_morphisms](declarations/default-site-api-has-morphisms.md) | 252 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [default_site_api_has_covering_arrows](declarations/default-site-api-has-covering-arrows.md) | 256 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [default_site_api_is_not_category_theory_claim](declarations/default-site-api-is-not-category-theory-claim.md) | 260 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [default_site_api_is_not_sheaf_category_claim](declarations/default-site-api-is-not-sheaf-category-claim.md) | 264 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [default_site_api_is_not_topos_claim](declarations/default-site-api-is-not-topos-claim.md) | 268 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `theorem` | [maximal_cover_is_covering](declarations/maximal-cover-is-covering.md) | 272 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `theorem` | [maximalCover_is_covering](declarations/maximalcover-is-covering.md) | 279 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `theorem` | [pullback_stable](declarations/pullback-stable.md) | 286 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `theorem` | [pullbackStable_is_finite_surface](declarations/pullbackstable-is-finite-surface.md) | 294 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `theorem` | [pullbackStableAlong_is_finite_surface](declarations/pullbackstablealong-is-finite-surface.md) | 302 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `theorem` | [cover_transitive](declarations/cover-transitive.md) | 311 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `theorem` | [coverTransitive_is_finite_surface](declarations/covertransitive-is-finite-surface.md) | 333 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `theorem` | [covering_sieve_contains_cover_pieces](declarations/covering-sieve-contains-cover-pieces.md) | 348 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `theorem` | [finite_grothendieck_surface_has_maximal_cover](declarations/finite-grothendieck-surface-has-maximal-cover.md) | 354 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `theorem` | [finite_grothendieck_surface_has_pullback_stability_witness](declarations/finite-grothendieck-surface-has-pullback-stability-witness.md) | 359 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `theorem` | [finite_grothendieck_surface_has_transitivity_witness](declarations/finite-grothendieck-surface-has-transitivity-witness.md) | 364 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `theorem` | [finite_grothendieck_surface_has_covering_sieve_surface](declarations/finite-grothendieck-surface-has-covering-sieve-surface.md) | 369 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `theorem` | [not_full_topos_claim](declarations/not-full-topos-claim.md) | 374 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `theorem` | [not_lawvere_tierney_topology_claim](declarations/not-lawvere-tierney-topology-claim.md) | 378 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `theorem` | [not_essential_geometric_morphism_claim](declarations/not-essential-geometric-morphism-claim.md) | 383 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `theorem` | [not_full_sheafification_claim](declarations/not-full-sheafification-claim.md) | 388 | `BLOCKED_NATIVE_ADMISSION` |
| 51 | `theorem` | [finite_grothendieck_surface_is_not_topos](declarations/finite-grothendieck-surface-is-not-topos.md) | 393 | `BLOCKED_NATIVE_ADMISSION` |
| 52 | `theorem` | [finite_grothendieck_surface_is_not_lawvere_tierney](declarations/finite-grothendieck-surface-is-not-lawvere-tierney.md) | 397 | `BLOCKED_NATIVE_ADMISSION` |
| 53 | `theorem` | [finite_grothendieck_surface_has_cover_axiom_surface](declarations/finite-grothendieck-surface-has-cover-axiom-surface.md) | 402 | `BLOCKED_NATIVE_ADMISSION` |
| 54 | `theorem` | [site_facing_api_denies_category_theory_claim](declarations/site-facing-api-denies-category-theory-claim.md) | 412 | `BLOCKED_NATIVE_ADMISSION` |
| 55 | `theorem` | [site_facing_api_denies_sheaf_category_claim](declarations/site-facing-api-denies-sheaf-category-claim.md) | 416 | `BLOCKED_NATIVE_ADMISSION` |
| 56 | `theorem` | [site_facing_api_denies_topos_claim](declarations/site-facing-api-denies-topos-claim.md) | 420 | `BLOCKED_NATIVE_ADMISSION` |
| 57 | `theorem` | [site_facing_api_denies_theorem_promotion](declarations/site-facing-api-denies-theorem-promotion.md) | 424 | `BLOCKED_NATIVE_ADMISSION` |
| 58 | `theorem` | [site_facing_api_has_finite_object_morphism_surface](declarations/site-facing-api-has-finite-object-morphism-surface.md) | 428 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=7c18656933d58adf9144b0864d8eb92524c8a18e4495d8c9da745f9a0b66e2e1 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/GrothendieckTopology/Variant806c55e5a22b4d3c3e3ad1802fea59fef74108fbf5861f935d8330de1e1c1f94.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
