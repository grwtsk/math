# Verification target: Estimate Two Moment Sampling Bound Namespaced Edition2

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "47254b066532e3813be15b87e1c016d94e0bb0d5",
  "lexical_observation_count": 19,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/EstimateTwoMomentSamplingBound/Variantdb0d99a1df1a15daab31311f2e50f4b8347affa4077725ecaf1723218bfefd3e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../MeasureAndIntegration/EstimateTwoMomentSamplingBoundNamespacedEdition2.lean/index.md) · [Full source](../../../../MeasureAndIntegration/EstimateTwoMomentSamplingBoundNamespacedEdition2.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `47254b066532e3813be15b87e1c016d94e0bb0d5`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/EstimateTwoMomentSamplingBound/Variantdb0d99a1df1a15daab31311f2e50f4b8347affa4077725ecaf1723218bfefd3e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/EstimateTwoMomentSamplingBound/Variantdb0d99a1df1a15daab31311f2e50f4b8347affa4077725ecaf1723218bfefd3e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.EstimateLogSamplingIntegrals` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [SamplingTailZero](../../../../MeasureAndIntegration/EstimateTwoMomentSamplingBoundNamespacedEdition2.lean/declarations/samplingtailzero.md) | 45 | `declaration-track:099ee3635f2addb5ee3b86d33c262a3a59dd7b9518da10acd3b8d64661884914` |
| 2 | `theorem` | [logSamplingDerivative_continuousOn_pos](../../../../MeasureAndIntegration/EstimateTwoMomentSamplingBoundNamespacedEdition2.lean/declarations/logsamplingderivative-continuouson-pos.md) | 50 | `result-track:21c45050a9f3237d8dbd1b01d06ed1b54e167b18810d306b8eefad757a776d44` |
| 3 | `theorem` | [logSamplingTerm_intervalIntegrable](../../../../MeasureAndIntegration/EstimateTwoMomentSamplingBoundNamespacedEdition2.lean/declarations/logsamplingterm-intervalintegrable.md) | 61 | `result-track:b168c6c2681b9547209ab607820932c7d6b93ac9027384cf1c1a93ada4311052` |
| 4 | `theorem` | [logSamplingDerivative_intervalIntegrable](../../../../MeasureAndIntegration/EstimateTwoMomentSamplingBoundNamespacedEdition2.lean/declarations/logsamplingderivative-intervalintegrable.md) | 71 | `result-track:168e98b3fc8c4dc675b589e7eb0c40effaea099206910f87e2c6d50796ed7209` |
| 5 | `theorem` | [unit_log_sampling_error_identity](../../../../MeasureAndIntegration/EstimateTwoMomentSamplingBoundNamespacedEdition2.lean/declarations/unit-log-sampling-error-identity.md) | 81 | `result-track:9cec832efe35461947a11759b49e704f7166479261b675cdd04852dc06e499f7` |
| 6 | `theorem` | [abs_unit_log_sampling_error_le](../../../../MeasureAndIntegration/EstimateTwoMomentSamplingBoundNamespacedEdition2.lean/declarations/abs-unit-log-sampling-error-le.md) | 127 | `result-track:0dd0c29c658f74bca4e24fbaa59191225de7bd6a084311e12eb6cc09e1113afa` |
| 7 | `theorem` | [integral_logSampling_eq_sum_unit_intervals](../../../../MeasureAndIntegration/EstimateTwoMomentSamplingBoundNamespacedEdition2.lean/declarations/integral-logsampling-eq-sum-unit-intervals.md) | 166 | `result-track:eb8e0909f6b8ba12bd96a717da0cefdc1abb7d9d98b11bdc0803f6a0d54c453d` |
| 8 | `theorem` | [finite_log_sampling_error](../../../../MeasureAndIntegration/EstimateTwoMomentSamplingBoundNamespacedEdition2.lean/declarations/finite-log-sampling-error.md) | 205 | `result-track:065f53141c380ef9d9de02e63c9578fcb2fce792a7e68023adddb96f3c8a8d31` |
| 9 | `theorem` | [logSamplingDerivative_integrableOn_Ioi_one](../../../../MeasureAndIntegration/EstimateTwoMomentSamplingBoundNamespacedEdition2.lean/declarations/logsamplingderivative-integrableon-ioi-one.md) | 271 | `result-track:275514957545ffc615de10326089d026fd0cf4f6af503692a66422d47c98cfba` |
| 10 | `theorem` | [finite_log_sampling_error_global](../../../../MeasureAndIntegration/EstimateTwoMomentSamplingBoundNamespacedEdition2.lean/declarations/finite-log-sampling-error-global.md) | 297 | `result-track:6bacfbf2596807df76045a8e9759dbb933ef68ddfabc4bf6ce527eab620c1b7d` |
| 11 | `theorem` | [logSampling_integral_Ioi_eq_shifted](../../../../MeasureAndIntegration/EstimateTwoMomentSamplingBoundNamespacedEdition2.lean/declarations/logsampling-integral-ioi-eq-shifted.md) | 335 | `result-track:626ef4ac689f7933a28992e1be10bd018916d474826c60ac5e2491d53ca7a3e5` |
| 12 | `theorem` | [logSampling_integral_Ioi_eq_reflected](../../../../MeasureAndIntegration/EstimateTwoMomentSamplingBoundNamespacedEdition2.lean/declarations/logsampling-integral-ioi-eq-reflected.md) | 370 | `result-track:3e681286e40b36aef4e7950db9bbcfd583730286b4e37c2d6431714a89361b4a` |
| 13 | `theorem` | [abs_logSampling_integral_Ioi_le](../../../../MeasureAndIntegration/EstimateTwoMomentSamplingBoundNamespacedEdition2.lean/declarations/abs-logsampling-integral-ioi-le.md) | 382 | `result-track:e9c578186d3ee67d2413b359cbf95e443e23f7aea5e31a7e7b05fe8d7335671e` |
| 14 | `theorem` | [finite_interval_eq_Ioi_of_tailZero](../../../../MeasureAndIntegration/EstimateTwoMomentSamplingBoundNamespacedEdition2.lean/declarations/finite-interval-eq-ioi-of-tailzero.md) | 451 | `result-track:aba62063c40e6e1e2ffba59e100f74bdaba5768e7aed658e36ac693b64af6c31` |
| 15 | `theorem` | [two_moment_sampling_bound](../../../../MeasureAndIntegration/EstimateTwoMomentSamplingBoundNamespacedEdition2.lean/declarations/two-moment-sampling-bound.md) | 488 | `result-track:075507ee9ed94d185548e5691fd4bc94586d47bfd3ea452f10946fa6c65f8ea7` |
| 16 | `theorem` | [exp_neg_log_half_eq_inv_sqrt](../../../../MeasureAndIntegration/EstimateTwoMomentSamplingBoundNamespacedEdition2.lean/declarations/exp-neg-log-half-eq-inv-sqrt.md) | 535 | `result-track:de0ca91a6d65ebf7c9967a802d59fa44c4af75c440629ae85feb865ea5ab19cd` |
| 17 | `theorem` | [two_moment_sampling_bound_sqrt](../../../../MeasureAndIntegration/EstimateTwoMomentSamplingBoundNamespacedEdition2.lean/declarations/two-moment-sampling-bound-sqrt.md) | 542 | `result-track:17c3a1658225785741cf1f673aff5ff5fe5d56d3c4b9e643d1f9f786e429d26a` |
| 18 | `def` | [TwoMomentSamplingCheckpoint](../../../../MeasureAndIntegration/EstimateTwoMomentSamplingBoundNamespacedEdition2.lean/declarations/twomomentsamplingcheckpoint.md) | 559 | `declaration-track:55c018b192e6eb6428d0726db099e5ed77bb8e8b455578e97b0eed328e383f55` |
| 19 | `theorem` | [two_moment_sampling_checkpoint](../../../../MeasureAndIntegration/EstimateTwoMomentSamplingBoundNamespacedEdition2.lean/declarations/two-moment-sampling-checkpoint.md) | 571 | `result-track:3878d65705997f1e4a9337b3a836578d68c25c7b6198699e0e52ce1a852813f4` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=b57f3c44c1695a61bc0b06121934bb938fd70476c2e8c396db141b6113936d9b -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/RealAnalysis/Integration/EstimateTwoMomentSamplingBound/Variantdb0d99a1df1a15daab31311f2e50f4b8347affa4077725ecaf1723218bfefd3e.lean","GRWTSK/_verification/specifications/Analysis/RealAnalysis/Integration/EstimateTwoMomentSamplingBound/Variantdb0d99a1df1a15daab31311f2e50f4b8347affa4077725ecaf1723218bfefd3e.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
