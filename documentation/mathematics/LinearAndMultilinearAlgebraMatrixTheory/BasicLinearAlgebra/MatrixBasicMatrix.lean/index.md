# Matrix Basic Matrix

[Complete source index](../../../complete-source-index.md) · [Up one directory](../../../complete-source-index.md) · [Full source](source.md)

**435 observed declarations and anonymous commands**, 340 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Algebra/LinearAlgebra/Basic/Variant890bfbd672d6a7df66a72437cff95965ed94871e51442d6e4e5b505f4823c91c.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `db995af1c4bb097da8df329100c0a95c88bd9b94`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixBasicMatrix.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


Declaration pages: [1](index.md) · [2](declarations-2.md)

| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [Matrix](declarations/matrix.md) | 57 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `theorem` | [ext_iff](declarations/ext-iff.md) | 71 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `theorem` | [ext](declarations/ext.md) | 77 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `theorem` | [ext'](declarations/ext-source-edition-2.md) | 95 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `def` | [of](declarations/of.md) | 114 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [of_apply](declarations/of-apply.md) | 119 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [of_symm_apply](declarations/of-symm-apply.md) | 124 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `def` | [map](declarations/map.md) | 141 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [map_apply](declarations/map-apply.md) | 146 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [map_id](declarations/map-id.md) | 151 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [map_map](declarations/map-map.md) | 157 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [map_injective](declarations/map-injective.md) | 163 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `def` | [transpose](declarations/transpose.md) | 169 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [transpose_apply](declarations/transpose-apply.md) | 175 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `def` | [conjTranspose](declarations/conjtranspose.md) | 183 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `def` | [col](declarations/col.md) | 191 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [col_apply](declarations/col-apply.md) | 197 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `def` | [row](declarations/row.md) | 202 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [row_apply](declarations/row-apply.md) | 208 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `instance` | [inhabited](declarations/inhabited.md) | 212 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `instance` | [decidableEq](declarations/decidableeq.md) | 218 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `instance` | [add](declarations/add.md) | 221 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `instance` | [addSemigroup](declarations/addsemigroup.md) | 224 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `instance` | [addCommSemigroup](declarations/addcommsemigroup.md) | 227 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `instance` | [zero](declarations/zero.md) | 230 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `instance` | [addZeroClass](declarations/addzeroclass.md) | 233 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `instance` | [addMonoid](declarations/addmonoid.md) | 236 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `instance` | [addCommMonoid](declarations/addcommmonoid.md) | 239 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `instance` | [neg](declarations/neg.md) | 242 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `instance` | [sub](declarations/sub.md) | 245 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `instance` | [addGroup](declarations/addgroup.md) | 248 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `instance` | [addCommGroup](declarations/addcommgroup.md) | 251 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `instance` | [unique](declarations/unique.md) | 254 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `instance` | [subsingleton](declarations/subsingleton.md) | 257 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `instance` | [nonempty](declarations/nonempty.md) | 261 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `instance` | [smul](declarations/smul.md) | 264 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `instance` | [smulCommClass](declarations/smulcommclass.md) | 267 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `instance` | [isScalarTower](declarations/isscalartower.md) | 271 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `instance` | [isCentralScalar](declarations/iscentralscalar.md) | 275 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `instance` | [mulAction](declarations/mulaction.md) | 279 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `instance` | [distribMulAction](declarations/distribmulaction.md) | 282 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `instance` | [module](declarations/module.md) | 286 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `theorem` | [zero_apply](declarations/zero-apply.md) | 295 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `theorem` | [add_apply](declarations/add-apply.md) | 298 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `theorem` | [smul_apply](declarations/smul-apply.md) | 302 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `theorem` | [sub_apply](declarations/sub-apply.md) | 306 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `theorem` | [neg_apply](declarations/neg-apply.md) | 310 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `theorem` | [of_zero](declarations/of-zero.md) | 318 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `theorem` | [of_add_of](declarations/of-add-of.md) | 323 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `theorem` | [of_sub_of](declarations/of-sub-of.md) | 328 | `BLOCKED_NATIVE_ADMISSION` |
| 51 | `theorem` | [neg_of](declarations/neg-of.md) | 333 | `BLOCKED_NATIVE_ADMISSION` |
| 52 | `theorem` | [smul_of](declarations/smul-of.md) | 338 | `BLOCKED_NATIVE_ADMISSION` |
| 53 | `theorem` | [map_zero](declarations/map-zero.md) | 343 | `BLOCKED_NATIVE_ADMISSION` |
| 54 | `theorem` | [map_add](declarations/map-add.md) | 349 | `BLOCKED_NATIVE_ADMISSION` |
| 55 | `theorem` | [map_sub](declarations/map-sub.md) | 354 | `BLOCKED_NATIVE_ADMISSION` |
| 56 | `theorem` | [map_smul](declarations/map-smul.md) | 359 | `BLOCKED_NATIVE_ADMISSION` |
| 57 | `theorem` | [map_smul'](declarations/map-smul-source-edition-2.md) | 366 | `BLOCKED_NATIVE_ADMISSION` |
| 58 | `theorem` | [map_op_smul'](declarations/map-op-smul.md) | 373 | `BLOCKED_NATIVE_ADMISSION` |
| 59 | `theorem` | [_root_.IsSMulRegular.matrix](declarations/root-issmulregular-matrix.md) | 379 | `BLOCKED_NATIVE_ADMISSION` |
| 60 | `theorem` | [_root_.IsLeftRegular.matrix](declarations/root-isleftregular-matrix.md) | 384 | `BLOCKED_NATIVE_ADMISSION` |
| 61 | `instance` | [subsingleton_of_empty_left](declarations/subsingleton-of-empty-left.md) | 389 | `BLOCKED_NATIVE_ADMISSION` |
| 62 | `instance` | [subsingleton_of_empty_right](declarations/subsingleton-of-empty-right.md) | 395 | `BLOCKED_NATIVE_ADMISSION` |
| 63 | `def` | [diagonal](declarations/diagonal.md) | 420 | `BLOCKED_NATIVE_ADMISSION` |
| 64 | `theorem` | [diagonal_apply](declarations/diagonal-apply.md) | 425 | `BLOCKED_NATIVE_ADMISSION` |
| 65 | `theorem` | [diagonal_apply_eq](declarations/diagonal-apply-eq.md) | 430 | `BLOCKED_NATIVE_ADMISSION` |
| 66 | `theorem` | [diagonal_apply_ne](declarations/diagonal-apply-ne-source-edition-2.md) | 435 | `BLOCKED_NATIVE_ADMISSION` |
| 67 | `theorem` | [diagonal_apply_ne'](declarations/diagonal-apply-ne.md) | 439 | `BLOCKED_NATIVE_ADMISSION` |
| 68 | `theorem` | [diagonal_eq_diagonal_iff](declarations/diagonal-eq-diagonal-iff.md) | 444 | `BLOCKED_NATIVE_ADMISSION` |
| 69 | `theorem` | [diagonal_injective](declarations/diagonal-injective.md) | 450 | `BLOCKED_NATIVE_ADMISSION` |
| 70 | `theorem` | [diagonal_zero](declarations/diagonal-zero.md) | 455 | `BLOCKED_NATIVE_ADMISSION` |
| 71 | `theorem` | [diagonal_transpose](declarations/diagonal-transpose.md) | 461 | `BLOCKED_NATIVE_ADMISSION` |
| 72 | `theorem` | [diagonal_add](declarations/diagonal-add.md) | 469 | `BLOCKED_NATIVE_ADMISSION` |
| 73 | `theorem` | [diagonal_smul](declarations/diagonal-smul.md) | 477 | `BLOCKED_NATIVE_ADMISSION` |
| 74 | `def` | [diagonalAddMonoidHom](declarations/diagonaladdmonoidhom.md) | 488 | `BLOCKED_NATIVE_ADMISSION` |
| 75 | `def` | [diagonalLinearMap](declarations/diagonallinearmap.md) | 498 | `BLOCKED_NATIVE_ADMISSION` |
| 76 | `theorem` | [diagonal_map](declarations/diagonal-map.md) | 505 | `BLOCKED_NATIVE_ADMISSION` |
| 77 | `theorem` | [diagonal_conjTranspose](declarations/diagonal-conjtranspose.md) | 513 | `BLOCKED_NATIVE_ADMISSION` |
| 78 | `instance` | [one](declarations/one.md) | 523 | `BLOCKED_NATIVE_ADMISSION` |
| 79 | `theorem` | [diagonal_one](declarations/diagonal-one.md) | 527 | `BLOCKED_NATIVE_ADMISSION` |
| 80 | `theorem` | [one_apply](declarations/one-apply.md) | 531 | `BLOCKED_NATIVE_ADMISSION` |
| 81 | `theorem` | [one_apply_eq](declarations/one-apply-eq.md) | 536 | `BLOCKED_NATIVE_ADMISSION` |
| 82 | `theorem` | [one_apply_ne](declarations/one-apply-ne.md) | 541 | `BLOCKED_NATIVE_ADMISSION` |
| 83 | `theorem` | [one_apply_ne'](declarations/one-apply-ne-source-edition-2.md) | 545 | `BLOCKED_NATIVE_ADMISSION` |
| 84 | `theorem` | [map_one](declarations/map-one.md) | 550 | `BLOCKED_NATIVE_ADMISSION` |
| 85 | `theorem` | [one_eq_pi_single](declarations/one-eq-pi-single.md) | 558 | `BLOCKED_NATIVE_ADMISSION` |
| 86 | `theorem` | [bit0_apply](declarations/bit0-apply.md) | 569 | `BLOCKED_NATIVE_ADMISSION` |
| 87 | `theorem` | [bit1_apply](declarations/bit1-apply.md) | 576 | `BLOCKED_NATIVE_ADMISSION` |
| 88 | `theorem` | [bit1_apply_eq](declarations/bit1-apply-eq.md) | 584 | `BLOCKED_NATIVE_ADMISSION` |
| 89 | `theorem` | [bit1_apply_ne](declarations/bit1-apply-ne.md) | 589 | `BLOCKED_NATIVE_ADMISSION` |
| 90 | `def` | [diag](declarations/diag.md) | 601 | `BLOCKED_NATIVE_ADMISSION` |
| 91 | `theorem` | [diag_apply](declarations/diag-apply.md) | 608 | `BLOCKED_NATIVE_ADMISSION` |
| 92 | `theorem` | [diag_diagonal](declarations/diag-diagonal.md) | 612 | `BLOCKED_NATIVE_ADMISSION` |
| 93 | `theorem` | [diag_transpose](declarations/diag-transpose.md) | 617 | `BLOCKED_NATIVE_ADMISSION` |
| 94 | `theorem` | [diag_zero](declarations/diag-zero.md) | 622 | `BLOCKED_NATIVE_ADMISSION` |
| 95 | `theorem` | [diag_add](declarations/diag-add.md) | 627 | `BLOCKED_NATIVE_ADMISSION` |
| 96 | `theorem` | [diag_sub](declarations/diag-sub.md) | 632 | `BLOCKED_NATIVE_ADMISSION` |
| 97 | `theorem` | [diag_neg](declarations/diag-neg.md) | 637 | `BLOCKED_NATIVE_ADMISSION` |
| 98 | `theorem` | [diag_smul](declarations/diag-smul.md) | 642 | `BLOCKED_NATIVE_ADMISSION` |
| 99 | `theorem` | [diag_one](declarations/diag-one.md) | 647 | `BLOCKED_NATIVE_ADMISSION` |
| 100 | `def` | [diagAddMonoidHom](declarations/diagaddmonoidhom.md) | 655 | `BLOCKED_NATIVE_ADMISSION` |
| 101 | `def` | [diagLinearMap](declarations/diaglinearmap.md) | 665 | `BLOCKED_NATIVE_ADMISSION` |
| 102 | `theorem` | [diag_map](declarations/diag-map.md) | 671 | `BLOCKED_NATIVE_ADMISSION` |
| 103 | `theorem` | [diag_conjTranspose](declarations/diag-conjtranspose.md) | 676 | `BLOCKED_NATIVE_ADMISSION` |
| 104 | `theorem` | [diag_list_sum](declarations/diag-list-sum.md) | 682 | `BLOCKED_NATIVE_ADMISSION` |
| 105 | `theorem` | [diag_multiset_sum](declarations/diag-multiset-sum.md) | 687 | `BLOCKED_NATIVE_ADMISSION` |
| 106 | `theorem` | [diag_sum](declarations/diag-sum.md) | 693 | `BLOCKED_NATIVE_ADMISSION` |
| 107 | `def` | [dotProduct](declarations/dotproduct.md) | 705 | `BLOCKED_NATIVE_ADMISSION` |
| 108 | `theorem` | [dotProduct_assoc](declarations/dotproduct-assoc.md) | 714 | `BLOCKED_NATIVE_ADMISSION` |
| 109 | `theorem` | [dotProduct_comm](declarations/dotproduct-comm.md) | 719 | `BLOCKED_NATIVE_ADMISSION` |
| 110 | `theorem` | [dotProduct_pUnit](declarations/dotproduct-punit.md) | 724 | `BLOCKED_NATIVE_ADMISSION` |
| 111 | `theorem` | [dotProduct_one](declarations/dotproduct-one.md) | 732 | `BLOCKED_NATIVE_ADMISSION` |
| 112 | `theorem` | [one_dotProduct](declarations/one-dotproduct.md) | 735 | `BLOCKED_NATIVE_ADMISSION` |
| 113 | `theorem` | [dotProduct_zero](declarations/dotproduct-zero.md) | 745 | `BLOCKED_NATIVE_ADMISSION` |
| 114 | `theorem` | [dotProduct_zero'](declarations/dotproduct-zero-source-edition-2.md) | 749 | `BLOCKED_NATIVE_ADMISSION` |
| 115 | `theorem` | [zero_dotProduct](declarations/zero-dotproduct-source-edition-2.md) | 754 | `BLOCKED_NATIVE_ADMISSION` |
| 116 | `theorem` | [zero_dotProduct'](declarations/zero-dotproduct.md) | 758 | `BLOCKED_NATIVE_ADMISSION` |
| 117 | `theorem` | [add_dotProduct](declarations/add-dotproduct.md) | 763 | `BLOCKED_NATIVE_ADMISSION` |
| 118 | `theorem` | [dotProduct_add](declarations/dotproduct-add.md) | 768 | `BLOCKED_NATIVE_ADMISSION` |
| 119 | `theorem` | [sum_elim_dotProduct_sum_elim](declarations/sum-elim-dotproduct-sum-elim.md) | 773 | `BLOCKED_NATIVE_ADMISSION` |
| 120 | `theorem` | [comp_equiv_symm_dotProduct](declarations/comp-equiv-symm-dotproduct.md) | 779 | `BLOCKED_NATIVE_ADMISSION` |
| 121 | `theorem` | [dotProduct_comp_equiv_symm](declarations/dotproduct-comp-equiv-symm.md) | 786 | `BLOCKED_NATIVE_ADMISSION` |
| 122 | `theorem` | [comp_equiv_dotProduct_comp_equiv](declarations/comp-equiv-dotproduct-comp-equiv.md) | 792 | `BLOCKED_NATIVE_ADMISSION` |
| 123 | `theorem` | [diagonal_dotProduct](declarations/diagonal-dotproduct.md) | 804 | `BLOCKED_NATIVE_ADMISSION` |
| 124 | `theorem` | [dotProduct_diagonal](declarations/dotproduct-diagonal-source-edition-2.md) | 811 | `BLOCKED_NATIVE_ADMISSION` |
| 125 | `theorem` | [dotProduct_diagonal'](declarations/dotproduct-diagonal.md) | 818 | `BLOCKED_NATIVE_ADMISSION` |
| 126 | `theorem` | [single_dotProduct](declarations/single-dotproduct.md) | 825 | `BLOCKED_NATIVE_ADMISSION` |
| 127 | `theorem` | [dotProduct_single](declarations/dotproduct-single.md) | 833 | `BLOCKED_NATIVE_ADMISSION` |
| 128 | `theorem` | [one_dotProduct_one](declarations/one-dotproduct-one.md) | 847 | `BLOCKED_NATIVE_ADMISSION` |
| 129 | `theorem` | [neg_dotProduct](declarations/neg-dotproduct.md) | 858 | `BLOCKED_NATIVE_ADMISSION` |
| 130 | `theorem` | [dotProduct_neg](declarations/dotproduct-neg.md) | 862 | `BLOCKED_NATIVE_ADMISSION` |
| 131 | `theorem` | [sub_dotProduct](declarations/sub-dotproduct.md) | 866 | `BLOCKED_NATIVE_ADMISSION` |
| 132 | `theorem` | [dotProduct_sub](declarations/dotproduct-sub.md) | 870 | `BLOCKED_NATIVE_ADMISSION` |
| 133 | `theorem` | [smul_dotProduct](declarations/smul-dotproduct.md) | 880 | `BLOCKED_NATIVE_ADMISSION` |
| 134 | `theorem` | [dotProduct_smul](declarations/dotproduct-smul.md) | 885 | `BLOCKED_NATIVE_ADMISSION` |
| 135 | `theorem` | [star_dotProduct_star](declarations/star-dotproduct-star.md) | 895 | `BLOCKED_NATIVE_ADMISSION` |
| 136 | `theorem` | [star_dotProduct](declarations/star-dotproduct.md) | 898 | `BLOCKED_NATIVE_ADMISSION` |
| 137 | `theorem` | [dotProduct_star](declarations/dotproduct-star.md) | 901 | `BLOCKED_NATIVE_ADMISSION` |
| 138 | `instance` | [(anonymous)](declarations/instance-source-edition-7.md) | 916 | `BLOCKED_NATIVE_ADMISSION` |
| 139 | `theorem` | [mul_apply](declarations/mul-apply-source-edition-2.md) | 921 | `BLOCKED_NATIVE_ADMISSION` |
| 140 | `instance` | [(anonymous)](declarations/instance-source-edition-2.md) | 926 | `BLOCKED_NATIVE_ADMISSION` |
| 141 | `theorem` | [mul_apply'](declarations/mul-apply.md) | 930 | `BLOCKED_NATIVE_ADMISSION` |
| 142 | `theorem` | [diagonal_neg](declarations/diagonal-neg.md) | 936 | `BLOCKED_NATIVE_ADMISSION` |
| 143 | `theorem` | [sum_apply](declarations/sum-apply.md) | 941 | `BLOCKED_NATIVE_ADMISSION` |
| 144 | `theorem` | [two_mul_expl](declarations/two-mul-expl.md) | 946 | `BLOCKED_NATIVE_ADMISSION` |
| 145 | `theorem` | [smul_mul](declarations/smul-mul.md) | 961 | `BLOCKED_NATIVE_ADMISSION` |
| 146 | `theorem` | [mul_smul](declarations/mul-smul.md) | 968 | `BLOCKED_NATIVE_ADMISSION` |
| 147 | `theorem` | [mul_zero](declarations/mul-zero.md) | 981 | `BLOCKED_NATIVE_ADMISSION` |
| 148 | `theorem` | [zero_mul](declarations/zero-mul.md) | 987 | `BLOCKED_NATIVE_ADMISSION` |
| 149 | `theorem` | [mul_add](declarations/mul-add.md) | 992 | `BLOCKED_NATIVE_ADMISSION` |
| 150 | `theorem` | [add_mul](declarations/add-mul.md) | 998 | `BLOCKED_NATIVE_ADMISSION` |
| 151 | `instance` | [nonUnitalNonAssocSemiring](declarations/nonunitalnonassocsemiring.md) | 1004 | `BLOCKED_NATIVE_ADMISSION` |
| 152 | `theorem` | [diagonal_mul](declarations/diagonal-mul.md) | 1015 | `BLOCKED_NATIVE_ADMISSION` |
| 153 | `theorem` | [mul_diagonal](declarations/mul-diagonal.md) | 1021 | `BLOCKED_NATIVE_ADMISSION` |
| 154 | `theorem` | [diagonal_mul_diagonal](declarations/diagonal-mul-diagonal.md) | 1028 | `BLOCKED_NATIVE_ADMISSION` |
| 155 | `theorem` | [diagonal_mul_diagonal'](declarations/diagonal-mul-diagonal-source-edition-2.md) | 1035 | `BLOCKED_NATIVE_ADMISSION` |
| 156 | `theorem` | [smul_eq_diagonal_mul](declarations/smul-eq-diagonal-mul.md) | 1040 | `BLOCKED_NATIVE_ADMISSION` |
| 157 | `theorem` | [diag_col_mul_row](declarations/diag-col-mul-row.md) | 1047 | `BLOCKED_NATIVE_ADMISSION` |
| 158 | `def` | [addMonoidHomMulLeft](declarations/addmonoidhommulleft.md) | 1054 | `BLOCKED_NATIVE_ADMISSION` |
| 159 | `def` | [addMonoidHomMulRight](declarations/addmonoidhommulright.md) | 1062 | `BLOCKED_NATIVE_ADMISSION` |
| 160 | `theorem` | [sum_mul](declarations/sum-mul.md) | 1068 | `BLOCKED_NATIVE_ADMISSION` |
| 161 | `theorem` | [mul_sum](declarations/mul-sum.md) | 1073 | `BLOCKED_NATIVE_ADMISSION` |
| 162 | `instance` | [Semiring.isScalarTower](declarations/semiring-isscalartower.md) | 1079 | `BLOCKED_NATIVE_ADMISSION` |
| 163 | `instance` | [Semiring.smulCommClass](declarations/semiring-smulcommclass.md) | 1085 | `BLOCKED_NATIVE_ADMISSION` |
| 164 | `theorem` | [one_mul](declarations/one-mul.md) | 1097 | `BLOCKED_NATIVE_ADMISSION` |
| 165 | `theorem` | [mul_one](declarations/mul-one.md) | 1104 | `BLOCKED_NATIVE_ADMISSION` |
| 166 | `instance` | [nonAssocSemiring](declarations/nonassocsemiring.md) | 1110 | `BLOCKED_NATIVE_ADMISSION` |
| 167 | `theorem` | [map_mul](declarations/map-mul.md) | 1125 | `BLOCKED_NATIVE_ADMISSION` |
| 168 | `def` | [diagonalRingHom](declarations/diagonalringhom.md) | 1135 | `BLOCKED_NATIVE_ADMISSION` |
| 169 | `theorem` | [mul_assoc](declarations/mul-assoc.md) | 1148 | `BLOCKED_NATIVE_ADMISSION` |
| 170 | `instance` | [nonUnitalSemiring](declarations/nonunitalsemiring.md) | 1154 | `BLOCKED_NATIVE_ADMISSION` |
| 171 | `instance` | [semiring](declarations/semiring.md) | 1163 | `BLOCKED_NATIVE_ADMISSION` |
| 172 | `theorem` | [neg_mul](declarations/neg-mul.md) | 1173 | `BLOCKED_NATIVE_ADMISSION` |
| 173 | `theorem` | [mul_neg](declarations/mul-neg.md) | 1179 | `BLOCKED_NATIVE_ADMISSION` |
| 174 | `theorem` | [sub_mul](declarations/sub-mul.md) | 1184 | `BLOCKED_NATIVE_ADMISSION` |
| 175 | `theorem` | [mul_sub](declarations/mul-sub.md) | 1189 | `BLOCKED_NATIVE_ADMISSION` |
| 176 | `instance` | [nonUnitalNonAssocRing](declarations/nonunitalnonassocring.md) | 1194 | `BLOCKED_NATIVE_ADMISSION` |
| 177 | `instance` | [instNonUnitalRing](declarations/instnonunitalring.md) | 1199 | `BLOCKED_NATIVE_ADMISSION` |
| 178 | `instance` | [instNonAssocRing](declarations/instnonassocring.md) | 1203 | `BLOCKED_NATIVE_ADMISSION` |
| 179 | `instance` | [instRing](declarations/instring.md) | 1208 | `BLOCKED_NATIVE_ADMISSION` |
| 180 | `theorem` | [diagonal_pow](declarations/diagonal-pow.md) | 1216 | `BLOCKED_NATIVE_ADMISSION` |
| 181 | `theorem` | [mul_mul_left](declarations/mul-mul-left.md) | 1222 | `BLOCKED_NATIVE_ADMISSION` |
| 182 | `def` | [scalar](declarations/scalar.md) | 1230 | `BLOCKED_NATIVE_ADMISSION` |
| 183 | `theorem` | [coe_scalar](declarations/coe-scalar.md) | 1245 | `BLOCKED_NATIVE_ADMISSION` |
| 184 | `theorem` | [scalar_apply_eq](declarations/scalar-apply-eq.md) | 1249 | `BLOCKED_NATIVE_ADMISSION` |
| 185 | `theorem` | [scalar_apply_ne](declarations/scalar-apply-ne.md) | 1254 | `BLOCKED_NATIVE_ADMISSION` |
| 186 | `theorem` | [scalar_inj](declarations/scalar-inj.md) | 1259 | `BLOCKED_NATIVE_ADMISSION` |
| 187 | `theorem` | [smul_eq_mul_diagonal](declarations/smul-eq-mul-diagonal.md) | 1277 | `BLOCKED_NATIVE_ADMISSION` |
| 188 | `theorem` | [mul_mul_right](declarations/mul-mul-right.md) | 1284 | `BLOCKED_NATIVE_ADMISSION` |
| 189 | `theorem` | [scalar.commute](declarations/scalar-commute.md) | 1289 | `BLOCKED_NATIVE_ADMISSION` |
| 190 | `instance` | [instAlgebra](declarations/instalgebra.md) | 1301 | `BLOCKED_NATIVE_ADMISSION` |
| 191 | `theorem` | [algebraMap_matrix_apply](declarations/algebramap-matrix-apply.md) | 1309 | `BLOCKED_NATIVE_ADMISSION` |
| 192 | `theorem` | [algebraMap_eq_diagonal](declarations/algebramap-eq-diagonal.md) | 1315 | `BLOCKED_NATIVE_ADMISSION` |
| 193 | `theorem` | [algebraMap_eq_smul](declarations/algebramap-eq-smul.md) | 1321 | `BLOCKED_NATIVE_ADMISSION` |
| 194 | `theorem` | [algebraMap_eq_diagonalRingHom](declarations/algebramap-eq-diagonalringhom.md) | 1325 | `BLOCKED_NATIVE_ADMISSION` |
| 195 | `theorem` | [map_algebraMap](declarations/map-algebramap.md) | 1331 | `BLOCKED_NATIVE_ADMISSION` |
| 196 | `def` | [diagonalAlgHom](declarations/diagonalalghom.md) | 1350 | `BLOCKED_NATIVE_ADMISSION` |
| 197 | `def` | [mapMatrix](declarations/mapmatrix-source-edition-6.md) | 1370 | `BLOCKED_NATIVE_ADMISSION` |
| 198 | `theorem` | [mapMatrix_refl](declarations/mapmatrix-refl-source-edition-3.md) | 1378 | `BLOCKED_NATIVE_ADMISSION` |
| 199 | `theorem` | [mapMatrix_symm](declarations/mapmatrix-symm-source-edition-3.md) | 1383 | `BLOCKED_NATIVE_ADMISSION` |
| 200 | `theorem` | [mapMatrix_trans](declarations/mapmatrix-trans-source-edition-3.md) | 1388 | `BLOCKED_NATIVE_ADMISSION` |
| 201 | `def` | [mapMatrix](declarations/mapmatrix-source-edition-4.md) | 1402 | `BLOCKED_NATIVE_ADMISSION` |
| 202 | `theorem` | [mapMatrix_id](declarations/mapmatrix-id-source-edition-3.md) | 1409 | `BLOCKED_NATIVE_ADMISSION` |
| 203 | `theorem` | [mapMatrix_comp](declarations/mapmatrix-comp.md) | 1414 | `BLOCKED_NATIVE_ADMISSION` |
| 204 | `def` | [mapMatrix](declarations/mapmatrix.md) | 1428 | `BLOCKED_NATIVE_ADMISSION` |
| 205 | `theorem` | [mapMatrix_refl](declarations/mapmatrix-refl.md) | 1436 | `BLOCKED_NATIVE_ADMISSION` |
| 206 | `theorem` | [mapMatrix_symm](declarations/mapmatrix-symm-source-edition-4.md) | 1441 | `BLOCKED_NATIVE_ADMISSION` |
| 207 | `theorem` | [mapMatrix_trans](declarations/mapmatrix-trans-source-edition-2.md) | 1446 | `BLOCKED_NATIVE_ADMISSION` |
| 208 | `def` | [mapMatrix](declarations/mapmatrix-source-edition-5.md) | 1462 | `BLOCKED_NATIVE_ADMISSION` |
| 209 | `theorem` | [mapMatrix_id](declarations/mapmatrix-id-source-edition-2.md) | 1469 | `BLOCKED_NATIVE_ADMISSION` |
| 210 | `theorem` | [mapMatrix_comp](declarations/mapmatrix-comp-source-edition-2.md) | 1474 | `BLOCKED_NATIVE_ADMISSION` |
| 211 | `def` | [mapMatrix](declarations/mapmatrix-source-edition-9.md) | 1490 | `BLOCKED_NATIVE_ADMISSION` |
| 212 | `theorem` | [mapMatrix_refl](declarations/mapmatrix-refl-source-edition-4.md) | 1498 | `BLOCKED_NATIVE_ADMISSION` |
| 213 | `theorem` | [mapMatrix_symm](declarations/mapmatrix-symm-source-edition-2.md) | 1503 | `BLOCKED_NATIVE_ADMISSION` |
| 214 | `theorem` | [mapMatrix_trans](declarations/mapmatrix-trans.md) | 1509 | `BLOCKED_NATIVE_ADMISSION` |
| 215 | `def` | [mapMatrix](declarations/mapmatrix-source-edition-2.md) | 1525 | `BLOCKED_NATIVE_ADMISSION` |
| 216 | `theorem` | [mapMatrix_id](declarations/mapmatrix-id.md) | 1533 | `BLOCKED_NATIVE_ADMISSION` |
| 217 | `theorem` | [mapMatrix_comp](declarations/mapmatrix-comp-source-edition-4.md) | 1538 | `BLOCKED_NATIVE_ADMISSION` |
| 218 | `def` | [mapMatrix](declarations/mapmatrix-source-edition-7.md) | 1554 | `BLOCKED_NATIVE_ADMISSION` |
| 219 | `theorem` | [mapMatrix_refl](declarations/mapmatrix-refl-source-edition-5.md) | 1562 | `BLOCKED_NATIVE_ADMISSION` |
| 220 | `theorem` | [mapMatrix_symm](declarations/mapmatrix-symm-source-edition-5.md) | 1567 | `BLOCKED_NATIVE_ADMISSION` |
| 221 | `theorem` | [mapMatrix_trans](declarations/mapmatrix-trans-source-edition-4.md) | 1572 | `BLOCKED_NATIVE_ADMISSION` |
| 222 | `def` | [mapMatrix](declarations/mapmatrix-source-edition-8.md) | 1590 | `BLOCKED_NATIVE_ADMISSION` |
| 223 | `theorem` | [mapMatrix_id](declarations/mapmatrix-id-source-edition-4.md) | 1597 | `BLOCKED_NATIVE_ADMISSION` |
| 224 | `theorem` | [mapMatrix_comp](declarations/mapmatrix-comp-source-edition-3.md) | 1602 | `BLOCKED_NATIVE_ADMISSION` |
| 225 | `def` | [mapMatrix](declarations/mapmatrix-source-edition-3.md) | 1620 | `BLOCKED_NATIVE_ADMISSION` |
| 226 | `theorem` | [mapMatrix_refl](declarations/mapmatrix-refl-source-edition-2.md) | 1628 | `BLOCKED_NATIVE_ADMISSION` |
| 227 | `theorem` | [mapMatrix_symm](declarations/mapmatrix-symm.md) | 1633 | `BLOCKED_NATIVE_ADMISSION` |
| 228 | `theorem` | [mapMatrix_trans](declarations/mapmatrix-trans-source-edition-5.md) | 1639 | `BLOCKED_NATIVE_ADMISSION` |
| 229 | `def` | [vecMulVec](declarations/vecmulvec.md) | 1652 | `BLOCKED_NATIVE_ADMISSION` |
| 230 | `theorem` | [vecMulVec_apply](declarations/vecmulvec-apply.md) | 1657 | `BLOCKED_NATIVE_ADMISSION` |
| 231 | `theorem` | [vecMulVec_eq](declarations/vecmulvec-eq.md) | 1661 | `BLOCKED_NATIVE_ADMISSION` |
| 232 | `def` | [mulVec](declarations/mulvec.md) | 1675 | `BLOCKED_NATIVE_ADMISSION` |
| 233 | `def` | [vecMul](declarations/vecmul.md) | 1682 | `BLOCKED_NATIVE_ADMISSION` |
| 234 | `def` | [mulVec.addMonoidHomLeft](declarations/mulvec-addmonoidhomleft.md) | 1688 | `BLOCKED_NATIVE_ADMISSION` |
| 235 | `theorem` | [mulVec_diagonal](declarations/mulvec-diagonal.md) | 1698 | `BLOCKED_NATIVE_ADMISSION` |
| 236 | `theorem` | [vecMul_diagonal](declarations/vecmul-diagonal.md) | 1703 | `BLOCKED_NATIVE_ADMISSION` |
| 237 | `theorem` | [dotProduct_mulVec](declarations/dotproduct-mulvec.md) | 1709 | `BLOCKED_NATIVE_ADMISSION` |
| 238 | `theorem` | [mulVec_zero](declarations/mulvec-zero.md) | 1716 | `BLOCKED_NATIVE_ADMISSION` |
| 239 | `theorem` | [zero_vecMul](declarations/zero-vecmul.md) | 1722 | `BLOCKED_NATIVE_ADMISSION` |
| 240 | `theorem` | [zero_mulVec](declarations/zero-mulvec.md) | 1728 | `BLOCKED_NATIVE_ADMISSION` |
| 241 | `theorem` | [vecMul_zero](declarations/vecmul-zero.md) | 1734 | `BLOCKED_NATIVE_ADMISSION` |
| 242 | `theorem` | [smul_mulVec_assoc](declarations/smul-mulvec-assoc.md) | 1739 | `BLOCKED_NATIVE_ADMISSION` |
| 243 | `theorem` | [mulVec_add](declarations/mulvec-add.md) | 1745 | `BLOCKED_NATIVE_ADMISSION` |
| 244 | `theorem` | [add_mulVec](declarations/add-mulvec.md) | 1751 | `BLOCKED_NATIVE_ADMISSION` |
| 245 | `theorem` | [vecMul_add](declarations/vecmul-add.md) | 1757 | `BLOCKED_NATIVE_ADMISSION` |
| 246 | `theorem` | [add_vecMul](declarations/add-vecmul.md) | 1763 | `BLOCKED_NATIVE_ADMISSION` |
| 247 | `theorem` | [vecMul_smul](declarations/vecmul-smul.md) | 1769 | `BLOCKED_NATIVE_ADMISSION` |
| 248 | `theorem` | [mulVec_smul](declarations/mulvec-smul.md) | 1776 | `BLOCKED_NATIVE_ADMISSION` |
| 249 | `theorem` | [mulVec_single](declarations/mulvec-single.md) | 1784 | `BLOCKED_NATIVE_ADMISSION` |
| 250 | `theorem` | [single_vecMul](declarations/single-vecmul.md) | 1790 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=97c6b37637d21b0b10ed7cc38e5377830d5a4a9d780d7248d52b3b02e597b27d -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/Basic/Variant890bfbd672d6a7df66a72437cff95965ed94871e51442d6e4e5b505f4823c91c.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
