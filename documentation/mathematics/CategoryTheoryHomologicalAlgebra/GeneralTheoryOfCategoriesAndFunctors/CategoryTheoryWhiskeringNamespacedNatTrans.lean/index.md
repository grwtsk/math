# Category Theory Whiskering Namespaced Nat Trans

[Complete source index](../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**61 observed declarations and anonymous commands**, 36 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Whiskering/Variant10a11bab55d4d4bdd2db3593f6414bb61d8aac7eb2679d5df1b31da4a7c00f14.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `a976835c2d639a4b88b7851f4aa3db21784e7de0`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryWhiskeringNamespacedNatTrans.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [whiskerLeft](declarations/whiskerleft.md) | 50 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `lemma` | [NatTrans.id_hcomp](declarations/nattrans-id-hcomp.md) | 56 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `def` | [whiskerRight](declarations/whiskerright.md) | 64 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `lemma` | [NatTrans.hcomp_id](declarations/nattrans-hcomp-id.md) | 71 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `def` | [whiskeringLeft](declarations/whiskeringleft-source-edition-2.md) | 83 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `def` | [whiskeringRight](declarations/whiskeringright.md) | 99 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `instance` | [faithful_whiskeringRight_obj](declarations/faithful-whiskeringright-obj.md) | 111 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `def` | [Functor.FullyFaithful.whiskeringRight](declarations/functor-fullyfaithful-whiskeringright.md) | 120 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [whiskeringLeft_obj_id](declarations/whiskeringleft-obj-id.md) | 131 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `def` | [whiskeringLeftObjIdIso](declarations/whiskeringleftobjidiso.md) | 136 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [whiskeringLeft_obj_comp](declarations/whiskeringleft-obj-comp.md) | 139 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `def` | [whiskeringLeftObjCompIso](declarations/whiskeringleftobjcompiso.md) | 146 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [whiskeringRight_obj_id](declarations/whiskeringright-obj-id.md) | 151 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `def` | [whiskeringRightObjIdIso](declarations/whiskeringrightobjidiso.md) | 156 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [whiskeringRight_obj_comp](declarations/whiskeringright-obj-comp.md) | 161 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `def` | [whiskeringRightObjCompIso](declarations/whiskeringrightobjcompiso.md) | 168 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `instance` | [full_whiskeringRight_obj](declarations/full-whiskeringright-obj.md) | 173 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [whiskerLeft_id](declarations/whiskerleft-id.md) | 178 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [whiskerLeft_id'](declarations/whiskerleft-id-source-edition-2.md) | 183 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [whiskerRight_id](declarations/whiskerright-id.md) | 187 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [whiskerRight_id'](declarations/whiskerright-id-source-edition-2.md) | 192 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [whiskerLeft_comp](declarations/whiskerleft-comp.md) | 196 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [whiskerRight_comp](declarations/whiskerright-comp.md) | 201 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [whiskerLeft_comp_whiskerRight](declarations/whiskerleft-comp-whiskerright.md) | 206 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `lemma` | [NatTrans.hcomp_eq_whiskerLeft_comp_whiskerRight](declarations/nattrans-hcomp-eq-whiskerleft-comp-whiskerright.md) | 211 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `def` | [isoWhiskerLeft](declarations/isowhiskerleft.md) | 219 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [isoWhiskerLeft_hom](declarations/isowhiskerleft-hom.md) | 223 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [isoWhiskerLeft_inv](declarations/isowhiskerleft-inv.md) | 228 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `lemma` | [isoWhiskerLeft_symm](declarations/isowhiskerleft-symm.md) | 232 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `lemma` | [isoWhiskerLeft_refl](declarations/isowhiskerleft-refl.md) | 237 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `def` | [isoWhiskerRight](declarations/isowhiskerright.md) | 244 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [isoWhiskerRight_hom](declarations/isowhiskerright-hom.md) | 248 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [isoWhiskerRight_inv](declarations/isowhiskerright-inv.md) | 253 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `lemma` | [isoWhiskerRight_symm](declarations/isowhiskerright-symm.md) | 257 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `lemma` | [isoWhiskerRight_refl](declarations/isowhiskerright-refl.md) | 262 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `instance` | [isIso_whiskerLeft](declarations/isiso-whiskerleft.md) | 266 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `instance` | [isIso_whiskerRight](declarations/isiso-whiskerright.md) | 270 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `theorem` | [isoWhiskerLeft_trans](declarations/isowhiskerleft-trans.md) | 275 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `theorem` | [isoWhiskerRight_trans](declarations/isowhiskerright-trans.md) | 280 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `theorem` | [isoWhiskerLeft_trans_isoWhiskerRight](declarations/isowhiskerleft-trans-isowhiskerright.md) | 284 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `theorem` | [whiskerLeft_twice](declarations/whiskerleft-twice.md) | 292 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `theorem` | [whiskerRight_twice](declarations/whiskerright-twice.md) | 298 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `theorem` | [whiskerRight_left](declarations/whiskerright-left.md) | 303 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `theorem` | [isoWhiskerLeft_twice](declarations/isowhiskerleft-twice.md) | 310 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `theorem` | [isoWhiskerRight_twice](declarations/isowhiskerright-twice.md) | 316 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `theorem` | [isoWhiskerRight_left](declarations/isowhiskerright-left.md) | 321 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `theorem` | [isoWhiskerLeft_right](declarations/isowhiskerleft-right.md) | 327 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `theorem` | [triangleIso](declarations/triangleiso.md) | 343 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `theorem` | [pentagonIso](declarations/pentagoniso.md) | 347 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `theorem` | [triangle](declarations/triangle.md) | 352 | `BLOCKED_NATIVE_ADMISSION` |
| 51 | `theorem` | [pentagon](declarations/pentagon.md) | 356 | `BLOCKED_NATIVE_ADMISSION` |
| 52 | `def` | [whiskeringLeft₂](declarations/whiskeringleft-source-edition-3.md) | 368 | `BLOCKED_NATIVE_ADMISSION` |
| 53 | `def` | [whiskeringLeft₃ObjObjObj](declarations/whiskeringleft-objobjobj.md) | 381 | `BLOCKED_NATIVE_ADMISSION` |
| 54 | `def` | [whiskeringLeft₃ObjObjMap](declarations/whiskeringleft-objobjmap.md) | 388 | `BLOCKED_NATIVE_ADMISSION` |
| 55 | `def` | [whiskeringLeft₃ObjObj](declarations/whiskeringleft-objobj.md) | 396 | `BLOCKED_NATIVE_ADMISSION` |
| 56 | `def` | [whiskeringLeft₃ObjMap](declarations/whiskeringleft-objmap.md) | 404 | `BLOCKED_NATIVE_ADMISSION` |
| 57 | `def` | [whiskeringLeft₃Obj](declarations/whiskeringleft-obj.md) | 411 | `BLOCKED_NATIVE_ADMISSION` |
| 58 | `def` | [whiskeringLeft₃Map](declarations/whiskeringleft-map.md) | 419 | `BLOCKED_NATIVE_ADMISSION` |
| 59 | `def` | [whiskeringLeft₃](declarations/whiskeringleft.md) | 426 | `BLOCKED_NATIVE_ADMISSION` |
| 60 | `def` | [Functor.postcompose₂](declarations/functor-postcompose.md) | 436 | `BLOCKED_NATIVE_ADMISSION` |
| 61 | `def` | [Functor.postcompose₃](declarations/functor-postcompose-source-edition-2.md) | 443 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=4b835f4a6aecae79d5fadfb684944189c05a663f8eaabcf1bdd7674b513dd00e -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Whiskering/Variant10a11bab55d4d4bdd2db3593f6414bb61d8aac7eb2679d5df1b31da4a7c00f14.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
