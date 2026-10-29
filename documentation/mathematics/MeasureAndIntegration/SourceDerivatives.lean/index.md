# Source Derivatives

[Complete source index](../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**48 observed declarations and anonymous commands**, 39 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/8a6844dbe52f90d82f4600a7130c0f6185baf51546ca5ea42ab81e116d7e22ceSourceDerivative/Variant8a6844dbe52f90d82f4600a7130c0f6185baf51546ca5ea42ab81e116d7e22ce.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `4da0314f8c37b73dd2f5df5f45a7ebe57fe92446`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../_verification/specifications/MeasureAndIntegration/SourceDerivatives.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [thetaGaussianTerm](declarations/thetagaussianterm.md) | 12 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `def` | [thetaGaussianSum](declarations/thetagaussiansum.md) | 16 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `theorem` | [thetaGaussianTerm_nonneg](declarations/thetagaussianterm-nonneg.md) | 18 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `theorem` | [thetaGaussianTerm_summable](declarations/thetagaussianterm-summable.md) | 23 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `def` | [thetaGaussianCompactBound](declarations/thetagaussiancompactbound.md) | 28 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [thetaGaussianCompactBound_summable](declarations/thetagaussiancompactbound-summable.md) | 31 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [thetaGaussianTerm_norm_le_compactBound](declarations/thetagaussianterm-norm-le-compactbound.md) | 35 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [continuous_thetaGaussianTerm](declarations/continuous-thetagaussianterm.md) | 48 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [continuous_thetaGaussianSum](declarations/continuous-thetagaussiansum.md) | 52 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [thetaGaussianSum_nonneg](declarations/thetagaussiansum-nonneg.md) | 63 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [thetaGaussianSum_le_superexp](declarations/thetagaussiansum-le-superexp.md) | 67 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [thetaGaussianSum_poly_norm_le_tail](declarations/thetagaussiansum-poly-norm-le-tail.md) | 101 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [thetaGaussianSum_poly_integrableOn](declarations/thetagaussiansum-poly-integrableon.md) | 137 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [thetaPhiTermDeriv_eq_gaussians](declarations/thetaphitermderiv-eq-gaussians.md) | 160 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [thetaPhiTermSecondDeriv_eq_gaussians](declarations/thetaphitermsecondderiv-eq-gaussians.md) | 174 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [thetaPhiTermDeriv_summable](declarations/thetaphitermderiv-summable.md) | 192 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [thetaPhiTermSecondDeriv_summable](declarations/thetaphitermsecondderiv-summable.md) | 200 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `def` | [thetaPhiDerivCompactBound](declarations/thetaphiderivcompactbound.md) | 209 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `def` | [thetaPhiSecondDerivCompactBound](declarations/thetaphisecondderivcompactbound.md) | 214 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [thetaPhiDerivCompactBound_summable](declarations/thetaphiderivcompactbound-summable.md) | 220 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [thetaPhiSecondDerivCompactBound_summable](declarations/thetaphisecondderivcompactbound-summable.md) | 226 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [norm_sub_sub_le_real](declarations/norm-sub-sub-le-real.md) | 233 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [norm_sub_sub_add_le_real](declarations/norm-sub-sub-add-le-real.md) | 237 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [thetaPhiTermDeriv_norm_le_compactBound](declarations/thetaphitermderiv-norm-le-compactbound.md) | 241 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [thetaPhiTermSecondDeriv_norm_le_compactBound](declarations/thetaphitermsecondderiv-norm-le-compactbound.md) | 253 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `def` | [thetaPhiRawD1](declarations/thetaphirawd1.md) | 268 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `def` | [thetaPhiRawD2](declarations/thetaphirawd2.md) | 271 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [hasDerivAt_thetaPhi_raw](declarations/hasderivat-thetaphi-raw.md) | 274 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [hasDerivAt_thetaPhiRawD1](declarations/hasderivat-thetaphirawd1.md) | 283 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [deriv_thetaPhi_eq_raw](declarations/deriv-thetaphi-eq-raw.md) | 293 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [continuous_thetaPhiRawD1](declarations/continuous-thetaphirawd1.md) | 296 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [thetaPhiRawD1_eq_gaussians](declarations/thetaphirawd1-eq-gaussians.md) | 299 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `def` | [thetaPhiD1](declarations/thetaphid1.md) | 317 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `def` | [thetaPhiD2](declarations/thetaphid2.md) | 320 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `theorem` | [thetaMode_den_ne_zero_of_modeA](declarations/thetamode-den-ne-zero-of-modea.md) | 324 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `theorem` | [thetaModeA_gt_three_halves](declarations/thetamodea-gt-three-halves.md) | 336 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `theorem` | [thetaPhiRawD1_eq_D1](declarations/thetaphirawd1-eq-d1.md) | 343 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `theorem` | [thetaPhiRawD2_eq_D2](declarations/thetaphirawd2-eq-d2.md) | 348 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `theorem` | [thetaPhi_mul_score_summable](declarations/thetaphi-mul-score-summable.md) | 354 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `theorem` | [thetaPhi_mul_score_sq_add_curvature_summable](declarations/thetaphi-mul-score-sq-add-curvature-summable.md) | 360 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `theorem` | [hasDerivAt_thetaPhi_of_modeA](declarations/hasderivat-thetaphi-of-modea.md) | 368 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `theorem` | [hasDerivAt_thetaPhiD1_of_modeA](declarations/hasderivat-thetaphid1-of-modea.md) | 374 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `theorem` | [hasDerivAt_thetaPhi](declarations/hasderivat-thetaphi.md) | 385 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `theorem` | [hasDerivAt_thetaPhiD1](declarations/hasderivat-thetaphid1.md) | 390 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `theorem` | [deriv_thetaPhi_eq_D1](declarations/deriv-thetaphi-eq-d1.md) | 394 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `theorem` | [hasDerivAt_deriv_thetaPhi](declarations/hasderivat-deriv-thetaphi.md) | 398 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `theorem` | [deriv_deriv_thetaPhi_eq_D2](declarations/deriv-deriv-thetaphi-eq-d2.md) | 404 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `theorem` | [thetaPhi_mul_y_pow_summable](declarations/thetaphi-mul-y-pow-summable.md) | 409 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=6024482e821997bc5ef5568c90998f123dd58e2da7e9e2326504d8c5a2c05494 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/8a6844dbe52f90d82f4600a7130c0f6185baf51546ca5ea42ab81e116d7e22ceSourceDerivative/Variant8a6844dbe52f90d82f4600a7130c0f6185baf51546ca5ea42ab81e116d7e22ce.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
