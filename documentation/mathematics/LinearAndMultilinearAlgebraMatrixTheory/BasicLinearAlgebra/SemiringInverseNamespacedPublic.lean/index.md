# Semiring Inverse Namespaced Public

[Complete source index](../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**56 observed declarations and anonymous commands**, 51 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/SemiringInverse/Variant8cd3bf6ceff4afb5d32f3679def5312b3ba12ce2644ecd7d382e77a0fb128fba.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `aabc647d2f943a3db8da0cc3ca693e58493dc58b`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SemiringInverseNamespacedPublic.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [detp](declarations/detp.md) | 43 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `lemma` | [detp_transpose](declarations/detp-transpose.md) | 45 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `lemma` | [detp_zero](declarations/detp-zero.md) | 48 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `lemma` | [detp_one_diagonal](declarations/detp-one-diagonal.md) | 51 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `lemma` | [detp_one_one](declarations/detp-one-one.md) | 60 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `lemma` | [detp_neg_one_diagonal](declarations/detp-neg-one-diagonal.md) | 64 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `lemma` | [detp_neg_one_one](declarations/detp-neg-one-one.md) | 75 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `lemma` | [detp_one_of_isEmpty](declarations/detp-one-of-isempty.md) | 78 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `lemma` | [detp_neg_one_of_isEmpty](declarations/detp-neg-one-of-isempty.md) | 81 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `lemma` | [detp_submatrix_equiv_equiv](declarations/detp-submatrix-equiv-equiv.md) | 86 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `lemma` | [detp_submatrix_equiv_self](declarations/detp-submatrix-equiv-self.md) | 90 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `lemma` | [detp_smul](declarations/detp-smul.md) | 93 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `lemma` | [detp_map](declarations/detp-map.md) | 96 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `def` | [IsDetpBalanced](declarations/isdetpbalanced.md) | 102 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `lemma` | [IsDetpBalanced.refl](declarations/isdetpbalanced-refl.md) | 105 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `lemma` | [IsDetpBalanced.of_eq](declarations/isdetpbalanced-of-eq.md) | 109 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `lemma` | [IsDetpBalanced.symm](declarations/isdetpbalanced-symm.md) | 112 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `lemma` | [IsDetpBalanced_comm](declarations/isdetpbalanced-comm.md) | 114 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `lemma` | [IsDetpBalanced.trans](declarations/isdetpbalanced-trans.md) | 116 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `lemma` | [IsDetpBalanced.mul_add_mul_eq](declarations/isdetpbalanced-mul-add-mul-eq.md) | 123 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `lemma` | [isDetpBalanced_transpose_iff](declarations/isdetpbalanced-transpose-iff.md) | 131 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `lemma` | [IsDetpBalanced.submatrix_equiv](declarations/isdetpbalanced-submatrix-equiv.md) | 136 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `lemma` | [isDetpBalanced_submatrix_equiv_iff](declarations/isdetpbalanced-submatrix-equiv-iff.md) | 141 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `lemma` | [IsDetpBalanced.smul](declarations/isdetpbalanced-smul.md) | 146 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `def` | [Nonsingular](declarations/nonsingular.md) | 156 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `lemma` | [Nonsingular.eq_of_IsDetpBalanced](declarations/nonsingular-eq-of-isdetpbalanced.md) | 158 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `lemma` | [IsDetpBalanced.eq_of_nonsingular](declarations/isdetpbalanced-eq-of-nonsingular.md) | 161 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `lemma` | [nonsingular_one](declarations/nonsingular-one.md) | 164 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `lemma` | [Nonsingular.of_isEmpty](declarations/nonsingular-of-isempty.md) | 168 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `lemma` | [nonsingular_transpose_iff](declarations/nonsingular-transpose-iff.md) | 171 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `lemma` | [nonsingular_submatrix_equiv_iff](declarations/nonsingular-submatrix-equiv-iff.md) | 175 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `lemma` | [detp_eq_of_row_eq](declarations/detp-eq-of-row-eq.md) | 180 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `lemma` | [detp_eq_of_col_eq](declarations/detp-eq-of-col-eq.md) | 188 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `lemma` | [detp_eq_of_row_eq_zero](declarations/detp-eq-of-row-eq-zero.md) | 192 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `lemma` | [detp_eq_of_col_eq_zero](declarations/detp-eq-of-col-eq-zero.md) | 195 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `lemma` | [IsDetpBalanced.submatrix_of_card_le](declarations/isdetpbalanced-submatrix-of-card-le.md) | 200 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `def` | [adjp](declarations/adjp.md) | 218 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `lemma` | [adjp_apply](declarations/adjp-apply.md) | 221 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `lemma` | [adjp_transpose](declarations/adjp-transpose.md) | 225 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `lemma` | [adjp_none_right](declarations/adjp-none-right.md) | 228 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `lemma` | [adjp_none_none](declarations/adjp-none-none.md) | 239 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `lemma` | [adjp_some_none](declarations/adjp-some-none.md) | 243 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `lemma` | [adjp_none_some](declarations/adjp-none-some.md) | 249 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `theorem` | [detp_mul](declarations/detp-mul.md) | 253 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `theorem` | [mul_adjp_apply_eq](declarations/mul-adjp-apply-eq.md) | 293 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `theorem` | [mul_adjp_apply_ne](declarations/mul-adjp-apply-ne.md) | 300 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `theorem` | [adjp_mul_apply_eq](declarations/adjp-mul-apply-eq.md) | 308 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `theorem` | [adjp_mul_apply_ne](declarations/adjp-mul-apply-ne.md) | 311 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `theorem` | [mul_adjp_add_detp](declarations/mul-adjp-add-detp.md) | 315 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `lemma` | [detp_option_expand_row_none](declarations/detp-option-expand-row-none.md) | 322 | `BLOCKED_NATIVE_ADMISSION` |
| 51 | `theorem` | [isAddUnit_mul](declarations/isaddunit-mul.md) | 330 | `BLOCKED_NATIVE_ADMISSION` |
| 52 | `theorem` | [isAddUnit_detp_mul_detp](declarations/isaddunit-detp-mul-detp.md) | 336 | `BLOCKED_NATIVE_ADMISSION` |
| 53 | `theorem` | [isAddUnit_detp_smul_mul_adjp](declarations/isaddunit-detp-smul-mul-adjp.md) | 353 | `BLOCKED_NATIVE_ADMISSION` |
| 54 | `theorem` | [detp_smul_add_adjp](declarations/detp-smul-add-adjp.md) | 378 | `BLOCKED_NATIVE_ADMISSION` |
| 55 | `theorem` | [detp_smul_adjp](declarations/detp-smul-adjp.md) | 384 | `BLOCKED_NATIVE_ADMISSION` |
| 56 | `instance` | [(anonymous)](declarations/instance.md) | 395 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=3540ca0c68029b73a0c30d65912bf8eb1dd3be564d0cb0059771c171f13f09a6 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/SemiringInverse/Variant8cd3bf6ceff4afb5d32f3679def5312b3ba12ce2644ecd7d382e77a0fb128fba.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
