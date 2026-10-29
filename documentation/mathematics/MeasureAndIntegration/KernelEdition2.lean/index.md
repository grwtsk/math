# Kernel Edition2

[Complete source index](../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**32 observed declarations and anonymous commands**, 27 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Analysis/RealAnalysis/Integration/Kernel/Variant0cde951b1f22fa5f7f2a160c21dfe6f42ec92113d68334ed288b91b6065fa11d.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `5d3e56782820eb272f935a426b620923282a6d0c`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../_verification/specifications/MeasureAndIntegration/KernelEdition2.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [kernelIntegrand](declarations/kernelintegrand.md) | 30 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `lemma` | [norm_kernelIntegrand](declarations/norm-kernelintegrand.md) | 34 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `lemma` | [kernelIntegrand_integrable](declarations/kernelintegrand-integrable.md) | 42 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `lemma` | [kernelIntegrand_tendsto](declarations/kernelintegrand-tendsto.md) | 60 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `lemma` | [kernelIntegrand_deriv](declarations/kernelintegrand-deriv.md) | 73 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `lemma` | [integral_recurrence](declarations/integral-recurrence.md) | 87 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `def` | [kernelNumerator](declarations/kernelnumerator.md) | 113 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `def` | [laplaceKernel](declarations/laplacekernel.md) | 118 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `lemma` | [laplaceKernel_zero](declarations/laplacekernel-zero.md) | 121 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `lemma` | [laplaceKernel_succ](declarations/laplacekernel-succ.md) | 125 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `lemma` | [integral_eq_laplaceKernel](declarations/integral-eq-laplacekernel.md) | 134 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `lemma` | [kernelNumerator_eq_sum](declarations/kernelnumerator-eq-sum.md) | 153 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `lemma` | [laplaceKernel_eq_sum](declarations/laplacekernel-eq-sum.md) | 174 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `lemma` | [kernelNumerator_eq_source_sum](declarations/kernelnumerator-eq-source-sum.md) | 185 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [laplaceKernel_eq_J](declarations/laplacekernel-eq-j.md) | 197 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [j_integral_obligation](declarations/j-integral-obligation.md) | 217 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `def` | [headIntegral](declarations/headintegral.md) | 234 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `lemma` | [headIntegral_zero](declarations/headintegral-zero.md) | 237 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `lemma` | [headIntegral_succ](declarations/headintegral-succ.md) | 251 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `def` | [regularKernel](declarations/regularkernel.md) | 294 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `lemma` | [regularKernel_zero](declarations/regularkernel-zero.md) | 297 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `lemma` | [regularKernel_succ](declarations/regularkernel-succ.md) | 305 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `lemma` | [regularKernel_eq_laplaceKernel](declarations/regularkernel-eq-laplacekernel.md) | 318 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `lemma` | [setIntegral_Icc_eq_headIntegral](declarations/setintegral-icc-eq-headintegral.md) | 330 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [j_regular_part_obligation](declarations/j-regular-part-obligation.md) | 342 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `lemma` | [kernelNumerator_analytic](declarations/kernelnumerator-analytic.md) | 350 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `lemma` | [laplaceKernel_analytic](declarations/laplacekernel-analytic.md) | 361 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `lemma` | [kernelNumerator_at_zero](declarations/kernelnumerator-at-zero.md) | 368 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `lemma` | [laplaceKernel_cleared](declarations/laplacekernel-cleared.md) | 377 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `lemma` | [laplaceKernel_cleared_tendsto](declarations/laplacekernel-cleared-tendsto.md) | 385 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [J_cleared_tendsto](declarations/j-cleared-tendsto.md) | 407 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [kernel_checkpoint](declarations/kernel-checkpoint.md) | 417 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=b32783b6e32982627c4ba5e9c1125f35b066350b323a5b4ca6fca92732f0a967 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/RealAnalysis/Integration/Kernel/Variant0cde951b1f22fa5f7f2a160c21dfe6f42ec92113d68334ed288b91b6065fa11d.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
