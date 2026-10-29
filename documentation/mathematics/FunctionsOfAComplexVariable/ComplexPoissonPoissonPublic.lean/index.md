# Complex Poisson Poisson Public

[Complete source index](../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**23 observed declarations and anonymous commands**, 21 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Poisson/Variant04318d759381fc3eb9e255e5b06d2984a10661bdd35a05cb9fc54e9b511eb0b7.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `36154ed1f354b980c4c603074a9b88d5a3c57e0f`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../_verification/specifications/FunctionsOfAComplexVariable/ComplexPoissonPoissonPublic.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [herglotzRieszKernel](declarations/herglotzrieszkernel.md) | 37 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `lemma` | [herglotzRieszKernel_def](declarations/herglotzrieszkernel-def.md) | 40 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `lemma` | [herglotzRieszKernel_fun_def](declarations/herglotzrieszkernel-fun-def.md) | 43 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `lemma` | [herglotzRieszKernel_add_const](declarations/herglotzrieszkernel-add-const.md) | 48 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `def` | [poissonKernel](declarations/poissonkernel.md) | 55 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `lemma` | [poissonKernel_def](declarations/poissonkernel-def.md) | 58 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `lemma` | [poissonKernel_eq_re_herglotzRieszKernel_aux](declarations/poissonkernel-eq-re-herglotzrieszkernel-aux.md) | 61 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `lemma` | [poissonKernel_eq_re_herglotzRieszKernel](declarations/poissonkernel-eq-re-herglotzrieszkernel.md) | 74 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `lemma` | [re_herglotzRieszKernel_le_aux](declarations/re-herglotzrieszkernel-le-aux.md) | 80 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [re_herglotzRieszKernel_le](declarations/re-herglotzrieszkernel-le.md) | 102 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `lemma` | [le_re_herglotzRieszKernel_aux](declarations/le-re-herglotzrieszkernel-aux.md) | 111 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [le_re_herglotzRieszKernel](declarations/le-re-herglotzrieszkernel.md) | 135 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `lemma` | [continuousOn_herglotzRieszKernel_sphere](declarations/continuouson-herglotzrieszkernel-sphere.md) | 148 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [re_circleAverage_herglotzRieszKernel_smul](declarations/re-circleaverage-herglotzrieszkernel-smul.md) | 160 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `lemma` | [circleAverage_re_smul_on_ball_zero_aux](declarations/circleaverage-re-smul-on-ball-zero-aux.md) | 181 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `lemma` | [DiffContOnCl.circleAverage_re_smul_on_ball_zero](declarations/diffcontoncl-circleaverage-re-smul-on-ball-zero.md) | 190 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [DiffContOnCl.circleAverage_re_herglotzRieszKernel_smul](declarations/diffcontoncl-circleaverage-re-herglotzrieszkernel-smul.md) | 253 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [DiffContOnCl.circleAverage_re_herglotzRieszKernel_smul'](declarations/diffcontoncl-circleaverage-re-herglotzrieszkernel-smul-source-edition-2.md) | 268 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [DiffContOnCl.circleAverage_poissonKernel_smul](declarations/diffcontoncl-circleaverage-poissonkernel-smul.md) | 277 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [DiffContOnCl.circleAverage_poissonKernel_smul'](declarations/diffcontoncl-circleaverage-poissonkernel-smul-source-edition-2.md) | 287 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [hasDerivAt_circleAverage_herglotzRieszKernel_smul](declarations/hasderivat-circleaverage-herglotzrieszkernel-smul.md) | 302 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [differentiableOn_circleAverage_herglotzRieszKernel_smul](declarations/differentiableon-circleaverage-herglotzrieszkernel-smul.md) | 354 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [analyticOnNhd_circleAverage_herglotzRieszKernel_smul](declarations/analyticonnhd-circleaverage-herglotzrieszkernel-smul.md) | 365 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=e6d606f19cc53666579ba9722b459ea9db9ff42a05fab28247b082a0bb529081 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Poisson/Variant04318d759381fc3eb9e255e5b06d2984a10661bdd35a05cb9fc54e9b511eb0b7.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
