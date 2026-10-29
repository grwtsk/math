# Frey Global Minimal Discriminant

[Complete source index](../../complete-source-index.md) · [Up one directory](../../complete-source-index.md) · [Full source](source.md)

**34 observed declarations and anonymous commands**, 27 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyGlobalMinimalDiscriminant.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `728e97ca9cdd31b64e83aa34c364577f81e4d104`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../_verification/specifications/CommutativeAlgebra/FreyGlobalMinimalDiscriminant.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [firstWitness](declarations/firstwitness.md) | 27 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `def` | [evenWitness](declarations/evenwitness.md) | 36 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `def` | [integerModel](declarations/integermodel.md) | 47 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `theorem` | [integerModel_baseChange](declarations/integermodel-basechange.md) | 55 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `def` | [localModel](declarations/localmodel.md) | 63 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [localModel_baseChange](declarations/localmodel-basechange.md) | 66 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [integral_at_prime](declarations/integral-at-prime.md) | 74 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [selected_scale_unit_at_odd](declarations/selected-scale-unit-at-odd.md) | 80 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [minimal_at_prime](declarations/minimal-at-prime.md) | 94 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [good_at_odd](declarations/good-at-odd.md) | 103 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [multiplicative_at_odd](declarations/multiplicative-at-odd.md) | 110 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [selected_minimum_at_prime](declarations/selected-minimum-at-prime.md) | 117 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `def` | [removedFactor](declarations/removedfactor.md) | 123 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [removedFactor_pos](declarations/removedfactor-pos.md) | 125 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [integer_delta_balance](declarations/integer-delta-balance.md) | 130 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [integer_delta_pos](declarations/integer-delta-pos.md) | 141 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `def` | [minimalDiscriminant](declarations/minimaldiscriminant.md) | 154 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [minimalDiscriminant_pos](declarations/minimaldiscriminant-pos.md) | 156 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [minimalDiscriminant_cast](declarations/minimaldiscriminant-cast.md) | 159 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [selected_delta_nat](declarations/selected-delta-nat.md) | 163 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `def` | [discriminantIdeal](declarations/discriminantideal.md) | 169 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [discriminantIdeal_eq](declarations/discriminantideal-eq.md) | 172 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [discriminantIdeal_ne_bot](declarations/discriminantideal-ne-bot.md) | 176 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [factorization_eq_minimum](declarations/factorization-eq-minimum.md) | 182 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [discriminant_balance](declarations/discriminant-balance.md) | 194 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [discriminant_formula](declarations/discriminant-formula.md) | 201 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [discriminant_is_square](declarations/discriminant-is-square.md) | 221 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [discriminant_size_bounds](declarations/discriminant-size-bounds.md) | 231 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [factorization_balance](declarations/factorization-balance.md) | 239 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [odd_depth](declarations/odd-depth.md) | 259 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [two_depth_balance](declarations/two-depth-balance.md) | 264 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [prime_dvd_iff](declarations/prime-dvd-iff.md) | 270 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [support_formula](declarations/support-formula.md) | 286 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [logarithmic_budget](declarations/logarithmic-budget.md) | 313 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=9b4c4c789a4ba811078e35572ad6651d79ffe0a087521ea4adab1f39651b9b69 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyGlobalMinimalDiscriminant.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
