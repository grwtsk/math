# Verification target: Logarithmic Source Attempt01 Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "71302826b97f9540cf1ce67127a2ea561f339d7c",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/LogarithmicSourceAttempt01/Variant28c80b71166e91e3bb1fac4c9ec7c095034e4dc43c1c07b2f94b1772457ea9d4.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../MeasureAndIntegration/LogarithmicSourceAttempt01Namespaced.lean/index.md) · [Full source](../../../../MeasureAndIntegration/LogarithmicSourceAttempt01Namespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `71302826b97f9540cf1ce67127a2ea561f339d7c`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/LogarithmicSourceAttempt01/Variant28c80b71166e91e3bb1fac4c9ec7c095034e4dc43c1c07b2f94b1772457ea9d4.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/LogarithmicSourceAttempt01/Variant28c80b71166e91e3bb1fac4c9ec7c095034e4dc43c1c07b2f94b1772457ea9d4.lean.json)

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
| 1 | `def` | [positiveLogLift](../../../../MeasureAndIntegration/LogarithmicSourceAttempt01Namespaced.lean/declarations/positiveloglift.md) | 26 | `declaration-track:7c44ca3557d4d0364a2b28c8d6fb274c7550e024f05d67fdd7bcdda7e87876e8` |
| 2 | `theorem` | [positiveLogLift_exp](../../../../MeasureAndIntegration/LogarithmicSourceAttempt01Namespaced.lean/declarations/positiveloglift-exp.md) | 29 | `result-track:e3039535a8dae72c4a26c245d1c485fb50d3b44f65f94ac18694998cd0995709` |
| 3 | `theorem` | [exp_square_weight](../../../../MeasureAndIntegration/LogarithmicSourceAttempt01Namespaced.lean/declarations/exp-square-weight.md) | 33 | `result-track:6c1cb855fafe3d962c29d6413dd86576c1f3580b4ce9584a22611a21b60022ac` |
| 4 | `theorem` | [lift_square_jacobian](../../../../MeasureAndIntegration/LogarithmicSourceAttempt01Namespaced.lean/declarations/lift-square-jacobian.md) | 38 | `result-track:56305b1d06c92989ad69e9521b293dff374236268e7291cced969ded7bd80ee9` |
| 5 | `theorem` | [lift_square_integrable_iff](../../../../MeasureAndIntegration/LogarithmicSourceAttempt01Namespaced.lean/declarations/lift-square-integrable-iff.md) | 45 | `result-track:6e30954dbcfc77357deac6190c77c7085032338c218979840af0ac167a5c7cc1` |
| 6 | `theorem` | [lift_square_integral](../../../../MeasureAndIntegration/LogarithmicSourceAttempt01Namespaced.lean/declarations/lift-square-integral.md) | 56 | `result-track:c79ff735e3c5d43006f110aadda8339c231ab3ff69957639b23578c5745f87b7` |
| 7 | `def` | [actualLogSource](../../../../MeasureAndIntegration/LogarithmicSourceAttempt01Namespaced.lean/declarations/actuallogsource.md) | 67 | `declaration-track:3562744777c27c352c4b61ea9f83b8fba23e424c154b32fd61d176cacd384061` |
| 8 | `theorem` | [actualLogSource_square_integrable](../../../../MeasureAndIntegration/LogarithmicSourceAttempt01Namespaced.lean/declarations/actuallogsource-square-integrable.md) | 70 | `result-track:233e92b8f289ed7b34fa9f441c0490e855fd25f29c4e7b6b7e7fcdfc0c7b74ae` |
| 9 | `theorem` | [actualLogSource_square_integral](../../../../MeasureAndIntegration/LogarithmicSourceAttempt01Namespaced.lean/declarations/actuallogsource-square-integral.md) | 74 | `result-track:e101f243ca50f078515ed648469b026d176e86a22ce09863fb5e9ebc2c30863e` |
| 10 | `theorem` | [positiveLogLift_dilation](../../../../MeasureAndIntegration/LogarithmicSourceAttempt01Namespaced.lean/declarations/positiveloglift-dilation.md) | 79 | `result-track:00b14986d0985ca44f93420c7116530c4c5c77b41c4a0a7acb88b1cadd5b670c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=92cc74c421bd9fef8b0752daf19fcd469dc0392fe69f44ed33d6fd7f6523d65e -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/RealAnalysis/Integration/LogarithmicSourceAttempt01/Variant28c80b71166e91e3bb1fac4c9ec7c095034e4dc43c1c07b2f94b1772457ea9d4.lean","GRWTSK/_verification/specifications/Analysis/RealAnalysis/Integration/LogarithmicSourceAttempt01/Variant28c80b71166e91e3bb1fac4c9ec7c095034e4dc43c1c07b2f94b1772457ea9d4.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
