# Module Equiv

[Complete source index](../../../complete-source-index.md) · [Up one directory](../../../complete-source-index.md) · [Full source](source.md)

**107 observed declarations and anonymous commands**, 79 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Algebra/LinearAlgebra/Equiv/Variant75c76a51fa4736a36f2d500df2312eec0ca81b8b1b4a09d70ee37623b07135d0.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `64fe564077cf686f3fdf852c99037c8fdf129487`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/ModuleEquiv.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `structure` | [LinearEquiv](declarations/linearequiv.md) | 50 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `class` | [SemilinearEquivClass](declarations/semilinearequivclass.md) | 94 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `abbrev` | [LinearEquivClass](declarations/linearequivclass.md) | 107 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `instance` | [(anonymous)](declarations/instance.md) | 122 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `instance` | [(anonymous)](declarations/instance-source-edition-2.md) | 146 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `def` | [toEquiv](declarations/toequiv.md) | 151 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [toEquiv_injective](declarations/toequiv-injective.md) | 154 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [toEquiv_inj](declarations/toequiv-inj.md) | 161 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [toLinearMap_injective](declarations/tolinearmap-injective.md) | 165 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [toLinearMap_inj](declarations/tolinearmap-inj.md) | 170 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `instance` | [(anonymous)](declarations/instance-source-edition-3.md) | 174 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [coe_mk](declarations/coe-mk.md) | 184 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [coe_injective](declarations/coe-injective.md) | 188 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [coe_coe](declarations/coe-coe.md) | 211 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [coe_toEquiv](declarations/coe-toequiv.md) | 216 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [coe_toLinearMap](declarations/coe-tolinearmap.md) | 221 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [toFun_eq_coe](declarations/tofun-eq-coe.md) | 226 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [ext](declarations/ext.md) | 234 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [ext_iff](declarations/ext-iff.md) | 238 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [congr_arg](declarations/congr-arg.md) | 242 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [congr_fun](declarations/congr-fun.md) | 246 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `def` | [refl](declarations/refl.md) | 258 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [refl_apply](declarations/refl-apply.md) | 265 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `def` | [symm](declarations/symm.md) | 271 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `def` | [Simps.apply](declarations/simps-apply.md) | 281 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `def` | [Simps.symm_apply](declarations/simps-symm-apply.md) | 289 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [invFun_eq_symm](declarations/invfun-eq-symm.md) | 299 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [coe_toEquiv_symm](declarations/coe-toequiv-symm.md) | 304 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `def` | [trans](declarations/trans.md) | 335 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [coe_toAddEquiv](declarations/coe-toaddequiv.md) | 354 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [toAddMonoidHom_commutes](declarations/toaddmonoidhom-commutes.md) | 359 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [trans_apply](declarations/trans-apply.md) | 364 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [coe_trans](declarations/coe-trans.md) | 368 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [apply_symm_apply](declarations/apply-symm-apply.md) | 374 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `theorem` | [symm_apply_apply](declarations/symm-apply-apply.md) | 379 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `theorem` | [trans_symm](declarations/trans-symm.md) | 384 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `theorem` | [symm_trans_apply](declarations/symm-trans-apply.md) | 388 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `theorem` | [trans_refl](declarations/trans-refl.md) | 394 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `theorem` | [refl_trans](declarations/refl-trans.md) | 399 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `theorem` | [symm_apply_eq](declarations/symm-apply-eq.md) | 403 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `theorem` | [eq_symm_apply](declarations/eq-symm-apply.md) | 407 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `theorem` | [eq_comp_symm](declarations/eq-comp-symm.md) | 411 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `theorem` | [comp_symm_eq](declarations/comp-symm-eq.md) | 415 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `theorem` | [eq_symm_comp](declarations/eq-symm-comp.md) | 419 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `theorem` | [symm_comp_eq](declarations/symm-comp-eq.md) | 423 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `theorem` | [eq_comp_toLinearMap_symm](declarations/eq-comp-tolinearmap-symm.md) | 429 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `theorem` | [comp_toLinearMap_symm_eq](declarations/comp-tolinearmap-symm-eq.md) | 436 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `theorem` | [eq_toLinearMap_symm_comp](declarations/eq-tolinearmap-symm-comp.md) | 443 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `theorem` | [toLinearMap_symm_comp_eq](declarations/tolinearmap-symm-comp-eq.md) | 450 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `theorem` | [refl_symm](declarations/refl-symm.md) | 458 | `BLOCKED_NATIVE_ADMISSION` |
| 51 | `theorem` | [self_trans_symm](declarations/self-trans-symm.md) | 463 | `BLOCKED_NATIVE_ADMISSION` |
| 52 | `theorem` | [symm_trans_self](declarations/symm-trans-self.md) | 469 | `BLOCKED_NATIVE_ADMISSION` |
| 53 | `theorem` | [refl_toLinearMap](declarations/refl-tolinearmap.md) | 475 | `BLOCKED_NATIVE_ADMISSION` |
| 54 | `theorem` | [comp_coe](declarations/comp-coe.md) | 480 | `BLOCKED_NATIVE_ADMISSION` |
| 55 | `theorem` | [mk_coe](declarations/mk-coe.md) | 486 | `BLOCKED_NATIVE_ADMISSION` |
| 56 | `theorem` | [map_add](declarations/map-add.md) | 490 | `BLOCKED_NATIVE_ADMISSION` |
| 57 | `theorem` | [map_zero](declarations/map-zero.md) | 494 | `BLOCKED_NATIVE_ADMISSION` |
| 58 | `theorem` | [map_smulₛₗ](declarations/map-smul.md) | 498 | `BLOCKED_NATIVE_ADMISSION` |
| 59 | `theorem` | [map_smul](declarations/map-smul-source-edition-2.md) | 502 | `BLOCKED_NATIVE_ADMISSION` |
| 60 | `theorem` | [map_eq_zero_iff](declarations/map-eq-zero-iff.md) | 506 | `BLOCKED_NATIVE_ADMISSION` |
| 61 | `theorem` | [map_ne_zero_iff](declarations/map-ne-zero-iff.md) | 510 | `BLOCKED_NATIVE_ADMISSION` |
| 62 | `theorem` | [symm_symm](declarations/symm-symm.md) | 515 | `BLOCKED_NATIVE_ADMISSION` |
| 63 | `theorem` | [symm_bijective](declarations/symm-bijective.md) | 520 | `BLOCKED_NATIVE_ADMISSION` |
| 64 | `theorem` | [mk_coe'](declarations/mk-coe-source-edition-2.md) | 528 | `BLOCKED_NATIVE_ADMISSION` |
| 65 | `theorem` | [symm_mk](declarations/symm-mk.md) | 534 | `BLOCKED_NATIVE_ADMISSION` |
| 66 | `theorem` | [coe_symm_mk](declarations/coe-symm-mk.md) | 545 | `BLOCKED_NATIVE_ADMISSION` |
| 67 | `theorem` | [bijective](declarations/bijective.md) | 551 | `BLOCKED_NATIVE_ADMISSION` |
| 68 | `theorem` | [injective](declarations/injective.md) | 555 | `BLOCKED_NATIVE_ADMISSION` |
| 69 | `theorem` | [surjective](declarations/surjective.md) | 559 | `BLOCKED_NATIVE_ADMISSION` |
| 70 | `theorem` | [image_eq_preimage](declarations/image-eq-preimage.md) | 563 | `BLOCKED_NATIVE_ADMISSION` |
| 71 | `theorem` | [image_symm_eq_preimage](declarations/image-symm-eq-preimage.md) | 567 | `BLOCKED_NATIVE_ADMISSION` |
| 72 | `def` | [_root_.RingEquiv.toSemilinearEquiv](declarations/root-ringequiv-tosemilinearequiv.md) | 575 | `BLOCKED_NATIVE_ADMISSION` |
| 73 | `def` | [ofInvolutive](declarations/ofinvolutive.md) | 592 | `BLOCKED_NATIVE_ADMISSION` |
| 74 | `theorem` | [coe_ofInvolutive](declarations/coe-ofinvolutive.md) | 598 | `BLOCKED_NATIVE_ADMISSION` |
| 75 | `def` | [restrictScalars](declarations/restrictscalars.md) | 615 | `BLOCKED_NATIVE_ADMISSION` |
| 76 | `theorem` | [restrictScalars_injective](declarations/restrictscalars-injective.md) | 625 | `BLOCKED_NATIVE_ADMISSION` |
| 77 | `theorem` | [restrictScalars_inj](declarations/restrictscalars-inj.md) | 631 | `BLOCKED_NATIVE_ADMISSION` |
| 78 | `theorem` | [_root_.Module.End_isUnit_iff](declarations/root-module-end-isunit-iff.md) | 638 | `BLOCKED_NATIVE_ADMISSION` |
| 79 | `instance` | [automorphismGroup](declarations/automorphismgroup.md) | 654 | `BLOCKED_NATIVE_ADMISSION` |
| 80 | `def` | [automorphismGroup.toLinearMapMonoidHom](declarations/automorphismgroup-tolinearmapmonoidhom.md) | 667 | `BLOCKED_NATIVE_ADMISSION` |
| 81 | `instance` | [applyDistribMulAction](declarations/applydistribmulaction.md) | 677 | `BLOCKED_NATIVE_ADMISSION` |
| 82 | `theorem` | [smul_def](declarations/smul-def.md) | 686 | `BLOCKED_NATIVE_ADMISSION` |
| 83 | `instance` | [apply_faithfulSMul](declarations/apply-faithfulsmul.md) | 691 | `BLOCKED_NATIVE_ADMISSION` |
| 84 | `instance` | [apply_smulCommClass](declarations/apply-smulcommclass.md) | 695 | `BLOCKED_NATIVE_ADMISSION` |
| 85 | `instance` | [apply_smulCommClass'](declarations/apply-smulcommclass-source-edition-2.md) | 699 | `BLOCKED_NATIVE_ADMISSION` |
| 86 | `def` | [ofSubsingleton](declarations/ofsubsingleton.md) | 712 | `BLOCKED_NATIVE_ADMISSION` |
| 87 | `theorem` | [ofSubsingleton_self](declarations/ofsubsingleton-self.md) | 722 | `BLOCKED_NATIVE_ADMISSION` |
| 88 | `def` | [compHom.toLinearEquiv](declarations/comphom-tolinearequiv.md) | 737 | `BLOCKED_NATIVE_ADMISSION` |
| 89 | `def` | [toLinearEquiv](declarations/tolinearequiv.md) | 760 | `BLOCKED_NATIVE_ADMISSION` |
| 90 | `def` | [toModuleAut](declarations/tomoduleaut.md) | 770 | `BLOCKED_NATIVE_ADMISSION` |
| 91 | `def` | [toLinearEquiv](declarations/tolinearequiv-source-edition-2.md) | 790 | `BLOCKED_NATIVE_ADMISSION` |
| 92 | `theorem` | [coe_toLinearEquiv](declarations/coe-tolinearequiv.md) | 795 | `BLOCKED_NATIVE_ADMISSION` |
| 93 | `theorem` | [coe_toLinearEquiv_symm](declarations/coe-tolinearequiv-symm.md) | 800 | `BLOCKED_NATIVE_ADMISSION` |
| 94 | `def` | [toNatLinearEquiv](declarations/tonatlinearequiv.md) | 807 | `BLOCKED_NATIVE_ADMISSION` |
| 95 | `theorem` | [coe_toNatLinearEquiv](declarations/coe-tonatlinearequiv.md) | 814 | `BLOCKED_NATIVE_ADMISSION` |
| 96 | `theorem` | [toNatLinearEquiv_toAddEquiv](declarations/tonatlinearequiv-toaddequiv.md) | 819 | `BLOCKED_NATIVE_ADMISSION` |
| 97 | `theorem` | [_root_.LinearEquiv.toAddEquiv_toNatLinearEquiv](declarations/root-linearequiv-toaddequiv-tonatlinearequiv.md) | 825 | `BLOCKED_NATIVE_ADMISSION` |
| 98 | `theorem` | [toNatLinearEquiv_symm](declarations/tonatlinearequiv-symm.md) | 831 | `BLOCKED_NATIVE_ADMISSION` |
| 99 | `theorem` | [toNatLinearEquiv_refl](declarations/tonatlinearequiv-refl.md) | 836 | `BLOCKED_NATIVE_ADMISSION` |
| 100 | `theorem` | [toNatLinearEquiv_trans](declarations/tonatlinearequiv-trans.md) | 841 | `BLOCKED_NATIVE_ADMISSION` |
| 101 | `def` | [toIntLinearEquiv](declarations/tointlinearequiv.md) | 856 | `BLOCKED_NATIVE_ADMISSION` |
| 102 | `theorem` | [coe_toIntLinearEquiv](declarations/coe-tointlinearequiv.md) | 861 | `BLOCKED_NATIVE_ADMISSION` |
| 103 | `theorem` | [toIntLinearEquiv_toAddEquiv](declarations/tointlinearequiv-toaddequiv.md) | 866 | `BLOCKED_NATIVE_ADMISSION` |
| 104 | `theorem` | [_root_.LinearEquiv.toAddEquiv_toIntLinearEquiv](declarations/root-linearequiv-toaddequiv-tointlinearequiv.md) | 872 | `BLOCKED_NATIVE_ADMISSION` |
| 105 | `theorem` | [toIntLinearEquiv_symm](declarations/tointlinearequiv-symm.md) | 878 | `BLOCKED_NATIVE_ADMISSION` |
| 106 | `theorem` | [toIntLinearEquiv_refl](declarations/tointlinearequiv-refl.md) | 883 | `BLOCKED_NATIVE_ADMISSION` |
| 107 | `theorem` | [toIntLinearEquiv_trans](declarations/tointlinearequiv-trans.md) | 888 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=ebb9764f9c28c0001173ef09767bdff96b72a456c7a0ff97875b27d3649df3ec -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/Equiv/Variant75c76a51fa4736a36f2d500df2312eec0ca81b8b1b4a09d70ee37623b07135d0.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
