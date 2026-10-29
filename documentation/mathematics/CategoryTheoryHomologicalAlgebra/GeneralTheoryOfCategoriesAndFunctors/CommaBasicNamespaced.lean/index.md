# Comma Basic Namespaced

[Complete source index](../../../complete-source-index.md) · [Up one directory](../../../complete-source-index.md) · [Full source](source.md)

**74 observed declarations and anonymous commands**, 15 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantc97d8183a54f70064d37920cffd7e2a5b304df8f7df84a94bf959837c69ed5a0.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `bed894b27301159832d73ff295ea5aece3891946`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CommaBasicNamespaced.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `structure` | [Comma](declarations/comma.md) | 72 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `instance` | [Comma.inhabited](declarations/comma-inhabited.md) | 81 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `structure` | [CommaMorphism](declarations/commamorphism.md) | 93 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `instance` | [CommaMorphism.inhabited](declarations/commamorphism-inhabited.md) | 101 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `instance` | [commaCategory](declarations/commacategory.md) | 107 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `lemma` | [hom_ext](declarations/hom-ext.md) | 123 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [id_left](declarations/id-left.md) | 127 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [id_right](declarations/id-right.md) | 131 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [comp_left](declarations/comp-left.md) | 135 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [comp_right](declarations/comp-right.md) | 139 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `def` | [fst](declarations/fst.md) | 148 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `def` | [snd](declarations/snd.md) | 154 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `def` | [natTrans](declarations/nattrans.md) | 163 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [eqToHom_left](declarations/eqtohom-left.md) | 166 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [eqToHom_right](declarations/eqtohom-right.md) | 172 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `instance` | [(anonymous)](declarations/instance-source-edition-9.md) | 181 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `instance` | [(anonymous)](declarations/instance-source-edition-10.md) | 184 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `lemma` | [inv_left](declarations/inv-left.md) | 188 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `lemma` | [inv_right](declarations/inv-right.md) | 193 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `lemma` | [left_hom_inv_right](declarations/left-hom-inv-right.md) | 197 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `lemma` | [inv_left_hom_right](declarations/inv-left-hom-right.md) | 200 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `def` | [leftIso](declarations/leftiso.md) | 211 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `def` | [rightIso](declarations/rightiso.md) | 215 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `def` | [isoMk](declarations/isomk.md) | 221 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `def` | [map](declarations/map.md) | 245 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `instance` | [faithful_map](declarations/faithful-map.md) | 260 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `instance` | [full_map](declarations/full-map.md) | 266 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `instance` | [essSurj_map](declarations/esssurj-map.md) | 278 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `instance` | [isEquivalenceMap](declarations/isequivalencemap.md) | 291 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [map_fst](declarations/map-fst.md) | 298 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `def` | [mapFst](declarations/mapfst.md) | 304 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [map_snd](declarations/map-snd.md) | 310 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `def` | [mapSnd](declarations/mapsnd.md) | 316 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `def` | [mapLeft](declarations/mapleft.md) | 323 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `def` | [mapLeftId](declarations/mapleftid.md) | 335 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `def` | [mapLeftComp](declarations/mapleftcomp.md) | 342 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `def` | [mapLeftEq](declarations/maplefteq.md) | 349 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `def` | [mapLeftIso](declarations/mapleftiso.md) | 355 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `def` | [mapRight](declarations/mapright.md) | 363 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `def` | [mapRightId](declarations/maprightid.md) | 375 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `def` | [mapRightComp](declarations/maprightcomp.md) | 382 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `def` | [mapRightEq](declarations/maprighteq.md) | 389 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `def` | [mapRightIso](declarations/maprightiso.md) | 395 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `def` | [preLeft](declarations/preleft.md) | 409 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `def` | [preLeftIso](declarations/preleftiso.md) | 421 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `instance` | [(anonymous)](declarations/instance-source-edition-8.md) | 425 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `instance` | [(anonymous)](declarations/instance-source-edition-4.md) | 428 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `instance` | [(anonymous)](declarations/instance-source-edition-7.md) | 431 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `instance` | [isEquivalence_preLeft](declarations/isequivalence-preleft.md) | 435 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `def` | [preRight](declarations/preright.md) | 440 | `BLOCKED_NATIVE_ADMISSION` |
| 51 | `def` | [preRightIso](declarations/prerightiso.md) | 451 | `BLOCKED_NATIVE_ADMISSION` |
| 52 | `instance` | [(anonymous)](declarations/instance.md) | 455 | `BLOCKED_NATIVE_ADMISSION` |
| 53 | `instance` | [(anonymous)](declarations/instance-source-edition-11.md) | 458 | `BLOCKED_NATIVE_ADMISSION` |
| 54 | `instance` | [(anonymous)](declarations/instance-source-edition-3.md) | 461 | `BLOCKED_NATIVE_ADMISSION` |
| 55 | `instance` | [isEquivalence_preRight](declarations/isequivalence-preright.md) | 465 | `BLOCKED_NATIVE_ADMISSION` |
| 56 | `def` | [post](declarations/post.md) | 470 | `BLOCKED_NATIVE_ADMISSION` |
| 57 | `def` | [postIso](declarations/postiso.md) | 481 | `BLOCKED_NATIVE_ADMISSION` |
| 58 | `instance` | [(anonymous)](declarations/instance-source-edition-2.md) | 485 | `BLOCKED_NATIVE_ADMISSION` |
| 59 | `instance` | [(anonymous)](declarations/instance-source-edition-5.md) | 488 | `BLOCKED_NATIVE_ADMISSION` |
| 60 | `instance` | [(anonymous)](declarations/instance-source-edition-6.md) | 491 | `BLOCKED_NATIVE_ADMISSION` |
| 61 | `instance` | [isEquivalence_post](declarations/isequivalence-post.md) | 495 | `BLOCKED_NATIVE_ADMISSION` |
| 62 | `def` | [fromProd](declarations/fromprod.md) | 501 | `BLOCKED_NATIVE_ADMISSION` |
| 63 | `def` | [equivProd](declarations/equivprod.md) | 514 | `BLOCKED_NATIVE_ADMISSION` |
| 64 | `def` | [toPUnitIdEquiv](declarations/topunitidequiv.md) | 524 | `BLOCKED_NATIVE_ADMISSION` |
| 65 | `theorem` | [toPUnitIdEquiv_functor_iso](declarations/topunitidequiv-functor-iso.md) | 529 | `BLOCKED_NATIVE_ADMISSION` |
| 66 | `def` | [toIdPUnitEquiv](declarations/toidpunitequiv.md) | 537 | `BLOCKED_NATIVE_ADMISSION` |
| 67 | `theorem` | [toIdPUnitEquiv_functor_iso](declarations/toidpunitequiv-functor-iso.md) | 542 | `BLOCKED_NATIVE_ADMISSION` |
| 68 | `def` | [opFunctor](declarations/opfunctor.md) | 555 | `BLOCKED_NATIVE_ADMISSION` |
| 69 | `def` | [opFunctorCompFst](declarations/opfunctorcompfst.md) | 562 | `BLOCKED_NATIVE_ADMISSION` |
| 70 | `def` | [opFunctorCompSnd](declarations/opfunctorcompsnd.md) | 568 | `BLOCKED_NATIVE_ADMISSION` |
| 71 | `def` | [unopFunctor](declarations/unopfunctor.md) | 573 | `BLOCKED_NATIVE_ADMISSION` |
| 72 | `def` | [unopFunctorCompFst](declarations/unopfunctorcompfst.md) | 579 | `BLOCKED_NATIVE_ADMISSION` |
| 73 | `def` | [unopFunctorCompSnd](declarations/unopfunctorcompsnd.md) | 584 | `BLOCKED_NATIVE_ADMISSION` |
| 74 | `def` | [opEquiv](declarations/opequiv.md) | 589 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=225596fc971a2dae23850d6964543fa21dca71d38426987534914dbd5d6594e9 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantc97d8183a54f70064d37920cffd7e2a5b304df8f7df84a94bf959837c69ed5a0.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
