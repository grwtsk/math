# Functor Pseudofunctor Namespaced Public

[Complete source index](../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**36 observed declarations and anonymous commands**, 22 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Pseudofunctor/Variant0c1ddf7322b88b7a78f59d8785077a4af87942ccd4e8155f6ada7fc48d2243e7.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `8847e6c501db108721bc84e04e7fee68c77b3d9a`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/FunctorPseudofunctorNamespacedPublic.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `structure` | [Pseudofunctor](declarations/pseudofunctor.md) | 66 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `def` | [toOplax](declarations/tooplax.md) | 127 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `instance` | [hasCoeToOplax](declarations/hascoetooplax.md) | 132 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `def` | [toLax](declarations/tolax.md) | 137 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `instance` | [hasCoeToLax](declarations/hascoetolax.md) | 148 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `def` | [id](declarations/id.md) | 155 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `instance` | [(anonymous)](declarations/instance.md) | 160 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `def` | [comp](declarations/comp.md) | 167 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `lemma` | [mapComp_assoc_right_hom](declarations/mapcomp-assoc-right-hom.md) | 177 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `lemma` | [mapComp_assoc_left_hom](declarations/mapcomp-assoc-left-hom.md) | 184 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `lemma` | [mapComp_assoc_right_inv](declarations/mapcomp-assoc-right-inv.md) | 191 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `lemma` | [mapComp_assoc_left_inv](declarations/mapcomp-assoc-left-inv.md) | 198 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `lemma` | [mapComp_id_left_hom](declarations/mapcomp-id-left-hom.md) | 208 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `lemma` | [mapComp_id_left](declarations/mapcomp-id-left.md) | 212 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `lemma` | [mapComp_id_left_inv](declarations/mapcomp-id-left-inv.md) | 220 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `lemma` | [whiskerRightIso_mapId](declarations/whiskerrightiso-mapid.md) | 224 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `lemma` | [whiskerRight_mapId_hom](declarations/whiskerright-mapid-hom.md) | 232 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `lemma` | [whiskerRight_mapId_inv](declarations/whiskerright-mapid-inv.md) | 240 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `lemma` | [mapComp_id_right_hom](declarations/mapcomp-id-right-hom.md) | 248 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `lemma` | [mapComp_id_right](declarations/mapcomp-id-right.md) | 252 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `lemma` | [mapComp_id_right_inv](declarations/mapcomp-id-right-inv.md) | 260 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `lemma` | [whiskerLeftIso_mapId](declarations/whiskerleftiso-mapid.md) | 264 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `lemma` | [whiskerLeft_mapId_hom](declarations/whiskerleft-mapid-hom.md) | 272 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `lemma` | [whiskerLeft_mapId_inv](declarations/whiskerleft-mapid-inv.md) | 280 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `def` | [mapId'](declarations/mapid.md) | 286 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `lemma` | [mapId'_eq_mapId](declarations/mapid-eq-mapid.md) | 291 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `lemma` | [toLax_mapId'](declarations/tolax-mapid.md) | 296 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `lemma` | [toOplax_mapId'](declarations/tooplax-mapid.md) | 301 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `def` | [mapComp'](declarations/mapcomp.md) | 307 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `lemma` | [mapComp'_eq_mapComp](declarations/mapcomp-eq-mapcomp.md) | 313 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `lemma` | [toLax_mapComp'](declarations/tolax-mapcomp.md) | 318 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `lemma` | [toOplax_mapComp'](declarations/tooplax-mapcomp.md) | 324 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `def` | [mkOfOplax](declarations/mkofoplax.md) | 333 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `def` | [mkOfOplax'](declarations/mkofoplax-source-edition-2.md) | 350 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `def` | [mkOfLax](declarations/mkoflax.md) | 369 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `def` | [mkOfLax'](declarations/mkoflax-source-edition-2.md) | 387 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=30e90458ed0571dd0a52fa85952081a2666d40eebe94e8b9870521e8e998dee6 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Pseudofunctor/Variant0c1ddf7322b88b7a78f59d8785077a4af87942ccd4e8155f6ada7fc48d2243e7.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
