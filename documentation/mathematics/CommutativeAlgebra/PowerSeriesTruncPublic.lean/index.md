# Power Series Trunc Public

[Complete source index](../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**34 observed declarations and anonymous commands**, 32 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Algebra/CommutativeAlgebra/Trunc/Variant271b23792ad48b412bb8907d1c9d0e0b1d7d1431c09485b751a7eb4eaa603b10.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `73daacee0a619409cdde8471ab98f56b20f81e9a`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../_verification/specifications/CommutativeAlgebra/PowerSeriesTruncPublic.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [truncAux](declarations/truncaux.md) | 41 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `theorem` | [coeff_truncAux](declarations/coeff-truncaux.md) | 44 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `def` | [trunc](declarations/trunc.md) | 51 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `lemma` | [trunc_apply](declarations/trunc-apply.md) | 60 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [coeff_trunc](declarations/coeff-trunc.md) | 63 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [trunc_one](declarations/trunc-one.md) | 68 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [trunc_C](declarations/trunc-c.md) | 73 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [trunc_succ](declarations/trunc-succ.md) | 78 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [natDegree_trunc_lt](declarations/natdegree-trunc-lt.md) | 82 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `lemma` | [trunc_zero'](declarations/trunc-zero.md) | 85 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [degree_trunc_lt](declarations/degree-trunc-lt.md) | 87 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [eval₂_trunc_eq_sum_range](declarations/eval-trunc-eq-sum-range.md) | 90 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [trunc_X](declarations/trunc-x.md) | 104 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `lemma` | [trunc_X_of](declarations/trunc-x-of.md) | 116 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `lemma` | [trunc_one_left](declarations/trunc-one-left.md) | 121 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `lemma` | [trunc_one_X](declarations/trunc-one-x.md) | 124 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `lemma` | [trunc_C_mul](declarations/trunc-c-mul.md) | 127 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `lemma` | [trunc_mul_C](declarations/trunc-mul-c.md) | 131 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `lemma` | [eq_shift_mul_X_pow_add_trunc](declarations/eq-shift-mul-x-pow-add-trunc.md) | 135 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `lemma` | [eq_X_pow_mul_shift_add_trunc](declarations/eq-x-pow-mul-shift-add-trunc.md) | 143 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `lemma` | [monomial_eq_C_mul_X_pow](declarations/monomial-eq-c-mul-x-pow.md) | 147 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `lemma` | [trunc_X_pow_self_mul](declarations/trunc-x-pow-self-mul.md) | 151 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [trunc_trunc_of_le](declarations/trunc-trunc-of-le.md) | 166 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [trunc_trunc](declarations/trunc-trunc.md) | 174 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [trunc_trunc_mul](declarations/trunc-trunc-mul.md) | 177 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [trunc_mul_trunc](declarations/trunc-mul-trunc.md) | 188 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [trunc_trunc_mul_trunc](declarations/trunc-trunc-mul-trunc.md) | 192 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [trunc_trunc_pow](declarations/trunc-trunc-pow.md) | 196 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [trunc_coe_eq_self](declarations/trunc-coe-eq-self.md) | 205 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [coeff_coe_trunc_of_lt](declarations/coeff-coe-trunc-of-lt.md) | 218 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [coeff_mul_eq_coeff_trunc_mul_trunc₂](declarations/coeff-mul-eq-coeff-trunc-mul-trunc-source-edition-2.md) | 224 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [coeff_mul_eq_coeff_trunc_mul_trunc](declarations/coeff-mul-eq-coeff-trunc-mul-trunc.md) | 230 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `lemma` | [trunc_sub](declarations/trunc-sub.md) | 241 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `lemma` | [trunc_map](declarations/trunc-map.md) | 250 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=3c8355b22a35390f008c55b2c5ba84026e60b4a039fcc69a25103ff72ff95645 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/CommutativeAlgebra/Trunc/Variant271b23792ad48b412bb8907d1c9d0e0b1d7d1431c09485b751a7eb4eaa603b10.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
