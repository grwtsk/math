# Matrix Sesquilinear Form Namespaced

[Complete source index](../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**75 observed declarations and anonymous commands**, 61 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Algebra/LinearAlgebra/SesquilinearForm/Variant832413912de848f94658f0471a4f545d5fa9a56c224f837b750faa059458f5ef.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `1049649acf248accb66a28470beb93788cca2c9c`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixSesquilinearFormNamespaced.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [Matrix.toLinearMap₂'Aux](declarations/matrix-tolinearmap-aux.md) | 65 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `theorem` | [Matrix.toLinearMap₂'Aux_single](declarations/matrix-tolinearmap-aux-single.md) | 78 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `def` | [LinearMap.toMatrix₂Aux](declarations/linearmap-tomatrix-aux.md) | 106 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `theorem` | [LinearMap.toMatrix₂Aux_apply](declarations/linearmap-tomatrix-aux-apply.md) | 113 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [LinearMap.toLinearMap₂'Aux_toMatrix₂Aux](declarations/linearmap-tolinearmap-aux-tomatrix-aux.md) | 120 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [Matrix.toMatrix₂Aux_toLinearMap₂'Aux](declarations/matrix-tomatrix-aux-tolinearmap-aux.md) | 127 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `def` | [LinearMap.toMatrixₛₗ₂'](declarations/linearmap-tomatrix.md) | 155 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `def` | [LinearMap.toMatrix₂'](declarations/linearmap-tomatrix-source-edition-2.md) | 163 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `def` | [Matrix.toLinearMapₛₗ₂'](declarations/matrix-tolinearmap-source-edition-3.md) | 169 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `def` | [Matrix.toLinearMap₂'](declarations/matrix-tolinearmap-source-edition-2.md) | 173 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [Matrix.toLinearMapₛₗ₂'_aux_eq](declarations/matrix-tolinearmap-aux-eq.md) | 178 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [Matrix.toLinearMapₛₗ₂'_apply](declarations/matrix-tolinearmap-apply-source-edition-2.md) | 182 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [Matrix.toLinearMap₂'_apply](declarations/matrix-tolinearmap-apply.md) | 189 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [Matrix.toLinearMap₂'_apply'](declarations/matrix-tolinearmap-apply-source-edition-4.md) | 195 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [Matrix.toLinearMapₛₗ₂'_single](declarations/matrix-tolinearmap-single-source-edition-2.md) | 204 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [Matrix.toLinearMap₂'_single](declarations/matrix-tolinearmap-single.md) | 209 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [LinearMap.toMatrixₛₗ₂'_symm](declarations/linearmap-tomatrix-symm-source-edition-2.md) | 214 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [Matrix.toLinearMapₛₗ₂'_symm](declarations/matrix-tolinearmap-symm.md) | 219 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [Matrix.toLinearMapₛₗ₂'_toMatrix'](declarations/matrix-tolinearmap-tomatrix.md) | 224 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [Matrix.toLinearMap₂'_toMatrix'](declarations/matrix-tolinearmap-tomatrix-source-edition-2.md) | 229 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [LinearMap.toMatrix'_toLinearMapₛₗ₂'](declarations/linearmap-tomatrix-tolinearmap-source-edition-3.md) | 234 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [LinearMap.toMatrix'_toLinearMap₂'](declarations/linearmap-tomatrix-tolinearmap.md) | 239 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [LinearMap.toMatrixₛₗ₂'_apply](declarations/linearmap-tomatrix-apply-source-edition-3.md) | 244 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [LinearMap.toMatrix₂'_apply](declarations/linearmap-tomatrix-apply.md) | 249 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [LinearMap.toMatrix₂'_compl₁₂](declarations/linearmap-tomatrix-compl-source-edition-3.md) | 266 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [LinearMap.toMatrix₂'_comp](declarations/linearmap-tomatrix-comp-source-edition-2.md) | 287 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [LinearMap.toMatrix₂'_compl₂](declarations/linearmap-tomatrix-compl-source-edition-4.md) | 292 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [LinearMap.mul_toMatrix₂'_mul](declarations/linearmap-mul-tomatrix-mul.md) | 297 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [LinearMap.mul_toMatrix'](declarations/linearmap-mul-tomatrix.md) | 302 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [LinearMap.toMatrix₂'_mul](declarations/linearmap-tomatrix-mul.md) | 306 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [Matrix.toLinearMap₂'_comp](declarations/matrix-tolinearmap-comp.md) | 310 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `def` | [LinearMap.toMatrix₂](declarations/linearmap-tomatrix-source-edition-3.md) | 339 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `def` | [Matrix.toLinearMap₂](declarations/matrix-tolinearmap.md) | 346 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [LinearMap.toMatrix₂_apply](declarations/linearmap-tomatrix-apply-source-edition-2.md) | 351 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `theorem` | [Matrix.toLinearMap₂_apply](declarations/matrix-tolinearmap-apply-source-edition-3.md) | 358 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `theorem` | [LinearMap.toMatrix₂Aux_eq](declarations/linearmap-tomatrix-aux-eq.md) | 365 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `theorem` | [LinearMap.toMatrix₂_symm](declarations/linearmap-tomatrix-symm.md) | 370 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `theorem` | [Matrix.toLinearMap₂_symm](declarations/matrix-tolinearmap-symm-source-edition-2.md) | 375 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `theorem` | [Matrix.toLinearMap₂_basisFun](declarations/matrix-tolinearmap-basisfun.md) | 379 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `theorem` | [LinearMap.toMatrix₂_basisFun](declarations/linearmap-tomatrix-basisfun.md) | 386 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `theorem` | [Matrix.toLinearMap₂_toMatrix₂](declarations/matrix-tolinearmap-tomatrix-source-edition-3.md) | 393 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `theorem` | [LinearMap.toMatrix₂_toLinearMap₂](declarations/linearmap-tomatrix-tolinearmap-source-edition-2.md) | 398 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `theorem` | [LinearMap.toMatrix₂_compl₁₂](declarations/linearmap-tomatrix-compl-source-edition-2.md) | 411 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `theorem` | [LinearMap.toMatrix₂_comp](declarations/linearmap-tomatrix-comp.md) | 433 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `theorem` | [LinearMap.toMatrix₂_compl₂](declarations/linearmap-tomatrix-compl.md) | 439 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `theorem` | [LinearMap.toMatrix₂_mul_basis_toMatrix](declarations/linearmap-tomatrix-mul-basis-tomatrix.md) | 446 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `theorem` | [LinearMap.mul_toMatrix₂_mul](declarations/linearmap-mul-tomatrix-mul-source-edition-2.md) | 453 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `theorem` | [LinearMap.mul_toMatrix₂](declarations/linearmap-mul-tomatrix-source-edition-2.md) | 459 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `theorem` | [LinearMap.toMatrix₂_mul](declarations/linearmap-tomatrix-mul-source-edition-2.md) | 464 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `theorem` | [Matrix.toLinearMap₂_compl₁₂](declarations/matrix-tolinearmap-compl.md) | 469 | `BLOCKED_NATIVE_ADMISSION` |
| 51 | `def` | [Matrix.IsAdjointPair](declarations/matrix-isadjointpair.md) | 498 | `BLOCKED_NATIVE_ADMISSION` |
| 52 | `def` | [Matrix.IsSelfAdjoint](declarations/matrix-isselfadjoint.md) | 503 | `BLOCKED_NATIVE_ADMISSION` |
| 53 | `def` | [Matrix.IsSkewAdjoint](declarations/matrix-isskewadjoint.md) | 508 | `BLOCKED_NATIVE_ADMISSION` |
| 54 | `theorem` | [isAdjointPair_toLinearMap₂'](declarations/isadjointpair-tolinearmap.md) | 514 | `BLOCKED_NATIVE_ADMISSION` |
| 55 | `theorem` | [isAdjointPair_toLinearMap₂](declarations/isadjointpair-tolinearmap-source-edition-2.md) | 531 | `BLOCKED_NATIVE_ADMISSION` |
| 56 | `theorem` | [Matrix.isAdjointPair_equiv](declarations/matrix-isadjointpair-equiv.md) | 547 | `BLOCKED_NATIVE_ADMISSION` |
| 57 | `def` | [pairSelfAdjointMatricesSubmodule](declarations/pairselfadjointmatricessubmodule.md) | 570 | `BLOCKED_NATIVE_ADMISSION` |
| 58 | `theorem` | [mem_pairSelfAdjointMatricesSubmodule](declarations/mem-pairselfadjointmatricessubmodule.md) | 577 | `BLOCKED_NATIVE_ADMISSION` |
| 59 | `def` | [selfAdjointMatricesSubmodule](declarations/selfadjointmatricessubmodule.md) | 585 | `BLOCKED_NATIVE_ADMISSION` |
| 60 | `theorem` | [mem_selfAdjointMatricesSubmodule](declarations/mem-selfadjointmatricessubmodule.md) | 589 | `BLOCKED_NATIVE_ADMISSION` |
| 61 | `def` | [skewAdjointMatricesSubmodule](declarations/skewadjointmatricessubmodule.md) | 595 | `BLOCKED_NATIVE_ADMISSION` |
| 62 | `theorem` | [mem_skewAdjointMatricesSubmodule](declarations/mem-skewadjointmatricessubmodule.md) | 599 | `BLOCKED_NATIVE_ADMISSION` |
| 63 | `theorem` | [Matrix Sesquilinear Form Namespaced](declarations/separatingleft-tolinearmap-iff-separatingleft-tolinearmap.md) | 618 | `BLOCKED_NATIVE_ADMISSION` |
| 64 | `theorem` | [Matrix Sesquilinear Form Namespaced](declarations/tolinearmap-source-line-625-occurrence-2.md) | 625 | `BLOCKED_NATIVE_ADMISSION` |
| 65 | `theorem` | [Matrix Sesquilinear Form Namespaced](declarations/separatingleft-tolinearmap-iff.md) | 630 | `BLOCKED_NATIVE_ADMISSION` |
| 66 | `theorem` | [Matrix Sesquilinear Form Namespaced](declarations/tolinearmap.md) | 635 | `BLOCKED_NATIVE_ADMISSION` |
| 67 | `theorem` | [Matrix Sesquilinear Form Namespaced](declarations/separatingleft-tolinearmap-iff-source-line-640-occurrence-2.md) | 640 | `BLOCKED_NATIVE_ADMISSION` |
| 68 | `theorem` | [nondegenerate_toMatrix₂'_iff](declarations/nondegenerate-tomatrix-iff.md) | 647 | `BLOCKED_NATIVE_ADMISSION` |
| 69 | `theorem` | [SeparatingLeft.toMatrix₂'](declarations/separatingleft-tomatrix-source-edition-2.md) | 652 | `BLOCKED_NATIVE_ADMISSION` |
| 70 | `theorem` | [nondegenerate_toMatrix_iff](declarations/nondegenerate-tomatrix-iff-source-edition-2.md) | 657 | `BLOCKED_NATIVE_ADMISSION` |
| 71 | `theorem` | [SeparatingLeft.toMatrix₂](declarations/separatingleft-tomatrix.md) | 662 | `BLOCKED_NATIVE_ADMISSION` |
| 72 | `theorem` | [separatingLeft_toLinearMap₂'_iff_det_ne_zero](declarations/separatingleft-tolinearmap-iff-det-ne-zero.md) | 669 | `BLOCKED_NATIVE_ADMISSION` |
| 73 | `theorem` | [separatingLeft_toLinearMap₂'_of_det_ne_zero'](declarations/separatingleft-tolinearmap-of-det-ne-zero.md) | 673 | `BLOCKED_NATIVE_ADMISSION` |
| 74 | `theorem` | [separatingLeft_iff_det_ne_zero](declarations/separatingleft-iff-det-ne-zero.md) | 677 | `BLOCKED_NATIVE_ADMISSION` |
| 75 | `theorem` | [separatingLeft_of_det_ne_zero](declarations/separatingleft-of-det-ne-zero.md) | 681 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=9131dfc56548e84d77c9aea63d5cf9e887b57b624cbf8573ac2cb06f2311f12d -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/SesquilinearForm/Variant832413912de848f94658f0471a4f545d5fa9a56c224f837b750faa059458f5ef.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
