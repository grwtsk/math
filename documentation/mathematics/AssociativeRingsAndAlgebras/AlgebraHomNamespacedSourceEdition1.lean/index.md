# Algebra Hom Namespaced Source Edition1

[Complete source index](../../complete-source-index.md) · [Up one directory](../../complete-source-index.md) · [Full source](source.md)

**86 observed declarations and anonymous commands**, 62 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Algebra/GroupTheory/Hom/Variant0af4e6f42ffb1e80b10cb907f09a3d5369ce496de83f6727f1c1a11d739d66ca.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `9425caa04e9fdcb026cb0a9fcfc946b20388b018`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../_verification/specifications/AssociativeRingsAndAlgebras/AlgebraHomNamespacedSourceEdition1.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `structure` | [AlgHom](declarations/alghom.md) | 42 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `class` | [AlgHomClass](declarations/alghomclass.md) | 58 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `instance` | [(anonymous)](declarations/instance.md) | 76 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `def` | [toAlgHom](declarations/toalghom-source-edition-2.md) | 86 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `instance` | [coeTC](declarations/coetc.md) | 91 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `instance` | [algHomClass](declarations/alghomclass-source-edition-2.md) | 111 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `def` | [Simps.apply](declarations/simps-apply.md) | 125 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [coe_coe](declarations/coe-coe.md) | 131 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [toFun_eq_coe](declarations/tofun-eq-coe.md) | 136 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `instance` | [coeOutRingHom](declarations/coeoutringhom.md) | 142 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `def` | [toMonoidHom'](declarations/tomonoidhom.md) | 148 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `instance` | [coeOutMonoidHom](declarations/coeoutmonoidhom.md) | 150 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `def` | [toAddMonoidHom'](declarations/toaddmonoidhom.md) | 156 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `instance` | [coeOutAddMonoidHom](declarations/coeoutaddmonoidhom.md) | 158 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [coe_mk](declarations/coe-mk.md) | 165 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [coe_mks](declarations/coe-mks.md) | 169 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [coe_ringHom_mk](declarations/coe-ringhom-mk.md) | 175 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [toRingHom_eq_coe](declarations/toringhom-eq-coe.md) | 180 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [coe_toRingHom](declarations/coe-toringhom.md) | 185 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [coe_toMonoidHom](declarations/coe-tomonoidhom.md) | 190 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [coe_toAddMonoidHom](declarations/coe-toaddmonoidhom.md) | 195 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [coe_fn_injective](declarations/coe-fn-injective.md) | 201 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [coe_fn_inj](declarations/coe-fn-inj.md) | 205 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [coe_ringHom_injective](declarations/coe-ringhom-injective.md) | 209 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [coe_monoidHom_injective](declarations/coe-monoidhom-injective.md) | 213 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [coe_addMonoidHom_injective](declarations/coe-addmonoidhom-injective.md) | 217 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [congr_fun](declarations/congr-fun.md) | 221 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [congr_arg](declarations/congr-arg.md) | 225 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [ext](declarations/ext.md) | 230 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [ext_iff](declarations/ext-iff.md) | 234 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [mk_coe](declarations/mk-coe.md) | 239 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [commutes](declarations/commutes.md) | 244 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [comp_algebraMap](declarations/comp-algebramap.md) | 248 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [map_add](declarations/map-add.md) | 252 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `theorem` | [map_zero](declarations/map-zero.md) | 256 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `theorem` | [map_mul](declarations/map-mul.md) | 260 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `theorem` | [map_one](declarations/map-one.md) | 264 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `theorem` | [map_pow](declarations/map-pow.md) | 268 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `theorem` | [map_smul](declarations/map-smul.md) | 273 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `theorem` | [map_sum](declarations/map-sum.md) | 277 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `theorem` | [map_finsupp_sum](declarations/map-finsupp-sum.md) | 282 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `theorem` | [map_bit0](declarations/map-bit0.md) | 288 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `theorem` | [map_bit1](declarations/map-bit1.md) | 293 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `def` | [mk'](declarations/mk.md) | 298 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `theorem` | [coe_mk'](declarations/coe-mk-source-edition-2.md) | 305 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `def` | [id](declarations/id.md) | 314 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `theorem` | [coe_id](declarations/coe-id.md) | 319 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `theorem` | [id_toRingHom](declarations/id-toringhom.md) | 324 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `theorem` | [id_apply](declarations/id-apply.md) | 330 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `def` | [comp](declarations/comp.md) | 335 | `BLOCKED_NATIVE_ADMISSION` |
| 51 | `theorem` | [coe_comp](declarations/coe-comp.md) | 341 | `BLOCKED_NATIVE_ADMISSION` |
| 52 | `theorem` | [comp_apply](declarations/comp-apply.md) | 345 | `BLOCKED_NATIVE_ADMISSION` |
| 53 | `theorem` | [comp_toRingHom](declarations/comp-toringhom.md) | 349 | `BLOCKED_NATIVE_ADMISSION` |
| 54 | `theorem` | [comp_id](declarations/comp-id.md) | 355 | `BLOCKED_NATIVE_ADMISSION` |
| 55 | `theorem` | [id_comp](declarations/id-comp.md) | 360 | `BLOCKED_NATIVE_ADMISSION` |
| 56 | `theorem` | [comp_assoc](declarations/comp-assoc.md) | 364 | `BLOCKED_NATIVE_ADMISSION` |
| 57 | `def` | [toLinearMap](declarations/tolinearmap.md) | 370 | `BLOCKED_NATIVE_ADMISSION` |
| 58 | `theorem` | [toLinearMap_apply](declarations/tolinearmap-apply.md) | 377 | `BLOCKED_NATIVE_ADMISSION` |
| 59 | `theorem` | [toLinearMap_injective](declarations/tolinearmap-injective.md) | 381 | `BLOCKED_NATIVE_ADMISSION` |
| 60 | `theorem` | [comp_toLinearMap](declarations/comp-tolinearmap.md) | 387 | `BLOCKED_NATIVE_ADMISSION` |
| 61 | `theorem` | [toLinearMap_id](declarations/tolinearmap-id.md) | 393 | `BLOCKED_NATIVE_ADMISSION` |
| 62 | `def` | [ofLinearMap](declarations/oflinearmap.md) | 399 | `BLOCKED_NATIVE_ADMISSION` |
| 63 | `theorem` | [ofLinearMap_toLinearMap](declarations/oflinearmap-tolinearmap.md) | 409 | `BLOCKED_NATIVE_ADMISSION` |
| 64 | `theorem` | [toLinearMap_ofLinearMap](declarations/tolinearmap-oflinearmap.md) | 416 | `BLOCKED_NATIVE_ADMISSION` |
| 65 | `theorem` | [ofLinearMap_id](declarations/oflinearmap-id.md) | 423 | `BLOCKED_NATIVE_ADMISSION` |
| 66 | `theorem` | [map_smul_of_tower](declarations/map-smul-of-tower.md) | 428 | `BLOCKED_NATIVE_ADMISSION` |
| 67 | `theorem` | [map_list_prod](declarations/map-list-prod.md) | 433 | `BLOCKED_NATIVE_ADMISSION` |
| 68 | `instance` | [End](declarations/end.md) | 438 | `BLOCKED_NATIVE_ADMISSION` |
| 69 | `theorem` | [one_apply](declarations/one-apply.md) | 447 | `BLOCKED_NATIVE_ADMISSION` |
| 70 | `theorem` | [mul_apply](declarations/mul-apply.md) | 452 | `BLOCKED_NATIVE_ADMISSION` |
| 71 | `theorem` | [algebraMap_eq_apply](declarations/algebramap-eq-apply.md) | 456 | `BLOCKED_NATIVE_ADMISSION` |
| 72 | `theorem` | [map_multiset_prod](declarations/map-multiset-prod.md) | 469 | `BLOCKED_NATIVE_ADMISSION` |
| 73 | `theorem` | [map_prod](declarations/map-prod.md) | 473 | `BLOCKED_NATIVE_ADMISSION` |
| 74 | `theorem` | [map_finsupp_prod](declarations/map-finsupp-prod.md) | 478 | `BLOCKED_NATIVE_ADMISSION` |
| 75 | `theorem` | [map_neg](declarations/map-neg.md) | 491 | `BLOCKED_NATIVE_ADMISSION` |
| 76 | `theorem` | [map_sub](declarations/map-sub.md) | 495 | `BLOCKED_NATIVE_ADMISSION` |
| 77 | `def` | [toNatAlgHom](declarations/tonatalghom.md) | 508 | `BLOCKED_NATIVE_ADMISSION` |
| 78 | `def` | [toIntAlgHom](declarations/tointalghom.md) | 515 | `BLOCKED_NATIVE_ADMISSION` |
| 79 | `def` | [toRatAlgHom](declarations/toratalghom.md) | 521 | `BLOCKED_NATIVE_ADMISSION` |
| 80 | `theorem` | [toRatAlgHom_toRingHom](declarations/toratalghom-toringhom.md) | 526 | `BLOCKED_NATIVE_ADMISSION` |
| 81 | `theorem` | [AlgHom.toRingHom_toRatAlgHom](declarations/alghom-toringhom-toratalghom.md) | 538 | `BLOCKED_NATIVE_ADMISSION` |
| 82 | `def` | [RingHom.equivRatAlgHom](declarations/ringhom-equivratalghom.md) | 545 | `BLOCKED_NATIVE_ADMISSION` |
| 83 | `def` | [ofId](declarations/ofid.md) | 562 | `BLOCKED_NATIVE_ADMISSION` |
| 84 | `theorem` | [ofId_apply](declarations/ofid-apply.md) | 568 | `BLOCKED_NATIVE_ADMISSION` |
| 85 | `def` | [toAlgHom](declarations/toalghom.md) | 585 | `BLOCKED_NATIVE_ADMISSION` |
| 86 | `theorem` | [toAlgHom_injective](declarations/toalghom-injective.md) | 591 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=7b2a3d538c3284a990830165c7875a7c45bb237747289cb7895f976060d4fdf8 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/GroupTheory/Hom/Variant0af4e6f42ffb1e80b10cb907f09a3d5369ce496de83f6727f1c1a11d739d66ca.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
