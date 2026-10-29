# Linear Algebra Bilinear Form Namespaced

[Complete source index](../../../../complete-source-index.md) · [Up one directory](../../complete-source-index.md) · [Full source](source.md)

**198 observed declarations and anonymous commands**, 144 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Algebra/LinearAlgebra/BilinearForm/Variant4a16e09289ff66e4a912272ff07f0ab4ffaeb261a27cc93a3cbfe135eeee874a.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `d1b0f0a4a96d05faabf6807d24166bd2c46adb44`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../_verification/specifications/LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/QuadraticAndBilinearFormsInnerProducts/LinearAlgebraBilinearFormNamespaced.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `structure` | [BilinForm](declarations/bilinform.md) | 62 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `instance` | [(anonymous)](declarations/instance-source-edition-13.md) | 84 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `theorem` | [coeFn_mk](declarations/coefn-mk.md) | 90 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `theorem` | [coeFn_congr](declarations/coefn-congr.md) | 94 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [add_left](declarations/add-left.md) | 99 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [smul_left](declarations/smul-left.md) | 104 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [add_right](declarations/add-right.md) | 109 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [smul_right](declarations/smul-right.md) | 114 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [zero_left](declarations/zero-left.md) | 119 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [zero_right](declarations/zero-right.md) | 124 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [neg_left](declarations/neg-left.md) | 129 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [neg_right](declarations/neg-right.md) | 134 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [sub_left](declarations/sub-left.md) | 139 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [sub_right](declarations/sub-right.md) | 144 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [coe_injective](declarations/coe-injective.md) | 151 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [ext](declarations/ext.md) | 158 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [congr_fun](declarations/congr-fun.md) | 164 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [ext_iff](declarations/ext-iff.md) | 168 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `instance` | [(anonymous)](declarations/instance.md) | 172 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [coe_zero](declarations/coe-zero.md) | 181 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [zero_apply](declarations/zero-apply.md) | 186 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `instance` | [(anonymous)](declarations/instance-source-edition-12.md) | 192 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [coe_add](declarations/coe-add.md) | 201 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [add_apply](declarations/add-apply.md) | 206 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `instance` | [(anonymous)](declarations/instance-source-edition-7.md) | 214 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [coe_smul](declarations/coe-smul.md) | 223 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [smul_apply](declarations/smul-apply.md) | 229 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `instance` | [(anonymous)](declarations/instance-source-edition-8.md) | 234 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `instance` | [(anonymous)](declarations/instance-source-edition-3.md) | 239 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `instance` | [(anonymous)](declarations/instance-source-edition-6.md) | 244 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `instance` | [(anonymous)](declarations/instance-source-edition-5.md) | 249 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `instance` | [(anonymous)](declarations/instance-source-edition-10.md) | 252 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [coe_neg](declarations/coe-neg.md) | 261 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [neg_apply](declarations/neg-apply.md) | 266 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `instance` | [(anonymous)](declarations/instance-source-edition-2.md) | 270 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `theorem` | [coe_sub](declarations/coe-sub.md) | 279 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `theorem` | [sub_apply](declarations/sub-apply.md) | 284 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `instance` | [(anonymous)](declarations/instance-source-edition-9.md) | 288 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `instance` | [(anonymous)](declarations/instance-source-edition-11.md) | 292 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `def` | [coeFnAddMonoidHom](declarations/coefnaddmonoidhom.md) | 296 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `instance` | [(anonymous)](declarations/instance-source-edition-4.md) | 302 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `instance` | [(anonymous)](declarations/instance-source-edition-14.md) | 306 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `def` | [flipHomAux](declarations/fliphomaux.md) | 316 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `theorem` | [flip_flip_aux](declarations/flip-flip-aux.md) | 333 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `def` | [flipHom](declarations/fliphom.md) | 344 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `theorem` | [flip_apply](declarations/flip-apply.md) | 354 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `theorem` | [flip_flip](declarations/flip-flip.md) | 358 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `abbrev` | [flip'](declarations/flip.md) | 366 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `abbrev` | [flip](declarations/flip-source-edition-2.md) | 372 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `def` | [toLinHomAux₁](declarations/tolinhomaux-source-edition-2.md) | 383 | `BLOCKED_NATIVE_ADMISSION` |
| 51 | `def` | [toLinHomAux₂](declarations/tolinhomaux.md) | 390 | `BLOCKED_NATIVE_ADMISSION` |
| 52 | `def` | [toLinHom](declarations/tolinhom.md) | 412 | `BLOCKED_NATIVE_ADMISSION` |
| 53 | `theorem` | [toLin'_apply](declarations/tolin-apply.md) | 434 | `BLOCKED_NATIVE_ADMISSION` |
| 54 | `abbrev` | [toLin'](declarations/tolin.md) | 441 | `BLOCKED_NATIVE_ADMISSION` |
| 55 | `theorem` | [sum_left](declarations/sum-left.md) | 446 | `BLOCKED_NATIVE_ADMISSION` |
| 56 | `theorem` | [sum_right](declarations/sum-right.md) | 452 | `BLOCKED_NATIVE_ADMISSION` |
| 57 | `def` | [toLinHomFlip](declarations/tolinhomflip.md) | 465 | `BLOCKED_NATIVE_ADMISSION` |
| 58 | `theorem` | [toLin'Flip_apply](declarations/tolin-flip-apply.md) | 472 | `BLOCKED_NATIVE_ADMISSION` |
| 59 | `abbrev` | [toLin'Flip](declarations/tolin-flip.md) | 479 | `BLOCKED_NATIVE_ADMISSION` |
| 60 | `def` | [LinearMap.toBilinAux](declarations/linearmap-tobilinaux.md) | 493 | `BLOCKED_NATIVE_ADMISSION` |
| 61 | `def` | [BilinForm.toLin](declarations/bilinform-tolin.md) | 504 | `BLOCKED_NATIVE_ADMISSION` |
| 62 | `def` | [LinearMap.toBilin](declarations/linearmap-tobilin.md) | 516 | `BLOCKED_NATIVE_ADMISSION` |
| 63 | `theorem` | [LinearMap.toBilinAux_eq](declarations/linearmap-tobilinaux-eq.md) | 521 | `BLOCKED_NATIVE_ADMISSION` |
| 64 | `theorem` | [LinearMap.toBilin_symm](declarations/linearmap-tobilin-symm.md) | 527 | `BLOCKED_NATIVE_ADMISSION` |
| 65 | `theorem` | [BilinForm.toLin_symm](declarations/bilinform-tolin-symm.md) | 533 | `BLOCKED_NATIVE_ADMISSION` |
| 66 | `theorem` | [BilinForm.toLin_apply](declarations/bilinform-tolin-apply.md) | 539 | `BLOCKED_NATIVE_ADMISSION` |
| 67 | `def` | [compBilinForm](declarations/compbilinform.md) | 551 | `BLOCKED_NATIVE_ADMISSION` |
| 68 | `def` | [comp](declarations/comp.md) | 574 | `BLOCKED_NATIVE_ADMISSION` |
| 69 | `def` | [compLeft](declarations/compleft.md) | 583 | `BLOCKED_NATIVE_ADMISSION` |
| 70 | `def` | [compRight](declarations/compright.md) | 588 | `BLOCKED_NATIVE_ADMISSION` |
| 71 | `theorem` | [comp_comp](declarations/comp-comp.md) | 592 | `BLOCKED_NATIVE_ADMISSION` |
| 72 | `theorem` | [compLeft_compRight](declarations/compleft-compright.md) | 599 | `BLOCKED_NATIVE_ADMISSION` |
| 73 | `theorem` | [compRight_compLeft](declarations/compright-compleft.md) | 605 | `BLOCKED_NATIVE_ADMISSION` |
| 74 | `theorem` | [comp_apply](declarations/comp-apply.md) | 611 | `BLOCKED_NATIVE_ADMISSION` |
| 75 | `theorem` | [compLeft_apply](declarations/compleft-apply.md) | 616 | `BLOCKED_NATIVE_ADMISSION` |
| 76 | `theorem` | [compRight_apply](declarations/compright-apply.md) | 621 | `BLOCKED_NATIVE_ADMISSION` |
| 77 | `theorem` | [comp_id_left](declarations/comp-id-left.md) | 626 | `BLOCKED_NATIVE_ADMISSION` |
| 78 | `theorem` | [comp_id_right](declarations/comp-id-right.md) | 633 | `BLOCKED_NATIVE_ADMISSION` |
| 79 | `theorem` | [compLeft_id](declarations/compleft-id.md) | 640 | `BLOCKED_NATIVE_ADMISSION` |
| 80 | `theorem` | [compRight_id](declarations/compright-id.md) | 646 | `BLOCKED_NATIVE_ADMISSION` |
| 81 | `theorem` | [comp_id_id](declarations/comp-id-id.md) | 654 | `BLOCKED_NATIVE_ADMISSION` |
| 82 | `theorem` | [comp_inj](declarations/comp-inj.md) | 659 | `BLOCKED_NATIVE_ADMISSION` |
| 83 | `def` | [congr](declarations/congr.md) | 682 | `BLOCKED_NATIVE_ADMISSION` |
| 84 | `theorem` | [congr_apply](declarations/congr-apply.md) | 692 | `BLOCKED_NATIVE_ADMISSION` |
| 85 | `theorem` | [congr_symm](declarations/congr-symm.md) | 698 | `BLOCKED_NATIVE_ADMISSION` |
| 86 | `theorem` | [congr_refl](declarations/congr-refl.md) | 705 | `BLOCKED_NATIVE_ADMISSION` |
| 87 | `theorem` | [congr_trans](declarations/congr-trans.md) | 709 | `BLOCKED_NATIVE_ADMISSION` |
| 88 | `theorem` | [congr_congr](declarations/congr-congr.md) | 714 | `BLOCKED_NATIVE_ADMISSION` |
| 89 | `theorem` | [congr_comp](declarations/congr-comp.md) | 719 | `BLOCKED_NATIVE_ADMISSION` |
| 90 | `theorem` | [comp_congr](declarations/comp-congr.md) | 726 | `BLOCKED_NATIVE_ADMISSION` |
| 91 | `def` | [linMulLin](declarations/linmullin.md) | 737 | `BLOCKED_NATIVE_ADMISSION` |
| 92 | `theorem` | [linMulLin_apply](declarations/linmullin-apply.md) | 748 | `BLOCKED_NATIVE_ADMISSION` |
| 93 | `theorem` | [linMulLin_comp](declarations/linmullin-comp.md) | 753 | `BLOCKED_NATIVE_ADMISSION` |
| 94 | `theorem` | [linMulLin_compLeft](declarations/linmullin-compleft.md) | 759 | `BLOCKED_NATIVE_ADMISSION` |
| 95 | `theorem` | [linMulLin_compRight](declarations/linmullin-compright.md) | 765 | `BLOCKED_NATIVE_ADMISSION` |
| 96 | `def` | [IsOrtho](declarations/isortho.md) | 774 | `BLOCKED_NATIVE_ADMISSION` |
| 97 | `theorem` | [isOrtho_def](declarations/isortho-def.md) | 778 | `BLOCKED_NATIVE_ADMISSION` |
| 98 | `theorem` | [isOrtho_zero_left](declarations/isortho-zero-left.md) | 782 | `BLOCKED_NATIVE_ADMISSION` |
| 99 | `theorem` | [isOrtho_zero_right](declarations/isortho-zero-right.md) | 786 | `BLOCKED_NATIVE_ADMISSION` |
| 100 | `theorem` | [ne_zero_of_not_isOrtho_self](declarations/ne-zero-of-not-isortho-self.md) | 790 | `BLOCKED_NATIVE_ADMISSION` |
| 101 | `def` | [iIsOrtho](declarations/iisortho.md) | 797 | `BLOCKED_NATIVE_ADMISSION` |
| 102 | `theorem` | [iIsOrtho_def](declarations/iisortho-def.md) | 802 | `BLOCKED_NATIVE_ADMISSION` |
| 103 | `theorem` | [isOrtho_smul_left](declarations/isortho-smul-left.md) | 815 | `BLOCKED_NATIVE_ADMISSION` |
| 104 | `theorem` | [isOrtho_smul_right](declarations/isortho-smul-right.md) | 822 | `BLOCKED_NATIVE_ADMISSION` |
| 105 | `theorem` | [linearIndependent_of_iIsOrtho](declarations/linearindependent-of-iisortho.md) | 830 | `BLOCKED_NATIVE_ADMISSION` |
| 106 | `theorem` | [ext_basis](declarations/ext-basis.md) | 854 | `BLOCKED_NATIVE_ADMISSION` |
| 107 | `theorem` | [sum_repr_mul_repr_mul](declarations/sum-repr-mul-repr-mul.md) | 859 | `BLOCKED_NATIVE_ADMISSION` |
| 108 | `def` | [IsRefl](declarations/isrefl-source-edition-2.md) | 872 | `BLOCKED_NATIVE_ADMISSION` |
| 109 | `theorem` | [eq_zero](declarations/eq-zero.md) | 880 | `BLOCKED_NATIVE_ADMISSION` |
| 110 | `theorem` | [ortho_comm](declarations/ortho-comm-source-edition-3.md) | 883 | `BLOCKED_NATIVE_ADMISSION` |
| 111 | `theorem` | [neg](declarations/neg-source-edition-2.md) | 887 | `BLOCKED_NATIVE_ADMISSION` |
| 112 | `theorem` | [smul](declarations/smul-source-edition-2.md) | 891 | `BLOCKED_NATIVE_ADMISSION` |
| 113 | `theorem` | [groupSMul](declarations/groupsmul.md) | 897 | `BLOCKED_NATIVE_ADMISSION` |
| 114 | `theorem` | [isRefl_zero](declarations/isrefl-zero.md) | 905 | `BLOCKED_NATIVE_ADMISSION` |
| 115 | `theorem` | [isRefl_neg](declarations/isrefl-neg.md) | 909 | `BLOCKED_NATIVE_ADMISSION` |
| 116 | `def` | [IsSymm](declarations/issymm.md) | 914 | `BLOCKED_NATIVE_ADMISSION` |
| 117 | `theorem` | [eq](declarations/eq.md) | 922 | `BLOCKED_NATIVE_ADMISSION` |
| 118 | `theorem` | [isRefl](declarations/isrefl-source-edition-3.md) | 926 | `BLOCKED_NATIVE_ADMISSION` |
| 119 | `theorem` | [ortho_comm](declarations/ortho-comm.md) | 929 | `BLOCKED_NATIVE_ADMISSION` |
| 120 | `theorem` | [add](declarations/add-source-edition-2.md) | 933 | `BLOCKED_NATIVE_ADMISSION` |
| 121 | `theorem` | [sub](declarations/sub-source-edition-2.md) | 937 | `BLOCKED_NATIVE_ADMISSION` |
| 122 | `theorem` | [neg](declarations/neg.md) | 941 | `BLOCKED_NATIVE_ADMISSION` |
| 123 | `theorem` | [smul](declarations/smul.md) | 945 | `BLOCKED_NATIVE_ADMISSION` |
| 124 | `theorem` | [isSymm_zero](declarations/issymm-zero.md) | 953 | `BLOCKED_NATIVE_ADMISSION` |
| 125 | `theorem` | [isSymm_neg](declarations/issymm-neg.md) | 957 | `BLOCKED_NATIVE_ADMISSION` |
| 126 | `theorem` | [isSymm_iff_flip](declarations/issymm-iff-flip.md) | 962 | `BLOCKED_NATIVE_ADMISSION` |
| 127 | `def` | [IsAlt](declarations/isalt.md) | 967 | `BLOCKED_NATIVE_ADMISSION` |
| 128 | `theorem` | [self_eq_zero](declarations/self-eq-zero.md) | 973 | `BLOCKED_NATIVE_ADMISSION` |
| 129 | `theorem` | [neg_eq](declarations/neg-eq.md) | 977 | `BLOCKED_NATIVE_ADMISSION` |
| 130 | `theorem` | [isRefl](declarations/isrefl.md) | 984 | `BLOCKED_NATIVE_ADMISSION` |
| 131 | `theorem` | [ortho_comm](declarations/ortho-comm-source-edition-2.md) | 989 | `BLOCKED_NATIVE_ADMISSION` |
| 132 | `theorem` | [add](declarations/add.md) | 993 | `BLOCKED_NATIVE_ADMISSION` |
| 133 | `theorem` | [sub](declarations/sub.md) | 997 | `BLOCKED_NATIVE_ADMISSION` |
| 134 | `theorem` | [neg](declarations/neg-source-edition-3.md) | 1001 | `BLOCKED_NATIVE_ADMISSION` |
| 135 | `theorem` | [smul](declarations/smul-source-edition-3.md) | 1005 | `BLOCKED_NATIVE_ADMISSION` |
| 136 | `theorem` | [isAlt_zero](declarations/isalt-zero.md) | 1013 | `BLOCKED_NATIVE_ADMISSION` |
| 137 | `theorem` | [isAlt_neg](declarations/isalt-neg.md) | 1017 | `BLOCKED_NATIVE_ADMISSION` |
| 138 | `def` | [IsAdjointPair](declarations/isadjointpair.md) | 1034 | `BLOCKED_NATIVE_ADMISSION` |
| 139 | `theorem` | [IsAdjointPair.eq](declarations/isadjointpair-eq.md) | 1040 | `BLOCKED_NATIVE_ADMISSION` |
| 140 | `theorem` | [isAdjointPair_iff_compLeft_eq_compRight](declarations/isadjointpair-iff-compleft-eq-compright.md) | 1044 | `BLOCKED_NATIVE_ADMISSION` |
| 141 | `theorem` | [isAdjointPair_zero](declarations/isadjointpair-zero.md) | 1055 | `BLOCKED_NATIVE_ADMISSION` |
| 142 | `theorem` | [isAdjointPair_id](declarations/isadjointpair-id.md) | 1059 | `BLOCKED_NATIVE_ADMISSION` |
| 143 | `theorem` | [IsAdjointPair.add](declarations/isadjointpair-add.md) | 1062 | `BLOCKED_NATIVE_ADMISSION` |
| 144 | `theorem` | [IsAdjointPair.sub](declarations/isadjointpair-sub.md) | 1071 | `BLOCKED_NATIVE_ADMISSION` |
| 145 | `theorem` | [IsAdjointPair.smul](declarations/isadjointpair-smul.md) | 1078 | `BLOCKED_NATIVE_ADMISSION` |
| 146 | `theorem` | [IsAdjointPair.comp](declarations/isadjointpair-comp.md) | 1087 | `BLOCKED_NATIVE_ADMISSION` |
| 147 | `theorem` | [IsAdjointPair.mul](declarations/isadjointpair-mul.md) | 1092 | `BLOCKED_NATIVE_ADMISSION` |
| 148 | `def` | [IsPairSelfAdjoint](declarations/ispairselfadjoint.md) | 1103 | `BLOCKED_NATIVE_ADMISSION` |
| 149 | `def` | [isPairSelfAdjointSubmodule](declarations/ispairselfadjointsubmodule.md) | 1108 | `BLOCKED_NATIVE_ADMISSION` |
| 150 | `theorem` | [mem_isPairSelfAdjointSubmodule](declarations/mem-ispairselfadjointsubmodule.md) | 1116 | `BLOCKED_NATIVE_ADMISSION` |
| 151 | `theorem` | [isPairSelfAdjoint_equiv](declarations/ispairselfadjoint-equiv.md) | 1120 | `BLOCKED_NATIVE_ADMISSION` |
| 152 | `def` | [IsSelfAdjoint](declarations/isselfadjoint.md) | 1137 | `BLOCKED_NATIVE_ADMISSION` |
| 153 | `def` | [IsSkewAdjoint](declarations/isskewadjoint.md) | 1143 | `BLOCKED_NATIVE_ADMISSION` |
| 154 | `theorem` | [isSkewAdjoint_iff_neg_self_adjoint](declarations/isskewadjoint-iff-neg-self-adjoint.md) | 1147 | `BLOCKED_NATIVE_ADMISSION` |
| 155 | `def` | [selfAdjointSubmodule](declarations/selfadjointsubmodule.md) | 1155 | `BLOCKED_NATIVE_ADMISSION` |
| 156 | `theorem` | [mem_selfAdjointSubmodule](declarations/mem-selfadjointsubmodule.md) | 1160 | `BLOCKED_NATIVE_ADMISSION` |
| 157 | `def` | [skewAdjointSubmodule](declarations/skewadjointsubmodule.md) | 1169 | `BLOCKED_NATIVE_ADMISSION` |
| 158 | `theorem` | [mem_skewAdjointSubmodule](declarations/mem-skewadjointsubmodule.md) | 1174 | `BLOCKED_NATIVE_ADMISSION` |
| 159 | `def` | [orthogonal](declarations/orthogonal.md) | 1195 | `BLOCKED_NATIVE_ADMISSION` |
| 160 | `theorem` | [mem_orthogonal_iff](declarations/mem-orthogonal-iff.md) | 1207 | `BLOCKED_NATIVE_ADMISSION` |
| 161 | `theorem` | [orthogonal_le](declarations/orthogonal-le.md) | 1212 | `BLOCKED_NATIVE_ADMISSION` |
| 162 | `theorem` | [le_orthogonal_orthogonal](declarations/le-orthogonal-orthogonal.md) | 1215 | `BLOCKED_NATIVE_ADMISSION` |
| 163 | `theorem` | [span_singleton_inf_orthogonal_eq_bot](declarations/span-singleton-inf-orthogonal-eq-bot.md) | 1220 | `BLOCKED_NATIVE_ADMISSION` |
| 164 | `theorem` | [orthogonal_span_singleton_eq_toLin_ker](declarations/orthogonal-span-singleton-eq-tolin-ker.md) | 1237 | `BLOCKED_NATIVE_ADMISSION` |
| 165 | `theorem` | [span_singleton_sup_orthogonal_eq_top](declarations/span-singleton-sup-orthogonal-eq-top.md) | 1248 | `BLOCKED_NATIVE_ADMISSION` |
| 166 | `theorem` | [isCompl_span_singleton_orthogonal](declarations/iscompl-span-singleton-orthogonal.md) | 1256 | `BLOCKED_NATIVE_ADMISSION` |
| 167 | `def` | [restrict](declarations/restrict.md) | 1266 | `BLOCKED_NATIVE_ADMISSION` |
| 168 | `theorem` | [restrictSymm](declarations/restrictsymm.md) | 1275 | `BLOCKED_NATIVE_ADMISSION` |
| 169 | `def` | [Nondegenerate](declarations/nondegenerate.md) | 1287 | `BLOCKED_NATIVE_ADMISSION` |
| 170 | `theorem` | [not_nondegenerate_zero](declarations/not-nondegenerate-zero.md) | 1296 | `BLOCKED_NATIVE_ADMISSION` |
| 171 | `theorem` | [Nondegenerate.ne_zero](declarations/nondegenerate-ne-zero.md) | 1307 | `BLOCKED_NATIVE_ADMISSION` |
| 172 | `theorem` | [Nondegenerate.congr](declarations/nondegenerate-congr.md) | 1311 | `BLOCKED_NATIVE_ADMISSION` |
| 173 | `theorem` | [nondegenerate_congr_iff](declarations/nondegenerate-congr-iff.md) | 1318 | `BLOCKED_NATIVE_ADMISSION` |
| 174 | `theorem` | [nondegenerate_iff_ker_eq_bot](declarations/nondegenerate-iff-ker-eq-bot.md) | 1326 | `BLOCKED_NATIVE_ADMISSION` |
| 175 | `theorem` | [Nondegenerate.ker_eq_bot](declarations/nondegenerate-ker-eq-bot.md) | 1339 | `BLOCKED_NATIVE_ADMISSION` |
| 176 | `theorem` | [nondegenerateRestrictOfDisjointOrthogonal](declarations/nondegeneraterestrictofdisjointorthogonal.md) | 1346 | `BLOCKED_NATIVE_ADMISSION` |
| 177 | `theorem` | [iIsOrtho.not_isOrtho_basis_self_of_nondegenerate](declarations/iisortho-not-isortho-basis-self-of-nondegenerate.md) | 1358 | `BLOCKED_NATIVE_ADMISSION` |
| 178 | `theorem` | [iIsOrtho.nondegenerate_iff_not_isOrtho_basis_self](declarations/iisortho-nondegenerate-iff-not-isortho-basis-self.md) | 1377 | `BLOCKED_NATIVE_ADMISSION` |
| 179 | `theorem` | [toLin_restrict_ker_eq_inf_orthogonal](declarations/tolin-restrict-ker-eq-inf-orthogonal.md) | 1400 | `BLOCKED_NATIVE_ADMISSION` |
| 180 | `theorem` | [toLin_restrict_range_dualCoannihilator_eq_orthogonal](declarations/tolin-restrict-range-dualcoannihilator-eq-orthogonal.md) | 1420 | `BLOCKED_NATIVE_ADMISSION` |
| 181 | `theorem` | [finrank_add_finrank_orthogonal](declarations/finrank-add-finrank-orthogonal.md) | 1435 | `BLOCKED_NATIVE_ADMISSION` |
| 182 | `theorem` | [restrict_nondegenerate_of_isCompl_orthogonal](declarations/restrict-nondegenerate-of-iscompl-orthogonal.md) | 1449 | `BLOCKED_NATIVE_ADMISSION` |
| 183 | `theorem` | [restrict_nondegenerate_iff_isCompl_orthogonal](declarations/restrict-nondegenerate-iff-iscompl-orthogonal.md) | 1468 | `BLOCKED_NATIVE_ADMISSION` |
| 184 | `def` | [toDual](declarations/todual.md) | 1477 | `BLOCKED_NATIVE_ADMISSION` |
| 185 | `theorem` | [toDual_def](declarations/todual-def.md) | 1482 | `BLOCKED_NATIVE_ADMISSION` |
| 186 | `def` | [dualBasis](declarations/dualbasis.md) | 1493 | `BLOCKED_NATIVE_ADMISSION` |
| 187 | `theorem` | [dualBasis_repr_apply](declarations/dualbasis-repr-apply.md) | 1499 | `BLOCKED_NATIVE_ADMISSION` |
| 188 | `theorem` | [apply_dualBasis_left](declarations/apply-dualbasis-left.md) | 1505 | `BLOCKED_NATIVE_ADMISSION` |
| 189 | `theorem` | [apply_dualBasis_right](declarations/apply-dualbasis-right.md) | 1511 | `BLOCKED_NATIVE_ADMISSION` |
| 190 | `theorem` | [restrictOrthogonalSpanSingletonNondegenerate](declarations/restrictorthogonalspansingletonnondegenerate.md) | 1528 | `BLOCKED_NATIVE_ADMISSION` |
| 191 | `theorem` | [compLeft_injective](declarations/compleft-injective.md) | 1542 | `BLOCKED_NATIVE_ADMISSION` |
| 192 | `theorem` | [isAdjointPair_unique_of_nondegenerate](declarations/isadjointpair-unique-of-nondegenerate.md) | 1550 | `BLOCKED_NATIVE_ADMISSION` |
| 193 | `def` | [symmCompOfNondegenerate](declarations/symmcompofnondegenerate.md) | 1560 | `BLOCKED_NATIVE_ADMISSION` |
| 194 | `theorem` | [comp_symmCompOfNondegenerate_apply](declarations/comp-symmcompofnondegenerate-apply.md) | 1565 | `BLOCKED_NATIVE_ADMISSION` |
| 195 | `theorem` | [symmCompOfNondegenerate_left_apply](declarations/symmcompofnondegenerate-left-apply.md) | 1572 | `BLOCKED_NATIVE_ADMISSION` |
| 196 | `def` | [leftAdjointOfNondegenerate](declarations/leftadjointofnondegenerate.md) | 1580 | `BLOCKED_NATIVE_ADMISSION` |
| 197 | `theorem` | [isAdjointPairLeftAdjointOfNondegenerate](declarations/isadjointpairleftadjointofnondegenerate.md) | 1585 | `BLOCKED_NATIVE_ADMISSION` |
| 198 | `theorem` | [isAdjointPair_iff_eq_of_nondegenerate](declarations/isadjointpair-iff-eq-of-nondegenerate.md) | 1592 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=3f72749c6cd1bba1ad42b867f00b14d8ec0104eb3e3ea45227141bc7829a9ee8 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/BilinearForm/Variant4a16e09289ff66e4a912272ff07f0ab4ffaeb261a27cc93a3cbfe135eeee874a.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
