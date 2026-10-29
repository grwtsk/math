# Verification target: Estimate Log Sampling Integrals Edition2

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1be8bc0f67d7b8c2fb0e77b0a9fc4b83dc36df1d",
  "lexical_observation_count": 17,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/EstimateLogSamplingIntegrals/Variant428520d6124e818f339f3c61e0ba8a9a966bb31de5e0845256e67b045ec1f6b2.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../MeasureAndIntegration/EstimateLogSamplingIntegralsEdition2.lean/index.md) · [Full source](../../../../MeasureAndIntegration/EstimateLogSamplingIntegralsEdition2.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1be8bc0f67d7b8c2fb0e77b0a9fc4b83dc36df1d`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/EstimateLogSamplingIntegrals/Variant428520d6124e818f339f3c61e0ba8a9a966bb31de5e0845256e67b045ec1f6b2.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/EstimateLogSamplingIntegrals/Variant428520d6124e818f339f3c61e0ba8a9a966bb31de5e0845256e67b045ec1f6b2.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.EstimateLogSampling` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Gamma.Basic` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Integral.IntegralEqImproper` — import line 3; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [halfDensity](../../../../MeasureAndIntegration/EstimateLogSamplingIntegralsEdition2.lean/declarations/halfdensity.md) | 28 | `declaration-track:1c5d52fc9233ed4535603634f9f025e8b4d1334b36e383d41c8b3a0d10370b9e` |
| 2 | `def` | [logHalfDensity](../../../../MeasureAndIntegration/EstimateLogSamplingIntegralsEdition2.lean/declarations/loghalfdensity.md) | 31 | `declaration-track:5a39ffe69179299d950d7a304b4ba2734ee9b065d5a10ef587babc8b068f03fe` |
| 3 | `theorem` | [exponential_half_mass](../../../../MeasureAndIntegration/EstimateLogSamplingIntegralsEdition2.lean/declarations/exponential-half-mass.md) | 34 | `result-track:cac350f67709bc85878b74d5d6fb2b99d945087894dcb9cc1d58cf22e194930c` |
| 4 | `theorem` | [exponential_half_first_moment](../../../../MeasureAndIntegration/EstimateLogSamplingIntegralsEdition2.lean/declarations/exponential-half-first-moment.md) | 42 | `result-track:a8f91970154886518f7f80ab16ba67d7ef23004119b2ce99d9230d5010aad1b3` |
| 5 | `theorem` | [exp_mul_halfDensity](../../../../MeasureAndIntegration/EstimateLogSamplingIntegralsEdition2.lean/declarations/exp-mul-halfdensity.md) | 54 | `result-track:5b2dcb2b0dba9f4baeaca411bc235c0b286393ba98180c735cbc891b2d18525c` |
| 6 | `theorem` | [exp_mul_logHalfDensity](../../../../MeasureAndIntegration/EstimateLogSamplingIntegralsEdition2.lean/declarations/exp-mul-loghalfdensity.md) | 62 | `result-track:aad200b270352b2990c6dc1c3366f2f68381efe6ab9229911208342ebfa9da99` |
| 7 | `theorem` | [halfDensity_integral](../../../../MeasureAndIntegration/EstimateLogSamplingIntegralsEdition2.lean/declarations/halfdensity-integral.md) | 73 | `result-track:c2741c5213d7799fa9806b11e2a84958ac1d30b7120f54ba0465139b18e9c913` |
| 8 | `theorem` | [logHalfDensity_integral](../../../../MeasureAndIntegration/EstimateLogSamplingIntegralsEdition2.lean/declarations/loghalfdensity-integral.md) | 93 | `result-track:9996f54b9d16163feadc76cae02746a299870f85b47a597a4e460faba99aec01` |
| 9 | `theorem` | [halfDensity_integrableOn](../../../../MeasureAndIntegration/EstimateLogSamplingIntegralsEdition2.lean/declarations/halfdensity-integrableon.md) | 113 | `result-track:79da41711a3ad27b909427280984376703696ea8cde31f499b8483ab17ebf63a` |
| 10 | `theorem` | [logHalfDensity_integrableOn](../../../../MeasureAndIntegration/EstimateLogSamplingIntegralsEdition2.lean/declarations/loghalfdensity-integrableon.md) | 119 | `result-track:4cd0585ec5bacacdb820b59c674993c235523ca9dc958b473d150b3247d30ade` |
| 11 | `theorem` | [logSamplingDerivativeMajorant_eq](../../../../MeasureAndIntegration/EstimateLogSamplingIntegralsEdition2.lean/declarations/logsamplingderivativemajorant-eq.md) | 125 | `result-track:2ffe6cdb793129839f2f37de693ccf2519ec18cd44fc3b724b5c7c519bc84306` |
| 12 | `theorem` | [logSamplingDerivativeMajorant_integrableOn](../../../../MeasureAndIntegration/EstimateLogSamplingIntegralsEdition2.lean/declarations/logsamplingderivativemajorant-integrableon.md) | 135 | `result-track:7b7a2b7b30dfbab8b3efaaf1b0a84140713bbb0bfc8772b4617a8bc463e26546` |
| 13 | `theorem` | [logSamplingDerivativeMajorant_integral](../../../../MeasureAndIntegration/EstimateLogSamplingIntegralsEdition2.lean/declarations/logsamplingderivativemajorant-integral.md) | 153 | `result-track:31e44b36d1a6a485c279438e08b6ea5a715633194d5e342d3cdd86cd9d1f1fc8` |
| 14 | `theorem` | [logSamplingDerivative_continuousOn_Ioi_one](../../../../MeasureAndIntegration/EstimateLogSamplingIntegralsEdition2.lean/declarations/logsamplingderivative-continuouson-ioi-one.md) | 175 | `result-track:ec42fe02dbf83f91066b59a411f253fff893ac425554780cf8742d6be3ac78de` |
| 15 | `theorem` | [integral_abs_logSamplingDerivative_le](../../../../MeasureAndIntegration/EstimateLogSamplingIntegralsEdition2.lean/declarations/integral-abs-logsamplingderivative-le.md) | 193 | `result-track:923cf7b74ad4626e3cad1269753aac4f76f299dbb3b6ef2784cc07f9553d2eee` |
| 16 | `def` | [LogSamplingIntegralCheckpoint](../../../../MeasureAndIntegration/EstimateLogSamplingIntegralsEdition2.lean/declarations/logsamplingintegralcheckpoint.md) | 238 | `declaration-track:c177641a901f347e5d93e3c95cf9c24f053a422edd11a0a943cf03de01ace365` |
| 17 | `theorem` | [log_sampling_integral_checkpoint](../../../../MeasureAndIntegration/EstimateLogSamplingIntegralsEdition2.lean/declarations/log-sampling-integral-checkpoint.md) | 256 | `result-track:ca14fbeb8cd81596d95cf0a5588f59e06eca2126b588ff204e19b33130ae7b8c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=5e0ef9af81bef241b9d24ddce46ce0f6f2e91c3fa3d1a027a4359d9229e42c0a -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/RealAnalysis/Integration/EstimateLogSamplingIntegrals/Variant428520d6124e818f339f3c61e0ba8a9a966bb31de5e0845256e67b045ec1f6b2.lean","GRWTSK/_verification/specifications/Analysis/RealAnalysis/Integration/EstimateLogSamplingIntegrals/Variant428520d6124e818f339f3c61e0ba8a9a966bb31de5e0845256e67b045ec1f6b2.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
