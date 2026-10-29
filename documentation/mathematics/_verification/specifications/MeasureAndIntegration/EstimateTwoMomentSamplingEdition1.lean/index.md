# Verification target: Estimate Two Moment Sampling Edition1

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "57e6de61f7f89a0aa824faf916fc3b42eb5b83b4",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/EstimateTwoMomentSampling/Variant5c70ee20ca7d075ce1b7e07028ac4db99e043127ff81ae3a82d3923d778f4c52.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../MeasureAndIntegration/EstimateTwoMomentSamplingEdition1.lean/index.md) · [Full source](../../../../MeasureAndIntegration/EstimateTwoMomentSamplingEdition1.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `57e6de61f7f89a0aa824faf916fc3b42eb5b83b4`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/EstimateTwoMomentSampling/Variant5c70ee20ca7d075ce1b7e07028ac4db99e043127ff81ae3a82d3923d778f4c52.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/EstimateTwoMomentSampling/Variant5c70ee20ca7d075ce1b7e07028ac4db99e043127ff81ae3a82d3923d778f4c52.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.EstimateKernelMoments` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Integral.IntervalIntegral.IntegrationByParts` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Integral.IntervalIntegral.DistLEIntegral` — import line 3; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [leftSampleSum](../../../../MeasureAndIntegration/EstimateTwoMomentSamplingEdition1.lean/declarations/leftsamplesum.md) | 29 | `declaration-track:4c5c8774686b9f03117812bdfc01e867102432082046faaef9057dbed74cd864` |
| 2 | `theorem` | [unit_sampling_error_identity](../../../../MeasureAndIntegration/EstimateTwoMomentSamplingEdition1.lean/declarations/unit-sampling-error-identity.md) | 33 | `result-track:3dae54e615e6000b9070cf1bcbecc83f2a2d27727e7161868999e8de5af70414` |
| 3 | `theorem` | [abs_unit_sampling_error_le](../../../../MeasureAndIntegration/EstimateTwoMomentSamplingEdition1.lean/declarations/abs-unit-sampling-error-le.md) | 72 | `result-track:97ceaf42e5d543824880a6d28f968a70befc90975982cb5e4a976426cb21ee20` |
| 4 | `theorem` | [integral_eq_sum_unit_intervals](../../../../MeasureAndIntegration/EstimateTwoMomentSamplingEdition1.lean/declarations/integral-eq-sum-unit-intervals.md) | 101 | `result-track:c81f0c34c435dce155c775da65d19c7cc587e36931970d9acb3e63d50c847ff4` |
| 5 | `theorem` | [abs_leftSampleSum_sub_integral_le](../../../../MeasureAndIntegration/EstimateTwoMomentSamplingEdition1.lean/declarations/abs-leftsamplesum-sub-integral-le.md) | 130 | `result-track:6efc648b017ca8a4444c12b3bec0a3185d9e2b30427d1367569523335be0723f` |
| 6 | `def` | [FiniteSamplingCheckpoint](../../../../MeasureAndIntegration/EstimateTwoMomentSamplingEdition1.lean/declarations/finitesamplingcheckpoint.md) | 165 | `declaration-track:ce22de297b0bdd135051fbf4e8f344c2696cc10392cce6285569f8249ff9c44b` |
| 7 | `theorem` | [finite_sampling_checkpoint](../../../../MeasureAndIntegration/EstimateTwoMomentSamplingEdition1.lean/declarations/finite-sampling-checkpoint.md) | 173 | `result-track:0af03977c84ca363cfabe6adc5e4463a40969c45abadbeff1f477d705fdef664` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=818a920fac051506eb94170b7f8d609c49bbc50b078c3ba50ebf433c8ba984d1 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/RealAnalysis/Integration/EstimateTwoMomentSampling/Variant5c70ee20ca7d075ce1b7e07028ac4db99e043127ff81ae3a82d3923d778f4c52.lean","GRWTSK/_verification/specifications/Analysis/RealAnalysis/Integration/EstimateTwoMomentSampling/Variant5c70ee20ca7d075ce1b7e07028ac4db99e043127ff81ae3a82d3923d778f4c52.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
