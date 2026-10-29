# Sesquilinear Form Basic Public

[Complete source index](../../../complete-source-index.md) · [Up one directory](../../../complete-source-index.md) · [Full source](source.md)

**107 observed declarations and anonymous commands**, 89 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Algebra/LinearAlgebra/Basic/Variantc325f7932bdb39995e33e2bd2e12a0046b123e234cfa0667202eec775bbe15e8.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `b936a4c813ee9e5ce378488e6a7c539c4641b693`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SesquilinearFormBasicPublic.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [IsOrtho](declarations/isortho.md) | 59 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `theorem` | [isOrtho_def](declarations/isortho-def.md) | 63 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `theorem` | [isOrtho_zero_left](declarations/isortho-zero-left.md) | 67 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `theorem` | [isOrtho_zero_right](declarations/isortho-zero-right.md) | 72 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [isOrtho_flip](declarations/isortho-flip.md) | 76 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `def` | [IsOrthoᵢ](declarations/isortho-source-edition-2.md) | 82 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [isOrthoᵢ_def](declarations/isortho-def-source-edition-2.md) | 85 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [isOrthoᵢ_flip](declarations/isortho-flip-source-edition-2.md) | 89 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [ortho_smul_left](declarations/ortho-smul-left.md) | 103 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [ortho_smul_right](declarations/ortho-smul-right.md) | 115 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [linearIndependent_of_isOrthoᵢ](declarations/linearindependent-of-isortho.md) | 121 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `def` | [IsRefl](declarations/isrefl-source-edition-2.md) | 144 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [eq_zero](declarations/eq-zero.md) | 153 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [eq_iff](declarations/eq-iff.md) | 155 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [domRestrict](declarations/domrestrict.md) | 160 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [flip_isRefl_iff](declarations/flip-isrefl-iff.md) | 167 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `lemma` | [ker_flip](declarations/ker-flip.md) | 170 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [ker_flip_eq_bot](declarations/ker-flip-eq-bot.md) | 174 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [ker_eq_bot_iff_ker_flip_eq_bot](declarations/ker-eq-bot-iff-ker-flip-eq-bot.md) | 177 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `structure` | [IsSymm](declarations/issymm.md) | 192 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [isSymm_def](declarations/issymm-def.md) | 195 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [isRefl](declarations/isrefl-source-edition-3.md) | 200 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [eq_iff](declarations/eq-iff-source-edition-2.md) | 204 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [domRestrict](declarations/domrestrict-source-edition-2.md) | 209 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [isSymm_zero](declarations/issymm-zero.md) | 217 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `lemma` | [IsSymm.add](declarations/issymm-add.md) | 219 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [BilinMap.isSymm_iff_eq_flip](declarations/bilinmap-issymm-iff-eq-flip.md) | 223 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [isSymm_iff_eq_flip](declarations/issymm-iff-eq-flip.md) | 227 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `structure` | [IsNonneg](declarations/isnonneg.md) | 239 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `lemma` | [isNonneg_def](declarations/isnonneg-def.md) | 242 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `lemma` | [isNonneg_zero](declarations/isnonneg-zero.md) | 246 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `lemma` | [IsNonneg.add](declarations/isnonneg-add.md) | 248 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `lemma` | [IsNonneg.smul](declarations/isnonneg-smul.md) | 252 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `structure` | [IsPosSemidef](declarations/ispossemidef.md) | 257 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `lemma` | [isPosSemidef_def](declarations/ispossemidef-def.md) | 261 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `lemma` | [isPosSemidef_zero](declarations/ispossemidef-zero.md) | 265 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `lemma` | [IsPosSemidef.add](declarations/ispossemidef-add.md) | 269 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `def` | [IsAlt](declarations/isalt.md) | 287 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `theorem` | [IsAlt.self_eq_zero](declarations/isalt-self-eq-zero.md) | 293 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `theorem` | [IsAlt.eq_of_add_add_eq_zero](declarations/isalt-eq-of-add-add-eq-zero.md) | 296 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `theorem` | [neg](declarations/neg.md) | 312 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `theorem` | [isRefl](declarations/isrefl.md) | 316 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `theorem` | [eq_iff](declarations/eq-iff-source-edition-3.md) | 320 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `theorem` | [isAlt_iff_eq_neg_flip](declarations/isalt-iff-eq-neg-flip.md) | 336 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `def` | [IsAdjointPair](declarations/isadjointpair.md) | 373 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `theorem` | [isAdjointPair_iff_comp_eq_compl₂](declarations/isadjointpair-iff-comp-eq-compl.md) | 378 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `theorem` | [isAdjointPair_zero](declarations/isadjointpair-zero.md) | 386 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `theorem` | [isAdjointPair_id](declarations/isadjointpair-id.md) | 389 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `theorem` | [isAdjointPair_one](declarations/isadjointpair-one.md) | 392 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `theorem` | [IsAdjointPair.add](declarations/isadjointpair-add.md) | 395 | `BLOCKED_NATIVE_ADMISSION` |
| 51 | `theorem` | [IsAdjointPair.comp](declarations/isadjointpair-comp.md) | 400 | `BLOCKED_NATIVE_ADMISSION` |
| 52 | `theorem` | [IsAdjointPair.mul](declarations/isadjointpair-mul.md) | 405 | `BLOCKED_NATIVE_ADMISSION` |
| 53 | `theorem` | [IsAdjointPair.sub](declarations/isadjointpair-sub.md) | 420 | `BLOCKED_NATIVE_ADMISSION` |
| 54 | `theorem` | [IsAdjointPair.smul](declarations/isadjointpair-smul.md) | 424 | `BLOCKED_NATIVE_ADMISSION` |
| 55 | `def` | [IsOrthogonal](declarations/isorthogonal.md) | 437 | `BLOCKED_NATIVE_ADMISSION` |
| 56 | `lemma` | [_root_.LinearEquiv.isAdjointPair_symm_iff](declarations/root-linearequiv-isadjointpair-symm-iff.md) | 443 | `BLOCKED_NATIVE_ADMISSION` |
| 57 | `lemma` | [isOrthogonal_of_forall_apply_same](declarations/isorthogonal-of-forall-apply-same.md) | 447 | `BLOCKED_NATIVE_ADMISSION` |
| 58 | `def` | [IsPairSelfAdjoint](declarations/ispairselfadjoint.md) | 479 | `BLOCKED_NATIVE_ADMISSION` |
| 59 | `def` | [IsSelfAdjoint](declarations/isselfadjoint.md) | 484 | `BLOCKED_NATIVE_ADMISSION` |
| 60 | `def` | [isPairSelfAdjointSubmodule](declarations/ispairselfadjointsubmodule.md) | 496 | `BLOCKED_NATIVE_ADMISSION` |
| 61 | `def` | [IsSkewAdjoint](declarations/isskewadjoint.md) | 504 | `BLOCKED_NATIVE_ADMISSION` |
| 62 | `def` | [selfAdjointSubmodule](declarations/selfadjointsubmodule.md) | 509 | `BLOCKED_NATIVE_ADMISSION` |
| 63 | `def` | [skewAdjointSubmodule](declarations/skewadjointsubmodule.md) | 514 | `BLOCKED_NATIVE_ADMISSION` |
| 64 | `theorem` | [mem_isPairSelfAdjointSubmodule](declarations/mem-ispairselfadjointsubmodule.md) | 520 | `BLOCKED_NATIVE_ADMISSION` |
| 65 | `theorem` | [isPairSelfAdjoint_equiv](declarations/ispairselfadjoint-equiv.md) | 524 | `BLOCKED_NATIVE_ADMISSION` |
| 66 | `theorem` | [isSkewAdjoint_iff_neg_self_adjoint](declarations/isskewadjoint-iff-neg-self-adjoint.md) | 542 | `BLOCKED_NATIVE_ADMISSION` |
| 67 | `theorem` | [mem_selfAdjointSubmodule](declarations/mem-selfadjointsubmodule.md) | 547 | `BLOCKED_NATIVE_ADMISSION` |
| 68 | `theorem` | [mem_skewAdjointSubmodule](declarations/mem-skewadjointsubmodule.md) | 552 | `BLOCKED_NATIVE_ADMISSION` |
| 69 | `def` | [SeparatingLeft](declarations/separatingleft.md) | 574 | `BLOCKED_NATIVE_ADMISSION` |
| 70 | `theorem` | [not_separatingLeft_zero](declarations/not-separatingleft-zero.md) | 580 | `BLOCKED_NATIVE_ADMISSION` |
| 71 | `theorem` | [SeparatingLeft.ne_zero](declarations/separatingleft-ne-zero.md) | 586 | `BLOCKED_NATIVE_ADMISSION` |
| 72 | `def` | [SeparatingRight](declarations/separatingright.md) | 592 | `BLOCKED_NATIVE_ADMISSION` |
| 73 | `def` | [Nondegenerate](declarations/nondegenerate.md) | 596 | `BLOCKED_NATIVE_ADMISSION` |
| 74 | `theorem` | [SeparatingLeft.congr](declarations/separatingleft-congr.md) | 606 | `BLOCKED_NATIVE_ADMISSION` |
| 75 | `theorem` | [SeparatingRight.congr](declarations/separatingright-congr.md) | 616 | `BLOCKED_NATIVE_ADMISSION` |
| 76 | `theorem` | [Nondegenerate.congr](declarations/nondegenerate-congr.md) | 620 | `BLOCKED_NATIVE_ADMISSION` |
| 77 | `theorem` | [separatingLeft_congr_iff](declarations/separatingleft-congr-iff.md) | 625 | `BLOCKED_NATIVE_ADMISSION` |
| 78 | `theorem` | [separatingRight_congr_iff](declarations/separatingright-congr-iff.md) | 634 | `BLOCKED_NATIVE_ADMISSION` |
| 79 | `theorem` | [nondegenerate_congr_iff](declarations/nondegenerate-congr-iff.md) | 639 | `BLOCKED_NATIVE_ADMISSION` |
| 80 | `theorem` | [flip_separatingRight](declarations/flip-separatingright.md) | 649 | `BLOCKED_NATIVE_ADMISSION` |
| 81 | `theorem` | [flip_separatingLeft](declarations/flip-separatingleft.md) | 653 | `BLOCKED_NATIVE_ADMISSION` |
| 82 | `theorem` | [flip_nondegenerate](declarations/flip-nondegenerate.md) | 657 | `BLOCKED_NATIVE_ADMISSION` |
| 83 | `theorem` | [separatingLeft_iff_linear_nontrivial](declarations/separatingleft-iff-linear-nontrivial.md) | 660 | `BLOCKED_NATIVE_ADMISSION` |
| 84 | `theorem` | [separatingRight_iff_linear_flip_nontrivial](declarations/separatingright-iff-linear-flip-nontrivial.md) | 669 | `BLOCKED_NATIVE_ADMISSION` |
| 85 | `theorem` | [separatingLeft_iff_ker_eq_bot](declarations/separatingleft-iff-ker-eq-bot.md) | 674 | `BLOCKED_NATIVE_ADMISSION` |
| 86 | `theorem` | [separatingRight_iff_flip_ker_eq_bot](declarations/separatingright-iff-flip-ker-eq-bot.md) | 678 | `BLOCKED_NATIVE_ADMISSION` |
| 87 | `theorem` | [SeparatingLeft.id](declarations/separatingleft-id.md) | 682 | `BLOCKED_NATIVE_ADMISSION` |
| 88 | `theorem` | [SeparatingRight.eval](declarations/separatingright-eval.md) | 688 | `BLOCKED_NATIVE_ADMISSION` |
| 89 | `theorem` | [IsRefl.nondegenerate_iff_separatingLeft](declarations/isrefl-nondegenerate-iff-separatingleft.md) | 699 | `BLOCKED_NATIVE_ADMISSION` |
| 90 | `theorem` | [IsRefl.nondegenerate_iff_separatingRight](declarations/isrefl-nondegenerate-iff-separatingright.md) | 705 | `BLOCKED_NATIVE_ADMISSION` |
| 91 | `lemma` | [disjoint_ker_of_nondegenerate_restrict](declarations/disjoint-ker-of-nondegenerate-restrict.md) | 711 | `BLOCKED_NATIVE_ADMISSION` |
| 92 | `lemma` | [IsSymm.nondegenerate_restrict_of_isCompl_ker](declarations/issymm-nondegenerate-restrict-of-iscompl-ker.md) | 723 | `BLOCKED_NATIVE_ADMISSION` |
| 93 | `theorem` | [IsOrthoᵢ.not_isOrtho_basis_self_of_separatingLeft](declarations/isortho-not-isortho-basis-self-of-separatingleft.md) | 749 | `BLOCKED_NATIVE_ADMISSION` |
| 94 | `theorem` | [IsOrthoᵢ.not_isOrtho_basis_self_of_separatingRight](declarations/isortho-not-isortho-basis-self-of-separatingright.md) | 766 | `BLOCKED_NATIVE_ADMISSION` |
| 95 | `theorem` | [IsOrthoᵢ.separatingLeft_of_not_isOrtho_basis_self](declarations/isortho-separatingleft-of-not-isortho-basis-self.md) | 776 | `BLOCKED_NATIVE_ADMISSION` |
| 96 | `lemma` | [IsOrthoᵢ.separatingRight_iff_not_isOrtho_basis_self](declarations/isortho-separatingright-iff-not-isortho-basis-self.md) | 800 | `BLOCKED_NATIVE_ADMISSION` |
| 97 | `theorem` | [IsOrthoᵢ.nondegenerate_of_not_isOrtho_basis_self](declarations/isortho-nondegenerate-of-not-isortho-basis-self.md) | 809 | `BLOCKED_NATIVE_ADMISSION` |
| 98 | `lemma` | [apply_smul_sub_smul_sub_eq](declarations/apply-smul-sub-smul-sub-eq.md) | 820 | `BLOCKED_NATIVE_ADMISSION` |
| 99 | `lemma` | [apply_mul_apply_le_of_forall_zero_le](declarations/apply-mul-apply-le-of-forall-zero-le.md) | 833 | `BLOCKED_NATIVE_ADMISSION` |
| 100 | `lemma` | [apply_sq_le_of_symm](declarations/apply-sq-le-of-symm.md) | 852 | `BLOCKED_NATIVE_ADMISSION` |
| 101 | `lemma` | [not_linearIndependent_of_apply_mul_apply_eq](declarations/not-linearindependent-of-apply-mul-apply-eq.md) | 858 | `BLOCKED_NATIVE_ADMISSION` |
| 102 | `lemma` | [apply_apply_same_eq_zero_iff](declarations/apply-apply-same-eq-zero-iff.md) | 873 | `BLOCKED_NATIVE_ADMISSION` |
| 103 | `lemma` | [nondegenerate_iff](declarations/nondegenerate-iff.md) | 882 | `BLOCKED_NATIVE_ADMISSION` |
| 104 | `lemma` | [nondegenerate_iff'](declarations/nondegenerate-iff-source-edition-2.md) | 890 | `BLOCKED_NATIVE_ADMISSION` |
| 105 | `lemma` | [nondegenerate_restrict_iff_disjoint_ker](declarations/nondegenerate-restrict-iff-disjoint-ker.md) | 896 | `BLOCKED_NATIVE_ADMISSION` |
| 106 | `lemma` | [apply_mul_apply_lt_iff_linearIndependent](declarations/apply-mul-apply-lt-iff-linearindependent.md) | 912 | `BLOCKED_NATIVE_ADMISSION` |
| 107 | `lemma` | [apply_sq_lt_iff_linearIndependent_of_symm](declarations/apply-sq-lt-iff-linearindependent-of-symm.md) | 939 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=338ce92f0f56af2531d94927c6bdd6b748d4a31791d4ce1b395ba753a2777086 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/Basic/Variantc325f7932bdb39995e33e2bd2e12a0046b123e234cfa0667202eec775bbe15e8.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
