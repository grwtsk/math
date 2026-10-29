# Mellin Transform Complex

[Complete source index](../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**33 observed declarations and anonymous commands**, 28 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/MellinTransform/Variant96e3521b2255fae58d3b841873248bb8dcbd436733bf475b67b81ad16b642d97.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `4f54a3dee698116b1e4af5ac4489448dfe0bcfa3`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../_verification/specifications/FunctionalAnalysis/MellinTransformComplex.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [MellinConvergent](declarations/mellinconvergent.md) | 41 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `theorem` | [MellinConvergent.const_smul](declarations/mellinconvergent-const-smul.md) | 44 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `theorem` | [MellinConvergent.cpow_smul](declarations/mellinconvergent-cpow-smul.md) | 49 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `theorem` | [MellinConvergent.div_const](declarations/mellinconvergent-div-const.md) | 54 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [MellinConvergent.comp_mul_left](declarations/mellinconvergent-comp-mul-left.md) | 58 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [MellinConvergent.comp_rpow](declarations/mellinconvergent-comp-rpow.md) | 71 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `def` | [Complex.VerticalIntegrable](declarations/complex-verticalintegrable.md) | 83 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `def` | [mellin](declarations/mellin.md) | 88 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `def` | [mellinInv](declarations/mellininv.md) | 93 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [mellin_cpow_smul](declarations/mellin-cpow-smul.md) | 97 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [mellin_const_smul](declarations/mellin-const-smul.md) | 105 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [mellin_div_const](declarations/mellin-div-const.md) | 110 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [mellin_comp_rpow](declarations/mellin-comp-rpow.md) | 113 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [mellin_comp_mul_left](declarations/mellin-comp-mul-left.md) | 131 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [mellin_comp_mul_right](declarations/mellin-comp-mul-right.md) | 148 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [mellin_comp_inv](declarations/mellin-comp-inv.md) | 152 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `def` | [HasMellin](declarations/hasmellin.md) | 158 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [hasMellin_add](declarations/hasmellin-add.md) | 161 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [hasMellin_sub](declarations/hasmellin-sub.md) | 166 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [hasMellin_const_smul](declarations/hasmellin-const-smul.md) | 171 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [mellin_convergent_iff_norm](declarations/mellin-convergent-iff-norm.md) | 186 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [mellin_convergent_top_of_isBigO](declarations/mellin-convergent-top-of-isbigo.md) | 200 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [mellin_convergent_zero_of_isBigO](declarations/mellin-convergent-zero-of-isbigo.md) | 226 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [mellin_convergent_of_isBigO_scalar](declarations/mellin-convergent-of-isbigo-scalar.md) | 258 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [mellinConvergent_of_isBigO_rpow](declarations/mellinconvergent-of-isbigo-rpow.md) | 276 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [isBigO_rpow_top_log_smul](declarations/isbigo-rpow-top-log-smul.md) | 289 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [isBigO_rpow_zero_log_smul](declarations/isbigo-rpow-zero-log-smul.md) | 300 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [mellin_hasDerivAt_of_isBigO_rpow](declarations/mellin-hasderivat-of-isbigo-rpow.md) | 319 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [mellin_differentiableAt_of_isBigO_rpow](declarations/mellin-differentiableat-of-isbigo-rpow.md) | 399 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [mellinConvergent_of_isBigO_rpow_exp](declarations/mellinconvergent-of-isbigo-rpow-exp.md) | 412 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [mellin_differentiableAt_of_isBigO_rpow_exp](declarations/mellin-differentiableat-of-isbigo-rpow-exp.md) | 420 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [hasMellin_one_Ioc](declarations/hasmellin-one-ioc.md) | 436 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [hasMellin_cpow_Ioc](declarations/hasmellin-cpow-ioc.md) | 451 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=bb5ac96e4eee02fe0f5bd09f78a09f78d2d2aaa539c8a2ca54a8f6b93d7011e1 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/MellinTransform/Variant96e3521b2255fae58d3b841873248bb8dcbd436733bf475b67b81ad16b642d97.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
