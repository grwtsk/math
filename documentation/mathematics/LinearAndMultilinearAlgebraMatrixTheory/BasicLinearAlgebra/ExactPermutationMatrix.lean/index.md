# Exact Permutation Matrix

[Complete source index](../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**36 observed declarations and anonymous commands**, 23 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/ExactPermutationMatrix/Variantfd06009e335660465ad097b0508d787f0f5964bfa94a0e0cbcb75e161668a338.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `9f9951bcc4e587dbd52e0e0c89efd0fa434c3b04`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ExactPermutationMatrix.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [permutationMatrix](declarations/permutationmatrix.md) | 25 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `def` | [ExactlyOneInEveryRow](declarations/exactlyoneineveryrow.md) | 33 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `def` | [ExactlyOneInEveryColumn](declarations/exactlyoneineverycolumn.md) | 40 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `def` | [IsOneHotPermutationMatrix](declarations/isonehotpermutationmatrix.md) | 47 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `abbrev` | [OneHotPermutationMatrix](declarations/onehotpermutationmatrix.md) | 54 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `structure` | [ExactPermutationMatrix](declarations/exactpermutationmatrix.md) | 58 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [ext](declarations/ext.md) | 71 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `def` | [ofPerm](declarations/ofperm-source-edition-2.md) | 86 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [ofPerm_matrix](declarations/ofperm-matrix.md) | 93 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [ofPerm_permutation](declarations/ofperm-permutation.md) | 99 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [existsUnique_one_in_row](declarations/existsunique-one-in-row.md) | 105 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [existsUnique_one_in_column](declarations/existsunique-one-in-column.md) | 120 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `def` | [permEquivExactPermutationMatrix](declarations/permequivexactpermutationmatrix.md) | 136 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [permEquiv_apply](declarations/permequiv-apply.md) | 146 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [permEquiv_symm_apply](declarations/permequiv-symm-apply.md) | 152 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [permutationMatrix_exactlyOneInEveryRow](declarations/permutationmatrix-exactlyoneineveryrow.md) | 165 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [permutationMatrix_exactlyOneInEveryColumn](declarations/permutationmatrix-exactlyoneineverycolumn.md) | 174 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `def` | [ofPerm](declarations/ofperm.md) | 183 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [ofPerm_val](declarations/ofperm-val.md) | 190 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `def` | [rowIndex](declarations/rowindex.md) | 197 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [rowIndex_spec](declarations/rowindex-spec.md) | 205 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [rowIndex_eq_of_entry_one](declarations/rowindex-eq-of-entry-one.md) | 213 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `def` | [columnIndex](declarations/columnindex.md) | 222 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [columnIndex_spec](declarations/columnindex-spec.md) | 230 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [columnIndex_eq_of_entry_one](declarations/columnindex-eq-of-entry-one.md) | 238 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `def` | [toPerm](declarations/toperm.md) | 247 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [toPerm_apply](declarations/toperm-apply.md) | 261 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [toPerm_symm_apply](declarations/toperm-symm-apply.md) | 269 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [zmodTwo_eq_zero_or_one](declarations/zmodtwo-eq-zero-or-one.md) | 276 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [matrix_eq_permutationMatrix_toPerm](declarations/matrix-eq-permutationmatrix-toperm.md) | 290 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [toPerm_ofPerm](declarations/toperm-ofperm.md) | 309 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `def` | [permEquivOneHotPermutationMatrix](declarations/permequivonehotpermutationmatrix.md) | 321 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [permEquivOneHot_apply](declarations/permequivonehot-apply.md) | 331 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [permEquivOneHot_symm_apply](declarations/permequivonehot-symm-apply.md) | 337 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `theorem` | [permEquivOneHot_symm_apply_apply](declarations/permequivonehot-symm-apply-apply.md) | 344 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `theorem` | [permEquivOneHot_apply_symm_apply](declarations/permequivonehot-apply-symm-apply.md) | 352 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=bd55a07373c525c8593c7673ee363d340daa42c9881099addafb643f7710a25c -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/ExactPermutationMatrix/Variantfd06009e335660465ad097b0508d787f0f5964bfa94a0e0cbcb75e161668a338.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
