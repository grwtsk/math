# Preserves Bifunctor Namespaced Public

[Complete source index](../../../complete-source-index.md) · [Up one directory](../../../complete-source-index.md) · [Full source](source.md)

**24 observed declarations and anonymous commands**, 10 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Bifunctor/Variantce58e5e0a7f3174065bc4fd93fd01665b8133fa5a996914addc413761bea5d4e.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `1f3d4416022e30e1d32fd0b38e5bab20cb4352a3`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PreservesBifunctorNamespacedPublic.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [Functor.mapCocone₂](declarations/functor-mapcocone.md) | 46 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `def` | [Functor.mapCone₂](declarations/functor-mapcone.md) | 64 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `class` | [PreservesColimit₂](declarations/preservescolimit.md) | 84 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `class` | [PreservesLimit₂](declarations/preserveslimit.md) | 93 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `def` | [isColimitOfPreserves₂](declarations/iscolimitofpreserves.md) | 102 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `def` | [isLimitOfPreserves₂](declarations/islimitofpreserves.md) | 110 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `instance` | [(anonymous)](declarations/instance-source-edition-2.md) | 116 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `instance` | [(anonymous)](declarations/instance.md) | 125 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `def` | [isoObjCoconePointsOfIsColimit](declarations/isoobjcoconepointsofiscolimit.md) | 141 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `lemma` | [ι_comp_isoObjConePointsOfIsColimit_inv](declarations/comp-isoobjconepointsofiscolimit-inv.md) | 160 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `lemma` | [map_ι_comp_isoObjConePointsOfIsColimit_hom](declarations/map-comp-isoobjconepointsofiscolimit-hom.md) | 170 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `def` | [isoColimitUncurryWhiskeringLeft₂](declarations/isocolimituncurrywhiskeringleft.md) | 187 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `lemma` | [ι_comp_isoColimitUncurryWhiskeringLeft₂_hom](declarations/comp-isocolimituncurrywhiskeringleft-hom.md) | 199 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `lemma` | [map_ι_comp_isoColimitUncurryWhiskeringLeft₂_inv](declarations/map-comp-isocolimituncurrywhiskeringleft-inv.md) | 209 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `instance` | [of_preservesColimits_in_each_variable](declarations/of-preservescolimits-in-each-variable.md) | 222 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [of_preservesColimit₂_flip](declarations/of-preservescolimit-flip.md) | 252 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `def` | [isoObjConePointsOfIsLimit](declarations/isoobjconepointsofislimit.md) | 276 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `lemma` | [isoObjConePointsOfIsLimit_hom_comp_π](declarations/isoobjconepointsofislimit-hom-comp.md) | 295 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `lemma` | [isoObjConePointsOfIsColimit_inv_comp_map_π](declarations/isoobjconepointsofiscolimit-inv-comp-map.md) | 304 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `def` | [isoLimitUncurryWhiskeringLeft₂](declarations/isolimituncurrywhiskeringleft.md) | 321 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `lemma` | [isoLimitUncurryWhiskeringLeft₂_inv_comp_π](declarations/isolimituncurrywhiskeringleft-inv-comp.md) | 333 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `lemma` | [isoLimitUncurryWhiskeringLeft₂_hom_comp_map_π](declarations/isolimituncurrywhiskeringleft-hom-comp-map.md) | 343 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `instance` | [of_preservesLimits_in_each_variable](declarations/of-preserveslimits-in-each-variable.md) | 356 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [of_preservesLimit₂_flip](declarations/of-preserveslimit-flip.md) | 387 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=5714a9fcecf208d1dd6170df51be6378b2fc369b766af52de2838182edd5290d -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Bifunctor/Variantce58e5e0a7f3174065bc4fd93fd01665b8133fa5a996914addc413761bea5d4e.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
