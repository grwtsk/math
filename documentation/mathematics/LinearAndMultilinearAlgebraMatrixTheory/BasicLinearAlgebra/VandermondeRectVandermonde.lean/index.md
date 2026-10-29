# Vandermonde Rect Vandermonde

[Complete source index](../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**28 observed declarations and anonymous commands**, 25 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Algebra/LinearAlgebra/Vandermonde/Variant951b97e8000773b3d3c4e5dc7a52bd433a81f59a45425ace9a9419ecde29dd30.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `e67040f9abd33c9db8c350614430a60085b8a6f1`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/VandermondeRectVandermonde.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [rectVandermonde](declarations/rectvandermonde.md) | 71 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `def` | [projVandermonde](declarations/projvandermonde.md) | 75 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `def` | [vandermonde](declarations/vandermonde.md) | 79 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `lemma` | [vandermonde_eq_projVandermonde](declarations/vandermonde-eq-projvandermonde.md) | 81 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [projVandermonde_apply](declarations/projvandermonde-apply.md) | 86 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [rectVandermonde_apply](declarations/rectvandermonde-apply.md) | 89 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [vandermonde_apply](declarations/vandermonde-apply.md) | 93 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [vandermonde_cons](declarations/vandermonde-cons.md) | 96 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [vandermonde_succ](declarations/vandermonde-succ.md) | 105 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [vandermonde_mul_vandermonde_transpose](declarations/vandermonde-mul-vandermonde-transpose.md) | 112 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [vandermonde_transpose_mul_vandermonde](declarations/vandermonde-transpose-mul-vandermonde.md) | 116 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [rectVandermonde_apply_zero_right](declarations/rectvandermonde-apply-zero-right.md) | 120 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [projVandermonde_apply_of_ne_zero](declarations/projvandermonde-apply-of-ne-zero.md) | 128 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [projVandermonde_apply_zero_right](declarations/projvandermonde-apply-zero-right.md) | 133 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [projVandermonde_comp](declarations/projvandermonde-comp.md) | 141 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [projVandermonde_map](declarations/projvandermonde-map.md) | 144 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [det_projVandermonde_of_field](declarations/det-projvandermonde-of-field.md) | 149 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [det_projVandermonde](declarations/det-projvandermonde.md) | 195 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [det_vandermonde](declarations/det-vandermonde.md) | 209 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [det_vandermonde_eq_zero_iff](declarations/det-vandermonde-eq-zero-iff.md) | 213 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [det_vandermonde_ne_zero_iff](declarations/det-vandermonde-ne-zero-iff.md) | 223 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [det_vandermonde_add](declarations/det-vandermonde-add.md) | 229 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [det_vandermonde_sub](declarations/det-vandermonde-sub.md) | 234 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [eq_zero_of_forall_index_sum_pow_mul_eq_zero](declarations/eq-zero-of-forall-index-sum-pow-mul-eq-zero.md) | 239 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [eq_zero_of_forall_index_sum_mul_pow_eq_zero](declarations/eq-zero-of-forall-index-sum-mul-pow-eq-zero.md) | 243 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [eq_zero_of_forall_pow_sum_mul_pow_eq_zero](declarations/eq-zero-of-forall-pow-sum-mul-pow-eq-zero.md) | 249 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [eval_matrixOfPolynomials_eq_vandermonde_mul_matrixOfPolynomials](declarations/eval-matrixofpolynomials-eq-vandermonde-mul-matrixofpolynomials.md) | 256 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [det_eval_matrixOfPolynomials_eq_det_vandermonde](declarations/det-eval-matrixofpolynomials-eq-det-vandermonde.md) | 269 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=9d8b38ce7402e81b52ca573fd49e2bcf347799e1871cfadd3a3c6839afc4beba -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/Vandermonde/Variant951b97e8000773b3d3c4e5dc7a52bd433a81f59a45425ace9a9419ecde29dd30.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
