# Lp Space Basic Namespaced Public

[Complete source index](../../../complete-source-index.md) · [Up one directory](../../../complete-source-index.md) · [Full source](source.md)

**167 observed declarations and anonymous commands**, 133 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Analysis/MeasureTheory/Basic/Variantb14cca8c1c20b98feda4bb99e3e44e619b9dcd28f25cf658b7215cfbd0fcc511.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `e1f0f7c4a292a1673c78326b4b09a8e389d55ab0`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/MeasureAndIntegration/ClassicalMeasureTheory/LpSpaceBasicNamespacedPublic.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `theorem` | [eLpNorm_aeeqFun](declarations/elpnorm-aeeqfun.md) | 87 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `theorem` | [MemLp.eLpNorm_mk_lt_top](declarations/memlp-elpnorm-mk-lt-top.md) | 92 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `def` | [Lp](declarations/lp.md) | 98 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `def` | [toLp](declarations/tolp.md) | 118 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [toLp_val](declarations/tolp-val.md) | 121 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [coeFn_toLp](declarations/coefn-tolp.md) | 124 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [toLp_congr](declarations/tolp-congr.md) | 128 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [toLp_eq_toLp_iff](declarations/tolp-eq-tolp-iff.md) | 133 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [toLp_zero](declarations/tolp-zero.md) | 137 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [toLp_add](declarations/tolp-add.md) | 140 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [toLp_neg](declarations/tolp-neg.md) | 144 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [toLp_sub](declarations/tolp-sub.md) | 147 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `instance` | [instCoeFun](declarations/instcoefun.md) | 155 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [ext](declarations/ext.md) | 159 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [mem_Lp_iff_eLpNorm_lt_top](declarations/mem-lp-iff-elpnorm-lt-top.md) | 163 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [mem_Lp_iff_memLp](declarations/mem-lp-iff-memlp.md) | 165 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [antitone](declarations/antitone.md) | 168 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [coeFn_mk](declarations/coefn-mk.md) | 172 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [coe_mk](declarations/coe-mk.md) | 176 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [toLp_coeFn](declarations/tolp-coefn.md) | 180 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [eLpNorm_lt_top](declarations/elpnorm-lt-top.md) | 183 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [eLpNorm_ne_top](declarations/elpnorm-ne-top.md) | 187 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [stronglyMeasurable](declarations/stronglymeasurable.md) | 191 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [aestronglyMeasurable](declarations/aestronglymeasurable.md) | 195 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [memLp](declarations/memlp.md) | 198 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [coeFn_zero](declarations/coefn-zero.md) | 203 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [coeFn_neg](declarations/coefn-neg.md) | 208 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [coeFn_add](declarations/coefn-add.md) | 211 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [coeFn_sub](declarations/coefn-sub.md) | 214 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [coeFn_finsetSum](declarations/coefn-finsetsum.md) | 217 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [coeFn_fun_finsetSum](declarations/coefn-fun-finsetsum.md) | 221 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [const_mem_Lp](declarations/const-mem-lp.md) | 226 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `instance` | [instNorm](declarations/instnorm.md) | 230 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `instance` | [instNNNorm](declarations/instnnnorm.md) | 234 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `instance` | [instDist](declarations/instdist.md) | 236 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `instance` | [instEDist](declarations/instedist.md) | 238 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `theorem` | [norm_def](declarations/norm-def.md) | 240 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `theorem` | [nnnorm_def](declarations/nnnorm-def.md) | 243 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `theorem` | [coe_nnnorm](declarations/coe-nnnorm.md) | 247 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `theorem` | [enorm_def](declarations/enorm-def.md) | 250 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `lemma` | [norm_toLp](declarations/norm-tolp.md) | 254 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `theorem` | [nnnorm_toLp](declarations/nnnorm-tolp.md) | 258 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `lemma` | [enorm_toLp](declarations/enorm-tolp.md) | 263 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `theorem` | [dist_eq_eLpNorm_neg_add](declarations/dist-eq-elpnorm-neg-add.md) | 266 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `theorem` | [dist_def](declarations/dist-def.md) | 271 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `theorem` | [edist_eq_eLpNorm_neg_add](declarations/edist-eq-elpnorm-neg-add.md) | 276 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `theorem` | [edist_def](declarations/edist-def.md) | 278 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `theorem` | [edist_dist](declarations/edist-dist.md) | 283 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `theorem` | [dist_edist](declarations/dist-edist.md) | 287 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `theorem` | [dist_eq_norm](declarations/dist-eq-norm.md) | 290 | `BLOCKED_NATIVE_ADMISSION` |
| 51 | `theorem` | [edist_toLp_toLp](declarations/edist-tolp-tolp.md) | 293 | `BLOCKED_NATIVE_ADMISSION` |
| 52 | `theorem` | [edist_toLp_zero](declarations/edist-tolp-zero.md) | 299 | `BLOCKED_NATIVE_ADMISSION` |
| 53 | `theorem` | [nnnorm_zero](declarations/nnnorm-zero.md) | 303 | `BLOCKED_NATIVE_ADMISSION` |
| 54 | `theorem` | [norm_zero](declarations/norm-zero.md) | 308 | `BLOCKED_NATIVE_ADMISSION` |
| 55 | `theorem` | [norm_measure_zero](declarations/norm-measure-zero.md) | 312 | `BLOCKED_NATIVE_ADMISSION` |
| 56 | `theorem` | [norm_exponent_zero](declarations/norm-exponent-zero.md) | 316 | `BLOCKED_NATIVE_ADMISSION` |
| 57 | `theorem` | [nnnorm_exponent_zero](declarations/nnnorm-exponent-zero.md) | 320 | `BLOCKED_NATIVE_ADMISSION` |
| 58 | `theorem` | [enorm_exponent_zero](declarations/enorm-exponent-zero.md) | 323 | `BLOCKED_NATIVE_ADMISSION` |
| 59 | `theorem` | [eq_zero_iff_ae_eq_zero](declarations/eq-zero-iff-ae-eq-zero.md) | 326 | `BLOCKED_NATIVE_ADMISSION` |
| 60 | `theorem` | [nnnorm_eq_zero_iff](declarations/nnnorm-eq-zero-iff.md) | 330 | `BLOCKED_NATIVE_ADMISSION` |
| 61 | `theorem` | [norm_eq_zero_iff](declarations/norm-eq-zero-iff.md) | 335 | `BLOCKED_NATIVE_ADMISSION` |
| 62 | `theorem` | [nnnorm_neg](declarations/nnnorm-neg.md) | 339 | `BLOCKED_NATIVE_ADMISSION` |
| 63 | `theorem` | [norm_neg](declarations/norm-neg.md) | 343 | `BLOCKED_NATIVE_ADMISSION` |
| 64 | `theorem` | [nnnorm_le_mul_nnnorm_of_ae_le_mul](declarations/nnnorm-le-mul-nnnorm-of-ae-le-mul.md) | 346 | `BLOCKED_NATIVE_ADMISSION` |
| 65 | `theorem` | [norm_le_mul_norm_of_ae_le_mul](declarations/norm-le-mul-norm-of-ae-le-mul.md) | 356 | `BLOCKED_NATIVE_ADMISSION` |
| 66 | `theorem` | [norm_le_norm_of_ae_le](declarations/norm-le-norm-of-ae-le.md) | 365 | `BLOCKED_NATIVE_ADMISSION` |
| 67 | `theorem` | [mem_Lp_of_nnnorm_ae_le_mul](declarations/mem-lp-of-nnnorm-ae-le-mul.md) | 370 | `BLOCKED_NATIVE_ADMISSION` |
| 68 | `theorem` | [mem_Lp_of_ae_le_mul](declarations/mem-lp-of-ae-le-mul.md) | 374 | `BLOCKED_NATIVE_ADMISSION` |
| 69 | `theorem` | [mem_Lp_of_nnnorm_ae_le](declarations/mem-lp-of-nnnorm-ae-le.md) | 378 | `BLOCKED_NATIVE_ADMISSION` |
| 70 | `theorem` | [mem_Lp_of_ae_le](declarations/mem-lp-of-ae-le.md) | 382 | `BLOCKED_NATIVE_ADMISSION` |
| 71 | `theorem` | [mem_Lp_of_ae_nnnorm_bound](declarations/mem-lp-of-ae-nnnorm-bound.md) | 386 | `BLOCKED_NATIVE_ADMISSION` |
| 72 | `theorem` | [mem_Lp_of_ae_bound](declarations/mem-lp-of-ae-bound.md) | 390 | `BLOCKED_NATIVE_ADMISSION` |
| 73 | `theorem` | [nnnorm_le_of_ae_bound](declarations/nnnorm-le-of-ae-bound.md) | 394 | `BLOCKED_NATIVE_ADMISSION` |
| 74 | `theorem` | [norm_le_of_ae_bound](declarations/norm-le-of-ae-bound.md) | 403 | `BLOCKED_NATIVE_ADMISSION` |
| 75 | `instance` | [instAddCommGroup](declarations/instaddcommgroup.md) | 409 | `BLOCKED_NATIVE_ADMISSION` |
| 76 | `instance` | [instNormedAddCommGroup](declarations/instnormedaddcommgroup.md) | 411 | `BLOCKED_NATIVE_ADMISSION` |
| 77 | `example` | [(anonymous)](declarations/example.md) | 428 | `BLOCKED_NATIVE_ADMISSION` |
| 78 | `example` | [(anonymous)](declarations/example-source-edition-2.md) | 431 | `BLOCKED_NATIVE_ADMISSION` |
| 79 | `theorem` | [const_smul_mem_Lp](declarations/const-smul-mem-lp.md) | 439 | `BLOCKED_NATIVE_ADMISSION` |
| 80 | `def` | [LpSubmodule](declarations/lpsubmodule.md) | 447 | `BLOCKED_NATIVE_ADMISSION` |
| 81 | `theorem` | [coe_LpSubmodule](declarations/coe-lpsubmodule.md) | 452 | `BLOCKED_NATIVE_ADMISSION` |
| 82 | `instance` | [instModule](declarations/instmodule.md) | 455 | `BLOCKED_NATIVE_ADMISSION` |
| 83 | `theorem` | [coeFn_smul](declarations/coefn-smul.md) | 458 | `BLOCKED_NATIVE_ADMISSION` |
| 84 | `theorem` | [coeFn_linearCombination](declarations/coefn-linearcombination.md) | 461 | `BLOCKED_NATIVE_ADMISSION` |
| 85 | `instance` | [instIsCentralScalar](declarations/instiscentralscalar.md) | 465 | `BLOCKED_NATIVE_ADMISSION` |
| 86 | `instance` | [instSMulCommClass](declarations/instsmulcommclass.md) | 469 | `BLOCKED_NATIVE_ADMISSION` |
| 87 | `instance` | [instIsScalarTower](declarations/instisscalartower.md) | 472 | `BLOCKED_NATIVE_ADMISSION` |
| 88 | `instance` | [instIsBoundedSMul](declarations/instisboundedsmul.md) | 475 | `BLOCKED_NATIVE_ADMISSION` |
| 89 | `instance` | [instNormedSpace](declarations/instnormedspace.md) | 486 | `BLOCKED_NATIVE_ADMISSION` |
| 90 | `theorem` | [toLp_const_smul](declarations/tolp-const-smul.md) | 497 | `BLOCKED_NATIVE_ADMISSION` |
| 91 | `theorem` | [MemLp.enorm_rpow_div](declarations/memlp-enorm-rpow-div.md) | 505 | `BLOCKED_NATIVE_ADMISSION` |
| 92 | `theorem` | [MemLp.norm_rpow_div](declarations/memlp-norm-rpow-div.md) | 532 | `BLOCKED_NATIVE_ADMISSION` |
| 93 | `theorem` | [memLp_enorm_rpow_iff](declarations/memlp-enorm-rpow-iff.md) | 556 | `BLOCKED_NATIVE_ADMISSION` |
| 94 | `theorem` | [memLp_norm_rpow_iff](declarations/memlp-norm-rpow-iff.md) | 568 | `BLOCKED_NATIVE_ADMISSION` |
| 95 | `theorem` | [MemLp.enorm_rpow](declarations/memlp-enorm-rpow.md) | 580 | `BLOCKED_NATIVE_ADMISSION` |
| 96 | `theorem` | [MemLp.norm_rpow](declarations/memlp-norm-rpow.md) | 585 | `BLOCKED_NATIVE_ADMISSION` |
| 97 | `theorem` | [AEEqFun.compMeasurePreserving_mem_Lp](declarations/aeeqfun-compmeasurepreserving-mem-lp.md) | 590 | `BLOCKED_NATIVE_ADMISSION` |
| 98 | `def` | [compMeasurePreserving](declarations/compmeasurepreserving.md) | 604 | `BLOCKED_NATIVE_ADMISSION` |
| 99 | `theorem` | [compMeasurePreserving_val](declarations/compmeasurepreserving-val.md) | 611 | `BLOCKED_NATIVE_ADMISSION` |
| 100 | `theorem` | [coeFn_compMeasurePreserving](declarations/coefn-compmeasurepreserving.md) | 615 | `BLOCKED_NATIVE_ADMISSION` |
| 101 | `theorem` | [norm_compMeasurePreserving](declarations/norm-compmeasurepreserving.md) | 620 | `BLOCKED_NATIVE_ADMISSION` |
| 102 | `theorem` | [isometry_compMeasurePreserving](declarations/isometry-compmeasurepreserving.md) | 624 | `BLOCKED_NATIVE_ADMISSION` |
| 103 | `theorem` | [toLp_compMeasurePreserving](declarations/tolp-compmeasurepreserving.md) | 628 | `BLOCKED_NATIVE_ADMISSION` |
| 104 | `theorem` | [compMeasurePreserving_id](declarations/compmeasurepreserving-id.md) | 632 | `BLOCKED_NATIVE_ADMISSION` |
| 105 | `theorem` | [compMeasurePreserving_id_apply](declarations/compmeasurepreserving-id-apply.md) | 637 | `BLOCKED_NATIVE_ADMISSION` |
| 106 | `theorem` | [compMeasurePreserving_comp](declarations/compmeasurepreserving-comp.md) | 640 | `BLOCKED_NATIVE_ADMISSION` |
| 107 | `theorem` | [compMeasurePreserving_comp_apply](declarations/compmeasurepreserving-comp-apply.md) | 647 | `BLOCKED_NATIVE_ADMISSION` |
| 108 | `theorem` | [compMeasurePreserving_iterate](declarations/compmeasurepreserving-iterate.md) | 654 | `BLOCKED_NATIVE_ADMISSION` |
| 109 | `def` | [compMeasurePreservingₗ](declarations/compmeasurepreserving-source-edition-2.md) | 668 | `BLOCKED_NATIVE_ADMISSION` |
| 110 | `def` | [compMeasurePreservingₗᵢ](declarations/compmeasurepreserving-source-edition-3.md) | 675 | `BLOCKED_NATIVE_ADMISSION` |
| 111 | `theorem` | [LipschitzWith.comp_memLp](declarations/lipschitzwith-comp-memlp.md) | 699 | `BLOCKED_NATIVE_ADMISSION` |
| 112 | `theorem` | [MeasureTheory.MemLp.of_comp_antilipschitzWith](declarations/measuretheory-memlp-of-comp-antilipschitzwith.md) | 708 | `BLOCKED_NATIVE_ADMISSION` |
| 113 | `lemma` | [MeasureTheory.MemLp.continuousLinearMap_comp](declarations/measuretheory-memlp-continuouslinearmap-comp.md) | 722 | `BLOCKED_NATIVE_ADMISSION` |
| 114 | `theorem` | [memLp_comp_iff_of_antilipschitz](declarations/memlp-comp-iff-of-antilipschitz.md) | 730 | `BLOCKED_NATIVE_ADMISSION` |
| 115 | `def` | [compLp](declarations/complp-source-edition-4.md) | 737 | `BLOCKED_NATIVE_ADMISSION` |
| 116 | `theorem` | [coeFn_compLp](declarations/coefn-complp-source-edition-3.md) | 742 | `BLOCKED_NATIVE_ADMISSION` |
| 117 | `theorem` | [compLp_zero](declarations/complp-zero.md) | 747 | `BLOCKED_NATIVE_ADMISSION` |
| 118 | `theorem` | [norm_compLp_sub_le](declarations/norm-complp-sub-le.md) | 753 | `BLOCKED_NATIVE_ADMISSION` |
| 119 | `theorem` | [norm_compLp_le](declarations/norm-complp-le.md) | 761 | `BLOCKED_NATIVE_ADMISSION` |
| 120 | `theorem` | [lipschitzWith_compLp](declarations/lipschitzwith-complp.md) | 766 | `BLOCKED_NATIVE_ADMISSION` |
| 121 | `theorem` | [continuous_compLp](declarations/continuous-complp.md) | 771 | `BLOCKED_NATIVE_ADMISSION` |
| 122 | `def` | [compLp](declarations/complp-source-edition-2.md) | 784 | `BLOCKED_NATIVE_ADMISSION` |
| 123 | `theorem` | [coeFn_compLp](declarations/coefn-complp-source-edition-2.md) | 787 | `BLOCKED_NATIVE_ADMISSION` |
| 124 | `theorem` | [coeFn_compLp'](declarations/coefn-complp.md) | 790 | `BLOCKED_NATIVE_ADMISSION` |
| 125 | `theorem` | [comp_memLp](declarations/comp-memlp-source-edition-2.md) | 793 | `BLOCKED_NATIVE_ADMISSION` |
| 126 | `theorem` | [comp_memLp'](declarations/comp-memlp.md) | 796 | `BLOCKED_NATIVE_ADMISSION` |
| 127 | `theorem` | [Lp Space Basic Namespaced Public](declarations/ofreal.md) | 803 | `BLOCKED_NATIVE_ADMISSION` |
| 128 | `theorem` | [Lp Space Basic Namespaced Public](declarations/memlp-re-im-iff.md) | 807 | `BLOCKED_NATIVE_ADMISSION` |
| 129 | `theorem` | [add_compLp](declarations/add-complp.md) | 818 | `BLOCKED_NATIVE_ADMISSION` |
| 130 | `theorem` | [smul_compLp](declarations/smul-complp.md) | 824 | `BLOCKED_NATIVE_ADMISSION` |
| 131 | `theorem` | [norm_compLp_le](declarations/norm-complp-le-source-edition-2.md) | 831 | `BLOCKED_NATIVE_ADMISSION` |
| 132 | `def` | [compLpₗ](declarations/complp-source-edition-3.md) | 837 | `BLOCKED_NATIVE_ADMISSION` |
| 133 | `def` | [compLpL](declarations/complpl-source-edition-2.md) | 858 | `BLOCKED_NATIVE_ADMISSION` |
| 134 | `theorem` | [coeFn_compLpL](declarations/coefn-complpl.md) | 863 | `BLOCKED_NATIVE_ADMISSION` |
| 135 | `theorem` | [add_compLpL](declarations/add-complpl.md) | 867 | `BLOCKED_NATIVE_ADMISSION` |
| 136 | `theorem` | [smul_compLpL](declarations/smul-complpl.md) | 870 | `BLOCKED_NATIVE_ADMISSION` |
| 137 | `theorem` | [norm_compLpL_le](declarations/norm-complpl-le.md) | 875 | `BLOCKED_NATIVE_ADMISSION` |
| 138 | `def` | [compLpₗ₂](declarations/complp.md) | 886 | `BLOCKED_NATIVE_ADMISSION` |
| 139 | `def` | [compLpL₂](declarations/complpl.md) | 903 | `BLOCKED_NATIVE_ADMISSION` |
| 140 | `theorem` | [compLpL₂_apply_apply](declarations/complpl-apply-apply.md) | 909 | `BLOCKED_NATIVE_ADMISSION` |
| 141 | `theorem` | [norm_compLpL₂_le](declarations/norm-complpl-le-source-edition-2.md) | 912 | `BLOCKED_NATIVE_ADMISSION` |
| 142 | `def` | [LpToLpOfMeasureLeSMulₗ](declarations/lptolpofmeasurelesmul.md) | 929 | `BLOCKED_NATIVE_ADMISSION` |
| 143 | `lemma` | [coeFn_LpToLpOfMeasureLeSMulₗ](declarations/coefn-lptolpofmeasurelesmul.md) | 946 | `BLOCKED_NATIVE_ADMISSION` |
| 144 | `lemma` | [enorm_LpToLpOfMeasureLeSMulₗ_apply_le](declarations/enorm-lptolpofmeasurelesmul-apply-le.md) | 950 | `BLOCKED_NATIVE_ADMISSION` |
| 145 | `lemma` | [norm_LpToLpOfMeasureLeSMulₗ_apply_le](declarations/norm-lptolpofmeasurelesmul-apply-le.md) | 957 | `BLOCKED_NATIVE_ADMISSION` |
| 146 | `def` | [LpToLpOfMeasureLeSMul](declarations/lptolpofmeasurelesmul-source-edition-2.md) | 967 | `BLOCKED_NATIVE_ADMISSION` |
| 147 | `lemma` | [coeFn_LpToLpOfMeasureLeSMul](declarations/coefn-lptolpofmeasurelesmul-source-edition-2.md) | 972 | `BLOCKED_NATIVE_ADMISSION` |
| 148 | `lemma` | [norm_LpToLpOfMeasureLeSMul_le](declarations/norm-lptolpofmeasurelesmul-le.md) | 976 | `BLOCKED_NATIVE_ADMISSION` |
| 149 | `theorem` | [lipschitzWith_pos_part](declarations/lipschitzwith-pos-part.md) | 984 | `BLOCKED_NATIVE_ADMISSION` |
| 150 | `theorem` | [Lp Space Basic Namespaced Public](declarations/pos-part.md) | 987 | `BLOCKED_NATIVE_ADMISSION` |
| 151 | `theorem` | [Lp Space Basic Namespaced Public](declarations/neg-part.md) | 991 | `BLOCKED_NATIVE_ADMISSION` |
| 152 | `def` | [posPart](declarations/pospart.md) | 996 | `BLOCKED_NATIVE_ADMISSION` |
| 153 | `def` | [negPart](declarations/negpart.md) | 1000 | `BLOCKED_NATIVE_ADMISSION` |
| 154 | `theorem` | [coe_posPart](declarations/coe-pospart.md) | 1004 | `BLOCKED_NATIVE_ADMISSION` |
| 155 | `theorem` | [coeFn_posPart](declarations/coefn-pospart.md) | 1007 | `BLOCKED_NATIVE_ADMISSION` |
| 156 | `theorem` | [coeFn_negPart_eq_max](declarations/coefn-negpart-eq-max.md) | 1010 | `BLOCKED_NATIVE_ADMISSION` |
| 157 | `theorem` | [coeFn_negPart](declarations/coefn-negpart.md) | 1015 | `BLOCKED_NATIVE_ADMISSION` |
| 158 | `theorem` | [continuous_posPart](declarations/continuous-pospart.md) | 1018 | `BLOCKED_NATIVE_ADMISSION` |
| 159 | `theorem` | [continuous_negPart](declarations/continuous-negpart.md) | 1021 | `BLOCKED_NATIVE_ADMISSION` |
| 160 | `lemma` | [pow_mul_meas_ge_le_enorm](declarations/pow-mul-meas-ge-le-enorm.md) | 1034 | `BLOCKED_NATIVE_ADMISSION` |
| 161 | `lemma` | [mul_meas_ge_le_pow_enorm](declarations/mul-meas-ge-le-pow-enorm-source-edition-2.md) | 1040 | `BLOCKED_NATIVE_ADMISSION` |
| 162 | `theorem` | [mul_meas_ge_le_pow_enorm'](declarations/mul-meas-ge-le-pow-enorm.md) | 1046 | `BLOCKED_NATIVE_ADMISSION` |
| 163 | `theorem` | [meas_ge_le_mul_pow_enorm](declarations/meas-ge-le-mul-pow-enorm.md) | 1052 | `BLOCKED_NATIVE_ADMISSION` |
| 164 | `instance` | [(anonymous)](declarations/instance.md) | 1061 | `BLOCKED_NATIVE_ADMISSION` |
| 165 | `lemma` | [coeFn_star](declarations/coefn-star.md) | 1065 | `BLOCKED_NATIVE_ADMISSION` |
| 166 | `instance` | [(anonymous)](declarations/instance-source-edition-2.md) | 1068 | `BLOCKED_NATIVE_ADMISSION` |
| 167 | `instance` | [(anonymous)](declarations/instance-source-edition-3.md) | 1071 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=a8ef90342fbe4eb22b89f366a975f78a2c1a74ec34dfdf921188613bfabb90c2 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/MeasureTheory/Basic/Variantb14cca8c1c20b98feda4bb99e3e44e619b9dcd28f25cf658b7215cfbd0fcc511.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
