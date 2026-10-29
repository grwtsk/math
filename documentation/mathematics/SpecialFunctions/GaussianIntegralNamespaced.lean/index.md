# Gaussian Integral Namespaced

[Complete source index](../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**26 observed declarations and anonymous commands**, 26 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Analysis/AsymptoticAnalysis/GaussianIntegral/Variant3bd23d0d5988d323236081a59b4dc429c32a37573ca4ded7cdfc54c961c90383.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `a94d72c9740fed99264b4035e198daae3d55bad2`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../_verification/specifications/SpecialFunctions/GaussianIntegralNamespaced.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `theorem` | [exp_neg_mul_rpow_isLittleO_exp_neg](declarations/exp-neg-mul-rpow-islittleo-exp-neg.md) | 38 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `theorem` | [exp_neg_mul_sq_isLittleO_exp_neg](declarations/exp-neg-mul-sq-islittleo-exp-neg.md) | 52 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `theorem` | [rpow_mul_exp_neg_mul_rpow_isLittleO_exp_neg](declarations/rpow-mul-exp-neg-mul-rpow-islittleo-exp-neg.md) | 57 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `theorem` | [rpow_mul_exp_neg_mul_sq_isLittleO_exp_neg](declarations/rpow-mul-exp-neg-mul-sq-islittleo-exp-neg.md) | 63 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [integrableOn_rpow_mul_exp_neg_rpow](declarations/integrableon-rpow-mul-exp-neg-rpow.md) | 68 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [integrableOn_rpow_mul_exp_neg_mul_rpow](declarations/integrableon-rpow-mul-exp-neg-mul-rpow.md) | 96 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [integrableOn_rpow_mul_exp_neg_mul_sq](declarations/integrableon-rpow-mul-exp-neg-mul-sq.md) | 109 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [integrable_rpow_mul_exp_neg_mul_sq](declarations/integrable-rpow-mul-exp-neg-mul-sq.md) | 114 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [integrable_exp_neg_mul_sq](declarations/integrable-exp-neg-mul-sq.md) | 133 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [integrableOn_Ioi_exp_neg_mul_sq_iff](declarations/integrableon-ioi-exp-neg-mul-sq-iff.md) | 137 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [integrable_exp_neg_mul_sq_iff](declarations/integrable-exp-neg-mul-sq-iff.md) | 148 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [integrable_mul_exp_neg_mul_sq](declarations/integrable-mul-exp-neg-mul-sq.md) | 152 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [norm_cexp_neg_mul_sq](declarations/norm-cexp-neg-mul-sq.md) | 156 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [integrable_cexp_neg_mul_sq](declarations/integrable-cexp-neg-mul-sq.md) | 160 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [integrable_mul_cexp_neg_mul_sq](declarations/integrable-mul-cexp-neg-mul-sq.md) | 168 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [integral_mul_cexp_neg_mul_sq](declarations/integral-mul-cexp-neg-mul-sq.md) | 177 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [integral_gaussian_sq_complex](declarations/integral-gaussian-sq-complex.md) | 198 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [integral_gaussian](declarations/integral-gaussian.md) | 229 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [continuousAt_gaussian_integral](declarations/continuousat-gaussian-integral.md) | 242 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [integral_gaussian_complex](declarations/integral-gaussian-complex.md) | 261 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [integral_gaussian_complex_Ioi](declarations/integral-gaussian-complex-ioi.md) | 300 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [integral_gaussian_Ioi](declarations/integral-gaussian-ioi.md) | 325 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [Real.Gamma_one_half_eq](declarations/real-gamma-one-half-eq.md) | 340 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [Complex.Gamma_one_half_eq](declarations/complex-gamma-one-half-eq.md) | 356 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `lemma` | [Real.Gamma_nat_add_one_add_half](declarations/real-gamma-nat-add-one-add-half.md) | 364 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `lemma` | [Real.Gamma_nat_add_half](declarations/real-gamma-nat-add-half.md) | 376 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=40bb5df05353e6a7e53b745b8155edce1dc7c004a5fe022d0fdb17da5461386b -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/AsymptoticAnalysis/GaussianIntegral/Variant3bd23d0d5988d323236081a59b4dc429c32a37573ca4ded7cdfc54c961c90383.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
