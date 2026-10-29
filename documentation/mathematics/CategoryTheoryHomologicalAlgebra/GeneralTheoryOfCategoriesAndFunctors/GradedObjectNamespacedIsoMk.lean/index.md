# Graded Object Namespaced Iso Mk

[Complete source index](../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**63 observed declarations and anonymous commands**, 29 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/GradedObject/Variant6282f29c1b953cc22e41ae6f68a776d9145c23ec33c5ecd00dc14c0fdd852593.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `e8e53688edfa74e4290e6bcc08158e91ff5f4a43`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GradedObjectNamespacedIsoMk.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [GradedObject](declarations/gradedobject.md) | 48 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `instance` | [inhabitedGradedObject](declarations/inhabitedgradedobject.md) | 52 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `abbrev` | [GradedObjectWithShift](declarations/gradedobjectwithshift.md) | 61 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `instance` | [categoryOfGradedObjects](declarations/categoryofgradedobjects.md) | 69 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `lemma` | [hom_ext](declarations/hom-ext.md) | 73 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `def` | [eval](declarations/eval.md) | 79 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `def` | [isoMk](declarations/isomk.md) | 89 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `lemma` | [isIso_of_isIso_apply](declarations/isiso-of-isiso-apply.md) | 96 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `instance` | [isIso_apply_of_isIso](declarations/isiso-apply-of-isiso.md) | 101 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `lemma` | [hom_inv_id_eval](declarations/hom-inv-id-eval.md) | 115 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `lemma` | [inv_hom_id_eval](declarations/inv-hom-id-eval.md) | 121 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `lemma` | [map_hom_inv_id_eval](declarations/map-hom-inv-id-eval.md) | 127 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `lemma` | [map_inv_hom_id_eval](declarations/map-inv-hom-id-eval.md) | 133 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `lemma` | [map_hom_inv_id_eval_app](declarations/map-hom-inv-id-eval-app.md) | 139 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `lemma` | [map_inv_hom_id_eval_app](declarations/map-inv-hom-id-eval-app.md) | 145 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `abbrev` | [comap](declarations/comap.md) | 161 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [eqToHom_proj](declarations/eqtohom-proj.md) | 165 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `def` | [comapEq](declarations/comapeq.md) | 174 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [comapEq_symm](declarations/comapeq-symm.md) | 178 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [comapEq_trans](declarations/comapeq-trans.md) | 181 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [eqToHom_apply](declarations/eqtohom-apply.md) | 184 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `def` | [comapEquiv](declarations/comapequiv.md) | 193 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `instance` | [hasShift](declarations/hasshift.md) | 203 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [shiftFunctor_obj_apply](declarations/shiftfunctor-obj-apply.md) | 211 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [shiftFunctor_map_apply](declarations/shiftfunctor-map-apply.md) | 216 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `instance` | [(anonymous)](declarations/instance-source-edition-3.md) | 221 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [zero_apply](declarations/zero-apply.md) | 225 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `instance` | [hasZeroMorphisms](declarations/haszeromorphisms.md) | 229 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `instance` | [hasZeroObject](declarations/haszeroobject.md) | 236 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `def` | [total](declarations/total.md) | 258 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `instance` | [(anonymous)](declarations/instance-source-edition-4.md) | 271 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `instance` | [(anonymous)](declarations/instance.md) | 289 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `instance` | [(anonymous)](declarations/instance-source-edition-2.md) | 291 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `abbrev` | [mapObjFun](declarations/mapobjfun.md) | 304 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `abbrev` | [HasMap](declarations/hasmap.md) | 310 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `lemma` | [hasMap_of_iso](declarations/hasmap-of-iso.md) | 313 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `def` | [mapObj](declarations/mapobj-source-edition-2.md) | 323 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `def` | [ιMapObj](declarations/mapobj.md) | 327 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `abbrev` | [CofanMapObjFun](declarations/cofanmapobjfun.md) | 333 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `def` | [CofanMapObjFun.mk](declarations/cofanmapobjfun-mk.md) | 339 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `def` | [cofanMapObj](declarations/cofanmapobj.md) | 345 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `def` | [isColimitCofanMapObj](declarations/iscolimitcofanmapobj.md) | 350 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `lemma` | [mapObj_ext](declarations/mapobj-ext.md) | 354 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `def` | [descMapObj](declarations/descmapobj-source-edition-2.md) | 361 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `lemma` | [ι_descMapObj](declarations/descmapobj.md) | 366 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `lemma` | [hasMap](declarations/hasmap-source-edition-2.md) | 374 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `def` | [iso](declarations/iso.md) | 383 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `lemma` | [inj_iso_hom](declarations/inj-iso-hom.md) | 387 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `lemma` | [ιMapObj_iso_inv](declarations/mapobj-iso-inv.md) | 392 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `def` | [mapMap](declarations/mapmap-source-edition-2.md) | 403 | `BLOCKED_NATIVE_ADMISSION` |
| 51 | `lemma` | [ι_mapMap](declarations/mapmap.md) | 407 | `BLOCKED_NATIVE_ADMISSION` |
| 52 | `lemma` | [congr_mapMap](declarations/congr-mapmap.md) | 411 | `BLOCKED_NATIVE_ADMISSION` |
| 53 | `lemma` | [mapMap_id](declarations/mapmap-id.md) | 418 | `BLOCKED_NATIVE_ADMISSION` |
| 54 | `lemma` | [mapMap_comp](declarations/mapmap-comp.md) | 423 | `BLOCKED_NATIVE_ADMISSION` |
| 55 | `def` | [mapIso](declarations/mapiso.md) | 428 | `BLOCKED_NATIVE_ADMISSION` |
| 56 | `def` | [map](declarations/map.md) | 438 | `BLOCKED_NATIVE_ADMISSION` |
| 57 | `def` | [cofanMapObjComp](declarations/cofanmapobjcomp.md) | 458 | `BLOCKED_NATIVE_ADMISSION` |
| 58 | `def` | [isColimitCofanMapObjComp](declarations/iscolimitcofanmapobjcomp.md) | 470 | `BLOCKED_NATIVE_ADMISSION` |
| 59 | `lemma` | [hasMap_comp](declarations/hasmap-comp.md) | 489 | `BLOCKED_NATIVE_ADMISSION` |
| 60 | `def` | [ιMapObjOrZero](declarations/mapobjorzero.md) | 498 | `BLOCKED_NATIVE_ADMISSION` |
| 61 | `lemma` | [ιMapObjOrZero_eq](declarations/mapobjorzero-eq.md) | 503 | `BLOCKED_NATIVE_ADMISSION` |
| 62 | `lemma` | [ιMapObjOrZero_eq_zero](declarations/mapobjorzero-eq-zero.md) | 505 | `BLOCKED_NATIVE_ADMISSION` |
| 63 | `lemma` | [ιMapObjOrZero_mapMap](declarations/mapobjorzero-mapmap.md) | 509 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=bc642074cdd43d102efd518ce6e41c37bc1c59706d55acfe6f482ebb7acb4a8c -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/GradedObject/Variant6282f29c1b953cc22e41ae6f68a776d9145c23ec33c5ecd00dc14c0fdd852593.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
