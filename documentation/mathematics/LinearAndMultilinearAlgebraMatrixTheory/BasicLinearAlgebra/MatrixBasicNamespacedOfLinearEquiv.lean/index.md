# Matrix Basic Namespaced Of Linear Equiv

[Complete source index](../../../complete-source-index.md) · [Up one directory](../../../complete-source-index.md) · [Full source](source.md)

**90 observed declarations and anonymous commands**, 60 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Algebra/LinearAlgebra/Basic/Variantd17351713bd206bbe1a3de7480d17bda6611c39959e52ba560caf458ebd1a087.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `a43051f6785f0278bc3d8844e828d36dc0711c51`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixBasicNamespacedOfLinearEquiv.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `instance` | [decidableEq](declarations/decidableeq.md) | 48 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `instance` | [(anonymous)](declarations/instance-source-edition-2.md) | 51 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `instance` | [(anonymous)](declarations/instance.md) | 54 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `def` | [ofLinearEquiv](declarations/oflinearequiv.md) | 61 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `lemma` | [coe_ofLinearEquiv](declarations/coe-oflinearequiv.md) | 65 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `lemma` | [coe_ofLinearEquiv_symm](declarations/coe-oflinearequiv-symm.md) | 67 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [sum_apply](declarations/sum-apply.md) | 72 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `def` | [diagonalAddMonoidHom](declarations/diagonaladdmonoidhom.md) | 90 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `def` | [diagonalLinearMap](declarations/diagonallinearmap.md) | 99 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `lemma` | [zero_le_one_elem](declarations/zero-le-one-elem.md) | 108 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `lemma` | [zero_le_one_row](declarations/zero-le-one-row.md) | 115 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `def` | [diagAddMonoidHom](declarations/diagaddmonoidhom.md) | 129 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `def` | [diagLinearMap](declarations/diaglinearmap.md) | 138 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [diag_list_sum](declarations/diag-list-sum.md) | 144 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [diag_multiset_sum](declarations/diag-multiset-sum.md) | 148 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [diag_sum](declarations/diag-sum.md) | 153 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `def` | [diagonalRingHom](declarations/diagonalringhom.md) | 175 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [diagonal_pow](declarations/diagonal-pow.md) | 187 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `def` | [scalar](declarations/scalar.md) | 194 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [scalar_apply](declarations/scalar-apply.md) | 202 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [scalar_inj](declarations/scalar-inj.md) | 205 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [scalar_commute_iff](declarations/scalar-commute-iff.md) | 208 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [scalar_commute](declarations/scalar-commute.md) | 212 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `instance` | [instAlgebra](declarations/instalgebra.md) | 224 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [algebraMap_matrix_apply](declarations/algebramap-matrix-apply.md) | 229 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [algebraMap_eq_diagonal](declarations/algebramap-eq-diagonal.md) | 234 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [algebraMap_eq_diagonalRingHom](declarations/algebramap-eq-diagonalringhom.md) | 237 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [map_algebraMap](declarations/map-algebramap.md) | 241 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `def` | [diagonalAlgHom](declarations/diagonalalghom.md) | 251 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `def` | [entryAddHom](declarations/entryaddhom.md) | 265 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `lemma` | [entryAddHom_eq_comp](declarations/entryaddhom-eq-comp.md) | 271 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `def` | [entryAddMonoidHom](declarations/entryaddmonoidhom.md) | 289 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `lemma` | [entryAddMonoidHom_eq_comp](declarations/entryaddmonoidhom-eq-comp.md) | 296 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `lemma` | [evalAddMonoidHom_comp_diagAddMonoidHom](declarations/evaladdmonoidhom-comp-diagaddmonoidhom.md) | 302 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `lemma` | [entryAddMonoidHom_toAddHom](declarations/entryaddmonoidhom-toaddhom.md) | 306 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `def` | [entryLinearMap](declarations/entrylinearmap.md) | 321 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `lemma` | [entryLinearMap_eq_comp](declarations/entrylinearmap-eq-comp.md) | 329 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `lemma` | [proj_comp_diagLinearMap](declarations/proj-comp-diaglinearmap.md) | 334 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `lemma` | [entryLinearMap_toAddMonoidHom](declarations/entrylinearmap-toaddmonoidhom.md) | 338 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `lemma` | [entryLinearMap_toAddHom](declarations/entrylinearmap-toaddhom.md) | 341 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `def` | [mapMatrix](declarations/mapmatrix-source-edition-7.md) | 358 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `theorem` | [mapMatrix_refl](declarations/mapmatrix-refl.md) | 365 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `theorem` | [mapMatrix_symm](declarations/mapmatrix-symm-source-edition-4.md) | 369 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `theorem` | [mapMatrix_trans](declarations/mapmatrix-trans.md) | 373 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `def` | [mapMatrix](declarations/mapmatrix-source-edition-2.md) | 386 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `theorem` | [mapMatrix_id](declarations/mapmatrix-id-source-edition-2.md) | 392 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `theorem` | [mapMatrix_comp](declarations/mapmatrix-comp.md) | 396 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `lemma` | [entryAddMonoidHom_comp_mapMatrix](declarations/entryaddmonoidhom-comp-mapmatrix.md) | 400 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `def` | [mapMatrix](declarations/mapmatrix-source-edition-9.md) | 412 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `theorem` | [mapMatrix_refl](declarations/mapmatrix-refl-source-edition-5.md) | 419 | `BLOCKED_NATIVE_ADMISSION` |
| 51 | `theorem` | [mapMatrix_symm](declarations/mapmatrix-symm.md) | 423 | `BLOCKED_NATIVE_ADMISSION` |
| 52 | `theorem` | [mapMatrix_trans](declarations/mapmatrix-trans-source-edition-5.md) | 427 | `BLOCKED_NATIVE_ADMISSION` |
| 53 | `lemma` | [entryAddHom_comp_mapMatrix](declarations/entryaddhom-comp-mapmatrix.md) | 431 | `BLOCKED_NATIVE_ADMISSION` |
| 54 | `def` | [mapMatrix](declarations/mapmatrix-source-edition-6.md) | 445 | `BLOCKED_NATIVE_ADMISSION` |
| 55 | `theorem` | [mapMatrix_id](declarations/mapmatrix-id-source-edition-3.md) | 451 | `BLOCKED_NATIVE_ADMISSION` |
| 56 | `theorem` | [mapMatrix_comp](declarations/mapmatrix-comp-source-edition-4.md) | 455 | `BLOCKED_NATIVE_ADMISSION` |
| 57 | `lemma` | [entryLinearMap_comp_mapMatrix](declarations/entrylinearmap-comp-mapmatrix-source-edition-2.md) | 459 | `BLOCKED_NATIVE_ADMISSION` |
| 58 | `def` | [mapMatrix](declarations/mapmatrix-source-edition-5.md) | 472 | `BLOCKED_NATIVE_ADMISSION` |
| 59 | `theorem` | [mapMatrix_refl](declarations/mapmatrix-refl-source-edition-2.md) | 479 | `BLOCKED_NATIVE_ADMISSION` |
| 60 | `theorem` | [mapMatrix_symm](declarations/mapmatrix-symm-source-edition-2.md) | 483 | `BLOCKED_NATIVE_ADMISSION` |
| 61 | `theorem` | [mapMatrix_trans](declarations/mapmatrix-trans-source-edition-2.md) | 488 | `BLOCKED_NATIVE_ADMISSION` |
| 62 | `lemma` | [mapMatrix_toLinearMap](declarations/mapmatrix-tolinearmap.md) | 492 | `BLOCKED_NATIVE_ADMISSION` |
| 63 | `lemma` | [entryLinearMap_comp_mapMatrix](declarations/entrylinearmap-comp-mapmatrix.md) | 496 | `BLOCKED_NATIVE_ADMISSION` |
| 64 | `def` | [mapMatrix](declarations/mapmatrix-source-edition-3.md) | 511 | `BLOCKED_NATIVE_ADMISSION` |
| 65 | `theorem` | [mapMatrix_id](declarations/mapmatrix-id.md) | 518 | `BLOCKED_NATIVE_ADMISSION` |
| 66 | `theorem` | [mapMatrix_comp](declarations/mapmatrix-comp-source-edition-2.md) | 522 | `BLOCKED_NATIVE_ADMISSION` |
| 67 | `def` | [mapMatrix](declarations/mapmatrix-source-edition-8.md) | 536 | `BLOCKED_NATIVE_ADMISSION` |
| 68 | `theorem` | [mapMatrix_refl](declarations/mapmatrix-refl-source-edition-3.md) | 543 | `BLOCKED_NATIVE_ADMISSION` |
| 69 | `theorem` | [mapMatrix_symm](declarations/mapmatrix-symm-source-edition-5.md) | 547 | `BLOCKED_NATIVE_ADMISSION` |
| 70 | `theorem` | [mapMatrix_trans](declarations/mapmatrix-trans-source-edition-3.md) | 551 | `BLOCKED_NATIVE_ADMISSION` |
| 71 | `def` | [mopMatrix](declarations/mopmatrix.md) | 560 | `BLOCKED_NATIVE_ADMISSION` |
| 72 | `def` | [mapMatrix](declarations/mapmatrix.md) | 579 | `BLOCKED_NATIVE_ADMISSION` |
| 73 | `theorem` | [mapMatrix_id](declarations/mapmatrix-id-source-edition-4.md) | 585 | `BLOCKED_NATIVE_ADMISSION` |
| 74 | `theorem` | [mapMatrix_comp](declarations/mapmatrix-comp-source-edition-3.md) | 589 | `BLOCKED_NATIVE_ADMISSION` |
| 75 | `def` | [mapMatrix](declarations/mapmatrix-source-edition-4.md) | 604 | `BLOCKED_NATIVE_ADMISSION` |
| 76 | `theorem` | [mapMatrix_refl](declarations/mapmatrix-refl-source-edition-4.md) | 611 | `BLOCKED_NATIVE_ADMISSION` |
| 77 | `theorem` | [mapMatrix_symm](declarations/mapmatrix-symm-source-edition-3.md) | 615 | `BLOCKED_NATIVE_ADMISSION` |
| 78 | `theorem` | [mapMatrix_trans](declarations/mapmatrix-trans-source-edition-4.md) | 620 | `BLOCKED_NATIVE_ADMISSION` |
| 79 | `def` | [mopMatrix](declarations/mopmatrix-source-edition-2.md) | 627 | `BLOCKED_NATIVE_ADMISSION` |
| 80 | `def` | [transposeAddEquiv](declarations/transposeaddequiv.md) | 646 | `BLOCKED_NATIVE_ADMISSION` |
| 81 | `theorem` | [transposeAddEquiv_symm](declarations/transposeaddequiv-symm.md) | 654 | `BLOCKED_NATIVE_ADMISSION` |
| 82 | `theorem` | [transpose_list_sum](declarations/transpose-list-sum.md) | 659 | `BLOCKED_NATIVE_ADMISSION` |
| 83 | `theorem` | [transpose_multiset_sum](declarations/transpose-multiset-sum.md) | 663 | `BLOCKED_NATIVE_ADMISSION` |
| 84 | `theorem` | [transpose_sum](declarations/transpose-sum.md) | 667 | `BLOCKED_NATIVE_ADMISSION` |
| 85 | `def` | [transposeLinearEquiv](declarations/transposelinearequiv.md) | 675 | `BLOCKED_NATIVE_ADMISSION` |
| 86 | `theorem` | [transposeLinearEquiv_symm](declarations/transposelinearequiv-symm.md) | 680 | `BLOCKED_NATIVE_ADMISSION` |
| 87 | `def` | [transposeRingEquiv](declarations/transposeringequiv.md) | 689 | `BLOCKED_NATIVE_ADMISSION` |
| 88 | `theorem` | [transpose_pow](declarations/transpose-pow.md) | 702 | `BLOCKED_NATIVE_ADMISSION` |
| 89 | `theorem` | [transpose_list_prod](declarations/transpose-list-prod.md) | 706 | `BLOCKED_NATIVE_ADMISSION` |
| 90 | `def` | [transposeAlgEquiv](declarations/transposealgequiv.md) | 714 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=437f29a3a49d40d84f4ca1a450db34cc1e6ed612a288191aadb5666c119beee7 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/Basic/Variantd17351713bd206bbe1a3de7480d17bda6611c39959e52ba560caf458ebd1a087.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
