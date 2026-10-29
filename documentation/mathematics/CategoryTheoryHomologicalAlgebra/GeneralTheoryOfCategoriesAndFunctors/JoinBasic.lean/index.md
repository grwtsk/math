# Join Basic

[Complete source index](../../../complete-source-index.md) · [Up one directory](../../../complete-source-index.md) · [Full source](source.md)

**68 observed declarations and anonymous commands**, 34 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantc9933c4416dde10549f83a36503d3327d0f64dfb06a66c4f7e881d22fa0f6304.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `2360df444fb04aab40089408de6a0f466fa24718`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/JoinBasic.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `inductive` | [Join](declarations/join.md) | 43 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `def` | [Hom](declarations/hom.md) | 61 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `def` | [id](declarations/id.md) | 68 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `def` | [comp](declarations/comp.md) | 73 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `instance` | [(anonymous)](declarations/instance-source-edition-2.md) | 79 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `lemma` | [false_of_right_to_left](declarations/false-of-right-to-left.md) | 96 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `instance` | [(anonymous)](declarations/instance.md) | 98 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `def` | [edge](declarations/edge.md) | 101 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `def` | [inclLeft](declarations/inclleft.md) | 112 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `def` | [inclRight](declarations/inclright.md) | 121 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `def` | [homInduction](declarations/hominduction.md) | 130 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `lemma` | [homInduction_left](declarations/hominduction-left.md) | 141 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `lemma` | [homInduction_right](declarations/hominduction-right.md) | 149 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `lemma` | [homInduction_edge](declarations/hominduction-edge.md) | 157 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `def` | [inclLeftFullyFaithful](declarations/inclleftfullyfaithful.md) | 167 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `def` | [inclRightFullyFaithful](declarations/inclrightfullyfaithful.md) | 171 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `instance` | [inclLeftFull](declarations/inclleftfull.md) | 174 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `instance` | [inclRightFull](declarations/inclrightfull.md) | 176 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `instance` | [inclLeftFaithFull](declarations/inclleftfaithfull.md) | 178 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `instance` | [inclRightFaithfull](declarations/inclrightfaithfull.md) | 180 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `lemma` | [id_left](declarations/id-left.md) | 185 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `lemma` | [id_right](declarations/id-right.md) | 190 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `def` | [edgeTransform](declarations/edgetransform.md) | 196 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `def` | [mkFunctor](declarations/mkfunctor.md) | 209 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `lemma` | [mkFunctor_obj_left](declarations/mkfunctor-obj-left.md) | 240 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `lemma` | [mkFunctor_obj_right](declarations/mkfunctor-obj-right.md) | 243 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `lemma` | [mkFunctor_map_inclLeft](declarations/mkfunctor-map-inclleft.md) | 246 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `def` | [mkFunctorLeft](declarations/mkfunctorleft.md) | 252 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `def` | [mkFunctorRight](declarations/mkfunctorright.md) | 256 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `lemma` | [mkFunctor_map_inclRight](declarations/mkfunctor-map-inclright.md) | 259 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `lemma` | [mkFunctor_edgeTransform](declarations/mkfunctor-edgetransform.md) | 265 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `lemma` | [mkFunctor_map_edge](declarations/mkfunctor-map-edge.md) | 271 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `def` | [mkNatTrans](declarations/mknattrans.md) | 280 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `lemma` | [mkNatTrans_app_left](declarations/mknattrans-app-left.md) | 304 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `lemma` | [mkNatTrans_app_right](declarations/mknattrans-app-right.md) | 307 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `lemma` | [whiskerLeft_inclLeft_mkNatTrans](declarations/whiskerleft-inclleft-mknattrans.md) | 310 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `lemma` | [whiskerLeft_inclRight_mkNatTrans](declarations/whiskerleft-inclright-mknattrans.md) | 313 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `lemma` | [natTrans_ext](declarations/nattrans-ext.md) | 320 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `lemma` | [eq_mkNatTrans](declarations/eq-mknattrans.md) | 329 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `lemma` | [mkNatTransComp](declarations/mknattranscomp.md) | 336 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `def` | [mkNatIso](declarations/mknatiso.md) | 357 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `def` | [mapPair](declarations/mappair.md) | 368 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `lemma` | [mapPair_obj_left](declarations/mappair-obj-left.md) | 376 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `lemma` | [mapPair_obj_right](declarations/mappair-obj-right.md) | 379 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `lemma` | [mapPair_map_inclLeft](declarations/mappair-map-inclleft.md) | 382 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `lemma` | [mapPair_map_inclRight](declarations/mappair-map-inclright.md) | 386 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `def` | [mapPairLeft](declarations/mappairleft.md) | 391 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `def` | [mapPairRight](declarations/mappairright.md) | 395 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `def` | [isoMkFunctor](declarations/isomkfunctor.md) | 401 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `def` | [mapPairId](declarations/mappairid.md) | 407 | `BLOCKED_NATIVE_ADMISSION` |
| 51 | `def` | [mapPairComp](declarations/mappaircomp.md) | 417 | `BLOCKED_NATIVE_ADMISSION` |
| 52 | `lemma` | [mapPairComp_hom_app_left](declarations/mappaircomp-hom-app-left.md) | 436 | `BLOCKED_NATIVE_ADMISSION` |
| 53 | `lemma` | [mapPairComp_hom_app_right](declarations/mappaircomp-hom-app-right.md) | 442 | `BLOCKED_NATIVE_ADMISSION` |
| 54 | `lemma` | [mapPairComp_inv_app_left](declarations/mappaircomp-inv-app-left.md) | 448 | `BLOCKED_NATIVE_ADMISSION` |
| 55 | `lemma` | [mapPairComp_inv_app_right](declarations/mappaircomp-inv-app-right.md) | 454 | `BLOCKED_NATIVE_ADMISSION` |
| 56 | `def` | [mapWhiskerRight](declarations/mapwhiskerright.md) | 473 | `BLOCKED_NATIVE_ADMISSION` |
| 57 | `lemma` | [mapWhiskerRight_comp](declarations/mapwhiskerright-comp.md) | 480 | `BLOCKED_NATIVE_ADMISSION` |
| 58 | `def` | [mapWhiskerLeft](declarations/mapwhiskerleft.md) | 488 | `BLOCKED_NATIVE_ADMISSION` |
| 59 | `lemma` | [mapWhiskerLeft_comp](declarations/mapwhiskerleft-comp.md) | 495 | `BLOCKED_NATIVE_ADMISSION` |
| 60 | `lemma` | [mapWhisker_exchange](declarations/mapwhisker-exchange.md) | 501 | `BLOCKED_NATIVE_ADMISSION` |
| 61 | `def` | [mapIsoWhiskerLeft](declarations/mapisowhiskerleft.md) | 511 | `BLOCKED_NATIVE_ADMISSION` |
| 62 | `def` | [mapIsoWhiskerRight](declarations/mapisowhiskerright.md) | 520 | `BLOCKED_NATIVE_ADMISSION` |
| 63 | `lemma` | [mapIsoWhiskerRight_hom](declarations/mapisowhiskerright-hom.md) | 526 | `BLOCKED_NATIVE_ADMISSION` |
| 64 | `lemma` | [mapIsoWhiskerRight_inv](declarations/mapisowhiskerright-inv.md) | 529 | `BLOCKED_NATIVE_ADMISSION` |
| 65 | `lemma` | [mapIsoWhiskerLeft_hom](declarations/mapisowhiskerleft-hom.md) | 534 | `BLOCKED_NATIVE_ADMISSION` |
| 66 | `lemma` | [mapIsoWhiskerLeft_inv](declarations/mapisowhiskerleft-inv.md) | 537 | `BLOCKED_NATIVE_ADMISSION` |
| 67 | `def` | [mapPairEquiv](declarations/mappairequiv.md) | 553 | `BLOCKED_NATIVE_ADMISSION` |
| 68 | `instance` | [isEquivalenceMapPair](declarations/isequivalencemappair.md) | 570 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=592f8d551b0efbc3cd7a515dfc82703b7084d8c49fbda480174f26984cdaf29f -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantc9933c4416dde10549f83a36503d3327d0f64dfb06a66c4f7e881d22fa0f6304.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
