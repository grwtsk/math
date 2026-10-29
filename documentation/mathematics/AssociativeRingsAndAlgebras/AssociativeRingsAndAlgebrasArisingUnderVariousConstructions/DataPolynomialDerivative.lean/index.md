# Data Polynomial Derivative

[Complete source index](../../../complete-source-index.md) · [Up one directory](../../../complete-source-index.md) · [Full source](source.md)

**74 observed declarations and anonymous commands**, 73 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Algebra/CommutativeAlgebra/Derivative/Variant3f71d46892f3c6f5ee20cfc062652b6458ad8f82bf6cee82b1842b0ddc71a83b.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `fbf660a76a393947aa69c8343243d3d817fb5941`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/DataPolynomialDerivative.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [derivative](declarations/derivative.md) | 39 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `theorem` | [derivative_apply](declarations/derivative-apply.md) | 52 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `theorem` | [coeff_derivative](declarations/coeff-derivative.md) | 56 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `theorem` | [derivative_zero](declarations/derivative-zero.md) | 76 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [iterate_derivative_zero](declarations/iterate-derivative-zero.md) | 81 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [derivative_monomial](declarations/derivative-monomial.md) | 88 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [derivative_C_mul_X](declarations/derivative-c-mul-x.md) | 94 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [derivative_C_mul_X_pow](declarations/derivative-c-mul-x-pow.md) | 99 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [derivative_C_mul_X_sq](declarations/derivative-c-mul-x-sq.md) | 105 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [derivative_X_pow](declarations/derivative-x-pow.md) | 111 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [derivative_X_sq](declarations/derivative-x-sq.md) | 117 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [derivative_C](declarations/derivative-c.md) | 123 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [derivative_of_natDegree_zero](declarations/derivative-of-natdegree-zero.md) | 127 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [derivative_X](declarations/derivative-x.md) | 132 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [derivative_one](declarations/derivative-one.md) | 138 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [derivative_bit0](declarations/derivative-bit0.md) | 144 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [derivative_bit1](declarations/derivative-bit1.md) | 149 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [derivative_add](declarations/derivative-add.md) | 153 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [derivative_X_add_C](declarations/derivative-x-add-c.md) | 158 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [derivative_sum](declarations/derivative-sum.md) | 164 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [derivative_smul](declarations/derivative-smul.md) | 170 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [iterate_derivative_smul](declarations/iterate-derivative-smul.md) | 176 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [iterate_derivative_C_mul](declarations/iterate-derivative-c-mul.md) | 184 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [of_mem_support_derivative](declarations/of-mem-support-derivative.md) | 190 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [degree_derivative_lt](declarations/degree-derivative-lt.md) | 196 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [degree_derivative_le](declarations/degree-derivative-le.md) | 202 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [natDegree_derivative_lt](declarations/natdegree-derivative-lt.md) | 206 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [natDegree_derivative_le](declarations/natdegree-derivative-le.md) | 215 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [derivative_nat_cast](declarations/derivative-nat-cast.md) | 222 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [derivative_ofNat](declarations/derivative-ofnat.md) | 229 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [iterate_derivative_eq_zero](declarations/iterate-derivative-eq-zero.md) | 233 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [iterate_derivative_C](declarations/iterate-derivative-c.md) | 246 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [iterate_derivative_one](declarations/iterate-derivative-one.md) | 252 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [iterate_derivative_X](declarations/iterate-derivative-x.md) | 257 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `theorem` | [natDegree_eq_zero_of_derivative_eq_zero](declarations/natdegree-eq-zero-of-derivative-eq-zero.md) | 262 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `theorem` | [eq_C_of_derivative_eq_zero](declarations/eq-c-of-derivative-eq-zero.md) | 279 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `theorem` | [derivative_mul](declarations/derivative-mul.md) | 286 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `theorem` | [derivative_eval](declarations/derivative-eval.md) | 322 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `theorem` | [derivative_map](declarations/derivative-map.md) | 328 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `theorem` | [iterate_derivative_map](declarations/iterate-derivative-map.md) | 340 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `theorem` | [derivative_nat_cast_mul](declarations/derivative-nat-cast-mul.md) | 347 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `theorem` | [iterate_derivative_nat_cast_mul](declarations/iterate-derivative-nat-cast-mul.md) | 353 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `theorem` | [mem_support_derivative](declarations/mem-support-derivative.md) | 358 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `theorem` | [degree_derivative_eq](declarations/degree-derivative-eq.md) | 367 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `theorem` | [coeff_iterate_derivative_as_prod_Ico](declarations/coeff-iterate-derivative-as-prod-ico.md) | 386 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `theorem` | [coeff_iterate_derivative_as_prod_range](declarations/coeff-iterate-derivative-as-prod-range.md) | 405 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `theorem` | [iterate_derivative_mul](declarations/iterate-derivative-mul.md) | 420 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `theorem` | [derivative_pow_succ](declarations/derivative-pow-succ.md) | 469 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `theorem` | [derivative_pow](declarations/derivative-pow.md) | 476 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `theorem` | [derivative_sq](declarations/derivative-sq.md) | 482 | `BLOCKED_NATIVE_ADMISSION` |
| 51 | `theorem` | [dvd_iterate_derivative_pow](declarations/dvd-iterate-derivative-pow.md) | 486 | `BLOCKED_NATIVE_ADMISSION` |
| 52 | `theorem` | [iterate_derivative_X_pow_eq_nat_cast_mul](declarations/iterate-derivative-x-pow-eq-nat-cast-mul.md) | 494 | `BLOCKED_NATIVE_ADMISSION` |
| 53 | `theorem` | [iterate_derivative_X_pow_eq_C_mul](declarations/iterate-derivative-x-pow-eq-c-mul.md) | 504 | `BLOCKED_NATIVE_ADMISSION` |
| 54 | `theorem` | [iterate_derivative_X_pow_eq_smul](declarations/iterate-derivative-x-pow-eq-smul.md) | 510 | `BLOCKED_NATIVE_ADMISSION` |
| 55 | `theorem` | [derivative_X_add_C_pow](declarations/derivative-x-add-c-pow.md) | 516 | `BLOCKED_NATIVE_ADMISSION` |
| 56 | `theorem` | [derivative_X_add_C_sq](declarations/derivative-x-add-c-sq.md) | 522 | `BLOCKED_NATIVE_ADMISSION` |
| 57 | `theorem` | [iterate_derivative_X_add_pow](declarations/iterate-derivative-x-add-pow.md) | 527 | `BLOCKED_NATIVE_ADMISSION` |
| 58 | `theorem` | [derivative_comp](declarations/derivative-comp.md) | 538 | `BLOCKED_NATIVE_ADMISSION` |
| 59 | `theorem` | [derivative_eval₂_C](declarations/derivative-eval-c.md) | 548 | `BLOCKED_NATIVE_ADMISSION` |
| 60 | `theorem` | [derivative_prod](declarations/derivative-prod.md) | 559 | `BLOCKED_NATIVE_ADMISSION` |
| 61 | `theorem` | [derivative_neg](declarations/derivative-neg.md) | 583 | `BLOCKED_NATIVE_ADMISSION` |
| 62 | `theorem` | [iterate_derivative_neg](declarations/iterate-derivative-neg.md) | 588 | `BLOCKED_NATIVE_ADMISSION` |
| 63 | `theorem` | [derivative_sub](declarations/derivative-sub.md) | 593 | `BLOCKED_NATIVE_ADMISSION` |
| 64 | `theorem` | [derivative_X_sub_C](declarations/derivative-x-sub-c.md) | 598 | `BLOCKED_NATIVE_ADMISSION` |
| 65 | `theorem` | [iterate_derivative_sub](declarations/iterate-derivative-sub.md) | 604 | `BLOCKED_NATIVE_ADMISSION` |
| 66 | `theorem` | [derivative_int_cast](declarations/derivative-int-cast.md) | 610 | `BLOCKED_NATIVE_ADMISSION` |
| 67 | `theorem` | [derivative_int_cast_mul](declarations/derivative-int-cast-mul.md) | 615 | `BLOCKED_NATIVE_ADMISSION` |
| 68 | `theorem` | [iterate_derivative_int_cast_mul](declarations/iterate-derivative-int-cast-mul.md) | 621 | `BLOCKED_NATIVE_ADMISSION` |
| 69 | `theorem` | [derivative_comp_one_sub_X](declarations/derivative-comp-one-sub-x.md) | 632 | `BLOCKED_NATIVE_ADMISSION` |
| 70 | `theorem` | [iterate_derivative_comp_one_sub_X](declarations/iterate-derivative-comp-one-sub-x.md) | 638 | `BLOCKED_NATIVE_ADMISSION` |
| 71 | `theorem` | [eval_multiset_prod_X_sub_C_derivative](declarations/eval-multiset-prod-x-sub-c-derivative.md) | 646 | `BLOCKED_NATIVE_ADMISSION` |
| 72 | `theorem` | [derivative_X_sub_C_pow](declarations/derivative-x-sub-c-pow.md) | 655 | `BLOCKED_NATIVE_ADMISSION` |
| 73 | `theorem` | [derivative_X_sub_C_sq](declarations/derivative-x-sub-c-sq.md) | 661 | `BLOCKED_NATIVE_ADMISSION` |
| 74 | `theorem` | [iterate_derivative_X_sub_pow](declarations/iterate-derivative-x-sub-pow.md) | 666 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=10e3be37c36d76f907e0e603f277efc6c8adb0ded70691ccfe910e5e3add328c -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/CommutativeAlgebra/Derivative/Variant3f71d46892f3c6f5ee20cfc062652b6458ad8f82bf6cee82b1842b0ddc71a83b.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
