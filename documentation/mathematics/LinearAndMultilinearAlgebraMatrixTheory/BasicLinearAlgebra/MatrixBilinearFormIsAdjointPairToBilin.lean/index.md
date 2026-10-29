# Matrix Bilinear Form Is Adjoint Pair To Bilin

[Complete source index](../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**65 observed declarations and anonymous commands**, 56 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Algebra/LinearAlgebra/BilinearForm/Variantd74f7f24b205ad454e34f72401343a2f5a656dbf1788b129a67f8bda02856f88.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `fef72ee7fe08a7925e10a3b024df46967f9f71eb`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixBilinearFormIsAdjointPairToBilin.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [Matrix.toBilin'Aux](declarations/matrix-tobilin-aux.md) | 68 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `theorem` | [Matrix.toBilin'Aux_stdBasis](declarations/matrix-tobilin-aux-stdbasis.md) | 77 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `def` | [BilinForm.toMatrixAux](declarations/bilinform-tomatrixaux.md) | 103 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `theorem` | [BilinForm.toMatrixAux_apply](declarations/bilinform-tomatrixaux-apply.md) | 110 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [toBilin'Aux_toMatrixAux](declarations/tobilin-aux-tomatrixaux.md) | 118 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `def` | [BilinForm.toMatrix'](declarations/bilinform-tomatrix.md) | 138 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [BilinForm.toMatrixAux_stdBasis](declarations/bilinform-tomatrixaux-stdbasis.md) | 150 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `def` | [Matrix.toBilin'](declarations/matrix-tobilin.md) | 158 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [Matrix.toBilin'Aux_eq](declarations/matrix-tobilin-aux-eq.md) | 163 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [Matrix.toBilin'_apply](declarations/matrix-tobilin-apply.md) | 167 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [Matrix.toBilin'_apply'](declarations/matrix-tobilin-apply-source-edition-3.md) | 172 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [Matrix.toBilin'_stdBasis](declarations/matrix-tobilin-stdbasis.md) | 182 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [BilinForm.toMatrix'_symm](declarations/bilinform-tomatrix-symm-source-edition-2.md) | 190 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [Matrix.toBilin'_symm](declarations/matrix-tobilin-symm.md) | 196 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [Matrix.toBilin'_toMatrix'](declarations/matrix-tobilin-tomatrix-source-edition-2.md) | 202 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [BilinForm.toMatrix'_toBilin'](declarations/bilinform-tomatrix-tobilin-source-edition-2.md) | 208 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [BilinForm.toMatrix'_apply](declarations/bilinform-tomatrix-apply-source-edition-2.md) | 214 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [BilinForm.toMatrix'_comp](declarations/bilinform-tomatrix-comp-source-edition-2.md) | 221 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [BilinForm.toMatrix'_compLeft](declarations/bilinform-tomatrix-compleft.md) | 243 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [BilinForm.toMatrix'_compRight](declarations/bilinform-tomatrix-compright-source-edition-2.md) | 248 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [BilinForm.mul_toMatrix'_mul](declarations/bilinform-mul-tomatrix-mul.md) | 254 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [BilinForm.mul_toMatrix'](declarations/bilinform-mul-tomatrix.md) | 260 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [BilinForm.toMatrix'_mul](declarations/bilinform-tomatrix-mul.md) | 265 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [Matrix.toBilin'_comp](declarations/matrix-tobilin-comp.md) | 270 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `def` | [BilinForm.toMatrix](declarations/bilinform-tomatrix-source-edition-2.md) | 291 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `def` | [Matrix.toBilin](declarations/matrix-tobilin-source-edition-2.md) | 297 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [BilinForm.toMatrix_apply](declarations/bilinform-tomatrix-apply.md) | 302 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [Matrix.toBilin_apply](declarations/matrix-tobilin-apply-source-edition-2.md) | 309 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [BilinearForm.toMatrixAux_eq](declarations/bilinearform-tomatrixaux-eq.md) | 317 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [BilinForm.toMatrix_symm](declarations/bilinform-tomatrix-symm.md) | 323 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [Matrix.toBilin_symm](declarations/matrix-tobilin-symm-source-edition-2.md) | 328 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [Matrix.toBilin_basisFun](declarations/matrix-tobilin-basisfun.md) | 332 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [BilinForm.toMatrix_basisFun](declarations/bilinform-tomatrix-basisfun.md) | 337 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [Matrix.toBilin_toMatrix](declarations/matrix-tobilin-tomatrix.md) | 344 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `theorem` | [BilinForm.toMatrix_toBilin](declarations/bilinform-tomatrix-tobilin.md) | 350 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `theorem` | [BilinForm.toMatrix_comp](declarations/bilinform-tomatrix-comp.md) | 362 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `theorem` | [BilinForm.toMatrix_compLeft](declarations/bilinform-tomatrix-compleft-source-edition-2.md) | 384 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `theorem` | [BilinForm.toMatrix_compRight](declarations/bilinform-tomatrix-compright.md) | 389 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `theorem` | [BilinForm.toMatrix_mul_basis_toMatrix](declarations/bilinform-tomatrix-mul-basis-tomatrix.md) | 396 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `theorem` | [BilinForm.mul_toMatrix_mul](declarations/bilinform-mul-tomatrix-mul-source-edition-2.md) | 401 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `theorem` | [BilinForm.mul_toMatrix](declarations/bilinform-mul-tomatrix-source-edition-2.md) | 407 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `theorem` | [BilinForm.toMatrix_mul](declarations/bilinform-tomatrix-mul-source-edition-2.md) | 412 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `theorem` | [Matrix.toBilin_comp](declarations/matrix-tobilin-comp-source-edition-2.md) | 417 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `theorem` | [isAdjointPair_toBilin'](declarations/isadjointpair-tobilin-source-edition-2.md) | 438 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `theorem` | [isAdjointPair_toBilin](declarations/isadjointpair-tobilin.md) | 455 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `theorem` | [Matrix.isAdjointPair_equiv'](declarations/matrix-isadjointpair-equiv.md) | 470 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `def` | [pairSelfAdjointMatricesSubmodule'](declarations/pairselfadjointmatricessubmodule.md) | 498 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `theorem` | [mem_pairSelfAdjointMatricesSubmodule'](declarations/mem-pairselfadjointmatricessubmodule.md) | 504 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `def` | [selfAdjointMatricesSubmodule'](declarations/selfadjointmatricessubmodule.md) | 511 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `theorem` | [mem_selfAdjointMatricesSubmodule'](declarations/mem-selfadjointmatricessubmodule.md) | 515 | `BLOCKED_NATIVE_ADMISSION` |
| 51 | `def` | [skewAdjointMatricesSubmodule'](declarations/skewadjointmatricessubmodule.md) | 522 | `BLOCKED_NATIVE_ADMISSION` |
| 52 | `theorem` | [mem_skewAdjointMatricesSubmodule'](declarations/mem-skewadjointmatricessubmodule.md) | 526 | `BLOCKED_NATIVE_ADMISSION` |
| 53 | `theorem` | [_root_.Matrix.nondegenerate_toBilin'_iff_nondegenerate_toBilin](declarations/root-matrix-nondegenerate-tobilin-iff-nondegenerate-tobilin.md) | 543 | `BLOCKED_NATIVE_ADMISSION` |
| 54 | `theorem` | [_root_.Matrix.Nondegenerate.toBilin'](declarations/root-matrix-nondegenerate-tobilin.md) | 549 | `BLOCKED_NATIVE_ADMISSION` |
| 55 | `theorem` | [_root_.Matrix.nondegenerate_toBilin'_iff](declarations/root-matrix-nondegenerate-tobilin-iff.md) | 555 | `BLOCKED_NATIVE_ADMISSION` |
| 56 | `theorem` | [_root_.Matrix.Nondegenerate.toBilin](declarations/root-matrix-nondegenerate-tobilin-source-edition-2.md) | 560 | `BLOCKED_NATIVE_ADMISSION` |
| 57 | `theorem` | [_root_.Matrix.nondegenerate_toBilin_iff](declarations/root-matrix-nondegenerate-tobilin-iff-source-edition-2.md) | 566 | `BLOCKED_NATIVE_ADMISSION` |
| 58 | `theorem` | [nondegenerate_toMatrix'_iff](declarations/nondegenerate-tomatrix-iff.md) | 573 | `BLOCKED_NATIVE_ADMISSION` |
| 59 | `theorem` | [Nondegenerate.toMatrix'](declarations/nondegenerate-tomatrix.md) | 578 | `BLOCKED_NATIVE_ADMISSION` |
| 60 | `theorem` | [nondegenerate_toMatrix_iff](declarations/nondegenerate-tomatrix-iff-source-edition-2.md) | 584 | `BLOCKED_NATIVE_ADMISSION` |
| 61 | `theorem` | [Nondegenerate.toMatrix](declarations/nondegenerate-tomatrix-source-edition-2.md) | 589 | `BLOCKED_NATIVE_ADMISSION` |
| 62 | `theorem` | [nondegenerate_toBilin'_iff_det_ne_zero](declarations/nondegenerate-tobilin-iff-det-ne-zero.md) | 595 | `BLOCKED_NATIVE_ADMISSION` |
| 63 | `theorem` | [nondegenerate_toBilin'_of_det_ne_zero'](declarations/nondegenerate-tobilin-of-det-ne-zero.md) | 600 | `BLOCKED_NATIVE_ADMISSION` |
| 64 | `theorem` | [nondegenerate_iff_det_ne_zero](declarations/nondegenerate-iff-det-ne-zero.md) | 605 | `BLOCKED_NATIVE_ADMISSION` |
| 65 | `theorem` | [nondegenerate_of_det_ne_zero](declarations/nondegenerate-of-det-ne-zero.md) | 610 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=5418a66504b67d6fbac09f9baa2cbd83d479f7fcff0da4ff804a948ae867c8ce -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/BilinearForm/Variantd74f7f24b205ad454e34f72401343a2f5a656dbf1788b129a67f8bda02856f88.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
