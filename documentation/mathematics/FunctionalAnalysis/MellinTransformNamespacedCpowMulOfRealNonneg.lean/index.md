# Mellin Transform Namespaced Cpow Mul Of Real Nonneg

[Complete source index](../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**31 observed declarations and anonymous commands**, 28 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/MellinTransform/Variantb4f47c0ac37036f74bac650a5cbf1a6b179b231f6027c5578430e761d6b2173c.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `25b9ec15830990f700c9e5dd190ee90ccf39262c`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../_verification/specifications/FunctionalAnalysis/MellinTransformNamespacedCpowMulOfRealNonneg.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `theorem` | [cpow_mul_ofReal_nonneg](declarations/cpow-mul-ofreal-nonneg.md) | 41 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `def` | [MellinConvergent](declarations/mellinconvergent.md) | 63 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `theorem` | [MellinConvergent.const_smul](declarations/mellinconvergent-const-smul.md) | 67 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `theorem` | [MellinConvergent.cpow_smul](declarations/mellinconvergent-cpow-smul.md) | 73 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [MellinConvergent.div_const](declarations/mellinconvergent-div-const.md) | 79 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [MellinConvergent.comp_mul_left](declarations/mellinconvergent-comp-mul-left.md) | 84 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [MellinConvergent.comp_rpow](declarations/mellinconvergent-comp-rpow.md) | 98 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `def` | [mellin](declarations/mellin.md) | 114 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [mellin_cpow_smul](declarations/mellin-cpow-smul.md) | 119 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [mellin_const_smul](declarations/mellin-const-smul.md) | 125 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [mellin_div_const](declarations/mellin-div-const.md) | 130 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [mellin_comp_rpow](declarations/mellin-comp-rpow.md) | 134 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [mellin_comp_mul_left](declarations/mellin-comp-mul-left.md) | 149 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [mellin_comp_mul_right](declarations/mellin-comp-mul-right.md) | 167 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [mellin_comp_inv](declarations/mellin-comp-inv.md) | 172 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `def` | [HasMellin](declarations/hasmellin.md) | 179 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [hasMellin_add](declarations/hasmellin-add.md) | 183 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [hasMellin_sub](declarations/hasmellin-sub.md) | 189 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [mellin_convergent_iff_norm](declarations/mellin-convergent-iff-norm.md) | 205 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [mellin_convergent_top_of_isBigO](declarations/mellin-convergent-top-of-isbigo.md) | 219 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [mellin_convergent_zero_of_isBigO](declarations/mellin-convergent-zero-of-isbigo.md) | 246 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [mellin_convergent_of_isBigO_scalar](declarations/mellin-convergent-of-isbigo-scalar.md) | 279 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [mellinConvergent_of_isBigO_rpow](declarations/mellinconvergent-of-isbigo-rpow.md) | 298 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [isBigO_rpow_top_log_smul](declarations/isbigo-rpow-top-log-smul.md) | 313 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [isBigO_rpow_zero_log_smul](declarations/isbigo-rpow-zero-log-smul.md) | 326 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [mellin_hasDerivAt_of_isBigO_rpow](declarations/mellin-hasderivat-of-isbigo-rpow.md) | 348 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [mellin_differentiableAt_of_isBigO_rpow](declarations/mellin-differentiableat-of-isbigo-rpow.md) | 430 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [mellinConvergent_of_isBigO_rpow_exp](declarations/mellinconvergent-of-isbigo-rpow-exp.md) | 445 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [mellin_differentiableAt_of_isBigO_rpow_exp](declarations/mellin-differentiableat-of-isbigo-rpow-exp.md) | 455 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [hasMellin_one_Ioc](declarations/hasmellin-one-ioc.md) | 473 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [hasMellin_cpow_Ioc](declarations/hasmellin-cpow-ioc.md) | 489 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=d928757af9d1b78f789a6c9a08a58e95a7ac205f0a8dd9d7cbc57b09eedb5e84 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/MellinTransform/Variantb4f47c0ac37036f74bac650a5cbf1a6b179b231f6027c5578430e761d6b2173c.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
