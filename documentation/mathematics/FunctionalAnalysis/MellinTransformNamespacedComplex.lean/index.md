# Mellin Transform Namespaced Complex

[Complete source index](../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**33 observed declarations and anonymous commands**, 28 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/MellinTransform/Variante13e363caef55dfc83bd11cfd8b0107b5cea9c38ad3737f72079127cc0167940.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `4ac40eca236d0582f2c5da6432498f6bc604fd20`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../_verification/specifications/FunctionalAnalysis/MellinTransformNamespacedComplex.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [MellinConvergent](declarations/mellinconvergent.md) | 49 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `theorem` | [MellinConvergent.const_smul](declarations/mellinconvergent-const-smul.md) | 52 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `theorem` | [MellinConvergent.cpow_smul](declarations/mellinconvergent-cpow-smul.md) | 57 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `theorem` | [MellinConvergent.div_const](declarations/mellinconvergent-div-const.md) | 62 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [MellinConvergent.comp_mul_left](declarations/mellinconvergent-comp-mul-left.md) | 66 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [MellinConvergent.comp_rpow](declarations/mellinconvergent-comp-rpow.md) | 79 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `def` | [Complex.VerticalIntegrable](declarations/complex-verticalintegrable.md) | 91 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `def` | [mellin](declarations/mellin.md) | 96 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `def` | [mellinInv](declarations/mellininv.md) | 101 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [mellin_cpow_smul](declarations/mellin-cpow-smul.md) | 105 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [mellin_const_smul](declarations/mellin-const-smul.md) | 113 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [mellin_div_const](declarations/mellin-div-const.md) | 118 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [mellin_comp_rpow](declarations/mellin-comp-rpow.md) | 121 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [mellin_comp_mul_left](declarations/mellin-comp-mul-left.md) | 139 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [mellin_comp_mul_right](declarations/mellin-comp-mul-right.md) | 156 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [mellin_comp_inv](declarations/mellin-comp-inv.md) | 160 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `def` | [HasMellin](declarations/hasmellin.md) | 166 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [hasMellin_add](declarations/hasmellin-add.md) | 169 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [hasMellin_sub](declarations/hasmellin-sub.md) | 174 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [hasMellin_const_smul](declarations/hasmellin-const-smul.md) | 179 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [mellin_convergent_iff_norm](declarations/mellin-convergent-iff-norm.md) | 194 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [mellin_convergent_top_of_isBigO](declarations/mellin-convergent-top-of-isbigo.md) | 208 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [mellin_convergent_zero_of_isBigO](declarations/mellin-convergent-zero-of-isbigo.md) | 234 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [mellin_convergent_of_isBigO_scalar](declarations/mellin-convergent-of-isbigo-scalar.md) | 266 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [mellinConvergent_of_isBigO_rpow](declarations/mellinconvergent-of-isbigo-rpow.md) | 284 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [isBigO_rpow_top_log_smul](declarations/isbigo-rpow-top-log-smul.md) | 297 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [isBigO_rpow_zero_log_smul](declarations/isbigo-rpow-zero-log-smul.md) | 308 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [mellin_hasDerivAt_of_isBigO_rpow](declarations/mellin-hasderivat-of-isbigo-rpow.md) | 327 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [mellin_differentiableAt_of_isBigO_rpow](declarations/mellin-differentiableat-of-isbigo-rpow.md) | 407 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [mellinConvergent_of_isBigO_rpow_exp](declarations/mellinconvergent-of-isbigo-rpow-exp.md) | 420 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [mellin_differentiableAt_of_isBigO_rpow_exp](declarations/mellin-differentiableat-of-isbigo-rpow-exp.md) | 428 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [hasMellin_one_Ioc](declarations/hasmellin-one-ioc.md) | 444 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [hasMellin_cpow_Ioc](declarations/hasmellin-cpow-ioc.md) | 459 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=258821ee90fe26eeab978817ac16276525ce7f1266d8a05058bba564884b1dc0 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/MellinTransform/Variante13e363caef55dfc83bd11cfd8b0107b5cea9c38ad3737f72079127cc0167940.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
