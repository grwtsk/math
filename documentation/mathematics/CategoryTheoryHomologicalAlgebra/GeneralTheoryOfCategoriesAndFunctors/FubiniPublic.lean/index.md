# Fubini Public

[Complete source index](../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**48 observed declarations and anonymous commands**, 18 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Fubini/Variant54c32e9d22e6cdc2c270f66bd205aa72f360b51d8b73b091b19763fd6329c2ec.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `8e6dd1d0bf7daab0fcd24d4d6272b18511e20042`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/FubiniPublic.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `structure` | [DiagramOfCones](declarations/diagramofcones.md) | 53 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `structure` | [DiagramOfCocones](declarations/diagramofcocones.md) | 64 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `def` | [DiagramOfCones.conePoints](declarations/diagramofcones-conepoints.md) | 79 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `def` | [DiagramOfCocones.coconePoints](declarations/diagramofcocones-coconepoints.md) | 89 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `def` | [coneOfConeUncurry](declarations/coneofconeuncurry.md) | 100 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `def` | [coneOfConeCurry](declarations/coneofconecurry.md) | 120 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `def` | [coconeOfCoconeUncurry](declarations/coconeofcoconeuncurry.md) | 135 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `def` | [coconeOfCoconeCurry](declarations/coconeofcoconecurry.md) | 169 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `def` | [coneOfConeUncurryIsLimit](declarations/coneofconeuncurryislimit.md) | 182 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `def` | [IsLimit.ofConeOfConeUncurry](declarations/islimit-ofconeofconeuncurry.md) | 223 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `def` | [coconeOfCoconeUncurryIsColimit](declarations/coconeofcoconeuncurryiscolimit.md) | 258 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `def` | [IsColimit.ofCoconeUncurry](declarations/iscolimit-ofcoconeuncurry.md) | 298 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `def` | [DiagramOfCones.mkOfHasLimits](declarations/diagramofcones-mkofhaslimits.md) | 341 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `instance` | [diagramOfConesInhabited](declarations/diagramofconesinhabited.md) | 346 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [DiagramOfCones.mkOfHasLimits_conePoints](declarations/diagramofcones-mkofhaslimits-conepoints.md) | 350 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `def` | [coneOfHasLimitCurryCompLim](declarations/coneofhaslimitcurrycomplim.md) | 361 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `def` | [isLimitConeOfHasLimitCurryCompLim](declarations/islimitconeofhaslimitcurrycomplim.md) | 378 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `instance` | [(anonymous)](declarations/instance-source-edition-2.md) | 390 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `def` | [limitUncurryIsoLimitCompLim](declarations/limituncurryisolimitcomplim.md) | 403 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [limitUncurryIsoLimitCompLim_hom_π_π](declarations/limituncurryisolimitcomplim-hom.md) | 414 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [limitUncurryIsoLimitCompLim_inv_π](declarations/limituncurryisolimitcomplim-inv.md) | 420 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `def` | [DiagramOfCocones.mkOfHasColimits](declarations/diagramofcocones-mkofhascolimits.md) | 439 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `instance` | [diagramOfCoconesInhabited](declarations/diagramofcoconesinhabited.md) | 444 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [DiagramOfCocones.mkOfHasColimits_coconePoints](declarations/diagramofcocones-mkofhascolimits-coconepoints.md) | 448 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `def` | [coconeOfHasColimitCurryCompColim](declarations/coconeofhascolimitcurrycompcolim.md) | 459 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `def` | [isColimitCoconeOfHasColimitCurryCompColim](declarations/iscolimitcoconeofhascolimitcurrycompcolim.md) | 478 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `instance` | [(anonymous)](declarations/instance.md) | 491 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `def` | [colimitUncurryIsoColimitCompColim](declarations/colimituncurryisocolimitcompcolim.md) | 504 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [colimitUncurryIsoColimitCompColim_ι_ι_inv](declarations/colimituncurryisocolimitcompcolim-inv.md) | 516 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [colimitUncurryIsoColimitCompColim_ι_hom](declarations/colimituncurryisocolimitcompcolim-hom.md) | 525 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `def` | [limitFlipCompLimIsoLimitCompLim](declarations/limitflipcomplimisolimitcomplim.md) | 539 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [limitFlipCompLimIsoLimitCompLim_hom_π_π](declarations/limitflipcomplimisolimitcomplim-hom.md) | 548 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [limitFlipCompLimIsoLimitCompLim_inv_π_π](declarations/limitflipcomplimisolimitcomplim-inv.md) | 556 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `def` | [colimitFlipCompColimIsoColimitCompColim](declarations/colimitflipcompcolimisocolimitcompcolim.md) | 569 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `theorem` | [colimitFlipCompColimIsoColimitCompColim_ι_ι_hom](declarations/colimitflipcompcolimisocolimitcompcolim-hom.md) | 579 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `theorem` | [colimitFlipCompColimIsoColimitCompColim_ι_ι_inv](declarations/colimitflipcompcolimisocolimitcompcolim-inv.md) | 589 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `def` | [limitIsoLimitCurryCompLim](declarations/limitisolimitcurrycomplim.md) | 607 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `theorem` | [limitIsoLimitCurryCompLim_hom_π_π](declarations/limitisolimitcurrycomplim-hom.md) | 615 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `theorem` | [limitIsoLimitCurryCompLim_inv_π](declarations/limitisolimitcurrycomplim-inv.md) | 620 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `def` | [colimitIsoColimitCurryCompColim](declarations/colimitisocolimitcurrycompcolim.md) | 636 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `theorem` | [colimitIsoColimitCurryCompColim_ι_ι_inv](declarations/colimitisocolimitcurrycompcolim-inv.md) | 646 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `theorem` | [colimitIsoColimitCurryCompColim_ι_hom](declarations/colimitisocolimitcurrycompcolim-hom.md) | 652 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `def` | [limitCurrySwapCompLimIsoLimitCurryCompLim](declarations/limitcurryswapcomplimisolimitcurrycomplim.md) | 669 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `theorem` | [limitCurrySwapCompLimIsoLimitCurryCompLim_hom_π_π](declarations/limitcurryswapcomplimisolimitcurrycomplim-hom.md) | 679 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `theorem` | [limitCurrySwapCompLimIsoLimitCurryCompLim_inv_π_π](declarations/limitcurryswapcomplimisolimitcurrycomplim-inv.md) | 691 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `def` | [colimitCurrySwapCompColimIsoColimitCurryCompColim](declarations/colimitcurryswapcompcolimisocolimitcurrycompcolim.md) | 707 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `theorem` | [colimitCurrySwapCompColimIsoColimitCurryCompColim_ι_ι_hom](declarations/colimitcurryswapcompcolimisocolimitcurrycompcolim-hom.md) | 717 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `theorem` | [colimitCurrySwapCompColimIsoColimitCurryCompColim_ι_ι_inv](declarations/colimitcurryswapcompcolimisocolimitcurrycompcolim-inv.md) | 728 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=3bb0dbf433b4363e4c8b5a55452b9172efb80f48009673c8f17a938f9758f480 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Fubini/Variant54c32e9d22e6cdc2c270f66bd205aa72f360b51d8b73b091b19763fd6329c2ec.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
