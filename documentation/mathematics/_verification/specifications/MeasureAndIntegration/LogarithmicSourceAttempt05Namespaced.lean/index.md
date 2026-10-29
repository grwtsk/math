# Verification target: Logarithmic Source Attempt05 Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "64b4ba05ef8e031ed2a5c9fa641fddbc725371c5",
  "lexical_observation_count": 15,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/LogarithmicSourceAttempt05/Variante450ffe5f170c48c6008d2ceec92e6f25a3bddfdd446be230587941dbefdb405.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../MeasureAndIntegration/LogarithmicSourceAttempt05Namespaced.lean/index.md) · [Full source](../../../../MeasureAndIntegration/LogarithmicSourceAttempt05Namespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `64b4ba05ef8e031ed2a5c9fa641fddbc725371c5`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/LogarithmicSourceAttempt05/Variante450ffe5f170c48c6008d2ceec92e6f25a3bddfdd446be230587941dbefdb405.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/LogarithmicSourceAttempt05/Variante450ffe5f170c48c6008d2ceec92e6f25a3bddfdd446be230587941dbefdb405.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.BridgeNormalization` — import line 6; external provider; requires a separately pinned dependency.
- `FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.CorrelationRegularity` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.MellinTransform` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Function.JacobianOneDim` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [positiveLogLift](../../../../MeasureAndIntegration/LogarithmicSourceAttempt05Namespaced.lean/declarations/positiveloglift.md) | 26 | `declaration-track:92b280a7fc3c2b6ac213ec66431e34e13e720d3034d1c829610887d187cc3021` |
| 2 | `theorem` | [positiveLogLift_exp](../../../../MeasureAndIntegration/LogarithmicSourceAttempt05Namespaced.lean/declarations/positiveloglift-exp.md) | 29 | `result-track:5637ee541933c355f4a2d3875d6864e61af5d243ad4510b282c835899b7bb544` |
| 3 | `theorem` | [exp_square_weight](../../../../MeasureAndIntegration/LogarithmicSourceAttempt05Namespaced.lean/declarations/exp-square-weight.md) | 33 | `result-track:936a45246f89a16e4225478e56ae875b1eb37eb1731e65fc01f6a8bf534cfdd2` |
| 4 | `theorem` | [lift_square_jacobian](../../../../MeasureAndIntegration/LogarithmicSourceAttempt05Namespaced.lean/declarations/lift-square-jacobian.md) | 39 | `result-track:3e5562a0c53904e647c3655e9033d94acd16b3cb3d95a46d8590bf41e8c7235f` |
| 5 | `theorem` | [lift_square_integrable_iff](../../../../MeasureAndIntegration/LogarithmicSourceAttempt05Namespaced.lean/declarations/lift-square-integrable-iff.md) | 46 | `result-track:eeb1372a0a00f90bfcc94bcce7de5f1b29fb13085396d372ad555661d767c356` |
| 6 | `theorem` | [lift_square_integral](../../../../MeasureAndIntegration/LogarithmicSourceAttempt05Namespaced.lean/declarations/lift-square-integral.md) | 57 | `result-track:7c98b1b6343e3c604a3b1c3572030ade6b7f657ce970cdb3c139ca4af9267f9a` |
| 7 | `def` | [actualLogSource](../../../../MeasureAndIntegration/LogarithmicSourceAttempt05Namespaced.lean/declarations/actuallogsource.md) | 68 | `declaration-track:94940eb366fca542a8aea68de5fb10d4dbce73c14bb86fba6f37180eebef86ea` |
| 8 | `theorem` | [actualLogSource_square_integrable](../../../../MeasureAndIntegration/LogarithmicSourceAttempt05Namespaced.lean/declarations/actuallogsource-square-integrable.md) | 71 | `result-track:426285899a09a639b683e704709123f0dbcc11f1ddfdb0a63143d045b8d11d6f` |
| 9 | `theorem` | [actualLogSource_square_integral](../../../../MeasureAndIntegration/LogarithmicSourceAttempt05Namespaced.lean/declarations/actuallogsource-square-integral.md) | 75 | `result-track:de3b168e36f6f2e69096d0a345412fd0ffa96628a3353d65366440eb8ad4912a` |
| 10 | `theorem` | [positiveLogLift_dilation](../../../../MeasureAndIntegration/LogarithmicSourceAttempt05Namespaced.lean/declarations/positiveloglift-dilation.md) | 80 | `result-track:dd3ee1f0a51f2b8401f09b478ea968a1e9988df904aac340e4b63ba398224808` |
| 11 | `theorem` | [lift_mellin_jacobian](../../../../MeasureAndIntegration/LogarithmicSourceAttempt05Namespaced.lean/declarations/lift-mellin-jacobian.md) | 89 | `result-track:c8deeae1295b8187374530ce8eb20ec23972e5462c34e1a7785a1869cf96ebdd` |
| 12 | `theorem` | [lift_mellin_eq_bilateral](../../../../MeasureAndIntegration/LogarithmicSourceAttempt05Namespaced.lean/declarations/lift-mellin-eq-bilateral.md) | 103 | `result-track:543182f08dc72555c1a27c9cd5d104ca1d2a263c6a0e86bd63d2564df514c53a` |
| 13 | `theorem` | [lift_mellin_integrable_iff](../../../../MeasureAndIntegration/LogarithmicSourceAttempt05Namespaced.lean/declarations/lift-mellin-integrable-iff.md) | 115 | `result-track:6a2ab4e6187598678dd9a41f8b0e5535329f7bfcdb14d1b689d1e6e9ac5976ae` |
| 14 | `theorem` | [actualLogSource_mellin_integrable](../../../../MeasureAndIntegration/LogarithmicSourceAttempt05Namespaced.lean/declarations/actuallogsource-mellin-integrable.md) | 126 | `result-track:a1d90ef44086e9e89c1fa55526da7af6a6bb203f0df63f91ed38547cb4f138c5` |
| 15 | `theorem` | [actualLogSource_mellin_critical](../../../../MeasureAndIntegration/LogarithmicSourceAttempt05Namespaced.lean/declarations/actuallogsource-mellin-critical.md) | 135 | `result-track:f22e0019d05b0cd3a28b7e9c29ee75db4f9e1654d5d089719c46bf45c2abcc5a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=807ab540a1c5f682391304375a4ad2902b4f0c2bd4046ef07445b8212714bfbd -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/RealAnalysis/Integration/LogarithmicSourceAttempt05/Variante450ffe5f170c48c6008d2ceec92e6f25a3bddfdd446be230587941dbefdb405.lean","GRWTSK/_verification/specifications/Analysis/RealAnalysis/Integration/LogarithmicSourceAttempt05/Variante450ffe5f170c48c6008d2ceec92e6f25a3bddfdd446be230587941dbefdb405.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
