# Quadratic Form Basic Ext Iff

[Complete source index](../../../../complete-source-index.md) · [Up one directory](../../../../complete-source-index.md) · [Full source](source.md)

**136 observed declarations and anonymous commands**, 95 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Algebra/LinearAlgebra/Basic/Variant5fdd513181c3f4bdb3aeb732f206d685f05569c081cf446fbf94f33e36132d65.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `1e9b3dcac3f8ec67e76b7bcc5bc844be648147cd`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../_verification/specifications/LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/QuadraticAndBilinearFormsInnerProducts/QuadraticFormBasicExtIff.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [polar](declarations/polar.md) | 87 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `theorem` | [polar_add](declarations/polar-add.md) | 91 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `theorem` | [polar_neg](declarations/polar-neg.md) | 96 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `theorem` | [polar_smul](declarations/polar-smul.md) | 100 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [polar_comm](declarations/polar-comm.md) | 104 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [polar_add_left_iff](declarations/polar-add-left-iff.md) | 109 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [polar_comp](declarations/polar-comp.md) | 119 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `structure` | [QuadraticForm](declarations/quadraticform.md) | 131 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `instance` | [funLike](declarations/funlike.md) | 145 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `instance` | [(anonymous)](declarations/instance-source-edition-7.md) | 152 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [toFun_eq_coe](declarations/tofun-eq-coe.md) | 159 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [ext](declarations/ext.md) | 169 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [congr_fun](declarations/congr-fun.md) | 173 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [ext_iff](declarations/ext-iff.md) | 177 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `def` | [copy](declarations/copy.md) | 183 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [coe_copy](declarations/coe-copy.md) | 190 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [copy_eq](declarations/copy-eq.md) | 194 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [map_smul](declarations/map-smul.md) | 206 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [exists_companion](declarations/exists-companion.md) | 210 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [map_add_add_add_map](declarations/map-add-add-add-map.md) | 214 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [map_add_self](declarations/map-add-self.md) | 222 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [map_zero](declarations/map-zero.md) | 228 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `instance` | [zeroHomClass](declarations/zerohomclass.md) | 232 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [map_smul_of_tower](declarations/map-smul-of-tower.md) | 236 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [map_neg](declarations/map-neg.md) | 250 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [map_sub](declarations/map-sub.md) | 254 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [polar_zero_left](declarations/polar-zero-left.md) | 258 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [polar_add_left](declarations/polar-add-left.md) | 263 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [polar_smul_left](declarations/polar-smul-left.md) | 268 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [polar_neg_left](declarations/polar-neg-left.md) | 274 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [polar_sub_left](declarations/polar-sub-left.md) | 279 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [polar_zero_right](declarations/polar-zero-right.md) | 284 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [polar_add_right](declarations/polar-add-right.md) | 289 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [polar_smul_right](declarations/polar-smul-right.md) | 294 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `theorem` | [polar_neg_right](declarations/polar-neg-right.md) | 299 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `theorem` | [polar_sub_right](declarations/polar-sub-right.md) | 304 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `theorem` | [polar_self](declarations/polar-self.md) | 309 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `def` | [polarBilin](declarations/polarbilin.md) | 316 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `theorem` | [polar_smul_left_of_tower](declarations/polar-smul-left-of-tower.md) | 327 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `theorem` | [polar_smul_right_of_tower](declarations/polar-smul-right-of-tower.md) | 332 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `def` | [ofPolar](declarations/ofpolar.md) | 338 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `theorem` | [choose_exists_companion](declarations/choose-exists-companion.md) | 355 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `instance` | [(anonymous)](declarations/instance-source-edition-12.md) | 374 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `theorem` | [coeFn_smul](declarations/coefn-smul.md) | 383 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `theorem` | [smul_apply](declarations/smul-apply.md) | 388 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `instance` | [(anonymous)](declarations/instance-source-edition-2.md) | 392 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `instance` | [(anonymous)](declarations/instance-source-edition-11.md) | 395 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `instance` | [(anonymous)](declarations/instance-source-edition-5.md) | 400 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `theorem` | [coeFn_zero](declarations/coefn-zero.md) | 406 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `theorem` | [zero_apply](declarations/zero-apply.md) | 411 | `BLOCKED_NATIVE_ADMISSION` |
| 51 | `instance` | [(anonymous)](declarations/instance-source-edition-4.md) | 415 | `BLOCKED_NATIVE_ADMISSION` |
| 52 | `instance` | [(anonymous)](declarations/instance-source-edition-8.md) | 418 | `BLOCKED_NATIVE_ADMISSION` |
| 53 | `theorem` | [coeFn_add](declarations/coefn-add.md) | 429 | `BLOCKED_NATIVE_ADMISSION` |
| 54 | `theorem` | [add_apply](declarations/add-apply.md) | 434 | `BLOCKED_NATIVE_ADMISSION` |
| 55 | `instance` | [(anonymous)](declarations/instance-source-edition-13.md) | 438 | `BLOCKED_NATIVE_ADMISSION` |
| 56 | `def` | [coeFnAddMonoidHom](declarations/coefnaddmonoidhom.md) | 445 | `BLOCKED_NATIVE_ADMISSION` |
| 57 | `def` | [evalAddMonoidHom](declarations/evaladdmonoidhom.md) | 453 | `BLOCKED_NATIVE_ADMISSION` |
| 58 | `theorem` | [coeFn_sum](declarations/coefn-sum.md) | 460 | `BLOCKED_NATIVE_ADMISSION` |
| 59 | `theorem` | [sum_apply](declarations/sum-apply.md) | 466 | `BLOCKED_NATIVE_ADMISSION` |
| 60 | `instance` | [(anonymous)](declarations/instance-source-edition-10.md) | 473 | `BLOCKED_NATIVE_ADMISSION` |
| 61 | `instance` | [(anonymous)](declarations/instance.md) | 484 | `BLOCKED_NATIVE_ADMISSION` |
| 62 | `instance` | [(anonymous)](declarations/instance-source-edition-9.md) | 498 | `BLOCKED_NATIVE_ADMISSION` |
| 63 | `theorem` | [coeFn_neg](declarations/coefn-neg.md) | 507 | `BLOCKED_NATIVE_ADMISSION` |
| 64 | `theorem` | [neg_apply](declarations/neg-apply.md) | 512 | `BLOCKED_NATIVE_ADMISSION` |
| 65 | `instance` | [(anonymous)](declarations/instance-source-edition-6.md) | 516 | `BLOCKED_NATIVE_ADMISSION` |
| 66 | `theorem` | [coeFn_sub](declarations/coefn-sub.md) | 520 | `BLOCKED_NATIVE_ADMISSION` |
| 67 | `theorem` | [sub_apply](declarations/sub-apply.md) | 525 | `BLOCKED_NATIVE_ADMISSION` |
| 68 | `instance` | [(anonymous)](declarations/instance-source-edition-3.md) | 529 | `BLOCKED_NATIVE_ADMISSION` |
| 69 | `def` | [comp](declarations/comp.md) | 542 | `BLOCKED_NATIVE_ADMISSION` |
| 70 | `theorem` | [comp_apply](declarations/comp-apply.md) | 551 | `BLOCKED_NATIVE_ADMISSION` |
| 71 | `def` | [_root_.LinearMap.compQuadraticForm](declarations/root-linearmap-compquadraticform.md) | 557 | `BLOCKED_NATIVE_ADMISSION` |
| 72 | `def` | [linMulLin](declarations/linmullin.md) | 573 | `BLOCKED_NATIVE_ADMISSION` |
| 73 | `theorem` | [linMulLin_apply](declarations/linmullin-apply.md) | 585 | `BLOCKED_NATIVE_ADMISSION` |
| 74 | `theorem` | [add_linMulLin](declarations/add-linmullin.md) | 590 | `BLOCKED_NATIVE_ADMISSION` |
| 75 | `theorem` | [linMulLin_add](declarations/linmullin-add.md) | 595 | `BLOCKED_NATIVE_ADMISSION` |
| 76 | `theorem` | [linMulLin_comp](declarations/linmullin-comp.md) | 602 | `BLOCKED_NATIVE_ADMISSION` |
| 77 | `def` | [sq](declarations/sq.md) | 611 | `BLOCKED_NATIVE_ADMISSION` |
| 78 | `def` | [proj](declarations/proj.md) | 616 | `BLOCKED_NATIVE_ADMISSION` |
| 79 | `theorem` | [proj_apply](declarations/proj-apply.md) | 621 | `BLOCKED_NATIVE_ADMISSION` |
| 80 | `def` | [toQuadraticForm](declarations/toquadraticform.md) | 649 | `BLOCKED_NATIVE_ADMISSION` |
| 81 | `theorem` | [toQuadraticForm_apply](declarations/toquadraticform-apply.md) | 656 | `BLOCKED_NATIVE_ADMISSION` |
| 82 | `theorem` | [toQuadraticForm_zero](declarations/toquadraticform-zero.md) | 665 | `BLOCKED_NATIVE_ADMISSION` |
| 83 | `theorem` | [toQuadraticForm_add](declarations/toquadraticform-add.md) | 672 | `BLOCKED_NATIVE_ADMISSION` |
| 84 | `theorem` | [toQuadraticForm_smul](declarations/toquadraticform-smul.md) | 678 | `BLOCKED_NATIVE_ADMISSION` |
| 85 | `def` | [toQuadraticFormAddMonoidHom](declarations/toquadraticformaddmonoidhom.md) | 689 | `BLOCKED_NATIVE_ADMISSION` |
| 86 | `def` | [toQuadraticFormLinearMap](declarations/toquadraticformlinearmap.md) | 697 | `BLOCKED_NATIVE_ADMISSION` |
| 87 | `theorem` | [toQuadraticForm_list_sum](declarations/toquadraticform-list-sum.md) | 706 | `BLOCKED_NATIVE_ADMISSION` |
| 88 | `theorem` | [toQuadraticForm_multiset_sum](declarations/toquadraticform-multiset-sum.md) | 712 | `BLOCKED_NATIVE_ADMISSION` |
| 89 | `theorem` | [toQuadraticForm_sum](declarations/toquadraticform-sum.md) | 718 | `BLOCKED_NATIVE_ADMISSION` |
| 90 | `theorem` | [toQuadraticForm_eq_zero](declarations/toquadraticform-eq-zero.md) | 724 | `BLOCKED_NATIVE_ADMISSION` |
| 91 | `theorem` | [polar_to_quadratic_form](declarations/polar-to-quadratic-form.md) | 736 | `BLOCKED_NATIVE_ADMISSION` |
| 92 | `theorem` | [toQuadraticForm_neg](declarations/toquadraticform-neg.md) | 742 | `BLOCKED_NATIVE_ADMISSION` |
| 93 | `theorem` | [toQuadraticForm_sub](declarations/toquadraticform-sub.md) | 747 | `BLOCKED_NATIVE_ADMISSION` |
| 94 | `def` | [associatedHom](declarations/associatedhom.md) | 775 | `BLOCKED_NATIVE_ADMISSION` |
| 95 | `theorem` | [associated_apply](declarations/associated-apply.md) | 793 | `BLOCKED_NATIVE_ADMISSION` |
| 96 | `theorem` | [associated_isSymm](declarations/associated-issymm.md) | 797 | `BLOCKED_NATIVE_ADMISSION` |
| 97 | `theorem` | [associated_comp](declarations/associated-comp.md) | 802 | `BLOCKED_NATIVE_ADMISSION` |
| 98 | `theorem` | [associated_toQuadraticForm](declarations/associated-toquadraticform.md) | 808 | `BLOCKED_NATIVE_ADMISSION` |
| 99 | `theorem` | [associated_left_inverse](declarations/associated-left-inverse.md) | 813 | `BLOCKED_NATIVE_ADMISSION` |
| 100 | `theorem` | [associated_eq_self_apply](declarations/associated-eq-self-apply.md) | 820 | `BLOCKED_NATIVE_ADMISSION` |
| 101 | `theorem` | [toQuadraticForm_associated](declarations/toquadraticform-associated.md) | 825 | `BLOCKED_NATIVE_ADMISSION` |
| 102 | `theorem` | [associated_rightInverse](declarations/associated-rightinverse.md) | 831 | `BLOCKED_NATIVE_ADMISSION` |
| 103 | `abbrev` | [associated'](declarations/associated-source-edition-2.md) | 838 | `BLOCKED_NATIVE_ADMISSION` |
| 104 | `instance` | [canLift](declarations/canlift.md) | 843 | `BLOCKED_NATIVE_ADMISSION` |
| 105 | `theorem` | [exists_quadraticForm_ne_zero](declarations/exists-quadraticform-ne-zero.md) | 849 | `BLOCKED_NATIVE_ADMISSION` |
| 106 | `abbrev` | [associated](declarations/associated.md) | 871 | `BLOCKED_NATIVE_ADMISSION` |
| 107 | `theorem` | [associated_linMulLin](declarations/associated-linmullin.md) | 876 | `BLOCKED_NATIVE_ADMISSION` |
| 108 | `lemma` | [associated_sq](declarations/associated-sq.md) | 887 | `BLOCKED_NATIVE_ADMISSION` |
| 109 | `def` | [Anisotropic](declarations/anisotropic.md) | 900 | `BLOCKED_NATIVE_ADMISSION` |
| 110 | `theorem` | [not_anisotropic_iff_exists](declarations/not-anisotropic-iff-exists.md) | 904 | `BLOCKED_NATIVE_ADMISSION` |
| 111 | `theorem` | [Anisotropic.eq_zero_iff](declarations/anisotropic-eq-zero-iff.md) | 909 | `BLOCKED_NATIVE_ADMISSION` |
| 112 | `theorem` | [nondegenerate_of_anisotropic](declarations/nondegenerate-of-anisotropic.md) | 921 | `BLOCKED_NATIVE_ADMISSION` |
| 113 | `def` | [PosDef](declarations/posdef.md) | 940 | `BLOCKED_NATIVE_ADMISSION` |
| 114 | `theorem` | [PosDef.smul](declarations/posdef-smul.md) | 944 | `BLOCKED_NATIVE_ADMISSION` |
| 115 | `theorem` | [PosDef.nonneg](declarations/posdef-nonneg.md) | 950 | `BLOCKED_NATIVE_ADMISSION` |
| 116 | `theorem` | [PosDef.anisotropic](declarations/posdef-anisotropic.md) | 954 | `BLOCKED_NATIVE_ADMISSION` |
| 117 | `theorem` | [posDefOfNonneg](declarations/posdefofnonneg.md) | 962 | `BLOCKED_NATIVE_ADMISSION` |
| 118 | `theorem` | [posDef_iff_nonneg](declarations/posdef-iff-nonneg.md) | 966 | `BLOCKED_NATIVE_ADMISSION` |
| 119 | `theorem` | [PosDef.add](declarations/posdef-add.md) | 970 | `BLOCKED_NATIVE_ADMISSION` |
| 120 | `theorem` | [linMulLinSelfPosDef](declarations/linmullinselfposdef.md) | 974 | `BLOCKED_NATIVE_ADMISSION` |
| 121 | `def` | [Matrix.toQuadraticForm'](declarations/matrix-toquadraticform.md) | 999 | `BLOCKED_NATIVE_ADMISSION` |
| 122 | `def` | [QuadraticForm.toMatrix'](declarations/quadraticform-tomatrix.md) | 1006 | `BLOCKED_NATIVE_ADMISSION` |
| 123 | `theorem` | [QuadraticForm.toMatrix'_smul](declarations/quadraticform-tomatrix-smul.md) | 1012 | `BLOCKED_NATIVE_ADMISSION` |
| 124 | `theorem` | [QuadraticForm.isSymm_toMatrix'](declarations/quadraticform-issymm-tomatrix.md) | 1017 | `BLOCKED_NATIVE_ADMISSION` |
| 125 | `theorem` | [toMatrix'_comp](declarations/tomatrix-comp.md) | 1036 | `BLOCKED_NATIVE_ADMISSION` |
| 126 | `def` | [discr](declarations/discr.md) | 1047 | `BLOCKED_NATIVE_ADMISSION` |
| 127 | `theorem` | [discr_smul](declarations/discr-smul.md) | 1051 | `BLOCKED_NATIVE_ADMISSION` |
| 128 | `theorem` | [discr_comp](declarations/discr-comp.md) | 1055 | `BLOCKED_NATIVE_ADMISSION` |
| 129 | `theorem` | [nondegenerate_of_anisotropic](declarations/nondegenerate-of-anisotropic-source-edition-2.md) | 1076 | `BLOCKED_NATIVE_ADMISSION` |
| 130 | `theorem` | [exists_bilinForm_self_ne_zero](declarations/exists-bilinform-self-ne-zero.md) | 1087 | `BLOCKED_NATIVE_ADMISSION` |
| 131 | `theorem` | [exists_orthogonal_basis](declarations/exists-orthogonal-basis.md) | 1102 | `BLOCKED_NATIVE_ADMISSION` |
| 132 | `def` | [basisRepr](declarations/basisrepr.md) | 1160 | `BLOCKED_NATIVE_ADMISSION` |
| 133 | `theorem` | [basisRepr_apply](declarations/basisrepr-apply.md) | 1165 | `BLOCKED_NATIVE_ADMISSION` |
| 134 | `def` | [weightedSumSquares](declarations/weightedsumsquares.md) | 1179 | `BLOCKED_NATIVE_ADMISSION` |
| 135 | `theorem` | [weightedSumSquares_apply](declarations/weightedsumsquares-apply.md) | 1187 | `BLOCKED_NATIVE_ADMISSION` |
| 136 | `theorem` | [basisRepr_eq_of_iIsOrtho](declarations/basisrepr-eq-of-iisortho.md) | 1193 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=393a000ca31d4f38834a2f3c4ca9de1c98bc54f240867eee580445c2dbc93938 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/Basic/Variant5fdd513181c3f4bdb3aeb732f206d685f05569c081cf446fbf94f33e36132d65.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
