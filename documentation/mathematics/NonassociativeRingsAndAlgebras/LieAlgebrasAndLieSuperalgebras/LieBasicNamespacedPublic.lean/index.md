# Lie Basic Namespaced Public

[Complete source index](../../../complete-source-index.md) · [Up one directory](../../../complete-source-index.md) · [Full source](source.md)

**184 observed declarations and anonymous commands**, 101 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Algebra/LinearAlgebra/Basic/Variant2dbbb49a4c327291339a5f52e78bdec2da591eb4c61d66ff9f674ac2c9ead313.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `40b25272acd823544c2e9194bf1ef18f902b1fca`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/LieBasicNamespacedPublic.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `class` | [LieRing](declarations/liering.md) | 70 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `class` | [LieAlgebra](declarations/liealgebra.md) | 82 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `class` | [LieRingModule](declarations/lieringmodule.md) | 92 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `class` | [LieModule](declarations/liemodule.md) | 102 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `class` | [IsLieTower](declarations/islietower.md) | 119 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `lemma` | [leibniz_lie](declarations/leibniz-lie.md) | 126 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `lemma` | [lie_swap_lie](declarations/lie-swap-lie.md) | 129 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [LieAlgebra.toModule_injective](declarations/liealgebra-tomodule-injective.md) | 139 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `instance` | [(anonymous)](declarations/instance-source-edition-12.md) | 144 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [add_lie](declarations/add-lie.md) | 154 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [lie_add](declarations/lie-add.md) | 158 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [smul_lie](declarations/smul-lie.md) | 162 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [lie_smul](declarations/lie-smul.md) | 166 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `instance` | [(anonymous)](declarations/instance-source-edition-25.md) | 169 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [lie_zero](declarations/lie-zero.md) | 173 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [zero_lie](declarations/zero-lie.md) | 177 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [lie_self](declarations/lie-self.md) | 181 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `instance` | [lieRingSelfModule](declarations/lieringselfmodule.md) | 184 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [lie_skew](declarations/lie-skew.md) | 188 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `instance` | [lieAlgebraSelfModule](declarations/liealgebraselfmodule.md) | 193 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [neg_lie](declarations/neg-lie.md) | 198 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [lie_neg](declarations/lie-neg.md) | 203 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [sub_lie](declarations/sub-lie.md) | 208 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [lie_sub](declarations/lie-sub.md) | 211 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [nsmul_lie](declarations/nsmul-lie.md) | 214 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [lie_nsmul](declarations/lie-nsmul.md) | 220 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [zsmul_lie](declarations/zsmul-lie.md) | 225 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [lie_zsmul](declarations/lie-zsmul.md) | 230 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `lemma` | [lie_lie](declarations/lie-lie.md) | 236 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [lie_jacobi](declarations/lie-jacobi.md) | 238 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `def` | [LieRingModule.toEnd](declarations/lieringmodule-toend.md) | 246 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `instance` | [LieRing.instLieAlgebra](declarations/liering-instliealgebra.md) | 251 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `instance` | [(anonymous)](declarations/instance-source-edition-30.md) | 253 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `instance` | [LinearMap.instLieRingModule](declarations/linearmap-instlieringmodule.md) | 257 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `theorem` | [LieHom.lie_apply](declarations/liehom-lie-apply.md) | 279 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `instance` | [LinearMap.instLieModule](declarations/linearmap-instliemodule.md) | 282 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `instance` | [Module.Dual.instLieRingModule](declarations/module-dual-instlieringmodule.md) | 293 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `lemma` | [Module.Dual.lie_apply](declarations/module-dual-lie-apply.md) | 302 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `instance` | [Module.Dual.instLieModule](declarations/module-dual-instliemodule.md) | 304 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `def` | [LieRing.toNonUnitalNonAssocRing](declarations/liering-tononunitalnonassocring.md) | 311 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `theorem` | [sum_lie](declarations/sum-lie.md) | 320 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `theorem` | [lie_sum](declarations/lie-sum.md) | 323 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `theorem` | [sum_lie_sum](declarations/sum-lie-sum.md) | 326 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `structure` | [LieHom](declarations/liehom.md) | 334 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `instance` | [(anonymous)](declarations/instance-source-edition-33.md) | 352 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `instance` | [(anonymous)](declarations/instance-source-edition-21.md) | 356 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `theorem` | [coe_toLinearMap](declarations/coe-tolinearmap.md) | 364 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `theorem` | [toFun_eq_coe](declarations/tofun-eq-coe.md) | 368 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `instance` | [(anonymous)](declarations/instance-source-edition-15.md) | 371 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `theorem` | [map_lie](declarations/map-lie.md) | 376 | `BLOCKED_NATIVE_ADMISSION` |
| 51 | `def` | [id](declarations/id-source-edition-2.md) | 380 | `BLOCKED_NATIVE_ADMISSION` |
| 52 | `theorem` | [coe_id](declarations/coe-id.md) | 384 | `BLOCKED_NATIVE_ADMISSION` |
| 53 | `theorem` | [id_apply](declarations/id-apply-source-edition-2.md) | 387 | `BLOCKED_NATIVE_ADMISSION` |
| 54 | `instance` | [(anonymous)](declarations/instance-source-edition-40.md) | 391 | `BLOCKED_NATIVE_ADMISSION` |
| 55 | `instance` | [(anonymous)](declarations/instance-source-edition-41.md) | 394 | `BLOCKED_NATIVE_ADMISSION` |
| 56 | `instance` | [(anonymous)](declarations/instance.md) | 402 | `BLOCKED_NATIVE_ADMISSION` |
| 57 | `instance` | [(anonymous)](declarations/instance-source-edition-22.md) | 405 | `BLOCKED_NATIVE_ADMISSION` |
| 58 | `instance` | [(anonymous)](declarations/instance-source-edition-35.md) | 412 | `BLOCKED_NATIVE_ADMISSION` |
| 59 | `theorem` | [coe_injective](declarations/coe-injective-source-edition-3.md) | 415 | `BLOCKED_NATIVE_ADMISSION` |
| 60 | `theorem` | [ext](declarations/ext.md) | 420 | `BLOCKED_NATIVE_ADMISSION` |
| 61 | `theorem` | [congr_fun](declarations/congr-fun.md) | 423 | `BLOCKED_NATIVE_ADMISSION` |
| 62 | `theorem` | [mk_coe](declarations/mk-coe.md) | 427 | `BLOCKED_NATIVE_ADMISSION` |
| 63 | `theorem` | [coe_mk](declarations/coe-mk-source-edition-3.md) | 432 | `BLOCKED_NATIVE_ADMISSION` |
| 64 | `def` | [comp](declarations/comp.md) | 436 | `BLOCKED_NATIVE_ADMISSION` |
| 65 | `theorem` | [comp_apply](declarations/comp-apply.md) | 441 | `BLOCKED_NATIVE_ADMISSION` |
| 66 | `theorem` | [coe_comp](declarations/coe-comp-source-edition-2.md) | 445 | `BLOCKED_NATIVE_ADMISSION` |
| 67 | `theorem` | [toLinearMap_comp](declarations/tolinearmap-comp.md) | 449 | `BLOCKED_NATIVE_ADMISSION` |
| 68 | `theorem` | [comp_id](declarations/comp-id.md) | 454 | `BLOCKED_NATIVE_ADMISSION` |
| 69 | `theorem` | [id_comp](declarations/id-comp.md) | 458 | `BLOCKED_NATIVE_ADMISSION` |
| 70 | `def` | [inverse](declarations/inverse-source-edition-2.md) | 462 | `BLOCKED_NATIVE_ADMISSION` |
| 71 | `def` | [LieRingModule.compLieHom](declarations/lieringmodule-compliehom.md) | 486 | `BLOCKED_NATIVE_ADMISSION` |
| 72 | `theorem` | [LieRingModule.compLieHom_apply](declarations/lieringmodule-compliehom-apply.md) | 492 | `BLOCKED_NATIVE_ADMISSION` |
| 73 | `theorem` | [LieModule.compLieHom](declarations/liemodule-compliehom.md) | 498 | `BLOCKED_NATIVE_ADMISSION` |
| 74 | `structure` | [LieEquiv](declarations/lieequiv.md) | 512 | `BLOCKED_NATIVE_ADMISSION` |
| 75 | `def` | [toLinearEquiv](declarations/tolinearequiv-source-edition-2.md) | 533 | `BLOCKED_NATIVE_ADMISSION` |
| 76 | `instance` | [hasCoeToLieHom](declarations/hascoetoliehom.md) | 536 | `BLOCKED_NATIVE_ADMISSION` |
| 77 | `instance` | [hasCoeToLinearEquiv](declarations/hascoetolinearequiv.md) | 539 | `BLOCKED_NATIVE_ADMISSION` |
| 78 | `instance` | [(anonymous)](declarations/instance-source-edition-6.md) | 543 | `BLOCKED_NATIVE_ADMISSION` |
| 79 | `theorem` | [coe_toLieHom](declarations/coe-toliehom.md) | 550 | `BLOCKED_NATIVE_ADMISSION` |
| 80 | `theorem` | [coe_toLinearEquiv](declarations/coe-tolinearequiv.md) | 554 | `BLOCKED_NATIVE_ADMISSION` |
| 81 | `theorem` | [coe_coe](declarations/coe-coe.md) | 557 | `BLOCKED_NATIVE_ADMISSION` |
| 82 | `theorem` | [toLinearEquiv_mk](declarations/tolinearequiv-mk.md) | 560 | `BLOCKED_NATIVE_ADMISSION` |
| 83 | `theorem` | [toLinearEquiv_injective](declarations/tolinearequiv-injective.md) | 568 | `BLOCKED_NATIVE_ADMISSION` |
| 84 | `theorem` | [coe_injective](declarations/coe-injective.md) | 572 | `BLOCKED_NATIVE_ADMISSION` |
| 85 | `instance` | [(anonymous)](declarations/instance-source-edition-23.md) | 575 | `BLOCKED_NATIVE_ADMISSION` |
| 86 | `theorem` | [ext](declarations/ext-source-edition-3.md) | 582 | `BLOCKED_NATIVE_ADMISSION` |
| 87 | `instance` | [(anonymous)](declarations/instance-source-edition-37.md) | 585 | `BLOCKED_NATIVE_ADMISSION` |
| 88 | `instance` | [(anonymous)](declarations/instance-source-edition-39.md) | 588 | `BLOCKED_NATIVE_ADMISSION` |
| 89 | `instance` | [(anonymous)](declarations/instance-source-edition-20.md) | 593 | `BLOCKED_NATIVE_ADMISSION` |
| 90 | `lemma` | [map_lie](declarations/map-lie-source-edition-4.md) | 596 | `BLOCKED_NATIVE_ADMISSION` |
| 91 | `def` | [refl](declarations/refl-source-edition-2.md) | 600 | `BLOCKED_NATIVE_ADMISSION` |
| 92 | `theorem` | [refl_apply](declarations/refl-apply-source-edition-2.md) | 604 | `BLOCKED_NATIVE_ADMISSION` |
| 93 | `def` | [symm](declarations/symm-source-edition-2.md) | 609 | `BLOCKED_NATIVE_ADMISSION` |
| 94 | `theorem` | [symm_symm](declarations/symm-symm.md) | 613 | `BLOCKED_NATIVE_ADMISSION` |
| 95 | `theorem` | [symm_bijective](declarations/symm-bijective.md) | 615 | `BLOCKED_NATIVE_ADMISSION` |
| 96 | `theorem` | [apply_symm_apply](declarations/apply-symm-apply-source-edition-2.md) | 619 | `BLOCKED_NATIVE_ADMISSION` |
| 97 | `theorem` | [symm_apply_apply](declarations/symm-apply-apply-source-edition-2.md) | 623 | `BLOCKED_NATIVE_ADMISSION` |
| 98 | `theorem` | [symm_apply_eq](declarations/symm-apply-eq-source-edition-2.md) | 626 | `BLOCKED_NATIVE_ADMISSION` |
| 99 | `theorem` | [eq_symm_apply](declarations/eq-symm-apply.md) | 629 | `BLOCKED_NATIVE_ADMISSION` |
| 100 | `theorem` | [refl_symm](declarations/refl-symm.md) | 633 | `BLOCKED_NATIVE_ADMISSION` |
| 101 | `def` | [trans](declarations/trans-source-edition-2.md) | 638 | `BLOCKED_NATIVE_ADMISSION` |
| 102 | `theorem` | [self_trans_symm](declarations/self-trans-symm-source-edition-2.md) | 642 | `BLOCKED_NATIVE_ADMISSION` |
| 103 | `theorem` | [symm_trans_self](declarations/symm-trans-self.md) | 646 | `BLOCKED_NATIVE_ADMISSION` |
| 104 | `theorem` | [trans_apply](declarations/trans-apply.md) | 650 | `BLOCKED_NATIVE_ADMISSION` |
| 105 | `theorem` | [symm_trans](declarations/symm-trans.md) | 654 | `BLOCKED_NATIVE_ADMISSION` |
| 106 | `theorem` | [bijective](declarations/bijective.md) | 658 | `BLOCKED_NATIVE_ADMISSION` |
| 107 | `theorem` | [injective](declarations/injective.md) | 661 | `BLOCKED_NATIVE_ADMISSION` |
| 108 | `theorem` | [surjective](declarations/surjective.md) | 664 | `BLOCKED_NATIVE_ADMISSION` |
| 109 | `def` | [ofBijective](declarations/ofbijective.md) | 670 | `BLOCKED_NATIVE_ADMISSION` |
| 110 | `structure` | [LieModuleHom](declarations/liemodulehom.md) | 688 | `BLOCKED_NATIVE_ADMISSION` |
| 111 | `instance` | [(anonymous)](declarations/instance-source-edition-13.md) | 702 | `BLOCKED_NATIVE_ADMISSION` |
| 112 | `instance` | [(anonymous)](declarations/instance-source-edition-18.md) | 706 | `BLOCKED_NATIVE_ADMISSION` |
| 113 | `theorem` | [coe_toLinearMap](declarations/coe-tolinearmap-source-edition-2.md) | 713 | `BLOCKED_NATIVE_ADMISSION` |
| 114 | `instance` | [(anonymous)](declarations/instance-source-edition-19.md) | 716 | `BLOCKED_NATIVE_ADMISSION` |
| 115 | `theorem` | [map_lie](declarations/map-lie-source-edition-3.md) | 721 | `BLOCKED_NATIVE_ADMISSION` |
| 116 | `theorem` | [map_lie₂](declarations/map-lie-source-edition-2.md) | 725 | `BLOCKED_NATIVE_ADMISSION` |
| 117 | `def` | [id](declarations/id.md) | 729 | `BLOCKED_NATIVE_ADMISSION` |
| 118 | `theorem` | [coe_id](declarations/coe-id-source-edition-2.md) | 733 | `BLOCKED_NATIVE_ADMISSION` |
| 119 | `theorem` | [id_apply](declarations/id-apply.md) | 736 | `BLOCKED_NATIVE_ADMISSION` |
| 120 | `instance` | [(anonymous)](declarations/instance-source-edition-14.md) | 740 | `BLOCKED_NATIVE_ADMISSION` |
| 121 | `instance` | [(anonymous)](declarations/instance-source-edition-17.md) | 743 | `BLOCKED_NATIVE_ADMISSION` |
| 122 | `instance` | [(anonymous)](declarations/instance-source-edition-36.md) | 751 | `BLOCKED_NATIVE_ADMISSION` |
| 123 | `instance` | [(anonymous)](declarations/instance-source-edition-31.md) | 754 | `BLOCKED_NATIVE_ADMISSION` |
| 124 | `instance` | [(anonymous)](declarations/instance-source-edition-3.md) | 757 | `BLOCKED_NATIVE_ADMISSION` |
| 125 | `theorem` | [coe_injective](declarations/coe-injective-source-edition-2.md) | 760 | `BLOCKED_NATIVE_ADMISSION` |
| 126 | `theorem` | [ext](declarations/ext-source-edition-2.md) | 765 | `BLOCKED_NATIVE_ADMISSION` |
| 127 | `theorem` | [congr_fun](declarations/congr-fun-source-edition-2.md) | 768 | `BLOCKED_NATIVE_ADMISSION` |
| 128 | `theorem` | [mk_coe](declarations/mk-coe-source-edition-2.md) | 772 | `BLOCKED_NATIVE_ADMISSION` |
| 129 | `theorem` | [coe_mk](declarations/coe-mk-source-edition-2.md) | 776 | `BLOCKED_NATIVE_ADMISSION` |
| 130 | `theorem` | [coe_linear_mk](declarations/coe-linear-mk.md) | 780 | `BLOCKED_NATIVE_ADMISSION` |
| 131 | `def` | [comp](declarations/comp-source-edition-2.md) | 784 | `BLOCKED_NATIVE_ADMISSION` |
| 132 | `theorem` | [comp_apply](declarations/comp-apply-source-edition-2.md) | 789 | `BLOCKED_NATIVE_ADMISSION` |
| 133 | `theorem` | [coe_comp](declarations/coe-comp.md) | 793 | `BLOCKED_NATIVE_ADMISSION` |
| 134 | `theorem` | [toLinearMap_comp](declarations/tolinearmap-comp-source-edition-2.md) | 797 | `BLOCKED_NATIVE_ADMISSION` |
| 135 | `def` | [inverse](declarations/inverse.md) | 802 | `BLOCKED_NATIVE_ADMISSION` |
| 136 | `instance` | [(anonymous)](declarations/instance-source-edition-5.md) | 813 | `BLOCKED_NATIVE_ADMISSION` |
| 137 | `instance` | [(anonymous)](declarations/instance-source-edition-11.md) | 816 | `BLOCKED_NATIVE_ADMISSION` |
| 138 | `instance` | [(anonymous)](declarations/instance-source-edition-28.md) | 819 | `BLOCKED_NATIVE_ADMISSION` |
| 139 | `instance` | [(anonymous)](declarations/instance-source-edition-10.md) | 822 | `BLOCKED_NATIVE_ADMISSION` |
| 140 | `instance` | [(anonymous)](declarations/instance-source-edition-8.md) | 825 | `BLOCKED_NATIVE_ADMISSION` |
| 141 | `instance` | [(anonymous)](declarations/instance-source-edition-16.md) | 827 | `BLOCKED_NATIVE_ADMISSION` |
| 142 | `instance` | [hasNSMul](declarations/hasnsmul.md) | 842 | `BLOCKED_NATIVE_ADMISSION` |
| 143 | `instance` | [(anonymous)](declarations/instance-source-edition-32.md) | 845 | `BLOCKED_NATIVE_ADMISSION` |
| 144 | `instance` | [hasZSMul](declarations/haszsmul.md) | 852 | `BLOCKED_NATIVE_ADMISSION` |
| 145 | `instance` | [(anonymous)](declarations/instance-source-edition-2.md) | 855 | `BLOCKED_NATIVE_ADMISSION` |
| 146 | `instance` | [(anonymous)](declarations/instance-source-edition-4.md) | 862 | `BLOCKED_NATIVE_ADMISSION` |
| 147 | `instance` | [(anonymous)](declarations/instance-source-edition-34.md) | 866 | `BLOCKED_NATIVE_ADMISSION` |
| 148 | `instance` | [(anonymous)](declarations/instance-source-edition-38.md) | 869 | `BLOCKED_NATIVE_ADMISSION` |
| 149 | `instance` | [(anonymous)](declarations/instance-source-edition-9.md) | 876 | `BLOCKED_NATIVE_ADMISSION` |
| 150 | `structure` | [LieModuleEquiv](declarations/liemoduleequiv.md) | 882 | `BLOCKED_NATIVE_ADMISSION` |
| 151 | `def` | [toLinearEquiv](declarations/tolinearequiv.md) | 902 | `BLOCKED_NATIVE_ADMISSION` |
| 152 | `def` | [toEquiv](declarations/toequiv.md) | 906 | `BLOCKED_NATIVE_ADMISSION` |
| 153 | `instance` | [hasCoeToEquiv](declarations/hascoetoequiv.md) | 909 | `BLOCKED_NATIVE_ADMISSION` |
| 154 | `instance` | [hasCoeToLieModuleHom](declarations/hascoetoliemodulehom.md) | 912 | `BLOCKED_NATIVE_ADMISSION` |
| 155 | `instance` | [hasCoeToLinearEquiv](declarations/hascoetolinearequiv-source-edition-2.md) | 915 | `BLOCKED_NATIVE_ADMISSION` |
| 156 | `instance` | [(anonymous)](declarations/instance-source-edition-29.md) | 919 | `BLOCKED_NATIVE_ADMISSION` |
| 157 | `lemma` | [coe_coe](declarations/coe-coe-source-edition-2.md) | 926 | `BLOCKED_NATIVE_ADMISSION` |
| 158 | `theorem` | [injective](declarations/injective-source-edition-2.md) | 928 | `BLOCKED_NATIVE_ADMISSION` |
| 159 | `theorem` | [surjective](declarations/surjective-source-edition-2.md) | 931 | `BLOCKED_NATIVE_ADMISSION` |
| 160 | `theorem` | [toEquiv_mk](declarations/toequiv-mk.md) | 935 | `BLOCKED_NATIVE_ADMISSION` |
| 161 | `theorem` | [coe_mk](declarations/coe-mk.md) | 940 | `BLOCKED_NATIVE_ADMISSION` |
| 162 | `theorem` | [coe_toLieModuleHom](declarations/coe-toliemodulehom.md) | 944 | `BLOCKED_NATIVE_ADMISSION` |
| 163 | `theorem` | [coe_toLinearEquiv](declarations/coe-tolinearequiv-source-edition-2.md) | 948 | `BLOCKED_NATIVE_ADMISSION` |
| 164 | `theorem` | [toEquiv_injective](declarations/toequiv-injective.md) | 951 | `BLOCKED_NATIVE_ADMISSION` |
| 165 | `theorem` | [ext](declarations/ext-source-edition-4.md) | 956 | `BLOCKED_NATIVE_ADMISSION` |
| 166 | `instance` | [(anonymous)](declarations/instance-source-edition-26.md) | 959 | `BLOCKED_NATIVE_ADMISSION` |
| 167 | `instance` | [(anonymous)](declarations/instance-source-edition-7.md) | 965 | `BLOCKED_NATIVE_ADMISSION` |
| 168 | `instance` | [(anonymous)](declarations/instance-source-edition-27.md) | 968 | `BLOCKED_NATIVE_ADMISSION` |
| 169 | `instance` | [(anonymous)](declarations/instance-source-edition-24.md) | 973 | `BLOCKED_NATIVE_ADMISSION` |
| 170 | `def` | [refl](declarations/refl.md) | 978 | `BLOCKED_NATIVE_ADMISSION` |
| 171 | `theorem` | [refl_apply](declarations/refl-apply.md) | 982 | `BLOCKED_NATIVE_ADMISSION` |
| 172 | `def` | [symm](declarations/symm.md) | 987 | `BLOCKED_NATIVE_ADMISSION` |
| 173 | `theorem` | [apply_symm_apply](declarations/apply-symm-apply.md) | 992 | `BLOCKED_NATIVE_ADMISSION` |
| 174 | `theorem` | [symm_apply_apply](declarations/symm-apply-apply.md) | 996 | `BLOCKED_NATIVE_ADMISSION` |
| 175 | `theorem` | [symm_apply_eq](declarations/symm-apply-eq.md) | 999 | `BLOCKED_NATIVE_ADMISSION` |
| 176 | `theorem` | [eq_symm_apply](declarations/eq-symm-apply-source-edition-2.md) | 1002 | `BLOCKED_NATIVE_ADMISSION` |
| 177 | `theorem` | [apply_eq_iff_eq_symm_apply](declarations/apply-eq-iff-eq-symm-apply.md) | 1006 | `BLOCKED_NATIVE_ADMISSION` |
| 178 | `theorem` | [symm_symm](declarations/symm-symm-source-edition-2.md) | 1011 | `BLOCKED_NATIVE_ADMISSION` |
| 179 | `theorem` | [symm_bijective](declarations/symm-bijective-source-edition-2.md) | 1013 | `BLOCKED_NATIVE_ADMISSION` |
| 180 | `def` | [trans](declarations/trans.md) | 1019 | `BLOCKED_NATIVE_ADMISSION` |
| 181 | `theorem` | [trans_apply](declarations/trans-apply-source-edition-2.md) | 1024 | `BLOCKED_NATIVE_ADMISSION` |
| 182 | `theorem` | [symm_trans](declarations/symm-trans-source-edition-2.md) | 1028 | `BLOCKED_NATIVE_ADMISSION` |
| 183 | `theorem` | [self_trans_symm](declarations/self-trans-symm.md) | 1033 | `BLOCKED_NATIVE_ADMISSION` |
| 184 | `theorem` | [symm_trans_self](declarations/symm-trans-self-source-edition-2.md) | 1037 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=d1d261d9f95eb012f33ccfd4a739695ee5fa9012d56654cc41840d9bf333f4f6 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/Basic/Variant2dbbb49a4c327291339a5f52e78bdec2da591eb4c61d66ff9f674ac2c9ead313.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
