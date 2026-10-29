# Vandermonde Public

[Complete source index](../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**31 observed declarations and anonymous commands**, 28 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Algebra/LinearAlgebra/Vandermonde/Variant132f71d1c931c61cceac4770d5ea1ddabd71d2f0f7657b40e2a90cd9e846c58c.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `93d7a0d0453c8bd268025ec25a2390ec96a36091`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/VandermondePublic.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [rectVandermonde](declarations/rectvandermonde.md) | 76 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `def` | [projVandermonde](declarations/projvandermonde.md) | 80 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `def` | [vandermonde](declarations/vandermonde.md) | 84 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `lemma` | [vandermonde_eq_projVandermonde](declarations/vandermonde-eq-projvandermonde.md) | 86 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [projVandermonde_apply](declarations/projvandermonde-apply.md) | 91 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [rectVandermonde_apply](declarations/rectvandermonde-apply.md) | 94 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [vandermonde_apply](declarations/vandermonde-apply.md) | 98 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [vandermonde_cons](declarations/vandermonde-cons.md) | 101 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [vandermonde_succ](declarations/vandermonde-succ.md) | 110 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [vandermonde_mul_vandermonde_transpose](declarations/vandermonde-mul-vandermonde-transpose.md) | 117 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [vandermonde_transpose_mul_vandermonde](declarations/vandermonde-transpose-mul-vandermonde.md) | 121 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [rectVandermonde_apply_zero_right](declarations/rectvandermonde-apply-zero-right.md) | 125 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [projVandermonde_apply_of_ne_zero](declarations/projvandermonde-apply-of-ne-zero.md) | 133 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [projVandermonde_apply_zero_right](declarations/projvandermonde-apply-zero-right.md) | 138 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [projVandermonde_comp](declarations/projvandermonde-comp.md) | 146 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [projVandermonde_map](declarations/projvandermonde-map.md) | 149 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [det_projVandermonde_of_field](declarations/det-projvandermonde-of-field.md) | 154 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [det_projVandermonde](declarations/det-projvandermonde.md) | 205 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [det_vandermonde](declarations/det-vandermonde.md) | 219 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [det_vandermonde_eq_zero_iff](declarations/det-vandermonde-eq-zero-iff.md) | 223 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [det_vandermonde_ne_zero_iff](declarations/det-vandermonde-ne-zero-iff.md) | 233 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [det_vandermonde_add](declarations/det-vandermonde-add.md) | 239 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [det_vandermonde_sub](declarations/det-vandermonde-sub.md) | 244 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [eq_zero_of_forall_index_sum_pow_mul_eq_zero](declarations/eq-zero-of-forall-index-sum-pow-mul-eq-zero.md) | 249 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [eq_zero_of_forall_index_sum_mul_pow_eq_zero](declarations/eq-zero-of-forall-index-sum-mul-pow-eq-zero.md) | 253 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [eq_zero_of_forall_pow_sum_mul_pow_eq_zero](declarations/eq-zero-of-forall-pow-sum-mul-pow-eq-zero.md) | 259 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [eval_matrixOfPolynomials_eq_vandermonde_mul_matrixOfPolynomials](declarations/eval-matrixofpolynomials-eq-vandermonde-mul-matrixofpolynomials.md) | 266 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [det_eval_matrixOfPolynomials_eq_det_vandermonde](declarations/det-eval-matrixofpolynomials-eq-det-vandermonde.md) | 280 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `lemma` | [det_vandermonde_id_eq_superFactorial](declarations/det-vandermonde-id-eq-superfactorial.md) | 287 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `lemma` | [of_eval_descPochhammer_eq_mul_of_choose](declarations/of-eval-descpochhammer-eq-mul-of-choose.md) | 301 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `lemma` | [superFactorial_dvd_vandermonde_det](declarations/superfactorial-dvd-vandermonde-det.md) | 311 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=3c5ea7ff962fb61a7150aecb3658a1ec276f01b75b4a82ca39ce7a290e47109f -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/Vandermonde/Variant132f71d1c931c61cceac4770d5ea1ddabd71d2f0f7657b40e2a90cd9e846c58c.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
