# Equiv Defs Namespaced

[Complete source index](../../../complete-source-index.md) · [Up one directory](../../../complete-source-index.md) · [Full source](source.md)

**83 observed declarations and anonymous commands**, 65 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Algebra/LinearAlgebra/Defs/Variant20d0cb3490b6cfba6d8c812edafba591d292b557cdb20ed8a695c99483fa08e1.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `a67f1a5d49325ef34b59d88ef902d485ff411c79`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/EquivDefsNamespaced.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `structure` | [LinearEquiv](declarations/linearequiv.md) | 55 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `class` | [SemilinearEquivClass](declarations/semilinearequivclass.md) | 92 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `abbrev` | [LinearEquivClass](declarations/linearequivclass.md) | 105 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `instance` | [(anonymous)](declarations/instance.md) | 117 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `def` | [semilinearEquiv](declarations/semilinearequiv.md) | 125 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `instance` | [instCoeToSemilinearEquiv](declarations/instcoetosemilinearequiv.md) | 130 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `instance` | [(anonymous)](declarations/instance-source-edition-3.md) | 148 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `def` | [toEquiv](declarations/toequiv.md) | 153 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [toEquiv_injective](declarations/toequiv-injective.md) | 155 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [toEquiv_inj](declarations/toequiv-inj.md) | 161 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [toLinearMap_injective](declarations/tolinearmap-injective.md) | 164 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [toLinearMap_inj](declarations/tolinearmap-inj.md) | 168 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `instance` | [(anonymous)](declarations/instance-source-edition-4.md) | 171 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `instance` | [(anonymous)](declarations/instance-source-edition-2.md) | 178 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [toLinearMap_eq_coe](declarations/tolinearmap-eq-coe.md) | 182 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [coe_mk](declarations/coe-mk.md) | 186 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [coe_injective](declarations/coe-injective.md) | 189 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `lemma` | [Equiv Defs Namespaced](declarations/semilinearequiv-apply.md) | 193 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [coe_coe](declarations/coe-coe.md) | 210 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [coe_toEquiv](declarations/coe-toequiv.md) | 214 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [coe_toLinearMap](declarations/coe-tolinearmap.md) | 218 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [toFun_eq_coe](declarations/tofun-eq-coe.md) | 221 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [ext](declarations/ext.md) | 228 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [congr_arg](declarations/congr-arg.md) | 231 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [congr_fun](declarations/congr-fun.md) | 234 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `def` | [refl](declarations/refl.md) | 245 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [refl_apply](declarations/refl-apply.md) | 251 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `def` | [symm](declarations/symm.md) | 256 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `def` | [Simps.apply](declarations/simps-apply.md) | 264 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `def` | [Simps.symm_apply](declarations/simps-symm-apply.md) | 271 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [invFun_eq_symm](declarations/invfun-eq-symm.md) | 280 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [coe_toEquiv_symm](declarations/coe-toequiv-symm.md) | 284 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `def` | [trans](declarations/trans.md) | 303 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [coe_toAddEquiv](declarations/coe-toaddequiv.md) | 321 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `lemma` | [coe_addEquiv_apply](declarations/coe-addequiv-apply.md) | 325 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `theorem` | [toAddMonoidHom_commutes](declarations/toaddmonoidhom-commutes.md) | 329 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `lemma` | [coe_toAddEquiv_symm](declarations/coe-toaddequiv-symm.md) | 332 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `theorem` | [trans_apply](declarations/trans-apply.md) | 336 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `theorem` | [coe_trans](declarations/coe-trans.md) | 339 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `theorem` | [apply_symm_apply](declarations/apply-symm-apply.md) | 344 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `theorem` | [symm_apply_apply](declarations/symm-apply-apply.md) | 348 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `theorem` | [trans_symm](declarations/trans-symm.md) | 352 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `theorem` | [symm_trans_apply](declarations/symm-trans-apply.md) | 355 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `theorem` | [trans_refl](declarations/trans-refl.md) | 360 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `theorem` | [refl_trans](declarations/refl-trans.md) | 364 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `theorem` | [symm_apply_eq](declarations/symm-apply-eq.md) | 367 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `theorem` | [eq_symm_apply](declarations/eq-symm-apply.md) | 370 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `theorem` | [eq_comp_symm](declarations/eq-comp-symm.md) | 373 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `theorem` | [comp_symm_eq](declarations/comp-symm-eq.md) | 376 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `theorem` | [eq_symm_comp](declarations/eq-symm-comp.md) | 379 | `BLOCKED_NATIVE_ADMISSION` |
| 51 | `theorem` | [symm_comp_eq](declarations/symm-comp-eq.md) | 382 | `BLOCKED_NATIVE_ADMISSION` |
| 52 | `theorem` | [eq_comp_toLinearMap_symm](declarations/eq-comp-tolinearmap-symm.md) | 387 | `BLOCKED_NATIVE_ADMISSION` |
| 53 | `theorem` | [comp_toLinearMap_symm_eq](declarations/comp-tolinearmap-symm-eq.md) | 393 | `BLOCKED_NATIVE_ADMISSION` |
| 54 | `theorem` | [eq_toLinearMap_symm_comp](declarations/eq-tolinearmap-symm-comp.md) | 399 | `BLOCKED_NATIVE_ADMISSION` |
| 55 | `theorem` | [toLinearMap_symm_comp_eq](declarations/tolinearmap-symm-comp-eq.md) | 405 | `BLOCKED_NATIVE_ADMISSION` |
| 56 | `theorem` | [comp_toLinearMap_eq_iff](declarations/comp-tolinearmap-eq-iff.md) | 412 | `BLOCKED_NATIVE_ADMISSION` |
| 57 | `theorem` | [eq_comp_toLinearMap_iff](declarations/eq-comp-tolinearmap-iff.md) | 418 | `BLOCKED_NATIVE_ADMISSION` |
| 58 | `theorem` | [refl_symm](declarations/refl-symm.md) | 424 | `BLOCKED_NATIVE_ADMISSION` |
| 59 | `theorem` | [self_trans_symm](declarations/self-trans-symm.md) | 428 | `BLOCKED_NATIVE_ADMISSION` |
| 60 | `theorem` | [symm_trans_self](declarations/symm-trans-self.md) | 433 | `BLOCKED_NATIVE_ADMISSION` |
| 61 | `theorem` | [refl_toLinearMap](declarations/refl-tolinearmap.md) | 438 | `BLOCKED_NATIVE_ADMISSION` |
| 62 | `theorem` | [comp_coe](declarations/comp-coe.md) | 442 | `BLOCKED_NATIVE_ADMISSION` |
| 63 | `theorem` | [mk_coe](declarations/mk-coe.md) | 447 | `BLOCKED_NATIVE_ADMISSION` |
| 64 | `theorem` | [map_add](declarations/map-add.md) | 450 | `BLOCKED_NATIVE_ADMISSION` |
| 65 | `theorem` | [map_zero](declarations/map-zero.md) | 453 | `BLOCKED_NATIVE_ADMISSION` |
| 66 | `theorem` | [map_smulₛₗ](declarations/map-smul-source-edition-2.md) | 456 | `BLOCKED_NATIVE_ADMISSION` |
| 67 | `theorem` | [map_smul](declarations/map-smul.md) | 459 | `BLOCKED_NATIVE_ADMISSION` |
| 68 | `theorem` | [map_eq_zero_iff](declarations/map-eq-zero-iff.md) | 462 | `BLOCKED_NATIVE_ADMISSION` |
| 69 | `theorem` | [map_ne_zero_iff](declarations/map-ne-zero-iff.md) | 465 | `BLOCKED_NATIVE_ADMISSION` |
| 70 | `theorem` | [symm_symm](declarations/symm-symm.md) | 469 | `BLOCKED_NATIVE_ADMISSION` |
| 71 | `theorem` | [symm_bijective](declarations/symm-bijective.md) | 471 | `BLOCKED_NATIVE_ADMISSION` |
| 72 | `theorem` | [mk_coe'](declarations/mk-coe-source-edition-2.md) | 476 | `BLOCKED_NATIVE_ADMISSION` |
| 73 | `def` | [symm_mk.aux](declarations/symm-mk-aux.md) | 481 | `BLOCKED_NATIVE_ADMISSION` |
| 74 | `theorem` | [symm_mk](declarations/symm-mk.md) | 484 | `BLOCKED_NATIVE_ADMISSION` |
| 75 | `theorem` | [coe_symm_mk](declarations/coe-symm-mk.md) | 492 | `BLOCKED_NATIVE_ADMISSION` |
| 76 | `theorem` | [bijective](declarations/bijective.md) | 497 | `BLOCKED_NATIVE_ADMISSION` |
| 77 | `theorem` | [injective](declarations/injective.md) | 500 | `BLOCKED_NATIVE_ADMISSION` |
| 78 | `theorem` | [surjective](declarations/surjective.md) | 503 | `BLOCKED_NATIVE_ADMISSION` |
| 79 | `theorem` | [image_eq_preimage](declarations/image-eq-preimage.md) | 506 | `BLOCKED_NATIVE_ADMISSION` |
| 80 | `theorem` | [image_symm_eq_preimage](declarations/image-symm-eq-preimage.md) | 509 | `BLOCKED_NATIVE_ADMISSION` |
| 81 | `def` | [Equiv Defs Namespaced](declarations/tosemilinearequiv.md) | 516 | `BLOCKED_NATIVE_ADMISSION` |
| 82 | `def` | [ofInvolutive](declarations/ofinvolutive.md) | 529 | `BLOCKED_NATIVE_ADMISSION` |
| 83 | `theorem` | [coe_ofInvolutive](declarations/coe-ofinvolutive.md) | 534 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=8390547bf0dc606a63d748cd9047d62ace27935adba48378dcd902bdfa61520d -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/Defs/Variant20d0cb3490b6cfba6d8c812edafba591d292b557cdb20ed8a695c99483fa08e1.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
