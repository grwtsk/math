# Fubini Namespaced Public

[Complete source index](../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**48 observed declarations and anonymous commands**, 18 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Fubini/Variant53dd12a7258c51895796a62403bb01abe119c90ad040fec15ed6f525f0f0f9c3.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `a6efcff2998a3fcc0db95052f7c0624f71424f56`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/FubiniNamespacedPublic.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `structure` | [DiagramOfCones](declarations/diagramofcones.md) | 61 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `structure` | [DiagramOfCocones](declarations/diagramofcocones.md) | 72 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `def` | [DiagramOfCones.conePoints](declarations/diagramofcones-conepoints.md) | 87 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `def` | [DiagramOfCocones.coconePoints](declarations/diagramofcocones-coconepoints.md) | 97 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `def` | [coneOfConeUncurry](declarations/coneofconeuncurry.md) | 108 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `def` | [coneOfConeCurry](declarations/coneofconecurry.md) | 128 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `def` | [coconeOfCoconeUncurry](declarations/coconeofcoconeuncurry.md) | 143 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `def` | [coconeOfCoconeCurry](declarations/coconeofcoconecurry.md) | 177 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `def` | [coneOfConeUncurryIsLimit](declarations/coneofconeuncurryislimit.md) | 190 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `def` | [IsLimit.ofConeOfConeUncurry](declarations/islimit-ofconeofconeuncurry.md) | 231 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `def` | [coconeOfCoconeUncurryIsColimit](declarations/coconeofcoconeuncurryiscolimit.md) | 266 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `def` | [IsColimit.ofCoconeUncurry](declarations/iscolimit-ofcoconeuncurry.md) | 306 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `def` | [DiagramOfCones.mkOfHasLimits](declarations/diagramofcones-mkofhaslimits.md) | 349 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `instance` | [diagramOfConesInhabited](declarations/diagramofconesinhabited.md) | 354 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [DiagramOfCones.mkOfHasLimits_conePoints](declarations/diagramofcones-mkofhaslimits-conepoints.md) | 358 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `def` | [coneOfHasLimitCurryCompLim](declarations/coneofhaslimitcurrycomplim.md) | 369 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `def` | [isLimitConeOfHasLimitCurryCompLim](declarations/islimitconeofhaslimitcurrycomplim.md) | 386 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `instance` | [(anonymous)](declarations/instance-source-edition-2.md) | 398 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `def` | [limitUncurryIsoLimitCompLim](declarations/limituncurryisolimitcomplim.md) | 411 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [limitUncurryIsoLimitCompLim_hom_π_π](declarations/limituncurryisolimitcomplim-hom.md) | 422 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [limitUncurryIsoLimitCompLim_inv_π](declarations/limituncurryisolimitcomplim-inv.md) | 428 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `def` | [DiagramOfCocones.mkOfHasColimits](declarations/diagramofcocones-mkofhascolimits.md) | 447 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `instance` | [diagramOfCoconesInhabited](declarations/diagramofcoconesinhabited.md) | 452 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [DiagramOfCocones.mkOfHasColimits_coconePoints](declarations/diagramofcocones-mkofhascolimits-coconepoints.md) | 456 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `def` | [coconeOfHasColimitCurryCompColim](declarations/coconeofhascolimitcurrycompcolim.md) | 467 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `def` | [isColimitCoconeOfHasColimitCurryCompColim](declarations/iscolimitcoconeofhascolimitcurrycompcolim.md) | 486 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `instance` | [(anonymous)](declarations/instance.md) | 499 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `def` | [colimitUncurryIsoColimitCompColim](declarations/colimituncurryisocolimitcompcolim.md) | 512 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [colimitUncurryIsoColimitCompColim_ι_ι_inv](declarations/colimituncurryisocolimitcompcolim-inv.md) | 524 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [colimitUncurryIsoColimitCompColim_ι_hom](declarations/colimituncurryisocolimitcompcolim-hom.md) | 533 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `def` | [limitFlipCompLimIsoLimitCompLim](declarations/limitflipcomplimisolimitcomplim.md) | 547 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [limitFlipCompLimIsoLimitCompLim_hom_π_π](declarations/limitflipcomplimisolimitcomplim-hom.md) | 556 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [limitFlipCompLimIsoLimitCompLim_inv_π_π](declarations/limitflipcomplimisolimitcomplim-inv.md) | 564 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `def` | [colimitFlipCompColimIsoColimitCompColim](declarations/colimitflipcompcolimisocolimitcompcolim.md) | 577 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `theorem` | [colimitFlipCompColimIsoColimitCompColim_ι_ι_hom](declarations/colimitflipcompcolimisocolimitcompcolim-hom.md) | 587 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `theorem` | [colimitFlipCompColimIsoColimitCompColim_ι_ι_inv](declarations/colimitflipcompcolimisocolimitcompcolim-inv.md) | 597 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `def` | [limitIsoLimitCurryCompLim](declarations/limitisolimitcurrycomplim.md) | 615 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `theorem` | [limitIsoLimitCurryCompLim_hom_π_π](declarations/limitisolimitcurrycomplim-hom.md) | 623 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `theorem` | [limitIsoLimitCurryCompLim_inv_π](declarations/limitisolimitcurrycomplim-inv.md) | 628 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `def` | [colimitIsoColimitCurryCompColim](declarations/colimitisocolimitcurrycompcolim.md) | 644 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `theorem` | [colimitIsoColimitCurryCompColim_ι_ι_inv](declarations/colimitisocolimitcurrycompcolim-inv.md) | 654 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `theorem` | [colimitIsoColimitCurryCompColim_ι_hom](declarations/colimitisocolimitcurrycompcolim-hom.md) | 660 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `def` | [limitCurrySwapCompLimIsoLimitCurryCompLim](declarations/limitcurryswapcomplimisolimitcurrycomplim.md) | 677 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `theorem` | [limitCurrySwapCompLimIsoLimitCurryCompLim_hom_π_π](declarations/limitcurryswapcomplimisolimitcurrycomplim-hom.md) | 687 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `theorem` | [limitCurrySwapCompLimIsoLimitCurryCompLim_inv_π_π](declarations/limitcurryswapcomplimisolimitcurrycomplim-inv.md) | 699 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `def` | [colimitCurrySwapCompColimIsoColimitCurryCompColim](declarations/colimitcurryswapcompcolimisocolimitcurrycompcolim.md) | 715 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `theorem` | [colimitCurrySwapCompColimIsoColimitCurryCompColim_ι_ι_hom](declarations/colimitcurryswapcompcolimisocolimitcurrycompcolim-hom.md) | 725 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `theorem` | [colimitCurrySwapCompColimIsoColimitCurryCompColim_ι_ι_inv](declarations/colimitcurryswapcompcolimisocolimitcurrycompcolim-inv.md) | 736 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=28af823a58987aa390cf0c7efad7ea0627e898e2d3238d55a3df04f9d4ff637c -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Fubini/Variant53dd12a7258c51895796a62403bb01abe119c90ad040fec15ed6f525f0f0f9c3.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
