# Quadratic Form Basic Namespaced Map Add

[Complete source index](../../../../complete-source-index.md) · [Up one directory](../../../../complete-source-index.md) · [Full source](source.md)

**173 observed declarations and anonymous commands**, 124 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Algebra/LinearAlgebra/Basic/Variant9a7fa425852cd7e5082e465ac2b1c33b98761a593b98bc9a11062b388ad5b7ba.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `1881d5b2229c291f9a8dbc614ee29bf6195a1265`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../_verification/specifications/LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/QuadraticAndBilinearFormsInnerProducts/QuadraticFormBasicNamespacedMapAdd.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [polar](declarations/polar.md) | 103 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `theorem` | [map_add](declarations/map-add.md) | 106 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `theorem` | [polar_add](declarations/polar-add.md) | 111 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `theorem` | [polar_neg](declarations/polar-neg.md) | 115 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [polar_smul](declarations/polar-smul.md) | 118 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [polar_comm](declarations/polar-comm.md) | 121 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [polar_add_left_iff](declarations/polar-add-left-iff.md) | 125 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [polar_comp](declarations/polar-comp.md) | 134 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `def` | [polarSym2](declarations/polarsym2.md) | 140 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `lemma` | [polarSym2_sym2Mk](declarations/polarsym2-sym2mk.md) | 144 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `structure` | [QuadraticMap](declarations/quadraticmap.md) | 153 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `abbrev` | [QuadraticForm](declarations/quadraticform.md) | 164 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `instance` | [instFunLike](declarations/instfunlike.md) | 175 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [toFun_eq_coe](declarations/tofun-eq-coe.md) | 183 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [ext](declarations/ext.md) | 192 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [congr_fun](declarations/congr-fun.md) | 195 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `def` | [copy](declarations/copy.md) | 200 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [coe_copy](declarations/coe-copy.md) | 206 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [copy_eq](declarations/copy-eq.md) | 209 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [map_smul](declarations/map-smul.md) | 219 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [exists_companion](declarations/exists-companion.md) | 222 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [map_add_add_add_map](declarations/map-add-add-add-map.md) | 225 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [map_add_self](declarations/map-add-self.md) | 232 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [map_zero](declarations/map-zero.md) | 237 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `instance` | [zeroHomClass](declarations/zerohomclass.md) | 240 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [map_smul_of_tower](declarations/map-smul-of-tower.md) | 243 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [map_neg](declarations/map-neg.md) | 256 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [map_sub](declarations/map-sub.md) | 259 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [polar_zero_left](declarations/polar-zero-left.md) | 262 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [polar_add_left](declarations/polar-add-left.md) | 266 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [polar_smul_left](declarations/polar-smul-left.md) | 270 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [polar_neg_left](declarations/polar-neg-left.md) | 275 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [polar_sub_left](declarations/polar-sub-left.md) | 279 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [polar_zero_right](declarations/polar-zero-right.md) | 283 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `theorem` | [polar_add_right](declarations/polar-add-right.md) | 287 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `theorem` | [polar_smul_right](declarations/polar-smul-right.md) | 291 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `theorem` | [polar_neg_right](declarations/polar-neg-right.md) | 295 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `theorem` | [polar_sub_right](declarations/polar-sub-right.md) | 299 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `theorem` | [polar_self](declarations/polar-self.md) | 303 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `def` | [polarBilin](declarations/polarbilin.md) | 309 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `lemma` | [polarSym2_map_smul](declarations/polarsym2-map-smul.md) | 313 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `theorem` | [polar_smul_left_of_tower](declarations/polar-smul-left-of-tower.md) | 321 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `theorem` | [polar_smul_right_of_tower](declarations/polar-smul-right-of-tower.md) | 325 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `def` | [ofPolar](declarations/ofpolar.md) | 330 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `theorem` | [choose_exists_companion](declarations/choose-exists-companion.md) | 344 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `theorem` | [map_sum](declarations/map-sum-source-edition-2.md) | 349 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `theorem` | [map_sum'](declarations/map-sum.md) | 365 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `instance` | [(anonymous)](declarations/instance-source-edition-13.md) | 390 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `theorem` | [coeFn_smul](declarations/coefn-smul.md) | 401 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `theorem` | [smul_apply](declarations/smul-apply.md) | 405 | `BLOCKED_NATIVE_ADMISSION` |
| 51 | `instance` | [(anonymous)](declarations/instance-source-edition-12.md) | 408 | `BLOCKED_NATIVE_ADMISSION` |
| 52 | `instance` | [(anonymous)](declarations/instance-source-edition-2.md) | 411 | `BLOCKED_NATIVE_ADMISSION` |
| 53 | `instance` | [(anonymous)](declarations/instance-source-edition-9.md) | 416 | `BLOCKED_NATIVE_ADMISSION` |
| 54 | `theorem` | [coeFn_zero](declarations/coefn-zero.md) | 422 | `BLOCKED_NATIVE_ADMISSION` |
| 55 | `theorem` | [zero_apply](declarations/zero-apply.md) | 426 | `BLOCKED_NATIVE_ADMISSION` |
| 56 | `instance` | [(anonymous)](declarations/instance-source-edition-4.md) | 429 | `BLOCKED_NATIVE_ADMISSION` |
| 57 | `instance` | [(anonymous)](declarations/instance-source-edition-5.md) | 432 | `BLOCKED_NATIVE_ADMISSION` |
| 58 | `theorem` | [coeFn_add](declarations/coefn-add.md) | 443 | `BLOCKED_NATIVE_ADMISSION` |
| 59 | `theorem` | [add_apply](declarations/add-apply.md) | 447 | `BLOCKED_NATIVE_ADMISSION` |
| 60 | `instance` | [(anonymous)](declarations/instance-source-edition-7.md) | 450 | `BLOCKED_NATIVE_ADMISSION` |
| 61 | `def` | [coeFnAddMonoidHom](declarations/coefnaddmonoidhom.md) | 457 | `BLOCKED_NATIVE_ADMISSION` |
| 62 | `def` | [evalAddMonoidHom](declarations/evaladdmonoidhom.md) | 464 | `BLOCKED_NATIVE_ADMISSION` |
| 63 | `theorem` | [coeFn_sum](declarations/coefn-sum.md) | 470 | `BLOCKED_NATIVE_ADMISSION` |
| 64 | `theorem` | [sum_apply](declarations/sum-apply.md) | 475 | `BLOCKED_NATIVE_ADMISSION` |
| 65 | `instance` | [(anonymous)](declarations/instance-source-edition-6.md) | 481 | `BLOCKED_NATIVE_ADMISSION` |
| 66 | `instance` | [(anonymous)](declarations/instance-source-edition-3.md) | 492 | `BLOCKED_NATIVE_ADMISSION` |
| 67 | `instance` | [(anonymous)](declarations/instance.md) | 507 | `BLOCKED_NATIVE_ADMISSION` |
| 68 | `theorem` | [coeFn_neg](declarations/coefn-neg.md) | 516 | `BLOCKED_NATIVE_ADMISSION` |
| 69 | `theorem` | [neg_apply](declarations/neg-apply.md) | 520 | `BLOCKED_NATIVE_ADMISSION` |
| 70 | `instance` | [(anonymous)](declarations/instance-source-edition-10.md) | 523 | `BLOCKED_NATIVE_ADMISSION` |
| 71 | `theorem` | [coeFn_sub](declarations/coefn-sub.md) | 527 | `BLOCKED_NATIVE_ADMISSION` |
| 72 | `theorem` | [sub_apply](declarations/sub-apply.md) | 531 | `BLOCKED_NATIVE_ADMISSION` |
| 73 | `instance` | [(anonymous)](declarations/instance-source-edition-8.md) | 534 | `BLOCKED_NATIVE_ADMISSION` |
| 74 | `def` | [restrictScalars](declarations/restrictscalars.md) | 549 | `BLOCKED_NATIVE_ADMISSION` |
| 75 | `def` | [comp](declarations/comp.md) | 566 | `BLOCKED_NATIVE_ADMISSION` |
| 76 | `theorem` | [comp_apply](declarations/comp-apply.md) | 574 | `BLOCKED_NATIVE_ADMISSION` |
| 77 | `def` | [Quadratic Form Basic Namespaced Map Add](declarations/compquadraticmap-source-line-579-occurrence-2.md) | 579 | `BLOCKED_NATIVE_ADMISSION` |
| 78 | `def` | [Quadratic Form Basic Namespaced Map Add](declarations/compquadraticmap.md) | 589 | `BLOCKED_NATIVE_ADMISSION` |
| 79 | `def` | [Quadratic Form Basic Namespaced Map Add](declarations/congrquadraticmap.md) | 599 | `BLOCKED_NATIVE_ADMISSION` |
| 80 | `theorem` | [Quadratic Form Basic Namespaced Map Add](declarations/congrquadraticmap-refl.md) | 609 | `BLOCKED_NATIVE_ADMISSION` |
| 81 | `theorem` | [Quadratic Form Basic Namespaced Map Add](declarations/congrquadraticmap-symm.md) | 613 | `BLOCKED_NATIVE_ADMISSION` |
| 82 | `def` | [linMulLin](declarations/linmullin.md) | 624 | `BLOCKED_NATIVE_ADMISSION` |
| 83 | `theorem` | [linMulLin_apply](declarations/linmullin-apply.md) | 636 | `BLOCKED_NATIVE_ADMISSION` |
| 84 | `theorem` | [add_linMulLin](declarations/add-linmullin.md) | 640 | `BLOCKED_NATIVE_ADMISSION` |
| 85 | `theorem` | [linMulLin_add](declarations/linmullin-add.md) | 644 | `BLOCKED_NATIVE_ADMISSION` |
| 86 | `theorem` | [linMulLin_comp](declarations/linmullin-comp.md) | 650 | `BLOCKED_NATIVE_ADMISSION` |
| 87 | `def` | [sq](declarations/sq.md) | 658 | `BLOCKED_NATIVE_ADMISSION` |
| 88 | `def` | [proj](declarations/proj.md) | 662 | `BLOCKED_NATIVE_ADMISSION` |
| 89 | `theorem` | [proj_apply](declarations/proj-apply.md) | 666 | `BLOCKED_NATIVE_ADMISSION` |
| 90 | `def` | [toQuadraticMap](declarations/toquadraticmap.md) | 701 | `BLOCKED_NATIVE_ADMISSION` |
| 91 | `theorem` | [toQuadraticMap_apply](declarations/toquadraticmap-apply.md) | 707 | `BLOCKED_NATIVE_ADMISSION` |
| 92 | `theorem` | [toQuadraticMap_comp_same](declarations/toquadraticmap-comp-same.md) | 710 | `BLOCKED_NATIVE_ADMISSION` |
| 93 | `theorem` | [toQuadraticMap_zero](declarations/toquadraticmap-zero.md) | 718 | `BLOCKED_NATIVE_ADMISSION` |
| 94 | `theorem` | [toQuadraticMap_add](declarations/toquadraticmap-add.md) | 724 | `BLOCKED_NATIVE_ADMISSION` |
| 95 | `theorem` | [toQuadraticMap_smul](declarations/toquadraticmap-smul.md) | 729 | `BLOCKED_NATIVE_ADMISSION` |
| 96 | `def` | [toQuadraticMapAddMonoidHom](declarations/toquadraticmapaddmonoidhom.md) | 740 | `BLOCKED_NATIVE_ADMISSION` |
| 97 | `def` | [toQuadraticMapLinearMap](declarations/toquadraticmaplinearmap.md) | 747 | `BLOCKED_NATIVE_ADMISSION` |
| 98 | `theorem` | [toQuadraticMap_list_sum](declarations/toquadraticmap-list-sum.md) | 756 | `BLOCKED_NATIVE_ADMISSION` |
| 99 | `theorem` | [toQuadraticMap_multiset_sum](declarations/toquadraticmap-multiset-sum.md) | 761 | `BLOCKED_NATIVE_ADMISSION` |
| 100 | `theorem` | [toQuadraticMap_sum](declarations/toquadraticmap-sum.md) | 766 | `BLOCKED_NATIVE_ADMISSION` |
| 101 | `theorem` | [toQuadraticMap_eq_zero](declarations/toquadraticmap-eq-zero.md) | 771 | `BLOCKED_NATIVE_ADMISSION` |
| 102 | `theorem` | [toQuadraticMap_neg](declarations/toquadraticmap-neg.md) | 783 | `BLOCKED_NATIVE_ADMISSION` |
| 103 | `theorem` | [toQuadraticMap_sub](declarations/toquadraticmap-sub.md) | 787 | `BLOCKED_NATIVE_ADMISSION` |
| 104 | `theorem` | [polar_toQuadraticMap](declarations/polar-toquadraticmap.md) | 791 | `BLOCKED_NATIVE_ADMISSION` |
| 105 | `theorem` | [polarBilin_toQuadraticMap](declarations/polarbilin-toquadraticmap.md) | 795 | `BLOCKED_NATIVE_ADMISSION` |
| 106 | `theorem` | [Quadratic Form Basic Namespaced Map Add](declarations/toquadraticmap-polarbilin.md) | 798 | `BLOCKED_NATIVE_ADMISSION` |
| 107 | `theorem` | [Quadratic Form Basic Namespaced Map Add](declarations/polarbilin-injective.md) | 802 | `BLOCKED_NATIVE_ADMISSION` |
| 108 | `theorem` | [Quadratic Form Basic Namespaced Map Add](declarations/polarbilin-comp.md) | 814 | `BLOCKED_NATIVE_ADMISSION` |
| 109 | `theorem` | [Quadratic Form Basic Namespaced Map Add](declarations/compquadraticmap-polar.md) | 822 | `BLOCKED_NATIVE_ADMISSION` |
| 110 | `theorem` | [Quadratic Form Basic Namespaced Map Add](declarations/compquadraticmap-polarbilin.md) | 829 | `BLOCKED_NATIVE_ADMISSION` |
| 111 | `instance` | [(anonymous)](declarations/instance-source-edition-11.md) | 849 | `BLOCKED_NATIVE_ADMISSION` |
| 112 | `instance` | [(anonymous)](declarations/instance-source-edition-14.md) | 854 | `BLOCKED_NATIVE_ADMISSION` |
| 113 | `lemma` | [half_moduleEnd_apply_eq_half_smul](declarations/half-moduleend-apply-eq-half-smul.md) | 869 | `BLOCKED_NATIVE_ADMISSION` |
| 114 | `def` | [associatedHom](declarations/associatedhom.md) | 891 | `BLOCKED_NATIVE_ADMISSION` |
| 115 | `theorem` | [associated_apply](declarations/associated-apply.md) | 899 | `BLOCKED_NATIVE_ADMISSION` |
| 116 | `theorem` | [two_nsmul_associated](declarations/two-nsmul-associated.md) | 904 | `BLOCKED_NATIVE_ADMISSION` |
| 117 | `theorem` | [associated_isSymm](declarations/associated-issymm.md) | 910 | `BLOCKED_NATIVE_ADMISSION` |
| 118 | `theorem` | [Quadratic Form Basic Namespaced Map Add](declarations/associated-issymm-source-line-914-occurrence-2.md) | 914 | `BLOCKED_NATIVE_ADMISSION` |
| 119 | `lemma` | [associated_flip](declarations/associated-flip.md) | 920 | `BLOCKED_NATIVE_ADMISSION` |
| 120 | `theorem` | [associated_comp](declarations/associated-comp.md) | 926 | `BLOCKED_NATIVE_ADMISSION` |
| 121 | `theorem` | [associated_toQuadraticMap](declarations/associated-toquadraticmap.md) | 931 | `BLOCKED_NATIVE_ADMISSION` |
| 122 | `theorem` | [associated_left_inverse](declarations/associated-left-inverse-source-edition-2.md) | 937 | `BLOCKED_NATIVE_ADMISSION` |
| 123 | `lemma` | [associated_left_inverse'](declarations/associated-left-inverse.md) | 943 | `BLOCKED_NATIVE_ADMISSION` |
| 124 | `theorem` | [associated_eq_self_apply](declarations/associated-eq-self-apply.md) | 948 | `BLOCKED_NATIVE_ADMISSION` |
| 125 | `theorem` | [toQuadraticMap_associated](declarations/toquadraticmap-associated.md) | 953 | `BLOCKED_NATIVE_ADMISSION` |
| 126 | `theorem` | [associated_rightInverse](declarations/associated-rightinverse.md) | 958 | `BLOCKED_NATIVE_ADMISSION` |
| 127 | `abbrev` | [associated'](declarations/associated.md) | 964 | `BLOCKED_NATIVE_ADMISSION` |
| 128 | `instance` | [canLift](declarations/canlift-source-edition-2.md) | 968 | `BLOCKED_NATIVE_ADMISSION` |
| 129 | `instance` | [canLift'](declarations/canlift.md) | 973 | `BLOCKED_NATIVE_ADMISSION` |
| 130 | `theorem` | [exists_quadraticMap_ne_zero](declarations/exists-quadraticmap-ne-zero.md) | 979 | `BLOCKED_NATIVE_ADMISSION` |
| 131 | `abbrev` | [associated](declarations/associated-source-edition-2.md) | 1001 | `BLOCKED_NATIVE_ADMISSION` |
| 132 | `theorem` | [coe_associatedHom](declarations/coe-associatedhom.md) | 1005 | `BLOCKED_NATIVE_ADMISSION` |
| 133 | `theorem` | [associated_linMulLin](declarations/associated-linmullin.md) | 1011 | `BLOCKED_NATIVE_ADMISSION` |
| 134 | `lemma` | [associated_sq](declarations/associated-sq.md) | 1023 | `BLOCKED_NATIVE_ADMISSION` |
| 135 | `def` | [IsOrtho](declarations/isortho.md) | 1038 | `BLOCKED_NATIVE_ADMISSION` |
| 136 | `theorem` | [isOrtho_def](declarations/isortho-def.md) | 1041 | `BLOCKED_NATIVE_ADMISSION` |
| 137 | `theorem` | [IsOrtho.all](declarations/isortho-all.md) | 1044 | `BLOCKED_NATIVE_ADMISSION` |
| 138 | `theorem` | [IsOrtho.zero_left](declarations/isortho-zero-left.md) | 1046 | `BLOCKED_NATIVE_ADMISSION` |
| 139 | `theorem` | [IsOrtho.zero_right](declarations/isortho-zero-right.md) | 1048 | `BLOCKED_NATIVE_ADMISSION` |
| 140 | `theorem` | [ne_zero_of_not_isOrtho_self](declarations/ne-zero-of-not-isortho-self.md) | 1050 | `BLOCKED_NATIVE_ADMISSION` |
| 141 | `theorem` | [isOrtho_comm](declarations/isortho-comm.md) | 1054 | `BLOCKED_NATIVE_ADMISSION` |
| 142 | `theorem` | [Quadratic Form Basic Namespaced Map Add](declarations/toquadraticmap-isortho.md) | 1058 | `BLOCKED_NATIVE_ADMISSION` |
| 143 | `theorem` | [isOrtho_polarBilin](declarations/isortho-polarbilin.md) | 1073 | `BLOCKED_NATIVE_ADMISSION` |
| 144 | `theorem` | [IsOrtho.polar_eq_zero](declarations/isortho-polar-eq-zero.md) | 1076 | `BLOCKED_NATIVE_ADMISSION` |
| 145 | `theorem` | [associated_isOrtho](declarations/associated-isortho.md) | 1080 | `BLOCKED_NATIVE_ADMISSION` |
| 146 | `def` | [Anisotropic](declarations/anisotropic.md) | 1096 | `BLOCKED_NATIVE_ADMISSION` |
| 147 | `theorem` | [not_anisotropic_iff_exists](declarations/not-anisotropic-iff-exists.md) | 1099 | `BLOCKED_NATIVE_ADMISSION` |
| 148 | `theorem` | [Anisotropic.eq_zero_iff](declarations/anisotropic-eq-zero-iff.md) | 1103 | `BLOCKED_NATIVE_ADMISSION` |
| 149 | `theorem` | [separatingLeft_of_anisotropic](declarations/separatingleft-of-anisotropic.md) | 1114 | `BLOCKED_NATIVE_ADMISSION` |
| 150 | `def` | [PosDef](declarations/posdef.md) | 1132 | `BLOCKED_NATIVE_ADMISSION` |
| 151 | `theorem` | [PosDef.smul](declarations/posdef-smul.md) | 1136 | `BLOCKED_NATIVE_ADMISSION` |
| 152 | `theorem` | [PosDef.nonneg](declarations/posdef-nonneg.md) | 1143 | `BLOCKED_NATIVE_ADMISSION` |
| 153 | `theorem` | [PosDef.anisotropic](declarations/posdef-anisotropic.md) | 1146 | `BLOCKED_NATIVE_ADMISSION` |
| 154 | `theorem` | [posDef_of_nonneg](declarations/posdef-of-nonneg.md) | 1153 | `BLOCKED_NATIVE_ADMISSION` |
| 155 | `theorem` | [posDef_iff_nonneg](declarations/posdef-iff-nonneg.md) | 1157 | `BLOCKED_NATIVE_ADMISSION` |
| 156 | `theorem` | [PosDef.add](declarations/posdef-add.md) | 1160 | `BLOCKED_NATIVE_ADMISSION` |
| 157 | `theorem` | [linMulLinSelfPosDef](declarations/linmullinselfposdef.md) | 1165 | `BLOCKED_NATIVE_ADMISSION` |
| 158 | `def` | [Matrix.toQuadraticMap'](declarations/matrix-toquadraticmap.md) | 1190 | `BLOCKED_NATIVE_ADMISSION` |
| 159 | `def` | [QuadraticMap.toMatrix'](declarations/quadraticmap-tomatrix.md) | 1196 | `BLOCKED_NATIVE_ADMISSION` |
| 160 | `theorem` | [QuadraticMap.toMatrix'_smul](declarations/quadraticmap-tomatrix-smul.md) | 1201 | `BLOCKED_NATIVE_ADMISSION` |
| 161 | `theorem` | [QuadraticMap.isSymm_toMatrix'](declarations/quadraticmap-issymm-tomatrix.md) | 1205 | `BLOCKED_NATIVE_ADMISSION` |
| 162 | `theorem` | [toMatrix'_comp](declarations/tomatrix-comp.md) | 1221 | `BLOCKED_NATIVE_ADMISSION` |
| 163 | `def` | [discr](declarations/discr.md) | 1231 | `BLOCKED_NATIVE_ADMISSION` |
| 164 | `theorem` | [discr_smul](declarations/discr-smul.md) | 1234 | `BLOCKED_NATIVE_ADMISSION` |
| 165 | `theorem` | [discr_comp](declarations/discr-comp.md) | 1237 | `BLOCKED_NATIVE_ADMISSION` |
| 166 | `theorem` | [separatingLeft_of_anisotropic](declarations/separatingleft-of-anisotropic-source-edition-2.md) | 1259 | `BLOCKED_NATIVE_ADMISSION` |
| 167 | `theorem` | [exists_bilinForm_self_ne_zero](declarations/exists-bilinform-self-ne-zero.md) | 1269 | `BLOCKED_NATIVE_ADMISSION` |
| 168 | `theorem` | [exists_orthogonal_basis](declarations/exists-orthogonal-basis.md) | 1282 | `BLOCKED_NATIVE_ADMISSION` |
| 169 | `def` | [basisRepr](declarations/basisrepr.md) | 1341 | `BLOCKED_NATIVE_ADMISSION` |
| 170 | `theorem` | [basisRepr_apply](declarations/basisrepr-apply.md) | 1346 | `BLOCKED_NATIVE_ADMISSION` |
| 171 | `def` | [weightedSumSquares](declarations/weightedsumsquares.md) | 1361 | `BLOCKED_NATIVE_ADMISSION` |
| 172 | `theorem` | [weightedSumSquares_apply](declarations/weightedsumsquares-apply.md) | 1368 | `BLOCKED_NATIVE_ADMISSION` |
| 173 | `theorem` | [basisRepr_eq_of_iIsOrtho](declarations/basisrepr-eq-of-iisortho.md) | 1374 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=c4263883efd1f5c2497c93755ac8ff54f1a007429a5a0dbc22f6e4fa6100e31b -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/Basic/Variant9a7fa425852cd7e5082e465ac2b1c33b98761a593b98bc9a11062b388ad5b7ba.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
