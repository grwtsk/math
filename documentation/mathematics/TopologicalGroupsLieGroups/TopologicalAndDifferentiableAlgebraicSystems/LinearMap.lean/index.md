# Linear Map

[Complete source index](../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**184 observed declarations and anonymous commands**, 129 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Topology/GeneralTopology/LinearMap/Variant2d9eff7284851bc18e26a0b6cdfe29505e5b841063163e0e0c49f0683e61a24f.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `2e71c00c890995178465124f2912166de722d50a`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/LinearMap.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `structure` | [ContinuousLinearMap](declarations/continuouslinearmap.md) | 31 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `class` | [ContinuousSemilinearMapClass](declarations/continuoussemilinearmapclass.md) | 49 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `abbrev` | [ContinuousLinearMapClass](declarations/continuouslinearmapclass.md) | 58 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `instance` | [LinearMap.coe](declarations/linearmap-coe.md) | 80 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [coe_injective](declarations/coe-injective.md) | 82 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `instance` | [funLike](declarations/funlike.md) | 88 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `instance` | [continuousSemilinearMapClass](declarations/continuoussemilinearmapclass-source-edition-2.md) | 92 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [coe_mk](declarations/coe-mk-source-edition-2.md) | 98 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [coe_mk'](declarations/coe-mk.md) | 102 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [continuous](declarations/continuous.md) | 106 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [uniformContinuous](declarations/uniformcontinuous.md) | 109 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [coe_inj](declarations/coe-inj.md) | 115 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [coeFn_injective](declarations/coefn-injective.md) | 118 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [toContinuousAddMonoidHom_injective](declarations/tocontinuousaddmonoidhom-injective.md) | 121 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [toContinuousAddMonoidHom_inj](declarations/tocontinuousaddmonoidhom-inj.md) | 126 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `def` | [Simps.apply](declarations/simps-apply.md) | 132 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `def` | [Simps.coe](declarations/simps-coe.md) | 136 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [ext](declarations/ext.md) | 142 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `def` | [copy](declarations/copy.md) | 147 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [coe_copy](declarations/coe-copy.md) | 152 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [copy_eq](declarations/copy-eq.md) | 155 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [range_coeFn_eq](declarations/range-coefn-eq.md) | 158 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [map_zero](declarations/map-zero.md) | 169 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [map_add](declarations/map-add.md) | 172 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [map_smulₛₗ](declarations/map-smul-source-edition-2.md) | 176 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [map_smul](declarations/map-smul.md) | 179 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [map_smul_of_tower](declarations/map-smul-of-tower.md) | 183 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [coe_coe](declarations/coe-coe.md) | 189 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [ext_ring](declarations/ext-ring.md) | 193 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [eqOn_closure_span](declarations/eqon-closure-span.md) | 198 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [ext_on](declarations/ext-on.md) | 204 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [_root_.Submodule.topologicalClosure_map](declarations/root-submodule-topologicalclosure-map.md) | 210 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [_root_.DenseRange.topologicalClosure_map_submodule](declarations/root-denserange-topologicalclosure-map-submodule.md) | 220 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `instance` | [instSMul](declarations/instsmul.md) | 235 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `instance` | [mulAction](declarations/mulaction.md) | 238 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `theorem` | [smul_apply](declarations/smul-apply.md) | 242 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `theorem` | [coe_smul](declarations/coe-smul-source-edition-2.md) | 246 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `theorem` | [coe_smul'](declarations/coe-smul.md) | 251 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `instance` | [isScalarTower](declarations/isscalartower.md) | 255 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `instance` | [smulCommClass](declarations/smulcommclass.md) | 259 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `instance` | [zero](declarations/zero.md) | 265 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `instance` | [inhabited](declarations/inhabited.md) | 268 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `theorem` | [default_def](declarations/default-def.md) | 272 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `theorem` | [zero_apply](declarations/zero-apply.md) | 276 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `theorem` | [coe_zero](declarations/coe-zero.md) | 280 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `theorem` | [coe_zero'](declarations/coe-zero-source-edition-2.md) | 287 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `theorem` | [toContinuousAddMonoidHom_zero](declarations/tocontinuousaddmonoidhom-zero.md) | 291 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `instance` | [uniqueOfLeft](declarations/uniqueofleft.md) | 294 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `instance` | [uniqueOfRight](declarations/uniqueofright.md) | 297 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `theorem` | [exists_ne_zero](declarations/exists-ne-zero.md) | 300 | `BLOCKED_NATIVE_ADMISSION` |
| 51 | `def` | [id](declarations/id.md) | 309 | `BLOCKED_NATIVE_ADMISSION` |
| 52 | `instance` | [one](declarations/one.md) | 314 | `BLOCKED_NATIVE_ADMISSION` |
| 53 | `theorem` | [one_def](declarations/one-def.md) | 317 | `BLOCKED_NATIVE_ADMISSION` |
| 54 | `theorem` | [id_apply](declarations/id-apply.md) | 320 | `BLOCKED_NATIVE_ADMISSION` |
| 55 | `theorem` | [coe_id](declarations/coe-id-source-edition-2.md) | 324 | `BLOCKED_NATIVE_ADMISSION` |
| 56 | `theorem` | [coe_id'](declarations/coe-id.md) | 328 | `BLOCKED_NATIVE_ADMISSION` |
| 57 | `theorem` | [toContinuousAddMonoidHom_id](declarations/tocontinuousaddmonoidhom-id.md) | 332 | `BLOCKED_NATIVE_ADMISSION` |
| 58 | `theorem` | [coe_eq_id](declarations/coe-eq-id.md) | 336 | `BLOCKED_NATIVE_ADMISSION` |
| 59 | `theorem` | [one_apply](declarations/one-apply.md) | 340 | `BLOCKED_NATIVE_ADMISSION` |
| 60 | `instance` | [(anonymous)](declarations/instance.md) | 343 | `BLOCKED_NATIVE_ADMISSION` |
| 61 | `instance` | [add](declarations/add.md) | 351 | `BLOCKED_NATIVE_ADMISSION` |
| 62 | `theorem` | [add_apply](declarations/add-apply.md) | 355 | `BLOCKED_NATIVE_ADMISSION` |
| 63 | `theorem` | [coe_add](declarations/coe-add.md) | 359 | `BLOCKED_NATIVE_ADMISSION` |
| 64 | `theorem` | [coe_add'](declarations/coe-add-source-edition-2.md) | 363 | `BLOCKED_NATIVE_ADMISSION` |
| 65 | `theorem` | [toContinuousAddMonoidHom_add](declarations/tocontinuousaddmonoidhom-add.md) | 367 | `BLOCKED_NATIVE_ADMISSION` |
| 66 | `instance` | [addCommMonoid](declarations/addcommmonoid.md) | 370 | `BLOCKED_NATIVE_ADMISSION` |
| 67 | `theorem` | [coe_sum](declarations/coe-sum-source-edition-2.md) | 396 | `BLOCKED_NATIVE_ADMISSION` |
| 68 | `theorem` | [coe_sum'](declarations/coe-sum.md) | 401 | `BLOCKED_NATIVE_ADMISSION` |
| 69 | `theorem` | [sum_apply](declarations/sum-apply.md) | 404 | `BLOCKED_NATIVE_ADMISSION` |
| 70 | `def` | [comp](declarations/comp.md) | 412 | `BLOCKED_NATIVE_ADMISSION` |
| 71 | `theorem` | [coe_comp](declarations/coe-comp.md) | 421 | `BLOCKED_NATIVE_ADMISSION` |
| 72 | `theorem` | [coe_comp'](declarations/coe-comp-source-edition-2.md) | 426 | `BLOCKED_NATIVE_ADMISSION` |
| 73 | `theorem` | [toContinuousAddMonoidHom_comp](declarations/tocontinuousaddmonoidhom-comp.md) | 430 | `BLOCKED_NATIVE_ADMISSION` |
| 74 | `theorem` | [comp_apply](declarations/comp-apply.md) | 433 | `BLOCKED_NATIVE_ADMISSION` |
| 75 | `theorem` | [comp_id](declarations/comp-id.md) | 437 | `BLOCKED_NATIVE_ADMISSION` |
| 76 | `theorem` | [id_comp](declarations/id-comp.md) | 441 | `BLOCKED_NATIVE_ADMISSION` |
| 77 | `lemma` | [leftInverse_of_comp](declarations/leftinverse-of-comp.md) | 451 | `BLOCKED_NATIVE_ADMISSION` |
| 78 | `lemma` | [rightInverse_of_comp](declarations/rightinverse-of-comp.md) | 456 | `BLOCKED_NATIVE_ADMISSION` |
| 79 | `theorem` | [comp_zero](declarations/comp-zero.md) | 463 | `BLOCKED_NATIVE_ADMISSION` |
| 80 | `theorem` | [zero_comp](declarations/zero-comp.md) | 468 | `BLOCKED_NATIVE_ADMISSION` |
| 81 | `theorem` | [comp_add](declarations/comp-add.md) | 473 | `BLOCKED_NATIVE_ADMISSION` |
| 82 | `theorem` | [add_comp](declarations/add-comp.md) | 479 | `BLOCKED_NATIVE_ADMISSION` |
| 83 | `theorem` | [comp_finset_sum](declarations/comp-finset-sum.md) | 484 | `BLOCKED_NATIVE_ADMISSION` |
| 84 | `theorem` | [finset_sum_comp](declarations/finset-sum-comp.md) | 490 | `BLOCKED_NATIVE_ADMISSION` |
| 85 | `theorem` | [comp_assoc](declarations/comp-assoc.md) | 496 | `BLOCKED_NATIVE_ADMISSION` |
| 86 | `instance` | [instMul](declarations/instmul.md) | 502 | `BLOCKED_NATIVE_ADMISSION` |
| 87 | `theorem` | [mul_def](declarations/mul-def.md) | 505 | `BLOCKED_NATIVE_ADMISSION` |
| 88 | `theorem` | [coe_mul](declarations/coe-mul.md) | 509 | `BLOCKED_NATIVE_ADMISSION` |
| 89 | `theorem` | [mul_apply](declarations/mul-apply.md) | 512 | `BLOCKED_NATIVE_ADMISSION` |
| 90 | `instance` | [monoidWithZero](declarations/monoidwithzero.md) | 515 | `BLOCKED_NATIVE_ADMISSION` |
| 91 | `theorem` | [coe_pow](declarations/coe-pow.md) | 522 | `BLOCKED_NATIVE_ADMISSION` |
| 92 | `instance` | [instNatCast](declarations/instnatcast.md) | 525 | `BLOCKED_NATIVE_ADMISSION` |
| 93 | `instance` | [semiring](declarations/semiring.md) | 528 | `BLOCKED_NATIVE_ADMISSION` |
| 94 | `def` | [toLinearMapRingHom](declarations/tolinearmapringhom.md) | 539 | `BLOCKED_NATIVE_ADMISSION` |
| 95 | `theorem` | [natCast_apply](declarations/natcast-apply.md) | 547 | `BLOCKED_NATIVE_ADMISSION` |
| 96 | `theorem` | [ofNat_apply](declarations/ofnat-apply.md) | 551 | `BLOCKED_NATIVE_ADMISSION` |
| 97 | `instance` | [applyModule](declarations/applymodule.md) | 562 | `BLOCKED_NATIVE_ADMISSION` |
| 98 | `theorem` | [smul_def](declarations/smul-def.md) | 566 | `BLOCKED_NATIVE_ADMISSION` |
| 99 | `instance` | [applyFaithfulSMul](declarations/applyfaithfulsmul.md) | 570 | `BLOCKED_NATIVE_ADMISSION` |
| 100 | `instance` | [applySMulCommClass](declarations/applysmulcommclass-source-edition-2.md) | 573 | `BLOCKED_NATIVE_ADMISSION` |
| 101 | `instance` | [applySMulCommClass'](declarations/applysmulcommclass.md) | 576 | `BLOCKED_NATIVE_ADMISSION` |
| 102 | `instance` | [continuousConstSMul_apply](declarations/continuousconstsmul-apply.md) | 579 | `BLOCKED_NATIVE_ADMISSION` |
| 103 | `theorem` | [isClosed_ker](declarations/isclosed-ker.md) | 586 | `BLOCKED_NATIVE_ADMISSION` |
| 104 | `theorem` | [isComplete_ker](declarations/iscomplete-ker.md) | 591 | `BLOCKED_NATIVE_ADMISSION` |
| 105 | `instance` | [completeSpace_ker](declarations/completespace-ker.md) | 597 | `BLOCKED_NATIVE_ADMISSION` |
| 106 | `instance` | [completeSpace_eqLocus](declarations/completespace-eqlocus.md) | 603 | `BLOCKED_NATIVE_ADMISSION` |
| 107 | `def` | [codRestrict](declarations/codrestrict.md) | 610 | `BLOCKED_NATIVE_ADMISSION` |
| 108 | `theorem` | [coe_codRestrict](declarations/coe-codrestrict.md) | 616 | `BLOCKED_NATIVE_ADMISSION` |
| 109 | `theorem` | [coe_codRestrict_apply](declarations/coe-codrestrict-apply.md) | 621 | `BLOCKED_NATIVE_ADMISSION` |
| 110 | `theorem` | [ker_codRestrict](declarations/ker-codrestrict.md) | 626 | `BLOCKED_NATIVE_ADMISSION` |
| 111 | `abbrev` | [rangeRestrict](declarations/rangerestrict.md) | 631 | `BLOCKED_NATIVE_ADMISSION` |
| 112 | `theorem` | [coe_rangeRestrict](declarations/coe-rangerestrict.md) | 635 | `BLOCKED_NATIVE_ADMISSION` |
| 113 | `def` | [_root_.Submodule.subtypeL](declarations/root-submodule-subtypel.md) | 640 | `BLOCKED_NATIVE_ADMISSION` |
| 114 | `theorem` | [_root_.Submodule.coe_subtypeL](declarations/root-submodule-coe-subtypel-source-edition-2.md) | 645 | `BLOCKED_NATIVE_ADMISSION` |
| 115 | `theorem` | [_root_.Submodule.coe_subtypeL'](declarations/root-submodule-coe-subtypel.md) | 650 | `BLOCKED_NATIVE_ADMISSION` |
| 116 | `theorem` | [_root_.Submodule.subtypeL_apply](declarations/root-submodule-subtypel-apply.md) | 654 | `BLOCKED_NATIVE_ADMISSION` |
| 117 | `theorem` | [_root_.Submodule.range_subtypeL](declarations/root-submodule-range-subtypel.md) | 658 | `BLOCKED_NATIVE_ADMISSION` |
| 118 | `theorem` | [_root_.Submodule.ker_subtypeL](declarations/root-submodule-ker-subtypel.md) | 662 | `BLOCKED_NATIVE_ADMISSION` |
| 119 | `def` | [smulRight](declarations/smulright-source-edition-2.md) | 673 | `BLOCKED_NATIVE_ADMISSION` |
| 120 | `theorem` | [smulRight_apply](declarations/smulright-apply.md) | 677 | `BLOCKED_NATIVE_ADMISSION` |
| 121 | `theorem` | [smulRight_one_one](declarations/smulright-one-one.md) | 686 | `BLOCKED_NATIVE_ADMISSION` |
| 122 | `theorem` | [smulRight_one_eq_iff](declarations/smulright-one-eq-iff.md) | 691 | `BLOCKED_NATIVE_ADMISSION` |
| 123 | `theorem` | [smulRight_comp](declarations/smulright-comp.md) | 695 | `BLOCKED_NATIVE_ADMISSION` |
| 124 | `def` | [toSpanSingleton](declarations/tospansingleton.md) | 708 | `BLOCKED_NATIVE_ADMISSION` |
| 125 | `theorem` | [toSpanSingleton_apply](declarations/tospansingleton-apply.md) | 712 | `BLOCKED_NATIVE_ADMISSION` |
| 126 | `theorem` | [toSpanSingleton_add](declarations/tospansingleton-add.md) | 715 | `BLOCKED_NATIVE_ADMISSION` |
| 127 | `theorem` | [toSpanSingleton_smul'](declarations/tospansingleton-smul-source-edition-2.md) | 719 | `BLOCKED_NATIVE_ADMISSION` |
| 128 | `theorem` | [toSpanSingleton_smul](declarations/tospansingleton-smul.md) | 725 | `BLOCKED_NATIVE_ADMISSION` |
| 129 | `theorem` | [one_smulRight_eq_toSpanSingleton](declarations/one-smulright-eq-tospansingleton.md) | 730 | `BLOCKED_NATIVE_ADMISSION` |
| 130 | `theorem` | [map_neg](declarations/map-neg.md) | 748 | `BLOCKED_NATIVE_ADMISSION` |
| 131 | `theorem` | [map_sub](declarations/map-sub.md) | 751 | `BLOCKED_NATIVE_ADMISSION` |
| 132 | `theorem` | [sub_apply'](declarations/sub-apply-source-edition-2.md) | 755 | `BLOCKED_NATIVE_ADMISSION` |
| 133 | `instance` | [neg](declarations/neg.md) | 764 | `BLOCKED_NATIVE_ADMISSION` |
| 134 | `theorem` | [neg_apply](declarations/neg-apply.md) | 768 | `BLOCKED_NATIVE_ADMISSION` |
| 135 | `theorem` | [coe_neg](declarations/coe-neg-source-edition-2.md) | 772 | `BLOCKED_NATIVE_ADMISSION` |
| 136 | `theorem` | [coe_neg'](declarations/coe-neg.md) | 776 | `BLOCKED_NATIVE_ADMISSION` |
| 137 | `theorem` | [toContinuousAddMonoidHom_neg](declarations/tocontinuousaddmonoidhom-neg.md) | 780 | `BLOCKED_NATIVE_ADMISSION` |
| 138 | `instance` | [sub](declarations/sub.md) | 783 | `BLOCKED_NATIVE_ADMISSION` |
| 139 | `instance` | [addCommGroup](declarations/addcommgroup.md) | 786 | `BLOCKED_NATIVE_ADMISSION` |
| 140 | `theorem` | [sub_apply](declarations/sub-apply.md) | 798 | `BLOCKED_NATIVE_ADMISSION` |
| 141 | `theorem` | [coe_sub](declarations/coe-sub-source-edition-2.md) | 802 | `BLOCKED_NATIVE_ADMISSION` |
| 142 | `theorem` | [coe_sub'](declarations/coe-sub.md) | 806 | `BLOCKED_NATIVE_ADMISSION` |
| 143 | `theorem` | [toContinuousAddMonoidHom_sub](declarations/tocontinuousaddmonoidhom-sub.md) | 810 | `BLOCKED_NATIVE_ADMISSION` |
| 144 | `theorem` | [comp_neg](declarations/comp-neg.md) | 816 | `BLOCKED_NATIVE_ADMISSION` |
| 145 | `theorem` | [neg_comp](declarations/neg-comp.md) | 823 | `BLOCKED_NATIVE_ADMISSION` |
| 146 | `theorem` | [comp_sub](declarations/comp-sub.md) | 829 | `BLOCKED_NATIVE_ADMISSION` |
| 147 | `theorem` | [sub_comp](declarations/sub-comp.md) | 836 | `BLOCKED_NATIVE_ADMISSION` |
| 148 | `instance` | [ring](declarations/ring.md) | 841 | `BLOCKED_NATIVE_ADMISSION` |
| 149 | `theorem` | [intCast_apply](declarations/intcast-apply.md) | 849 | `BLOCKED_NATIVE_ADMISSION` |
| 150 | `theorem` | [smulRight_one_pow](declarations/smulright-one-pow.md) | 852 | `BLOCKED_NATIVE_ADMISSION` |
| 151 | `def` | [projKerOfRightInverse](declarations/projkerofrightinverse.md) | 866 | `BLOCKED_NATIVE_ADMISSION` |
| 152 | `theorem` | [coe_projKerOfRightInverse_apply](declarations/coe-projkerofrightinverse-apply.md) | 871 | `BLOCKED_NATIVE_ADMISSION` |
| 153 | `theorem` | [projKerOfRightInverse_apply_idem](declarations/projkerofrightinverse-apply-idem.md) | 877 | `BLOCKED_NATIVE_ADMISSION` |
| 154 | `theorem` | [projKerOfRightInverse_comp_inv](declarations/projkerofrightinverse-comp-inv.md) | 884 | `BLOCKED_NATIVE_ADMISSION` |
| 155 | `theorem` | [isOpenMap_of_ne_zero](declarations/isopenmap-of-ne-zero.md) | 898 | `BLOCKED_NATIVE_ADMISSION` |
| 156 | `theorem` | [smul_comp](declarations/smul-comp.md) | 921 | `BLOCKED_NATIVE_ADMISSION` |
| 157 | `theorem` | [comp_smul](declarations/comp-smul.md) | 929 | `BLOCKED_NATIVE_ADMISSION` |
| 158 | `theorem` | [comp_smulₛₗ](declarations/comp-smul-source-edition-2.md) | 935 | `BLOCKED_NATIVE_ADMISSION` |
| 159 | `instance` | [distribMulAction](declarations/distribmulaction.md) | 942 | `BLOCKED_NATIVE_ADMISSION` |
| 160 | `instance` | [module](declarations/module.md) | 963 | `BLOCKED_NATIVE_ADMISSION` |
| 161 | `instance` | [isCentralScalar](declarations/iscentralscalar.md) | 967 | `BLOCKED_NATIVE_ADMISSION` |
| 162 | `def` | [coeLM](declarations/coelm-source-edition-2.md) | 975 | `BLOCKED_NATIVE_ADMISSION` |
| 163 | `def` | [coeLMₛₗ](declarations/coelm.md) | 984 | `BLOCKED_NATIVE_ADMISSION` |
| 164 | `def` | [smulRightₗ](declarations/smulright.md) | 1001 | `BLOCKED_NATIVE_ADMISSION` |
| 165 | `theorem` | [coe_smulRightₗ](declarations/coe-smulright.md) | 1012 | `BLOCKED_NATIVE_ADMISSION` |
| 166 | `instance` | [algebra](declarations/algebra.md) | 1025 | `BLOCKED_NATIVE_ADMISSION` |
| 167 | `theorem` | [algebraMap_apply](declarations/algebramap-apply.md) | 1028 | `BLOCKED_NATIVE_ADMISSION` |
| 168 | `def` | [restrictScalars](declarations/restrictscalars-source-edition-2.md) | 1044 | `BLOCKED_NATIVE_ADMISSION` |
| 169 | `theorem` | [coe_restrictScalars](declarations/coe-restrictscalars-source-edition-2.md) | 1048 | `BLOCKED_NATIVE_ADMISSION` |
| 170 | `theorem` | [coe_restrictScalars'](declarations/coe-restrictscalars.md) | 1052 | `BLOCKED_NATIVE_ADMISSION` |
| 171 | `theorem` | [toContinuousAddMonoidHom_restrictScalars](declarations/tocontinuousaddmonoidhom-restrictscalars.md) | 1055 | `BLOCKED_NATIVE_ADMISSION` |
| 172 | `lemma` | [restrictScalars_zero](declarations/restrictscalars-zero.md) | 1058 | `BLOCKED_NATIVE_ADMISSION` |
| 173 | `lemma` | [restrictScalars_add](declarations/restrictscalars-add.md) | 1061 | `BLOCKED_NATIVE_ADMISSION` |
| 174 | `theorem` | [restrictScalars_smul](declarations/restrictscalars-smul.md) | 1067 | `BLOCKED_NATIVE_ADMISSION` |
| 175 | `def` | [restrictScalarsₗ](declarations/restrictscalars.md) | 1076 | `BLOCKED_NATIVE_ADMISSION` |
| 176 | `theorem` | [coe_restrictScalarsₗ](declarations/coe-restrictscalars-source-edition-3.md) | 1082 | `BLOCKED_NATIVE_ADMISSION` |
| 177 | `lemma` | [restrictScalars_sub](declarations/restrictscalars-sub.md) | 1093 | `BLOCKED_NATIVE_ADMISSION` |
| 178 | `lemma` | [restrictScalars_neg](declarations/restrictscalars-neg.md) | 1097 | `BLOCKED_NATIVE_ADMISSION` |
| 179 | `def` | [ClosedComplemented](declarations/closedcomplemented.md) | 1111 | `BLOCKED_NATIVE_ADMISSION` |
| 180 | `theorem` | [ClosedComplemented.exists_isClosed_isCompl](declarations/closedcomplemented-exists-isclosed-iscompl.md) | 1114 | `BLOCKED_NATIVE_ADMISSION` |
| 181 | `theorem` | [ClosedComplemented.isClosed](declarations/closedcomplemented-isclosed.md) | 1119 | `BLOCKED_NATIVE_ADMISSION` |
| 182 | `theorem` | [closedComplemented_bot](declarations/closedcomplemented-bot.md) | 1126 | `BLOCKED_NATIVE_ADMISSION` |
| 183 | `theorem` | [closedComplemented_top](declarations/closedcomplemented-top.md) | 1130 | `BLOCKED_NATIVE_ADMISSION` |
| 184 | `theorem` | [ContinuousLinearMap.closedComplemented_ker_of_rightInverse](declarations/continuouslinearmap-closedcomplemented-ker-of-rightinverse.md) | 1135 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=03813dae405401b3d097d1adca8b0866ea6d19428f4f76b1b70fe0fcc87d696f -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/LinearMap/Variant2d9eff7284851bc18e26a0b6cdfe29505e5b841063163e0e0c49f0683e61a24f.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
