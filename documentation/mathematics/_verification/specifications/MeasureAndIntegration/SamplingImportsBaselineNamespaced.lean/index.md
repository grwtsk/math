# Verification target: Sampling Imports Baseline Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "107bb5f025179252f00f30a693a012509da15b15",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/2bc810a6335c08b76295151ccccb8ee60f33848971e9d14259d0832d3705945dSamplingImportsB/Variant404ebabe33b1de7b2e68000234e8fc8fc4e6b4a12a2d41ae4ce16995393105b3.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../MeasureAndIntegration/SamplingImportsBaselineNamespaced.lean/index.md) · [Full source](../../../../MeasureAndIntegration/SamplingImportsBaselineNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `107bb5f025179252f00f30a693a012509da15b15`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/2bc810a6335c08b76295151ccccb8ee60f33848971e9d14259d0832d3705945dSamplingImportsB/Variant404ebabe33b1de7b2e68000234e8fc8fc4e6b4a12a2d41ae4ce16995393105b3.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/2bc810a6335c08b76295151ccccb8ee60f33848971e9d14259d0832d3705945dSamplingImportsB/Variant404ebabe33b1de7b2e68000234e8fc8fc4e6b4a12a2d41ae4ce16995393105b3.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.EstimateKernelMoments` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Integral.IntervalIntegral.IntegrationByParts` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Integral.IntervalIntegral.DistLEIntegral` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [leftSampleSum](../../../../MeasureAndIntegration/SamplingImportsBaselineNamespaced.lean/declarations/leftsamplesum.md) | 38 | `declaration-track:b42052948ba2edafda1b2c01400622891cd35a705740567fa6629da9818c207e` |
| 2 | `theorem` | [unit_sampling_error_identity](../../../../MeasureAndIntegration/SamplingImportsBaselineNamespaced.lean/declarations/unit-sampling-error-identity.md) | 42 | `result-track:47148b7fc136b4801c3dd71920f147638f106e2b25b0a61083dce5763d6652c7` |
| 3 | `theorem` | [abs_unit_sampling_error_le](../../../../MeasureAndIntegration/SamplingImportsBaselineNamespaced.lean/declarations/abs-unit-sampling-error-le.md) | 81 | `result-track:101541389218eb56142748c96398a80ee62cab269e742c75bceaba2a940644a3` |
| 4 | `theorem` | [integral_eq_sum_unit_intervals](../../../../MeasureAndIntegration/SamplingImportsBaselineNamespaced.lean/declarations/integral-eq-sum-unit-intervals.md) | 110 | `result-track:4cf7e8caed78b801833826f291d3b885600373e6c288ab1818879d0f7d021033` |
| 5 | `theorem` | [abs_leftSampleSum_sub_integral_le](../../../../MeasureAndIntegration/SamplingImportsBaselineNamespaced.lean/declarations/abs-leftsamplesum-sub-integral-le.md) | 140 | `result-track:2c6bcea226d297f803372c4d54fac7092633e5f6944d0bb33f52ad92e90d2f45` |
| 6 | `def` | [FiniteSamplingCheckpoint](../../../../MeasureAndIntegration/SamplingImportsBaselineNamespaced.lean/declarations/finitesamplingcheckpoint.md) | 175 | `declaration-track:0227c64ef6b7bc05f258a53ae01a113c07915e06323711b5466914b9a706c3ca` |
| 7 | `theorem` | [finite_sampling_checkpoint](../../../../MeasureAndIntegration/SamplingImportsBaselineNamespaced.lean/declarations/finite-sampling-checkpoint.md) | 183 | `result-track:d300761e2cf509ec0951dbff3389e91ab99a2c9e7b6abc1798f822dd88748359` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=c04202c6f050a99a8c7263a2274c1dd1b2eeddf921076e62abe29484d152128c -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/RealAnalysis/Integration/2bc810a6335c08b76295151ccccb8ee60f33848971e9d14259d0832d3705945dSamplingImportsB/Variant404ebabe33b1de7b2e68000234e8fc8fc4e6b4a12a2d41ae4ce16995393105b3.lean","GRWTSK/_verification/specifications/Analysis/RealAnalysis/Integration/2bc810a6335c08b76295151ccccb8ee60f33848971e9d14259d0832d3705945dSamplingImportsB/Variant404ebabe33b1de7b2e68000234e8fc8fc4e6b4a12a2d41ae4ce16995393105b3.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
