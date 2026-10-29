# Linear Algebra Matrix Defs Public

[Complete source index](../../../complete-source-index.md) · [Up one directory](../../../complete-source-index.md) · [Full source](source.md)

**146 observed declarations and anonymous commands**, 91 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Algebra/LinearAlgebra/Defs/Variant42cf62056a34210624acadeec32077eb22259619303cabc6678887b51262d6e3.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `b1064c6515b743afc9a5078bea3785b2dd71d254`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraMatrixDefsPublic.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [Matrix](declarations/matrix-source-edition-2.md) | 57 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `theorem` | [ext_iff](declarations/ext-iff.md) | 69 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `theorem` | [ext](declarations/ext.md) | 73 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `def` | [of](declarations/of.md) | 88 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [of_apply](declarations/of-apply.md) | 92 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [of_symm_apply](declarations/of-symm-apply.md) | 96 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `def` | [ofArray](declarations/ofarray.md) | 100 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [ofArray_apply](declarations/ofarray-apply.md) | 104 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [ofArray_ofFn](declarations/ofarray-offn.md) | 109 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `lemma` | [ofArray_eq_of_getD](declarations/ofarray-eq-of-getd.md) | 115 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `def` | [map](declarations/map.md) | 134 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [map_apply](declarations/map-apply.md) | 138 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [map_id](declarations/map-id.md) | 142 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [map_id'](declarations/map-id-source-edition-2.md) | 147 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [map_map](declarations/map-map.md) | 150 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [map_injective](declarations/map-injective.md) | 155 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [map_involutive](declarations/map-involutive.md) | 159 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `def` | [transpose](declarations/transpose.md) | 172 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [transpose_apply](declarations/transpose-apply.md) | 177 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `instance` | [inhabited](declarations/inhabited.md) | 183 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `instance` | [add](declarations/add.md) | 186 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `instance` | [smul](declarations/smul.md) | 189 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `instance` | [addSemigroup](declarations/addsemigroup.md) | 192 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `instance` | [addCommSemigroup](declarations/addcommsemigroup.md) | 195 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `instance` | [zero](declarations/zero.md) | 198 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `instance` | [addZeroClass](declarations/addzeroclass.md) | 201 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `instance` | [addMonoid](declarations/addmonoid.md) | 204 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `instance` | [addCommMonoid](declarations/addcommmonoid.md) | 207 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `instance` | [neg](declarations/neg.md) | 210 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `instance` | [involutiveNeg](declarations/involutiveneg.md) | 213 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `instance` | [sub](declarations/sub.md) | 216 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `instance` | [addGroup](declarations/addgroup.md) | 219 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `instance` | [addCommGroup](declarations/addcommgroup.md) | 222 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `instance` | [unique](declarations/unique.md) | 225 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `instance` | [subsingleton](declarations/subsingleton.md) | 228 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `instance` | [nonempty](declarations/nonempty.md) | 231 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `instance` | [smulCommClass](declarations/smulcommclass.md) | 234 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `instance` | [isScalarTower](declarations/isscalartower.md) | 238 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `instance` | [isCentralScalar](declarations/iscentralscalar.md) | 242 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `instance` | [mulAction](declarations/mulaction.md) | 246 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `instance` | [distribMulAction](declarations/distribmulaction.md) | 249 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `instance` | [module](declarations/module.md) | 253 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `instance` | [(anonymous)](declarations/instance-source-edition-7.md) | 256 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `instance` | [(anonymous)](declarations/instance.md) | 259 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `instance` | [(anonymous)](declarations/instance-source-edition-5.md) | 262 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `instance` | [(anonymous)](declarations/instance-source-edition-8.md) | 265 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `instance` | [(anonymous)](declarations/instance-source-edition-6.md) | 268 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `instance` | [(anonymous)](declarations/instance-source-edition-10.md) | 271 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `instance` | [(anonymous)](declarations/instance-source-edition-9.md) | 274 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `instance` | [(anonymous)](declarations/instance-source-edition-2.md) | 277 | `BLOCKED_NATIVE_ADMISSION` |
| 51 | `instance` | [(anonymous)](declarations/instance-source-edition-3.md) | 280 | `BLOCKED_NATIVE_ADMISSION` |
| 52 | `instance` | [(anonymous)](declarations/instance-source-edition-4.md) | 283 | `BLOCKED_NATIVE_ADMISSION` |
| 53 | `instance` | [(anonymous)](declarations/instance-source-edition-11.md) | 286 | `BLOCKED_NATIVE_ADMISSION` |
| 54 | `theorem` | [zero_apply](declarations/zero-apply.md) | 292 | `BLOCKED_NATIVE_ADMISSION` |
| 55 | `theorem` | [of_symm_zero](declarations/of-symm-zero.md) | 295 | `BLOCKED_NATIVE_ADMISSION` |
| 56 | `theorem` | [add_apply](declarations/add-apply.md) | 298 | `BLOCKED_NATIVE_ADMISSION` |
| 57 | `theorem` | [smul_apply](declarations/smul-apply.md) | 302 | `BLOCKED_NATIVE_ADMISSION` |
| 58 | `theorem` | [sub_apply](declarations/sub-apply.md) | 306 | `BLOCKED_NATIVE_ADMISSION` |
| 59 | `theorem` | [neg_apply](declarations/neg-apply.md) | 310 | `BLOCKED_NATIVE_ADMISSION` |
| 60 | `theorem` | [dite_apply](declarations/dite-apply.md) | 313 | `BLOCKED_NATIVE_ADMISSION` |
| 61 | `theorem` | [ite_apply](declarations/ite-apply.md) | 318 | `BLOCKED_NATIVE_ADMISSION` |
| 62 | `theorem` | [of_zero](declarations/of-zero.md) | 328 | `BLOCKED_NATIVE_ADMISSION` |
| 63 | `theorem` | [of_add_of](declarations/of-add-of.md) | 332 | `BLOCKED_NATIVE_ADMISSION` |
| 64 | `theorem` | [of_sub_of](declarations/of-sub-of.md) | 336 | `BLOCKED_NATIVE_ADMISSION` |
| 65 | `theorem` | [neg_of](declarations/neg-of.md) | 340 | `BLOCKED_NATIVE_ADMISSION` |
| 66 | `theorem` | [smul_of](declarations/smul-of.md) | 344 | `BLOCKED_NATIVE_ADMISSION` |
| 67 | `theorem` | [map_zero](declarations/map-zero.md) | 348 | `BLOCKED_NATIVE_ADMISSION` |
| 68 | `theorem` | [map_add](declarations/map-add.md) | 353 | `BLOCKED_NATIVE_ADMISSION` |
| 69 | `theorem` | [map_neg](declarations/map-neg.md) | 357 | `BLOCKED_NATIVE_ADMISSION` |
| 70 | `theorem` | [map_sub](declarations/map-sub.md) | 361 | `BLOCKED_NATIVE_ADMISSION` |
| 71 | `theorem` | [map_smul](declarations/map-smul-source-edition-2.md) | 365 | `BLOCKED_NATIVE_ADMISSION` |
| 72 | `theorem` | [map_smulₛₗ](declarations/map-smul.md) | 369 | `BLOCKED_NATIVE_ADMISSION` |
| 73 | `theorem` | [map_smul'](declarations/map-smul-source-edition-3.md) | 376 | `BLOCKED_NATIVE_ADMISSION` |
| 74 | `theorem` | [map_op_smul'](declarations/map-op-smul.md) | 382 | `BLOCKED_NATIVE_ADMISSION` |
| 75 | `theorem` | [_root_.IsSMulRegular.matrix](declarations/root-issmulregular-matrix.md) | 387 | `BLOCKED_NATIVE_ADMISSION` |
| 76 | `theorem` | [_root_.IsLeftRegular.matrix](declarations/root-isleftregular-matrix.md) | 391 | `BLOCKED_NATIVE_ADMISSION` |
| 77 | `instance` | [subsingleton_of_empty_left](declarations/subsingleton-of-empty-left.md) | 395 | `BLOCKED_NATIVE_ADMISSION` |
| 78 | `instance` | [subsingleton_of_empty_right](declarations/subsingleton-of-empty-right.md) | 400 | `BLOCKED_NATIVE_ADMISSION` |
| 79 | `def` | [ofAddEquiv](declarations/ofaddequiv.md) | 406 | `BLOCKED_NATIVE_ADMISSION` |
| 80 | `lemma` | [coe_ofAddEquiv](declarations/coe-ofaddequiv.md) | 410 | `BLOCKED_NATIVE_ADMISSION` |
| 81 | `lemma` | [coe_ofAddEquiv_symm](declarations/coe-ofaddequiv-symm.md) | 412 | `BLOCKED_NATIVE_ADMISSION` |
| 82 | `lemma` | [isAddUnit_iff](declarations/isaddunit-iff.md) | 415 | `BLOCKED_NATIVE_ADMISSION` |
| 83 | `theorem` | [transpose_transpose](declarations/transpose-transpose.md) | 430 | `BLOCKED_NATIVE_ADMISSION` |
| 84 | `theorem` | [transpose_involutive](declarations/transpose-involutive.md) | 435 | `BLOCKED_NATIVE_ADMISSION` |
| 85 | `theorem` | [transpose_injective](declarations/transpose-injective.md) | 438 | `BLOCKED_NATIVE_ADMISSION` |
| 86 | `theorem` | [transpose_inj](declarations/transpose-inj.md) | 441 | `BLOCKED_NATIVE_ADMISSION` |
| 87 | `theorem` | [transpose_zero](declarations/transpose-zero.md) | 444 | `BLOCKED_NATIVE_ADMISSION` |
| 88 | `theorem` | [transpose_eq_zero](declarations/transpose-eq-zero.md) | 447 | `BLOCKED_NATIVE_ADMISSION` |
| 89 | `theorem` | [transpose_add](declarations/transpose-add.md) | 450 | `BLOCKED_NATIVE_ADMISSION` |
| 90 | `theorem` | [transpose_sub](declarations/transpose-sub.md) | 455 | `BLOCKED_NATIVE_ADMISSION` |
| 91 | `theorem` | [transpose_smul](declarations/transpose-smul.md) | 460 | `BLOCKED_NATIVE_ADMISSION` |
| 92 | `theorem` | [transpose_neg](declarations/transpose-neg.md) | 464 | `BLOCKED_NATIVE_ADMISSION` |
| 93 | `theorem` | [transpose_map](declarations/transpose-map.md) | 467 | `BLOCKED_NATIVE_ADMISSION` |
| 94 | `def` | [submatrix](declarations/submatrix.md) | 476 | `BLOCKED_NATIVE_ADMISSION` |
| 95 | `theorem` | [submatrix_apply](declarations/submatrix-apply.md) | 480 | `BLOCKED_NATIVE_ADMISSION` |
| 96 | `theorem` | [submatrix_id_id](declarations/submatrix-id-id.md) | 485 | `BLOCKED_NATIVE_ADMISSION` |
| 97 | `theorem` | [submatrix_submatrix](declarations/submatrix-submatrix.md) | 489 | `BLOCKED_NATIVE_ADMISSION` |
| 98 | `theorem` | [transpose_submatrix](declarations/transpose-submatrix.md) | 495 | `BLOCKED_NATIVE_ADMISSION` |
| 99 | `theorem` | [submatrix_add](declarations/submatrix-add.md) | 499 | `BLOCKED_NATIVE_ADMISSION` |
| 100 | `theorem` | [submatrix_neg](declarations/submatrix-neg.md) | 503 | `BLOCKED_NATIVE_ADMISSION` |
| 101 | `theorem` | [submatrix_sub](declarations/submatrix-sub.md) | 507 | `BLOCKED_NATIVE_ADMISSION` |
| 102 | `theorem` | [submatrix_zero](declarations/submatrix-zero.md) | 512 | `BLOCKED_NATIVE_ADMISSION` |
| 103 | `theorem` | [submatrix_smul](declarations/submatrix-smul.md) | 516 | `BLOCKED_NATIVE_ADMISSION` |
| 104 | `theorem` | [submatrix_map](declarations/submatrix-map.md) | 520 | `BLOCKED_NATIVE_ADMISSION` |
| 105 | `def` | [reindex](declarations/reindex.md) | 526 | `BLOCKED_NATIVE_ADMISSION` |
| 106 | `theorem` | [reindex_apply](declarations/reindex-apply.md) | 533 | `BLOCKED_NATIVE_ADMISSION` |
| 107 | `theorem` | [reindex_refl_refl](declarations/reindex-refl-refl.md) | 537 | `BLOCKED_NATIVE_ADMISSION` |
| 108 | `theorem` | [reindex_symm](declarations/reindex-symm.md) | 541 | `BLOCKED_NATIVE_ADMISSION` |
| 109 | `theorem` | [reindex_trans](declarations/reindex-trans.md) | 546 | `BLOCKED_NATIVE_ADMISSION` |
| 110 | `theorem` | [transpose_reindex](declarations/transpose-reindex.md) | 551 | `BLOCKED_NATIVE_ADMISSION` |
| 111 | `abbrev` | [subLeft](declarations/subleft.md) | 556 | `BLOCKED_NATIVE_ADMISSION` |
| 112 | `abbrev` | [subRight](declarations/subright.md) | 560 | `BLOCKED_NATIVE_ADMISSION` |
| 113 | `abbrev` | [subUp](declarations/subup.md) | 564 | `BLOCKED_NATIVE_ADMISSION` |
| 114 | `abbrev` | [subDown](declarations/subdown.md) | 568 | `BLOCKED_NATIVE_ADMISSION` |
| 115 | `abbrev` | [subUpRight](declarations/subupright.md) | 572 | `BLOCKED_NATIVE_ADMISSION` |
| 116 | `abbrev` | [subDownRight](declarations/subdownright.md) | 577 | `BLOCKED_NATIVE_ADMISSION` |
| 117 | `abbrev` | [subUpLeft](declarations/subupleft.md) | 582 | `BLOCKED_NATIVE_ADMISSION` |
| 118 | `abbrev` | [subDownLeft](declarations/subdownleft.md) | 587 | `BLOCKED_NATIVE_ADMISSION` |
| 119 | `def` | [row](declarations/row.md) | 599 | `BLOCKED_NATIVE_ADMISSION` |
| 120 | `def` | [col](declarations/col.md) | 608 | `BLOCKED_NATIVE_ADMISSION` |
| 121 | `lemma` | [row_eq_self](declarations/row-eq-self.md) | 610 | `BLOCKED_NATIVE_ADMISSION` |
| 122 | `lemma` | [col_eq_transpose](declarations/col-eq-transpose.md) | 612 | `BLOCKED_NATIVE_ADMISSION` |
| 123 | `lemma` | [of_row](declarations/of-row.md) | 615 | `BLOCKED_NATIVE_ADMISSION` |
| 124 | `lemma` | [of_col](declarations/of-col.md) | 618 | `BLOCKED_NATIVE_ADMISSION` |
| 125 | `lemma` | [row_def](declarations/row-def.md) | 620 | `BLOCKED_NATIVE_ADMISSION` |
| 126 | `lemma` | [col_def](declarations/col-def.md) | 622 | `BLOCKED_NATIVE_ADMISSION` |
| 127 | `lemma` | [row_apply](declarations/row-apply-source-edition-2.md) | 625 | `BLOCKED_NATIVE_ADMISSION` |
| 128 | `lemma` | [row_apply'](declarations/row-apply.md) | 628 | `BLOCKED_NATIVE_ADMISSION` |
| 129 | `lemma` | [col_apply](declarations/col-apply-source-edition-2.md) | 631 | `BLOCKED_NATIVE_ADMISSION` |
| 130 | `lemma` | [col_apply'](declarations/col-apply.md) | 634 | `BLOCKED_NATIVE_ADMISSION` |
| 131 | `lemma` | [ext_row](declarations/ext-row.md) | 640 | `BLOCKED_NATIVE_ADMISSION` |
| 132 | `lemma` | [ext_col](declarations/ext-col.md) | 645 | `BLOCKED_NATIVE_ADMISSION` |
| 133 | `lemma` | [row_submatrix](declarations/row-submatrix.md) | 650 | `BLOCKED_NATIVE_ADMISSION` |
| 134 | `lemma` | [row_submatrix_eq_comp](declarations/row-submatrix-eq-comp.md) | 653 | `BLOCKED_NATIVE_ADMISSION` |
| 135 | `lemma` | [col_submatrix](declarations/col-submatrix.md) | 656 | `BLOCKED_NATIVE_ADMISSION` |
| 136 | `lemma` | [col_submatrix_eq_comp](declarations/col-submatrix-eq-comp.md) | 659 | `BLOCKED_NATIVE_ADMISSION` |
| 137 | `lemma` | [row_map](declarations/row-map.md) | 662 | `BLOCKED_NATIVE_ADMISSION` |
| 138 | `lemma` | [col_map](declarations/col-map.md) | 664 | `BLOCKED_NATIVE_ADMISSION` |
| 139 | `lemma` | [row_transpose](declarations/row-transpose.md) | 667 | `BLOCKED_NATIVE_ADMISSION` |
| 140 | `lemma` | [col_transpose](declarations/col-transpose.md) | 670 | `BLOCKED_NATIVE_ADMISSION` |
| 141 | `def` | [matrix](declarations/matrix.md) | 680 | `BLOCKED_NATIVE_ADMISSION` |
| 142 | `theorem` | [mem_matrix](declarations/mem-matrix.md) | 682 | `BLOCKED_NATIVE_ADMISSION` |
| 143 | `theorem` | [matrix_eq_pi](declarations/matrix-eq-pi.md) | 685 | `BLOCKED_NATIVE_ADMISSION` |
| 144 | `theorem` | [transpose_mem_matrix_iff](declarations/transpose-mem-matrix-iff.md) | 697 | `BLOCKED_NATIVE_ADMISSION` |
| 145 | `theorem` | [submatrix_mem_matrix](declarations/submatrix-mem-matrix.md) | 700 | `BLOCKED_NATIVE_ADMISSION` |
| 146 | `theorem` | [submatrix_mem_matrix_iff](declarations/submatrix-mem-matrix-iff.md) | 703 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=d64478e106f64e90343c815dad639fb709b15ad34702ca29c5d1be20ffa7c556 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/Defs/Variant42cf62056a34210624acadeec32077eb22259619303cabc6678887b51262d6e3.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
