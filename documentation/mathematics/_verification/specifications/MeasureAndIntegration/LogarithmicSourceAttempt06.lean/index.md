# Verification target: Logarithmic Source Attempt06

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8e46e511e789056af572345791e85b3bd4a24cbe",
  "lexical_observation_count": 22,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/LogarithmicSourceAttempt06/Variant5227ba582bd6fcff2c3eea2e63dbdea932e79d7a69fa46f09ba1d172032bd3c9.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../MeasureAndIntegration/LogarithmicSourceAttempt06.lean/index.md) · [Full source](../../../../MeasureAndIntegration/LogarithmicSourceAttempt06.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8e46e511e789056af572345791e85b3bd4a24cbe`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/LogarithmicSourceAttempt06/Variant5227ba582bd6fcff2c3eea2e63dbdea932e79d7a69fa46f09ba1d172032bd3c9.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/LogarithmicSourceAttempt06/Variant5227ba582bd6fcff2c3eea2e63dbdea932e79d7a69fa46f09ba1d172032bd3c9.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.BridgeNormalization` — import line 1; external provider; requires a separately pinned dependency.
- `FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.CorrelationRegularity` — import line 2; external provider; requires a separately pinned dependency.
- `FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.CorrelationMoment` — import line 3; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.MellinTransform` — import line 4; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Function.JacobianOneDim` — import line 5; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [positiveLogLift](../../../../MeasureAndIntegration/LogarithmicSourceAttempt06.lean/declarations/positiveloglift.md) | 19 | `declaration-track:becad71b8a19818131c006b113999f8d5a6f87ea82d435f610a835e93fde725a` |
| 2 | `theorem` | [positiveLogLift_exp](../../../../MeasureAndIntegration/LogarithmicSourceAttempt06.lean/declarations/positiveloglift-exp.md) | 22 | `result-track:c3193f6a44881aa03fbf706e151ec1855075d6e4b9baefd1ca3cd9f16b94f017` |
| 3 | `theorem` | [exp_square_weight](../../../../MeasureAndIntegration/LogarithmicSourceAttempt06.lean/declarations/exp-square-weight.md) | 26 | `result-track:96ef6fcb2b16ff8987540dc64afa991d5d67a20537397b4a0aa5b74f9e58ba7f` |
| 4 | `theorem` | [lift_square_jacobian](../../../../MeasureAndIntegration/LogarithmicSourceAttempt06.lean/declarations/lift-square-jacobian.md) | 32 | `result-track:14f7abefeef74a77771602c104edc8b298e61d58ff48d7e2215d72cc20c4ddd8` |
| 5 | `theorem` | [lift_square_integrable_iff](../../../../MeasureAndIntegration/LogarithmicSourceAttempt06.lean/declarations/lift-square-integrable-iff.md) | 39 | `result-track:17b6507b0d53dd9646ab7b0cfff67527700d4d85ffa68a715e4fe59e1a03def8` |
| 6 | `theorem` | [lift_square_integral](../../../../MeasureAndIntegration/LogarithmicSourceAttempt06.lean/declarations/lift-square-integral.md) | 50 | `result-track:934f34771010770415007cc8f208a04e4470786ed7c1081570f3921f6bff210f` |
| 7 | `def` | [actualLogSource](../../../../MeasureAndIntegration/LogarithmicSourceAttempt06.lean/declarations/actuallogsource.md) | 61 | `declaration-track:cfa4fc377d5526486e32e09da39eaf0561ce4ced190b2d8c077a671e4d316796` |
| 8 | `theorem` | [actualLogSource_square_integrable](../../../../MeasureAndIntegration/LogarithmicSourceAttempt06.lean/declarations/actuallogsource-square-integrable.md) | 64 | `result-track:5aece707949428eefbf1e5a19bb21c6252d25b56529dc0422be92eda8a92dc68` |
| 9 | `theorem` | [actualLogSource_square_integral](../../../../MeasureAndIntegration/LogarithmicSourceAttempt06.lean/declarations/actuallogsource-square-integral.md) | 68 | `result-track:b284f6f5fae4a39402fc78919cb55302e4269cbd48497eeaa359605ee8496fc6` |
| 10 | `theorem` | [actualLogSource_zero_outside](../../../../MeasureAndIntegration/LogarithmicSourceAttempt06.lean/declarations/actuallogsource-zero-outside.md) | 73 | `result-track:56e3edc489f20faabe15d76a44c0b278ce2dd44f8f85e7ade998d7ba7efd5582` |
| 11 | `theorem` | [actualLogSource_hasCompactSupport](../../../../MeasureAndIntegration/LogarithmicSourceAttempt06.lean/declarations/actuallogsource-hascompactsupport.md) | 89 | `result-track:a1cf3fba021b049819b75f7b34054e838f49f1cf2b6f9165e5ab235232b485c8` |
| 12 | `theorem` | [lift_first_jacobian](../../../../MeasureAndIntegration/LogarithmicSourceAttempt06.lean/declarations/lift-first-jacobian.md) | 100 | `result-track:609171668b62cf3b9982b8596484aeca121dddf8418f0b9f739fc4fd743a9776` |
| 13 | `theorem` | [actualLogSource_integrable](../../../../MeasureAndIntegration/LogarithmicSourceAttempt06.lean/declarations/actuallogsource-integrable.md) | 106 | `result-track:ad0456085f1bf07d3c45b0c5620d4a7ac640dcff312f9a8aefa38ffdc608d09d` |
| 14 | `theorem` | [actualLogSource_integral_zero](../../../../MeasureAndIntegration/LogarithmicSourceAttempt06.lean/declarations/actuallogsource-integral-zero.md) | 118 | `result-track:92ef1f075704386346e55340645da75105aede234bc66d1106c4d5040bcbfd2a` |
| 15 | `theorem` | [positiveLogLift_dilation](../../../../MeasureAndIntegration/LogarithmicSourceAttempt06.lean/declarations/positiveloglift-dilation.md) | 132 | `result-track:ba74cfc6aeba839ab183d4505b5c3a0a7475baca7b96b6670f462a4320be6633` |
| 16 | `theorem` | [actualLogSource_real_dilation](../../../../MeasureAndIntegration/LogarithmicSourceAttempt06.lean/declarations/actuallogsource-real-dilation.md) | 141 | `result-track:c3d5a7e1b8394dfd39e17dad3ab51999114f24f8077bbd58c1dbf7fdc1b93c8a` |
| 17 | `theorem` | [actualLogSource_integer_dilation](../../../../MeasureAndIntegration/LogarithmicSourceAttempt06.lean/declarations/actuallogsource-integer-dilation.md) | 150 | `result-track:5e961ef96cc75746b862f6daedc1900cfafeff4654425d8ad520259c99ae7ca6` |
| 18 | `theorem` | [lift_mellin_jacobian](../../../../MeasureAndIntegration/LogarithmicSourceAttempt06.lean/declarations/lift-mellin-jacobian.md) | 155 | `result-track:598bb636af250db48253369583382e5367d0f64291a9acc9ac9e1acfc70bfe3f` |
| 19 | `theorem` | [lift_mellin_eq_bilateral](../../../../MeasureAndIntegration/LogarithmicSourceAttempt06.lean/declarations/lift-mellin-eq-bilateral.md) | 169 | `result-track:837a0c696b6d81eb2c4ed318ccece685e6e4a5aed63f2466e912cde3b98c8cbd` |
| 20 | `theorem` | [lift_mellin_integrable_iff](../../../../MeasureAndIntegration/LogarithmicSourceAttempt06.lean/declarations/lift-mellin-integrable-iff.md) | 181 | `result-track:c3c10a9306439d77ba09cccf869df7a43d9a5f12e9f8cb6e9aba088b9ebb957b` |
| 21 | `theorem` | [actualLogSource_mellin_integrable](../../../../MeasureAndIntegration/LogarithmicSourceAttempt06.lean/declarations/actuallogsource-mellin-integrable.md) | 192 | `result-track:ccbc1d1f614b66bf3683bb38164432431324aff257c1a95cb05f4b9fe991a198` |
| 22 | `theorem` | [actualLogSource_mellin_critical](../../../../MeasureAndIntegration/LogarithmicSourceAttempt06.lean/declarations/actuallogsource-mellin-critical.md) | 201 | `result-track:304800f89a88d6152dabe204b4bda8668a93f95c44b095d03de0fe866f34345f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=5354503a12ddedf50dcab83052e4d1e10b1f3e7efd6fc022e6c71fec41d4692c -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/RealAnalysis/Integration/LogarithmicSourceAttempt06/Variant5227ba582bd6fcff2c3eea2e63dbdea932e79d7a69fa46f09ba1d172032bd3c9.lean","GRWTSK/_verification/specifications/Analysis/RealAnalysis/Integration/LogarithmicSourceAttempt06/Variant5227ba582bd6fcff2c3eea2e63dbdea932e79d7a69fa46f09ba1d172032bd3c9.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
