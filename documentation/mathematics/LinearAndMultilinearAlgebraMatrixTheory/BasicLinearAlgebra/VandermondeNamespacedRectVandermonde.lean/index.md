# Vandermonde Namespaced Rect Vandermonde

[Complete source index](../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**28 observed declarations and anonymous commands**, 25 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Algebra/LinearAlgebra/Vandermonde/Variant23cc46b378e1a755ed82200800d4434c66440112d2aefaba7a339114d5079317.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `0ddafed9bd60d412563027fef32fadd78c6e6456`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/VandermondeNamespacedRectVandermonde.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [rectVandermonde](declarations/rectvandermonde.md) | 79 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `def` | [projVandermonde](declarations/projvandermonde.md) | 83 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `def` | [vandermonde](declarations/vandermonde.md) | 87 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `lemma` | [vandermonde_eq_projVandermonde](declarations/vandermonde-eq-projvandermonde.md) | 89 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [projVandermonde_apply](declarations/projvandermonde-apply.md) | 94 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [rectVandermonde_apply](declarations/rectvandermonde-apply.md) | 97 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [vandermonde_apply](declarations/vandermonde-apply.md) | 101 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [vandermonde_cons](declarations/vandermonde-cons.md) | 104 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [vandermonde_succ](declarations/vandermonde-succ.md) | 113 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [vandermonde_mul_vandermonde_transpose](declarations/vandermonde-mul-vandermonde-transpose.md) | 120 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [vandermonde_transpose_mul_vandermonde](declarations/vandermonde-transpose-mul-vandermonde.md) | 124 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [rectVandermonde_apply_zero_right](declarations/rectvandermonde-apply-zero-right.md) | 128 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [projVandermonde_apply_of_ne_zero](declarations/projvandermonde-apply-of-ne-zero.md) | 136 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [projVandermonde_apply_zero_right](declarations/projvandermonde-apply-zero-right.md) | 141 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [projVandermonde_comp](declarations/projvandermonde-comp.md) | 149 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [projVandermonde_map](declarations/projvandermonde-map.md) | 152 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [det_projVandermonde_of_field](declarations/det-projvandermonde-of-field.md) | 157 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [det_projVandermonde](declarations/det-projvandermonde.md) | 203 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [det_vandermonde](declarations/det-vandermonde.md) | 217 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [det_vandermonde_eq_zero_iff](declarations/det-vandermonde-eq-zero-iff.md) | 221 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [det_vandermonde_ne_zero_iff](declarations/det-vandermonde-ne-zero-iff.md) | 231 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [det_vandermonde_add](declarations/det-vandermonde-add.md) | 237 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [det_vandermonde_sub](declarations/det-vandermonde-sub.md) | 242 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [eq_zero_of_forall_index_sum_pow_mul_eq_zero](declarations/eq-zero-of-forall-index-sum-pow-mul-eq-zero.md) | 247 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [eq_zero_of_forall_index_sum_mul_pow_eq_zero](declarations/eq-zero-of-forall-index-sum-mul-pow-eq-zero.md) | 251 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [eq_zero_of_forall_pow_sum_mul_pow_eq_zero](declarations/eq-zero-of-forall-pow-sum-mul-pow-eq-zero.md) | 257 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [eval_matrixOfPolynomials_eq_vandermonde_mul_matrixOfPolynomials](declarations/eval-matrixofpolynomials-eq-vandermonde-mul-matrixofpolynomials.md) | 264 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [det_eval_matrixOfPolynomials_eq_det_vandermonde](declarations/det-eval-matrixofpolynomials-eq-det-vandermonde.md) | 277 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=9104288fbdeb924871a0bf61c53f85639bcb50aaa7d1296a6b1f28786ef9ca09 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/Vandermonde/Variant23cc46b378e1a755ed82200800d4434c66440112d2aefaba7a339114d5079317.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
