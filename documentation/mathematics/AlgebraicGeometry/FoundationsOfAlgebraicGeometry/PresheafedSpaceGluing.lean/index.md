# Presheafed Space Gluing

[Complete source index](../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**39 observed declarations and anonymous commands**, 17 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Geometry/AlgebraicGeometry/Gluing/Variant4f3840a53fbd059ed008f8213ddddbfe79b3bd1330c43aea6d609cfbcc17422c.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `a985a4acd24189fa486ee61ddfb20ac6433bb3b9`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/AlgebraicGeometry/FoundationsOfAlgebraicGeometry/PresheafedSpaceGluing.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `structure` | [GlueData](declarations/gluedata.md) | 96 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `abbrev` | [toTopGlueData](declarations/totopgluedata.md) | 122 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `theorem` | [ι_openEmbedding](declarations/openembedding.md) | 127 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `theorem` | [pullback_base](declarations/pullback-base.md) | 137 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [f_invApp_f_app](declarations/f-invapp-f-app.md) | 155 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [snd_invApp_t_app'](declarations/snd-invapp-t-app-source-edition-2.md) | 184 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [snd_invApp_t_app](declarations/snd-invapp-t-app.md) | 233 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [ι_image_preimage_eq](declarations/image-preimage-eq.md) | 246 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `def` | [opensImagePreimageMap](declarations/opensimagepreimagemap.md) | 273 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [opensImagePreimageMap_app'](declarations/opensimagepreimagemap-app-source-edition-2.md) | 283 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [opensImagePreimageMap_app](declarations/opensimagepreimagemap-app.md) | 302 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [opensImagePreimageMap_app_assoc](declarations/opensimagepreimagemap-app-assoc.md) | 311 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `abbrev` | [diagramOverOpen](declarations/diagramoveropen-source-edition-2.md) | 323 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `abbrev` | [diagramOverOpenπ](declarations/diagramoveropen.md) | 331 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `def` | [ιInvAppπApp](declarations/invapp-app.md) | 337 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `def` | [ιInvApp](declarations/invapp-source-edition-2.md) | 360 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [ιInvApp_π](declarations/invapp-source-edition-3.md) | 413 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `abbrev` | [ιInvAppπEqMap](declarations/invapp-eqmap.md) | 446 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [π_ιInvApp_π](declarations/invapp.md) | 451 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [π_ιInvApp_eq_id](declarations/invapp-eq-id.md) | 487 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `instance` | [componentwise_diagram_π_isIso](declarations/componentwise-diagram-isiso.md) | 503 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `instance` | [ιIsOpenImmersion](declarations/isopenimmersion-source-edition-3.md) | 512 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `def` | [vPullbackConeIsLimit](declarations/vpullbackconeislimit.md) | 524 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [ι_jointly_surjective](declarations/jointly-surjective-source-edition-3.md) | 550 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `structure` | [GlueData](declarations/gluedata-source-edition-2.md) | 582 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `abbrev` | [toPresheafedSpaceGlueData](declarations/topresheafedspacegluedata.md) | 596 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `abbrev` | [isoPresheafedSpace](declarations/isopresheafedspace.md) | 604 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [ι_isoPresheafedSpace_inv](declarations/isopresheafedspace-inv.md) | 609 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `instance` | [ιIsOpenImmersion](declarations/isopenimmersion-source-edition-2.md) | 614 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [ι_jointly_surjective](declarations/jointly-surjective-source-edition-2.md) | 621 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `def` | [vPullbackConeIsLimit](declarations/vpullbackconeislimit-source-edition-3.md) | 632 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `structure` | [GlueData](declarations/gluedata-source-edition-3.md) | 663 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `abbrev` | [toSheafedSpaceGlueData](declarations/tosheafedspacegluedata.md) | 676 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `abbrev` | [isoSheafedSpace](declarations/isosheafedspace.md) | 682 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `theorem` | [ι_isoSheafedSpace_inv](declarations/isosheafedspace-inv.md) | 686 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `instance` | [ι_isOpenImmersion](declarations/isopenimmersion.md) | 691 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `instance` | [(anonymous)](declarations/instance.md) | 698 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `theorem` | [ι_jointly_surjective](declarations/jointly-surjective.md) | 701 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `def` | [vPullbackConeIsLimit](declarations/vpullbackconeislimit-source-edition-2.md) | 714 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=877e5cec713d2159edd09321ab42e689556f62831e208e857faa8a6138b71c2f -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Geometry/AlgebraicGeometry/Gluing/Variant4f3840a53fbd059ed008f8213ddddbfe79b3bd1330c43aea6d609cfbcc17422c.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
