# Pell Namespaced Aligned

[Complete source index](../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**63 observed declarations and anonymous commands**, 54 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/NumberTheory/DiophantineEquations/Pell/Variant76498059c000506808554965423880faca0c6def5f4bf48f85173fb5e1803940.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `91c03851fa8c4a2b26e030fb2f66e8da20a71f30`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../_verification/specifications/NumberTheory/PellNamespacedAligned.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `theorem` | [is_pell_solution_iff_mem_unitary](declarations/is-pell-solution-iff-mem-unitary.md) | 91 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `def` | [Solution₁](declarations/solution.md) | 101 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `instance` | [instCommGroup](declarations/instcommgroup.md) | 111 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `instance` | [instHasDistribNeg](declarations/insthasdistribneg.md) | 115 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `instance` | [instInhabited](declarations/instinhabited.md) | 119 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `instance` | [(anonymous)](declarations/instance.md) | 123 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `def` | [x](declarations/x.md) | 126 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `def` | [y](declarations/y.md) | 131 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [prop](declarations/prop.md) | 136 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [prop_x](declarations/prop-x.md) | 141 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [prop_y](declarations/prop-y.md) | 145 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [ext](declarations/ext.md) | 150 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `def` | [mk](declarations/mk.md) | 155 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [x_mk](declarations/x-mk.md) | 161 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [y_mk](declarations/y-mk.md) | 166 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [coe_mk](declarations/coe-mk.md) | 171 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [x_one](declarations/x-one.md) | 176 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [y_one](declarations/y-one.md) | 181 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [x_mul](declarations/x-mul.md) | 186 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [y_mul](declarations/y-mul.md) | 192 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [x_inv](declarations/x-inv.md) | 197 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [y_inv](declarations/y-inv.md) | 202 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [x_neg](declarations/x-neg.md) | 207 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [y_neg](declarations/y-neg.md) | 212 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [eq_zero_of_d_neg](declarations/eq-zero-of-d-neg.md) | 217 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [x_ne_zero](declarations/x-ne-zero.md) | 228 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [y_ne_zero_of_one_lt_x](declarations/y-ne-zero-of-one-lt-x.md) | 236 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [d_pos_of_one_lt_x](declarations/d-pos-of-one-lt-x.md) | 244 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [d_nonsquare_of_one_lt_x](declarations/d-nonsquare-of-one-lt-x.md) | 251 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [eq_one_of_x_eq_one](declarations/eq-one-of-x-eq-one.md) | 259 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [eq_one_or_neg_one_iff_y_eq_zero](declarations/eq-one-or-neg-one-iff-y-eq-zero.md) | 266 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [x_mul_pos](declarations/x-mul-pos.md) | 274 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [y_mul_pos](declarations/y-mul-pos.md) | 291 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [x_pow_pos](declarations/x-pow-pos.md) | 299 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `theorem` | [y_pow_succ_pos](declarations/y-pow-succ-pos.md) | 308 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `theorem` | [y_zpow_pos](declarations/y-zpow-pos.md) | 318 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `theorem` | [x_zpow_pos](declarations/x-zpow-pos.md) | 327 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `theorem` | [sign_y_zpow_eq_sign_of_x_pos_of_y_pos](declarations/sign-y-zpow-eq-sign-of-x-pos-of-y-pos.md) | 339 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `theorem` | [exists_pos_variant](declarations/exists-pos-variant.md) | 351 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `theorem` | [exists_of_not_isSquare](declarations/exists-of-not-issquare-source-edition-2.md) | 377 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `theorem` | [exists_iff_not_isSquare](declarations/exists-iff-not-issquare.md) | 449 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `theorem` | [exists_nontrivial_of_not_isSquare](declarations/exists-nontrivial-of-not-issquare.md) | 461 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `theorem` | [exists_pos_of_not_isSquare](declarations/exists-pos-of-not-issquare.md) | 470 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `def` | [IsFundamental](declarations/isfundamental.md) | 494 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `theorem` | [x_pos](declarations/x-pos.md) | 503 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `theorem` | [d_pos](declarations/d-pos.md) | 508 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `theorem` | [d_nonsquare](declarations/d-nonsquare.md) | 513 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `theorem` | [subsingleton](declarations/subsingleton.md) | 518 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `theorem` | [exists_of_not_isSquare](declarations/exists-of-not-issquare.md) | 526 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `theorem` | [y_strictMono](declarations/y-strictmono.md) | 552 | `BLOCKED_NATIVE_ADMISSION` |
| 51 | `theorem` | [zpow_y_lt_iff_lt](declarations/zpow-y-lt-iff-lt.md) | 574 | `BLOCKED_NATIVE_ADMISSION` |
| 52 | `theorem` | [zpow_eq_one_iff](declarations/zpow-eq-one-iff.md) | 582 | `BLOCKED_NATIVE_ADMISSION` |
| 53 | `theorem` | [zpow_ne_neg_zpow](declarations/zpow-ne-neg-zpow.md) | 589 | `BLOCKED_NATIVE_ADMISSION` |
| 54 | `theorem` | [x_le_x](declarations/x-le-x.md) | 599 | `BLOCKED_NATIVE_ADMISSION` |
| 55 | `theorem` | [y_le_y](declarations/y-le-y.md) | 606 | `BLOCKED_NATIVE_ADMISSION` |
| 56 | `theorem` | [x_mul_y_le_y_mul_x](declarations/x-mul-y-le-y-mul-x.md) | 616 | `BLOCKED_NATIVE_ADMISSION` |
| 57 | `theorem` | [mul_inv_y_nonneg](declarations/mul-inv-y-nonneg.md) | 628 | `BLOCKED_NATIVE_ADMISSION` |
| 58 | `theorem` | [mul_inv_x_pos](declarations/mul-inv-x-pos.md) | 636 | `BLOCKED_NATIVE_ADMISSION` |
| 59 | `theorem` | [mul_inv_x_lt_x](declarations/mul-inv-x-lt-x.md) | 649 | `BLOCKED_NATIVE_ADMISSION` |
| 60 | `theorem` | [eq_pow_of_nonneg](declarations/eq-pow-of-nonneg.md) | 671 | `BLOCKED_NATIVE_ADMISSION` |
| 61 | `theorem` | [eq_zpow_or_neg_zpow](declarations/eq-zpow-or-neg-zpow.md) | 701 | `BLOCKED_NATIVE_ADMISSION` |
| 62 | `theorem` | [existsUnique_pos_generator](declarations/existsunique-pos-generator.md) | 720 | `BLOCKED_NATIVE_ADMISSION` |
| 63 | `theorem` | [pos_generator_iff_fundamental](declarations/pos-generator-iff-fundamental.md) | 748 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=51fb2c08315d8f4c88ff4f900939fd590832c2abfd5f9062c3356cf1283329f9 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/DiophantineEquations/Pell/Variant76498059c000506808554965423880faca0c6def5f4bf48f85173fb5e1803940.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
