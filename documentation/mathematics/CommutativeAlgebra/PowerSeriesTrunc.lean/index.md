# Power Series Trunc

[Complete source index](../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**30 observed declarations and anonymous commands**, 29 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Algebra/CommutativeAlgebra/Trunc/Variant57dc3b6e06dd7fde44fb667ce8ea33f315d9f61b0179970b5d097b1d25a92918.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `0194e383101dc71d7637b9b309ec774ed78e1784`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../_verification/specifications/CommutativeAlgebra/PowerSeriesTrunc.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [trunc](declarations/trunc.md) | 37 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `theorem` | [coeff_trunc](declarations/coeff-trunc.md) | 40 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `theorem` | [trunc_zero](declarations/trunc-zero-source-edition-2.md) | 45 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `theorem` | [trunc_one](declarations/trunc-one.md) | 51 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [trunc_C](declarations/trunc-c.md) | 61 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [trunc_add](declarations/trunc-add.md) | 67 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [trunc_succ](declarations/trunc-succ.md) | 74 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [natDegree_trunc_lt](declarations/natdegree-trunc-lt.md) | 78 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `lemma` | [trunc_zero'](declarations/trunc-zero.md) | 87 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [degree_trunc_lt](declarations/degree-trunc-lt.md) | 89 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [eval₂_trunc_eq_sum_range](declarations/eval-trunc-eq-sum-range.md) | 98 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [trunc_X](declarations/trunc-x.md) | 112 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `lemma` | [trunc_X_of](declarations/trunc-x-of.md) | 124 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `lemma` | [trunc_one_left](declarations/trunc-one-left.md) | 133 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `lemma` | [trunc_one_X](declarations/trunc-one-x.md) | 136 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `lemma` | [trunc_C_mul](declarations/trunc-c-mul.md) | 139 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `lemma` | [trunc_mul_C](declarations/trunc-mul-c.md) | 143 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `lemma` | [eq_shift_mul_X_pow_add_trunc](declarations/eq-shift-mul-x-pow-add-trunc.md) | 147 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `lemma` | [eq_X_pow_mul_shift_add_trunc](declarations/eq-x-pow-mul-shift-add-trunc.md) | 155 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [trunc_trunc_of_le](declarations/trunc-trunc-of-le.md) | 171 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [trunc_trunc](declarations/trunc-trunc.md) | 179 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [trunc_trunc_mul](declarations/trunc-trunc-mul.md) | 182 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [trunc_mul_trunc](declarations/trunc-mul-trunc.md) | 193 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [trunc_trunc_mul_trunc](declarations/trunc-trunc-mul-trunc.md) | 197 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [trunc_trunc_pow](declarations/trunc-trunc-pow.md) | 201 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [trunc_coe_eq_self](declarations/trunc-coe-eq-self.md) | 210 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [coeff_coe_trunc_of_lt](declarations/coeff-coe-trunc-of-lt.md) | 223 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [coeff_mul_eq_coeff_trunc_mul_trunc₂](declarations/coeff-mul-eq-coeff-trunc-mul-trunc.md) | 229 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [coeff_mul_eq_coeff_trunc_mul_trunc](declarations/coeff-mul-eq-coeff-trunc-mul-trunc-source-edition-2.md) | 235 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `lemma` | [trunc_map](declarations/trunc-map.md) | 244 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=ecbdc522af8a69a82f74729d013ac2f9d56b94e719a4993f419d89c9b202683b -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/CommutativeAlgebra/Trunc/Variant57dc3b6e06dd7fde44fb667ce8ea33f315d9f61b0179970b5d097b1d25a92918.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
