# Verification target: Estimate Two Moment Sampling Bound Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "cdc76a3aaaab4767f2bc20bf277507d0c986bdce",
  "lexical_observation_count": 19,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/3c917c17b000b2eec37bc23daa99afb8f09c46afbe07649fd8a17c7044957834EstimateTwoMomen/Variantcd3a964d3065ad85c6af17e70c53c2371f830f86bbe5d97e01b02cdbd3e032f4.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../MeasureAndIntegration/EstimateTwoMomentSamplingBoundNamespaced.lean/index.md) · [Full source](../../../../MeasureAndIntegration/EstimateTwoMomentSamplingBoundNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `cdc76a3aaaab4767f2bc20bf277507d0c986bdce`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/3c917c17b000b2eec37bc23daa99afb8f09c46afbe07649fd8a17c7044957834EstimateTwoMomen/Variantcd3a964d3065ad85c6af17e70c53c2371f830f86bbe5d97e01b02cdbd3e032f4.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/3c917c17b000b2eec37bc23daa99afb8f09c46afbe07649fd8a17c7044957834EstimateTwoMomen/Variantcd3a964d3065ad85c6af17e70c53c2371f830f86bbe5d97e01b02cdbd3e032f4.lean.json)

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
| 1 | `def` | [SamplingTailZero](../../../../MeasureAndIntegration/EstimateTwoMomentSamplingBoundNamespaced.lean/declarations/samplingtailzero.md) | 44 | `declaration-track:cd69ec0b332f9a5513a895bebc3593b49c19348f25b2c5c77afd6f841836a877` |
| 2 | `theorem` | [logSamplingDerivative_continuousOn_pos](../../../../MeasureAndIntegration/EstimateTwoMomentSamplingBoundNamespaced.lean/declarations/logsamplingderivative-continuouson-pos.md) | 49 | `result-track:ca483558dbd5eb871890f0bab96af8cda6025afd0ec3a738b39282a32e3b9cd2` |
| 3 | `theorem` | [logSamplingTerm_intervalIntegrable](../../../../MeasureAndIntegration/EstimateTwoMomentSamplingBoundNamespaced.lean/declarations/logsamplingterm-intervalintegrable.md) | 60 | `result-track:41b29f44fe04e78a3f1f67e74d1097f8f5da2f55d17130831d88beb623bc1ba1` |
| 4 | `theorem` | [logSamplingDerivative_intervalIntegrable](../../../../MeasureAndIntegration/EstimateTwoMomentSamplingBoundNamespaced.lean/declarations/logsamplingderivative-intervalintegrable.md) | 70 | `result-track:b869b641f3c72559fedeb94aeb84d9fbe7a21bb6e95b0ce5a9019b6aca73e3d3` |
| 5 | `theorem` | [unit_log_sampling_error_identity](../../../../MeasureAndIntegration/EstimateTwoMomentSamplingBoundNamespaced.lean/declarations/unit-log-sampling-error-identity.md) | 80 | `result-track:2103d35450dbe1145b870ed0e3d86ed5f289d123de8552019b5c14d64aab29f3` |
| 6 | `theorem` | [abs_unit_log_sampling_error_le](../../../../MeasureAndIntegration/EstimateTwoMomentSamplingBoundNamespaced.lean/declarations/abs-unit-log-sampling-error-le.md) | 126 | `result-track:a958d4d52671dd1a37c43bee6fe2524cd1443db875b45bc4310b341063b9b7e7` |
| 7 | `theorem` | [integral_logSampling_eq_sum_unit_intervals](../../../../MeasureAndIntegration/EstimateTwoMomentSamplingBoundNamespaced.lean/declarations/integral-logsampling-eq-sum-unit-intervals.md) | 165 | `result-track:c0141bddcb905b380dac6e496327e280acd5bd3fb3017ae495903ff579377530` |
| 8 | `theorem` | [finite_log_sampling_error](../../../../MeasureAndIntegration/EstimateTwoMomentSamplingBoundNamespaced.lean/declarations/finite-log-sampling-error.md) | 204 | `result-track:980190b49f03b8b02673c59f2687ab0283b155b6f6c1e6cef9073c71522bbb52` |
| 9 | `theorem` | [logSamplingDerivative_integrableOn_Ioi_one](../../../../MeasureAndIntegration/EstimateTwoMomentSamplingBoundNamespaced.lean/declarations/logsamplingderivative-integrableon-ioi-one.md) | 270 | `result-track:cc60ba7348041c6ca03538767a53a30779e9bdc146b154c9769c93dac1d92225` |
| 10 | `theorem` | [finite_log_sampling_error_global](../../../../MeasureAndIntegration/EstimateTwoMomentSamplingBoundNamespaced.lean/declarations/finite-log-sampling-error-global.md) | 296 | `result-track:f3afbfcc8af12a94337b6d84af42be3a6a49992b11f7e2a786d6c48147db4590` |
| 11 | `theorem` | [logSampling_integral_Ioi_eq_shifted](../../../../MeasureAndIntegration/EstimateTwoMomentSamplingBoundNamespaced.lean/declarations/logsampling-integral-ioi-eq-shifted.md) | 334 | `result-track:b7461f49488b6f401c77e540973f701d4528ed1c0b00895f2af842a20d7be54b` |
| 12 | `theorem` | [logSampling_integral_Ioi_eq_reflected](../../../../MeasureAndIntegration/EstimateTwoMomentSamplingBoundNamespaced.lean/declarations/logsampling-integral-ioi-eq-reflected.md) | 369 | `result-track:26801e6009a9bc8af2cdbf7ac075cbef9ad3ff2afdf26887703a958dae37aedb` |
| 13 | `theorem` | [abs_logSampling_integral_Ioi_le](../../../../MeasureAndIntegration/EstimateTwoMomentSamplingBoundNamespaced.lean/declarations/abs-logsampling-integral-ioi-le.md) | 381 | `result-track:6ed9e72d09aa35d652a921c7077ee0994527d41cb9987ed222d50d82593ad04e` |
| 14 | `theorem` | [finite_interval_eq_Ioi_of_tailZero](../../../../MeasureAndIntegration/EstimateTwoMomentSamplingBoundNamespaced.lean/declarations/finite-interval-eq-ioi-of-tailzero.md) | 450 | `result-track:478f4a6b4712c35994de3975b488ca64699a2c2877e4ec3577a88277f1ba2e24` |
| 15 | `theorem` | [two_moment_sampling_bound](../../../../MeasureAndIntegration/EstimateTwoMomentSamplingBoundNamespaced.lean/declarations/two-moment-sampling-bound.md) | 487 | `result-track:e14fb7780afa2e40dcd0486891c1b3cf54fb0add332f8f8059da36ed889e733a` |
| 16 | `theorem` | [exp_neg_log_half_eq_inv_sqrt](../../../../MeasureAndIntegration/EstimateTwoMomentSamplingBoundNamespaced.lean/declarations/exp-neg-log-half-eq-inv-sqrt.md) | 534 | `result-track:5449942419f6e2966c538faa717f994c1f937283690f889db5284bb93937fa07` |
| 17 | `theorem` | [two_moment_sampling_bound_sqrt](../../../../MeasureAndIntegration/EstimateTwoMomentSamplingBoundNamespaced.lean/declarations/two-moment-sampling-bound-sqrt.md) | 541 | `result-track:df6ff7c42e68830b086f64bae80db2cfbe59d3d892642773a76cf6d13a1b11af` |
| 18 | `def` | [TwoMomentSamplingCheckpoint](../../../../MeasureAndIntegration/EstimateTwoMomentSamplingBoundNamespaced.lean/declarations/twomomentsamplingcheckpoint.md) | 556 | `declaration-track:a8430acc2ea5c2ad3f3e01cfd36489f8463b3a899cecf5283e75b5f61775cd4f` |
| 19 | `theorem` | [two_moment_sampling_checkpoint](../../../../MeasureAndIntegration/EstimateTwoMomentSamplingBoundNamespaced.lean/declarations/two-moment-sampling-checkpoint.md) | 568 | `result-track:6cc360bf8ab1f1fe2410bf0433925812076b39f492183d3f0889df53c2f74873` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=24c9654289c7b96439b923b75902794d66403975e9ce230153522470dfc5c922 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/RealAnalysis/Integration/3c917c17b000b2eec37bc23daa99afb8f09c46afbe07649fd8a17c7044957834EstimateTwoMomen/Variantcd3a964d3065ad85c6af17e70c53c2371f830f86bbe5d97e01b02cdbd3e032f4.lean","GRWTSK/_verification/specifications/Analysis/RealAnalysis/Integration/3c917c17b000b2eec37bc23daa99afb8f09c46afbe07649fd8a17c7044957834EstimateTwoMomen/Variantcd3a964d3065ad85c6af17e70c53c2371f830f86bbe5d97e01b02cdbd3e032f4.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
