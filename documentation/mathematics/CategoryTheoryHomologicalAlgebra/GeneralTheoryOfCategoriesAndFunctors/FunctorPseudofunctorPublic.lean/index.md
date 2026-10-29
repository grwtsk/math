# Functor Pseudofunctor Public

[Complete source index](../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**36 observed declarations and anonymous commands**, 22 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Pseudofunctor/Variantd5ef476a4cbde70668b9be30cf9d8c09dd4478b17a9625abe2b9a12210e8fe1b.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `286407b5dc4fe748e97b5ffc1c2b12985e1eda9d`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/FunctorPseudofunctorPublic.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `structure` | [Pseudofunctor](declarations/pseudofunctor.md) | 58 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `def` | [toOplax](declarations/tooplax.md) | 119 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `instance` | [hasCoeToOplax](declarations/hascoetooplax.md) | 124 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `def` | [toLax](declarations/tolax.md) | 129 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `instance` | [hasCoeToLax](declarations/hascoetolax.md) | 140 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `def` | [id](declarations/id.md) | 147 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `instance` | [(anonymous)](declarations/instance.md) | 152 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `def` | [comp](declarations/comp.md) | 159 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `lemma` | [mapComp_assoc_right_hom](declarations/mapcomp-assoc-right-hom.md) | 169 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `lemma` | [mapComp_assoc_left_hom](declarations/mapcomp-assoc-left-hom.md) | 176 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `lemma` | [mapComp_assoc_right_inv](declarations/mapcomp-assoc-right-inv.md) | 183 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `lemma` | [mapComp_assoc_left_inv](declarations/mapcomp-assoc-left-inv.md) | 190 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `lemma` | [mapComp_id_left_hom](declarations/mapcomp-id-left-hom.md) | 200 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `lemma` | [mapComp_id_left](declarations/mapcomp-id-left.md) | 204 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `lemma` | [mapComp_id_left_inv](declarations/mapcomp-id-left-inv.md) | 212 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `lemma` | [whiskerRightIso_mapId](declarations/whiskerrightiso-mapid.md) | 216 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `lemma` | [whiskerRight_mapId_hom](declarations/whiskerright-mapid-hom.md) | 224 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `lemma` | [whiskerRight_mapId_inv](declarations/whiskerright-mapid-inv.md) | 232 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `lemma` | [mapComp_id_right_hom](declarations/mapcomp-id-right-hom.md) | 240 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `lemma` | [mapComp_id_right](declarations/mapcomp-id-right.md) | 244 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `lemma` | [mapComp_id_right_inv](declarations/mapcomp-id-right-inv.md) | 252 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `lemma` | [whiskerLeftIso_mapId](declarations/whiskerleftiso-mapid.md) | 256 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `lemma` | [whiskerLeft_mapId_hom](declarations/whiskerleft-mapid-hom.md) | 264 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `lemma` | [whiskerLeft_mapId_inv](declarations/whiskerleft-mapid-inv.md) | 272 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `def` | [mapId'](declarations/mapid.md) | 278 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `lemma` | [mapId'_eq_mapId](declarations/mapid-eq-mapid.md) | 283 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `lemma` | [toLax_mapId'](declarations/tolax-mapid.md) | 288 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `lemma` | [toOplax_mapId'](declarations/tooplax-mapid.md) | 293 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `def` | [mapComp'](declarations/mapcomp.md) | 299 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `lemma` | [mapComp'_eq_mapComp](declarations/mapcomp-eq-mapcomp.md) | 305 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `lemma` | [toLax_mapComp'](declarations/tolax-mapcomp.md) | 310 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `lemma` | [toOplax_mapComp'](declarations/tooplax-mapcomp.md) | 316 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `def` | [mkOfOplax](declarations/mkofoplax-source-edition-2.md) | 325 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `def` | [mkOfOplax'](declarations/mkofoplax.md) | 342 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `def` | [mkOfLax](declarations/mkoflax-source-edition-2.md) | 361 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `def` | [mkOfLax'](declarations/mkoflax.md) | 379 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=6606d73f8c3a7da08eac605ca373ee251771b48dcb218fda68251028fe8b1693 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Pseudofunctor/Variantd5ef476a4cbde70668b9be30cf9d8c09dd4478b17a9625abe2b9a12210e8fe1b.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
