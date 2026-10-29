# Beta Namespaced

[Complete source index](../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**27 observed declarations and anonymous commands**, 24 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Analysis/SpecialFunctions/Beta/Variantd7223942909f60f08302b3c5c020e41853f81cd828f9400adee610fcd33ad786.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `759ae5f8971be63fe142c316a5312b1e18c65dc6`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../_verification/specifications/SpecialFunctions/BetaNamespaced.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [betaIntegral](declarations/betaintegral.md) | 64 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `theorem` | [betaIntegral_convergent_left](declarations/betaintegral-convergent-left.md) | 68 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `theorem` | [betaIntegral_convergent](declarations/betaintegral-convergent.md) | 84 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `theorem` | [betaIntegral_symm](declarations/betaintegral-symm.md) | 96 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [betaIntegral_eval_one_right](declarations/betaintegral-eval-one-right.md) | 107 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [betaIntegral_scaled](declarations/betaintegral-scaled.md) | 115 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [Gamma_mul_Gamma_eq_betaIntegral](declarations/gamma-mul-gamma-eq-betaintegral.md) | 136 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [betaIntegral_recurrence](declarations/betaintegral-recurrence.md) | 154 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [betaIntegral_eval_nat_add_one_right](declarations/betaintegral-eval-nat-add-one-right.md) | 212 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `def` | [GammaSeq](declarations/gammaseq.md) | 241 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [GammaSeq_eq_betaIntegral_of_re_pos](declarations/gammaseq-eq-betaintegral-of-re-pos.md) | 244 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [GammaSeq_add_one_left](declarations/gammaseq-add-one-left.md) | 248 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [GammaSeq_eq_approx_Gamma_integral](declarations/gammaseq-eq-approx-gamma-integral.md) | 260 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [approx_Gamma_integral_tendsto_Gamma_integral](declarations/approx-gamma-integral-tendsto-gamma-integral.md) | 285 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [GammaSeq_tendsto_Gamma](declarations/gammaseq-tendsto-gamma-source-edition-2.md) | 344 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [GammaSeq_mul](declarations/gammaseq-mul.md) | 386 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [Gamma_mul_Gamma_one_sub](declarations/gamma-mul-gamma-one-sub-source-edition-2.md) | 410 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [Gamma_ne_zero](declarations/gamma-ne-zero.md) | 437 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [Gamma_eq_zero_iff](declarations/gamma-eq-zero-iff.md) | 457 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [Gamma_ne_zero_of_re_pos](declarations/gamma-ne-zero-of-re-pos.md) | 463 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `def` | [GammaSeq](declarations/gammaseq-source-edition-2.md) | 474 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [GammaSeq_tendsto_Gamma](declarations/gammaseq-tendsto-gamma.md) | 478 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [Gamma_mul_Gamma_one_sub](declarations/gamma-mul-gamma-one-sub.md) | 488 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [one_div_Gamma_eq_self_mul_one_div_Gamma_add_one](declarations/one-div-gamma-eq-self-mul-one-div-gamma-add-one.md) | 511 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [differentiable_one_div_Gamma](declarations/differentiable-one-div-gamma.md) | 519 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [Gamma_mul_Gamma_add_half](declarations/gamma-mul-gamma-add-half-source-edition-2.md) | 551 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [Gamma_mul_Gamma_add_half](declarations/gamma-mul-gamma-add-half.md) | 589 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=b432c7f49dfbad3f2ad72291cb6eb3744ec54434f21b4b5f48fcf895d658550c -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/SpecialFunctions/Beta/Variantd7223942909f60f08302b3c5c020e41853f81cd828f9400adee610fcd33ad786.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
