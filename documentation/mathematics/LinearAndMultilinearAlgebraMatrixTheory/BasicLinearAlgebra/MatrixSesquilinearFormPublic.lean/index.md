# Matrix Sesquilinear Form Public

[Complete source index](../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**111 observed declarations and anonymous commands**, 96 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Algebra/LinearAlgebra/SesquilinearForm/Variant4c452b093c7e19028193ada213285306e845722af63737490768deae87e48658.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `6d74085bad5fd25e904dbaaab2b949f931536d2a`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixSesquilinearFormPublic.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [Matrix.toLinearMap₂'Aux](declarations/matrix-tolinearmap-aux.md) | 57 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `theorem` | [Matrix.toLinearMap₂'Aux_single](declarations/matrix-tolinearmap-aux-single.md) | 68 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `def` | [LinearMap.toMatrix₂Aux](declarations/linearmap-tomatrix-aux.md) | 96 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `theorem` | [LinearMap.toMatrix₂Aux_apply](declarations/linearmap-tomatrix-aux-apply.md) | 103 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [LinearMap.toLinearMap₂'Aux_toMatrix₂Aux](declarations/linearmap-tolinearmap-aux-tomatrix-aux.md) | 110 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [Matrix.toMatrix₂Aux_toLinearMap₂'Aux](declarations/matrix-tomatrix-aux-tolinearmap-aux.md) | 117 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `def` | [LinearMap.toMatrixₛₗ₂'](declarations/linearmap-tomatrix-source-edition-3.md) | 145 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `def` | [LinearMap.toMatrix₂'](declarations/linearmap-tomatrix-source-edition-2.md) | 153 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `def` | [Matrix.toLinearMapₛₗ₂'](declarations/matrix-tolinearmap.md) | 159 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `def` | [Matrix.toLinearMap₂'](declarations/matrix-tolinearmap-source-edition-2.md) | 163 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [Matrix.toLinearMapₛₗ₂'_aux_eq](declarations/matrix-tolinearmap-aux-eq.md) | 168 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [Matrix.toLinearMapₛₗ₂'_apply](declarations/matrix-tolinearmap-apply-source-edition-2.md) | 172 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [Matrix.toLinearMap₂'_apply](declarations/matrix-tolinearmap-apply-source-edition-5.md) | 179 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [Matrix.toLinearMap₂'_apply'](declarations/matrix-tolinearmap-apply-source-edition-4.md) | 185 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [Matrix.toLinearMapₛₗ₂'_single](declarations/matrix-tolinearmap-single.md) | 194 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [Matrix.toLinearMap₂'_single](declarations/matrix-tolinearmap-single-source-edition-2.md) | 199 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [LinearMap.toMatrixₛₗ₂'_symm](declarations/linearmap-tomatrix-symm-source-edition-3.md) | 204 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [Matrix.toLinearMapₛₗ₂'_symm](declarations/matrix-tolinearmap-symm-source-edition-2.md) | 209 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [Matrix.toLinearMapₛₗ₂'_toMatrix'](declarations/matrix-tolinearmap-tomatrix.md) | 214 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [Matrix.toLinearMap₂'_toMatrix'](declarations/matrix-tolinearmap-tomatrix-source-edition-4.md) | 219 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [LinearMap.toMatrix'_toLinearMapₛₗ₂'](declarations/linearmap-tomatrix-tolinearmap-source-edition-3.md) | 224 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [LinearMap.toMatrix'_toLinearMap₂'](declarations/linearmap-tomatrix-tolinearmap.md) | 229 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [LinearMap.toMatrixₛₗ₂'_apply](declarations/linearmap-tomatrix-apply-source-edition-2.md) | 234 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [LinearMap.toMatrix₂'_apply](declarations/linearmap-tomatrix-apply-source-edition-3.md) | 239 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [LinearMap.toMatrix₂'_compl₁₂](declarations/linearmap-tomatrix-compl-source-edition-3.md) | 256 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [LinearMap.toMatrix₂'_comp](declarations/linearmap-tomatrix-comp.md) | 277 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [LinearMap.toMatrix₂'_compl₂](declarations/linearmap-tomatrix-compl.md) | 282 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [LinearMap.mul_toMatrix₂'_mul](declarations/linearmap-mul-tomatrix-mul-source-edition-2.md) | 287 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [LinearMap.mul_toMatrix'](declarations/linearmap-mul-tomatrix.md) | 292 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [LinearMap.toMatrix₂'_mul](declarations/linearmap-tomatrix-mul-source-edition-2.md) | 296 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [Matrix.toLinearMap₂'_comp](declarations/matrix-tolinearmap-comp.md) | 300 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `def` | [LinearMap.toMatrix₂](declarations/linearmap-tomatrix.md) | 329 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `def` | [Matrix.toLinearMapₛₗ₂](declarations/matrix-tolinearmap-source-edition-4.md) | 338 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `def` | [Matrix.toLinearMap₂](declarations/matrix-tolinearmap-source-edition-3.md) | 343 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `theorem` | [LinearMap.toMatrix₂_apply](declarations/linearmap-tomatrix-apply.md) | 348 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `theorem` | [Matrix.toLinearMapₛₗ₂_apply](declarations/matrix-tolinearmap-apply.md) | 355 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `theorem` | [Matrix.toLinearMap₂_apply](declarations/matrix-tolinearmap-apply-source-edition-3.md) | 363 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `theorem` | [Matrix.toLinearMapₛₗ₂_apply_basis](declarations/matrix-tolinearmap-apply-basis-source-edition-2.md) | 370 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `theorem` | [Matrix.toLinearMap₂_apply_basis](declarations/matrix-tolinearmap-apply-basis.md) | 377 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `theorem` | [dotProduct_toMatrix₂_mulVec](declarations/dotproduct-tomatrix-mulvec.md) | 381 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `lemma` | [apply_eq_dotProduct_toMatrix₂_mulVec](declarations/apply-eq-dotproduct-tomatrix-mulvec.md) | 391 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `theorem` | [LinearMap.toMatrix₂Aux_eq](declarations/linearmap-tomatrix-aux-eq.md) | 401 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `theorem` | [LinearMap.toMatrix₂_symm'](declarations/linearmap-tomatrix-symm.md) | 406 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `theorem` | [LinearMap.toMatrix₂_symm](declarations/linearmap-tomatrix-symm-source-edition-2.md) | 410 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `theorem` | [Matrix.toLinearMapₛₗ₂_symm](declarations/matrix-tolinearmap-symm.md) | 415 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `theorem` | [Matrix.toLinearMap₂_symm](declarations/matrix-tolinearmap-symm-source-edition-3.md) | 419 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `theorem` | [Matrix.toLinearMap₂_basisFun](declarations/matrix-tolinearmap-basisfun.md) | 423 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `theorem` | [LinearMap.toMatrix₂_basisFun](declarations/linearmap-tomatrix-basisfun.md) | 430 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `theorem` | [Matrix.toLinearMapₛₗ₂_toMatrix₂](declarations/matrix-tolinearmap-tomatrix-source-edition-2.md) | 437 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `theorem` | [Matrix.toLinearMap₂_toMatrix₂](declarations/matrix-tolinearmap-tomatrix-source-edition-3.md) | 441 | `BLOCKED_NATIVE_ADMISSION` |
| 51 | `theorem` | [LinearMap.toMatrix₂_toLinearMapₛₗ₂](declarations/linearmap-tomatrix-tolinearmap-source-edition-2.md) | 446 | `BLOCKED_NATIVE_ADMISSION` |
| 52 | `theorem` | [LinearMap.toMatrix₂_toLinearMap₂](declarations/linearmap-tomatrix-tolinearmap-source-edition-4.md) | 450 | `BLOCKED_NATIVE_ADMISSION` |
| 53 | `theorem` | [LinearMap.toMatrix₂_compl₁₂](declarations/linearmap-tomatrix-compl-source-edition-4.md) | 463 | `BLOCKED_NATIVE_ADMISSION` |
| 54 | `theorem` | [LinearMap.toMatrix₂_comp](declarations/linearmap-tomatrix-comp-source-edition-2.md) | 485 | `BLOCKED_NATIVE_ADMISSION` |
| 55 | `theorem` | [LinearMap.toMatrix₂_compl₂](declarations/linearmap-tomatrix-compl-source-edition-2.md) | 491 | `BLOCKED_NATIVE_ADMISSION` |
| 56 | `theorem` | [LinearMap.toMatrix₂_mul_basis_toMatrix](declarations/linearmap-tomatrix-mul-basis-tomatrix.md) | 498 | `BLOCKED_NATIVE_ADMISSION` |
| 57 | `theorem` | [LinearMap.mul_toMatrix₂_mul](declarations/linearmap-mul-tomatrix-mul.md) | 505 | `BLOCKED_NATIVE_ADMISSION` |
| 58 | `theorem` | [LinearMap.mul_toMatrix₂](declarations/linearmap-mul-tomatrix-source-edition-2.md) | 511 | `BLOCKED_NATIVE_ADMISSION` |
| 59 | `theorem` | [LinearMap.toMatrix₂_mul](declarations/linearmap-tomatrix-mul.md) | 516 | `BLOCKED_NATIVE_ADMISSION` |
| 60 | `theorem` | [Matrix.toLinearMap₂_compl₁₂](declarations/matrix-tolinearmap-compl.md) | 521 | `BLOCKED_NATIVE_ADMISSION` |
| 61 | `def` | [Matrix.IsAdjointPair](declarations/matrix-isadjointpair.md) | 550 | `BLOCKED_NATIVE_ADMISSION` |
| 62 | `def` | [Matrix.IsSelfAdjoint](declarations/matrix-isselfadjoint.md) | 555 | `BLOCKED_NATIVE_ADMISSION` |
| 63 | `def` | [Matrix.IsSkewAdjoint](declarations/matrix-isskewadjoint.md) | 560 | `BLOCKED_NATIVE_ADMISSION` |
| 64 | `theorem` | [isAdjointPair_toLinearMap₂'](declarations/isadjointpair-tolinearmap.md) | 566 | `BLOCKED_NATIVE_ADMISSION` |
| 65 | `theorem` | [isAdjointPair_toLinearMap₂](declarations/isadjointpair-tolinearmap-source-edition-2.md) | 583 | `BLOCKED_NATIVE_ADMISSION` |
| 66 | `theorem` | [Matrix.isAdjointPair_equiv](declarations/matrix-isadjointpair-equiv.md) | 599 | `BLOCKED_NATIVE_ADMISSION` |
| 67 | `def` | [pairSelfAdjointMatricesSubmodule](declarations/pairselfadjointmatricessubmodule.md) | 622 | `BLOCKED_NATIVE_ADMISSION` |
| 68 | `theorem` | [mem_pairSelfAdjointMatricesSubmodule](declarations/mem-pairselfadjointmatricessubmodule.md) | 629 | `BLOCKED_NATIVE_ADMISSION` |
| 69 | `def` | [selfAdjointMatricesSubmodule](declarations/selfadjointmatricessubmodule.md) | 637 | `BLOCKED_NATIVE_ADMISSION` |
| 70 | `theorem` | [mem_selfAdjointMatricesSubmodule](declarations/mem-selfadjointmatricessubmodule.md) | 641 | `BLOCKED_NATIVE_ADMISSION` |
| 71 | `def` | [skewAdjointMatricesSubmodule](declarations/skewadjointmatricessubmodule.md) | 647 | `BLOCKED_NATIVE_ADMISSION` |
| 72 | `theorem` | [mem_skewAdjointMatricesSubmodule](declarations/mem-skewadjointmatricessubmodule.md) | 651 | `BLOCKED_NATIVE_ADMISSION` |
| 73 | `theorem` | [_root_.Matrix.SeparatingLeft.toLinearMap₂'](declarations/root-matrix-separatingleft-tolinearmap.md) | 676 | `BLOCKED_NATIVE_ADMISSION` |
| 74 | `theorem` | [_root_.Matrix.SeparatingRight.toLinearMap₂'](declarations/root-matrix-separatingright-tolinearmap-source-edition-2.md) | 680 | `BLOCKED_NATIVE_ADMISSION` |
| 75 | `theorem` | [_root_.Matrix.Nondegenerate.toLinearMap₂'](declarations/root-matrix-nondegenerate-tolinearmap-source-edition-2.md) | 684 | `BLOCKED_NATIVE_ADMISSION` |
| 76 | `theorem` | [_root_.Matrix.separatingLeft_toLinearMap₂'_iff](declarations/root-matrix-separatingleft-tolinearmap-iff.md) | 689 | `BLOCKED_NATIVE_ADMISSION` |
| 77 | `theorem` | [_root_.Matrix.separatingRight_toLinearMap₂'_iff](declarations/root-matrix-separatingright-tolinearmap-iff.md) | 695 | `BLOCKED_NATIVE_ADMISSION` |
| 78 | `theorem` | [_root_.Matrix.nondegenerate_toLinearMap₂'_iff](declarations/root-matrix-nondegenerate-tolinearmap-iff.md) | 701 | `BLOCKED_NATIVE_ADMISSION` |
| 79 | `theorem` | [separatingLeft_toMatrix₂'_iff](declarations/separatingleft-tomatrix-iff.md) | 707 | `BLOCKED_NATIVE_ADMISSION` |
| 80 | `theorem` | [separatingRight_toMatrix₂'_iff](declarations/separatingright-tomatrix-iff-source-edition-2.md) | 712 | `BLOCKED_NATIVE_ADMISSION` |
| 81 | `theorem` | [nondegenerate_toMatrix₂'_iff](declarations/nondegenerate-tomatrix-iff.md) | 718 | `BLOCKED_NATIVE_ADMISSION` |
| 82 | `theorem` | [SeparatingLeft.toMatrix₂'](declarations/separatingleft-tomatrix-source-edition-2.md) | 722 | `BLOCKED_NATIVE_ADMISSION` |
| 83 | `theorem` | [SeparatingRight.toMatrix₂'](declarations/separatingright-tomatrix.md) | 725 | `BLOCKED_NATIVE_ADMISSION` |
| 84 | `theorem` | [Nondegenerate.toMatrix₂'](declarations/nondegenerate-tomatrix.md) | 728 | `BLOCKED_NATIVE_ADMISSION` |
| 85 | `theorem` | [_root_.Matrix.separatingLeft_toLinearMap₂'_iff_separatingLeft_toLinearMap₂](declarations/root-matrix-separatingleft-tolinearmap-iff-separatingleft-tolinearmap.md) | 743 | `BLOCKED_NATIVE_ADMISSION` |
| 86 | `theorem` | [_root_.Matrix.separatingRight_toLinearMap₂'_iff_separatingRight_toLinearMap₂](declarations/root-matrix-separatingright-tolinearmap-iff-separatingright-tolinearmap.md) | 747 | `BLOCKED_NATIVE_ADMISSION` |
| 87 | `theorem` | [_root_.Matrix.nondegenerate_toLinearMap₂'_iff_nondegenerate_toLinearMap₂](declarations/root-matrix-nondegenerate-tolinearmap-iff-nondegenerate-tolinearmap.md) | 751 | `BLOCKED_NATIVE_ADMISSION` |
| 88 | `theorem` | [_root_.Matrix.separatingLeft_toLinearMap₂_iff](declarations/root-matrix-separatingleft-tolinearmap-iff-source-edition-2.md) | 756 | `BLOCKED_NATIVE_ADMISSION` |
| 89 | `theorem` | [_root_.Matrix.separatingRight_toLinearMap₂_iff](declarations/root-matrix-separatingright-tolinearmap-iff-source-edition-2.md) | 762 | `BLOCKED_NATIVE_ADMISSION` |
| 90 | `theorem` | [_root_.Matrix.nondegenerate_toLinearMap₂_iff](declarations/root-matrix-nondegenerate-tolinearmap-iff-source-edition-2.md) | 768 | `BLOCKED_NATIVE_ADMISSION` |
| 91 | `theorem` | [_root_.Matrix.SeparatingLeft.toLinearMap₂](declarations/root-matrix-separatingleft-tolinearmap-source-edition-2.md) | 773 | `BLOCKED_NATIVE_ADMISSION` |
| 92 | `theorem` | [_root_.Matrix.SeparatingRight.toLinearMap₂](declarations/root-matrix-separatingright-tolinearmap.md) | 777 | `BLOCKED_NATIVE_ADMISSION` |
| 93 | `theorem` | [_root_.Matrix.Nondegenerate.toLinearMap₂](declarations/root-matrix-nondegenerate-tolinearmap.md) | 781 | `BLOCKED_NATIVE_ADMISSION` |
| 94 | `theorem` | [separatingLeft_toMatrix₂_iff](declarations/separatingleft-tomatrix-iff-source-edition-2.md) | 786 | `BLOCKED_NATIVE_ADMISSION` |
| 95 | `theorem` | [separatingRight_toMatrix₂_iff](declarations/separatingright-tomatrix-iff.md) | 792 | `BLOCKED_NATIVE_ADMISSION` |
| 96 | `theorem` | [nondegenerate_toMatrix₂_iff](declarations/nondegenerate-tomatrix-iff-source-edition-2.md) | 798 | `BLOCKED_NATIVE_ADMISSION` |
| 97 | `theorem` | [SeparatingLeft.toMatrix₂](declarations/separatingleft-tomatrix.md) | 803 | `BLOCKED_NATIVE_ADMISSION` |
| 98 | `theorem` | [SeparatingRight.toMatrix₂](declarations/separatingright-tomatrix-source-edition-2.md) | 807 | `BLOCKED_NATIVE_ADMISSION` |
| 99 | `theorem` | [Nondegenerate.toMatrix₂](declarations/nondegenerate-tomatrix-source-edition-2.md) | 811 | `BLOCKED_NATIVE_ADMISSION` |
| 100 | `theorem` | [nondegenerate_toLinearMap₂'_iff_det_ne_zero](declarations/nondegenerate-tolinearmap-iff-det-ne-zero.md) | 829 | `BLOCKED_NATIVE_ADMISSION` |
| 101 | `theorem` | [separatingLeft_toLinearMap₂'_iff_det_ne_zero](declarations/separatingleft-tolinearmap-iff-det-ne-zero.md) | 833 | `BLOCKED_NATIVE_ADMISSION` |
| 102 | `theorem` | [separatingRight_toLinearMap₂'_iff_det_ne_zero](declarations/separatingright-tolinearmap-iff-det-ne-zero.md) | 837 | `BLOCKED_NATIVE_ADMISSION` |
| 103 | `theorem` | [separatingLeft_toLinearMap₂'_of_det_ne_zero'](declarations/separatingleft-tolinearmap-of-det-ne-zero.md) | 841 | `BLOCKED_NATIVE_ADMISSION` |
| 104 | `theorem` | [separatingRight_toLinearMap₂'_of_det_ne_zero'](declarations/separatingright-tolinearmap-of-det-ne-zero.md) | 845 | `BLOCKED_NATIVE_ADMISSION` |
| 105 | `theorem` | [nondegenerate_toLinearMap₂'_of_det_ne_zero'](declarations/nondegenerate-tolinearmap-of-det-ne-zero.md) | 849 | `BLOCKED_NATIVE_ADMISSION` |
| 106 | `theorem` | [separatingLeft_iff_det_ne_zero](declarations/separatingleft-iff-det-ne-zero.md) | 858 | `BLOCKED_NATIVE_ADMISSION` |
| 107 | `theorem` | [separatingLeft_of_det_ne_zero](declarations/separatingleft-of-det-ne-zero.md) | 862 | `BLOCKED_NATIVE_ADMISSION` |
| 108 | `theorem` | [separatingRight_iff_det_ne_zero](declarations/separatingright-iff-det-ne-zero.md) | 865 | `BLOCKED_NATIVE_ADMISSION` |
| 109 | `theorem` | [separatingRight_of_det_ne_zero](declarations/separatingright-of-det-ne-zero.md) | 869 | `BLOCKED_NATIVE_ADMISSION` |
| 110 | `theorem` | [nondegenerate_iff_det_ne_zero](declarations/nondegenerate-iff-det-ne-zero.md) | 872 | `BLOCKED_NATIVE_ADMISSION` |
| 111 | `theorem` | [nondegenerate_of_det_ne_zero](declarations/nondegenerate-of-det-ne-zero.md) | 876 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=dab9fb980af1bf4250b288c773de18412950a944805b0114f364995b374d3d20 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/SesquilinearForm/Variant4c452b093c7e19028193ada213285306e845722af63737490768deae87e48658.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
