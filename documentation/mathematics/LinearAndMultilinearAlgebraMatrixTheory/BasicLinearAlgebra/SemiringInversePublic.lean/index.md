# Semiring Inverse Public

[Complete source index](../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**56 observed declarations and anonymous commands**, 51 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/SemiringInverse/Variant47f30d841c0ae9839f22278bb3e7db1f8ef207a740f6823421e01d20590f3844.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `08c53f1e8099795eb4464912bce05c1c3bf6157f`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SemiringInversePublic.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [detp](declarations/detp.md) | 35 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `lemma` | [detp_transpose](declarations/detp-transpose.md) | 37 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `lemma` | [detp_zero](declarations/detp-zero.md) | 40 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `lemma` | [detp_one_diagonal](declarations/detp-one-diagonal.md) | 43 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `lemma` | [detp_one_one](declarations/detp-one-one.md) | 52 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `lemma` | [detp_neg_one_diagonal](declarations/detp-neg-one-diagonal.md) | 56 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `lemma` | [detp_neg_one_one](declarations/detp-neg-one-one.md) | 67 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `lemma` | [detp_one_of_isEmpty](declarations/detp-one-of-isempty.md) | 70 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `lemma` | [detp_neg_one_of_isEmpty](declarations/detp-neg-one-of-isempty.md) | 73 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `lemma` | [detp_submatrix_equiv_equiv](declarations/detp-submatrix-equiv-equiv.md) | 78 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `lemma` | [detp_submatrix_equiv_self](declarations/detp-submatrix-equiv-self.md) | 82 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `lemma` | [detp_smul](declarations/detp-smul.md) | 85 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `lemma` | [detp_map](declarations/detp-map.md) | 88 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `def` | [IsDetpBalanced](declarations/isdetpbalanced.md) | 94 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `lemma` | [IsDetpBalanced.refl](declarations/isdetpbalanced-refl.md) | 97 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `lemma` | [IsDetpBalanced.of_eq](declarations/isdetpbalanced-of-eq.md) | 101 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `lemma` | [IsDetpBalanced.symm](declarations/isdetpbalanced-symm.md) | 104 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `lemma` | [IsDetpBalanced_comm](declarations/isdetpbalanced-comm.md) | 106 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `lemma` | [IsDetpBalanced.trans](declarations/isdetpbalanced-trans.md) | 108 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `lemma` | [IsDetpBalanced.mul_add_mul_eq](declarations/isdetpbalanced-mul-add-mul-eq.md) | 115 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `lemma` | [isDetpBalanced_transpose_iff](declarations/isdetpbalanced-transpose-iff.md) | 123 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `lemma` | [IsDetpBalanced.submatrix_equiv](declarations/isdetpbalanced-submatrix-equiv.md) | 128 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `lemma` | [isDetpBalanced_submatrix_equiv_iff](declarations/isdetpbalanced-submatrix-equiv-iff.md) | 133 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `lemma` | [IsDetpBalanced.smul](declarations/isdetpbalanced-smul.md) | 138 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `def` | [Nonsingular](declarations/nonsingular.md) | 148 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `lemma` | [Nonsingular.eq_of_IsDetpBalanced](declarations/nonsingular-eq-of-isdetpbalanced.md) | 150 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `lemma` | [IsDetpBalanced.eq_of_nonsingular](declarations/isdetpbalanced-eq-of-nonsingular.md) | 153 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `lemma` | [nonsingular_one](declarations/nonsingular-one.md) | 156 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `lemma` | [Nonsingular.of_isEmpty](declarations/nonsingular-of-isempty.md) | 160 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `lemma` | [nonsingular_transpose_iff](declarations/nonsingular-transpose-iff.md) | 163 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `lemma` | [nonsingular_submatrix_equiv_iff](declarations/nonsingular-submatrix-equiv-iff.md) | 167 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `lemma` | [detp_eq_of_row_eq](declarations/detp-eq-of-row-eq.md) | 172 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `lemma` | [detp_eq_of_col_eq](declarations/detp-eq-of-col-eq.md) | 180 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `lemma` | [detp_eq_of_row_eq_zero](declarations/detp-eq-of-row-eq-zero.md) | 184 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `lemma` | [detp_eq_of_col_eq_zero](declarations/detp-eq-of-col-eq-zero.md) | 187 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `lemma` | [IsDetpBalanced.submatrix_of_card_le](declarations/isdetpbalanced-submatrix-of-card-le.md) | 192 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `def` | [adjp](declarations/adjp.md) | 210 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `lemma` | [adjp_apply](declarations/adjp-apply.md) | 213 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `lemma` | [adjp_transpose](declarations/adjp-transpose.md) | 217 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `lemma` | [adjp_none_right](declarations/adjp-none-right.md) | 220 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `lemma` | [adjp_none_none](declarations/adjp-none-none.md) | 231 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `lemma` | [adjp_some_none](declarations/adjp-some-none.md) | 235 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `lemma` | [adjp_none_some](declarations/adjp-none-some.md) | 241 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `theorem` | [detp_mul](declarations/detp-mul.md) | 245 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `theorem` | [mul_adjp_apply_eq](declarations/mul-adjp-apply-eq.md) | 285 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `theorem` | [mul_adjp_apply_ne](declarations/mul-adjp-apply-ne.md) | 292 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `theorem` | [adjp_mul_apply_eq](declarations/adjp-mul-apply-eq.md) | 300 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `theorem` | [adjp_mul_apply_ne](declarations/adjp-mul-apply-ne.md) | 303 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `theorem` | [mul_adjp_add_detp](declarations/mul-adjp-add-detp.md) | 307 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `lemma` | [detp_option_expand_row_none](declarations/detp-option-expand-row-none.md) | 314 | `BLOCKED_NATIVE_ADMISSION` |
| 51 | `theorem` | [isAddUnit_mul](declarations/isaddunit-mul.md) | 322 | `BLOCKED_NATIVE_ADMISSION` |
| 52 | `theorem` | [isAddUnit_detp_mul_detp](declarations/isaddunit-detp-mul-detp.md) | 328 | `BLOCKED_NATIVE_ADMISSION` |
| 53 | `theorem` | [isAddUnit_detp_smul_mul_adjp](declarations/isaddunit-detp-smul-mul-adjp.md) | 345 | `BLOCKED_NATIVE_ADMISSION` |
| 54 | `theorem` | [detp_smul_add_adjp](declarations/detp-smul-add-adjp.md) | 370 | `BLOCKED_NATIVE_ADMISSION` |
| 55 | `theorem` | [detp_smul_adjp](declarations/detp-smul-adjp.md) | 376 | `BLOCKED_NATIVE_ADMISSION` |
| 56 | `instance` | [(anonymous)](declarations/instance.md) | 387 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=07f1a0ccacabb87e5c68c019b7320c4b4b9ff250ed3eccf288bcf11bb0e0baff -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/SemiringInverse/Variant47f30d841c0ae9839f22278bb3e7db1f8ef207a740f6823421e01d20590f3844.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
