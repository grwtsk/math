# Mean Inequalities Fun Eq Fun Mul Inv Snorm Mul ELp Norm

[Complete source index](../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**21 observed declarations and anonymous commands**, 20 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Analysis/RealAnalysis/Integration/MeanInequalities/Variant3cac4902f7ea7730a902e97d5c7f8666a6c3f6662b272d257b85c24056bfc631.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `0f40c8e9540517f10b3aff9d0280120e23c6c6f3`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/MeasureAndIntegration/ClassicalMeasureTheory/MeanInequalitiesFunEqFunMulInvSnormMulELpNorm.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `theorem` | [lintegral_mul_le_one_of_lintegral_rpow_eq_one](declarations/lintegral-mul-le-one-of-lintegral-rpow-eq-one.md) | 62 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `def` | [funMulInvSnorm](declarations/funmulinvsnorm.md) | 78 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `theorem` | [fun_eq_funMulInvSnorm_mul_eLpNorm](declarations/fun-eq-funmulinvsnorm-mul-elpnorm.md) | 81 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `theorem` | [funMulInvSnorm_rpow](declarations/funmulinvsnorm-rpow.md) | 86 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [lintegral_rpow_funMulInvSnorm_eq_one](declarations/lintegral-rpow-funmulinvsnorm-eq-one.md) | 93 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [lintegral_mul_le_Lp_mul_Lq_of_ne_zero_of_ne_top](declarations/lintegral-mul-le-lp-mul-lq-of-ne-zero-of-ne-top.md) | 101 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [ae_eq_zero_of_lintegral_rpow_eq_zero](declarations/ae-eq-zero-of-lintegral-rpow-eq-zero.md) | 123 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [lintegral_mul_eq_zero_of_lintegral_rpow_eq_zero](declarations/lintegral-mul-eq-zero-of-lintegral-rpow-eq-zero.md) | 130 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [lintegral_mul_le_Lp_mul_Lq_of_ne_zero_of_eq_top](declarations/lintegral-mul-le-lp-mul-lq-of-ne-zero-of-eq-top.md) | 138 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [lintegral_mul_le_Lp_mul_Lq](declarations/lintegral-mul-le-lp-mul-lq.md) | 149 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [lintegral_mul_norm_pow_le](declarations/lintegral-mul-norm-pow-le.md) | 169 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [lintegral_prod_norm_pow_le](declarations/lintegral-prod-norm-pow-le.md) | 188 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [lintegral_mul_prod_norm_pow_le](declarations/lintegral-mul-prod-norm-pow-le.md) | 240 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [lintegral_rpow_add_lt_top_of_lintegral_rpow_lt_top](declarations/lintegral-rpow-add-lt-top-of-lintegral-rpow-lt-top.md) | 262 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [lintegral_Lp_mul_le_Lq_mul_Lr](declarations/lintegral-lp-mul-le-lq-mul-lr.md) | 299 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [lintegral_mul_rpow_le_lintegral_rpow_mul_lintegral_rpow](declarations/lintegral-mul-rpow-le-lintegral-rpow-mul-lintegral-rpow.md) | 332 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [lintegral_rpow_add_le_add_eLpNorm_mul_lintegral_rpow_add](declarations/lintegral-rpow-add-le-add-elpnorm-mul-lintegral-rpow-add.md) | 351 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [lintegral_Lp_add_le_aux](declarations/lintegral-lp-add-le-aux.md) | 386 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [lintegral_Lp_add_le](declarations/lintegral-lp-add-le.md) | 420 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [lintegral_Lp_add_le_of_le_one](declarations/lintegral-lp-add-le-of-le-one.md) | 450 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [NNReal.lintegral_mul_le_Lp_mul_Lq](declarations/nnreal-lintegral-mul-le-lp-mul-lq.md) | 471 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=99d599f4b298904f57d1fa343b4490b30b36e72c7e86e14f9d2810b4e84b6e9a -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/RealAnalysis/Integration/MeanInequalities/Variant3cac4902f7ea7730a902e97d5c7f8666a6c3f6662b272d257b85c24056bfc631.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
