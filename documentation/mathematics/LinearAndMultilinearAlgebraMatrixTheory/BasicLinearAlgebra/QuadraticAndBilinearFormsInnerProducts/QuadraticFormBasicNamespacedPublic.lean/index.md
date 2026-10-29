# Quadratic Form Basic Namespaced Public

[Complete source index](../../../../complete-source-index.md) · [Up one directory](../../../../complete-source-index.md) · [Full source](source.md)

**176 observed declarations and anonymous commands**, 121 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Algebra/LinearAlgebra/Basic/Variant8502e440ef17d527b64f1117a1f76c93c260821133d2c95363f897609c2fded2.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `82aefde7a95a10d09faa86361a6f21920d57baac`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../_verification/specifications/LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/QuadraticAndBilinearFormsInnerProducts/QuadraticFormBasicNamespacedPublic.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [polar](declarations/polar.md) | 108 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `theorem` | [map_add](declarations/map-add.md) | 111 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `theorem` | [polar_add](declarations/polar-add.md) | 116 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `theorem` | [polar_neg](declarations/polar-neg.md) | 120 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [polar_smul](declarations/polar-smul.md) | 123 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [polar_comm](declarations/polar-comm.md) | 126 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [polar_add_left_iff](declarations/polar-add-left-iff.md) | 130 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [polar_comp](declarations/polar-comp.md) | 139 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `def` | [polarSym2](declarations/polarsym2.md) | 145 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `lemma` | [polarSym2_sym2Mk](declarations/polarsym2-sym2mk.md) | 149 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `structure` | [QuadraticMap](declarations/quadraticmap.md) | 158 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `abbrev` | [QuadraticForm](declarations/quadraticform.md) | 172 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `instance` | [instFunLike](declarations/instfunlike.md) | 184 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [toFun_eq_coe](declarations/tofun-eq-coe.md) | 192 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [coe_mk](declarations/coe-mk.md) | 196 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [ext](declarations/ext.md) | 205 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [congr_fun](declarations/congr-fun.md) | 208 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `def` | [copy](declarations/copy.md) | 213 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [coe_copy](declarations/coe-copy.md) | 219 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [copy_eq](declarations/copy-eq.md) | 222 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [map_smul](declarations/map-smul.md) | 232 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [exists_companion](declarations/exists-companion.md) | 235 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [map_add_add_add_map](declarations/map-add-add-add-map.md) | 238 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [map_add_self](declarations/map-add-self.md) | 245 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [map_zero](declarations/map-zero.md) | 250 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `instance` | [zeroHomClass](declarations/zerohomclass.md) | 253 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [map_smul_of_tower](declarations/map-smul-of-tower.md) | 256 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `def` | [restrict](declarations/restrict.md) | 262 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [map_neg](declarations/map-neg.md) | 276 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [map_sub](declarations/map-sub.md) | 279 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [polar_zero_left](declarations/polar-zero-left.md) | 282 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [polar_add_left](declarations/polar-add-left.md) | 286 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [polar_smul_left](declarations/polar-smul-left.md) | 290 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [polar_neg_left](declarations/polar-neg-left.md) | 295 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `theorem` | [polar_sub_left](declarations/polar-sub-left.md) | 299 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `theorem` | [polar_zero_right](declarations/polar-zero-right.md) | 303 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `theorem` | [polar_add_right](declarations/polar-add-right.md) | 307 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `theorem` | [polar_smul_right](declarations/polar-smul-right.md) | 311 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `theorem` | [polar_neg_right](declarations/polar-neg-right.md) | 315 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `theorem` | [polar_sub_right](declarations/polar-sub-right.md) | 319 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `theorem` | [polar_self](declarations/polar-self.md) | 323 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `def` | [polarBilin](declarations/polarbilin.md) | 329 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `lemma` | [polarSym2_map_smul](declarations/polarsym2-map-smul.md) | 333 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `theorem` | [polar_smul_left_of_tower](declarations/polar-smul-left-of-tower.md) | 341 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `theorem` | [polar_smul_right_of_tower](declarations/polar-smul-right-of-tower.md) | 345 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `def` | [ofPolar](declarations/ofpolar.md) | 350 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `theorem` | [choose_exists_companion](declarations/choose-exists-companion.md) | 364 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `theorem` | [map_sum](declarations/map-sum-source-edition-2.md) | 369 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `theorem` | [map_sum'](declarations/map-sum.md) | 385 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `instance` | [(anonymous)](declarations/instance-source-edition-10.md) | 410 | `BLOCKED_NATIVE_ADMISSION` |
| 51 | `instance` | [(anonymous)](declarations/instance-source-edition-15.md) | 420 | `BLOCKED_NATIVE_ADMISSION` |
| 52 | `instance` | [(anonymous)](declarations/instance-source-edition-7.md) | 427 | `BLOCKED_NATIVE_ADMISSION` |
| 53 | `instance` | [(anonymous)](declarations/instance-source-edition-12.md) | 430 | `BLOCKED_NATIVE_ADMISSION` |
| 54 | `instance` | [(anonymous)](declarations/instance-source-edition-11.md) | 435 | `BLOCKED_NATIVE_ADMISSION` |
| 55 | `instance` | [(anonymous)](declarations/instance-source-edition-5.md) | 440 | `BLOCKED_NATIVE_ADMISSION` |
| 56 | `instance` | [(anonymous)](declarations/instance-source-edition-17.md) | 447 | `BLOCKED_NATIVE_ADMISSION` |
| 57 | `instance` | [(anonymous)](declarations/instance.md) | 450 | `BLOCKED_NATIVE_ADMISSION` |
| 58 | `instance` | [(anonymous)](declarations/instance-source-edition-9.md) | 460 | `BLOCKED_NATIVE_ADMISSION` |
| 59 | `instance` | [(anonymous)](declarations/instance-source-edition-14.md) | 467 | `BLOCKED_NATIVE_ADMISSION` |
| 60 | `def` | [evalAddMonoidHom](declarations/evaladdmonoidhom.md) | 475 | `BLOCKED_NATIVE_ADMISSION` |
| 61 | `instance` | [(anonymous)](declarations/instance-source-edition-2.md) | 482 | `BLOCKED_NATIVE_ADMISSION` |
| 62 | `instance` | [(anonymous)](declarations/instance-source-edition-16.md) | 485 | `BLOCKED_NATIVE_ADMISSION` |
| 63 | `instance` | [(anonymous)](declarations/instance-source-edition-8.md) | 494 | `BLOCKED_NATIVE_ADMISSION` |
| 64 | `instance` | [(anonymous)](declarations/instance-source-edition-13.md) | 502 | `BLOCKED_NATIVE_ADMISSION` |
| 65 | `instance` | [(anonymous)](declarations/instance-source-edition-6.md) | 509 | `BLOCKED_NATIVE_ADMISSION` |
| 66 | `instance` | [(anonymous)](declarations/instance-source-edition-4.md) | 512 | `BLOCKED_NATIVE_ADMISSION` |
| 67 | `instance` | [(anonymous)](declarations/instance-source-edition-18.md) | 519 | `BLOCKED_NATIVE_ADMISSION` |
| 68 | `def` | [restrictScalars](declarations/restrictscalars.md) | 532 | `BLOCKED_NATIVE_ADMISSION` |
| 69 | `def` | [comp](declarations/comp.md) | 549 | `BLOCKED_NATIVE_ADMISSION` |
| 70 | `theorem` | [comp_apply](declarations/comp-apply.md) | 557 | `BLOCKED_NATIVE_ADMISSION` |
| 71 | `def` | [Quadratic Form Basic Namespaced Public](declarations/compquadraticmap-source-line-562-occurrence-2.md) | 562 | `BLOCKED_NATIVE_ADMISSION` |
| 72 | `def` | [Quadratic Form Basic Namespaced Public](declarations/compquadraticmap.md) | 572 | `BLOCKED_NATIVE_ADMISSION` |
| 73 | `def` | [Quadratic Form Basic Namespaced Public](declarations/congrquadraticmap.md) | 582 | `BLOCKED_NATIVE_ADMISSION` |
| 74 | `theorem` | [Quadratic Form Basic Namespaced Public](declarations/congrquadraticmap-refl.md) | 592 | `BLOCKED_NATIVE_ADMISSION` |
| 75 | `theorem` | [Quadratic Form Basic Namespaced Public](declarations/congrquadraticmap-symm.md) | 596 | `BLOCKED_NATIVE_ADMISSION` |
| 76 | `def` | [linMulLin](declarations/linmullin.md) | 607 | `BLOCKED_NATIVE_ADMISSION` |
| 77 | `theorem` | [linMulLin_apply](declarations/linmullin-apply.md) | 619 | `BLOCKED_NATIVE_ADMISSION` |
| 78 | `theorem` | [add_linMulLin](declarations/add-linmullin.md) | 623 | `BLOCKED_NATIVE_ADMISSION` |
| 79 | `theorem` | [linMulLin_add](declarations/linmullin-add.md) | 627 | `BLOCKED_NATIVE_ADMISSION` |
| 80 | `theorem` | [linMulLin_comp](declarations/linmullin-comp.md) | 633 | `BLOCKED_NATIVE_ADMISSION` |
| 81 | `def` | [sq](declarations/sq.md) | 641 | `BLOCKED_NATIVE_ADMISSION` |
| 82 | `def` | [proj](declarations/proj.md) | 645 | `BLOCKED_NATIVE_ADMISSION` |
| 83 | `theorem` | [proj_apply](declarations/proj-apply.md) | 649 | `BLOCKED_NATIVE_ADMISSION` |
| 84 | `def` | [toQuadraticMap](declarations/toquadraticmap.md) | 684 | `BLOCKED_NATIVE_ADMISSION` |
| 85 | `theorem` | [toQuadraticMap_apply](declarations/toquadraticmap-apply.md) | 690 | `BLOCKED_NATIVE_ADMISSION` |
| 86 | `theorem` | [toQuadraticMap_comp_same](declarations/toquadraticmap-comp-same.md) | 693 | `BLOCKED_NATIVE_ADMISSION` |
| 87 | `theorem` | [toQuadraticMap_zero](declarations/toquadraticmap-zero.md) | 701 | `BLOCKED_NATIVE_ADMISSION` |
| 88 | `theorem` | [toQuadraticMap_add](declarations/toquadraticmap-add.md) | 707 | `BLOCKED_NATIVE_ADMISSION` |
| 89 | `theorem` | [toQuadraticMap_smul](declarations/toquadraticmap-smul.md) | 712 | `BLOCKED_NATIVE_ADMISSION` |
| 90 | `def` | [toQuadraticMapAddMonoidHom](declarations/toquadraticmapaddmonoidhom.md) | 723 | `BLOCKED_NATIVE_ADMISSION` |
| 91 | `def` | [toQuadraticMapLinearMap](declarations/toquadraticmaplinearmap.md) | 730 | `BLOCKED_NATIVE_ADMISSION` |
| 92 | `theorem` | [toQuadraticMap_list_sum](declarations/toquadraticmap-list-sum.md) | 739 | `BLOCKED_NATIVE_ADMISSION` |
| 93 | `theorem` | [toQuadraticMap_multiset_sum](declarations/toquadraticmap-multiset-sum.md) | 744 | `BLOCKED_NATIVE_ADMISSION` |
| 94 | `theorem` | [toQuadraticMap_sum](declarations/toquadraticmap-sum.md) | 749 | `BLOCKED_NATIVE_ADMISSION` |
| 95 | `theorem` | [toQuadraticMap_eq_zero](declarations/toquadraticmap-eq-zero.md) | 754 | `BLOCKED_NATIVE_ADMISSION` |
| 96 | `theorem` | [toQuadraticMap_neg](declarations/toquadraticmap-neg.md) | 766 | `BLOCKED_NATIVE_ADMISSION` |
| 97 | `theorem` | [toQuadraticMap_sub](declarations/toquadraticmap-sub.md) | 770 | `BLOCKED_NATIVE_ADMISSION` |
| 98 | `theorem` | [polar_toQuadraticMap](declarations/polar-toquadraticmap.md) | 774 | `BLOCKED_NATIVE_ADMISSION` |
| 99 | `theorem` | [polarBilin_toQuadraticMap](declarations/polarbilin-toquadraticmap.md) | 778 | `BLOCKED_NATIVE_ADMISSION` |
| 100 | `theorem` | [Quadratic Form Basic Namespaced Public](declarations/toquadraticmap-polarbilin.md) | 781 | `BLOCKED_NATIVE_ADMISSION` |
| 101 | `theorem` | [Quadratic Form Basic Namespaced Public](declarations/polarbilin-injective.md) | 785 | `BLOCKED_NATIVE_ADMISSION` |
| 102 | `theorem` | [Quadratic Form Basic Namespaced Public](declarations/polarbilin-comp.md) | 797 | `BLOCKED_NATIVE_ADMISSION` |
| 103 | `theorem` | [Quadratic Form Basic Namespaced Public](declarations/compquadraticmap-polar.md) | 805 | `BLOCKED_NATIVE_ADMISSION` |
| 104 | `theorem` | [Quadratic Form Basic Namespaced Public](declarations/compquadraticmap-polarbilin.md) | 812 | `BLOCKED_NATIVE_ADMISSION` |
| 105 | `instance` | [(anonymous)](declarations/instance-source-edition-3.md) | 833 | `BLOCKED_NATIVE_ADMISSION` |
| 106 | `lemma` | [half_moduleEnd_apply_eq_half_smul](declarations/half-moduleend-apply-eq-half-smul.md) | 848 | `BLOCKED_NATIVE_ADMISSION` |
| 107 | `def` | [associatedHom](declarations/associatedhom.md) | 870 | `BLOCKED_NATIVE_ADMISSION` |
| 108 | `theorem` | [associated_apply](declarations/associated-apply.md) | 877 | `BLOCKED_NATIVE_ADMISSION` |
| 109 | `theorem` | [two_nsmul_associated](declarations/two-nsmul-associated.md) | 882 | `BLOCKED_NATIVE_ADMISSION` |
| 110 | `theorem` | [associated_isSymm](declarations/associated-issymm.md) | 888 | `BLOCKED_NATIVE_ADMISSION` |
| 111 | `theorem` | [Quadratic Form Basic Namespaced Public](declarations/associated-issymm-source-line-892-occurrence-2.md) | 892 | `BLOCKED_NATIVE_ADMISSION` |
| 112 | `lemma` | [associated_flip](declarations/associated-flip.md) | 898 | `BLOCKED_NATIVE_ADMISSION` |
| 113 | `theorem` | [associated_comp](declarations/associated-comp.md) | 904 | `BLOCKED_NATIVE_ADMISSION` |
| 114 | `theorem` | [associated_toQuadraticMap](declarations/associated-toquadraticmap.md) | 909 | `BLOCKED_NATIVE_ADMISSION` |
| 115 | `theorem` | [associated_left_inverse](declarations/associated-left-inverse-source-edition-2.md) | 915 | `BLOCKED_NATIVE_ADMISSION` |
| 116 | `lemma` | [associated_left_inverse'](declarations/associated-left-inverse.md) | 921 | `BLOCKED_NATIVE_ADMISSION` |
| 117 | `theorem` | [associated_eq_self_apply](declarations/associated-eq-self-apply.md) | 926 | `BLOCKED_NATIVE_ADMISSION` |
| 118 | `theorem` | [toQuadraticMap_associated](declarations/toquadraticmap-associated.md) | 931 | `BLOCKED_NATIVE_ADMISSION` |
| 119 | `theorem` | [associated_rightInverse](declarations/associated-rightinverse.md) | 936 | `BLOCKED_NATIVE_ADMISSION` |
| 120 | `abbrev` | [associated'](declarations/associated.md) | 942 | `BLOCKED_NATIVE_ADMISSION` |
| 121 | `instance` | [canLift](declarations/canlift.md) | 946 | `BLOCKED_NATIVE_ADMISSION` |
| 122 | `instance` | [canLift'](declarations/canlift-source-edition-2.md) | 951 | `BLOCKED_NATIVE_ADMISSION` |
| 123 | `theorem` | [exists_quadraticMap_ne_zero](declarations/exists-quadraticmap-ne-zero.md) | 957 | `BLOCKED_NATIVE_ADMISSION` |
| 124 | `abbrev` | [associated](declarations/associated-source-edition-2.md) | 979 | `BLOCKED_NATIVE_ADMISSION` |
| 125 | `theorem` | [coe_associatedHom](declarations/coe-associatedhom.md) | 983 | `BLOCKED_NATIVE_ADMISSION` |
| 126 | `theorem` | [associated_linMulLin](declarations/associated-linmullin.md) | 989 | `BLOCKED_NATIVE_ADMISSION` |
| 127 | `lemma` | [associated_sq](declarations/associated-sq.md) | 1001 | `BLOCKED_NATIVE_ADMISSION` |
| 128 | `def` | [IsOrtho](declarations/isortho.md) | 1017 | `BLOCKED_NATIVE_ADMISSION` |
| 129 | `theorem` | [isOrtho_def](declarations/isortho-def.md) | 1020 | `BLOCKED_NATIVE_ADMISSION` |
| 130 | `theorem` | [IsOrtho.all](declarations/isortho-all.md) | 1023 | `BLOCKED_NATIVE_ADMISSION` |
| 131 | `theorem` | [IsOrtho.zero_left](declarations/isortho-zero-left.md) | 1025 | `BLOCKED_NATIVE_ADMISSION` |
| 132 | `theorem` | [IsOrtho.zero_right](declarations/isortho-zero-right.md) | 1027 | `BLOCKED_NATIVE_ADMISSION` |
| 133 | `theorem` | [ne_zero_of_not_isOrtho_self](declarations/ne-zero-of-not-isortho-self.md) | 1029 | `BLOCKED_NATIVE_ADMISSION` |
| 134 | `theorem` | [isOrtho_comm](declarations/isortho-comm.md) | 1033 | `BLOCKED_NATIVE_ADMISSION` |
| 135 | `theorem` | [Quadratic Form Basic Namespaced Public](declarations/toquadraticmap-isortho.md) | 1037 | `BLOCKED_NATIVE_ADMISSION` |
| 136 | `theorem` | [isOrtho_polarBilin](declarations/isortho-polarbilin.md) | 1051 | `BLOCKED_NATIVE_ADMISSION` |
| 137 | `theorem` | [IsOrtho.polar_eq_zero](declarations/isortho-polar-eq-zero.md) | 1054 | `BLOCKED_NATIVE_ADMISSION` |
| 138 | `theorem` | [associated_isOrtho](declarations/associated-isortho.md) | 1058 | `BLOCKED_NATIVE_ADMISSION` |
| 139 | `def` | [Anisotropic](declarations/anisotropic.md) | 1073 | `BLOCKED_NATIVE_ADMISSION` |
| 140 | `theorem` | [not_anisotropic_iff_exists](declarations/not-anisotropic-iff-exists.md) | 1076 | `BLOCKED_NATIVE_ADMISSION` |
| 141 | `theorem` | [Anisotropic.eq_zero_iff](declarations/anisotropic-eq-zero-iff.md) | 1080 | `BLOCKED_NATIVE_ADMISSION` |
| 142 | `theorem` | [separatingLeft_of_anisotropic](declarations/separatingleft-of-anisotropic.md) | 1091 | `BLOCKED_NATIVE_ADMISSION` |
| 143 | `def` | [PosDef](declarations/posdef.md) | 1109 | `BLOCKED_NATIVE_ADMISSION` |
| 144 | `theorem` | [PosDef.smul](declarations/posdef-smul.md) | 1113 | `BLOCKED_NATIVE_ADMISSION` |
| 145 | `theorem` | [PosDef.nonneg](declarations/posdef-nonneg.md) | 1120 | `BLOCKED_NATIVE_ADMISSION` |
| 146 | `theorem` | [PosDef.anisotropic](declarations/posdef-anisotropic.md) | 1123 | `BLOCKED_NATIVE_ADMISSION` |
| 147 | `theorem` | [PosDef.le_zero_iff](declarations/posdef-le-zero-iff.md) | 1130 | `BLOCKED_NATIVE_ADMISSION` |
| 148 | `theorem` | [posDef_of_nonneg](declarations/posdef-of-nonneg.md) | 1136 | `BLOCKED_NATIVE_ADMISSION` |
| 149 | `theorem` | [posDef_iff_nonneg](declarations/posdef-iff-nonneg.md) | 1140 | `BLOCKED_NATIVE_ADMISSION` |
| 150 | `theorem` | [PosDef.add](declarations/posdef-add.md) | 1143 | `BLOCKED_NATIVE_ADMISSION` |
| 151 | `theorem` | [linMulLinSelfPosDef](declarations/linmullinselfposdef.md) | 1148 | `BLOCKED_NATIVE_ADMISSION` |
| 152 | `def` | [Matrix.toQuadraticForm'](declarations/matrix-toquadraticform.md) | 1173 | `BLOCKED_NATIVE_ADMISSION` |
| 153 | `def` | [toMatrix'](declarations/tomatrix.md) | 1187 | `BLOCKED_NATIVE_ADMISSION` |
| 154 | `theorem` | [toMatrix'_smul](declarations/tomatrix-smul.md) | 1190 | `BLOCKED_NATIVE_ADMISSION` |
| 155 | `theorem` | [isSymm_toMatrix'](declarations/issymm-tomatrix.md) | 1194 | `BLOCKED_NATIVE_ADMISSION` |
| 156 | `theorem` | [toMatrix'_comp](declarations/tomatrix-comp.md) | 1204 | `BLOCKED_NATIVE_ADMISSION` |
| 157 | `def` | [toMatrix](declarations/tomatrix-source-edition-2.md) | 1227 | `BLOCKED_NATIVE_ADMISSION` |
| 158 | `lemma` | [toMatrix_eq_toMatrix'](declarations/tomatrix-eq-tomatrix.md) | 1230 | `BLOCKED_NATIVE_ADMISSION` |
| 159 | `theorem` | [toMatrix_smul](declarations/tomatrix-smul-source-edition-2.md) | 1235 | `BLOCKED_NATIVE_ADMISSION` |
| 160 | `theorem` | [isSymm_toMatrix](declarations/issymm-tomatrix-source-edition-2.md) | 1239 | `BLOCKED_NATIVE_ADMISSION` |
| 161 | `theorem` | [toMatrix_comp](declarations/tomatrix-comp-source-edition-2.md) | 1248 | `BLOCKED_NATIVE_ADMISSION` |
| 162 | `def` | [discr'](declarations/discr.md) | 1261 | `BLOCKED_NATIVE_ADMISSION` |
| 163 | `theorem` | [discr'_smul](declarations/discr-smul-source-edition-2.md) | 1266 | `BLOCKED_NATIVE_ADMISSION` |
| 164 | `theorem` | [discr'_comp](declarations/discr-comp-source-edition-2.md) | 1269 | `BLOCKED_NATIVE_ADMISSION` |
| 165 | `def` | [discr](declarations/discr-source-edition-2.md) | 1289 | `BLOCKED_NATIVE_ADMISSION` |
| 166 | `theorem` | [discr_smul](declarations/discr-smul.md) | 1293 | `BLOCKED_NATIVE_ADMISSION` |
| 167 | `theorem` | [discr_comp](declarations/discr-comp.md) | 1296 | `BLOCKED_NATIVE_ADMISSION` |
| 168 | `lemma` | [discr_eq_discr'](declarations/discr-eq-discr.md) | 1302 | `BLOCKED_NATIVE_ADMISSION` |
| 169 | `theorem` | [separatingLeft_of_anisotropic](declarations/separatingleft-of-anisotropic-source-edition-2.md) | 1327 | `BLOCKED_NATIVE_ADMISSION` |
| 170 | `theorem` | [exists_bilinForm_self_ne_zero](declarations/exists-bilinform-self-ne-zero.md) | 1337 | `BLOCKED_NATIVE_ADMISSION` |
| 171 | `theorem` | [exists_orthogonal_basis](declarations/exists-orthogonal-basis.md) | 1350 | `BLOCKED_NATIVE_ADMISSION` |
| 172 | `def` | [basisRepr](declarations/basisrepr.md) | 1407 | `BLOCKED_NATIVE_ADMISSION` |
| 173 | `theorem` | [basisRepr_apply](declarations/basisrepr-apply.md) | 1412 | `BLOCKED_NATIVE_ADMISSION` |
| 174 | `def` | [weightedSumSquares](declarations/weightedsumsquares.md) | 1427 | `BLOCKED_NATIVE_ADMISSION` |
| 175 | `theorem` | [weightedSumSquares_apply](declarations/weightedsumsquares-apply.md) | 1434 | `BLOCKED_NATIVE_ADMISSION` |
| 176 | `theorem` | [basisRepr_eq_of_iIsOrtho](declarations/basisrepr-eq-of-iisortho.md) | 1440 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=b89a62638a58cf5a2a65a13ed3521c185f68143e84f2a7ee0fbe52d5f2a132f5 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/Basic/Variant8502e440ef17d527b64f1117a1f76c93c260821133d2c95363f897609c2fded2.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
