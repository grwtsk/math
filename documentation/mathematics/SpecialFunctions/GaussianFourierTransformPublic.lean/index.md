# Gaussian Fourier Transform Public

[Complete source index](../../complete-source-index.md) · [Up one directory](../../complete-source-index.md) · [Full source](source.md)

**25 observed declarations and anonymous commands**, 24 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Analysis/HarmonicAnalysis/FourierAnalysis/FourierTransform/Variant40067477e90c93d105dde39de70dabdb1c303338885a5d644c6caf99aeecf377.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `179491edbeb37eae5e80866272098233ff2a9f7f`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../_verification/specifications/SpecialFunctions/GaussianFourierTransformPublic.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [verticalIntegral](declarations/verticalintegral.md) | 49 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `theorem` | [norm_cexp_neg_mul_sq_add_mul_I](declarations/norm-cexp-neg-mul-sq-add-mul-i.md) | 54 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `theorem` | [norm_cexp_neg_mul_sq_add_mul_I'](declarations/norm-cexp-neg-mul-sq-add-mul-i-source-edition-2.md) | 60 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `theorem` | [verticalIntegral_norm_le](declarations/verticalintegral-norm-le.md) | 69 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [tendsto_verticalIntegral](declarations/tendsto-verticalintegral.md) | 106 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [integrable_cexp_neg_mul_sq_add_real_mul_I](declarations/integrable-cexp-neg-mul-sq-add-real-mul-i.md) | 122 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [integral_cexp_neg_mul_sq_add_real_mul_I](declarations/integral-cexp-neg-mul-sq-add-real-mul-i.md) | 133 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [_root_.integral_cexp_quadratic](declarations/root-integral-cexp-quadratic.md) | 173 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `lemma` | [_root_.integrable_cexp_quadratic'](declarations/root-integrable-cexp-quadratic-source-edition-2.md) | 188 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `lemma` | [_root_.integrable_cexp_quadratic](declarations/root-integrable-cexp-quadratic.md) | 195 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [_root_.fourierIntegral_gaussian](declarations/root-fourierintegral-gaussian.md) | 200 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [_root_.fourier_gaussian_pi'](declarations/root-fourier-gaussian-pi.md) | 207 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [_root_.fourier_gaussian_pi](declarations/root-fourier-gaussian-pi-source-edition-2.md) | 227 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [integrable_cexp_neg_sum_mul_add](declarations/integrable-cexp-neg-sum-mul-add.md) | 237 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [integrable_cexp_neg_mul_sum_add](declarations/integrable-cexp-neg-mul-sum-add.md) | 245 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [integrable_cexp_neg_mul_sq_norm_add_of_euclideanSpace](declarations/integrable-cexp-neg-mul-sq-norm-add-of-euclideanspace.md) | 250 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [integrable_cexp_neg_mul_sq_norm_add](declarations/integrable-cexp-neg-mul-sq-norm-add.md) | 267 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [integral_cexp_neg_sum_mul_add](declarations/integral-cexp-neg-sum-mul-add.md) | 276 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [integral_cexp_neg_mul_sum_add](declarations/integral-cexp-neg-mul-sum-add.md) | 286 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [integral_cexp_neg_mul_sq_norm_add_of_euclideanSpace](declarations/integral-cexp-neg-mul-sq-norm-add-of-euclideanspace.md) | 293 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [integral_cexp_neg_mul_sq_norm_add](declarations/integral-cexp-neg-mul-sq-norm-add.md) | 315 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [integral_cexp_neg_mul_sq_norm](declarations/integral-cexp-neg-mul-sq-norm.md) | 324 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [integral_rexp_neg_mul_sq_norm](declarations/integral-rexp-neg-mul-sq-norm.md) | 329 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [_root_.fourier_gaussian_innerProductSpace'](declarations/root-fourier-gaussian-innerproductspace-source-edition-2.md) | 339 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [_root_.fourier_gaussian_innerProductSpace](declarations/root-fourier-gaussian-innerproductspace.md) | 352 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=2d031452e6514e94a873f29354e908125a9a1bb6ddb10052c3a037b112d8ea4e -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/HarmonicAnalysis/FourierAnalysis/FourierTransform/Variant40067477e90c93d105dde39de70dabdb1c303338885a5d644c6caf99aeecf377.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
