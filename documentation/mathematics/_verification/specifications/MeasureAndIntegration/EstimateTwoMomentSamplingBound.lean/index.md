# Verification target: Estimate Two Moment Sampling Bound

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0f67dabeab1d9b08ef25033ccd41252e02054d30",
  "lexical_observation_count": 19,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/3c917c17b000b2eec37bc23daa99afb8f09c46afbe07649fd8a17c7044957834EstimateTwoMomen/Variant3c917c17b000b2eec37bc23daa99afb8f09c46afbe07649fd8a17c7044957834.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../MeasureAndIntegration/EstimateTwoMomentSamplingBound.lean/index.md) · [Full source](../../../../MeasureAndIntegration/EstimateTwoMomentSamplingBound.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0f67dabeab1d9b08ef25033ccd41252e02054d30`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/3c917c17b000b2eec37bc23daa99afb8f09c46afbe07649fd8a17c7044957834EstimateTwoMomen/Variant3c917c17b000b2eec37bc23daa99afb8f09c46afbe07649fd8a17c7044957834.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/3c917c17b000b2eec37bc23daa99afb8f09c46afbe07649fd8a17c7044957834EstimateTwoMomen/Variant3c917c17b000b2eec37bc23daa99afb8f09c46afbe07649fd8a17c7044957834.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.EstimateLogSamplingIntegrals` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [SamplingTailZero](../../../../MeasureAndIntegration/EstimateTwoMomentSamplingBound.lean/declarations/samplingtailzero.md) | 36 | `declaration-track:c093300fc273f29c50622fa3e5d6228458700ce5039cdc6dbd8983d6a95b43b4` |
| 2 | `theorem` | [logSamplingDerivative_continuousOn_pos](../../../../MeasureAndIntegration/EstimateTwoMomentSamplingBound.lean/declarations/logsamplingderivative-continuouson-pos.md) | 41 | `result-track:5fe131ae3f183c008af75df4aa512e64d689915558724a18393e9b67fc07fc73` |
| 3 | `theorem` | [logSamplingTerm_intervalIntegrable](../../../../MeasureAndIntegration/EstimateTwoMomentSamplingBound.lean/declarations/logsamplingterm-intervalintegrable.md) | 52 | `result-track:7f7770e0007c02b77bce23eaf743cef4cfb08c7a0cd50d60843f97aa8fc57f97` |
| 4 | `theorem` | [logSamplingDerivative_intervalIntegrable](../../../../MeasureAndIntegration/EstimateTwoMomentSamplingBound.lean/declarations/logsamplingderivative-intervalintegrable.md) | 62 | `result-track:7dbb8a155423df689bf1de5b8108b0a3f9481f18ff112a155184bc70e4ea83e5` |
| 5 | `theorem` | [unit_log_sampling_error_identity](../../../../MeasureAndIntegration/EstimateTwoMomentSamplingBound.lean/declarations/unit-log-sampling-error-identity.md) | 72 | `result-track:a930288b18d90484f2c7fed6757f342cf45f9e588fa397ec40be4cb322f18ee1` |
| 6 | `theorem` | [abs_unit_log_sampling_error_le](../../../../MeasureAndIntegration/EstimateTwoMomentSamplingBound.lean/declarations/abs-unit-log-sampling-error-le.md) | 118 | `result-track:0e2ae883577a03293f8348b90f7e825b95cedc93d8ed3e340c769f8f104a1387` |
| 7 | `theorem` | [integral_logSampling_eq_sum_unit_intervals](../../../../MeasureAndIntegration/EstimateTwoMomentSamplingBound.lean/declarations/integral-logsampling-eq-sum-unit-intervals.md) | 157 | `result-track:59359bfe26b14412cde2b5387a3940927e567cb6b30caf89788f210283d317fb` |
| 8 | `theorem` | [finite_log_sampling_error](../../../../MeasureAndIntegration/EstimateTwoMomentSamplingBound.lean/declarations/finite-log-sampling-error.md) | 196 | `result-track:95cb9e23ba50261759af87930aee658f90cbfed01ea2d263a5531617fc6757ce` |
| 9 | `theorem` | [logSamplingDerivative_integrableOn_Ioi_one](../../../../MeasureAndIntegration/EstimateTwoMomentSamplingBound.lean/declarations/logsamplingderivative-integrableon-ioi-one.md) | 262 | `result-track:1d0c66f30cdf7417f9fcef46166e06080d7d7bd58ce1846efb51782f263b592a` |
| 10 | `theorem` | [finite_log_sampling_error_global](../../../../MeasureAndIntegration/EstimateTwoMomentSamplingBound.lean/declarations/finite-log-sampling-error-global.md) | 288 | `result-track:ea8aeec52f8d54349870ede97dd633c238449b9d28c04a169f0dd55053407203` |
| 11 | `theorem` | [logSampling_integral_Ioi_eq_shifted](../../../../MeasureAndIntegration/EstimateTwoMomentSamplingBound.lean/declarations/logsampling-integral-ioi-eq-shifted.md) | 326 | `result-track:2caf763c8e7d91ed0b3133a4f800235978944a4ac9fed46168d9a818c7c9fdc3` |
| 12 | `theorem` | [logSampling_integral_Ioi_eq_reflected](../../../../MeasureAndIntegration/EstimateTwoMomentSamplingBound.lean/declarations/logsampling-integral-ioi-eq-reflected.md) | 361 | `result-track:e7a97360cc2dd5697ea87e228f77d96b579969541ce4cd550fed5fec6bce64d6` |
| 13 | `theorem` | [abs_logSampling_integral_Ioi_le](../../../../MeasureAndIntegration/EstimateTwoMomentSamplingBound.lean/declarations/abs-logsampling-integral-ioi-le.md) | 373 | `result-track:4317b23b1a5974825832d32c6a630022f637850d62b64a4a28d4f41f405bb0a3` |
| 14 | `theorem` | [finite_interval_eq_Ioi_of_tailZero](../../../../MeasureAndIntegration/EstimateTwoMomentSamplingBound.lean/declarations/finite-interval-eq-ioi-of-tailzero.md) | 442 | `result-track:130dadb5e7e32c9c1804762783f74aadbd9d79338b8e528a8ef4eedaebe52837` |
| 15 | `theorem` | [two_moment_sampling_bound](../../../../MeasureAndIntegration/EstimateTwoMomentSamplingBound.lean/declarations/two-moment-sampling-bound.md) | 479 | `result-track:d26ffd4ab495bab8ed904b796183f67c0137d8877bf2e4efddbcd0874cbae6b5` |
| 16 | `theorem` | [exp_neg_log_half_eq_inv_sqrt](../../../../MeasureAndIntegration/EstimateTwoMomentSamplingBound.lean/declarations/exp-neg-log-half-eq-inv-sqrt.md) | 526 | `result-track:6f7ccb3049a25f53fa2ea9662173353f636ee030fa7b77d2d6329f8cbc2e906a` |
| 17 | `theorem` | [two_moment_sampling_bound_sqrt](../../../../MeasureAndIntegration/EstimateTwoMomentSamplingBound.lean/declarations/two-moment-sampling-bound-sqrt.md) | 533 | `result-track:38bd97242244b5e49219e8915bdf0ec6406ae7d83d8362ea004b5c290bfbfcdc` |
| 18 | `def` | [TwoMomentSamplingCheckpoint](../../../../MeasureAndIntegration/EstimateTwoMomentSamplingBound.lean/declarations/twomomentsamplingcheckpoint.md) | 548 | `declaration-track:4b60a4d431db3631215d302be000ac711c252003e018068ec4eea1ac488abaf2` |
| 19 | `theorem` | [two_moment_sampling_checkpoint](../../../../MeasureAndIntegration/EstimateTwoMomentSamplingBound.lean/declarations/two-moment-sampling-checkpoint.md) | 560 | `result-track:f093d2b8ce676dced5a69e754169dda73e16fd11aa92880c5a3cb6028a4ad0f5` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=452c43bf880fa12f8823fcf901baef329bf7b1471430181cd1f6df33b97e3693 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/RealAnalysis/Integration/3c917c17b000b2eec37bc23daa99afb8f09c46afbe07649fd8a17c7044957834EstimateTwoMomen/Variant3c917c17b000b2eec37bc23daa99afb8f09c46afbe07649fd8a17c7044957834.lean","GRWTSK/_verification/specifications/Analysis/RealAnalysis/Integration/3c917c17b000b2eec37bc23daa99afb8f09c46afbe07649fd8a17c7044957834EstimateTwoMomen/Variant3c917c17b000b2eec37bc23daa99afb8f09c46afbe07649fd8a17c7044957834.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
