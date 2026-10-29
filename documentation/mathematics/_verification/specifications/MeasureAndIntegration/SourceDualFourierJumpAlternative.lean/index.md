# Verification target: Source Dual Fourier Jump Alternative

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e24dd6bef6cfef102b4e92f771cb25c1b63d4afe",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/SourceDualFourierJump/Variantdbaef5a4853a59af446352cc8f8fe8e4ec3bc9642a0b7d0bc727314857f02f40.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../MeasureAndIntegration/SourceDualFourierJumpAlternative.lean/index.md) · [Full source](../../../../MeasureAndIntegration/SourceDualFourierJumpAlternative.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e24dd6bef6cfef102b4e92f771cb25c1b63d4afe`.

Source path: `GRWTSK/Topology/GeneralTopology/SourceDualFourierJump/Variantdbaef5a4853a59af446352cc8f8fe8e4ec3bc9642a0b7d0bc727314857f02f40.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/SourceDualFourierJump/Variantdbaef5a4853a59af446352cc8f8fe8e4ec3bc9642a0b7d0bc727314857f02f40.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.SourceDiagonalMainTerm` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Real.Sign` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Measure.OpenPos` — import line 3; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [signModulated](../../../../MeasureAndIntegration/SourceDualFourierJumpAlternative.lean/declarations/signmodulated.md) | 30 | `declaration-track:0eeae846ad0bae502282308c2d26ec21f447921ed14d05b89d6126c9b144e9e9` |
| 2 | `theorem` | [no_continuous_ae_signModulated](../../../../MeasureAndIntegration/SourceDualFourierJumpAlternative.lean/declarations/no-continuous-ae-signmodulated.md) | 33 | `result-track:d395d2dc11feee82af37eea6093d1c65c48f9a84da0f929a705baae942d6b381` |
| 3 | `theorem` | [no_continuous_ae_neg_signModulated](../../../../MeasureAndIntegration/SourceDualFourierJumpAlternative.lean/declarations/no-continuous-ae-neg-signmodulated.md) | 50 | `result-track:ee80f2c6ba346c2446f266b9c4c7ac9fd101db05362d1b9ec6b494132ebe1ffe` |
| 4 | `def` | [standardSourceTransform](../../../../MeasureAndIntegration/SourceDualFourierJumpAlternative.lean/declarations/standardsourcetransform.md) | 60 | `declaration-track:0d361a4975663497c6c614035a3a1e2ef10facbf385b643131af9c738cc8f81e` |
| 5 | `theorem` | [standardSourceTransform_zero](../../../../MeasureAndIntegration/SourceDualFourierJumpAlternative.lean/declarations/standardsourcetransform-zero.md) | 64 | `result-track:69e43c7a8a126126e9438a16e829d81bfbe31450b3b096ee150bbfe44a531b10` |
| 6 | `theorem` | [standardSourceTransform_zero_ne](../../../../MeasureAndIntegration/SourceDualFourierJumpAlternative.lean/declarations/standardsourcetransform-zero-ne.md) | 76 | `result-track:7ccf9df2036d175de399dcd948f4b756568f6971b50f08243c73e93d0af52747` |
| 7 | `theorem` | [standardSourceTransform_continuous](../../../../MeasureAndIntegration/SourceDualFourierJumpAlternative.lean/declarations/standardsourcetransform-continuous.md) | 85 | `result-track:27cf2b70aa0637653efcf5e2224a907e60a9ac41814f381bce539c48120c7441` |
| 8 | `theorem` | [actual_source_spectral_jump](../../../../MeasureAndIntegration/SourceDualFourierJumpAlternative.lean/declarations/actual-source-spectral-jump.md) | 94 | `result-track:313e72b37bd7cb47dc06c9e2cce161bf6da0f8b4df0687bd6d8a8e98568b0e96` |
| 9 | `theorem` | [actual_source_negative_spectral_jump](../../../../MeasureAndIntegration/SourceDualFourierJumpAlternative.lean/declarations/actual-source-negative-spectral-jump.md) | 101 | `result-track:339b09ac01d347a52a3f32ba76b8026f05fb2a0bb0bdb8fe76f9914ccaedc372` |
| 10 | `theorem` | [no_integrable_fourier_sign_source](../../../../MeasureAndIntegration/SourceDualFourierJumpAlternative.lean/declarations/no-integrable-fourier-sign-source.md) | 108 | `result-track:36d08583a6b38e229416c6032280a406a6a31907adeb0a742aaaec1d8e0dcff5` |
| 11 | `theorem` | [no_continuous_compact_fourier_sign_source](../../../../MeasureAndIntegration/SourceDualFourierJumpAlternative.lean/declarations/no-continuous-compact-fourier-sign-source.md) | 118 | `result-track:ddae1927cda8cbe6c98893cbee7935210d05c312fb693b807fb67b7dc8281d90` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=30ce5e9b70eea3bd4ad705c990cb8505fb74ad83ff9137a711722901dba98986 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/SourceDualFourierJump/Variantdbaef5a4853a59af446352cc8f8fe8e4ec3bc9642a0b7d0bc727314857f02f40.lean","GRWTSK/_verification/specifications/Topology/GeneralTopology/SourceDualFourierJump/Variantdbaef5a4853a59af446352cc8f8fe8e4ec3bc9642a0b7d0bc727314857f02f40.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
