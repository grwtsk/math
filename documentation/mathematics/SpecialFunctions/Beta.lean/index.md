# Beta

[Complete source index](../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**27 observed declarations and anonymous commands**, 24 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Analysis/SpecialFunctions/Beta/Variant3314683dd67e387edb2d6458e647db2056f8bea81d48ed4453b071684f29b821.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `795b650d48b4382711449f1728e1f1260a5828b3`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../_verification/specifications/SpecialFunctions/Beta.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [betaIntegral](declarations/betaintegral.md) | 56 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `theorem` | [betaIntegral_convergent_left](declarations/betaintegral-convergent-left.md) | 60 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `theorem` | [betaIntegral_convergent](declarations/betaintegral-convergent.md) | 76 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `theorem` | [betaIntegral_symm](declarations/betaintegral-symm.md) | 88 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [betaIntegral_eval_one_right](declarations/betaintegral-eval-one-right.md) | 99 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [betaIntegral_scaled](declarations/betaintegral-scaled.md) | 107 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [Gamma_mul_Gamma_eq_betaIntegral](declarations/gamma-mul-gamma-eq-betaintegral.md) | 128 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [betaIntegral_recurrence](declarations/betaintegral-recurrence.md) | 146 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [betaIntegral_eval_nat_add_one_right](declarations/betaintegral-eval-nat-add-one-right.md) | 204 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `def` | [GammaSeq](declarations/gammaseq.md) | 233 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [GammaSeq_eq_betaIntegral_of_re_pos](declarations/gammaseq-eq-betaintegral-of-re-pos.md) | 236 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [GammaSeq_add_one_left](declarations/gammaseq-add-one-left.md) | 240 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [GammaSeq_eq_approx_Gamma_integral](declarations/gammaseq-eq-approx-gamma-integral.md) | 252 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [approx_Gamma_integral_tendsto_Gamma_integral](declarations/approx-gamma-integral-tendsto-gamma-integral.md) | 277 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [GammaSeq_tendsto_Gamma](declarations/gammaseq-tendsto-gamma-source-edition-2.md) | 336 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [GammaSeq_mul](declarations/gammaseq-mul.md) | 378 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [Gamma_mul_Gamma_one_sub](declarations/gamma-mul-gamma-one-sub-source-edition-2.md) | 402 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [Gamma_ne_zero](declarations/gamma-ne-zero.md) | 429 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [Gamma_eq_zero_iff](declarations/gamma-eq-zero-iff.md) | 449 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [Gamma_ne_zero_of_re_pos](declarations/gamma-ne-zero-of-re-pos.md) | 455 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `def` | [GammaSeq](declarations/gammaseq-source-edition-2.md) | 466 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [GammaSeq_tendsto_Gamma](declarations/gammaseq-tendsto-gamma.md) | 470 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [Gamma_mul_Gamma_one_sub](declarations/gamma-mul-gamma-one-sub.md) | 480 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [one_div_Gamma_eq_self_mul_one_div_Gamma_add_one](declarations/one-div-gamma-eq-self-mul-one-div-gamma-add-one.md) | 503 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [differentiable_one_div_Gamma](declarations/differentiable-one-div-gamma.md) | 511 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [Gamma_mul_Gamma_add_half](declarations/gamma-mul-gamma-add-half.md) | 543 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [Gamma_mul_Gamma_add_half](declarations/gamma-mul-gamma-add-half-source-edition-2.md) | 581 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=cb760fb9db4d3ec02d11888b0f6f31b029f340837c21b327aaafb49a2d5b9eba -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/SpecialFunctions/Beta/Variant3314683dd67e387edb2d6458e647db2056f8bea81d48ed4453b071684f29b821.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
