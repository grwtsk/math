# Gaussian Fourier Transform

[Complete source index](../../complete-source-index.md) · [Up one directory](../../complete-source-index.md) · [Full source](source.md)

**25 observed declarations and anonymous commands**, 24 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Analysis/HarmonicAnalysis/FourierAnalysis/FourierTransform/Variantf0d4dc0725db550b283f1fd4463490eb1ddea03ea716451ce949bb432f879485.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `f84227ed144f01ce3088d6b35bb148e136ec7311`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../_verification/specifications/SpecialFunctions/GaussianFourierTransform.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [verticalIntegral](declarations/verticalintegral.md) | 45 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `theorem` | [norm_cexp_neg_mul_sq_add_mul_I](declarations/norm-cexp-neg-mul-sq-add-mul-i-source-edition-2.md) | 50 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `theorem` | [norm_cexp_neg_mul_sq_add_mul_I'](declarations/norm-cexp-neg-mul-sq-add-mul-i.md) | 56 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `theorem` | [verticalIntegral_norm_le](declarations/verticalintegral-norm-le.md) | 65 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [tendsto_verticalIntegral](declarations/tendsto-verticalintegral.md) | 108 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [integrable_cexp_neg_mul_sq_add_real_mul_I](declarations/integrable-cexp-neg-mul-sq-add-real-mul-i.md) | 124 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [integral_cexp_neg_mul_sq_add_real_mul_I](declarations/integral-cexp-neg-mul-sq-add-real-mul-i.md) | 139 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [_root_.integral_cexp_quadratic](declarations/root-integral-cexp-quadratic.md) | 179 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `lemma` | [_root_.integrable_cexp_quadratic'](declarations/root-integrable-cexp-quadratic-source-edition-2.md) | 194 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `lemma` | [_root_.integrable_cexp_quadratic](declarations/root-integrable-cexp-quadratic.md) | 201 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [_root_.fourierIntegral_gaussian](declarations/root-fourierintegral-gaussian.md) | 206 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [_root_.fourierIntegral_gaussian_pi'](declarations/root-fourierintegral-gaussian-pi-source-edition-2.md) | 213 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [_root_.fourierIntegral_gaussian_pi](declarations/root-fourierintegral-gaussian-pi.md) | 233 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [integrable_cexp_neg_sum_mul_add](declarations/integrable-cexp-neg-sum-mul-add.md) | 243 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [integrable_cexp_neg_mul_sum_add](declarations/integrable-cexp-neg-mul-sum-add.md) | 251 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [integrable_cexp_neg_mul_sq_norm_add_of_euclideanSpace](declarations/integrable-cexp-neg-mul-sq-norm-add-of-euclideanspace.md) | 256 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [integrable_cexp_neg_mul_sq_norm_add](declarations/integrable-cexp-neg-mul-sq-norm-add.md) | 274 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [integral_cexp_neg_sum_mul_add](declarations/integral-cexp-neg-sum-mul-add.md) | 284 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [integral_cexp_neg_mul_sum_add](declarations/integral-cexp-neg-mul-sum-add.md) | 294 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [integral_cexp_neg_mul_sq_norm_add_of_euclideanSpace](declarations/integral-cexp-neg-mul-sq-norm-add-of-euclideanspace.md) | 301 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [integral_cexp_neg_mul_sq_norm_add](declarations/integral-cexp-neg-mul-sq-norm-add.md) | 324 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [integral_cexp_neg_mul_sq_norm](declarations/integral-cexp-neg-mul-sq-norm.md) | 333 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [integral_rexp_neg_mul_sq_norm](declarations/integral-rexp-neg-mul-sq-norm.md) | 337 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [_root_.fourierIntegral_gaussian_innerProductSpace'](declarations/root-fourierintegral-gaussian-innerproductspace.md) | 347 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [_root_.fourierIntegral_gaussian_innerProductSpace](declarations/root-fourierintegral-gaussian-innerproductspace-source-edition-2.md) | 360 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=c1a364aa4b9f5f260294ead39274ab59aac8a7e668959f5f7231876f64dd69e4 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/HarmonicAnalysis/FourierAnalysis/FourierTransform/Variantf0d4dc0725db550b283f1fd4463490eb1ddea03ea716451ce949bb432f879485.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
