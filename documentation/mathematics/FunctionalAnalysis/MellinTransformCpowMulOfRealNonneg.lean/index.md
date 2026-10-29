# Mellin Transform Cpow Mul Of Real Nonneg

[Complete source index](../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**31 observed declarations and anonymous commands**, 28 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/MellinTransform/Variantbd274c9af2bccd6132c7f27688eddf7a31258bb9da6efd518bb027039cd6a76c.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `a1334cf635cc67378b0eec1a0bce7ba0190ff3e3`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../_verification/specifications/FunctionalAnalysis/MellinTransformCpowMulOfRealNonneg.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `theorem` | [cpow_mul_ofReal_nonneg](declarations/cpow-mul-ofreal-nonneg.md) | 33 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `def` | [MellinConvergent](declarations/mellinconvergent.md) | 55 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `theorem` | [MellinConvergent.const_smul](declarations/mellinconvergent-const-smul.md) | 59 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `theorem` | [MellinConvergent.cpow_smul](declarations/mellinconvergent-cpow-smul.md) | 65 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [MellinConvergent.div_const](declarations/mellinconvergent-div-const.md) | 71 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [MellinConvergent.comp_mul_left](declarations/mellinconvergent-comp-mul-left.md) | 76 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [MellinConvergent.comp_rpow](declarations/mellinconvergent-comp-rpow.md) | 90 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `def` | [mellin](declarations/mellin.md) | 106 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [mellin_cpow_smul](declarations/mellin-cpow-smul.md) | 111 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [mellin_const_smul](declarations/mellin-const-smul.md) | 117 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [mellin_div_const](declarations/mellin-div-const.md) | 122 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [mellin_comp_rpow](declarations/mellin-comp-rpow.md) | 126 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [mellin_comp_mul_left](declarations/mellin-comp-mul-left.md) | 141 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [mellin_comp_mul_right](declarations/mellin-comp-mul-right.md) | 159 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [mellin_comp_inv](declarations/mellin-comp-inv.md) | 164 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `def` | [HasMellin](declarations/hasmellin.md) | 171 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [hasMellin_add](declarations/hasmellin-add.md) | 175 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [hasMellin_sub](declarations/hasmellin-sub.md) | 181 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [mellin_convergent_iff_norm](declarations/mellin-convergent-iff-norm.md) | 197 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [mellin_convergent_top_of_isBigO](declarations/mellin-convergent-top-of-isbigo.md) | 211 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [mellin_convergent_zero_of_isBigO](declarations/mellin-convergent-zero-of-isbigo.md) | 238 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [mellin_convergent_of_isBigO_scalar](declarations/mellin-convergent-of-isbigo-scalar.md) | 271 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [mellinConvergent_of_isBigO_rpow](declarations/mellinconvergent-of-isbigo-rpow.md) | 290 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [isBigO_rpow_top_log_smul](declarations/isbigo-rpow-top-log-smul.md) | 305 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [isBigO_rpow_zero_log_smul](declarations/isbigo-rpow-zero-log-smul.md) | 318 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [mellin_hasDerivAt_of_isBigO_rpow](declarations/mellin-hasderivat-of-isbigo-rpow.md) | 340 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [mellin_differentiableAt_of_isBigO_rpow](declarations/mellin-differentiableat-of-isbigo-rpow.md) | 422 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [mellinConvergent_of_isBigO_rpow_exp](declarations/mellinconvergent-of-isbigo-rpow-exp.md) | 437 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [mellin_differentiableAt_of_isBigO_rpow_exp](declarations/mellin-differentiableat-of-isbigo-rpow-exp.md) | 447 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [hasMellin_one_Ioc](declarations/hasmellin-one-ioc.md) | 465 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [hasMellin_cpow_Ioc](declarations/hasmellin-cpow-ioc.md) | 481 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=302a22752b389f18f861435f06ab1c96675fd2d9c6d7e978af75f84d2a73ae76 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/MellinTransform/Variantbd274c9af2bccd6132c7f27688eddf7a31258bb9da6efd518bb027039cd6a76c.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
