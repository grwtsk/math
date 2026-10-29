# Beta Namespaced Aligned

[Complete source index](../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**28 observed declarations and anonymous commands**, 24 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Analysis/SpecialFunctions/Beta/Variant44c59b9d64006cb35e38d1ccd5cf7aef8106c15d79024c0db80a6553678f37a2.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `8205d98c464988b5b42b312a91dbbd200b08876a`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../_verification/specifications/SpecialFunctions/BetaNamespacedAligned.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `macro_rules` | [(anonymous)](declarations/macro-rules.md) | 51 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `def` | [betaIntegral](declarations/betaintegral.md) | 69 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `theorem` | [betaIntegral_convergent_left](declarations/betaintegral-convergent-left.md) | 74 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `theorem` | [betaIntegral_convergent](declarations/betaintegral-convergent.md) | 91 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [betaIntegral_symm](declarations/betaintegral-symm.md) | 104 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [betaIntegral_eval_one_right](declarations/betaintegral-eval-one-right.md) | 114 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [betaIntegral_scaled](declarations/betaintegral-scaled.md) | 123 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [Gamma_mul_Gamma_eq_betaIntegral](declarations/gamma-mul-gamma-eq-betaintegral.md) | 145 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [betaIntegral_recurrence](declarations/betaintegral-recurrence.md) | 164 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [betaIntegral_eval_nat_add_one_right](declarations/betaintegral-eval-nat-add-one-right.md) | 222 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `def` | [GammaSeq](declarations/gammaseq.md) | 252 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [GammaSeq_eq_betaIntegral_of_re_pos](declarations/gammaseq-eq-betaintegral-of-re-pos.md) | 256 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [GammaSeq_add_one_left](declarations/gammaseq-add-one-left.md) | 261 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [GammaSeq_eq_approx_Gamma_integral](declarations/gammaseq-eq-approx-gamma-integral.md) | 274 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [approx_Gamma_integral_tendsto_Gamma_integral](declarations/approx-gamma-integral-tendsto-gamma-integral.md) | 300 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [GammaSeq_tendsto_Gamma](declarations/gammaseq-tendsto-gamma-source-edition-2.md) | 362 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [GammaSeq_mul](declarations/gammaseq-mul.md) | 405 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [Gamma_mul_Gamma_one_sub](declarations/gamma-mul-gamma-one-sub.md) | 430 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [Gamma_ne_zero](declarations/gamma-ne-zero.md) | 458 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [Gamma_eq_zero_iff](declarations/gamma-eq-zero-iff.md) | 479 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [Gamma_ne_zero_of_re_pos](declarations/gamma-ne-zero-of-re-pos.md) | 486 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `def` | [GammaSeq](declarations/gammaseq-source-edition-2.md) | 498 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [GammaSeq_tendsto_Gamma](declarations/gammaseq-tendsto-gamma.md) | 503 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [Gamma_mul_Gamma_one_sub](declarations/gamma-mul-gamma-one-sub-source-edition-2.md) | 514 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [one_div_Gamma_eq_self_mul_one_div_Gamma_add_one](declarations/one-div-gamma-eq-self-mul-one-div-gamma-add-one.md) | 538 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [differentiable_one_div_Gamma](declarations/differentiable-one-div-gamma.md) | 547 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [Gamma_mul_Gamma_add_half](declarations/gamma-mul-gamma-add-half-source-edition-2.md) | 584 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [Gamma_mul_Gamma_add_half](declarations/gamma-mul-gamma-add-half.md) | 623 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=5228207c91ae165f5ba7a1566700d63f32b8efbcb1957fc0bda7b117c1e1ee9a -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/SpecialFunctions/Beta/Variant44c59b9d64006cb35e38d1ccd5cf7aef8106c15d79024c0db80a6553678f37a2.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
